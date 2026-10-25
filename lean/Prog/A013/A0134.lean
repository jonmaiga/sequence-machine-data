import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C024

/-!
# A013402: E.g.f.: cos(arcsin(x)-tan(x))=1-10/6!*x^6-392/8!*x^8-11814/10!*x^10...

The programs for A013402, there is no canonical definition to state claims against.
-/

/-! ## A013402.P17603774585327027997

`A013493(2*n)*A033999(n)`
-/

namespace A013402.P17603774585327027997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013493 (2 * n) * A033999 n

end

end A013402.P17603774585327027997

/-! ## A013402.P191165376972619050

`A013493(2*n)/A225817(A000670(n))`
-/

namespace A013402.P191165376972619050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013493 (2 * n) : ℚ) / (A225817 (A000670 n).toNat : ℚ)

end

end A013402.P191165376972619050

/-!
# A013404: cosh(arcsin(x)-tan(x))=1+10/6!*x^6+392/8!*x^8+11814/10!*x^10...

The programs for A013404, there is no canonical definition to state claims against.
-/

/-! ## A013404.P6077280759621547390

`A013398(2*n)`
-/

namespace A013404.P6077280759621547390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013398 (2 * n)

end

end A013404.P6077280759621547390

/-! ## A013404.P8110742466400781776

`A013398(A005843(n))^A178334(n)`
-/

namespace A013404.P8110742466400781776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013398 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A013404.P8110742466400781776

/-! ## A013404.P10137348492669138913

`A013398(A005843(n))^A007318(∑[n])`
-/

namespace A013404.P10137348492669138913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013398 (A005843 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A013404.P10137348492669138913

/-! ## A013404.P7347431613258364374

`A013398(A005843(n))+char[A157669(n+1)]`
-/

namespace A013404.P7347431613258364374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157669 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013398 (A005843 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A013404.P7347431613258364374

/-! ## A013404.P18206285425385940145

`A013398(A005843(n))%A013389(n)`
-/

namespace A013404.P18206285425385940145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013398 (A005843 n).toNat) (A013389 n)

end

end A013404.P18206285425385940145

/-!
# A013407: E.g.f.: exp(arcsin(x)-arctan(x))=1+3/3!*x^3-15/5!*x^5+90/6!*x^6+945/7!*x^7...

The programs for A013407, there is no canonical definition to state claims against.
-/

/-! ## A013407.P6448839225817269047

`A013494(n)*A244895(A078213(n+1))`
-/

namespace A013407.P6448839225817269047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013494 n * A244895 (A078213 (n + 1)).toNat

end

end A013407.P6448839225817269047

/-! ## A013407.P8165032514313649154

`A013494(A078213(n+1)-1)*A122188(3*n+1)`
-/

namespace A013407.P8165032514313649154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013494 (A078213 (n + 1) - 1).toNat * A122188 (3 * n + 1)

end

end A013407.P8165032514313649154

/-! ## A013407.P15728791667878224818

`A122188(3*n+1)^A042081(A078213(n+1))*A013494(n)`
-/

namespace A013407.P15728791667878224818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122188 (3 * n + 1) : ℚ) ^ (A042081 (A078213 (n + 1)).toNat : ℤ) * (A013494 n : ℚ)

end

end A013407.P15728791667878224818

/-! ## A013407.P424629307427515256

`A013494(n)*A122188(ceil(2^(n-1)))`
-/

namespace A013407.P424629307427515256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013494 n * A122188 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A013407.P424629307427515256

/-!
# A013408: arcsin(arcsin(x)-arctan(x))=3/3!*x^3-15/5!*x^5+945/7!*x^7-21735/9!*x^9...

The programs for A013408, there is no canonical definition to state claims against.
-/

/-! ## A013408.P2020275221529848916

`A013407(Δ[A004880(n+2)²])`
-/

namespace A013408.P2020275221529848916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 (f1 (n + 1) - f1 n).toNat

end

end A013408.P2020275221529848916

/-! ## A013408.P15623050946717472707

`A013407(2*n+3)+A006925(A013416(n))`
-/

namespace A013408.P15623050946717472707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 (2 * n + 3) + A006925 (A013416 n).toNat

end

end A013408.P15623050946717472707

/-!
# A013409: tan(arcsin(x)-arctan(x))=3/3!*x^3-15/5!*x^5+945/7!*x^7-14175/9!*x^9...

The programs for A013409, there is no canonical definition to state claims against.
-/

/-! ## A013409.P15587448643733758641

`A046126(2*n+1)*A230417(A136517(n))`
-/

namespace A013409.P15587448643733758641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046126 (2 * n + 1) * A230417 (A136517 n).toNat

end

end A013409.P15587448643733758641

/-!
# A013411: cos(arcsin(x)-arctan(x))=1-90/6!*x^6+2520/8!*x^8-368550/10!*x^10...

The programs for A013411, there is no canonical definition to state claims against.
-/

/-! ## A013411.P10782530754430913730

`(-1)^n*A013494(2*n)`
-/

namespace A013411.P10782530754430913730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013494 (2 * n)

end

end A013411.P10782530754430913730

/-! ## A013411.P2046435767416234839

`A013494(2*n)*A062157(n+1)`
-/

namespace A013411.P2046435767416234839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013494 (2 * n) * A062157 (n + 1)

end

end A013411.P2046435767416234839

/-! ## A013411.P14018480890397263673

`A013494(2*n)*A122188(A000217(n+1))`
-/

namespace A013411.P14018480890397263673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013494 (2 * n) * A122188 (A000217 (n + 1)).toNat

end

end A013411.P14018480890397263673

/-!
# A013413: cosh(arcsin(x)-arctan(x))=1+90/6!*x^6-2520/8!*x^8+368550/10!*x^10...

The programs for A013413, there is no canonical definition to state claims against.
-/

/-! ## A013413.P1340335504586195544

`A013407(2*n)`
-/

namespace A013413.P1340335504586195544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 (2 * n)

end

end A013413.P1340335504586195544

/-! ## A013413.P6299096345969811296

`A013407(A004277(n))^C(n, C(n, n²))`
-/

namespace A013413.P6299096345969811296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 (A004277 n).toNat ^ Nat.choose n (Nat.choose n (n ^ 2))

end

end A013413.P6299096345969811296

/-! ## A013413.P13475623775969250971

`A013407(A004277(n))+A000007(n)`
-/

namespace A013413.P13475623775969250971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 (A004277 n).toNat + A000007 n

end

end A013413.P13475623775969250971

/-! ## A013413.P8166406746897300856

`A013407(A004277(n))^A178489(n)`
-/

namespace A013413.P8166406746897300856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013407 (A004277 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A013413.P8166406746897300856

/-! ## A013413.P9414618422587315468

`A013407(A005843(n))+A000007(n+1)`
-/

namespace A013413.P9414618422587315468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 (A005843 n).toNat + A000007 (n + 1)

end

end A013413.P9414618422587315468

/-!
# A013417: arcsin(arcsin(x)-arcsinh(x))=2/3!*x^3+450/7!*x^7+2240/9!*x^9...

The programs for A013417, there is no canonical definition to state claims against.
-/

/-! ## A013417.P18316261215378615060

`A013416(Δ[A271377(n+1)²])`
-/

namespace A013417.P18316261215378615060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271377 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013416 (f1 (n + 1) - f1 n).toNat

end

end A013417.P18316261215378615060

/-! ## A013417.P5644701732678236764

`A013416(A105658(2*n+1)+2)`
-/

namespace A013417.P5644701732678236764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013416 (A105658 (2 * n + 1) + 2).toNat

end

end A013417.P5644701732678236764

/-!
# A013418: tan(arcsin(x)-arcsinh(x)) = 2/3!*x^3+450/7!*x^7+4480/9!*x^9...

The programs for A013418, there is no canonical definition to state claims against.
-/

/-! ## A013418.P16805383615137302073

`A333233(n)*A333250(A046474(n+1))`
-/

namespace A013418.P16805383615137302073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333233 n * A333250 (A046474 (n + 1)).toNat

end

end A013418.P16805383615137302073

/-!
# A013419: E.g.f.: cos(arcsin(x)-arcsinh(x))=1-40/6!*x^6-108000/10!*x^10+246400/12!*x^12...

The programs for A013419, there is no canonical definition to state claims against.
-/

/-! ## A013419.P7133140099287227181

`A013416(2*n)*A033999(n)`
-/

namespace A013419.P7133140099287227181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013416 (2 * n) * A033999 n

end

end A013419.P7133140099287227181

/-! ## A013419.P7914408330741939300

`A013416(2*n)*A062157(n+1)`
-/

namespace A013419.P7914408330741939300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013416 (2 * n) * A062157 (n + 1)

end

end A013419.P7914408330741939300

/-! ## A013419.P14833771699847986639

`A013416(A005843(n))/A033999(n)`
-/

namespace A013419.P14833771699847986639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013416 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013419.P14833771699847986639

/-! ## A013419.P13401154467450797941

`A013416(2*n)/A062157(A082562(n))`
-/

namespace A013419.P13401154467450797941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013416 (2 * n) : ℚ) / (A062157 (A082562 n).toNat : ℚ)

end

end A013419.P13401154467450797941

/-! ## A013419.P4601395544554102529

`A013416(2*n)/A062157(A135517(n))`
-/

namespace A013419.P4601395544554102529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013416 (2 * n) : ℚ) / (A062157 (A135517 n).toNat : ℚ)

end

end A013419.P4601395544554102529

/-!
# A013420: sec(arcsin(x)-arcsinh(x))=1+40/6!*x^6+108000/10!*x^10+1232000/12!*x^12...

The programs for A013420, there is no canonical definition to state claims against.
-/

/-! ## A013420.P12124996310845762879

`A013416(A001222(9^n))`
-/

namespace A013420.P12124996310845762879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013416 (A001222 (9 ^ n)).toNat

end

end A013420.P12124996310845762879

/-! ## A013420.P15749409002141934933

`A013416(A105658(2*n+1)-1)`
-/

namespace A013420.P15749409002141934933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013416 (A105658 (2 * n + 1) - 1).toNat

end

end A013420.P15749409002141934933

/-!
# A013421: exp(arcsin(x)-tanh(x))=1+3/3!*x^3-7/5!*x^5+90/6!*x^6+497/7!*x^7...

The programs for A013421, there is no canonical definition to state claims against.
-/

/-! ## A013421.P3258636497236808151

`A013450(n)*A158388(A013451(n))`
-/

namespace A013421.P3258636497236808151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013450 n * A158388 (A013451 n).toNat

end

end A013421.P3258636497236808151

/-! ## A013421.P3455968779515799321

`A013450(n)*A057077(A013450(n+1))`
-/

namespace A013421.P3455968779515799321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013450 n * A057077 (A013450 (n + 1)).toNat

end

end A013421.P3455968779515799321

/-! ## A013421.P3964018609036923517

`A013450(n)/A087960(A013467(n))`
-/

namespace A013421.P3964018609036923517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013450 n : ℚ) / (A087960 (A013467 n).toNat : ℚ)

end

end A013421.P3964018609036923517

/-! ## A013421.P3055857093067259618

`A013450(n)*A071936(A243803(n+3))`
-/

namespace A013421.P3055857093067259618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013450 n * A071936 (A243803 (n + 3)).toNat

end

end A013421.P3055857093067259618

/-!
# A013422: E.g.f.: arcsin(arcsin(x)-tanh(x)) (odd coefficients only).

The programs for A013422, there is no canonical definition to state claims against.
-/

/-! ## A013422.P5712257199627814990

`A013421(A077168(2*n))`
-/

namespace A013422.P5712257199627814990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013421 (A077168 (2 * n)).toNat

end

end A013422.P5712257199627814990

/-! ## A013422.P16209486418302942427

`A013421(eq[1, A287597(n)])`
-/

namespace A013422.P16209486418302942427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A013422.P16209486418302942427

/-! ## A013422.P12528275130373044190

`A013421(A004880(n+2)+n)`
-/

namespace A013422.P12528275130373044190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013421 (A004880 (n + 2) + (n : ℤ)).toNat

end

end A013422.P12528275130373044190

/-!
# A013425: cos(arcsin(x)-tanh(x))=1-90/6!*x^6+1176/8!*x^8-185094/10!*x^10...

The programs for A013425, there is no canonical definition to state claims against.
-/

/-! ## A013425.P1530559144515262279

`(-1)^n*A013450(2*n)`
-/

namespace A013425.P1530559144515262279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013450 (2 * n)

end

end A013425.P1530559144515262279

/-! ## A013425.P16911560461891419111

`A013450(2*n)*A033999(n)`
-/

namespace A013425.P16911560461891419111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013450 (2 * n) * A033999 n

end

end A013425.P16911560461891419111

/-! ## A013425.P1388318533612282508

`A013450(2*n)*A057077(2*n)`
-/

namespace A013425.P1388318533612282508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013450 (2 * n) * A057077 (2 * n)

end

end A013425.P1388318533612282508

/-! ## A013425.P15522383137310926195

`A013450(A005843(n))/A033999(n)`
-/

namespace A013425.P15522383137310926195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013450 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013425.P15522383137310926195

/-! ## A013425.P3658356946691845517

`A013450(A005843(n))*A055870(A258409(3*(n+2)))`
-/

namespace A013425.P3658356946691845517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013450 (A005843 n).toNat * A055870 (A258409 (3 * (n + 2))).toNat

end

end A013425.P3658356946691845517

/-!
# A013427: cosh(arcsin(x)-tanh(x))=1+90/6!*x^6-1176/8!*x^8+185094/10!*x^10...

The programs for A013427, there is no canonical definition to state claims against.
-/

/-! ## A013427.P15547880949073714052

`A013421(2*n)`
-/

namespace A013427.P15547880949073714052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013421 (2 * n)

end

end A013427.P15547880949073714052

/-! ## A013427.P7283485692215654447

`A013421(A004277(n))^A178334(n)`
-/

namespace A013427.P7283485692215654447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013421 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A013427.P7283485692215654447

/-! ## A013427.P2793384022107667357

`or(A013421(A005843(n)), A151933(n))`
-/

namespace A013427.P2793384022107667357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013421 (A005843 n).toNat) (A151933 n)

end

end A013427.P2793384022107667357

/-! ## A013427.P12409281607364326859

`A013421(A005843(n))/abs(A057077(n))`
-/

namespace A013427.P12409281607364326859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013421 (A005843 n).toNat : ℚ) / (|A057077 n| : ℚ)

end

end A013427.P12409281607364326859

/-! ## A013427.P10977891293051979938

`A013421(A005843(n))/A057077(n²)`
-/

namespace A013427.P10977891293051979938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013421 (A005843 n).toNat : ℚ) / (A057077 (n ^ 2) : ℚ)

end

end A013427.P10977891293051979938

/-!
# A013430: Expansion of e.g.f. exp(arcsin(x)-arctanh(x)).

The programs for A013430, the canonical program `A013430.P909445180935276507` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013430 has offset 0).

The definition of A013430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013430.P909445180935276507

`A006228(n+1)-n*A006228(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A013430

/-- `A006228(n+1)-n*A006228(n)` -/
def P909445180935276507.Spec : Prop :=
  ∀ n, P909445180935276507.a n = A013430 n

theorem P909445180935276507.correct : P909445180935276507.Spec := by
  intro n
  simp only [A013430]

end A013430

/-! ## A013430.P2762107355350644313

`A013170(n)-A005843(n)*A006228(n)`
-/

namespace A013430.P2762107355350644313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013170 n - A005843 n * A006228 n

end

end A013430.P2762107355350644313

namespace A013430

/-- `A013170(n)-A005843(n)*A006228(n)` -/
def P2762107355350644313.Spec : Prop :=
  ∀ n, P2762107355350644313.a n = A013430 n

end A013430

/-! ## A013430.P7878522639966163678

`A006228(n+1)+A006228(n+1)-A013170(n)`
-/

namespace A013430.P7878522639966163678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (n + 1) + (A006228 (n + 1) - A013170 n)

end

end A013430.P7878522639966163678

namespace A013430

/-- `A006228(n+1)+A006228(n+1)-A013170(n)` -/
def P7878522639966163678.Spec : Prop :=
  ∀ n, P7878522639966163678.a n = A013430 n

end A013430

/-! ## A013430.P13877855452155371542

`A013461(n)*A158388(A013451(n))`
-/

namespace A013430.P13877855452155371542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013461 n * A158388 (A013451 n).toNat

end

end A013430.P13877855452155371542

namespace A013430

/-- `A013461(n)*A158388(A013451(n))` -/
def P13877855452155371542.Spec : Prop :=
  ∀ n, P13877855452155371542.a n = A013430 n

end A013430

/-! ## A013430.P16980066663869207389

`A013461(n)*A330025(A025169(n))`
-/

namespace A013430.P16980066663869207389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013461 n * A330025 (A025169 n).toNat

end

end A013430.P16980066663869207389

namespace A013430

/-- `A013461(n)*A330025(A025169(n))` -/
def P16980066663869207389.Spec : Prop :=
  ∀ n, P16980066663869207389.a n = A013430 n

end A013430

/-!
# A013431: E.g.f.: -arcsin(arcsin(x) - arctanh(x)) (odd powers only).

The programs for A013431, there is no canonical definition to state claims against.
-/

/-! ## A013431.P16645201633664193100

`record[-A013430(A302295(n))]`
-/

namespace A013431.P16645201633664193100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013430 (A302295 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013431.P16645201633664193100

/-! ## A013431.P14170580450534010535

`record[-A013430(A065673(n+1))]`
-/

namespace A013431.P14170580450534010535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013430 (A065673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013431.P14170580450534010535

/-!
# A013432: tan(arctanh(x)-arcsin(x)) = 1/3!*x^3 + 15/5!*x^5 + 495/7!*x^7 + 29855/9!*x^9...

The programs for A013432, there is no canonical definition to state claims against.
-/

/-! ## A013432.P917589757018958223

`∑{d}[A013363(n)-A013377(n), A000010(#)]`
-/

namespace A013432.P917589757018958223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013363 n - A013377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A013432.P917589757018958223

/-!
# A013433: -arctan(arcsin(x)-arctanh(x))=1/3!*x^3+15/5!*x^5+495/7!*x^7+28735/9!*x^9...

The programs for A013433, there is no canonical definition to state claims against.
-/

/-! ## A013433.P17789143070658792215

`A013431(n+1)-A001613(A013436(n))`
-/

namespace A013433.P17789143070658792215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013431 (n + 1) - A001613 (A013436 n).toNat

end

end A013433.P17789143070658792215

/-!
# A013434: cos(arcsin(x)-arctanh(x))=1-10/6!*x^6-840/8!*x^8-87750/10!*x^10...

The programs for A013434, there is no canonical definition to state claims against.
-/

/-! ## A013434.P12198907667960200916

`A013461(2*n)*A033999(n)`
-/

namespace A013434.P12198907667960200916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013461 (2 * n) * A033999 n

end

end A013434.P12198907667960200916

/-! ## A013434.P15891368534751976649

`A013461(2*n)*A062157(n+1)`
-/

namespace A013434.P15891368534751976649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013461 (2 * n) * A062157 (n + 1)

end

end A013434.P15891368534751976649

/-! ## A013434.P7860943908646612871

`A013461(A005843(n))/A033999(n)`
-/

namespace A013434.P7860943908646612871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013461 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013434.P7860943908646612871

/-! ## A013434.P6583616664516712168

`A000007(n)-abs(A013461(A004277(n)))`
-/

namespace A013434.P6583616664516712168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - |A013461 (A004277 n).toNat|

end

end A013434.P6583616664516712168

/-! ## A013434.P14591939745088246306

`A013461(2*n)/A062157(A082562(n))`
-/

namespace A013434.P14591939745088246306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013461 (2 * n) : ℚ) / (A062157 (A082562 n).toNat : ℚ)

end

end A013434.P14591939745088246306

/-!
# A013435: E.g.f.: arcsinh(arctanh(x) - arcsin(x)) (odd powers only).

The programs for A013435, there is no canonical definition to state claims against.
-/

/-! ## A013435.P4345913818248342503

`A013461(2*n+1)*A062157(A101376(n+1))`
-/

namespace A013435.P4345913818248342503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013461 (2 * n + 1) * A062157 (A101376 (n + 1)).toNat

end

end A013435.P4345913818248342503

/-! ## A013435.P14772049019841722324

`lcm(A013461(2*n+1), A158388(A013170(n+1)))`
-/

namespace A013435.P14772049019841722324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013461 (2 * n + 1)) (A158388 (A013170 (n + 1)).toNat)

end

end A013435.P14772049019841722324

/-!
# A013436: cosh(arcsin(x)-arctanh(x))=1+10/6!*x^6+840/8!*x^8+87750/10!*x^10...

The programs for A013436, there is no canonical definition to state claims against.
-/

/-! ## A013436.P17715376060176711949

`A013430(2*n)`
-/

namespace A013436.P17715376060176711949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013430 (2 * n)

end

end A013436.P17715376060176711949

/-! ## A013436.P3532168803885582092

`abs(A013430(A005843(n)))`
-/

namespace A013436.P3532168803885582092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013430 (A005843 n).toNat|

end

end A013436.P3532168803885582092

/-! ## A013436.P16688620991104697491

`abs(A013430(Δ[A002061(n)]))`
-/

namespace A013436.P16688620991104697491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013430 (f1 (n + 1) - f1 n).toNat|

end

end A013436.P16688620991104697491

/-! ## A013436.P18241757982833685240

`2*A006228(2*n+1)-A013170(2*n)`
-/

namespace A013436.P18241757982833685240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006228 (2 * n + 1) - A013170 (2 * n)

end

end A013436.P18241757982833685240

/-! ## A013436.P11516042577152326297

`gcd(A000038(n), A013430(A005843(n)))`
-/

namespace A013436.P11516042577152326297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A013430 (A005843 n).toNat)

end

end A013436.P11516042577152326297

/-!
# A013439: Expansion of e.g.f.: exp(tan(x)-log(x+1))=1+1/2!*x^2+9/4!*x^4-8/5!*x^5+225/6!*x^6...

The programs for A013439, there is no canonical definition to state claims against.
-/

/-! ## A013439.P3331714187113451807

`A006229(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A013439.P3331714187113451807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006229 n - (n : ℤ) * a (n - 1)

end

end A013439.P3331714187113451807

/-! ## A013439.P16279938355395932812

`A009243(n+1)/(n+1)-n*a(n-1)` with `a(0)=1`
-/

namespace A013439.P16279938355395932812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A009243 (n + 1) : ℚ) / (n + 1 : ℚ) - (n : ℚ) * a (n - 1)

end

end A013439.P16279938355395932812

/-! ## A013439.P7154547755697052026

`A013243(n)-A013239(n)`
-/

namespace A013439.P7154547755697052026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013243 n - A013239 n

end

end A013439.P7154547755697052026

/-! ## A013439.P17238376265784088337

`A012924(n)-n*a(n-1)-A009243(n)` with `a(0)=1`
-/

namespace A013439.P17238376265784088337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012924 n - (n : ℤ) * a (n - 1) - A009243 n

end

end A013439.P17238376265784088337

/-! ## A013439.P14436376245536161111

`A013243(A002998(n))-A013235(n)`
-/

namespace A013439.P14436376245536161111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013243 (A002998 n).toNat - A013235 n

end

end A013439.P14436376245536161111

/-!
# A013440: Expansion of e.g.f.: exp(tan(x)-arctan(x))=1+4/3!*x^3-8/5!*x^5+160/6!*x^6+992/7!*x^7...

The programs for A013440, there is no canonical definition to state claims against.
-/

/-! ## A013440.P9641970353586297487

`A013496(n)*A034947(A370540(n))`
-/

namespace A013440.P9641970353586297487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 n * A034947 (A370540 n).toNat

end

end A013440.P9641970353586297487

/-! ## A013440.P12880987712163104289

`A013496(n)*A034947(A092043(n+1))`
-/

namespace A013440.P12880987712163104289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 n * A034947 (A092043 (n + 1)).toNat

end

end A013440.P12880987712163104289

/-! ## A013440.P3832744771335216664

`A013496(n)*A122188(ceil(2^(n-1)))`
-/

namespace A013440.P3832744771335216664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 n * A122188 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A013440.P3832744771335216664

/-! ## A013440.P2056648385437124164

`A013496(n)*A034947(A134758(n))`
-/

namespace A013440.P2056648385437124164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 n * A034947 (A134758 n).toNat

end

end A013440.P2056648385437124164

/-!
# A013441: sin(tan(x)-arctan(x))=4/3!*x^3-8/5!*x^5+992/7!*x^7-50304/9!*x^9...

The programs for A013441, there is no canonical definition to state claims against.
-/

/-! ## A013441.P3354088175503227640

`A013496(2*n+3)*A033999(n+1)`
-/

namespace A013441.P3354088175503227640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 (2 * n + 3) * A033999 (n + 1)

end

end A013441.P3354088175503227640

/-!
# A013442: arcsin(tan(x)-arctan(x))=4/3!*x^3-8/5!*x^5+992/7!*x^7-14464/9!*x^9...

The programs for A013442, there is no canonical definition to state claims against.
-/

/-! ## A013442.P9499051959919554179

`A013440(A000005(9^n)+2)`
-/

namespace A013442.P9499051959919554179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013440 (A000005 (9 ^ n) + 2).toNat

end

end A013442.P9499051959919554179

/-! ## A013442.P3137951515444263178

`A013440(2*A292125(n+1)+1)`
-/

namespace A013442.P3137951515444263178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013440 (2 * A292125 (n + 1) + 1).toNat

end

end A013442.P3137951515444263178

/-!
# A013444: cos(tan(x)-arctan(x))=1-160/6!*x^6+1792/8!*x^8-484224/10!*x^10...

The programs for A013444, there is no canonical definition to state claims against.
-/

/-! ## A013444.P17115102919574460755

`A013496(2*n)*A033999(n)`
-/

namespace A013444.P17115102919574460755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 (2 * n) * A033999 n

end

end A013444.P17115102919574460755

/-! ## A013444.P6530748661244468403

`A013496(2*n)*A034947(n²+5)`
-/

namespace A013444.P6530748661244468403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 (2 * n) * A034947 (n ^ 2 + 5)

end

end A013444.P6530748661244468403

/-! ## A013444.P12913583094331854970

`A013496(2*n)*A121238(n²+5)`
-/

namespace A013444.P12913583094331854970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 (2 * n) * A121238 (n ^ 2 + 5)

end

end A013444.P12913583094331854970

/-! ## A013444.P16529712233093759842

`A013496(2*n)*A209615(2*n+1)`
-/

namespace A013444.P16529712233093759842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013496 (2 * n) * A209615 (2 * n + 1)

end

end A013444.P16529712233093759842

/-!
# A013446: cosh(tan(x)-arctan(x))=1+160/6!*x^6-1792/8!*x^8+484224/10!*x^10...

The programs for A013446, there is no canonical definition to state claims against.
-/

/-! ## A013446.P4764349860172266089

`A013440(2*n)`
-/

namespace A013446.P4764349860172266089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013440 (2 * n)

end

end A013446.P4764349860172266089

/-! ## A013446.P5488380719918288874

`A025439(n)+A013440(A005843(n))`
-/

namespace A013446.P5488380719918288874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A013440 (A005843 n).toNat

end

end A013446.P5488380719918288874

/-! ## A013446.P7787489194291328524

`or(A000007(n), A013440(A005843(n)))`
-/

namespace A013446.P7787489194291328524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A013440 (A005843 n).toNat)

end

end A013446.P7787489194291328524

/-! ## A013446.P11191053023245920626

`A013440(A005843(n))%A013423(n)`
-/

namespace A013446.P11191053023245920626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013440 (A005843 n).toNat) (A013423 n)

end

end A013446.P11191053023245920626

/-! ## A013446.P11938550721290159927

`∏{e}[A000302(n), A013440(#)]`
-/

namespace A013446.P11938550721290159927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A013440 (Nat.factorization (f1 n).natAbs p)

end

end A013446.P11938550721290159927

/-!
# A013449: exp(tan(x)-sinh(x))=1+1/3!*x^3+15/5!*x^5+10/6!*x^6+271/7!*x^7...

The programs for A013449, there is no canonical definition to state claims against.
-/

/-! ## A013449.P3281084989934248256

`abs(A013379(A073790(n)))`
-/

namespace A013449.P3281084989934248256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013379 (A073790 n).toNat|

end

end A013449.P3281084989934248256

/-! ## A013449.P7111452448867395898

`abs(A013379(A004892(n+1)))`
-/

namespace A013449.P7111452448867395898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013379 (A004892 (n + 1)).toNat|

end

end A013449.P7111452448867395898

/-! ## A013449.P4388027889692737135

`abs(A013379(n)%A003684(n+1))`
-/

namespace A013449.P4388027889692737135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A013379 n) (A003684 (n + 1))|

end

end A013449.P4388027889692737135

/-! ## A013449.P11053844954222760695

`A013379(n)*A158388(A013451(n))`
-/

namespace A013449.P11053844954222760695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013379 n * A158388 (A013451 n).toNat

end

end A013449.P11053844954222760695

/-! ## A013449.P15297542618912858849

`A013379(n)*A034947(A319552(n))`
-/

namespace A013449.P15297542618912858849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013379 n * A034947 (A319552 n).toNat

end

end A013449.P15297542618912858849

/-!
# A013450: exp(tan(x)-arcsinh(x)) = 1+3/3!*x^3+7/5!*x^5+90/6!*x^6+497/7!*x^7...

The programs for A013450, there is no canonical definition to state claims against.
-/

/-! ## A013450.P2434322949547911840

`abs(A013421(A004892(n+1)))`
-/

namespace A013450.P2434322949547911840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013421 (A004892 (n + 1)).toNat|

end

end A013450.P2434322949547911840

/-! ## A013450.P15513172448701234923

`A005843(abs(A013421(n)))/2`
-/

namespace A013450.P15513172448701234923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 |A013421 n|.toNat : ℚ) / 2

end

end A013450.P15513172448701234923

/-! ## A013450.P10781970940958517281

`abs(A013421(n)%A287611(n+1))`
-/

namespace A013450.P10781970940958517281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A013421 n) (A287611 (n + 1))|

end

end A013450.P10781970940958517281

/-! ## A013450.P11467799062777754033

`gcd(A008683(A000302(n)), A013421(n))`
-/

namespace A013450.P11467799062777754033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A000302 n).toNat) (A013421 n)

end

end A013450.P11467799062777754033

/-!
# A013451: E.g.f.: exp(tan(x)-tanh(x))=1+4/3!*x^3+160/6!*x^6+544/7!*x^7+17920/9!*x^9...

The programs for A013451, there is no canonical definition to state claims against.
-/

/-! ## A013451.P14664755350040192758

`A028598(A305025(n+1)*A305049(n))`
-/

namespace A013451.P14664755350040192758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028598 (A305025 (n + 1) * A305049 n).toNat

end

end A013451.P14664755350040192758

/-! ## A013451.P12098543257369836158

`A028598(2*(A305049(n)-A028598(n)))`
-/

namespace A013451.P12098543257369836158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028598 (2 * (A305049 n - A028598 n)).toNat

end

end A013451.P12098543257369836158

/-! ## A013451.P254541926954440630

`and(A003685(n+1), A008647(A003674(n)))`
-/

namespace A013451.P254541926954440630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003685 (n + 1)) (A008647 (A003674 n).toNat)

end

end A013451.P254541926954440630

/-! ## A013451.P7578528849110740781

`and(A031363(A133400(n)), A075352(n+1))`
-/

namespace A013451.P7578528849110740781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031363 (A133400 n).toNat) (A075352 (n + 1))

end

end A013451.P7578528849110740781

/-!
# A013452: sin(tan(x)-tanh(x))=4/3!*x^3+544/7!*x^7-17920/9!*x^9+707584/11!*x^11...

The programs for A013452, there is no canonical definition to state claims against.
-/

/-! ## A013452.P2910232180392861461

`A013451(2*n+3)*A033999(n)`
-/

namespace A013452.P2910232180392861461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013451 (2 * n + 3) * A033999 n

end

end A013452.P2910232180392861461

/-! ## A013452.P13410040413429706912

`A013451(2*n+3)*A034947(A236278(n+1))`
-/

namespace A013452.P13410040413429706912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013451 (2 * n + 3) * A034947 (A236278 (n + 1)).toNat

end

end A013452.P13410040413429706912

/-!
# A013453: tan(tan(x)-tanh(x))=4/3!*x^3+544/7!*x^7+35840/9!*x^9+707584/11!*x^11...

The programs for A013453, there is no canonical definition to state claims against.
-/

/-! ## A013453.P9550620552937956045

`and(A034856(A020549(n)), A253985(n+1))`
-/

namespace A013453.P9550620552937956045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034856 (A020549 n).toNat) (A253985 (n + 1))

end

end A013453.P9550620552937956045

/-!
# A013454: cos(tan(x)-tanh(x))=1-160/6!*x^6-261120/10!*x^10+3942400/12!*x^12...

The programs for A013454, there is no canonical definition to state claims against.
-/

/-! ## A013454.P6356849363507937597

`(-1)^n*A013451(2*n)`
-/

namespace A013454.P6356849363507937597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013451 (2 * n)

end

end A013454.P6356849363507937597

/-! ## A013454.P14870340276323086178

`A013451(2*n)*A033999(n)`
-/

namespace A013454.P14870340276323086178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013451 (2 * n) * A033999 n

end

end A013454.P14870340276323086178

/-! ## A013454.P9975501333042244709

`A013451(2*n)*A034947(n²+5)`
-/

namespace A013454.P9975501333042244709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013451 (2 * n) * A034947 (n ^ 2 + 5)

end

end A013454.P9975501333042244709

/-! ## A013454.P10157761654345069819

`A013451(A005843(n))/A033999(n)`
-/

namespace A013454.P10157761654345069819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013451 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013454.P10157761654345069819

/-! ## A013454.P16718377770815163247

`A010673(n+1)*A013451(2*n)-A013451(2*n)`
-/

namespace A013454.P16718377770815163247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) * A013451 (2 * n) - A013451 (2 * n)

end

end A013454.P16718377770815163247

/-!
# A013455: Expansion of e.g.f. sec(tan(x) - tanh(x)) (even-indexed coefficients only).

The programs for A013455, there is no canonical definition to state claims against.
-/

/-! ## A013455.P8601025997904363911

`A013451(A001222(9^n))`
-/

namespace A013455.P8601025997904363911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013451 (A001222 (9 ^ n)).toNat

end

end A013455.P8601025997904363911

/-! ## A013455.P18126803278670690453

`A013451(A000005(9^n)-1)`
-/

namespace A013455.P18126803278670690453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013451 (A000005 (9 ^ n) - 1).toNat

end

end A013455.P18126803278670690453

/-!
# A013456: Expansion of e.g.f.: exp(tan(x)-arctanh(x))=1-8/5!*x^5-448/7!*x^7-32384/9!*x^9+8064/10!*x^10...

The programs for A013456, there is no canonical definition to state claims against.
-/

/-! ## A013456.P7083148073228147562

`A224822(A224852(n)-A224860(n+1))`
-/

namespace A013456.P7083148073228147562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (A224852 n - A224860 (n + 1)).toNat

end

end A013456.P7083148073228147562

/-!
# A013458: cos(tan(x)-arctanh(x))=1-8064/10!*x^10-2838528/12!*x^12...

The programs for A013458, there is no canonical definition to state claims against.
-/

/-! ## A013458.P9950278547095109746

`A010673(A013451(n))-A013456(2*n)`
-/

namespace A013458.P9950278547095109746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A013451 n).toNat - A013456 (2 * n)

end

end A013458.P9950278547095109746

/-! ## A013458.P9012335293129266552

`A010673(A277318(n+1))-A013456(2*n)`
-/

namespace A013458.P9012335293129266552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A277318 (n + 1)).toNat - A013456 (2 * n)

end

end A013458.P9012335293129266552

/-!
# A013459: Expansion of e.g.f. exp(arctan(x) - log(x+1)).

The programs for A013459, there is no canonical definition to state claims against.
-/

/-! ## A013459.P7226395748724634053

`A002019(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A013459.P7226395748724634053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002019 n - (n : ℤ) * a (n - 1)

end

end A013459.P7226395748724634053

/-! ## A013459.P12822120241378145702

`A013255(n)-A013251(n)`
-/

namespace A013459.P12822120241378145702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013255 n - A013251 n

end

end A013459.P12822120241378145702

/-! ## A013459.P10551253964719640532

`A013255(n)-A013247(A039723(n))`
-/

namespace A013459.P10551253964719640532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013255 n - A013247 (A039723 n).toNat

end

end A013459.P10551253964719640532

/-! ## A013459.P17526058224921367698

`A013255(n)-A013247(A051022(n))`
-/

namespace A013459.P17526058224921367698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013255 n - A013247 (A051022 n).toNat

end

end A013459.P17526058224921367698

/-!
# A013460: exp(arctan(x)-sinh(x))=1-3/3!*x^3+23/5!*x^5+90/6!*x^6-721/7!*x^7...

The programs for A013460, there is no canonical definition to state claims against.
-/

/-! ## A013460.P10934590325954424074

`A008836(A002212(n))*A013388(n)`
-/

namespace A013460.P10934590325954424074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A002212 n).toNat * A013388 n

end

end A013460.P10934590325954424074

/-! ## A013460.P13371321812877077971

`A008836(A007317(n+1))*A013388(n)`
-/

namespace A013460.P13371321812877077971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A007317 (n + 1)).toNat * A013388 n

end

end A013460.P13371321812877077971

/-! ## A013460.P6554851796931101990

`A013388(n)*A033999(A000108(n+2))`
-/

namespace A013460.P6554851796931101990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013388 n * A033999 (A000108 (n + 2)).toNat

end

end A013460.P6554851796931101990

/-!
# A013461: Expansion of e.g.f. exp(arctan(x)-arcsinh(x)).

The programs for A013461, there is no canonical definition to state claims against.
-/

/-! ## A013461.P1726386358503014272

`A013430(n)*A158388(A013451(n))`
-/

namespace A013461.P1726386358503014272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013430 n * A158388 (A013451 n).toNat

end

end A013461.P1726386358503014272

/-! ## A013461.P3930079431176258082

`A013430(n)*A330025(A025169(n))`
-/

namespace A013461.P3930079431176258082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013430 n * A330025 (A025169 n).toNat

end

end A013461.P3930079431176258082

/-! ## A013461.P13286190650972286428

`(A006228(n+1)-n*A006228(n))*A158388(A013451(n))`
-/

namespace A013461.P13286190650972286428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006228 (n + 1) - (n : ℤ) * A006228 n) * A158388 (A013451 n).toNat

end

end A013461.P13286190650972286428

/-! ## A013461.P7775074481705799477

`(A006228(n+1)-n*A006228(n))*A330025(A025169(n))`
-/

namespace A013461.P7775074481705799477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006228 (n + 1) - (n : ℤ) * A006228 n) * A330025 (A025169 n).toNat

end

end A013461.P7775074481705799477

/-!
# A013462: Expansion of e.g.f. exp(arctan(x)-arctanh(x)).

The programs for A013462, there is no canonical definition to state claims against.
-/

/-! ## A013462.P7101663105110884324

`A008683(A028342(n))*A326862(n)`
-/

namespace A013462.P7101663105110884324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028342 n).toNat * A326862 n

end

end A013462.P7101663105110884324

/-! ## A013462.P11056307617618179612

`A033999(A008549(n))*A326862(n)`
-/

namespace A013462.P11056307617618179612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A008549 n).toNat * A326862 n

end

end A013462.P11056307617618179612

/-! ## A013462.P6877580653803649457

`A008683(A220634(n+1))*A326862(n)`
-/

namespace A013462.P6877580653803649457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A220634 (n + 1)).toNat * A326862 n

end

end A013462.P6877580653803649457

/-! ## A013462.P12216897719808331450

`A033999(A305543(n+1))*A326862(n)`
-/

namespace A013462.P12216897719808331450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A305543 (n + 1)).toNat * A326862 n

end

end A013462.P12216897719808331450

/-!
# A013463: Expansion of e.g.f. sin(arctan(x) - arctanh(x)) (odd powers only).

The programs for A013463, there is no canonical definition to state claims against.
-/

/-! ## A013463.P10917257657622512892

`A013462(2*n+1)*A033999(n+1)`
-/

namespace A013463.P10917257657622512892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013462 (2 * n + 1) * A033999 (n + 1)

end

end A013463.P10917257657622512892

/-!
# A013465: Expansion of e.g.f. cos(arctan(x) - arctanh(x)) (even powers only).

The programs for A013465, there is no canonical definition to state claims against.
-/

/-! ## A013465.P14400064583944318298

`A013462(2*n)*A033999(n)`
-/

namespace A013465.P14400064583944318298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013462 (2 * n) * A033999 n

end

end A013465.P14400064583944318298

/-! ## A013465.P12273249118351447529

`A013462(A005843(n))/A033999(n)`
-/

namespace A013465.P12273249118351447529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013462 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013465.P12273249118351447529

/-!
# A013466: sec(arctan(x)-arctanh(x))=1+160/6!*x^6+691200/10!*x^10+19712000/12!*x^12...

The programs for A013466, there is no canonical definition to state claims against.
-/

/-! ## A013466.P13680100941266724360

`A326862(∑{e}[10^n, #])`
-/

namespace A013466.P13680100941266724360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326862 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A013466.P13680100941266724360

/-! ## A013466.P17434622648827906652

`A326862(A076558(6^n))`
-/

namespace A013466.P17434622648827906652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326862 (A076558 (6 ^ n)).toNat

end

end A013466.P17434622648827906652

/-!
# A013467: Expansion of e.g.f. -log(cos(x) - log(x+1)).

The programs for A013467, there is no canonical definition to state claims against.
-/

/-! ## A013467.P698537906552181791

`A170890(A000620(n+1)-n/or(n, -2))`
-/

namespace A013467.P698537906552181791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (SequenceMachineLib.roundAway ((A000620 (n + 1) : ℚ) - (n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))).toNat

end

end A013467.P698537906552181791

/-! ## A013467.P12810201040431675349

`xor(A004012(A186338(n)), A253564(n+1))`
-/

namespace A013467.P12810201040431675349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004012 (A186338 n).toNat) (A253564 (n + 1))

end

end A013467.P12810201040431675349

/-!
# A013468: Expansion of e.g.f.: exp(cos(x)-exp(x))=1-x-1/2!*x^2+4/3!*x^3+5/4!*x^4-32/5!*x^5...

The programs for A013468, there is no canonical definition to state claims against.
-/

/-! ## A013468.P5142107597977466459

`A013319(n)-A013315(n+1)`
-/

namespace A013468.P5142107597977466459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013319 n - A013315 (n + 1)

end

end A013468.P5142107597977466459

/-! ## A013468.P8292659912168677682

`2*A013319(n)-A013309(n)`
-/

namespace A013468.P8292659912168677682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013319 n - A013309 n

end

end A013468.P8292659912168677682

/-! ## A013468.P7924314998446623711

`A013309(n)-2*A013315(n+1)`
-/

namespace A013468.P7924314998446623711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013309 n - 2 * A013315 (n + 1)

end

end A013468.P7924314998446623711

/-! ## A013468.P9622841978728819286

`A013319(A023052(n+1))-(A013309(n)-A013319(n))`
-/

namespace A013468.P9622841978728819286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013319 (A023052 (n + 1)).toNat - (A013309 n - A013319 n)

end

end A013468.P9622841978728819286

/-! ## A013468.P16826944795679739871

`A005843(A013319(n))-A013309(n)`
-/

namespace A013468.P16826944795679739871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013319 n).toNat - A013309 n

end

end A013468.P16826944795679739871

/-!
# A013475: Coefficient of [x^(4*n+2)] in e.g.f. sinh(cosh(x) - cos(x)).

The programs for A013475, there is no canonical definition to state claims against.
-/

/-! ## A013475.P8075234291944541712

`record[-A013469(n+1)]`
-/

namespace A013475.P8075234291944541712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A013469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013475.P8075234291944541712

/-! ## A013475.P13061062421967442256

`abs(A013469(2*n+1))`
-/

namespace A013475.P13061062421967442256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013469 (2 * n + 1)|

end

end A013475.P13061062421967442256

/-!
# A013479: cosh(cos(x)-cosh(x))=1+12/4!*x^4+1792/8!*x^8+889152/12!*x^12...

The programs for A013479, there is no canonical definition to state claims against.
-/

/-! ## A013479.P1656816446292681830

`record[A013469(n)]`
-/

namespace A013479.P1656816446292681830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013479.P1656816446292681830

/-! ## A013479.P15587280284688828161

`A013469(2*n)`
-/

namespace A013479.P15587280284688828161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013469 (2 * n)

end

end A013479.P15587280284688828161

/-!
# A013483: E.g.f.: sin(cos(x)-sech(x)) (even powers only).

The programs for A013483, there is no canonical definition to state claims against.
-/

/-! ## A013483.P13033250152129293659

`A008836(A002110(n))-A028296(n)`
-/

namespace A013483.P13033250152129293659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A002110 n).toNat - A028296 n

end

end A013483.P13033250152129293659

/-! ## A013483.P16144211077427887591

`A009001(A007289(n))-A028296(n)`
-/

namespace A013483.P16144211077427887591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A007289 n).toNat - A028296 n

end

end A013483.P16144211077427887591

/-!
# A013487: cos(cos(x)-sech(x))=1-560/8!*x^8+50400/10!*x^10-4403520/12!*x^12...

The programs for A013487, there is no canonical definition to state claims against.
-/

/-! ## A013487.P17753378237383123077

`A143507(3^n-n!)`
-/

namespace A013487.P17753378237383123077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143507 (3 ^ n - Nat.factorial n)

end

end A013487.P17753378237383123077

/-!
# A013488: Expansion of e.g.f.: exp(sinh(x)-log(x+1))=1+1/2!*x^2-1/3!*x^3+9/4!*x^4-33/5!*x^5...

The programs for A013488, there is no canonical definition to state claims against.
-/

/-! ## A013488.P16168250284338953359

`A003724(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A013488.P16168250284338953359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003724 n - (n : ℤ) * a (n - 1)

end

end A013488.P16168250284338953359

/-! ## A013488.P9490689885373848026

`A013267(n)-A013263(n)`
-/

namespace A013488.P9490689885373848026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013267 n - A013263 n

end

end A013488.P9490689885373848026

/-! ## A013488.P9822613631796559531

`A033999(n)*A186762(n)`
-/

namespace A013488.P9822613631796559531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186762 n

end

end A013488.P9822613631796559531

/-! ## A013488.P4004289041948485570

`A186762(n)/A033999(n²)`
-/

namespace A013488.P4004289041948485570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186762 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A013488.P4004289041948485570

/-! ## A013488.P2661705950014571692

`(-1)^n*A186761(A000217(n))`
-/

namespace A013488.P2661705950014571692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A186761 (A000217 n).toNat

end

end A013488.P2661705950014571692

/-! ## A013488.P3180842811605464510

`A186761(A000217(n))/A033999(n)`
-/

namespace A013488.P3180842811605464510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186761 (A000217 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013488.P3180842811605464510

/-! ## A013488.P6724973353123756932

`A186761(A000217(n))/A070048(n)*A116498(n)`
-/

namespace A013488.P6724973353123756932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186761 (A000217 n).toNat : ℚ) / (A070048 n : ℚ) * (A116498 n : ℚ)

end

end A013488.P6724973353123756932

/-!
# A013490: E.g.f.: exp(sinh(x)-tanh(x))=1+3/3!*x^3-15/5!*x^5+90/6!*x^6+273/7!*x^7...

The programs for A013490, there is no canonical definition to state claims against.
-/

/-! ## A013490.P14573036553195781819

`A013351(n)*A062157(A099508(2*(n+2)))`
-/

namespace A013490.P14573036553195781819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013351 n * A062157 (A099508 (2 * (n + 2))).toNat

end

end A013490.P14573036553195781819

/-! ## A013490.P7407392254053208149

`A013351(n)*A062157(A270339(3*(n+1)))`
-/

namespace A013490.P7407392254053208149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013351 n * A062157 (A270339 (3 * (n + 1))).toNat

end

end A013490.P7407392254053208149

/-! ## A013490.P13879329302521474

`A013351(n)*A062157(A042081(n))`
-/

namespace A013490.P13879329302521474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013351 n * A062157 (A042081 n).toNat

end

end A013490.P13879329302521474

/-! ## A013490.P8263262487634920731

`A013407(n)%A030104(A154671(n+1))`
-/

namespace A013490.P8263262487634920731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013407 n) (A030104 (A154671 (n + 1)).toNat)

end

end A013490.P8263262487634920731

/-!
# A013491: exp(sinh(x)-arctanh(x))=1-1/3!*x^3-23/5!*x^5+10/6!*x^6-719/7!*x^7...

The programs for A013491, there is no canonical definition to state claims against.
-/

/-! ## A013491.P17927866960253508759

`A013360(n)*A123271(A014442(n+1))`
-/

namespace A013491.P17927866960253508759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013360 n * A123271 (A014442 (n + 1)).toNat

end

end A013491.P17927866960253508759

/-! ## A013491.P2657481926810272269

`A008683(A028342(n))*A013360(n)`
-/

namespace A013491.P2657481926810272269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028342 n).toNat * A013360 n

end

end A013491.P2657481926810272269

/-!
# A013492: exp(arcsinh(x)-log(x+1)) = 1+1/2!*x^2-3/3!*x^3+9/4!*x^4-45/5!*x^5...

The programs for A013492, there is no canonical definition to state claims against.
-/

/-! ## A013492.P3330539073451490227

`A013279(n)-A013275(n)`
-/

namespace A013492.P3330539073451490227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013279 n - A013275 n

end

end A013492.P3330539073451490227

/-! ## A013492.P11266234950899156709

`A013078(n)%A233583(n+1)!-A013275(n)`
-/

namespace A013492.P11266234950899156709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013078 n) (Nat.factorial (A233583 (n + 1)).toNat : ℤ) - A013275 n

end

end A013492.P11266234950899156709

/-! ## A013492.P918476075440106605

`A013279(A050783(n+1))-A013271(n)`
-/

namespace A013492.P918476075440106605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013279 (A050783 (n + 1)).toNat - A013271 n

end

end A013492.P918476075440106605

/-! ## A013492.P11050161232334160263

`A013280(lcm(n, A037477(n)))-A013275(n)`
-/

namespace A013492.P11050161232334160263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013280 (Int.lcm (n : ℤ) (A037477 n)) - A013275 n

end

end A013492.P11050161232334160263

/-!
# A013494: exp(arcsinh(x)-arctanh(x)) = 1-3/3!*x^3-15/5!*x^5+90/6!*x^6-945/7!*x^7...

The programs for A013494, there is no canonical definition to state claims against.
-/

/-! ## A013494.P17940478552407994081

`A013407(n)*A244895(A078213(n+1))`
-/

namespace A013494.P17940478552407994081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 n * A244895 (A078213 (n + 1)).toNat

end

end A013494.P17940478552407994081

/-! ## A013494.P123143400465041721

`A013407(n)*A062157(A270339(3*(n+1)))`
-/

namespace A013494.P123143400465041721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 n * A062157 (A270339 (3 * (n + 1))).toNat

end

end A013494.P123143400465041721

/-! ## A013494.P18276006564252272948

`A013407(A078213(n+1)-1)*A122188(3*n+1)`
-/

namespace A013494.P18276006564252272948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013407 (A078213 (n + 1) - 1).toNat * A122188 (3 * n + 1)

end

end A013494.P18276006564252272948

/-! ## A013494.P17884704323811200974

`A122188(3*n+1)^A042081(A078213(n+1))*A013407(n)`
-/

namespace A013494.P17884704323811200974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122188 (3 * n + 1) : ℚ) ^ (A042081 (A078213 (n + 1)).toNat : ℤ) * (A013407 n : ℚ)

end

end A013494.P17884704323811200974

/-!
# A013495: Expansion of e.g.f.: exp(tanh(x)-log(x+1))=1+1/2!*x^2-4/3!*x^3+9/4!*x^4-48/5!*x^5...

The programs for A013495, there is no canonical definition to state claims against.
-/

/-! ## A013495.P12084566110649942594

`A003723(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A013495.P12084566110649942594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003723 n - (n : ℤ) * a (n - 1)

end

end A013495.P12084566110649942594

/-! ## A013495.P1372287191535317768

`A013291(n)-A013287(n)`
-/

namespace A013495.P1372287191535317768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013291 n - A013287 n

end

end A013495.P1372287191535317768

/-! ## A013495.P3393665090386069721

`A013117(n)-n*a(n-1)-A009263(n)` with `a(0)=1`
-/

namespace A013495.P3393665090386069721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013117 n - (n : ℤ) * a (n - 1) - A009263 n

end

end A013495.P3393665090386069721

/-! ## A013495.P13028053786389579221

`A013292(A001222(5^n))-A013287(n)`
-/

namespace A013495.P13028053786389579221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013292 (A001222 (5 ^ n)).toNat - A013287 n

end

end A013495.P13028053786389579221

/-!
# A013496: Expansion of e.g.f.: exp(tanh(x)-arctanh(x))=1-4/3!*x^3-8/5!*x^5+160/6!*x^6-992/7!*x^7...

The programs for A013496, there is no canonical definition to state claims against.
-/

/-! ## A013496.P8382787205665976407

`A013440(n)*A034947(A134758(n))`
-/

namespace A013496.P8382787205665976407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013440 n * A034947 (A134758 n).toNat

end

end A013496.P8382787205665976407

/-! ## A013496.P5658924320255883731

`A013440(n)*A034947(A216688(n))`
-/

namespace A013496.P5658924320255883731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013440 n * A034947 (A216688 n).toNat

end

end A013496.P5658924320255883731

/-! ## A013496.P4703117072972423470

`A013440(n)*A034947(A262135(n))`
-/

namespace A013496.P4703117072972423470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013440 n * A034947 (A262135 n).toNat

end

end A013496.P4703117072972423470

/-! ## A013496.P16441787313404425182

`A013440(n)*A209615(A105968(n))`
-/

namespace A013496.P16441787313404425182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013440 n * A209615 (A105968 n).toNat

end

end A013496.P16441787313404425182

/-!
# A013498: Number of permutations in S_n with a certain property.

The programs for A013498, the canonical program `A013498.P10703321779851996206` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013498 has offset 1).

The definition of A013498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A013498.P10717235681027644460

`A103450(A007590(n))-char[1]`
-/

namespace A013498.P10717235681027644460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103450 (A007590 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A013498.P10717235681027644460

namespace A013498

/-- `A103450(A007590(n))-char[1]` -/
def P10717235681027644460.Spec : Prop :=
  ∀ n, P10717235681027644460.a n = A013498 (n + 1)

end A013498

/-! ## A013498.P16345503995099689408

`A159075(n)+A103450(A007590(n))`
-/

namespace A013498.P16345503995099689408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A103450 (A007590 n).toNat

end

end A013498.P16345503995099689408

namespace A013498

/-- `A159075(n)+A103450(A007590(n))` -/
def P16345503995099689408.Spec : Prop :=
  ∀ n, P16345503995099689408.a n = A013498 (n + 1)

end A013498

/-! ## A013498.P10703321779851996206

`A103450(A007590(n))%A075118(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A013498

/-- `A103450(A007590(n))%A075118(n)` -/
def P10703321779851996206.Spec : Prop :=
  ∀ n, P10703321779851996206.a n = A013498 (n + 1)

theorem P10703321779851996206.correct : P10703321779851996206.Spec := by
  intro n
  simp only [A013498, Nat.add_sub_cancel]

end A013498

/-! ## A013498.P9803362195487098431

`A057427(A057979(n))*A103450(A007590(n))`
-/

namespace A013498.P9803362195487098431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A057979 n).toNat * A103450 (A007590 n).toNat

end

end A013498.P9803362195487098431

namespace A013498

/-- `A057427(A057979(n))*A103450(A007590(n))` -/
def P9803362195487098431.Spec : Prop :=
  ∀ n, P9803362195487098431.a n = A013498 (n + 1)

end A013498

/-! ## A013498.P8477919673430128542

`A057427(A124625(n))*A103450(A007590(n))`
-/

namespace A013498.P8477919673430128542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A124625 n).toNat * A103450 (A007590 n).toNat

end

end A013498.P8477919673430128542

namespace A013498

/-- `A057427(A124625(n))*A103450(A007590(n))` -/
def P8477919673430128542.Spec : Prop :=
  ∀ n, P8477919673430128542.a n = A013498 (n + 1)

end A013498

/-!
# A013499: a(n) = 2*n^n, n > 0, otherwise a(n) = 1.

The programs for A013499, there is no canonical definition to state claims against.
-/

/-! ## A013499.P15468849711398755383

`n^n*ceil(atan(n+1))`
-/

namespace A013499.P15468849711398755383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A013499.P15468849711398755383

/-! ## A013499.P4672003565524757820

`n^n*gcd(2, (n+1)!)`
-/

namespace A013499.P4672003565524757820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n * Nat.gcd 2 (Nat.factorial (n + 1))

end

end A013499.P4672003565524757820

/-! ## A013499.P11894201415142723012

`(2-floor(1/(n+1)))*n^n`
-/

namespace A013499.P11894201415142723012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ⌊1 / (n + 1 : ℚ)⌋) * (n ^ n : ℤ)

end

end A013499.P11894201415142723012

/-! ## A013499.P12080300983245995970

`A244136(A340266(n+1))`
-/

namespace A013499.P12080300983245995970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244136 (A340266 (n + 1)).toNat

end

end A013499.P12080300983245995970

/-! ## A013499.P4010994732256719617

`A056788(n+1)-A007781(n)`
-/

namespace A013499.P4010994732256719617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056788 (n + 1) - A007781 n

end

end A013499.P4010994732256719617

/-! ## A013499.P10715765521723089401

`A000312(n+1)+A000312(n)-A007781(n)`
-/

namespace A013499.P10715765521723089401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) + (A000312 n - A007781 n)

end

end A013499.P10715765521723089401

