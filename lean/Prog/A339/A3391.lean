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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A339100: a(n) = GCD({(2*n-k)*T(n,k)+(k+1)*T(n,k+1), k=0..n}), where T(n,k) stands for A214406 (the second-order Eulerian numbers of type B).

The programs for A339100, there is no canonical definition to state claims against.
-/

/-! ## A339100.P4612383598734097371

`gcd(A081251(n+1), A344918(n))`
-/

namespace A339100.P4612383598734097371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081251 (n + 1)) (A344918 n)

end

end A339100.P4612383598734097371

/-! ## A339100.P15237087284682174613

`ceil(A344918(n)/A038500(n+1))`
-/

namespace A339100.P15237087284682174613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344918 n : ℚ) / (A038500 (n + 1) : ℚ)⌉

end

end A339100.P15237087284682174613

/-! ## A339100.P11951009053692991595

`A344918(n)/A038500(A302034(n+1))`
-/

namespace A339100.P11951009053692991595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344918 n : ℚ) / (A038500 (A302034 (n + 1)).toNat : ℚ)

end

end A339100.P11951009053692991595

/-! ## A339100.P13511106409840661126

`A344918(n)/gcd(A014681(n), A038500(n+1))`
-/

namespace A339100.P13511106409840661126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344918 n : ℚ) / (Int.gcd (A014681 n) (A038500 (n + 1)) : ℚ)

end

end A339100.P13511106409840661126

/-! ## A339100.P15842079829022352248

`(A344918(n)/A038500(n+1))^log2(A000034(n))`
-/

namespace A339100.P15842079829022352248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A344918 n : ℚ) / (A038500 (n + 1) : ℚ) : ℝ) ^ (Real.logb 2 (A000034 n : ℝ))

end

end A339100.P15842079829022352248

/-! ## A339100.P14204545543717065026

`(A344918(n)/A038500(n+1))^Δ[A004526(n)]`
-/

namespace A339100.P14204545543717065026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A344918 n : ℚ) / (A038500 (n + 1) : ℚ)) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A339100.P14204545543717065026

/-! ## A339100.P5007334408666057570

`(A344918(n)/A038500(n+1))^Δ[A008619(n)]`
-/

namespace A339100.P5007334408666057570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A344918 n : ℚ) / (A038500 (n + 1) : ℚ)) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A339100.P5007334408666057570

/-! ## A339100.P13106793711267926930

`A344918(n)/A038500(n+1)%A027760(n+1)`
-/

namespace A339100.P13106793711267926930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344918 n : ℚ) / (Int.tmod (A038500 (n + 1)) (A027760 (n + 1)) : ℚ)

end

end A339100.P13106793711267926930

/-! ## A339100.P17348092749915926638

`(A344918(n)/A038500(n+1))^(1-A109613(n)+n)`
-/

namespace A339100.P17348092749915926638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A344918 n : ℚ) / (A038500 (n + 1) : ℚ)) ^ (1 - A109613 n + (n : ℤ) : ℤ)

end

end A339100.P17348092749915926638

/-!
# A339101: Number of compositions (ordered partitions) of n into distinct parts >= 3.

The programs for A339101, there is no canonical definition to state claims against.
-/

/-! ## A339101.P16711113490417947655

`A339164(n)+A339102(n)`
-/

namespace A339101.P16711113490417947655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339164 n + A339102 n

end

end A339101.P16711113490417947655

/-! ## A339101.P13607397906869646701

`A032022(n)-A339163(n)`
-/

namespace A339101.P13607397906869646701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032022 n - A339163 n

end

end A339101.P13607397906869646701

/-! ## A339101.P13643560675066339211

`A032020(n)-(A339163(n)+A339162(n))`
-/

namespace A339101.P13643560675066339211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - (A339163 n + A339162 n)

end

end A339101.P13643560675066339211

/-! ## A339101.P719323628772464896

`2*A032020(n)-A032006(n)-A339163(n)`
-/

namespace A339101.P719323628772464896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032020 n - A032006 n - A339163 n

end

end A339101.P719323628772464896

/-! ## A339101.P10001760945457960022

`A339103(n)+A339165(n)+A339164(n)`
-/

namespace A339101.P10001760945457960022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n + (A339165 n + A339164 n)

end

end A339101.P10001760945457960022

/-! ## A339101.P8035482190815735987

`A339164(n)+A339104(n)+A339166(n)+A339165(n)`
-/

namespace A339101.P8035482190815735987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339164 n + (A339104 n + (A339166 n + A339165 n))

end

end A339101.P8035482190815735987

/-!
# A339102: Number of compositions (ordered partitions) of n into distinct parts >= 4.

The programs for A339102, there is no canonical definition to state claims against.
-/

/-! ## A339102.P2724220691849410459

`A339101(n)-A339164(n)`
-/

namespace A339102.P2724220691849410459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n - A339164 n

end

end A339102.P2724220691849410459

/-! ## A339102.P2525642817999048

`A032022(n)-(A339164(n)+A339163(n))`
-/

namespace A339102.P2525642817999048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032022 n - (A339164 n + A339163 n)

end

end A339102.P2525642817999048

/-! ## A339102.P7252823821162376307

`A339101(n)+A057428(n)*A339164(n)`
-/

namespace A339102.P7252823821162376307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n + A057428 n * A339164 n

end

end A339102.P7252823821162376307

/-! ## A339102.P11924547157085741366

`A339165(n)+A339103(n)`
-/

namespace A339102.P11924547157085741366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339165 n + A339103 n

end

end A339102.P11924547157085741366

/-! ## A339102.P10865566047181454033

`A339104(n)+A339166(n)+A339165(n)`
-/

namespace A339102.P10865566047181454033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n + (A339166 n + A339165 n)

end

end A339102.P10865566047181454033

/-! ## A339102.P11385490051376259141

`A339165(n)+A339108(n)+A339169(n)+A339166(n)`
-/

namespace A339102.P11385490051376259141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339165 n + (A339108 n + (A339169 n + A339166 n))

end

end A339102.P11385490051376259141

/-!
# A339103: Number of compositions (ordered partitions) of n into distinct parts >= 5.

The programs for A339103, there is no canonical definition to state claims against.
-/

/-! ## A339103.P16871661834431113587

`A339166(n)+A339104(n)`
-/

namespace A339103.P16871661834431113587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 n + A339104 n

end

end A339103.P16871661834431113587

/-! ## A339103.P6736068332447604780

`A339108(n)+A339169(n)+A339166(n)`
-/

namespace A339103.P6736068332447604780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n + (A339169 n + A339166 n)

end

end A339103.P6736068332447604780

/-! ## A339103.P8700713692596946808

`A339166(n)+A339109(n)+A339170(n)+A339169(n)`
-/

namespace A339103.P8700713692596946808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 n + (A339109 n + (A339170 n + A339169 n))

end

end A339103.P8700713692596946808

/-! ## A339103.P4038076851922185431

`A339102(n)-A339165(n)`
-/

namespace A339103.P4038076851922185431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339102 n - A339165 n

end

end A339103.P4038076851922185431

/-! ## A339103.P3252980730210685723

`A339101(n)-(A339165(n)+A339164(n))`
-/

namespace A339103.P3252980730210685723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n - (A339165 n + A339164 n)

end

end A339103.P3252980730210685723

/-!
# A339104: Number of compositions (ordered partitions) of n into distinct parts >= 6.

The programs for A339104, there is no canonical definition to state claims against.
-/

/-! ## A339104.P15377585723790862022

`A339169(n)+A339108(n)`
-/

namespace A339104.P15377585723790862022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339169 n + A339108 n

end

end A339104.P15377585723790862022

/-! ## A339104.P16998703985793766336

`A339109(n)+A339170(n)+A339169(n)`
-/

namespace A339104.P16998703985793766336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339109 n + (A339170 n + A339169 n)

end

end A339104.P16998703985793766336

/-! ## A339104.P10472228851624892149

`A339108(n)-A008683(A002148(n))*A339169(n)`
-/

namespace A339104.P10472228851624892149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n - A008683 (A002148 n).toNat * A339169 n

end

end A339104.P10472228851624892149

/-! ## A339104.P12407284821876123314

`A339169(n)+A339110(n)+A339171(n)+A339170(n)`
-/

namespace A339104.P12407284821876123314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339169 n + (A339110 n + (A339171 n + A339170 n))

end

end A339104.P12407284821876123314

/-! ## A339104.P12907482304922478891

`A339103(n)-A339166(n)`
-/

namespace A339104.P12907482304922478891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n - A339166 n

end

end A339104.P12907482304922478891

/-! ## A339104.P14414579644983496804

`A339102(n)-(A339166(n)+A339165(n))`
-/

namespace A339104.P14414579644983496804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339102 n - (A339166 n + A339165 n)

end

end A339104.P14414579644983496804

/-!
# A339106: Triangle read by rows: T(n,k) = A000203(n-k+1)*A000041(k-1), n >= 1, 1 <= k <= n.

The programs for A339106, there is no canonical definition to state claims against.
-/

/-! ## A339106.P12992994242335976624

`A221529(∑[char[∑[n]]]²-n)`
-/

namespace A339106.P12992994242335976624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221529 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A339106.P12992994242335976624

/-! ## A339106.P10688560526521607024

`A140207(n)*A272172(n+1)`
-/

namespace A339106.P10688560526521607024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n * A272172 (n + 1)

end

end A339106.P10688560526521607024

/-! ## A339106.P6636380036909616932

`A000203(A004736(n+1))*A140207(n)`
-/

namespace A339106.P6636380036909616932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004736 (n + 1)).toNat * A140207 n

end

end A339106.P6636380036909616932

/-! ## A339106.P2447970469458474529

`A000203(A025581(n)+1)*A140207(n)`
-/

namespace A339106.P2447970469458474529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A025581 n + 1).toNat * A140207 n

end

end A339106.P2447970469458474529

/-! ## A339106.P3027004034875860212

`A000041(A002262(n))*A272172(n+1)`
-/

namespace A339106.P3027004034875860212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A272172 (n + 1)

end

end A339106.P3027004034875860212

/-! ## A339106.P17380923300721156069

`A000203(A004736(n+1))*A000041(A002262(n))`
-/

namespace A339106.P17380923300721156069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004736 (n + 1)).toNat * A000041 (A002262 n).toNat

end

end A339106.P17380923300721156069

/-! ## A339106.P13278749162267100117

`A000041(A144328(n+1))*A000203(A025581(n)+1)`
-/

namespace A339106.P13278749162267100117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A144328 (n + 1)).toNat * A000203 (A025581 n + 1).toNat

end

end A339106.P13278749162267100117

/-! ## A339106.P5564870318488503103

`A340527(n+1)+A340424(n+2)-A340527(n+2)`
-/

namespace A339106.P5564870318488503103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340527 (n + 1) + (A340424 (n + 2) - A340527 (n + 2))

end

end A339106.P5564870318488503103

/-!
# A339108: Number of compositions (ordered partitions) of n into distinct parts >= 7.

The programs for A339108, there is no canonical definition to state claims against.
-/

/-! ## A339108.P3239208942433680063

`A339170(n)+A339109(n)`
-/

namespace A339108.P3239208942433680063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339170 n + A339109 n

end

end A339108.P3239208942433680063

/-! ## A339108.P12061689470735341643

`A339110(n)+A339171(n)+A339170(n)`
-/

namespace A339108.P12061689470735341643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339110 n + (A339171 n + A339170 n)

end

end A339108.P12061689470735341643

/-! ## A339108.P10699379228135109840

`A339104(n)-A339169(n)`
-/

namespace A339108.P10699379228135109840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n - A339169 n

end

end A339108.P10699379228135109840

/-! ## A339108.P1747458900711225900

`A339104(n)+A057428(n)*A339169(n)`
-/

namespace A339108.P1747458900711225900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n + A057428 n * A339169 n

end

end A339108.P1747458900711225900

/-! ## A339108.P6539646569199213150

`A339103(n)-(A339169(n)+A339166(n))`
-/

namespace A339108.P6539646569199213150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n - (A339169 n + A339166 n)

end

end A339108.P6539646569199213150

/-!
# A339109: Number of compositions (ordered partitions) of n into distinct parts >= 8.

The programs for A339109, there is no canonical definition to state claims against.
-/

/-! ## A339109.P8531300891993028057

`A339171(n)+A339110(n)`
-/

namespace A339109.P8531300891993028057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339171 n + A339110 n

end

end A339109.P8531300891993028057

/-! ## A339109.P2845262274134872736

`A339108(n)-A339170(n)`
-/

namespace A339109.P2845262274134872736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n - A339170 n

end

end A339109.P2845262274134872736

/-! ## A339109.P5895080727403589358

`A339108(n)+A339170(n)/A033999(2*n+1)`
-/

namespace A339109.P5895080727403589358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339108 n : ℚ) + (A339170 n : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A339109.P5895080727403589358

/-! ## A339109.P5798312392228758065

`A339108(n)+A339170(n)/A280193(2*n+3)`
-/

namespace A339109.P5798312392228758065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339108 n : ℚ) + (A339170 n : ℚ) / (A280193 (2 * n + 3) : ℚ)

end

end A339109.P5798312392228758065

/-! ## A339109.P4749269551768227018

`A339104(n)-(A339170(n)+A339169(n))`
-/

namespace A339109.P4749269551768227018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n - (A339170 n + A339169 n)

end

end A339109.P4749269551768227018

/-! ## A339109.P11252918342085038232

`A339104(n)-A339169(n)-A339170(A028310(n))`
-/

namespace A339109.P11252918342085038232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n - A339169 n - A339170 (A028310 n).toNat

end

end A339109.P11252918342085038232

/-! ## A339109.P1630298337746248833

`A339103(n)-(A339169(n)+A339166(n))-A339170(n)`
-/

namespace A339109.P1630298337746248833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n - (A339169 n + A339166 n) - A339170 n

end

end A339109.P1630298337746248833

/-!
# A339110: Number of compositions (ordered partitions) of n into distinct parts >= 9.

The programs for A339110, there is no canonical definition to state claims against.
-/

/-! ## A339110.P6259842857287341373

`A339109(n)-A339171(n)`
-/

namespace A339110.P6259842857287341373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339109 n - A339171 n

end

end A339110.P6259842857287341373

/-! ## A339110.P15491587078645155444

`A339108(n)-(A339171(n)+A339170(n))`
-/

namespace A339110.P15491587078645155444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n - (A339171 n + A339170 n)

end

end A339110.P15491587078645155444

/-! ## A339110.P12028842187493791618

`A339108(n)-A339170(n)-A339171(A028310(n))`
-/

namespace A339110.P12028842187493791618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n - A339170 n - A339171 (A028310 n).toNat

end

end A339110.P12028842187493791618

/-! ## A339110.P9937416441785967259

`A339104(n)-(A339170(n)+A339169(n))-A339171(n)`
-/

namespace A339110.P9937416441785967259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n - (A339170 n + A339169 n) - A339171 n

end

end A339110.P9937416441785967259

/-! ## A339110.P10069930676855903967

`A339109(n)-A339172(record[A348553(n)-A026830(n)])`
-/

namespace A339110.P10069930676855903967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n - A026830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339109 n - A339172 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A339110.P10069930676855903967

/-!
# A339111: Seeds not producing -1 under the A339091 protocol. The complement of A339093.

The programs for A339111, there is no canonical definition to state claims against.
-/

/-! ## A339111.P14713505250094223389

`lt[0, A339092(n+1)]+1`
-/

namespace A339111.P14713505250094223389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339111.P14713505250094223389

/-! ## A339111.P5242600065902095384

`record[(n+1)%A200962(abs(A339092(n+1)))]`
-/

namespace A339111.P5242600065902095384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A200962 |A339092 (n + 1)|.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339111.P5242600065902095384

/-! ## A339111.P14644386950750367061

`eq[char[A339093(n+1)], A000007(n)]`
-/

namespace A339111.P14644386950750367061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A339111.P14644386950750367061

/-! ## A339111.P15738277809303043640

`eq[char[A339093(n+1)], A000038(n)]`
-/

namespace A339111.P15738277809303043640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A339111.P15738277809303043640

/-! ## A339111.P17706770225675814084

`eq[char[A339093(n+1)], A036987(2*n)]`
-/

namespace A339111.P17706770225675814084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A339111.P17706770225675814084

/-! ## A339111.P15797634464794643601

`eq[char[A339093(n+1)], A302244(2*n)]`
-/

namespace A339111.P15797634464794643601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A339111.P15797634464794643601

/-!
# A339112: Products of primes of semiprime index (A106349).

The programs for A339112, there is no canonical definition to state claims against.
-/

/-! ## A339112.P15444486446902551875

`∩[A320628(n+1), A368729(n+1)]`
-/

namespace A339112.P15444486446902551875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339112.P15444486446902551875

/-! ## A339112.P6927482610959976506

`∩[A320629(n+1), A368729(n+1)]`
-/

namespace A339112.P6927482610959976506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339112.P6927482610959976506

/-! ## A339112.P16076171366405369657

`∩[A292050(n+1), A320629(n+1)]`
-/

namespace A339112.P16076171366405369657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339112.P16076171366405369657

/-! ## A339112.P893297292465817317

`eq[A108920(n+1), A302242(n+1)]+1`
-/

namespace A339112.P893297292465817317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A339112.P893297292465817317

/-! ## A339112.P2273841815251853212

`∩[A320629(n+1), A368728(n+1)]`
-/

namespace A339112.P2273841815251853212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339112.P2273841815251853212

/-!
# A339113: Products of primes of squarefree semiprime index (A322551).

The programs for A339113, there is no canonical definition to state claims against.
-/

/-! ## A339113.P5025517775369303109

`∩[A302478(n+1), A339112(n+1)]`
-/

namespace A339113.P5025517775369303109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339113.P5025517775369303109

/-! ## A339113.P14369144666451406867

`∪[A309356(n+1), A309356(n+1)²]`
-/

namespace A339113.P14369144666451406867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309356 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339113.P14369144666451406867

/-! ## A339113.P13454255195807621537

`∪[A309356(n+1)^2, A309356(n+2)]`
-/

namespace A339113.P13454255195807621537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309356 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309356 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A339113.P13454255195807621537

/-! ## A339113.P13359300199627031426

`∩[A302497(n+1), A339112(n+1)]`
-/

namespace A339113.P13359300199627031426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339113.P13359300199627031426

/-! ## A339113.P16079339367422782691

`∩[A339112(n+1), A382304(n+1)]`
-/

namespace A339113.P16079339367422782691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339113.P16079339367422782691

/-!
# A339114: Least semiprime whose prime indices sum to n.

The programs for A339114, there is no canonical definition to state claims against.
-/

/-! ## A339114.P12058297404045530616

`A100484(n+1)-(char[2]+char[4])`
-/

namespace A339114.P12058297404045530616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A339114.P12058297404045530616

/-! ## A339114.P12806386909391974977

`A001747(n+2)-(char[2]+char[4])`
-/

namespace A339114.P12806386909391974977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A339114.P12806386909391974977

/-! ## A339114.P15799216827047980790

`2*A000040(n+1)-(char[2]+char[4])`
-/

namespace A339114.P15799216827047980790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A339114.P15799216827047980790

/-! ## A339114.P14642917766564666120

`2*eq[2, A007012(n)]-(char[2]+char[4])`
-/

namespace A339114.P14642917766564666120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (((if ∃ j, f3 j = n then 1 else 0) + (if ∃ j, f4 j = n then 1 else 0) : ℕ) : ℤ)

end

end A339114.P14642917766564666120

/-! ## A339114.P849577671974092971

`record[2*A014963(n+2)]-(char[2]+char[4])`
-/

namespace A339114.P849577671974092971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

end

end A339114.P849577671974092971

/-! ## A339114.P15144431565697527561

`A004277(A000040(n+1))-(char[2]+char[4])`
-/

namespace A339114.P15144431565697527561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000040 (n + 1)).toNat - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A339114.P15144431565697527561

/-! ## A339114.P15374818107989773414

`xor(A051903(a(n-2)), A072055(n+1))` with `a(0)=4, a(1)=6`
-/

namespace A339114.P15374818107989773414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  Int.xor (A051903 (a (n - 2)).toNat) (A072055 (n + 1))

end

end A339114.P15374818107989773414

/-! ## A339114.P3354595579578592828

`record[2*A020639(n+2)]-val(A063539(n+1), n+2)`
-/

namespace A339114.P3354595579578592828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (SequenceMachineLib.valuation (A063539 (n + 1)).toNat (n + 2) : ℤ)

end

end A339114.P3354595579578592828

/-!
# A339115: Greatest semiprime whose prime indices sum to n.

The programs for A339115, there is no canonical definition to state claims against.
-/

/-! ## A339115.P3586750781120674932

`A098350(A187829(n+1)+A104563(n))`
-/

namespace A339115.P3586750781120674932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (A187829 (n + 1) + A104563 n).toNat

end

end A339115.P3586750781120674932

/-! ## A339115.P79690809271051607

`A338904(floor((n/2)²+n)+2)`
-/

namespace A339115.P79690809271051607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338904 (⌊((n : ℚ) / 2) ^ 2 + (n : ℚ)⌋ + 2).toNat

end

end A339115.P79690809271051607

/-! ## A339115.P29375530563679754

`A274607(∑[n+1]+2)`
-/

namespace A339115.P29375530563679754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274607 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339115.P29375530563679754

/-! ## A339115.P10312164835151998188

`record[A098350(A227925(n))]`
-/

namespace A339115.P10312164835151998188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (A227925 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339115.P10312164835151998188

/-! ## A339115.P17636938839675633761

`filter[A274607(n+1), A064911(#)]`
-/

namespace A339115.P17636938839675633761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A339115.P17636938839675633761

/-!
# A339116: Triangle of all squarefree semiprimes grouped by greater prime factor, read by rows.

The programs for A339116, the canonical program `A339116.P16320538012076833664` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339116 has offset 2).

The definition of A339116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339116.P5641835755785272731

`A087112(comp[∑[n]])`
-/

namespace A339116.P5641835755785272731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A339116.P5641835755785272731

namespace A339116

/-- `A087112(comp[∑[n]])` -/
def P5641835755785272731.Spec : Prop :=
  ∀ n, P5641835755785272731.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P17026478191594888128

`filter[A087112(n+1), A008966(#)]`
-/

namespace A339116.P17026478191594888128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A339116.P17026478191594888128

namespace A339116

/-- `filter[A087112(n+1), A008966(#)]` -/
def P17026478191594888128.Spec : Prop :=
  ∀ n, P17026478191594888128.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P16320538012076833664

`filter[A087112(n+1), A049240(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A339116

/-- `filter[A087112(n+1), A049240(#)]` -/
def P16320538012076833664.Spec : Prop :=
  ∀ n, P16320538012076833664.a n = A339116 (n + 2)

theorem P16320538012076833664.correct : P16320538012076833664.Spec := by
  intro n
  simp only [A339116, Nat.add_sub_cancel]

end A339116

/-! ## A339116.P12660243945923861947

`filter[A087112(n+1), A181183(#)]`
-/

namespace A339116.P12660243945923861947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A339116.P12660243945923861947

namespace A339116

/-- `filter[A087112(n+1), A181183(#)]` -/
def P12660243945923861947.Spec : Prop :=
  ∀ n, P12660243945923861947.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P11348094199932248397

`filter[A087112(n+1), A262684(#)]`
-/

namespace A339116.P11348094199932248397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A339116.P11348094199932248397

namespace A339116

/-- `filter[A087112(n+1), A262684(#)]` -/
def P11348094199932248397.Spec : Prop :=
  ∀ n, P11348094199932248397.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P7421447413540379167

`filter[A087112(n+1), A280710(#)]`
-/

namespace A339116.P7421447413540379167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A339116.P7421447413540379167

namespace A339116

/-- `filter[A087112(n+1), A280710(#)]` -/
def P7421447413540379167.Spec : Prop :=
  ∀ n, P7421447413540379167.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P7554286770527428630

`filter[A087112(n+1), A295316(#)]`
-/

namespace A339116.P7554286770527428630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A339116.P7554286770527428630

namespace A339116

/-- `filter[A087112(n+1), A295316(#)]` -/
def P7554286770527428630.Spec : Prop :=
  ∀ n, P7554286770527428630.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P11483306974591709484

`filter[A087112(n+1), A323154(#)]`
-/

namespace A339116.P11483306974591709484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A339116.P11483306974591709484

namespace A339116

/-- `filter[A087112(n+1), A323154(#)]` -/
def P11483306974591709484.Spec : Prop :=
  ∀ n, P11483306974591709484.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P8960805159190096734

`filter[A087112(n+1), A343219(#)]`
-/

namespace A339116.P8960805159190096734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A339116.P8960805159190096734

namespace A339116

/-- `filter[A087112(n+1), A343219(#)]` -/
def P8960805159190096734.Spec : Prop :=
  ∀ n, P8960805159190096734.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P14469568978677074344

`filter[A087112(n+1), A353471(#)]`
-/

namespace A339116.P14469568978677074344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A339116.P14469568978677074344

namespace A339116

/-- `filter[A087112(n+1), A353471(#)]` -/
def P14469568978677074344.Spec : Prop :=
  ∀ n, P14469568978677074344.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P6908118431975450079

`filter[A087112(n+1), A353519(#)]`
-/

namespace A339116.P6908118431975450079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A339116.P6908118431975450079

namespace A339116

/-- `filter[A087112(n+1), A353519(#)]` -/
def P6908118431975450079.Spec : Prop :=
  ∀ n, P6908118431975450079.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P15922428656176803608

`filter[A087112(n+1), A353559(#)]`
-/

namespace A339116.P15922428656176803608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A339116.P15922428656176803608

namespace A339116

/-- `filter[A087112(n+1), A353559(#)]` -/
def P15922428656176803608.Spec : Prop :=
  ∀ n, P15922428656176803608.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P12818821509521249109

`filter[A087112(n+1), A353629(#)]`
-/

namespace A339116.P12818821509521249109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A339116.P12818821509521249109

namespace A339116

/-- `filter[A087112(n+1), A353629(#)]` -/
def P12818821509521249109.Spec : Prop :=
  ∀ n, P12818821509521249109.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P17995592662398398668

`filter[A087112(n+1), A353669(#)]`
-/

namespace A339116.P17995592662398398668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A339116.P17995592662398398668

namespace A339116

/-- `filter[A087112(n+1), A353669(#)]` -/
def P17995592662398398668.Spec : Prop :=
  ∀ n, P17995592662398398668.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P16364519410229649419

`filter[A087112(n+2), A353627(#)]`
-/

namespace A339116.P16364519410229649419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A339116.P16364519410229649419

namespace A339116

/-- `filter[A087112(n+2), A353627(#)]` -/
def P16364519410229649419.Spec : Prop :=
  ∀ n, P16364519410229649419.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P5688984118236907660

`filter[A087112(n+2), A353628(#)]`
-/

namespace A339116.P5688984118236907660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A339116.P5688984118236907660

namespace A339116

/-- `filter[A087112(n+2), A353628(#)]` -/
def P5688984118236907660.Spec : Prop :=
  ∀ n, P5688984118236907660.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P11138824490200769754

`A389809(n+1)+A173706(n+1)`
-/

namespace A339116.P11138824490200769754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (n + 1) + A173706 (n + 1)

end

end A339116.P11138824490200769754

namespace A339116

/-- `A389809(n+1)+A173706(n+1)` -/
def P11138824490200769754.Spec : Prop :=
  ∀ n, P11138824490200769754.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P4109036268661372241

`A037126(n+1)*A389809(n+1)`
-/

namespace A339116.P4109036268661372241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A389809 (n + 1)

end

end A339116.P4109036268661372241

namespace A339116

/-- `A037126(n+1)*A389809(n+1)` -/
def P4109036268661372241.Spec : Prop :=
  ∀ n, P4109036268661372241.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P13951603668080280350

`A173706(n+1)+A000040(comp[∑[n]]-n)`
-/

namespace A339116.P13951603668080280350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173706 (n + 1) + A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A339116.P13951603668080280350

namespace A339116

/-- `A173706(n+1)+A000040(comp[∑[n]]-n)` -/
def P13951603668080280350.Spec : Prop :=
  ∀ n, P13951603668080280350.a n = A339116 (n + 2)

end A339116

/-! ## A339116.P5927636564103325882

`A000040(comp[∑[n]]-n)*A037126(n+1)`
-/

namespace A339116.P5927636564103325882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) * A037126 (n + 1)

end

end A339116.P5927636564103325882

namespace A339116

/-- `A000040(comp[∑[n]]-n)*A037126(n+1)` -/
def P5927636564103325882.Spec : Prop :=
  ∀ n, P5927636564103325882.a n = A339116 (n + 2)

end A339116

/-!
# A339117: Number of cycles in the grid graph P_5 X P_n.

The programs for A339117, there is no canonical definition to state claims against.
-/

/-! ## A339117.P5543462231862512210

`A231829(A141214(n+1))`
-/

namespace A339117.P5543462231862512210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A141214 (n + 1)).toNat

end

end A339117.P5543462231862512210

/-! ## A339117.P15360062196927622077

`A231829(A374004(n+1))`
-/

namespace A339117.P15360062196927622077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A374004 (n + 1)).toNat

end

end A339117.P15360062196927622077

/-! ## A339117.P16751523133280250081

`A231829(A055998(n+2))`
-/

namespace A339117.P16751523133280250081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A055998 (n + 2)).toNat

end

end A339117.P16751523133280250081

/-! ## A339117.P9124317045521007595

`A231829(A155212(n)+5)`
-/

namespace A339117.P9124317045521007595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A155212 n + 5).toNat

end

end A339117.P9124317045521007595

/-! ## A339117.P18400398964078609950

`A231829(A056000(n)+7)`
-/

namespace A339117.P18400398964078609950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A056000 n + 7).toNat

end

end A339117.P18400398964078609950

/-!
# A339118: Number of cycles in the grid graph P_6 X P_n.

The programs for A339118, there is no canonical definition to state claims against.
-/

/-! ## A339118.P3961529895128410514

`A231829(A374005(n+1))`
-/

namespace A339118.P3961529895128410514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A374005 (n + 1)).toNat

end

end A339118.P3961529895128410514

/-! ## A339118.P12832489395546452566

`A231829(A046691(n+3))`
-/

namespace A339118.P12832489395546452566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A046691 (n + 3)).toNat

end

end A339118.P12832489395546452566

/-! ## A339118.P14422431115610074201

`A231829(A155212(n)+13)`
-/

namespace A339118.P14422431115610074201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A155212 n + 13).toNat

end

end A339118.P14422431115610074201

/-! ## A339118.P2070382947305900966

`A231829(eq[4, A193592(n)])`
-/

namespace A339118.P2070382947305900966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339118.P2070382947305900966

/-! ## A339118.P13346627827960109688

`A231829(Δ[A023545(n+1)])`
-/

namespace A339118.P13346627827960109688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (f1 (n + 1) - f1 n).toNat

end

end A339118.P13346627827960109688

/-!
# A339119: Number of cycles in the grid graph P_7 X P_n.

The programs for A339119, there is no canonical definition to state claims against.
-/

/-! ## A339119.P11838055960067202365

`A231829(A374007(n+1))`
-/

namespace A339119.P11838055960067202365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A374007 (n + 1)).toNat

end

end A339119.P11838055960067202365

/-! ## A339119.P249444688656549352

`A231829(A052905(n+3))`
-/

namespace A339119.P249444688656549352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A052905 (n + 3)).toNat

end

end A339119.P249444688656549352

/-! ## A339119.P770431345415135434

`A231829(eq[3, A219347(n)])`
-/

namespace A339119.P770431345415135434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339119.P770431345415135434

/-! ## A339119.P12504643514562562883

`A231829(eq[5, A193592(n)])`
-/

namespace A339119.P12504643514562562883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339119.P12504643514562562883

/-! ## A339119.P12541472618602414866

`A231829(A155212(n+2)+3)`
-/

namespace A339119.P12541472618602414866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A155212 (n + 2) + 3).toNat

end

end A339119.P12541472618602414866

/-!
# A339120: Number of cycles in the grid graph P_8 X P_n.

The programs for A339120, there is no canonical definition to state claims against.
-/

/-! ## A339120.P8064739534795065533

`A231829(A374008(n+1))`
-/

namespace A339120.P8064739534795065533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A374008 (n + 1)).toNat

end

end A339120.P8064739534795065533

/-! ## A339120.P9132857410003818981

`A231829(eq[4, A219347(n)])`
-/

namespace A339120.P9132857410003818981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339120.P9132857410003818981

/-! ## A339120.P16096561899041909756

`A231829(eq[6, A193592(n)])`
-/

namespace A339120.P16096561899041909756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339120.P16096561899041909756

/-! ## A339120.P18366920278794258063

`A231829(A155212(n+3)+2)`
-/

namespace A339120.P18366920278794258063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A155212 (n + 3) + 2).toNat

end

end A339120.P18366920278794258063

/-! ## A339120.P1216520825678020582

`A231829(A046691(n+5)-2)`
-/

namespace A339120.P1216520825678020582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A046691 (n + 5) - 2).toNat

end

end A339120.P1216520825678020582

/-!
# A339121: Number of cycles in the grid graph P_9 X P_n.

The programs for A339121, there is no canonical definition to state claims against.
-/

/-! ## A339121.P6062306889651461749

`A231829(A374009(n+1))`
-/

namespace A339121.P6062306889651461749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (A374009 (n + 1)).toNat

end

end A339121.P6062306889651461749

/-! ## A339121.P5257829349200993813

`A231829(eq[5, A219347(n)])`
-/

namespace A339121.P5257829349200993813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339121.P5257829349200993813

/-! ## A339121.P3995924103452832671

`A231829(eq[7, A193592(n)])`
-/

namespace A339121.P3995924103452832671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339121.P3995924103452832671

/-! ## A339121.P10213530722763692097

`A231829(eq[13, A066657(n)])`
-/

namespace A339121.P10213530722763692097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339121.P10213530722763692097

/-! ## A339121.P4027445717625222836

`A231829(eq[64, A166065(n)])`
-/

namespace A339121.P4027445717625222836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A339121.P4027445717625222836

/-!
# A339123: Number of 2-connected multigraphs with n edges and rooted at two indistinguishable vertices and have no decomposition into parallel components rooted at the two distinguished vertices.

The programs for A339123, there is no canonical definition to state claims against.
-/

/-! ## A339123.P205939736740321094

`floor(A323788(n)/83)`
-/

namespace A339123.P205939736740321094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323788 n : ℚ) / 83⌋

end

end A339123.P205939736740321094

/-! ## A339123.P3013784717026659850

`A088931(A341532(n))`
-/

namespace A339123.P3013784717026659850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (A341532 n).toNat

end

end A339123.P3013784717026659850

/-! ## A339123.P18063945519500836040

`A230493(∏[A230725(n)])`
-/

namespace A339123.P18063945519500836040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230493 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339123.P18063945519500836040

/-! ## A339123.P1291961575939117981

`A065714(A137955(n)+A053252(n))`
-/

namespace A339123.P1291961575939117981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (A137955 n + A053252 n).toNat

end

end A339123.P1291961575939117981

/-!
# A339124: a(n) is the number of squares at distance n from the central square of a golden square fractal.

The programs for A339124, the canonical program `A339124.P11922231893244906762` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339124 has offset 0).

The definition of A339124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339124.P11922231893244906762

`3*a(n-1)-2*a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=28, a(4)=60`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339124

/-- `3*a(n-1)-2*a(n-2)+2*a(n-4)` -/
def P11922231893244906762.Spec : Prop :=
  ∀ n, P11922231893244906762.a n = A339124 n

theorem P11922231893244906762.correct : P11922231893244906762.Spec := by
  intro n
  simp only [A339124]

end A339124

/-! ## A339124.P17167577620409908442

`A000007(n)+Δ[A269962(A028310(n))]`
-/

namespace A339124.P17167577620409908442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269962 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A339124.P17167577620409908442

namespace A339124

/-- `A000007(n)+Δ[A269962(A028310(n))]` -/
def P17167577620409908442.Spec : Prop :=
  ∀ n, P17167577620409908442.a n = A339124 n

end A339124

/-! ## A339124.P12638890093790528129

`Δ[A269962(A028310(n))-A054977(n)]`
-/

namespace A339124.P12638890093790528129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269962 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339124.P12638890093790528129

namespace A339124

/-- `Δ[A269962(A028310(n))-A054977(n)]` -/
def P12638890093790528129.Spec : Prop :=
  ∀ n, P12638890093790528129.a n = A339124 n

end A339124

/-! ## A339124.P17887742115621385109

`Δ[A269962(A028310(n))-A057428(n)]`
-/

namespace A339124.P17887742115621385109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269962 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339124.P17887742115621385109

namespace A339124

/-- `Δ[A269962(A028310(n))-A057428(n)]` -/
def P17887742115621385109.Spec : Prop :=
  ∀ n, P17887742115621385109.a n = A339124 n

end A339124

/-! ## A339124.P6271427484349207545

`Δ[A269962(A028310(n))+A036453(n+1)]`
-/

namespace A339124.P6271427484349207545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269962 (A028310 n).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339124.P6271427484349207545

namespace A339124

/-- `Δ[A269962(A028310(n))+A036453(n+1)]` -/
def P6271427484349207545.Spec : Prop :=
  ∀ n, P6271427484349207545.a n = A339124 n

end A339124

/-! ## A339124.P1376870444788809355

`A269962(n+1)+A000007(n)-A269962(A028310(n))`
-/

namespace A339124.P1376870444788809355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269962 (n + 1) + (A000007 n - A269962 (A028310 n).toNat)

end

end A339124.P1376870444788809355

namespace A339124

/-- `A269962(n+1)+A000007(n)-A269962(A028310(n))` -/
def P1376870444788809355.Spec : Prop :=
  ∀ n, P1376870444788809355.a n = A339124 n

end A339124

/-! ## A339124.P3640825451615994944

`A269962(n+1)+A057428(n)*A269962(A028310(n))`
-/

namespace A339124.P3640825451615994944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269962 (n + 1) + A057428 n * A269962 (A028310 n).toNat

end

end A339124.P3640825451615994944

namespace A339124

/-- `A269962(n+1)+A057428(n)*A269962(A028310(n))` -/
def P3640825451615994944.Spec : Prop :=
  ∀ n, P3640825451615994944.a n = A339124 n

end A339124

/-! ## A339124.P9009938133119145881

`A054977(n)*A269962(n+1)-A269962(A028310(n))`
-/

namespace A339124.P9009938133119145881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A269962 (n + 1) - A269962 (A028310 n).toNat

end

end A339124.P9009938133119145881

namespace A339124

/-- `A054977(n)*A269962(n+1)-A269962(A028310(n))` -/
def P9009938133119145881.Spec : Prop :=
  ∀ n, P9009938133119145881.a n = A339124 n

end A339124

/-! ## A339124.P11293730030125059911

`Δ[A269962(A028310(n))%A103453(n)]`
-/

namespace A339124.P11293730030125059911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269962 (A028310 n).toNat) (A103453 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339124.P11293730030125059911

namespace A339124

/-- `Δ[A269962(A028310(n))%A103453(n)]` -/
def P11293730030125059911.Spec : Prop :=
  ∀ n, P11293730030125059911.a n = A339124 n

end A339124

/-! ## A339124.P12613273261899218052

`A105523(2*n)+Δ[A269962(A028310(n))]`
-/

namespace A339124.P12613273261899218052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269962 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n) + (f1 (n + 1) - f1 n)

end

end A339124.P12613273261899218052

namespace A339124

/-- `A105523(2*n)+Δ[A269962(A028310(n))]` -/
def P12613273261899218052.Spec : Prop :=
  ∀ n, P12613273261899218052.a n = A339124 n

end A339124

/-!
# A339125: Odd composite integers m such that A000032(m-J(m,5)) == 2*J(m,5) (mod m), where J(m,5) is the Jacobi symbol.

The programs for A339125, there is no canonical definition to state claims against.
-/

/-! ## A339125.P13981919254792267713

`∩[A320323(n+1), A339129(n+1)]`
-/

namespace A339125.P13981919254792267713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339125.P13981919254792267713

/-! ## A339125.P1797842408447262288

`p?[A279336(2*n+1)]²`
-/

namespace A339125.P1797842408447262288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279336 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A339125.P1797842408447262288

/-! ## A339125.P16135978143341441883

`A300516(A086339(n+2))`
-/

namespace A339125.P16135978143341441883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300516 (A086339 (n + 2)).toNat

end

end A339125.P16135978143341441883

/-! ## A339125.P13731841995999106255

`A386350(n+2)^A060778(A226657(n+1))`
-/

namespace A339125.P13731841995999106255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386350 (n + 2) : ℚ) ^ (A060778 (A226657 (n + 1)).toNat : ℤ)

end

end A339125.P13731841995999106255

/-!
# A339126: Odd composite integers m such that A006497(m-J(m,13)) == 2*J(m,13) (mod m), where J(m,13) is the Jacobi symbol.

The programs for A339126, there is no canonical definition to state claims against.
-/

/-! ## A339126.P11188331602090363976

`A060821(A001710(n))+A001248(n+2)`
-/

namespace A339126.P11188331602090363976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (A001710 n).toNat + A001248 (n + 2)

end

end A339126.P11188331602090363976

/-!
# A339127: Odd composite integers m such that A087130(m-J(m,29)) == 2*J(m,29) (mod m), where J(m,29) is the Jacobi symbol.

The programs for A339127, there is no canonical definition to state claims against.
-/

/-! ## A339127.P17105036386402617660

`∩[A272266(n+1), A333854(n+1)]`
-/

namespace A339127.P17105036386402617660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A339127.P17105036386402617660

/-! ## A339127.P16056853580937660055

`A319152(A029964(n+2))`
-/

namespace A339127.P16056853580937660055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319152 (A029964 (n + 2)).toNat

end

end A339127.P16056853580937660055

/-! ## A339127.P4504506046094700265

`filter[A029642(n+1), A075802(#)]`
-/

namespace A339127.P4504506046094700265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A339127.P4504506046094700265

/-!
# A339129: Odd composite integers m such that A005248(m-J(m,5)) == 2 (mod m), where J(m,5) is the Jacobi symbol.

The programs for A339129, there is no canonical definition to state claims against.
-/

/-! ## A339129.P16009425319518759393

`A339842(A101528(n+1))`
-/

namespace A339129.P16009425319518759393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339842 (A101528 (n + 1)).toNat

end

end A339129.P16009425319518759393

/-!
# A339131: Odd composite integers m such that A056854(m-J(m,45)) == 2 (mod m) and gcd(m,45)=1, where J(m,45) is the Jacobi symbol.

The programs for A339131, there is no canonical definition to state claims against.
-/

/-! ## A339131.P12880280611471477753

`A109861(A372517(n+1)+1)`
-/

namespace A339131.P12880280611471477753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109861 (A372517 (n + 1) + 1).toNat

end

end A339131.P12880280611471477753

/-!
# A339132: Milk shuffle of the binary representation of n.

The programs for A339132, there is no canonical definition to state claims against.
-/

/-! ## A339132.P8101744704859766182

`∑{p}[A277933(n), A324293(#)]`
-/

namespace A339132.P8101744704859766182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A324293 p

end

end A339132.P8101744704859766182

/-! ## A339132.P17713304005538125907

`A053645(record[or(2, n)]%A352230(n+1))`
-/

namespace A339132.P17713304005538125907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A352230 (n + 1))).toNat

end

end A339132.P17713304005538125907

/-! ## A339132.P669770910457538466

`A007814(A010015(n))+A006257(n)`
-/

namespace A339132.P669770910457538466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A010015 n).toNat + A006257 n

end

end A339132.P669770910457538466

/-! ## A339132.P9112470979112377861

`A007814(A351018(n))+A006257(n)`
-/

namespace A339132.P9112470979112377861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A351018 n).toNat + A006257 n

end

end A339132.P9112470979112377861

/-! ## A339132.P8928544031155093553

`A072648(A094967(n))-A035327(n)`
-/

namespace A339132.P8928544031155093553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072648 (A094967 n).toNat - A035327 n

end

end A339132.P8928544031155093553

/-!
# A339133: a(n) = A339107(n)*A339107(n+1)/(A339107(n)+A339107(n+1)).

The programs for A339133, there is no canonical definition to state claims against.
-/

/-! ## A339133.P9174443297451125693

`A339107(n+1)*A339107(n+2)/(A339107(n+1)+A339107(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339133.P9174443297451125693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339107 (n + 1) * A339107 (n + 2) : ℚ) / (A339107 (n + 1) + A339107 (n + 2) : ℚ)

end

end A339133.P9174443297451125693

/-!
# A339134: Indices in A338884 where records occur.

The programs for A339134, there is no canonical definition to state claims against.
-/

/-! ## A339134.P16252200899388841266

`A091879(A266465(n+1))`
-/

namespace A339134.P16252200899388841266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091879 (A266465 (n + 1)).toNat

end

end A339134.P16252200899388841266

/-!
# A339136: Number of (undirected) cycles in the graph C_3 X P_n.

The programs for A339136, the canonical program `A339136.P15022024842046345411` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339136 has offset 1).

The definition of A339136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339136.P15022024842046345411

`∑[6*3^n-5]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339136

/-- `∑[6*3^n-5]` -/
def P15022024842046345411.Spec : Prop :=
  ∀ n, P15022024842046345411.a n = A339136 (n + 1)

theorem P15022024842046345411.correct : P15022024842046345411.Spec := by
  intro n
  simp only [A339136, Nat.add_sub_cancel]

end A339136

/-! ## A339136.P4847893133581543883

`ogf((1+9x)/(1-5x+7x^2-3x^3))`
-/

namespace A339136.P4847893133581543883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -5, 7, -3] n

end

end A339136.P4847893133581543883

namespace A339136

/-- `ogf((1+9x)/(1-5x+7x^2-3x^3))` -/
def P4847893133581543883.Spec : Prop :=
  ∀ n, P4847893133581543883.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P14666627975567177111

`record[3^n-4*n]-n`
-/

namespace A339136.P14666627975567177111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A339136.P14666627975567177111

namespace A339136

/-- `record[3^n-4*n]-n` -/
def P14666627975567177111.Spec : Prop :=
  ∀ n, P14666627975567177111.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P12047209723336454593

`floor(∑[3*a(n-1)+10])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A339136.P12047209723336454593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339136.P12047209723336454593

namespace A339136

/-- `floor(∑[3*a(n-1)+10])` -/
def P12047209723336454593.Spec : Prop :=
  ∀ n, (P12047209723336454593.a n : ℤ) = A339136 (n + 1)

end A339136

/-! ## A339136.P3932569283882919815

`floor(∑[∑[3*a(n-1)]-3])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A339136.P3932569283882919815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339136.P3932569283882919815

namespace A339136

/-- `floor(∑[∑[3*a(n-1)]-3])` -/
def P3932569283882919815.Spec : Prop :=
  ∀ n, P3932569283882919815.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P855021061523635088

`3*a(n-1)+10*n+1` with `a(0)=1`
-/

namespace A339136.P855021061523635088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (10 * n + 1)

end

end A339136.P855021061523635088

namespace A339136

/-- `3*a(n-1)+10*n+1` -/
def P855021061523635088.Spec : Prop :=
  ∀ n, (P855021061523635088.a n : ℤ) = A339136 (n + 1)

end A339136

/-! ## A339136.P7634444126883269536

`A061982(n+2)+∑[n-2]`
-/

namespace A339136.P7634444126883269536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061982 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339136.P7634444126883269536

namespace A339136

/-- `A061982(n+2)+∑[n-2]` -/
def P7634444126883269536.Spec : Prop :=
  ∀ n, P7634444126883269536.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P2702265839733186972

`3*A061981(n+1)+n+1`
-/

namespace A339136.P2702265839733186972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061981 (n + 1) + (n + 1 : ℤ)

end

end A339136.P2702265839733186972

namespace A339136

/-- `3*A061981(n+1)+n+1` -/
def P2702265839733186972.Spec : Prop :=
  ∀ n, P2702265839733186972.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P10138403578131685833

`A107583(n+2)-2*(n+1)`
-/

namespace A339136.P10138403578131685833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107583 (n + 2) - (2 * (n + 1) : ℤ)

end

end A339136.P10138403578131685833

namespace A339136

/-- `A107583(n+2)-2*(n+1)` -/
def P10138403578131685833.Spec : Prop :=
  ∀ n, P10138403578131685833.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P18410928196513244328

`3*A186948(n+1)+n-2`
-/

namespace A339136.P18410928196513244328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A186948 (n + 1) + ((n : ℤ) - 2)

end

end A339136.P18410928196513244328

namespace A339136

/-- `3*A186948(n+1)+n-2` -/
def P18410928196513244328.Spec : Prop :=
  ∀ n, P18410928196513244328.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P3103210588781744436

`3^(n+2)-A016885(n+1)`
-/

namespace A339136.P3103210588781744436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) - A016885 (n + 1)

end

end A339136.P3103210588781744436

namespace A339136

/-- `3^(n+2)-A016885(n+1)` -/
def P3103210588781744436.Spec : Prop :=
  ∀ n, P3103210588781744436.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P8503124277980624304

`A061981(n+1)+A061981(n+1)+A060188(n+2)`
-/

namespace A339136.P8503124277980624304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061981 (n + 1) + (A061981 (n + 1) + A060188 (n + 2))

end

end A339136.P8503124277980624304

namespace A339136

/-- `A061981(n+1)+A061981(n+1)+A060188(n+2)` -/
def P8503124277980624304.Spec : Prop :=
  ∀ n, P8503124277980624304.a n = A339136 (n + 1)

end A339136

/-! ## A339136.P11680817022821887143

`A151583(n+2)/(n+2)-n`
-/

namespace A339136.P11680817022821887143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151583 (n + 2) : ℚ) / (n + 2 : ℚ) - (n : ℚ)

end

end A339136.P11680817022821887143

namespace A339136

/-- `A151583(n+2)/(n+2)-n` -/
def P11680817022821887143.Spec : Prop :=
  ∀ n, P11680817022821887143.a n = (A339136 (n + 1) : ℚ)

end A339136

/-!
# A339138: Lexicographically earliest sequence of distinct nonnegative terms such that the first digit d of a(n), for n > 1, is the sum of the two closest digits of d (they are the rightmost digit of a(n-1) and the next digit on the right of d).

The programs for A339138, there is no canonical definition to state claims against.
-/

/-! ## A339138.P17423753877451218882

`ceil(n/2*A010132(A117642(n)))`
-/

namespace A339138.P17423753877451218882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 * (A010132 (A117642 n).toNat : ℚ)⌉

end

end A339138.P17423753877451218882

/-! ## A339138.P18292845102927968049

`ceil(n/2)*A010691(A240707(n+1))`
-/

namespace A339138.P18292845102927968049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A010691 (A240707 (n + 1)).toNat

end

end A339138.P18292845102927968049

/-! ## A339138.P4079573124748905619

`A317311(n)-A257994(A038754(n))`
-/

namespace A339138.P4079573124748905619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n - A257994 (A038754 n).toNat

end

end A339138.P4079573124748905619

/-! ## A339138.P17794139092587807796

`A010131(A117642(n))*A110654(n)`
-/

namespace A339138.P17794139092587807796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (A117642 n).toNat * A110654 n

end

end A339138.P17794139092587807796

/-! ## A339138.P1073496201281131711

`∑[A000035(n)]*A010132(A117642(n))`
-/

namespace A339138.P1073496201281131711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010132 (A117642 n).toNat

end

end A339138.P1073496201281131711

/-!
# A339145: a(n) is 1 if A196202(n) is a local maximum, -1 if A196202(n) is a local minimum and 0 otherwise.

The programs for A339145, there is no canonical definition to state claims against.
-/

/-! ## A339145.P12226260953716919193

`Δ[ceil(Δ[1/A196202(n+1)])]`
-/

namespace A339145.P12226260953716919193
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A196202 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339145.P12226260953716919193

/-! ## A339145.P4693488228313323618

`Δ[A141743(A032634(A000217(n)))]`
-/

namespace A339145.P4693488228313323618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141743 (A032634 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339145.P4693488228313323618

/-! ## A339145.P6756103847189815141

`Δ[and(A057427(n), A346447(3*n+1))]`
-/

namespace A339145.P6756103847189815141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A346447 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339145.P6756103847189815141

/-! ## A339145.P4815650814699250117

`Δ[A179527(A000005(3*n+4)*A005895(n+1))]`
-/

namespace A339145.P4815650814699250117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A000005 (3 * n + 4) * A005895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339145.P4815650814699250117

/-!
# A339146: a(n) = a(floor(n / 5)) * (n mod 5 + 1); initial terms are 1.

The programs for A339146, there is no canonical definition to state claims against.
-/

/-! ## A339146.P1261511033460988154

`A273733(n)/A028310(Δ[A273733(n)])`
-/

namespace A339146.P1261511033460988154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273733 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273733 n : ℚ) / (A028310 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A339146.P1261511033460988154

/-! ## A339146.P5573938776169843908

`A240080(A103517(n)%A084545(n+1))`
-/

namespace A339146.P5573938776169843908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240080 (Int.tmod (A103517 n) (A084545 (n + 1))).toNat

end

end A339146.P5573938776169843908

/-! ## A339146.P17888804374418027206

`A316496(A005843(n+1)%A084545(n+1))`
-/

namespace A339146.P17888804374418027206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316496 (Int.tmod (A005843 (n + 1)) (A084545 (n + 1))).toNat

end

end A339146.P17888804374418027206

/-! ## A339146.P3692661336654000638

`A010884(n)^∑[A249856(3*n+2)]`
-/

namespace A339146.P3692661336654000638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (3 * n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010884 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A339146.P3692661336654000638

/-!
# A339147: a(1) = 1; a(n) = max (A000005(n-1) , A000005(a(n-1))) , for n > 1.

The programs for A339147, there is no canonical definition to state claims against.
-/

/-! ## A339147.P712882683355335192

`gcd(A062821(n+1), A279327(A328575(n)))`
-/

namespace A339147.P712882683355335192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062821 (n + 1)) (A279327 (A328575 n).toNat)

end

end A339147.P712882683355335192

/-! ## A339147.P1208494977645093748

`A062821(n+1)/A063435(A047089(n)²)`
-/

namespace A339147.P1208494977645093748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062821 (n + 1) : ℚ) / (A063435 (A047089 n ^ 2).toNat : ℚ)

end

end A339147.P1208494977645093748

/-! ## A339147.P4588027919035809915

`A062821(n+1)/A319540(A244657(n+1))`
-/

namespace A339147.P4588027919035809915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062821 (n + 1) : ℚ) / (A319540 (A244657 (n + 1)).toNat : ℚ)

end

end A339147.P4588027919035809915

/-! ## A339147.P5585760763335528304

`A062821(n+1)/A325989(A237824(n+5))`
-/

namespace A339147.P5585760763335528304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062821 (n + 1) : ℚ) / (A325989 (A237824 (n + 5)).toNat : ℚ)

end

end A339147.P5585760763335528304

/-! ## A339147.P1547458916099156945

`A062821(n+1)-A098854(A063428(n+2))`
-/

namespace A339147.P1547458916099156945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A098854 (A063428 (n + 2)).toNat

end

end A339147.P1547458916099156945

/-!
# A339148: Insulated primes (see Comments for definition).

The programs for A339148, there is no canonical definition to state claims against.
-/

/-! ## A339148.P10198657150942122466

`record[A258030(A321804(n)²*A129129(n)+1)]`
-/

namespace A339148.P10198657150942122466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258030 (A321804 n ^ 2 * A129129 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339148.P10198657150942122466

/-! ## A339148.P15357376366708042361

`A107257(A163059(n+1))`
-/

namespace A339148.P15357376366708042361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107257 (A163059 (n + 1)).toNat

end

end A339148.P15357376366708042361

/-! ## A339148.P12962635795818347447

`filter[A258030(n+2), A114213(#)]`
-/

namespace A339148.P12962635795818347447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258030 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A339148.P12962635795818347447

/-! ## A339148.P204108975294855497

`A020484(floor(log2(A216464(n+1))))`
-/

namespace A339148.P204108975294855497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (Nat.log 2 (A216464 (n + 1)).toNat)

end

end A339148.P204108975294855497

/-!
# A339149: Sum of the lengths of degree of suffix compression achieved for all binary strings of length n.

The programs for A339149, there is no canonical definition to state claims against.
-/

/-! ## A339149.P8822411783995535666

`record[lcm(2, eq[0, (99-n)%(n+1)])]`
-/

namespace A339149.P8822411783995535666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (99 - (n : ℤ)) (n + 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339149.P8822411783995535666

/-! ## A339149.P9673799556633861146

`record[lcm(2, A178784(n+1))]`
-/

namespace A339149.P9673799556633861146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A178784 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339149.P9673799556633861146

/-! ## A339149.P2980588682865361151

`A063655(A005053(n))-2`
-/

namespace A339149.P2980588682865361151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A005053 n).toNat - 2

end

end A339149.P2980588682865361151

/-!
# A339150: a(n) = Sum_{k=1..n} floor(k/2)! * floor((n - k)/2)! binomial((n-floor(k/2)-1), n-k).

The programs for A339150, there is no canonical definition to state claims against.
-/

/-! ## A339150.P7975644559050408080

`A001462(A149044(n)+n)`
-/

namespace A339150.P7975644559050408080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A149044 n + (n : ℤ)).toNat

end

end A339150.P7975644559050408080

/-! ## A339150.P8688498366844270496

`A001462(A219260(n)+n)`
-/

namespace A339150.P8688498366844270496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A219260 n + (n : ℤ)).toNat

end

end A339150.P8688498366844270496

/-! ## A339150.P14619093311685638389

`A057142(∑[A000162(n+1)])`
-/

namespace A339150.P14619093311685638389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339150.P14619093311685638389

/-! ## A339150.P9807687056521262234

`A055086(A238548(∑[round((n+3)²/12)])+n)`
-/

namespace A339150.P9807687056521262234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A238548 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)).toNat

end

end A339150.P9807687056521262234

/-!
# A339151: Number of essentially series nonequivalent series-parallel networks with n elements and without unit elements in parallel.

The programs for A339151, there is no canonical definition to state claims against.
-/

/-! ## A339151.P17399675089648547136

`A339153(n+1)-A339152(n+1)`
-/

namespace A339151.P17399675089648547136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339153 (n + 1) - A339152 (n + 1)

end

end A339151.P17399675089648547136

/-! ## A339151.P12144590603875243605

`A008618(A029879(n)+A004086(n))`
-/

namespace A339151.P12144590603875243605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A029879 n + A004086 n).toNat

end

end A339151.P12144590603875243605

/-! ## A339151.P8206851317637335560

`A008618(A029879(n)+A004396(n))`
-/

namespace A339151.P8206851317637335560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A029879 n + A004396 n).toNat

end

end A339151.P8206851317637335560

/-! ## A339151.P10826443618043770736

`A008618(A055652(n)+A029879(n))`
-/

namespace A339151.P10826443618043770736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A055652 n + A029879 n).toNat

end

end A339151.P10826443618043770736

/-! ## A339151.P457574192368880852

`floor(sqrt(A002216(n)%A209113(n+1)))`
-/

namespace A339151.P457574192368880852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A002216 n) (A209113 (n + 1)))

end

end A339151.P457574192368880852

/-!
# A339152: Number of essentially parallel nonequivalent series-parallel networks with n elements and without unit elements in parallel.

The programs for A339152, there is no canonical definition to state claims against.
-/

/-! ## A339152.P14280959795700761193

`A339153(n+1)-A339151(n+1)`
-/

namespace A339152.P14280959795700761193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339153 (n + 1) - A339151 (n + 1)

end

end A339152.P14280959795700761193

/-! ## A339152.P5997705991263977613

`A339153(n+1)-A008618(A029879(n)+A004086(n))`
-/

namespace A339152.P5997705991263977613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339153 (n + 1) - A008618 (A029879 n + A004086 n).toNat

end

end A339152.P5997705991263977613

/-! ## A339152.P1790804519325671844

`A339153(n+1)-A008618(A029879(n)+A004396(n))`
-/

namespace A339152.P1790804519325671844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339153 (n + 1) - A008618 (A029879 n + A004396 n).toNat

end

end A339152.P1790804519325671844

/-! ## A339152.P12760855469488801976

`A339153(n+1)-A008618(A055652(n)+A029879(n))`
-/

namespace A339152.P12760855469488801976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339153 (n + 1) - A008618 (A055652 n + A029879 n).toNat

end

end A339152.P12760855469488801976

/-! ## A339152.P16644801683133499976

`A339153(n+1)-A000196(A002216(n))`
-/

namespace A339152.P16644801683133499976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339153 (n + 1) - A000196 (A002216 n).toNat

end

end A339152.P16644801683133499976

/-!
# A339153: Number of nonequivalent series-parallel networks with n elements and without unit elements in parallel.

The programs for A339153, there is no canonical definition to state claims against.
-/

/-! ## A339153.P17643082880064668866

`A339151(n+1)+A339152(n+1)`
-/

namespace A339153.P17643082880064668866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339151 (n + 1) + A339152 (n + 1)

end

end A339153.P17643082880064668866

/-! ## A339153.P6393992092593812858

`A339152(n+1)+A008618(A029879(n)+A004086(n))`
-/

namespace A339153.P6393992092593812858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339152 (n + 1) + A008618 (A029879 n + A004086 n).toNat

end

end A339153.P6393992092593812858

/-! ## A339153.P7868238584907478616

`A339152(n+1)+A008618(A029879(n)+A004396(n))`
-/

namespace A339153.P7868238584907478616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339152 (n + 1) + A008618 (A029879 n + A004396 n).toNat

end

end A339153.P7868238584907478616

/-! ## A339153.P13184298208099775652

`A339152(n+1)+A008618(A055652(n)+A029879(n))`
-/

namespace A339153.P13184298208099775652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339152 (n + 1) + A008618 (A055652 n + A029879 n).toNat

end

end A339153.P13184298208099775652

/-! ## A339153.P1742311095726144628

`A339152(n+1)+A000196(A002216(n))`
-/

namespace A339153.P1742311095726144628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339152 (n + 1) + A000196 (A002216 n).toNat

end

end A339153.P1742311095726144628

/-!
# A339154: Number of essentially series oriented series-parallel networks with n elements and without unit elements in parallel.

The programs for A339154, there is no canonical definition to state claims against.
-/

/-! ## A339154.P14370235817515954414

`A339156(n+1)-A339155(n+1)`
-/

namespace A339154.P14370235817515954414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339156 (n + 1) - A339155 (n + 1)

end

end A339154.P14370235817515954414

/-! ## A339154.P16864989092490506847

`A033183(A321838(n+2)+A048655(n))`
-/

namespace A339154.P16864989092490506847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A321838 (n + 2) + A048655 n).toNat

end

end A339154.P16864989092490506847

/-! ## A339154.P301071894995642993

`A157271(A222379(n)+A193530(n))-A339155(n+1)`
-/

namespace A339154.P301071894995642993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A222379 n + A193530 n).toNat - A339155 (n + 1)

end

end A339154.P301071894995642993

/-! ## A339154.P1472305333178452983

`Δ[A026834(∑[A199409(n)])]`
-/

namespace A339154.P1472305333178452983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199409 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339154.P1472305333178452983

/-! ## A339154.P14837537376274496163

`Δ[A026834(A110334(n+2))]`
-/

namespace A339154.P14837537376274496163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A110334 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A339154.P14837537376274496163

/-!
# A339155: Number of essentially parallel oriented series-parallel networks with n elements and without unit elements in parallel.

The programs for A339155, there is no canonical definition to state claims against.
-/

/-! ## A339155.P10012390785980018497

`A339156(n+1)-A339154(n+1)`
-/

namespace A339155.P10012390785980018497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339156 (n + 1) - A339154 (n + 1)

end

end A339155.P10012390785980018497

/-! ## A339155.P10670323480194325024

`A243555(n+1)-A339104(A356185(n))`
-/

namespace A339155.P10670323480194325024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243555 (n + 1) - A339104 (A356185 n).toNat

end

end A339155.P10670323480194325024

/-! ## A339155.P11510039359843394078

`A002024(A010551(n))-A008483(n+2)`
-/

namespace A339155.P11510039359843394078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A010551 n).toNat - A008483 (n + 2)

end

end A339155.P11510039359843394078

/-! ## A339155.P10707977490332695607

`A157271(A222379(n)+A193530(n))-A339154(n+1)`
-/

namespace A339155.P10707977490332695607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A222379 n + A193530 n).toNat - A339154 (n + 1)

end

end A339155.P10707977490332695607

/-!
# A339156: Number of oriented series-parallel networks with n elements and without unit elements in parallel.

The programs for A339156, there is no canonical definition to state claims against.
-/

/-! ## A339156.P16283191675212946460

`A339154(n+1)+A339155(n+1)`
-/

namespace A339156.P16283191675212946460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339154 (n + 1) + A339155 (n + 1)

end

end A339156.P16283191675212946460

/-! ## A339156.P12724963023449420905

`A087817(A099950(n+1))`
-/

namespace A339156.P12724963023449420905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A099950 (n + 1)).toNat

end

end A339156.P12724963023449420905

/-! ## A339156.P3671411924827698161

`A157271(A222379(n)+A193530(n))`
-/

namespace A339156.P3671411924827698161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A222379 n + A193530 n).toNat

end

end A339156.P3671411924827698161

/-! ## A339156.P7581778293523798108

`floor((A126383(n)+A008343(A115098(n)))/(3*n+1)²)`
-/

namespace A339156.P7581778293523798108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126383 n + A008343 (A115098 n).toNat : ℚ) / ((3 * n + 1) ^ 2 : ℚ)⌋

end

end A339156.P7581778293523798108

/-! ## A339156.P861624619750373050

`A000196(A306023(n))`
-/

namespace A339156.P861624619750373050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A306023 n).toNat

end

end A339156.P861624619750373050

/-!
# A339157: Number of essentially series achiral series-parallel networks with n elements.

The programs for A339157, there is no canonical definition to state claims against.
-/

/-! ## A339157.P3777870629933748239

`A339159(n+1)+A000007(n)-A339158(n+1)`
-/

namespace A339157.P3777870629933748239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339159 (n + 1) + (A000007 n - A339158 (n + 1))

end

end A339157.P3777870629933748239

/-! ## A339157.P475535449744533838

`A339159(n+1)-A178487(n)*A339158(n+1)`
-/

namespace A339157.P475535449744533838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339159 (n + 1) - A178487 n * A339158 (n + 1)

end

end A339157.P475535449744533838

/-! ## A339157.P1063081390176458094

`A339159(n+1)-A339158(n+1)%A005425(n)`
-/

namespace A339157.P1063081390176458094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339159 (n + 1) - Int.tmod (A339158 (n + 1)) (A005425 n)

end

end A339157.P1063081390176458094

/-! ## A339157.P1036440536113774419

`A084099(2*n)+A339159(n+1)-A339158(n+1)`
-/

namespace A339157.P1036440536113774419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n) + (A339159 (n + 1) - A339158 (n + 1))

end

end A339157.P1036440536113774419

/-! ## A339157.P3836900247400906588

`2*A339223(n+1)-A007453(n+1)`
-/

namespace A339157.P3836900247400906588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339223 (n + 1) - A007453 (n + 1)

end

end A339157.P3836900247400906588

/-!
# A339158: Number of essentially parallel achiral series-parallel networks with n elements.

The programs for A339158, there is no canonical definition to state claims against.
-/

/-! ## A339158.P14771201430892888667

`2*A339224(n+1)-A007454(n+1)`
-/

namespace A339158.P14771201430892888667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339224 (n + 1) - A007454 (n + 1)

end

end A339158.P14771201430892888667

/-! ## A339158.P9477744747615772401

`A339159(A254667(n+1))-(2*A339223(n+1)-A007453(n+1))`
-/

namespace A339158.P9477744747615772401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339159 (A254667 (n + 1)).toNat - (2 * A339223 (n + 1) - A007453 (n + 1))

end

end A339158.P9477744747615772401

/-!
# A339159: Number of achiral series-parallel networks with n elements.

The programs for A339159, there is no canonical definition to state claims against.
-/

/-! ## A339159.P1220938217067680048

`A339157(n+1)+A339158(n+1)-A000007(n)`
-/

namespace A339159.P1220938217067680048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339157 (n + 1) + (A339158 (n + 1) - A000007 n)

end

end A339159.P1220938217067680048

/-! ## A339159.P3705091023469916186

`A339157(n+1)+A178487(n)*A339158(n+1)`
-/

namespace A339159.P3705091023469916186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339157 (n + 1) + A178487 n * A339158 (n + 1)

end

end A339159.P3705091023469916186

/-! ## A339159.P15772472775558348246

`A339157(n+1)+A339158(n+1)%A005425(n)`
-/

namespace A339159.P15772472775558348246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339157 (n + 1) + Int.tmod (A339158 (n + 1)) (A005425 n)

end

end A339159.P15772472775558348246

/-! ## A339159.P14121799062471613770

`A339158(n+1)+A339157(n+1)%A093835(n+1)`
-/

namespace A339159.P14121799062471613770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339158 (n + 1) + Int.tmod (A339157 (n + 1)) (A093835 (n + 1))

end

end A339159.P14121799062471613770

/-! ## A339159.P10468573806308541379

`A339157(n+1)+A339158(n+1)-Δ[A006995(n+1)]%2`
-/

namespace A339159.P10468573806308541379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339157 (n + 1) + (A339158 (n + 1) - Int.tmod (f1 (n + 1) - f1 n) 2)

end

end A339159.P10468573806308541379

/-!
# A339160: Triangle read by rows: T(n,k) is the number of unlabeled nonseparable (or 2-connected) loopless multigraphs with n edges and k nodes (n >= 1, 2 <= k <= n + 1).

The programs for A339160, there is no canonical definition to state claims against.
-/

/-! ## A339160.P17275276697323921137

`A294882(2^A167763(n))`
-/

namespace A339160.P17275276697323921137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294882 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A167763 n : ℤ))).toNat

end

end A339160.P17275276697323921137

/-! ## A339160.P17779497457809279206

`A294882(A000079(A167763(n)))`
-/

namespace A339160.P17779497457809279206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294882 (A000079 (A167763 n).toNat).toNat

end

end A339160.P17779497457809279206

/-! ## A339160.P3970689696900310775

`A057526(or(1, A000079(A167763(n))))`
-/

namespace A339160.P3970689696900310775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (Int.lor 1 (A000079 (A167763 n).toNat)).toNat

end

end A339160.P3970689696900310775

/-! ## A339160.P7315250470009235889

`A167763(n)+A105812(A089759(n))`
-/

namespace A339160.P7315250470009235889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 n + A105812 (A089759 n).toNat

end

end A339160.P7315250470009235889

/-! ## A339160.P5182264630921617242

`A167763(n)+A105812(A227655(n))`
-/

namespace A339160.P5182264630921617242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 n + A105812 (A227655 n).toNat

end

end A339160.P5182264630921617242

/-!
# A339162: Number of compositions (ordered partitions) of n into distinct parts, the least being 1.

The programs for A339162, there is no canonical definition to state claims against.
-/

/-! ## A339162.P4650463189802876409

`A032006(n)-A032020(n)`
-/

namespace A339162.P4650463189802876409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032006 n - A032020 n

end

end A339162.P4650463189802876409

/-! ## A339162.P14455157749372100672

`A032020(n)-A032022(n)`
-/

namespace A339162.P14455157749372100672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A032022 n

end

end A339162.P14455157749372100672

/-! ## A339162.P2367863305300054395

`A032006(n)-(A216695(n)+1)`
-/

namespace A339162.P2367863305300054395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032006 n - (A216695 n + 1)

end

end A339162.P2367863305300054395

/-! ## A339162.P9942400116156378314

`A216695(n)+1-A032022(n)`
-/

namespace A339162.P9942400116156378314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n + (1 - A032022 n)

end

end A339162.P9942400116156378314

/-! ## A339162.P7087918796584097330

`(A032006(n)-A032022(n))/2`
-/

namespace A339162.P7087918796584097330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032006 n - A032022 n : ℚ) / 2

end

end A339162.P7087918796584097330

/-!
# A339163: Number of compositions (ordered partitions) of n into distinct parts, the least being 2.

The programs for A339163, there is no canonical definition to state claims against.
-/

/-! ## A339163.P9832481956696247450

`A032022(n)-A339101(n)`
-/

namespace A339163.P9832481956696247450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032022 n - A339101 n

end

end A339163.P9832481956696247450

/-! ## A339163.P8044688928302149309

`A032022(n)-(A339164(n)+A339102(n))`
-/

namespace A339163.P8044688928302149309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032022 n - (A339164 n + A339102 n)

end

end A339163.P8044688928302149309

/-! ## A339163.P11633727935644125841

`2*A032020(n)-A032006(n)-A339101(n)`
-/

namespace A339163.P11633727935644125841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032020 n - A032006 n - A339101 n

end

end A339163.P11633727935644125841

/-! ## A339163.P923030383176850522

`A032140(n+1)-A032153(n+1)-A339101(n)`
-/

namespace A339163.P923030383176850522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032140 (n + 1) - A032153 (n + 1) - A339101 n

end

end A339163.P923030383176850522

/-! ## A339163.P11198600252494055136

`A032153(n+1)-A032155(n+1)-A339101(n)`
-/

namespace A339163.P11198600252494055136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032153 (n + 1) - A032155 (n + 1) - A339101 n

end

end A339163.P11198600252494055136

/-!
# A339164: Number of compositions (ordered partitions) of n into distinct parts, the least being 3.

The programs for A339164, there is no canonical definition to state claims against.
-/

/-! ## A339164.P10518949280969305069

`A339101(n)-A339102(n)`
-/

namespace A339164.P10518949280969305069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n - A339102 n

end

end A339164.P10518949280969305069

/-! ## A339164.P848433489277142542

`A032022(n)-(A339163(n)+A339102(n))`
-/

namespace A339164.P848433489277142542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032022 n - (A339163 n + A339102 n)

end

end A339164.P848433489277142542

/-! ## A339164.P3785312930855776528

`A339101(n)-(A339165(n)+A339103(n))`
-/

namespace A339164.P3785312930855776528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n - (A339165 n + A339103 n)

end

end A339164.P3785312930855776528

/-! ## A339164.P1279866647817566197

`A339101(n)-(A339104(n)+A339166(n)+A339165(n))`
-/

namespace A339164.P1279866647817566197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n - (A339104 n + (A339166 n + A339165 n))

end

end A339164.P1279866647817566197

/-! ## A339164.P17963436522637389994

`A032022(n)-A339163(n)-(A339165(n)+A339103(n))`
-/

namespace A339164.P17963436522637389994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032022 n - A339163 n - (A339165 n + A339103 n)

end

end A339164.P17963436522637389994

/-!
# A339165: Number of compositions (ordered partitions) of n into distinct parts, the least being 4.

The programs for A339165, there is no canonical definition to state claims against.
-/

/-! ## A339165.P8712856080812342339

`A339102(n)-A339103(n)`
-/

namespace A339165.P8712856080812342339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339102 n - A339103 n

end

end A339165.P8712856080812342339

/-! ## A339165.P12651291953846968510

`A339101(n)-(A339164(n)+A339103(n))`
-/

namespace A339165.P12651291953846968510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n - (A339164 n + A339103 n)

end

end A339165.P12651291953846968510

/-!
# A339166: Number of compositions (ordered partitions) of n into distinct parts, the least being 5.

The programs for A339166, there is no canonical definition to state claims against.
-/

/-! ## A339166.P13329964774409393270

`A339103(n)-A339104(n)`
-/

namespace A339166.P13329964774409393270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n - A339104 n

end

end A339166.P13329964774409393270

/-! ## A339166.P1259677358154008154

`A339103(n)-(A339169(n)+A339108(n))`
-/

namespace A339166.P1259677358154008154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n - (A339169 n + A339108 n)

end

end A339166.P1259677358154008154

/-! ## A339166.P6671324912524277399

`A339103(n)-(A339109(n)+A339170(n)+A339169(n))`
-/

namespace A339166.P6671324912524277399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n - (A339109 n + (A339170 n + A339169 n))

end

end A339166.P6671324912524277399

/-! ## A339166.P4495325317970654170

`A339102(n)-(A339165(n)+A339104(n))`
-/

namespace A339166.P4495325317970654170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339102 n - (A339165 n + A339104 n)

end

end A339166.P4495325317970654170

/-! ## A339166.P12157785947804545022

`A339101(n)-(A339165(n)+A339164(n))-A339104(n)`
-/

namespace A339166.P12157785947804545022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339101 n - (A339165 n + A339164 n) - A339104 n

end

end A339166.P12157785947804545022

/-!
# A339169: Number of compositions (ordered partitions) of n into distinct parts, the least being 6.

The programs for A339169, there is no canonical definition to state claims against.
-/

/-! ## A339169.P1860020172952760577

`A339104(n)-A339108(n)`
-/

namespace A339169.P1860020172952760577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n - A339108 n

end

end A339169.P1860020172952760577

/-! ## A339169.P17492945437728973342

`A339103(n)-A339166(n)-(A339170(n)+A339109(n))`
-/

namespace A339169.P17492945437728973342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339103 n - A339166 n - (A339170 n + A339109 n)

end

end A339169.P17492945437728973342

/-!
# A339170: Number of compositions (ordered partitions) of n into distinct parts, the least being 7.

The programs for A339170, there is no canonical definition to state claims against.
-/

/-! ## A339170.P2380199114808858506

`A339108(n)-A339109(n)`
-/

namespace A339170.P2380199114808858506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n - A339109 n

end

end A339170.P2380199114808858506

/-! ## A339170.P5957439970142961635

`A339108(n)-(A339171(n)+A339110(n))`
-/

namespace A339170.P5957439970142961635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n - (A339171 n + A339110 n)

end

end A339170.P5957439970142961635

/-! ## A339170.P4876851304480295189

`A339104(n)-A339169(n)-(A339171(n)+A339110(n))`
-/

namespace A339170.P4876851304480295189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n - A339169 n - (A339171 n + A339110 n)

end

end A339170.P4876851304480295189

/-! ## A339170.P17745823465856175153

`A339104(n)+A057428(n)*A339169(n)-A339109(n)`
-/

namespace A339170.P17745823465856175153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n + A057428 n * A339169 n - A339109 n

end

end A339170.P17745823465856175153

/-! ## A339170.P17311515772843697178

`A339171(lt[A339210(n+4), A339176(n+1)])`
-/

namespace A339170.P17311515772843697178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339210 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339171 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339170.P17311515772843697178

/-!
# A339171: Number of compositions (ordered partitions) of n into distinct parts, the least being 8.

The programs for A339171, there is no canonical definition to state claims against.
-/

/-! ## A339171.P13815118898231092919

`A339109(n)-A339110(n)`
-/

namespace A339171.P13815118898231092919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339109 n - A339110 n

end

end A339171.P13815118898231092919

/-! ## A339171.P10592625419603275481

`A339109(n)+A008683(A068486(n+1))*A339110(n)`
-/

namespace A339171.P10592625419603275481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339109 n + A008683 (A068486 (n + 1)).toNat * A339110 n

end

end A339171.P10592625419603275481

/-! ## A339171.P12556778046759257079

`A339108(n)-(A339170(n)+A339110(n))`
-/

namespace A339171.P12556778046759257079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339108 n - (A339170 n + A339110 n)

end

end A339171.P12556778046759257079

/-! ## A339171.P1506701064987205725

`A339104(n)-(A339170(n)+A339169(n))-A339110(n)`
-/

namespace A339171.P1506701064987205725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339104 n - (A339170 n + A339169 n) - A339110 n

end

end A339171.P1506701064987205725

/-! ## A339171.P11180636671497468840

`A339172(lt[A308166(2*n+1), A029600(3*n+4)])`
-/

namespace A339171.P11180636671497468840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308166 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339172 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A339171.P11180636671497468840

/-!
# A339172: Number of compositions (ordered partitions) of n into distinct parts, the least being 9.

The programs for A339172, there is no canonical definition to state claims against.
-/

/-! ## A339172.P10834007958708305387

`A111891(C(n, A026830(n)²))`
-/

namespace A339172.P10834007958708305387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111891 (Nat.choose n (A026830 n ^ 2).toNat)

end

end A339172.P10834007958708305387

/-! ## A339172.P2831610512313585362

`A348717(A144845(n))%A135664(n+5)`
-/

namespace A339172.P2831610512313585362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348717 (A144845 n).toNat) (A135664 (n + 5))

end

end A339172.P2831610512313585362

/-! ## A339172.P17945909983070848476

`A305832(A000010(n+1)^A026803(n+1))`
-/

namespace A339172.P17945909983070848476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) ^ (A026803 (n + 1) : ℤ))).toNat

end

end A339172.P17945909983070848476

/-! ## A339172.P11891281186920087061

`A339170(A352241(2*(n+1))-A352241(n+2))`
-/

namespace A339172.P11891281186920087061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339170 (A352241 (2 * (n + 1)) - A352241 (n + 2)).toNat

end

end A339172.P11891281186920087061

/-! ## A339172.P9317055861187791534

`A023660(n+1)%A055642(A325855(2*(n+2)))`
-/

namespace A339172.P9317055861187791534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023660 (n + 1)) (A055642 (A325855 (2 * (n + 2))).toNat)

end

end A339172.P9317055861187791534

/-!
# A339173: Index of record values of A339082.

The programs for A339173, there is no canonical definition to state claims against.
-/

/-! ## A339173.P14595215325600236609

`A083668(n+1)-2`
-/

namespace A339173.P14595215325600236609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1) - 2

end

end A339173.P14595215325600236609

/-! ## A339173.P4814137626043611693

`2*A117517(n+1)-1`
-/

namespace A339173.P4814137626043611693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117517 (n + 1) - 1

end

end A339173.P4814137626043611693

/-! ## A339173.P6096837998674681182

`or(1, A001605(n+2)-3)`
-/

namespace A339173.P6096837998674681182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001605 (n + 2) - 3)

end

end A339173.P6096837998674681182

/-! ## A339173.P12043429543547716952

`A001605(ceil(cosh(sin(n))+n))-2`
-/

namespace A339173.P12043429543547716952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat - 2

end

end A339173.P12043429543547716952

/-! ## A339173.P14208799894500868741

`A001605(gcd(6, 2^n)+n)-2`
-/

namespace A339173.P14208799894500868741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (Nat.gcd 6 (2 ^ n) + n) - 2

end

end A339173.P14208799894500868741

/-! ## A339173.P9897390346576207052

`A001605((n+2)/ceil(acot(n)))-2`
-/

namespace A339173.P9897390346576207052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat - 2

end

end A339173.P9897390346576207052

/-! ## A339173.P23603061901970534

`A001605(ceil(abs(sin(n)))+1+n)-2`
-/

namespace A339173.P23603061901970534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (⌈|Real.sin (n : ℝ)|⌉ + 1 + (n : ℤ)).toNat - 2

end

end A339173.P23603061901970534

/-! ## A339173.P6711713614727270762

`A001605(A065475(n+1))-2`
-/

namespace A339173.P6711713614727270762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A065475 (n + 1)).toNat - 2

end

end A339173.P6711713614727270762

/-! ## A339173.P17210005400135273337

`A001605(n+2)-A020639(A000040(n+1)+1)`
-/

namespace A339173.P17210005400135273337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 2) - A020639 (A000040 (n + 1) + 1).toNat

end

end A339173.P17210005400135273337

/-! ## A339173.P2770050045133261363

`A001605(n+2)-A069744(n+2)/A117517(n+1)`
-/

namespace A339173.P2770050045133261363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001605 (n + 2) : ℚ) - (A069744 (n + 2) : ℚ) / (A117517 (n + 1) : ℚ)

end

end A339173.P2770050045133261363

/-!
# A339176: Square array read by rising antidiagonals. T(n, k) is the k-th root of the number of root sets modulo p the n-th prime.

The programs for A339176, there is no canonical definition to state claims against.
-/

/-! ## A339176.P7880458822840944827

`A001222(A203647(n+1)^A327618(n))*A005378(n)+2`
-/

namespace A339176.P7880458822840944827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A203647 (n + 1) : ℚ) ^ (A327618 n : ℤ))).toNat * A005378 n + 2

end

end A339176.P7880458822840944827

/-!
# A339178: Irregular triangle read by rows in which row n lists the compositions (ordered partitions) of n into distinct parts in reverse lexicographic order.

The programs for A339178, there is no canonical definition to state claims against.
-/

/-! ## A339178.P5863166059401501039

`A305079(A088178(n+1)+A000079(n))`
-/

namespace A339178.P5863166059401501039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A088178 (n + 1) + A000079 n).toNat

end

end A339178.P5863166059401501039

/-! ## A339178.P2762972556314703497

`A001511(or(A000079(n), A075075(n+1)))`
-/

namespace A339178.P2762972556314703497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A000079 n) (A075075 (n + 1))).toNat

end

end A339178.P2762972556314703497

/-! ## A339178.P4689827638176481553

`A001511(or(A000079(n), A088178(n+1)))`
-/

namespace A339178.P4689827638176481553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A000079 n) (A088178 (n + 1))).toNat

end

end A339178.P4689827638176481553

/-! ## A339178.P8211349693220376926

`A010894(3*(n+1))+A001511(A088178(n+1))`
-/

namespace A339178.P8211349693220376926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (3 * (n + 1) + 21) + A001511 (A088178 (n + 1)).toNat

end

end A339178.P8211349693220376926

/-! ## A339178.P13149866674929277491

`A001511(A019565(2*(n+1))*A088178(n+1))`
-/

namespace A339178.P13149866674929277491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A019565 (2 * (n + 1)) * A088178 (n + 1)).toNat

end

end A339178.P13149866674929277491

/-!
# A339180: Primes p such that p mod A001414(p-1) = p mod A001414(p+1).

The programs for A339180, there is no canonical definition to state claims against.
-/

/-! ## A339180.P6813488557428058969

`A378696(A072702(n+1))`
-/

namespace A339180.P6813488557428058969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378696 (A072702 (n + 1)).toNat

end

end A339180.P6813488557428058969

/-!
# A339183: Number of partitions of n into two parts such that the smaller part is a nonzero square.

The programs for A339183, the canonical program `A339183.P14330859921888403389` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339183 has offset 0).

The definition of A339183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A339183.P14330859921888403389

`floor(sqrt(n/2))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339183

/-- `floor(sqrt(n/2))` -/
def P14330859921888403389.Spec : Prop :=
  ∀ n, P14330859921888403389.a n = A339183 n

theorem P14330859921888403389.correct : P14330859921888403389.Spec := by
  intro n
  simp only [A339183]

end A339183

/-! ## A339183.P12626979591801992929

`A339186(n)-A339184(n)`
-/

namespace A339183.P12626979591801992929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 n - A339184 n

end

end A339183.P12626979591801992929

namespace A339183

/-- `A339186(n)-A339184(n)` -/
def P12626979591801992929.Spec : Prop :=
  ∀ n, P12626979591801992929.a n = A339183 n

theorem P12626979591801992929.correct : P12626979591801992929.Spec := by
  intro n
  simp only [A339183, Nat.add_sub_cancel, A339183.P12626979591801992929.a, A339183.P14330859921888403389.a, A339184, A339184.P8605602739743868838.a, A339186, A339186.P3764610736503772523.a, A135034, A135034.P11734383480113232451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A339183

/-! ## A339183.P14321964834809566425

`∑[∑{d}[n, #+1]%2]`
-/

namespace A339183.P14321964834809566425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), (d + 1)) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339183.P14321964834809566425

namespace A339183

/-- `∑[∑{d}[n, #+1]%2]` -/
def P14321964834809566425.Spec : Prop :=
  ∀ n, (P14321964834809566425.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P8485010340820206740

`∑[and(1, ∑{d}[n, #+1])]`
-/

namespace A339183.P8485010340820206740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f2 n), (d + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339183.P8485010340820206740

namespace A339183

/-- `∑[and(1, ∑{d}[n, #+1])]` -/
def P8485010340820206740.Spec : Prop :=
  ∀ n, (P8485010340820206740.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P2185115300736821726

`∑[char[∑[or(2, 4*n)]]]`
-/

namespace A339183.P2185115300736821726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339183.P2185115300736821726

namespace A339183

/-- `∑[char[∑[or(2, 4*n)]]]` -/
def P2185115300736821726.Spec : Prop :=
  ∀ n, (P2185115300736821726.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P15587559267549105869

`∑[char[∑[xor(2, 4*n)]]]`
-/

namespace A339183.P15587559267549105869
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339183.P15587559267549105869

namespace A339183

/-- `∑[char[∑[xor(2, 4*n)]]]` -/
def P15587559267549105869.Spec : Prop :=
  ∀ n, (P15587559267549105869.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P7811285405389689343

`ceil(sqrt(or(1, n)/2))-1`
-/

namespace A339183.P7811285405389689343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((Nat.lor 1 n : ℚ) / 2 : ℝ)⌉ - 1

end

end A339183.P7811285405389689343

namespace A339183

/-- `ceil(sqrt(or(1, n)/2))-1` -/
def P7811285405389689343.Spec : Prop :=
  ∀ n, P7811285405389689343.a n = A339183 n

end A339183

/-! ## A339183.P12954840516170064704

`val(2^floor(sqrt(2*n)), 4)`
-/

namespace A339183.P12954840516170064704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ Nat.sqrt (2 * n)) 4

end

end A339183.P12954840516170064704

namespace A339183

/-- `val(2^floor(sqrt(2*n)), 4)` -/
def P12954840516170064704.Spec : Prop :=
  ∀ n, (P12954840516170064704.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P2566728102175502528

`∑[char[lcm(2, 2*(n+1)²)]]`
-/

namespace A339183.P2566728102175502528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * (n + 1) ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339183.P2566728102175502528

namespace A339183

/-- `∑[char[lcm(2, 2*(n+1)²)]]` -/
def P2566728102175502528.Spec : Prop :=
  ∀ n, (P2566728102175502528.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P16416140223674138396

`∑[and(1, char[2*(n+1)²])]`
-/

namespace A339183.P16416140223674138396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339183.P16416140223674138396

namespace A339183

/-- `∑[and(1, char[2*(n+1)²])]` -/
def P16416140223674138396.Spec : Prop :=
  ∀ n, (P16416140223674138396.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P6483559711890791181

`∑[char[2*C(n+1, n)²]]`
-/

namespace A339183.P6483559711890791181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339183.P6483559711890791181

namespace A339183

/-- `∑[char[2*C(n+1, n)²]]` -/
def P6483559711890791181.Spec : Prop :=
  ∀ n, (P6483559711890791181.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P10508419352894136408

`round(sinh(log(floor(sqrt(2*n+1)))))`
-/

namespace A339183.P10508419352894136408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Nat.sqrt (2 * n + 1) : ℝ)))

end

end A339183.P10508419352894136408

namespace A339183

/-- `round(sinh(log(floor(sqrt(2*n+1)))))` -/
def P10508419352894136408.Spec : Prop :=
  ∀ n, P10508419352894136408.a n = A339183 n

end A339183

/-! ## A339183.P13330053886242489107

`char[2*n²]+a(n-1)` with `a(0)=0`
-/

namespace A339183.P13330053886242489107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A339183.P13330053886242489107

namespace A339183

/-- `char[2*n²]+a(n-1)` -/
def P13330053886242489107.Spec : Prop :=
  ∀ n, (P13330053886242489107.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P3928517388216979

`comp[C(2*n+1, 2)]-(n+1)`
-/

namespace A339183.P3928517388216979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A339183.P3928517388216979

namespace A339183

/-- `comp[C(2*n+1, 2)]-(n+1)` -/
def P3928517388216979.Spec : Prop :=
  ∀ n, P3928517388216979.a n = A339183 n

end A339183

/-! ## A339183.P5080235189977283611

`comp[C(2*n+1, 2)]%(n+1)`
-/

namespace A339183.P5080235189977283611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A339183.P5080235189977283611

namespace A339183

/-- `comp[C(2*n+1, 2)]%(n+1)` -/
def P5080235189977283611.Spec : Prop :=
  ∀ n, (P5080235189977283611.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P9123252560966431020

`comp[n*(2*n+1)]%(n+1)`
-/

namespace A339183.P9123252560966431020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A339183.P9123252560966431020

namespace A339183

/-- `comp[n*(2*n+1)]%(n+1)` -/
def P9123252560966431020.Spec : Prop :=
  ∀ n, (P9123252560966431020.a n : ℤ) = A339183 n

end A339183

/-! ## A339183.P4552014023384235818

`comp[lcm(n, 2*n+1)]-(n+1)`
-/

namespace A339183.P4552014023384235818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A339183.P4552014023384235818

namespace A339183

/-- `comp[lcm(n, 2*n+1)]-(n+1)` -/
def P4552014023384235818.Spec : Prop :=
  ∀ n, P4552014023384235818.a n = A339183 n

end A339183

/-! ## A339183.P17114776411490618191

`A000196(floor(n/2))`
-/

namespace A339183.P17114776411490618191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(n : ℚ) / 2⌋.toNat

end

end A339183.P17114776411490618191

namespace A339183

/-- `A000196(floor(n/2))` -/
def P17114776411490618191.Spec : Prop :=
  ∀ n, P17114776411490618191.a n = A339183 n

end A339183

/-! ## A339183.P15529552890038165294

`∑[A379480(n)]-1`
-/

namespace A339183.P15529552890038165294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A339183.P15529552890038165294

namespace A339183

/-- `∑[A379480(n)]-1` -/
def P15529552890038165294.Spec : Prop :=
  ∀ n, P15529552890038165294.a n = A339183 n

end A339183

/-! ## A339183.P16254141407881367746

`A183301(n+1)-(n+1)`
-/

namespace A339183.P16254141407881367746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) - (n + 1 : ℤ)

end

end A339183.P16254141407881367746

namespace A339183

/-- `A183301(n+1)-(n+1)` -/
def P16254141407881367746.Spec : Prop :=
  ∀ n, P16254141407881367746.a n = A339183 n

theorem P16254141407881367746.correct : P16254141407881367746.Spec := by
  intro n
  simp only [A339183, Nat.add_sub_cancel, A339183.P16254141407881367746.a, A339183.P14330859921888403389.a, A183301, A183301.P14945938495758224027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A339183

/-!
# A339184: Number of partitions of n into two parts such that the larger part is a nonzero square.

The programs for A339184, the canonical program `A339184.P8605602739743868838` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339184 has offset 0).

The definition of A339184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339184.P3434759210539096240

`A339186(n)-A339183(n)`
-/

namespace A339184.P3434759210539096240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 n - A339183 n

end

end A339184.P3434759210539096240

namespace A339184

/-- `A339186(n)-A339183(n)` -/
def P3434759210539096240.Spec : Prop :=
  ∀ n, P3434759210539096240.a n = A339184 n

theorem P3434759210539096240.correct : P3434759210539096240.Spec := by
  intro n
  simp only [A339184, Nat.add_sub_cancel, A339184.P3434759210539096240.a, A339184.P8605602739743868838.a, A135034, A135034.P11734383480113232451.a, A339183, A339183.P14330859921888403389.a, A339186, A339186.P3764610736503772523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A339184

/-! ## A339184.P161915528415735051

`floor(ceil(sqrt(n))-sqrt(n/2))`
-/

namespace A339184.P161915528415735051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.sqrt (n : ℝ)⌉ : ℝ) - Real.sqrt ((n : ℚ) / 2 : ℝ)⌋

end

end A339184.P161915528415735051

namespace A339184

/-- `floor(ceil(sqrt(n))-sqrt(n/2))` -/
def P161915528415735051.Spec : Prop :=
  ∀ n, P161915528415735051.a n = A339184 n

end A339184

/-! ## A339184.P8068789485174807305

`round(sqrt(floor((n+1)/2))-A273190(n))`
-/

namespace A339184.P8068789485174807305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌊(n + 1 : ℚ) / 2⌋ : ℝ) - (A273190 n : ℝ))

end

end A339184.P8068789485174807305

namespace A339184

/-- `round(sqrt(floor((n+1)/2))-A273190(n))` -/
def P8068789485174807305.Spec : Prop :=
  ∀ n, P8068789485174807305.a n = A339184 n

end A339184

/-! ## A339184.P8605602739743868838

`A135034(n)-A135034(ceil(n/2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A339184

/-- `A135034(n)-A135034(ceil(n/2))` -/
def P8605602739743868838.Spec : Prop :=
  ∀ n, P8605602739743868838.a n = A339184 n

theorem P8605602739743868838.correct : P8605602739743868838.Spec := by
  intro n
  simp only [A339184]

end A339184

/-! ## A339184.P6161323153389709188

`floor(sqrt(2*n)-A273190(n))-A339183(n)`
-/

namespace A339184.P6161323153389709188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * n : ℝ) - (A273190 n : ℝ)⌋ - A339183 n

end

end A339184.P6161323153389709188

namespace A339184

/-- `floor(sqrt(2*n)-A273190(n))-A339183(n)` -/
def P6161323153389709188.Spec : Prop :=
  ∀ n, P6161323153389709188.a n = A339184 n

end A339184

/-! ## A339184.P15859869051379501363

`A172471(n)-A273190(n)-floor(sqrt(n/2))`
-/

namespace A339184.P15859869051379501363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n - A273190 n - ⌊Real.sqrt ((n : ℚ) / 2 : ℝ)⌋

end

end A339184.P15859869051379501363

namespace A339184

/-- `A172471(n)-A273190(n)-floor(sqrt(n/2))` -/
def P15859869051379501363.Spec : Prop :=
  ∀ n, P15859869051379501363.a n = A339184 n

end A339184

/-! ## A339184.P13662624575804608048

`floor(sqrt(2*n)-A273190(n))-∑[char[2*A007318(n)²]]`
-/

namespace A339184.P13662624575804608048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * n : ℝ) - (A273190 n : ℝ)⌋ - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A339184.P13662624575804608048

namespace A339184

/-- `floor(sqrt(2*n)-A273190(n))-∑[char[2*A007318(n)²]]` -/
def P13662624575804608048.Spec : Prop :=
  ∀ n, P13662624575804608048.a n = A339184 n

end A339184

/-! ## A339184.P5465740910762520318

`∑[A265186(2*n)-A267621(n)]`
-/

namespace A339184.P5465740910762520318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (2 * n) - A267621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339184.P5465740910762520318

namespace A339184

/-- `∑[A265186(2*n)-A267621(n)]` -/
def P5465740910762520318.Spec : Prop :=
  ∀ n, P5465740910762520318.a n = A339184 n

end A339184

/-! ## A339184.P11153762665801927512

`∑[A265186(2*n)-A265186(n+1)]`
-/

namespace A339184.P11153762665801927512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (2 * n) - A265186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339184.P11153762665801927512

namespace A339184

/-- `∑[A265186(2*n)-A265186(n+1)]` -/
def P11153762665801927512.Spec : Prop :=
  ∀ n, P11153762665801927512.a n = A339184 n

end A339184

/-! ## A339184.P13109287254852526307

`A000196(2*n)-A273190(n)-floor(sqrt(n/2))`
-/

namespace A339184.P13109287254852526307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n) - A273190 n - ⌊Real.sqrt ((n : ℚ) / 2 : ℝ)⌋

end

end A339184.P13109287254852526307

namespace A339184

/-- `A000196(2*n)-A273190(n)-floor(sqrt(n/2))` -/
def P13109287254852526307.Spec : Prop :=
  ∀ n, P13109287254852526307.a n = A339184 n

end A339184

/-! ## A339184.P10613575236212004960

`A371355(n+1)-A273190(n)`
-/

namespace A339184.P10613575236212004960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 (n + 1) - A273190 n

end

end A339184.P10613575236212004960

namespace A339184

/-- `A371355(n+1)-A273190(n)` -/
def P10613575236212004960.Spec : Prop :=
  ∀ n, P10613575236212004960.a n = A339184 n

end A339184

/-!
# A339186: Total number of nonzero squares in the partitions of n into 2 parts.

The programs for A339186, the canonical program `A339186.P3764610736503772523` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339186 has offset 0).

The definition of A339186 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339184, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339186.P3764610736503772523

`A339184(n)+A339183(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A339186

/-- `A339184(n)+A339183(n)` -/
def P3764610736503772523.Spec : Prop :=
  ∀ n, P3764610736503772523.a n = A339186 n

theorem P3764610736503772523.correct : P3764610736503772523.Spec := by
  intro n
  simp only [A339186]

end A339186

/-! ## A339186.P5134303698840216106

`ceil(sqrt(n))-char[comp[2*n²]]`
-/

namespace A339186.P5134303698840216106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A339186.P5134303698840216106

namespace A339186

/-- `ceil(sqrt(n))-char[comp[2*n²]]` -/
def P5134303698840216106.Spec : Prop :=
  ∀ n, P5134303698840216106.a n = A339186 n

end A339186

/-! ## A339186.P518567980341471729

`floor(sqrt(2*n)-A273190(n))`
-/

namespace A339186.P518567980341471729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * n : ℝ) - (A273190 n : ℝ)⌋

end

end A339186.P518567980341471729

namespace A339186

/-- `floor(sqrt(2*n)-A273190(n))` -/
def P518567980341471729.Spec : Prop :=
  ∀ n, P518567980341471729.a n = A339186 n

end A339186

/-! ## A339186.P16931007804459086636

`abs(A172471(n)-A273190(n))`
-/

namespace A339186.P16931007804459086636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172471 n - A273190 n|

end

end A339186.P16931007804459086636

namespace A339186

/-- `abs(A172471(n)-A273190(n))` -/
def P16931007804459086636.Spec : Prop :=
  ∀ n, P16931007804459086636.a n = A339186 n

end A339186

/-! ## A339186.P6694831600936212230

`abs(A000196(2*n)-A273190(n))`
-/

namespace A339186.P6694831600936212230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000196 (2 * n) - A273190 n|

end

end A339186.P6694831600936212230

namespace A339186

/-- `abs(A000196(2*n)-A273190(n))` -/
def P6694831600936212230.Spec : Prop :=
  ∀ n, P6694831600936212230.a n = A339186 n

end A339186

/-!
# A339187: a(n) is the maximum of f(s) for all binary sequences s of length n where f(s) denote the duplication distance between s and its root.

The programs for A339187, there is no canonical definition to state claims against.
-/

/-! ## A339187.P7879584186557719053

`round((n/18-sqrt(n))²)`
-/

namespace A339187.P7879584186557719053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 18 : ℝ) - Real.sqrt (n : ℝ)) ^ 2)

end

end A339187.P7879584186557719053

/-! ## A339187.P7186334787381824697

`floor(log2(A342229(n+1)))`
-/

namespace A339187.P7186334787381824697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A342229 (n + 1)).toNat

end

end A339187.P7186334787381824697

/-! ## A339187.P1895519584964564241

`floor(log2(∑[A045923(n+2)]))`
-/

namespace A339187.P1895519584964564241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045923 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339187.P1895519584964564241

/-! ## A339187.P647851382781591538

`ceil(sqrt(∪[8*n, A099215(n)]))`
-/

namespace A339187.P647851382781591538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099215 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℝ)⌉

end

end A339187.P647851382781591538

/-!
# A339188: Highly insulated primes (see Comments for definition).

The programs for A339188, there is no canonical definition to state claims against.
-/

/-! ## A339188.P13335198150189509019

`A063643(A076610(n+1)%A374425(n+1))`
-/

namespace A339188.P13335198150189509019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (Int.tmod (A076610 (n + 1)) (A374425 (n + 1))).toNat

end

end A339188.P13335198150189509019

/-! ## A339188.P7070814533278985054

`A063643(A137582(2*(n+1))%A239047(n+1))`
-/

namespace A339188.P7070814533278985054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063643 (Int.tmod (A137582 (2 * (n + 1))) (A239047 (n + 1))).toNat

end

end A339188.P7070814533278985054

/-!
# A339190: Square array T(n,k), n >= 2, k >= 2, read by antidiagonals, where T(n,k) is the number of (undirected) Hamiltonian cycles on the n X k king graph.

The programs for A339190, there is no canonical definition to state claims against.
-/

/-! ## A339190.P8835708835764912381

`A071044(A038286(n))*A316183(n+1)`
-/

namespace A339190.P8835708835764912381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A038286 n).toNat * A316183 (n + 1)

end

end A339190.P8835708835764912381

/-! ## A339190.P13108538607318479918

`A071044(A038286(n))*A317118(n+1)`
-/

namespace A339190.P13108538607318479918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A038286 n).toNat * A317118 (n + 1)

end

end A339190.P13108538607318479918

/-! ## A339190.P4290484907880850263

`A020639(A235421(n+1))*A220967(n+1)`
-/

namespace A339190.P4290484907880850263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235421 (n + 1)).toNat * A220967 (n + 1)

end

end A339190.P4290484907880850263

/-! ## A339190.P8063941960960766973

`A178815(n+1)*A334733(A316183(n+1))`
-/

namespace A339190.P8063941960960766973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1) * A334733 (A316183 (n + 1)).toNat

end

end A339190.P8063941960960766973

/-! ## A339190.P9877497141012820722

`A178815(n+1)*A334733(A317118(n+1))`
-/

namespace A339190.P9877497141012820722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1) * A334733 (A317118 (n + 1)).toNat

end

end A339190.P9877497141012820722

/-!
# A339191: Partial products of squarefree semiprimes (A006881).

The programs for A339191, there is no canonical definition to state claims against.
-/

/-! ## A339191.P2488766382004386135

`∏[A006881(n+1)]`
-/

namespace A339191.P2488766382004386135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339191.P2488766382004386135

/-! ## A339191.P9913824587857585804

`∏[A030229(n+2)]`
-/

namespace A339191.P9913824587857585804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339191.P9913824587857585804

/-! ## A339191.P9143951719278368674

`∏[sqrt(A085986(n+1))]`
-/

namespace A339191.P9143951719278368674
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085986 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339191.P9143951719278368674

/-! ## A339191.P10535395502523066534

`∏[sqrt(A077448(n+2))]`
-/

namespace A339191.P10535395502523066534
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077448 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339191.P10535395502523066534

/-! ## A339191.P1784197161821295075

`∏[A081761(a(n-1))]` with `a(0)=6`
-/

namespace A339191.P1784197161821295075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A081761 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339191.P1784197161821295075

/-! ## A339191.P7233318607458335636

`∏[A085653(a(n-1))]` with `a(0)=6`
-/

namespace A339191.P7233318607458335636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A085653 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A339191.P7233318607458335636

/-!
# A339193: Matula-Goebel numbers of unlabeled binary rooted semi-identity trees.

The programs for A339193, there is no canonical definition to state claims against.
-/

/-! ## A339193.P12853962382750443675

`A127302(∑[A246207(n)])`
-/

namespace A339193.P12853962382750443675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A339193.P12853962382750443675

/-! ## A339193.P8630834883965094994

`A127302(Δ[A049937(n+1)])`
-/

namespace A339193.P8630834883965094994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 (f1 (n + 1) - f1 n).toNat

end

end A339193.P8630834883965094994

/-! ## A339193.P11558785710451311987

`A127302(or(n, A075189(n+1)))`
-/

namespace A339193.P11558785710451311987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127302 (Int.lor (n : ℤ) (A075189 (n + 1))).toNat

end

end A339193.P11558785710451311987

/-!
# A339194: Sum of all squarefree semiprimes with greater prime factor prime(n).

The programs for A339194, the canonical program `A339194.P3840768483066506201` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339194 has offset 1).

The definition of A339194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, A143215, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A339194.P3840768483066506201

`A034960(n+1)-A143215(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A339194

/-- `A034960(n+1)-A143215(n+1)` -/
def P3840768483066506201.Spec : Prop :=
  ∀ n, P3840768483066506201.a n = A339194 (n + 1)

theorem P3840768483066506201.correct : P3840768483066506201.Spec := by
  intro n
  simp only [A339194, Nat.add_sub_cancel]

end A339194

/-! ## A339194.P2748909116087102691

`Δ[A007504(n)]*A007504(n)`
-/

namespace A339194.P2748909116087102691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007504 n

end

end A339194.P2748909116087102691

namespace A339194

/-- `Δ[A007504(n)]*A007504(n)` -/
def P2748909116087102691.Spec : Prop :=
  ∀ n, P2748909116087102691.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P11511302223314798727

`A000040(n+1)*A007504(n)`
-/

namespace A339194.P11511302223314798727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007504 n

end

end A339194.P11511302223314798727

namespace A339194

/-- `A000040(n+1)*A007504(n)` -/
def P11511302223314798727.Spec : Prop :=
  ∀ n, P11511302223314798727.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P16892482394158690584

`A006005(n+1)*A007504(n)`
-/

namespace A339194.P16892482394158690584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A007504 n

end

end A339194.P16892482394158690584

namespace A339194

/-- `A006005(n+1)*A007504(n)` -/
def P16892482394158690584.Spec : Prop :=
  ∀ n, P16892482394158690584.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P4157358864716815103

`abs(A273960(n+1))*A007504(n)`
-/

namespace A339194.P4157358864716815103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)| * A007504 n

end

end A339194.P4157358864716815103

namespace A339194

/-- `abs(A273960(n+1))*A007504(n)` -/
def P4157358864716815103.Spec : Prop :=
  ∀ n, P4157358864716815103.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P17050235754695397068

`sqrt(A001248(n+1))*A007504(n)`
-/

namespace A339194.P17050235754695397068
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A007504 n : ℝ)

end

end A339194.P17050235754695397068

namespace A339194

/-- `sqrt(A001248(n+1))*A007504(n)` -/
def P17050235754695397068.Spec : Prop :=
  ∀ n, P17050235754695397068.a n = (A339194 (n + 1) : ℝ)

end A339194

/-! ## A339194.P13279723151829526173

`∑[A054541(n+1)]*A007504(n)`
-/

namespace A339194.P13279723151829526173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007504 n

end

end A339194.P13279723151829526173

namespace A339194

/-- `∑[A054541(n+1)]*A007504(n)` -/
def P13279723151829526173.Spec : Prop :=
  ∀ n, P13279723151829526173.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P16089396671889784659

`A034957(n+1)-A008837(n+1)`
-/

namespace A339194.P16089396671889784659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034957 (n + 1) - A008837 (n + 1)

end

end A339194.P16089396671889784659

namespace A339194

/-- `A034957(n+1)-A008837(n+1)` -/
def P16089396671889784659.Spec : Prop :=
  ∀ n, P16089396671889784659.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P10795457252678022342

`A034956(n+1)-A034953(n+1)`
-/

namespace A339194.P10795457252678022342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) - A034953 (n + 1)

end

end A339194.P10795457252678022342

namespace A339194

/-- `A034956(n+1)-A034953(n+1)` -/
def P10795457252678022342.Spec : Prop :=
  ∀ n, P10795457252678022342.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P11546996584842414768

`A143215(n+1)-A001248(n+1)`
-/

namespace A339194.P11546996584842414768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143215 (n + 1) - A001248 (n + 1)

end

end A339194.P11546996584842414768

namespace A339194

/-- `A143215(n+1)-A001248(n+1)` -/
def P11546996584842414768.Spec : Prop :=
  ∀ n, P11546996584842414768.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P11716110540007802170

`(A006093(n+1)+1)*A007504(n)`
-/

namespace A339194.P11716110540007802170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A007504 n

end

end A339194.P11716110540007802170

namespace A339194

/-- `(A006093(n+1)+1)*A007504(n)` -/
def P11716110540007802170.Spec : Prop :=
  ∀ n, P11716110540007802170.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P13948125271913591915

`(A008864(n+1)-1)*A007504(n)`
-/

namespace A339194.P13948125271913591915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A007504 n

end

end A339194.P13948125271913591915

namespace A339194

/-- `(A008864(n+1)-1)*A007504(n)` -/
def P13948125271913591915.Spec : Prop :=
  ∀ n, P13948125271913591915.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P1479288906481069638

`(A040976(n+1)+2)*A007504(n)`
-/

namespace A339194.P1479288906481069638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A007504 n

end

end A339194.P1479288906481069638

namespace A339194

/-- `(A040976(n+1)+2)*A007504(n)` -/
def P1479288906481069638.Spec : Prop :=
  ∀ n, P1479288906481069638.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P10759020978153226598

`(A052147(n+1)-2)*A007504(n)`
-/

namespace A339194.P10759020978153226598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) * A007504 n

end

end A339194.P10759020978153226598

namespace A339194

/-- `(A052147(n+1)-2)*A007504(n)` -/
def P10759020978153226598.Spec : Prop :=
  ∀ n, P10759020978153226598.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P14414258709556378254

`A100484(n+1)/2*A007504(n)`
-/

namespace A339194.P14414258709556378254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 * (A007504 n : ℚ)

end

end A339194.P14414258709556378254

namespace A339194

/-- `A100484(n+1)/2*A007504(n)` -/
def P14414258709556378254.Spec : Prop :=
  ∀ n, P14414258709556378254.a n = (A339194 (n + 1) : ℚ)

end A339194

/-! ## A339194.P18259623192184439813

`(A014692(n+1)+n)*A007504(n)`
-/

namespace A339194.P18259623192184439813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A007504 n

end

end A339194.P18259623192184439813

namespace A339194

/-- `(A014692(n+1)+n)*A007504(n)` -/
def P18259623192184439813.Spec : Prop :=
  ∀ n, P18259623192184439813.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P2600295609639769522

`(A095116(n+1)-n)*A007504(n)`
-/

namespace A339194.P2600295609639769522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095116 (n + 1) - (n : ℤ)) * A007504 n

end

end A339194.P2600295609639769522

namespace A339194

/-- `(A095116(n+1)-n)*A007504(n)` -/
def P2600295609639769522.Spec : Prop :=
  ∀ n, P2600295609639769522.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P7008257651671532913

`A143215(n+1)-A000040(n+1)²`
-/

namespace A339194.P7008257651671532913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143215 (n + 1) - A000040 (n + 1) ^ 2

end

end A339194.P7008257651671532913

namespace A339194

/-- `A143215(n+1)-A000040(n+1)²` -/
def P7008257651671532913.Spec : Prop :=
  ∀ n, P7008257651671532913.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P13551947444452384433

`A000040(n+1)*∑[A182986(n+1)]`
-/

namespace A339194.P13551947444452384433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A339194.P13551947444452384433

namespace A339194

/-- `A000040(n+1)*∑[A182986(n+1)]` -/
def P13551947444452384433.Spec : Prop :=
  ∀ n, P13551947444452384433.a n = A339194 (n + 1)

end A339194

/-! ## A339194.P8824108396538491061

`(A014284(n+1)-1)*A000040(n+1)`
-/

namespace A339194.P8824108396538491061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014284 (n + 1) - 1) * A000040 (n + 1)

end

end A339194.P8824108396538491061

namespace A339194

/-- `(A014284(n+1)-1)*A000040(n+1)` -/
def P8824108396538491061.Spec : Prop :=
  ∀ n, P8824108396538491061.a n = A339194 (n + 1)

end A339194

/-!
# A339195: Triangle of squarefree numbers grouped by greatest prime factor, read by rows.

The programs for A339195, there is no canonical definition to state claims against.
-/

/-! ## A339195.P1438616236164061554

`filter[A379746(n+1), A008966(#)]`
-/

namespace A339195.P1438616236164061554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A339195.P1438616236164061554

/-! ## A339195.P8758045696999610488

`filter[A381112(n+1), A008966(#)]`
-/

namespace A339195.P8758045696999610488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A339195.P8758045696999610488

/-! ## A339195.P8844419815434071712

`filter[A305325(n+1), A008966(#)]`
-/

namespace A339195.P8844419815434071712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A339195.P8844419815434071712

/-! ## A339195.P11307144049511279265

`filter[A305325(n+1), A353519(#)]`
-/

namespace A339195.P11307144049511279265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A339195.P11307144049511279265

/-! ## A339195.P9231246778905207546

`filter[A381112(n+1), A384667(#)]`
-/

namespace A339195.P9231246778905207546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A339195.P9231246778905207546

/-!
# A339196: Number of (undirected) cycles on the n X 2 king graph.

The programs for A339196, the canonical program `A339196.P5186645465537012145` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A339196 has offset 2).

The definition of A339196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A339196.P5186645465537012145

`∑[2^(n+4)-9]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A339196

/-- `∑[2^(n+4)-9]` -/
def P5186645465537012145.Spec : Prop :=
  ∀ n, P5186645465537012145.a n = A339196 (n + 2)

theorem P5186645465537012145.correct : P5186645465537012145.Spec := by
  intro n
  simp only [A339196, Nat.add_sub_cancel]

end A339196

/-! ## A339196.P2132042407293539927

`ogf((7+2x)/(1-4x+5x^2-2x^3))`
-/

namespace A339196.P2132042407293539927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 2] [1, -4, 5, -2] n

end

end A339196.P2132042407293539927

namespace A339196

/-- `ogf((7+2x)/(1-4x+5x^2-2x^3))` -/
def P2132042407293539927.Spec : Prop :=
  ∀ n, P2132042407293539927.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P13102419313972422175

`floor(∑[2*a(n-1)+9])` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A339196.P13102419313972422175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  2 * f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339196.P13102419313972422175

namespace A339196

/-- `floor(∑[2*a(n-1)+9])` -/
def P13102419313972422175.Spec : Prop :=
  ∀ n, (P13102419313972422175.a n : ℤ) = A339196 (n + 2)

end A339196

/-! ## A339196.P9507683970274620802

`floor(∑[∑[2*a(n-1)]-1])` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A339196.P9507683970274620802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339196.P9507683970274620802

namespace A339196

/-- `floor(∑[∑[2*a(n-1)]-1])` -/
def P9507683970274620802.Spec : Prop :=
  ∀ n, P9507683970274620802.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P2360587653059511960

`∑[∑[2*a(n-1)]]-(n+1)` with `a(0)=8`
-/

namespace A339196.P2360587653059511960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A339196.P2360587653059511960

namespace A339196

/-- `∑[∑[2*a(n-1)]]-(n+1)` -/
def P2360587653059511960.Spec : Prop :=
  ∀ n, P2360587653059511960.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P11336233656221934901

`floor(∑[a(n-1)+a(n-1)+9])` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A339196.P11336233656221934901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339196.P11336233656221934901

namespace A339196

/-- `floor(∑[a(n-1)+a(n-1)+9])` -/
def P11336233656221934901.Spec : Prop :=
  ∀ n, (P11336233656221934901.a n : ℤ) = A339196 (n + 2)

end A339196

/-! ## A339196.P12242283704738247812

`∑[a(n-1)+a(n-1)+8]-(n+1)` with `a(0)=8`
-/

namespace A339196.P12242283704738247812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A339196.P12242283704738247812

namespace A339196

/-- `∑[a(n-1)+a(n-1)+8]-(n+1)` -/
def P12242283704738247812.Spec : Prop :=
  ∀ n, P12242283704738247812.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P18158072987363765244

`A308585(n+2)+1+n`
-/

namespace A339196.P18158072987363765244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308585 (n + 2) + 1 + (n : ℤ)

end

end A339196.P18158072987363765244

namespace A339196

/-- `A308585(n+2)+1+n` -/
def P18158072987363765244.Spec : Prop :=
  ∀ n, P18158072987363765244.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P4166833940533422033

`2*A247618(n+1)-(n+3)`
-/

namespace A339196.P4166833940533422033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247618 (n + 1) - (n + 3 : ℤ)

end

end A339196.P4166833940533422033

namespace A339196

/-- `2*A247618(n+1)-(n+3)` -/
def P4166833940533422033.Spec : Prop :=
  ∀ n, P4166833940533422033.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P6901456134133966878

`A320661(n+2)-3*(n+2)`
-/

namespace A339196.P6901456134133966878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320661 (n + 2) - (3 * (n + 2) : ℤ)

end

end A339196.P6901456134133966878

namespace A339196

/-- `A320661(n+2)-3*(n+2)` -/
def P6901456134133966878.Spec : Prop :=
  ∀ n, P6901456134133966878.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P5912736998144366590

`a(n-1)+A017245(n)+a(n-1)` with `a(0)=7`
-/

namespace A339196.P5912736998144366590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (A017245 n + a (n - 1))

end

end A339196.P5912736998144366590

namespace A339196

/-- `a(n-1)+A017245(n)+a(n-1)` -/
def P5912736998144366590.Spec : Prop :=
  ∀ n, P5912736998144366590.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P7976386266811362369

`A166118(n+1)-A017257(n)`
-/

namespace A339196.P7976386266811362369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166118 (n + 1) - A017257 n

end

end A339196.P7976386266811362369

namespace A339196

/-- `A166118(n+1)-A017257(n)` -/
def P7976386266811362369.Spec : Prop :=
  ∀ n, P7976386266811362369.a n = A339196 (n + 2)

end A339196

/-! ## A339196.P10563824223341631313

`A321257(n+3)-A095121(n+3)`
-/

namespace A339196.P10563824223341631313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321257 (n + 3) - A095121 (n + 3)

end

end A339196.P10563824223341631313

namespace A339196

/-- `A321257(n+3)-A095121(n+3)` -/
def P10563824223341631313.Spec : Prop :=
  ∀ n, P10563824223341631313.a n = A339196 (n + 2)

end A339196

/-!
# A339197: Number of (undirected) cycles on the n X 3 king graph.

The programs for A339197, there is no canonical definition to state claims against.
-/

/-! ## A339197.P11990658913939223382

`A339098(C(n+3, 2))`
-/

namespace A339197.P11990658913939223382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339098 (Nat.choose (n + 3) 2)

end

end A339197.P11990658913939223382

/-! ## A339197.P12897876454359879489

`A339098(∑[n+2]+1)`
-/

namespace A339197.P12897876454359879489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A339197.P12897876454359879489

/-! ## A339197.P8459926969168280826

`record[A339098(A333531(n+1))]`
-/

namespace A339197.P8459926969168280826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339098 (A333531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339197.P8459926969168280826

/-!
# A339198: Number of (undirected) cycles on the n X 4 king graph.

The programs for A339198, there is no canonical definition to state claims against.
-/

/-! ## A339198.P103524545411227445

`A339098(∑[n+3]+2)`
-/

namespace A339198.P103524545411227445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339098 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A339198.P103524545411227445

/-! ## A339198.P5780858857433105377

`record[A339098(A267379(n+2))]`
-/

namespace A339198.P5780858857433105377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339098 (A267379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339198.P5780858857433105377

/-!
# A339199: Number of (undirected) cycles on the n X 5 king graph.

The programs for A339199, there is no canonical definition to state claims against.
-/

/-! ## A339199.P10291052410048859543

`A339098(C(n+4, 2)+5)`
-/

namespace A339199.P10291052410048859543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339098 (Nat.choose (n + 4) 2 + 5)

end

end A339199.P10291052410048859543

