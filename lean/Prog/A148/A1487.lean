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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A148700: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148700, there is no canonical definition to state claims against.
-/

/-! ## A148700.P7052879055314309211

`A023193(A150377(n))`
-/

namespace A148700.P7052879055314309211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150377 n).toNat

end

end A148700.P7052879055314309211

/-! ## A148700.P7652737064264648295

`A023193(∑[A149708(n)])`
-/

namespace A148700.P7652737064264648295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148700.P7652737064264648295

/-! ## A148700.P9456438863198228410

`A225645(A217925(n+1))`
-/

namespace A148700.P9456438863198228410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (A217925 (n + 1)).toNat

end

end A148700.P9456438863198228410

/-!
# A148701: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A148701, there is no canonical definition to state claims against.
-/

/-! ## A148701.P4281842849408786685

`A194691(n)-A035144(A127818(n+1))`
-/

namespace A148701.P4281842849408786685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194691 n - A035144 (A127818 (n + 1)).toNat

end

end A148701.P4281842849408786685

/-! ## A148701.P1884157546297204052

`A273376(2^A051424(n))`
-/

namespace A148701.P1884157546297204052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273376 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A051424 n : ℤ))).toNat

end

end A148701.P1884157546297204052

/-! ## A148701.P8558231654129913994

`A382717(A001168(n))+A142150(n)`
-/

namespace A148701.P8558231654129913994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A001168 n).toNat + A142150 n

end

end A148701.P8558231654129913994

/-!
# A148702: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148702, there is no canonical definition to state claims against.
-/

/-! ## A148702.P9784416357592790555

`or(A008624(A003480(n)), A267338(n+1))`
-/

namespace A148702.P9784416357592790555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008624 (A003480 n).toNat) (A267338 (n + 1))

end

end A148702.P9784416357592790555

/-! ## A148702.P15429437485308916606

`A109680(A194691(n))`
-/

namespace A148702.P15429437485308916606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A194691 n).toNat

end

end A148702.P15429437485308916606

/-! ## A148702.P7076415343195840130

`A082226(A245798(n))`
-/

namespace A148702.P7076415343195840130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A245798 n).toNat

end

end A148702.P7076415343195840130

/-!
# A148703: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0)}.

The programs for A148703, there is no canonical definition to state claims against.
-/

/-! ## A148703.P12502668699341820361

`A104477(A149594(n+1))`
-/

namespace A148703.P12502668699341820361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (A149594 (n + 1)).toNat

end

end A148703.P12502668699341820361

/-! ## A148703.P13482536745354879502

`or(A124767(A002293(n)), A229472(n+1))`
-/

namespace A148703.P13482536745354879502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124767 (A002293 n).toNat) (A229472 (n + 1))

end

end A148703.P13482536745354879502

/-!
# A148704: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 0, -1), (1, 0, 0)}.

The programs for A148704, there is no canonical definition to state claims against.
-/

/-! ## A148704.P3244092273738233374

`or(A110656(A297591(n)), A138495(n))`
-/

namespace A148704.P3244092273738233374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110656 (A297591 n).toNat) (A138495 n)

end

end A148704.P3244092273738233374

/-! ## A148704.P14656524136069441868

`or(A307976(n), A337375(A000142(n)))`
-/

namespace A148704.P14656524136069441868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A307976 n) (A337375 (A000142 n).toNat)

end

end A148704.P14656524136069441868

/-! ## A148704.P4530336905790685877

`or(A294764(n), A347732(A034943(n)))`
-/

namespace A148704.P4530336905790685877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A294764 n) (A347732 (A034943 n).toNat)

end

end A148704.P4530336905790685877

/-! ## A148704.P7307367416001414041

`or(A000213(n), A008621(A057051(n+1)))`
-/

namespace A148704.P7307367416001414041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000213 n) (A008621 (A057051 (n + 1)).toNat)

end

end A148704.P7307367416001414041

/-!
# A148705: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148705, there is no canonical definition to state claims against.
-/

/-! ## A148705.P1118746173893953898

`A023190(A149454(n))`
-/

namespace A148705.P1118746173893953898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149454 n).toNat

end

end A148705.P1118746173893953898

/-! ## A148705.P11182137483244628063

`A023193(A150461(n))`
-/

namespace A148705.P11182137483244628063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150461 n).toNat

end

end A148705.P11182137483244628063

/-! ## A148705.P17851060745963701969

`A023193(2*A149454(n))`
-/

namespace A148705.P17851060745963701969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (2 * A149454 n).toNat

end

end A148705.P17851060745963701969

/-!
# A148706: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148706, there is no canonical definition to state claims against.
-/

/-! ## A148706.P4878463558314979639

`A002264(A000586(n+3)+A000286(2*n))+1`
-/

namespace A148706.P4878463558314979639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000586 (n + 3) + A000286 (2 * n)).toNat + 1

end

end A148706.P4878463558314979639

/-! ## A148706.P16121930526061967395

`A390395(A148811(n))`
-/

namespace A148706.P16121930526061967395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A148811 n).toNat

end

end A148706.P16121930526061967395

/-! ## A148706.P11306206880292676110

`A390395(A148812(n))`
-/

namespace A148706.P11306206880292676110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A148812 n).toNat

end

end A148706.P11306206880292676110

/-!
# A148707: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 1)}.

The programs for A148707, there is no canonical definition to state claims against.
-/

/-! ## A148707.P12923769767246882094

`A148708(A073789(n))`
-/

namespace A148707.P12923769767246882094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148708 (A073789 n).toNat

end

end A148707.P12923769767246882094

/-! ## A148707.P9104445714380500081

`A148708(A171644(n))`
-/

namespace A148707.P9104445714380500081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148708 (A171644 n).toNat

end

end A148707.P9104445714380500081

/-! ## A148707.P16392721999691172179

`A148708(A004869(n+1))`
-/

namespace A148707.P16392721999691172179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148708 (A004869 (n + 1)).toNat

end

end A148707.P16392721999691172179

/-! ## A148707.P2251982474868087002

`A148708(A004880(n+1))`
-/

namespace A148707.P2251982474868087002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148708 (A004880 (n + 1)).toNat

end

end A148707.P2251982474868087002

/-!
# A148709: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 1)}.

The programs for A148709, there is no canonical definition to state claims against.
-/

/-! ## A148709.P17900839264977641647

`or(A226247(A086954(n)), A294807(n))`
-/

namespace A148709.P17900839264977641647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A226247 (A086954 n).toNat) (A294807 n)

end

end A148709.P17900839264977641647

/-!
# A148710: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 1, -1), (1, 0, 0)}.

The programs for A148710, there is no canonical definition to state claims against.
-/

/-! ## A148710.P13536669628953067173

`A120837(A385914(n+1))`
-/

namespace A148710.P13536669628953067173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120837 (A385914 (n + 1)).toNat

end

end A148710.P13536669628953067173

/-! ## A148710.P8568733145488947810

`or(1, A008624(A000777(n)+n))`
-/

namespace A148710.P8568733145488947810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008624 (A000777 n + (n : ℤ)).toNat)

end

end A148710.P8568733145488947810

/-! ## A148710.P16449004161615264614

`A008620(A149269(n)+A005774(n))`
-/

namespace A148710.P16449004161615264614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A149269 n + A005774 n).toNat

end

end A148710.P16449004161615264614

/-! ## A148710.P14529143417920612685

`or(A008624(A000777(n)), A037162(n))`
-/

namespace A148710.P14529143417920612685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008624 (A000777 n).toNat) (A037162 n)

end

end A148710.P14529143417920612685

/-!
# A148711: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148711, there is no canonical definition to state claims against.
-/

/-! ## A148711.P8330805328524900986

`A004074(A163774(n))`
-/

namespace A148711.P8330805328524900986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (A163774 n).toNat

end

end A148711.P8330805328524900986

/-! ## A148711.P17125545833822232302

`floor(sqrt(A292790(2*(n+1))))`
-/

namespace A148711.P17125545833822232302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A292790 (2 * (n + 1)))

end

end A148711.P17125545833822232302

/-! ## A148711.P6615599232335413159

`or(1, Δ[A241092((n+1)²)])`
-/

namespace A148711.P6615599232335413159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A148711.P6615599232335413159

/-!
# A148712: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148712, there is no canonical definition to state claims against.
-/

/-! ## A148712.P6042212613262840119

`or(1, or(n, A033270(A006318(n))))`
-/

namespace A148712.P6042212613262840119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor (n : ℤ) (A033270 (A006318 n).toNat))

end

end A148712.P6042212613262840119

/-! ## A148712.P16906098689423849793

`or(1, or(n, A034887(A124462(n))))`
-/

namespace A148712.P16906098689423849793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor (n : ℤ) (A034887 (A124462 n).toNat))

end

end A148712.P16906098689423849793

/-! ## A148712.P3824560036956306144

`or(A033270(A006318(n)), A092437(n))`
-/

namespace A148712.P3824560036956306144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033270 (A006318 n).toNat) (A092437 n)

end

end A148712.P3824560036956306144

/-! ## A148712.P16903968955629849195

`or(A033270(A006318(n)), A093178(n))`
-/

namespace A148712.P16903968955629849195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033270 (A006318 n).toNat) (A093178 n)

end

end A148712.P16903968955629849195

/-!
# A148713: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A148713, there is no canonical definition to state claims against.
-/

/-! ## A148713.P13489586516222246852

`A070115(A090245(n))-gcd(n, ∑[n])`
-/

namespace A148713.P13489586516222246852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (A090245 n).toNat - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A148713.P13489586516222246852

/-! ## A148713.P13953085093929407267

`A023193(A149403(n)+A149393(n))`
-/

namespace A148713.P13953085093929407267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149403 n + A149393 n).toNat

end

end A148713.P13953085093929407267

/-! ## A148713.P7868563246541862456

`A023193(A149405(n)+A149399(n))`
-/

namespace A148713.P7868563246541862456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149405 n + A149399 n).toNat

end

end A148713.P7868563246541862456

/-!
# A148714: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A148714, there is no canonical definition to state claims against.
-/

/-! ## A148714.P10399333368084396904

`A178210(A060089(n))`
-/

namespace A148714.P10399333368084396904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A060089 n).toNat

end

end A148714.P10399333368084396904

/-! ## A148714.P15668761547955766795

`A382717(A148635(n))`
-/

namespace A148714.P15668761547955766795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A148635 n).toNat

end

end A148714.P15668761547955766795

/-! ## A148714.P9190896336147848440

`A382717(A148636(n))`
-/

namespace A148714.P9190896336147848440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A148636 n).toNat

end

end A148714.P9190896336147848440

/-!
# A148715: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A148715, there is no canonical definition to state claims against.
-/

/-! ## A148715.P6346279324083017753

`A148716(A073789(n))`
-/

namespace A148715.P6346279324083017753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148716 (A073789 n).toNat

end

end A148715.P6346279324083017753

/-! ## A148715.P15618739330255775098

`A148716(A171644(n))`
-/

namespace A148715.P15618739330255775098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148716 (A171644 n).toNat

end

end A148715.P15618739330255775098

/-! ## A148715.P17299359357056078779

`A148716(A004869(n+1))`
-/

namespace A148715.P17299359357056078779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148716 (A004869 (n + 1)).toNat

end

end A148715.P17299359357056078779

/-! ## A148715.P11569864565324985650

`A148716(A004880(n+1))`
-/

namespace A148715.P11569864565324985650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148716 (A004880 (n + 1)).toNat

end

end A148715.P11569864565324985650

/-!
# A148717: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148717, there is no canonical definition to state claims against.
-/

/-! ## A148717.P5764354915810441297

`A023193(A150387(n)+A000719(n))`
-/

namespace A148717.P5764354915810441297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150387 n + A000719 n).toNat

end

end A148717.P5764354915810441297

/-! ## A148717.P4830815980740453240

`A198066(A077998(n))+A148716(n)`
-/

namespace A148717.P4830815980740453240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198066 (A077998 n).toNat + A148716 n

end

end A148717.P4830815980740453240

/-! ## A148717.P9628435344526246160

`A148729(n)-A342720(A304792(n))`
-/

namespace A148717.P9628435344526246160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148729 n - A342720 (A304792 n).toNat

end

end A148717.P9628435344526246160

/-!
# A148718: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A148718, there is no canonical definition to state claims against.
-/

/-! ## A148718.P18082882962040790446

`A001462(A368634(n)+A001809(n))`
-/

namespace A148718.P18082882962040790446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A368634 n + A001809 n).toNat

end

end A148718.P18082882962040790446

/-! ## A148718.P14316028413281636513

`A180649(A068912(n))+A148696(n)`
-/

namespace A148718.P14316028413281636513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A068912 n).toNat + A148696 n

end

end A148718.P14316028413281636513

/-!
# A148719: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148719, there is no canonical definition to state claims against.
-/

/-! ## A148719.P13493583977141024202

`A156689(A149059(n))`
-/

namespace A148719.P13493583977141024202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A149059 n).toNat

end

end A148719.P13493583977141024202

/-! ## A148719.P5700132558713295583

`A023193(2*A149412(n))`
-/

namespace A148719.P5700132558713295583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (2 * A149412 n).toNat

end

end A148719.P5700132558713295583

/-! ## A148719.P15994801532917379384

`A231516(A000142(n))+A049124(n)`
-/

namespace A148719.P15994801532917379384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231516 (A000142 n).toNat + A049124 n

end

end A148719.P15994801532917379384

/-!
# A148720: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A148720, there is no canonical definition to state claims against.
-/

/-! ## A148720.P14914967726750638633

`A226190(∑[A148869(n)])`
-/

namespace A148720.P14914967726750638633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148720.P14914967726750638633

/-! ## A148720.P9190781362986955404

`A341071(n)+A341025(A001333(n))`
-/

namespace A148720.P9190781362986955404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341071 n + A341025 ((A001333 n).toNat + 120)

end

end A148720.P9190781362986955404

/-!
# A148721: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148721, there is no canonical definition to state claims against.
-/

/-! ## A148721.P6123955863364610586

`A103221(n*A269303(3*n+1))`
-/

namespace A148721.P6123955863364610586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((n : ℤ) * A269303 (3 * n + 1)).toNat

end

end A148721.P6123955863364610586

/-! ## A148721.P1264983900431307985

`A194640(A152971(n)+A148958(n))`
-/

namespace A148721.P1264983900431307985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A152971 n + A148958 n).toNat

end

end A148721.P1264983900431307985

/-!
# A148722: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A148722, there is no canonical definition to state claims against.
-/

/-! ## A148722.P8586946252372028124

`A265384(A047761(n+1))`
-/

namespace A148722.P8586946252372028124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A047761 (n + 1)).toNat

end

end A148722.P8586946252372028124

/-! ## A148722.P9137133943279957366

`A333222(A316245(n))+1`
-/

namespace A148722.P9137133943279957366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A316245 n).toNat + 1

end

end A148722.P9137133943279957366

/-! ## A148722.P4792956670625231932

`or(1, A239698(A001405(n)))`
-/

namespace A148722.P4792956670625231932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A239698 (A001405 n).toNat)

end

end A148722.P4792956670625231932

/-!
# A148723: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A148723, there is no canonical definition to state claims against.
-/

/-! ## A148723.P9744763618586627342

`A104978(n)+A091678(A049610(n))`
-/

namespace A148723.P9744763618586627342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 n + A091678 (A049610 n).toNat

end

end A148723.P9744763618586627342

/-! ## A148723.P14634141474662602167

`A371263(A326211(n))+A063834(n)`
-/

namespace A148723.P14634141474662602167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371263 (A326211 n).toNat + A063834 n

end

end A148723.P14634141474662602167

/-! ## A148723.P11292619972503866579

`A219864(A362392(n))+A007595(n+1)`
-/

namespace A148723.P11292619972503866579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219864 (A362392 n).toNat + A007595 (n + 1)

end

end A148723.P11292619972503866579

/-!
# A148724: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148724, there is no canonical definition to state claims against.
-/

/-! ## A148724.P8340042685652060735

`A066888(A024036(n))+A035327(n)`
-/

namespace A148724.P8340042685652060735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A024036 n).toNat + A035327 n

end

end A148724.P8340042685652060735

/-! ## A148724.P5691673322088491103

`A194640(A339845(n)+A173118(n))`
-/

namespace A148724.P5691673322088491103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A339845 n + A173118 n).toNat

end

end A148724.P5691673322088491103

/-! ## A148724.P2663342879902762825

`A007716(n)-A089869(A101893(n))`
-/

namespace A148724.P2663342879902762825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n - A089869 (A101893 n).toNat

end

end A148724.P2663342879902762825

/-!
# A148725: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A148725, there is no canonical definition to state claims against.
-/

/-! ## A148725.P13603750044819382421

`∏{e}[5^n, A148726(#)]`
-/

namespace A148725.P13603750044819382421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148726 (Nat.factorization (f1 n) p)

end

end A148725.P13603750044819382421

/-! ## A148725.P12961467584582338133

`A004151(A148726(n))`
-/

namespace A148725.P12961467584582338133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148726 n).toNat

end

end A148725.P12961467584582338133

/-! ## A148725.P2816001691109653724

`A148726(A073790(n))`
-/

namespace A148725.P2816001691109653724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148726 (A073790 n).toNat

end

end A148725.P2816001691109653724

/-! ## A148725.P910518868086021490

`A148726(A171717(n))`
-/

namespace A148725.P910518868086021490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148726 (A171717 n).toNat

end

end A148725.P910518868086021490

/-! ## A148725.P5925372451760392953

`A148726(A004870(n+1))`
-/

namespace A148725.P5925372451760392953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148726 (A004870 (n + 1)).toNat

end

end A148725.P5925372451760392953

/-!
# A148727: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A148727, there is no canonical definition to state claims against.
-/

/-! ## A148727.P16023292013405345688

`∏{e}[5^n, A148728(#)]`
-/

namespace A148727.P16023292013405345688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148728 (Nat.factorization (f1 n) p)

end

end A148727.P16023292013405345688

/-! ## A148727.P14982570803959784813

`A004151(A148728(n))`
-/

namespace A148727.P14982570803959784813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148728 n).toNat

end

end A148727.P14982570803959784813

/-! ## A148727.P2759703267284482363

`A148728(A073790(n))`
-/

namespace A148727.P2759703267284482363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148728 (A073790 n).toNat

end

end A148727.P2759703267284482363

/-! ## A148727.P15907689464489382610

`A148728(A098755(n))`
-/

namespace A148727.P15907689464489382610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148728 (A098755 n).toNat

end

end A148727.P15907689464489382610

/-! ## A148727.P11598597572770810147

`A148728(A171717(n))`
-/

namespace A148727.P11598597572770810147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148728 (A171717 n).toNat

end

end A148727.P11598597572770810147

/-!
# A148729: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 0, 1), (1, 1, -1)}.

The programs for A148729, there is no canonical definition to state claims against.
-/

/-! ## A148729.P11595935876067897051

`A148730(n)-A342720(A055226(n))`
-/

namespace A148729.P11595935876067897051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148730 n - A342720 (A055226 n).toNat

end

end A148729.P11595935876067897051

/-! ## A148729.P17598167599054403885

`A024417(A149753(n))`
-/

namespace A148729.P17598167599054403885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149753 n).toNat

end

end A148729.P17598167599054403885

/-! ## A148729.P2079839890411620426

`A334720(n+1)+A259343(A002620(n))`
-/

namespace A148729.P2079839890411620426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334720 (n + 1) + A259343 (A002620 n).toNat

end

end A148729.P2079839890411620426

/-!
# A148730: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148730, there is no canonical definition to state claims against.
-/

/-! ## A148730.P12199615900377211914

`A342720(A055226(n))+A148729(n)`
-/

namespace A148730.P12199615900377211914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (A055226 n).toNat + A148729 n

end

end A148730.P12199615900377211914

/-!
# A148731: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A148731, there is no canonical definition to state claims against.
-/

/-! ## A148731.P3395052759770690207

`A335358(A150695(n))`
-/

namespace A148731.P3395052759770690207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 (A150695 n).toNat

end

end A148731.P3395052759770690207

/-! ## A148731.P4649283846134790694

`A390395(A148846(n))`
-/

namespace A148731.P4649283846134790694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A148846 n).toNat

end

end A148731.P4649283846134790694

/-! ## A148731.P17754933922055359179

`A002260(A000670(n))+A001591(2*n+1)`
-/

namespace A148731.P17754933922055359179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000670 n).toNat + A001591 (2 * n + 1)

end

end A148731.P17754933922055359179

/-!
# A148732: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A148732, there is no canonical definition to state claims against.
-/

/-! ## A148732.P11018597312543224845

`A225086(A063832(n))`
-/

namespace A148732.P11018597312543224845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A063832 n).toNat

end

end A148732.P11018597312543224845

/-! ## A148732.P8799080560365184774

`A335380(A149484(n))`
-/

namespace A148732.P8799080560365184774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A149484 n).toNat

end

end A148732.P8799080560365184774

/-! ## A148732.P11801358195343854415

`A225086(A006647(n+4))`
-/

namespace A148732.P11801358195343854415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A006647 (n + 4)).toNat

end

end A148732.P11801358195343854415

/-!
# A148733: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A148733, there is no canonical definition to state claims against.
-/

/-! ## A148733.P1083336022535141123

`A282167(A084261(n))`
-/

namespace A148733.P1083336022535141123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282167 (A084261 n).toNat

end

end A148733.P1083336022535141123

/-! ## A148733.P5497410854725931034

`A282167(A195980(n))`
-/

namespace A148733.P5497410854725931034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282167 (A195980 n).toNat

end

end A148733.P5497410854725931034

/-! ## A148733.P10182479672715816096

`A282167(A204352(n))`
-/

namespace A148733.P10182479672715816096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282167 (A204352 n).toNat

end

end A148733.P10182479672715816096

/-!
# A148734: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A148734, there is no canonical definition to state claims against.
-/

/-! ## A148734.P8468685798754701273

`A156562(A149128(n))`
-/

namespace A148734.P8468685798754701273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A149128 n).toNat

end

end A148734.P8468685798754701273

/-! ## A148734.P5678435800297152764

`A289494(A002535(n)+2)`
-/

namespace A148734.P5678435800297152764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A002535 n + 2).toNat

end

end A148734.P5678435800297152764

/-! ## A148734.P8146643860414196248

`or(1, A127277(A087188(2*n+3)))`
-/

namespace A148734.P8146643860414196248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A127277 (A087188 (2 * n + 3)).toNat)

end

end A148734.P8146643860414196248

/-!
# A148735: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148735, there is no canonical definition to state claims against.
-/

/-! ## A148735.P9533197807521309364

`A226190(∑[A148894(n)])`
-/

namespace A148735.P9533197807521309364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148735.P9533197807521309364

/-! ## A148735.P11971430025750698003

`A008617(9*A032123(n))`
-/

namespace A148735.P11971430025750698003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (9 * A032123 n).toNat

end

end A148735.P11971430025750698003

/-!
# A148736: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148736, there is no canonical definition to state claims against.
-/

/-! ## A148736.P4276811983348453009

`A148737(n)%p?[∑[2^n]]`
-/

namespace A148736.P4276811983348453009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148737 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A148736.P4276811983348453009

/-! ## A148736.P3660455749519005567

`A148737(A073788(n))`
-/

namespace A148736.P3660455749519005567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148737 (A073788 n).toNat

end

end A148736.P3660455749519005567

/-! ## A148736.P2450760937688138296

`A148737(A171596(n))`
-/

namespace A148736.P2450760937688138296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148737 (A171596 n).toNat

end

end A148736.P2450760937688138296

/-!
# A148738: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148738, there is no canonical definition to state claims against.
-/

/-! ## A148738.P2467357266388225693

`ceil(A330625(n)/A000111(n))`
-/

namespace A148738.P2467357266388225693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330625 n : ℚ) / (A000111 n : ℚ)⌉

end

end A148738.P2467357266388225693

/-! ## A148738.P17799657160762058239

`ceil(A330625(n)/A138265(n))`
-/

namespace A148738.P17799657160762058239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330625 n : ℚ) / (A138265 n : ℚ)⌉

end

end A148738.P17799657160762058239

/-! ## A148738.P9171699182724608619

`or(A084888(n!), A148737(n))`
-/

namespace A148738.P9171699182724608619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084888 (Nat.factorial n)) (A148737 n)

end

end A148738.P9171699182724608619

/-!
# A148739: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148739, there is no canonical definition to state claims against.
-/

/-! ## A148739.P2037840891822374744

`A008617(10*A149004(n))`
-/

namespace A148739.P2037840891822374744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (10 * A149004 n).toNat

end

end A148739.P2037840891822374744

/-!
# A148740: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A148740, there is no canonical definition to state claims against.
-/

/-! ## A148740.P12468687065991352172

`xor(1, A002375(A171804(n)))`
-/

namespace A148740.P12468687065991352172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A002375 (A171804 n).toNat)

end

end A148740.P12468687065991352172

/-! ## A148740.P12114377267624018722

`A248227(A126120(n)+A088013(n))`
-/

namespace A148740.P12114377267624018722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A126120 n + A088013 n).toNat

end

end A148740.P12114377267624018722

/-!
# A148741: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148741, there is no canonical definition to state claims against.
-/

/-! ## A148741.P10563498494911437109

`A153174(A318947(n))+A047974(n)`
-/

namespace A148741.P10563498494911437109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153174 (A318947 n).toNat + A047974 n

end

end A148741.P10563498494911437109

/-! ## A148741.P18273738062424448342

`A319787(n)-A274715(A068587(n))`
-/

namespace A148741.P18273738062424448342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319787 n - A274715 (A068587 n).toNat

end

end A148741.P18273738062424448342

/-!
# A148742: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148742, there is no canonical definition to state claims against.
-/

/-! ## A148742.P8334815825606095902

`A176541(A275311(n))+A000108(n)`
-/

namespace A148742.P8334815825606095902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176541 (A275311 n).toNat + A000108 n

end

end A148742.P8334815825606095902

/-! ## A148742.P4290948298738340920

`A070868(A283877(n)*A319765(n))`
-/

namespace A148742.P4290948298738340920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A283877 n * A319765 n).toNat

end

end A148742.P4290948298738340920

/-!
# A148743: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148743, there is no canonical definition to state claims against.
-/

/-! ## A148743.P11138749667049005254

`A008621(A149973(n)+A080872(n))`
-/

namespace A148743.P11138749667049005254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A149973 n + A080872 n).toNat

end

end A148743.P11138749667049005254

/-! ## A148743.P2317569788875825068

`or(A105353(A151255(n)), A151269(n))`
-/

namespace A148743.P2317569788875825068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105353 (A151255 n).toNat) (A151269 n)

end

end A148743.P2317569788875825068

/-! ## A148743.P11534203344539762659

`A263109(A295059(n)+A026762(n+1))`
-/

namespace A148743.P11534203344539762659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263109 (A295059 n + A026762 (n + 1)).toNat

end

end A148743.P11534203344539762659

/-!
# A148744: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A148744, there is no canonical definition to state claims against.
-/

/-! ## A148744.P5414608595770951460

`A260124(A148136(n))`
-/

namespace A148744.P5414608595770951460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A148136 n).toNat

end

end A148744.P5414608595770951460

/-! ## A148744.P9300920465015472601

`A260124(A148137(n))`
-/

namespace A148744.P9300920465015472601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A148137 n).toNat

end

end A148744.P9300920465015472601

/-!
# A148745: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A148745, there is no canonical definition to state claims against.
-/

/-! ## A148745.P8146767760903625305

`A319837(A131322(n))`
-/

namespace A148745.P8146767760903625305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (A131322 n).toNat

end

end A148745.P8146767760903625305

/-! ## A148745.P1629701030571111834

`A065361(A052875(n))+1`
-/

namespace A148745.P1629701030571111834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A052875 n).toNat + 1

end

end A148745.P1629701030571111834

/-! ## A148745.P12015558206850306969

`A324699(A192570(n+1))`
-/

namespace A148745.P12015558206850306969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (A192570 (n + 1)).toNat

end

end A148745.P12015558206850306969

/-!
# A148746: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148746, there is no canonical definition to state claims against.
-/

/-! ## A148746.P3249805174072653267

`A210357(A149151(n))`
-/

namespace A148746.P3249805174072653267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A149151 n).toNat

end

end A148746.P3249805174072653267

/-! ## A148746.P8581825812971105940

`A105612(4*A149422(n))`
-/

namespace A148746.P8581825812971105940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (4 * A149422 n).toNat

end

end A148746.P8581825812971105940

/-! ## A148746.P11218129088736967096

`or(A047974(n), A328322((n+1)²/∏{p}[n+1, #]))`
-/

namespace A148746.P11218129088736967096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047974 n) (A328322 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A148746.P11218129088736967096

/-!
# A148747: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148747, there is no canonical definition to state claims against.
-/

/-! ## A148747.P11092553927775854164

`A004525(A149023(n)+A071742(n))`
-/

namespace A148747.P11092553927775854164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149023 n + A071742 n).toNat

end

end A148747.P11092553927775854164

/-! ## A148747.P4325628578359092345

`A008611(A149214(n)+A149193(n))`
-/

namespace A148747.P4325628578359092345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A149214 n + A149193 n).toNat

end

end A148747.P4325628578359092345

/-! ## A148747.P18328266224137126358

`A324699(A213920(n+1))`
-/

namespace A148747.P18328266224137126358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (A213920 (n + 1)).toNat

end

end A148747.P18328266224137126358

/-!
# A148748: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148748, there is no canonical definition to state claims against.
-/

/-! ## A148748.P7583040013023073636

`A050296(A323792(n)+1)`
-/

namespace A148748.P7583040013023073636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A323792 n + 1).toNat

end

end A148748.P7583040013023073636

/-! ## A148748.P3749489094894685699

`A050296(or(1, A323792(n)))`
-/

namespace A148748.P3749489094894685699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (Int.lor 1 (A323792 n)).toNat

end

end A148748.P3749489094894685699

/-!
# A148749: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148749, there is no canonical definition to state claims against.
-/

/-! ## A148749.P17766009448429817041

`A331626(A383982(n))`
-/

namespace A148749.P17766009448429817041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331626 (A383982 n).toNat

end

end A148749.P17766009448429817041

/-! ## A148749.P8780840239829237819

`A050296(A149219(n)+1)`
-/

namespace A148749.P8780840239829237819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A149219 n + 1).toNat

end

end A148749.P8780840239829237819

/-! ## A148749.P1223144249491176383

`A071995(p?[∑[A288197(n)]])`
-/

namespace A148749.P1223144249491176383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A148749.P1223144249491176383

/-!
# A148750: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148750, there is no canonical definition to state claims against.
-/

/-! ## A148750.P12022408038046198361

`A130534(n)+A029917(A188570(n))`
-/

namespace A148750.P12022408038046198361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n + A029917 (A188570 n).toNat

end

end A148750.P12022408038046198361

/-! ## A148750.P14701005978746128417

`A213724(A014585(n))`
-/

namespace A148750.P14701005978746128417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 (A014585 n).toNat

end

end A148750.P14701005978746128417

/-! ## A148750.P4105501527438473650

`A071585(Δ[A060223(n)])`
-/

namespace A148750.P4105501527438473650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (f1 (n + 1) - f1 n).toNat

end

end A148750.P4105501527438473650

/-!
# A148751: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A148751, there is no canonical definition to state claims against.
-/

/-! ## A148751.P14712153721152173806

`A148753(n)-A070139(A000142(n))`
-/

namespace A148751.P14712153721152173806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148753 n - A070139 (A000142 n).toNat

end

end A148751.P14712153721152173806

/-! ## A148751.P15262242872243986230

`A148752(n)-A025466(A151249(n))`
-/

namespace A148751.P15262242872243986230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148752 n - A025466 (A151249 n).toNat

end

end A148751.P15262242872243986230

/-! ## A148751.P1293435427068936507

`A148752(n)-A025466(A151252(n))`
-/

namespace A148751.P1293435427068936507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148752 n - A025466 (A151252 n).toNat

end

end A148751.P1293435427068936507

/-!
# A148752: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A148752, there is no canonical definition to state claims against.
-/

/-! ## A148752.P5478276739346671894

`A148754(n)-A025466(A296000(n))`
-/

namespace A148752.P5478276739346671894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148754 n - A025466 (A296000 n).toNat

end

end A148752.P5478276739346671894

/-! ## A148752.P9964366123119254659

`A110266(∑[A121724(n)]-n)`
-/

namespace A148752.P9964366123119254659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A148752.P9964366123119254659

/-! ## A148752.P611515222618795727

`A148751(n)+A025466(A151249(n))`
-/

namespace A148752.P611515222618795727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148751 n + A025466 (A151249 n).toNat

end

end A148752.P611515222618795727

/-!
# A148753: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (1, -1, 0), (1, 0, 1)}.

The programs for A148753, there is no canonical definition to state claims against.
-/

/-! ## A148753.P3855857577726981767

`A148754(gcd(11*n, ∑[2*n]))`
-/

namespace A148753.P3855857577726981767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148754 (Nat.gcd (11 * n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A148753.P3855857577726981767

/-! ## A148753.P11162095616559069771

`A148754(A002998(n))`
-/

namespace A148753.P11162095616559069771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148754 (A002998 n).toNat

end

end A148753.P11162095616559069771

/-! ## A148753.P2417684500481575880

`A148754(A039723(n))`
-/

namespace A148753.P2417684500481575880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148754 (A039723 n).toNat

end

end A148753.P2417684500481575880

/-! ## A148753.P15937561562863729692

`A148754(A046469(n))`
-/

namespace A148753.P15937561562863729692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148754 (A046469 n).toNat

end

end A148753.P15937561562863729692

/-! ## A148753.P8147187433270958410

`A148754(A051022(n))`
-/

namespace A148753.P8147187433270958410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148754 (A051022 n).toNat

end

end A148753.P8147187433270958410

/-!
# A148755: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, -1, 0), (1, 0, 1)}.

The programs for A148755, there is no canonical definition to state claims against.
-/

/-! ## A148755.P2883226551937052062

`A148756(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A148755.P2883226551937052062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148756 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A148755.P2883226551937052062

/-! ## A148755.P5351787622278789785

`A148756(A002998(n))`
-/

namespace A148755.P5351787622278789785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148756 (A002998 n).toNat

end

end A148755.P5351787622278789785

/-! ## A148755.P16248108435777041432

`A148756(A039723(n))`
-/

namespace A148755.P16248108435777041432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148756 (A039723 n).toNat

end

end A148755.P16248108435777041432

/-! ## A148755.P16856546769331032379

`A148756(A046469(n))`
-/

namespace A148755.P16856546769331032379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148756 (A046469 n).toNat

end

end A148755.P16856546769331032379

/-! ## A148755.P8813172288622016302

`A148756(A051022(n))`
-/

namespace A148755.P8813172288622016302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148756 (A051022 n).toNat

end

end A148755.P8813172288622016302

/-!
# A148757: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148757, there is no canonical definition to state claims against.
-/

/-! ## A148757.P6086297555197541203

`A094189(A133343(n)+2)`
-/

namespace A148757.P6086297555197541203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A133343 n + 2).toNat

end

end A148757.P6086297555197541203

/-! ## A148757.P4633396944394289558

`A343632(A007837(n))+A148762(n)`
-/

namespace A148757.P4633396944394289558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A007837 n).toNat + A148762 n

end

end A148757.P4633396944394289558

/-! ## A148757.P6352834808253353797

`A038567(A003148(n))-A173495(n)`
-/

namespace A148757.P6352834808253353797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A003148 n).toNat - A173495 n

end

end A148757.P6352834808253353797

/-!
# A148758: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A148758, there is no canonical definition to state claims against.
-/

/-! ## A148758.P15807297344238503160

`A263102(n)+A094727(A158107(n))`
-/

namespace A148758.P15807297344238503160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263102 n + A094727 (A158107 n).toNat

end

end A148758.P15807297344238503160

/-! ## A148758.P15001271907218507578

`A099741(A000013(n)*A200074(n))`
-/

namespace A148758.P15001271907218507578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A000013 n * A200074 n).toNat

end

end A148758.P15001271907218507578

/-! ## A148758.P886192153911803440

`A099741(A099770(n)*A323790(n))`
-/

namespace A148758.P886192153911803440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (A099770 n * A323790 n).toNat

end

end A148758.P886192153911803440

/-!
# A148759: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A148759, there is no canonical definition to state claims against.
-/

/-! ## A148759.P10418728532800241078

`A148761(n)-A297243(3^n)`
-/

namespace A148759.P10418728532800241078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148761 n - A297243 (3 ^ n)

end

end A148759.P10418728532800241078

/-! ## A148759.P13145244691247145224

`A148760(A073789(n))`
-/

namespace A148759.P13145244691247145224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148760 (A073789 n).toNat

end

end A148759.P13145244691247145224

/-! ## A148759.P17530122194884072261

`A129607(A148760(n))`
-/

namespace A148759.P17530122194884072261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A148760 n).toNat

end

end A148759.P17530122194884072261

/-! ## A148759.P9058226866097927009

`A129607(A148761(n))`
-/

namespace A148759.P9058226866097927009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A148761 n).toNat

end

end A148759.P9058226866097927009

/-!
# A148760: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, -1, 1)}.

The programs for A148760, there is no canonical definition to state claims against.
-/

/-! ## A148760.P530556193492685891

`∏{e}[3^n, A148761(#)]`
-/

namespace A148760.P530556193492685891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148761 (Nat.factorization (f1 n) p)

end

end A148760.P530556193492685891

/-! ## A148760.P2472062701108344942

`A148761(A055648(n))`
-/

namespace A148760.P2472062701108344942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148761 (A055648 n).toNat

end

end A148760.P2472062701108344942

/-! ## A148760.P15058391890444045787

`A148761(A004874(n+1))`
-/

namespace A148760.P15058391890444045787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148761 (A004874 (n + 1)).toNat

end

end A148760.P15058391890444045787

/-! ## A148760.P8739671436108307476

`A148761(A004885(n+1))`
-/

namespace A148760.P8739671436108307476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148761 (A004885 (n + 1)).toNat

end

end A148760.P8739671436108307476

/-! ## A148760.P16314683114925191735

`A148761(A004896(n+1))`
-/

namespace A148760.P16314683114925191735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148761 (A004896 (n + 1)).toNat

end

end A148760.P16314683114925191735

/-!
# A148762: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A148762, there is no canonical definition to state claims against.
-/

/-! ## A148762.P4107103007471951633

`A330827(A330821(n+3)-2)`
-/

namespace A148762.P4107103007471951633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330827 (A330821 (n + 3) - 2).toNat

end

end A148762.P4107103007471951633

/-!
# A148763: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148763, there is no canonical definition to state claims against.
-/

/-! ## A148763.P635457959719856565

`A290594(n+1)-A056924(A261052(n+1))`
-/

namespace A148763.P635457959719856565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290594 (n + 1) - A056924 (A261052 (n + 1)).toNat

end

end A148763.P635457959719856565

/-!
# A148764: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148764, there is no canonical definition to state claims against.
-/

/-! ## A148764.P3138380699023361854

`A258311(n)+A046460(A340430(n))`
-/

namespace A148764.P3138380699023361854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258311 n + A046460 (A340430 n).toNat

end

end A148764.P3138380699023361854

/-! ## A148764.P5887974675535241160

`A327356(A008277(n+1))+A258311(n)`
-/

namespace A148764.P5887974675535241160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327356 (A008277 (n + 1)).toNat + A258311 n

end

end A148764.P5887974675535241160

/-!
# A148765: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A148765, there is no canonical definition to state claims against.
-/

/-! ## A148765.P18297786660218068695

`A107037(A148729(n))`
-/

namespace A148765.P18297786660218068695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A148729 n).toNat

end

end A148765.P18297786660218068695

/-! ## A148765.P429754274061278951

`A139421(A148766(n))`
-/

namespace A148765.P429754274061278951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A148766 n).toNat

end

end A148765.P429754274061278951

/-! ## A148765.P6711993298044982000

`A155047(A149538(n))`
-/

namespace A148765.P6711993298044982000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (A149538 n).toNat

end

end A148765.P6711993298044982000

/-!
# A148766: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A148766, there is no canonical definition to state claims against.
-/

/-! ## A148766.P6166678950923165442

`A107037(A148730(n))`
-/

namespace A148766.P6166678950923165442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A148730 n).toNat

end

end A148766.P6166678950923165442

/-! ## A148766.P13456657414167681673

`A005378(A149504(n*A355201(n)))`
-/

namespace A148766.P13456657414167681673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A149504 ((n : ℤ) * A355201 n).toNat).toNat

end

end A148766.P13456657414167681673

/-! ## A148766.P9507240790157481731

`A005378(A149504(n)^A355201(n))`
-/

namespace A148766.P9507240790157481731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (SequenceMachineLib.roundAway ((A149504 n : ℚ) ^ (A355201 n : ℤ))).toNat

end

end A148766.P9507240790157481731

/-!
# A148767: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A148767, there is no canonical definition to state claims against.
-/

/-! ## A148767.P1157307413280555668

`or(1, A156878(A227427(n+1)))`
-/

namespace A148767.P1157307413280555668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A156878 (A227427 (n + 1)).toNat)

end

end A148767.P1157307413280555668

/-! ## A148767.P13038977370728075126

`A149125(n)-A086520(A149123(n))`
-/

namespace A148767.P13038977370728075126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149125 n - A086520 (A149123 n).toNat

end

end A148767.P13038977370728075126

/-! ## A148767.P17464078562678251922

`A149125(n)-A086520(A149124(n))`
-/

namespace A148767.P17464078562678251922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149125 n - A086520 (A149124 n).toNat

end

end A148767.P17464078562678251922

/-!
# A148768: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148768, there is no canonical definition to state claims against.
-/

/-! ## A148768.P6593079533788118809

`A247908(ceil(2^(n-1))*A254729(n))`
-/

namespace A148768.P6593079533788118809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A254729 n).toNat

end

end A148768.P6593079533788118809

/-! ## A148768.P18396651714665789930

`A329395(A017991(n))+A061989(n)`
-/

namespace A148768.P18396651714665789930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (A017991 n).toNat + A061989 n

end

end A148768.P18396651714665789930

/-! ## A148768.P13208460329871012926

`A005041(lcm(A083586(n), A325349(n)))`
-/

namespace A148768.P13208460329871012926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (Int.lcm (A083586 n) (A325349 n))

end

end A148768.P13208460329871012926

/-!
# A148769: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148769, there is no canonical definition to state claims against.
-/

/-! ## A148769.P14262937284671518583

`A264749(A063887(n))`
-/

namespace A148769.P14262937284671518583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A063887 n).toNat

end

end A148769.P14262937284671518583

/-! ## A148769.P10414760589240260732

`A194640(A148197(n+1))`
-/

namespace A148769.P10414760589240260732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A148197 (n + 1)).toNat

end

end A148769.P10414760589240260732

/-! ## A148769.P908876644387346313

`A359919(n)+A001221(A016269(n))`
-/

namespace A148769.P908876644387346313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359919 n + A001221 (A016269 n).toNat

end

end A148769.P908876644387346313

/-!
# A148770: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148770, there is no canonical definition to state claims against.
-/

/-! ## A148770.P18078277465476816325

`A261585(∑[∑[A261332(n)]+3])`
-/

namespace A148770.P18078277465476816325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148770.P18078277465476816325

/-! ## A148770.P14037912151647746421

`A269371(ceil(2^(n-1))^A326975(3*(n+1)))`
-/

namespace A148770.P14037912151647746421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (SequenceMachineLib.roundAway ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) ^ (A326975 (3 * (n + 1)) : ℤ))).toNat

end

end A148770.P14037912151647746421

/-! ## A148770.P11619350463351621828

`A115981(n)+A106432(A003480(n))`
-/

namespace A148770.P11619350463351621828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 n + A106432 (A003480 n).toNat

end

end A148770.P11619350463351621828

/-!
# A148771: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148771, there is no canonical definition to state claims against.
-/

/-! ## A148771.P9847904674979036099

`A324965(A151217(n)-n)`
-/

namespace A148771.P9847904674979036099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A151217 n - (n : ℤ)).toNat

end

end A148771.P9847904674979036099

/-! ## A148771.P1233214274458464626

`A324965(xor(n, A151217(n)))`
-/

namespace A148771.P1233214274458464626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (Int.xor (n : ℤ) (A151217 n)).toNat

end

end A148771.P1233214274458464626

/-! ## A148771.P13466132562410451784

`A100196(or(n, A127619(n)))+1-floor(n/2)!`
-/

namespace A148771.P13466132562410451784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (n : ℤ) (A127619 n)).toNat + 1 - (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A148771.P13466132562410451784

/-!
# A148772: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148772, there is no canonical definition to state claims against.
-/

/-! ## A148772.P8422949977713927085

`A371069(A103322(n))`
-/

namespace A148772.P8422949977713927085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371069 (A103322 n).toNat

end

end A148772.P8422949977713927085

/-! ## A148772.P11594394960317667179

`A338477(A108479(n)%A331940(n+5))`
-/

namespace A148772.P11594394960317667179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338477 (Int.tmod (A108479 n) (A331940 (n + 5))).toNat

end

end A148772.P11594394960317667179

/-! ## A148772.P11103397207391917020

`A008680(A169874(n+1)-A003231(n+1))`
-/

namespace A148772.P11103397207391917020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A169874 (n + 1) - A003231 (n + 1)).toNat

end

end A148772.P11103397207391917020

/-!
# A148773: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A148773, there is no canonical definition to state claims against.
-/

/-! ## A148773.P7441362386339582166

`A148774(A073788(n))`
-/

namespace A148773.P7441362386339582166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148774 (A073788 n).toNat

end

end A148773.P7441362386339582166

/-! ## A148773.P3079938408687659499

`A148774(A171596(n))`
-/

namespace A148773.P3079938408687659499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148774 (A171596 n).toNat

end

end A148773.P3079938408687659499

/-! ## A148773.P5559852018143507203

`A148774(A004868(n+1))`
-/

namespace A148773.P5559852018143507203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148774 (A004868 (n + 1)).toNat

end

end A148773.P5559852018143507203

/-!
# A148774: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, -1, -1), (1, 0, 1)}.

The programs for A148774, there is no canonical definition to state claims against.
-/

/-! ## A148774.P7201702020512667649

`or(A036873(A124419(n)), A148773(n))`
-/

namespace A148774.P7201702020512667649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036873 (A124419 n).toNat) (A148773 n)

end

end A148774.P7201702020512667649

/-!
# A148775: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148775, there is no canonical definition to state claims against.
-/

/-! ## A148775.P11280823567011941872

`A226143(A226067(n))`
-/

namespace A148775.P11280823567011941872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A226067 n).toNat

end

end A148775.P11280823567011941872

/-! ## A148775.P9191641569228582741

`A001462(A068201(n)-n)`
-/

namespace A148775.P9191641569228582741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A068201 n - (n : ℤ)).toNat

end

end A148775.P9191641569228582741

/-! ## A148775.P16175639360765231008

`A001462(A189848(n+1)-n)`
-/

namespace A148775.P16175639360765231008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A189848 (n + 1) - (n : ℤ)).toNat

end

end A148775.P16175639360765231008

/-!
# A148776: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148776, there is no canonical definition to state claims against.
-/

/-! ## A148776.P17221322740679587010

`or(A083892(A230231(n)), A148775(n))`
-/

namespace A148776.P17221322740679587010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083892 (A230231 n).toNat) (A148775 n)

end

end A148776.P17221322740679587010

/-! ## A148776.P1862797698817554002

`or(A083892(A230232(n)), A148775(n))`
-/

namespace A148776.P1862797698817554002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083892 (A230232 n).toNat) (A148775 n)

end

end A148776.P1862797698817554002

/-! ## A148776.P2437110485336945990

`or(A083892(A230233(n)), A148775(n))`
-/

namespace A148776.P2437110485336945990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083892 (A230233 n).toNat) (A148775 n)

end

end A148776.P2437110485336945990

/-! ## A148776.P13569335228236072562

`or(A148775(n), A332742(A247034(n)))`
-/

namespace A148776.P13569335228236072562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148775 n) (A332742 (A247034 n).toNat)

end

end A148776.P13569335228236072562

/-!
# A148777: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A148777, there is no canonical definition to state claims against.
-/

/-! ## A148777.P1134816582450696424

`A008621(A308446(n)+A121651(n))`
-/

namespace A148777.P1134816582450696424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A308446 n + A121651 n).toNat

end

end A148777.P1134816582450696424

/-! ## A148777.P8192704820629260270

`A262689(∑[∑[A281454(n)]])`
-/

namespace A148777.P8192704820629260270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281454 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148777.P8192704820629260270

/-! ## A148777.P15155147879587632815

`A361755(A004767(n!)-5)`
-/

namespace A148777.P15155147879587632815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361755 (A004767 (Nat.factorial n) - 5).toNat

end

end A148777.P15155147879587632815

/-!
# A148778: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148778, there is no canonical definition to state claims against.
-/

/-! ## A148778.P16962283776626749925

`A249728(A111052(n!))`
-/

namespace A148778.P16962283776626749925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A111052 (Nat.factorial n)).toNat

end

end A148778.P16962283776626749925

/-! ## A148778.P1151625661774798314

`A083382(A001558(n+1))`
-/

namespace A148778.P1151625661774798314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A001558 (n + 1)).toNat

end

end A148778.P1151625661774798314

/-! ## A148778.P312385813821295408

`A110266(A287275(n+1))`
-/

namespace A148778.P312385813821295408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A287275 (n + 1)).toNat

end

end A148778.P312385813821295408

/-!
# A148779: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148779, there is no canonical definition to state claims against.
-/

/-! ## A148779.P1851658287438101949

`A277192(A390102(n))`
-/

namespace A148779.P1851658287438101949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A390102 n).toNat

end

end A148779.P1851658287438101949

/-! ## A148779.P18110788099337047963

`A350969(A102839(n)+2)`
-/

namespace A148779.P18110788099337047963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A102839 n + 2).toNat

end

end A148779.P18110788099337047963

/-! ## A148779.P8861127800039044535

`xor(floor(n/4), A148773(A004868(n+1)))`
-/

namespace A148779.P8861127800039044535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 4⌋ (A148773 (A004868 (n + 1)).toNat)

end

end A148779.P8861127800039044535

/-!
# A148780: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148780, there is no canonical definition to state claims against.
-/

/-! ## A148780.P13341967229223537812

`A148781(n)%p?[2^n-1]`
-/

namespace A148780.P13341967229223537812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148781 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148780.P13341967229223537812

/-! ## A148780.P13778460952132342093

`A148781(A073788(n))`
-/

namespace A148780.P13778460952132342093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148781 (A073788 n).toNat

end

end A148780.P13778460952132342093

/-! ## A148780.P5123184942873521807

`A148781(A171596(n))`
-/

namespace A148780.P5123184942873521807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148781 (A171596 n).toNat

end

end A148780.P5123184942873521807

/-!
# A148782: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148782, there is no canonical definition to state claims against.
-/

/-! ## A148782.P15927665993635132715

`A081753(A303546(n+2))`
-/

namespace A148782.P15927665993635132715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A303546 (n + 2)).toNat

end

end A148782.P15927665993635132715

/-! ## A148782.P4579718629467877233

`A195174(Δ[Δ[A149854(n)]])`
-/

namespace A148782.P4579718629467877233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (f1 (n + 1) - f1 n).toNat

end

end A148782.P4579718629467877233

/-! ## A148782.P5114251604448401389

`A001462(A003168(n))`
-/

namespace A148782.P5114251604448401389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A003168 n).toNat

end

end A148782.P5114251604448401389

/-!
# A148783: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148783, there is no canonical definition to state claims against.
-/

/-! ## A148783.P12254288662843793943

`A088327(n)-A319951(A045905(n))`
-/

namespace A148783.P12254288662843793943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088327 n - A319951 (A045905 n).toNat

end

end A148783.P12254288662843793943

/-! ## A148783.P4702367270458196427

`A349536(or(A015518(n), A331885(n)))`
-/

namespace A148783.P4702367270458196427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (Int.lor (A015518 n) (A331885 n)).toNat

end

end A148783.P4702367270458196427

/-! ## A148783.P5196094201161734172

`A008624(A244986(n)+A094803(n+1))`
-/

namespace A148783.P5196094201161734172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A244986 n + A094803 (n + 1)).toNat

end

end A148783.P5196094201161734172

/-! ## A148783.P2946987066781001280

`A034887(A036765(n)*A329254(n+1))`
-/

namespace A148783.P2946987066781001280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A036765 n * A329254 (n + 1)).toNat

end

end A148783.P2946987066781001280

/-!
# A148784: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A148784, there is no canonical definition to state claims against.
-/

/-! ## A148784.P11215663200628549412

`A050025(n+1)+A008615(A180168(n))`
-/

namespace A148784.P11215663200628549412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050025 (n + 1) + A008615 (A180168 n).toNat

end

end A148784.P11215663200628549412

/-! ## A148784.P12994802822191508597

`A185714(A193579(n))`
-/

namespace A148784.P12994802822191508597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A193579 n).toNat

end

end A148784.P12994802822191508597

/-! ## A148784.P6375661937193850010

`A372511(A113179(n+1))`
-/

namespace A148784.P6375661937193850010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 (A113179 (n + 1)).toNat

end

end A148784.P6375661937193850010

/-!
# A148785: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148785, there is no canonical definition to state claims against.
-/

/-! ## A148785.P6534635612536038790

`A110656(A176332(n)+A001453(n+2))`
-/

namespace A148785.P6534635612536038790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A176332 n + A001453 (n + 2)).toNat

end

end A148785.P6534635612536038790

/-! ## A148785.P16768766424048518016

`A100196(A359915(n)+1)`
-/

namespace A148785.P16768766424048518016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A359915 n + 1).toNat

end

end A148785.P16768766424048518016

/-! ## A148785.P6584178992535466266

`A248227(A234006(n+1))`
-/

namespace A148785.P6584178992535466266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A234006 (n + 1)).toNat

end

end A148785.P6584178992535466266

/-!
# A148786: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A148786, there is no canonical definition to state claims against.
-/

/-! ## A148786.P4057885169184993520

`A084469(A215576(n))`
-/

namespace A148786.P4057885169184993520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A215576 n).toNat

end

end A148786.P4057885169184993520

/-! ## A148786.P17421812675200342525

`A156689(A211854(n))`
-/

namespace A148786.P17421812675200342525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A211854 n).toNat

end

end A148786.P17421812675200342525

/-! ## A148786.P13573067443336092451

`A390395(A148925(n))`
-/

namespace A148786.P13573067443336092451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A148925 n).toNat

end

end A148786.P13573067443336092451

/-!
# A148787: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148787, there is no canonical definition to state claims against.
-/

/-! ## A148787.P12083146727850539926

`A248227(A071725(n)+1)`
-/

namespace A148787.P12083146727850539926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A071725 n + 1).toNat

end

end A148787.P12083146727850539926

/-! ## A148787.P12312555874283587211

`A157271(A191641(n+1))`
-/

namespace A148787.P12312555874283587211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A191641 (n + 1)).toNat

end

end A148787.P12312555874283587211

/-! ## A148787.P7790226228240961214

`A187188(A293809(n+1))`
-/

namespace A148787.P7790226228240961214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A293809 (n + 1)).toNat

end

end A148787.P7790226228240961214

/-!
# A148788: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148788, there is no canonical definition to state claims against.
-/

/-! ## A148788.P7804225946670972156

`A211515(round(sqrt((ceil(10^n/9)+11)*n/4))+1)`
-/

namespace A148788.P7804225946670972156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (SequenceMachineLib.roundAway (Real.sqrt ((⌈(10 ^ n : ℚ) / 9⌉ + 11 : ℚ) * ((n : ℚ) / 4) : ℝ)) + 1).toNat

end

end A148788.P7804225946670972156

/-! ## A148788.P1400585147135259564

`A377410(A036612(n+1))`
-/

namespace A148788.P1400585147135259564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377410 (A036612 (n + 1)).toNat

end

end A148788.P1400585147135259564

/-! ## A148788.P2394906041699255207

`A377410(A036613(n+1))`
-/

namespace A148788.P2394906041699255207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377410 (A036613 (n + 1)).toNat

end

end A148788.P2394906041699255207

/-!
# A148789: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A148789, there is no canonical definition to state claims against.
-/

/-! ## A148789.P7413979104837280251

`A058494(n)+A040039(floor(lcm(2, 3*n+1)/4))`
-/

namespace A148789.P7413979104837280251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058494 n + A040039 ⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋.toNat

end

end A148789.P7413979104837280251

/-! ## A148789.P9532606067550937924

`A172471(A126739(n+1))+A000958(n+1)`
-/

namespace A148789.P9532606067550937924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A126739 (n + 1)).toNat + A000958 (n + 1)

end

end A148789.P9532606067550937924

/-! ## A148789.P2324696780681085099

`A238005(A001147(n))+A002426(n)`
-/

namespace A148789.P2324696780681085099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A001147 n).toNat + A002426 n

end

end A148789.P2324696780681085099

/-!
# A148790: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A148790, there is no canonical definition to state claims against.
-/

/-! ## A148790.P18269077452456667462

`A033862(A148791(n))`
-/

namespace A148790.P18269077452456667462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148791 n).toNat

end

end A148790.P18269077452456667462

/-! ## A148790.P14083835110669191524

`A148791(A073788(n))`
-/

namespace A148790.P14083835110669191524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148791 (A073788 n).toNat

end

end A148790.P14083835110669191524

/-! ## A148790.P5742088724825349542

`A148791(A171596(n))`
-/

namespace A148790.P5742088724825349542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148791 (A171596 n).toNat

end

end A148790.P5742088724825349542

/-!
# A148791: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148791, there is no canonical definition to state claims against.
-/

/-! ## A148791.P1740541877990854981

`xor(A088327(n), A341450(A208220(n)))`
-/

namespace A148791.P1740541877990854981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088327 n) (A341450 (A208220 n).toNat)

end

end A148791.P1740541877990854981

/-! ## A148791.P18030648895415812071

`A007563(n+1)-A318584(A351004(3*n+2))`
-/

namespace A148791.P18030648895415812071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007563 (n + 1) - A318584 (A351004 (3 * n + 2)).toNat

end

end A148791.P18030648895415812071

/-!
# A148792: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148792, there is no canonical definition to state claims against.
-/

/-! ## A148792.P3954019794037662308

`A000201(A148380(n*A143632(n)))`
-/

namespace A148792.P3954019794037662308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A148380 ((n : ℤ) * A143632 n).toNat).toNat

end

end A148792.P3954019794037662308

/-! ## A148792.P15517613026176248545

`A000201(A148380(n)^A143632(n))`
-/

namespace A148792.P15517613026176248545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.roundAway ((A148380 n : ℚ) ^ (A143632 n : ℤ))).toNat

end

end A148792.P15517613026176248545

/-! ## A148792.P2827208664799804944

`A000201(C(A148380(n), A143632(n)))`
-/

namespace A148792.P2827208664799804944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (Nat.choose (A148380 n).toNat (A143632 n).toNat)

end

end A148792.P2827208664799804944

/-!
# A148793: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148793, there is no canonical definition to state claims against.
-/

/-! ## A148793.P4354910373788521288

`A083382((n+1)*3^n+1)`
-/

namespace A148793.P4354910373788521288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 ((n + 1) * 3 ^ n + 1)

end

end A148793.P4354910373788521288

/-! ## A148793.P9089295707619892501

`∑[A073188(A053871(n))]`
-/

namespace A148793.P9089295707619892501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A053871 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148793.P9089295707619892501

/-!
# A148794: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A148794, there is no canonical definition to state claims against.
-/

/-! ## A148794.P14725511434058346568

`A008676(3*A094977(n))`
-/

namespace A148794.P14725511434058346568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (3 * A094977 n).toNat

end

end A148794.P14725511434058346568

/-! ## A148794.P6650932686623932047

`A081753(3*A102898(n))`
-/

namespace A148794.P6650932686623932047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (3 * A102898 n).toNat

end

end A148794.P6650932686623932047

/-! ## A148794.P5725839861396633748

`A161634(n)+A056558(A001858(n))`
-/

namespace A148794.P5725839861396633748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161634 n + A056558 (A001858 n).toNat

end

end A148794.P5725839861396633748

/-!
# A148795: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148795, there is no canonical definition to state claims against.
-/

/-! ## A148795.P1795937922776107933

`and(p?[2^n-1], A148796(n))`
-/

namespace A148795.P1795937922776107933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A148796 n)

end

end A148795.P1795937922776107933

/-! ## A148795.P707034682655971227

`A038567(A138413(n))`
-/

namespace A148795.P707034682655971227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A138413 n).toNat

end

end A148795.P707034682655971227

/-! ## A148795.P16188121754998287821

`A148796(A073788(n))`
-/

namespace A148795.P16188121754998287821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148796 (A073788 n).toNat

end

end A148795.P16188121754998287821

/-!
# A148797: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148797, there is no canonical definition to state claims against.
-/

/-! ## A148797.P1377028880702775367

`A157271(A149936(n))`
-/

namespace A148797.P1377028880702775367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149936 n).toNat

end

end A148797.P1377028880702775367

/-! ## A148797.P18172183148320802369

`A055930(A100217(n))+1`
-/

namespace A148797.P18172183148320802369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A100217 n).toNat + 1

end

end A148797.P18172183148320802369

/-! ## A148797.P15887294833255676888

`A231149(4*A346661(n))`
-/

namespace A148797.P15887294833255676888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (4 * A346661 n).toNat

end

end A148797.P15887294833255676888

/-!
# A148798: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A148798, there is no canonical definition to state claims against.
-/

/-! ## A148798.P15126349992522769154

`A077070(record[∑[A048998(n)]])`
-/

namespace A148798.P15126349992522769154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A148798.P15126349992522769154

/-! ## A148798.P10094231955438584104

`A169651(n)+A005614(A007841(n))`
-/

namespace A148798.P10094231955438584104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169651 n + A005614 (A007841 n).toNat

end

end A148798.P10094231955438584104

/-! ## A148798.P15879941447852494412

`A113281(n)+A064460(A088218(n))`
-/

namespace A148798.P15879941447852494412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113281 n + A064460 (A088218 n).toNat

end

end A148798.P15879941447852494412

/-!
# A148799: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148799, there is no canonical definition to state claims against.
-/

/-! ## A148799.P2533316310350451470

`and(p?[2^n-1], A148800(n))`
-/

namespace A148799.P2533316310350451470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A148800 n)

end

end A148799.P2533316310350451470

/-! ## A148799.P601778780832269770

`A148800(A073788(n))`
-/

namespace A148799.P601778780832269770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148800 (A073788 n).toNat

end

end A148799.P601778780832269770

/-! ## A148799.P8975887657292933885

`A148800(A171596(n))`
-/

namespace A148799.P8975887657292933885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148800 (A171596 n).toNat

end

end A148799.P8975887657292933885

