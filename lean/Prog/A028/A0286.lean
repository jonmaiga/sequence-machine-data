import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A028600: Expansion of (theta_3(z)*theta_3(8z)+theta_2(z)*theta_2(8z))^4.

The programs for A028600, there is no canonical definition to state claims against.
-/

/-! ## A028600.P16282736065626017255

`A028608(A159966(n)%A088292(n))`
-/

namespace A028600.P16282736065626017255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028608 (Int.tmod (A159966 n) (A088292 n)).toNat

end

end A028600.P16282736065626017255

/-! ## A028600.P9731131234562649696

`A028624(A120634(n))%A179388(n+4)`
-/

namespace A028600.P9731131234562649696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028624 (A120634 n).toNat) (A179388 (n + 4))

end

end A028600.P9731131234562649696

/-! ## A028600.P1498205387867596489

`A001222(A250396(n))*A028608(A159966(n))`
-/

namespace A028600.P1498205387867596489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A250396 n).toNat * A028608 (A159966 n).toNat

end

end A028600.P1498205387867596489

/-! ## A028600.P4983124705544867286

`A028608(A159966(n))^A001221(A000079(n))`
-/

namespace A028600.P4983124705544867286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028608 (A159966 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A028600.P4983124705544867286

/-! ## A028600.P16833373717534226864

`A014963(A002445(n))*A028608(A159966(n))`
-/

namespace A028600.P16833373717534226864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A002445 n).toNat * A028608 (A159966 n).toNat

end

end A028600.P16833373717534226864

/-!
# A028601: Expansion of (theta_3(z)*theta_3(9z) + theta_2(z)*theta_2(9z)).

The programs for A028601, there is no canonical definition to state claims against.
-/

/-! ## A028601.P15440251441006297697

`A057078(n)*A258228(n)`
-/

namespace A028601.P15440251441006297697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A258228 n

end

end A028601.P15440251441006297697

/-! ## A028601.P12193656640965932996

`A204418(n)*A259761(n)`
-/

namespace A028601.P12193656640965932996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n * A259761 n

end

end A028601.P12193656640965932996

/-! ## A028601.P853530191265857036

`lcm(A057078(n), A258210(n))`
-/

namespace A028601.P853530191265857036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057078 n) (A258210 n)

end

end A028601.P853530191265857036

/-! ## A028601.P16013402788734450205

`lcm(A109265(n), A258228(n))`
-/

namespace A028601.P16013402788734450205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109265 n) (A258228 n)

end

end A028601.P16013402788734450205

/-! ## A028601.P12752109060984555917

`lcm(A110568(n), A259761(n))`
-/

namespace A028601.P12752109060984555917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110568 n) (A259761 n)

end

end A028601.P12752109060984555917

/-! ## A028601.P6061646321231192746

`A260190(n)²*A259761(n)`
-/

namespace A028601.P6061646321231192746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 n ^ 2 * A259761 n

end

end A028601.P6061646321231192746

/-! ## A028601.P1095265903345749248

`2*A258256(n)-A258034(n)`
-/

namespace A028601.P1095265903345749248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258256 n - A258034 n

end

end A028601.P1095265903345749248

/-! ## A028601.P18195083371584894494

`A010892(n+1)*A258210(n)`
-/

namespace A028601.P18195083371584894494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) * A258210 n

end

end A028601.P18195083371584894494

/-! ## A028601.P3711798322296659373

`A258034(2*n)`
-/

namespace A028601.P3711798322296659373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258034 (2 * n)

end

end A028601.P3711798322296659373

/-! ## A028601.P3287769374579481245

`A258034(n+n)%(n+2)`
-/

namespace A028601.P3287769374579481245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258034 (n + n)) (n + 2 : ℤ)

end

end A028601.P3287769374579481245

/-! ## A028601.P16864262595156021217

`(A057078(n+1)+1)*A258210(2*n)`
-/

namespace A028601.P16864262595156021217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 (n + 1) + 1) * A258210 (2 * n)

end

end A028601.P16864262595156021217

/-! ## A028601.P15543440227581557167

`A258322(2*n)`
-/

namespace A028601.P15543440227581557167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258322 (2 * n)

end

end A028601.P15543440227581557167

/-! ## A028601.P3468759657877968471

`A010892(2*n)*A258228(n)`
-/

namespace A028601.P3468759657877968471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) * A258228 n

end

end A028601.P3468759657877968471

/-! ## A028601.P16407773523033375128

`A049347(2*n)*A258228(n)`
-/

namespace A028601.P16407773523033375128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * n) * A258228 n

end

end A028601.P16407773523033375128

/-! ## A028601.P123342322108515999

`lcm(A122857(n), A256269(2*n))`
-/

namespace A028601.P123342322108515999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122857 n) (A256269 (2 * n))

end

end A028601.P123342322108515999

/-! ## A028601.P9576310017707167742

`lcm(A132003(n), A256279(2*n))`
-/

namespace A028601.P9576310017707167742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132003 n) (A256279 (2 * n))

end

end A028601.P9576310017707167742

/-! ## A028601.P5350365360007305663

`A099544(2*n+1)*A258292(n)`
-/

namespace A028601.P5350365360007305663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (2 * n + 1) * A258292 n

end

end A028601.P5350365360007305663

/-! ## A028601.P9780961173709414452

`A010892(2*n)*A256014(2*n)`
-/

namespace A028601.P9780961173709414452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) * A256014 (2 * n)

end

end A028601.P9780961173709414452

/-! ## A028601.P8733757236877224356

`A010892(2*n)*A256280(2*n)`
-/

namespace A028601.P8733757236877224356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) * A256280 (2 * n)

end

end A028601.P8733757236877224356

/-!
# A028605: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z)).

The programs for A028605, there is no canonical definition to state claims against.
-/

/-! ## A028605.P11956790654255987429

`lcm(A102560(n), A317641(n))`
-/

namespace A028605.P11956790654255987429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102560 n) (A317641 n)

end

end A028605.P11956790654255987429

/-! ## A028605.P3428376936948202022

`Δ[A004525(n)]*A317641(n)`
-/

namespace A028605.P3428376936948202022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A317641 n

end

end A028605.P3428376936948202022

/-! ## A028605.P13424211822555770815

`char[A014601(n)]*A317641(n)`
-/

namespace A028605.P13424211822555770815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A317641 n

end

end A028605.P13424211822555770815

/-! ## A028605.P13368692621149789696

`A133872(n+1)*A317641(n)`
-/

namespace A028605.P13368692621149789696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1) * A317641 n

end

end A028605.P13368692621149789696

/-! ## A028605.P16402640425098054379

`A000124(n)%2*A317641(n)`
-/

namespace A028605.P16402640425098054379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) 2 * A317641 n

end

end A028605.P16402640425098054379

/-! ## A028605.P5564276946291138380

`A000096(n+3)%2*A317641(n)`
-/

namespace A028605.P5564276946291138380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (n + 3)) 2 * A317641 n

end

end A028605.P5564276946291138380

/-! ## A028605.P12321188754466777868

`A021913(n+3)*A317641(n)`
-/

namespace A028605.P12321188754466777868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 3) * A317641 n

end

end A028605.P12321188754466777868

/-! ## A028605.P8818353695546692399

`and(1, A000096(n+9)+11)*A317641(n)`
-/

namespace A028605.P8818353695546692399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000096 (n + 9) + 11) * A317641 n

end

end A028605.P8818353695546692399

/-! ## A028605.P11951093212122945296

`A317642(A047401(n+1))`
-/

namespace A028605.P11951093212122945296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317642 (A047401 (n + 1)).toNat

end

end A028605.P11951093212122945296

/-! ## A028605.P16083873040183881033

`A317641(A112652(n)+n)`
-/

namespace A028605.P16083873040183881033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A112652 n + (n : ℤ)).toNat

end

end A028605.P16083873040183881033

/-! ## A028605.P16296880225974107321

`A317641(3*A072833(n))`
-/

namespace A028605.P16296880225974107321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (3 * A072833 n).toNat

end

end A028605.P16296880225974107321

/-! ## A028605.P2736874853303551735

`A317641(3*A112652(n))`
-/

namespace A028605.P2736874853303551735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (3 * A112652 n).toNat

end

end A028605.P2736874853303551735

/-! ## A028605.P17592077385747779430

`and(A317641(n), A359066(n+1))`
-/

namespace A028605.P17592077385747779430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A317641 n) (A359066 (n + 1))

end

end A028605.P17592077385747779430

/-! ## A028605.P14887937395592682236

`and(A009001(A014206(n)), A317641(n))`
-/

namespace A028605.P14887937395592682236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009001 (A014206 n).toNat) (A317641 n)

end

end A028605.P14887937395592682236

/-!
# A028606: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z))^2.

The programs for A028606, there is no canonical definition to state claims against.
-/

/-! ## A028606.P16618434428203749144

`A028614(A120634(n))*A345932(A271779(n))`
-/

namespace A028606.P16618434428203749144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028614 (A120634 n).toNat * A345932 (A271779 n).toNat

end

end A028606.P16618434428203749144

/-! ## A028606.P3928417599343546542

`A028614(A120634(n))%A155486(A109613(n))`
-/

namespace A028606.P3928417599343546542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028614 (A120634 n).toNat) (A155486 (A109613 n).toNat)

end

end A028606.P3928417599343546542

/-! ## A028606.P13192989193762726079

`A028614(A120634(n))+A010052(A054435(n+3))`
-/

namespace A028606.P13192989193762726079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028614 (A120634 n).toNat + A010052 (A054435 (n + 3)).toNat

end

end A028606.P13192989193762726079

/-! ## A028606.P13989525566713248510

`A028618(n)*A079998(A024365(3*(n+1)))`
-/

namespace A028606.P13989525566713248510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028618 n * A079998 (A024365 (3 * (n + 1))).toNat

end

end A028606.P13989525566713248510

/-! ## A028606.P13817891019429908948

`A028614(A120634(n))+A015836(A073939(n+1))`
-/

namespace A028606.P13817891019429908948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028614 (A120634 n).toNat + A015836 (A073939 (n + 1)).toNat

end

end A028606.P13817891019429908948

/-!
# A028607: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z))^3.

The programs for A028607, there is no canonical definition to state claims against.
-/

/-! ## A028607.P6902536988328995084

`A028615(A120634(n))%Δ[A163342(n)]`
-/

namespace A028607.P6902536988328995084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028615 (A120634 n).toNat) (f1 (n + 1) - f1 n)

end

end A028607.P6902536988328995084

/-! ## A028607.P9209210337059682667

`A028615(A120634(n)%A163342(n+1))`
-/

namespace A028607.P9209210337059682667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 (Int.tmod (A120634 n) (A163342 (n + 1))).toNat

end

end A028607.P9209210337059682667

/-! ## A028607.P5776790406360852272

`A028615(A120634(n))+A000007(A017979(n))`
-/

namespace A028607.P5776790406360852272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 (A120634 n).toNat + A000007 (A017979 n).toNat

end

end A028607.P5776790406360852272

/-! ## A028607.P13675955414021779934

`A028615(A120634(n))+A000007(A304942(n))`
-/

namespace A028607.P13675955414021779934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 (A120634 n).toNat + A000007 (A304942 n).toNat

end

end A028607.P13675955414021779934

/-! ## A028607.P9604800919819818257

`A009194(A214878(n))*A028615(A120634(n))`
-/

namespace A028607.P9604800919819818257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A214878 n).toNat * A028615 (A120634 n).toNat

end

end A028607.P9604800919819818257

/-!
# A028608: Expansion of (theta_3(z)*theta_3(10z)+theta_2(z)*theta_2(10z))^4.

The programs for A028608, there is no canonical definition to state claims against.
-/

/-! ## A028608.P6962235682817260496

`A028616(A120634(n)%A226230(n+1))`
-/

namespace A028608.P6962235682817260496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (Int.tmod (A120634 n) (A226230 (n + 1))).toNat

end

end A028608.P6962235682817260496

/-! ## A028608.P11927821801638263797

`A028616(A120634(n))+A000007(A086645(n))`
-/

namespace A028608.P11927821801638263797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (A120634 n).toNat + A000007 (A086645 n).toNat

end

end A028608.P11927821801638263797

/-! ## A028608.P17115841151086480315

`A028616(A120634(n))%A008706(A000125(n))`
-/

namespace A028608.P17115841151086480315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028616 (A120634 n).toNat) (A008706 (A000125 n).toNat)

end

end A028608.P17115841151086480315

/-! ## A028608.P4011517350924315878

`A028616(A120634(n))*A093178(A032564(n+2)!)`
-/

namespace A028608.P4011517350924315878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (A120634 n).toNat * A093178 (Nat.factorial (A032564 (n + 2)).toNat)

end

end A028608.P4011517350924315878

/-!
# A028609: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z)).

The programs for A028609, the canonical program `A028609.P15696668425956349877` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028609 has offset 0).

The definition of A028609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028609.P3501180126505968860

`A028953(4*n)`
-/

namespace A028609.P3501180126505968860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (4 * n)

end

end A028609.P3501180126505968860

namespace A028609

/-- `A028953(4*n)` -/
def P3501180126505968860.Spec : Prop :=
  ∀ n, P3501180126505968860.a n = A028609 n

end A028609

/-! ## A028609.P17430509449185828190

`A033723(4*n)`
-/

namespace A028609.P17430509449185828190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 (4 * n)

end

end A028609.P17430509449185828190

namespace A028609

/-- `A033723(4*n)` -/
def P17430509449185828190.Spec : Prop :=
  ∀ n, P17430509449185828190.a n = A028609 n

end A028609

/-! ## A028609.P13483002976802169886

`A033723(A008586(n))%(n+2)`
-/

namespace A028609.P13483002976802169886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033723 (A008586 n).toNat) (n + 2 : ℤ)

end

end A028609.P13483002976802169886

namespace A028609

/-- `A033723(A008586(n))%(n+2)` -/
def P13483002976802169886.Spec : Prop :=
  ∀ n, P13483002976802169886.a n = A028609 n

end A028609

/-! ## A028609.P1205010344191750420

`A028953(A008574(n))+A000007(n)`
-/

namespace A028609.P1205010344191750420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008574 n).toNat + A000007 n

end

end A028609.P1205010344191750420

namespace A028609

/-- `A028953(A008574(n))+A000007(n)` -/
def P1205010344191750420.Spec : Prop :=
  ∀ n, P1205010344191750420.a n = A028609 n

end A028609

/-! ## A028609.P15456169896175450751

`gcd(A000038(n), A028953(A008586(n)))`
-/

namespace A028609.P15456169896175450751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A028953 (A008586 n).toNat)

end

end A028609.P15456169896175450751

namespace A028609

/-- `gcd(A000038(n), A028953(A008586(n)))` -/
def P15456169896175450751.Spec : Prop :=
  ∀ n, (P15456169896175450751.a n : ℤ) = A028609 n

end A028609

/-! ## A028609.P4115780415800096015

`A028953(A008586(n))+A000007(n+1)`
-/

namespace A028609.P4115780415800096015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008586 n).toNat + A000007 (n + 1)

end

end A028609.P4115780415800096015

namespace A028609

/-- `A028953(A008586(n))+A000007(n+1)` -/
def P4115780415800096015.Spec : Prop :=
  ∀ n, P4115780415800096015.a n = A028609 n

end A028609

/-! ## A028609.P8834924492187854143

`A028953(A008586(n))+A000038(n+1)`
-/

namespace A028609.P8834924492187854143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008586 n).toNat + A000038 (n + 1)

end

end A028609.P8834924492187854143

namespace A028609

/-- `A028953(A008586(n))+A000038(n+1)` -/
def P8834924492187854143.Spec : Prop :=
  ∀ n, P8834924492187854143.a n = A028609 n

end A028609

/-! ## A028609.P13837555911034033291

`A028953(A008586(n))%A000040(n+1)`
-/

namespace A028609.P13837555911034033291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028953 (A008586 n).toNat) (A000040 (n + 1))

end

end A028609.P13837555911034033291

namespace A028609

/-- `A028953(A008586(n))%A000040(n+1)` -/
def P13837555911034033291.Spec : Prop :=
  ∀ n, P13837555911034033291.a n = A028609 n

end A028609

/-! ## A028609.P14426755940084909385

`A028953(A008486(n)+n)+A000007(n)`
-/

namespace A028609.P14426755940084909385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A008486 n + (n : ℤ)).toNat + A000007 n

end

end A028609.P14426755940084909385

namespace A028609

/-- `A028953(A008486(n)+n)+A000007(n)` -/
def P14426755940084909385.Spec : Prop :=
  ∀ n, P14426755940084909385.a n = A028609 n

end A028609

/-! ## A028609.P15696668425956349877

`A000032(floor(1/(n+1)))*A035179(A008574(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028609

/-- `A000032(floor(1/(n+1)))*A035179(A008574(n))` -/
def P15696668425956349877.Spec : Prop :=
  ∀ n, P15696668425956349877.a n = A028609 n

theorem P15696668425956349877.correct : P15696668425956349877.Spec := by
  intro n
  simp only [A028609]

end A028609

/-! ## A028609.P10266547154658293661

`A028953(A008574(n))^A001221(A034444(n+1))`
-/

namespace A028609.P10266547154658293661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028953 (A008574 n).toNat : ℚ) ^ (A001221 (A034444 (n + 1)).toNat : ℤ)

end

end A028609.P10266547154658293661

namespace A028609

/-- `A028953(A008574(n))^A001221(A034444(n+1))` -/
def P10266547154658293661.Spec : Prop :=
  ∀ n, P10266547154658293661.a n = (A028609 n : ℚ)

end A028609

/-! ## A028609.P15962508222901802770

`A033723(A008598(n))%(n+2)`
-/

namespace A028609.P15962508222901802770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033723 (A008598 n).toNat) (n + 2 : ℤ)

end

end A028609.P15962508222901802770

namespace A028609

/-- `A033723(A008598(n))%(n+2)` -/
def P15962508222901802770.Spec : Prop :=
  ∀ n, P15962508222901802770.a n = A028609 n

end A028609

/-!
# A028610: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z))^2.

The programs for A028610, there is no canonical definition to state claims against.
-/

/-! ## A028610.P17264000638449939568

`A008704(n)%A040462(A041011(n))`
-/

namespace A028610.P17264000638449939568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008704 n) (A040462 (A041011 n).toNat)

end

end A028610.P17264000638449939568

/-! ## A028610.P15197632972695203011

`A008704(A062399(n))%A040462(n)`
-/

namespace A028610.P15197632972695203011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008704 (A062399 n).toNat) (A040462 n)

end

end A028610.P15197632972695203011

/-!
# A028612: Expansion of (theta_3(z)*theta_3(11z) + theta_2(z)*theta_2(11z))^4.

The programs for A028612, there is no canonical definition to state claims against.
-/

/-! ## A028612.P15988481164133125928

`A119792(A315436(n))`
-/

namespace A028612.P15988481164133125928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119792 (A315436 n).toNat

end

end A028612.P15988481164133125928

/-! ## A028612.P205432054854117367

`A263098(A149758(n+1))`
-/

namespace A028612.P205432054854117367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (A149758 (n + 1)).toNat

end

end A028612.P205432054854117367

/-!
# A028613: Expansion of theta_3(q) * theta_3(q^12) + theta_2(q) * theta_2(q^12) in powers of q^(1/4).

The programs for A028613, there is no canonical definition to state claims against.
-/

/-! ## A028613.P4358502981119923179

`and(A028615(n), A127750(n²))`
-/

namespace A028613.P4358502981119923179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A127750 (n ^ 2))

end

end A028613.P4358502981119923179

/-! ## A028613.P11093729721866333229

`and(A028615(n), A127752(n²))`
-/

namespace A028613.P11093729721866333229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A127752 (n ^ 2))

end

end A028613.P11093729721866333229

/-! ## A028613.P5660233761677092782

`and(A028615(n), A335458(2*n))`
-/

namespace A028613.P5660233761677092782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A335458 (2 * n))

end

end A028613.P5660233761677092782

/-! ## A028613.P6443193831938210688

`and(A028615(n), A182731(n+1))`
-/

namespace A028613.P6443193831938210688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A182731 (n + 1))

end

end A028613.P6443193831938210688

/-! ## A028613.P800159176891675579

`and(A028615(n), A289849(n+1))`
-/

namespace A028613.P800159176891675579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028615 n) (A289849 (n + 1))

end

end A028613.P800159176891675579

/-!
# A028614: Expansion of (theta_3(z)*theta_3(12z)+theta_2(z)*theta_2(12z))^2.

The programs for A028614, there is no canonical definition to state claims against.
-/

/-! ## A028614.P15904240556605715090

`A028638(A120634(n))%A000203(A000032(n))`
-/

namespace A028614.P15904240556605715090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028638 (A120634 n).toNat) (A000203 (A000032 n).toNat)

end

end A028614.P15904240556605715090

/-! ## A028614.P1447145349727890091

`and(-A329297(2*(n+1)), A329290(n))`
-/

namespace A028614.P1447145349727890091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A329297 (2 * (n + 1))) (A329290 n)

end

end A028614.P1447145349727890091

/-!
# A028615: Expansion of (theta_3(z)*theta_3(12z)+theta_2(z)*theta_2(12z))^3.

The programs for A028615, there is no canonical definition to state claims against.
-/

/-! ## A028615.P15760259142459505960

`A028639(A120634(n)%A028755(n+1))`
-/

namespace A028615.P15760259142459505960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (Int.tmod (A120634 n) (A028755 (n + 1))).toNat

end

end A028615.P15760259142459505960

/-! ## A028615.P13382671171958377191

`A028639(A120634(n))%A177804(n+1)`
-/

namespace A028615.P13382671171958377191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028639 (A120634 n).toNat) (A177804 (n + 1))

end

end A028615.P13382671171958377191

/-! ## A028615.P5045612695157266063

`A028623(A159966(n))%A000040(A020695(n))`
-/

namespace A028615.P5045612695157266063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028623 (A159966 n).toNat) (A000040 (A020695 n).toNat)

end

end A028615.P5045612695157266063

/-!
# A028616: Expansion of (theta_3(z)*theta_3(12z)+theta_2(z)*theta_2(12z))^4.

The programs for A028616, there is no canonical definition to state claims against.
-/

/-! ## A028616.P3853620331883800324

`A028640(A120634(n)%A099971(n))`
-/

namespace A028616.P3853620331883800324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (Int.tmod (A120634 n) (A099971 n)).toNat

end

end A028616.P3853620331883800324

/-! ## A028616.P1087317250288484442

`A028624(A159966(n)%A099971(n))`
-/

namespace A028616.P1087317250288484442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028624 (Int.tmod (A159966 n) (A099971 n)).toNat

end

end A028616.P1087317250288484442

/-! ## A028616.P8813523030869961467

`A028624(A065190(n+1)%A099971(n))`
-/

namespace A028616.P8813523030869961467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028624 (Int.tmod (A065190 (n + 1)) (A099971 n)).toNat

end

end A028616.P8813523030869961467

/-! ## A028616.P3231693558873255290

`A028640(A120634(n))%A256381(2*(n+2))`
-/

namespace A028616.P3231693558873255290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028640 (A120634 n).toNat) (A256381 (2 * (n + 2)))

end

end A028616.P3231693558873255290

/-!
# A028617: Expansion of (theta_3(z)*theta_3(13z) + theta_2(z)*theta_2(13z)).

The programs for A028617, there is no canonical definition to state claims against.
-/

/-! ## A028617.P11346440639168791539

`A022067(n)%26`
-/

namespace A028617.P11346440639168791539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022067 n) 26

end

end A028617.P11346440639168791539

/-! ## A028617.P2222316435101488199

`A022045(n)%A040156(n)`
-/

namespace A028617.P2222316435101488199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022045 n) (A040156 n)

end

end A028617.P2222316435101488199

/-! ## A028617.P9535549887313685429

`A033725(2*n)`
-/

namespace A028617.P9535549887313685429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033725 (2 * n)

end

end A028617.P9535549887313685429

/-! ## A028617.P16384674401601121136

`A033725(n+n)%A161627(n+1)`
-/

namespace A028617.P16384674401601121136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033725 (n + n)) (A161627 (n + 1))

end

end A028617.P16384674401601121136

/-! ## A028617.P504870370505463094

`or(A000007(n), A033725(A005843(n)))`
-/

namespace A028617.P504870370505463094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A033725 (A005843 n).toNat)

end

end A028617.P504870370505463094

/-! ## A028617.P17747819352241481784

`A033725(A005843(n))%record[A020639(n+2)]`
-/

namespace A028617.P17747819352241481784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033725 (A005843 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A028617.P17747819352241481784

/-! ## A028617.P1204222208520185200

`A033725(n+n)/A002784(A033725(n)+1)`
-/

namespace A028617.P1204222208520185200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033725 (n + n) : ℚ) / (A002784 (A033725 n + 1).toNat : ℚ)

end

end A028617.P1204222208520185200

/-!
# A028618: Expansion of (theta_3(z)*theta_3(13z)+theta_2(z)*theta_2(13z))^2.

The programs for A028618, there is no canonical definition to state claims against.
-/

/-! ## A028618.P4529075700039858053

`A028634(xor(1, A077168(n)))`
-/

namespace A028618.P4529075700039858053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028634 (Int.xor 1 (A077168 n)).toNat

end

end A028618.P4529075700039858053

/-! ## A028618.P4049966931927949744

`A028622(A014601(n)%A353746(n+1))`
-/

namespace A028618.P4049966931927949744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028622 (Int.tmod (A014601 n) (A353746 (n + 1))).toNat

end

end A028618.P4049966931927949744

/-! ## A028618.P16922726987619720072

`A028622(A014601(n)+A010894(3*n+4))`
-/

namespace A028618.P16922726987619720072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028622 (A014601 n + A010894 (3 * n + 4 + 21)).toNat

end

end A028618.P16922726987619720072

/-! ## A028618.P16711566359660067221

`A028622(2*n+1)+and(A028622(2*n), A086776(2*(n+1)))`
-/

namespace A028618.P16711566359660067221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028622 (2 * n + 1) + Int.land (A028622 (2 * n)) (A086776 (2 * (n + 1)))

end

end A028618.P16711566359660067221

/-!
# A028619: Expansion of (theta_3(z)*theta_3(13z)+theta_2(z)*theta_2(13z))^3.

The programs for A028619, there is no canonical definition to state claims against.
-/

/-! ## A028619.P7107301124283900394

`A028635(xor(1, A077168(n)))`
-/

namespace A028619.P7107301124283900394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028635 (Int.xor 1 (A077168 n)).toNat

end

end A028619.P7107301124283900394

/-! ## A028619.P12748322007200353741

`A028623(comp[or(2, n)-1]%A200170(n+2))`
-/

namespace A028619.P12748322007200353741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028623 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A200170 (n + 2))).toNat

end

end A028619.P12748322007200353741

/-! ## A028619.P12849799109627668675

`A028615((A077168(n)-n)*A042948(n))`
-/

namespace A028619.P12849799109627668675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 ((A077168 n - (n : ℤ)) * A042948 n).toNat

end

end A028619.P12849799109627668675

/-! ## A028619.P11186781473504660098

`A028615(A042948(n))+A000007(A077168(n))`
-/

namespace A028619.P11186781473504660098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028615 (A042948 n).toNat + A000007 (A077168 n).toNat

end

end A028619.P11186781473504660098

/-!
# A028620: Expansion of (theta_3(z)*theta_3(13z)+theta_2(z)*theta_2(13z))^4.

The programs for A028620, there is no canonical definition to state claims against.
-/

/-! ## A028620.P12077752873582837432

`A028636(xor(1, A077168(n)))`
-/

namespace A028620.P12077752873582837432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028636 (Int.xor 1 (A077168 n)).toNat

end

end A028620.P12077752873582837432

/-! ## A028620.P2389227885439868828

`A028616(A042948(n)%A054682(3*n+2))`
-/

namespace A028620.P2389227885439868828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (Int.tmod (A042948 n) (A054682 (3 * n + 2))).toNat

end

end A028620.P2389227885439868828

/-! ## A028620.P2485355757899921702

`A028616(A042948(n))%A120937(3*n+1)`
-/

namespace A028620.P2485355757899921702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028616 (A042948 n).toNat) (A120937 (3 * n + 1))

end

end A028620.P2485355757899921702

/-! ## A028620.P9261764477796962793

`A028616(A042948(n)%A014888(n+1))`
-/

namespace A028620.P9261764477796962793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (Int.tmod (A042948 n) (A014888 (n + 1))).toNat

end

end A028620.P9261764477796962793

/-!
# A028621: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z)).

The programs for A028621, there is no canonical definition to state claims against.
-/

/-! ## A028621.P2225486825742459248

`and(A006530(A122111(n+1)), A028623(n))`
-/

namespace A028621.P2225486825742459248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A122111 (n + 1)).toNat) (A028623 n)

end

end A028621.P2225486825742459248

/-! ## A028621.P16035124463997773213

`A028629(A102370(n)-A104853(2*n))`
-/

namespace A028621.P16035124463997773213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (A102370 n - A104853 (2 * n)).toNat

end

end A028621.P16035124463997773213

/-!
# A028622: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z))^2.

The programs for A028622, there is no canonical definition to state claims against.
-/

/-! ## A028622.P8147162384488709815

`A028630(A102370(n%A342274(n)))`
-/

namespace A028622.P8147162384488709815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (A102370 (Int.tmod (n : ℤ) (A342274 n)).toNat).toNat

end

end A028622.P8147162384488709815

/-! ## A028622.P2506607368012621813

`A028630(A120634(n)%A342274(n))`
-/

namespace A028622.P2506607368012621813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (Int.tmod (A120634 n) (A342274 n)).toNat

end

end A028622.P2506607368012621813

/-! ## A028622.P11429980813369708257

`A028630(A102370(n))%A090471(n+1)`
-/

namespace A028622.P11429980813369708257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028630 (A102370 n).toNat) (A090471 (n + 1))

end

end A028622.P11429980813369708257

/-! ## A028622.P9870560413326309056

`A028630(A120634(n))%A090471(n+1)`
-/

namespace A028622.P9870560413326309056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028630 (A120634 n).toNat) (A090471 (n + 1))

end

end A028622.P9870560413326309056

/-! ## A028622.P3093232015252414276

`A028630(A120634(n))+A000007(A066643(n+1))`
-/

namespace A028622.P3093232015252414276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (A120634 n).toNat + A000007 (A066643 (n + 1)).toNat

end

end A028622.P3093232015252414276

/-! ## A028622.P8024099777832351435

`A028236(A079652(n+1))*A028630(A120634(n))`
-/

namespace A028622.P8024099777832351435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (A079652 (n + 1)).toNat * A028630 (A120634 n).toNat

end

end A028622.P8024099777832351435

/-! ## A028622.P8131523915266272270

`A175958(A130321(n))+A028630(A120634(n))`
-/

namespace A028622.P8131523915266272270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175958 (A130321 n).toNat + A028630 (A120634 n).toNat

end

end A028622.P8131523915266272270

/-!
# A028623: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z))^3.

The programs for A028623, there is no canonical definition to state claims against.
-/

/-! ## A028623.P5055012040901162636

`A028631(A120634(n)%p?[A008177(n)])`
-/

namespace A028623.P5055012040901162636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (Int.tmod (A120634 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A028623.P5055012040901162636

/-! ## A028623.P14492320039014036714

`A028631(A120634(n))+A000007(A028330(n))`
-/

namespace A028623.P14492320039014036714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (A120634 n).toNat + A000007 (A028330 n).toNat

end

end A028623.P14492320039014036714

/-! ## A028623.P4550399402599972343

`A028631(A120634(n))*A091258(A027862(n+1))`
-/

namespace A028623.P4550399402599972343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (A120634 n).toNat * A091258 (A027862 (n + 1)).toNat

end

end A028623.P4550399402599972343

/-! ## A028623.P17265279778143185857

`A028631(A120634(n))*A056226(A056212(n+1))`
-/

namespace A028623.P17265279778143185857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (A120634 n).toNat * A056226 (A056212 (n + 1)).toNat

end

end A028623.P17265279778143185857

/-! ## A028623.P2321583080799077464

`A001221(A160494(n+1))*A028631(A120634(n))`
-/

namespace A028623.P2321583080799077464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160494 (n + 1)).toNat * A028631 (A120634 n).toNat

end

end A028623.P2321583080799077464

/-! ## A028623.P17277488356039306054

`A028631(A120634(n))+A007814(A153377(n+1))`
-/

namespace A028623.P17277488356039306054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028631 (A120634 n).toNat + A007814 (A153377 (n + 1)).toNat

end

end A028623.P17277488356039306054

/-! ## A028623.P13531761241659562849

`A028631(A120634(n))^A060044(A038500(n+1))²`
-/

namespace A028623.P13531761241659562849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028631 (A120634 n).toNat : ℚ) ^ (A060044 (A038500 (n + 1)).toNat ^ 2 : ℤ)

end

end A028623.P13531761241659562849

/-!
# A028624: Expansion of (theta_3(z)*theta_3(14z)+theta_2(z)*theta_2(14z))^4.

The programs for A028624, there is no canonical definition to state claims against.
-/

/-! ## A028624.P13842550304102800711

`A028616(A159966(n)%A099971(n))`
-/

namespace A028624.P13842550304102800711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 (Int.tmod (A159966 n) (A099971 n)).toNat

end

end A028624.P13842550304102800711

/-! ## A028624.P7158153894370967085

`A028632(A065190(n+1)%A119036(n+1))`
-/

namespace A028624.P7158153894370967085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028632 (Int.tmod (A065190 (n + 1)) (A119036 (n + 1))).toNat

end

end A028624.P7158153894370967085

/-! ## A028624.P7703737970586363648

`A028616(A159966(n))%A256381(2*(n+2))`
-/

namespace A028624.P7703737970586363648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028616 (A159966 n).toNat) (A256381 (2 * (n + 2)))

end

end A028624.P7703737970586363648

/-! ## A028624.P1595530353364712197

`A028616(A159966(n))%A171980(n+1)`
-/

namespace A028624.P1595530353364712197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028616 (A159966 n).toNat) (A171980 (n + 1))

end

end A028624.P1595530353364712197

/-!
# A028625: Expansion of (theta_3(z)*theta_3(15z)+theta_2(z)*theta_2(15z)).

The programs for A028625, there is no canonical definition to state claims against.
-/

/-! ## A028625.P262086583671946995

`A260671(4*n)`
-/

namespace A028625.P262086583671946995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (4 * n)

end

end A028625.P262086583671946995

/-! ## A028625.P4590366173380319135

`A028956(3*n)`
-/

namespace A028625.P4590366173380319135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (3 * n)

end

end A028625.P4590366173380319135

/-! ## A028625.P17138550445666674241

`A028956(A130724(n))%46`
-/

namespace A028625.P17138550445666674241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028956 (A130724 n).toNat) 46

end

end A028625.P17138550445666674241

/-! ## A028625.P7966089234621051391

`or(A000122(n), A028956(A008486(n)))`
-/

namespace A028625.P7966089234621051391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A028956 (A008486 n).toNat)

end

end A028625.P7966089234621051391

/-! ## A028625.P16975174688645248156

`2*A122855(4*n)-A192323(4*n)`
-/

namespace A028625.P16975174688645248156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122855 (4 * n) - A192323 (4 * n)

end

end A028625.P16975174688645248156

/-! ## A028625.P15559370136572884151

`A260671(A008706(n)-n)-A000007(n)`
-/

namespace A028625.P15559370136572884151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (A008706 n - (n : ℤ)).toNat - A000007 n

end

end A028625.P15559370136572884151

/-! ## A028625.P14568068799458914523

`A028956(A283442(n))%(n+2)²`
-/

namespace A028625.P14568068799458914523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028956 (A283442 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A028625.P14568068799458914523

/-! ## A028625.P12667296863820795609

`A028956(A008706(n))+A000007(n)`
-/

namespace A028625.P12667296863820795609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (A008706 n).toNat + A000007 n

end

end A028625.P12667296863820795609

/-! ## A028625.P16116152320038928010

`A192323(12*n)`
-/

namespace A028625.P16116152320038928010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (12 * n)

end

end A028625.P16116152320038928010

/-! ## A028625.P332346573885840084

`A028956(n²)+A028956(A008486(n))`
-/

namespace A028625.P332346573885840084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (n ^ 2) + A028956 (A008486 n).toNat

end

end A028625.P332346573885840084

/-! ## A028625.P13667211612368190249

`A028956(n²)+A028956(A008706(n))`
-/

namespace A028625.P13667211612368190249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (n ^ 2) + A028956 (A008706 n).toNat

end

end A028625.P13667211612368190249

/-!
# A028628: Expansion of (theta_3(z)*theta_3(15z) + theta_2(z)*theta_2(15z))^4.

The programs for A028628, there is no canonical definition to state claims against.
-/

/-! ## A028628.P8452166821961375309

`A000005(A254870(n+1))*A053012(n+1)`
-/

namespace A028628.P8452166821961375309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254870 (n + 1)).toNat * A053012 (n + 1)

end

end A028628.P8452166821961375309

/-! ## A028628.P4944768141590944561

`A028636(2*n)+A028636(A077168(2*n))`
-/

namespace A028628.P4944768141590944561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028636 (2 * n) + A028636 (A077168 (2 * n)).toNat

end

end A028628.P4944768141590944561

/-!
# A028629: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z)).

The programs for A028629, there is no canonical definition to state claims against.
-/

/-! ## A028629.P7028684687634827807

`and(A010702(A006918(n)), A028631(n))`
-/

namespace A028629.P7028684687634827807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (A006918 n).toNat) (A028631 n)

end

end A028629.P7028684687634827807

/-! ## A028629.P10867499651485307955

`and(A010702(A145284(n+1)), A028631(n))`
-/

namespace A028629.P10867499651485307955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (A145284 (n + 1)).toNat) (A028631 n)

end

end A028629.P10867499651485307955

/-! ## A028629.P13922670035724839784

`and(A010702(A032525(n)), A028631(n))`
-/

namespace A028629.P13922670035724839784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 (A032525 n).toNat) (A028631 n)

end

end A028629.P13922670035724839784

/-! ## A028629.P14670056749577840314

`and(A028631(n), A034444(A000069(n+1)²))`
-/

namespace A028629.P14670056749577840314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028631 n) (A034444 (A000069 (n + 1) ^ 2).toNat)

end

end A028629.P14670056749577840314

/-! ## A028629.P15758654859793711463

`A033755(n*A019430(n))`
-/

namespace A028629.P15758654859793711463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 ((n : ℤ) * A019430 n).toNat

end

end A028629.P15758654859793711463

/-!
# A028630: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z))^2.

The programs for A028630, there is no canonical definition to state claims against.
-/

/-! ## A028630.P2623885597271050435

`A028654(A120634(n))%Δ[A141214(n)]`
-/

namespace A028630.P2623885597271050435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028654 (A120634 n).toNat) (f1 (n + 1) - f1 n)

end

end A028630.P2623885597271050435

/-! ## A028630.P16127833506084815157

`A008833(A300951(n))*A028654(A120634(n))`
-/

namespace A028630.P16127833506084815157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A300951 n).toNat * A028654 (A120634 n).toNat

end

end A028630.P16127833506084815157

/-! ## A028630.P4522965312404840590

`A028654(A120634(n))+A000007(A248768(n+1))`
-/

namespace A028630.P4522965312404840590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (A120634 n).toNat + A000007 (A248768 (n + 1)).toNat

end

end A028630.P4522965312404840590

/-! ## A028630.P1179206033530385957

`A014963(A083416(n+1))*A028654(A120634(n))`
-/

namespace A028630.P1179206033530385957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A083416 (n + 1)).toNat * A028654 (A120634 n).toNat

end

end A028630.P1179206033530385957

/-!
# A028631: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z))^3.

The programs for A028631, there is no canonical definition to state claims against.
-/

/-! ## A028631.P1561512130468316839

`A028655(A120634(n))%A360557(2*(n+1))`
-/

namespace A028631.P1561512130468316839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028655 (A120634 n).toNat) (A360557 (2 * (n + 1)))

end

end A028631.P1561512130468316839

/-! ## A028631.P11468560328765802803

`A028655(A120634(n))%A177804(n+1)`
-/

namespace A028631.P11468560328765802803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028655 (A120634 n).toNat) (A177804 (n + 1))

end

end A028631.P11468560328765802803

/-!
# A028632: Expansion of (theta_3(z)*theta_3(16z)+theta_2(z)*theta_2(16z))^4.

The programs for A028632, there is no canonical definition to state claims against.
-/

/-! ## A028632.P7646475116476552827

`A028640(A159966(n)%A343729(n+1))`
-/

namespace A028632.P7646475116476552827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (Int.tmod (A159966 n) (A343729 (n + 1))).toNat

end

end A028632.P7646475116476552827

/-! ## A028632.P6070325610139125827

`A028640(A004442(n+1)%A141214(n+1))`
-/

namespace A028632.P6070325610139125827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (Int.tmod (A004442 (n + 1)) (A141214 (n + 1))).toNat

end

end A028632.P6070325610139125827

/-! ## A028632.P9286145608732246425

`A028640(A065190(n+1)%A119034(n+1))`
-/

namespace A028632.P9286145608732246425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (Int.tmod (A065190 (n + 1)) (A119034 (n + 1))).toNat

end

end A028632.P9286145608732246425

/-!
# A028633: Expansion of (theta_3(z)*theta_3(17z) + theta_2(z)*theta_2(17z)).

The programs for A028633, there is no canonical definition to state claims against.
-/

/-! ## A028633.P11090611900384224146

`A022071(n)%A040272(n)`
-/

namespace A028633.P11090611900384224146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022071 n) (A040272 n)

end

end A028633.P11090611900384224146

/-! ## A028633.P13194425491014352217

`A033729(2*n)`
-/

namespace A028633.P13194425491014352217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033729 (2 * n)

end

end A028633.P13194425491014352217

/-! ## A028633.P4377712051784980779

`xor(1, xor(1, A033729(n+n)))`
-/

namespace A028633.P4377712051784980779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A033729 (n + n)))

end

end A028633.P4377712051784980779

/-! ## A028633.P6933585961424428944

`A033729(n+n)%A320242(n+1)`
-/

namespace A028633.P6933585961424428944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033729 (n + n)) (A320242 (n + 1))

end

end A028633.P6933585961424428944

/-! ## A028633.P8018910282447823665

`A033729(n+n)^A323719(A033729(n)+1)`
-/

namespace A028633.P8018910282447823665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033729 (n + n) : ℚ) ^ (A323719 (A033729 n + 1).toNat : ℤ)

end

end A028633.P8018910282447823665

/-! ## A028633.P793719409210906732

`A022049(n)%A040272(n)`
-/

namespace A028633.P793719409210906732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022049 n) (A040272 n)

end

end A028633.P793719409210906732

/-!
# A028634: Expansion of (theta_3(z)*theta_3(17z)+theta_2(z)*theta_2(17z))^2.

The programs for A028634, there is no canonical definition to state claims against.
-/

/-! ## A028634.P5320463231178035813

`A028630(A042948(n))^A001221(A000079(n))`
-/

namespace A028634.P5320463231178035813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028630 (A042948 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A028634.P5320463231178035813

/-! ## A028634.P2570565756712099728

`A028630(A042948(n))+A000038(A001222(2^n)+1)`
-/

namespace A028634.P2570565756712099728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (A042948 n).toNat + A000038 (A001222 (2 ^ n) + 1).toNat

end

end A028634.P2570565756712099728

/-! ## A028634.P10922795546131051260

`A028638(lt[A058965(n), A370154(n+2)])`
-/

namespace A028634.P10922795546131051260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370154 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028638 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028634.P10922795546131051260

/-! ## A028634.P2743152885835776722

`A028638(A014601(n)+A010894(3*n+4))`
-/

namespace A028634.P2743152885835776722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028638 (A014601 n + A010894 (3 * n + 4 + 21)).toNat

end

end A028634.P2743152885835776722

/-! ## A028634.P4643837126974230218

`and(A000040(A001935(3*n+2)), A246631(n))`
-/

namespace A028634.P4643837126974230218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A001935 (3 * n + 2)).toNat) (A246631 n)

end

end A028634.P4643837126974230218

/-!
# A028635: Expansion of (theta_3(z)*theta_3(17z)+theta_2(z)*theta_2(17z))^3.

The programs for A028635, there is no canonical definition to state claims against.
-/

/-! ## A028635.P12175788610425734336

`A028639(A014601(n)%A120937(2*n))`
-/

namespace A028635.P12175788610425734336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (Int.tmod (A014601 n) (A120937 (2 * n))).toNat

end

end A028635.P12175788610425734336

/-! ## A028635.P7018401446753510332

`A028631(A042948(n))%A228062(n+2)²`
-/

namespace A028635.P7018401446753510332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028631 (A042948 n).toNat) (A228062 (n + 2) ^ 2)

end

end A028635.P7018401446753510332

/-! ## A028635.P191821692887602501

`A028631(A042948(n))^A007318(A288324(n))`
-/

namespace A028635.P191821692887602501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028631 (A042948 n).toNat : ℚ) ^ (A007318 (A288324 n).toNat : ℤ)

end

end A028635.P191821692887602501

/-! ## A028635.P1411533596740044573

`A001222(A145824(n+1))*A028631(A042948(n))`
-/

namespace A028635.P1411533596740044573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A145824 (n + 1)).toNat * A028631 (A042948 n).toNat

end

end A028635.P1411533596740044573

/-!
# A028636: Expansion of (theta_3(z)*theta_3(17z)+theta_2(z)*theta_2(17z))^4.

The programs for A028636, there is no canonical definition to state claims against.
-/

/-! ## A028636.P16906420766662001073

`A028640(A014601(n))*A228488(A118881(n+1))`
-/

namespace A028636.P16906420766662001073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (A014601 n).toNat * A228488 (A118881 (n + 1)).toNat

end

end A028636.P16906420766662001073

/-! ## A028636.P1362394941950707017

`A028640(A014601(n))*A074465(A000079(n))`
-/

namespace A028636.P1362394941950707017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (A014601 n).toNat * A074465 (A000079 n).toNat

end

end A028636.P1362394941950707017

/-! ## A028636.P11814537991645809542

`A028640(A014601(n))%A000010(A000079(n)+6*n+11)`
-/

namespace A028636.P11814537991645809542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028640 (A014601 n).toNat) (A000010 (A000079 n + (6 * n + 11 : ℤ)).toNat)

end

end A028636.P11814537991645809542

/-! ## A028636.P2188492113973666776

`A028640(A074465(n+1)²*A014601(n))`
-/

namespace A028636.P2188492113973666776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028640 (A074465 (n + 1) ^ 2 * A014601 n).toNat

end

end A028636.P2188492113973666776

/-!
# A028637: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z)).

The programs for A028637, there is no canonical definition to state claims against.
-/

/-! ## A028637.P13431969299090177671

`A010892(n)*A263767(3*n)`
-/

namespace A028637.P13431969299090177671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A263767 (3 * n)

end

end A028637.P13431969299090177671

/-! ## A028637.P14687989592222123130

`abs(A049347(n)*A263767(3*n))`
-/

namespace A028637.P14687989592222123130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049347 n * A263767 (3 * n)|

end

end A028637.P14687989592222123130

/-! ## A028637.P13458985144192346917

`lcm(A049347(n), A263767(A008585(n)))`
-/

namespace A028637.P13458985144192346917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 n) (A263767 (A008585 n).toNat)

end

end A028637.P13458985144192346917

/-! ## A028637.P11475085800009782123

`A049347(n)*A263767(3*n)/A033999(n)`
-/

namespace A028637.P11475085800009782123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 n * A263767 (3 * n) : ℚ) / (A033999 n : ℚ)

end

end A028637.P11475085800009782123

/-! ## A028637.P7923714264902159318

`lcm(A063524(n)+1, A049347(n)*A263767(3*n))`
-/

namespace A028637.P7923714264902159318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063524 n + 1) (A049347 n * A263767 (3 * n))

end

end A028637.P7923714264902159318

/-! ## A028637.P6279689578896681620

`and(A028639(n), A122855(A167614(2*(n+1))))`
-/

namespace A028637.P6279689578896681620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028639 n) (A122855 (A167614 (2 * (n + 1))).toNat)

end

end A028637.P6279689578896681620

/-! ## A028637.P11730785584910426331

`and(A122855(A167614(2*(n+1))), A138805(n))`
-/

namespace A028637.P11730785584910426331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122855 (A167614 (2 * (n + 1))).toNat) (A138805 n)

end

end A028637.P11730785584910426331

/-!
# A028638: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z))^2.

The programs for A028638, there is no canonical definition to state claims against.
-/

/-! ## A028638.P13404179277833999229

`A028646(A120634(n)%A001605(n+1))`
-/

namespace A028638.P13404179277833999229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028646 (Int.tmod (A120634 n) (A001605 (n + 1))).toNat

end

end A028638.P13404179277833999229

/-! ## A028638.P11121389283006579490

`A028646(A065190(n+1)%A326502(n+1))`
-/

namespace A028638.P11121389283006579490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028646 (Int.tmod (A065190 (n + 1)) (A326502 (n + 1))).toNat

end

end A028638.P11121389283006579490

/-! ## A028638.P8065389723372925096

`A028646(A120634(n))^n^A213185(n+1)`
-/

namespace A028638.P8065389723372925096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028646 (A120634 n).toNat : ℝ) ^ ((n : ℚ) ^ (A213185 (n + 1) : ℤ) : ℝ)

end

end A028638.P8065389723372925096

/-! ## A028638.P10284713228974424880

`A028630(A159966(n)%A343729(n+1))`
-/

namespace A028638.P10284713228974424880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (Int.tmod (A159966 n) (A343729 (n + 1))).toNat

end

end A028638.P10284713228974424880

/-! ## A028638.P13636141737799299869

`and(A028606(n), A137284(n))`
-/

namespace A028638.P13636141737799299869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028606 n) (A137284 n)

end

end A028638.P13636141737799299869

/-!
# A028639: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z))^3.

The programs for A028639, there is no canonical definition to state claims against.
-/

/-! ## A028639.P5769898669362067109

`A028647(A120634(n)%A029494(n+1))`
-/

namespace A028639.P5769898669362067109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (Int.tmod (A120634 n) (A029494 (n + 1))).toNat

end

end A028639.P5769898669362067109

/-! ## A028639.P2912637314587552184

`A028647(A120634(n))-A301593(A008000(n+1))`
-/

namespace A028639.P2912637314587552184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A120634 n).toNat - A301593 (A008000 (n + 1)).toNat

end

end A028639.P2912637314587552184

/-! ## A028639.P38411186153205077

`(A234712(2*n+1)%2+1)*A028647(A120634(n))`
-/

namespace A028639.P38411186153205077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A234712 (2 * n + 1)) 2 + 1) * A028647 (A120634 n).toNat

end

end A028639.P38411186153205077

/-! ## A028639.P14821927111933433350

`A028647(A120634(n))+A010052(A019565(n+1))`
-/

namespace A028639.P14821927111933433350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A120634 n).toNat + A010052 (A019565 (n + 1)).toNat

end

end A028639.P14821927111933433350

/-! ## A028639.P1263573329896966718

`A028647(A120634(n))*A052409(A341446(n+1))`
-/

namespace A028639.P1263573329896966718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A120634 n).toNat * A052409 (A341446 (n + 1)).toNat

end

end A028639.P1263573329896966718

/-! ## A028639.P10184280128031046846

`A028647(A120634(n))*A204697(n*(n+1))`
-/

namespace A028639.P10184280128031046846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A120634 n).toNat * A204697 (n * (n + 1))

end

end A028639.P10184280128031046846

/-! ## A028639.P5211086682062469723

`A028647(A120634(n))-A325268(∑[n+1])`
-/

namespace A028639.P5211086682062469723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A120634 n).toNat - A325268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028639.P5211086682062469723

/-!
# A028640: Expansion of (theta_3(z)*theta_3(18z)+theta_2(z)*theta_2(18z))^4.

The programs for A028640, there is no canonical definition to state claims against.
-/

/-! ## A028640.P16010704690003161521

`(A348259(A088955(2*n+1)+1)+1)*A028648(A120634(n))`
-/

namespace A028640.P16010704690003161521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348259 (A088955 (2 * n + 1) + 1).toNat + 1) * A028648 (A120634 n).toNat

end

end A028640.P16010704690003161521

/-! ## A028640.P15459199727853807705

`A028648(A120634(n)%A353440(n+1))`
-/

namespace A028640.P15459199727853807705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (Int.tmod (A120634 n) (A353440 (n + 1))).toNat

end

end A028640.P15459199727853807705

/-! ## A028640.P8277934885063783700

`A028648(A120634(n))%A175552(2*n+5)`
-/

namespace A028640.P8277934885063783700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028648 (A120634 n).toNat) (A175552 (2 * n + 5))

end

end A028640.P8277934885063783700

/-! ## A028640.P14792801016155406714

`A001222(A225077(n+1))*A028648(A120634(n))`
-/

namespace A028640.P14792801016155406714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225077 (n + 1)).toNat * A028648 (A120634 n).toNat

end

end A028640.P14792801016155406714

/-! ## A028640.P12527290684160534762

`A028648(A120634(n))*A267115(A345239(3*n+5))`
-/

namespace A028640.P12527290684160534762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (A120634 n).toNat * A267115 (A345239 (3 * n + 5)).toNat

end

end A028640.P12527290684160534762

/-!
# A028641: Expansion of theta_3(q) * theta_3(q^19) + theta_2(q) * theta_2(q^19) in powers of q.

The programs for A028641, there is no canonical definition to state claims against.
-/

/-! ## A028641.P13791089646457567183

`A022073(n)%A040342(n)`
-/

namespace A028641.P13791089646457567183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022073 n) (A040342 n)

end

end A028641.P13791089646457567183

/-! ## A028641.P13670610726119059802

`A033731(4*n)`
-/

namespace A028641.P13670610726119059802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (4 * n)

end

end A028641.P13670610726119059802

/-! ## A028641.P3004228978900354309

`A033731(A008574(n))-A000007(n)`
-/

namespace A028641.P3004228978900354309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A008574 n).toNat - A000007 n

end

end A028641.P3004228978900354309

/-! ## A028641.P4724023172134024475

`A035171(A008574(n))*A036453(n+1)`
-/

namespace A028641.P4724023172134024475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A008574 n).toNat * A036453 (n + 1)

end

end A028641.P4724023172134024475

/-! ## A028641.P6879764496014714781

`A033731(A005843(n+n))+A000007(n+1)`
-/

namespace A028641.P6879764496014714781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A005843 (n + n)).toNat + A000007 (n + 1)

end

end A028641.P6879764496014714781

/-! ## A028641.P10476125986019987777

`A033731(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A028641.P10476125986019987777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033731 (A008574 n + A000007 n).toNat + A000007 n

end

end A028641.P10476125986019987777

/-!
# A028644: Expansion of (theta_3(z)*theta_3(19z) + theta_2(z)*theta_2(19z))^4.

The programs for A028644, there is no canonical definition to state claims against.
-/

/-! ## A028644.P18179250919569612918

`A195208(A009858(n+1))`
-/

namespace A028644.P18179250919569612918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195208 (A009858 (n + 1)).toNat

end

end A028644.P18179250919569612918

/-! ## A028644.P5817007159458022852

`A000118(lt[A236932(n), 13])`
-/

namespace A028644.P5817007159458022852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236932 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A028644.P5817007159458022852

/-! ## A028644.P14965458722100809401

`A175368(n^A008295(n))`
-/

namespace A028644.P14965458722100809401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A008295 n : ℤ))).toNat

end

end A028644.P14965458722100809401

/-!
# A028645: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z)).

The programs for A028645, there is no canonical definition to state claims against.
-/

/-! ## A028645.P16690426121061567730

`A028653(A159966(n))%A139251(A011757(n+1))`
-/

namespace A028645.P16690426121061567730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028653 (A159966 n).toNat) (A139251 (A011757 (n + 1)).toNat)

end

end A028645.P16690426121061567730

/-! ## A028645.P14131994218203266359

`A028653(A159966(n))%(A324662(n)+2)`
-/

namespace A028645.P14131994218203266359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028653 (A159966 n).toNat) (A324662 n + 2)

end

end A028645.P14131994218203266359

/-! ## A028645.P7428171395726531568

`A028653(A159966(n))+C(A327707(n+1), 64)`
-/

namespace A028645.P7428171395726531568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (A159966 n).toNat + (Nat.choose (A327707 (n + 1)).toNat 64 : ℤ)

end

end A028645.P7428171395726531568

/-! ## A028645.P14951950841883668307

`A028653(A159966(n))%A000032(A324662(n))`
-/

namespace A028645.P14951950841883668307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028653 (A159966 n).toNat) (A000032 (A324662 n).toNat)

end

end A028645.P14951950841883668307

/-! ## A028645.P5966707226145182950

`A028653(A159966(n))+A000007(A324662(n)+1)`
-/

namespace A028645.P5966707226145182950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (A159966 n).toNat + A000007 (A324662 n + 1).toNat

end

end A028645.P5966707226145182950

/-! ## A028645.P18432991897793497280

`A028653(A159966(n))*A079724(A324662(n)+1)`
-/

namespace A028645.P18432991897793497280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (A159966 n).toNat * A079724 (A324662 n + 1).toNat

end

end A028645.P18432991897793497280

/-! ## A028645.P7268097623620954277

`A028653(A159966(n))+A000007(A189891(n+1))`
-/

namespace A028645.P7268097623620954277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (A159966 n).toNat + A000007 (A189891 (n + 1)).toNat

end

end A028645.P7268097623620954277

/-! ## A028645.P10299755886442532605

`A231563((1-n)²+n)+A028653(A159966(n))`
-/

namespace A028645.P10299755886442532605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat + A028653 (A159966 n).toNat

end

end A028645.P10299755886442532605

/-! ## A028645.P9936087116942325847

`A028653(A159966(n))*A213636(A146319(n+1))`
-/

namespace A028645.P9936087116942325847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (A159966 n).toNat * A213636 (A146319 (n + 1)).toNat

end

end A028645.P9936087116942325847

/-!
# A028646: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z))^2.

The programs for A028646, there is no canonical definition to state claims against.
-/

/-! ## A028646.P6617414717174362228

`and(A028614(n), A250316(A322315(n+1)))`
-/

namespace A028646.P6617414717174362228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A250316 (A322315 (n + 1)).toNat)

end

end A028646.P6617414717174362228

/-! ## A028646.P16614477018840450212

`and(A028614(n), A343659(A317230(n+1)))`
-/

namespace A028646.P16614477018840450212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A343659 (A317230 (n + 1)).toNat)

end

end A028646.P16614477018840450212

/-! ## A028646.P15151326330357942792

`and(A028614(n), A128849(n))`
-/

namespace A028646.P15151326330357942792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A128849 n)

end

end A028646.P15151326330357942792

/-! ## A028646.P15839805965934543214

`and(A028614(n), A113182(n+1))`
-/

namespace A028646.P15839805965934543214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A113182 (n + 1))

end

end A028646.P15839805965934543214

/-! ## A028646.P9807803786817793693

`and(A028614(n), A394406(n))`
-/

namespace A028646.P9807803786817793693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028614 n) (A394406 n)

end

end A028646.P9807803786817793693

/-!
# A028647: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z))^3.

The programs for A028647, there is no canonical definition to state claims against.
-/

/-! ## A028647.P10158015072187350290

`A028655(A159966(n))%∑[A163893(n)]`
-/

namespace A028647.P10158015072187350290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028655 (A159966 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028647.P10158015072187350290

/-! ## A028647.P208293713775052710

`A028655(A159966(n))*A114986(A103609(n))`
-/

namespace A028647.P208293713775052710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A159966 n).toNat * A114986 (A103609 n).toNat

end

end A028647.P208293713775052710

/-! ## A028647.P4926686818964931601

`A028655(A159966(n))+A000007(A033877(n+1))`
-/

namespace A028647.P4926686818964931601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A159966 n).toNat + A000007 (A033877 (n + 1)).toNat

end

end A028647.P4926686818964931601

/-! ## A028647.P3326648556309291519

`A000045(A010894(n)!)*A028655(A159966(n))`
-/

namespace A028647.P3326648556309291519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (A010894 (n + 21)).toNat) * A028655 (A159966 n).toNat

end

end A028647.P3326648556309291519

/-!
# A028648: Expansion of (theta_3(z)*theta_3(20z)+theta_2(z)*theta_2(20z))^4.

The programs for A028648, there is no canonical definition to state claims against.
-/

/-! ## A028648.P15176933411312764268

`A028656(A159966(n)%A054682(n+1))`
-/

namespace A028648.P15176933411312764268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (Int.tmod (A159966 n) (A054682 (n + 1))).toNat

end

end A028648.P15176933411312764268

/-! ## A028648.P16013193125078806599

`A028656(A159966(n)%A120937(n))`
-/

namespace A028648.P16013193125078806599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (Int.tmod (A159966 n) (A120937 n)).toNat

end

end A028648.P16013193125078806599

/-! ## A028648.P4860433994560558942

`A028656(A159966(n))%A343729(n+1)`
-/

namespace A028648.P4860433994560558942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028656 (A159966 n).toNat) (A343729 (n + 1))

end

end A028648.P4860433994560558942

/-! ## A028648.P4938863180806127599

`A028656(A065190(n+1)%A119034(n+1))`
-/

namespace A028648.P4938863180806127599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (Int.tmod (A065190 (n + 1)) (A119034 (n + 1))).toNat

end

end A028648.P4938863180806127599

/-! ## A028648.P4348605492628953434

`A028656(A159966(n))+A000122(A360228(2*n+5))`
-/

namespace A028648.P4348605492628953434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (A159966 n).toNat + A000122 (A360228 (2 * n + 5)).toNat

end

end A028648.P4348605492628953434

/-!
# A028649: Expansion of (theta_3(z)*theta_3(21z) + theta_2(z)*theta_2(21z)).

The programs for A028649, there is no canonical definition to state claims against.
-/

/-! ## A028649.P17506724719578869811

`A028653(A014601(n)%A054682(n+1))`
-/

namespace A028649.P17506724719578869811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (Int.tmod (A014601 n) (A054682 (n + 1))).toNat

end

end A028649.P17506724719578869811

/-! ## A028649.P10230349965212556503

`A028645(A042948(n)%A054682(n+1))`
-/

namespace A028649.P10230349965212556503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (Int.tmod (A042948 n) (A054682 (n + 1))).toNat

end

end A028649.P10230349965212556503

/-! ## A028649.P1591290355755594319

`A028653(A014601(n)%A120937(n))`
-/

namespace A028649.P1591290355755594319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028653 (Int.tmod (A014601 n) (A120937 n)).toNat

end

end A028649.P1591290355755594319

/-! ## A028649.P6508702027584480087

`A028645(A042948(n)%A120937(n))`
-/

namespace A028649.P6508702027584480087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (Int.tmod (A042948 n) (A120937 n)).toNat

end

end A028649.P6508702027584480087

/-! ## A028649.P8594956622665305758

`A028645(lt[A370150(2*(n+2)), A370154(3*n+5)])`
-/

namespace A028649.P8594956622665305758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370150 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370154 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028649.P8594956622665305758

/-!
# A028650: Expansion of (theta_3(z)*theta_3(21z)+theta_2(z)*theta_2(21z))^2.

The programs for A028650, there is no canonical definition to state claims against.
-/

/-! ## A028650.P10375408735139362141

`A028654(A014601(n)%A119175(n+1))`
-/

namespace A028650.P10375408735139362141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (Int.tmod (A014601 n) (A119175 (n + 1))).toNat

end

end A028650.P10375408735139362141

/-! ## A028650.P15810983048902811513

`A028654(A156404(2*n+1)+A014601(n))`
-/

namespace A028650.P15810983048902811513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (A156404 (2 * n + 1) + A014601 n).toNat

end

end A028650.P15810983048902811513

/-! ## A028650.P4108397273729553671

`A028654(2*n+1)+A156404(2*n+1)+A028654(2*n)`
-/

namespace A028650.P4108397273729553671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (2 * n + 1) + (A156404 (2 * n + 1) + A028654 (2 * n))

end

end A028650.P4108397273729553671

/-! ## A028650.P9219853008552831039

`and(A028618(n), A112511(A077168(n)))`
-/

namespace A028650.P9219853008552831039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028618 n) (A112511 (A077168 n).toNat)

end

end A028650.P9219853008552831039

/-! ## A028650.P16474049160967574714

`and(A028618(n), A086776(A005843(n+1)))`
-/

namespace A028650.P16474049160967574714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028618 n) (A086776 (A005843 (n + 1)).toNat)

end

end A028650.P16474049160967574714

/-!
# A028651: Expansion of (theta_3(z)*theta_3(21z)+theta_2(z)*theta_2(21z))^3.

The programs for A028651, there is no canonical definition to state claims against.
-/

/-! ## A028651.P11600170988487989824

`A028655(A014601(n)+A010894(2*n+1))`
-/

namespace A028651.P11600170988487989824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A014601 n + A010894 (2 * n + 1 + 21)).toNat

end

end A028651.P11600170988487989824

/-! ## A028651.P16679261594203243569

`A028647(A042948(n)+A010894(2*n+1))`
-/

namespace A028651.P16679261594203243569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 (A042948 n + A010894 (2 * n + 1 + 21)).toNat

end

end A028651.P16679261594203243569

/-! ## A028651.P2495296399397147618

`A028655(A014601(n))%A000203(A120937(n))`
-/

namespace A028651.P2495296399397147618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028655 (A014601 n).toNat) (A000203 (A120937 n).toNat)

end

end A028651.P2495296399397147618

/-!
# A028652: Expansion of (theta_3(z)*theta_3(21z)+theta_2(z)*theta_2(21z))^4.

The programs for A028652, there is no canonical definition to state claims against.
-/

/-! ## A028652.P15529974720023687709

`A028648(A042948(n))*A040844(∑[40*n]+1)`
-/

namespace A028652.P15529974720023687709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (A042948 n).toNat * A040844 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A028652.P15529974720023687709

/-! ## A028652.P12619462964982567492

`A028648(A042948(n))*A040852(∑[40*n]+1)`
-/

namespace A028652.P12619462964982567492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (A042948 n).toNat * A040852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A028652.P12619462964982567492

/-! ## A028652.P4525469523719796039

`A028648(A042948(n))*A061347(∑[40*n]+1)`
-/

namespace A028652.P4525469523719796039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (A042948 n).toNat * A061347 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A028652.P4525469523719796039

/-! ## A028652.P12392956392715085184

`A028648(A042948(n))%A000203(A000045(n+6))`
-/

namespace A028652.P12392956392715085184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028648 (A042948 n).toNat) (A000203 (A000045 (n + 6)).toNat)

end

end A028652.P12392956392715085184

/-! ## A028652.P6305392891019929888

`A028656(2*n+1)+A028656(A135381(2*n))`
-/

namespace A028652.P6305392891019929888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028656 (2 * n + 1) + A028656 (A135381 (2 * n)).toNat

end

end A028652.P6305392891019929888

/-!
# A028653: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z)).

The programs for A028653, there is no canonical definition to state claims against.
-/

/-! ## A028653.P4065670802738952962

`A028645(A159966(n))*A168046(A097519(2*n+3))`
-/

namespace A028653.P4065670802738952962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (A159966 n).toNat * A168046 (A097519 (2 * n + 3)).toNat

end

end A028653.P4065670802738952962

/-! ## A028653.P17069540453823862382

`A028645(A159966(n))%(A275332(n)+4)`
-/

namespace A028653.P17069540453823862382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028645 (A159966 n).toNat) (A275332 n + 4)

end

end A028653.P17069540453823862382

/-! ## A028653.P1602331943994366526

`A028645(A159966(n))*A361338(A275332(n))`
-/

namespace A028653.P1602331943994366526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (A159966 n).toNat * A361338 (A275332 n).toNat

end

end A028653.P1602331943994366526

/-! ## A028653.P14391891433008323967

`A028645(A159966(n))*A158052(A023545(n+1))`
-/

namespace A028653.P14391891433008323967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (A159966 n).toNat * A158052 (A023545 (n + 1)).toNat

end

end A028653.P14391891433008323967

/-! ## A028653.P1122679456905175922

`A028645(A159966(n))^A014963(A304839(n+1))`
-/

namespace A028653.P1122679456905175922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028645 (A159966 n).toNat : ℚ) ^ (A014963 (A304839 (n + 1)).toNat : ℤ)

end

end A028653.P1122679456905175922

/-! ## A028653.P4758263532137724438

`A028645(A159966(n))*A158052(A158058(n+1))`
-/

namespace A028653.P4758263532137724438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (A159966 n).toNat * A158052 (A158058 (n + 1)).toNat

end

end A028653.P4758263532137724438

/-!
# A028654: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z))^2.

The programs for A028654, there is no canonical definition to state claims against.
-/

/-! ## A028654.P1154642794100484613

`and(A061799(n+1), A162351(A028639(n)))`
-/

namespace A028654.P1154642794100484613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061799 (n + 1)) (A162351 (A028639 n).toNat)

end

end A028654.P1154642794100484613

/-! ## A028654.P5300148906722670536

`and(A003056(A081489(n+1)), A028622(n))`
-/

namespace A028654.P5300148906722670536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 (A081489 (n + 1)).toNat) (A028622 n)

end

end A028654.P5300148906722670536

/-! ## A028654.P11571635205740164146

`and(A028622(n), A031886(A166661(n+1)))`
-/

namespace A028654.P11571635205740164146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028622 n) (A031886 (A166661 (n + 1)).toNat)

end

end A028654.P11571635205740164146

/-! ## A028654.P9240864811712783781

`and(A028622(n), A321197(n))`
-/

namespace A028654.P9240864811712783781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028622 n) (A321197 n)

end

end A028654.P9240864811712783781

/-! ## A028654.P12942547888917734870

`and(A028622(n), A383497(n))`
-/

namespace A028654.P12942547888917734870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028622 n) (A383497 n)

end

end A028654.P12942547888917734870

/-!
# A028655: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z))^3.

The programs for A028655, there is no canonical definition to state claims against.
-/

/-! ## A028655.P9999805786965240400

`A028663(A120634(n)%A084644(n+1))`
-/

namespace A028655.P9999805786965240400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (Int.tmod (A120634 n) (A084644 (n + 1))).toNat

end

end A028655.P9999805786965240400

/-! ## A028655.P16871491536490590143

`A028663(A120634(n))%(A008996(n+1)+1)`
-/

namespace A028655.P16871491536490590143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028663 (A120634 n).toNat) (A008996 (n + 1) + 1)

end

end A028655.P16871491536490590143

/-! ## A028655.P14145217300876593474

`A028663(A120634(n))+A000038(A008996(n+1))`
-/

namespace A028655.P14145217300876593474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (A120634 n).toNat + A000038 (A008996 (n + 1)).toNat

end

end A028655.P14145217300876593474

/-! ## A028655.P16623962832942744044

`A028663(A120634(n))^(A000038(A007089(n))+1)`
-/

namespace A028655.P16623962832942744044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028663 (A120634 n).toNat : ℚ) ^ (A000038 (A007089 n).toNat + 1 : ℤ)

end

end A028655.P16623962832942744044

/-! ## A028655.P13212850554809664345

`A028663(A120634(n))+A000038(A007089(n+1))`
-/

namespace A028655.P13212850554809664345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (A120634 n).toNat + A000038 (A007089 (n + 1)).toNat

end

end A028655.P13212850554809664345

/-! ## A028655.P18286309315823292861

`A028663(A120634(n))*A329314(A328739(n+1))`
-/

namespace A028655.P18286309315823292861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (A120634 n).toNat * A329314 (A328739 (n + 1)).toNat

end

end A028655.P18286309315823292861

/-! ## A028655.P18112594051149742519

`A028663(A120634(n))%A101858(n+1)²`
-/

namespace A028655.P18112594051149742519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028663 (A120634 n).toNat) (A101858 (n + 1) ^ 2)

end

end A028655.P18112594051149742519

/-! ## A028655.P3340572110002380205

`A005171(A008459(n))*A028663(A120634(n))`
-/

namespace A028655.P3340572110002380205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A008459 n).toNat * A028663 (A120634 n).toNat

end

end A028655.P3340572110002380205

/-! ## A028655.P13777008421852085667

`A005171(A008459(n+1))+A028663(A120634(n))-1`
-/

namespace A028655.P13777008421852085667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A008459 (n + 1)).toNat + (A028663 (A120634 n).toNat - 1)

end

end A028655.P13777008421852085667

/-!
# A028656: Expansion of (theta_3(z)*theta_3(22z)+theta_2(z)*theta_2(22z))^4.

The programs for A028656, there is no canonical definition to state claims against.
-/

/-! ## A028656.P17231974268395103070

`A028664(A120634(n))%A175552(3*n+4)`
-/

namespace A028656.P17231974268395103070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028664 (A120634 n).toNat) (A175552 (3 * n + 4))

end

end A028656.P17231974268395103070

/-! ## A028656.P15306257203886895389

`A028648(A159966(n)%A175552(3*n+4))`
-/

namespace A028656.P15306257203886895389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (Int.tmod (A159966 n) (A175552 (3 * n + 4))).toNat

end

end A028656.P15306257203886895389

/-! ## A028656.P14235656539867444844

`A028648(A159966(n)%A054682(n+1))`
-/

namespace A028656.P14235656539867444844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (Int.tmod (A159966 n) (A054682 (n + 1))).toNat

end

end A028656.P14235656539867444844

/-! ## A028656.P17029100361785122157

`A028648(A159966(n)%A120937(n))`
-/

namespace A028656.P17029100361785122157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (Int.tmod (A159966 n) (A120937 n)).toNat

end

end A028656.P17029100361785122157

/-! ## A028656.P18046516196297885251

`A028648(A159966(n))%A343729(n+1)`
-/

namespace A028656.P18046516196297885251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028648 (A159966 n).toNat) (A343729 (n + 1))

end

end A028656.P18046516196297885251

/-!
# A028657: Triangle read by rows: T(n,k) = number of n-node graphs with k nodes in distinguished bipartite block, k = 0..n.

The programs for A028657, there is no canonical definition to state claims against.
-/

/-! ## A028657.P18406875396932686209

`A331995(A086617(n))`
-/

namespace A028657.P18406875396932686209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A086617 n).toNat

end

end A028657.P18406875396932686209

/-! ## A028657.P11294008283068187287

`A343380(A088699(n))+A088699(n)`
-/

namespace A028657.P11294008283068187287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A088699 n).toNat + A088699 n

end

end A028657.P11294008283068187287

/-! ## A028657.P1902742461605321024

`A343380(A094526(n))+A094526(n)`
-/

namespace A028657.P1902742461605321024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A094526 n).toNat + A094526 n

end

end A028657.P1902742461605321024

/-! ## A028657.P3651182129658174705

`A287929(A088699(n)%A078861(n+1))`
-/

namespace A028657.P3651182129658174705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287929 (Int.tmod (A088699 n) (A078861 (n + 1))).toNat

end

end A028657.P3651182129658174705

/-! ## A028657.P5500756005795571393

`A105209(A154979(n))`
-/

namespace A028657.P5500756005795571393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A154979 n).toNat

end

end A028657.P5500756005795571393

/-!
# A028658: Expansion of (theta_3(z)*theta_3(23z) + theta_2(z)*theta_2(23z))^2.

The programs for A028658, there is no canonical definition to state claims against.
-/

/-! ## A028658.P1583781752708198657

`(A253185(2*n)+A253185(4*n))/2`
-/

namespace A028658.P1583781752708198657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253185 (2 * n) + A253185 (4 * n) : ℚ) / 2

end

end A028658.P1583781752708198657

/-! ## A028658.P5389319780281929188

`A004525(A253185(2*n)+A253185(4*n))`
-/

namespace A028658.P5389319780281929188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A253185 (2 * n) + A253185 (4 * n)).toNat

end

end A028658.P5389319780281929188

/-! ## A028658.P7591501021493597809

`A006370(A253185(2*n)+A253185(4*n))`
-/

namespace A028658.P7591501021493597809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A253185 (2 * n) + A253185 (4 * n)).toNat

end

end A028658.P7591501021493597809

/-!
# A028660: Expansion of (theta_3(z)*theta_3(23z)+theta_2(z)*theta_2(23z))^4.

The programs for A028660, there is no canonical definition to state claims against.
-/

/-! ## A028660.P15182294120971105591

`A289814(A241455(n+1))+A000118(n)`
-/

namespace A028660.P15182294120971105591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A241455 (n + 1)).toNat + A000118 n

end

end A028660.P15182294120971105591

/-! ## A028660.P2473044782984257771

`A000118(eq[A300978(2*n), A328220(n)])`
-/

namespace A028660.P2473044782984257771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300978 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028660.P2473044782984257771

/-! ## A028660.P11378599963716054505

`A000118(A165878(3*n+2)+n)`
-/

namespace A028660.P11378599963716054505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A165878 (3 * n + 2) + (n : ℤ)).toNat

end

end A028660.P11378599963716054505

/-!
# A028661: Expansion of (theta_3(z)*theta_3(24z)+theta_2(z)*theta_2(24z)) in powers of q^(1/4).

The programs for A028661, there is no canonical definition to state claims against.
-/

/-! ## A028661.P14968212827280062846

`and(A010703(n²), A028663(n))`
-/

namespace A028661.P14968212827280062846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010703 (n ^ 2)) (A028663 n)

end

end A028661.P14968212827280062846

/-! ## A028661.P2010634362933021057

`and(A010704(n²), A028663(n))`
-/

namespace A028661.P2010634362933021057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010704 (n ^ 2)) (A028663 n)

end

end A028661.P2010634362933021057

/-! ## A028661.P13856983844673857866

`and(A010705(n²), A028663(n))`
-/

namespace A028661.P13856983844673857866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010705 (n ^ 2)) (A028663 n)

end

end A028661.P13856983844673857866

/-! ## A028661.P16742377758803589959

`and(A028663(n), A092910(n²))`
-/

namespace A028661.P16742377758803589959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A092910 (n ^ 2))

end

end A028661.P16742377758803589959

/-! ## A028661.P13300558938287038730

`and(A028663(n), A103947(n²))`
-/

namespace A028661.P13300558938287038730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A103947 (n ^ 2))

end

end A028661.P13300558938287038730

/-! ## A028661.P12112008716567508266

`and(A028663(n), A106469(n²))`
-/

namespace A028661.P12112008716567508266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A106469 (n ^ 2))

end

end A028661.P12112008716567508266

/-! ## A028661.P11403354770678861642

`and(A028663(n), A164356(n²))`
-/

namespace A028661.P11403354770678861642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A164356 (n ^ 2))

end

end A028661.P11403354770678861642

/-! ## A028661.P17431752865103872839

`and(A028663(n), A174978(n))`
-/

namespace A028661.P17431752865103872839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A174978 n)

end

end A028661.P17431752865103872839

/-! ## A028661.P6927247699456005890

`and(A005811(A019565(n)), A028663(n))`
-/

namespace A028661.P6927247699456005890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (A019565 n).toNat) (A028663 n)

end

end A028661.P6927247699456005890

/-!
# A028662: Expansion of (theta_3(z)*theta_3(24z)+theta_2(z)*theta_2(24z))^2.

The programs for A028662, there is no canonical definition to state claims against.
-/

/-! ## A028662.P17150570891174615232

`and(A028630(n), A162576(n+1))`
-/

namespace A028662.P17150570891174615232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028630 n) (A162576 (n + 1))

end

end A028662.P17150570891174615232

/-! ## A028662.P1711697612651966265

`and(A028630(n), A127335(A121757(n)))`
-/

namespace A028662.P1711697612651966265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028630 n) (A127335 (A121757 n).toNat)

end

end A028662.P1711697612651966265

/-! ## A028662.P1039052438331235760

`and(A003363(A056151(n+1)), A028630(n))`
-/

namespace A028662.P1039052438331235760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003363 (A056151 (n + 1)).toNat) (A028630 n)

end

end A028662.P1039052438331235760

/-! ## A028662.P18295165798400960438

`and(A028630(n), A176150(n))`
-/

namespace A028662.P18295165798400960438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028630 n) (A176150 n)

end

end A028662.P18295165798400960438

/-! ## A028662.P7479516478363802804

`and(A028630(n), A273812(n+1))`
-/

namespace A028662.P7479516478363802804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028630 n) (A273812 (n + 1))

end

end A028662.P7479516478363802804

/-!
# A028663: Expansion of (theta_3(z)*theta_3(24z)+theta_2(z)*theta_2(24z))^3.

The programs for A028663, there is no canonical definition to state claims against.
-/

/-! ## A028663.P3692294884166600361

`A028639(A057889(n))%A131452(A144353(n+1))`
-/

namespace A028663.P3692294884166600361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028639 (A057889 n).toNat) (A131452 (A144353 (n + 1)).toNat)

end

end A028663.P3692294884166600361

/-! ## A028663.P2493478411510125376

`A028639(A057889(n))^A014963(3*n+2)`
-/

namespace A028663.P2493478411510125376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028639 (A057889 n).toNat : ℚ) ^ (A014963 (3 * n + 2) : ℤ)

end

end A028663.P2493478411510125376

/-! ## A028663.P14968983345799909062

`A028639(A057889(n))%A237694(A237718(n))`
-/

namespace A028663.P14968983345799909062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028639 (A057889 n).toNat) (A237694 (A237718 n).toNat)

end

end A028663.P14968983345799909062

/-! ## A028663.P6911659309930121025

`A004013(lcm(2, A135381(n)))`
-/

namespace A028663.P6911659309930121025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (Int.lcm 2 (A135381 n))

end

end A028663.P6911659309930121025

/-! ## A028663.P5408418083571135450

`A004013(A135381(n))*A133872(n)`
-/

namespace A028663.P5408418083571135450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A135381 n).toNat * A133872 n

end

end A028663.P5408418083571135450

/-!
# A028665: Galois numbers for p=3; order of group AGL(n,3).

The programs for A028665, there is no canonical definition to state claims against.
-/

/-! ## A028665.P2646237758769000110

`2*C(3^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A028665.P2646237758769000110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.choose (3 ^ n) 2 * a (n - 1)

end

end A028665.P2646237758769000110

/-! ## A028665.P5493260339347935976

`(9^n-3^n)*a(n-1)` with `a(0)=1`
-/

namespace A028665.P5493260339347935976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((9 ^ n : ℤ) - (3 ^ n : ℤ)) * a (n - 1)

end

end A028665.P5493260339347935976

/-! ## A028665.P13220985810434544079

`3^n*A053290(n)`
-/

namespace A028665.P13220985810434544079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A053290 n

end

end A028665.P13220985810434544079

/-! ## A028665.P17784475937059090785

`a(n-1)*A059410(n)` with `a(0)=1`
-/

namespace A028665.P17784475937059090785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A059410 n

end

end A028665.P17784475937059090785

/-!
# A028666: a(n) = order of the orthogonal group O_n(2) if n is odd or O^(+)_n(2) if n is even.

The programs for A028666, there is no canonical definition to state claims against.
-/

/-! ## A028666.P6436645089647726954

`a(n-1)*A071930(2*n+1)` with `a(0)=1`
-/

namespace A028666.P6436645089647726954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A071930 (2 * n + 1)

end

end A028666.P6436645089647726954

/-! ## A028666.P15897181879930344842

`A000079(n)*A003923(n)`
-/

namespace A028666.P15897181879930344842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A003923 n

end

end A028666.P15897181879930344842

/-! ## A028666.P15854731470634946602

`record[A363919(n+1)]*A027637(n)`
-/

namespace A028666.P15854731470634946602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A027637 n

end

end A028666.P15854731470634946602

/-! ## A028666.P855308036622346875

`A011782(2*n+1)*A053291(n)`
-/

namespace A028666.P855308036622346875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) * A053291 n

end

end A028666.P855308036622346875

/-!
# A028667: Galois numbers for p=5; order of group AGL(n,5).

The programs for A028667, there is no canonical definition to state claims against.
-/

/-! ## A028667.P2065366042849764309

`∏[5^n*ceil(abs(5^n-ϕ))]`
-/

namespace A028667.P2065366042849764309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * ⌈|(5 ^ n : ℝ) - Real.goldenRatio|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028667.P2065366042849764309

/-! ## A028667.P17978933015181036684

`((5^n)²-5^n)*a(n-1)` with `a(0)=1`
-/

namespace A028667.P17978933015181036684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((5 ^ n) ^ 2 : ℤ) - (5 ^ n : ℤ)) * a (n - 1)

end

end A028667.P17978933015181036684

/-! ## A028667.P15875222375457428922

`5^n*A053292(n)`
-/

namespace A028667.P15875222375457428922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A053292 n

end

end A028667.P15875222375457428922

/-! ## A028667.P7711106496107600615

`A027872(n)*A109345(n+1)`
-/

namespace A028667.P7711106496107600615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027872 n * A109345 (n + 1)

end

end A028667.P7711106496107600615

/-! ## A028667.P9021552676348607283

`A020729(n)*A053292(n)/2`
-/

namespace A028667.P9021552676348607283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020729 n * A053292 n : ℚ) / 2

end

end A028667.P9021552676348607283

/-!
# A028668: Pseudo Galois numbers for d=6.

The programs for A028668, there is no canonical definition to state claims against.
-/

/-! ## A028668.P15716380235432583823

`2*C(6^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A028668.P15716380235432583823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.choose (6 ^ n) 2 * a (n - 1)

end

end A028668.P15716380235432583823

/-! ## A028668.P8327589379836778687

`6^n*A220790(n)`
-/

namespace A028668.P8327589379836778687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A220790 n

end

end A028668.P8327589379836778687

/-! ## A028668.P14180328680138280821

`∏[A000400(n)]*A027873(n)`
-/

namespace A028668.P14180328680138280821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A027873 n

end

end A028668.P14180328680138280821

/-! ## A028668.P17663836766819725356

`A027873(n)*A109354(n+1)`
-/

namespace A028668.P17663836766819725356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027873 n * A109354 (n + 1)

end

end A028668.P17663836766819725356

/-!
# A028669: 

The programs for A028669, there is no canonical definition to state claims against.
-/

/-! ## A028669.P10610355451523786099

`2*C(7^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A028669.P10610355451523786099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.choose (7 ^ n) 2 * a (n - 1)

end

end A028669.P10610355451523786099

/-! ## A028669.P16767001026210534411

`A027875(n)*A109493(n+1)`
-/

namespace A028669.P16767001026210534411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027875 n * A109493 (n + 1)

end

end A028669.P16767001026210534411

/-! ## A028669.P16353401577108462379

`record[A165828(n+1)]*A053293(n)`
-/

namespace A028669.P16353401577108462379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A053293 n

end

end A028669.P16353401577108462379

/-! ## A028669.P10360560438399199781

`A053293(n)*A165828(A000079(n))`
-/

namespace A028669.P10360560438399199781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053293 n * A165828 (A000079 n).toNat

end

end A028669.P10360560438399199781

/-! ## A028669.P9065815749045580525

`A053293(n+1)/A027875(n+1)*A027875(n)`
-/

namespace A028669.P9065815749045580525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053293 (n + 1) : ℚ) / (A027875 (n + 1) : ℚ) * (A027875 n : ℚ)

end

end A028669.P9065815749045580525

/-!
# A028670: 

The programs for A028670, there is no canonical definition to state claims against.
-/

/-! ## A028670.P15092128875304073494

`8^n*A052496(n)`
-/

namespace A028670.P15092128875304073494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A052496 n

end

end A028670.P15092128875304073494

/-!
# A028671: 

The programs for A028671, there is no canonical definition to state claims against.
-/

/-! ## A028671.P17129229628739681091

`∏[A001019(n)]*A027877(n)`
-/

namespace A028671.P17129229628739681091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A027877 n

end

end A028671.P17129229628739681091

/-! ## A028671.P11712490984171770235

`A027877(n)*A053764(n+1)`
-/

namespace A028671.P11712490984171770235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027877 n * A053764 (n + 1)

end

end A028671.P11712490984171770235

/-!
# A028672: 

The programs for A028672, there is no canonical definition to state claims against.
-/

/-! ## A028672.P12204313907144526220

`((10^n)²-10^n)*a(n-1)` with `a(0)=1`
-/

namespace A028672.P12204313907144526220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)) * a (n - 1)

end

end A028672.P12204313907144526220

/-! ## A028672.P3844766816677491901

`a(n-1)*A276352(n)` with `a(0)=1`
-/

namespace A028672.P3844766816677491901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A276352 n

end

end A028672.P3844766816677491901

/-! ## A028672.P2866542372305183461

`2*a(n-1)*A037182(n)` with `a(0)=1`
-/

namespace A028672.P2866542372305183461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A037182 n

end

end A028672.P2866542372305183461

/-!
# A028689: Sorted Galois numbers.

The programs for A028689, there is no canonical definition to state claims against.
-/

/-! ## A028689.P2953832595591786563

`A340143(A340076(n+1)^3)`
-/

namespace A028689.P2953832595591786563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340143 (A340076 (n + 1) ^ 3).toNat

end

end A028689.P2953832595591786563

/-! ## A028689.P4020889811971349656

`A340146(A340076(n+1)^3)`
-/

namespace A028689.P4020889811971349656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340146 (A340076 (n + 1) ^ 3).toNat

end

end A028689.P4020889811971349656

/-! ## A028689.P3961422956619131613

`A340143(A340150(n+1)^3)`
-/

namespace A028689.P3961422956619131613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340143 (A340150 (n + 1) ^ 3).toNat

end

end A028689.P3961422956619131613

/-! ## A028689.P15196317702878192190

`A340146(A340150(n+1)^3)`
-/

namespace A028689.P15196317702878192190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340146 (A340150 (n + 1) ^ 3).toNat

end

end A028689.P15196317702878192190

/-! ## A028689.P5513307749191306765

`record[A225650(record[A379010(n+1)])]`
-/

namespace A028689.P5513307749191306765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028689.P5513307749191306765

/-!
# A028690: Sorted Galois and Pseudo-Galois numbers.

The programs for A028690, there is no canonical definition to state claims against.
-/

/-! ## A028690.P12999090055265460174

`A004277(eq[A014430(n), A171307(n+1)])`
-/

namespace A028690.P12999090055265460174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028690.P12999090055265460174

/-! ## A028690.P13671563307368199058

`A004277(eq[A277239(n), A299561(n+1)])`
-/

namespace A028690.P13671563307368199058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028690.P13671563307368199058

/-! ## A028690.P9826836538245814289

`A004277(eq[A297321(n), A299561(n+1)])`
-/

namespace A028690.P9826836538245814289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028690.P9826836538245814289

/-! ## A028690.P5139718129378689594

`A004277(eq[A133819(n+1), A298589(n+1)])`
-/

namespace A028690.P5139718129378689594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028690.P5139718129378689594

/-! ## A028690.P5126829886757037365

`eq[A005132(A046205(n+4)), A005132(n)]`
-/

namespace A028690.P5126829886757037365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A046205 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028690.P5126829886757037365

/-!
# A028691: Least positive value of k for which the n-th sorted Galois number divides k!.

The programs for A028691, there is no canonical definition to state claims against.
-/

/-! ## A028691.P1423194240988044110

`gcd(A028689(n+1), A072480(A028689(n+1)))`
-/

namespace A028691.P1423194240988044110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028689 (n + 1)) (A072480 (A028689 (n + 1)).toNat)

end

end A028691.P1423194240988044110

/-! ## A028691.P10165129057880076201

`A028689(A028310(n)+1)-A072480(A028689(n+1))`
-/

namespace A028691.P10165129057880076201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028689 (A028310 n + 1).toNat - A072480 (A028689 (n + 1)).toNat

end

end A028691.P10165129057880076201

/-! ## A028691.P6460707980525577307

`A345931(A028689(n+1)/A238303(n²))`
-/

namespace A028691.P6460707980525577307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (SequenceMachineLib.roundAway ((A028689 (n + 1) : ℚ) / (A238303 (n ^ 2) : ℚ))).toNat

end

end A028691.P6460707980525577307

/-! ## A028691.P10791306941465929826

`A345931(A028689(n+1)/A276502(n+1))`
-/

namespace A028691.P10791306941465929826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (SequenceMachineLib.roundAway ((A028689 (n + 1) : ℚ) / (A276502 (n + 1) : ℚ))).toNat

end

end A028691.P10791306941465929826

/-! ## A028691.P18173357574246248435

`A345931(floor(A028689(n+1)/A238303(n)))`
-/

namespace A028691.P18173357574246248435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 ⌊(A028689 (n + 1) : ℚ) / (A238303 n : ℚ)⌋.toNat

end

end A028691.P18173357574246248435

/-!
# A028692: 23-factorial numbers.

The programs for A028692, there is no canonical definition to state claims against.
-/

/-! ## A028692.P8104050912080762886

`(23^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A028692.P8104050912080762886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((23 ^ n : ℤ) - 1) * a (n - 1)

end

end A028692.P8104050912080762886

/-! ## A028692.P2399279255781726285

`∏[A009967(n)-A001221(A165844(n+1))]`
-/

namespace A028692.P2399279255781726285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 n - A001221 (A165844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028692.P2399279255781726285

/-!
# A028693: 24-factorial numbers.

The programs for A028693, there is no canonical definition to state claims against.
-/

/-! ## A028693.P7697743688656383974

`(A009968(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A028693.P7697743688656383974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A009968 n - 1) * a (n - 1)

end

end A028693.P7697743688656383974

/-!
# A028694: 25-factorial numbers.

The programs for A028694, there is no canonical definition to state claims against.
-/

/-! ## A028694.P17804591419487803578

`(25^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A028694.P17804591419487803578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((25 ^ n : ℤ) - 1) * a (n - 1)

end

end A028694.P17804591419487803578

/-! ## A028694.P6702024498460676801

`∏[A103455(2*n)]`
-/

namespace A028694.P6702024498460676801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103455 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028694.P6702024498460676801

/-! ## A028694.P4502837356356831588

`∏[25^n-A178334(n)]`
-/

namespace A028694.P4502837356356831588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 ^ n : ℤ) - A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028694.P4502837356356831588

/-! ## A028694.P2364064657375240334

`∏[xor(A009969(n), A178334(n))]`
-/

namespace A028694.P2364064657375240334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009969 n) (A178334 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A028694.P2364064657375240334

/-!
# A028696: Expansion of (theta_3(z^4)^3 + theta_2(z^4)^3)^3.

The programs for A028696, there is no canonical definition to state claims against.
-/

/-! ## A028696.P16824978507964074331

`A053824(A110130(n))*A055302(n+1)`
-/

namespace A028696.P16824978507964074331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A110130 n).toNat * A055302 (n + 1)

end

end A028696.P16824978507964074331

/-! ## A028696.P18121854341417089031

`A240805(n)*A353835(A283847(n+3))`
-/

namespace A028696.P18121854341417089031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240805 n * A353835 (A283847 (n + 3)).toNat

end

end A028696.P18121854341417089031

/-! ## A028696.P6201939618014909747

`and(A252660(n+1)-n, A104601(3*n+1))`
-/

namespace A028696.P6201939618014909747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A252660 (n + 1) - (n : ℤ)) (A104601 (3 * n + 1))

end

end A028696.P6201939618014909747

/-!
# A028697: Expansion of (theta_3(z^4)^3 + theta_2(z^4)^3)^4.

The programs for A028697, there is no canonical definition to state claims against.
-/

/-! ## A028697.P8581191309178016864

`A028579(n)*A061394(A029857(n+1))`
-/

namespace A028697.P8581191309178016864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028579 n * A061394 (A029857 (n + 1)).toNat

end

end A028697.P8581191309178016864

/-! ## A028697.P9862905488834164228

`A028630(lcm(n, A183467(n+1)))`
-/

namespace A028697.P9862905488834164228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (Int.lcm (n : ℤ) (A183467 (n + 1)))

end

end A028697.P9862905488834164228

/-! ## A028697.P8229072343875146813

`and(A107008(n+1), A110768(A051935(2*n+1)))`
-/

namespace A028697.P8229072343875146813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107008 (n + 1)) (A110768 (A051935 (2 * n + 1)).toNat)

end

end A028697.P8229072343875146813

/-!
# A028698: Expansion of (theta_3(z)*theta_3(2z)*theta_3(4z)+theta_2(z)*theta_2(2z)*theta_2(4z)).

The programs for A028698, there is no canonical definition to state claims against.
-/

/-! ## A028698.P4226247498439196474

`and(A000689(n), A005900(A084080(n)))`
-/

namespace A028698.P4226247498439196474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000689 n) (A005900 (A084080 n).toNat)

end

end A028698.P4226247498439196474

/-! ## A028698.P12485236038866453447

`and(A000689(n), A065033(A214932(n)))`
-/

namespace A028698.P12485236038866453447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000689 n) (A065033 (A214932 n).toNat)

end

end A028698.P12485236038866453447

/-! ## A028698.P12909084767774966222

`and(A027245(A004475(n)), A083948(n))`
-/

namespace A028698.P12909084767774966222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027245 (A004475 n).toNat) (A083948 n)

end

end A028698.P12909084767774966222

/-! ## A028698.P15841553143907796729

`and(A000196(A208960(n+1)), A083948(n))`
-/

namespace A028698.P15841553143907796729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000196 (A208960 (n + 1)).toNat) (A083948 n)

end

end A028698.P15841553143907796729

/-!
# A028699: Expansion of (theta_3(z)*theta_3(2z)*theta_3(4z)+theta_2(z)*theta_2(2z)*theta_2(4z))^2.

The programs for A028699, there is no canonical definition to state claims against.
-/

/-! ## A028699.P3316525302611077723

`and(A058717(n+1)², A166633(A064476(n+1)))`
-/

namespace A028699.P3316525302611077723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058717 (n + 1) ^ 2) (A166633 (A064476 (n + 1)).toNat)

end

end A028699.P3316525302611077723

/-! ## A028699.P6179405434908383815

`and(A145366(3*(n+1)), A166633(A064476(n+1)))`
-/

namespace A028699.P6179405434908383815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145366 (3 * (n + 1))) (A166633 (A064476 (n + 1)).toNat)

end

end A028699.P6179405434908383815

/-! ## A028699.P4650163657174070672

`and(∏{e}[n+1, #+1]², A326205(n))`
-/

namespace A028699.P4650163657174070672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 : ℕ) : ℤ) (A326205 n)

end

end A028699.P4650163657174070672

/-! ## A028699.P16604976898818510813

`and(A000005(n+1)², A326205(n))`
-/

namespace A028699.P16604976898818510813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1) ^ 2) (A326205 n)

end

end A028699.P16604976898818510813

/-! ## A028699.P3668631971397642424

`and(A035116(n+1), A328596(2^floor(n/2)))`
-/

namespace A028699.P3668631971397642424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035116 (n + 1)) (A328596 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat)

end

end A028699.P3668631971397642424

