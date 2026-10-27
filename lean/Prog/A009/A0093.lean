import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B006.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A009300: Expansion of exp(x/cos(x)).

The programs for A009300, there is no canonical definition to state claims against.
-/

/-! ## A009300.P8050086560454376257

`A110654(xor(A004524(n), A054872(n)))`
-/

namespace A009300.P8050086560454376257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor (A004524 n) (A054872 n)).toNat

end

end A009300.P8050086560454376257

/-! ## A009300.P14426386420918405749

`A173297(A023193(n!))`
-/

namespace A009300.P14426386420918405749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173297 (A023193 (Nat.factorial n)).toNat

end

end A009300.P14426386420918405749

/-! ## A009300.P5165167053821665392

`A171181(A052745(n))+1`
-/

namespace A009300.P5165167053821665392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A052745 n).toNat + 1

end

end A009300.P5165167053821665392

/-!
# A009302: If a, b are in the sequence, so is ab+3.

The programs for A009302, there is no canonical definition to state claims against.
-/

/-! ## A009302.P11111650485682730539

`A327426(A327405(n+1))+(C(5*n+3, 2)+2)/5`
-/

namespace A009302.P11111650485682730539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327426 (A327405 (n + 1)).toNat : ℚ) + (Nat.choose (5 * n + 3) 2 + 2 : ℚ) / 5

end

end A009302.P11111650485682730539

/-! ## A009302.P6631611827072199879

`A138069(A000079(n))+A028895(n)`
-/

namespace A009302.P6631611827072199879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138069 (A000079 n).toNat + A028895 n

end

end A009302.P6631611827072199879

/-! ## A009302.P1352838794599920335

`A303401(A131462(n+2))+A005891(n)`
-/

namespace A009302.P1352838794599920335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303401 (A131462 (n + 2)).toNat + A005891 n

end

end A009302.P1352838794599920335

/-!
# A009303: If a, b in sequence, so is ab+4.

The programs for A009303, there is no canonical definition to state claims against.
-/

/-! ## A009303.P3614620428504605329

`eq[A006337(A007318(n)), A318995(n+4)]`
-/

namespace A009303.P3614620428504605329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009303.P3614620428504605329

/-! ## A009303.P9512185420148485226

`A016933(lt[A000265(n+1), A307319(3*n+2)])`
-/

namespace A009303.P9512185420148485226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A009303.P9512185420148485226

/-!
# A009304: If a, b in sequence, so is ab+5.

The programs for A009304, there is no canonical definition to state claims against.
-/

/-! ## A009304.P6714092005817281250

`eq[0, A280916(A299200(n+5))]`
-/

namespace A009304.P6714092005817281250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280916 (A299200 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009304.P6714092005817281250

/-!
# A009307: If a, b in sequence, so is ab+6.

The programs for A009307, there is no canonical definition to state claims against.
-/

/-! ## A009307.P14246206931341082396

`record[2*a(A020639(A126759(n))-2)+6]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1, a(4)=0, a(5)=1`
-/

namespace A009307.P14246206931341082396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 1, 0, 1] fun n f1 =>
  2 * f1 (A020639 (A126759 n).toNat - 2).toNat + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009307.P14246206931341082396

/-! ## A009307.P3909564688208449569

`A262621(A099785(n))-2`
-/

namespace A009307.P3909564688208449569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262621 (A099785 n).toNat - 2

end

end A009307.P3909564688208449569

/-!
# A009311: E.g.f. log(1+log(1+tanh(x))).

The programs for A009311, there is no canonical definition to state claims against.
-/

/-! ## A009311.P6540664661546782745

`A326441(A041581(n))-A058006(n)`
-/

namespace A009311.P6540664661546782745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (A041581 n).toNat - A058006 n

end

end A009311.P6540664661546782745

/-! ## A009311.P5154679941798106706

`A128834(A016209(n))-A292358(n)`
-/

namespace A009311.P5154679941798106706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A016209 n).toNat - A292358 n

end

end A009311.P5154679941798106706

/-!
# A009312: If a, b in sequence, so is ab+7.

The programs for A009312, there is no canonical definition to state claims against.
-/

/-! ## A009312.P1560485832971349075

`A017185(eq[A005094(n+1), A036853(n+1)])`
-/

namespace A009312.P1560485832971349075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A009312.P1560485832971349075

/-!
# A009313: Expansion of log(1+log(1+x))*cos(x).

The programs for A009313, there is no canonical definition to state claims against.
-/

/-! ## A009313.P3062862370313638032

`A122876(n²)*A218654(A028441(n+5))`
-/

namespace A009313.P3062862370313638032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122876 (n ^ 2) * A218654 (A028441 (n + 5)).toNat

end

end A009313.P3062862370313638032

/-!
# A009314: Expansion of log(1+log(1+x))*cosh(x).

The programs for A009314, there is no canonical definition to state claims against.
-/

/-! ## A009314.P14891565507650375578

`(A009318(n)+A009315(n))/2`
-/

namespace A009314.P14891565507650375578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009318 n + A009315 n : ℚ) / 2

end

end A009314.P14891565507650375578

/-! ## A009314.P6751735951433914713

`(A009318(n)+A009315(n))*2^A008683(A007304(n+1))`
-/

namespace A009314.P6751735951433914713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009318 n + A009315 n : ℚ) * (2 : ℚ) ^ (A008683 (A007304 (n + 1)).toNat : ℤ)

end

end A009314.P6751735951433914713

/-!
# A009315: Expansion of log(1+log(1+x))*exp(x).

The programs for A009315, there is no canonical definition to state claims against.
-/

/-! ## A009315.P16690747919829661150

`2*A009314(n)-A009318(n)`
-/

namespace A009315.P16690747919829661150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009314 n - A009318 n

end

end A009315.P16690747919829661150

/-! ## A009315.P1559728128389996066

`A050334(A005046(n))-A009124(n)`
-/

namespace A009315.P1559728128389996066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (A005046 n).toNat - A009124 n

end

end A009315.P1559728128389996066

/-!
# A009317: Expansion of log(1+log(1+x))/cosh(x).

The programs for A009317, there is no canonical definition to state claims against.
-/

/-! ## A009317.P5357344321605539482

`or(A009313(n), A116399(A251593(n)))`
-/

namespace A009317.P5357344321605539482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009313 n) (A116399 (A251593 n).toNat)

end

end A009317.P5357344321605539482

/-! ## A009317.P1602131381355524862

`A009313(n)+A116399(n)*A116399(A251593(n))`
-/

namespace A009317.P1602131381355524862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009313 n + A116399 n * A116399 (A251593 n).toNat

end

end A009317.P1602131381355524862

/-!
# A009318: Expansion of log(1+log(1+x))/exp(x).

The programs for A009318, there is no canonical definition to state claims against.
-/

/-! ## A009318.P8466924356382036085

`2*A009314(n)-A009315(n)`
-/

namespace A009318.P8466924356382036085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009314 n - A009315 n

end

end A009318.P8466924356382036085

/-!
# A009321: E.g.f. log(1 + log(1+x)*exp(x)).

The programs for A009321, there is no canonical definition to state claims against.
-/

/-! ## A009321.P12213891790191695103

`2*A012278(n)-A346427(n)`
-/

namespace A009321.P12213891790191695103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012278 n - A346427 n

end

end A009321.P12213891790191695103

/-! ## A009321.P10692353948770741281

`A005843(A012278(n))-A346427(n)`
-/

namespace A009321.P10692353948770741281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A012278 n).toNat - A346427 n

end

end A009321.P10692353948770741281

/-! ## A009321.P7525507242929438576

`A276516(or(A188158(n+1), A296302(2*(n+1))))`
-/

namespace A009321.P7525507242929438576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 (Int.lor (A188158 (n + 1)) (A296302 (2 * (n + 1)))).toNat

end

end A009321.P7525507242929438576

/-!
# A009324: Expansion of e.g.f. log(1+log(1+x)/exp(x)).

The programs for A009324, there is no canonical definition to state claims against.
-/

/-! ## A009324.P7172571665808838210

`A113881(A156236(n+1))-A156286(n+1)`
-/

namespace A009324.P7172571665808838210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A156236 (n + 1)).toNat - A156286 (n + 1)

end

end A009324.P7172571665808838210

/-!
# A009325: E.g.f.: Expansion of log(1+log(1+x)^2) = 2*x^2/2! -6*x^3/3! +10*x^4/4! -...

The programs for A009325, there is no canonical definition to state claims against.
-/

/-! ## A009325.P16401253596082565840

`2*A024329(n)`
-/

namespace A009325.P16401253596082565840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024329 n

end

end A009325.P16401253596082565840

/-! ## A009325.P1894032465134836806

`A024329(floor(sqrt(n²+1)))+A024329(n)`
-/

namespace A009325.P1894032465134836806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024329 (Nat.sqrt (n ^ 2 + 1)) + A024329 n

end

end A009325.P1894032465134836806

/-! ## A009325.P7926599508647460394

`A024329(n)+A024329(n)+A004514(A004514(n))`
-/

namespace A009325.P7926599508647460394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024329 n + (A024329 n + A004514 (A004514 n).toNat)

end

end A009325.P7926599508647460394

/-! ## A009325.P15275228596015241629

`A024329(n)+A024329(n)/A019429(A062355(n+1))`
-/

namespace A009325.P15275228596015241629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024329 n : ℚ) + (A024329 n : ℚ) / (A019429 (A062355 (n + 1)).toNat : ℚ)

end

end A009325.P15275228596015241629

/-! ## A009325.P1491426198945425713

`A024329(n)+A024329(n)%A000142(n)`
-/

namespace A009325.P1491426198945425713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024329 n + Int.tmod (A024329 n) (A000142 n)

end

end A009325.P1491426198945425713

/-!
# A009326: Expansion of e.g.f.: log(1+sin(log(1+x))).

The programs for A009326, there is no canonical definition to state claims against.
-/

/-! ## A009326.P8892159069198840203

`A009411(n)-A330025(A131537(n+1))`
-/

namespace A009326.P8892159069198840203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009411 n - A330025 (A131537 (n + 1)).toNat

end

end A009326.P8892159069198840203

/-!
# A009329: E.g.f. log(1+sin(tan(x))).

The programs for A009329, there is no canonical definition to state claims against.
-/

/-! ## A009329.P10809219146367436709

`A009364(A159083(n)+n)`
-/

namespace A009329.P10809219146367436709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009364 (A159083 n + (n : ℤ)).toNat

end

end A009329.P10809219146367436709

/-! ## A009329.P13464706803598595004

`A009364(n*A361675(n))`
-/

namespace A009329.P13464706803598595004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009364 ((n : ℤ) * A361675 n).toNat

end

end A009329.P13464706803598595004

/-! ## A009329.P9932674870268841102

`A009364(n)^A010286(n)`
-/

namespace A009329.P9932674870268841102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009364 n : ℚ) ^ (A010286 n : ℤ)

end

end A009329.P9932674870268841102

/-!
# A009331: If a, b in sequence, so is ab+8.

The programs for A009331, there is no canonical definition to state claims against.
-/

/-! ## A009331.P2296812221028085077

`A168457(lt[(n+1)/2^val(n+1, 2), A346651(n+1)])`
-/

namespace A009331.P2296812221028085077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168457 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A009331.P2296812221028085077

/-! ## A009331.P13346864402674633309

`A017293(eq[A296188(n+1), A319191(n+1)])`
-/

namespace A009331.P13346864402674633309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A009331.P13346864402674633309

/-!
# A009333: Expansion of log(1+sin(x))*cosh(x).

The programs for A009333, there is no canonical definition to state claims against.
-/

/-! ## A009333.P3760254830764868715

`(A009337(n)+A009334(n))/2`
-/

namespace A009333.P3760254830764868715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009337 n + A009334 n : ℚ) / 2

end

end A009333.P3760254830764868715

/-!
# A009334: E.g.f. log(1+sin(x))*exp(x).

The programs for A009334, there is no canonical definition to state claims against.
-/

/-! ## A009334.P3923585586931358363

`2*A009333(n)-A009337(n)`
-/

namespace A009334.P3923585586931358363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009333 n - A009337 n

end

end A009334.P3923585586931358363

/-!
# A009337: Expansion of e.g.f.: log(1+sin(x))/exp(x).

The programs for A009337, there is no canonical definition to state claims against.
-/

/-! ## A009337.P4805661401670140965

`2*A009333(n)-A009334(n)`
-/

namespace A009337.P4805661401670140965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009333 n - A009334 n

end

end A009337.P4805661401670140965

/-!
# A009341: Expansion of e.g.f. log(1 + sin(x)*x), even powers only.

The programs for A009341, there is no canonical definition to state claims against.
-/

/-! ## A009341.P10443012482998367827

`2*A024286(n)`
-/

namespace A009341.P10443012482998367827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024286 n

end

end A009341.P10443012482998367827

/-! ## A009341.P11330910454514402005

`A024286(n)+A024286(A292579(n))`
-/

namespace A009341.P11330910454514402005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024286 n + A024286 (A292579 n).toNat

end

end A009341.P11330910454514402005

/-! ## A009341.P14049946795463381473

`A024286(n)+A024286(n)/A071936(n+1)²`
-/

namespace A009341.P14049946795463381473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024286 n : ℚ) + (A024286 n : ℚ) / (A071936 (n + 1) ^ 2 : ℚ)

end

end A009341.P14049946795463381473

/-! ## A009341.P4575407046874190425

`A024286(A004916(n+1))+A024286(n)`
-/

namespace A009341.P4575407046874190425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024286 (A004916 (n + 1)).toNat + A024286 n

end

end A009341.P4575407046874190425

/-! ## A009341.P3417705826239770003

`A024286(n)+A024286(A024661(n))`
-/

namespace A009341.P3417705826239770003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024286 n + A024286 (A024661 n).toNat

end

end A009341.P3417705826239770003

/-!
# A009343: Expansion of e.g.f. log(1+sin(x)/exp(x)).

The programs for A009343, there is no canonical definition to state claims against.
-/

/-! ## A009343.P5967540945594626121

`A321928(A148306(n))-A353611(n+1)`
-/

namespace A009343.P5967540945594626121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321928 (A148306 n).toNat - A353611 (n + 1)

end

end A009343.P5967540945594626121

/-!
# A009344: Expansion of log(1 + sin(x)^2).

The programs for A009344, there is no canonical definition to state claims against.
-/

/-! ## A009344.P3182384485007850048

`2*A024293(n)`
-/

namespace A009344.P3182384485007850048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024293 n

end

end A009344.P3182384485007850048

/-! ## A009344.P12876679514612322205

`2*A003704(2*n)*A062157(n+1)`
-/

namespace A009344.P12876679514612322205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003704 (2 * n) * A062157 (n + 1))

end

end A009344.P12876679514612322205

/-! ## A009344.P410150714622507435

`A024293(n)+A024293(A118759(n))`
-/

namespace A009344.P410150714622507435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024293 n + A024293 (A118759 n).toNat

end

end A009344.P410150714622507435

/-! ## A009344.P15854505587105888102

`A024293(n)+A024293(A292579(n))`
-/

namespace A009344.P15854505587105888102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024293 n + A024293 (A292579 n).toNat

end

end A009344.P15854505587105888102

/-! ## A009344.P10111399448806148654

`A024293(n)/2^A008683(A020484(n))`
-/

namespace A009344.P10111399448806148654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024293 n : ℚ) / (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A009344.P10111399448806148654

/-!
# A009345: Expansion of log(1+sinh(log(1+x))).

The programs for A009345, there is no canonical definition to state claims against.
-/

/-! ## A009345.P3997850807688325162

`A302196(n)-A302190(n)`
-/

namespace A009345.P3997850807688325162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302196 n - A302190 n

end

end A009345.P3997850807688325162

/-! ## A009345.P4158051681279414674

`A302196(n)-(A048994(A000124(n))+char[1])`
-/

namespace A009345.P4158051681279414674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302196 n - (A048994 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A009345.P4158051681279414674

/-! ## A009345.P1916035893239227738

`A302196(n)+-A302190(n)%A067299(n)`
-/

namespace A009345.P1916035893239227738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302196 n + Int.tmod (-A302190 n) (A067299 n)

end

end A009345.P1916035893239227738

/-! ## A009345.P18029772011527481634

`A302196(n)-(A019590(n+1)+∏[1-A233583(n+1)])`
-/

namespace A009345.P18029772011527481634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302196 n - (A019590 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j)

end

end A009345.P18029772011527481634

/-!
# A009348: Expansion of e.g.f.: log(1+sinh(tan(x))).

The programs for A009348, there is no canonical definition to state claims against.
-/

/-! ## A009348.P15403169211645982471

`A009365(A004901(n+1))`
-/

namespace A009348.P15403169211645982471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009365 (A004901 (n + 1)).toNat

end

end A009348.P15403169211645982471

/-! ## A009348.P6569756950744741514

`A009365(A004912(n+1))`
-/

namespace A009348.P6569756950744741514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009365 (A004912 (n + 1)).toNat

end

end A009348.P6569756950744741514

/-! ## A009348.P14923995800045458416

`A009365(n)^A010286(n)`
-/

namespace A009348.P14923995800045458416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009365 n : ℚ) ^ (A010286 n : ℤ)

end

end A009348.P14923995800045458416

/-!
# A009350: If x and y are terms, so is x*y + 9.

The programs for A009350, there is no canonical definition to state claims against.
-/

/-! ## A009350.P14515055621157352504

`A292988(2^(n+2)-3)`
-/

namespace A009350.P14515055621157352504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292988 (2 ^ (n + 2) - 3)

end

end A009350.P14515055621157352504

/-!
# A009352: E.g.f: log(1+sinh(x))*cosh(x).

The programs for A009352, there is no canonical definition to state claims against.
-/

/-! ## A009352.P14079896217337522179

`(A009356(n)+A009353(n))/2`
-/

namespace A009352.P14079896217337522179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009356 n + A009353 n : ℚ) / 2

end

end A009352.P14079896217337522179

/-! ## A009352.P4199064672884189130

`(A009356(n)+A009353(n))*2^A008683(A104887(n+1))`
-/

namespace A009352.P4199064672884189130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009356 n + A009353 n : ℚ) * (2 : ℚ) ^ (A008683 (A104887 (n + 1)).toNat : ℤ)

end

end A009352.P4199064672884189130

/-!
# A009353: Expansion of log(1+sinh(x))*exp(x).

The programs for A009353, there is no canonical definition to state claims against.
-/

/-! ## A009353.P14741518023945105385

`2*A009352(n)-A009356(n)`
-/

namespace A009353.P14741518023945105385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009352 n - A009356 n

end

end A009353.P14741518023945105385

/-!
# A009356: Expansion of log(1+sinh(x))/exp(x).

The programs for A009356, there is no canonical definition to state claims against.
-/

/-! ## A009356.P1280452761686396068

`2*A009352(n)-A009353(n)`
-/

namespace A009356.P1280452761686396068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009352 n - A009353 n

end

end A009356.P1280452761686396068

/-! ## A009356.P15886113198518835534

`A297209(n)-A036876(A007097(n))`
-/

namespace A009356.P15886113198518835534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297209 n - A036876 (A007097 n).toNat

end

end A009356.P15886113198518835534

/-!
# A009358: Expansion of log(1+sinh(x)*cosh(x)).

The programs for A009358, there is no canonical definition to state claims against.
-/

/-! ## A009358.P17916185218810332368

`A301652(ceil(10^n/9))-A133942(n)`
-/

namespace A009358.P17916185218810332368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301652 ⌈(10 ^ n : ℚ) / 9⌉.toNat - A133942 n

end

end A009358.P17916185218810332368

/-! ## A009358.P17410872503413582863

`A178108(abs(n!-∑[n!]))-A133942(n)`
-/

namespace A009358.P17410872503413582863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178108 |(Nat.factorial n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat - A133942 n

end

end A009358.P17410872503413582863

/-!
# A009359: Expansion of log(1 + sinh(x)*sin(x)).

The programs for A009359, there is no canonical definition to state claims against.
-/

/-! ## A009359.P15313425946023441128

`2*A024275(n)`
-/

namespace A009359.P15313425946023441128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024275 n

end

end A009359.P15313425946023441128

/-! ## A009359.P10005590406429723722

`A024275(n)+A024275(A292579(n))`
-/

namespace A009359.P10005590406429723722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024275 n + A024275 (A292579 n).toNat

end

end A009359.P10005590406429723722

/-! ## A009359.P11864634791674040972

`A024275(n)+A024275(n)%A002454(n)`
-/

namespace A009359.P11864634791674040972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024275 n + Int.tmod (A024275 n) (A002454 n)

end

end A009359.P11864634791674040972

/-! ## A009359.P18325270723356528520

`A024275(A004874(n+1))+A024275(n)`
-/

namespace A009359.P18325270723356528520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024275 (A004874 (n + 1)).toNat + A024275 n

end

end A009359.P18325270723356528520

/-! ## A009359.P15598163270360987839

`A024275(A004885(n+1))+A024275(n)`
-/

namespace A009359.P15598163270360987839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024275 (A004885 (n + 1)).toNat + A024275 n

end

end A009359.P15598163270360987839

/-!
# A009360: Expansion of e.g.f. log(1+sinh(x)*x) (even powers only).

The programs for A009360, there is no canonical definition to state claims against.
-/

/-! ## A009360.P7263500008044027125

`2*A024256(n)`
-/

namespace A009360.P7263500008044027125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024256 n

end

end A009360.P7263500008044027125

/-! ## A009360.P5038104647617319956

`A024256(n)+A024256(A292579(n))`
-/

namespace A009360.P5038104647617319956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024256 n + A024256 (A292579 n).toNat

end

end A009360.P5038104647617319956

/-! ## A009360.P12771983079269818400

`A024256(A229621(n+1))+A024256(n)`
-/

namespace A009360.P12771983079269818400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024256 (A229621 (n + 1)).toNat + A024256 n

end

end A009360.P12771983079269818400

/-! ## A009360.P9885275865799535108

`A024256(n)+A024256(A057846(n))`
-/

namespace A009360.P9885275865799535108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024256 n + A024256 (A057846 n).toNat

end

end A009360.P9885275865799535108

/-! ## A009360.P1663560822553317667

`A024256(n)+A024256(A062399(n))`
-/

namespace A009360.P1663560822553317667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024256 n + A024256 (A062399 n).toNat

end

end A009360.P1663560822553317667

/-!
# A009361: Expansion of e.g.f.: log(1+sinh(x)/cos(x)).

The programs for A009361, there is no canonical definition to state claims against.
-/

/-! ## A009361.P8571527408055017004

`A259356(A255487(n))+A009411(n)`
-/

namespace A009361.P8571527408055017004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259356 (A255487 n).toNat + A009411 n

end

end A009361.P8571527408055017004

/-! ## A009361.P10538770784105912464

`A033762(A292932(n))-A292907(n)`
-/

namespace A009361.P10538770784105912464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A292932 n).toNat - A292907 n

end

end A009361.P10538770784105912464

/-!
# A009366: Expansion of log(1+tan(tan(x))).

The programs for A009366, there is no canonical definition to state claims against.
-/

/-! ## A009366.P3858997052938614471

`A301520(A155698(n+1))+A009601(n)`
-/

namespace A009366.P3858997052938614471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301520 (A155698 (n + 1)).toNat + A009601 n

end

end A009366.P3858997052938614471

/-!
# A009368: If a, b in sequence, so is ab+10.

The programs for A009368, there is no canonical definition to state claims against.
-/

/-! ## A009368.P2581931054190449561

`A144917(A181800(n+1))+1`
-/

namespace A009368.P2581931054190449561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144917 (A181800 (n + 1)).toNat + 1

end

end A009368.P2581931054190449561

/-!
# A009370: Expansion of log(1+tan(x))*cosh(x).

The programs for A009370, there is no canonical definition to state claims against.
-/

/-! ## A009370.P16908867474557968303

`(A009374(n)+A009371(n))/2`
-/

namespace A009370.P16908867474557968303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009374 n + A009371 n : ℚ) / 2

end

end A009370.P16908867474557968303

/-! ## A009370.P6256272952467245950

`or(A014983(n), A370507(A004098(n)))`
-/

namespace A009370.P6256272952467245950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014983 n) (A370507 (A004098 n).toNat)

end

end A009370.P6256272952467245950

/-!
# A009371: Expansion of log(1+tan(x))*exp(x).

The programs for A009371, there is no canonical definition to state claims against.
-/

/-! ## A009371.P7662531229870241457

`2*A009370(n)-A009374(n)`
-/

namespace A009371.P7662531229870241457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009370 n - A009374 n

end

end A009371.P7662531229870241457

/-! ## A009371.P541367278033560617

`2*A009370(n)+A009374(n)*A153881(n+2)`
-/

namespace A009371.P541367278033560617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009370 n + A009374 n * A153881 (n + 2)

end

end A009371.P541367278033560617

/-! ## A009371.P8097589450037952109

`A296439(n)-A056557(A365894(2*n+1))`
-/

namespace A009371.P8097589450037952109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296439 n - A056557 (A365894 (2 * n + 1)).toNat

end

end A009371.P8097589450037952109

/-!
# A009372: Expansion of log(1+tan(x))/cos(x).

The programs for A009372, there is no canonical definition to state claims against.
-/

/-! ## A009372.P5436717197522410433

`A073610(A005011(n))+A014983(n)`
-/

namespace A009372.P5436717197522410433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A005011 n).toNat + A014983 n

end

end A009372.P5436717197522410433

/-! ## A009372.P15951528036672863779

`A001055(A003121(n))-A292907(n)`
-/

namespace A009372.P15951528036672863779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A003121 n).toNat - A292907 n

end

end A009372.P15951528036672863779

/-!
# A009374: Expansion of log(1+tan(x))/exp(x).

The programs for A009374, there is no canonical definition to state claims against.
-/

/-! ## A009374.P15252085207688491882

`2*A009370(n)-A009371(n)`
-/

namespace A009374.P15252085207688491882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009370 n - A009371 n

end

end A009374.P15252085207688491882

/-! ## A009374.P12000156642665339136

`A297213(n)-A036876(A007097(n))`
-/

namespace A009374.P12000156642665339136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297213 n - A036876 (A007097 n).toNat

end

end A009374.P12000156642665339136

/-!
# A009375: Expansion of e.g.f.: log(1+tan(x)*cosh(x)).

The programs for A009375, there is no canonical definition to state claims against.
-/

/-! ## A009375.P13317299043326112157

`A117336(n)+A011738(A000165(n))`
-/

namespace A009375.P13317299043326112157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117336 n + A011738 (A000165 n).toNat

end

end A009375.P13317299043326112157

/-! ## A009375.P8073713807554296767

`A117336(n)+A011658(A000354(n))`
-/

namespace A009375.P8073713807554296767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117336 n + A011658 (A000354 n).toNat

end

end A009375.P8073713807554296767

/-!
# A009377: E.g.f. log(1 + tan(x)*sin(x)) (even powers only).

The programs for A009377, there is no canonical definition to state claims against.
-/

/-! ## A009377.P13806530863745187008

`2*A024261(n)`
-/

namespace A009377.P13806530863745187008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024261 n

end

end A009377.P13806530863745187008

/-! ## A009377.P15818182617236737575

`A024261(n)+A024261(A292579(n))`
-/

namespace A009377.P15818182617236737575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024261 n + A024261 (A292579 n).toNat

end

end A009377.P15818182617236737575

/-! ## A009377.P10727501694962354797

`A024261(n)+A024261(n)%A093434(n+1)`
-/

namespace A009377.P10727501694962354797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024261 n + Int.tmod (A024261 n) (A093434 (n + 1))

end

end A009377.P10727501694962354797

/-! ## A009377.P2217504638205183286

`A024261(n)+A024261(A049872(n))`
-/

namespace A009377.P2217504638205183286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024261 n + A024261 (A049872 n).toNat

end

end A009377.P2217504638205183286

/-! ## A009377.P11295000144810031640

`A024261(A004873(n+1))+A024261(n)`
-/

namespace A009377.P11295000144810031640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024261 (A004873 (n + 1)).toNat + A024261 n

end

end A009377.P11295000144810031640

/-!
# A009378: Expansion of log(1+tan(x)*sinh(x)).

The programs for A009378, there is no canonical definition to state claims against.
-/

/-! ## A009378.P18415390282870482714

`2*A024296(n)`
-/

namespace A009378.P18415390282870482714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024296 n

end

end A009378.P18415390282870482714

/-! ## A009378.P11538368527758016392

`A024296(n)+A024296(A118759(n))`
-/

namespace A009378.P11538368527758016392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024296 n + A024296 (A118759 n).toNat

end

end A009378.P11538368527758016392

/-! ## A009378.P5501268105303840868

`A024296(n)+A024296(A292579(n))`
-/

namespace A009378.P5501268105303840868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024296 n + A024296 (A292579 n).toNat

end

end A009378.P5501268105303840868

/-! ## A009378.P12877017155038038986

`A024296(n)+A024296(n)%A262145(n)`
-/

namespace A009378.P12877017155038038986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024296 n + Int.tmod (A024296 n) (A262145 n)

end

end A009378.P12877017155038038986

/-! ## A009378.P2905714857645576644

`A024296(n)+A051516(A154935(n+1))+A024296(n)`
-/

namespace A009378.P2905714857645576644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024296 n + (A051516 (A154935 (n + 1)).toNat + A024296 n)

end

end A009378.P2905714857645576644

/-!
# A009379: Expansion of log(1+tan(x)*x).

The programs for A009379, there is no canonical definition to state claims against.
-/

/-! ## A009379.P10244069694642742593

`2*A024236(n)`
-/

namespace A009379.P10244069694642742593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024236 n

end

end A009379.P10244069694642742593

/-! ## A009379.P12177701514321516911

`A024236(A323048(n+1))+A024236(n)`
-/

namespace A009379.P12177701514321516911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024236 (A323048 (n + 1)).toNat + A024236 n

end

end A009379.P12177701514321516911

/-! ## A009379.P5981109705267647537

`A024236(n)+A024236(n)^A000038(n)!`
-/

namespace A009379.P5981109705267647537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024236 n + A024236 n ^ Nat.factorial (A000038 n).toNat

end

end A009379.P5981109705267647537

/-! ## A009379.P3041125258640807108

`A024236(n)+A024236(A071669(n))`
-/

namespace A009379.P3041125258640807108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024236 n + A024236 (A071669 n).toNat

end

end A009379.P3041125258640807108

/-! ## A009379.P16610678197455294407

`A024236(n)+A024236(A071670(n))`
-/

namespace A009379.P16610678197455294407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024236 n + A024236 (A071670 n).toNat

end

end A009379.P16610678197455294407

/-!
# A009380: Expansion of log(1+tan(x)/cos(x)).

The programs for A009380, there is no canonical definition to state claims against.
-/

/-! ## A009380.P6558136951607439650

`or(A001222(A007820(n)), A013011(n))`
-/

namespace A009380.P6558136951607439650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A007820 n).toNat) (A013011 n)

end

end A009380.P6558136951607439650

/-! ## A009380.P5825742079130641734

`or(A013011(n), A046051(A150538(n)))`
-/

namespace A009380.P5825742079130641734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013011 n) (A046051 (A150538 n).toNat)

end

end A009380.P5825742079130641734

/-!
# A009387: Expansion of log(1+tanh(tanh(x))).

The programs for A009387, there is no canonical definition to state claims against.
-/

/-! ## A009387.P8642088106698967555

`A318928(n+1)-A256655(A328441(n))`
-/

namespace A009387.P8642088106698967555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (n + 1) - A256655 (A328441 n).toNat

end

end A009387.P8642088106698967555

/-!
# A009388: If a, b in sequence, so is a*b-1.

The programs for A009388, there is no canonical definition to state claims against.
-/

/-! ## A009388.P11261832173981937557

`eq[A316826(n), A340967(A176289(n))]`
-/

namespace A009388.P11261832173981937557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340967 (A176289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009388.P11261832173981937557

/-! ## A009388.P18128561007487648886

`lt[A316826(n), A131026(A353397(n+1))]`
-/

namespace A009388.P18128561007487648886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (A353397 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A009388.P18128561007487648886

/-! ## A009388.P7625332744564243689

`lt[A292818(2*n+1), A292781(2*(n+1))]`
-/

namespace A009388.P7625332744564243689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292818 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A009388.P7625332744564243689

/-! ## A009388.P5047216746720369433

`∑[A100833(A087957(n)+A006017(n))]`
-/

namespace A009388.P5047216746720369433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (A087957 n + A006017 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009388.P5047216746720369433

/-!
# A009389: Expansion of log(1+tanh(x))*cosh(x).

The programs for A009389, there is no canonical definition to state claims against.
-/

/-! ## A009389.P13072023301548068636

`A009393(n%or(1, n))+n`
-/

namespace A009389.P13072023301548068636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009393 (n % Nat.lor 1 n) + (n : ℤ)

end

end A009389.P13072023301548068636

/-! ## A009389.P7518860925466609313

`A009393(A237420(n))+n`
-/

namespace A009389.P7518860925466609313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009393 (A237420 n).toNat + (n : ℤ)

end

end A009389.P7518860925466609313

/-! ## A009389.P4751069236508026928

`(A009393(n)+A009390(n))/2`
-/

namespace A009389.P4751069236508026928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009393 n + A009390 n : ℚ) / 2

end

end A009389.P4751069236508026928

/-!
# A009390: Expansion of e.g.f.: log(1 + tanh(x))*exp(x).

The programs for A009390, there is no canonical definition to state claims against.
-/

/-! ## A009390.P10171651410413903854

`∑[A122045(abs(1-n))]`
-/

namespace A009390.P10171651410413903854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009390.P10171651410413903854

/-! ## A009390.P16840061361527167493

`A122045(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A009390.P16840061361527167493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122045 (n - 1) + a (n - 1)

end

end A009390.P16840061361527167493

/-! ## A009390.P15360858779811866593

`∑[A119879(A161680(n))]-1`
-/

namespace A009390.P15360858779811866593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A009390.P15360858779811866593

/-! ## A009390.P16011352268496557637

`∑[A000035(n)*A119882(A124625(n))]`
-/

namespace A009390.P16011352268496557637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A119882 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009390.P16011352268496557637

/-! ## A009390.P17655000720151725301

`∑[A122045(n)]-A122045(n)`
-/

namespace A009390.P17655000720151725301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122045 n

end

end A009390.P17655000720151725301

/-! ## A009390.P2362279706082785837

`A009832(n)+n-∑[A009832(n)]`
-/

namespace A009390.P2362279706082785837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009390.P2362279706082785837

/-! ## A009390.P12731380274851191761

`∑[A000035(n)*A119882(A004442(n))]`
-/

namespace A009390.P12731380274851191761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A119882 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009390.P12731380274851191761

/-! ## A009390.P589941725348432410

`∑[A119879(A000217(A168195(n+1)))]`
-/

namespace A009390.P589941725348432410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000217 (A168195 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009390.P589941725348432410

/-!
# A009393: Expansion of e.g.f. log(1+tanh(x))/exp(x).

The programs for A009393, there is no canonical definition to state claims against.
-/

/-! ## A009393.P10398826751878170065

`Δ[A000035(n)-A009389(n)]`
-/

namespace A009393.P10398826751878170065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A009389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A009393.P10398826751878170065

/-! ## A009393.P5041174681969787004

`A033999(n)-Δ[A009389(n)]`
-/

namespace A009393.P5041174681969787004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - (f1 (n + 1) - f1 n)

end

end A009393.P5041174681969787004

/-! ## A009393.P4743944089094441419

`2*A009389(n)-A009390(n)`
-/

namespace A009393.P4743944089094441419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009389 n - A009390 n

end

end A009393.P4743944089094441419

/-! ## A009393.P181425537985119066

`Δ[A040001(n+1)-A009389(n)]`
-/

namespace A009393.P181425537985119066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) - A009389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A009393.P181425537985119066

/-! ## A009393.P5466124575698080459

`A010892(A008585(n))-Δ[A009389(n)]`
-/

namespace A009393.P5466124575698080459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n).toNat - (f1 (n + 1) - f1 n)

end

end A009393.P5466124575698080459

/-!
# A009396: Expansion of log(1+tanh(x)*sin(x)).

The programs for A009396, there is no canonical definition to state claims against.
-/

/-! ## A009396.P12222277959593760874

`2*A024298(n)`
-/

namespace A009396.P12222277959593760874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024298 n

end

end A009396.P12222277959593760874

/-! ## A009396.P10772976229154192694

`A024298(n)+A024298(A071670(n))`
-/

namespace A009396.P10772976229154192694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024298 n + A024298 (A071670 n).toNat

end

end A009396.P10772976229154192694

/-! ## A009396.P9608103411399908710

`A000038(n+1)+A024298(n)+A024298(n)`
-/

namespace A009396.P9608103411399908710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A024298 n + A024298 n)

end

end A009396.P9608103411399908710

/-! ## A009396.P5842300542665424392

`A024298(n)+A024298(n)/A008836(n+1)²`
-/

namespace A009396.P5842300542665424392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024298 n : ℚ) + (A024298 n : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A009396.P5842300542665424392

/-! ## A009396.P14440127309773189485

`A024298(A004905(n+1))+A024298(n)`
-/

namespace A009396.P14440127309773189485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024298 (A004905 (n + 1)).toNat + A024298 n

end

end A009396.P14440127309773189485

/-!
# A009397: Expansion of log(1+tanh(x)*sinh(x)).

The programs for A009397, there is no canonical definition to state claims against.
-/

/-! ## A009397.P15998216515827426050

`2*A024288(n)`
-/

namespace A009397.P15998216515827426050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024288 n

end

end A009397.P15998216515827426050

/-! ## A009397.P6623193938381130414

`A024288(n)+A024288(A292579(n))`
-/

namespace A009397.P6623193938381130414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024288 n + A024288 (A292579 n).toNat

end

end A009397.P6623193938381130414

/-! ## A009397.P6809528972017324518

`A024288(n)+A024288(A055647(n))`
-/

namespace A009397.P6809528972017324518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024288 n + A024288 (A055647 n).toNat

end

end A009397.P6809528972017324518

/-! ## A009397.P10589281663042021151

`A024288(n)+A024288(A062399(n))`
-/

namespace A009397.P10589281663042021151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024288 n + A024288 (A062399 n).toNat

end

end A009397.P10589281663042021151

/-! ## A009397.P14358029593487695704

`A024288(A004905(n+1))+A024288(n)`
-/

namespace A009397.P14358029593487695704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024288 (A004905 (n + 1)).toNat + A024288 n

end

end A009397.P14358029593487695704

/-!
# A009398: Expansion of log(1+tanh(x)*tan(x)).

The programs for A009398, there is no canonical definition to state claims against.
-/

/-! ## A009398.P11966991005563595117

`2*A024277(n)`
-/

namespace A009398.P11966991005563595117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024277 n

end

end A009398.P11966991005563595117

/-! ## A009398.P12805135073524428178

`A024277(n)+A024277(A292579(n))`
-/

namespace A009398.P12805135073524428178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024277 n + A024277 (A292579 n).toNat

end

end A009398.P12805135073524428178

/-! ## A009398.P11083569774184828878

`A024277(n)+A024277(A062279(n))`
-/

namespace A009398.P11083569774184828878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024277 n + A024277 (A062279 n).toNat

end

end A009398.P11083569774184828878

/-! ## A009398.P11942460108813438010

`A024277(n)+A024277(A062399(n))`
-/

namespace A009398.P11942460108813438010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024277 n + A024277 (A062399 n).toNat

end

end A009398.P11942460108813438010

/-! ## A009398.P10477466856576297468

`A024277(n)+A024277(A120126(n))`
-/

namespace A009398.P10477466856576297468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024277 n + A024277 (A120126 n).toNat

end

end A009398.P10477466856576297468

/-!
# A009399: Expansion of log(1+tanh(x)*x).

The programs for A009399, there is no canonical definition to state claims against.
-/

/-! ## A009399.P4265776349862671979

`2*A024295(n)`
-/

namespace A009399.P4265776349862671979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024295 n

end

end A009399.P4265776349862671979

/-! ## A009399.P5043112208756824090

`A024295(A323048(n+1))+A024295(n)`
-/

namespace A009399.P5043112208756824090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024295 (A323048 (n + 1)).toNat + A024295 n

end

end A009399.P5043112208756824090

/-! ## A009399.P14394922836907941444

`A024295(n)+A024295(A071669(n))`
-/

namespace A009399.P14394922836907941444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024295 n + A024295 (A071669 n).toNat

end

end A009399.P14394922836907941444

/-! ## A009399.P6106502529256196505

`A024295(n)+A024295(A071670(n))`
-/

namespace A009399.P6106502529256196505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024295 n + A024295 (A071670 n).toNat

end

end A009399.P6106502529256196505

/-! ## A009399.P8203879346106955055

`A024295(n)+A024295(n)%A009798(n)`
-/

namespace A009399.P8203879346106955055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024295 n + Int.tmod (A024295 n) (A009798 n)

end

end A009399.P8203879346106955055

