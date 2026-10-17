import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C001
import Seq.B003.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
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

/-!
# A013100: cosh(arcsinh(x)+tan(x))=1+4/2!*x^2+24/4!*x^4+534/6!*x^6+16520/8!*x^8...

The programs for A013100, there is no canonical definition to state claims against.
-/

/-! ## A013100.P2072854147320616041

`A013091(2*n)`
-/

namespace A013100.P2072854147320616041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013091 (2 * n)

end

end A013100.P2072854147320616041

/-! ## A013100.P17030469995314810533

`A013091(A005843(n))%A013085(n)`
-/

namespace A013100.P17030469995314810533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013091 (A005843 n).toNat) (A013085 n)

end

end A013100.P17030469995314810533

/-! ## A013100.P2449196827400208779

`A013091(A005843(n))-A000007(n+2)`
-/

namespace A013100.P2449196827400208779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013091 (A005843 n).toNat - A000007 (n + 2)

end

end A013100.P2449196827400208779

/-!
# A013104: sin(arcsinh(x)+arctan(x))=2*x-11/3!*x^3+185/5!*x^5-6785/7!*x^7...

The programs for A013104, there is no canonical definition to state claims against.
-/

/-! ## A013104.P15368089852535029981

`A013170(2*n+1)*A033999(n)`
-/

namespace A013104.P15368089852535029981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013170 (2 * n + 1) * A033999 n

end

end A013104.P15368089852535029981

/-! ## A013104.P14970871768859667224

`A013170(2*n+1)*A062157(n+1)`
-/

namespace A013104.P14970871768859667224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013170 (2 * n + 1) * A062157 (n + 1)

end

end A013104.P14970871768859667224

/-! ## A013104.P10653569864899852504

`A013170(2*n+1)*A057077(2*n)`
-/

namespace A013104.P10653569864899852504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013170 (2 * n + 1) * A057077 (2 * n)

end

end A013104.P10653569864899852504

/-! ## A013104.P18445265563719821523

`A013170(A005408(n))/A033999(n)`
-/

namespace A013104.P18445265563719821523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013170 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013104.P18445265563719821523

/-!
# A013108: cos(arcsinh(x)+arctan(x))=1-4/2!*x^2+40/4!*x^4-1030/6!*x^6+51160/8!*x^8...

The programs for A013108, there is no canonical definition to state claims against.
-/

/-! ## A013108.P17651588224909422405

`A013170(2*n)*A033999(n)`
-/

namespace A013108.P17651588224909422405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013170 (2 * n) * A033999 n

end

end A013108.P17651588224909422405

/-! ## A013108.P11279473841775717161

`A013170(2*n)*A062157(n+1)`
-/

namespace A013108.P11279473841775717161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013170 (2 * n) * A062157 (n + 1)

end

end A013108.P11279473841775717161

/-! ## A013108.P14712940145962109363

`A013170(2*n)*A057077(2*n)`
-/

namespace A013108.P14712940145962109363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013170 (2 * n) * A057077 (2 * n)

end

end A013108.P14712940145962109363

/-!
# A013112: cosh(arcsinh(x)+arctan(x))=1+4/2!*x^2-8/4!*x^4+70/6!*x^6-920/8!*x^8...

The programs for A013112, there is no canonical definition to state claims against.
-/

/-! ## A013112.P2562324340412343603

`A013103(2*n)`
-/

namespace A013112.P2562324340412343603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013103 (2 * n)

end

end A013112.P2562324340412343603

/-! ## A013112.P11512720148444928353

`or(A000007(n), A013103(A005843(n)))`
-/

namespace A013112.P11512720148444928353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A013103 (A005843 n).toNat)

end

end A013112.P11512720148444928353

/-! ## A013112.P8663731904995723936

`A013103(A005843(n))/A033999(n)²`
-/

namespace A013112.P8663731904995723936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013103 (A005843 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A013112.P8663731904995723936

/-! ## A013112.P11676352612155660724

`A013103(A005843(n))/A007318(A185284(n))`
-/

namespace A013112.P11676352612155660724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013103 (A005843 n).toNat : ℚ) / (A007318 (A185284 n).toNat : ℚ)

end

end A013112.P11676352612155660724

/-! ## A013112.P7554175088424527547

`A013103(A005843(n))+A008683(A044332(n+1))`
-/

namespace A013112.P7554175088424527547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013103 (A005843 n).toNat + A008683 (A044332 (n + 1)).toNat

end

end A013112.P7554175088424527547

/-!
# A013117: exp(tanh(x)+log(x+1))=1+2*x+3/2!*x^2+2/3!*x^3-11/4!*x^4-38/5!*x^5...

The programs for A013117, there is no canonical definition to state claims against.
-/

/-! ## A013117.P1376731261812270455

`A009263(n)+A003723(n)`
-/

namespace A013117.P1376731261812270455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009263 n + A003723 n

end

end A013117.P1376731261812270455

/-! ## A013117.P4813758513501974096

`A013126(n)+A013123(n)`
-/

namespace A013117.P4813758513501974096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013126 n + A013123 n

end

end A013117.P4813758513501974096

/-! ## A013117.P11850595127477833567

`A003723(n)+n*A003723(abs(1-n))`
-/

namespace A013117.P11850595127477833567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 n + (n : ℤ) * A003723 |1 - (n : ℤ)|.toNat

end

end A013117.P11850595127477833567

/-! ## A013117.P9173899869366965386

`A009263(n)+A009263(n+1)/(n+1)`
-/

namespace A013117.P9173899869366965386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009263 n : ℚ) + (A009263 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A013117.P9173899869366965386

/-! ## A013117.P11587431750429354961

`A003723(n)-A009263(n)*A057428(n)`
-/

namespace A013117.P11587431750429354961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 n - A009263 n * A057428 n

end

end A013117.P11587431750429354961

/-!
# A013123: Expansion of e.g.f. sinh(tanh(x) + log(x+1)).

The programs for A013123, there is no canonical definition to state claims against.
-/

/-! ## A013123.P17454315963317987340

`A003723(n)+A009263(n)-A013126(n)`
-/

namespace A013123.P17454315963317987340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 n + (A009263 n - A013126 n)

end

end A013123.P17454315963317987340

/-! ## A013123.P745354883949255441

`A003723(n)+n*A003723(abs(1-n))-A013126(n)`
-/

namespace A013123.P745354883949255441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 n + (n : ℤ) * A003723 |1 - (n : ℤ)|.toNat - A013126 n

end

end A013123.P745354883949255441

/-! ## A013123.P18378260358451703183

`A009263(n)+A009263(n+1)/(n+1)-A013126(n)`
-/

namespace A013123.P18378260358451703183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009263 n : ℚ) + (A009263 (n + 1) : ℚ) / (n + 1 : ℚ) - (A013126 n : ℚ)

end

end A013123.P18378260358451703183

/-! ## A013123.P11401386438337381765

`A003723(n)-A009263(n)*A057428(n)-A013126(n)`
-/

namespace A013123.P11401386438337381765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 n - A009263 n * A057428 n - A013126 n

end

end A013123.P11401386438337381765

/-! ## A013123.P10166559477960319282

`A013117(n)-A013126(n)`
-/

namespace A013123.P10166559477960319282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013117 n - A013126 n

end

end A013123.P10166559477960319282

/-! ## A013123.P17511846001744159307

`A013117(n)+A008683(A068486(n+1))*A013126(n)`
-/

namespace A013123.P17511846001744159307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013117 n + A008683 (A068486 (n + 1)).toNat * A013126 n

end

end A013123.P17511846001744159307

/-!
# A013124: Expansion of e.g.f. arcsinh(tanh(x) + log(x+1)).

The programs for A013124, there is no canonical definition to state claims against.
-/

/-! ## A013124.P10795656889775246752

`A012966(n)-A185254(A059901(n))`
-/

namespace A013124.P10795656889775246752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012966 n - A185254 (A059901 n).toNat

end

end A013124.P10795656889775246752

/-! ## A013124.P10308371309603107453

`A012966(n)-A185254(A209616(n+1))`
-/

namespace A013124.P10308371309603107453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012966 n - A185254 (A209616 (n + 1)).toNat

end

end A013124.P10308371309603107453

/-!
# A013126: cosh(tanh(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+19/4!*x^4-140/5!*x^5...

The programs for A013126, there is no canonical definition to state claims against.
-/

/-! ## A013126.P2611492701586476612

`A003723(n)+A009263(n)-A013123(n)`
-/

namespace A013126.P2611492701586476612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 n + (A009263 n - A013123 n)

end

end A013126.P2611492701586476612

/-! ## A013126.P4800885913188865275

`A009263(n)+A009263(n+1)/(n+1)-A013123(n)`
-/

namespace A013126.P4800885913188865275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009263 n : ℚ) + (A009263 (n + 1) : ℚ) / (n + 1 : ℚ) - (A013123 n : ℚ)

end

end A013126.P4800885913188865275

/-! ## A013126.P231789924588895700

`A013117(n)-A013123(n)`
-/

namespace A013126.P231789924588895700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013117 n - A013123 n

end

end A013126.P231789924588895700

/-! ## A013126.P4258632266784359089

`A013117(n)+A013123(n)*A057428(n)`
-/

namespace A013126.P4258632266784359089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013117 n + A013123 n * A057428 n

end

end A013126.P4258632266784359089

/-! ## A013126.P11638325495596358909

`A013117(n)+A008683(A068486(n+1))*A013123(n)`
-/

namespace A013126.P11638325495596358909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013117 n + A008683 (A068486 (n + 1)).toNat * A013123 n

end

end A013126.P11638325495596358909

/-!
# A013132: sin(tanh(x)+arcsin(x))=2*x-9/3!*x^3+97/5!*x^5-2975/7!*x^7...

The programs for A013132, there is no canonical definition to state claims against.
-/

/-! ## A013132.P13840072997817007044

`A013091(2*n+1)*A033999(n)`
-/

namespace A013132.P13840072997817007044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013091 (2 * n + 1) * A033999 n

end

end A013132.P13840072997817007044

/-!
# A013133: Expansion of e.g.f.: exp(tanh(x)+tan(x))=1+2*x+4/2!*x^2+8/3!*x^3+16/4!*x^4+64/5!*x^5...

The programs for A013133, there is no canonical definition to state claims against.
-/

/-! ## A013133.P12872366317227141425

`(C(A010054(2^(n+5))+n, 5)+1)*2^n`
-/

namespace A013133.P12872366317227141425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A010054 (2 ^ (n + 5)) + (n : ℤ)).toNat 5 + 1) * 2 ^ n

end

end A013133.P12872366317227141425

/-! ## A013133.P8907820151658826793

`record[A333484(n)]*A139398(n)`
-/

namespace A013133.P8907820151658826793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A139398 n

end

end A013133.P8907820151658826793

/-! ## A013133.P5665911691589547161

`A245092(A000079(n)*A139398(n))`
-/

namespace A013133.P5665911691589547161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A000079 n * A139398 n).toNat

end

end A013133.P5665911691589547161

/-!
# A013134: sin(tanh(x)+tan(x))=2*x-8/3!*x^3+64/5!*x^5-2816/7!*x^7+80896/9!*x^9...

The programs for A013134, there is no canonical definition to state claims against.
-/

/-! ## A013134.P4430637790493064758

`(-1)^n*A013133(Δ[n²])`
-/

namespace A013134.P4430637790493064758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013133 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013134.P4430637790493064758

/-! ## A013134.P2783929576922778480

`A013133(2*n+1)/(-1)^n`
-/

namespace A013134.P2783929576922778480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013133 (2 * n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A013134.P2783929576922778480

/-! ## A013134.P18091276977355789283

`A013133(2*n+1)*A033999(n)`
-/

namespace A013134.P18091276977355789283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013133 (2 * n + 1) * A033999 n

end

end A013134.P18091276977355789283

/-!
# A013138: cos(tanh(x)+tan(x))=1-4/2!*x^2+16/4!*x^4-448/6!*x^6+14592/8!*x^8...

The programs for A013138, there is no canonical definition to state claims against.
-/

/-! ## A013138.P4119236180274211169

`(-1)^n*A013133(2*n)`
-/

namespace A013138.P4119236180274211169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013133 (2 * n)

end

end A013138.P4119236180274211169

/-! ## A013138.P3327763797302062643

`A013133(2*n)*A033999(n)`
-/

namespace A013138.P3327763797302062643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013133 (2 * n) * A033999 n

end

end A013138.P3327763797302062643

/-!
# A013146: sinh(tanh(x)+arctan(x))=2*x+4/3!*x^3-88/5!*x^5+2496/7!*x^7...

The programs for A013146, there is no canonical definition to state claims against.
-/

/-! ## A013146.P6642090724451043736

`A013140(Δ[n²])`
-/

namespace A013146.P6642090724451043736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013146.P6642090724451043736

/-! ## A013146.P6699259031785843810

`and(-2, A013140(2*n+1))`
-/

namespace A013146.P6699259031785843810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A013140 (2 * n + 1))

end

end A013146.P6699259031785843810

/-! ## A013146.P6051931148712681744

`A013140(2*n+1)*A262681(n)`
-/

namespace A013146.P6051931148712681744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013140 (2 * n + 1) * A262681 n

end

end A013146.P6051931148712681744

/-! ## A013146.P8692238626635665218

`A013140(2*n+1)+A000007(n+1)`
-/

namespace A013146.P8692238626635665218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013140 (2 * n + 1) + A000007 (n + 1)

end

end A013146.P8692238626635665218

/-!
# A013149: cosh(tanh(x)+arctan(x))=1+4/2!*x^2-16/4!*x^4+64/6!*x^6+4096/8!*x^8...

The programs for A013149, there is no canonical definition to state claims against.
-/

/-! ## A013149.P10122860793861115130

`A013140(2*n)`
-/

namespace A013149.P10122860793861115130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013140 (2 * n)

end

end A013149.P10122860793861115130

/-! ## A013149.P13703274389913386229

`and(-3, A013140(A005843(n)))`
-/

namespace A013149.P13703274389913386229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A013140 (A005843 n).toNat)

end

end A013149.P13703274389913386229

/-! ## A013149.P1632877914688036310

`or(A000007(n), A013140(A005843(n)))`
-/

namespace A013149.P1632877914688036310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A013140 (A005843 n).toNat)

end

end A013149.P1632877914688036310

/-! ## A013149.P11211722809757074037

`A013140(A005843(n))%A286315(n)`
-/

namespace A013149.P11211722809757074037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013140 (A005843 n).toNat) (A286315 n)

end

end A013149.P11211722809757074037

/-!
# A013150: sec(tanh(x)+arctan(x))=1+4/2!*x^2+48/4!*x^4+1344/6!*x^6+71680/8!*x^8...

The programs for A013150, there is no canonical definition to state claims against.
-/

/-! ## A013150.P220994324245593579

`A000203(or(1, A307316(3*n)))`
-/

namespace A013150.P220994324245593579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lor 1 (A307316 (3 * n))).toNat

end

end A013150.P220994324245593579

/-!
# A013153: Expansion of e.g.f.: exp(tanh(x)+sinh(x))=1+2*x+4/2!*x^2+7/3!*x^3+8/4!*x^4+9/5!*x^5...

The programs for A013153, there is no canonical definition to state claims against.
-/

/-! ## A013153.P4091976803555797269

`∑[A094525(A068912(n))]`
-/

namespace A013153.P4091976803555797269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (A068912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013153.P4091976803555797269

/-! ## A013153.P17358126788885200307

`A000189(A203716(n))+n`
-/

namespace A013153.P17358126788885200307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A203716 n).toNat + (n : ℤ)

end

end A013153.P17358126788885200307

/-! ## A013153.P6930813039977931501

`A279069(A001006(n))+n`
-/

namespace A013153.P6930813039977931501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279069 (A001006 n).toNat + (n : ℤ)

end

end A013153.P6930813039977931501

/-!
# A013155: Expansion of e.g.f. exp(arctanh(x)+log(x+1)).

The programs for A013155, the canonical program `A013155.P7914142376715316211` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013155 has offset 0).

The definition of A013155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013155.P7914142376715316211

`2*a(n-1)+((2-n)²-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013155

/-- `2*a(n-1)+((2-n)²-1)*a(n-2)` -/
def P7914142376715316211.Spec : Prop :=
  ∀ n, P7914142376715316211.a n = A013155 n

theorem P7914142376715316211.correct : P7914142376715316211.Spec := by
  intro n
  simp only [A013155]

end A013155

/-! ## A013155.P10252226344302326819

`∏[abs(or(1, 1-n))]*record[abs(or(2, n-1))]`
-/

namespace A013155.P10252226344302326819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (1 - (n : ℤ))|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A013155.P10252226344302326819

namespace A013155

/-- `∏[abs(or(1, 1-n))]*record[abs(or(2, n-1))]` -/
def P10252226344302326819.Spec : Prop :=
  ∀ n, P10252226344302326819.a n = A013155 n

end A013155

/-! ## A013155.P6264008934018276509

`∏[A267458(n)]*A053438(n)`
-/

namespace A013155.P6264008934018276509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A053438 n

end

end A013155.P6264008934018276509

namespace A013155

/-- `∏[A267458(n)]*A053438(n)` -/
def P6264008934018276509.Spec : Prop :=
  ∀ n, P6264008934018276509.a n = A013155 n

end A013155

/-! ## A013155.P11193137226069804568

`A000246(abs(1-n))*A053438(n)`
-/

namespace A013155.P11193137226069804568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 |1 - (n : ℤ)|.toNat * A053438 n

end

end A013155.P11193137226069804568

namespace A013155

/-- `A000246(abs(1-n))*A053438(n)` -/
def P11193137226069804568.Spec : Prop :=
  ∀ n, P11193137226069804568.a n = A013155 n

end A013155

/-! ## A013155.P5379454043970853214

`A053438(n)*A060523(A161680(n))`
-/

namespace A013155.P5379454043970853214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n * A060523 (A161680 n).toNat

end

end A013155.P5379454043970853214

namespace A013155

/-- `A053438(n)*A060523(A161680(n))` -/
def P5379454043970853214.Spec : Prop :=
  ∀ n, P5379454043970853214.a n = A013155 n

end A013155

/-! ## A013155.P17667648745909079155

`A013164(n)+A013161(n)`
-/

namespace A013155.P17667648745909079155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013164 n + A013161 n

end

end A013155.P17667648745909079155

namespace A013155

/-- `A013164(n)+A013161(n)` -/
def P17667648745909079155.Spec : Prop :=
  ∀ n, P17667648745909079155.a n = A013155 n

end A013155

/-!
# A013156: sin(arctanh(x) + log(x+1)) = 2*x - 1/2!*x^2 - 4/3!*x^3 + 18/4!*x^4 - 110/5!*x^5 + ...

The programs for A013156, there is no canonical definition to state claims against.
-/

/-! ## A013156.P1369706307452149976

`A120881(A276271(n))+A012925(n)`
-/

namespace A013156.P1369706307452149976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120881 (A276271 n).toNat + A012925 n

end

end A013156.P1369706307452149976

/-! ## A013156.P1895750508918213027

`A200507(A051695(n+1))+A012925(n)`
-/

namespace A013156.P1895750508918213027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 (A051695 (n + 1)).toNat + A012925 n

end

end A013156.P1895750508918213027

/-!
# A013157: Expansion of e.g.f.: arcsin(arctanh(x)+log(x+1))=2*x-1/2!*x^2+12/3!*x^3-30/4!*x^4+526/5!*x^5...

The programs for A013157, there is no canonical definition to state claims against.
-/

/-! ## A013157.P8634311311656984296

`or(A012926(n), A265663(A224262(n+1)))`
-/

namespace A013157.P8634311311656984296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012926 n) (A265663 (A224262 (n + 1)).toNat)

end

end A013157.P8634311311656984296

/-! ## A013157.P16661218479609566957

`A200507(A051695(n+1))+A012926(n)`
-/

namespace A013157.P16661218479609566957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 (A051695 (n + 1)).toNat + A012926 n

end

end A013157.P16661218479609566957

/-!
# A013158: Expansion of e.g.f. tan(arctanh(x) + log(x+1)).

The programs for A013158, there is no canonical definition to state claims against.
-/

/-! ## A013158.P3658480609733531538

`or(A012927(n), A118230(A012924(n)))`
-/

namespace A013158.P3658480609733531538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012927 n) (A118230 (A012924 n).toNat)

end

end A013158.P3658480609733531538

/-! ## A013158.P16689357723054280965

`A200507(A051695(n+1))+A012927(n)`
-/

namespace A013158.P16689357723054280965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200507 (A051695 (n + 1)).toNat + A012927 n

end

end A013158.P16689357723054280965

/-!
# A013161: Expansion of e.g.f. sinh(arctanh(x) + log(x+1)).

The programs for A013161, there is no canonical definition to state claims against.
-/

/-! ## A013161.P10217298455669676239

`A013155(n)-A013164(n)`
-/

namespace A013161.P10217298455669676239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013155 n - A013164 n

end

end A013161.P10217298455669676239

/-! ## A013161.P6389106292112945484

`∏[A267458(n)]*A053438(n)-A013164(n)`
-/

namespace A013161.P6389106292112945484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A053438 n - A013164 n

end

end A013161.P6389106292112945484

/-! ## A013161.P13852730937414008310

`A000246(abs(1-n))*A053438(n)-A013164(n)`
-/

namespace A013161.P13852730937414008310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 |1 - (n : ℤ)|.toNat * A053438 n - A013164 n

end

end A013161.P13852730937414008310

/-! ## A013161.P11798717635299336287

`A053438(n)*A060523(A161680(n))-A013164(n)`
-/

namespace A013161.P11798717635299336287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n * A060523 (A161680 n).toNat - A013164 n

end

end A013161.P11798717635299336287

/-!
# A013163: Expansion of e.g.f.: arctanh(arctanh(x)+log(x+1))=2*x-1/2!*x^2+20/3!*x^3-54/4!*x^4...

The programs for A013163, there is no canonical definition to state claims against.
-/

/-! ## A013163.P3082132083341147236

`or(A012932(n), A321797(A158341(n)))`
-/

namespace A013163.P3082132083341147236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012932 n) (A321797 (A158341 n).toNat)

end

end A013163.P3082132083341147236

/-!
# A013164: cosh(arctanh(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+51/4!*x^4-180/5!*x^5...

The programs for A013164, there is no canonical definition to state claims against.
-/

/-! ## A013164.P4577763838179836287

`A013155(n)-A013161(n)`
-/

namespace A013164.P4577763838179836287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013155 n - A013161 n

end

end A013164.P4577763838179836287

/-! ## A013164.P12034310926765980922

`∏[A267458(n)]*A053438(n)-A013161(n)`
-/

namespace A013164.P12034310926765980922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A053438 n - A013161 n

end

end A013164.P12034310926765980922

/-! ## A013164.P696624648395197717

`A000246(abs(1-n))*A053438(n)-A013161(n)`
-/

namespace A013164.P696624648395197717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 |1 - (n : ℤ)|.toNat * A053438 n - A013161 n

end

end A013164.P696624648395197717

/-! ## A013164.P5055928619255536145

`A013155(n)+A013161(n)*A094267(A016813(n))`
-/

namespace A013164.P5055928619255536145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013155 n + A013161 n * A094267 (A016813 n).toNat

end

end A013164.P5055928619255536145

/-! ## A013164.P12668162073794782281

`A053438(n)*A060523(A161680(n))-A013161(n)`
-/

namespace A013164.P12668162073794782281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n * A060523 (A161680 n).toNat - A013161 n

end

end A013164.P12668162073794782281

/-!
# A013170: Expansion of e.g.f.: exp(arctanh(x)+arcsin(x)).

The programs for A013170, the canonical program `A013170.P12953905365832272046` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013170 has offset 0).

The definition of A013170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A013170.P12953905365832272046

`(n²-3*n+5)*a(n-2)+(n²-6*n+10)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013170

/-- `(n²-3*n+5)*a(n-2)+(n²-6*n+10)*a(n-3)` -/
def P12953905365832272046.Spec : Prop :=
  ∀ n, P12953905365832272046.a n = A013170 n

theorem P12953905365832272046.correct : P12953905365832272046.Spec := by
  intro n
  simp only [A013170]

end A013170

/-! ## A013170.P10130945332438575476

`n*A006228(n)+A006228(n+1)`
-/

namespace A013170.P10130945332438575476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006228 n + A006228 (n + 1)

end

end A013170.P10130945332438575476

namespace A013170

/-- `n*A006228(n)+A006228(n+1)` -/
def P10130945332438575476.Spec : Prop :=
  ∀ n, P10130945332438575476.a n = A013170 n

end A013170

/-! ## A013170.P13941092473536857654

`A012899(n+1)-A006228(n)`
-/

namespace A013170.P13941092473536857654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012899 (n + 1) - A006228 n

end

end A013170.P13941092473536857654

namespace A013170

/-- `A012899(n+1)-A006228(n)` -/
def P13941092473536857654.Spec : Prop :=
  ∀ n, P13941092473536857654.a n = A013170 n

end A013170

/-! ## A013170.P12587424753104274352

`A013430(n)+A005843(n)*A006228(n)`
-/

namespace A013170.P12587424753104274352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013430 n + A005843 n * A006228 n

end

end A013170.P12587424753104274352

namespace A013170

/-- `A013430(n)+A005843(n)*A006228(n)` -/
def P12587424753104274352.Spec : Prop :=
  ∀ n, P12587424753104274352.a n = A013170 n

end A013170

/-!
# A013171: sin(arctanh(x)+arcsin(x))=2*x-5/3!*x^3-55/5!*x^5-1535/7!*x^7...

The programs for A013171, there is no canonical definition to state claims against.
-/

/-! ## A013171.P12375444632774584576

`A013103(2*n+1)*A033999(n)`
-/

namespace A013171.P12375444632774584576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013103 (2 * n + 1) * A033999 n

end

end A013171.P12375444632774584576

/-!
# A013172: exp(arctanh(x)+tan(x))=1+2*x+4/2!*x^2+12/3!*x^3+48/4!*x^4+232/5!*x^5...

The programs for A013172, there is no canonical definition to state claims against.
-/

/-! ## A013172.P6717436499679470103

`A035114(∑[A047411(n!)])`
-/

namespace A013172.P6717436499679470103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035114 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A013172.P6717436499679470103

/-! ## A013172.P10574225432040641128

`A317624(A355503(n))+A051296(n)`
-/

namespace A013172.P10574225432040641128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317624 (A355503 n).toNat + A051296 n

end

end A013172.P10574225432040641128

/-! ## A013172.P17294733189911678932

`A081597(A000105(n)*A133024(n+1))`
-/

namespace A013172.P17294733189911678932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (A000105 n * A133024 (n + 1)).toNat

end

end A013172.P17294733189911678932

/-!
# A013174: exp(arctanh(x) + arctan(x)) = 1 + 2*x + 4/2!*x^2 + 8/3!*x^3 + 16/4!*x^4 + 80/5!*x^5 +...

The programs for A013174, there is no canonical definition to state claims against.
-/

/-! ## A013174.P7159407136116718209

`∏[A085033(A365103(n))]`
-/

namespace A013174.P7159407136116718209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (A365103 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A013174.P7159407136116718209

/-! ## A013174.P10598017806611585677

`∏[A348241(A007570(n)²)]`
-/

namespace A013174.P10598017806611585677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 (A007570 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A013174.P10598017806611585677

/-! ## A013174.P4130672728548213542

`∏[dr(A006530(A005649(n)))]`
-/

namespace A013174.P4130672728548213542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006530 (A005649 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A013174.P4130672728548213542

/-!
# A013175: sin(arctanh(x)+arctan(x))=2*x-8/3!*x^3+80/5!*x^5-4160/7!*x^7...

The programs for A013175, there is no canonical definition to state claims against.
-/

/-! ## A013175.P11533065584322080329

`A013174(2*n+1)*A033999(n)`
-/

namespace A013175.P11533065584322080329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013174 (2 * n + 1) * A033999 n

end

end A013175.P11533065584322080329

/-! ## A013175.P16634482579740284980

`A013174(A005408(n))/A033999(n)`
-/

namespace A013175.P16634482579740284980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013174 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A013175.P16634482579740284980

/-!
# A013179: cos(arctanh(x)+arctan(x))=1-4/2!*x^2+16/4!*x^4-640/6!*x^6+21760/8!*x^8...

The programs for A013179, there is no canonical definition to state claims against.
-/

/-! ## A013179.P15409025222841825737

`A013174(2*n)*A033999(n)`
-/

namespace A013179.P15409025222841825737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013174 (2 * n) * A033999 n

end

end A013179.P15409025222841825737

/-! ## A013179.P14898794814140712971

`A013174(A005408(n)-1)/A033999(n)`
-/

namespace A013179.P14898794814140712971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013174 (A005408 n - 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A013179.P14898794814140712971

/-!
# A013181: Expansion of e.g.f.: log(arctanh(x)+cos(x)) = x-2/2!*x^2+7/3!*x^3-28/4!*x^4+193/5!*x^5...

The programs for A013181, there is no canonical definition to state claims against.
-/

/-! ## A013181.P4945674688802099467

`A326033(A319925(2*n+3))+A013011(n)`
-/

namespace A013181.P4945674688802099467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (A319925 (2 * n + 3)).toNat + A013011 n

end

end A013181.P4945674688802099467

/-!
# A013183: exp(arctanh(x)+arcsinh(x)) = 1+2*x+4/2!*x^2+9/3!*x^3+24/4!*x^4+105/5!*x^5...

The programs for A013183, there is no canonical definition to state claims against.
-/

/-! ## A013183.P8569421738928574186

`A051275(A180589(n+1))+1+n`
-/

namespace A013183.P8569421738928574186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (A180589 (n + 1)).toNat + 1 + (n : ℤ)

end

end A013183.P8569421738928574186

/-! ## A013183.P8853887635847937580

`A213712(A132839(n))+A005165(n)`
-/

namespace A013183.P8853887635847937580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 (A132839 n).toNat + A005165 n

end

end A013183.P8853887635847937580

/-! ## A013183.P11913343541560680473

`A333489(n+1)+A008621(A000774(n))`
-/

namespace A013183.P11913343541560680473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1) + A008621 (A000774 n).toNat

end

end A013183.P11913343541560680473

/-!
# A013185: E.g.f.: log(cosh(x)+log(x+1)).

The programs for A013185, there is no canonical definition to state claims against.
-/

/-! ## A013185.P1519736716006303678

`A062157(n)*A100196(A060350(n))`
-/

namespace A013185.P1519736716006303678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A100196 (A060350 n).toNat

end

end A013185.P1519736716006303678

/-!
# A013189: All terms are squares and a(n) is length of n-th run.

The programs for A013189, there is no canonical definition to state claims against.
-/

/-! ## A013189.P13877171703368833776

`A260999(p?[A335599(n)])²`
-/

namespace A013189.P13877171703368833776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2

end

end A013189.P13877171703368833776

/-! ## A013189.P6452430282438000737

`A106161(A016813(A300763(n)))²`
-/

namespace A013189.P6452430282438000737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106161 (A016813 (A300763 n).toNat).toNat ^ 2

end

end A013189.P6452430282438000737

/-! ## A013189.P16218244509781877285

`A185283(A090501(A060428(n+1)))²`
-/

namespace A013189.P16218244509781877285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A090501 (A060428 (n + 1)).toNat).toNat ^ 2

end

end A013189.P16218244509781877285

/-! ## A013189.P658362618206620657

`A048760(∑[A065331(A032917(n+1))])`
-/

namespace A013189.P658362618206620657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A032917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A013189.P658362618206620657

/-! ## A013189.P11067261203606825525

`A048760(lt[A286151(3*(n+1)), A127817(n+1)])`
-/

namespace A013189.P11067261203606825525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286151 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A013189.P11067261203606825525

/-!
# A013192: Expansion of e.g.f. log(cosh(x) + arctanh(x)).

The programs for A013192, there is no canonical definition to state claims against.
-/

/-! ## A013192.P946578276725557014

`A364256(A320956(n))-A264608(n)`
-/

namespace A013192.P946578276725557014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364256 (A320956 n).toNat - A264608 n

end

end A013192.P946578276725557014

/-!
# A013197: Expansion of e.g.f. log(sec(x) + sinh(x)).

The programs for A013197, there is no canonical definition to state claims against.
-/

/-! ## A013197.P6479416613057399561

`n*A274370(A302905(n+2))`
-/

namespace A013197.P6479416613057399561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A274370 (A302905 (n + 2)).toNat

end

end A013197.P6479416613057399561

/-! ## A013197.P196759140190993432

`∑[A244233(A268039(n+1))]-A272463(n+1)`
-/

namespace A013197.P196759140190993432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 (A268039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272463 (n + 1)

end

end A013197.P196759140190993432

/-! ## A013197.P9129643978307993370

`A293233(3*n+1)-A319191(A357182(n+4))`
-/

namespace A013197.P9129643978307993370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293233 (3 * n + 1) - A319191 (A357182 (n + 4)).toNat

end

end A013197.P9129643978307993370

