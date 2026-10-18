import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
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
# A145700: Numbers x such that there exists n in N with (x+1)^3-x^3=37*n^2.

The programs for A145700, there is no canonical definition to state claims against.
-/

/-! ## A145700.P9818018342172553996

`(A145696(n+1)-1)/2`
-/

namespace A145700.P9818018342172553996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145696 (n + 1) - 1 : ℚ) / 2

end

end A145700.P9818018342172553996

/-!
# A145701: Lesser p of twin primes (p,q) such that there exists an integer between sqrt(2p) and sqrt(2q).

The programs for A145701, there is no canonical definition to state claims against.
-/

/-! ## A145701.P2935233927784064332

`A047838(∪[A152786(n+1), A284036(n+1)])`
-/

namespace A145701.P2935233927784064332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A145701.P2935233927784064332

/-! ## A145701.P1001162676624130941

`A080827(∪[A152786(n+1), A284036(n+1)])-2`
-/

namespace A145701.P1001162676624130941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) - 2

end

end A145701.P1001162676624130941

/-! ## A145701.P17167392373981664338

`∩[A061368(n+1), A188551(n+1)]`
-/

namespace A145701.P17167392373981664338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145701.P17167392373981664338

/-! ## A145701.P7289655980582393333

`∩[A061368(n+1), A047838(n+2)]`
-/

namespace A145701.P7289655980582393333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145701.P7289655980582393333

/-! ## A145701.P7702607531929037586

`∩[A001359(n+1), A047838(n+2)]`
-/

namespace A145701.P7702607531929037586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145701.P7702607531929037586

/-! ## A145701.P16943914711888226940

`∩[A054799(n+1), A047838(n+2)]`
-/

namespace A145701.P16943914711888226940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145701.P16943914711888226940

/-! ## A145701.P6478894990451003621

`∩[A063700(n+1), A047838(n+2)]`
-/

namespace A145701.P6478894990451003621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145701.P6478894990451003621

/-! ## A145701.P3611795960315032745

`∩[A124588(n+1), A047838(n+2)]`
-/

namespace A145701.P3611795960315032745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145701.P3611795960315032745

/-! ## A145701.P581988599764494

`∩[A063693(n+1), A047838(n+2)]`
-/

namespace A145701.P581988599764494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145701.P581988599764494

/-! ## A145701.P4834446616825992990

`p?[p?[A080827(n+1)]-2]`
-/

namespace A145701.P4834446616825992990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145701.P4834446616825992990

/-!
# A145702: Expansion of chi(-x) * chi(x^5) in powers of x where chi() is a Ramanujan theta function.

The programs for A145702, there is no canonical definition to state claims against.
-/

/-! ## A145702.P7584323444615558199

`(-1)^n*A139632(n)`
-/

namespace A145702.P7584323444615558199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A139632 n

end

end A145702.P7584323444615558199

/-! ## A145702.P9828284669626929260

`A139632(n)/A057077(A057077(n)+n)`
-/

namespace A145702.P9828284669626929260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139632 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A145702.P9828284669626929260

/-! ## A145702.P10878330976114308838

`A139632(n)/A057077(2*n)`
-/

namespace A145702.P10878330976114308838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139632 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A145702.P10878330976114308838

/-! ## A145702.P7112219484082715059

`A057077(n)*A145705(n)`
-/

namespace A145702.P7112219484082715059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A145705 n

end

end A145702.P7112219484082715059

/-! ## A145702.P16749517826602268165

`A087960(n)*A145704(n)`
-/

namespace A145702.P16749517826602268165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A145704 n

end

end A145702.P16749517826602268165

/-! ## A145702.P12542048687700776712

`A057077(n+1)*A145704(n)`
-/

namespace A145702.P12542048687700776712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A145704 n

end

end A145702.P12542048687700776712

/-! ## A145702.P13588746708356692708

`A033999(A110654(n))*A145704(n)`
-/

namespace A145702.P13588746708356692708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A110654 n).toNat * A145704 n

end

end A145702.P13588746708356692708

/-! ## A145702.P15168511987836286750

`lcm(A033999(n), A145704(n))*A033999(n)`
-/

namespace A145702.P15168511987836286750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A145704 n) : ℤ) * A033999 n

end

end A145702.P15168511987836286750

/-! ## A145702.P17661860295720702864

`A139632(n)/A087960(n²)`
-/

namespace A145702.P17661860295720702864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139632 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A145702.P17661860295720702864

/-!
# A145703: Expansion of chi(x) / chi(-x^10) in powers of x where chi() is a Ramanujan theta function.

The programs for A145703, there is no canonical definition to state claims against.
-/

/-! ## A145703.P12172581063790403685

`(-1)^n*A145707(n)`
-/

namespace A145703.P12172581063790403685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A145707 n

end

end A145703.P12172581063790403685

/-! ## A145703.P7346964205743913080

`A139632(2*n+1)`
-/

namespace A145703.P7346964205743913080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139632 (2 * n + 1)

end

end A145703.P7346964205743913080

/-! ## A145703.P1163257945273188390

`abs(A145707(n))`
-/

namespace A145703.P1163257945273188390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145707 n|

end

end A145703.P1163257945273188390

/-! ## A145703.P17728075164023062266

`gcd(A000038(n), A145707(n))`
-/

namespace A145703.P17728075164023062266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145707 n)

end

end A145703.P17728075164023062266

/-! ## A145703.P8915770527617638263

`lcm(A020985(n), A145707(n))`
-/

namespace A145703.P8915770527617638263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145707 n)

end

end A145703.P8915770527617638263

/-! ## A145703.P9110768155708585854

`abs(A145702(2*n+1))`
-/

namespace A145703.P9110768155708585854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145702 (2 * n + 1)|

end

end A145703.P9110768155708585854

/-! ## A145703.P12417808015335237444

`A000007(n+1)-A145702(2*n+1)`
-/

namespace A145703.P12417808015335237444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A145702 (2 * n + 1)

end

end A145703.P12417808015335237444

/-! ## A145703.P17166590397780685253

`A000038(n+1)-A145702(2*n+1)`
-/

namespace A145703.P17166590397780685253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A145702 (2 * n + 1)

end

end A145703.P17166590397780685253

/-! ## A145703.P12712479608889399340

`A005926(2*n)-A145702(2*n+1)`
-/

namespace A145703.P12712479608889399340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 (2 * n) - A145702 (2 * n + 1)

end

end A145703.P12712479608889399340

/-! ## A145703.P8264896191568400538

`1-(A145702(2*n+1)+A033999(2*n))`
-/

namespace A145703.P8264896191568400538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A145702 (2 * n + 1) + A033999 (2 * n))

end

end A145703.P8264896191568400538

/-! ## A145703.P4793838411112217226

`A033999(2*n+1)*A145702(2*n+1)`
-/

namespace A145703.P4793838411112217226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A145702 (2 * n + 1)

end

end A145703.P4793838411112217226

/-! ## A145703.P3678813923113734029

`gcd(A005926(A005926(n)), A145702(2*n+1))`
-/

namespace A145703.P3678813923113734029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005926 (A005926 n).toNat) (A145702 (2 * n + 1))

end

end A145703.P3678813923113734029

/-! ## A145703.P6948134202033631418

`A145702(2*n+1)/(A087960(2*n+1)*A087960(2*n))`
-/

namespace A145703.P6948134202033631418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145702 (2 * n + 1) : ℚ) / (A087960 (2 * n + 1) * A087960 (2 * n) : ℚ)

end

end A145703.P6948134202033631418

/-! ## A145703.P3763009564150850841

`abs(A145704(Δ[n²]))`
-/

namespace A145703.P3763009564150850841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A145703.P3763009564150850841

/-! ## A145703.P3199044099023328268

`abs(A145705(Δ[n²]))`
-/

namespace A145703.P3199044099023328268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A145703.P3199044099023328268

/-! ## A145703.P5914293440245965871

`A033999(n)*A145704(2*n+1)`
-/

namespace A145703.P5914293440245965871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145704 (2 * n + 1)

end

end A145703.P5914293440245965871

/-! ## A145703.P14937541092749382092

`lcm(A057077(n), A145705(2*n+1))`
-/

namespace A145703.P14937541092749382092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A145705 (2 * n + 1))

end

end A145703.P14937541092749382092

/-! ## A145703.P17966336116938837882

`lcm(A065357(n), A145704(2*n+1))`
-/

namespace A145703.P17966336116938837882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A145704 (2 * n + 1))

end

end A145703.P17966336116938837882

/-! ## A145703.P13723103189336356763

`A033999(n+1)*A145705(2*n+1)`
-/

namespace A145703.P13723103189336356763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A145705 (2 * n + 1)

end

end A145703.P13723103189336356763

/-! ## A145703.P10687692041235213332

`A057077(2*n)*A145704(2*n+1)`
-/

namespace A145703.P10687692041235213332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A145704 (2 * n + 1)

end

end A145703.P10687692041235213332

/-!
# A145704: Expansion of q^(1/4) * (eta(q^8) * eta(q^10) + eta(q^2) * eta(q^40)) / (eta(q^4) * eta(q^20)) in powers of q.

The programs for A145704, there is no canonical definition to state claims against.
-/

/-! ## A145704.P11735527140173833148

`(-1)^n*A145705(n)`
-/

namespace A145704.P11735527140173833148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A145705 n

end

end A145704.P11735527140173833148

/-! ## A145704.P5334700250992290311

`A057077(n)*A139632(n)`
-/

namespace A145704.P5334700250992290311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A139632 n

end

end A145704.P5334700250992290311

/-! ## A145704.P4832483498935513450

`A087960(n)*A145702(n)`
-/

namespace A145704.P4832483498935513450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A145702 n

end

end A145704.P4832483498935513450

/-! ## A145704.P10235485607472465926

`A057077(n+1)*A145702(n)`
-/

namespace A145704.P10235485607472465926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A145702 n

end

end A145704.P10235485607472465926

/-! ## A145704.P2004892646324303194

`A145705(n)/A057077(2*n)`
-/

namespace A145704.P2004892646324303194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145705 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A145704.P2004892646324303194

/-! ## A145704.P11567445749912911495

`A009001(2*A140106(n+2))*A139632(n)`
-/

namespace A145704.P11567445749912911495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * A140106 (n + 2)).toNat * A139632 n

end

end A145704.P11567445749912911495

/-! ## A145704.P1380019836315328220

`A009001(n²-n)*A139632(n)`
-/

namespace A145704.P1380019836315328220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (n ^ 2 - n) * A139632 n

end

end A145704.P1380019836315328220

/-! ## A145704.P10233189252078629578

`A145705(n)/A087960(n²)`
-/

namespace A145704.P10233189252078629578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145705 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A145704.P10233189252078629578

/-!
# A145705: Expansion of q^(1/4) * (eta(q^8) * eta(q^10) - eta(q^2) * eta(q^40)) / (eta(q^4) * eta(q^20)) in powers of q.

The programs for A145705, there is no canonical definition to state claims against.
-/

/-! ## A145705.P17161251910149919861

`A033999(n)*A145704(n)`
-/

namespace A145705.P17161251910149919861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145704 n

end

end A145705.P17161251910149919861

/-! ## A145705.P14082954256815769830

`A057077(n)*A145702(n)`
-/

namespace A145705.P14082954256815769830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A145702 n

end

end A145705.P14082954256815769830

/-! ## A145705.P3293941179727172311

`A087960(n)*A139632(n)`
-/

namespace A145705.P3293941179727172311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A139632 n

end

end A145705.P3293941179727172311

/-! ## A145705.P3316647146011285868

`A057077(n+1)*A139632(n)`
-/

namespace A145705.P3316647146011285868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A139632 n

end

end A145705.P3316647146011285868

/-! ## A145705.P10592569541688473175

`A057077(2*n)*A145704(n)`
-/

namespace A145705.P10592569541688473175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A145704 n

end

end A145705.P10592569541688473175

/-! ## A145705.P11907143242057567279

`A087960(2*n)*A145704(n)`
-/

namespace A145705.P11907143242057567279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A145704 n

end

end A145705.P11907143242057567279

/-! ## A145705.P17198002696622867628

`A134429(n)%2*A145704(n)`
-/

namespace A145705.P17198002696622867628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134429 n) 2 * A145704 n

end

end A145705.P17198002696622867628

/-! ## A145705.P8533419225824360707

`A034947(2*n+1)*A145704(n)`
-/

namespace A145705.P8533419225824360707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A145704 n

end

end A145705.P8533419225824360707

/-! ## A145705.P3644281888774542523

`A145704(n)*A309873(A007947(n+1))`
-/

namespace A145705.P3644281888774542523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145704 n * A309873 (A007947 (n + 1)).toNat

end

end A145705.P3644281888774542523

/-! ## A145705.P9291668029766572754

`A145704(n)*A309873(A020639(n+1))`
-/

namespace A145705.P9291668029766572754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145704 n * A309873 (A020639 (n + 1)).toNat

end

end A145705.P9291668029766572754

/-! ## A145705.P14565345720654511739

`A145704(n)/A057077(A057077(n)+n)`
-/

namespace A145705.P14565345720654511739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145704 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A145705.P14565345720654511739

/-! ## A145705.P2611560308480713504

`A145704(n)/A087960(n²)`
-/

namespace A145705.P2611560308480713504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145704 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A145705.P2611560308480713504

/-! ## A145705.P359185511491259899

`A145704(n)*A309873(n²+1)`
-/

namespace A145705.P359185511491259899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145704 n * A309873 (n ^ 2 + 1)

end

end A145705.P359185511491259899

/-!
# A145706: Expansion of chi(-x^5) / chi(-x^2) in powers of x where chi() is a Ramanujan theta function.

The programs for A145706, there is no canonical definition to state claims against.
-/

/-! ## A145706.P11824886658358157815

`(-1)^n*A139631(n)`
-/

namespace A145706.P11824886658358157815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A139631 n

end

end A145706.P11824886658358157815

/-! ## A145706.P10305652082011253274

`A145704(2*n)`
-/

namespace A145706.P10305652082011253274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145704 (2 * n)

end

end A145706.P10305652082011253274

/-! ## A145706.P14929954341243422195

`A145705(2*n)`
-/

namespace A145706.P14929954341243422195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145705 (2 * n)

end

end A145706.P14929954341243422195

/-! ## A145706.P14457294034152205876

`A139631(n)/A033999(n)`
-/

namespace A145706.P14457294034152205876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139631 n : ℚ) / (A033999 n : ℚ)

end

end A145706.P14457294034152205876

/-! ## A145706.P7615697805941121578

`A033999(n)*A139632(2*n)`
-/

namespace A145706.P7615697805941121578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139632 (2 * n)

end

end A145706.P7615697805941121578

/-! ## A145706.P10895321129454036662

`A033999(n)*A145702(2*n)`
-/

namespace A145706.P10895321129454036662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145702 (2 * n)

end

end A145706.P10895321129454036662

/-! ## A145706.P9872320206202427389

`A009001(2*n)*A139632(2*n)`
-/

namespace A145706.P9872320206202427389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A139632 (2 * n)

end

end A145706.P9872320206202427389

/-! ## A145706.P9288230904141893501

`A057077(2*n)*A139632(2*n)`
-/

namespace A145706.P9288230904141893501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A139632 (2 * n)

end

end A145706.P9288230904141893501

/-! ## A145706.P16664637121373877800

`A057077(2*n)*A145702(2*n)`
-/

namespace A145706.P16664637121373877800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A145702 (2 * n)

end

end A145706.P16664637121373877800

/-! ## A145706.P991484701991884131

`A087960(2*n)*A139632(2*n)`
-/

namespace A145706.P991484701991884131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A139632 (2 * n)

end

end A145706.P991484701991884131

/-! ## A145706.P17937095561025218887

`A087960(2*n)*A145702(2*n)`
-/

namespace A145706.P17937095561025218887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A145702 (2 * n)

end

end A145706.P17937095561025218887

/-! ## A145706.P12767753718786399445

`A145704(n+n)+A025444(A025444(n))`
-/

namespace A145706.P12767753718786399445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145704 (n + n) + A025444 (A025444 n).toNat

end

end A145706.P12767753718786399445

/-! ## A145706.P6015972373659444534

`A139632(2*n)/A087960(n²)`
-/

namespace A145706.P6015972373659444534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139632 (2 * n) : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A145706.P6015972373659444534

/-! ## A145706.P4928487680225802581

`A145702(2*n)/A087960(n²)`
-/

namespace A145706.P4928487680225802581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145702 (2 * n) : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A145706.P4928487680225802581

/-!
# A145707: Expansion of chi(-q) / chi(-q^10) in powers of q where chi() is a Ramanujan theta function.

The programs for A145707, there is no canonical definition to state claims against.
-/

/-! ## A145707.P3816974729648144932

`(-1)^n*A145703(n)`
-/

namespace A145707.P3816974729648144932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A145703 n

end

end A145707.P3816974729648144932

/-! ## A145707.P10883549313196110934

`A145704(2*n+1)`
-/

namespace A145707.P10883549313196110934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145704 (2 * n + 1)

end

end A145707.P10883549313196110934

/-! ## A145707.P3219807146172220274

`-A145705(2*n+1)`
-/

namespace A145707.P3219807146172220274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145705 (2 * n + 1)

end

end A145707.P3219807146172220274

/-! ## A145707.P13212680540208067332

`A145703(n)/A033999(n)`
-/

namespace A145707.P13212680540208067332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145703 n : ℚ) / (A033999 n : ℚ)

end

end A145707.P13212680540208067332

/-! ## A145707.P16799473931913782559

`A033999(n)*A139632(2*n+1)`
-/

namespace A145707.P16799473931913782559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139632 (2 * n + 1)

end

end A145707.P16799473931913782559

/-! ## A145707.P9178042675977065715

`A033999(n+1)*A145702(2*n+1)`
-/

namespace A145707.P9178042675977065715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A145702 (2 * n + 1)

end

end A145707.P9178042675977065715

/-! ## A145707.P18032998870388211002

`A009001(2*n)*A139632(2*n+1)`
-/

namespace A145707.P18032998870388211002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A139632 (2 * n + 1)

end

end A145707.P18032998870388211002

/-! ## A145707.P12996846616378414104

`A057077(2*n)*A139632(2*n+1)`
-/

namespace A145707.P12996846616378414104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A139632 (2 * n + 1)

end

end A145707.P12996846616378414104

/-! ## A145707.P4243263062483441998

`A087960(2*n)*A139632(2*n+1)`
-/

namespace A145707.P4243263062483441998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A139632 (2 * n + 1)

end

end A145707.P4243263062483441998

/-! ## A145707.P8117995731805677148

`A087960(2*n+1)*A145702(2*n+1)`
-/

namespace A145707.P8117995731805677148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n + 1) * A145702 (2 * n + 1)

end

end A145707.P8117995731805677148

/-! ## A145707.P17484350927060214071

`A000007(n+1)-A145705(2*n+1)`
-/

namespace A145707.P17484350927060214071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A145705 (2 * n + 1)

end

end A145707.P17484350927060214071

/-!
# A145708: Expansion of psi(-q) / psi(-q^5) in powers of q where psi() is a Ramanujan theta function.

The programs for A145708, there is no canonical definition to state claims against.
-/

/-! ## A145708.P3778815820682327173

`(-1)^n*A138532(n)`
-/

namespace A145708.P3778815820682327173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138532 n

end

end A145708.P3778815820682327173

/-! ## A145708.P13364954044965266715

`A138532(n)/A033999(n)`
-/

namespace A145708.P13364954044965266715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138532 n : ℚ) / (A033999 n : ℚ)

end

end A145708.P13364954044965266715

/-! ## A145708.P10012372188751359982

`A138532(n)/A057077(A057077(n)+n)`
-/

namespace A145708.P10012372188751359982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138532 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A145708.P10012372188751359982

/-! ## A145708.P2731116664589215027

`A138532(n)/A057077(2*n)`
-/

namespace A145708.P2731116664589215027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138532 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A145708.P2731116664589215027

/-! ## A145708.P11448899806112723767

`A138526(n)*A138532(n)/A261968(n)`
-/

namespace A145708.P11448899806112723767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138526 n * A138532 n : ℚ) / (A261968 n : ℚ)

end

end A145708.P11448899806112723767

/-!
# A145710: Number of primes among first 10^n primes that have first and last digits both equal 3 (not counting the prime 3).

The programs for A145710, there is no canonical definition to state claims against.
-/

/-! ## A145710.P8343725243166337024

`A129890(n)-A152405(A033312(n))`
-/

namespace A145710.P8343725243166337024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129890 n - A152405 (A033312 n).toNat

end

end A145710.P8343725243166337024

/-!
# A145711: Number of primes p in the range 9 < p <= prime(10^n) that have most significant and least significant decimal digit both equal to 7.

The programs for A145711, there is no canonical definition to state claims against.
-/

/-! ## A145711.P1338895971725899234

`A345333(3*n+2)%p?[A286970(n)]`
-/

namespace A145711.P1338895971725899234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345333 (3 * n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A145711.P1338895971725899234

/-!
# A145712: Number of primes p in the range 9 < p <= prime(10^n) that have most significant and least significant decimal digit both equal to 9.

The programs for A145712, there is no canonical definition to state claims against.
-/

/-! ## A145712.P5880024678879055790

`∑{d}[A161680(n), A026741(A229146(#))]`
-/

namespace A145712.P5880024678879055790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 (A229146 d).toNat

end

end A145712.P5880024678879055790

/-!
# A145713: Number of primes p in the range 9 < p <= prime(10^n) that begin and end with the same digit.

The programs for A145713, there is no canonical definition to state claims against.
-/

/-! ## A145713.P2076403279066560461

`A145709(n+1)+A145710(n+1)+A145711(n+1)+A145712(n+1)`
-/

namespace A145713.P2076403279066560461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145709 (n + 1) + A145710 (n + 1) + A145711 (n + 1) + A145712 (n + 1)

end

end A145713.P2076403279066560461

/-!
# A145714: a(n) = ceiling(sqrt(2*A145701(n))).

The programs for A145714, there is no canonical definition to state claims against.
-/

/-! ## A145714.P7947912181771072227

`ceil(sqrt(2*A145701(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145714.P7947912181771072227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A145701 (n + 1) : ℝ)⌉

end

end A145714.P7947912181771072227

/-! ## A145714.P17579717318231829142

`∪[A152786(n+1), A284036(n+1)]`
-/

namespace A145714.P17579717318231829142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A145714.P17579717318231829142

/-! ## A145714.P18213906258142366529

`floor(sqrt(2*A145701(n+1))-A134824(2*n+3))`
-/

namespace A145714.P18213906258142366529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * A145701 (n + 1) : ℝ) - (A134824 (2 * n + 3) : ℝ)⌋

end

end A145714.P18213906258142366529

/-! ## A145714.P11142567915212170527

`eq[1, A353464(A099392(n+1))]`
-/

namespace A145714.P11142567915212170527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A099392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145714.P11142567915212170527

/-! ## A145714.P6223123246884886269

`eq[2, A096501(floor(n²/2)+1)]`
-/

namespace A145714.P6223123246884886269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (⌊(n ^ 2 : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145714.P6223123246884886269

/-!
# A145716: Numbers Y such that 381*Y^2+127 is a square.

The programs for A145716, there is no canonical definition to state claims against.
-/

/-! ## A145716.P141612058654528939

`2*A145720(n+1)+1`
-/

namespace A145716.P141612058654528939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145720 (n + 1) + 1

end

end A145716.P141612058654528939

/-!
# A145720: Numbers x such that there exists n in N with (x+1)^3-x^3=127*n^2.

The programs for A145720, there is no canonical definition to state claims against.
-/

/-! ## A145720.P10465305278398091753

`(A145716(n+1)-1)/2`
-/

namespace A145720.P10465305278398091753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145716 (n + 1) - 1 : ℚ) / 2

end

end A145720.P10465305278398091753

/-!
# A145721: Numbers n such that there exists x in N with (x+1)^3-x^3=127*n^2.

The programs for A145721, there is no canonical definition to state claims against.
-/

/-! ## A145721.P4319150497016716076

`A145715(n+1)/A145715(A232864(C(2, n+2)))`
-/

namespace A145721.P4319150497016716076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145715 (n + 1) : ℚ) / (A145715 (A232864 (Nat.choose 2 (n + 2))).toNat : ℚ)

end

end A145721.P4319150497016716076

/-!
# A145722: Expansion of f(q) * f(q^5) / phi(-q^2)^2 in powers of q where f(), phi() are Ramanujan theta functions.

The programs for A145722, there is no canonical definition to state claims against.
-/

/-! ## A145722.P6055639289910756442

`A036026(2*n)`
-/

namespace A145722.P6055639289910756442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036026 (2 * n)

end

end A145722.P6055639289910756442

/-! ## A145722.P10008632217496581285

`A116494(2*n)`
-/

namespace A145722.P10008632217496581285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116494 (2 * n)

end

end A145722.P10008632217496581285

/-! ## A145722.P14133177125103362233

`abs(record[A116494(n+1)])`
-/

namespace A145722.P14133177125103362233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A145722.P14133177125103362233

/-! ## A145722.P11239640892186667016

`xor(1, xor(1, A116494(n+n)))`
-/

namespace A145722.P11239640892186667016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A116494 (n + n)))

end

end A145722.P11239640892186667016

/-! ## A145722.P6603351775476127314

`A146162(4*n+1)`
-/

namespace A145722.P6603351775476127314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 (4 * n + 1)

end

end A145722.P6603351775476127314

/-! ## A145722.P760799903399556342

`A147699(5*n+1)`
-/

namespace A145722.P760799903399556342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147699 (5 * n + 1)

end

end A145722.P760799903399556342

/-! ## A145722.P10155418773930772826

`A138532(10*n+3)`
-/

namespace A145722.P10155418773930772826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (10 * n + 3)

end

end A145722.P10155418773930772826

/-!
# A145723: Expansion of q^(-1) * f(q) * chi(-q^5) / f(-q^20) in powers of q where f(), chi() are Ramanujan theta functions.

The programs for A145723, there is no canonical definition to state claims against.
-/

/-! ## A145723.P3293029574866985931

`A123858(2*n+1)%A075944(n)`
-/

namespace A145723.P3293029574866985931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123858 (2 * n + 1)) (A075944 n)

end

end A145723.P3293029574866985931

/-! ## A145723.P1665250141011262174

`A123858(2*n%A230551(n+1)+1)`
-/

namespace A145723.P1665250141011262174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123858 (2 * Int.tmod (n : ℤ) (A230551 (n + 1)) + 1).toNat

end

end A145723.P1665250141011262174

/-! ## A145723.P12760397080607593530

`A123858(2*n+1)+A000038(A001523(n))`
-/

namespace A145723.P12760397080607593530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123858 (2 * n + 1) + A000038 (A001523 n).toNat

end

end A145723.P12760397080607593530

/-! ## A145723.P7011504208672128059

`A123858(2*n+1)+A000038(A000045(n+1))`
-/

namespace A145723.P7011504208672128059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123858 (2 * n + 1) + A000038 (A000045 (n + 1)).toNat

end

end A145723.P7011504208672128059

/-! ## A145723.P1691266454556069066

`A123858(2*n+1)/A216084(A216084(n+5))`
-/

namespace A145723.P1691266454556069066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123858 (2 * n + 1) : ℚ) / (A216084 (A216084 (n + 5)).toNat : ℚ)

end

end A145723.P1691266454556069066

/-!
# A145724: Expansion of q * f(-q^20) / (f(q) * chi(-q^5)) in powers of q where f(), chi() are Ramanujan theta functions.

The programs for A145724, there is no canonical definition to state claims against.
-/

/-! ## A145724.P13617087735589718291

`A039843(n)*A062157(A132045(n))`
-/

namespace A145724.P13617087735589718291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039843 n * A062157 (A132045 n).toNat

end

end A145724.P13617087735589718291

/-! ## A145724.P5408347762364670608

`A039843(n)*A062157(A132072(n))`
-/

namespace A145724.P5408347762364670608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039843 n * A062157 (A132072 n).toNat

end

end A145724.P5408347762364670608

/-! ## A145724.P8667174395855438073

`A033999(n)*A351870(A039843(n))`
-/

namespace A145724.P8667174395855438073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A351870 (A039843 n).toNat

end

end A145724.P8667174395855438073

/-! ## A145724.P9754369549739445228

`A062157(n+1)*A351870(A039843(n))`
-/

namespace A145724.P9754369549739445228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A351870 (A039843 n).toNat

end

end A145724.P9754369549739445228

/-! ## A145724.P3772047405142783803

`A039843(n)/A033999(A351870(n))`
-/

namespace A145724.P3772047405142783803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039843 n : ℚ) / (A033999 (A351870 n).toNat : ℚ)

end

end A145724.P3772047405142783803

/-!
# A145726: Expansion of q * psi(-q) * psi(-q^15) / (psi(-q^3) * psi(-q^5)) in powers of q where psi() is a Ramanujan theta function.

The programs for A145726, there is no canonical definition to state claims against.
-/

/-! ## A145726.P4354031780114463506

`A145727(n+1)`
-/

namespace A145726.P4354031780114463506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 (n + 1)

end

end A145726.P4354031780114463506

/-! ## A145726.P1523917922299286499

`A033999(n)*A131794(n+1)`
-/

namespace A145726.P1523917922299286499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131794 (n + 1)

end

end A145726.P1523917922299286499

/-! ## A145726.P16446276614302811326

`A033999(n+1)*A131797(n+1)`
-/

namespace A145726.P16446276614302811326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A131797 (n + 1)

end

end A145726.P16446276614302811326

/-! ## A145726.P7754766030799425312

`-A145782(n+1)`
-/

namespace A145726.P7754766030799425312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145782 (n + 1)

end

end A145726.P7754766030799425312

/-! ## A145726.P11995113553934670416

`Δ[a(n-1)-A145782(n)]` with `a(0)=1`
-/

namespace A145726.P11995113553934670416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A145782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145726.P11995113553934670416

/-! ## A145726.P7286333389791960976

`A033999(n)*A131796(n+1)`
-/

namespace A145726.P7286333389791960976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131796 (n + 1)

end

end A145726.P7286333389791960976

/-! ## A145726.P9552379876892857145

`A000007(n+1)-A145782(n+1)`
-/

namespace A145726.P9552379876892857145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A145782 (n + 1)

end

end A145726.P9552379876892857145

/-! ## A145726.P11707899861947326291

`A000038(n+1)-A145782(n+1)`
-/

namespace A145726.P11707899861947326291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A145782 (n + 1)

end

end A145726.P11707899861947326291

/-! ## A145726.P363042302696107784

`A131796(n+1)*A165326(n+1)`
-/

namespace A145726.P363042302696107784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 (n + 1) * A165326 (n + 1)

end

end A145726.P363042302696107784

/-! ## A145726.P2925200070419527359

`A145782(n+1)*A153881(n+2)`
-/

namespace A145726.P2925200070419527359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145782 (n + 1) * A153881 (n + 2)

end

end A145726.P2925200070419527359

/-! ## A145726.P7927300631554173433

`A145783(n+1)-(A145785(n+1)+A145782(n+1))`
-/

namespace A145726.P7927300631554173433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145783 (n + 1) - (A145785 (n + 1) + A145782 (n + 1))

end

end A145726.P7927300631554173433

/-! ## A145726.P1050201708573266998

`A094023(n+1)*A131797(n+1)/A145728(n+1)`
-/

namespace A145726.P1050201708573266998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094023 (n + 1) * A131797 (n + 1) : ℚ) / (A145728 (n + 1) : ℚ)

end

end A145726.P1050201708573266998

/-! ## A145726.P971822465288602005

`A123630(n+1)*A131797(n+1)/A145728(n+1)`
-/

namespace A145726.P971822465288602005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123630 (n + 1) * A131797 (n + 1) : ℚ) / (A145728 (n + 1) : ℚ)

end

end A145726.P971822465288602005

/-! ## A145726.P8757067840755205553

`1-(A145782(n+1)+A033999(2*n))`
-/

namespace A145726.P8757067840755205553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A145782 (n + 1) + A033999 (2 * n))

end

end A145726.P8757067840755205553

/-! ## A145726.P1716877787711277266

`A033999(2*n+1)*A145782(n+1)`
-/

namespace A145726.P1716877787711277266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A145782 (n + 1)

end

end A145726.P1716877787711277266

/-! ## A145726.P2031196518982387328

`A131796(n+1)/A033999(n²)`
-/

namespace A145726.P2031196518982387328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131796 (n + 1) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A145726.P2031196518982387328

/-!
# A145727: Expansion of f(q) * f(q^15) / (f(-q^6) * f(-q^10)) in powers of q where f() is a Ramanujan theta function.

The programs for A145727, there is no canonical definition to state claims against.
-/

/-! ## A145727.P773605303841499699

`A145726((2*n)%(n+1)+1)`
-/

namespace A145727.P773605303841499699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145726 (2 * n % (n + 1) + 1)

end

end A145727.P773605303841499699

/-! ## A145727.P5569392572624195453

`A145726(A028310(n))`
-/

namespace A145727.P5569392572624195453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145726 (A028310 n).toNat

end

end A145727.P5569392572624195453

/-! ## A145727.P7978483564550066978

`A145726(A000007(n)+n)`
-/

namespace A145727.P7978483564550066978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145726 (A000007 n + (n : ℤ)).toNat

end

end A145727.P7978483564550066978

/-! ## A145727.P5772176872392256577

`A000038(n)-A145782(n)`
-/

namespace A145727.P5772176872392256577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A145782 n

end

end A145727.P5772176872392256577

/-! ## A145727.P15999995277920889766

`A033999(n)*A131797(n)`
-/

namespace A145727.P15999995277920889766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131797 n

end

end A145727.P15999995277920889766

/-! ## A145727.P4783426349406915901

`A131796(n)*A165326(n)`
-/

namespace A145727.P4783426349406915901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 n * A165326 n

end

end A145727.P4783426349406915901

/-! ## A145727.P12805374162809862046

`A145782(n)*A153881(n+1)`
-/

namespace A145727.P12805374162809862046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145782 n * A153881 (n + 1)

end

end A145727.P12805374162809862046

/-! ## A145727.P17338194761539015666

`2*A000007(n)-A145782(n)`
-/

namespace A145727.P17338194761539015666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A145782 n

end

end A145727.P17338194761539015666

/-! ## A145727.P2911229460772793889

`floor(2/A000203(n+1)-A145782(n))`
-/

namespace A145727.P2911229460772793889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A000203 (n + 1) : ℚ) - (A145782 n : ℚ)⌋

end

end A145727.P2911229460772793889

/-! ## A145727.P14400405563923014084

`A000122(A000122(n)+n)-A145782(n)`
-/

namespace A145727.P14400405563923014084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A145782 n

end

end A145727.P14400405563923014084

/-! ## A145727.P5550698677997637185

`A094023(n)/A145728(n)*A131797(n)`
-/

namespace A145727.P5550698677997637185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094023 n : ℚ) / (A145728 n : ℚ) * (A131797 n : ℚ)

end

end A145727.P5550698677997637185

/-! ## A145727.P16286459492702964420

`A131797(n)*A165326(n+1)`
-/

namespace A145727.P16286459492702964420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 n * A165326 (n + 1)

end

end A145727.P16286459492702964420

/-! ## A145727.P6327339647436629002

`A131797(n)/A165326(A165326(n)+n)`
-/

namespace A145727.P6327339647436629002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131797 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A145727.P6327339647436629002

/-! ## A145727.P7193843210262201576

`A145782(n)*A165326(2*n)`
-/

namespace A145727.P7193843210262201576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145782 n * A165326 (2 * n)

end

end A145727.P7193843210262201576

/-!
# A145728: Expansion of f(-q^6) * f(-q^10) / (f(q) * f(q^15)) in powers of q where f() is a Ramanujan theta function.

The programs for A145728, there is no canonical definition to state claims against.
-/

/-! ## A145728.P4078810406268475221

`(-1)^n*A094023(n)`
-/

namespace A145728.P4078810406268475221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A094023 n

end

end A145728.P4078810406268475221

/-! ## A145728.P6026754760758390640

`A094023(n)/A033999(n)`
-/

namespace A145728.P6026754760758390640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094023 n : ℚ) / (A033999 n : ℚ)

end

end A145728.P6026754760758390640

/-! ## A145728.P3582761974185266342

`A103259(n)/A280560(n)`
-/

namespace A145728.P3582761974185266342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103259 n : ℚ) / (A280560 n : ℚ)

end

end A145728.P3582761974185266342

/-!
# A145729: Partial sums of A052379.

The programs for A145729, the canonical program `A145729.P11168930963504673180` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145729 has offset 0).

The definition of A145729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145729.P11168930963504673180

`10*a(n-1)-17*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=8, a(2)=80`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145729

/-- `10*a(n-1)-17*a(n-2)+8*a(n-3)` -/
def P11168930963504673180.Spec : Prop :=
  ∀ n, P11168930963504673180.a n = A145729 n

theorem P11168930963504673180.correct : P11168930963504673180.Spec := by
  intro n
  simp only [A145729]

end A145729

/-! ## A145729.P5393800286220044913

`2*A145730(n)`
-/

namespace A145729.P5393800286220044913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145730 n

end

end A145729.P5393800286220044913

namespace A145729

/-- `2*A145730(n)` -/
def P5393800286220044913.Spec : Prop :=
  ∀ n, P5393800286220044913.a n = A145729 n

end A145729

/-! ## A145729.P4183140555104285565

`8*(8^(n+1)-7*n-8)/49`
-/

namespace A145729.P4183140555104285565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (((8 ^ (n + 1) : ℤ) - (7 * n : ℤ) - 8 : ℚ) / 49)

end

end A145729.P4183140555104285565

namespace A145729

/-- `8*(8^(n+1)-7*n-8)/49` -/
def P4183140555104285565.Spec : Prop :=
  ∀ n, P4183140555104285565.a n = (A145729 n : ℚ)

theorem P4183140555104285565.correct : P4183140555104285565.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A145729, Nat.add_sub_cancel, A145729.P4183140555104285565.a, A145729.P11168930963504673180.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A145729, Nat.add_sub_cancel, A145729.P4183140555104285565.a, A145729.P11168930963504673180.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145729

/-! ## A145729.P7746168197961687736

`lcm(2, ∑[xor(1, ∑[8^n])])`
-/

namespace A145729.P7746168197961687736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145729.P7746168197961687736

namespace A145729

/-- `lcm(2, ∑[xor(1, ∑[8^n])])` -/
def P7746168197961687736.Spec : Prop :=
  ∀ n, (P7746168197961687736.a n : ℤ) = A145729 n

end A145729

/-! ## A145729.P13044667115860215095

`∑[∑[8*a(n-1)]]` with `a(0)=0, a(1)=8`
-/

namespace A145729.P13044667115860215095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f2 =>
  8 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145729.P13044667115860215095

namespace A145729

/-- `∑[∑[8*a(n-1)]]` -/
def P13044667115860215095.Spec : Prop :=
  ∀ n, (P13044667115860215095.a n : ℤ) = A145729 n

end A145729

/-! ## A145729.P12559575261608185292

`∑[a(n-1)+8^n]` with `a(0)=0`
-/

namespace A145729.P12559575261608185292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145729.P12559575261608185292

namespace A145729

/-- `∑[a(n-1)+8^n]` -/
def P12559575261608185292.Spec : Prop :=
  ∀ n, (P12559575261608185292.a n : ℤ) = A145729 n

end A145729

/-! ## A145729.P2684022002672581442

`(a(n-1)+n)/(1/2)^3` with `a(0)=0`
-/

namespace A145729.P2684022002672581442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℚ)) / ((1 : ℚ) / 2) ^ 3

end

end A145729.P2684022002672581442

namespace A145729

/-- `(a(n-1)+n)/(1/2)^3` -/
def P2684022002672581442.Spec : Prop :=
  ∀ n, P2684022002672581442.a n = (A145729 n : ℚ)

end A145729

/-! ## A145729.P4783327219617602600

`A014831(n+1)-(n+1)`
-/

namespace A145729.P4783327219617602600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014831 (n + 1) - (n + 1 : ℤ)

end

end A145729.P4783327219617602600

namespace A145729

/-- `A014831(n+1)-(n+1)` -/
def P4783327219617602600.Spec : Prop :=
  ∀ n, P4783327219617602600.a n = A145729 n

end A145729

/-! ## A145729.P7938902072745669230

`32*(a(n-1)+n)/4` with `a(0)=0`
-/

namespace A145729.P7938902072745669230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  32 * (a (n - 1) + (n : ℚ)) / 4

end

end A145729.P7938902072745669230

namespace A145729

/-- `32*(a(n-1)+n)/4` -/
def P7938902072745669230.Spec : Prop :=
  ∀ n, P7938902072745669230.a n = (A145729 n : ℚ)

end A145729

/-! ## A145729.P16082287820189664355

`∑[A052379(n)]-A052379(n)`
-/

namespace A145729.P16082287820189664355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052379 n

end

end A145729.P16082287820189664355

namespace A145729

/-- `∑[A052379(n)]-A052379(n)` -/
def P16082287820189664355.Spec : Prop :=
  ∀ n, P16082287820189664355.a n = A145729 n

end A145729

/-! ## A145729.P10936317188689350651

`∑[A052379(n+2)]%A052379(n)`
-/

namespace A145729.P10936317188689350651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052379 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A052379 n)

end

end A145729.P10936317188689350651

namespace A145729

/-- `∑[A052379(n+2)]%A052379(n)` -/
def P10936317188689350651.Spec : Prop :=
  ∀ n, P10936317188689350651.a n = A145729 n

end A145729

/-!
# A145730: Partial sums of A108019.

The programs for A145730, the canonical program `A145730.P3735433079188801181` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145730 has offset 0).

The definition of A145730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145730.P3735433079188801181

`10*a(n-1)-17*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=4, a(2)=40`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145730

/-- `10*a(n-1)-17*a(n-2)+8*a(n-3)` -/
def P3735433079188801181.Spec : Prop :=
  ∀ n, P3735433079188801181.a n = A145730 n

theorem P3735433079188801181.correct : P3735433079188801181.Spec := by
  intro n
  simp only [A145730]

end A145730

/-! ## A145730.P11658138341259970722

`A145729(n)/2`
-/

namespace A145730.P11658138341259970722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145729 n : ℚ) / 2

end

end A145730.P11658138341259970722

namespace A145730

/-- `A145729(n)/2` -/
def P11658138341259970722.Spec : Prop :=
  ∀ n, P11658138341259970722.a n = (A145730 n : ℚ)

end A145730

/-! ## A145730.P1046762468029108229

`4*(8^(n+1)-7*n-8)/49`
-/

namespace A145730.P1046762468029108229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((8 ^ (n + 1) : ℤ) - (7 * n : ℤ) - 8 : ℚ) / 49)

end

end A145730.P1046762468029108229

namespace A145730

/-- `4*(8^(n+1)-7*n-8)/49` -/
def P1046762468029108229.Spec : Prop :=
  ∀ n, P1046762468029108229.a n = (A145730 n : ℚ)

theorem P1046762468029108229.correct : P1046762468029108229.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A145730, Nat.add_sub_cancel, A145730.P1046762468029108229.a, A145730.P3735433079188801181.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A145730, Nat.add_sub_cancel, A145730.P1046762468029108229.a, A145730.P3735433079188801181.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145730

/-! ## A145730.P17378441481894390851

`∑[xor(1, ∑[8^n])]/2`
-/

namespace A145730.P17378441481894390851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A145730.P17378441481894390851

namespace A145730

/-- `∑[xor(1, ∑[8^n])]/2` -/
def P17378441481894390851.Spec : Prop :=
  ∀ n, P17378441481894390851.a n = (A145730 n : ℚ)

end A145730

/-! ## A145730.P7650587777319747260

`∑[8*a(n-1)+4]` with `a(0)=0`
-/

namespace A145730.P7650587777319747260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  8 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145730.P7650587777319747260

namespace A145730

/-- `∑[8*a(n-1)+4]` -/
def P7650587777319747260.Spec : Prop :=
  ∀ n, (P7650587777319747260.a n : ℤ) = A145730 n

end A145730

/-! ## A145730.P17043497969177149475

`∑[∑[8*a(n-1)]]` with `a(0)=0, a(1)=4`
-/

namespace A145730.P17043497969177149475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  8 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145730.P17043497969177149475

namespace A145730

/-- `∑[∑[8*a(n-1)]]` -/
def P17043497969177149475.Spec : Prop :=
  ∀ n, (P17043497969177149475.a n : ℤ) = A145730 n

end A145730

/-! ## A145730.P5214527879080803950

`∑[a(n-1)+8^n]/2` with `a(0)=0`
-/

namespace A145730.P5214527879080803950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 8 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A145730.P5214527879080803950

namespace A145730

/-- `∑[a(n-1)+8^n]/2` -/
def P5214527879080803950.Spec : Prop :=
  ∀ n, P5214527879080803950.a n = (A145730 n : ℚ)

end A145730

/-! ## A145730.P1843598933882212518

`∑[∑[record[(n%3)^n]]]-(n+1)`
-/

namespace A145730.P1843598933882212518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 3) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A145730.P1843598933882212518

namespace A145730

/-- `∑[∑[record[(n%3)^n]]]-(n+1)` -/
def P1843598933882212518.Spec : Prop :=
  ∀ n, P1843598933882212518.a n = A145730 n

end A145730

/-! ## A145730.P10427217673084581896

`∑[A108019(n)]`
-/

namespace A145730.P10427217673084581896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145730.P10427217673084581896

namespace A145730

/-- `∑[A108019(n)]` -/
def P10427217673084581896.Spec : Prop :=
  ∀ n, P10427217673084581896.a n = A145730 n

end A145730

/-! ## A145730.P8116632802459267318

`(A014831(n+1)-(n+1))/2`
-/

namespace A145730.P8116632802459267318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014831 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A145730.P8116632802459267318

namespace A145730

/-- `(A014831(n+1)-(n+1))/2` -/
def P8116632802459267318.Spec : Prop :=
  ∀ n, P8116632802459267318.a n = (A145730 n : ℚ)

end A145730

/-! ## A145730.P14039894424923382034

`A008586(n)+8*a(n-1)` with `a(0)=0`
-/

namespace A145730.P14039894424923382034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008586 n + 8 * a (n - 1)

end

end A145730.P14039894424923382034

namespace A145730

/-- `A008586(n)+8*a(n-1)` -/
def P14039894424923382034.Spec : Prop :=
  ∀ n, P14039894424923382034.a n = A145730 n

end A145730

/-! ## A145730.P7146453859516428316

`∑[∑[A000225(3*n)]+n]/2`
-/

namespace A145730.P7146453859516428316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A145730.P7146453859516428316

namespace A145730

/-- `∑[∑[A000225(3*n)]+n]/2` -/
def P7146453859516428316.Spec : Prop :=
  ∀ n, P7146453859516428316.a n = (A145730 n : ℚ)

end A145730

/-! ## A145730.P5282737531312022610

`(∑[A052379(n)]-A052379(n))/2`
-/

namespace A145730.P5282737531312022610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052379 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A052379 n : ℤ) : ℚ) / 2

end

end A145730.P5282737531312022610

namespace A145730

/-- `(∑[A052379(n)]-A052379(n))/2` -/
def P5282737531312022610.Spec : Prop :=
  ∀ n, P5282737531312022610.a n = (A145730 n : ℚ)

end A145730

/-!
# A145732: Terms in A003325 which are sum of two subsequent terms in A003325.

The programs for A145732, there is no canonical definition to state claims against.
-/

/-! ## A145732.P3852547352753686847

`∩[A003325(n+1), A003325(n+1)+A003325(n+2)]`
-/

namespace A145732.P3852547352753686847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1) + A003325 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145732.P3852547352753686847

/-!
# A145735: Indices of palindromes in A033649.

The programs for A145735, there is no canonical definition to state claims against.
-/

/-! ## A145735.P710677313158328192

`A357459(n)+A238689(n+1)`
-/

namespace A145735.P710677313158328192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357459 n + A238689 (n + 1)

end

end A145735.P710677313158328192

/-! ## A145735.P16004426808094751804

`∑[A077028(A373998(n+2)+1)]`
-/

namespace A145735.P16004426808094751804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A373998 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145735.P16004426808094751804

/-! ## A145735.P10645248234732094291

`floor(root(A060215(n)*A292564(2*n+1), 3))`
-/

namespace A145735.P10645248234732094291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060215 n * A292564 (2 * n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A145735.P10645248234732094291

/-! ## A145735.P13181225877173762160

`∑[A282085(A173786(n))%A173786(n)]`
-/

namespace A145735.P13181225877173762160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282085 (A173786 n).toNat) (A173786 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145735.P13181225877173762160

/-! ## A145735.P12985513438071462344

`A061392(A104993(n))+A000120(3*n)`
-/

namespace A145735.P12985513438071462344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A104993 n).toNat + A000120 (3 * n)

end

end A145735.P12985513438071462344

/-!
# A145737: a(n) = square part of A145609(n).

The programs for A145737, the canonical program `A145737.P13934073125808827790` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145737 has offset 1).

The definition of A145737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145737.P13934073125808827790

`∏{p}[2*n+3, C(#, #%(n+1))]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145737

/-- `∏{p}[2*n+3, C(#, #%(n+1))]` -/
def P13934073125808827790.Spec : Prop :=
  ∀ n, (P13934073125808827790.a n : ℤ) = A145737 (n + 1)

theorem P13934073125808827790.correct : P13934073125808827790.Spec := by
  intro n
  simp only [A145737, Nat.add_sub_cancel]

end A145737

/-! ## A145737.P9793836432894994621

`gcd(2*n+3, A020484(n))`
-/

namespace A145737.P9793836432894994621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 3 : ℤ) (A020484 n)

end

end A145737.P9793836432894994621

namespace A145737

/-- `gcd(2*n+3, A020484(n))` -/
def P9793836432894994621.Spec : Prop :=
  ∀ n, (P9793836432894994621.a n : ℤ) = A145737 (n + 1)

end A145737

/-! ## A145737.P6717023882157008388

`(n+1)*C(2, A001222(2*n+3)²)*ceil(sin(n)²)+1`
-/

namespace A145737.P6717023882157008388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose 2 (A001222 (2 * n + 3) ^ 2).toNat : ℤ) * ⌈Real.sin (n : ℝ) ^ 2⌉ + 1

end

end A145737.P6717023882157008388

namespace A145737

/-- `(n+1)*C(2, A001222(2*n+3)²)*ceil(sin(n)²)+1` -/
def P6717023882157008388.Spec : Prop :=
  ∀ n, P6717023882157008388.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P1600618222650463621

`gcd(A020484(n), A030440(n))`
-/

namespace A145737.P1600618222650463621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020484 n) (A030440 n)

end

end A145737.P1600618222650463621

namespace A145737

/-- `gcd(A020484(n), A030440(n))` -/
def P1600618222650463621.Spec : Prop :=
  ∀ n, (P1600618222650463621.a n : ℤ) = A145737 (n + 1)

end A145737

/-! ## A145737.P6500628624382784146

`A158388(n)+A121206(n+1)`
-/

namespace A145737.P6500628624382784146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A121206 (n + 1)

end

end A145737.P6500628624382784146

namespace A145737

/-- `A158388(n)+A121206(n+1)` -/
def P6500628624382784146.Spec : Prop :=
  ∀ n, P6500628624382784146.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P11794093371988454920

`gcd(A055848(n), A070846(n+1))`
-/

namespace A145737.P11794093371988454920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055848 n) (A070846 (n + 1))

end

end A145737.P11794093371988454920

namespace A145737

/-- `gcd(A055848(n), A070846(n+1))` -/
def P11794093371988454920.Spec : Prop :=
  ∀ n, (P11794093371988454920.a n : ℤ) = A145737 (n + 1)

end A145737

/-! ## A145737.P892190685374048408

`gcd(A166464(n), A208241(n+1))`
-/

namespace A145737.P892190685374048408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166464 n) (A208241 (n + 1))

end

end A145737.P892190685374048408

namespace A145737

/-- `gcd(A166464(n), A208241(n+1))` -/
def P892190685374048408.Spec : Prop :=
  ∀ n, (P892190685374048408.a n : ℤ) = A145737 (n + 1)

end A145737

/-! ## A145737.P7018020847749615334

`A121206(n+1)-A153881(n+1)`
-/

namespace A145737.P7018020847749615334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121206 (n + 1) - A153881 (n + 1)

end

end A145737.P7018020847749615334

namespace A145737

/-- `A121206(n+1)-A153881(n+1)` -/
def P7018020847749615334.Spec : Prop :=
  ∀ n, P7018020847749615334.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P447074192979778184

`gcd(A126888(n+1), A193873(n+1))`
-/

namespace A145737.P447074192979778184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126888 (n + 1)) (A193873 (n + 1))

end

end A145737.P447074192979778184

namespace A145737

/-- `gcd(A126888(n+1), A193873(n+1))` -/
def P447074192979778184.Spec : Prop :=
  ∀ n, (P447074192979778184.a n : ℤ) = A145737 (n + 1)

end A145737

/-! ## A145737.P16607476162237895741

`A085090(n+2)+A057427(n)-A101808(n+1)`
-/

namespace A145737.P16607476162237895741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 2) + (A057427 n - A101808 (n + 1))

end

end A145737.P16607476162237895741

namespace A145737

/-- `A085090(n+2)+A057427(n)-A101808(n+1)` -/
def P16607476162237895741.Spec : Prop :=
  ∀ n, P16607476162237895741.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P3182147745135889419

`A369033(A201219(2*n+1)+2*n+1)`
-/

namespace A145737.P3182147745135889419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (A201219 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A145737.P3182147745135889419

namespace A145737

/-- `A369033(A201219(2*n+1)+2*n+1)` -/
def P3182147745135889419.Spec : Prop :=
  ∀ n, P3182147745135889419.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P6049359030292050230

`gcd(A061550(n), A098735(n+1))`
-/

namespace A145737.P6049359030292050230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061550 n) (A098735 (n + 1))

end

end A145737.P6049359030292050230

namespace A145737

/-- `gcd(A061550(n), A098735(n+1))` -/
def P6049359030292050230.Spec : Prop :=
  ∀ n, (P6049359030292050230.a n : ℤ) = A145737 (n + 1)

end A145737

/-! ## A145737.P2431689160163368506

`A128059(ceil(n*exp(acot(n))))`
-/

namespace A145737.P2431689160163368506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 ⌈(n : ℝ) * Real.exp (SequenceMachineLib.acot (n : ℝ))⌉.toNat

end

end A145737.P2431689160163368506

namespace A145737

/-- `A128059(ceil(n*exp(acot(n))))` -/
def P2431689160163368506.Spec : Prop :=
  ∀ n, P2431689160163368506.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P508031932837468839

`A128059(A065475(n+1))`
-/

namespace A145737.P508031932837468839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A065475 (n + 1)).toNat

end

end A145737.P508031932837468839

namespace A145737

/-- `A128059(A065475(n+1))` -/
def P508031932837468839.Spec : Prop :=
  ∀ n, P508031932837468839.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P16267316868507342770

`A128059(A114637(n+1))`
-/

namespace A145737.P16267316868507342770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A114637 (n + 1)).toNat

end

end A145737.P16267316868507342770

namespace A145737

/-- `A128059(A114637(n+1))` -/
def P16267316868507342770.Spec : Prop :=
  ∀ n, P16267316868507342770.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P8806033534864522051

`filter[A128059(n+1), A014578(#)]`
-/

namespace A145737.P8806033534864522051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A145737.P8806033534864522051

namespace A145737

/-- `filter[A128059(n+1), A014578(#)]` -/
def P8806033534864522051.Spec : Prop :=
  ∀ n, P8806033534864522051.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P8206156836368620506

`filter[A128059(n+1), A187074(#)]`
-/

namespace A145737.P8206156836368620506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A145737.P8206156836368620506

namespace A145737

/-- `filter[A128059(n+1), A187074(#)]` -/
def P8206156836368620506.Spec : Prop :=
  ∀ n, P8206156836368620506.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P973979389674684411

`filter[A128059(n+1), A320106(#)]`
-/

namespace A145737.P973979389674684411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A145737.P973979389674684411

namespace A145737

/-- `filter[A128059(n+1), A320106(#)]` -/
def P973979389674684411.Spec : Prop :=
  ∀ n, P973979389674684411.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P15285422896314471907

`filter[A128059(n+1), A323511(#)]`
-/

namespace A145737.P15285422896314471907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A145737.P15285422896314471907

namespace A145737

/-- `filter[A128059(n+1), A323511(#)]` -/
def P15285422896314471907.Spec : Prop :=
  ∀ n, P15285422896314471907.a n = A145737 (n + 1)

end A145737

/-! ## A145737.P4107512697556747678

`filter[A128059(n+1), A323512(#)]`
-/

namespace A145737.P4107512697556747678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323512 (f1 j).toNat = 1) n)

end

end A145737.P4107512697556747678

namespace A145737

/-- `filter[A128059(n+1), A323512(#)]` -/
def P4107512697556747678.Spec : Prop :=
  ∀ n, P4107512697556747678.a n = A145737 (n + 1)

end A145737

/-!
# A145738: a(n) = squarefree part of A145609(n).

The programs for A145738, the canonical program `A145738.P10793220673153802030` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145738 has offset 1).

The definition of A145738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145738.P10793220673153802030

`A145609(n+1)/A145737(n+1)²`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A145738

/-- `A145609(n+1)/A145737(n+1)²` -/
def P10793220673153802030.Spec : Prop :=
  ∀ n, P10793220673153802030.a n = (A145738 (n + 1) : ℚ)

end A145738

/-! ## A145738.P11004400948704236950

`A001008(2*(n+1))/gcd(C(2, n+2), A135681(2*n+3))²`
-/

namespace A145738.P11004400948704236950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (2 * (n + 1)) : ℚ) / (Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A135681 (2 * n + 3)) ^ 2 : ℚ)

end

end A145738.P11004400948704236950

namespace A145738

/-- `A001008(2*(n+1))/gcd(C(2, n+2), A135681(2*n+3))²` -/
def P11004400948704236950.Spec : Prop :=
  ∀ n, P11004400948704236950.a n = (A145738 (n + 1) : ℚ)

end A145738

/-! ## A145738.P14331632830955203455

`A001008(2*(n+1))/A135681((2*n+3)^floor(atan(n+1)))²`
-/

namespace A145738.P14331632830955203455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (2 * (n + 1)) : ℚ) / (A135681 (SequenceMachineLib.roundAway ((2 * n + 3 : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat ^ 2 : ℚ)

end

end A145738.P14331632830955203455

namespace A145738

/-- `A001008(2*(n+1))/A135681((2*n+3)^floor(atan(n+1)))²` -/
def P14331632830955203455.Spec : Prop :=
  ∀ n, P14331632830955203455.a n = (A145738 (n + 1) : ℚ)

end A145738

/-! ## A145738.P13204509085593658384

`A382329(2*(n+1))/A002805(2*(n+1))`
-/

namespace A145738.P13204509085593658384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382329 (2 * (n + 1)) : ℚ) / (A002805 (2 * (n + 1)) : ℚ)

end

end A145738.P13204509085593658384

namespace A145738

/-- `A382329(2*(n+1))/A002805(2*(n+1))` -/
def P13204509085593658384.Spec : Prop :=
  ∀ n, P13204509085593658384.a n = (A145738 (n + 1) : ℚ)

end A145738

/-! ## A145738.P13764330095024069068

`A035048(4*(n+1))/A135681((2*n+3)^floor(atan(n+1)))²`
-/

namespace A145738.P13764330095024069068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035048 (4 * (n + 1)) : ℚ) / (A135681 (SequenceMachineLib.roundAway ((2 * n + 3 : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat ^ 2 : ℚ)

end

end A145738.P13764330095024069068

namespace A145738

/-- `A035048(4*(n+1))/A135681((2*n+3)^floor(atan(n+1)))²` -/
def P13764330095024069068.Spec : Prop :=
  ∀ n, P13764330095024069068.a n = (A145738 (n + 1) : ℚ)

end A145738

/-!
# A145739: Numbers k for which the sum of all divisors of k <= sqrt(k) is a divisor of k.

The programs for A145739, there is no canonical definition to state claims against.
-/

/-! ## A145739.P3463573907838287709

`lt[(n+1)%A066839(n+1), 1]+1`
-/

namespace A145739.P3463573907838287709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A066839 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A145739.P3463573907838287709

/-! ## A145739.P12547615863009752880

`A173919(∑[A040001(A022359(n))])`
-/

namespace A145739.P12547615863009752880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A022359 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145739.P12547615863009752880

/-! ## A145739.P2822311528242389682

`lt[A007920(n), A190672(A317586(n+1))]`
-/

namespace A145739.P2822311528242389682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (A317586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A145739.P2822311528242389682

/-! ## A145739.P4607077945465177126

`A151800(a(n-1))-A008966(A130752(n))` with `a(0)=1, a(1)=2`
-/

namespace A145739.P4607077945465177126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A151800 (a (n - 1)).toNat - A008966 (A130752 n).toNat

end

end A145739.P4607077945465177126

/-!
# A145743: a(n) is the smallest composite number m such that all n numbers m+4*k^2 for k=1,2,...,n are prime.

The programs for A145743, there is no canonical definition to state claims against.
-/

/-! ## A145743.P9256989747944174521

`A090087(∏[comp[A049799(n+3)]])`
-/

namespace A145743.P9256989747944174521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049799 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090087 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A145743.P9256989747944174521

/-!
# A145749: Numbers n such that sigma(n)+phi(n)=sigma(n+1)+phi(n+1).

The programs for A145749, there is no canonical definition to state claims against.
-/

/-! ## A145749.P16032716099302859747

`∩[A057903(n+1), A066198(n+1)]`
-/

namespace A145749.P16032716099302859747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145749.P16032716099302859747

/-! ## A145749.P15731976537031456303

`filter[A066198(n+2), A109720(#)]`
-/

namespace A145749.P15731976537031456303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066198 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A145749.P15731976537031456303

/-! ## A145749.P14103366815314452557

`∩[A066198(n+1), A272475(n+1)]`
-/

namespace A145749.P14103366815314452557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145749.P14103366815314452557

/-! ## A145749.P7683697902650742934

`A066198(n+2)%A000040(A258813(n+1))`
-/

namespace A145749.P7683697902650742934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066198 (n + 2)) (A000040 (A258813 (n + 1)).toNat)

end

end A145749.P7683697902650742934

/-! ## A145749.P12250492981252670560

`A066198(n+2)+A000122(A048375(3*n+4))`
-/

namespace A145749.P12250492981252670560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066198 (n + 2) + A000122 (A048375 (3 * n + 4)).toNat

end

end A145749.P12250492981252670560

/-!
# A145750: Primes which become emirps when rotated by 180 degrees on a digital clock display.

The programs for A145750, there is no canonical definition to state claims against.
-/

/-! ## A145750.P3870192970598876900

`p?[A048890(n+1)*A190353(n+1)]`
-/

namespace A145750.P3870192970598876900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (n + 1) * A190353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145750.P3870192970598876900

/-!
# A145752: a(n) = number of elements of order n in simple group Alt(7) of order 2520.

The programs for A145752, there is no canonical definition to state claims against.
-/

/-! ## A145752.P511594511215988210

`A057740(n+19)`
-/

namespace A145752.P511594511215988210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057740 (n + 19)

end

end A145752.P511594511215988210

/-!
# A145753: a(n) = number of elements of order n in simple group Alt(8) of order 20160.

The programs for A145753, there is no canonical definition to state claims against.
-/

/-! ## A145753.P8487945073678514076

`A346743(n+12)`
-/

namespace A145753.P8487945073678514076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346743 (n + 12)

end

end A145753.P8487945073678514076

/-! ## A145753.P1846007493708039029

`A057740(n+26)`
-/

namespace A145753.P1846007493708039029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057740 (n + 26)

end

end A145753.P1846007493708039029

/-!
# A145754: a(n) = number of elements of order n in simple group Alt(9) of order 181440.

The programs for A145754, there is no canonical definition to state claims against.
-/

/-! ## A145754.P16838169363904719718

`A057740(n+41)`
-/

namespace A145754.P16838169363904719718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057740 (n + 41)

end

end A145754.P16838169363904719718

/-! ## A145754.P1059649140693313330

`Δ[A005728(n)]*A303728(n+41)`
-/

namespace A145754.P1059649140693313330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A303728 (n + 41)

end

end A145754.P1059649140693313330

/-! ## A145754.P4771497558836124992

`A000010(n+1)*A303728(n+41)`
-/

namespace A145754.P4771497558836124992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A303728 (n + 41)

end

end A145754.P4771497558836124992

/-!
# A145756: a(n) = ((2^prime(n+2)-2)/prime(n+2))/3, where n >= 1.

The programs for A145756, there is no canonical definition to state claims against.
-/

/-! ## A145756.P11864114204363736570

`2*A096060(n+3)`
-/

namespace A145756.P11864114204363736570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096060 (n + 3)

end

end A145756.P11864114204363736570

/-! ## A145756.P12760750699367933170

`A064535(n+3)/3`
-/

namespace A145756.P12760750699367933170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064535 (n + 3) : ℚ) / 3

end

end A145756.P12760750699367933170

/-! ## A145756.P14326614189994152489

`A165920(p?[2*n+5])`
-/

namespace A145756.P14326614189994152489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A145756.P14326614189994152489

/-! ## A145756.P9991707743478963413

`2*A007663(n+3)/3`
-/

namespace A145756.P9991707743478963413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A007663 (n + 3) : ℚ) / 3)

end

end A145756.P9991707743478963413

/-! ## A145756.P16843141537103391864

`A165920(A066047(n+1))`
-/

namespace A145756.P16843141537103391864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (A066047 (n + 1)).toNat

end

end A145756.P16843141537103391864

/-! ## A145756.P13978853071307285469

`A165920(A215848(n+1))`
-/

namespace A145756.P13978853071307285469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (A215848 (n + 1)).toNat

end

end A145756.P13978853071307285469

/-! ## A145756.P13881382545489130680

`A165920(A240710(n+1))`
-/

namespace A145756.P13881382545489130680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (A240710 (n + 1)).toNat

end

end A145756.P13881382545489130680

/-! ## A145756.P17120357881593733597

`A165920(A045344(n+2))`
-/

namespace A145756.P17120357881593733597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (A045344 (n + 2)).toNat

end

end A145756.P17120357881593733597

/-! ## A145756.P2796261645054405637

`A165920(A065091(n+2))`
-/

namespace A145756.P2796261645054405637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (A065091 (n + 2)).toNat

end

end A145756.P2796261645054405637

/-! ## A145756.P3915578005909930395

`A165920(A140475(n+2))`
-/

namespace A145756.P3915578005909930395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (A140475 (n + 2)).toNat

end

end A145756.P3915578005909930395

/-!
# A145757: Number of n X n binary arrays with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145757, there is no canonical definition to state claims against.
-/

/-! ## A145757.P1636409581558615266

`A145759(2*(n+2))`
-/

namespace A145757.P1636409581558615266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145759 (2 * (n + 2))

end

end A145757.P1636409581558615266

/-!
# A145760: Number of n X n binary arrays symmetric about main diagonal with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145760, there is no canonical definition to state claims against.
-/

/-! ## A145760.P16671230760085602448

`A145762(2*(n+2))`
-/

namespace A145760.P16671230760085602448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145762 (2 * (n + 2))

end

end A145760.P16671230760085602448

/-!
# A145761: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145761, there is no canonical definition to state claims against.
-/

/-! ## A145761.P871482172165708915

`xor(A085858(A020063(n)), A277795(n))`
-/

namespace A145761.P871482172165708915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085858 (A020063 n).toNat) (A277795 n)

end

end A145761.P871482172165708915

/-! ## A145761.P14105656708113282352

`A002995(n)-A164736(A085152(n+1))`
-/

namespace A145761.P14105656708113282352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 n - A164736 (A085152 (n + 1)).toNat

end

end A145761.P14105656708113282352

/-!
# A145762: Number of n X n binary arrays symmetric about the diagonal and under 90-degree rotation with all ones connected only either three adjacent vertically or three adjacent horizontally.

The programs for A145762, there is no canonical definition to state claims against.
-/

/-! ## A145762.P12898898872533204196

`A239965(A145930(n+1)^A060901(n+1))`
-/

namespace A145762.P12898898872533204196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239965 (SequenceMachineLib.roundAway ((A145930 (n + 1) : ℚ) ^ (A060901 (n + 1) : ℤ))).toNat

end

end A145762.P12898898872533204196

/-!
# A145765: Eigentriangle, row sums = A116975, number of compositions of n using terms == (1,4) mod 5.

The programs for A145765, there is no canonical definition to state claims against.
-/

/-! ## A145765.P13411709830698590494

`A157424(n+1)%A256627(2*(n+1))`
-/

namespace A145765.P13411709830698590494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157424 (n + 1)) (A256627 (2 * (n + 1)))

end

end A145765.P13411709830698590494

/-! ## A145765.P12580951747262920319

`A157424(n+1)%A201451(A002095(n))`
-/

namespace A145765.P12580951747262920319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157424 (n + 1)) (A201451 (A002095 n).toNat)

end

end A145765.P12580951747262920319

/-! ## A145765.P5295954691590926295

`A157424(n+1)-A010054(A264443(n+3))`
-/

namespace A145765.P5295954691590926295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157424 (n + 1) - A010054 (A264443 (n + 3)).toNat

end

end A145765.P5295954691590926295

/-! ## A145765.P3574846674953630176

`and(A047649(A212122(n+1)), A157424(n+1))`
-/

namespace A145765.P3574846674953630176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047649 ((A212122 (n + 1)).toNat + 11)) (A157424 (n + 1))

end

end A145765.P3574846674953630176

/-!
# A145766: Partial sums of A020988.

The programs for A145766, the canonical program `A145766.P1866095840308358861` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145766 has offset 0).

The definition of A145766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145766.P13722516874564158427

`A302757(n+1)-1`
-/

namespace A145766.P13722516874564158427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302757 (n + 1) - 1

end

end A145766.P13722516874564158427

namespace A145766

/-- `A302757(n+1)-1` -/
def P13722516874564158427.Spec : Prop :=
  ∀ n, P13722516874564158427.a n = A145766 n

end A145766

/-! ## A145766.P2726281735723915853

`2*(4^(n+1)-3*n-4)/9`
-/

namespace A145766.P2726281735723915853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((4 ^ (n + 1) : ℤ) - (3 * n : ℤ) - 4 : ℚ) / 9)

end

end A145766.P2726281735723915853

namespace A145766

/-- `2*(4^(n+1)-3*n-4)/9` -/
def P2726281735723915853.Spec : Prop :=
  ∀ n, P2726281735723915853.a n = (A145766 n : ℚ)

theorem P2726281735723915853.correct : P2726281735723915853.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A145766, Nat.add_sub_cancel, A145766.P2726281735723915853.a, A145766.P1866095840308358861.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A145766, Nat.add_sub_cancel, A145766.P2726281735723915853.a, A145766.P1866095840308358861.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145766

/-! ## A145766.P1866095840308358861

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=2, a(2)=12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145766

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P1866095840308358861.Spec : Prop :=
  ∀ n, P1866095840308358861.a n = A145766 n

theorem P1866095840308358861.correct : P1866095840308358861.Spec := by
  intro n
  simp only [A145766]

end A145766

/-! ## A145766.P17501635783646368121

`∑[4*a(n-1)+2]` with `a(0)=0`
-/

namespace A145766.P17501635783646368121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  4 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P17501635783646368121

namespace A145766

/-- `∑[4*a(n-1)+2]` -/
def P17501635783646368121.Spec : Prop :=
  ∀ n, (P17501635783646368121.a n : ℤ) = A145766 n

end A145766

/-! ## A145766.P5351599847093255227

`∑[∑[4*a(n-1)]]` with `a(0)=0, a(1)=2`
-/

namespace A145766.P5351599847093255227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P5351599847093255227

namespace A145766

/-- `∑[∑[4*a(n-1)]]` -/
def P5351599847093255227.Spec : Prop :=
  ∀ n, (P5351599847093255227.a n : ℤ) = A145766 n

end A145766

/-! ## A145766.P9075103189999385970

`4*a(n-1)+2*n` with `a(0)=0`
-/

namespace A145766.P9075103189999385970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + 2 * n

end

end A145766.P9075103189999385970

namespace A145766

/-- `4*a(n-1)+2*n` -/
def P9075103189999385970.Spec : Prop :=
  ∀ n, (P9075103189999385970.a n : ℤ) = A145766 n

end A145766

/-! ## A145766.P12373911491236750567

`3*n-(n-4*a(n-1))` with `a(0)=0`
-/

namespace A145766.P12373911491236750567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - 4 * a (n - 1))

end

end A145766.P12373911491236750567

namespace A145766

/-- `3*n-(n-4*a(n-1))` -/
def P12373911491236750567.Spec : Prop :=
  ∀ n, P12373911491236750567.a n = A145766 n

end A145766

/-! ## A145766.P15704949509087450037

`4^n-(a(n-1)/2+n+1)` with `a(0)=0`
-/

namespace A145766.P15704949509087450037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 ^ n : ℚ) - (a (n - 1) / 2 + (n + 1 : ℚ))

end

end A145766.P15704949509087450037

namespace A145766

/-- `4^n-(a(n-1)/2+n+1)` -/
def P15704949509087450037.Spec : Prop :=
  ∀ n, P15704949509087450037.a n = (A145766 n : ℚ)

end A145766

/-! ## A145766.P879963601178720084

`(a(n-1)+a(n-1)+n)/(1-1/2)` with `a(0)=0`
-/

namespace A145766.P879963601178720084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (a (n - 1) + (n : ℚ))) / (1 - (1 : ℚ) / 2)

end

end A145766.P879963601178720084

namespace A145766

/-- `(a(n-1)+a(n-1)+n)/(1-1/2)` -/
def P879963601178720084.Spec : Prop :=
  ∀ n, P879963601178720084.a n = (A145766 n : ℚ)

end A145766

/-! ## A145766.P3480432619746357665

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+n+n` with `a(0)=0`
-/

namespace A145766.P3480432619746357665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + n + n)))

end

end A145766.P3480432619746357665

namespace A145766

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+n+n` -/
def P3480432619746357665.Spec : Prop :=
  ∀ n, (P3480432619746357665.a n : ℤ) = A145766 n

end A145766

/-! ## A145766.P10583997656697109830

`∑[A020988(n)]`
-/

namespace A145766.P10583997656697109830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P10583997656697109830

namespace A145766

/-- `∑[A020988(n)]` -/
def P10583997656697109830.Spec : Prop :=
  ∀ n, P10583997656697109830.a n = A145766 n

end A145766

/-! ## A145766.P464165153078185760

`A053088(Δ[n²])`
-/

namespace A145766.P464165153078185760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145766.P464165153078185760

namespace A145766

/-- `A053088(Δ[n²])` -/
def P464165153078185760.Spec : Prop :=
  ∀ n, P464165153078185760.a n = A145766 n

end A145766

/-! ## A145766.P17279521555213008664

`∑[A007583(n)-1]`
-/

namespace A145766.P17279521555213008664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P17279521555213008664

namespace A145766

/-- `∑[A007583(n)-1]` -/
def P17279521555213008664.Spec : Prop :=
  ∀ n, P17279521555213008664.a n = A145766 n

end A145766

/-! ## A145766.P15873982947541263945

`∑[A000975(2*n)]`
-/

namespace A145766.P15873982947541263945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P15873982947541263945

namespace A145766

/-- `∑[A000975(2*n)]` -/
def P15873982947541263945.Spec : Prop :=
  ∀ n, P15873982947541263945.a n = A145766 n

end A145766

/-! ## A145766.P16556509090688309116

`∑[2*A002450(n)]`
-/

namespace A145766.P16556509090688309116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P16556509090688309116

namespace A145766

/-- `∑[2*A002450(n)]` -/
def P16556509090688309116.Spec : Prop :=
  ∀ n, P16556509090688309116.a n = A145766 n

end A145766

/-! ## A145766.P13336841398528654551

`∑[A014113(2*n)]`
-/

namespace A145766.P13336841398528654551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P13336841398528654551

namespace A145766

/-- `∑[A014113(2*n)]` -/
def P13336841398528654551.Spec : Prop :=
  ∀ n, P13336841398528654551.a n = A145766 n

end A145766

/-! ## A145766.P8611082431866233435

`∑[A060590(2*n)]`
-/

namespace A145766.P8611082431866233435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060590 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P8611082431866233435

namespace A145766

/-- `∑[A060590(2*n)]` -/
def P8611082431866233435.Spec : Prop :=
  ∀ n, P8611082431866233435.a n = A145766 n

end A145766

/-! ## A145766.P4426373674044750086

`∑[A084184(2*n)]`
-/

namespace A145766.P4426373674044750086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145766.P4426373674044750086

namespace A145766

/-- `∑[A084184(2*n)]` -/
def P4426373674044750086.Spec : Prop :=
  ∀ n, P4426373674044750086.a n = A145766 n

end A145766

/-!
# A145768: a(n) = the bitwise XOR of squares of first n natural numbers.

The programs for A145768, the canonical program `A145768.P10089935707490654606` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145768 has offset 0).

The definition of A145768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145768.P10089935707490654606

`xor(a(n-1), n²)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145768

/-- `xor(a(n-1), n²)` -/
def P10089935707490654606.Spec : Prop :=
  ∀ n, (P10089935707490654606.a n : ℤ) = A145768 n

theorem P10089935707490654606.correct : P10089935707490654606.Spec := by
  intro n
  simp only [A145768]

end A145768

/-! ## A145768.P13737696647658924932

`xor(abs(a(n-1)), n^2)` with `a(0)=0`
-/

namespace A145768.P13737696647658924932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) (n ^ 2)

end

end A145768.P13737696647658924932

namespace A145768

/-- `xor(abs(a(n-1)), n^2)` -/
def P13737696647658924932.Spec : Prop :=
  ∀ n, (P13737696647658924932.a n : ℤ) = A145768 n

theorem P13737696647658924932.correct : P13737696647658924932.Spec := by
  intro n
  simp only [A145768, Nat.add_sub_cancel, A145768.P13737696647658924932.a, A145768.P10089935707490654606.a, SequenceMachineLib.memo_apply]

end A145768

/-! ## A145768.P10928864974279602955

`xor(n^(4/2), a(n-1))` with `a(0)=0`
-/

namespace A145768.P10928864974279602955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℝ) ^ ((4 : ℚ) / 2 : ℝ))) (a (n - 1))

end

end A145768.P10928864974279602955

namespace A145768

/-- `xor(n^(4/2), a(n-1))` -/
def P10928864974279602955.Spec : Prop :=
  ∀ n, P10928864974279602955.a n = A145768 n

end A145768

/-! ## A145768.P18380877050759107545

`abs(xor(a(n-1), A000290(n)))` with `a(0)=0`
-/

namespace A145768.P18380877050759107545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (a (n - 1)) (A000290 n)|

end

end A145768.P18380877050759107545

namespace A145768

/-- `abs(xor(a(n-1), A000290(n)))` -/
def P18380877050759107545.Spec : Prop :=
  ∀ n, P18380877050759107545.a n = A145768 n

end A145768

/-! ## A145768.P10298386766745497402

`abs(xor(a(n-1), A253909(n)))` with `a(0)=0`
-/

namespace A145768.P10298386766745497402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (a (n - 1)) (A253909 n)|

end

end A145768.P10298386766745497402

namespace A145768

/-- `abs(xor(a(n-1), A253909(n)))` -/
def P10298386766745497402.Spec : Prop :=
  ∀ n, P10298386766745497402.a n = A145768 n

end A145768

/-! ## A145768.P5226090354294554338

`xor(a(n-1)+2, A059100(n))` with `a(0)=0`
-/

namespace A145768.P5226090354294554338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1) + 2) (A059100 n)

end

end A145768.P5226090354294554338

namespace A145768

/-- `xor(a(n-1)+2, A059100(n))` -/
def P5226090354294554338.Spec : Prop :=
  ∀ n, P5226090354294554338.a n = A145768 n

end A145768

/-! ## A145768.P5308981300235525593

`xor(2, xor(a(n-1), A010000(n)))` with `a(0)=0`
-/

namespace A145768.P5308981300235525593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 2 (Int.xor (a (n - 1)) (A010000 n))

end

end A145768.P5308981300235525593

namespace A145768

/-- `xor(2, xor(a(n-1), A010000(n)))` -/
def P5308981300235525593.Spec : Prop :=
  ∀ n, P5308981300235525593.a n = A145768 n

end A145768

/-! ## A145768.P15207153824876558076

`xor(a(n-1)+2, ∑[A004280(n+1)])` with `a(0)=0`
-/

namespace A145768.P15207153824876558076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1) + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145768.P15207153824876558076

namespace A145768

/-- `xor(a(n-1)+2, ∑[A004280(n+1)])` -/
def P15207153824876558076.Spec : Prop :=
  ∀ n, P15207153824876558076.a n = A145768 n

end A145768

/-! ## A145768.P15174260960407566154

`abs(xor(a(n-1), A002620(2*n)))` with `a(0)=0, a(1)=1`
-/

namespace A145768.P15174260960407566154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |Int.xor (a (n - 1)) (A002620 (2 * n))|

end

end A145768.P15174260960407566154

namespace A145768

/-- `abs(xor(a(n-1), A002620(2*n)))` -/
def P15174260960407566154.Spec : Prop :=
  ∀ n, P15174260960407566154.a n = A145768 n

end A145768

/-! ## A145768.P6491959225532306901

`xor(a(n-1), A000290(n))%A167936(2*n+1)` with `a(0)=0`
-/

namespace A145768.P6491959225532306901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Int.xor (a (n - 1)) (A000290 n)) (A167936 (2 * n + 1))

end

end A145768.P6491959225532306901

namespace A145768

/-- `xor(a(n-1), A000290(n))%A167936(2*n+1)` -/
def P6491959225532306901.Spec : Prop :=
  ∀ n, P6491959225532306901.a n = A145768 n

end A145768

/-!
# A145769: Numbers k such that the number of positive divisors of k and the sum of the positive divisors of k are both square numbers.

The programs for A145769, the canonical program `A145769.P7080382248331292416` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145769 has offset 1).

The definition of A145769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145769.P7080382248331292416

`∩[A006532(n+1), A036436(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145769

/-- `∩[A006532(n+1), A036436(n+1)]` -/
def P7080382248331292416.Spec : Prop :=
  ∀ n, (P7080382248331292416.a n : ℤ) = A145769 (n + 1)

theorem P7080382248331292416.correct : P7080382248331292416.Spec := by
  intro n
  simp only [A145769, Nat.add_sub_cancel]

end A145769

/-! ## A145769.P13472803127740742006

`∩[A036436(n+1), A064710(n+1)]`
-/

namespace A145769.P13472803127740742006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145769.P13472803127740742006

namespace A145769

/-- `∩[A036436(n+1), A064710(n+1)]` -/
def P13472803127740742006.Spec : Prop :=
  ∀ n, (P13472803127740742006.a n : ℤ) = A145769 (n + 1)

end A145769

/-! ## A145769.P8085553840801268258

`filter[A327830(n+1), A383575(#)]`
-/

namespace A145769.P8085553840801268258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A145769.P8085553840801268258

namespace A145769

/-- `filter[A327830(n+1), A383575(#)]` -/
def P8085553840801268258.Spec : Prop :=
  ∀ n, P8085553840801268258.a n = A145769 (n + 1)

end A145769

/-! ## A145769.P12840801720876023362

`∩[A006532(n+1), A327830(n+1)]`
-/

namespace A145769.P12840801720876023362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145769.P12840801720876023362

namespace A145769

/-- `∩[A006532(n+1), A327830(n+1)]` -/
def P12840801720876023362.Spec : Prop :=
  ∀ n, (P12840801720876023362.a n : ℤ) = A145769 (n + 1)

end A145769

/-! ## A145769.P8410540861945971253

`∩[A064710(n+1), A327830(n+1)]`
-/

namespace A145769.P8410540861945971253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145769.P8410540861945971253

namespace A145769

/-- `∩[A064710(n+1), A327830(n+1)]` -/
def P8410540861945971253.Spec : Prop :=
  ∀ n, (P8410540861945971253.a n : ℤ) = A145769 (n + 1)

end A145769

/-!
# A145771: Record values in A046641.

The programs for A145771, there is no canonical definition to state claims against.
-/

/-! ## A145771.P14804090868350134442

`A046641(A145772(n+1))`
-/

namespace A145771.P14804090868350134442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A145772 (n + 1)).toNat

end

end A145771.P14804090868350134442

/-! ## A145771.P12238747484240454404

`record[A046641(n+1)]`
-/

namespace A145771.P12238747484240454404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145771.P12238747484240454404

/-! ## A145771.P1655846406011498367

`A086146(A145772(C(n+1, n)))`
-/

namespace A145771.P1655846406011498367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086146 (A145772 (Nat.choose (n + 1) n)).toNat

end

end A145771.P1655846406011498367

/-! ## A145771.P5250071436505779100

`record[A046641(A028310(n))-A178333(n)]`
-/

namespace A145771.P5250071436505779100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046641 (A028310 n).toNat - A178333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145771.P5250071436505779100

/-!
# A145772: Indices of record values in A046641.

The programs for A145772, there is no canonical definition to state claims against.
-/

/-! ## A145772.P15174782327536738350

`eq[A219866(A238009(n+2)), A256140(2*(n+1))]`
-/

namespace A145772.P15174782327536738350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219866 (A238009 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256140 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145772.P15174782327536738350

/-! ## A145772.P12151602455892325339

`eq[A008611(A286933(n+3)), A286950(2*(n+1))]`
-/

namespace A145772.P12151602455892325339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A286933 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145772.P12151602455892325339

/-! ## A145772.P5283587033689992509

`A216503(A000041(2*n+3)-A002865(2*(n+1)))`
-/

namespace A145772.P5283587033689992509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (A000041 (2 * n + 3) - A002865 (2 * (n + 1))).toNat

end

end A145772.P5283587033689992509

/-!
# A145773: Number of n X n binary arrays with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145773, there is no canonical definition to state claims against.
-/

/-! ## A145773.P1379444776006168792

`A322849(∏[∑[n+1]])`
-/

namespace A145773.P1379444776006168792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322849 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A145773.P1379444776006168792

/-!
# A145774: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145774, there is no canonical definition to state claims against.
-/

/-! ## A145774.P1584834161122475783

`A028901(or(A007559(n), A086270(n+1)))`
-/

namespace A145774.P1584834161122475783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (Int.lor (A007559 n) (A086270 (n + 1))).toNat

end

end A145774.P1584834161122475783

/-!
# A145776: Number of n X n binary arrays symmetric about main diagonal with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145776, there is no canonical definition to state claims against.
-/

/-! ## A145776.P3416383985971606665

`A332086((C(2*n, n)/(n+1))²+1)+∑{d}[n, #%#²]`
-/

namespace A145776.P3416383985971606665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (SequenceMachineLib.roundAway (((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2 + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 : ℕ) : ℤ)

end

end A145776.P3416383985971606665

/-! ## A145776.P13105853053740173812

`A087720(A116701(n))`
-/

namespace A145776.P13105853053740173812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087720 (A116701 n).toNat

end

end A145776.P13105853053740173812

/-!
# A145777: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145777, there is no canonical definition to state claims against.
-/

/-! ## A145777.P17226349296534694823

`A008618(A286955(n))+A007318(n)`
-/

namespace A145777.P17226349296534694823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A286955 n).toNat + A007318 n

end

end A145777.P17226349296534694823

/-! ## A145777.P2643313050204768528

`A077028(n)+A008618(A286955(n))`
-/

namespace A145777.P2643313050204768528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A008618 (A286955 n).toNat

end

end A145777.P2643313050204768528

/-! ## A145777.P8207774162941579384

`A088699(n)+A008618(A286955(n))`
-/

namespace A145777.P8207774162941579384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 n + A008618 (A286955 n).toNat

end

end A145777.P8207774162941579384

/-! ## A145777.P9832966839271786482

`A008618(A286955(n))+Δ[A102363(n)]`
-/

namespace A145777.P9832966839271786482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A286955 n).toNat + (f1 (n + 1) - f1 n)

end

end A145777.P9832966839271786482

/-!
# A145778: Number of n X n binary arrays symmetric about the diagonal and under 90-degree rotation with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145778, there is no canonical definition to state claims against.
-/

/-! ## A145778.P2595336962415579117

`A002635(or(1, A180414(n)))`
-/

namespace A145778.P2595336962415579117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.lor 1 (A180414 n)).toNat

end

end A145778.P2595336962415579117

/-! ## A145778.P9799568173546489690

`A008620(A305714(n)+A032143(n+1))`
-/

namespace A145778.P9799568173546489690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A305714 n + A032143 (n + 1)).toNat

end

end A145778.P9799568173546489690

/-! ## A145778.P12300236531511789957

`filter[A227360(n), A156254(#)]`
-/

namespace A145778.P12300236531511789957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156254 (f1 j).toNat = 1) n)

end

end A145778.P12300236531511789957

/-! ## A145778.P8880687320553672930

`A000194(∏[A065365(n+1)])`
-/

namespace A145778.P8880687320553672930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145778.P8880687320553672930

/-!
# A145780: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only either two adjacent vertically or two adjacent horizontally.

The programs for A145780, there is no canonical definition to state claims against.
-/

/-! ## A145780.P17553859351393841240

`A290731(A006964(n+1))-gcd(n, ∑[n])`
-/

namespace A145780.P17553859351393841240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A006964 (n + 1)).toNat - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A145780.P17553859351393841240

/-! ## A145780.P6964694000591515031

`A333256(A026732(n))+A002865(n)`
-/

namespace A145780.P6964694000591515031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (A026732 n).toNat + A002865 n

end

end A145780.P6964694000591515031

/-!
# A145781: Least m >= 0 which when added to primorial(n) yields a square.

The programs for A145781, there is no canonical definition to state claims against.
-/

/-! ## A145781.P1579033228104042900

`A216144(n+1)²-A002110(n+1)`
-/

namespace A145781.P1579033228104042900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216144 (n + 1) ^ 2 - A002110 (n + 1)

end

end A145781.P1579033228104042900

/-!
# A145782: Expansion of (chi(q^3) * chi(q^5))^2 / (chi(q) * chi(q^15)) in powers of q where chi() is a Ramanujan theta function.

The programs for A145782, there is no canonical definition to state claims against.
-/

/-! ## A145782.P12228365134567221720

`C(2, (n+1)²)-A145727(n)`
-/

namespace A145782.P12228365134567221720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 ((n + 1) ^ 2) : ℤ) - A145727 n

end

end A145782.P12228365134567221720

/-! ## A145782.P9627227442718818819

`A000038(n)-A145727(n)`
-/

namespace A145782.P9627227442718818819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A145727 n

end

end A145782.P9627227442718818819

/-! ## A145782.P11183066852300557457

`A033999(n)*A131796(n)`
-/

namespace A145782.P11183066852300557457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131796 n

end

end A145782.P11183066852300557457

/-! ## A145782.P3124818096060047748

`A131797(n)*A165326(n)`
-/

namespace A145782.P3124818096060047748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 n * A165326 n

end

end A145782.P3124818096060047748

/-! ## A145782.P7692684939907522028

`A145727(n)*A153881(n+1)`
-/

namespace A145782.P7692684939907522028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 n * A153881 (n + 1)

end

end A145782.P7692684939907522028

/-! ## A145782.P18412063577515894361

`A061579(C(2, n+2))-A145727(n)`
-/

namespace A145782.P18412063577515894361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (Nat.choose 2 (n + 2)) - A145727 n

end

end A145782.P18412063577515894361

/-! ## A145782.P1665359912275135031

`A000122(A000122(n)+n)-A145727(n)`
-/

namespace A145782.P1665359912275135031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A145727 n

end

end A145782.P1665359912275135031

/-! ## A145782.P7678998182562895190

`A131796(n)+A131797(n)-A145727(n)`
-/

namespace A145782.P7678998182562895190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 n + (A131797 n - A145727 n)

end

end A145782.P7678998182562895190

/-! ## A145782.P17935956985762021838

`A131796(n)*A165326(n+1)`
-/

namespace A145782.P17935956985762021838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 n * A165326 (n + 1)

end

end A145782.P17935956985762021838

/-! ## A145782.P13387649741932330144

`A131796(n)/A165326(A165326(n)+n)`
-/

namespace A145782.P13387649741932330144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131796 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A145782.P13387649741932330144

/-! ## A145782.P14514225390202282778

`A145727(n)*A165326(2*n)`
-/

namespace A145782.P14514225390202282778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 n * A165326 (2 * n)

end

end A145782.P14514225390202282778

/-!
# A145783: Expansion of (chi(q) * chi(q^15)) / (chi(q^3) * chi(q^5))^2 in powers of q where chi() is a Ramanujan theta function.

The programs for A145783, there is no canonical definition to state claims against.
-/

/-! ## A145783.P9608973721812575440

`A145785(1-(1-n)%(n+1))`
-/

namespace A145783.P9608973721812575440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145785 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A145783.P9608973721812575440

/-! ## A145783.P10755899274485822369

`A145785((2*n)%(n+1)+1)`
-/

namespace A145783.P10755899274485822369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145785 (2 * n % (n + 1) + 1)

end

end A145783.P10755899274485822369

/-! ## A145783.P15199036497157347436

`A145785(A028310(n))`
-/

namespace A145783.P15199036497157347436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145785 (A028310 n).toNat

end

end A145783.P15199036497157347436

/-! ## A145783.P9942499826457004026

`A145785(A000007(n)+n)`
-/

namespace A145783.P9942499826457004026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145785 (A000007 n + (n : ℤ)).toNat

end

end A145783.P9942499826457004026

/-! ## A145783.P9544456612577541327

`A033999(n)*A131797(2*n)`
-/

namespace A145783.P9544456612577541327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131797 (2 * n)

end

end A145783.P9544456612577541327

/-! ## A145783.P10672552130168452533

`A131797(2*n)*A165326(n+1)`
-/

namespace A145783.P10672552130168452533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 (2 * n) * A165326 (n + 1)

end

end A145783.P10672552130168452533

/-! ## A145783.P3685076682385073472

`A033999(n)*A145727(2*n)`
-/

namespace A145783.P3685076682385073472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145727 (2 * n)

end

end A145783.P3685076682385073472

/-! ## A145783.P2856417020326511744

`A131796(2*n)*A165326(n)`
-/

namespace A145783.P2856417020326511744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131796 (2 * n) * A165326 n

end

end A145783.P2856417020326511744

/-! ## A145783.P12502934169850995256

`A145782(2*n)*A165326(n)`
-/

namespace A145783.P12502934169850995256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145782 (2 * n) * A165326 n

end

end A145783.P12502934169850995256

/-! ## A145783.P5727599063935849661

`A145727(2*n)*A165326(n+1)`
-/

namespace A145783.P5727599063935849661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145727 (2 * n) * A165326 (n + 1)

end

end A145783.P5727599063935849661

/-! ## A145783.P7752892926786178665

`A131797(2*n)/A094023(3*n)*A145728(3*n)`
-/

namespace A145783.P7752892926786178665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131797 (2 * n) : ℚ) / (A094023 (3 * n) : ℚ) * (A145728 (3 * n) : ℚ)

end

end A145783.P7752892926786178665

/-! ## A145783.P16365019425787090265

`A145785(A007318(∑[n]+1))`
-/

namespace A145783.P16365019425787090265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145785 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A145783.P16365019425787090265

/-!
# A145784: Numbers with property that their number of prime factors counted with multiplicity is a multiple of 3.

The programs for A145784, the canonical program `A145784.P2286800360752801613` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145784 has offset 1).

The definition of A145784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145784.P2286800360752801613

`eq[0, A001222(n+1)%3]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A145784

/-- `eq[0, A001222(n+1)%3]+1` -/
def P2286800360752801613.Spec : Prop :=
  ∀ n, (P2286800360752801613.a n : ℤ) = A145784 (n + 1)

theorem P2286800360752801613.correct : P2286800360752801613.Spec := by
  intro n
  simp only [A145784, Nat.add_sub_cancel]

end A145784

/-! ## A145784.P18050988473787139115

`eq[1, A015248(A001222(n+1))]+1`
-/

namespace A145784.P18050988473787139115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015248 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A145784.P18050988473787139115

namespace A145784

/-- `eq[1, A015248(A001222(n+1))]+1` -/
def P18050988473787139115.Spec : Prop :=
  ∀ n, (P18050988473787139115.a n : ℤ) = A145784 (n + 1)

end A145784

/-! ## A145784.P15016115641214574

`record[(n+1)*A022003(A001222(n+1)+2)]`
-/

namespace A145784.P15016115641214574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022003 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145784.P15016115641214574

namespace A145784

/-- `record[(n+1)*A022003(A001222(n+1)+2)]` -/
def P15016115641214574.Spec : Prop :=
  ∀ n, P15016115641214574.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P15408230071813377056

`comp[(n+1)*dr(A000217(A001222(n+1)²))]`
-/

namespace A145784.P15408230071813377056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.digitalRoot (A000217 (A001222 (n + 1) ^ 2).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A145784.P15408230071813377056

namespace A145784

/-- `comp[(n+1)*dr(A000217(A001222(n+1)²))]` -/
def P15408230071813377056.Spec : Prop :=
  ∀ n, (P15408230071813377056.a n : ℤ) = A145784 (n + 1)

end A145784

/-! ## A145784.P2137026391622920819

`filter[A111087(n+1), A373975(#)]`
-/

namespace A145784.P2137026391622920819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P2137026391622920819

namespace A145784

/-- `filter[A111087(n+1), A373975(#)]` -/
def P2137026391622920819.Spec : Prop :=
  ∀ n, P2137026391622920819.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P9098321394739147413

`filter[A289553(n+1), A373975(#)]`
-/

namespace A145784.P9098321394739147413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P9098321394739147413

namespace A145784

/-- `filter[A289553(n+1), A373975(#)]` -/
def P9098321394739147413.Spec : Prop :=
  ∀ n, P9098321394739147413.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P1761656588048022083

`filter[A100959(n+1), A373975(#)]`
-/

namespace A145784.P1761656588048022083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P1761656588048022083

namespace A145784

/-- `filter[A100959(n+1), A373975(#)]` -/
def P1761656588048022083.Spec : Prop :=
  ∀ n, P1761656588048022083.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P1783902920025863634

`filter[A246716(n+1), A373975(#)]`
-/

namespace A145784.P1783902920025863634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P1783902920025863634

namespace A145784

/-- `filter[A246716(n+1), A373975(#)]` -/
def P1783902920025863634.Spec : Prop :=
  ∀ n, P1783902920025863634.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P8567445365333982915

`filter[A264828(n+1), A373975(#)]`
-/

namespace A145784.P8567445365333982915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P8567445365333982915

namespace A145784

/-- `filter[A264828(n+1), A373975(#)]` -/
def P8567445365333982915.Spec : Prop :=
  ∀ n, P8567445365333982915.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P1093664560869678371

`filter[A257586(n+1), A373975(#)]`
-/

namespace A145784.P1093664560869678371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P1093664560869678371

namespace A145784

/-- `filter[A257586(n+1), A373975(#)]` -/
def P1093664560869678371.Spec : Prop :=
  ∀ n, P1093664560869678371.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P4871172302396640776

`filter[A018252(n+1), A373975(#)]`
-/

namespace A145784.P4871172302396640776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P4871172302396640776

namespace A145784

/-- `filter[A018252(n+1), A373975(#)]` -/
def P4871172302396640776.Spec : Prop :=
  ∀ n, P4871172302396640776.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P17678217744485881622

`filter[A056653(n+1), A373975(#)]`
-/

namespace A145784.P17678217744485881622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P17678217744485881622

namespace A145784

/-- `filter[A056653(n+1), A373975(#)]` -/
def P17678217744485881622.Spec : Prop :=
  ∀ n, P17678217744485881622.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P17924140931803441607

`filter[A141468(n+2), A373975(#)]`
-/

namespace A145784.P17924140931803441607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P17924140931803441607

namespace A145784

/-- `filter[A141468(n+2), A373975(#)]` -/
def P17924140931803441607.Spec : Prop :=
  ∀ n, P17924140931803441607.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P3091676402650093243

`filter[A222307(2*n+1), A373975(#)]`
-/

namespace A145784.P3091676402650093243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P3091676402650093243

namespace A145784

/-- `filter[A222307(2*n+1), A373975(#)]` -/
def P3091676402650093243.Spec : Prop :=
  ∀ n, P3091676402650093243.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P15856633761224946089

`filter[A065090(n+1), A373975(#)]`
-/

namespace A145784.P15856633761224946089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P15856633761224946089

namespace A145784

/-- `filter[A065090(n+1), A373975(#)]` -/
def P15856633761224946089.Spec : Prop :=
  ∀ n, P15856633761224946089.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P18237520825921513251

`filter[A171581(n+1), A373975(#)]`
-/

namespace A145784.P18237520825921513251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P18237520825921513251

namespace A145784

/-- `filter[A171581(n+1), A373975(#)]` -/
def P18237520825921513251.Spec : Prop :=
  ∀ n, P18237520825921513251.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P9447911371343985195

`filter[A338924(n+1), A373975(#)]`
-/

namespace A145784.P9447911371343985195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P9447911371343985195

namespace A145784

/-- `filter[A338924(n+1), A373975(#)]` -/
def P9447911371343985195.Spec : Prop :=
  ∀ n, P9447911371343985195.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P7989696934260272725

`filter[A173905(n+2), A373975(#)]`
-/

namespace A145784.P7989696934260272725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P7989696934260272725

namespace A145784

/-- `filter[A173905(n+2), A373975(#)]` -/
def P7989696934260272725.Spec : Prop :=
  ∀ n, P7989696934260272725.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P2631242122004680152

`filter[A073900(n+1), A373975(#)]`
-/

namespace A145784.P2631242122004680152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P2631242122004680152

namespace A145784

/-- `filter[A073900(n+1), A373975(#)]` -/
def P2631242122004680152.Spec : Prop :=
  ∀ n, P2631242122004680152.a n = A145784 (n + 1)

end A145784

/-! ## A145784.P11751034281995288246

`filter[A121543(n+1), A373975(#)]`
-/

namespace A145784.P11751034281995288246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A145784.P11751034281995288246

namespace A145784

/-- `filter[A121543(n+1), A373975(#)]` -/
def P11751034281995288246.Spec : Prop :=
  ∀ n, P11751034281995288246.a n = A145784 (n + 1)

end A145784

/-!
# A145785: Expansion of q * f(-q^2) * f(-q^30) / (f(q^3) * f(q^5)) in powers of q where f() is a Ramanujan theta function.

The programs for A145785, there is no canonical definition to state claims against.
-/

/-! ## A145785.P13861605949635004024

`(-1)^n*A094022(n+1)`
-/

namespace A145785.P13861605949635004024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A094022 (n + 1)

end

end A145785.P13861605949635004024

/-! ## A145785.P17717382298442217301

`A094022(n+1)/A094023(n)*A145728(n)`
-/

namespace A145785.P17717382298442217301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094022 (n + 1) : ℚ) / (A094023 n : ℚ) * (A145728 n : ℚ)

end

end A145785.P17717382298442217301

/-! ## A145785.P8925946676925234353

`A145783(n+1)`
-/

namespace A145785.P8925946676925234353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145783 (n + 1)

end

end A145785.P8925946676925234353

/-! ## A145785.P993135791303209326

`A145783(n)-Δ[-A145783(n)]`
-/

namespace A145785.P993135791303209326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145783 n - (f1 (n + 1) - f1 n)

end

end A145785.P993135791303209326

/-! ## A145785.P13184026820076562890

`A033999(n)*A131794(2*(n+1))`
-/

namespace A145785.P13184026820076562890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131794 (2 * (n + 1))

end

end A145785.P13184026820076562890

/-! ## A145785.P6981437179962481425

`A033999(n+1)*A145726(2*(n+1))`
-/

namespace A145785.P6981437179962481425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A145726 (2 * (n + 1))

end

end A145785.P6981437179962481425

/-! ## A145785.P7578365941950427137

`A033999(n)*A131796(A103517(n))`
-/

namespace A145785.P7578365941950427137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131796 (A103517 n).toNat

end

end A145785.P7578365941950427137

/-!
# A145786: Expansion of q * chi(q^3) * chi(q^5) / (chi(q) * chi(q^15))^2 in powers of q where chi() is a Ramanujan theta function.

The programs for A145786, there is no canonical definition to state claims against.
-/

/-! ## A145786.P11992565094012583016

`-A145728(n+1)`
-/

namespace A145786.P11992565094012583016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145728 (n + 1)

end

end A145786.P11992565094012583016

/-! ## A145786.P9504702424139484460

`-∏[-ratio[A094023(n)]]`
-/

namespace A145786.P9504702424139484460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A145786.P9504702424139484460

/-! ## A145786.P155658339128482139

`(-1)^n*A094023(n+1)`
-/

namespace A145786.P155658339128482139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A094023 (n + 1)

end

end A145786.P155658339128482139

/-! ## A145786.P12490540452660046608

`(-1)^n*A123630(n+1)`
-/

namespace A145786.P12490540452660046608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A123630 (n + 1)

end

end A145786.P12490540452660046608

/-! ## A145786.P8643349606188748076

`A123630(n+1)/A094023(n)*A145728(n)`
-/

namespace A145786.P8643349606188748076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123630 (n + 1) : ℚ) / (A094023 n : ℚ) * (A145728 n : ℚ)

end

end A145786.P8643349606188748076

/-! ## A145786.P7532090812758023997

`Δ[-∑[A145728(n)]]`
-/

namespace A145786.P7532090812758023997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145786.P7532090812758023997

/-! ## A145786.P10208501434564405971

`A000038(n+1)-A145728(n+1)`
-/

namespace A145786.P10208501434564405971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A145728 (n + 1)

end

end A145786.P10208501434564405971

/-! ## A145786.P6659538368849146667

`A094023(n+1)-(A145728(n+1)+A123630(n+1))`
-/

namespace A145786.P6659538368849146667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 (n + 1) - (A145728 (n + 1) + A123630 (n + 1))

end

end A145786.P6659538368849146667

/-! ## A145786.P3118620175791293062

`A145726(n+1)-(A145728(n+1)+A145727(n+1))`
-/

namespace A145786.P3118620175791293062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145726 (n + 1) - (A145728 (n + 1) + A145727 (n + 1))

end

end A145786.P3118620175791293062

/-! ## A145786.P5228198118067110117

`A033999(2*n+1)*A145728(n+1)`
-/

namespace A145786.P5228198118067110117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A145728 (n + 1)

end

end A145786.P5228198118067110117

/-! ## A145786.P12045524282303471716

`A094023(n+1)*A094023(n)/A145728(n)`
-/

namespace A145786.P12045524282303471716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094023 (n + 1) * A094023 n : ℚ) / (A145728 n : ℚ)

end

end A145786.P12045524282303471716

/-!
# A145787: Number of times you have to move n cards from one pile to another doing one up, one down, until you obtain the initial sequence.

The programs for A145787, there is no canonical definition to state claims against.
-/

/-! ## A145787.P12726232816704638770

`A019567(floor((n+1)/2))`
-/

namespace A145787.P12726232816704638770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019567 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A145787.P12726232816704638770

/-! ## A145787.P16818885846817614250

`A003558(n%2+n)`
-/

namespace A145787.P16818885846817614250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (n % 2 + n)

end

end A145787.P16818885846817614250

/-! ## A145787.P16442936536265632666

`A003558(and(1, n)+n)`
-/

namespace A145787.P16442936536265632666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Nat.land 1 n + n)

end

end A145787.P16442936536265632666

/-! ## A145787.P14116527218567313161

`A003558(comp[or(2, n)-1]-n)`
-/

namespace A145787.P14116527218567313161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A145787.P14116527218567313161

/-! ## A145787.P4478284200103727123

`A003558(A052928(n+1))`
-/

namespace A145787.P4478284200103727123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A052928 (n + 1)).toNat

end

end A145787.P4478284200103727123

/-! ## A145787.P14356147572599556287

`A003558(A131055(n+1))`
-/

namespace A145787.P14356147572599556287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A131055 (n + 1)).toNat

end

end A145787.P14356147572599556287

/-! ## A145787.P10829231652851758700

`A003558(2*A110654(n))`
-/

namespace A145787.P10829231652851758700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * A110654 n).toNat

end

end A145787.P10829231652851758700

/-! ## A145787.P8034861406018865585

`A003558(A000035(n)+n)`
-/

namespace A145787.P8034861406018865585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A000035 n + (n : ℤ)).toNat

end

end A145787.P8034861406018865585

/-! ## A145787.P18370252881258450750

`A003558(A109613(n+1)-1)`
-/

namespace A145787.P18370252881258450750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A109613 (n + 1) - 1).toNat

end

end A145787.P18370252881258450750

/-! ## A145787.P12698776945914911450

`A003558(A063196(n+2)-1)`
-/

namespace A145787.P12698776945914911450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A063196 (n + 2) - 1).toNat

end

end A145787.P12698776945914911450

/-! ## A145787.P457129542836885004

`A003558(2*A004526(n+1))`
-/

namespace A145787.P457129542836885004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * A004526 (n + 1)).toNat

end

end A145787.P457129542836885004

/-! ## A145787.P13645833969814030679

`A003558(A000034(n)-1+n)`
-/

namespace A145787.P13645833969814030679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A000034 n - 1 + (n : ℤ)).toNat

end

end A145787.P13645833969814030679

/-! ## A145787.P10073259249810733972

`A003558(n-(1-A000034(n)))`
-/

namespace A145787.P10073259249810733972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ((n : ℤ) - (1 - A000034 n)).toNat

end

end A145787.P10073259249810733972

/-! ## A145787.P3750582608168066008

`A003558(2*(n-A004526(n)))`
-/

namespace A145787.P3750582608168066008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * ((n : ℤ) - A004526 n)).toNat

end

end A145787.P3750582608168066008

/-! ## A145787.P10352205840481403295

`A003558(2*n-A052928(n))`
-/

namespace A145787.P10352205840481403295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ((2 * n : ℤ) - A052928 n).toNat

end

end A145787.P10352205840481403295

/-! ## A145787.P8822849867243104783

`A003558(n-(A052928(n)-n))`
-/

namespace A145787.P8822849867243104783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ((n : ℤ) - (A052928 n - (n : ℤ))).toNat

end

end A145787.P8822849867243104783

/-! ## A145787.P17727406325887958281

`A003558(Δ[n²-A000982(n)])`
-/

namespace A145787.P17727406325887958281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (f1 (n + 1) - f1 n).toNat

end

end A145787.P17727406325887958281

/-! ## A145787.P17941007373563292605

`A003558(Δ[n²-A061925(n)])`
-/

namespace A145787.P17941007373563292605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A061925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (f1 (n + 1) - f1 n).toNat

end

end A145787.P17941007373563292605

/-! ## A145787.P550022174224015131

`A003558(Δ[A000982(n+1)]-1)`
-/

namespace A145787.P550022174224015131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (f1 (n + 1) - f1 n - 1).toNat

end

end A145787.P550022174224015131

/-! ## A145787.P10762680982694571946

`A003558(Δ[A061925(n+1)]-1)`
-/

namespace A145787.P10762680982694571946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (f1 (n + 1) - f1 n - 1).toNat

end

end A145787.P10762680982694571946

/-!
# A145792: Number of n X n binary arrays symmetric about main diagonal with all ones connected only either four adjacent vertically or four adjacent horizontally.

The programs for A145792, there is no canonical definition to state claims against.
-/

/-! ## A145792.P9481867494747541641

`A146573(n+1)-A145811(A145778(n+1))`
-/

namespace A145792.P9481867494747541641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146573 (n + 1) - A145811 (A145778 (n + 1)).toNat

end

end A145792.P9481867494747541641

/-! ## A145792.P1473506357577425924

`A146575(2*(n+2))-A145811(A145778(n+1))`
-/

namespace A145792.P1473506357577425924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146575 (2 * (n + 2)) - A145811 (A145778 (n + 1)).toNat

end

end A145792.P1473506357577425924

/-!
# A145793: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only either four adjacent vertically or four adjacent horizontally.

The programs for A145793, there is no canonical definition to state claims against.
-/

/-! ## A145793.P13096363378213235135

`A002635(or(1, A250308(n+1)))`
-/

namespace A145793.P13096363378213235135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Int.lor 1 (A250308 (n + 1))).toNat

end

end A145793.P13096363378213235135

/-! ## A145793.P2716259993718828989

`A236472(A245306(n+1))`
-/

namespace A145793.P2716259993718828989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236472 (A245306 (n + 1)).toNat

end

end A145793.P2716259993718828989

/-! ## A145793.P7158000424207526685

`A236472(A000045(n+1)²+1)`
-/

namespace A145793.P7158000424207526685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236472 (A000045 (n + 1) ^ 2 + 1).toNat

end

end A145793.P7158000424207526685

/-! ## A145793.P915746307081863245

`ceil(A368095(n)/A112926(n+1))`
-/

namespace A145793.P915746307081863245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A368095 n : ℚ) / (A112926 (n + 1) : ℚ)⌉

end

end A145793.P915746307081863245

/-!
# A145795: Number of n X n binary arrays symmetric under 90-degree rotation with all ones connected only either four adjacent vertically or four adjacent horizontally.

The programs for A145795, there is no canonical definition to state claims against.
-/

/-! ## A145795.P18146577981913536340

`or(A068926(n), A068940(A068931(3*n+1)))`
-/

namespace A145795.P18146577981913536340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068926 n) (A068940 (A068931 (3 * n + 1)).toNat)

end

end A145795.P18146577981913536340

/-! ## A145795.P14034814045391838699

`A051274(or(A003056(2*n+3), A051236(n+1)))`
-/

namespace A145795.P14034814045391838699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (Int.lor (A003056 (2 * n + 3)) (A051236 (n + 1))).toNat

end

end A145795.P14034814045391838699

/-! ## A145795.P2946866786748213283

`A159072(A054231(n))`
-/

namespace A145795.P2946866786748213283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159072 (A054231 n).toNat

end

end A145795.P2946866786748213283

/-! ## A145795.P17364564865132317487

`A018937(A369434(n))`
-/

namespace A145795.P17364564865132317487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018937 (A369434 n).toNat

end

end A145795.P17364564865132317487

/-! ## A145795.P1147124050896568624

`A227141(A365247(n))`
-/

namespace A145795.P1147124050896568624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227141 (A365247 n).toNat

end

end A145795.P1147124050896568624

/-!
# A145799: a(n) = the largest integer that is an (odd) palindrome when represented in binary and that occurs in the binary representation of n.

The programs for A145799, there is no canonical definition to state claims against.
-/

/-! ## A145799.P2658094664639489685

`A331804(A030101(64*(n+1)))`
-/

namespace A145799.P2658094664639489685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A030101 (64 * (n + 1))).toNat

end

end A145799.P2658094664639489685

/-! ## A145799.P3290737070249734219

`A331804(A000265(n+1))%A156119(A086161(n))`
-/

namespace A145799.P3290737070249734219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331804 (A000265 (n + 1)).toNat) (A156119 (A086161 n).toNat)

end

end A145799.P3290737070249734219

/-! ## A145799.P2633331000364654805

`A077028(∑[n])*A331804(A000265(n+1))`
-/

namespace A145799.P2633331000364654805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (∑ j ∈ Finset.range (n + 1), f1 j) * A331804 (A000265 (n + 1)).toNat

end

end A145799.P2633331000364654805

/-! ## A145799.P7751759662015234745

`A331804(A000265(n+1)/A077028(∑[n]))`
-/

namespace A145799.P7751759662015234745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) / (A077028 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A145799.P7751759662015234745

/-! ## A145799.P6856028244437859359

`A331804(A000265(n+1)%A109679(n+1))`
-/

namespace A145799.P6856028244437859359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (Int.tmod (A000265 (n + 1)) (A109679 (n + 1))).toNat

end

end A145799.P6856028244437859359

/-! ## A145799.P9493530220613107662

`A331804(A073424(A055999(n))+A000265(n+1))`
-/

namespace A145799.P9493530220613107662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A073424 (A055999 n).toNat + A000265 (n + 1)).toNat

end

end A145799.P9493530220613107662

/-! ## A145799.P11215252465605445562

`A331804(A030101(n+1))/A001221(A140513(n))`
-/

namespace A145799.P11215252465605445562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331804 (A030101 (n + 1)).toNat : ℚ) / (A001221 (A140513 n).toNat : ℚ)

end

end A145799.P11215252465605445562

