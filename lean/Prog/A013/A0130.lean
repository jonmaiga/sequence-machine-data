import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C022
import Seq.B000.C023
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B002.C001
import Seq.B002.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

/-!
# A013001: cos(arctan(x)+tan(x))=1-4/2!*x^2+16/4!*x^4-544/6!*x^6+25344/8!*x^8...

The programs for A013001, there is no canonical definition to state claims against.
-/

/-! ## A013001.P4563553156160904196

`A013184(2*n)*A062157(n+1)`
-/

namespace A013001.P4563553156160904196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013184 (2 * n) * A062157 (n + 1)

end

end A013001.P4563553156160904196

/-! ## A013001.P13933276430108759553

`A013184(2*n)/A062157(A000124(2*n))`
-/

namespace A013001.P13933276430108759553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013184 (2 * n) : ℚ) / (A062157 (A000124 (2 * n)).toNat : ℚ)

end

end A013001.P13933276430108759553

/-!
# A013002: sinh(arctan(x)+tan(x))=2*x+8/3!*x^3+72/5!*x^5+3040/7!*x^7...

The programs for A013002, there is no canonical definition to state claims against.
-/

/-! ## A013002.P3936330796894652115

`A012997(Δ[n²])`
-/

namespace A013002.P3936330796894652115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012997 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013002.P3936330796894652115

/-!
# A013006: cosh(arctan(x)+tan(x))=1+4/2!*x^2+16/4!*x^4+544/6!*x^6+11008/8!*x^8...

The programs for A013006, there is no canonical definition to state claims against.
-/

/-! ## A013006.P4330906813980477197

`A012997(2*n)`
-/

namespace A013006.P4330906813980477197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012997 (2 * n)

end

end A013006.P4330906813980477197

/-! ## A013006.P2082664095697622807

`or(A000007(n), A012997(A005843(n)))`
-/

namespace A013006.P2082664095697622807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A012997 (A005843 n).toNat)

end

end A013006.P2082664095697622807

/-! ## A013006.P10106354938089967183

`A012997(A005843(n))^A054977(n)²`
-/

namespace A013006.P10106354938089967183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012997 (A005843 n).toNat : ℚ) ^ (A054977 n ^ 2 : ℤ)

end

end A013006.P10106354938089967183

/-! ## A013006.P4641506156768721826

`A012997(A005843(n))/A054977(n+1)`
-/

namespace A013006.P4641506156768721826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012997 (A005843 n).toNat : ℚ) / (A054977 (n + 1) : ℚ)

end

end A013006.P4641506156768721826

/-! ## A013006.P14984849446831159196

`A012997(A005843(n))/A007318(C(n, 2))`
-/

namespace A013006.P14984849446831159196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012997 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A013006.P14984849446831159196

/-!
# A013010: Expansion of e.g.f. log(cos(x) + arcsin(x)).

The programs for A013010, there is no canonical definition to state claims against.
-/

/-! ## A013010.P2834758781235477108

`A161743(2*n+5)%∑[A007417(A128775(n+1))]`
-/

namespace A013010.P2834758781235477108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (A128775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161743 (2 * n + 5)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013010.P2834758781235477108

/-!
# A013011: Expansion of e.g.f. log(cos(x) + tan(x)).

The programs for A013011, there is no canonical definition to state claims against.
-/

/-! ## A013011.P16761511256692788620

`A321797(A033030(n))+A009628(n)`
-/

namespace A013011.P16761511256692788620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A033030 n).toNat + A009628 n

end

end A013011.P16761511256692788620

/-!
# A013013: exp(sinh(x)+log(x+1))=1+2*x+3/2!*x^2+5/3!*x^3+13/4!*x^4+37/5!*x^5...

The programs for A013013, there is no canonical definition to state claims against.
-/

/-! ## A013013.P12966980798389208910

`A009224(n)+A003724(n)`
-/

namespace A013013.P12966980798389208910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009224 n + A003724 n

end

end A013013.P12966980798389208910

/-! ## A013013.P12070945490936917015

`A013022(n)+A013019(n)`
-/

namespace A013013.P12070945490936917015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013022 n + A013019 n

end

end A013013.P12070945490936917015

/-! ## A013013.P2937410101676893490

`A009224(n)+A009224(n+1)/(n+1)`
-/

namespace A013013.P2937410101676893490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009224 n : ℚ) + (A009224 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013013.P2937410101676893490

/-! ## A013013.P13801390027269320733

`A124322(A002620(n+1))+A009224(n)`
-/

namespace A013013.P13801390027269320733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A002620 (n + 1)).toNat + A009224 n

end

end A013013.P13801390027269320733

/-! ## A013013.P16128417864081368592

`A124322(A076921(n+1))+A009224(n)`
-/

namespace A013013.P16128417864081368592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A076921 (n + 1)).toNat + A009224 n

end

end A013013.P16128417864081368592

/-! ## A013013.P8514012576661430859

`A124322(A182531(n+1))+A009224(n)`
-/

namespace A013013.P8514012576661430859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A182531 (n + 1)).toNat + A009224 n

end

end A013013.P8514012576661430859

/-!
# A013015: Expansion of e.g.f.: arcsin(sinh(x)+log(x+1))=2*x-1/2!*x^2+11/3!*x^3-30/4!*x^4+463/5!*x^5...

The programs for A013015, there is no canonical definition to state claims against.
-/

/-! ## A013015.P7512366893552626097

`A012900(n)-A004198(A176043(n))`
-/

namespace A013015.P7512366893552626097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012900 n - A004198 (A176043 n).toNat

end

end A013015.P7512366893552626097

/-!
# A013016: Expansion of e.g.f. tan(sinh(x) + log(x+1)).

The programs for A013016, there is no canonical definition to state claims against.
-/

/-! ## A013016.P16164216594666619240

`A012901(n)-A004198(A176043(n))`
-/

namespace A013016.P16164216594666619240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012901 n - A004198 (A176043 n).toNat

end

end A013016.P16164216594666619240

/-!
# A013017: Expansion of e.g.f.: arctan(sinh(x)+log(x+1))=2*x-1/2!*x^2-13/3!*x^3+42/4!*x^4+493/5!*x^5...

The programs for A013017, there is no canonical definition to state claims against.
-/

/-! ## A013017.P18381886974415047300

`A328167(A013153(n))+A013125(n)`
-/

namespace A013017.P18381886974415047300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (A013153 n).toNat + A013125 n

end

end A013017.P18381886974415047300

/-! ## A013017.P17316545289535704257

`A012902(n)-A004198(A176043(n))`
-/

namespace A013017.P17316545289535704257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012902 n - A004198 (A176043 n).toNat

end

end A013017.P17316545289535704257

/-!
# A013019: Expansion of e.g.f. sinh(sinh(x) + log(x+1)).

The programs for A013019, there is no canonical definition to state claims against.
-/

/-! ## A013019.P17711558552482035508

`A003724(n)+A009224(n)-A013022(n)`
-/

namespace A013019.P17711558552482035508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 n + (A009224 n - A013022 n)

end

end A013019.P17711558552482035508

/-! ## A013019.P714449754738119677

`A009224(n)+A009224(n+1)/(n+1)-A013022(n)`
-/

namespace A013019.P714449754738119677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009224 n : ℚ) + (A009224 (n + 1) : ℚ) / (n + 1 : ℚ) - (A013022 n : ℚ)

end

end A013019.P714449754738119677

/-! ## A013019.P9219611733586544877

`A124322(A076921(n+1))+A009224(n)-A013022(n)`
-/

namespace A013019.P9219611733586544877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A076921 (n + 1)).toNat + (A009224 n - A013022 n)

end

end A013019.P9219611733586544877

/-! ## A013019.P8665291419252224856

`A124322(A182531(n+1))+A009224(n)-A013022(n)`
-/

namespace A013019.P8665291419252224856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A182531 (n + 1)).toNat + (A009224 n - A013022 n)

end

end A013019.P8665291419252224856

/-! ## A013019.P14579897841927546293

`A013013(n)-A013022(n)`
-/

namespace A013019.P14579897841927546293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013013 n - A013022 n

end

end A013019.P14579897841927546293

/-!
# A013020: Expansion of e.g.f.: tanh(sinh(x)+log(x+1))=2*x-1/2!*x^2-13/3!*x^3+42/4!*x^4+237/5!*x^5...

The programs for A013020, there is no canonical definition to state claims against.
-/

/-! ## A013020.P12427909316088536427

`A012906(n)-A004198(A176043(n))`
-/

namespace A013020.P12427909316088536427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012906 n - A004198 (A176043 n).toNat

end

end A013020.P12427909316088536427

/-!
# A013021: Expansion of e.g.f. arctanh(sinh(x) + log(x+1)).

The programs for A013021, there is no canonical definition to state claims against.
-/

/-! ## A013021.P15971477129377662209

`A012907(n)-A004198(A176043(n))`
-/

namespace A013021.P15971477129377662209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012907 n - A004198 (A176043 n).toNat

end

end A013021.P15971477129377662209

/-!
# A013022: Expansion of e.g.f.: cosh(sinh(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+43/4!*x^4-170/5!*x^5...

The programs for A013022, there is no canonical definition to state claims against.
-/

/-! ## A013022.P13835439105439210789

`A003724(n)+A009224(n)-A013019(n)`
-/

namespace A013022.P13835439105439210789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 n + (A009224 n - A013019 n)

end

end A013022.P13835439105439210789

/-! ## A013022.P16524820101262404610

`A009224(n)+A009224(n+1)/(n+1)-A013019(n)`
-/

namespace A013022.P16524820101262404610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009224 n : ℚ) + (A009224 (n + 1) : ℚ) / (n + 1 : ℚ) - (A013019 n : ℚ)

end

end A013022.P16524820101262404610

/-! ## A013022.P10909015960913439800

`A124322(A076921(n+1))+A009224(n)-A013019(n)`
-/

namespace A013022.P10909015960913439800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A076921 (n + 1)).toNat + (A009224 n - A013019 n)

end

end A013022.P10909015960913439800

/-! ## A013022.P2331915067779438229

`A124322(A182531(n+1))+A009224(n)-A013019(n)`
-/

namespace A013022.P2331915067779438229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A182531 (n + 1)).toNat + (A009224 n - A013019 n)

end

end A013022.P2331915067779438229

/-! ## A013022.P9108759834675071481

`A013013(n)-A013019(n)`
-/

namespace A013022.P9108759834675071481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013013 n - A013019 n

end

end A013022.P9108759834675071481

/-!
# A013026: sin(sinh(x)+sin(x))=2*x-8/3!*x^3+34/5!*x^5-296/7!*x^7+4546/9!*x^9...

The programs for A013026, there is no canonical definition to state claims against.
-/

/-! ## A013026.P5560823671530968866

`A013025(2*n+1)*A033999(n)`
-/

namespace A013026.P5560823671530968866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013025 (2 * n + 1) * A033999 n

end

end A013026.P5560823671530968866

/-! ## A013026.P1488793225941435501

`A013025(2*n+1)*A117569(2*n+1)`
-/

namespace A013026.P1488793225941435501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013025 (2 * n + 1) * A117569 (2 * n + 1)

end

end A013026.P1488793225941435501

/-! ## A013026.P8107680315415875190

`A013025(2*n+1)*A110522(A000217(n))`
-/

namespace A013026.P8107680315415875190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013025 (2 * n + 1) * A110522 (A000217 n).toNat

end

end A013026.P8107680315415875190

/-!
# A013030: cos(sinh(x)+sin(x))=1-4/2!*x^2+16/4!*x^4-88/6!*x^6+1152/8!*x^8...

The programs for A013030, there is no canonical definition to state claims against.
-/

/-! ## A013030.P2980079122328901490

`(-1)^n*A013025(2*n)`
-/

namespace A013030.P2980079122328901490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013025 (2 * n)

end

end A013030.P2980079122328901490

/-! ## A013030.P11069197967159222532

`A013025(2*n)*A033999(n)`
-/

namespace A013030.P11069197967159222532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013025 (2 * n) * A033999 n

end

end A013030.P11069197967159222532

/-! ## A013030.P4906493510691852225

`A013025(2*n)*A117569(2*n+1)`
-/

namespace A013030.P4906493510691852225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013025 (2 * n) * A117569 (2 * n + 1)

end

end A013030.P4906493510691852225

/-! ## A013030.P14190165821768107327

`A013025(A005843(n))/A033999(n)`
-/

namespace A013030.P14190165821768107327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013025 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013030.P14190165821768107327

/-!
# A013032: Expansion of e.g.f.: exp(sinh(x)+arcsin(x))=1+2*x+4/2!*x^2+10/3!*x^3+32/4!*x^4+122/5!*x^5...

The programs for A013032, there is no canonical definition to state claims against.
-/

/-! ## A013032.P8257752901924556622

`∪[A013038(n), A013041(n)]`
-/

namespace A013032.P8257752901924556622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013032.P8257752901924556622

/-! ## A013032.P3210582255921293853

`A001250(∑[C(n, floor(n/7))!])`
-/

namespace A013032.P3210582255921293853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n ⌊(n : ℚ) / 7⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013032.P3210582255921293853

/-! ## A013032.P10305527332876476942

`A263664(a(gcd(7, n)-1)+n)` with `a(0)=1`
-/

namespace A013032.P10305527332876476942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263664 (a (Nat.gcd 7 n - 1) + (n : ℤ)).toNat

end

end A013032.P10305527332876476942

/-!
# A013037: cos(sinh(x)+arcsin(x))=1-4/2!*x^2+96/6!*x^6+896/8!*x^8-9344/10!*x^10...

The programs for A013037, there is no canonical definition to state claims against.
-/

/-! ## A013037.P7320703084175005115

`A012688(n)%A056942(2^(∑[n]+1))`
-/

namespace A013037.P7320703084175005115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012688 n) (A056942 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + 1)))

end

end A013037.P7320703084175005115

/-!
# A013038: sinh(sinh(x)+arcsin(x))=2*x+10/3!*x^3+122/5!*x^5+2874/7!*x^7...

The programs for A013038, there is no canonical definition to state claims against.
-/

/-! ## A013038.P12582408445980805197

`A013032(Δ[n²])`
-/

namespace A013038.P12582408445980805197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013038.P12582408445980805197

/-! ## A013038.P8957131880826836750

`lcm(2, A013032(2*n+1))`
-/

namespace A013038.P8957131880826836750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A013032 (2 * n + 1))

end

end A013038.P8957131880826836750

/-! ## A013038.P6353757351212573686

`record[A013032((n+1)/2^val(n+1, 2))]`
-/

namespace A013038.P6353757351212573686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013038.P6353757351212573686

/-! ## A013038.P17986426848315623172

`record[A013032(A004442(n))]`
-/

namespace A013038.P17986426848315623172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013032 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013038.P17986426848315623172

/-! ## A013038.P3833612973217995091

`record[A013032(A099375(n))]`
-/

namespace A013038.P3833612973217995091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013032 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013038.P3833612973217995091

/-!
# A013041: cosh(sinh(x)+arcsin(x))=1+4/2!*x^2+32/4!*x^4+544/6!*x^6+17536/8!*x^8...

The programs for A013041, there is no canonical definition to state claims against.
-/

/-! ## A013041.P1717776839981074095

`A013032(2*n)`
-/

namespace A013041.P1717776839981074095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013032 (2 * n)

end

end A013041.P1717776839981074095

/-! ## A013041.P14524708104456599456

`record[A013032(A099375(n)-1)]`
-/

namespace A013041.P14524708104456599456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013032 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013041.P14524708104456599456

/-! ## A013041.P10282179207776611350

`record[A013032(n)/A033999(n)]`
-/

namespace A013041.P10282179207776611350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013032 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013041.P10282179207776611350

/-! ## A013041.P8070694733812788343

`record[lcm(A013032(n), A077957(n))]`
-/

namespace A013041.P8070694733812788343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013032 n) (A077957 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013041.P8070694733812788343

/-! ## A013041.P7298347707373412143

`record[A013032(n-A007814(n+1))]`
-/

namespace A013041.P7298347707373412143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013032 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013041.P7298347707373412143

/-!
# A013044: exp(sinh(x)+tan(x))=1+2*x+4/2!*x^2+11/3!*x^3+40/4!*x^4+169/5!*x^5...

The programs for A013044, there is no canonical definition to state claims against.
-/

/-! ## A013044.P370948364874908802

`∪[A013050(n), A013053(n)]`
-/

namespace A013044.P370948364874908802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A013044.P370948364874908802

/-! ## A013044.P11832892958285239412

`A051597(n)+A002372(A053529(n))`
-/

namespace A013044.P11832892958285239412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + A002372 (A053529 n).toNat

end

end A013044.P11832892958285239412

/-! ## A013044.P4455304061534463696

`A245890(n+1)+A001221(A052599(n))`
-/

namespace A013044.P4455304061534463696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245890 (n + 1) + A001221 (A052599 n).toNat

end

end A013044.P4455304061534463696

/-!
# A013045: sin(sinh(x)+tan(x))=2*x-5/3!*x^3-71/5!*x^5-863/7!*x^7-11207/9!*x^9...

The programs for A013045, there is no canonical definition to state claims against.
-/

/-! ## A013045.P12713960441951713080

`(-1)^n*A013129(Δ[n²])`
-/

namespace A013045.P12713960441951713080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013129 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013045.P12713960441951713080

/-!
# A013049: cos(sinh(x)+tan(x))=1-4/2!*x^2-8/4!*x^4+122/6!*x^6+5352/8!*x^8...

The programs for A013049, there is no canonical definition to state claims against.
-/

/-! ## A013049.P15091047994222271395

`A013129(2*n)/(-1)^n`
-/

namespace A013049.P15091047994222271395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013129 (2 * n) : ℚ) / ((-1) ^ n : ℚ)

end

end A013049.P15091047994222271395

/-!
# A013050: sinh(sinh(x)+tan(x))=2*x+11/3!*x^3+169/5!*x^5+4769/7!*x^7...

The programs for A013050, there is no canonical definition to state claims against.
-/

/-! ## A013050.P8596033876009574925

`A013044(Δ[n²])`
-/

namespace A013050.P8596033876009574925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013050.P8596033876009574925

/-! ## A013050.P3008570889818944395

`record[A013044(A004442(n))]`
-/

namespace A013050.P3008570889818944395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013050.P3008570889818944395

/-! ## A013050.P11817619424771559098

`record[A013044(abs(A009001(n)))]`
-/

namespace A013050.P11817619424771559098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013050.P11817619424771559098

/-! ## A013050.P115228030903193737

`record[A013044(A000265(n+1))]`
-/

namespace A013050.P115228030903193737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013050.P115228030903193737

/-! ## A013050.P1612215993371513050

`record[A013044(A196020(n+1))]`
-/

namespace A013050.P1612215993371513050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 (A196020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013050.P1612215993371513050

/-!
# A013053: cosh(sinh(x)+tan(x))=1+4/2!*x^2+40/4!*x^4+838/6!*x^6+30552/8!*x^8...

The programs for A013053, there is no canonical definition to state claims against.
-/

/-! ## A013053.P10241902927926701735

`A013044(2*n)`
-/

namespace A013053.P10241902927926701735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 (2 * n)

end

end A013053.P10241902927926701735

/-! ## A013053.P16310723100518981695

`record[A013044(n)/A033999(n)]`
-/

namespace A013053.P16310723100518981695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013044 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013053.P16310723100518981695

/-! ## A013053.P14060488647754789362

`record[A013044(abs(A009001(n))-1)]`
-/

namespace A013053.P14060488647754789362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 (|A009001 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013053.P14060488647754789362

/-! ## A013053.P18049774316006826418

`record[A013044(A000265(n+1)-1)]`
-/

namespace A013053.P18049774316006826418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013044 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013053.P18049774316006826418

/-! ## A013053.P12150344170426688777

`A013044(A005843(n))/A000045(or(n, -2)+3)`
-/

namespace A013053.P12150344170426688777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013044 (A005843 n).toNat : ℚ) / (A000045 (Int.lor (n : ℤ) (-2) + 3).toNat : ℚ)

end

end A013053.P12150344170426688777

/-!
# A013056: exp(sinh(x)+arctan(x))=1+2*x+4/2!*x^2+7/3!*x^3+8/4!*x^4+17/5!*x^5...

The programs for A013056, there is no canonical definition to state claims against.
-/

/-! ## A013056.P11284635924175085307

`A262689(A013131(n)²)`
-/

namespace A013056.P11284635924175085307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A013131 n ^ 2).toNat

end

end A013056.P11284635924175085307

/-! ## A013056.P8687364847038239018

`A157271(2*A013131(n))`
-/

namespace A013056.P8687364847038239018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A013131 n).toNat

end

end A013056.P8687364847038239018

/-! ## A013056.P16265302317411714278

`filter[A013131(n), A070887(#)]`
-/

namespace A013056.P16265302317411714278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070887 (f1 j).toNat = 1) n)

end

end A013056.P16265302317411714278

/-!
# A013057: sin(sinh(x)+arctan(x))=2*x-9/3!*x^3+97/5!*x^5-3647/7!*x^7...

The programs for A013057, there is no canonical definition to state claims against.
-/

/-! ## A013057.P11709944727390970185

`(-1)^n*A013168(A005408(n))`
-/

namespace A013057.P11709944727390970185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013168 (A005408 n).toNat

end

end A013057.P11709944727390970185

/-! ## A013057.P11739317308724170988

`A013168(2*n+1)*A033999(n)`
-/

namespace A013057.P11739317308724170988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013168 (2 * n + 1) * A033999 n

end

end A013057.P11739317308724170988

/-! ## A013057.P15578942832772923410

`A013168(A005408(n))/A033999(n)`
-/

namespace A013057.P15578942832772923410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013168 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013057.P15578942832772923410

/-! ## A013057.P10328323108797825425

`A013168(A005843(n)+1)/A033999(n)`
-/

namespace A013057.P10328323108797825425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013168 (A005843 n + 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A013057.P10328323108797825425

/-!
# A013061: cos(sinh(x)+arctan(x))=1-4/2!*x^2+24/4!*x^4-534/6!*x^6+27272/8!*x^8...

The programs for A013061, there is no canonical definition to state claims against.
-/

/-! ## A013061.P15473477772992313957

`A013168(2*n)*A033999(n)`
-/

namespace A013061.P15473477772992313957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013168 (2 * n) * A033999 n

end

end A013061.P15473477772992313957

/-! ## A013061.P16455783959936804422

`A013168(A005843(n))/(-1)^n`
-/

namespace A013061.P16455783959936804422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013168 (A005843 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A013061.P16455783959936804422

/-!
# A013062: sinh(sinh(x)+arctan(x))=2*x+7/3!*x^3+17/5!*x^5+1089/7!*x^7...

The programs for A013062, there is no canonical definition to state claims against.
-/

/-! ## A013062.P1077020950835816802

`A013056(Δ[n²])`
-/

namespace A013062.P1077020950835816802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013062.P1077020950835816802

/-! ## A013062.P300232042459808884

`A013056(2*n+1)+char[A186175(n+1)]`
-/

namespace A013062.P300232042459808884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186175 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013062.P300232042459808884

/-! ## A013062.P14998170246647410833

`A013056(2*n+1)+char[A186180(n+1)]`
-/

namespace A013062.P14998170246647410833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186180 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013062.P14998170246647410833

/-! ## A013062.P16758064707138710664

`A013056(2*n+1)+char[A235885(n+1)]`
-/

namespace A013062.P16758064707138710664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235885 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013062.P16758064707138710664

/-! ## A013062.P6569696520711591766

`A013056(2*n+1)%A013041(n+2)`
-/

namespace A013062.P6569696520711591766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013056 (2 * n + 1)) (A013041 (n + 2))

end

end A013062.P6569696520711591766

/-!
# A013065: cosh(sinh(x)+arctan(x))=1+4/2!*x^2+8/4!*x^4+214/6!*x^6-2120/8!*x^8...

The programs for A013065, there is no canonical definition to state claims against.
-/

/-! ## A013065.P1805705045363600133

`A013056(2*n)`
-/

namespace A013065.P1805705045363600133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 (2 * n)

end

end A013065.P1805705045363600133

/-! ## A013065.P555320052542003638

`A013056(A004277(n))-A000007(n)`
-/

namespace A013065.P555320052542003638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 (A004277 n).toNat - A000007 n

end

end A013065.P555320052542003638

/-! ## A013065.P9511855459655897937

`A013056(A004277(n))+A057427(n)-1`
-/

namespace A013065.P9511855459655897937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 (A004277 n).toNat + (A057427 n - 1)

end

end A013065.P9511855459655897937

/-! ## A013065.P3763177867538358602

`A013056(A004277(n))-(A057428(n)+1)`
-/

namespace A013065.P3763177867538358602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013056 (A004277 n).toNat - (A057428 n + 1)

end

end A013065.P3763177867538358602

/-! ## A013065.P12571432896459437989

`A013056(A004277(n))/A014963(A090288(n))`
-/

namespace A013065.P12571432896459437989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013056 (A004277 n).toNat : ℚ) / (A014963 (A090288 n).toNat : ℚ)

end

end A013065.P12571432896459437989

/-!
# A013068: Expansion of e.g.f. log(sinh(x) + cos(x)).

The programs for A013068, there is no canonical definition to state claims against.
-/

/-! ## A013068.P8508422328402906225

`A008683(6*n^n)-A292907(n)`
-/

namespace A013068.P8508422328402906225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * n ^ n) - A292907 n

end

end A013068.P8508422328402906225

/-! ## A013068.P16300304453656058279

`ceil(n*(-2)^(n-3))*A001222(A042985(n))`
-/

namespace A013068.P16300304453656058279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉ * A001222 (A042985 n).toNat

end

end A013068.P16300304453656058279

/-!
# A013073: Expansion of e.g.f. arctan(arcsinh(x) + log(x+1)).

The programs for A013073, there is no canonical definition to state claims against.
-/

/-! ## A013073.P17407344634240191363

`A012890(n)+A004198(A176043(n))`
-/

namespace A013073.P17407344634240191363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012890 n + A004198 (A176043 n).toNat

end

end A013073.P17407344634240191363

/-!
# A013075: Expansion of e.g.f. arcsinh(arcsinh(x) + log(x+1)).

The programs for A013075, there is no canonical definition to state claims against.
-/

/-! ## A013075.P11494037158209525113

`A012893(n)+A004198(A176043(n))`
-/

namespace A013075.P11494037158209525113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012893 n + A004198 (A176043 n).toNat

end

end A013075.P11494037158209525113

/-! ## A013075.P12503763587692373347

`or(A007814(A306578(n)), A012893(n))`
-/

namespace A013075.P12503763587692373347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A306578 n).toNat) (A012893 n)

end

end A013075.P12503763587692373347

/-!
# A013076: Expansion of e.g.f. tanh(arcsinh(x) + log(x+1)).

The programs for A013076, there is no canonical definition to state claims against.
-/

/-! ## A013076.P11139696700807838862

`A012894(n)+A004198(A176043(n))`
-/

namespace A013076.P11139696700807838862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012894 n + A004198 (A176043 n).toNat

end

end A013076.P11139696700807838862

/-!
# A013077: arctanh(arcsinh(x)+log(x+1))=2*x-1/2!*x^2+17/3!*x^3-54/4!*x^4...

The programs for A013077, there is no canonical definition to state claims against.
-/

/-! ## A013077.P2485670234069025304

`A012895(n)+A004198(A176043(n))`
-/

namespace A013077.P2485670234069025304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012895 n + A004198 (A176043 n).toNat

end

end A013077.P2485670234069025304

/-!
# A013081: log(arcsinh(x)+exp(x))=2*x-3/2!*x^2+10/3!*x^3-50/4!*x^4+348/5!*x^5...

The programs for A013081, there is no canonical definition to state claims against.
-/

/-! ## A013081.P2710081740485423261

`A302196(n)-A008683(A302169(2*n+1))`
-/

namespace A013081.P2710081740485423261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302196 n - A008683 (A302169 (2 * n + 1)).toNat

end

end A013081.P2710081740485423261

/-!
# A013084: exp(arcsinh(x)+arcsin(x))=1+2*x+4/2!*x^2+8/3!*x^3+16/4!*x^4+50/5!*x^5...

The programs for A013084, there is no canonical definition to state claims against.
-/

/-! ## A013084.P13327835886389943816

`record[A319654(record[A278219(n)])]`
-/

namespace A013084.P13327835886389943816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013084.P13327835886389943816

/-! ## A013084.P16055284276366658136

`A091202(A058837(n))+A000079(n)`
-/

namespace A013084.P16055284276366658136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091202 (A058837 n).toNat + A000079 n

end

end A013084.P16055284276366658136

/-!
# A013085: sin(arcsinh(x)+arcsin(x))=2*x-8/3!*x^3+50/5!*x^5-1640/7!*x^7...

The programs for A013085, there is no canonical definition to state claims against.
-/

/-! ## A013085.P4659959043184569683

`A013084(2*n+1)*A033999(n)`
-/

namespace A013085.P4659959043184569683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013084 (2 * n + 1) * A033999 n

end

end A013085.P4659959043184569683

/-! ## A013085.P5396727197253536328

`A013084(A005408(n))/A033999(n)`
-/

namespace A013085.P5396727197253536328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013084 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013085.P5396727197253536328

/-!
# A013089: cos(arcsinh(x)+arcsin(x))=1-4/2!*x^2+16/4!*x^4-280/6!*x^6+8320/8!*x^8...

The programs for A013089, there is no canonical definition to state claims against.
-/

/-! ## A013089.P10060915189005341869

`A013084(2*n)*A033999(n)`
-/

namespace A013089.P10060915189005341869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013084 (2 * n) * A033999 n

end

end A013089.P10060915189005341869

/-! ## A013089.P14101667006447204498

`A013084(A005408(n)-1)/A033999(n)`
-/

namespace A013089.P14101667006447204498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013084 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A013089.P14101667006447204498

/-!
# A013091: E.g.f.: exp(arcsinh(x)+tan(x)) = 1 + 2*x + 4/2!*x^2 + 9/3!*x^3 + 24/4!*x^4 + 97/5!*x^5 + ....

The programs for A013091, there is no canonical definition to state claims against.
-/

/-! ## A013091.P8262481489712011240

`A154125(A013168(n))`
-/

namespace A013091.P8262481489712011240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A013168 n).toNat

end

end A013091.P8262481489712011240

/-! ## A013091.P836763143435513228

`A013168(A004912(n+1))`
-/

namespace A013091.P836763143435513228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013168 (A004912 (n + 1)).toNat

end

end A013091.P836763143435513228

/-!
# A013092: sin(arcsinh(x)+tan(x))=2*x-7/3!*x^3+17/5!*x^5-1761/7!*x^7...

The programs for A013092, there is no canonical definition to state claims against.
-/

/-! ## A013092.P9843199018856305860

`A013131(2*n+1)*A033999(n)`
-/

namespace A013092.P9843199018856305860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013131 (2 * n + 1) * A033999 n

end

end A013092.P9843199018856305860

/-! ## A013092.P1308086489952650545

`A013131(2*n+1)*A062157(n+1)`
-/

namespace A013092.P1308086489952650545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013131 (2 * n + 1) * A062157 (n + 1)

end

end A013092.P1308086489952650545

/-! ## A013092.P7749468936187155154

`A013131(A005408(n))/A033999(n)`
-/

namespace A013092.P7749468936187155154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013131 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013092.P7749468936187155154

/-! ## A013092.P13229591684700746648

`A013131(A005408(n))/A062157(n+1)`
-/

namespace A013092.P13229591684700746648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013131 (A005408 n).toNat : ℚ) / (A062157 (n + 1) : ℚ)

end

end A013092.P13229591684700746648

/-!
# A013096: cos(arcsinh(x)+tan(x))=1-4/2!*x^2+8/4!*x^4-214/6!*x^6+8632/8!*x^8...

The programs for A013096, there is no canonical definition to state claims against.
-/

/-! ## A013096.P7081322401119235112

`(-1)^n*A013131(2*n)`
-/

namespace A013096.P7081322401119235112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013131 (2 * n)

end

end A013096.P7081322401119235112

/-! ## A013096.P13956422735270437014

`A013131(2*n)*A033999(n)`
-/

namespace A013096.P13956422735270437014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013131 (2 * n) * A033999 n

end

end A013096.P13956422735270437014

/-! ## A013096.P15659521265167223011

`A013131(2*n)*A062157(n+1)`
-/

namespace A013096.P15659521265167223011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013131 (2 * n) * A062157 (n + 1)

end

end A013096.P15659521265167223011

/-! ## A013096.P2852433970327268848

`A013131(A005843(n))/A033999(n)`
-/

namespace A013096.P2852433970327268848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013131 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013096.P2852433970327268848

/-! ## A013096.P5733291693322772381

`A013131(A005408(n)-1)/A033999(n)`
-/

namespace A013096.P5733291693322772381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013131 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A013096.P5733291693322772381

