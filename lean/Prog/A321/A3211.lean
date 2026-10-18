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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A321100: Sequence {a(n), n>=0} satisfying the continued fraction relation: if z = [a(0) + 1; a(1) + 1, a(2) + 1, a(3) + 1, ..., a(n) + 1, ...], then 7*z = [a(0) + 9; a(1) + 11, a(2) + 11, a(3) + 11, ..., a(n) + 11, ...].

The programs for A321100, there is no canonical definition to state claims against.
-/

/-! ## A321100.P9105613562900716628

`2-A321090(n)`
-/

namespace A321100.P9105613562900716628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321090 n

end

end A321100.P9105613562900716628

/-! ## A321100.P15928913159652049365

`C(2, A321091(n))`
-/

namespace A321100.P15928913159652049365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A321091 n).toNat

end

end A321100.P15928913159652049365

/-! ## A321100.P4041309314488037301

`C(2, A321102(n)²)`
-/

namespace A321100.P4041309314488037301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A321102 n ^ 2).toNat

end

end A321100.P4041309314488037301

/-! ## A321100.P16915048670386907341

`sqrt(C(4, A321095(n)))`
-/

namespace A321100.P16915048670386907341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.choose 4 (A321095 n).toNat : ℝ)

end

end A321100.P16915048670386907341

/-! ## A321100.P10119929351946667145

`round(2/A321093(n))`
-/

namespace A321100.P10119929351946667145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A321093 n : ℚ))

end

end A321100.P10119929351946667145

/-! ## A321100.P9280560896560195105

`log2(gcd(4, A321104(n)))`
-/

namespace A321100.P9280560896560195105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A321104 n) : ℝ)

end

end A321100.P9280560896560195105

/-! ## A321100.P4908538603881498131

`a(A321101(n))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A321100.P4908538603881498131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (A321101 n).toNat

end

end A321100.P4908538603881498131

/-! ## A321100.P13978241346672714200

`val(A321103(n)+2, 2)`
-/

namespace A321100.P13978241346672714200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A321103 n + 2).toNat 2

end

end A321100.P13978241346672714200

/-! ## A321100.P687655113331988532

`2-floor(log(A321097(n)))`
-/

namespace A321100.P687655113331988532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊Real.log (A321097 n : ℝ)⌋

end

end A321100.P687655113331988532

/-! ## A321100.P5627056931617908869

`A321101(A064429(n))`
-/

namespace A321100.P5627056931617908869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321101 (A064429 n).toNat

end

end A321100.P5627056931617908869

/-! ## A321100.P11524581500547764503

`A321101(A244477(n+1))`
-/

namespace A321100.P11524581500547764503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321101 (A244477 (n + 1)).toNat

end

end A321100.P11524581500547764503

/-! ## A321100.P16417934184365871137

`A321090(a(A321090(n)))` with `a(0)=0`
-/

namespace A321100.P16417934184365871137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A321090 (a (A321090 n).toNat).toNat

end

end A321100.P16417934184365871137

/-! ## A321100.P5224177690420060109

`(A321102(n)+1)*A011655(n)`
-/

namespace A321100.P5224177690420060109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321102 n + 1) * A011655 n

end

end A321100.P5224177690420060109

/-! ## A321100.P9170341676999867412

`A054977(n)+2-A321091(n)`
-/

namespace A321100.P9170341676999867412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (2 - A321091 n)

end

end A321100.P9170341676999867412

/-! ## A321100.P14534538102291253685

`A321091(n)+2-A321093(n)`
-/

namespace A321100.P14534538102291253685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 n + (2 - A321093 n)

end

end A321100.P14534538102291253685

/-! ## A321100.P11799500108048243683

`A321093(n)+2-A321095(n)`
-/

namespace A321100.P11799500108048243683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n + (2 - A321095 n)

end

end A321100.P11799500108048243683

/-! ## A321100.P14721539436990089747

`A321095(n)+2-A321097(n)`
-/

namespace A321100.P14721539436990089747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321095 n + (2 - A321097 n)

end

end A321100.P14721539436990089747

/-! ## A321100.P3444861015433135967

`A321091(3*n)-A321091(n)`
-/

namespace A321100.P3444861015433135967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 (3 * n) - A321091 n

end

end A321100.P3444861015433135967

/-! ## A321100.P5584567736534458451

`2*A011655(n)/A321091(n)`
-/

namespace A321100.P5584567736534458451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A011655 n : ℚ) / (A321091 n : ℚ))

end

end A321100.P5584567736534458451

/-! ## A321100.P672378418913492084

`lcm(2, A092220(n))/A321091(n)`
-/

namespace A321100.P672378418913492084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A092220 n) : ℚ) / (A321091 n : ℚ)

end

end A321100.P672378418913492084

/-!
# A321101: Sequence generated by: a(3*n) = 0, a(3*n+2) = 3 - a(3*n+1), a(9*n+1) = 1, a(9*n+7) = 2, a(9*n+4) = 3 - a(3*n+1), for n >= 0.

The programs for A321101, there is no canonical definition to state claims against.
-/

/-! ## A321101.P4530363912038671297

`2-A321102(n)`
-/

namespace A321101.P4530363912038671297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321102 n

end

end A321101.P4530363912038671297

/-! ## A321101.P5501624457601214254

`C(2, A321090(n)²)`
-/

namespace A321101.P5501624457601214254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A321090 n ^ 2).toNat

end

end A321101.P5501624457601214254

/-! ## A321101.P6830812744767077992

`log2(gcd(4, A321103(n)))`
-/

namespace A321101.P6830812744767077992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A321103 n) : ℝ)

end

end A321101.P6830812744767077992

/-! ## A321101.P11086315996997009214

`A321091(n)!%3`
-/

namespace A321101.P11086315996997009214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A321091 n).toNat % 3

end

end A321101.P11086315996997009214

/-! ## A321101.P13753158422243000355

`A321093(n)!%4`
-/

namespace A321101.P13753158422243000355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A321093 n).toNat % 4

end

end A321101.P13753158422243000355

/-! ## A321101.P8164349016150688249

`(2*A321100(n))%3`
-/

namespace A321101.P8164349016150688249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A321100 n) 3

end

end A321101.P8164349016150688249

/-! ## A321101.P5174318060976401201

`2-C(2, A321104(n)²)`
-/

namespace A321101.P5174318060976401201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A321104 n ^ 2).toNat : ℤ)

end

end A321101.P5174318060976401201

/-! ## A321101.P12344802148028562672

`2-abs(ceil(cot(A321097(n))))`
-/

namespace A321101.P12344802148028562672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |⌈Real.cot (A321097 n : ℝ)⌉|

end

end A321101.P12344802148028562672

/-! ## A321101.P711621765001945719

`A321100(A064429(n))`
-/

namespace A321101.P711621765001945719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 (A064429 n).toNat

end

end A321101.P711621765001945719

/-! ## A321101.P14974138503146103584

`A321100(A244477(n+1))`
-/

namespace A321101.P14974138503146103584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 (A244477 (n + 1)).toNat

end

end A321101.P14974138503146103584

/-! ## A321101.P14913030714354233403

`2-A321090(A279318(n))`
-/

namespace A321101.P14913030714354233403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321090 (A279318 n).toNat

end

end A321101.P14913030714354233403

/-! ## A321101.P14066852152281855554

`A321103(a(A321090(n)))` with `a(0)=0`
-/

namespace A321101.P14066852152281855554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A321103 (a (A321090 n).toNat).toNat

end

end A321101.P14066852152281855554

/-! ## A321101.P8266660686538481769

`A011655(n)*A321091(n)`
-/

namespace A321101.P8266660686538481769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A321091 n

end

end A321101.P8266660686538481769

/-! ## A321101.P9637901616976786580

`A321091(n)%A070403(n)`
-/

namespace A321101.P9637901616976786580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321091 n) (A070403 n)

end

end A321101.P9637901616976786580

/-! ## A321101.P15822886001648939072

`A321097(n)%A122553(n)`
-/

namespace A321101.P15822886001648939072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321097 n) (A122553 n)

end

end A321101.P15822886001648939072

/-! ## A321101.P1498288615746597741

`lcm(A092220(n), A321091(n))`
-/

namespace A321101.P1498288615746597741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092220 n) (A321091 n)

end

end A321101.P1498288615746597741

/-! ## A321101.P14392262364511917778

`and(A070650(n), A321091(n))`
-/

namespace A321101.P14392262364511917778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070650 n) (A321091 n)

end

end A321101.P14392262364511917778

/-! ## A321101.P1357442567164464529

`and(A103819(n), A321091(n))`
-/

namespace A321101.P1357442567164464529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103819 n) (A321091 n)

end

end A321101.P1357442567164464529

/-! ## A321101.P13851194213988158574

`and(A321093(n)!, A321091(n))`
-/

namespace A321101.P13851194213988158574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A321093 n).toNat : ℤ) (A321091 n)

end

end A321101.P13851194213988158574

/-! ## A321101.P15681614629992887281

`2-A321090(A113655(n+1))`
-/

namespace A321101.P15681614629992887281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321090 (A113655 (n + 1)).toNat

end

end A321101.P15681614629992887281

/-!
# A321102: Sequence generated by: a(3*n) = 1, a(3*n+2) = 1 - a(3*n+1), a(9*n+1) = 1, a(9*n+7) = 0, a(9*n+4) = 1 - a(3*n+1), for n >= 0.

The programs for A321102, there is no canonical definition to state claims against.
-/

/-! ## A321102.P6717539669770888889

`2-A321101(n)`
-/

namespace A321102.P6717539669770888889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321101 n

end

end A321102.P6717539669770888889

/-! ## A321102.P10086783210088445562

`C(2, A321104(n)²)`
-/

namespace A321102.P10086783210088445562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A321104 n ^ 2).toNat

end

end A321102.P10086783210088445562

/-! ## A321102.P14560161225265965707

`log2(gcd(4, A321100(n)))`
-/

namespace A321102.P14560161225265965707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A321100 n) : ℝ)

end

end A321102.P14560161225265965707

/-! ## A321102.P10411041240504357082

`round(tan(A321103(n)²))`
-/

namespace A321102.P10411041240504357082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (A321103 n ^ 2 : ℝ))

end

end A321102.P10411041240504357082

/-! ## A321102.P17065014497769400882

`abs(ceil(cot(A321097(n))))`
-/

namespace A321102.P17065014497769400882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.cot (A321097 n : ℝ)⌉|

end

end A321102.P17065014497769400882

/-! ## A321102.P15114917847058475756

`val(A321090(n)+2, 2)`
-/

namespace A321102.P15114917847058475756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A321090 n + 2).toNat 2

end

end A321102.P15114917847058475756

/-! ## A321102.P7457280859716751822

`A321090(A064429(n))`
-/

namespace A321102.P7457280859716751822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A064429 n).toNat

end

end A321102.P7457280859716751822

/-! ## A321102.P2211369825475552702

`A321090(A279318(n))`
-/

namespace A321102.P2211369825475552702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A279318 n).toNat

end

end A321102.P2211369825475552702

/-! ## A321102.P4173722688812512590

`A321090(A113655(n+1))`
-/

namespace A321102.P4173722688812512590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A113655 (n + 1)).toNat

end

end A321102.P4173722688812512590

/-! ## A321102.P6506132026157945041

`A321090(A244477(n+1))`
-/

namespace A321102.P6506132026157945041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A244477 (n + 1)).toNat

end

end A321102.P6506132026157945041

/-! ## A321102.P14333142750426822957

`A004483(a(A321090(n)))` with `a(0)=2`
-/

namespace A321102.P14333142750426822957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004483 (a (A321090 n).toNat).toNat

end

end A321102.P14333142750426822957

/-! ## A321102.P15844699826127032326

`A321090(a(A321090(n)))` with `a(0)=2`
-/

namespace A321102.P15844699826127032326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A321090 (a (A321090 n).toNat).toNat

end

end A321102.P15844699826127032326

/-! ## A321102.P11948230370711237056

`xor(A011655(n), A321090(n))`
-/

namespace A321102.P11948230370711237056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A321090 n)

end

end A321102.P11948230370711237056

/-! ## A321102.P17368594047529454792

`A321103(a(A321103(n)))` with `a(0)=2, a(1)=1`
-/

namespace A321102.P17368594047529454792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A321103 (a (A321103 n).toNat).toNat

end

end A321102.P17368594047529454792

/-! ## A321102.P6568430589861549452

`A321090(n)+A321103(n)-1`
-/

namespace A321102.P6568430589861549452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n + (A321103 n - 1)

end

end A321102.P6568430589861549452

/-! ## A321102.P7679634879988234011

`2-A011655(n)*A321091(n)`
-/

namespace A321102.P7679634879988234011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A011655 n * A321091 n

end

end A321102.P7679634879988234011

/-! ## A321102.P4323833117868549812

`2-lcm(A092220(n), A321091(n))`
-/

namespace A321102.P4323833117868549812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.lcm (A092220 n) (A321091 n) : ℤ)

end

end A321102.P4323833117868549812

/-! ## A321102.P15373277846652468261

`2-and(A070650(n), A321091(n))`
-/

namespace A321102.P15373277846652468261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A070650 n) (A321091 n)

end

end A321102.P15373277846652468261

/-! ## A321102.P13198709816327389469

`2-and(A103819(n), A321091(n))`
-/

namespace A321102.P13198709816327389469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A103819 n) (A321091 n)

end

end A321102.P13198709816327389469

/-! ## A321102.P984563919380555289

`(n-A004483(n))²-A321090(n)`
-/

namespace A321102.P984563919380555289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004483 n) ^ 2 - A321090 n

end

end A321102.P984563919380555289

/-!
# A321103: Sequence generated by: a(3*n) = 1, a(3*n+2) = 2 - a(3*n+1), a(9*n+1) = 2, a(9*n+7) = 0, a(9*n+4) = 2 - a(3*n+1), for n >= 0.

The programs for A321103, there is no canonical definition to state claims against.
-/

/-! ## A321103.P31479817314664239

`2-A321104(n)`
-/

namespace A321103.P31479817314664239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321104 n

end

end A321103.P31479817314664239

/-! ## A321103.P9456483033568872308

`C(2, A321101(n)²)`
-/

namespace A321103.P9456483033568872308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A321101 n ^ 2).toNat

end

end A321103.P9456483033568872308

/-! ## A321103.P1262033377746255525

`log2(gcd(4, A321090(n)))`
-/

namespace A321103.P1262033377746255525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A321090 n) : ℝ)

end

end A321103.P1262033377746255525

/-! ## A321103.P10896877334923646095

`round(tan(A321102(n)²))`
-/

namespace A321103.P10896877334923646095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (A321102 n ^ 2 : ℝ))

end

end A321103.P10896877334923646095

/-! ## A321103.P6553193299320238703

`ceil(tan(A321093(n)!))`
-/

namespace A321103.P6553193299320238703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Nat.factorial (A321093 n).toNat : ℝ)⌉

end

end A321103.P6553193299320238703

/-! ## A321103.P2099594526634068401

`val(A321100(n)+2, 2)`
-/

namespace A321103.P2099594526634068401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A321100 n + 2).toNat 2

end

end A321103.P2099594526634068401

/-! ## A321103.P16181261194483366244

`A321104(A064429(n))`
-/

namespace A321103.P16181261194483366244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321104 (A064429 n).toNat

end

end A321103.P16181261194483366244

/-! ## A321103.P714227155630784899

`A321104(A244477(n+1))`
-/

namespace A321103.P714227155630784899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321104 (A244477 (n + 1)).toNat

end

end A321103.P714227155630784899

/-! ## A321103.P2612065268526937628

`A000122(a(A321090(n)))` with `a(0)=1`
-/

namespace A321103.P2612065268526937628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000122 (a (A321090 n).toNat).toNat

end

end A321103.P2612065268526937628

/-! ## A321103.P3796257503850817351

`A004482(a(A321090(n)))` with `a(0)=1`
-/

namespace A321103.P3796257503850817351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004482 (a (A321090 n).toNat).toNat

end

end A321103.P3796257503850817351

/-! ## A321103.P1624055529487658949

`A004531(a(A321090(n)))` with `a(0)=1`
-/

namespace A321103.P1624055529487658949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004531 (a (A321090 n).toNat).toNat

end

end A321103.P1624055529487658949

/-! ## A321103.P14962446362816400975

`A033719(a(A321090(n)))` with `a(0)=1`
-/

namespace A321103.P14962446362816400975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033719 (a (A321090 n).toNat).toNat

end

end A321103.P14962446362816400975

/-! ## A321103.P5613549295000191666

`A321090(n-Δ[A321090(n)])`
-/

namespace A321103.P5613549295000191666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A321103.P5613549295000191666

/-! ## A321103.P4168651092399476640

`A047706(a(A321090(n)))-1` with `a(0)=1`
-/

namespace A321103.P4168651092399476640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047706 (a (A321090 n).toNat).toNat - 1

end

end A321103.P4168651092399476640

/-! ## A321103.P14468398389559748069

`A321090(xor(n, xor(n, A321090(n))))`
-/

namespace A321103.P14468398389559748069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A321090 n))).toNat

end

end A321103.P14468398389559748069

/-! ## A321103.P5797132463675152017

`A000027(A321090(n)+3*n+2)%3`
-/

namespace A321103.P5797132463675152017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A321090 n + (3 * n + 2 : ℤ)).toNat) 3

end

end A321103.P5797132463675152017

/-! ## A321103.P11655075135282178673

`A321090(A064429(n))+1-A321090(n)`
-/

namespace A321103.P11655075135282178673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A064429 n).toNat + (1 - A321090 n)

end

end A321103.P11655075135282178673

/-! ## A321103.P6410230027234739282

`A321101(A064429(n))+1-A321101(n)`
-/

namespace A321103.P6410230027234739282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321101 (A064429 n).toNat + (1 - A321101 n)

end

end A321103.P6410230027234739282

/-! ## A321103.P13872684182903522279

`A321100(n)+1-A321100(A064429(n))`
-/

namespace A321103.P13872684182903522279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321100 n + (1 - A321100 (A064429 n).toNat)

end

end A321103.P13872684182903522279

/-! ## A321103.P3891581849233677349

`A321102(n)+1-A321102(A064429(n))`
-/

namespace A321103.P3891581849233677349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 n + (1 - A321102 (A064429 n).toNat)

end

end A321103.P3891581849233677349

/-!
# A321104: Sequence generated by: a(3*n) = 1, a(3*n+2) = 2 - a(3*n+1), a(9*n+1) = 0, a(9*n+7) = 2, a(9*n+4) = 2 - a(3*n+1), for n >= 0.

The programs for A321104, there is no canonical definition to state claims against.
-/

/-! ## A321104.P13016462759954930002

`2-A321103(n)`
-/

namespace A321104.P13016462759954930002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321103 n

end

end A321104.P13016462759954930002

/-! ## A321104.P863514338086384460

`C(2, A321100(n)²)`
-/

namespace A321104.P863514338086384460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A321100 n ^ 2).toNat

end

end A321104.P863514338086384460

/-! ## A321104.P6016879610470144341

`log2(gcd(4, A321102(n)))`
-/

namespace A321104.P6016879610470144341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A321102 n) : ℝ)

end

end A321104.P6016879610470144341

/-! ## A321104.P8544427626455570863

`round(tan(A321090(n)²))`
-/

namespace A321104.P8544427626455570863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (A321090 n ^ 2 : ℝ))

end

end A321104.P8544427626455570863

/-! ## A321104.P2780347497336484749

`a(A321101(n))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A321104.P2780347497336484749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (A321101 n).toNat

end

end A321104.P2780347497336484749

/-! ## A321104.P11127814639599031997

`(7%A321097(n))%3`
-/

namespace A321104.P11127814639599031997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 7 (A321097 n)) 3

end

end A321104.P11127814639599031997

/-! ## A321104.P18362421073781139640

`(6%A321095(n))%5`
-/

namespace A321104.P18362421073781139640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 6 (A321095 n)) 5

end

end A321104.P18362421073781139640

/-! ## A321104.P7094436731057718221

`C(2, C(2, A321091(n))²)`
-/

namespace A321104.P7094436731057718221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 2 (A321091 n).toNat ^ 2)

end

end A321104.P7094436731057718221

/-! ## A321104.P5620766178132541711

`ceil(tan(tan(A321093(n))+1))`
-/

namespace A321104.P5620766178132541711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Real.tan (A321093 n : ℝ) + 1)⌉

end

end A321104.P5620766178132541711

/-! ## A321104.P8639505629986571522

`A321103(A064429(n))`
-/

namespace A321104.P8639505629986571522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321103 (A064429 n).toNat

end

end A321104.P8639505629986571522

/-! ## A321104.P457487226118731274

`A321103(A244477(n+1))`
-/

namespace A321104.P457487226118731274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321103 (A244477 (n + 1)).toNat

end

end A321104.P457487226118731274

/-! ## A321104.P4737630982414763351

`A004483(a(A321090(n)))` with `a(0)=1`
-/

namespace A321104.P4737630982414763351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004483 (a (A321090 n).toNat).toNat

end

end A321104.P4737630982414763351

/-! ## A321104.P16785980886958770847

`A321090(a(A321090(n)))` with `a(0)=1`
-/

namespace A321104.P16785980886958770847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321090 (a (A321090 n).toNat).toNat

end

end A321104.P16785980886958770847

/-! ## A321104.P6420465124986257943

`A033484(n)%A321095(n)`
-/

namespace A321104.P6420465124986257943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033484 n) (A321095 n)

end

end A321104.P6420465124986257943

/-! ## A321104.P13299296839863434663

`A040156(n)%A321093(n)`
-/

namespace A321104.P13299296839863434663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040156 n) (A321093 n)

end

end A321104.P13299296839863434663

/-! ## A321104.P6403832161759411614

`A040600(n)%A321095(n)`
-/

namespace A321104.P6403832161759411614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040600 n) (A321095 n)

end

end A321104.P6403832161759411614

/-! ## A321104.P6074800237524278281

`A048489(n)%A321095(n)`
-/

namespace A321104.P6074800237524278281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048489 n) (A321095 n)

end

end A321104.P6074800237524278281

/-! ## A321104.P10486810644123230525

`A099003(n)%A321095(n)`
-/

namespace A321104.P10486810644123230525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099003 n) (A321095 n)

end

end A321104.P10486810644123230525

/-! ## A321104.P6718403884035904254

`A121671(n)%A321093(n)`
-/

namespace A321104.P6718403884035904254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121671 n) (A321093 n)

end

end A321104.P6718403884035904254

/-! ## A321104.P13467059898669869501

`A130196(n)%A321093(n)`
-/

namespace A321104.P13467059898669869501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130196 n) (A321093 n)

end

end A321104.P13467059898669869501

/-!
# A321106: Digits of one of the three 13-adic integers 5^(1/3) that is related to A320914.

The programs for A321106, there is no canonical definition to state claims against.
-/

/-! ## A321106.P2216428920884773864

`(A320914(n+1)-A320914(n))/13^n`
-/

namespace A321106.P2216428920884773864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320914 (n + 1) - A320914 n : ℚ) / (13 ^ n : ℚ)

end

end A321106.P2216428920884773864

/-!
# A321107: Digits of one of the three 13-adic integers 5^(1/3) that is related to A320915.

The programs for A321107, there is no canonical definition to state claims against.
-/

/-! ## A321107.P16264136106095152447

`(A320915(n+1)-A320915(n))/13^n`
-/

namespace A321107.P16264136106095152447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320915 (n + 1) - A320915 n : ℚ) / (13 ^ n : ℚ)

end

end A321107.P16264136106095152447

/-! ## A321107.P5237167071664598488

`Δ[A320915(n)]/A001022(n)`
-/

namespace A321107.P5237167071664598488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320915 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A001022 n : ℚ)

end

end A321107.P5237167071664598488

/-!
# A321108: Digits of one of the three 13-adic integers 5^(1/3) that is related to A321105.

The programs for A321108, there is no canonical definition to state claims against.
-/

/-! ## A321108.P10180562018243127228

`(A321105(n+1)-A321105(n))/13^n`
-/

namespace A321108.P10180562018243127228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321105 (n + 1) - A321105 n : ℚ) / (13 ^ n : ℚ)

end

end A321108.P10180562018243127228

/-! ## A321108.P18270864304902984943

`Δ[A321105(n)]%12`
-/

namespace A321108.P18270864304902984943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 12

end

end A321108.P18270864304902984943

/-! ## A321108.P14920997848307529130

`(A321105(n+1)-A321105(n))%12`
-/

namespace A321108.P14920997848307529130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321105 (n + 1) - A321105 n) 12

end

end A321108.P14920997848307529130

/-!
# A321110: Number of permutations p of [n] such that in 0p the largest up-jump equals three and no down-jump is larger than 2.

The programs for A321110, there is no canonical definition to state claims against.
-/

/-! ## A321110.P459117440085755149

`A291680(A167614(n+2))`
-/

namespace A321110.P459117440085755149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A167614 (n + 2)).toNat

end

end A321110.P459117440085755149

/-! ## A321110.P13985136599170563416

`A291680(A052905(n)+8)`
-/

namespace A321110.P13985136599170563416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A052905 n + 8).toNat

end

end A321110.P13985136599170563416

/-! ## A321110.P1514303362097922824

`A291680(eq[3, A002262(n)])`
-/

namespace A321110.P1514303362097922824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321110.P1514303362097922824

/-! ## A321110.P10578722356772261553

`A291680(A167499(n+2)-2)`
-/

namespace A321110.P10578722356772261553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A167499 (n + 2) - 2).toNat

end

end A321110.P10578722356772261553

/-! ## A321110.P160169202895776009

`A291680(A089071(n+5)+1)`
-/

namespace A321110.P160169202895776009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A089071 (n + 5) + 1).toNat

end

end A321110.P160169202895776009

/-! ## A321110.P17569806389154914086

`A291680(A008585(n+3)+∑[n])`
-/

namespace A321110.P17569806389154914086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A008585 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A321110.P17569806389154914086

/-! ## A321110.P16464699837718923092

`A291680(eq[1, A144328(n+1)-2])`
-/

namespace A321110.P16464699837718923092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321110.P16464699837718923092

/-! ## A321110.P2815374144164304682

`A291680(eq[2, A002260(n+1)-2])`
-/

namespace A321110.P2815374144164304682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321110.P2815374144164304682

/-! ## A321110.P6671537706467579465

`A291680(eq[2, A002260(n+1)/2])`
-/

namespace A321110.P6671537706467579465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A321110.P6671537706467579465

/-! ## A321110.P7950778563255354736

`record[gcd(A288942(n+5), A291680(n+9))]`
-/

namespace A321110.P7950778563255354736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288942 (n + 5)) (A291680 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321110.P7950778563255354736

/-!
# A321111: Number of permutations p of [n] such that in 0p the largest up-jump equals four and no down-jump is larger than 2.

The programs for A321111, there is no canonical definition to state claims against.
-/

/-! ## A321111.P6432178199398845714

`A291680(eq[4, A002262(n)])`
-/

namespace A321111.P6432178199398845714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321111.P6432178199398845714

/-! ## A321111.P7226083465894311499

`A291680(A167499(n+3)-1)`
-/

namespace A321111.P7226083465894311499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A167499 (n + 3) - 1).toNat

end

end A321111.P7226083465894311499

/-! ## A321111.P7364917104538679056

`A291680(A089071(n+6)+2)`
-/

namespace A321111.P7364917104538679056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A089071 (n + 6) + 2).toNat

end

end A321111.P7364917104538679056

/-! ## A321111.P1156285856804180352

`A291680(eq[5, A002260(n+1)])`
-/

namespace A321111.P1156285856804180352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321111.P1156285856804180352

/-! ## A321111.P13674496869814669664

`A291680(eq[2, A144328(n+1)-2])`
-/

namespace A321111.P13674496869814669664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321111.P13674496869814669664

/-! ## A321111.P11331737674337000706

`A291680(eq[2, A144328(n+1)/2])`
-/

namespace A321111.P11331737674337000706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A321111.P11331737674337000706

/-! ## A321111.P17960607983474872150

`A291680(A000217(n+5)-(n+1))`
-/

namespace A321111.P17960607983474872150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A321111.P17960607983474872150

/-! ## A321111.P14558699143478051332

`A291680(n+8+A000217(n+3))`
-/

namespace A321111.P14558699143478051332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 ((n + 8 : ℤ) + A000217 (n + 3)).toNat

end

end A321111.P14558699143478051332

/-!
# A321112: Number of permutations p of [n] such that in 0p the largest up-jump equals five and no down-jump is larger than 2.

The programs for A321112, there is no canonical definition to state claims against.
-/

/-! ## A321112.P5932040211287700663

`A291680(A167499(n+4))`
-/

namespace A321112.P5932040211287700663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A167499 (n + 4)).toNat

end

end A321112.P5932040211287700663

/-! ## A321112.P7163410446719147118

`A291680(A052905(n+2)+10)`
-/

namespace A321112.P7163410446719147118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A052905 (n + 2) + 10).toNat

end

end A321112.P7163410446719147118

/-! ## A321112.P16687091289265526438

`A291680(A000217(n+6)-(n+1))`
-/

namespace A321112.P16687091289265526438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A321112.P16687091289265526438

/-! ## A321112.P14164995196429139312

`A291680(A089071(n+4)+A008585(n+5))`
-/

namespace A321112.P14164995196429139312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A089071 (n + 4) + A008585 (n + 5)).toNat

end

end A321112.P14164995196429139312

/-! ## A321112.P13015361431727479588

`A291680(A005843(n+7)+A000217(n+3))`
-/

namespace A321112.P13015361431727479588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A005843 (n + 7) + A000217 (n + 3)).toNat

end

end A321112.P13015361431727479588

/-!
# A321113: Number of permutations p of [n] such that in 0p the largest up-jump equals six and no down-jump is larger than 2.

The programs for A321113, there is no canonical definition to state claims against.
-/

/-! ## A321113.P2715857247266133108

`A291680(eq[64, A059268(n)])`
-/

namespace A321113.P2715857247266133108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321113.P2715857247266133108

/-! ## A321113.P841816421331987367

`A291680(A167499(n+5)+1)`
-/

namespace A321113.P841816421331987367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A167499 (n + 5) + 1).toNat

end

end A321113.P841816421331987367

/-! ## A321113.P17839971728426722626

`A291680(7-A080956(n+7))`
-/

namespace A321113.P17839971728426722626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (7 - A080956 (n + 7)).toNat

end

end A321113.P17839971728426722626

/-! ## A321113.P15033919856949327590

`A291680(A000217(n+7)-(n+1))`
-/

namespace A321113.P15033919856949327590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A321113.P15033919856949327590

/-! ## A321113.P12074004152676637613

`A291680(A038722(A052905(n+4)))`
-/

namespace A321113.P12074004152676637613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A038722 (A052905 (n + 4)).toNat).toNat

end

end A321113.P12074004152676637613

/-! ## A321113.P4076072106407167382

`A291680(A008586(n+6)+A000217(n+2))`
-/

namespace A321113.P4076072106407167382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A008586 (n + 6) + A000217 (n + 2)).toNat

end

end A321113.P4076072106407167382

/-!
# A321114: Number of permutations p of [n] such that in 0p the largest up-jump equals seven and no down-jump is larger than 2.

The programs for A321114, there is no canonical definition to state claims against.
-/

/-! ## A321114.P11653051058847105670

`A291680(eq[7, A002262(n)])`
-/

namespace A321114.P11653051058847105670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321114.P11653051058847105670

/-! ## A321114.P14944807442983315899

`A291680(A167499(n+6)+2)`
-/

namespace A321114.P14944807442983315899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A167499 (n + 6) + 2).toNat

end

end A321114.P14944807442983315899

/-! ## A321114.P889400571484692166

`A291680(A133263(n+7)+5)`
-/

namespace A321114.P889400571484692166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A133263 (n + 7) + 5).toNat

end

end A321114.P889400571484692166

/-! ## A321114.P4228780775981714645

`A291680(A000217(n+7)+7)`
-/

namespace A321114.P4228780775981714645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000217 (n + 7) + 7).toNat

end

end A321114.P4228780775981714645

/-! ## A321114.P14678606456584515833

`A291680(eq[8, A002260(n+1)])`
-/

namespace A321114.P14678606456584515833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321114.P14678606456584515833

/-! ## A321114.P17527991527530729564

`A291680(A046691(n+6)-(n-3))`
-/

namespace A321114.P17527991527530729564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A046691 (n + 6) - ((n : ℤ) - 3)).toNat

end

end A321114.P17527991527530729564

/-! ## A321114.P17496923060237569969

`A291680(A152948(n+10)-(n+3))`
-/

namespace A321114.P17496923060237569969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A152948 (n + 10) - (n + 3 : ℤ)).toNat

end

end A321114.P17496923060237569969

/-!
# A321115: Number of permutations p of [n] such that in 0p the largest up-jump equals eight and no down-jump is larger than 2.

The programs for A321115, there is no canonical definition to state claims against.
-/

/-! ## A321115.P11111598115936496809

`A291680(A000124(n+8)+7)`
-/

namespace A321115.P11111598115936496809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000124 (n + 8) + 7).toNat

end

end A321115.P11111598115936496809

/-! ## A321115.P15834444452757409246

`A291680(A000096(n+7)+9)`
-/

namespace A321115.P15834444452757409246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000096 (n + 7) + 9).toNat

end

end A321115.P15834444452757409246

/-! ## A321115.P9184218917854653690

`A291680(A000217(n+9)-(n+1))`
-/

namespace A321115.P9184218917854653690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A321115.P9184218917854653690

/-! ## A321115.P5865907501216788637

`A291680(A055998(n+7)-(n-2))`
-/

namespace A321115.P5865907501216788637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A055998 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A321115.P5865907501216788637

/-! ## A321115.P13355565372214793015

`A291680(A089071(n+7)+A008585(n+9))`
-/

namespace A321115.P13355565372214793015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A089071 (n + 7) + A008585 (n + 9)).toNat

end

end A321115.P13355565372214793015

/-!
# A321116: Number of permutations p of [n] such that in 0p the largest up-jump equals nine xx and no down-jump is larger than 2.

The programs for A321116, there is no canonical definition to state claims against.
-/

/-! ## A321116.P7528811859288838297

`A291680(eq[9, A002262(n)])`
-/

namespace A321116.P7528811859288838297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321116.P7528811859288838297

/-! ## A321116.P2198196136386945556

`A291680(A000096(n+8)+10)`
-/

namespace A321116.P2198196136386945556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000096 (n + 8) + 10).toNat

end

end A321116.P2198196136386945556

/-! ## A321116.P12233311685041317516

`A291680(A000217(n+9)+9)`
-/

namespace A321116.P12233311685041317516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000217 (n + 9) + 9).toNat

end

end A321116.P12233311685041317516

/-! ## A321116.P3523076654238243195

`A291680(eq[10, A002260(n+1)])`
-/

namespace A321116.P3523076654238243195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321116.P3523076654238243195

/-! ## A321116.P7889965903233282688

`A291680(A000124(n+10)-(n+2))`
-/

namespace A321116.P7889965903233282688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A321116.P7889965903233282688

/-!
# A321117: Number of permutations p of [n] such that in 0p the largest up-jump equals ten and no down-jump is larger than 2.

The programs for A321117, there is no canonical definition to state claims against.
-/

/-! ## A321117.P17150588064646559536

`A291680(eq[10, A002262(n)])`
-/

namespace A321117.P17150588064646559536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321117.P17150588064646559536

/-! ## A321117.P5452082899032969364

`A291680(eq[10, A144328(n+1)])`
-/

namespace A321117.P5452082899032969364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321117.P5452082899032969364

/-! ## A321117.P9956765581062971424

`A291680(eq[11, A002260(n+1)])`
-/

namespace A321117.P9956765581062971424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321117.P9956765581062971424

/-! ## A321117.P7873129555867898722

`A291680(A034856(n+10)-(n-1))`
-/

namespace A321117.P7873129555867898722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A034856 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A321117.P7873129555867898722

/-! ## A321117.P17510724253705744321

`A291680(A008586(n+11)+A000217(n+6))`
-/

namespace A321117.P17510724253705744321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A008586 (n + 11) + A000217 (n + 6)).toNat

end

end A321117.P17510724253705744321

/-!
# A321119: a(n) = ((1 - sqrt(3))^n + (1 + sqrt(3))^n)/2^floor((n - 1)/2); n-th row common denominator of A321118.

The programs for A321119, the canonical program `A321119.P4966666294206585193` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321119 has offset 0).

The definition of A321119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321119.P4966666294206585193

`4*a(n-2)-a(n-4)` with `a(0)=4, a(1)=2, a(2)=8, a(3)=10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321119

/-- `4*a(n-2)-a(n-4)` -/
def P4966666294206585193.Spec : Prop :=
  ∀ n, P4966666294206585193.a n = A321119 n

theorem P4966666294206585193.correct : P4966666294206585193.Spec := by
  intro n
  simp only [A321119]

end A321119

/-! ## A321119.P1248837358380094586

`2*A000034(n+1)*A002531(n)`
-/

namespace A321119.P1248837358380094586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000034 (n + 1) * A002531 n

end

end A321119.P1248837358380094586

namespace A321119

/-- `2*A000034(n+1)*A002531(n)` -/
def P1248837358380094586.Spec : Prop :=
  ∀ n, P1248837358380094586.a n = A321119 n

end A321119

/-! ## A321119.P9325634906498475252

`((1-sqrt(3))^n+(1+sqrt(3))^n)/2^floor((n-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A321119.P9325634906498475252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (3 : ℝ)) ^ n + (1 + Real.sqrt (3 : ℝ)) ^ n) / ((2 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℤ) : ℝ)

end

end A321119.P9325634906498475252

namespace A321119

/-- `((1-sqrt(3))^n+(1+sqrt(3))^n)/2^floor((n-1)/2)` -/
def P9325634906498475252.Spec : Prop :=
  ∀ n, P9325634906498475252.a n = (A321119 n : ℝ)

end A321119

/-! ## A321119.P17355887993783770696

`a(n-2)+lcm(4, a(n-1))` with `a(0)=4, a(1)=2`
-/

namespace A321119.P17355887993783770696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A321119.P17355887993783770696

namespace A321119

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P17355887993783770696.Spec : Prop :=
  ∀ n, (P17355887993783770696.a n : ℤ) = A321119 n

end A321119

/-! ## A321119.P12635705477558894836

`2*gcd(2, n)*A002531(n)`
-/

namespace A321119.P12635705477558894836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.gcd 2 n : ℤ) * A002531 n

end

end A321119.P12635705477558894836

namespace A321119

/-- `2*gcd(2, n)*A002531(n)` -/
def P12635705477558894836.Spec : Prop :=
  ∀ n, P12635705477558894836.a n = A321119 n

end A321119

/-! ## A321119.P15417185064263389158

`A002531(n)*A105397(n)`
-/

namespace A321119.P15417185064263389158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n * A105397 n

end

end A321119.P15417185064263389158

namespace A321119

/-- `A002531(n)*A105397(n)` -/
def P15417185064263389158.Spec : Prop :=
  ∀ n, P15417185064263389158.a n = A321119 n

end A321119

/-! ## A321119.P1901767945157702646

`(4-A010673(n))*A002531(n)`
-/

namespace A321119.P1901767945157702646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A010673 n) * A002531 n

end

end A321119.P1901767945157702646

namespace A321119

/-- `(4-A010673(n))*A002531(n)` -/
def P1901767945157702646.Spec : Prop :=
  ∀ n, P1901767945157702646.a n = A321119 n

end A321119

/-! ## A321119.P3670362492668866495

`Δ[A007310(n+1)]*A002531(n)`
-/

namespace A321119.P3670362492668866495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002531 n

end

end A321119.P3670362492668866495

namespace A321119

/-- `Δ[A007310(n+1)]*A002531(n)` -/
def P3670362492668866495.Spec : Prop :=
  ∀ n, P3670362492668866495.a n = A321119 n

end A321119

/-! ## A321119.P764140125482375823

`2*A002531(n)*Δ[A007494(n)]`
-/

namespace A321119.P764140125482375823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002531 n * (f1 (n + 1) - f1 n)

end

end A321119.P764140125482375823

namespace A321119

/-- `2*A002531(n)*Δ[A007494(n)]` -/
def P764140125482375823.Spec : Prop :=
  ∀ n, P764140125482375823.a n = A321119 n

end A321119

/-!
# A321123: a(n) = 2^n + 2*n^2 + 2*n + 1.

The programs for A321123, the canonical program `A321123.P14839465274714158412` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321123 has offset 0).

The definition of A321123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+2*n²+2*n+1` (program `A321123.P14839465274714158412`, by `A321123.P14839465274714158412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321123.P14839465274714158412

`2^n+2*n²+2*n+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321123

/-- `2^n+2*n²+2*n+1` -/
def P14839465274714158412.Spec : Prop :=
  ∀ n, (P14839465274714158412.a n : ℤ) = A321123 n

theorem P14839465274714158412.correct : P14839465274714158412.Spec := by
  intro n
  simp only [A321123]

end A321123

/-! ## A321123.P8048410947153250283

`∑[∑[2*(a(n-1)-2)]]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A321123.P8048410947153250283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n f2 =>
  2 * (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321123.P8048410947153250283

namespace A321123

/-- `∑[∑[2*(a(n-1)-2)]]` -/
def P8048410947153250283.Spec : Prop :=
  ∀ n, P8048410947153250283.a n = A321123 n

end A321123

/-! ## A321123.P10653430460424759666

`∑[∑[a(n-1)+a(n-1)-4]]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A321123.P10653430460424759666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321123.P10653430460424759666

namespace A321123

/-- `∑[∑[a(n-1)+a(n-1)-4]]` -/
def P10653430460424759666.Spec : Prop :=
  ∀ n, P10653430460424759666.a n = A321123 n

end A321123

/-! ## A321123.P3053088915311615842

`∑[∑[a(n-1)-(4-a(n-1))]]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A321123.P3053088915311615842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n f2 =>
  f2 (n - 1) - (4 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321123.P3053088915311615842

namespace A321123

/-- `∑[∑[a(n-1)-(4-a(n-1))]]` -/
def P3053088915311615842.Spec : Prop :=
  ∀ n, P3053088915311615842.a n = A321123 n

end A321123

/-! ## A321123.P13748604671830957209

`∑[A011782(n)+A004277(2*n)]`
-/

namespace A321123.P13748604671830957209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A004277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321123.P13748604671830957209

namespace A321123

/-- `∑[A011782(n)+A004277(2*n)]` -/
def P13748604671830957209.Spec : Prop :=
  ∀ n, P13748604671830957209.a n = A321123 n

end A321123

/-! ## A321123.P9340954292943839961

`∑[A131577(n)+2*A004277(n)]`
-/

namespace A321123.P9340954292943839961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + 2 * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321123.P9340954292943839961

namespace A321123

/-- `∑[A131577(n)+2*A004277(n)]` -/
def P9340954292943839961.Spec : Prop :=
  ∀ n, P9340954292943839961.a n = A321123 n

end A321123

/-! ## A321123.P16837627625939336688

`∑[A166444(n+1)+A004277(2*n)]`
-/

namespace A321123.P16837627625939336688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + A004277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321123.P16837627625939336688

namespace A321123

/-- `∑[A166444(n+1)+A004277(2*n)]` -/
def P16837627625939336688.Spec : Prop :=
  ∀ n, P16837627625939336688.a n = A321123 n

end A321123

/-! ## A321123.P15786183115677060382

`((2*n+1)²+A000051(n+1))/2`
-/

namespace A321123.P15786183115677060382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) ^ 2 : ℤ) + A000051 (n + 1) : ℚ) / 2

end

end A321123.P15786183115677060382

namespace A321123

/-- `((2*n+1)²+A000051(n+1))/2` -/
def P15786183115677060382.Spec : Prop :=
  ∀ n, P15786183115677060382.a n = (A321123 n : ℚ)

end A321123

/-! ## A321123.P5439503892710058746

`(A086341(2*n+1)+(2*n+1)²)/2`
-/

namespace A321123.P5439503892710058746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086341 (2 * n + 1) + ((2 * n + 1) ^ 2 : ℤ) : ℚ) / 2

end

end A321123.P5439503892710058746

namespace A321123

/-- `(A086341(2*n+1)+(2*n+1)²)/2` -/
def P5439503892710058746.Spec : Prop :=
  ∀ n, P5439503892710058746.a n = (A321123 n : ℚ)

end A321123

/-! ## A321123.P17671361425161276044

`(A002522(2*n+1)+A000079(n+1))/2`
-/

namespace A321123.P17671361425161276044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (2 * n + 1) + A000079 (n + 1) : ℚ) / 2

end

end A321123.P17671361425161276044

namespace A321123

/-- `(A002522(2*n+1)+A000079(n+1))/2` -/
def P17671361425161276044.Spec : Prop :=
  ∀ n, P17671361425161276044.a n = (A321123 n : ℚ)

end A321123

/-!
# A321124: a(n) = (4*n^3 - 6*n^2 + 14*n + 3)/3.

The programs for A321124, the canonical program `A321124.P5757515326238750119` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321124 has offset 0).

The definition of A321124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n^3-6*n²+14*n+3)/3` (program `A321124.P2173803541125609097`, by `A321124.P2173803541125609097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321124.P2173803541125609097

`(4*n^3-6*n²+14*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A321124.P2173803541125609097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (14 * n : ℤ) + 3 : ℚ) / 3

end

end A321124.P2173803541125609097

namespace A321124

/-- `(4*n^3-6*n²+14*n+3)/3` -/
def P2173803541125609097.Spec : Prop :=
  ∀ n, P2173803541125609097.a n = (A321124 n : ℚ)

theorem P2173803541125609097.correct : P2173803541125609097.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A321124, Nat.add_sub_cancel, A321124.P2173803541125609097.a, A321124.P5757515326238750119.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A321124, Nat.add_sub_cancel, A321124.P2173803541125609097.a, A321124.P5757515326238750119.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A321124

/-! ## A321124.P5757515326238750119

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=33`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321124

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5757515326238750119.Spec : Prop :=
  ∀ n, P5757515326238750119.a n = A321124 n

theorem P5757515326238750119.correct : P5757515326238750119.Spec := by
  intro n
  simp only [A321124]

end A321124

/-! ## A321124.P18365452650162203867

`a(n-1)+A128445(n+1)` with `a(0)=1, a(1)=5`
-/

namespace A321124.P18365452650162203867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + A128445 (n + 1)

end

end A321124.P18365452650162203867

namespace A321124

/-- `a(n-1)+A128445(n+1)` -/
def P18365452650162203867.Spec : Prop :=
  ∀ n, P18365452650162203867.a n = A321124 n

end A321124

/-! ## A321124.P1597748378252786275

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A321124.P1597748378252786275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321124.P1597748378252786275

namespace A321124

/-- `∑[∑[a(n-1)+8]]` -/
def P1597748378252786275.Spec : Prop :=
  ∀ n, (P1597748378252786275.a n : ℤ) = A321124 n

end A321124

/-! ## A321124.P13852936704993751575

`C(2*n, 3)+4*n+1`
-/

namespace A321124.P13852936704993751575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + (4 * n + 1)

end

end A321124.P13852936704993751575

namespace A321124

/-- `C(2*n, 3)+4*n+1` -/
def P13852936704993751575.Spec : Prop :=
  ∀ n, (P13852936704993751575.a n : ℤ) = A321124 n

end A321124

/-! ## A321124.P4068425900123889021

`A161712(n)+2*n`
-/

namespace A321124.P4068425900123889021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n + (2 * n : ℤ)

end

end A321124.P4068425900123889021

namespace A321124

/-- `A161712(n)+2*n` -/
def P4068425900123889021.Spec : Prop :=
  ∀ n, P4068425900123889021.a n = A321124 n

end A321124

/-! ## A321124.P4743698583782533372

`A322597(n)-2*n`
-/

namespace A321124.P4743698583782533372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322597 n - (2 * n : ℤ)

end

end A321124.P4743698583782533372

namespace A321124

/-- `A322597(n)-2*n` -/
def P4743698583782533372.Spec : Prop :=
  ∀ n, P4743698583782533372.a n = A321124 n

end A321124

/-! ## A321124.P12534081704109588065

`A161707(n)+n²+n`
-/

namespace A321124.P12534081704109588065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161707 n + (n ^ 2 + n : ℤ)

end

end A321124.P12534081704109588065

namespace A321124

/-- `A161707(n)+n²+n` -/
def P12534081704109588065.Spec : Prop :=
  ∀ n, P12534081704109588065.a n = A321124 n

end A321124

/-! ## A321124.P13440837536755330629

`4*A081490(n+1)-3`
-/

namespace A321124.P13440837536755330629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081490 (n + 1) - 3

end

end A321124.P13440837536755330629

namespace A321124

/-- `4*A081490(n+1)-3` -/
def P13440837536755330629.Spec : Prop :=
  ∀ n, P13440837536755330629.a n = A321124 n

end A321124

/-! ## A321124.P17788395610386190468

`A161703(n)+A001105(n)`
-/

namespace A321124.P17788395610386190468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n + A001105 n

end

end A321124.P17788395610386190468

namespace A321124

/-- `A161703(n)+A001105(n)` -/
def P17788395610386190468.Spec : Prop :=
  ∀ n, P17788395610386190468.a n = A321124 n

end A321124

/-! ## A321124.P13586619998585244710

`A242659(n)+A064999(n)`
-/

namespace A321124.P13586619998585244710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 n + A064999 n

end

end A321124.P13586619998585244710

namespace A321124

/-- `A242659(n)+A064999(n)` -/
def P13586619998585244710.Spec : Prop :=
  ∀ n, P13586619998585244710.a n = A321124 n

end A321124

/-! ## A321124.P684946083120412086

`A275876(n)+A059993(n)`
-/

namespace A321124.P684946083120412086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275876 n + A059993 n

end

end A321124.P684946083120412086

namespace A321124

/-- `A275876(n)+A059993(n)` -/
def P684946083120412086.Spec : Prop :=
  ∀ n, P684946083120412086.a n = A321124 n

end A321124

/-! ## A321124.P13386270909126250918

`A394192(n)+A109620(n)`
-/

namespace A321124.P13386270909126250918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394192 n + A109620 n

end

end A321124.P13386270909126250918

namespace A321124

/-- `A394192(n)+A109620(n)` -/
def P13386270909126250918.Spec : Prop :=
  ∀ n, P13386270909126250918.a n = A321124 n

end A321124

/-! ## A321124.P2126405084504742636

`A001845(n)-A002939(n)`
-/

namespace A321124.P2126405084504742636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - A002939 n

end

end A321124.P2126405084504742636

namespace A321124

/-- `A001845(n)-A002939(n)` -/
def P2126405084504742636.Spec : Prop :=
  ∀ n, P2126405084504742636.a n = A321124 n

end A321124

/-! ## A321124.P13622684761962566199

`A100503(n)-A014107(n)`
-/

namespace A321124.P13622684761962566199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 n - A014107 n

end

end A321124.P13622684761962566199

namespace A321124

/-- `A100503(n)-A014107(n)` -/
def P13622684761962566199.Spec : Prop :=
  ∀ n, P13622684761962566199.a n = A321124 n

end A321124

/-! ## A321124.P16834278082873961527

`A098931(n)-A135706(n)`
-/

namespace A321124.P16834278082873961527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098931 n - A135706 n

end

end A321124.P16834278082873961527

namespace A321124

/-- `A098931(n)-A135706(n)` -/
def P16834278082873961527.Spec : Prop :=
  ∀ n, P16834278082873961527.a n = A321124 n

end A321124

/-! ## A321124.P13815381121449236905

`A273316(n)-A033579(n)`
-/

namespace A321124.P13815381121449236905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n - A033579 n

end

end A321124.P13815381121449236905

namespace A321124

/-- `A273316(n)-A033579(n)` -/
def P13815381121449236905.Spec : Prop :=
  ∀ n, P13815381121449236905.a n = A321124 n

end A321124

/-! ## A321124.P10957811907844045304

`A273408(n)-A051866(n)`
-/

namespace A321124.P10957811907844045304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n - A051866 n

end

end A321124.P10957811907844045304

namespace A321124

/-- `A273408(n)-A051866(n)` -/
def P10957811907844045304.Spec : Prop :=
  ∀ n, P10957811907844045304.a n = A321124 n

end A321124

/-! ## A321124.P4811880907304264839

`A270109(n)-A161702(n)`
-/

namespace A321124.P4811880907304264839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 n - A161702 n

end

end A321124.P4811880907304264839

namespace A321124

/-- `A270109(n)-A161702(n)` -/
def P4811880907304264839.Spec : Prop :=
  ∀ n, P4811880907304264839.a n = A321124 n

end A321124

/-!
# A321125: T(n,k) = b(n+k) - (2*b(n)*b(k) + 1)*b(n*k) + b(n) + b(k) + 1, where b(n) = A154272(n+1), square array read by antidiagonals (n >= 0, k >= 0).

The programs for A321125, there is no canonical definition to state claims against.
-/

/-! ## A321125.P131427053554895506

`floor((gcd(A106314(n+1), A146985(n))+1)/4)+1`
-/

namespace A321125.P131427053554895506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A106314 (n + 1)) (A146985 n) + 1 : ℚ) / 4⌋ + 1

end

end A321125.P131427053554895506

/-! ## A321125.P740557570631018681

`A003056(gcd(A106314(n+1), A146985(n)))`
-/

namespace A321125.P740557570631018681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.gcd (A106314 (n + 1)) (A146985 n))

end

end A321125.P740557570631018681

/-! ## A321125.P13205423984326138224

`A089309(A131816(n)^A139039(n+1))`
-/

namespace A321125.P13205423984326138224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (SequenceMachineLib.roundAway ((A131816 n : ℚ) ^ (A139039 (n + 1) : ℤ))).toNat

end

end A321125.P13205423984326138224

/-! ## A321125.P18271031666199502378

`gcd(A046691(A255256(n)), A196636(n+1))`
-/

namespace A321125.P18271031666199502378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046691 (A255256 n).toNat) (A196636 (n + 1))

end

end A321125.P18271031666199502378

/-! ## A321125.P12290244910582688333

`A249622(A176151(n))`
-/

namespace A321125.P12290244910582688333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249622 (A176151 n).toNat

end

end A321125.P12290244910582688333

/-!
# A321126: T(n,k) = max(n + k - 1, n + 1, k + 1), square array read by antidiagonals (n >= 0, k >= 0).

The programs for A321126, the canonical program `A321126.P14066431078596286200` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321126 has offset 0).

The definition of A321126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321126.P14066431078596286200

`A049581(n)+A004280(A003983(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A321126

/-- `A049581(n)+A004280(A003983(n+1))` -/
def P14066431078596286200.Spec : Prop :=
  ∀ n, P14066431078596286200.a n = A321126 n

theorem P14066431078596286200.correct : P14066431078596286200.Spec := by
  intro n
  simp only [A321126]

end A321126

/-! ## A321126.P7551969343741454372

`A289207(A004197(n))+A051125(n+1)`
-/

namespace A321126.P7551969343741454372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A004197 n).toNat + A051125 (n + 1)

end

end A321126.P7551969343741454372

namespace A321126

/-- `A289207(A004197(n))+A051125(n+1)` -/
def P7551969343741454372.Spec : Prop :=
  ∀ n, P7551969343741454372.a n = A321126 n

end A321126

/-! ## A321126.P15563680242874832284

`A002024(n+1)-A130130(A004197(n))`
-/

namespace A321126.P15563680242874832284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A130130 (A004197 n).toNat

end

end A321126.P15563680242874832284

namespace A321126

/-- `A002024(n+1)-A130130(A004197(n))` -/
def P15563680242874832284.Spec : Prop :=
  ∀ n, P15563680242874832284.a n = A321126 n

end A321126

/-! ## A321126.P1550835864951330326

`A004280(A003983(n+1))+A051125(n+1)-A003983(n+1)`
-/

namespace A321126.P1550835864951330326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A003983 (n + 1)).toNat + (A051125 (n + 1) - A003983 (n + 1))

end

end A321126.P1550835864951330326

namespace A321126

/-- `A004280(A003983(n+1))+A051125(n+1)-A003983(n+1)` -/
def P1550835864951330326.Spec : Prop :=
  ∀ n, P1550835864951330326.a n = A321126 n

end A321126

/-! ## A321126.P4018906727443605573

`A003057(n+2)-A240236(A168281(n+1))`
-/

namespace A321126.P4018906727443605573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A240236 (A168281 (n + 1)).toNat

end

end A321126.P4018906727443605573

namespace A321126

/-- `A003057(n+2)-A240236(A168281(n+1))` -/
def P4018906727443605573.Spec : Prop :=
  ∀ n, P4018906727443605573.a n = A321126 n

end A321126

/-! ## A321126.P15404106554742383746

`A002024(n+1)-A324810(A152714(n))`
-/

namespace A321126.P15404106554742383746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A324810 (A152714 n).toNat

end

end A321126.P15404106554742383746

namespace A321126

/-- `A002024(n+1)-A324810(A152714(n))` -/
def P15404106554742383746.Spec : Prop :=
  ∀ n, P15404106554742383746.a n = A321126 n

end A321126

/-! ## A321126.P18342760834030881277

`A277329(A099627(n))`
-/

namespace A321126.P18342760834030881277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 (A099627 n).toNat

end

end A321126.P18342760834030881277

namespace A321126

/-- `A277329(A099627(n))` -/
def P18342760834030881277.Spec : Prop :=
  ∀ n, P18342760834030881277.a n = A321126 n

end A321126

/-! ## A321126.P4358462190534524626

`A057526(2*A099627(n))`
-/

namespace A321126.P4358462190534524626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (2 * A099627 n).toNat

end

end A321126.P4358462190534524626

namespace A321126

/-- `A057526(2*A099627(n))` -/
def P4358462190534524626.Spec : Prop :=
  ∀ n, P4358462190534524626.a n = A321126 n

end A321126

/-! ## A321126.P15771770588603973562

`A139039(n+1)+A003984(n)`
-/

namespace A321126.P15771770588603973562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (n + 1) + A003984 n

end

end A321126.P15771770588603973562

namespace A321126

/-- `A139039(n+1)+A003984(n)` -/
def P15771770588603973562.Spec : Prop :=
  ∀ n, P15771770588603973562.a n = A321126 n

end A321126

/-! ## A321126.P9536042834042580207

`A139039(n+1)+A087061(n)`
-/

namespace A321126.P9536042834042580207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (n + 1) + A087061 n

end

end A321126.P9536042834042580207

namespace A321126

/-- `A139039(n+1)+A087061(n)` -/
def P9536042834042580207.Spec : Prop :=
  ∀ n, P9536042834042580207.a n = A321126 n

end A321126

/-!
# A321127: Irregular triangle read by rows: row n gives the coefficients in the expansion of ((x + 1)^(2*n) + (x^2 - 1)*(2*(x + 1)^n - 1))/x.

The programs for A321127, there is no canonical definition to state claims against.
-/

/-! ## A321127.P14612912006509920481

`round(A110441(n)/A122553(A011377(n)))`
-/

namespace A321127.P14612912006509920481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110441 n : ℚ) / (A122553 (A011377 n).toNat : ℚ))

end

end A321127.P14612912006509920481

/-! ## A321127.P7380289801997696297

`round(A110441(n)/A122553(A033484(n)))`
-/

namespace A321127.P7380289801997696297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110441 n : ℚ) / (A122553 (A033484 n).toNat : ℚ))

end

end A321127.P7380289801997696297

/-!
# A321129: Numerator of Sum_{k=1..n} (k*sin((Pi*k)/3))/sqrt(3).

The programs for A321129, the canonical program `A321129.P12956729988665629902` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321129 has offset 1).

The definition of A321129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321129.P6534014798231062631

`A165202(n)/A177702(A004526(n))`
-/

namespace A321129.P6534014798231062631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165202 n : ℚ) / (A177702 (A004526 n).toNat : ℚ)

end

end A321129.P6534014798231062631

namespace A321129

/-- `A165202(n)/A177702(A004526(n))` -/
def P6534014798231062631.Spec : Prop :=
  ∀ n, P6534014798231062631.a n = (A321129 (n + 1) : ℚ)

end A321129

/-! ## A321129.P7014127816146486791

`A165202(n)/A177702(A026741(n))`
-/

namespace A321129.P7014127816146486791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165202 n : ℚ) / (A177702 (A026741 n).toNat : ℚ)

end

end A321129.P7014127816146486791

namespace A321129

/-- `A165202(n)/A177702(A026741(n))` -/
def P7014127816146486791.Spec : Prop :=
  ∀ n, P7014127816146486791.a n = (A321129 (n + 1) : ℚ)

end A321129

/-! ## A321129.P10735751833151642504

`A165202(n)/A040001(abs(A165202(n)))`
-/

namespace A321129.P10735751833151642504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165202 n : ℚ) / (A040001 |A165202 n|.toNat : ℚ)

end

end A321129.P10735751833151642504

namespace A321129

/-- `A165202(n)/A040001(abs(A165202(n)))` -/
def P10735751833151642504.Spec : Prop :=
  ∀ n, P10735751833151642504.a n = (A321129 (n + 1) : ℚ)

end A321129

/-! ## A321129.P12956729988665629902

`floor(A165202(n)/A000034(A002264(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321129

/-- `floor(A165202(n)/A000034(A002264(n)))` -/
def P12956729988665629902.Spec : Prop :=
  ∀ n, P12956729988665629902.a n = A321129 (n + 1)

theorem P12956729988665629902.correct : P12956729988665629902.Spec := by
  intro n
  simp only [A321129, Nat.add_sub_cancel]

end A321129

/-! ## A321129.P17681655197263746505

`A165202(n)+Δ[A000292(n)]%A165202(n)`
-/

namespace A321129.P17681655197263746505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n + Int.tmod (f1 (n + 1) - f1 n) (A165202 n)

end

end A321129.P17681655197263746505

namespace A321129

/-- `A165202(n)+Δ[A000292(n)]%A165202(n)` -/
def P17681655197263746505.Spec : Prop :=
  ∀ n, P17681655197263746505.a n = A321129 (n + 1)

end A321129

/-! ## A321129.P13005821465506649450

`A165202(n)+A000217(n+1)%A165202(n)`
-/

namespace A321129.P13005821465506649450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n + Int.tmod (A000217 (n + 1)) (A165202 n)

end

end A321129.P13005821465506649450

namespace A321129

/-- `A165202(n)+A000217(n+1)%A165202(n)` -/
def P13005821465506649450.Spec : Prop :=
  ∀ n, P13005821465506649450.a n = A321129 (n + 1)

end A321129

/-! ## A321129.P2346897282139112661

`A165202(n)/A100063(A014681(n))`
-/

namespace A321129.P2346897282139112661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165202 n : ℚ) / (A100063 (A014681 n).toNat : ℚ)

end

end A321129.P2346897282139112661

namespace A321129

/-- `A165202(n)/A100063(A014681(n))` -/
def P2346897282139112661.Spec : Prop :=
  ∀ n, P2346897282139112661.a n = (A321129 (n + 1) : ℚ)

end A321129

/-! ## A321129.P12433986114591157522

`A165202(n)/Δ[A047424(n+2)]`
-/

namespace A321129.P12433986114591157522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165202 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A321129.P12433986114591157522

namespace A321129

/-- `A165202(n)/Δ[A047424(n+2)]` -/
def P12433986114591157522.Spec : Prop :=
  ∀ n, P12433986114591157522.a n = (A321129 (n + 1) : ℚ)

end A321129

/-! ## A321129.P3097711468033235468

`A165202(n)/A040001(A165202(n)²)`
-/

namespace A321129.P3097711468033235468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165202 n : ℚ) / (A040001 (A165202 n ^ 2).toNat : ℚ)

end

end A321129.P3097711468033235468

namespace A321129

/-- `A165202(n)/A040001(A165202(n)²)` -/
def P3097711468033235468.Spec : Prop :=
  ∀ n, P3097711468033235468.a n = (A321129 (n + 1) : ℚ)

end A321129

/-! ## A321129.P8297337626175899363

`A026741(A165202(n)²)/A165202(n)`
-/

namespace A321129.P8297337626175899363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (A165202 n ^ 2).toNat : ℚ) / (A165202 n : ℚ)

end

end A321129.P8297337626175899363

namespace A321129

/-- `A026741(A165202(n)²)/A165202(n)` -/
def P8297337626175899363.Spec : Prop :=
  ∀ n, P8297337626175899363.a n = (A321129 (n + 1) : ℚ)

end A321129

/-!
# A321133: a(n) = 3*a(n-1) + 10*a(n-2), n >= 2; a(0)=-1, a(1)=23.

The programs for A321133, the canonical program `A321133.P15615651330582179958` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321133 has offset 0).

The definition of A321133 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+10*a(n-2)` (program `A321133.P15615651330582179958`, by `A321133.P15615651330582179958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321133.P11069768121828392838

`3*5^n-4*(-2)^n`
-/

namespace A321133.P11069768121828392838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 5 ^ n : ℤ) - 4 * (-2) ^ n

end

end A321133.P11069768121828392838

namespace A321133

/-- `3*5^n-4*(-2)^n` -/
def P11069768121828392838.Spec : Prop :=
  ∀ n, P11069768121828392838.a n = A321133 n

theorem P11069768121828392838.correct : P11069768121828392838.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A321133, Nat.add_sub_cancel, A321133.P11069768121828392838.a, A321133.P15615651330582179958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A321133, Nat.add_sub_cancel, A321133.P11069768121828392838.a, A321133.P15615651330582179958.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A321133

/-! ## A321133.P15615651330582179958

`3*a(n-1)+10*a(n-2)` with `a(0)=-1, a(1)=23`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321133

/-- `3*a(n-1)+10*a(n-2)` -/
def P15615651330582179958.Spec : Prop :=
  ∀ n, P15615651330582179958.a n = A321133 n

theorem P15615651330582179958.correct : P15615651330582179958.Spec := by
  intro n
  simp only [A321133]

end A321133

/-! ## A321133.P15534714132598434831

`Δ[A125833(n)-∑[(-2)^(n+1)]]`
-/

namespace A321133.P15534714132598434831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125833 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321133.P15534714132598434831

namespace A321133

/-- `Δ[A125833(n)-∑[(-2)^(n+1)]]` -/
def P15534714132598434831.Spec : Prop :=
  ∀ n, P15534714132598434831.a n = A321133 n

end A321133

/-!
# A321134: Number of uniform hypergraphs spanning n vertices where every two vertices appear together in some edge.

The programs for A321134, there is no canonical definition to state claims against.
-/

/-! ## A321134.P16645714696015766720

`A110152(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=7`
-/

namespace A321134.P16645714696015766720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 7] fun n a =>
  A110152 (a (n - 1)).toNat

end

end A321134.P16645714696015766720

/-! ## A321134.P11940641851930063499

`A296544(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=7`
-/

namespace A321134.P11940641851930063499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 7] fun n a =>
  A296544 (a (n - 1)).toNat

end

end A321134.P11940641851930063499

/-!
# A321135: Smallest number with multiplicative persistence n in base 14.

The programs for A321135, there is no canonical definition to state claims against.
-/

/-! ## A321135.P10320564777486128727

`A052905(3*n)-A166099(A166106(n+2))`
-/

namespace A321135.P10320564777486128727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (3 * n) - A166099 (A166106 (n + 2)).toNat

end

end A321135.P10320564777486128727

/-!
# A321139: a(n) = [x^(n^2)] Product_{k=1..n} Sum_{m>=0} x^(k*m^2).

The programs for A321139, there is no canonical definition to state claims against.
-/

/-! ## A321139.P4508748027041391117

`A354166(A000903(n+1))`
-/

namespace A321139.P4508748027041391117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (A000903 (n + 1)).toNat

end

end A321139.P4508748027041391117

/-! ## A321139.P712621984639941907

`A354166(A049021(n+1))`
-/

namespace A321139.P712621984639941907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (A049021 (n + 1)).toNat

end

end A321139.P712621984639941907

/-! ## A321139.P13850354848060016426

`A354166(A130275(n)+2)`
-/

namespace A321139.P13850354848060016426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (A130275 n + 2).toNat

end

end A321139.P13850354848060016426

/-! ## A321139.P10432877197973241532

`A354166(A131842(n)+n)`
-/

namespace A321139.P10432877197973241532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (A131842 n + (n : ℤ)).toNat

end

end A321139.P10432877197973241532

/-!
# A321140: a(n) = Sum_{d|n} sigma_3(d).

The programs for A321140, the canonical program `A321140.P752392159174760789` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321140 has offset 1).

The definition of A321140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321140.P752392159174760789

`∑{d}[n+1, A001158(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321140

/-- `∑{d}[n+1, A001158(#)]` -/
def P752392159174760789.Spec : Prop :=
  ∀ n, P752392159174760789.a n = A321140 (n + 1)

theorem P752392159174760789.correct : P752392159174760789.Spec := by
  intro n
  simp only [A321140, Nat.add_sub_cancel]

end A321140

/-! ## A321140.P14087554676858845962

`∑{d}[n+1, A000005(#)*A000578((n+1)/#)]`
-/

namespace A321140.P14087554676858845962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P14087554676858845962

namespace A321140

/-- `∑{d}[n+1, A000005(#)*A000578((n+1)/#)]` -/
def P14087554676858845962.Spec : Prop :=
  ∀ n, P14087554676858845962.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P834162436676897366

`∑{d}[n+1, A000056(#)*A007429((n+1)/#)]`
-/

namespace A321140.P834162436676897366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P834162436676897366

namespace A321140

/-- `∑{d}[n+1, A000056(#)*A007429((n+1)/#)]` -/
def P834162436676897366.Spec : Prop :=
  ∀ n, P834162436676897366.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P17501529377467744895

`∑{d}[n+1, A001511(#)*A007331((n+1)/#)]`
-/

namespace A321140.P17501529377467744895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A007331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P17501529377467744895

namespace A321140

/-- `∑{d}[n+1, A001511(#)*A007331((n+1)/#)]` -/
def P17501529377467744895.Spec : Prop :=
  ∀ n, P17501529377467744895.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P1716998339499655964

`∑{d}[n+1, A023900(#)*A027847((n+1)/#)]`
-/

namespace A321140.P1716998339499655964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A027847 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P1716998339499655964

namespace A321140

/-- `∑{d}[n+1, A023900(#)*A027847((n+1)/#)]` -/
def P1716998339499655964.Spec : Prop :=
  ∀ n, P1716998339499655964.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P15468161596128311428

`∑{d}[n+1, A007433(#)*A053191((n+1)/#)]`
-/

namespace A321140.P15468161596128311428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A053191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P15468161596128311428

namespace A321140

/-- `∑{d}[n+1, A007433(#)*A053191((n+1)/#)]` -/
def P15468161596128311428.Spec : Prop :=
  ∀ n, P15468161596128311428.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P12144931146927551946

`∑{d}[n+1, A007425(#)*A059376((n+1)/#)]`
-/

namespace A321140.P12144931146927551946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P12144931146927551946

namespace A321140

/-- `∑{d}[n+1, A007425(#)*A059376((n+1)/#)]` -/
def P12144931146927551946.Spec : Prop :=
  ∀ n, P12144931146927551946.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P404796888422657550

`∑{d}[n+1, A001157(#)*A068963((n+1)/#)]`
-/

namespace A321140.P404796888422657550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A068963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P404796888422657550

namespace A321140

/-- `∑{d}[n+1, A001157(#)*A068963((n+1)/#)]` -/
def P404796888422657550.Spec : Prop :=
  ∀ n, P404796888422657550.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P17764311437843220181

`∑{d}[n+1, A046951(#)*A065959((n+1)/#)]`
-/

namespace A321140.P17764311437843220181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A065959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P17764311437843220181

namespace A321140

/-- `∑{d}[n+1, A046951(#)*A065959((n+1)/#)]` -/
def P17764311437843220181.Spec : Prop :=
  ∀ n, P17764311437843220181.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P16945476310443175069

`∑{d}[n+1, A038712(#)*A078307((n+1)/#)]`
-/

namespace A321140.P16945476310443175069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A078307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P16945476310443175069

namespace A321140

/-- `∑{d}[n+1, A038712(#)*A078307((n+1)/#)]` -/
def P16945476310443175069.Spec : Prop :=
  ∀ n, P16945476310443175069.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P1048021661275475660

`∑{d}[n+1, A055457(#)*A226333((n+1)/#)]`
-/

namespace A321140.P1048021661275475660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055457 d * A226333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P1048021661275475660

namespace A321140

/-- `∑{d}[n+1, A055457(#)*A226333((n+1)/#)]` -/
def P1048021661275475660.Spec : Prop :=
  ∀ n, P1048021661275475660.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P11820298659919659403

`∑{d}[n+1, A001227(#)*A328408((n+1)/#)]`
-/

namespace A321140.P11820298659919659403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P11820298659919659403

namespace A321140

/-- `∑{d}[n+1, A001227(#)*A328408((n+1)/#)]` -/
def P11820298659919659403.Spec : Prop :=
  ∀ n, P11820298659919659403.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P17150552176772464926

`∑{d}[n+1, A000203(#)*A350156((n+1)/#)]`
-/

namespace A321140.P17150552176772464926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P17150552176772464926

namespace A321140

/-- `∑{d}[n+1, A000203(#)*A350156((n+1)/#)]` -/
def P17150552176772464926.Spec : Prop :=
  ∀ n, P17150552176772464926.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P12668694989086051471

`∑{d}[n+1, A051000(#)*A318935((n+1)/#)]`
-/

namespace A321140.P12668694989086051471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051000 d * A318935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P12668694989086051471

namespace A321140

/-- `∑{d}[n+1, A051000(#)*A318935((n+1)/#)]` -/
def P12668694989086051471.Spec : Prop :=
  ∀ n, P12668694989086051471.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P13625576033159454606

`∑{d}[n+1, A038991(#)*A351654((n+1)/#)]`
-/

namespace A321140.P13625576033159454606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038991 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P13625576033159454606

namespace A321140

/-- `∑{d}[n+1, A038991(#)*A351654((n+1)/#)]` -/
def P13625576033159454606.Spec : Prop :=
  ∀ n, P13625576033159454606.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P4919711965571518032

`∑{d}[n+1, A034677(#)*A361794((n+1)/#)]`
-/

namespace A321140.P4919711965571518032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034677 d * A361794 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P4919711965571518032

namespace A321140

/-- `∑{d}[n+1, A034677(#)*A361794((n+1)/#)]` -/
def P4919711965571518032.Spec : Prop :=
  ∀ n, P4919711965571518032.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P11659375413523186053

`∑{d}[n+1, A130054(#)*A328259((n+1)/#)]`
-/

namespace A321140.P11659375413523186053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P11659375413523186053

namespace A321140

/-- `∑{d}[n+1, A130054(#)*A328259((n+1)/#)]` -/
def P11659375413523186053.Spec : Prop :=
  ∀ n, P11659375413523186053.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P4873101826085717691

`∑{d}[n+1, A208895(#)*A288417((n+1)/#)]`
-/

namespace A321140.P4873101826085717691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A208895 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P4873101826085717691

namespace A321140

/-- `∑{d}[n+1, A208895(#)*A288417((n+1)/#)]` -/
def P4873101826085717691.Spec : Prop :=
  ∀ n, P4873101826085717691.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P7868807800475700705

`∑{d}[n+1, A351266(#)*A351308((n+1)/#)]`
-/

namespace A321140.P7868807800475700705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351266 d * A351308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P7868807800475700705

namespace A321140

/-- `∑{d}[n+1, A351266(#)*A351308((n+1)/#)]` -/
def P7868807800475700705.Spec : Prop :=
  ∀ n, P7868807800475700705.a n = A321140 (n + 1)

end A321140

/-! ## A321140.P13450261279481753059

`∑{d}[n+1, A051064(#)*A198956((n+1)/#)]`
-/

namespace A321140.P13450261279481753059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A198956 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321140.P13450261279481753059

namespace A321140

/-- `∑{d}[n+1, A051064(#)*A198956((n+1)/#)]` -/
def P13450261279481753059.Spec : Prop :=
  ∀ n, P13450261279481753059.a n = A321140 (n + 1)

end A321140

/-!
# A321141: a(n) = Sum_{d|n} sigma_n(d).

The programs for A321141, there is no canonical definition to state claims against.
-/

/-! ## A321141.P8473191954750400707

`A322103(2*(n+1)²)`
-/

namespace A321141.P8473191954750400707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322103 (2 * (n + 1) ^ 2)

end

end A321141.P8473191954750400707

/-! ## A321141.P10930152868264841374

`A322103(∑[A043547(2*(n+1))])%A000110(2*(n+1))`
-/

namespace A321141.P10930152868264841374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322103 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000110 (2 * (n + 1)))

end

end A321141.P10930152868264841374

/-!
# A321142: Number of strict integer partitions of 2*n with no subset summing to n.

The programs for A321142, there is no canonical definition to state claims against.
-/

/-! ## A321142.P6286061167595425591

`A035294(n)-A237258(n)`
-/

namespace A321142.P6286061167595425591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - A237258 n

end

end A321142.P6286061167595425591

/-! ## A321142.P16978983537638984092

`A000009(2*n)-A237258(n)`
-/

namespace A321142.P16978983537638984092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n) - A237258 n

end

end A321142.P16978983537638984092

/-! ## A321142.P10094412078732764954

`A081360(2*n)-A237258(n)`
-/

namespace A321142.P10094412078732764954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 (2 * n) - A237258 n

end

end A321142.P10094412078732764954

/-! ## A321142.P708411841730657487

`A035457(4*n)-A237258(n)`
-/

namespace A321142.P708411841730657487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (4 * n) - A237258 n

end

end A321142.P708411841730657487

/-! ## A321142.P394689652298926005

`A282892(2*n)+A000041(n)-A237258(n)`
-/

namespace A321142.P394689652298926005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (2 * n) + (A000041 n - A237258 n)

end

end A321142.P394689652298926005

/-!
# A321143: Number of non-isomorphic knapsack multiset partitions of weight n.

The programs for A321143, there is no canonical definition to state claims against.
-/

/-! ## A321143.P14394130309452293698

`Δ[A100196(Δ[A320936(n+1)])]`
-/

namespace A321143.P14394130309452293698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320936 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321143.P14394130309452293698

/-! ## A321143.P18157435375768659662

`A054404(A268407(n)+A110152(n))`
-/

namespace A321143.P18157435375768659662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A268407 n + A110152 n).toNat

end

end A321143.P18157435375768659662

/-! ## A321143.P14709129423085622876

`A299108(n)+A292377(A090805(n))`
-/

namespace A321143.P14709129423085622876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299108 n + A292377 (A090805 n).toNat

end

end A321143.P14709129423085622876

/-!
# A321144: Irregular triangle where T(n,k) is the number of divisors of n whose prime indices sum to k.

The programs for A321144, there is no canonical definition to state claims against.
-/

/-! ## A321144.P3070315291284670561

`A080764(C(A123108(n), A076689(n+1)))`
-/

namespace A321144.P3070315291284670561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (Nat.choose (A123108 n).toNat (A076689 (n + 1)).toNat)

end

end A321144.P3070315291284670561

/-! ## A321144.P4599884551574727796

`A175860(A027383(n)-A000120(n))`
-/

namespace A321144.P4599884551574727796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (A027383 n - A000120 n).toNat

end

end A321144.P4599884551574727796

/-! ## A321144.P14956685980862999777

`A322114(A263633(n+4))^A000041(n)`
-/

namespace A321144.P14956685980862999777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322114 (A263633 (n + 4)).toNat : ℚ) ^ (A000041 n : ℤ)

end

end A321144.P14956685980862999777

/-! ## A321144.P1556987640334638078

`A322114(A263633(n+4))^A000583(n)`
-/

namespace A321144.P1556987640334638078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322114 (A263633 (n + 4)).toNat : ℚ) ^ (A000583 n : ℤ)

end

end A321144.P1556987640334638078

/-! ## A321144.P12530893448728310712

`A322114(A263633(n+4))^A002426(n)`
-/

namespace A321144.P12530893448728310712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322114 (A263633 (n + 4)).toNat : ℚ) ^ (A002426 n : ℤ)

end

end A321144.P12530893448728310712

/-!
# A321145: Exponential pseudoperfect numbers (A318100) equal to the sum of a subset of their proper exponential divisors in a single way.

The programs for A321145, there is no canonical definition to state claims against.
-/

/-! ## A321145.P17206436238434222356

`filter[A318100(n+1), A181183(#)]`
-/

namespace A321145.P17206436238434222356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A321145.P17206436238434222356

/-! ## A321145.P4230440128444326167

`filter[A335218(n+1), A181183(#)]`
-/

namespace A321145.P4230440128444326167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A321145.P4230440128444326167

/-! ## A321145.P17928247138867995165

`filter[A391088(n+1), A181183(#)]`
-/

namespace A321145.P17928247138867995165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A321145.P17928247138867995165

/-! ## A321145.P14332762877256252590

`filter[A318100(n+1), A353566(#)]`
-/

namespace A321145.P14332762877256252590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A321145.P14332762877256252590

/-! ## A321145.P10054236046523000330

`filter[A335218(n+1), A353566(#)]`
-/

namespace A321145.P10054236046523000330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353566 (f1 j).toNat = 1) n)

end

end A321145.P10054236046523000330

/-!
# A321146: Exponential weird numbers: numbers that are exponential abundant (A129575) but not exponential pseudoperfect (A318100).

The programs for A321146, there is no canonical definition to state claims against.
-/

/-! ## A321146.P11274707245455058325

`A000188(A246922(n+1))*A339939(n+1)`
-/

namespace A321146.P11274707245455058325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A246922 (n + 1)).toNat * A339939 (n + 1)

end

end A321146.P11274707245455058325

/-! ## A321146.P2025113814094287154

`A040001(A246921(n+1))*A339939(n+1)`
-/

namespace A321146.P2025113814094287154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A246921 (n + 1)).toNat * A339939 (n + 1)

end

end A321146.P2025113814094287154

/-! ## A321146.P3751819271913026866

`A339939(n+1)+A000007(A141949(3*n+5))`
-/

namespace A321146.P3751819271913026866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339939 (n + 1) + A000007 (A141949 (3 * n + 5)).toNat

end

end A321146.P3751819271913026866

/-! ## A321146.P9142944767844133437

`A040001(A324984(2*n+3))*A339939(n+1)`
-/

namespace A321146.P9142944767844133437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A324984 (2 * n + 3)).toNat * A339939 (n + 1)

end

end A321146.P9142944767844133437

/-! ## A321146.P13441501187276770044

`C(A339939(n+1), A094587(A298972(3*(n+1))))`
-/

namespace A321146.P13441501187276770044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A339939 (n + 1)).toNat (A094587 (A298972 (3 * (n + 1))).toNat).toNat

end

end A321146.P13441501187276770044

/-!
# A321147: Odd exponential abundant numbers: odd numbers k whose sum of exponential divisors A051377(k) > 2*k.

The programs for A321147, there is no canonical definition to state claims against.
-/

/-! ## A321147.P11615937557935410869

`A328135(n+1)/A004531(A239901(n+1))`
-/

namespace A321147.P11615937557935410869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328135 (n + 1) : ℚ) / (A004531 (A239901 (n + 1)).toNat : ℚ)

end

end A321147.P11615937557935410869

/-! ## A321147.P14645028102150123597

`A273943(A285615(n+1))²`
-/

namespace A321147.P14645028102150123597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A285615 (n + 1)).toNat ^ 2

end

end A321147.P14645028102150123597

/-! ## A321147.P7731938983904228189

`record[A112643(A002377(n+1))²]`
-/

namespace A321147.P7731938983904228189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A002377 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321147.P7731938983904228189

/-! ## A321147.P12126612089638135167

`or(A010060(A263993(n)), A391430(n+1))`
-/

namespace A321147.P12126612089638135167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A263993 n).toNat) (A391430 (n + 1))

end

end A321147.P12126612089638135167

/-! ## A321147.P9584690363776586156

`or(A036987(A326020(n)), A391430(n+1))`
-/

namespace A321147.P9584690363776586156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A326020 n).toNat) (A391430 (n + 1))

end

end A321147.P9584690363776586156

/-!
# A321150: Primes p such that p minus its digit sum is a square.

The programs for A321150, the canonical program `A321150.P15680473520445349144` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321150 has offset 1).

The definition of A321150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321150.P15680473520445349144

`p?[A066566(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321150

/-- `p?[A066566(n+1)]` -/
def P15680473520445349144.Spec : Prop :=
  ∀ n, P15680473520445349144.a n = A321150 (n + 1)

theorem P15680473520445349144.correct : P15680473520445349144.Spec := by
  intro n
  simp only [A321150, Nat.add_sub_cancel]

end A321150

/-! ## A321150.P12787952918757749482

`∩[A049573(n+1), A066566(n+1)]`
-/

namespace A321150.P12787952918757749482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321150.P12787952918757749482

namespace A321150

/-- `∩[A049573(n+1), A066566(n+1)]` -/
def P12787952918757749482.Spec : Prop :=
  ∀ n, (P12787952918757749482.a n : ℤ) = A321150 (n + 1)

end A321150

/-! ## A321150.P17115456778438220804

`filter[A066566(n+2), A010051(#)]`
-/

namespace A321150.P17115456778438220804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A321150.P17115456778438220804

namespace A321150

/-- `filter[A066566(n+2), A010051(#)]` -/
def P17115456778438220804.Spec : Prop :=
  ∀ n, P17115456778438220804.a n = A321150 (n + 1)

end A321150

/-! ## A321150.P13354538674210152366

`∩[A000040(n+1), A066566(n+1)]`
-/

namespace A321150.P13354538674210152366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321150.P13354538674210152366

namespace A321150

/-- `∩[A000040(n+1), A066566(n+1)]` -/
def P13354538674210152366.Spec : Prop :=
  ∀ n, (P13354538674210152366.a n : ℤ) = A321150 (n + 1)

end A321150

/-! ## A321150.P6866267395533466780

`∩[A066566(n+1), A070159(n+1)]`
-/

namespace A321150.P6866267395533466780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321150.P6866267395533466780

namespace A321150

/-- `∩[A066566(n+1), A070159(n+1)]` -/
def P6866267395533466780.Spec : Prop :=
  ∀ n, (P6866267395533466780.a n : ℤ) = A321150 (n + 1)

end A321150

/-! ## A321150.P15106362816371894954

`∩[A066566(n+1), A216887(n+1)]`
-/

namespace A321150.P15106362816371894954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321150.P15106362816371894954

namespace A321150

/-- `∩[A066566(n+1), A216887(n+1)]` -/
def P15106362816371894954.Spec : Prop :=
  ∀ n, (P15106362816371894954.a n : ℤ) = A321150 (n + 1)

end A321150

/-! ## A321150.P11956600340152024140

`filter[A066566(n+3), A080339(#)]`
-/

namespace A321150.P11956600340152024140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A321150.P11956600340152024140

namespace A321150

/-- `filter[A066566(n+3), A080339(#)]` -/
def P11956600340152024140.Spec : Prop :=
  ∀ n, P11956600340152024140.a n = A321150 (n + 1)

end A321150

/-!
# A321152: n such that all n - p are practical numbers where p is a practical number in range n/2 <= p < n.

The programs for A321152, there is no canonical definition to state claims against.
-/

/-! ## A321152.P14333303946932054108

`∑[A248763(A194208(n+2)+1)]+1`
-/

namespace A321152.P14333303946932054108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248763 (A194208 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321152.P14333303946932054108

/-! ## A321152.P13690358053492919626

`record[A000005(A318284(n+1)+(2-n)%4)]`
-/

namespace A321152.P13690358053492919626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318284 (n + 1) + Int.tmod (2 - (n : ℤ)) 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321152.P13690358053492919626

/-! ## A321152.P1250972236268974154

`lt[A328172(A002264(n)), A304442(n)]`
-/

namespace A321152.P1250972236268974154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328172 (A002264 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321152.P1250972236268974154

/-! ## A321152.P16751769693620707697

`lt[A035441(n+1), A005940(A304442(n))]`
-/

namespace A321152.P16751769693620707697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321152.P16751769693620707697

/-! ## A321152.P8013622424473516482

`lt[A018819(n+3), A104272(A304442(n))]`
-/

namespace A321152.P8013622424473516482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321152.P8013622424473516482

/-!
# A321154: a(n) = s(n)*r - s(2^r + n), where s(n) = A002487(n) starting at n = 0 and r = 1 + floor(log_2(n)).

The programs for A321154, there is no canonical definition to state claims against.
-/

/-! ## A321154.P8309898197074256116

`A156140(n)-A002487(n)`
-/

namespace A321154.P8309898197074256116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n - A002487 n

end

end A321154.P8309898197074256116

/-! ## A321154.P9560407459240918991

`A156140(n)+A284013(n)-n`
-/

namespace A321154.P9560407459240918991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n + (A284013 n - (n : ℤ))

end

end A321154.P9560407459240918991

/-! ## A321154.P10667840051374061797

`A156140(n)-∑{d}[n, A317839(#)]`
-/

namespace A321154.P10667840051374061797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n - ∑ d ∈ Nat.divisors (f1 n), A317839 d

end

end A321154.P10667840051374061797

/-! ## A321154.P3307624917752087324

`A156140(n)-A126606(n+1)/2`
-/

namespace A321154.P3307624917752087324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156140 n : ℚ) - (A126606 (n + 1) : ℚ) / 2

end

end A321154.P3307624917752087324

/-! ## A321154.P9257782431532069724

`A156140(2*n)-A126606(n+1)`
-/

namespace A321154.P9257782431532069724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 (2 * n) - A126606 (n + 1)

end

end A321154.P9257782431532069724

/-! ## A321154.P1356250241621387636

`2*A156140(n)-A156140(2*n)`
-/

namespace A321154.P1356250241621387636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156140 n - A156140 (2 * n)

end

end A321154.P1356250241621387636

/-! ## A321154.P6614038398459446175

`A156140(n)-A283976(2*n)`
-/

namespace A321154.P6614038398459446175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n - A283976 (2 * n)

end

end A321154.P6614038398459446175

/-! ## A321154.P4727839150120459010

`A156140(n)-A283977(2*n)`
-/

namespace A321154.P4727839150120459010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n - A283977 (2 * n)

end

end A321154.P4727839150120459010

/-! ## A321154.P8937437274145774545

`A156140(n)-A174980(A010078(n+1))`
-/

namespace A321154.P8937437274145774545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n - A174980 (A010078 (n + 1)).toNat

end

end A321154.P8937437274145774545

/-!
# A321155: Regular triangle where T(n,k) is the number of non-isomorphic connected multiset partitions of weight n with density -1 <= k < n-2.

The programs for A321155, there is no canonical definition to state claims against.
-/

/-! ## A321155.P2207290819478384929

`A132089(n)+A052403(A171229(n))`
-/

namespace A321155.P2207290819478384929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132089 n + A052403 (A171229 n).toNat

end

end A321155.P2207290819478384929

/-! ## A321155.P1655991232710643367

`A132089(n)+A052403(A238559(n+6))`
-/

namespace A321155.P1655991232710643367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132089 n + A052403 (A238559 (n + 6)).toNat

end

end A321155.P1655991232710643367

/-!
# A321162: Maximum number of unbordered conjugates for a binary word of length n.

The programs for A321162, there is no canonical definition to state claims against.
-/

/-! ## A321162.P10319739552689121086

`A057354(a(floor(n/2))+n+1)` with `a(0)=1, a(1)=2`
-/

namespace A321162.P10319739552689121086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A057354 (a ⌊(n : ℚ) / 2⌋.toNat + (n + 1 : ℤ)).toNat

end

end A321162.P10319739552689121086

/-! ## A321162.P13835806371885667919

`2*(n+1)-A026741(record[A257794(n+1)])`
-/

namespace A321162.P13835806371885667919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321162.P13835806371885667919

/-! ## A321162.P5492921226141969671

`A137735(∑[A065033(n)]-A025480(n))`
-/

namespace A321162.P5492921226141969671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f1 j - A025480 n).toNat

end

end A321162.P5492921226141969671

/-! ## A321162.P14879858631477700991

`A028310(A004526(n))+char[A052955(n)]`
-/

namespace A321162.P14879858631477700991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004526 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321162.P14879858631477700991

/-! ## A321162.P2807437752755078184

`A028310(A123108(n))+char[A052955(n)]`
-/

namespace A321162.P2807437752755078184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A123108 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321162.P2807437752755078184

/-!
# A321163: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals, where A(n,k) is the sum of distinct products Product_{j=1..k} b_j with 1 <= b_j<= n.

The programs for A321163, there is no canonical definition to state claims against.
-/

/-! ## A321163.P10020802392872535446

`A008277(lt[2, A223453(n+1)])`
-/

namespace A321163.P10020802392872535446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A321163.P10020802392872535446

/-! ## A321163.P11503662592313011594

`A008277(comp[∑[n]]^A327622(n))`
-/

namespace A321163.P11503662592313011594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A327622 n : ℤ))).toNat

end

end A321163.P11503662592313011594

/-! ## A321163.P3226657850284177509

`A008277(comp[∑[n]]%A045978(n))`
-/

namespace A321163.P3226657850284177509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A045978 n)).toNat

end

end A321163.P3226657850284177509

/-! ## A321163.P3751434630144103017

`A008277(comp[∑[n]]^A133607(n)²)`
-/

namespace A321163.P3751434630144103017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A133607 n ^ 2 : ℤ))).toNat

end

end A321163.P3751434630144103017

/-! ## A321163.P9339377321709680972

`A250119(comp[∑[n]]^A250131(n+1))`
-/

namespace A321163.P9339377321709680972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250119 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A250131 (n + 1) : ℤ))).toNat

end

end A321163.P9339377321709680972

/-!
# A321164: Sum of distinct products b_1*b_2*...*b_n where 1<=b_i<=n.

The programs for A321164, there is no canonical definition to state claims against.
-/

/-! ## A321164.P17429025436461757810

`A321163(∑[4*n]+1)`
-/

namespace A321164.P17429025436461757810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321163 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A321164.P17429025436461757810

/-! ## A321164.P16212726359739078840

`record[A003982(n)*A321163(n+1)]`
-/

namespace A321164.P16212726359739078840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A321163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321164.P16212726359739078840

/-! ## A321164.P17439533674464315113

`record[gcd(A114327(n), A321163(n+1))]`
-/

namespace A321164.P17439533674464315113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A321163 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321164.P17439533674464315113

/-! ## A321164.P2176055770596642811

`record[(2-A143182(n))*A321163(n+1)]`
-/

namespace A321164.P2176055770596642811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A143182 n) * A321163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321164.P2176055770596642811

/-! ## A321164.P2090499382164492369

`or(A000007(n), A321163(A001844(n)))`
-/

namespace A321164.P2090499382164492369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A321163 (A001844 n).toNat)

end

end A321164.P2090499382164492369

/-!
# A321165: Sum of distinct products i*j with 1 <= i, j <= n.

The programs for A321165, there is no canonical definition to state claims against.
-/

/-! ## A321165.P11240586337593168767

`A321163(∑[n+2])`
-/

namespace A321165.P11240586337593168767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321165.P11240586337593168767

/-! ## A321165.P9317698760185305995

`record[gcd(A321163(n+1), A321198(n))]`
-/

namespace A321165.P9317698760185305995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321163 (n + 1)) (A321198 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321165.P9317698760185305995

/-! ## A321165.P4298396458963780165

`record[A321163(A000096(A143182(n)))]`
-/

namespace A321165.P4298396458963780165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321163 (A000096 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321165.P4298396458963780165

/-! ## A321165.P8379362771600472882

`record[A321163(A000096(A002260(n+1)))]`
-/

namespace A321165.P8379362771600472882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321163 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321165.P8379362771600472882

/-! ## A321165.P2340057568207491029

`record[A321163(A000096(A067004(n+1)))]`
-/

namespace A321165.P2340057568207491029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321163 (A000096 (A067004 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321165.P2340057568207491029

/-!
# A321167: The e-unitary Euler function: a(1) = 1, a(n) = Product uphi(e(i)) for n = Product p(i)^e(i), where uphi is the unitary totient function (A047994).

The programs for A321167, the canonical program `A321167.P10161724176455158981` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321167 has offset 1).

The definition of A321167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321167.P10161724176455158981

`∏{e}[n+1, A047994(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A321167

/-- `∏{e}[n+1, A047994(#)]` -/
def P10161724176455158981.Spec : Prop :=
  ∀ n, P10161724176455158981.a n = A321167 (n + 1)

theorem P10161724176455158981.correct : P10161724176455158981.Spec := by
  intro n
  simp only [A321167, Nat.add_sub_cancel]

end A321167

/-! ## A321167.P3638320861987253091

`∏{e}[n+1, A345044(#)]`
-/

namespace A321167.P3638320861987253091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A345044 (Nat.factorization (f1 n) p)

end

end A321167.P3638320861987253091

namespace A321167

/-- `∏{e}[n+1, A345044(#)]` -/
def P3638320861987253091.Spec : Prop :=
  ∀ n, P3638320861987253091.a n = A321167 (n + 1)

end A321167

/-! ## A321167.P15561767138766465680

`A190867(n+1)%A052288(A323333(n+1))`
-/

namespace A321167.P15561767138766465680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190867 (n + 1)) (A052288 (A323333 (n + 1)).toNat)

end

end A321167.P15561767138766465680

namespace A321167

/-- `A190867(n+1)%A052288(A323333(n+1))` -/
def P15561767138766465680.Spec : Prop :=
  ∀ n, P15561767138766465680.a n = A321167 (n + 1)

end A321167

/-! ## A321167.P10967400285462453821

`A206369(A072411(n+1)%A000984(n+1))`
-/

namespace A321167.P10967400285462453821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (Int.tmod (A072411 (n + 1)) (A000984 (n + 1))).toNat

end

end A321167.P10967400285462453821

namespace A321167

/-- `A206369(A072411(n+1)%A000984(n+1))` -/
def P10967400285462453821.Spec : Prop :=
  ∀ n, P10967400285462453821.a n = A321167 (n + 1)

end A321167

/-! ## A321167.P15370510894042048661

`A206369(A072411(n+1))%A074031(n+5)`
-/

namespace A321167.P15370510894042048661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206369 (A072411 (n + 1)).toNat) (A074031 (n + 5))

end

end A321167.P15370510894042048661

namespace A321167

/-- `A206369(A072411(n+1))%A074031(n+5)` -/
def P15370510894042048661.Spec : Prop :=
  ∀ n, P15370510894042048661.a n = A321167 (n + 1)

end A321167

/-! ## A321167.P5308017926928967863

`A295908(A295879(n+1)%A295915(n+1))`
-/

namespace A321167.P5308017926928967863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295908 (Int.tmod (A295879 (n + 1)) (A295915 (n + 1))).toNat

end

end A321167.P5308017926928967863

namespace A321167

/-- `A295908(A295879(n+1)%A295915(n+1))` -/
def P5308017926928967863.Spec : Prop :=
  ∀ n, P5308017926928967863.a n = A321167 (n + 1)

end A321167

/-! ## A321167.P5868824245379584108

`A081603(∏{e}[n+1, 2^#-1]²)+1`
-/

namespace A321167.P5868824245379584108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 ((∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)) ^ 2).toNat + 1

end

end A321167.P5868824245379584108

namespace A321167

/-- `A081603(∏{e}[n+1, 2^#-1]²)+1` -/
def P5868824245379584108.Spec : Prop :=
  ∀ n, P5868824245379584108.a n = A321167 (n + 1)

end A321167

/-! ## A321167.P6480154320465442170

`A038548(A352463((n+1)/∏{p}[n+1, gcd(n+1, #²)])²)`
-/

namespace A321167.P6480154320465442170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A352463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat ^ 2).toNat

end

end A321167.P6480154320465442170

namespace A321167

/-- `A038548(A352463((n+1)/∏{p}[n+1, gcd(n+1, #²)])²)` -/
def P6480154320465442170.Spec : Prop :=
  ∀ n, P6480154320465442170.a n = A321167 (n + 1)

end A321167

/-! ## A321167.P4663354392259581882

`gcd(A090816(n), A305829(A072411(n+1)))`
-/

namespace A321167.P4663354392259581882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090816 n) (A305829 (A072411 (n + 1)).toNat)

end

end A321167.P4663354392259581882

namespace A321167

/-- `gcd(A090816(n), A305829(A072411(n+1)))` -/
def P4663354392259581882.Spec : Prop :=
  ∀ n, (P4663354392259581882.a n : ℤ) = A321167 (n + 1)

end A321167

/-! ## A321167.P4412352458669232126

`A130107(A072411((n+1)²))`
-/

namespace A321167.P4412352458669232126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130107 (A072411 ((n + 1) ^ 2)).toNat

end

end A321167.P4412352458669232126

namespace A321167

/-- `A130107(A072411((n+1)²))` -/
def P4412352458669232126.Spec : Prop :=
  ∀ n, P4412352458669232126.a n = A321167 (n + 1)

end A321167

/-!
# A321169: a(n) is the smallest prime p such that p + 2 is a product of n primes (counted with multiplicity).

The programs for A321169, there is no canonical definition to state claims against.
-/

/-! ## A321169.P15729238203073775446

`A095749(record[A183253(n+1)])`
-/

namespace A321169.P15729238203073775446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095749 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A321169.P15729238203073775446

/-!
# A321170: Numbers k such that Fibonacci(k) in base 5 ends with k in base 5.

The programs for A321170, there is no canonical definition to state claims against.
-/

/-! ## A321170.P17670929610425729475

`eq[A266874(n+1), A284103(n+1)]`
-/

namespace A321170.P17670929610425729475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321170.P17670929610425729475

/-! ## A321170.P13284768552591714331

`eq[A266874(n+1), A363929(n+1)]`
-/

namespace A321170.P13284768552591714331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321170.P13284768552591714331

/-!
# A321173: a(n) = -2*a(n-1) + a(n-2) + a(n-3), a(0) = -1, a(1) = 3, a(2) = -9.

The programs for A321173, the canonical program `A321173.P12653620965726217953` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321173 has offset 0).

The definition of A321173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321173.P1975420252125519176

`Δ[A321174(n)]%A033304(n)`
-/

namespace A321173.P1975420252125519176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A033304 n)

end

end A321173.P1975420252125519176

namespace A321173

/-- `Δ[A321174(n)]%A033304(n)` -/
def P1975420252125519176.Spec : Prop :=
  ∀ n, P1975420252125519176.a n = A321173 n

end A321173

/-! ## A321173.P12653620965726217953

`Δ[A215112(n)+∑[A215112(n)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321173

/-- `Δ[A215112(n)+∑[A215112(n)]]` -/
def P12653620965726217953.Spec : Prop :=
  ∀ n, P12653620965726217953.a n = A321173 n

theorem P12653620965726217953.correct : P12653620965726217953.Spec := by
  intro n
  simp only [A321173]

end A321173

/-! ## A321173.P7832830842266358519

`-A321174(n+2)%A033304(n)`
-/

namespace A321173.P7832830842266358519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A321174 (n + 2)) (A033304 n)

end

end A321173.P7832830842266358519

namespace A321173

/-- `-A321174(n+2)%A033304(n)` -/
def P7832830842266358519.Spec : Prop :=
  ∀ n, P7832830842266358519.a n = A321173 n

end A321173

/-! ## A321173.P10328647293404723681

`A215112(n+1)+Δ[A215112(n)]`
-/

namespace A321173.P10328647293404723681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215112 (n + 1) + (f1 (n + 1) - f1 n)

end

end A321173.P10328647293404723681

namespace A321173

/-- `A215112(n+1)+Δ[A215112(n)]` -/
def P10328647293404723681.Spec : Prop :=
  ∀ n, P10328647293404723681.a n = A321173 n

end A321173

/-! ## A321173.P5945608281772393029

`-A321174(n+2)%A274975(n+1)`
-/

namespace A321173.P5945608281772393029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A321174 (n + 2)) (A274975 (n + 1))

end

end A321173.P5945608281772393029

namespace A321173

/-- `-A321174(n+2)%A274975(n+1)` -/
def P5945608281772393029.Spec : Prop :=
  ∀ n, P5945608281772393029.a n = A321173 n

end A321173

/-!
# A321174: a(n) = -2*a(n-1) + a(n-2) + a(n-3), a(0) = -1, a(1) = -4, a(2) = 5.

The programs for A321174, the canonical program `A321174.P8562703371106465789` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321174 has offset 0).

The definition of A321174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321174.P8562703371106465789

`-(∑[A321173(n)]+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321174

/-- `-(∑[A321173(n)]+2)` -/
def P8562703371106465789.Spec : Prop :=
  ∀ n, P8562703371106465789.a n = A321174 n

theorem P8562703371106465789.correct : P8562703371106465789.Spec := by
  intro n
  simp only [A321174]

end A321174

/-! ## A321174.P314910806701651388

`Δ[A274975(n)]*A033999(n)`
-/

namespace A321174.P314910806701651388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A321174.P314910806701651388

namespace A321174

/-- `Δ[A274975(n)]*A033999(n)` -/
def P314910806701651388.Spec : Prop :=
  ∀ n, P314910806701651388.a n = A321174 n

end A321174

/-! ## A321174.P6858832710686270921

`A094648(n)/A096975(n)*Δ[A274975(n)]`
-/

namespace A321174.P6858832710686270921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094648 n : ℚ) / (A096975 n : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A321174.P6858832710686270921

namespace A321174

/-- `A094648(n)/A096975(n)*Δ[A274975(n)]` -/
def P6858832710686270921.Spec : Prop :=
  ∀ n, P6858832710686270921.a n = (A321174 n : ℚ)

end A321174

/-! ## A321174.P3112697827327798910

`A321173(n+1)-1-∑[A321173(n+1)]`
-/

namespace A321174.P3112697827327798910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321173 (n + 1) - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321174.P3112697827327798910

namespace A321174

/-- `A321173(n+1)-1-∑[A321173(n+1)]` -/
def P3112697827327798910.Spec : Prop :=
  ∀ n, P3112697827327798910.a n = A321174 n

end A321174

/-!
# A321175: a(n) = -a(n-1) + 2*a(n-2) + a(n-3), a(0) = -1, a(1) = -2, a(2) = 3.

The programs for A321175, the canonical program `A321175.P15209318008082210966` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321175 has offset 0).

The definition of A321175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321175.P15209318008082210966

`2*a(n-2)+a(n-3)-a(n-1)` with `a(0)=-1, a(1)=-2, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321175

/-- `2*a(n-2)+a(n-3)-a(n-1)` -/
def P15209318008082210966.Spec : Prop :=
  ∀ n, P15209318008082210966.a n = A321175 n

theorem P15209318008082210966.correct : P15209318008082210966.Spec := by
  intro n
  simp only [A321175]

end A321175

/-! ## A321175.P11644269283105714892

`a(n-3)-(a(n-1)-2*a(n-2))` with `a(0)=-1, a(1)=-2, a(2)=3`
-/

namespace A321175.P11644269283105714892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -2, 3] fun n a =>
  a (n - 3) - (a (n - 1) - 2 * a (n - 2))

end

end A321175.P11644269283105714892

namespace A321175

/-- `a(n-3)-(a(n-1)-2*a(n-2))` -/
def P11644269283105714892.Spec : Prop :=
  ∀ n, P11644269283105714892.a n = A321175 n

end A321175

/-! ## A321175.P18298369836484493647

`a(n-2)-a(n-1)+a(n-2)+a(n-3)` with `a(0)=-1, a(1)=-2, a(2)=3`
-/

namespace A321175.P18298369836484493647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -2, 3] fun n a =>
  a (n - 2) - a (n - 1) + (a (n - 2) + a (n - 3))

end

end A321175.P18298369836484493647

namespace A321175

/-- `a(n-2)-a(n-1)+a(n-2)+a(n-3)` -/
def P18298369836484493647.Spec : Prop :=
  ∀ n, P18298369836484493647.a n = A321175 n

end A321175

/-! ## A321175.P15657360145801548254

`a(n-2)-(a(n-1)-a(n-2)-a(n-3))` with `a(0)=-1, a(1)=-2, a(2)=3`
-/

namespace A321175.P15657360145801548254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -2, 3] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 3))

end

end A321175.P15657360145801548254

namespace A321175

/-- `a(n-2)-(a(n-1)-a(n-2)-a(n-3))` -/
def P15657360145801548254.Spec : Prop :=
  ∀ n, P15657360145801548254.a n = A321175 n

end A321175

/-! ## A321175.P6270645489021570810

`Δ[A321461(n)]`
-/

namespace A321175.P6270645489021570810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321175.P6270645489021570810

namespace A321175

/-- `Δ[A321461(n)]` -/
def P6270645489021570810.Spec : Prop :=
  ∀ n, P6270645489021570810.a n = A321175 n

end A321175

/-! ## A321175.P3610601387942342878

`A321461(n+1)-A321461(n)`
-/

namespace A321175.P3610601387942342878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321461 (n + 1) - A321461 n

end

end A321175.P3610601387942342878

namespace A321175

/-- `A321461(n+1)-A321461(n)` -/
def P3610601387942342878.Spec : Prop :=
  ∀ n, P3610601387942342878.a n = A321175 n

end A321175

/-! ## A321175.P2801110163242279748

`A094648(n+2)-2*A094648(n)`
-/

namespace A321175.P2801110163242279748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 (n + 2) - 2 * A094648 n

end

end A321175.P2801110163242279748

namespace A321175

/-- `A094648(n+2)-2*A094648(n)` -/
def P2801110163242279748.Spec : Prop :=
  ∀ n, P2801110163242279748.a n = A321175 n

end A321175

/-!
# A321177: Heinz numbers of integer partitions that are the vertex-degrees of some set system with no singletons.

The programs for A321177, there is no canonical definition to state claims against.
-/

/-! ## A321177.P3276119024007243497

`lt[∑{p}[n+1, #], ∏{e}[n+1, #+1]]+1`
-/

namespace A321177.P3276119024007243497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A321177.P3276119024007243497

/-! ## A321177.P3621026837481878118

`lt[∑{p}[n+1, #], ∑{d}[n+1, ceil(1/#)]]+1`
-/

namespace A321177.P3621026837481878118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A321177.P3621026837481878118

/-! ## A321177.P11432906719715885763

`∏{e}[2^n, A340788(#)]`
-/

namespace A321177.P11432906719715885763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A340788 (Nat.factorization (f1 n) p)

end

end A321177.P11432906719715885763

/-! ## A321177.P15706306261155040993

`∏{e}[2^n, A352490(#)]`
-/

namespace A321177.P15706306261155040993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A352490 (Nat.factorization (f1 n) p)

end

end A321177.P15706306261155040993

/-!
# A321178: One-half the sum of the first 2n + 1 primes.

The programs for A321178, the canonical program `A321178.P14007840561554074392` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321178 has offset 0).

The definition of A321178 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321178.P14007840561554074392

`A109723(n)/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A321178

/-- `A109723(n)/2` -/
def P14007840561554074392.Spec : Prop :=
  ∀ n, P14007840561554074392.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P310050877994403984

`A007504(2*n+1)/2`
-/

namespace A321178.P310050877994403984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (2 * n + 1) : ℚ) / 2

end

end A321178.P310050877994403984

namespace A321178

/-- `A007504(2*n+1)/2` -/
def P310050877994403984.Spec : Prop :=
  ∀ n, P310050877994403984.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P5131127887227490526

`∑[A162801(n+1)]+1`
-/

namespace A321178.P5131127887227490526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321178.P5131127887227490526

namespace A321178

/-- `∑[A162801(n+1)]+1` -/
def P5131127887227490526.Spec : Prop :=
  ∀ n, P5131127887227490526.a n = A321178 n

end A321178

/-! ## A321178.P3685499232299128689

`∑[A058296(n+1)]-1`
-/

namespace A321178.P3685499232299128689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A321178.P3685499232299128689

namespace A321178

/-- `∑[A058296(n+1)]-1` -/
def P3685499232299128689.Spec : Prop :=
  ∀ n, P3685499232299128689.a n = A321178 n

end A321178

/-! ## A321178.P3685254403894688140

`1/2*A007504(A005408(n))`
-/

namespace A321178.P3685254403894688140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A007504 (A005408 n).toNat : ℚ)

end

end A321178.P3685254403894688140

namespace A321178

/-- `1/2*A007504(A005408(n))` -/
def P3685254403894688140.Spec : Prop :=
  ∀ n, P3685254403894688140.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P11051717504438662780

`(A109722(n)+A031368(n+1))/2`
-/

namespace A321178.P11051717504438662780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109722 n + A031368 (n + 1) : ℚ) / 2

end

end A321178.P11051717504438662780

namespace A321178

/-- `(A109722(n)+A031368(n+1))/2` -/
def P11051717504438662780.Spec : Prop :=
  ∀ n, P11051717504438662780.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P8035843160068974756

`(A166448(2*(n+1))+A001223(2*(n+1)))/2`
-/

namespace A321178.P8035843160068974756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166448 (2 * (n + 1)) + A001223 (2 * (n + 1)) : ℚ) / 2

end

end A321178.P8035843160068974756

namespace A321178

/-- `(A166448(2*(n+1))+A001223(2*(n+1)))/2` -/
def P8035843160068974756.Spec : Prop :=
  ∀ n, P8035843160068974756.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P16857835146715156790

`∑[A162800(2*n)]+1`
-/

namespace A321178.P16857835146715156790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321178.P16857835146715156790

namespace A321178

/-- `∑[A162800(2*n)]+1` -/
def P16857835146715156790.Spec : Prop :=
  ∀ n, P16857835146715156790.a n = A321178 n

end A321178

/-! ## A321178.P17255014754077494990

`∑[A011974(2*n+1)/2]`
-/

namespace A321178.P17255014754077494990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321178.P17255014754077494990

namespace A321178

/-- `∑[A011974(2*n+1)/2]` -/
def P17255014754077494990.Spec : Prop :=
  ∀ n, P17255014754077494990.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P9208077840477355085

`(A061802(2*n)-A007504(2*n))/2`
-/

namespace A321178.P9208077840477355085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (2 * n) - A007504 (2 * n) : ℚ) / 2

end

end A321178.P9208077840477355085

namespace A321178

/-- `(A061802(2*n)-A007504(2*n))/2` -/
def P9208077840477355085.Spec : Prop :=
  ∀ n, P9208077840477355085.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P13687559599681004134

`A005521(2*n)+n`
-/

namespace A321178.P13687559599681004134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 (2 * n) + (n : ℤ)

end

end A321178.P13687559599681004134

namespace A321178

/-- `A005521(2*n)+n` -/
def P13687559599681004134.Spec : Prop :=
  ∀ n, P13687559599681004134.a n = A321178 n

end A321178

/-! ## A321178.P1341866546483694792

`A362419(2*n+1)/4`
-/

namespace A321178.P1341866546483694792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362419 (2 * n + 1) : ℚ) / 4

end

end A321178.P1341866546483694792

namespace A321178

/-- `A362419(2*n+1)/4` -/
def P1341866546483694792.Spec : Prop :=
  ∀ n, P1341866546483694792.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P11577775648174170752

`floor(A014284(2*(n+1))/2)`
-/

namespace A321178.P11577775648174170752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014284 (2 * (n + 1)) : ℚ) / 2⌋

end

end A321178.P11577775648174170752

namespace A321178

/-- `floor(A014284(2*(n+1))/2)` -/
def P11577775648174170752.Spec : Prop :=
  ∀ n, P11577775648174170752.a n = A321178 n

end A321178

/-! ## A321178.P16432910673177444126

`ceil(A237589(2*n+1)/2)`
-/

namespace A321178.P16432910673177444126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A237589 (2 * n + 1) : ℚ) / 2⌉

end

end A321178.P16432910673177444126

namespace A321178

/-- `ceil(A237589(2*n+1)/2)` -/
def P16432910673177444126.Spec : Prop :=
  ∀ n, P16432910673177444126.a n = A321178 n

end A321178

/-! ## A321178.P714272789011340316

`A036439(2*(n+1))/2-1`
-/

namespace A321178.P714272789011340316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036439 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A321178.P714272789011340316

namespace A321178

/-- `A036439(2*(n+1))/2-1` -/
def P714272789011340316.Spec : Prop :=
  ∀ n, P714272789011340316.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P12896895813363552050

`(A014284(2*n+2)-1)/2`
-/

namespace A321178.P12896895813363552050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014284 (2 * n + 2) - 1 : ℚ) / 2

end

end A321178.P12896895813363552050

namespace A321178

/-- `(A014284(2*n+2)-1)/2` -/
def P12896895813363552050.Spec : Prop :=
  ∀ n, P12896895813363552050.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P18055423453390489931

`ceil(sqrt(A092780(2*n+1))/2)`
-/

namespace A321178.P18055423453390489931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A092780 (2 * n + 1) : ℝ) / 2⌉

end

end A321178.P18055423453390489931

namespace A321178

/-- `ceil(sqrt(A092780(2*n+1))/2)` -/
def P18055423453390489931.Spec : Prop :=
  ∀ n, P18055423453390489931.a n = A321178 n

end A321178

/-! ## A321178.P3135089887289425677

`∑[ceil(sqrt(A023523(2*n+1)))]-1`
-/

namespace A321178.P3135089887289425677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A023523 (2 * n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A321178.P3135089887289425677

namespace A321178

/-- `∑[ceil(sqrt(A023523(2*n+1)))]-1` -/
def P3135089887289425677.Spec : Prop :=
  ∀ n, P3135089887289425677.a n = A321178 n

end A321178

/-! ## A321178.P17888724123182945230

`(A109722(n+1)-A000040(2*(n+1)))/2`
-/

namespace A321178.P17888724123182945230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109722 (n + 1) - A000040 (2 * (n + 1)) : ℚ) / 2

end

end A321178.P17888724123182945230

namespace A321178

/-- `(A109722(n+1)-A000040(2*(n+1)))/2` -/
def P17888724123182945230.Spec : Prop :=
  ∀ n, P17888724123182945230.a n = (A321178 n : ℚ)

end A321178

/-! ## A321178.P16232700275564498868

`A143215(2*n+1)/A100484(2*n+1)`
-/

namespace A321178.P16232700275564498868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143215 (2 * n + 1) : ℚ) / (A100484 (2 * n + 1) : ℚ)

end

end A321178.P16232700275564498868

namespace A321178

/-- `A143215(2*n+1)/A100484(2*n+1)` -/
def P16232700275564498868.Spec : Prop :=
  ∀ n, P16232700275564498868.a n = (A321178 n : ℚ)

end A321178

/-!
# A321179: a(n) = [x^(n^2)] Product_{k=1..n} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A321179, there is no canonical definition to state claims against.
-/

/-! ## A321179.P4810009926106661613

`A330210(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A321179.P4810009926106661613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A330210 (a (n - 1)).toNat

end

end A321179.P4810009926106661613

/-! ## A321179.P8290653873691364110

`A001221(A002697(n+2))*A323681(n)`
-/

namespace A321179.P8290653873691364110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002697 (n + 2)).toNat * A323681 n

end

end A321179.P8290653873691364110

/-!
# A321180: a(n) = 17*n^2 - 1.

The programs for A321180, the canonical program `A321180.P9288936456031094822` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321180 has offset 0).

The definition of A321180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*n²-1` (program `A321180.P9288936456031094822`, by `A321180.P9288936456031094822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321180.P9288936456031094822

`17*n²-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321180

/-- `17*n²-1` -/
def P9288936456031094822.Spec : Prop :=
  ∀ n, P9288936456031094822.a n = A321180 n

theorem P9288936456031094822.correct : P9288936456031094822.Spec := by
  intro n
  simp only [A321180]

end A321180

/-! ## A321180.P16832386149694831107

`(A303302(n)-2)/2`
-/

namespace A321180.P16832386149694831107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303302 n - 2 : ℚ) / 2

end

end A321180.P16832386149694831107

namespace A321180

/-- `(A303302(n)-2)/2` -/
def P16832386149694831107.Spec : Prop :=
  ∀ n, P16832386149694831107.a n = (A321180 n : ℚ)

end A321180

/-! ## A321180.P9749019658845038590

`(A158586(n)-3)/2`
-/

namespace A321180.P9749019658845038590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158586 n - 3 : ℚ) / 2

end

end A321180.P9749019658845038590

namespace A321180

/-- `(A158586(n)-3)/2` -/
def P9749019658845038590.Spec : Prop :=
  ∀ n, P9749019658845038590.a n = (A321180 n : ℚ)

end A321180

/-! ## A321180.P9868388667170060285

`(A158732(n)-5)/4`
-/

namespace A321180.P9868388667170060285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158732 n - 5 : ℚ) / 4

end

end A321180.P9868388667170060285

namespace A321180

/-- `(A158732(n)-5)/4` -/
def P9868388667170060285.Spec : Prop :=
  ∀ n, P9868388667170060285.a n = (A321180 n : ℚ)

end A321180

/-! ## A321180.P5495006898493505646

`∑[record[16*A006257(n)]+2*n-1]`
-/

namespace A321180.P5495006898493505646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321180.P5495006898493505646

namespace A321180

/-- `∑[record[16*A006257(n)]+2*n-1]` -/
def P5495006898493505646.Spec : Prop :=
  ∀ n, P5495006898493505646.a n = A321180 n

end A321180

/-! ## A321180.P17502212052039806857

`∑[A008599(A004273(n))-A000007(n)]`
-/

namespace A321180.P17502212052039806857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (A004273 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321180.P17502212052039806857

namespace A321180

/-- `∑[A008599(A004273(n))-A000007(n)]` -/
def P17502212052039806857.Spec : Prop :=
  ∀ n, P17502212052039806857.a n = A321180 n

end A321180

/-! ## A321180.P17653630900671934584

`record[A000217(n)-A028387(A214394(n))]`
-/

namespace A321180.P17653630900671934584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A028387 (A214394 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321180.P17653630900671934584

namespace A321180

/-- `record[A000217(n)-A028387(A214394(n))]` -/
def P17653630900671934584.Spec : Prop :=
  ∀ n, P17653630900671934584.a n = A321180 n

end A321180

/-!
# A321181: a(n) = [x^((n*(n+1)/2)^2)] Product_{k=1..n} Sum_{m>=0} x^(k*m^2).

The programs for A321181, there is no canonical definition to state claims against.
-/

/-! ## A321181.P169343481326345711

`A202845(A088859(n))`
-/

namespace A321181.P169343481326345711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202845 (A088859 n).toNat

end

end A321181.P169343481326345711

/-! ## A321181.P12064096341042973450

`A031265(A355381(n))`
-/

namespace A321181.P12064096341042973450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031265 (A355381 n).toNat

end

end A321181.P12064096341042973450

/-!
# A321182: Composite numbers k such that sigma(k)/k' is an integer, where k' is the arithmetic derivative of k.

The programs for A321182, there is no canonical definition to state claims against.
-/

/-! ## A321182.P11682819415524398808

`∩[A194234(n+1), A373665(n+1)]`
-/

namespace A321182.P11682819415524398808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321182.P11682819415524398808

/-!
# A321183: a(n) = [x^((n*(n+1)/2)^2)] Product_{k=1..n} Sum_{m>=0} x^(k^2*m).

The programs for A321183, there is no canonical definition to state claims against.
-/

/-! ## A321183.P8212411178769437766

`A166284(A033303(n))`
-/

namespace A321183.P8212411178769437766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166284 (A033303 n).toNat

end

end A321183.P8212411178769437766

/-!
# A321186: a(n) = [x^(n*(n+1)*(2*n+1)/6)] Product_{k=1..n} Sum_{m>=0} x^(k^2*m).

The programs for A321186, there is no canonical definition to state claims against.
-/

/-! ## A321186.P13594442349098929314

`xor(n!, A341040(A091541(n)))`
-/

namespace A321186.P13594442349098929314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (A341040 (A091541 n).toNat)

end

end A321186.P13594442349098929314

/-! ## A321186.P999989980581226275

`xor(∑{digits}[n, #!], A241458(A279029(n+1)))`
-/

namespace A321186.P999989980581226275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) (A241458 (A279029 (n + 1)).toNat)

end

end A321186.P999989980581226275

/-! ## A321186.P1309080818012520315

`A138194(A325850(n)+A059231(n))`
-/

namespace A321186.P1309080818012520315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A325850 n + A059231 n).toNat

end

end A321186.P1309080818012520315

/-!
# A321188: Number of set systems with no singletons whose multiset union is row n of A305936 (a multiset whose multiplicities are the prime indices of n).

The programs for A321188, there is no canonical definition to state claims against.
-/

/-! ## A321188.P9883498060190221144

`and(A318284((n+1)²), A322076(n+1))`
-/

namespace A321188.P9883498060190221144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318284 ((n + 1) ^ 2)) (A322076 (n + 1))

end

end A321188.P9883498060190221144

/-! ## A321188.P9668772546542684421

`and(A028310(n), A322076(A106247(n)))`
-/

namespace A321188.P9668772546542684421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 n) (A322076 (A106247 n).toNat)

end

end A321188.P9668772546542684421

/-! ## A321188.P14388806634010744630

`and(A288368(n), A322076(A106247(n)))`
-/

namespace A321188.P14388806634010744630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288368 n) (A322076 (A106247 n).toNat)

end

end A321188.P14388806634010744630

/-! ## A321188.P11048361420972886756

`A322076(A106247(n))%A014963(n+2)`
-/

namespace A321188.P11048361420972886756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322076 (A106247 n).toNat) (A014963 (n + 2))

end

end A321188.P11048361420972886756

/-! ## A321188.P6972707986707030271

`and(A154962(n), A322076(n+1))`
-/

namespace A321188.P6972707986707030271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154962 n) (A322076 (n + 1))

end

end A321188.P6972707986707030271

/-!
# A321189: a(n) = n! * [x^n] 1 - 1/(n - 1/(exp(x) - 1)).

The programs for A321189, there is no canonical definition to state claims against.
-/

/-! ## A321189.P4692032668622654792

`A372312(n)/(n+1)`
-/

namespace A321189.P4692032668622654792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372312 n : ℚ) / (n + 1 : ℚ)

end

end A321189.P4692032668622654792

/-! ## A321189.P15808560941711128317

`A094420(n)/round(sqrt(n²+1))`
-/

namespace A321189.P15808560941711128317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094420 n : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

end

end A321189.P15808560941711128317

/-! ## A321189.P6303102451368782300

`floor(A094420(n)/A028310(n))`
-/

namespace A321189.P6303102451368782300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094420 n : ℚ) / (A028310 n : ℚ)⌋

end

end A321189.P6303102451368782300

/-! ## A321189.P15707938216006812881

`ceil(A094420(n)/A233583(n+1))`
-/

namespace A321189.P15707938216006812881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094420 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A321189.P15707938216006812881

/-! ## A321189.P11635903542421077133

`round(A094420(n)/A233583(n+1))-A025439(n)`
-/

namespace A321189.P11635903542421077133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094420 n : ℚ) / (A233583 (n + 1) : ℚ)) - A025439 n

end

end A321189.P11635903542421077133

/-!
# A321190: a(n) = [x^n] 1/(1 - Sum_{k>=1} k^n*x^k/(1 - x^k)).

The programs for A321190, there is no canonical definition to state claims against.
-/

/-! ## A321190.P13877233506889868505

`A195071(n²*a(n-1))` with `a(0)=1`
-/

namespace A321190.P13877233506889868505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A195071 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A321190.P13877233506889868505

/-!
# A321192: a(n) = [x^n] Product_{k>=1} (1 + x^k)^tau_n(k), where tau_n(k) = number of ordered n-factorizations of k.

The programs for A321192, there is no canonical definition to state claims against.
-/

/-! ## A321192.P3811598710864500139

`A059219(n)+A049337(A078841(n))`
-/

namespace A321192.P3811598710864500139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059219 n + A049337 (A078841 n).toNat

end

end A321192.P3811598710864500139

/-! ## A321192.P5907933160920305948

`A103492(A138265(n))+A059219(n)`
-/

namespace A321192.P5907933160920305948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103492 (A138265 n).toNat + A059219 n

end

end A321192.P5907933160920305948

/-! ## A321192.P11944248911700953773

`A157271(or(A148911(n), A233271(n)))`
-/

namespace A321192.P11944248911700953773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A148911 n) (A233271 n)).toNat

end

end A321192.P11944248911700953773

/-!
# A321193: Even numbers with no more than one odd prime factor, not counting multiplicity.

The programs for A321193, the canonical program `A321193.P431441058952180868` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321193 has offset 1).

The definition of A321193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321193.P6620846724473373686

`2*(lt[A070536(n+1), 2]+1)`
-/

namespace A321193.P6620846724473373686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A321193.P6620846724473373686

namespace A321193

/-- `2*(lt[A070536(n+1), 2]+1)` -/
def P6620846724473373686.Spec : Prop :=
  ∀ n, (P6620846724473373686.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P431441058952180868

`2*(lt[A001221(2*(n+1)), 3]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321193

/-- `2*(lt[A001221(2*(n+1)), 3]+1)` -/
def P431441058952180868.Spec : Prop :=
  ∀ n, (P431441058952180868.a n : ℤ) = A321193 (n + 1)

theorem P431441058952180868.correct : P431441058952180868.Spec := by
  intro n
  simp only [A321193, Nat.add_sub_cancel]

end A321193

/-! ## A321193.P9834815112558364407

`record[gcd(2*n+1, A318886(n+1))+1]`
-/

namespace A321193.P9834815112558364407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A318886 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321193.P9834815112558364407

namespace A321193

/-- `record[gcd(2*n+1, A318886(n+1))+1]` -/
def P9834815112558364407.Spec : Prop :=
  ∀ n, (P9834815112558364407.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P6561319150312185950

`2*(lt[A318886(2*(n+1)), 1]+1)`
-/

namespace A321193.P6561319150312185950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A321193.P6561319150312185950

namespace A321193

/-- `2*(lt[A318886(2*(n+1)), 1]+1)` -/
def P6561319150312185950.Spec : Prop :=
  ∀ n, (P6561319150312185950.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P4099120771381630833

`lt[A001221(n+2), -a(n-1)]+2` with `a(0)=3`
-/

namespace A321193.P4099120771381630833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  -f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A321193.P4099120771381630833

namespace A321193

/-- `lt[A001221(n+2), -a(n-1)]+2` -/
def P4099120771381630833.Spec : Prop :=
  ∀ n, (P4099120771381630833.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P6876446594132387634

`2*(eq[1, A340365(n+1)]+1)`
-/

namespace A321193.P6876446594132387634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340365 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A321193.P6876446594132387634

namespace A321193

/-- `2*(eq[1, A340365(n+1)]+1)` -/
def P6876446594132387634.Spec : Prop :=
  ∀ n, (P6876446594132387634.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P9073433137450446625

`a(A340362(A070776(n)))*A070776(n)` with `a(0)=2`
-/

namespace A321193.P9073433137450446625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (A340362 (A070776 n).toNat).toNat * A070776 n

end

end A321193.P9073433137450446625

namespace A321193

/-- `a(A340362(A070776(n)))*A070776(n)` -/
def P9073433137450446625.Spec : Prop :=
  ∀ n, P9073433137450446625.a n = A321193 (n + 1)

end A321193

/-! ## A321193.P17842108266282422279

`2*(lt[A005087(n+1), 2]+1)`
-/

namespace A321193.P17842108266282422279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A321193.P17842108266282422279

namespace A321193

/-- `2*(lt[A005087(n+1), 2]+1)` -/
def P17842108266282422279.Spec : Prop :=
  ∀ n, (P17842108266282422279.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P4806815283526294382

`2*(lt[A091979(n+1), 2]+1)`
-/

namespace A321193.P4806815283526294382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091979 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A321193.P4806815283526294382

namespace A321193

/-- `2*(lt[A091979(n+1), 2]+1)` -/
def P4806815283526294382.Spec : Prop :=
  ∀ n, (P4806815283526294382.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P315532127368393590

`2*lt[A318886(A004277(n)), 1]`
-/

namespace A321193.P315532127368393590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321193.P315532127368393590

namespace A321193

/-- `2*lt[A318886(A004277(n)), 1]` -/
def P315532127368393590.Spec : Prop :=
  ∀ n, (P315532127368393590.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P16659608635127115694

`filter[A004277(n+1), A340363(#)]`
-/

namespace A321193.P16659608635127115694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A321193.P16659608635127115694

namespace A321193

/-- `filter[A004277(n+1), A340363(#)]` -/
def P16659608635127115694.Spec : Prop :=
  ∀ n, P16659608635127115694.a n = A321193 (n + 1)

end A321193

/-! ## A321193.P4823510594653947811

`filter[A005843(n+1), A340363(#)]`
-/

namespace A321193.P4823510594653947811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A321193.P4823510594653947811

namespace A321193

/-- `filter[A005843(n+1), A340363(#)]` -/
def P4823510594653947811.Spec : Prop :=
  ∀ n, P4823510594653947811.a n = A321193 (n + 1)

end A321193

/-! ## A321193.P11372000667941640868

`filter[A092486(2*n+1), A340363(#)]`
-/

namespace A321193.P11372000667941640868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A321193.P11372000667941640868

namespace A321193

/-- `filter[A092486(2*n+1), A340363(#)]` -/
def P11372000667941640868.Spec : Prop :=
  ∀ n, P11372000667941640868.a n = A321193 (n + 1)

end A321193

/-! ## A321193.P15862760215653649148

`filter[A004275(n+2), A340363(#)]`
-/

namespace A321193.P15862760215653649148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A321193.P15862760215653649148

namespace A321193

/-- `filter[A004275(n+2), A340363(#)]` -/
def P15862760215653649148.Spec : Prop :=
  ∀ n, P15862760215653649148.a n = A321193 (n + 1)

end A321193

/-! ## A321193.P6658746023713720526

`filter[A300576(n+3), A340363(#)]`
-/

namespace A321193.P6658746023713720526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A321193.P6658746023713720526

namespace A321193

/-- `filter[A300576(n+3), A340363(#)]` -/
def P6658746023713720526.Spec : Prop :=
  ∀ n, P6658746023713720526.a n = A321193 (n + 1)

end A321193

/-! ## A321193.P9484498192685559816

`∩[A070776(n+1), A004275(n)]`
-/

namespace A321193.P9484498192685559816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321193.P9484498192685559816

namespace A321193

/-- `∩[A070776(n+1), A004275(n)]` -/
def P9484498192685559816.Spec : Prop :=
  ∀ n, (P9484498192685559816.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P2663385830717742371

`∩[A070776(n+1), A004277(n)]`
-/

namespace A321193.P2663385830717742371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321193.P2663385830717742371

namespace A321193

/-- `∩[A070776(n+1), A004277(n)]` -/
def P2663385830717742371.Spec : Prop :=
  ∀ n, (P2663385830717742371.a n : ℤ) = A321193 (n + 1)

end A321193

/-! ## A321193.P10024392190001132243

`∩[A070776(n+1), A005843(n)]`
-/

namespace A321193.P10024392190001132243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321193.P10024392190001132243

namespace A321193

/-- `∩[A070776(n+1), A005843(n)]` -/
def P10024392190001132243.Spec : Prop :=
  ∀ n, (P10024392190001132243.a n : ℤ) = A321193 (n + 1)

end A321193

/-!
# A321195: Minimum number of monochromatic Schur triples over all 2-colorings of [n].

The programs for A321195, the canonical program `A321195.P8821453056535899526` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321195 has offset 1).

The definition of A321195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321195.P8821453056535899526

`floor(((n+1)²-4*(n+1)+6)/11)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A321195

/-- `floor(((n+1)²-4*(n+1)+6)/11)` -/
def P8821453056535899526.Spec : Prop :=
  ∀ n, P8821453056535899526.a n = A321195 (n + 1)

theorem P8821453056535899526.correct : P8821453056535899526.Spec := by
  intro n
  simp only [A321195, Nat.add_sub_cancel]

end A321195

/-! ## A321195.P8663259298373329345

`∑[A289122(abs(1-n))]`
-/

namespace A321195.P8663259298373329345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321195.P8663259298373329345

namespace A321195

/-- `∑[A289122(abs(1-n))]` -/
def P8663259298373329345.Spec : Prop :=
  ∀ n, P8663259298373329345.a n = A321195 (n + 1)

end A321195

/-! ## A321195.P9635834008752637568

`Δ[A177116(abs(2-n))]`
-/

namespace A321195.P9635834008752637568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177116 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321195.P9635834008752637568

namespace A321195

/-- `Δ[A177116(abs(2-n))]` -/
def P9635834008752637568.Spec : Prop :=
  ∀ n, P9635834008752637568.a n = A321195 (n + 1)

end A321195

/-! ## A321195.P6521053233271111822

`abs(round(A067998(n)/11))`
-/

namespace A321195.P6521053233271111822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((A067998 n : ℚ) / 11)|

end

end A321195.P6521053233271111822

namespace A321195

/-- `abs(round(A067998(n)/11))` -/
def P6521053233271111822.Spec : Prop :=
  ∀ n, P6521053233271111822.a n = A321195 (n + 1)

end A321195

/-! ## A321195.P9351116042737678521

`A289122(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A321195.P9351116042737678521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289122 (n - 1) + a (n - 1)

end

end A321195.P9351116042737678521

namespace A321195

/-- `A289122(n-1)+a(n-1)` -/
def P9351116042737678521.Spec : Prop :=
  ∀ n, P9351116042737678521.a n = A321195 (n + 1)

end A321195

/-! ## A321195.P9581776444651117596

`∑[A289122(n)]-A289122(n)`
-/

namespace A321195.P9581776444651117596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289122 n

end

end A321195.P9581776444651117596

namespace A321195

/-- `∑[A289122(n)]-A289122(n)` -/
def P9581776444651117596.Spec : Prop :=
  ∀ n, P9581776444651117596.a n = A321195 (n + 1)

end A321195

/-! ## A321195.P5588726243353217215

`A025790(A008574(n+2))-(n+2)`
-/

namespace A321195.P5588726243353217215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025790 (A008574 (n + 2)).toNat - (n + 2 : ℤ)

end

end A321195.P5588726243353217215

namespace A321195

/-- `A025790(A008574(n+2))-(n+2)` -/
def P5588726243353217215.Spec : Prop :=
  ∀ n, P5588726243353217215.a n = A321195 (n + 1)

end A321195

/-! ## A321195.P16369748907652782813

`A344420((1-n)²+2)`
-/

namespace A321195.P16369748907652782813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 ((1 - (n : ℤ)) ^ 2 + 2).toNat

end

end A321195.P16369748907652782813

namespace A321195

/-- `A344420((1-n)²+2)` -/
def P16369748907652782813.Spec : Prop :=
  ∀ n, P16369748907652782813.a n = A321195 (n + 1)

end A321195

/-! ## A321195.P10645346274963892848

`A344420(2*A155212(n))-n`
-/

namespace A321195.P10645346274963892848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (2 * A155212 n).toNat - (n : ℤ)

end

end A321195.P10645346274963892848

namespace A321195

/-- `A344420(2*A155212(n))-n` -/
def P10645346274963892848.Spec : Prop :=
  ∀ n, P10645346274963892848.a n = A321195 (n + 1)

end A321195

/-!
# A321196: Riordan triangle T = (1/(1 + x^2 - x^3), x/(1 + x^2 - x^3)).

The programs for A321196, there is no canonical definition to state claims against.
-/

/-! ## A321196.P18427104376113249410

`A005136(A065600(n))*A130777(n)`
-/

namespace A321196.P18427104376113249410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A065600 n).toNat * A130777 n

end

end A321196.P18427104376113249410

/-! ## A321196.P10190103158014543501

`A124765(A327127(n))*A130777(n)`
-/

namespace A321196.P10190103158014543501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A327127 n).toNat * A130777 n

end

end A321196.P10190103158014543501

/-! ## A321196.P15066917573955447866

`A130777(n)%A286724((n+1)²/∏{p}[n+1, #])`
-/

namespace A321196.P15066917573955447866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130777 n) (A286724 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A321196.P15066917573955447866

/-! ## A321196.P3485640162195572280

`A086011(A220888(n))+A049310(n)`
-/

namespace A321196.P3485640162195572280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086011 (A220888 n).toNat + A049310 n

end

end A321196.P3485640162195572280

/-! ## A321196.P15074639990499906571

`A130777(n)%A005496(A008290(n))`
-/

namespace A321196.P15074639990499906571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130777 n) (A005496 (A008290 n).toNat)

end

end A321196.P15074639990499906571

/-!
# A321198: Triangular Riordan matrix T = R^(-1) for triangular Riordan matrix R = (1/(1 + x^2 - x^3), x/(1 + x^2 - x^3)) given in A321196.

The programs for A321198, there is no canonical definition to state claims against.
-/

/-! ## A321198.P3655992241048195553

`A005136(A008290(n))*A131331(n)`
-/

namespace A321198.P3655992241048195553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A008290 n).toNat * A131331 n

end

end A321198.P3655992241048195553

/-! ## A321198.P3774333904557120529

`A006466(A011199(n))*A131331(n)`
-/

namespace A321198.P3774333904557120529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A011199 n).toNat * A131331 n

end

end A321198.P3774333904557120529

/-! ## A321198.P4415272302366392835

`A043290(A067333(n))*A131331(n)`
-/

namespace A321198.P4415272302366392835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A067333 n).toNat * A131331 n

end

end A321198.P4415272302366392835

/-! ## A321198.P7161830190733124674

`A131331(n)-A055641(A049213(n+1))`
-/

namespace A321198.P7161830190733124674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131331 n - A055641 (A049213 (n + 1)).toNat

end

end A321198.P7161830190733124674

/-! ## A321198.P10651150116169012888

`A322378(n)-A322358(A322367(2*n+3))`
-/

namespace A321198.P10651150116169012888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322378 n - A322358 (A322367 (2 * n + 3)).toNat

end

end A321198.P10651150116169012888

/-!
# A321199: Row sums of Riordan triangle A321198.

The programs for A321199, there is no canonical definition to state claims against.
-/

/-! ## A321199.P14207991612810447144

`∑[A321198(∑[abs(1-n)])]+1`
-/

namespace A321199.P14207991612810447144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321198 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321199.P14207991612810447144

