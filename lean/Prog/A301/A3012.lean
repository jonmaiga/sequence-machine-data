import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A301200: Coordination sequence T2 for Zeolite Code SIV.

The programs for A301200, there is no canonical definition to state claims against.
-/

/-! ## A301200.P13646952776369129466

`A085856(A324093(n+1))+A008266(n)`
-/

namespace A301200.P13646952776369129466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (A324093 (n + 1)).toNat + A008266 n

end

end A301200.P13646952776369129466

/-!
# A301201: Coordination sequence T4 for Zeolite Code SIV.

The programs for A301201, there is no canonical definition to state claims against.
-/

/-! ## A301201.P7145037282757262783

`A174479(A000055(n))+A008160(n)`
-/

namespace A301201.P7145037282757262783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174479 (A000055 n).toNat + A008160 n

end

end A301201.P7145037282757262783

/-! ## A301201.P12190010467315314527

`A301199(n)-A107846(A082526(n))`
-/

namespace A301201.P12190010467315314527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301199 n - A107846 (A082526 n).toNat

end

end A301201.P12190010467315314527

/-! ## A301201.P6313615345596704019

`A301199(n)-A107846(A098475(n))`
-/

namespace A301201.P6313615345596704019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301199 n - A107846 (A098475 n).toNat

end

end A301201.P6313615345596704019

/-! ## A301201.P15170185907946314361

`A008160(n)+A000038(A111450(n+1))`
-/

namespace A301201.P15170185907946314361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008160 n + A000038 (A111450 (n + 1)).toNat

end

end A301201.P15170185907946314361

/-!
# A301206: Coordination sequence T2 for Zeolite Code SSY.

The programs for A301206, there is no canonical definition to state claims against.
-/

/-! ## A301206.P8518088940054965590

`A016433(n)+A016386(A016430(n))`
-/

namespace A301206.P8518088940054965590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016433 n + A016386 (A016430 n).toNat

end

end A301206.P8518088940054965590

/-! ## A301206.P6629981455584802501

`A016433(n)-A016412(A016431(n+2))`
-/

namespace A301206.P6629981455584802501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016433 n - A016412 (A016431 (n + 2)).toNat

end

end A301206.P6629981455584802501

/-! ## A301206.P6344599031782409779

`A016433(n)-A016408(A016430(n+3))`
-/

namespace A301206.P6344599031782409779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016433 n - A016408 (A016430 (n + 3)).toNat

end

end A301206.P6344599031782409779

/-! ## A301206.P9122399555759372172

`A163101(A111166(n+1)-A323638(n+1))`
-/

namespace A301206.P9122399555759372172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A111166 (n + 1) - A323638 (n + 1)).toNat

end

end A301206.P9122399555759372172

/-!
# A301208: Coordination sequence T4 for Zeolite Code SSY.

The programs for A301208, there is no canonical definition to state claims against.
-/

/-! ## A301208.P12448039041902051400

`∑[∑[A031076(A336833(n+1))]]`
-/

namespace A301208.P12448039041902051400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A336833 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301208.P12448039041902051400

/-! ## A301208.P496213050404200321

`∑[∑[A279648(A117604(n+1))]]`
-/

namespace A301208.P496213050404200321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279648 (A117604 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301208.P496213050404200321

/-! ## A301208.P16603956337643713287

`∑[∑[A331255(A126428(n+1))]]`
-/

namespace A301208.P16603956337643713287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331255 (A126428 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301208.P16603956337643713287

/-! ## A301208.P8195000803579998007

`∑[A000006(A102821(∑[2*n]))]`
-/

namespace A301208.P8195000803579998007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A102821 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301208.P8195000803579998007

/-!
# A301209: Coordination sequence T5 for Zeolite Code SSY.

The programs for A301209, there is no canonical definition to state claims against.
-/

/-! ## A301209.P2044578880202601790

`A008206(n)-A099859(A099881(n+1))`
-/

namespace A301209.P2044578880202601790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008206 n - A099859 (A099881 (n + 1)).toNat

end

end A301209.P2044578880202601790

/-!
# A301210: Coordination sequence T6 for Zeolite Code SSY.

The programs for A301210, there is no canonical definition to state claims against.
-/

/-! ## A301210.P15168149151385705485

`A358135(A007562(2*(n+1)))+A008205(n)`
-/

namespace A301210.P15168149151385705485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358135 (A007562 (2 * (n + 1))).toNat + A008205 n

end

end A301210.P15168149151385705485

/-!
# A301213: Coordination sequence T1 for Zeolite Code SZR.

The programs for A301213, there is no canonical definition to state claims against.
-/

/-! ## A301213.P12389430457198266660

`∑[A010407(3*n+2)]-A010441(n+1)`
-/

namespace A301213.P12389430457198266660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010407 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010441 (n + 1)

end

end A301213.P12389430457198266660

/-! ## A301213.P18001901415175310675

`A334239(A334270(n))+A008000(n)`
-/

namespace A301213.P18001901415175310675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334239 (A334270 n).toNat + A008000 n

end

end A301213.P18001901415175310675

/-!
# A301214: Coordination sequence T2 for Zeolite Code SZR.

The programs for A301214, there is no canonical definition to state claims against.
-/

/-! ## A301214.P17711657400039350458

`xor(A057427(A053625(n)), A301225(n))`
-/

namespace A301214.P17711657400039350458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A053625 n).toNat) (A301225 n)

end

end A301214.P17711657400039350458

/-!
# A301217: Coordination sequence T2 for Zeolite Code TOL.

The programs for A301217, there is no canonical definition to state claims against.
-/

/-! ## A301217.P12786117904686496521

`A008129(n)-A324179(A125702(n+1))`
-/

namespace A301217.P12786117904686496521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008129 n - A324179 (A125702 (n + 1)).toNat

end

end A301217.P12786117904686496521

/-! ## A301217.P9554423228211107574

`A008129(n)-A245487(A194711(n+1)^A101275(n))`
-/

namespace A301217.P9554423228211107574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008129 n - A245487 (SequenceMachineLib.roundAway ((A194711 (n + 1) : ℚ) ^ (A101275 n : ℤ))).toNat

end

end A301217.P9554423228211107574

/-!
# A301218: Coordination sequence T4 for Zeolite Code TOL.

The programs for A301218, there is no canonical definition to state claims against.
-/

/-! ## A301218.P10445709272332995603

`A185284(A020742(n))+A008012(n)`
-/

namespace A301218.P10445709272332995603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A020742 n).toNat + A008012 n

end

end A301218.P10445709272332995603

/-! ## A301218.P13612723147805882260

`A025469(A051746(n+1))+A008012(n)`
-/

namespace A301218.P13612723147805882260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A051746 (n + 1)).toNat + A008012 n

end

end A301218.P13612723147805882260

/-! ## A301218.P14153687095462042243

`A185284(A094339(n+1))+A008012(n)`
-/

namespace A301218.P14153687095462042243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A094339 (n + 1)).toNat + A008012 n

end

end A301218.P14153687095462042243

/-! ## A301218.P9985845972154216411

`A336040(A157492(n+1))+A008012(n)`
-/

namespace A301218.P9985845972154216411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (A157492 (n + 1)).toNat + A008012 n

end

end A301218.P9985845972154216411

/-! ## A301218.P2390270652538948446

`xor(A008012(n), A333842(A125702(n+1)))`
-/

namespace A301218.P2390270652538948446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008012 n) (A333842 (A125702 (n + 1)).toNat)

end

end A301218.P2390270652538948446

/-!
# A301219: Coordination sequence T5 for Zeolite Code TOL.

The programs for A301219, there is no canonical definition to state claims against.
-/

/-! ## A301219.P4135594599381245871

`A062329(n)+A008131(A062399(n))`
-/

namespace A301219.P4135594599381245871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + A008131 (A062399 n).toNat

end

end A301219.P4135594599381245871

/-! ## A301219.P10283028762775749390

`A185284(A212804(n))+A008131(n)`
-/

namespace A301219.P10283028762775749390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A212804 n).toNat + A008131 n

end

end A301219.P10283028762775749390

/-! ## A301219.P9702825270220868716

`A301040(n)+A165766(A010000(n))`
-/

namespace A301219.P9702825270220868716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301040 n + A165766 (A010000 n).toNat

end

end A301219.P9702825270220868716

/-! ## A301219.P6804928725149773051

`A301040(n)+A165766(A056504(n))`
-/

namespace A301219.P6804928725149773051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301040 n + A165766 (A056504 n).toNat

end

end A301219.P6804928725149773051

/-! ## A301219.P5726778322397488325

`A185284(A349801(n))+A008131(n)`
-/

namespace A301219.P5726778322397488325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A349801 n).toNat + A008131 n

end

end A301219.P5726778322397488325

/-!
# A301223: Coordination sequence T4 for Zeolite Code TUN.

The programs for A301223, there is no canonical definition to state claims against.
-/

/-! ## A301223.P8983392346491601233

`A209638(A086801(2*n+1)+A000041(n))`
-/

namespace A301223.P8983392346491601233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 (A086801 (2 * n + 1) + A000041 n).toNat

end

end A301223.P8983392346491601233

/-!
# A301224: Coordination sequence T5 for Zeolite Code TUN.

The programs for A301224, there is no canonical definition to state claims against.
-/

/-! ## A301224.P4636992370611584931

`∑[∑[A165054(A329530(n))]]`
-/

namespace A301224.P4636992370611584931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165054 (A329530 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301224.P4636992370611584931

/-! ## A301224.P16119589728862708590

`A359898(n)+A342735(A268127(3*(n+1)))`
-/

namespace A301224.P16119589728862708590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359898 n + A342735 (A268127 (3 * (n + 1))).toNat

end

end A301224.P16119589728862708590

/-!
# A301225: Coordination sequence T6 for Zeolite Code TUN.

The programs for A301225, there is no canonical definition to state claims against.
-/

/-! ## A301225.P13505119805306356210

`A008202(n)-A047885(A039907(n))`
-/

namespace A301225.P13505119805306356210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008202 n - A047885 (A039907 n).toNat

end

end A301225.P13505119805306356210

/-! ## A301225.P2121738877411865386

`xor(A057427(A053625(n)), A301214(n))`
-/

namespace A301225.P2121738877411865386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A053625 n).toNat) (A301214 n)

end

end A301225.P2121738877411865386

/-!
# A301232: Coordination sequence T13 for Zeolite Code TUN.

The programs for A301232, there is no canonical definition to state claims against.
-/

/-! ## A301232.P14162065326397782994

`A301058(n)-A243148(A318121(n))`
-/

namespace A301232.P14162065326397782994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301058 n - A243148 (A318121 n).toNat

end

end A301232.P14162065326397782994

/-!
# A301233: Coordination sequence T14 for Zeolite Code TUN.

The programs for A301233, there is no canonical definition to state claims against.
-/

/-! ## A301233.P8644194678012890939

`A178976(A004526(n)+(n+2)²)`
-/

namespace A301233.P8644194678012890939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 (A004526 n + ((n + 2) ^ 2 : ℤ)).toNat

end

end A301233.P8644194678012890939

/-!
# A301238: Coordination sequence T19 for Zeolite Code TUN.

The programs for A301238, there is no canonical definition to state claims against.
-/

/-! ## A301238.P16693929884380004602

`∑[∑[A073200(A369848(n+1))+1]]`
-/

namespace A301238.P16693929884380004602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A369848 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301238.P16693929884380004602

/-! ## A301238.P1193522178122261967

`A348177(A151897(n))+A301156(n)`
-/

namespace A301238.P1193522178122261967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348177 (A151897 n).toNat + A301156 n

end

end A301238.P1193522178122261967

/-!
# A301239: Coordination sequence T20 for Zeolite Code TUN.

The programs for A301239, there is no canonical definition to state claims against.
-/

/-! ## A301239.P13008477339447495705

`A008247(n)-A133501(A006190(n))`
-/

namespace A301239.P13008477339447495705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008247 n - A133501 (A006190 n).toNat

end

end A301239.P13008477339447495705

/-! ## A301239.P4389327688701965897

`2*n²+A005361(A078223(n+1))`
-/

namespace A301239.P4389327688701965897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) + A005361 (A078223 (n + 1)).toNat

end

end A301239.P4389327688701965897

/-! ## A301239.P15182874930815453045

`A005361(A078223(n+1))+A001105(n)`
-/

namespace A301239.P15182874930815453045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A078223 (n + 1)).toNat + A001105 n

end

end A301239.P15182874930815453045

/-!
# A301240: Coordination sequence T21 for Zeolite Code TUN.

The programs for A301240, there is no canonical definition to state claims against.
-/

/-! ## A301240.P10980325097447591076

`A008078(n)-A334201(A265068(3*n+1))`
-/

namespace A301240.P10980325097447591076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008078 n - A334201 (A265068 (3 * n + 1)).toNat

end

end A301240.P10980325097447591076

/-!
# A301241: Coordination sequence T22 for Zeolite Code TUN.

The programs for A301241, there is no canonical definition to state claims against.
-/

/-! ## A301241.P10100367578571895814

`∑[∑[A338480(A077224(n))]]`
-/

namespace A301241.P10100367578571895814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (A077224 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301241.P10100367578571895814

/-! ## A301241.P4507896048585004970

`A003056(A001845(n)*A001972(n))`
-/

namespace A301241.P4507896048585004970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001845 n * A001972 n).toNat

end

end A301241.P4507896048585004970

/-! ## A301241.P8091938542487465652

`A003056(∑[A005899(n)]*A001972(n))`
-/

namespace A301241.P8091938542487465652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((∑ j ∈ Finset.range (n + 1), f1 j) * A001972 n).toNat

end

end A301241.P8091938542487465652

/-!
# A301242: Coordination sequence T23 for Zeolite Code TUN.

The programs for A301242, there is no canonical definition to state claims against.
-/

/-! ## A301242.P17570999751983244862

`A008155(n)-A005136(Δ[A000626(n+1)])`
-/

namespace A301242.P17570999751983244862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008155 n - A005136 (f1 (n + 1) - f1 n).toNat

end

end A301242.P17570999751983244862

/-!
# A301244: Coordination sequence T1 for Zeolite Code UEI.

The programs for A301244, there is no canonical definition to state claims against.
-/

/-! ## A301244.P9193638704157193676

`∑[eq[A185037(n), A247489(n)]]`
-/

namespace A301244.P9193638704157193676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247489 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301244.P9193638704157193676

/-! ## A301244.P5679138127871588634

`∑[∑[A259176(A061954(n+1))]]`
-/

namespace A301244.P5679138127871588634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (A061954 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301244.P5679138127871588634

/-! ## A301244.P17214905987559273022

`∑[∑[n+1]-A001222(A323951(n)!)]`
-/

namespace A301244.P17214905987559273022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A001222 (Nat.factorial (A323951 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301244.P17214905987559273022

/-!
# A301245: Coordination sequence T2 for Zeolite Code UEI.

The programs for A301245, there is no canonical definition to state claims against.
-/

/-! ## A301245.P9516238675799059863

`or(A010059(A282986(n)), A038405(n))`
-/

namespace A301245.P9516238675799059863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 (A282986 n).toNat) (A038405 n)

end

end A301245.P9516238675799059863

/-! ## A301245.P2130358917199873456

`A107846(A005566(n))+A038405(n)`
-/

namespace A301245.P2130358917199873456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A005566 n).toNat + A038405 n

end

end A301245.P2130358917199873456

/-! ## A301245.P4505359309471086990

`or(A001222(A001764(n)), A008084(n))`
-/

namespace A301245.P4505359309471086990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A001764 n).toNat) (A008084 n)

end

end A301245.P4505359309471086990

/-! ## A301245.P12105450668813001424

`or(A001222(A001764(n)), A038405(n))`
-/

namespace A301245.P12105450668813001424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A001764 n).toNat) (A038405 n)

end

end A301245.P12105450668813001424

/-!
# A301247: Coordination sequence T2 for Zeolite Code UFI.

The programs for A301247, there is no canonical definition to state claims against.
-/

/-! ## A301247.P13916395149666046499

`∑[∑[A321478(A043833(n+1))]]`
-/

namespace A301247.P13916395149666046499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321478 (A043833 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301247.P13916395149666046499

/-! ## A301247.P2282381554554519963

`∑[A285007(A022144(n))+A008486(n)]`
-/

namespace A301247.P2282381554554519963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A022144 n).toNat + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301247.P2282381554554519963

/-!
# A301258: Coordination sequence T1 for Zeolite Code UTL.

The programs for A301258, there is no canonical definition to state claims against.
-/

/-! ## A301258.P7446197479907161690

`A008118(n)-A000120(A301278(n))`
-/

namespace A301258.P7446197479907161690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008118 n - A000120 (A301278 n).toNat

end

end A301258.P7446197479907161690

/-!
# A301259: Coordination sequence T2 for Zeolite Code UTL.

The programs for A301259, there is no canonical definition to state claims against.
-/

/-! ## A301259.P10618552161112577898

`A340998(n²+3)+A301095(n)`
-/

namespace A301259.P10618552161112577898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 (n ^ 2 + 3 + 140) + A301095 n

end

end A301259.P10618552161112577898

/-! ## A301259.P17613914208390059301

`A301095(n)+A055641(A094433(n))`
-/

namespace A301259.P17613914208390059301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301095 n + A055641 (A094433 n).toNat

end

end A301259.P17613914208390059301

/-!
# A301260: Coordination sequence T3 for Zeolite Code UTL.

The programs for A301260, there is no canonical definition to state claims against.
-/

/-! ## A301260.P3513803897685380168

`∑[A089008(2*n+1)%A089015(n+1)]`
-/

namespace A301260.P3513803897685380168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089008 (2 * n + 1)) (A089015 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301260.P3513803897685380168

/-! ## A301260.P3535878991974763785

`xor(A025436(A207819(n)), A301189(n))`
-/

namespace A301260.P3535878991974763785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025436 (A207819 n).toNat) (A301189 n)

end

end A301260.P3535878991974763785

/-!
# A301264: Coordination sequence T7 for Zeolite Code UTL.

The programs for A301264, there is no canonical definition to state claims against.
-/

/-! ## A301264.P13508534679862040106

`A301267(n)+A031346(A301278(n))`
-/

namespace A301264.P13508534679862040106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301267 n + A031346 (A301278 n).toNat

end

end A301264.P13508534679862040106

/-! ## A301264.P15726516849253390940

`A176346(A000111(n)*A334897(3*(n+1)))+A045943(n)`
-/

namespace A301264.P15726516849253390940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 (A000111 n * A334897 (3 * (n + 1))).toNat + A045943 n

end

end A301264.P15726516849253390940

/-!
# A301270: Number of labeled trees on n vertices containing two fixed non-adjacent edges.

The programs for A301270, the canonical program `A301270.P1142167264848577368` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301270 has offset 4).

The definition of A301270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301270.P1142167264848577368

`4*(n+4)^n`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301270

/-- `4*(n+4)^n` -/
def P1142167264848577368.Spec : Prop :=
  ∀ n, (P1142167264848577368.a n : ℤ) = A301270 (n + 4)

theorem P1142167264848577368.correct : P1142167264848577368.Spec := by
  intro n
  simp only [A301270, Nat.add_sub_cancel]

end A301270

/-! ## A301270.P12493679948244848739

`record[4*(2*n-(n-1))^(n-3)]`
-/

namespace A301270.P12493679948244848739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((2 * n : ℤ) - ((n : ℤ) - 1) : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301270.P12493679948244848739

namespace A301270

/-- `record[4*(2*n-(n-1))^(n-3)]` -/
def P12493679948244848739.Spec : Prop :=
  ∀ n, P12493679948244848739.a n = (A301270 (n + 4) : ℚ)

end A301270

/-!
# A301271: Expansion of (1-16*x)^(1/8).

The programs for A301271, there is no canonical definition to state claims against.
-/

/-! ## A301271.P16255941734144035143

`(16-18/n)*a(n-1)` with `a(0)=1`
-/

namespace A301271.P16255941734144035143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 - 18 / (n : ℚ)) * a (n - 1)

end

end A301271.P16255941734144035143

/-! ## A301271.P5385335763985061125

`A303007(n)/15^n`
-/

namespace A301271.P5385335763985061125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303007 n : ℚ) / (15 ^ n : ℚ)

end

end A301271.P5385335763985061125

/-! ## A301271.P6241020102034520752

`15^A001489(n)*A303007(n)`
-/

namespace A301271.P6241020102034520752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A001489 n : ℤ) * (A303007 n : ℚ)

end

end A301271.P6241020102034520752

/-!
# A301272: Number of derangements of S_n with exactly one peak.

The programs for A301272, the canonical program `A301272.P13906174422062043657` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301272 has offset 0).

The definition of A301272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301272.P13906174422062043657

`ogf((x^3+2x^5)/(1-6x+5x^2+16x^3-12x^4-16x^5))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301272

/-- `ogf((x^3+2x^5)/(1-6x+5x^2+16x^3-12x^4-16x^5))` -/
def P13906174422062043657.Spec : Prop :=
  ∀ n, P13906174422062043657.a n = A301272 n

theorem P13906174422062043657.correct : P13906174422062043657.Spec := by
  intro n
  simp only [A301272]

end A301272

/-! ## A301272.P2815846963645394338

`∑[A111855(A122449(n))]`
-/

namespace A301272.P2815846963645394338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111855 (A122449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301272.P2815846963645394338

namespace A301272

/-- `∑[A111855(A122449(n))]` -/
def P2815846963645394338.Spec : Prop :=
  ∀ n, P2815846963645394338.a n = A301272 n

end A301272

/-! ## A301272.P5694613126023668761

`A005187(A328507(n))%A003483(n)`
-/

namespace A301272.P5694613126023668761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A328507 n).toNat) (A003483 n)

end

end A301272.P5694613126023668761

namespace A301272

/-- `A005187(A328507(n))%A003483(n)` -/
def P5694613126023668761.Spec : Prop :=
  ∀ n, P5694613126023668761.a n = A301272 n

end A301272

/-! ## A301272.P2591931210741937612

`A299702(A149362(n))%A149360(n)`
-/

namespace A301272.P2591931210741937612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299702 (A149362 n).toNat) (A149360 n)

end

end A301272.P2591931210741937612

namespace A301272

/-- `A299702(A149362(n))%A149360(n)` -/
def P2591931210741937612.Spec : Prop :=
  ∀ n, P2591931210741937612.a n = A301272 n

end A301272

/-!
# A301273: Numerator of mean of first n primes.

The programs for A301273, the canonical program `A301273.P17395654707237324989` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301273 has offset 1).

The definition of A301273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301273.P17395654707237324989

`lcm(n+1, A007504(n+1))/(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A301273

/-- `lcm(n+1, A007504(n+1))/(n+1)` -/
def P17395654707237324989.Spec : Prop :=
  ∀ n, P17395654707237324989.a n = (A301273 (n + 1) : ℚ)

end A301273

/-! ## A301273.P17632561023246899165

`A007504(n+1)/(n+1)*A301274(n+1)`
-/

namespace A301273.P17632561023246899165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (n + 1 : ℚ) * (A301274 (n + 1) : ℚ)

end

end A301273.P17632561023246899165

namespace A301273

/-- `A007504(n+1)/(n+1)*A301274(n+1)` -/
def P17632561023246899165.Spec : Prop :=
  ∀ n, P17632561023246899165.a n = (A301273 (n + 1) : ℚ)

end A301273

/-! ## A301273.P1722710881825880746

`A007504(n+1)/gcd(A007504(n+1), A065883(n+1))`
-/

namespace A301273.P1722710881825880746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (Int.gcd (A007504 (n + 1)) (A065883 (n + 1)) : ℚ)

end

end A301273.P1722710881825880746

namespace A301273

/-- `A007504(n+1)/gcd(A007504(n+1), A065883(n+1))` -/
def P1722710881825880746.Spec : Prop :=
  ∀ n, P1722710881825880746.a n = (A301273 (n + 1) : ℚ)

end A301273

/-! ## A301273.P12314207727810599978

`A160793(2*(n+1))/gcd(n+1, A160793(2*(n+1)))`
-/

namespace A301273.P12314207727810599978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160793 (2 * (n + 1)) : ℚ) / (Int.gcd (n + 1 : ℤ) (A160793 (2 * (n + 1))) : ℚ)

end

end A301273.P12314207727810599978

namespace A301273

/-- `A160793(2*(n+1))/gcd(n+1, A160793(2*(n+1)))` -/
def P12314207727810599978.Spec : Prop :=
  ∀ n, P12314207727810599978.a n = (A301273 (n + 1) : ℚ)

end A301273

/-! ## A301273.P11808375228637476757

`A007504(n+1)/gcd(n+1, A034387(A000040(n+1)+1))`
-/

namespace A301273.P11808375228637476757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A034387 (A000040 (n + 1) + 1).toNat) : ℚ)

end

end A301273.P11808375228637476757

namespace A301273

/-- `A007504(n+1)/gcd(n+1, A034387(A000040(n+1)+1))` -/
def P11808375228637476757.Spec : Prop :=
  ∀ n, P11808375228637476757.a n = (A301273 (n + 1) : ℚ)

end A301273

/-!
# A301274: Denominator of mean of first n primes.

The programs for A301274, the canonical program `A301274.P9797032890744289852` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301274 has offset 1).

The definition of A301274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301274.P8860990200335422327

`(n+1)/gcd(n+1, A007504(n+1))`
-/

namespace A301274.P8860990200335422327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A007504 (n + 1)) : ℚ)

end

end A301274.P8860990200335422327

namespace A301274

/-- `(n+1)/gcd(n+1, A007504(n+1))` -/
def P8860990200335422327.Spec : Prop :=
  ∀ n, P8860990200335422327.a n = (A301274 (n + 1) : ℚ)

end A301274

/-! ## A301274.P2318541795441092038

`floor(A301273(n+1)/A060620(n+1))`
-/

namespace A301274.P2318541795441092038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301273 (n + 1) : ℚ) / (A060620 (n + 1) : ℚ)⌋

end

end A301274.P2318541795441092038

namespace A301274

/-- `floor(A301273(n+1)/A060620(n+1))` -/
def P2318541795441092038.Spec : Prop :=
  ∀ n, P2318541795441092038.a n = A301274 (n + 1)

end A301274

/-! ## A301274.P3091108234545849513

`(n+1)/A007504(n+1)*A301273(n+1)`
-/

namespace A301274.P3091108234545849513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007504 (n + 1) : ℚ) * (A301273 (n + 1) : ℚ)

end

end A301274.P3091108234545849513

namespace A301274

/-- `(n+1)/A007504(n+1)*A301273(n+1)` -/
def P3091108234545849513.Spec : Prop :=
  ∀ n, P3091108234545849513.a n = (A301274 (n + 1) : ℚ)

end A301274

/-! ## A301274.P9797032890744289852

`(n+1)/gcd(∑[A006093(n+1)], A005843(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A301274

/-- `(n+1)/gcd(∑[A006093(n+1)], A005843(n+1))` -/
def P9797032890744289852.Spec : Prop :=
  ∀ n, P9797032890744289852.a n = (A301274 (n + 1) : ℚ)

end A301274

/-! ## A301274.P1524415283055633833

`ceil(A301273(n+1)/A225804(n+1))`
-/

namespace A301274.P1524415283055633833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301273 (n + 1) : ℚ) / (A225804 (n + 1) : ℚ)⌉

end

end A301274.P1524415283055633833

namespace A301274

/-- `ceil(A301273(n+1)/A225804(n+1))` -/
def P1524415283055633833.Spec : Prop :=
  ∀ n, P1524415283055633833.a n = A301274 (n + 1)

end A301274

/-! ## A301274.P13256197756688266118

`A160793(2*n+1)/gcd(A160793(2*n+1), A160793(2*(n+1)))`
-/

namespace A301274.P13256197756688266118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160793 (2 * n + 1) : ℚ) / (Int.gcd (A160793 (2 * n + 1)) (A160793 (2 * (n + 1))) : ℚ)

end

end A301274.P13256197756688266118

namespace A301274

/-- `A160793(2*n+1)/gcd(A160793(2*n+1), A160793(2*(n+1)))` -/
def P13256197756688266118.Spec : Prop :=
  ∀ n, P13256197756688266118.a n = (A301274 (n + 1) : ℚ)

end A301274

/-!
# A301275: Numerator of variance of first n primes.

The programs for A301275, there is no canonical definition to state claims against.
-/

/-! ## A301275.P9922953198399879338

`A051724(A062022(n+1))`
-/

namespace A301275.P9922953198399879338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A062022 (n + 1)).toNat

end

end A301275.P9922953198399879338

/-! ## A301275.P11891745790205190758

`A002265(lcm(4, A062022(n+1)))`
-/

namespace A301275.P11891745790205190758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 4 (A062022 (n + 1)))

end

end A301275.P11891745790205190758

/-!
# A301276: Denominator of variance of first n primes.

The programs for A301276, there is no canonical definition to state claims against.
-/

/-! ## A301276.P7129265788064825931

`A249718(A181318(n))*A302492(n+1)`
-/

namespace A301276.P7129265788064825931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249718 (A181318 n).toNat * A302492 (n + 1)

end

end A301276.P7129265788064825931

/-!
# A301277: Nearest integer to mean of first n primes.

The programs for A301277, the canonical program `A301277.P6735917784534562425` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301277 has offset 1).

The definition of A301277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301277.P6735917784534562425

`round(A007504(n+1)/(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A301277

/-- `round(A007504(n+1)/(n+1))` -/
def P6735917784534562425.Spec : Prop :=
  ∀ n, P6735917784534562425.a n = A301277 (n + 1)

theorem P6735917784534562425.correct : P6735917784534562425.Spec := by
  intro n
  simp only [A301277, Nat.add_sub_cancel]

end A301277

/-! ## A301277.P14013544238824079031

`round(∑[A000040(n+1)]/(n+1))`
-/

namespace A301277.P14013544238824079031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A301277.P14013544238824079031

namespace A301277

/-- `round(∑[A000040(n+1)]/(n+1))` -/
def P14013544238824079031.Spec : Prop :=
  ∀ n, P14013544238824079031.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P314392457326660094

`round(∑[A006093(n+1)+1]/(n+1))`
-/

namespace A301277.P314392457326660094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A301277.P314392457326660094

namespace A301277

/-- `round(∑[A006093(n+1)+1]/(n+1))` -/
def P314392457326660094.Spec : Prop :=
  ∀ n, P314392457326660094.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P11761742134992360917

`round(∑[A014692(n+1)+n]/(n+1))`
-/

namespace A301277.P11761742134992360917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A301277.P11761742134992360917

namespace A301277

/-- `round(∑[A014692(n+1)+n]/(n+1))` -/
def P11761742134992360917.Spec : Prop :=
  ∀ n, P11761742134992360917.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P4176023947974947259

`round(∑[record[A006530(n+2)]]/(n+1))`
-/

namespace A301277.P4176023947974947259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A301277.P4176023947974947259

namespace A301277

/-- `round(∑[record[A006530(n+2)]]/(n+1))` -/
def P4176023947974947259.Spec : Prop :=
  ∀ n, P4176023947974947259.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P12091612601038673887

`round(∑[record[A000010(n+1)]]/(n+1))+1`
-/

namespace A301277.P12091612601038673887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)) + 1

end

end A301277.P12091612601038673887

namespace A301277

/-- `round(∑[record[A000010(n+1)]]/(n+1))+1` -/
def P12091612601038673887.Spec : Prop :=
  ∀ n, P12091612601038673887.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P1266891927632798053

`A075465(n+1)-A106459(A246655(n+1))`
-/

namespace A301277.P1266891927632798053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075465 (n + 1) - A106459 (A246655 (n + 1)).toNat

end

end A301277.P1266891927632798053

namespace A301277

/-- `A075465(n+1)-A106459(A246655(n+1))` -/
def P1266891927632798053.Spec : Prop :=
  ∀ n, P1266891927632798053.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P11951346390586438420

`A075465(n+1)+A106459(A246655(n+1))*A106459(n)`
-/

namespace A301277.P11951346390586438420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075465 (n + 1) + A106459 (A246655 (n + 1)).toNat * A106459 n

end

end A301277.P11951346390586438420

namespace A301277

/-- `A075465(n+1)+A106459(A246655(n+1))*A106459(n)` -/
def P11951346390586438420.Spec : Prop :=
  ∀ n, P11951346390586438420.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P14795056850462914432

`round(∑[record[A014963(n+2)]]/(n+1))`
-/

namespace A301277.P14795056850462914432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A301277.P14795056850462914432

namespace A301277

/-- `round(∑[record[A014963(n+2)]]/(n+1))` -/
def P14795056850462914432.Spec : Prop :=
  ∀ n, P14795056850462914432.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P18205937360146884493

`A075465(n+1)-A106459(A068863(n+1))`
-/

namespace A301277.P18205937360146884493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075465 (n + 1) - A106459 (A068863 (n + 1)).toNat

end

end A301277.P18205937360146884493

namespace A301277

/-- `A075465(n+1)-A106459(A068863(n+1))` -/
def P18205937360146884493.Spec : Prop :=
  ∀ n, P18205937360146884493.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P16996667496631495483

`A075465(n+1)+A106459(A068863(n+1))*A106459(n)`
-/

namespace A301277.P16996667496631495483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075465 (n + 1) + A106459 (A068863 (n + 1)).toNat * A106459 n

end

end A301277.P16996667496631495483

namespace A301277

/-- `A075465(n+1)+A106459(A068863(n+1))*A106459(n)` -/
def P16996667496631495483.Spec : Prop :=
  ∀ n, P16996667496631495483.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P2203737028331438178

`A294936(A349405(n+1))+A075465(n+1)`
-/

namespace A301277.P2203737028331438178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A349405 (n + 1)).toNat + A075465 (n + 1)

end

end A301277.P2203737028331438178

namespace A301277

/-- `A294936(A349405(n+1))+A075465(n+1)` -/
def P2203737028331438178.Spec : Prop :=
  ∀ n, P2203737028331438178.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P11034856746820149199

`A075465(n+1)+A063524(n²)`
-/

namespace A301277.P11034856746820149199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075465 (n + 1) + A063524 (n ^ 2)

end

end A301277.P11034856746820149199

namespace A301277

/-- `A075465(n+1)+A063524(n²)` -/
def P11034856746820149199.Spec : Prop :=
  ∀ n, P11034856746820149199.a n = A301277 (n + 1)

end A301277

/-! ## A301277.P3904344325500976083

`A075465(n+1)+A005369(A005728(n))`
-/

namespace A301277.P3904344325500976083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075465 (n + 1) + A005369 (A005728 n).toNat

end

end A301277.P3904344325500976083

namespace A301277

/-- `A075465(n+1)+A005369(A005728(n))` -/
def P3904344325500976083.Spec : Prop :=
  ∀ n, P3904344325500976083.a n = A301277 (n + 1)

end A301277

/-!
# A301278: Numerator of variance of n-th row of Pascal's triangle.

The programs for A301278, there is no canonical definition to state claims against.
-/

/-! ## A301278.P16616820572965819142

`A139262(n)/A243917(A208183(3*(n+1)))`
-/

namespace A301278.P16616820572965819142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139262 n : ℚ) / (A243917 (A208183 (3 * (n + 1))).toNat : ℚ)

end

end A301278.P16616820572965819142

/-! ## A301278.P16209782078258733113

`A164089(A000984(n)*A052410(n+1))`
-/

namespace A301278.P16209782078258733113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A000984 n * A052410 (n + 1)).toNat

end

end A301278.P16209782078258733113

/-! ## A301278.P1252168645828871328

`A139262(n)/A112104(A001349(n))`
-/

namespace A301278.P1252168645828871328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139262 n : ℚ) / (A112104 (A001349 n).toNat : ℚ)

end

end A301278.P1252168645828871328

/-!
# A301279: Denominator of variance of n-th row of Pascal's triangle.

The programs for A301279, there is no canonical definition to state claims against.
-/

/-! ## A301279.P15130033862353740867

`gcd((-A046991(n))^n, ∑[n])`
-/

namespace A301279.P15130033862353740867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((-A046991 n) ^ n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301279.P15130033862353740867

/-! ## A301279.P16642975552730044587

`A181591(lcm(2^n, ∏{p}[n+1, #]))`
-/

namespace A301279.P16642975552730044587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (Nat.lcm (2 ^ n) (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A301279.P16642975552730044587

/-! ## A301279.P4845172540725691768

`gcd(∑[n], A047686(A087051(n)))`
-/

namespace A301279.P4845172540725691768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A047686 (A087051 n).toNat)

end

end A301279.P4845172540725691768

/-! ## A301279.P10249366218093448504

`A181591(lcm(2^n, A007947(n+1)))`
-/

namespace A301279.P10249366218093448504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (Int.lcm (2 ^ n : ℤ) (A007947 (n + 1)))

end

end A301279.P10249366218093448504

/-! ## A301279.P4554462395421191259

`A181591(lcm(∏{p}[n+1, #], A000079(n)))`
-/

namespace A301279.P4554462395421191259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A000079 n))

end

end A301279.P4554462395421191259

/-!
# A301280: Nearest integer to variance of n-th row of Pascal's triangle.

The programs for A301280, the canonical program `A301280.P3515032847069832870` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301280 has offset 0).

The definition of A301280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301280.P10820746942330067264

`round(A301278(n)/A301279(n))`
-/

namespace A301280.P10820746942330067264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301278 n : ℚ) / (A301279 n : ℚ))

end

end A301280.P10820746942330067264

namespace A301280

/-- `round(A301278(n)/A301279(n))` -/
def P10820746942330067264.Spec : Prop :=
  ∀ n, P10820746942330067264.a n = A301280 n

end A301280

/-! ## A301280.P3515032847069832870

`round(A139262(n)/A179865(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A301280

/-- `round(A139262(n)/A179865(n+1))` -/
def P3515032847069832870.Spec : Prop :=
  ∀ n, P3515032847069832870.a n = A301280 n

theorem P3515032847069832870.correct : P3515032847069832870.Spec := by
  intro n
  simp only [A301280]

end A301280

/-! ## A301280.P545074032869258915

`A064459(A100447(n))`
-/

namespace A301280.P545074032869258915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A100447 n).toNat

end

end A301280.P545074032869258915

namespace A301280

/-- `A064459(A100447(n))` -/
def P545074032869258915.Spec : Prop :=
  ∀ n, P545074032869258915.a n = A301280 n

end A301280

/-! ## A301280.P14764031078231802056

`A230198(A241530(n))`
-/

namespace A301280.P14764031078231802056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230198 (A241530 n).toNat

end

end A301280.P14764031078231802056

namespace A301280

/-- `A230198(A241530(n))` -/
def P14764031078231802056.Spec : Prop :=
  ∀ n, P14764031078231802056.a n = A301280 n

end A301280

/-! ## A301280.P7772420610976481812

`A064459(A000031(2*n+1))`
-/

namespace A301280.P7772420610976481812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 (A000031 (2 * n + 1)).toNat

end

end A301280.P7772420610976481812

namespace A301280

/-- `A064459(A000031(2*n+1))` -/
def P7772420610976481812.Spec : Prop :=
  ∀ n, P7772420610976481812.a n = A301280 n

end A301280

/-!
# A301281: Numerator of proportion of the volume of a unit box in R^4 that can be filled by n disjoint symplectically embedded balls of equal radius.

The programs for A301281, there is no canonical definition to state claims against.
-/

/-! ## A301281.P9303596608952622660

`ceil(abs(ϕ-A301282(n+1)))`
-/

namespace A301281.P9303596608952622660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.goldenRatio - (A301282 (n + 1) : ℝ)|⌉

end

end A301281.P9303596608952622660

/-!
# A301282: Denominator of proportion of the volume of a unit box in R^4 that can be filled by n disjoint symplectically embedded balls of equal radius.

The programs for A301282, there is no canonical definition to state claims against.
-/

/-! ## A301282.P12859813576293758316

`A301281(n+1)+A276088(A081215(n))`
-/

namespace A301282.P12859813576293758316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301281 (n + 1) + A276088 (A081215 n).toNat

end

end A301282.P12859813576293758316

/-!
# A301283: Coordination sequence for node of type V1 in "car" 2-D tiling (or net).

The programs for A301283, the canonical program `A301283.P7819765013019263568` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301283 has offset 0).

The definition of A301283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301283.P7819765013019263568

`ogf((1+2x+5x^2+5x^3+9x^4+6x^5+6x^6+3x^7+x^8-x^10)/(1-x+2x^2-3x^3+2x^4-3x^5+2x^6-x^7+x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301283

/-- `ogf((1+2x+5x^2+5x^3+9x^4+6x^5+6x^6+3x^7+x^8-x^10)/(1-x+2x^2-3x^3+2x^4-3x^5+2x^6-x^7+x^8))` -/
def P7819765013019263568.Spec : Prop :=
  ∀ n, P7819765013019263568.a n = A301283 n

theorem P7819765013019263568.correct : P7819765013019263568.Spec := by
  intro n
  simp only [A301283]

end A301283

/-!
# A301284: Partial sums of A301283.

The programs for A301284, the canonical program `A301284.P4466214139255469044` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301284 has offset 0).

The definition of A301284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301284.P4466214139255469044

`∑[A301283(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A301284

/-- `∑[A301283(n)]` -/
def P4466214139255469044.Spec : Prop :=
  ∀ n, P4466214139255469044.a n = A301284 n

theorem P4466214139255469044.correct : P4466214139255469044.Spec := by
  intro n
  simp only [A301284]

end A301284

/-! ## A301284.P15603666097219094850

`A301283(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A301284.P15603666097219094850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301283 n + a (A000027 (n + 1) - 2).toNat

end

end A301284.P15603666097219094850

namespace A301284

/-- `A301283(n)+a(A000027(n+1)-2)` -/
def P15603666097219094850.Spec : Prop :=
  ∀ n, P15603666097219094850.a n = A301284 n

end A301284

/-! ## A301284.P2821458527397045356

`a(n-1)+A301283(n)+A000007(n)` with `a(0)=1`
-/

namespace A301284.P2821458527397045356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A301283 n + A000007 n)

end

end A301284.P2821458527397045356

namespace A301284

/-- `a(n-1)+A301283(n)+A000007(n)` -/
def P2821458527397045356.Spec : Prop :=
  ∀ n, P2821458527397045356.a n = A301284 n

end A301284

/-! ## A301284.P13988260923283735081

`a(n-1)+A301283(n)+A036987(2*n)` with `a(0)=1`
-/

namespace A301284.P13988260923283735081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A301283 n + A036987 (2 * n))

end

end A301284.P13988260923283735081

namespace A301284

/-- `a(n-1)+A301283(n)+A036987(2*n)` -/
def P13988260923283735081.Spec : Prop :=
  ∀ n, P13988260923283735081.a n = A301284 n

end A301284

/-! ## A301284.P12969172349033879331

`A301283(A142150(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A301284.P12969172349033879331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301283 (A142150 (2 * n)).toNat + a (n - 1)

end

end A301284.P12969172349033879331

namespace A301284

/-- `A301283(A142150(2*n))+a(n-1)` -/
def P12969172349033879331.Spec : Prop :=
  ∀ n, P12969172349033879331.a n = A301284 n

end A301284

/-! ## A301284.P4528184851765478297

`a(n-1)-A001057(2*A301283(n))` with `a(0)=1`
-/

namespace A301284.P4528184851765478297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A001057 (2 * A301283 n).toNat

end

end A301284.P4528184851765478297

namespace A301284

/-- `a(n-1)-A001057(2*A301283(n))` -/
def P4528184851765478297.Spec : Prop :=
  ∀ n, P4528184851765478297.a n = A301284 n

end A301284

/-! ## A301284.P10459955975661128714

`A301283(n)+A057163(A057163(a(n-1)))` with `a(0)=1`
-/

namespace A301284.P10459955975661128714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301283 n + A057163 (A057163 (a (n - 1)).toNat).toNat

end

end A301284.P10459955975661128714

namespace A301284

/-- `A301283(n)+A057163(A057163(a(n-1)))` -/
def P10459955975661128714.Spec : Prop :=
  ∀ n, P10459955975661128714.a n = A301284 n

end A301284

/-!
# A301285: Coordination sequence for node of type V2 in "car" 2-D tiling (or net).

The programs for A301285, the canonical program `A301285.P11128293698623168490` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301285 has offset 0).

The definition of A301285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301285.P10676673431280557188

`ogf((1+2x+5x^2+7x^3+7x^4+7x^5+5x^6+2x^7+x^8)/(1-x+2x^2-3x^3+2x^4-3x^5+2x^6-x^7+x^8))`
-/

namespace A301285.P10676673431280557188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 7, 7, 7, 5, 2, 1] [1, -1, 2, -3, 2, -3, 2, -1, 1] n

end

end A301285.P10676673431280557188

namespace A301285

/-- `ogf((1+2x+5x^2+7x^3+7x^4+7x^5+5x^6+2x^7+x^8)/(1-x+2x^2-3x^3+2x^4-3x^5+2x^6-x^7+x^8))` -/
def P10676673431280557188.Spec : Prop :=
  ∀ n, P10676673431280557188.a n = A301285 n

end A301285

/-! ## A301285.P11128293698623168490

`A077814(n)+A301293(n)-A008854(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A301285

/-- `A077814(n)+A301293(n)-A008854(n+1)` -/
def P11128293698623168490.Spec : Prop :=
  ∀ n, P11128293698623168490.a n = A301285 n

theorem P11128293698623168490.correct : P11128293698623168490.Spec := by
  intro n
  simp only [A301285]

end A301285

/-! ## A301285.P7748918246752778011

`Δ[A159915(n)]+A301293(n)-A008854(n+1)`
-/

namespace A301285.P7748918246752778011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A301293 n - A008854 (n + 1))

end

end A301285.P7748918246752778011

namespace A301285

/-- `Δ[A159915(n)]+A301293(n)-A008854(n+1)` -/
def P7748918246752778011.Spec : Prop :=
  ∀ n, P7748918246752778011.a n = A301285 n

end A301285

/-! ## A301285.P13387867194218933248

`A008706(n)+A077814(n)-A004525(n)-A008854(n+1)`
-/

namespace A301285.P13387867194218933248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A077814 n - A004525 n) - A008854 (n + 1)

end

end A301285.P13387867194218933248

namespace A301285

/-- `A008706(n)+A077814(n)-A004525(n)-A008854(n+1)` -/
def P13387867194218933248.Spec : Prop :=
  ∀ n, P13387867194218933248.a n = A301285 n

end A301285

/-! ## A301285.P13078716774550650701

`A008486(n+6)+A008574(n)-A250122(n+8)-A008854(n+1)`
-/

namespace A301285.P13078716774550650701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 6) + (A008574 n - A250122 (n + 8)) - A008854 (n + 1)

end

end A301285.P13078716774550650701

namespace A301285

/-- `A008486(n+6)+A008574(n)-A250122(n+8)-A008854(n+1)` -/
def P13078716774550650701.Spec : Prop :=
  ∀ n, P13078716774550650701.a n = A301285 n

end A301285

/-! ## A301285.P16958256603721831173

`A310430(n)-A008854(n+1)`
-/

namespace A301285.P16958256603721831173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310430 n - A008854 (n + 1)

end

end A301285.P16958256603721831173

namespace A301285

/-- `A310430(n)-A008854(n+1)` -/
def P16958256603721831173.Spec : Prop :=
  ∀ n, P16958256603721831173.a n = A301285 n

theorem P16958256603721831173.correct : P16958256603721831173.Spec := by
  intro n
  simp only [A301285, Nat.add_sub_cancel, A301285.P16958256603721831173.a, A301285.P11128293698623168490.a, A008854, A008854.P2222206027881671294.a, A077814, A077814.P14443698375759428085.a, A301293, A301293.P16402300677055153941.a, A310430, A310430.P7342347051689276617.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A301285

/-!
# A301286: Partial sums of A301285.

The programs for A301286, the canonical program `A301286.P8785182498257756954` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301286 has offset 0).

The definition of A301286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301286.P17263823993271797517

`ogf((1+2x+5x^2+7x^3+7x^4+7x^5+5x^6+2x^7+x^8)/(1-2x+3x^2-5x^3+5x^4-5x^5+5x^6-3x^7+2x^8-x^9))`
-/

namespace A301286.P17263823993271797517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 7, 7, 7, 5, 2, 1] [1, -2, 3, -5, 5, -5, 5, -3, 2, -1] n

end

end A301286.P17263823993271797517

namespace A301286

/-- `ogf((1+2x+5x^2+7x^3+7x^4+7x^5+5x^6+2x^7+x^8)/(1-2x+3x^2-5x^3+5x^4-5x^5+5x^6-3x^7+2x^8-x^9))` -/
def P17263823993271797517.Spec : Prop :=
  ∀ n, P17263823993271797517.a n = A301286 n

end A301286

/-! ## A301286.P8785182498257756954

`∑[A301285(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A301286

/-- `∑[A301285(n)]` -/
def P8785182498257756954.Spec : Prop :=
  ∀ n, P8785182498257756954.a n = A301286 n

theorem P8785182498257756954.correct : P8785182498257756954.Spec := by
  intro n
  simp only [A301286]

end A301286

/-! ## A301286.P15020235431899395924

`∑[A077814(n)+A301293(n)-A008854(n+1)]`
-/

namespace A301286.P15020235431899395924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n + (A301293 n - A008854 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301286.P15020235431899395924

namespace A301286

/-- `∑[A077814(n)+A301293(n)-A008854(n+1)]` -/
def P15020235431899395924.Spec : Prop :=
  ∀ n, P15020235431899395924.a n = A301286 n

end A301286

/-! ## A301286.P10539040842738667680

`A301285(A142150(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A301286.P10539040842738667680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301285 (A142150 (2 * n)).toNat + a (n - 1)

end

end A301286.P10539040842738667680

namespace A301286

/-- `A301285(A142150(2*n))+a(n-1)` -/
def P10539040842738667680.Spec : Prop :=
  ∀ n, P10539040842738667680.a n = A301286 n

end A301286

/-! ## A301286.P6824098084658626946

`∑[A310430(n)-A008854(n+1)]`
-/

namespace A301286.P6824098084658626946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310430 n - A008854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301286.P6824098084658626946

namespace A301286

/-- `∑[A310430(n)-A008854(n+1)]` -/
def P6824098084658626946.Spec : Prop :=
  ∀ n, P6824098084658626946.a n = A301286 n

end A301286

/-! ## A301286.P2085367942916577391

`a(n-1)-A001057(2*A301285(n))` with `a(0)=1`
-/

namespace A301286.P2085367942916577391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A001057 (2 * A301285 n).toNat

end

end A301286.P2085367942916577391

namespace A301286

/-- `a(n-1)-A001057(2*A301285(n))` -/
def P2085367942916577391.Spec : Prop :=
  ∀ n, P2085367942916577391.a n = A301286 n

end A301286

/-!
# A301287: Coordination sequence for node of type 3.12.12 in "cph" 2-D tiling (or net).

The programs for A301287, the canonical program `A301287.P4511442323193652721` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301287 has offset 0).

The definition of A301287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301287.P4511442323193652721

`ogf((1+2x+4x^2+2x^3+2x^4+4x^5+x^6+2x^7-2x^8)/(1-x+x^2-2x^3+x^4-x^5+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301287

/-- `ogf((1+2x+4x^2+2x^3+2x^4+4x^5+x^6+2x^7-2x^8)/(1-x+x^2-2x^3+x^4-x^5+x^6))` -/
def P4511442323193652721.Spec : Prop :=
  ∀ n, P4511442323193652721.a n = A301287 n

theorem P4511442323193652721.correct : P4511442323193652721.Spec := by
  intro n
  simp only [A301287]

end A301287

/-! ## A301287.P9741216153832074873

`A008706(n)+A250122(n)-A314517(n)`
-/

namespace A301287.P9741216153832074873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A250122 n - A314517 n)

end

end A301287.P9741216153832074873

namespace A301287

/-- `A008706(n)+A250122(n)-A314517(n)` -/
def P9741216153832074873.Spec : Prop :=
  ∀ n, P9741216153832074873.a n = A301287 n

end A301287

/-! ## A301287.P7710166524234619914

`A250122(n)+A008587(n)%A314517(n)`
-/

namespace A301287.P7710166524234619914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + Int.tmod (A008587 n) (A314517 n)

end

end A301287.P7710166524234619914

namespace A301287

/-- `A250122(n)+A008587(n)%A314517(n)` -/
def P7710166524234619914.Spec : Prop :=
  ∀ n, P7710166524234619914.a n = A301287 n

end A301287

/-! ## A301287.P93599787904505703

`A250122(n)-A314517(n)+A008574(n)+n`
-/

namespace A301287.P93599787904505703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n - A314517 n + (A008574 n + (n : ℤ))

end

end A301287.P93599787904505703

namespace A301287

/-- `A250122(n)-A314517(n)+A008574(n)+n` -/
def P93599787904505703.Spec : Prop :=
  ∀ n, P93599787904505703.a n = A301287 n

end A301287

/-! ## A301287.P16528213211340698926

`A214340(A246162(n+1))+A004760(n+1)`
-/

namespace A301287.P16528213211340698926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214340 (A246162 (n + 1)).toNat + A004760 (n + 1)

end

end A301287.P16528213211340698926

namespace A301287

/-- `A214340(A246162(n+1))+A004760(n+1)` -/
def P16528213211340698926.Spec : Prop :=
  ∀ n, P16528213211340698926.a n = A301287 n

end A301287

/-!
# A301288: Partial sums of A301287.

The programs for A301288, the canonical program `A301288.P9959293639439069192` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301288 has offset 0).

The definition of A301288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301288.P9959293639439069192

`ogf((1+2x+4x^2+2x^3+2x^4+4x^5+x^6+2x^7-2x^8)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301288

/-- `ogf((1+2x+4x^2+2x^3+2x^4+4x^5+x^6+2x^7-2x^8)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))` -/
def P9959293639439069192.Spec : Prop :=
  ∀ n, P9959293639439069192.a n = A301288 n

theorem P9959293639439069192.correct : P9959293639439069192.Spec := by
  intro n
  simp only [A301288]

end A301288

/-! ## A301288.P1146129097539033918

`∑[A301287(n)]`
-/

namespace A301288.P1146129097539033918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301288.P1146129097539033918

namespace A301288

/-- `∑[A301287(n)]` -/
def P1146129097539033918.Spec : Prop :=
  ∀ n, P1146129097539033918.a n = A301288 n

end A301288

/-! ## A301288.P6141351081845204897

`A301287(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301288.P6141351081845204897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301287 n + a (A023443 n).toNat

end

end A301288.P6141351081845204897

namespace A301288

/-- `A301287(n)+a(A023443(n))` -/
def P6141351081845204897.Spec : Prop :=
  ∀ n, P6141351081845204897.a n = A301288 n

end A301288

/-! ## A301288.P1893970131452118032

`a(n-1)+A301287(n)+A000007(n)` with `a(0)=1`
-/

namespace A301288.P1893970131452118032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A301287 n + A000007 n)

end

end A301288.P1893970131452118032

namespace A301288

/-- `a(n-1)+A301287(n)+A000007(n)` -/
def P1893970131452118032.Spec : Prop :=
  ∀ n, P1893970131452118032.a n = A301288 n

end A301288

/-! ## A301288.P3409361702993393369

`a(n-1)+A301287(n)%A250120(n)` with `a(0)=1`
-/

namespace A301288.P3409361702993393369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A301287 n) (A250120 n)

end

end A301288.P3409361702993393369

namespace A301288

/-- `a(n-1)+A301287(n)%A250120(n)` -/
def P3409361702993393369.Spec : Prop :=
  ∀ n, P3409361702993393369.a n = A301288 n

end A301288

/-! ## A301288.P6842789896324612537

`∑[A008706(n)+A250122(n)-A314517(n)]`
-/

namespace A301288.P6842789896324612537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A250122 n - A314517 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301288.P6842789896324612537

namespace A301288

/-- `∑[A008706(n)+A250122(n)-A314517(n)]` -/
def P6842789896324612537.Spec : Prop :=
  ∀ n, P6842789896324612537.a n = A301288 n

end A301288

/-! ## A301288.P15656436557142259564

`A301287(n)+a(n-1)%A265035(a(n-1))` with `a(0)=1`
-/

namespace A301288.P15656436557142259564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301287 n + Int.tmod (a (n - 1)) (A265035 (a (n - 1)).toNat)

end

end A301288.P15656436557142259564

namespace A301288

/-- `A301287(n)+a(n-1)%A265035(a(n-1))` -/
def P15656436557142259564.Spec : Prop :=
  ∀ n, P15656436557142259564.a n = A301288 n

end A301288

/-!
# A301289: Coordination sequence for a tetravalent node of type 3.4.3.12 in "cph" 2-D tiling (or net).

The programs for A301289, the canonical program `A301289.P4617042325908062482` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301289 has offset 0).

The definition of A301289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301289.P4617042325908062482

`ogf((1+2x+4x^3+3x^4+6x^6-4x^7+6x^8-2x^9)/(1-2x+3x^2-4x^3+4x^4-4x^5+3x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301289

/-- `ogf((1+2x+4x^3+3x^4+6x^6-4x^7+6x^8-2x^9)/(1-2x+3x^2-4x^3+4x^4-4x^5+3x^6-2x^7+x^8))` -/
def P4617042325908062482.Spec : Prop :=
  ∀ n, P4617042325908062482.a n = A301289 n

theorem P4617042325908062482.correct : P4617042325908062482.Spec := by
  intro n
  simp only [A301289]

end A301289

/-!
# A301290: Partial sums of A301289.

The programs for A301290, the canonical program `A301290.P14658417673948474443` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301290 has offset 0).

The definition of A301290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301290.P14658417673948474443

`ogf((1+2x+4x^3+3x^4+6x^6-4x^7+6x^8-2x^9)/(1-3x+5x^2-7x^3+8x^4-8x^5+7x^6-5x^7+3x^8-x^9))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301290

/-- `ogf((1+2x+4x^3+3x^4+6x^6-4x^7+6x^8-2x^9)/(1-3x+5x^2-7x^3+8x^4-8x^5+7x^6-5x^7+3x^8-x^9))` -/
def P14658417673948474443.Spec : Prop :=
  ∀ n, P14658417673948474443.a n = A301290 n

theorem P14658417673948474443.correct : P14658417673948474443.Spec := by
  intro n
  simp only [A301290]

end A301290

/-! ## A301290.P17874613567962668764

`∑[A301289(n)]`
-/

namespace A301290.P17874613567962668764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301290.P17874613567962668764

namespace A301290

/-- `∑[A301289(n)]` -/
def P17874613567962668764.Spec : Prop :=
  ∀ n, P17874613567962668764.a n = A301290 n

end A301290

/-! ## A301290.P1015566076891276009

`A301289(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301290.P1015566076891276009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301289 n + a (A023443 n).toNat

end

end A301290.P1015566076891276009

namespace A301290

/-- `A301289(n)+a(A023443(n))` -/
def P1015566076891276009.Spec : Prop :=
  ∀ n, P1015566076891276009.a n = A301290 n

end A301290

/-! ## A301290.P11441075617400082350

`a(n-1)+A301289(n)+A000038(n)` with `a(0)=1`
-/

namespace A301290.P11441075617400082350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A301289 n + A000038 n)

end

end A301290.P11441075617400082350

namespace A301290

/-- `a(n-1)+A301289(n)+A000038(n)` -/
def P11441075617400082350.Spec : Prop :=
  ∀ n, P11441075617400082350.a n = A301290 n

end A301290

/-! ## A301290.P17261602758893796404

`a(n-1)+A301289(n)%A250120(n)` with `a(0)=1`
-/

namespace A301290.P17261602758893796404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A301289 n) (A250120 n)

end

end A301290.P17261602758893796404

namespace A301290

/-- `a(n-1)+A301289(n)%A250120(n)` -/
def P17261602758893796404.Spec : Prop :=
  ∀ n, P17261602758893796404.a n = A301290 n

end A301290

/-! ## A301290.P16268802398794689332

`A301289(n)+gcd(3, A000040(n+2))*a(n-1)` with `a(0)=1`
-/

namespace A301290.P16268802398794689332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301289 n + (Int.gcd 3 (A000040 (n + 2)) : ℤ) * a (n - 1)

end

end A301290.P16268802398794689332

namespace A301290

/-- `A301289(n)+gcd(3, A000040(n+2))*a(n-1)` -/
def P16268802398794689332.Spec : Prop :=
  ∀ n, P16268802398794689332.a n = A301290 n

end A301290

/-! ## A301290.P17908770934210779655

`A301289(n)+a(n-1)%A265035(a(n-1))` with `a(0)=1`
-/

namespace A301290.P17908770934210779655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301289 n + Int.tmod (a (n - 1)) (A265035 (a (n - 1)).toNat)

end

end A301290.P17908770934210779655

namespace A301290

/-- `A301289(n)+a(n-1)%A265035(a(n-1))` -/
def P17908770934210779655.Spec : Prop :=
  ∀ n, P17908770934210779655.a n = A301290 n

end A301290

/-!
# A301291: Expansion of (x^4+3*x^3+x^2+3*x+1)/((x^2+1)*(x-1)^2).

The programs for A301291, the canonical program `A301291.P14013868135471218190` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301291 has offset 0).

The definition of A301291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+x^2+3x^3+x^4)/(1-2x+2x^2-2x^3+x^4))` (program `A301291.P14013868135471218190`, by `A301291.P14013868135471218190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301291.P14013868135471218190

`ogf((1+3x+x^2+3x^3+x^4)/(1-2x+2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301291

/-- `ogf((1+3x+x^2+3x^3+x^4)/(1-2x+2x^2-2x^3+x^4))` -/
def P14013868135471218190.Spec : Prop :=
  ∀ n, P14013868135471218190.a n = A301291 n

theorem P14013868135471218190.correct : P14013868135471218190.Spec := by
  intro n
  simp only [A301291]

end A301291

/-! ## A301291.P16645814743165127850

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=13, a(4)=18`
-/

namespace A301291.P16645814743165127850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9, 13, 18] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A301291.P16645814743165127850

namespace A301291

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P16645814743165127850.Spec : Prop :=
  ∀ n, P16645814743165127850.a n = A301291 n

end A301291

/-! ## A301291.P15720368755431036613

`∑[9-a(n-2)]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A301291.P15720368755431036613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4, 4] fun n f1 =>
  9 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301291.P15720368755431036613

namespace A301291

/-- `∑[9-a(n-2)]` -/
def P15720368755431036613.Spec : Prop :=
  ∀ n, P15720368755431036613.a n = A301291 n

end A301291

/-! ## A301291.P7683204704246659445

`record[(2*(n-1))^(n%2)]+Δ[ceil(C(n, 2)/2)]`
-/

namespace A301291.P7683204704246659445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1)) ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A301291.P7683204704246659445

namespace A301291

/-- `record[(2*(n-1))^(n%2)]+Δ[ceil(C(n, 2)/2)]` -/
def P7683204704246659445.Spec : Prop :=
  ∀ n, P7683204704246659445.a n = A301291 n

end A301291

/-! ## A301291.P18319687975080847045

`A008574(n)+Δ[ceil(C(n, 2)/2)]`
-/

namespace A301291.P18319687975080847045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A301291.P18319687975080847045

namespace A301291

/-- `A008574(n)+Δ[ceil(C(n, 2)/2)]` -/
def P18319687975080847045.Spec : Prop :=
  ∀ n, P18319687975080847045.a n = A301291 n

end A301291

/-! ## A301291.P9639904301183663128

`lt[A020639(n+1), 4]+3*n+1`
-/

namespace A301291.P9639904301183663128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (3 * n + 1)

end

end A301291.P9639904301183663128

namespace A301291

/-- `lt[A020639(n+1), 4]+3*n+1` -/
def P9639904301183663128.Spec : Prop :=
  ∀ n, (P9639904301183663128.a n : ℤ) = A301291 n

end A301291

/-! ## A301291.P4652610465375060225

`A008574(n)+A004525(n)`
-/

namespace A301291.P4652610465375060225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 n

end

end A301291.P4652610465375060225

namespace A301291

/-- `A008574(n)+A004525(n)` -/
def P4652610465375060225.Spec : Prop :=
  ∀ n, P4652610465375060225.a n = A301291 n

end A301291

/-! ## A301291.P556006116351478783

`A301293(n)+A101455(n)`
-/

namespace A301291.P556006116351478783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A101455 n

end

end A301291.P556006116351478783

namespace A301291

/-- `A301293(n)+A101455(n)` -/
def P556006116351478783.Spec : Prop :=
  ∀ n, P556006116351478783.a n = A301291 n

end A301291

/-! ## A301291.P13334737305927644145

`abs(A008591(n)-A301293(n))`
-/

namespace A301291.P13334737305927644145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A301293 n|

end

end A301291.P13334737305927644145

namespace A301291

/-- `abs(A008591(n)-A301293(n))` -/
def P13334737305927644145.Spec : Prop :=
  ∀ n, P13334737305927644145.a n = A301291 n

end A301291

/-! ## A301291.P8301182750407351264

`A047229(n+1)+A008486(n)`
-/

namespace A301291.P8301182750407351264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + A008486 n

end

end A301291.P8301182750407351264

namespace A301291

/-- `A047229(n+1)+A008486(n)` -/
def P8301182750407351264.Spec : Prop :=
  ∀ n, P8301182750407351264.a n = A301291 n

end A301291

/-! ## A301291.P4839088366693274526

`A301729(n)+A157932(n+1)`
-/

namespace A301291.P4839088366693274526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 n + A157932 (n + 1)

end

end A301291.P4839088366693274526

namespace A301291

/-- `A301729(n)+A157932(n+1)` -/
def P4839088366693274526.Spec : Prop :=
  ∀ n, P4839088366693274526.a n = A301291 n

end A301291

/-! ## A301291.P18232039444652442802

`A008458(n)-A047273(n+1)`
-/

namespace A301291.P18232039444652442802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047273 (n + 1)

end

end A301291.P18232039444652442802

namespace A301291

/-- `A008458(n)-A047273(n+1)` -/
def P18232039444652442802.Spec : Prop :=
  ∀ n, P18232039444652442802.a n = A301291 n

end A301291

/-! ## A301291.P16735308217490594978

`A004525(n)+A008486(n)+n`
-/

namespace A301291.P16735308217490594978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008486 n + (n : ℤ))

end

end A301291.P16735308217490594978

namespace A301291

/-- `A004525(n)+A008486(n)+n` -/
def P16735308217490594978.Spec : Prop :=
  ∀ n, P16735308217490594978.a n = A301291 n

end A301291

/-! ## A301291.P14126118300319855279

`A004525(n)+A008706(n)-n`
-/

namespace A301291.P14126118300319855279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A008706 n - (n : ℤ))

end

end A301291.P14126118300319855279

namespace A301291

/-- `A004525(n)+A008706(n)-n` -/
def P14126118300319855279.Spec : Prop :=
  ∀ n, P14126118300319855279.a n = A301291 n

end A301291

/-! ## A301291.P8647491969180382927

`A016777(n)+lt[A020639(n+1), 4]`
-/

namespace A301291.P8647491969180382927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A301291.P8647491969180382927

namespace A301291

/-- `A016777(n)+lt[A020639(n+1), 4]` -/
def P8647491969180382927.Spec : Prop :=
  ∀ n, P8647491969180382927.a n = A301291 n

end A301291

/-! ## A301291.P12421699876115694622

`A047229(n+1)+A004277(n)+n`
-/

namespace A301291.P12421699876115694622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A004277 n + (n : ℤ))

end

end A301291.P12421699876115694622

namespace A301291

/-- `A047229(n+1)+A004277(n)+n` -/
def P12421699876115694622.Spec : Prop :=
  ∀ n, P12421699876115694622.a n = A301291 n

end A301291

/-! ## A301291.P17602703178147291309

`A047229(n+1)+A008574(n)-n`
-/

namespace A301291.P17602703178147291309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A008574 n - (n : ℤ))

end

end A301291.P17602703178147291309

namespace A301291

/-- `A047229(n+1)+A008574(n)-n` -/
def P17602703178147291309.Spec : Prop :=
  ∀ n, P17602703178147291309.a n = A301291 n

end A301291

/-! ## A301291.P18257434374365923612

`A000007(n)+4*n+A004525(n)`
-/

namespace A301291.P18257434374365923612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((4 * n : ℤ) + A004525 n)

end

end A301291.P18257434374365923612

namespace A301291

/-- `A000007(n)+4*n+A004525(n)` -/
def P18257434374365923612.Spec : Prop :=
  ∀ n, P18257434374365923612.a n = A301291 n

end A301291

/-! ## A301291.P17069044573182955282

`A008706(n)-A004524(n+1)`
-/

namespace A301291.P17069044573182955282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004524 (n + 1)

end

end A301291.P17069044573182955282

namespace A301291

/-- `A008706(n)-A004524(n+1)` -/
def P17069044573182955282.Spec : Prop :=
  ∀ n, P17069044573182955282.a n = A301291 n

end A301291

/-! ## A301291.P3694803115510014938

`A261953(n)+A131743(n+2)`
-/

namespace A301291.P3694803115510014938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 n + A131743 (n + 2)

end

end A301291.P3694803115510014938

namespace A301291

/-- `A261953(n)+A131743(n+2)` -/
def P3694803115510014938.Spec : Prop :=
  ∀ n, P3694803115510014938.a n = A301291 n

end A301291

/-!
# A301292: Partial sums of A301291.

The programs for A301292, the canonical program `A301292.P14712436172727006513` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301292 has offset 0).

The definition of A301292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301292.P18377277422233311961

`ogf((1+3x+x^2+3x^3+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A301292.P18377277422233311961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, 3, 1] [1, -3, 4, -4, 3, -1] n

end

end A301292.P18377277422233311961

namespace A301292

/-- `ogf((1+3x+x^2+3x^3+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P18377277422233311961.Spec : Prop :=
  ∀ n, P18377277422233311961.a n = A301292 n

end A301292

/-! ## A301292.P14712436172727006513

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=15, a(3)=28, a(4)=46`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301292

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P14712436172727006513.Spec : Prop :=
  ∀ n, P14712436172727006513.a n = A301292 n

theorem P14712436172727006513.correct : P14712436172727006513.Spec := by
  intro n
  simp only [A301292]

end A301292

/-! ## A301292.P10625344660434940226

`(5+9*n*(1+n)-A087960(n))/4`
-/

namespace A301292.P10625344660434940226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 + 9 * n * (1 + n) : ℤ) - A087960 n : ℚ) / 4

end

end A301292.P10625344660434940226

namespace A301292

/-- `(5+9*n*(1+n)-A087960(n))/4` -/
def P10625344660434940226.Spec : Prop :=
  ∀ n, P10625344660434940226.a n = (A301292 n : ℚ)

end A301292

/-! ## A301292.P8521006224249945285

`round(∑[9*n/2])+1`
-/

namespace A301292.P8521006224249945285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A301292.P8521006224249945285

namespace A301292

/-- `round(∑[9*n/2])+1` -/
def P8521006224249945285.Spec : Prop :=
  ∀ n, P8521006224249945285.a n = A301292 n

end A301292

/-! ## A301292.P4955029453096917986

`∑[∑[9-a(n-2)]]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A301292.P4955029453096917986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4, 4] fun n f2 =>
  9 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301292.P4955029453096917986

namespace A301292

/-- `∑[∑[9-a(n-2)]]` -/
def P4955029453096917986.Spec : Prop :=
  ∀ n, P4955029453096917986.a n = A301292 n

end A301292

/-! ## A301292.P7431692555084217348

`ceil((9*C(n+1, 2)+2)/2)`
-/

namespace A301292.P7431692555084217348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 * Nat.choose (n + 1) 2 + 2 : ℚ) / 2⌉

end

end A301292.P7431692555084217348

namespace A301292

/-- `ceil((9*C(n+1, 2)+2)/2)` -/
def P7431692555084217348.Spec : Prop :=
  ∀ n, P7431692555084217348.a n = A301292 n

end A301292

/-! ## A301292.P5143412914723164433

`∑[A301291(n)]`
-/

namespace A301292.P5143412914723164433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301292.P5143412914723164433

namespace A301292

/-- `∑[A301291(n)]` -/
def P5143412914723164433.Spec : Prop :=
  ∀ n, P5143412914723164433.a n = A301292 n

end A301292

/-! ## A301292.P16217014898764710163

`ceil((A060544(n+1)+1)/2)`
-/

namespace A301292.P16217014898764710163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060544 (n + 1) + 1 : ℚ) / 2⌉

end

end A301292.P16217014898764710163

namespace A301292

/-- `ceil((A060544(n+1)+1)/2)` -/
def P16217014898764710163.Spec : Prop :=
  ∀ n, P16217014898764710163.a n = A301292 n

end A301292

/-! ## A301292.P387860282095082589

`∑[A301729(3*n)]`
-/

namespace A301292.P387860282095082589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301292.P387860282095082589

namespace A301292

/-- `∑[A301729(3*n)]` -/
def P387860282095082589.Spec : Prop :=
  ∀ n, P387860282095082589.a n = A301292 n

end A301292

/-! ## A301292.P12123617988734794725

`A039823(3*n+1)`
-/

namespace A301292.P12123617988734794725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (3 * n + 1)

end

end A301292.P12123617988734794725

namespace A301292

/-- `A039823(3*n+1)` -/
def P12123617988734794725.Spec : Prop :=
  ∀ n, P12123617988734794725.a n = A301292 n

end A301292

/-! ## A301292.P632634877837876357

`∑[A301708(n)-n]`
-/

namespace A301292.P632634877837876357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301292.P632634877837876357

namespace A301292

/-- `∑[A301708(n)-n]` -/
def P632634877837876357.Spec : Prop :=
  ∀ n, P632634877837876357.a n = A301292 n

end A301292

/-! ## A301292.P2099607325506659501

`A025789(3*6*n)`
-/

namespace A301292.P2099607325506659501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025789 (3 * (6 * n))

end

end A301292.P2099607325506659501

namespace A301292

/-- `A025789(3*6*n)` -/
def P2099607325506659501.Spec : Prop :=
  ∀ n, P2099607325506659501.a n = A301292 n

end A301292

/-! ## A301292.P1768742338537567160

`A336146(Δ[n^3])`
-/

namespace A301292.P1768742338537567160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336146 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A301292.P1768742338537567160

namespace A301292

/-- `A336146(Δ[n^3])` -/
def P1768742338537567160.Spec : Prop :=
  ∀ n, P1768742338537567160.a n = A301292 n

end A301292

/-! ## A301292.P17061809549343956148

`A055264(n²+n+1)`
-/

namespace A301292.P17061809549343956148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (n ^ 2 + (n + 1))

end

end A301292.P17061809549343956148

namespace A301292

/-- `A055264(n²+n+1)` -/
def P17061809549343956148.Spec : Prop :=
  ∀ n, P17061809549343956148.a n = A301292 n

end A301292

/-! ## A301292.P10987766456866826785

`A214068(n²+n+1)`
-/

namespace A301292.P10987766456866826785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214068 (n ^ 2 + (n + 1))

end

end A301292.P10987766456866826785

namespace A301292

/-- `A214068(n²+n+1)` -/
def P10987766456866826785.Spec : Prop :=
  ∀ n, P10987766456866826785.a n = A301292 n

end A301292

/-!
# A301293: Expansion of (x^2+x+1)^2 / ((x^2+1)*(x-1)^2).

The programs for A301293, the canonical program `A301293.P16402300677055153941` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301293 has offset 0).

The definition of A301293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+2x^3+x^4)/(1-2x+2x^2-2x^3+x^4))` (program `A301293.P16402300677055153941`, by `A301293.P16402300677055153941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301293.P16402300677055153941

`ogf((1+2x+3x^2+2x^3+x^4)/(1-2x+2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301293

/-- `ogf((1+2x+3x^2+2x^3+x^4)/(1-2x+2x^2-2x^3+x^4))` -/
def P16402300677055153941.Spec : Prop :=
  ∀ n, P16402300677055153941.a n = A301293 n

theorem P16402300677055153941.correct : P16402300677055153941.Spec := by
  intro n
  simp only [A301293]

end A301293

/-! ## A301293.P5440702275641775452

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=14, a(4)=18`
-/

namespace A301293.P5440702275641775452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 14, 18] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A301293.P5440702275641775452

namespace A301293

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P5440702275641775452.Spec : Prop :=
  ∀ n, P5440702275641775452.a n = A301293 n

end A301293

/-! ## A301293.P14247017052311768955

`∑[9-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A301293.P14247017052311768955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 5] fun n f1 =>
  9 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301293.P14247017052311768955

namespace A301293

/-- `∑[9-a(n-2)]` -/
def P14247017052311768955.Spec : Prop :=
  ∀ n, P14247017052311768955.a n = A301293 n

end A301293

/-! ## A301293.P10281424698296737976

`∑[ceil((3*n+1)/or(2, n))]+n`
-/

namespace A301293.P10281424698296737976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n + 1 : ℚ) / (Nat.lor 2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A301293.P10281424698296737976

namespace A301293

/-- `∑[ceil((3*n+1)/or(2, n))]+n` -/
def P10281424698296737976.Spec : Prop :=
  ∀ n, P10281424698296737976.a n = A301293 n

end A301293

/-! ## A301293.P4052112961376070402

`∑[gcd(2, ∑[n+1])-char[1]]+3*n`
-/

namespace A301293.P4052112961376070402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 * n : ℤ)

end

end A301293.P4052112961376070402

namespace A301293

/-- `∑[gcd(2, ∑[n+1])-char[1]]+3*n` -/
def P4052112961376070402.Spec : Prop :=
  ∀ n, P4052112961376070402.a n = A301293 n

end A301293

/-! ## A301293.P10044617554613850830

`A301729(n)+3*n`
-/

namespace A301293.P10044617554613850830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 n + (3 * n : ℤ)

end

end A301293.P10044617554613850830

namespace A301293

/-- `A301729(n)+3*n` -/
def P10044617554613850830.Spec : Prop :=
  ∀ n, P10044617554613850830.a n = A301293 n

end A301293

/-! ## A301293.P9888964030293099174

`A008574(n)+∑[char[or(2, n)]]`
-/

namespace A301293.P9888964030293099174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A301293.P9888964030293099174

namespace A301293

/-- `A008574(n)+∑[char[or(2, n)]]` -/
def P9888964030293099174.Spec : Prop :=
  ∀ n, P9888964030293099174.a n = A301293 n

end A301293

/-! ## A301293.P12236446706701417028

`A008706(n)-Δ[ceil(C(n, 2)/2)]`
-/

namespace A301293.P12236446706701417028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A301293.P12236446706701417028

namespace A301293

/-- `A008706(n)-Δ[ceil(C(n, 2)/2)]` -/
def P12236446706701417028.Spec : Prop :=
  ∀ n, P12236446706701417028.a n = A301293 n

end A301293

/-! ## A301293.P4867575332625235937

`A261953(n)+A131743(n)`
-/

namespace A301293.P4867575332625235937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 n + A131743 n

end

end A301293.P4867575332625235937

namespace A301293

/-- `A261953(n)+A131743(n)` -/
def P4867575332625235937.Spec : Prop :=
  ∀ n, P4867575332625235937.a n = A301293 n

end A301293

/-! ## A301293.P8177723713992370887

`A008706(n)-A004525(n)`
-/

namespace A301293.P8177723713992370887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004525 n

end

end A301293.P8177723713992370887

namespace A301293

/-- `A008706(n)-A004525(n)` -/
def P8177723713992370887.Spec : Prop :=
  ∀ n, P8177723713992370887.a n = A301293 n

end A301293

/-! ## A301293.P17855952321358245158

`A301291(n)-A101455(n)`
-/

namespace A301293.P17855952321358245158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A101455 n

end

end A301293.P17855952321358245158

namespace A301293

/-- `A301291(n)-A101455(n)` -/
def P17855952321358245158.Spec : Prop :=
  ∀ n, P17855952321358245158.a n = A301293 n

end A301293

/-! ## A301293.P6001490380034121076

`A047273(n+1)+A008486(n)`
-/

namespace A301293.P6001490380034121076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + A008486 n

end

end A301293.P6001490380034121076

namespace A301293

/-- `A047273(n+1)+A008486(n)` -/
def P6001490380034121076.Spec : Prop :=
  ∀ n, P6001490380034121076.a n = A301293 n

end A301293

/-! ## A301293.P7846092034203750110

`A008458(n)-A047229(n+1)`
-/

namespace A301293.P7846092034203750110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047229 (n + 1)

end

end A301293.P7846092034203750110

namespace A301293

/-- `A008458(n)-A047229(n+1)` -/
def P7846092034203750110.Spec : Prop :=
  ∀ n, P7846092034203750110.a n = A301293 n

end A301293

/-! ## A301293.P13011888979462667374

`A271114(n)-A047251(n+1)`
-/

namespace A301293.P13011888979462667374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047251 (n + 1)

end

end A301293.P13011888979462667374

namespace A301293

/-- `A271114(n)-A047251(n+1)` -/
def P13011888979462667374.Spec : Prop :=
  ∀ n, P13011888979462667374.a n = A301293 n

end A301293

/-! ## A301293.P1237857739521828547

`A008574(n)+A201629(n)/2`
-/

namespace A301293.P1237857739521828547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) + (A201629 n : ℚ) / 2

end

end A301293.P1237857739521828547

namespace A301293

/-- `A008574(n)+A201629(n)/2` -/
def P1237857739521828547.Spec : Prop :=
  ∀ n, P1237857739521828547.a n = (A301293 n : ℚ)

end A301293

/-! ## A301293.P8625448129864939336

`A008458(n)-(A004525(n)+n)`
-/

namespace A301293.P8625448129864939336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A004525 n + (n : ℤ))

end

end A301293.P8625448129864939336

namespace A301293

/-- `A008458(n)-(A004525(n)+n)` -/
def P8625448129864939336.Spec : Prop :=
  ∀ n, P8625448129864939336.a n = A301293 n

end A301293

/-! ## A301293.P56000852588328804

`A008574(n)+n-A004525(n)`
-/

namespace A301293.P56000852588328804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A004525 n)

end

end A301293.P56000852588328804

namespace A301293

/-- `A008574(n)+n-A004525(n)` -/
def P56000852588328804.Spec : Prop :=
  ∀ n, P56000852588328804.a n = A301293 n

end A301293

/-! ## A301293.P12753908458222611290

`A008574(n)+∑[and(1, A004526(n))]`
-/

namespace A301293.P12753908458222611290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004526 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301293.P12753908458222611290

namespace A301293

/-- `A008574(n)+∑[and(1, A004526(n))]` -/
def P12753908458222611290.Spec : Prop :=
  ∀ n, P12753908458222611290.a n = A301293 n

end A301293

/-! ## A301293.P7720273700681881305

`A008574(n)+∑[and(1, A006325(n))]`
-/

namespace A301293.P7720273700681881305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006325 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301293.P7720273700681881305

namespace A301293

/-- `A008574(n)+∑[and(1, A006325(n))]` -/
def P7720273700681881305.Spec : Prop :=
  ∀ n, P7720273700681881305.a n = A301293 n

end A301293

/-! ## A301293.P3261695399662169773

`A008574(n)+∑[and(1, A022266(n))]`
-/

namespace A301293.P3261695399662169773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A022266 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301293.P3261695399662169773

namespace A301293

/-- `A008574(n)+∑[and(1, A022266(n))]` -/
def P3261695399662169773.Spec : Prop :=
  ∀ n, P3261695399662169773.a n = A301293 n

end A301293

/-!
# A301294: Partial sums of A301293.

The programs for A301294, the canonical program `A301294.P3934745825650091881` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301294 has offset 0).

The definition of A301294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301294.P3543162222933548339

`ogf((1+2x+3x^2+2x^3+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A301294.P3543162222933548339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 2, 1] [1, -3, 4, -4, 3, -1] n

end

end A301294.P3543162222933548339

namespace A301294

/-- `ogf((1+2x+3x^2+2x^3+x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P3543162222933548339.Spec : Prop :=
  ∀ n, P3543162222933548339.a n = A301294 n

end A301294

/-! ## A301294.P3934745825650091881

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=28, a(4)=46`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301294

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P3934745825650091881.Spec : Prop :=
  ∀ n, P3934745825650091881.a n = A301294 n

theorem P3934745825650091881.correct : P3934745825650091881.Spec := by
  intro n
  simp only [A301294]

end A301294

/-! ## A301294.P2093568382619608364

`floor(9/2*∑[n])+1`
-/

namespace A301294.P2093568382619608364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + 1

end

end A301294.P2093568382619608364

namespace A301294

/-- `floor(9/2*∑[n])+1` -/
def P2093568382619608364.Spec : Prop :=
  ∀ n, P2093568382619608364.a n = A301294 n

end A301294

/-! ## A301294.P7568262257405343026

`ceil(C(3*n+2, 2)/2)`
-/

namespace A301294.P7568262257405343026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (3 * n + 2) 2 : ℚ) / 2⌉

end

end A301294.P7568262257405343026

namespace A301294

/-- `ceil(C(3*n+2, 2)/2)` -/
def P7568262257405343026.Spec : Prop :=
  ∀ n, P7568262257405343026.a n = A301294 n

end A301294

/-! ## A301294.P1186627323221628094

`round(C(3*n+2, 2)/2)`
-/

namespace A301294.P1186627323221628094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (3 * n + 2) 2 : ℚ) / 2)

end

end A301294.P1186627323221628094

namespace A301294

/-- `round(C(3*n+2, 2)/2)` -/
def P1186627323221628094.Spec : Prop :=
  ∀ n, P1186627323221628094.a n = A301294 n

end A301294

/-! ## A301294.P5260179815223566541

`∑[∑[9-a(n-2)]]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A301294.P5260179815223566541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 5] fun n f2 =>
  9 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301294.P5260179815223566541

namespace A301294

/-- `∑[∑[9-a(n-2)]]` -/
def P5260179815223566541.Spec : Prop :=
  ∀ n, P5260179815223566541.a n = A301294 n

end A301294

/-! ## A301294.P11580180634211264648

`record[ceil(C(n, 2)/2)^(C(n, 2)%3)]`
-/

namespace A301294.P11580180634211264648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉ ^ (Nat.choose n 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301294.P11580180634211264648

namespace A301294

/-- `record[ceil(C(n, 2)/2)^(C(n, 2)%3)]` -/
def P11580180634211264648.Spec : Prop :=
  ∀ n, P11580180634211264648.a n = A301294 n

end A301294

/-! ## A301294.P14786940908878745864

`∑[A301293(n)]`
-/

namespace A301294.P14786940908878745864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301294.P14786940908878745864

namespace A301294

/-- `∑[A301293(n)]` -/
def P14786940908878745864.Spec : Prop :=
  ∀ n, P14786940908878745864.a n = A301294 n

end A301294

/-! ## A301294.P15254340922687192988

`floor(A062123(n)/2)`
-/

namespace A301294.P15254340922687192988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062123 n : ℚ) / 2⌋

end

end A301294.P15254340922687192988

namespace A301294

/-- `floor(A062123(n)/2)` -/
def P15254340922687192988.Spec : Prop :=
  ∀ n, P15254340922687192988.a n = A301294 n

end A301294

/-! ## A301294.P18413919993716431424

`ceil(A060544(n+1)/2)`
-/

namespace A301294.P18413919993716431424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060544 (n + 1) : ℚ) / 2⌉

end

end A301294.P18413919993716431424

namespace A301294

/-- `ceil(A060544(n+1)/2)` -/
def P18413919993716431424.Spec : Prop :=
  ∀ n, P18413919993716431424.a n = A301294 n

end A301294

/-! ## A301294.P15125009996716176094

`ceil(A069131(n+1)/4)`
-/

namespace A301294.P15125009996716176094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069131 (n + 1) : ℚ) / 4⌉

end

end A301294.P15125009996716176094

namespace A301294

/-- `ceil(A069131(n+1)/4)` -/
def P15125009996716176094.Spec : Prop :=
  ∀ n, P15125009996716176094.a n = A301294 n

end A301294

/-! ## A301294.P12302826510108332856

`ceil(A000217(3*n+1)/2)`
-/

namespace A301294.P12302826510108332856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 (3 * n + 1) : ℚ) / 2⌉

end

end A301294.P12302826510108332856

namespace A301294

/-- `ceil(A000217(3*n+1)/2)` -/
def P12302826510108332856.Spec : Prop :=
  ∀ n, P12302826510108332856.a n = A301294 n

end A301294

/-! ## A301294.P13573034807402415587

`A054925(3*n+2)`
-/

namespace A301294.P13573034807402415587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (3 * n + 2)

end

end A301294.P13573034807402415587

namespace A301294

/-- `A054925(3*n+2)` -/
def P13573034807402415587.Spec : Prop :=
  ∀ n, P13573034807402415587.a n = A301294 n

end A301294

/-! ## A301294.P3818987587311269859

`∑[A301710(n)-n]`
-/

namespace A301294.P3818987587311269859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301294.P3818987587311269859

namespace A301294

/-- `∑[A301710(n)-n]` -/
def P3818987587311269859.Spec : Prop :=
  ∀ n, P3818987587311269859.a n = A301294 n

end A301294

/-! ## A301294.P16214718318918971615

`A056822(6*n+3)`
-/

namespace A301294.P16214718318918971615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 (6 * n + 3)

end

end A301294.P16214718318918971615

namespace A301294

/-- `A056822(6*n+3)` -/
def P16214718318918971615.Spec : Prop :=
  ∀ n, P16214718318918971615.a n = A301294 n

end A301294

/-! ## A301294.P2791532382346492294

`A174396(n²+1+n)`
-/

namespace A301294.P2791532382346492294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174396 (n ^ 2 + 1 + n)

end

end A301294.P2791532382346492294

namespace A301294

/-- `A174396(n²+1+n)` -/
def P2791532382346492294.Spec : Prop :=
  ∀ n, P2791532382346492294.a n = A301294 n

end A301294

/-!
# A301295: Smallest distance from n to a prime power (as defined in A000961).

The programs for A301295, there is no canonical definition to state claims against.
-/

/-! ## A301295.P6108685970689985198

`A080732(n+1)%(n+1)`
-/

namespace A301295.P6108685970689985198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080732 (n + 1)) (n + 1 : ℤ)

end

end A301295.P6108685970689985198

/-! ## A301295.P10429421229986380799

`A080732(A028310(n)+1)`
-/

namespace A301295.P10429421229986380799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A028310 n + 1).toNat

end

end A301295.P10429421229986380799

/-! ## A301295.P7291635185309440890

`A080732(A348776(n+1))`
-/

namespace A301295.P7291635185309440890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A348776 (n + 1)).toNat

end

end A301295.P7291635185309440890

/-! ## A301295.P7024238587213928621

`A080732(n+1)-A000007(n)`
-/

namespace A301295.P7024238587213928621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (n + 1) - A000007 n

end

end A301295.P7024238587213928621

/-! ## A301295.P13891157439636094324

`A043545(n)*A080732(n+1)`
-/

namespace A301295.P13891157439636094324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A080732 (n + 1)

end

end A301295.P13891157439636094324

/-! ## A301295.P2366572235670229773

`A057427(n)*A080732(n+1)`
-/

namespace A301295.P2366572235670229773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A080732 (n + 1)

end

end A301295.P2366572235670229773

/-! ## A301295.P7614509853343696422

`A080732(n+1)*A130543(n)`
-/

namespace A301295.P7614509853343696422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (n + 1) * A130543 n

end

end A301295.P7614509853343696422

/-! ## A301295.P9966590590515527683

`A080732(n+1)*A157928(n)`
-/

namespace A301295.P9966590590515527683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (n + 1) * A157928 n

end

end A301295.P9966590590515527683

/-! ## A301295.P14492510391845269378

`and(A003817(n), A080732(n+1))`
-/

namespace A301295.P14492510391845269378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A080732 (n + 1))

end

end A301295.P14492510391845269378

/-! ## A301295.P12506659736928575104

`and(A057428(n), A080732(n+1))`
-/

namespace A301295.P12506659736928575104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A080732 (n + 1))

end

end A301295.P12506659736928575104

/-! ## A301295.P17243093822833252495

`A020500(n+1)*A080732(n+1)`
-/

namespace A301295.P17243093822833252495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1) * A080732 (n + 1)

end

end A301295.P17243093822833252495

/-! ## A301295.P2195305412624793749

`A055976(n+1)*A080732(n+1)`
-/

namespace A301295.P2195305412624793749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055976 (n + 1) * A080732 (n + 1)

end

end A301295.P2195305412624793749

/-! ## A301295.P11419898374578156501

`A066247(n+1)*A080732(n+1)`
-/

namespace A301295.P11419898374578156501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A080732 (n + 1)

end

end A301295.P11419898374578156501

/-! ## A301295.P1757449142668769306

`lcm(A079872(n+1), A316190(n+1))`
-/

namespace A301295.P1757449142668769306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079872 (n + 1)) (A316190 (n + 1))

end

end A301295.P1757449142668769306

/-! ## A301295.P324736768816298794

`A080732(A254667(n+1))`
-/

namespace A301295.P324736768816298794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A254667 (n + 1)).toNat

end

end A301295.P324736768816298794

/-! ## A301295.P14610137896082496138

`A080732(A080732(A000015(n+1))+n+1)`
-/

namespace A301295.P14610137896082496138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A080732 (A000015 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A301295.P14610137896082496138

/-! ## A301295.P12129241533670499370

`A053188(A080732(n+1)+A053187(n))`
-/

namespace A301295.P12129241533670499370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A080732 (n + 1) + A053187 n).toNat

end

end A301295.P12129241533670499370

/-! ## A301295.P7999141098564684113

`A080732(A153151(n+1)+1)`
-/

namespace A301295.P7999141098564684113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A153151 (n + 1) + 1).toNat

end

end A301295.P7999141098564684113

/-! ## A301295.P8789651095240568374

`A080732(A080732(A000961(n+1))+n+1)`
-/

namespace A301295.P8789651095240568374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A080732 (A000961 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A301295.P8789651095240568374

/-! ## A301295.P13473426327099444017

`A080732(A233583(n+1)+1)`
-/

namespace A301295.P13473426327099444017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080732 (A233583 (n + 1) + 1).toNat

end

end A301295.P13473426327099444017

/-!
# A301296: Smallest distance from n to a prime power (as defined in A246547).

The programs for A301296, there is no canonical definition to state claims against.
-/

/-! ## A301296.P11742767034281102542

`A061670(n*a(2*(n+1)-2*n)+1)` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A301296.P11742767034281102542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n a =>
  A061670 ((n : ℤ) * a (2 * (n + 1) - 2 * n) + 1).toNat

end

end A301296.P11742767034281102542

/-! ## A301296.P11654797348967319552

`A169585(xor(1, n))+A061670(n+1)`
-/

namespace A301296.P11654797348967319552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (Nat.xor 1 n) + A061670 (n + 1)

end

end A301296.P11654797348967319552

/-! ## A301296.P17257877422898829806

`xor(floor(3/A149142(n)), A061670(n+1))`
-/

namespace A301296.P17257877422898829806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊3 / (A149142 n : ℚ)⌋ (A061670 (n + 1))

end

end A301296.P17257877422898829806

/-! ## A301296.P280677908766370382

`A061670(n+1)+A033330(A016945(n))`
-/

namespace A301296.P280677908766370382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (n + 1) + A033330 (A016945 n).toNat

end

end A301296.P280677908766370382

/-! ## A301296.P18338473453713586794

`xor(A061670(n+1), A169585(A028310(n)))`
-/

namespace A301296.P18338473453713586794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061670 (n + 1)) (A169585 (A028310 n).toNat)

end

end A301296.P18338473453713586794

/-! ## A301296.P8901174465618174147

`xor(A061670(n+1), A117980(A151800(n)))`
-/

namespace A301296.P8901174465618174147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061670 (n + 1)) (A117980 (A151800 n).toNat)

end

end A301296.P8901174465618174147

/-! ## A301296.P10217351744744329061

`round(A061670(n+1)+A256794(n+1)/A008965(n+1))`
-/

namespace A301296.P10217351744744329061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061670 (n + 1) : ℚ) + (A256794 (n + 1) : ℚ) / (A008965 (n + 1) : ℚ))

end

end A301296.P10217351744744329061

/-! ## A301296.P9653052729158062143

`round(A061670(n+1)+A256794(n+1)/A241957(n+1))`
-/

namespace A301296.P9653052729158062143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061670 (n + 1) : ℚ) + (A256794 (n + 1) : ℚ) / (A241957 (n + 1) : ℚ))

end

end A301296.P9653052729158062143

/-!
# A301298: Expansion of (1 + 4*x + 4*x^2 + 4*x^3 + x^4)/((1 - x)*(1 - x^3)).

The programs for A301298, the canonical program `A301298.P17841740048100400826` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301298 has offset 0).

The definition of A301298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+4x^2+4x^3+x^4)/(1-x-x^3+x^4))` (program `A301298.P17841740048100400826`, by `A301298.P17841740048100400826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301298.P17841740048100400826

`ogf((1+4x+4x^2+4x^3+x^4)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301298

/-- `ogf((1+4x+4x^2+4x^3+x^4)/(1-x-x^3+x^4))` -/
def P17841740048100400826.Spec : Prop :=
  ∀ n, P17841740048100400826.a n = A301298 n

theorem P17841740048100400826.correct : P17841740048100400826.Spec := by
  intro n
  simp only [A301298]

end A301298

/-! ## A301298.P15388934204003015444

`a(n-3)+14` with `a(0)=1, a(1)=5, a(2)=9, a(3)=14`
-/

namespace A301298.P15388934204003015444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 9, 14] fun n a =>
  a (n - 3) + 14

end

end A301298.P15388934204003015444

namespace A301298

/-- `a(n-3)+14` -/
def P15388934204003015444.Spec : Prop :=
  ∀ n, (P15388934204003015444.a n : ℤ) = A301298 n

end A301298

/-! ## A301298.P6854779233236261617

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=5, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A301298.P6854779233236261617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 5, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301298.P6854779233236261617

namespace A301298

/-- `∑[floor(a(n-3))]` -/
def P6854779233236261617.Spec : Prop :=
  ∀ n, (P6854779233236261617.a n : ℤ) = A301298 n

end A301298

/-! ## A301298.P3285295345353881089

`∑[a(n-3)%6]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=5, a(4)=5`
-/

namespace A301298.P3285295345353881089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 5, 5] fun n f1 =>
  f1 (n - 3) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301298.P3285295345353881089

namespace A301298

/-- `∑[a(n-3)%6]` -/
def P3285295345353881089.Spec : Prop :=
  ∀ n, (P3285295345353881089.a n : ℤ) = A301298 n

end A301298

/-! ## A301298.P15122724173433552875

`ceil(abs(1-8*n)/3)+2*n`
-/

namespace A301298.P15122724173433552875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ + (2 * n : ℤ)

end

end A301298.P15122724173433552875

namespace A301298

/-- `ceil(abs(1-8*n)/3)+2*n` -/
def P15122724173433552875.Spec : Prop :=
  ∀ n, P15122724173433552875.a n = A301298 n

end A301298

/-! ## A301298.P1805527808525942268

`abs(A008592(n)-A219529(n))`
-/

namespace A301298.P1805527808525942268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A219529 n|

end

end A301298.P1805527808525942268

namespace A301298

/-- `abs(A008592(n)-A219529(n))` -/
def P1805527808525942268.Spec : Prop :=
  ∀ n, P1805527808525942268.a n = A301298 n

end A301298

/-! ## A301298.P13770656088307934970

`A000027(A008574(n)+round(2*n/3))`
-/

namespace A301298.P13770656088307934970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008574 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A301298.P13770656088307934970

namespace A301298

/-- `A000027(A008574(n)+round(2*n/3))` -/
def P13770656088307934970.Spec : Prop :=
  ∀ n, P13770656088307934970.a n = A301298 n

end A301298

/-! ## A301298.P3136860819957671585

`A318516(A298024(2*n))`
-/

namespace A301298.P3136860819957671585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A298024 (2 * n)).toNat

end

end A301298.P3136860819957671585

namespace A301298

/-- `A318516(A298024(2*n))` -/
def P3136860819957671585.Spec : Prop :=
  ∀ n, P3136860819957671585.a n = A301298 n

end A301298

/-! ## A301298.P634918739464107735

`A131737(7*n+1)`
-/

namespace A301298.P634918739464107735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (7 * n + 1)

end

end A301298.P634918739464107735

namespace A301298

/-- `A131737(7*n+1)` -/
def P634918739464107735.Spec : Prop :=
  ∀ n, P634918739464107735.a n = A301298 n

end A301298

/-! ## A301298.P2106622754594633600

`A096607(A016993(n))`
-/

namespace A301298.P2106622754594633600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (A016993 n).toNat

end

end A301298.P2106622754594633600

namespace A301298

/-- `A096607(A016993(n))` -/
def P2106622754594633600.Spec : Prop :=
  ∀ n, P2106622754594633600.a n = A301298 n

end A301298

/-! ## A301298.P4362411076327892412

`A004396(A008458(n)+n)`
-/

namespace A301298.P4362411076327892412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008458 n + (n : ℤ)).toNat

end

end A301298.P4362411076327892412

namespace A301298

/-- `A004396(A008458(n)+n)` -/
def P4362411076327892412.Spec : Prop :=
  ∀ n, P4362411076327892412.a n = A301298 n

end A301298

/-! ## A301298.P18433866946698889217

`A004396(A022144(n)-n)`
-/

namespace A301298.P18433866946698889217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A022144 n - (n : ℤ)).toNat

end

end A301298.P18433866946698889217

namespace A301298

/-- `A004396(A022144(n)-n)` -/
def P18433866946698889217.Spec : Prop :=
  ∀ n, P18433866946698889217.a n = A301298 n

end A301298

/-! ## A301298.P12538233037391193707

`A274616(A022144(n)-n)`
-/

namespace A301298.P12538233037391193707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A022144 n - (n : ℤ)).toNat

end

end A301298.P12538233037391193707

namespace A301298

/-- `A274616(A022144(n)-n)` -/
def P12538233037391193707.Spec : Prop :=
  ∀ n, P12538233037391193707.a n = A301298 n

end A301298

/-! ## A301298.P9316538288481352670

`A004396(A008486(2*n)+n)`
-/

namespace A301298.P9316538288481352670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 (2 * n) + (n : ℤ)).toNat

end

end A301298.P9316538288481352670

namespace A301298

/-- `A004396(A008486(2*n)+n)` -/
def P9316538288481352670.Spec : Prop :=
  ∀ n, P9316538288481352670.a n = A301298 n

end A301298

/-! ## A301298.P15800847555486383144

`A004525(A310393(2*n))`
-/

namespace A301298.P15800847555486383144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310393 (2 * n)).toNat

end

end A301298.P15800847555486383144

namespace A301298

/-- `A004525(A310393(2*n))` -/
def P15800847555486383144.Spec : Prop :=
  ∀ n, P15800847555486383144.a n = A301298 n

end A301298

/-! ## A301298.P7903000297929480697

`A004525(A312950(2*n))`
-/

namespace A301298.P7903000297929480697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312950 (2 * n)).toNat

end

end A301298.P7903000297929480697

namespace A301298

/-- `A004525(A312950(2*n))` -/
def P7903000297929480697.Spec : Prop :=
  ∀ n, P7903000297929480697.a n = A301298 n

end A301298

/-! ## A301298.P12928479898022861591

`A004525(A313057(2*n))`
-/

namespace A301298.P12928479898022861591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313057 (2 * n)).toNat

end

end A301298.P12928479898022861591

namespace A301298

/-- `A004525(A313057(2*n))` -/
def P12928479898022861591.Spec : Prop :=
  ∀ n, P12928479898022861591.a n = A301298 n

end A301298

/-! ## A301298.P14270323316123620456

`A004525(A313099(2*n))`
-/

namespace A301298.P14270323316123620456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313099 (2 * n)).toNat

end

end A301298.P14270323316123620456

namespace A301298

/-- `A004525(A313099(2*n))` -/
def P14270323316123620456.Spec : Prop :=
  ∀ n, P14270323316123620456.a n = A301298 n

end A301298

/-! ## A301298.P3533631847090541813

`A004525(A313100(2*n))`
-/

namespace A301298.P3533631847090541813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313100 (2 * n)).toNat

end

end A301298.P3533631847090541813

namespace A301298

/-- `A004525(A313100(2*n))` -/
def P3533631847090541813.Spec : Prop :=
  ∀ n, P3533631847090541813.a n = A301298 n

end A301298

/-! ## A301298.P554820496786943091

`A004525(A313110(2*n))`
-/

namespace A301298.P554820496786943091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313110 (2 * n)).toNat

end

end A301298.P554820496786943091

namespace A301298

/-- `A004525(A313110(2*n))` -/
def P554820496786943091.Spec : Prop :=
  ∀ n, P554820496786943091.a n = A301298 n

end A301298

/-!
# A301299: Coordination sequence for node of type V1 in "krq" 2-D tiling (or net).

The programs for A301299, the canonical program `A301299.P8433507298077052345` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301299 has offset 0).

The definition of A301299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301299.P8433507298077052345

`ogf((1+4x+8x^2+13x^3+18x^4+20x^5+18x^6+13x^7+8x^8+4x^9+x^10)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A301299

/-- `ogf((1+4x+8x^2+13x^3+18x^4+20x^5+18x^6+13x^7+8x^8+4x^9+x^10)/(1-2x^5+x^10))` -/
def P8433507298077052345.Spec : Prop :=
  ∀ n, P8433507298077052345.a n = A301299 n

theorem P8433507298077052345.correct : P8433507298077052345.Spec := by
  intro n
  simp only [A301299]

end A301299

/-! ## A301299.P16352302157702210634

`A315618(A047263(n+1))-2*n`
-/

namespace A301299.P16352302157702210634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315618 (A047263 (n + 1)).toNat - (2 * n : ℤ)

end

end A301299.P16352302157702210634

namespace A301299

/-- `A315618(A047263(n+1))-2*n` -/
def P16352302157702210634.Spec : Prop :=
  ∀ n, P16352302157702210634.a n = A301299 n

end A301299

/-! ## A301299.P13736274239155405416

`abs(A315618(A047263(n+1))-A005843(n))`
-/

namespace A301299.P13736274239155405416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A315618 (A047263 (n + 1)).toNat - A005843 n|

end

end A301299.P13736274239155405416

namespace A301299

/-- `abs(A315618(A047263(n+1))-A005843(n))` -/
def P13736274239155405416.Spec : Prop :=
  ∀ n, P13736274239155405416.a n = A301299 n

end A301299

/-! ## A301299.P14793636281538899865

`A265227(n+1)+A004525(A315213(n))`
-/

namespace A301299.P14793636281538899865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004525 (A315213 n).toNat

end

end A301299.P14793636281538899865

namespace A301299

/-- `A265227(n+1)+A004525(A315213(n))` -/
def P14793636281538899865.Spec : Prop :=
  ∀ n, P14793636281538899865.a n = A301299 n

end A301299

/-! ## A301299.P710990171034367866

`A265227(n+1)+A004525(A315373(n))`
-/

namespace A301299.P710990171034367866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004525 (A315373 n).toNat

end

end A301299.P710990171034367866

namespace A301299

/-- `A265227(n+1)+A004525(A315373(n))` -/
def P710990171034367866.Spec : Prop :=
  ∀ n, P710990171034367866.a n = A301299 n

end A301299

/-! ## A301299.P3743588073694948589

`A315987(A047486(n+1))-2*A047486(n+1)`
-/

namespace A301299.P3743588073694948589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315987 (A047486 (n + 1)).toNat - 2 * A047486 (n + 1)

end

end A301299.P3743588073694948589

namespace A301299

/-- `A315987(A047486(n+1))-2*A047486(n+1)` -/
def P3743588073694948589.Spec : Prop :=
  ∀ n, P3743588073694948589.a n = A301299 n

end A301299

/-! ## A301299.P16763933486431919967

`A315987(A047486(n+1))-A005843(A047486(n+1))`
-/

namespace A301299.P16763933486431919967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315987 (A047486 (n + 1)).toNat - A005843 (A047486 (n + 1)).toNat

end

end A301299.P16763933486431919967

namespace A301299

/-- `A315987(A047486(n+1))-A005843(A047486(n+1))` -/
def P16763933486431919967.Spec : Prop :=
  ∀ n, P16763933486431919967.a n = A301299 n

end A301299

