import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A011600: Legendre symbol (n,83).

The programs for A011600, there is no canonical definition to state claims against.
-/

/-! ## A011600.P3310190871296589444

`A011589(n)^A019427(A109822(n+1))`
-/

namespace A011600.P3310190871296589444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011589 n : ℚ) ^ (A019427 (A109822 (n + 1)).toNat : ℤ)

end

end A011600.P3310190871296589444

/-!
# A011601: Legendre symbol (n,89).

The programs for A011601, there is no canonical definition to state claims against.
-/

/-! ## A011601.P16581333145120630280

`A057428(n)^A036179(A233583(n+1))`
-/

namespace A011601.P16581333145120630280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A036179 (A233583 (n + 1)).toNat : ℤ)

end

end A011601.P16581333145120630280

/-!
# A011602: Legendre symbol (n,97).

The programs for A011602, there is no canonical definition to state claims against.
-/

/-! ## A011602.P14387498807339172214

`A011586(A234744(n))`
-/

namespace A011602.P14387498807339172214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 (A234744 n).toNat

end

end A011602.P14387498807339172214

/-!
# A011603: Legendre symbol (n,101).

The programs for A011603, there is no canonical definition to state claims against.
-/

/-! ## A011603.P17614852705206033595

`A011611(n)*A165596(A132314(n))`
-/

namespace A011603.P17614852705206033595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011611 n * A165596 (A132314 n).toNat

end

end A011603.P17614852705206033595

/-!
# A011604: Legendre symbol (n,103).

The programs for A011604, there is no canonical definition to state claims against.
-/

/-! ## A011604.P6985702735945846403

`A057428(n)^A036182(A233583(n+1))`
-/

namespace A011604.P6985702735945846403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A036182 (A233583 (n + 1)).toNat : ℤ)

end

end A011604.P6985702735945846403

/-!
# A011605: Legendre symbol (n,107).

The programs for A011605, there is no canonical definition to state claims against.
-/

/-! ## A011605.P6995154090075729311

`A011594(n)*A165481(A000578(n))`
-/

namespace A011605.P6995154090075729311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n * A165481 (A000578 n).toNat

end

end A011605.P6995154090075729311

/-!
# A011606: Legendre symbol (n,109).

The programs for A011606, there is no canonical definition to state claims against.
-/

/-! ## A011606.P13186938775364093464

`A011587(lcm(64, A005836(n+1)))`
-/

namespace A011606.P13186938775364093464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (Int.lcm 64 (A005836 (n + 1)))

end

end A011606.P13186938775364093464

/-!
# A011607: Legendre symbol (n,113).

The programs for A011607, there is no canonical definition to state claims against.
-/

/-! ## A011607.P15965653171728056426

`A011615(15*(2*∑[and(n, -n)²]+n)/3)`
-/

namespace A011607.P15965653171728056426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (SequenceMachineLib.roundAway (15 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3))).toNat

end

end A011607.P15965653171728056426

/-!
# A011608: Legendre symbol (n,127).

The programs for A011608, there is no canonical definition to state claims against.
-/

/-! ## A011608.P4839551493510249839

`A057428(n)^A036186(A233583(n+1))`
-/

namespace A011608.P4839551493510249839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A036186 (A233583 (n + 1)).toNat : ℤ)

end

end A011608.P4839551493510249839

/-!
# A011609: Legendre symbol (n,131).

The programs for A011609, there is no canonical definition to state claims against.
-/

/-! ## A011609.P16295324733170756504

`A011624(A229763(n))^A000040(A007955(n+1))`
-/

namespace A011609.P16295324733170756504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011624 (A229763 n).toNat : ℚ) ^ (A000040 (A007955 (n + 1)).toNat : ℤ)

end

end A011609.P16295324733170756504

/-!
# A011610: Legendre symbol (n,137).

The programs for A011610, there is no canonical definition to state claims against.
-/

/-! ## A011610.P15710958767333549469

`A324672(A289813(A227140(n))²)`
-/

namespace A011610.P15710958767333549469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A289813 (A227140 n).toNat ^ 2).toNat

end

end A011610.P15710958767333549469

/-!
# A011611: Legendre symbol (n,139).

The programs for A011611, there is no canonical definition to state claims against.
-/

/-! ## A011611.P18141174575909424752

`A165586(n*A259333(n+1))`
-/

namespace A011611.P18141174575909424752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 ((n : ℤ) * A259333 (n + 1)).toNat

end

end A011611.P18141174575909424752

/-!
# A011612: Legendre symbol (n,149).

The programs for A011612, there is no canonical definition to state claims against.
-/

/-! ## A011612.P4087702048251366965

`A165476(A000120(n)*A033048(n))`
-/

namespace A011612.P4087702048251366965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (A000120 n * A033048 n).toNat

end

end A011612.P4087702048251366965

/-!
# A011613: Legendre symbol (n,151).

The programs for A011613, there is no canonical definition to state claims against.
-/

/-! ## A011613.P14910721605231543523

`A011601(n)^A294335(A001651(2*n+5))`
-/

namespace A011613.P14910721605231543523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011601 n : ℚ) ^ (A294335 (A001651 (2 * n + 5)).toNat : ℤ)

end

end A011613.P14910721605231543523

/-!
# A011614: Legendre symbol (n,157).

The programs for A011614, there is no canonical definition to state claims against.
-/

/-! ## A011614.P16213501755476685519

`-A165586(22*A007331(n))`
-/

namespace A011614.P16213501755476685519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A165586 (22 * A007331 n).toNat

end

end A011614.P16213501755476685519

/-!
# A011616: Legendre symbol (n,167).

The programs for A011616, there is no canonical definition to state claims against.
-/

/-! ## A011616.P8211614350979805352

`A011620(A235201(n))%p?[A226056(n)]`
-/

namespace A011616.P8211614350979805352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011620 (A235201 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A011616.P8211614350979805352

/-!
# A011617: Legendre symbol (n,173).

The programs for A011617, there is no canonical definition to state claims against.
-/

/-! ## A011617.P17493928698056913007

`(floor(acot(n))-1)^A036195(abs(1-n)+1)`
-/

namespace A011617.P17493928698056913007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℚ) ^ (A036195 (|1 - (n : ℤ)| + 1).toNat : ℤ)

end

end A011617.P17493928698056913007

/-!
# A011618: Legendre symbol (n,179).

The programs for A011618, there is no canonical definition to state claims against.
-/

/-! ## A011618.P11785569954332166213

`A165591(A235027(n))^A003560(A309522(n))`
-/

namespace A011618.P11785569954332166213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165591 (A235027 n).toNat : ℚ) ^ (A003560 (A309522 n).toNat : ℤ)

end

end A011618.P11785569954332166213

/-!
# A011619: Legendre symbol (n,181).

The programs for A011619, there is no canonical definition to state claims against.
-/

/-! ## A011619.P10729466690609706219

`A011589(79*A048725(n))`
-/

namespace A011619.P10729466690609706219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (79 * A048725 n).toNat

end

end A011619.P10729466690609706219

/-!
# A011620: Legendre symbol (n,191).

The programs for A011620, there is no canonical definition to state claims against.
-/

/-! ## A011620.P6336803875873239514

`A165596(n)^A316978(3*n+1)`
-/

namespace A011620.P6336803875873239514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165596 n : ℚ) ^ (A316978 (3 * n + 1) : ℤ)

end

end A011620.P6336803875873239514

/-!
# A011621: Legendre symbol (n,193).

The programs for A011621, there is no canonical definition to state claims against.
-/

/-! ## A011621.P1701706385876197690

`A003557(A075810(n+1))*A011630(A235201(n))`
-/

namespace A011621.P1701706385876197690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A075810 (n + 1)).toNat * A011630 (A235201 n).toNat

end

end A011621.P1701706385876197690

/-!
# A011622: Legendre symbol (n,197).

The programs for A011622, there is no canonical definition to state claims against.
-/

/-! ## A011622.P4482799341123078793

`A011592(A000578(n))*A011611(n)`
-/

namespace A011622.P4482799341123078793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 (A000578 n).toNat * A011611 n

end

end A011622.P4482799341123078793

/-!
# A011623: Legendre symbol (n,199).

The programs for A011623, there is no canonical definition to state claims against.
-/

/-! ## A011623.P14301894469294200434

`(-floor(n^(1/5)))^A218799(3*n)`
-/

namespace A011623.P14301894469294200434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℚ) ^ (A218799 (3 * n) : ℤ)

end

end A011623.P14301894469294200434

/-!
# A011624: Legendre symbol (n,211).

The programs for A011624, there is no canonical definition to state claims against.
-/

/-! ## A011624.P5305995941964105677

`A062157(A054047(n)^A336569(n+1))`
-/

namespace A011624.P5305995941964105677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((A054047 n : ℚ) ^ (A336569 (n + 1) : ℤ))).toNat

end

end A011624.P5305995941964105677

/-!
# A011626: Legendre symbol (n,227).

The programs for A011626, there is no canonical definition to state claims against.
-/

/-! ## A011626.P11999283894133868659

`A011589(n)^A249952(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A011626.P11999283894133868659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011589 n : ℚ) ^ (A249952 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) : ℤ)

end

end A011626.P11999283894133868659

/-!
# A011627: Legendre symbol (n,229).

The programs for A011627, there is no canonical definition to state claims against.
-/

/-! ## A011627.P7411093630247493071

`A165591(n)^A176501(A285425(n+1))`
-/

namespace A011627.P7411093630247493071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165591 n : ℚ) ^ (A176501 (A285425 (n + 1)).toNat : ℤ)

end

end A011627.P7411093630247493071

/-!
# A011628: Legendre symbol (n,233).

The programs for A011628, there is no canonical definition to state claims against.
-/

/-! ## A011628.P10977173030961310928

`A165579(n)-A165579(n-A057427(n))`
-/

namespace A011628.P10977173030961310928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165579 n - A165579 ((n : ℤ) - A057427 n).toNat

end

end A011628.P10977173030961310928

/-!
# A011629: Legendre symbol (n,239).

The programs for A011629, there is no canonical definition to state claims against.
-/

/-! ## A011629.P14158447403845982758

`A011620(A106443(2*n))*A011620(n)`
-/

namespace A011629.P14158447403845982758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 (A106443 (2 * n)).toNat * A011620 n

end

end A011629.P14158447403845982758

/-!
# A011630: Legendre symbol (n,241).

The programs for A011630, there is no canonical definition to state claims against.
-/

/-! ## A011630.P12024043708076389675

`or(A011597(n), A165596(A000578(n)))`
-/

namespace A011630.P12024043708076389675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011597 n) (A165596 (A000578 n).toNat)

end

end A011630.P12024043708076389675

/-!
# A011631: Legendre symbol (n,251).

The programs for A011631, there is no canonical definition to state claims against.
-/

/-! ## A011631.P1536345551978730188

`A011606(n^A260449(n+1))`
-/

namespace A011631.P1536345551978730188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011606 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A260449 (n + 1) : ℤ))).toNat

end

end A011631.P1536345551978730188

/-!
# A011634: 35th cyclotomic polynomial.

The programs for A011634, there is no canonical definition to state claims against.
-/

/-! ## A011634.P8954473297984517920

`Δ[char[∑{digits}[11*n+11*n+1, #]+n]]`
-/

namespace A011634.P8954473297984517920
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + (11 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A011634.P8954473297984517920

/-! ## A011634.P377978764845281585

`Δ[Δ[floor(((n+4)²+2+n)*sqrt(2))]%2]`
-/

namespace A011634.P377978764845281585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 4) ^ 2 + 2 + n : ℝ) * Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011634.P377978764845281585

/-! ## A011634.P15852619753892053644

`A015094(n+31)`
-/

namespace A011634.P15852619753892053644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015094 (n + 31)

end

end A011634.P15852619753892053644

/-! ## A011634.P14628674144591531356

`A015444(n)+char[26]`
-/

namespace A011634.P14628674144591531356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015444 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011634.P14628674144591531356

/-! ## A011634.P18262892034283702226

`A015444(n%or(38, n))`
-/

namespace A011634.P18262892034283702226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015444 (n % Nat.lor 38 n)

end

end A011634.P18262892034283702226

/-!
# A011636: 45th cyclotomic polynomial.

The programs for A011636, there is no canonical definition to state claims against.
-/

/-! ## A011636.P2866296933378446304

`round(sin((1-gcd(3, n))^(n/3)*∏{p}[n+1, -#]))`
-/

namespace A011636.P2866296933378446304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((1 - (Nat.gcd 3 n : ℤ) : ℝ) ^ ((n : ℚ) / 3 : ℝ) * ((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℝ)))

end

end A011636.P2866296933378446304

/-! ## A011636.P14692514061564486805

`A016286(n+18)`
-/

namespace A011636.P14692514061564486805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 (n + 18)

end

end A011636.P14692514061564486805

/-! ## A011636.P12112096173254149545

`A015854(n)+char[30]`
-/

namespace A011636.P12112096173254149545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015854 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011636.P12112096173254149545

/-! ## A011636.P17357027297035363632

`A014864(n)^dr(n)`
-/

namespace A011636.P17357027297035363632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014864 n ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A011636.P17357027297035363632

/-! ## A011636.P12841963816993070888

`Δ[gcd(2, A070564(n+3))]`
-/

namespace A011636.P12841963816993070888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A070564 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A011636.P12841963816993070888

/-!
# A011637: 60th cyclotomic polynomial.

The programs for A011637, there is no canonical definition to state claims against.
-/

/-! ## A011637.P5878916388527346319

`A016331(n+12)`
-/

namespace A011637.P5878916388527346319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016331 (n + 12)

end

end A011637.P5878916388527346319

/-! ## A011637.P17352011337461009972

`A014669(n+44)`
-/

namespace A011637.P17352011337461009972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (n + 44)

end

end A011637.P17352011337461009972

/-! ## A011637.P5530452633794154669

`A015749(n)+char[17]`
-/

namespace A011637.P5530452633794154669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015749 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011637.P5530452633794154669

/-! ## A011637.P15741093534810648776

`A015749(n-char[17])`
-/

namespace A011637.P15741093534810648776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015749 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A011637.P15741093534810648776

/-! ## A011637.P17829262428979026409

`A015869(n)+char[21]`
-/

namespace A011637.P17829262428979026409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015869 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011637.P17829262428979026409

/-!
# A011638: 63rd cyclotomic polynomial.

The programs for A011638, there is no canonical definition to state claims against.
-/

/-! ## A011638.P13404783918068960811

`A016232(n+18)`
-/

namespace A011638.P13404783918068960811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 (n + 18)

end

end A011638.P13404783918068960811

/-! ## A011638.P10255250640681795518

`or(char[59*n], A015836(n))`
-/

namespace A011638.P10255250640681795518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A015836 n)

end

end A011638.P10255250640681795518

/-! ## A011638.P15201849208514594706

`A014828(A004184(n))`
-/

namespace A011638.P15201849208514594706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 (A004184 n).toNat

end

end A011638.P15201849208514594706

/-! ## A011638.P2312928539377273598

`A015206(A057889(n))`
-/

namespace A011638.P2312928539377273598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015206 (A057889 n).toNat

end

end A011638.P2312928539377273598

/-! ## A011638.P3230820021220961266

`A014828(A071670(n))`
-/

namespace A011638.P3230820021220961266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014828 (A071670 n).toNat

end

end A011638.P3230820021220961266

/-!
# A011639: 65th cyclotomic polynomial.

The programs for A011639, there is no canonical definition to state claims against.
-/

/-! ## A011639.P12520043069679580735

`(-1)^n*A016330(n)`
-/

namespace A011639.P12520043069679580735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016330 n

end

end A011639.P12520043069679580735

/-! ## A011639.P7671193613380124580

`A011653(n-n%10+n)`
-/

namespace A011639.P7671193613380124580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 ((n : ℤ) - ((n % 10 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A011639.P7671193613380124580

/-! ## A011639.P9073299699594009861

`(-1)^n*A016368(2*n)`
-/

namespace A011639.P9073299699594009861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016368 (2 * n)

end

end A011639.P9073299699594009861

/-! ## A011639.P2009442515478539846

`A011653(A024657(n))`
-/

namespace A011639.P2009442515478539846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 (A024657 n).toNat

end

end A011639.P2009442515478539846

/-! ## A011639.P18276894549039731089

`A011653(A140281(n))`
-/

namespace A011639.P18276894549039731089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 (A140281 n).toNat

end

end A011639.P18276894549039731089

/-!
# A011640: 66th cyclotomic polynomial.

The programs for A011640, there is no canonical definition to state claims against.
-/

/-! ## A011640.P7237473087304231287

`round(sin(n+1))`
-/

namespace A011640.P7237473087304231287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (n + 1 : ℝ))

end

end A011640.P7237473087304231287

/-! ## A011640.P15018101858877775691

`round(cos(n+12))`
-/

namespace A011640.P15018101858877775691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (n + 12 : ℝ))

end

end A011640.P15018101858877775691

/-! ## A011640.P11328594100003633203

`∑[round(Δ[sin(n)])]`
-/

namespace A011640.P11328594100003633203
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011640.P11328594100003633203

/-! ## A011640.P9688109939609764905

`round(-cos(10-n))`
-/

namespace A011640.P9688109939609764905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-Real.cos (10 - (n : ℤ) : ℝ))

end

end A011640.P9688109939609764905

/-! ## A011640.P18230878738573145848

`round(∑[sin(1-n)])`
-/

namespace A011640.P18230878738573145848
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011640.P18230878738573145848

/-!
# A011642: 77th cyclotomic polynomial.

The programs for A011642, there is no canonical definition to state claims against.
-/

/-! ## A011642.P1655693213689506179

`Δ[A168201(abs(1-n))]`
-/

namespace A011642.P1655693213689506179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011642.P1655693213689506179

/-! ## A011642.P5835913132313018768

`(-1)^n*A016338(n)`
-/

namespace A011642.P5835913132313018768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016338 n

end

end A011642.P5835913132313018768

/-! ## A011642.P3550502982461910307

`Δ[round(A194524(n+1)/7)]`
-/

namespace A011642.P3550502982461910307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194524 (n + 1) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011642.P3550502982461910307

/-! ## A011642.P1118026793362651531

`(-1)^n*A016378(2*n)`
-/

namespace A011642.P1118026793362651531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016378 (2 * n)

end

end A011642.P1118026793362651531

/-! ## A011642.P11689048203844015595

`A016378(comp[or(1, n)])/(-1)^n`
-/

namespace A011642.P11689048203844015595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016378 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / ((-1) ^ n : ℚ)

end

end A011642.P11689048203844015595

/-! ## A011642.P15531638909723608758

`A016338(n)*A033999(n)`
-/

namespace A011642.P15531638909723608758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 n * A033999 n

end

end A011642.P15531638909723608758

/-! ## A011642.P8490753484282675013

`-A016338(n)/(-1)^A020639(n+1)`
-/

namespace A011642.P8490753484282675013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016338 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A011642.P8490753484282675013

/-!
# A011643: 84th cyclotomic polynomial.

The programs for A011643, there is no canonical definition to state claims against.
-/

/-! ## A011643.P10068568082775300054

`(a(n-2)-a(n-4))%dr(2*n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A011643.P10068568082775300054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n a =>
  Int.tmod (a (n - 2) - a (n - 4)) (SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℤ)

end

end A011643.P10068568082775300054

/-! ## A011643.P14048143546968781016

`(a(n-2)-a(n-4))*(n^6)%7` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A011643.P14048143546968781016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n a =>
  (a (n - 2) - a (n - 4)) * ((n ^ 6 % 7 : ℕ) : ℤ)

end

end A011643.P14048143546968781016

/-! ## A011643.P5682022086757979464

`A015437(C(n, 28)+n)`
-/

namespace A011643.P5682022086757979464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015437 (Nat.choose n 28 + n)

end

end A011643.P5682022086757979464

/-! ## A011643.P5608797221009863130

`∑[char[(5*n)²]]*A015437(n)`
-/

namespace A011643.P5608797221009863130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A015437 n

end

end A011643.P5608797221009863130

/-! ## A011643.P13779279677641485663

`A015941(n)^∑[char[∑[n+1]]]`
-/

namespace A011643.P13779279677641485663
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015941 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011643.P13779279677641485663

/-!
# A011644: 85th cyclotomic polynomial.

The programs for A011644, there is no canonical definition to state claims against.
-/

/-! ## A011644.P10633378454406873678

`(-1)^n*A016344(n)`
-/

namespace A011644.P10633378454406873678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016344 n

end

end A011644.P10633378454406873678

/-! ## A011644.P14319876153260468193

`(-1)^n*A016386(2*n)`
-/

namespace A011644.P14319876153260468193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016386 (2 * n)

end

end A011644.P14319876153260468193

/-! ## A011644.P1863429623287749141

`A016344(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A011644.P1863429623287749141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016344 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A011644.P1863429623287749141

/-! ## A011644.P8997085546942037697

`A016386(Δ[n²]-1)/(xor(1, n)-n)`
-/

namespace A011644.P8997085546942037697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)

end

end A011644.P8997085546942037697

/-! ## A011644.P3845347465889011545

`A016349(A102492(n+1))`
-/

namespace A011644.P3845347465889011545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 (A102492 (n + 1)).toNat

end

end A011644.P3845347465889011545

/-! ## A011644.P10840072218008787041

`A016344(n)*A033999(n)`
-/

namespace A011644.P10840072218008787041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 n * A033999 n

end

end A011644.P10840072218008787041

/-! ## A011644.P10623971053399910068

`-A016344(n)/(-1)^A020639(n+1)`
-/

namespace A011644.P10623971053399910068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016344 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A011644.P10623971053399910068

/-!
# A011645: 90th cyclotomic polynomial.

The programs for A011645, there is no canonical definition to state claims against.
-/

/-! ## A011645.P15627511943678270355

`round(cos(ceil(n/4))/2^(n%3))`
-/

namespace A011645.P15627511943678270355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (⌈(n : ℚ) / 4⌉ : ℝ) / (2 ^ (n % 3) : ℝ))

end

end A011645.P15627511943678270355

/-! ## A011645.P18063995393895019603

`(-1)^n*A016124(n)`
-/

namespace A011645.P18063995393895019603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016124 n

end

end A011645.P18063995393895019603

/-! ## A011645.P4450353856874392695

`(-1)^n*A015404(n)`
-/

namespace A011645.P4450353856874392695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015404 n

end

end A011645.P4450353856874392695

/-! ## A011645.P17579542688041341622

`(-1)^n*A015854(n)`
-/

namespace A011645.P17579542688041341622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015854 n

end

end A011645.P17579542688041341622

/-! ## A011645.P1577390984736702651

`A015179(gcd(n, ∑{d}[n+1, val(#%10+3, 10)]))`
-/

namespace A011645.P1577390984736702651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015179 (Nat.gcd n (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d % 10 + 3) 10))

end

end A011645.P1577390984736702651

/-!
# A011646: 93rd cyclotomic polynomial.

The programs for A011646, there is no canonical definition to state claims against.
-/

/-! ## A011646.P8063327060465355044

`floor(cos((30-n)%3))`
-/

namespace A011646.P8063327060465355044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Int.tmod (30 - (n : ℤ)) 3 : ℝ)⌋

end

end A011646.P8063327060465355044

/-! ## A011646.P15450670643272308735

`1-abs(30-n)%3`
-/

namespace A011646.P15450670643272308735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod |30 - (n : ℤ)| 3

end

end A011646.P15450670643272308735

/-! ## A011646.P17525056369198309285

`round(cos((61-Δ[n²])%6))`
-/

namespace A011646.P17525056369198309285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Int.tmod (61 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) 6 : ℝ))

end

end A011646.P17525056369198309285

/-! ## A011646.P5614947309106627875

`round(cos(n-(n*512+1)))`
-/

namespace A011646.P5614947309106627875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n : ℤ) - (n * 512 + 1 : ℤ) : ℝ))

end

end A011646.P5614947309106627875

/-! ## A011646.P11746592622781089991

`(-1)^n*floor(∑[cos(n/cos(97))])`
-/

namespace A011646.P11746592622781089991
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℝ) / Real.cos (97 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A011646.P11746592622781089991

/-! ## A011646.P15268153616593404306

`floor(∑[cos(n/cos(97))])/(-1)^n`
-/

namespace A011646.P15268153616593404306
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℝ) / Real.cos (97 : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℚ) / ((-1) ^ n : ℚ)

end

end A011646.P15268153616593404306

/-! ## A011646.P363561652231934794

`(-1)^n*∑[round(cos(n/tanh(ϕ)))]`
-/

namespace A011646.P363561652231934794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n : ℝ) / Real.tanh Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011646.P363561652231934794

/-! ## A011646.P2507215466069422663

`(-1)^n*A016350(n)`
-/

namespace A011646.P2507215466069422663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016350 n

end

end A011646.P2507215466069422663

/-! ## A011646.P15268823834279746247

`A016425(A047354(n+1))`
-/

namespace A011646.P15268823834279746247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016425 (A047354 (n + 1)).toNat

end

end A011646.P15268823834279746247

/-! ## A011646.P5530472608942587530

`A102283(A032513(n+1))`
-/

namespace A011646.P5530472608942587530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A032513 (n + 1)).toNat

end

end A011646.P5530472608942587530

/-!
# A011647: 95th cyclotomic polynomial.

The programs for A011647, there is no canonical definition to state claims against.
-/

/-! ## A011647.P11436308786453202373

`(-1)^n*A016352(n)`
-/

namespace A011647.P11436308786453202373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016352 n

end

end A011647.P11436308786453202373

/-! ## A011647.P13833126500989393157

`(-1)^n*A016396(2*n)`
-/

namespace A011647.P13833126500989393157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016396 (2 * n)

end

end A011647.P13833126500989393157

/-! ## A011647.P11189253035070347869

`A016352(n)*A033999(n)`
-/

namespace A011647.P11189253035070347869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 n * A033999 n

end

end A011647.P11189253035070347869

/-! ## A011647.P10227498332956673661

`A016396(2*n)*A033999(n)`
-/

namespace A011647.P10227498332956673661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016396 (2 * n) * A033999 n

end

end A011647.P10227498332956673661

/-! ## A011647.P2109171421770395380

`A016352(n)/A008683(Δ[or(1, n)]+1)`
-/

namespace A011647.P2109171421770395380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016352 n : ℚ) / (A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ)

end

end A011647.P2109171421770395380

/-! ## A011647.P12472668002684703483

`-A016352(n)/(-1)^A020639(n+1)`
-/

namespace A011647.P12472668002684703483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016352 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A011647.P12472668002684703483

/-! ## A011647.P6417700609495423099

`A016352(n)/A008683(or(1, n+1)-n)`
-/

namespace A011647.P6417700609495423099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016352 n : ℚ) / (A008683 (Nat.lor 1 (n + 1) - n) : ℚ)

end

end A011647.P6417700609495423099

/-!
# A011648: 99th cyclotomic polynomial.

The programs for A011648, there is no canonical definition to state claims against.
-/

/-! ## A011648.P2509821120426198763

`round(sin(∑[(-1)^(n%3)]/A187307(n)))`
-/

namespace A011648.P2509821120426198763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A187307 n : ℚ) : ℝ))

end

end A011648.P2509821120426198763

/-! ## A011648.P6058301392437178541

`A016286(A057889(n))`
-/

namespace A011648.P6058301392437178541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 (A057889 n).toNat

end

end A011648.P6058301392437178541

/-! ## A011648.P4390800693369354363

`A016286(n)^A010888(n)`
-/

namespace A011648.P4390800693369354363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016286 n : ℚ) ^ (A010888 n : ℤ)

end

end A011648.P4390800693369354363

/-! ## A011648.P379384897481886587

`A016286(n)^A026998(n)`
-/

namespace A011648.P379384897481886587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016286 n : ℚ) ^ (A026998 n : ℤ)

end

end A011648.P379384897481886587

/-! ## A011648.P6312090716973511506

`round(A016286(n)/A340101(n))`
-/

namespace A011648.P6312090716973511506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016286 n : ℚ) / (A340101 n : ℚ))

end

end A011648.P6312090716973511506

/-! ## A011648.P11928881478992732339

`∑[A016310(n)]*A016286(n)`
-/

namespace A011648.P11928881478992732339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016286 n

end

end A011648.P11928881478992732339

/-! ## A011648.P10883850394778228436

`A016286(n)^comp[A329718(n)]`
-/

namespace A011648.P10883850394778228436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329718 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 n ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011648.P10883850394778228436

/-! ## A011648.P124594275686686797

`A016286(n-A055641(n+4))`
-/

namespace A011648.P124594275686686797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 ((n : ℤ) - A055641 (n + 4)).toNat

end

end A011648.P124594275686686797

/-! ## A011648.P2842854023168886013

`A016286(n)^A061385(n+1)`
-/

namespace A011648.P2842854023168886013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016286 n : ℚ) ^ (A061385 (n + 1) : ℤ)

end

end A011648.P2842854023168886013

/-! ## A011648.P12672648768657838538

`A016286(n)^A071661(2*n)`
-/

namespace A011648.P12672648768657838538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016286 n : ℚ) ^ (A071661 (2 * n) : ℤ)

end

end A011648.P12672648768657838538

/-!
# A011649: 102nd cyclotomic polynomial.

The programs for A011649, there is no canonical definition to state claims against.
-/

/-! ## A011649.P3403895353186783322

`round(cos(n+6))`
-/

namespace A011649.P3403895353186783322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (n + 6 : ℝ))

end

end A011649.P3403895353186783322

/-! ## A011649.P15124641641266962997

`round(sin(n-5))`
-/

namespace A011649.P15124641641266962997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n : ℤ) - 5 : ℝ))

end

end A011649.P15124641641266962997

/-! ## A011649.P14431805110349201958

`round(-cos(16-n))`
-/

namespace A011649.P14431805110349201958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-Real.cos (16 - (n : ℤ) : ℝ))

end

end A011649.P14431805110349201958

/-! ## A011649.P17201646741616267698

`round(-sin(n+17))`
-/

namespace A011649.P17201646741616267698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-Real.sin (n + 17 : ℝ))

end

end A011649.P17201646741616267698

/-! ## A011649.P6458132488610367866

`round(atan(cos(43*n)))`
-/

namespace A011649.P6458132488610367866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.cos (43 * n : ℝ)))

end

end A011649.P6458132488610367866

/-!
# A011650: 105th cyclotomic polynomial.

The programs for A011650, there is no canonical definition to state claims against.
-/

/-! ## A011650.P15656206227080532001

`A016380(3*n)`
-/

namespace A011650.P15656206227080532001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016380 (3 * n)

end

end A011650.P15656206227080532001

/-! ## A011650.P2829164831408783406

`(-1)^n*A016357(n)`
-/

namespace A011650.P2829164831408783406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016357 n

end

end A011650.P2829164831408783406

/-! ## A011650.P9601736294121527429

`(-1)^n*A016406(2*n)`
-/

namespace A011650.P9601736294121527429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016406 (2 * n)

end

end A011650.P9601736294121527429

/-! ## A011650.P6597166616121438523

`A016380(A008585(n))%3`
-/

namespace A011650.P6597166616121438523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016380 (A008585 n).toNat) 3

end

end A011650.P6597166616121438523

/-! ## A011650.P3181126210995056407

`A016357(n)*A033999(n)`
-/

namespace A011650.P3181126210995056407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016357 n * A033999 n

end

end A011650.P3181126210995056407

/-!
# A011651: 110th cyclotomic polynomial.

The programs for A011651, there is no canonical definition to state claims against.
-/

/-! ## A011651.P12373330352485348639

`A016359(2*n)`
-/

namespace A011651.P12373330352485348639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016359 (2 * n)

end

end A011651.P12373330352485348639

/-! ## A011651.P3924762160312318467

`(-1)^n*A016264(n)`
-/

namespace A011651.P3924762160312318467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016264 n

end

end A011651.P3924762160312318467

/-! ## A011651.P1089344345419252132

`A016359(Δ[n²]-1)^Δ[n²]`
-/

namespace A011651.P1089344345419252132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016359 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

end

end A011651.P1089344345419252132

/-! ## A011651.P10412768852473573273

`A016379(A102490(n+1))`
-/

namespace A011651.P10412768852473573273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016379 (A102490 (n + 1)).toNat

end

end A011651.P10412768852473573273

/-! ## A011651.P18392959687441285919

`A016264(n)*A033999(n)`
-/

namespace A011651.P18392959687441285919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016264 n * A033999 n

end

end A011651.P18392959687441285919

/-!
# A011652: 114th cyclotomic polynomial.

The programs for A011652, there is no canonical definition to state claims against.
-/

/-! ## A011652.P9709487155676537081

`round(sin(log(Δ[3^n])))`
-/

namespace A011652.P9709487155676537081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.log ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)))

end

end A011652.P9709487155676537081

/-! ## A011652.P2420247978194691642

`floor(∑[cos(n/sin(2))])`
-/

namespace A011652.P2420247978194691642
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℝ) / Real.sin (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A011652.P2420247978194691642

/-! ## A011652.P7904711875430546889

`floor(∑[cos(n/cos(13))])`
-/

namespace A011652.P7904711875430546889
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℝ) / Real.cos (13 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A011652.P7904711875430546889

/-! ## A011652.P12590918649550199124

`round(cos(1-n/cos(13)))`
-/

namespace A011652.P12590918649550199124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 - (n : ℝ) / Real.cos (13 : ℝ)))

end

end A011652.P12590918649550199124

/-! ## A011652.P10353081664797302862

`round(cos(lt[cot(n+1), 4]))`
-/

namespace A011652.P10353081664797302862
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℝ))

end

end A011652.P10353081664797302862

/-!
# A011653: 115th cyclotomic polynomial.

The programs for A011653, there is no canonical definition to state claims against.
-/

/-! ## A011653.P5643809481627152074

`(-1)^n*A016361(n)`
-/

namespace A011653.P5643809481627152074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016361 n

end

end A011653.P5643809481627152074

/-! ## A011653.P5968854173979015536

`A016361(char[2]+n)/(-1)^n`
-/

namespace A011653.P5968854173979015536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016361 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A011653.P5968854173979015536

/-! ## A011653.P8863168315710250782

`A016361(n)*A033999(n)`
-/

namespace A011653.P8863168315710250782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016361 n * A033999 n

end

end A011653.P8863168315710250782

/-! ## A011653.P12752753275107125475

`A016361(n)*A094267(n²)`
-/

namespace A011653.P12752753275107125475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016361 n * A094267 (n ^ 2)

end

end A011653.P12752753275107125475

/-! ## A011653.P18356889557828442787

`A016361(n)*A253414(2*n)`
-/

namespace A011653.P18356889557828442787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016361 n * A253414 (2 * n)

end

end A011653.P18356889557828442787

/-! ## A011653.P6984692309211132959

`-A016361(n)/(-1)^A020639(n+1)`
-/

namespace A011653.P6984692309211132959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016361 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A011653.P6984692309211132959

/-!
# A011654: 119th cyclotomic polynomial.

The programs for A011654, there is no canonical definition to state claims against.
-/

/-! ## A011654.P11086439814240305244

`(-1)^n*A016363(n)`
-/

namespace A011654.P11086439814240305244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016363 n

end

end A011654.P11086439814240305244

/-! ## A011654.P11091140466313675153

`(-1)^n*A016419(2*n)`
-/

namespace A011654.P11091140466313675153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016419 (2 * n)

end

end A011654.P11091140466313675153

/-! ## A011654.P733276895921491682

`A016363(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A011654.P733276895921491682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016363 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A011654.P733276895921491682

/-! ## A011654.P11043111673781512303

`A016419(Δ[n²]-1)/(xor(1, n)-n)`
-/

namespace A011654.P11043111673781512303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)

end

end A011654.P11043111673781512303

/-! ## A011654.P13788656151770253670

`A016428(A090570(n+1))`
-/

namespace A011654.P13788656151770253670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016428 (A090570 (n + 1)).toNat

end

end A011654.P13788656151770253670

/-! ## A011654.P5483137426070416337

`A016428(A274406(n+1))`
-/

namespace A011654.P5483137426070416337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016428 (A274406 (n + 1)).toNat

end

end A011654.P5483137426070416337

/-! ## A011654.P1157942031994442056

`A016428(A382417(n+1))`
-/

namespace A011654.P1157942031994442056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016428 (A382417 (n + 1)).toNat

end

end A011654.P1157942031994442056

/-! ## A011654.P15034372145672356172

`A016363(n)*A033999(n)`
-/

namespace A011654.P15034372145672356172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016363 n * A033999 n

end

end A011654.P15034372145672356172

/-! ## A011654.P8548036105135329533

`A016419(2*n)*A033999(n)`
-/

namespace A011654.P8548036105135329533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016419 (2 * n) * A033999 n

end

end A011654.P8548036105135329533

/-! ## A011654.P16832466417500510181

`-A016363(n)/(-1)^A020639(n+1)`
-/

namespace A011654.P16832466417500510181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016363 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A011654.P16832466417500510181

/-!
# A011655: Period 3: repeat [0, 1, 1].

The programs for A011655, the canonical program `A011655.P6146775691868591852` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011655 has offset 0).

The definition of A011655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011655.P6146775691868591852

`floor((n+2)/3)-floor(n/3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011655

/-- `floor((n+2)/3)-floor(n/3)` -/
def P6146775691868591852.Spec : Prop :=
  ∀ n, P6146775691868591852.a n = A011655 n

theorem P6146775691868591852.correct : P6146775691868591852.Spec := by
  intro n
  simp only [A011655]

end A011655

/-!
# A011656: A binary m-sequence: expansion of reciprocal of x^3 + x^2 + 1 (mod 2), shifted by 2 initial 0's.

The programs for A011656, the canonical program `A011656.P8107843071759426036` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011656 has offset 0).

The definition of A011656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011656.P8107843071759426036

`-floor(sin((n%7)²))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011656

/-- `-floor(sin((n%7)²))` -/
def P8107843071759426036.Spec : Prop :=
  ∀ n, P8107843071759426036.a n = A011656 n

theorem P8107843071759426036.correct : P8107843071759426036.Spec := by
  intro n
  simp only [A011656]

end A011656

/-!
# A011657: A binary m-sequence: expansion of reciprocal of x^3 + x + 1 (mod 2, shifted by 2 initial 0's).

The programs for A011657, the canonical program `A011657.P6881265527908071485` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011657 has offset 0).

The definition of A011657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011657.P6881265527908071485

`7%((n%7)!%7)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011657

/-- `7%((n%7)!%7)` -/
def P6881265527908071485.Spec : Prop :=
  ∀ n, (P6881265527908071485.a n : ℤ) = A011657 n

theorem P6881265527908071485.correct : P6881265527908071485.Spec := by
  intro n
  simp only [A011657]

end A011657

/-!
# A011658: Period 5: repeat [0, 0, 0, 1, 1]; also expansion of 1/(x^4 + x^3 + x^2 + x + 1) (mod 2).

The programs for A011658, the canonical program `A011658.P3257645890035522625` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011658 has offset 0).

The definition of A011658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011658.P3257645890035522625

`floor(2*n/5)-2*floor(n/5)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011658

/-- `floor(2*n/5)-2*floor(n/5)` -/
def P3257645890035522625.Spec : Prop :=
  ∀ n, P3257645890035522625.a n = A011658 n

theorem P3257645890035522625.correct : P3257645890035522625.Spec := by
  intro n
  simp only [A011658]

end A011658

/-!
# A011659: A binary m-sequence: expansion of reciprocal of x^4+x+1.

The programs for A011659, the canonical program `A011659.P8623453470051984502` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011659 has offset 0).

The definition of A011659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011659.P8623453470051984502

`abs(a(n-1)-a(n-4))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011659

/-- `abs(a(n-1)-a(n-4))` -/
def P8623453470051984502.Spec : Prop :=
  ∀ n, P8623453470051984502.a n = A011659 n

theorem P8623453470051984502.correct : P8623453470051984502.Spec := by
  intro n
  simp only [A011659]

end A011659

/-!
# A011660: A binary m-sequence: expansion of reciprocal of x^5+x^4+x^2+x+1.

The programs for A011660, there is no canonical definition to state claims against.
-/

/-! ## A011660.P2484370845619681259

`A011665(A296515(n))`
-/

namespace A011660.P2484370845619681259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011665 (A296515 n).toNat

end

end A011660.P2484370845619681259

/-!
# A011661: A binary m-sequence: expansion of reciprocal of x^5+x^3+x^2+x+1.

The programs for A011661, there is no canonical definition to state claims against.
-/

/-! ## A011661.P2264868587811760999

`(A011750(n+1)-A011750(n))²`
-/

namespace A011661.P2264868587811760999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011750 (n + 1) - A011750 n) ^ 2

end

end A011661.P2264868587811760999

/-!
# A011662: A binary m-sequence: expansion of reciprocal of x^5 + x^2 + 1.

The programs for A011662, the canonical program `A011662.P903246088286766858` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011662 has offset 0).

The definition of A011662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011662.P903246088286766858

`xor(a(n-2), a(n-5))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011662

/-- `xor(a(n-2), a(n-5))` -/
def P903246088286766858.Spec : Prop :=
  ∀ n, (P903246088286766858.a n : ℤ) = A011662 n

theorem P903246088286766858.correct : P903246088286766858.Spec := by
  intro n
  simp only [A011662]

end A011662

/-!
# A011663: A binary m-sequence: expansion of reciprocal of x^5+x^4+x^3+x+1.

The programs for A011663, there is no canonical definition to state claims against.
-/

/-! ## A011663.P14876613710078645705

`A011751(n+17)`
-/

namespace A011663.P14876613710078645705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011751 (n + 17)

end

end A011663.P14876613710078645705

/-!
# A011664: A binary m-sequence: expansion of reciprocal of x^5+x^3+1.

The programs for A011664, the canonical program `A011664.P15809063509581304627` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011664 has offset 0).

The definition of A011664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011664.P15809063509581304627

`xor(a(n-3), a(n-5))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011664

/-- `xor(a(n-3), a(n-5))` -/
def P15809063509581304627.Spec : Prop :=
  ∀ n, (P15809063509581304627.a n : ℤ) = A011664 n

theorem P15809063509581304627.correct : P15809063509581304627.Spec := by
  intro n
  simp only [A011664]

end A011664

/-!
# A011665: A binary m-sequence: expansion of the reciprocal of x^5+x^4+x^3+x^2+1.

The programs for A011665, there is no canonical definition to state claims against.
-/

/-! ## A011665.P5956922132585678290

`A011747(n+8)`
-/

namespace A011665.P5956922132585678290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011747 (n + 8)

end

end A011665.P5956922132585678290

/-!
# A011666: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^4+x+1.

The programs for A011666, the canonical program `A011666.P9056292157548002259` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011666 has offset 0).

The definition of A011666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011666.P9056292157548002259

`A011673(A016897(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011666

/-- `A011673(A016897(n))` -/
def P9056292157548002259.Spec : Prop :=
  ∀ n, P9056292157548002259.a n = A011666 n

theorem P9056292157548002259.correct : P9056292157548002259.Spec := by
  intro n
  simp only [A011666]

end A011666

/-!
# A011667: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^3+x^2+1.

The programs for A011667, the canonical program `A011667.P7280617044505348943` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011667 has offset 0).

The definition of A011667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011667.P7280617044505348943

`(A005710(n+3)+A005710(n))%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011667

/-- `(A005710(n+3)+A005710(n))%2` -/
def P7280617044505348943.Spec : Prop :=
  ∀ n, P7280617044505348943.a n = A011667 n

theorem P7280617044505348943.correct : P7280617044505348943.Spec := by
  intro n
  simp only [A011667]

end A011667

/-!
# A011668: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^2+x+1.

The programs for A011668, there is no canonical definition to state claims against.
-/

/-! ## A011668.P17828755090690228462

`A011669(A017377(n+1))`
-/

namespace A011668.P17828755090690228462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011669 (A017377 (n + 1)).toNat

end

end A011668.P17828755090690228462

/-!
# A011669: A binary m-sequence: expansion of reciprocal of x^6+x+1.

The programs for A011669, there is no canonical definition to state claims against.
-/

/-! ## A011669.P7748828493243757981

`A161055(n+1)%2`
-/

namespace A011669.P7748828493243757981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161055 (n + 1)) 2

end

end A011669.P7748828493243757981

/-!
# A011670: A binary m-sequence: expansion of reciprocal of x^6+x^4+x^3+x+1.

The programs for A011670, the canonical program `A011670.P18416274354301599814` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011670 has offset 0).

The definition of A011670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011670.P18416274354301599814

`A011666(5*(n+2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A011670

/-- `A011666(5*(n+2))` -/
def P18416274354301599814.Spec : Prop :=
  ∀ n, P18416274354301599814.a n = A011670 n

theorem P18416274354301599814.correct : P18416274354301599814.Spec := by
  intro n
  simp only [A011670]

end A011670

/-!
# A011671: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^4+x^2+1.

The programs for A011671, the canonical program `A011671.P1914700580021470123` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011671 has offset 0).

The definition of A011671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011671.P1914700580021470123

`char[n-∑[n+1]%21]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011671

/-- `char[n-∑[n+1]%21]` -/
def P1914700580021470123.Spec : Prop :=
  ∀ n, (P1914700580021470123.a n : ℤ) = A011671 n

theorem P1914700580021470123.correct : P1914700580021470123.Spec := by
  intro n
  simp only [A011671]

end A011671

/-!
# A011672: Expansion of reciprocal of x^6+x^3+1 (mod 2).

The programs for A011672, the canonical program `A011672.P1977448595693471968` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011672 has offset 0).

The definition of A011672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011672.P1977448595693471968

`C(n, 5)²%3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011672

/-- `C(n, 5)²%3` -/
def P1977448595693471968.Spec : Prop :=
  ∀ n, (P1977448595693471968.a n : ℤ) = A011672 n

theorem P1977448595693471968.correct : P1977448595693471968.Spec := by
  intro n
  simp only [A011672]

end A011672

/-!
# A011673: A binary m-sequence: expansion of reciprocal of x^6+x^5+1.

The programs for A011673, the canonical program `A011673.P5383287273945378824` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011673 has offset 0).

The definition of A011673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011673.P5383287273945378824

`A127840(n+2)%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011673

/-- `A127840(n+2)%2` -/
def P5383287273945378824.Spec : Prop :=
  ∀ n, P5383287273945378824.a n = A011673 n

theorem P5383287273945378824.correct : P5383287273945378824.Spec := by
  intro n
  simp only [A011673]

end A011673

/-!
# A011674: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^4+x^3+x^2+1.

The programs for A011674, the canonical program `A011674.P2384227229124822472` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011674 has offset 0).

The definition of A011674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011674.P2384227229124822472

`A011687(A270545(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A011674

/-- `A011687(A270545(n))` -/
def P2384227229124822472.Spec : Prop :=
  ∀ n, P2384227229124822472.a n = A011674 n

theorem P2384227229124822472.correct : P2384227229124822472.Spec := by
  intro n
  simp only [A011674]

end A011674

/-!
# A011675: A binary m-sequence: expansion of reciprocal of x^7+x^4+1.

The programs for A011675, the canonical program `A011675.P11769286689550545566` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011675 has offset 0).

The definition of A011675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011675.P11769286689550545566

`A135435(n+1)%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011675

/-- `A135435(n+1)%2` -/
def P11769286689550545566.Spec : Prop :=
  ∀ n, P11769286689550545566.a n = A011675 n

theorem P11769286689550545566.correct : P11769286689550545566.Spec := by
  intro n
  simp only [A011675]

end A011675

/-!
# A011676: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^4+x^2+1.

The programs for A011676, the canonical program `A011676.P13743426949965777935` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011676 has offset 0).

The definition of A011676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011676.P13743426949965777935

`A011686(3*n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011676

/-- `A011686(3*n+2)` -/
def P13743426949965777935.Spec : Prop :=
  ∀ n, P13743426949965777935.a n = A011676 n

theorem P13743426949965777935.correct : P13743426949965777935.Spec := by
  intro n
  simp only [A011676]

end A011676

/-!
# A011677: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^2+x+1.

The programs for A011677, the canonical program `A011677.P7686249500510810447` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011677 has offset 0).

The definition of A011677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011677.P7686249500510810447

`A011681(A016789(n)+85)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A011677

/-- `A011681(A016789(n)+85)` -/
def P7686249500510810447.Spec : Prop :=
  ∀ n, P7686249500510810447.a n = A011677 n

theorem P7686249500510810447.correct : P7686249500510810447.Spec := by
  intro n
  simp only [A011677]

end A011677

/-!
# A011678: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^3+x+1.

The programs for A011678, the canonical program `A011678.P7294615667966746558` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011678 has offset 0).

The definition of A011678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011678.P7294615667966746558

`A011681(7*(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A011678

/-- `A011681(7*(n+2))` -/
def P7294615667966746558.Spec : Prop :=
  ∀ n, P7294615667966746558.a n = A011678 n

theorem P7294615667966746558.correct : P7294615667966746558.Spec := by
  intro n
  simp only [A011678]

end A011678

/-!
# A011679: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^4+x+1.

The programs for A011679, the canonical program `A011679.P6700023965337903991` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011679 has offset 0).

The definition of A011679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011679.P6700023965337903991

`A011683(3*n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A011679

/-- `A011683(3*n+2)` -/
def P6700023965337903991.Spec : Prop :=
  ∀ n, P6700023965337903991.a n = A011679 n

theorem P6700023965337903991.correct : P6700023965337903991.Spec := by
  intro n
  simp only [A011679]

end A011679

/-!
# A011680: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^4+x^2+x+1.

The programs for A011680, the canonical program `A011680.P7451229551187314504` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011680 has offset 0).

The definition of A011680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011680.P7451229551187314504

`A011688(6*(n+3))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A011680

/-- `A011688(6*(n+3))` -/
def P7451229551187314504.Spec : Prop :=
  ∀ n, P7451229551187314504.a n = A011680 n

theorem P7451229551187314504.correct : P7451229551187314504.Spec := by
  intro n
  simp only [A011680]

end A011680

/-!
# A011681: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^3+x^2+x+1.

The programs for A011681, the canonical program `A011681.P13883477490797957766` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011681 has offset 0).

The definition of A011681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011681.P13883477490797957766

`A011684(A033627(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A011681

/-- `A011684(A033627(n+1))` -/
def P13883477490797957766.Spec : Prop :=
  ∀ n, P13883477490797957766.a n = A011681 n

theorem P13883477490797957766.correct : P13883477490797957766.Spec := by
  intro n
  simp only [A011681]

end A011681

/-!
# A011682: A binary m-sequence: expansion of reciprocal of x^7+x+1.

The programs for A011682, there is no canonical definition to state claims against.
-/

/-! ## A011682.P14229346441115025717

`A161056(n+1)%2`
-/

namespace A011682.P14229346441115025717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161056 (n + 1)) 2

end

end A011682.P14229346441115025717

/-!
# A011683: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^4+x^3+x^2+x+1.

The programs for A011683, the canonical program `A011683.P10419445935259758250` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011683 has offset 0).

The definition of A011683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011683.P10419445935259758250

`A011686(7*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011683

/-- `A011686(7*n)` -/
def P10419445935259758250.Spec : Prop :=
  ∀ n, P10419445935259758250.a n = A011683 n

theorem P10419445935259758250.correct : P10419445935259758250.Spec := by
  intro n
  simp only [A011683]

end A011683

/-!
# A011684: A binary m-sequence: expansion of reciprocal of x^7+x^4+x^3+x^2+1.

The programs for A011684, the canonical program `A011684.P11602949521021621259` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011684 has offset 0).

The definition of A011684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011684.P11602949521021621259

`A011676(3*(n+3))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A011684

/-- `A011676(3*(n+3))` -/
def P11602949521021621259.Spec : Prop :=
  ∀ n, P11602949521021621259.a n = A011684 n

theorem P11602949521021621259.correct : P11602949521021621259.Spec := by
  intro n
  simp only [A011684]

end A011684

/-!
# A011685: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^3+x+1.

The programs for A011685, the canonical program `A011685.P17100655792265488863` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011685 has offset 0).

The definition of A011685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1984 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011685.P17100655792265488863

`A011684(A008706(n)+83)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A011685

/-- `A011684(A008706(n)+83)` -/
def P17100655792265488863.Spec : Prop :=
  ∀ n, P17100655792265488863.a n = A011685 n

theorem P17100655792265488863.correct : P17100655792265488863.Spec := by
  intro n
  simp only [A011685]

end A011685

/-!
# A011686: A binary m-sequence: expansion of reciprocal of x^7 + x^6 + 1.

The programs for A011686, the canonical program `A011686.P16684063772658876959` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011686 has offset 0).

The definition of A011686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011686.P16684063772658876959

`A127841(n+2)%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011686

/-- `A127841(n+2)%2` -/
def P16684063772658876959.Spec : Prop :=
  ∀ n, P16684063772658876959.a n = A011686 n

theorem P16684063772658876959.correct : P16684063772658876959.Spec := by
  intro n
  simp only [A011686]

end A011686

/-!
# A011687: A binary m-sequence: expansion of reciprocal of x^7 + x^6 + x^5 + x^4 + 1.

The programs for A011687, the canonical program `A011687.P13750795114316336976` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011687 has offset 0).

The definition of A011687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011687.P13750795114316336976

`A011675(A341016(n+1)-n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011687

/-- `A011675(A341016(n+1)-n)` -/
def P13750795114316336976.Spec : Prop :=
  ∀ n, P13750795114316336976.a n = A011687 n

theorem P13750795114316336976.correct : P13750795114316336976.Spec := by
  intro n
  simp only [A011687]

end A011687

/-!
# A011688: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^4+x^3+1.

The programs for A011688, the canonical program `A011688.P14714035388955064508` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011688 has offset 0).

The definition of A011688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011688.P14714035388955064508

`A011677(14*n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A011688

/-- `A011677(14*n)` -/
def P14714035388955064508.Spec : Prop :=
  ∀ n, P14714035388955064508.a n = A011688 n

theorem P14714035388955064508.correct : P14714035388955064508.Spec := by
  intro n
  simp only [A011688]

end A011688

/-!
# A011689: A binary m-sequence: expansion of reciprocal of x^7+x^3+x^2+x+1.

The programs for A011689, the canonical program `A011689.P2495358922302082977` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011689 has offset 0).

The definition of A011689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011689.P2495358922302082977

`A011690(3*n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A011689

/-- `A011690(3*n+2)` -/
def P2495358922302082977.Spec : Prop :=
  ∀ n, P2495358922302082977.a n = A011689 n

theorem P2495358922302082977.correct : P2495358922302082977.Spec := by
  intro n
  simp only [A011689]

end A011689

/-!
# A011690: A binary m-sequence: expansion of reciprocal of x^7+x^3+1.

The programs for A011690, the canonical program `A011690.P7037554297728841104` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011690 has offset 0).

The definition of A011690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011690.P7037554297728841104

`A011677(A008486(n)+14)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A011690

/-- `A011677(A008486(n)+14)` -/
def P7037554297728841104.Spec : Prop :=
  ∀ n, P7037554297728841104.a n = A011690 n

theorem P7037554297728841104.correct : P7037554297728841104.Spec := by
  intro n
  simp only [A011690]

end A011690

/-!
# A011691: A binary m-sequence: expansion of reciprocal of x^7+x^6+x^5+x^2+1.

The programs for A011691, the canonical program `A011691.P2946875801288629197` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011691 has offset 0).

The definition of A011691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011691.P2946875801288629197

`A011680(A008585(n+10))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A011691

/-- `A011680(A008585(n+10))` -/
def P2946875801288629197.Spec : Prop :=
  ∀ n, P2946875801288629197.a n = A011691 n

theorem P2946875801288629197.correct : P2946875801288629197.Spec := by
  intro n
  simp only [A011691]

end A011691

/-!
# A011692: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^4+x^3+x^2+x+1.

The programs for A011692, there is no canonical definition to state claims against.
-/

/-! ## A011692.P8732850350111885147

`A011713(59*n)`
-/

namespace A011692.P8732850350111885147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011713 (59 * n)

end

end A011692.P8732850350111885147

/-!
# A011693: A binary m-sequence: expansion of reciprocal of x^8+x^5+x^4+x^3+1.

The programs for A011693, there is no canonical definition to state claims against.
-/

/-! ## A011693.P17456392648412263624

`A011707(A296515(n))`
-/

namespace A011693.P17456392648412263624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011707 (A296515 n).toNat

end

end A011693.P17456392648412263624

/-!
# A011694: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^5+x^3+1.

The programs for A011694, there is no canonical definition to state claims against.
-/

/-! ## A011694.P5120934748917214231

`A011692(A008458(A008458(n+1))+n)`
-/

namespace A011694.P5120934748917214231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011692 (A008458 (A008458 (n + 1)).toNat + (n : ℤ)).toNat

end

end A011694.P5120934748917214231

/-!
# A011695: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^5+x^4+x^2+1.

The programs for A011695, there is no canonical definition to state claims against.
-/

/-! ## A011695.P6072610346679542110

`A011710(A017509(n+1))`
-/

namespace A011695.P6072610346679542110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011710 (A017509 (n + 1)).toNat

end

end A011695.P6072610346679542110

/-!
# A011696: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^6+x^5+x^4+x^3+1.

The programs for A011696, there is no canonical definition to state claims against.
-/

/-! ## A011696.P972396013875672155

`A011719(3*(n+5))`
-/

namespace A011696.P972396013875672155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011719 (3 * (n + 5))

end

end A011696.P972396013875672155

/-!
# A011697: A binary m-sequence: expansion of reciprocal of x^8+x^4+x^3+x^2+1.

The programs for A011697, there is no canonical definition to state claims against.
-/

/-! ## A011697.P11061745287885826138

`A057427(A297232(A000041(n)))`
-/

namespace A011697.P11061745287885826138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A297232 (A000041 n).toNat).toNat

end

end A011697.P11061745287885826138

/-!
# A011698: A binary m-sequence: expansion of reciprocal of x^8+x^6+x^5+x^4+x^2+x+1.

The programs for A011698, there is no canonical definition to state claims against.
-/

/-! ## A011698.P14179093862103140510

`A011710(A008458(n)+33)`
-/

namespace A011698.P14179093862103140510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011710 (A008458 n + 33).toNat

end

end A011698.P14179093862103140510

/-!
# A011699: A binary m-sequence: expansion of reciprocal of x^8+x^7+x^5+x+1.

The programs for A011699, there is no canonical definition to state claims against.
-/

/-! ## A011699.P8255504326700704235

`A011705(3*A004275(n))`
-/

namespace A011699.P8255504326700704235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011705 (3 * A004275 n).toNat

end

end A011699.P8255504326700704235

