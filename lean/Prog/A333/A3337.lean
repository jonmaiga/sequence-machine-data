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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A333700: a(n) = Sum_{k=1..n} pi(k) * pi(n-k).

The programs for A333700, there is no canonical definition to state claims against.
-/

/-! ## A333700.P15738484188140464409

`∑[∑[A073610(n+1)]]`
-/

namespace A333700.P15738484188140464409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333700.P15738484188140464409

/-! ## A333700.P15061286912855007283

`∑[∑[A230980(n)-A062602(n+1)]]`
-/

namespace A333700.P15061286912855007283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A062602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333700.P15061286912855007283

/-! ## A333700.P7730937316921390811

`∑[∑[A117929(n+1)+A061358(n+1)]]`
-/

namespace A333700.P7730937316921390811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1) + A061358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333700.P7730937316921390811

/-! ## A333700.P6938221125940297512

`∑[∑[A098983(n+1)-A282318(n+1)]]`
-/

namespace A333700.P6938221125940297512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 (n + 1) - A282318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333700.P6938221125940297512

/-! ## A333700.P2250573463084936919

`∑[∑[A002126(n+1)-2*A010051(n+1)]]`
-/

namespace A333700.P2250573463084936919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1) - 2 * A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333700.P2250573463084936919

/-! ## A333700.P4524705901644041266

`∑[∑[A347739(n+1)-A010051(n+1)]]`
-/

namespace A333700.P4524705901644041266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347739 (n + 1) - A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333700.P4524705901644041266

/-!
# A333701: Number of ways to write n as the sum of two positive integers with the same number of distinct prime factors.

The programs for A333701, there is no canonical definition to state claims against.
-/

/-! ## A333701.P12502240514292880508

`ceil(n/2-A337926(n+1))`
-/

namespace A333701.P12502240514292880508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A337926 (n + 1) : ℚ)⌉

end

end A333701.P12502240514292880508

/-! ## A333701.P10350498537493917439

`A110654(n)-A337926(n+1)`
-/

namespace A333701.P10350498537493917439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A337926 (n + 1)

end

end A333701.P10350498537493917439

/-! ## A333701.P10499285472983439151

`abs(A001057(n))-A337926(n+1)`
-/

namespace A333701.P10499285472983439151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A337926 (n + 1)

end

end A333701.P10499285472983439151

/-! ## A333701.P158672124282440339

`n-(A337926(n+1)+A004526(n))`
-/

namespace A333701.P158672124282440339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A337926 (n + 1) + A004526 n)

end

end A333701.P158672124282440339

/-! ## A333701.P10966716362115593164

`A333708(n+1)+n%2`
-/

namespace A333701.P10966716362115593164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333708 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A333701.P10966716362115593164

/-! ## A333701.P9573562877667074550

`A333708(n+1)+A000035(n)`
-/

namespace A333701.P9573562877667074550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333708 (n + 1) + A000035 n

end

end A333701.P9573562877667074550

/-! ## A333701.P5035642809379092525

`A372584(n)+A333708(n+1)`
-/

namespace A333701.P5035642809379092525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372584 n + A333708 (n + 1)

end

end A333701.P5035642809379092525

/-! ## A333701.P5249092966474914261

`A333708(n+1)+log2(A000034(n))`
-/

namespace A333701.P5249092966474914261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A333708 (n + 1) : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A333701.P5249092966474914261

/-! ## A333701.P10560578968736189194

`A333708(n+1)+Δ[A004526(n)]`
-/

namespace A333701.P10560578968736189194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333708 (n + 1) + (f1 (n + 1) - f1 n)

end

end A333701.P10560578968736189194

/-! ## A333701.P9626400999066794985

`A333708(n+1)+char[A005408(n)]`
-/

namespace A333701.P9626400999066794985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333708 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333701.P9626400999066794985

/-!
# A333704: Numbers k such that the total number of 1's in the Zeckendorf representation of the first k integers is a multiple of k.

The programs for A333704, there is no canonical definition to state claims against.
-/

/-! ## A333704.P13441203135473823042

`A143876(n)+A124763(A000110(n))`
-/

namespace A333704.P13441203135473823042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143876 n + A124763 (A000110 n).toNat

end

end A333704.P13441203135473823042

/-!
# A333705: Numbers k such that the total number of 1's in the dual Zeckendorf representation of the first k integers is a multiple of k.

The programs for A333705, there is no canonical definition to state claims against.
-/

/-! ## A333705.P4286206015579459009

`xor(record[A070730(n)], A091453(n))`
-/

namespace A333705.P4286206015579459009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A091453 n)

end

end A333705.P4286206015579459009

/-!
# A333706: Number T(n,k) of permutations p of [n] such that |p(i+k) - p(i)| <> k for i in [n-k]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A333706, there is no canonical definition to state claims against.
-/

/-! ## A333706.P2324130226040240461

`and(A001965(A056353(n)), A001996(n))`
-/

namespace A333706.P2324130226040240461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001965 (A056353 n).toNat) (A001996 n)

end

end A333706.P2324130226040240461

/-! ## A333706.P17057073539068148924

`A048766(and(A034825(n), A180870(n)))`
-/

namespace A333706.P17057073539068148924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.land (A034825 n) (A180870 n)).toNat

end

end A333706.P17057073539068148924

/-! ## A333706.P12664775765760247977

`and(A057811(A307788(n)), A156815(n))`
-/

namespace A333706.P12664775765760247977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057811 (A307788 n).toNat) (A156815 n)

end

end A333706.P12664775765760247977

/-! ## A333706.P8111428111033762528

`and(A057811(A307788(n)), A225479(n))`
-/

namespace A333706.P8111428111033762528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057811 (A307788 n).toNat) (A225479 n)

end

end A333706.P8111428111033762528

/-! ## A333706.P11741732154694290621

`and(A156815(n), A299806(A208355(n)))`
-/

namespace A333706.P11741732154694290621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156815 n) (A299806 (A208355 n).toNat)

end

end A333706.P11741732154694290621

/-!
# A333707: Number of ways to write n as the sum of two distinct positive integers with the same number of divisors.

The programs for A333707, there is no canonical definition to state claims against.
-/

/-! ## A333707.P4564169421000338990

`A333626(n+1)-n%2`
-/

namespace A333707.P4564169421000338990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A333707.P4564169421000338990

/-! ## A333707.P6426336927701030613

`A333626(n+1)-A000035(n)`
-/

namespace A333707.P6426336927701030613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (n + 1) - A000035 n

end

end A333707.P6426336927701030613

/-! ## A333707.P5331451712541353241

`A333626(n+1)-log2(A000034(n))`
-/

namespace A333707.P5331451712541353241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A333626 (n + 1) : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A333707.P5331451712541353241

/-! ## A333707.P11091262378640175239

`A333626(n+1)-Δ[A008619(n)]`
-/

namespace A333707.P11091262378640175239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (n + 1) - (f1 (n + 1) - f1 n)

end

end A333707.P11091262378640175239

/-! ## A333707.P15744061405054277030

`A333626(n+1)-char[A005408(n)]`
-/

namespace A333707.P15744061405054277030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333707.P15744061405054277030

/-! ## A333707.P1507103043037616995

`A333626(n+1)-Δ[A004526(n)]`
-/

namespace A333707.P1507103043037616995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333626 (n + 1) - (f1 (n + 1) - f1 n)

end

end A333707.P1507103043037616995

/-!
# A333708: Number of ways to write n as the sum of two distinct positive integers with the same number of distinct prime factors.

The programs for A333708, there is no canonical definition to state claims against.
-/

/-! ## A333708.P14374218636646802816

`A333701(n+1)-n%2`
-/

namespace A333708.P14374218636646802816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333701 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A333708.P14374218636646802816

/-! ## A333708.P7729801958581353834

`floor(n/2-A337926(n+1))`
-/

namespace A333708.P7729801958581353834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A337926 (n + 1) : ℚ)⌋

end

end A333708.P7729801958581353834

/-! ## A333708.P2580491582751316419

`A333701(n+1)-A000035(n)`
-/

namespace A333708.P2580491582751316419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333701 (n + 1) - A000035 n

end

end A333708.P2580491582751316419

/-! ## A333708.P17590396137452636640

`A004526(n)-A337926(n+1)`
-/

namespace A333708.P17590396137452636640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A337926 (n + 1)

end

end A333708.P17590396137452636640

/-! ## A333708.P14875505759174845011

`A333701(n+1)-A372584(n)`
-/

namespace A333708.P14875505759174845011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333701 (n + 1) - A372584 n

end

end A333708.P14875505759174845011

/-! ## A333708.P5505495776948228819

`A319571(n²)-A337926(n+1)`
-/

namespace A333708.P5505495776948228819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (n ^ 2) - A337926 (n + 1)

end

end A333708.P5505495776948228819

/-! ## A333708.P8582161097829812257

`log2(A016116(n))-A337926(n+1)`
-/

namespace A333708.P8582161097829812257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A016116 n : ℝ) - (A337926 (n + 1) : ℝ)

end

end A333708.P8582161097829812257

/-! ## A333708.P17081571531603967304

`A008619(n)-(A337926(n+1)+1)`
-/

namespace A333708.P17081571531603967304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A337926 (n + 1) + 1)

end

end A333708.P17081571531603967304

/-! ## A333708.P14156391325398988332

`A002265(2*n)-A337926(n+1)`
-/

namespace A333708.P14156391325398988332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) - A337926 (n + 1)

end

end A333708.P14156391325398988332

/-! ## A333708.P13359781939615092938

`n-(A337926(n+1)+A110654(n))`
-/

namespace A333708.P13359781939615092938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A337926 (n + 1) + A110654 n)

end

end A333708.P13359781939615092938

/-!
# A333709: a(n) is the number of iterations for x = x + 1/x needed until x + 1/x > n, starting with x = 1.

The programs for A333709, there is no canonical definition to state claims against.
-/

/-! ## A333709.P12678441900051127433

`A000195(Δ[A000045(n)]+1)+∑[n]`
-/

namespace A333709.P12678441900051127433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (f1 (n + 1) - f1 n + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A333709.P12678441900051127433

/-! ## A333709.P12148106111440411523

`A062153(A324969(n+1))+A000217(n)`
-/

namespace A333709.P12148106111440411523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A324969 (n + 1)).toNat + A000217 n

end

end A333709.P12148106111440411523

/-! ## A333709.P12067902102833538572

`A102572(A026008(n))+A000217(n)`
-/

namespace A333709.P12067902102833538572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A026008 n).toNat + A000217 n

end

end A333709.P12067902102833538572

/-! ## A333709.P7278154885071292775

`A002024(A001296(n)+A000837(n))-1`
-/

namespace A333709.P7278154885071292775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001296 n + A000837 n).toNat - 1

end

end A333709.P7278154885071292775

/-! ## A333709.P16153691961994743291

`∑[A339661(A110775(n+1)+A001750(n+1))+n]`
-/

namespace A333709.P16153691961994743291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339661 (A110775 (n + 1) + A001750 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333709.P16153691961994743291

/-!
# A333710: Number of permutations sigma of [n] such that i! divides Product_{k=1..i} sigma(k) for 1 <= i <= n.

The programs for A333710, there is no canonical definition to state claims against.
-/

/-! ## A333710.P13868968864252557668

`A191395(a(n-2)+n²)` with `a(0)=1, a(1)=1`
-/

namespace A333710.P13868968864252557668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A191395 (a (n - 2) + (n ^ 2 : ℤ)).toNat

end

end A333710.P13868968864252557668

/-! ## A333710.P15762562307514513257

`A215244((n!+1)*A000010(n+1))`
-/

namespace A333710.P15762562307514513257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 ((Nat.factorial n + 1 : ℤ) * A000010 (n + 1)).toNat

end

end A333710.P15762562307514513257

/-! ## A333710.P10539549857115306692

`A033630(n)*A331873(A383803(n))`
-/

namespace A333710.P10539549857115306692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n * A331873 (A383803 n).toNat

end

end A333710.P10539549857115306692

/-!
# A333711: Number of permutations of [n] such that the product of the first k elements and the product of the last k elements are multiples of k! for all k in [n].

The programs for A333711, there is no canonical definition to state claims against.
-/

/-! ## A333711.P8292132651069964255

`A327813(A149161(n))`
-/

namespace A333711.P8292132651069964255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327813 (A149161 n).toNat

end

end A333711.P8292132651069964255

/-! ## A333711.P7388088620582479448

`A000120(A124261(n+1))*A082392(n)`
-/

namespace A333711.P7388088620582479448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A124261 (n + 1)).toNat * A082392 n

end

end A333711.P7388088620582479448

/-! ## A333711.P9684052888224360479

`A326079(xor(A040039(2*n), A060546(n)))`
-/

namespace A333711.P9684052888224360479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326079 (Int.xor (A040039 (2 * n)) (A060546 n)).toNat

end

end A333711.P9684052888224360479

/-!
# A333713: Squares visited by a chess king moving on a square-spiral numbered board where the king moves to the adjacent unvisited square containing the spiral number with the most divisors. In case of a tie it chooses the square with the lowest spiral number.

The programs for A333713, there is no canonical definition to state claims against.
-/

/-! ## A333713.P4032319076672059418

`A263977(∑[5*n]+1)`
-/

namespace A333713.P4032319076672059418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A333713.P4032319076672059418

/-! ## A333713.P10791591645201295352

`Δ[A163823(∑[∑[n]]+1)]`
-/

namespace A333713.P10791591645201295352
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333713.P10791591645201295352

/-!
# A333714: Squares visited by a chess king moving on a square-spiral numbered board where the king moves to the adjacent unvisited square containing the spiral number with the most divisors. In case of a tie it chooses the square with the highest spiral number.

The programs for A333714, the canonical program `A333714.P4434585446613422265` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333714 has offset 1).

The definition of A333714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333714.P10302634073641637753

`eq[lcm(4, n+1)/4, ceil(sqrt(n))²]`
-/

namespace A333714.P10302634073641637753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A333714.P10302634073641637753

namespace A333714

/-- `eq[lcm(4, n+1)/4, ceil(sqrt(n))²]` -/
def P10302634073641637753.Spec : Prop :=
  ∀ n, (P10302634073641637753.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P14663018403041870519

`eq[round(sqrt(n))², gcd(n+1, n%2)]`
-/

namespace A333714.P14663018403041870519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A333714.P14663018403041870519

namespace A333714

/-- `eq[round(sqrt(n))², gcd(n+1, n%2)]` -/
def P14663018403041870519.Spec : Prop :=
  ∀ n, (P14663018403041870519.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P15053830192848425033

`eq[abs(or(1, xor(1, n)-1)), ceil(sqrt(n))²]`
-/

namespace A333714.P15053830192848425033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((Nat.xor 1 n : ℤ) - 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333714.P15053830192848425033

namespace A333714

/-- `eq[abs(or(1, xor(1, n)-1)), ceil(sqrt(n))²]` -/
def P15053830192848425033.Spec : Prop :=
  ∀ n, (P15053830192848425033.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P550010576332686871

`eq[(n+1)/2^val(n+1, 2), ceil(sqrt(n))²]`
-/

namespace A333714.P550010576332686871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A333714.P550010576332686871

namespace A333714

/-- `eq[(n+1)/2^val(n+1, 2), ceil(sqrt(n))²]` -/
def P550010576332686871.Spec : Prop :=
  ∀ n, (P550010576332686871.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P1252765532867367196

`eq[sqrt((n+1)/2^val(n+1, 2)), ceil(sqrt(n))]`
-/

namespace A333714.P1252765532867367196
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A333714.P1252765532867367196

namespace A333714

/-- `eq[sqrt((n+1)/2^val(n+1, 2)), ceil(sqrt(n))]` -/
def P1252765532867367196.Spec : Prop :=
  ∀ n, (P1252765532867367196.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P51024443419938344

`eq[2-xor(1-n, (2-n)%2), round(sqrt(n))²]`
-/

namespace A333714.P51024443419938344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor (1 - (n : ℤ)) (Int.tmod (2 - (n : ℤ)) 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333714.P51024443419938344

namespace A333714

/-- `eq[2-xor(1-n, (2-n)%2), round(sqrt(n))²]` -/
def P51024443419938344.Spec : Prop :=
  ∀ n, (P51024443419938344.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P4408599477547677515

`eq[ceil(sqrt(n))², A000265(n+1)]`
-/

namespace A333714.P4408599477547677515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333714.P4408599477547677515

namespace A333714

/-- `eq[ceil(sqrt(n))², A000265(n+1)]` -/
def P4408599477547677515.Spec : Prop :=
  ∀ n, (P4408599477547677515.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P14927474074884005598

`eq[ceil(sqrt(n))², A171435(n+1)]`
-/

namespace A333714.P14927474074884005598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333714.P14927474074884005598

namespace A333714

/-- `eq[ceil(sqrt(n))², A171435(n+1)]` -/
def P14927474074884005598.Spec : Prop :=
  ∀ n, (P14927474074884005598.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P5493601543393645069

`eq[-a(n-1), A007913(n+1)]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A333714.P5493601543393645069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n f1 =>
  -f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333714.P5493601543393645069

namespace A333714

/-- `eq[-a(n-1), A007913(n+1)]` -/
def P5493601543393645069.Spec : Prop :=
  ∀ n, (P5493601543393645069.a n : ℤ) = A333714 (n + 1)

end A333714

/-! ## A333714.P4434585446613422265

`lt[1/2, A098108(C(2, C(3, n²))+n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A333714

/-- `lt[1/2, A098108(C(2, C(3, n²))+n)]` -/
def P4434585446613422265.Spec : Prop :=
  ∀ n, (P4434585446613422265.a n : ℤ) = A333714 (n + 1)

theorem P4434585446613422265.correct : P4434585446613422265.Spec := by
  intro n
  simp only [A333714, Nat.add_sub_cancel]

end A333714

/-! ## A333714.P15957707746234745997

`eq[(n+1)%2, A335424(n+1)]^ceil(sin(n)²)`
-/

namespace A333714.P15957707746234745997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A333714.P15957707746234745997

namespace A333714

/-- `eq[(n+1)%2, A335424(n+1)]^ceil(sin(n)²)` -/
def P15957707746234745997.Spec : Prop :=
  ∀ n, P15957707746234745997.a n = (A333714 (n + 1) : ℚ)

end A333714

/-! ## A333714.P365372090797882955

`A096041(A212342(n+1))`
-/

namespace A333714.P365372090797882955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096041 (A212342 (n + 1)).toNat

end

end A333714.P365372090797882955

namespace A333714

/-- `A096041(A212342(n+1))` -/
def P365372090797882955.Spec : Prop :=
  ∀ n, P365372090797882955.a n = A333714 (n + 1)

end A333714

/-! ## A333714.P2545395696252982489

`A014682(2*A022144(∑[n]))`
-/

namespace A333714.P2545395696252982489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A022144 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A333714.P2545395696252982489

namespace A333714

/-- `A014682(2*A022144(∑[n]))` -/
def P2545395696252982489.Spec : Prop :=
  ∀ n, P2545395696252982489.a n = A333714 (n + 1)

end A333714

/-! ## A333714.P1776995398509435501

`record[A014682(A077591(n))-1]`
-/

namespace A333714.P1776995398509435501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077591 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333714.P1776995398509435501

namespace A333714

/-- `record[A014682(A077591(n))-1]` -/
def P1776995398509435501.Spec : Prop :=
  ∀ n, P1776995398509435501.a n = A333714 (n + 1)

end A333714

/-! ## A333714.P7491865414166411613

`A014682(8*n²)+A008574(n)`
-/

namespace A333714.P7491865414166411613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (8 * n ^ 2) + A008574 n

end

end A333714.P7491865414166411613

namespace A333714

/-- `A014682(8*n²)+A008574(n)` -/
def P7491865414166411613.Spec : Prop :=
  ∀ n, P7491865414166411613.a n = A333714 (n + 1)

end A333714

/-! ## A333714.P16094967815800292021

`∑[8*n]^A001222(A138980(n))`
-/

namespace A333714.P16094967815800292021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A001222 (A138980 n).toNat : ℤ)

end

end A333714.P16094967815800292021

namespace A333714

/-- `∑[8*n]^A001222(A138980(n))` -/
def P16094967815800292021.Spec : Prop :=
  ∀ n, P16094967815800292021.a n = (A333714 (n + 1) : ℚ)

end A333714

/-! ## A333714.P7933177732457574320

`A014682(2*(n+1)*A008574(n))`
-/

namespace A333714.P7933177732457574320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((2 * (n + 1) : ℤ) * A008574 n).toNat

end

end A333714.P7933177732457574320

namespace A333714

/-- `A014682(2*(n+1)*A008574(n))` -/
def P7933177732457574320.Spec : Prop :=
  ∀ n, P7933177732457574320.a n = A333714 (n + 1)

end A333714

/-! ## A333714.P10179482580907077912

`A016754(n)-A001221(A138980(n))`
-/

namespace A333714.P10179482580907077912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A001221 (A138980 n).toNat

end

end A333714.P10179482580907077912

namespace A333714

/-- `A016754(n)-A001221(A138980(n))` -/
def P10179482580907077912.Spec : Prop :=
  ∀ n, P10179482580907077912.a n = A333714 (n + 1)

end A333714

/-! ## A333714.P1391100788444082455

`xor(A069894(n), A178815(n+1))`
-/

namespace A333714.P1391100788444082455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069894 n) (A178815 (n + 1))

end

end A333714.P1391100788444082455

namespace A333714

/-- `xor(A069894(n), A178815(n+1))` -/
def P1391100788444082455.Spec : Prop :=
  ∀ n, P1391100788444082455.a n = A333714 (n + 1)

end A333714

/-!
# A333715: a(n) = [x^(3*n)] ( (1 + x)/(1 - x) )^n.

The programs for A333715, there is no canonical definition to state claims against.
-/

/-! ## A333715.P16720307468519344509

`ceil(A333481(n)/2)`
-/

namespace A333715.P16720307468519344509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333481 n : ℚ) / 2⌉

end

end A333715.P16720307468519344509

/-! ## A333715.P3510883559450472258

`A221074(2*n)/2*A333481(n)`
-/

namespace A333715.P3510883559450472258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221074 (2 * n) : ℚ) / 2 * (A333481 n : ℚ)

end

end A333715.P3510883559450472258

/-! ## A333715.P10070379218641693989

`A333481(n)/A020639(A034896(n))`
-/

namespace A333715.P10070379218641693989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333481 n : ℚ) / (A020639 (A034896 n).toNat : ℚ)

end

end A333715.P10070379218641693989

/-! ## A333715.P8506356602963911280

`A333481(n)/A000005(A006005(n+1))`
-/

namespace A333715.P8506356602963911280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333481 n : ℚ) / (A000005 (A006005 (n + 1)).toNat : ℚ)

end

end A333715.P8506356602963911280

/-! ## A333715.P14976994747316261225

`A333481(n)/A020639(A006093(n+1))`
-/

namespace A333715.P14976994747316261225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333481 n : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A333715.P14976994747316261225

/-! ## A333715.P160632073454993688

`A336521(∑[n+4]+2)`
-/

namespace A333715.P160632073454993688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336521 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333715.P160632073454993688

/-! ## A333715.P10504359940547431803

`A071949(2*n²)`
-/

namespace A333715.P10504359940547431803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071949 (2 * n ^ 2)

end

end A333715.P10504359940547431803

/-! ## A333715.P17892369337547387936

`A110682(A004273(n²))`
-/

namespace A333715.P17892369337547387936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (A004273 (n ^ 2)).toNat

end

end A333715.P17892369337547387936

/-! ## A333715.P10815747984051059618

`A110682(A061579(2*n²))`
-/

namespace A333715.P10815747984051059618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 (A061579 (2 * n ^ 2)).toNat

end

end A333715.P10815747984051059618

/-!
# A333716: a(0)=1; for n>0, a(n) is the greatest common divisor (GCD) of n and the sum of the previous terms back to the last GCD term, if the GCD is not already in the sequence; otherwise a(n) = a(n-1) + n.

The programs for A333716, there is no canonical definition to state claims against.
-/

/-! ## A333716.P530235139488552208

`(a(n-1)+n)%A190750(A155162(n))` with `a(0)=1`
-/

namespace A333716.P530235139488552208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (A190750 (A155162 n).toNat)

end

end A333716.P530235139488552208

/-!
# A333718: a(n) = L(8*n+4)/7, where L = A000032 (the Lucas sequence).

The programs for A333718, the canonical program `A333718.P16683464529627668033` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333718 has offset 0).

The definition of A333718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333718.P16683464529627668033

`47*a(n-1)-a(n-2)` with `a(0)=1, a(1)=46`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333718

/-- `47*a(n-1)-a(n-2)` -/
def P16683464529627668033.Spec : Prop :=
  ∀ n, P16683464529627668033.a n = A333718 n

theorem P16683464529627668033.correct : P16683464529627668033.Spec := by
  intro n
  simp only [A333718]

end A333718

/-! ## A333718.P9890122662615383407

`floor((ϕ+1)²²*a(n-1))` with `a(0)=1`
-/

namespace A333718.P9890122662615383407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((Real.goldenRatio + 1) ^ 2) ^ 2 * (a (n - 1) : ℝ)⌋

end

end A333718.P9890122662615383407

namespace A333718

/-- `floor((ϕ+1)²²*a(n-1))` -/
def P9890122662615383407.Spec : Prop :=
  ∀ n, P9890122662615383407.a n = A333718 n

end A333718

/-! ## A333718.P1164238418583078049

`floor(ϕ²²²*floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A333718.P1164238418583078049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((Real.goldenRatio ^ 2) ^ 2) ^ 2 * (a (n - 1) : ℝ)⌋

end

end A333718.P1164238418583078049

namespace A333718

/-- `floor(ϕ²²²*floor(a(n-1)))` -/
def P1164238418583078049.Spec : Prop :=
  ∀ n, P1164238418583078049.a n = A333718 n

end A333718

/-! ## A333718.P12359136054711816472

`Δ[A049668(n)]`
-/

namespace A333718.P12359136054711816472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333718.P12359136054711816472

namespace A333718

/-- `Δ[A049668(n)]` -/
def P12359136054711816472.Spec : Prop :=
  ∀ n, P12359136054711816472.a n = A333718 n

end A333718

/-! ## A333718.P929938890639332004

`A056854(2*n+1)/7`
-/

namespace A333718.P929938890639332004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056854 (2 * n + 1) : ℚ) / 7

end

end A333718.P929938890639332004

namespace A333718

/-- `A056854(2*n+1)/7` -/
def P929938890639332004.Spec : Prop :=
  ∀ n, P929938890639332004.a n = (A333718 n : ℚ)

end A333718

/-! ## A333718.P12371574239602702976

`A000032(8*n+4)/7`
-/

namespace A333718.P12371574239602702976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (8 * n + 4) : ℚ) / 7

end

end A333718.P12371574239602702976

namespace A333718

/-- `A000032(8*n+4)/7` -/
def P12371574239602702976.Spec : Prop :=
  ∀ n, P12371574239602702976.a n = (A333718 n : ℚ)

end A333718

/-! ## A333718.P5994283639032932223

`A000032(8*n)-a(n-1)` with `a(0)=1`
-/

namespace A333718.P5994283639032932223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (8 * n) - a (n - 1)

end

end A333718.P5994283639032932223

namespace A333718

/-- `A000032(8*n)-a(n-1)` -/
def P5994283639032932223.Spec : Prop :=
  ∀ n, P5994283639032932223.a n = A333718 n

end A333718

/-! ## A333718.P17548173957058521447

`A049668(n+1)-A049668(n)`
-/

namespace A333718.P17548173957058521447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049668 (n + 1) - A049668 n

end

end A333718.P17548173957058521447

namespace A333718

/-- `A049668(n+1)-A049668(n)` -/
def P17548173957058521447.Spec : Prop :=
  ∀ n, P17548173957058521447.a n = A333718 n

end A333718

/-!
# A333720: Number of graceful labelings of the n-cycle graph.

The programs for A333720, there is no canonical definition to state claims against.
-/

/-! ## A333720.P6432944013017483072

`A259825((xor(n, n+1)+6)*A215287(n+1))`
-/

namespace A333720.P6432944013017483072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 ((Nat.xor n (n + 1) + 6 : ℤ) * A215287 (n + 1)).toNat

end

end A333720.P6432944013017483072

/-! ## A333720.P8875376697654933601

`A072068(A118804(n)+A000040(n+3))`
-/

namespace A333720.P8875376697654933601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (A118804 n + A000040 (n + 3)).toNat

end

end A333720.P8875376697654933601

/-!
# A333721: Numbers k such that k + 1, 2k + 1, 3k + 1, 4k + 1, and 6k + 1 are all prime.

The programs for A333721, there is no canonical definition to state claims against.
-/

/-! ## A333721.P16051935086396906703

`∩[A124408(n+1), A237189(n+1)]`
-/

namespace A333721.P16051935086396906703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333721.P16051935086396906703

/-!
# A333722: Lexicographically earliest permutation of the positive integers such that a(n), a(n+1) and the product a(n)*a(n+1) have in common at least one identical substring.

The programs for A333722, there is no canonical definition to state claims against.
-/

/-! ## A333722.P5347078941737606358

`A333723(n)/a(n-1)` with `a(0)=1`
-/

namespace A333722.P5347078941737606358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A333723 n : ℚ) / a (n - 1)

end

end A333722.P5347078941737606358

/-!
# A333723: Successive products a(n) * a(n+1) of A333722. Each product contains a substring present both in A333722(n) and A333722(n+1).

The programs for A333723, there is no canonical definition to state claims against.
-/

/-! ## A333723.P15464846645458901920

`A333722(n+1)*A333722(n+2)`
-/

namespace A333723.P15464846645458901920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333722 (n + 1) * A333722 (n + 2)

end

end A333723.P15464846645458901920

/-!
# A333725: Number of primes between pairs of consecutive highly composite numbers (A002182).

The programs for A333725, there is no canonical definition to state claims against.
-/

/-! ## A333725.P13252183072360453946

`Δ[A000720(lcm(2, A002182(n+1)))]`
-/

namespace A333725.P13252183072360453946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lcm 2 (A002182 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333725.P13252183072360453946

/-! ## A333725.P14170855939037570274

`Δ[A000720(A002182(n+1)+A000007(n))]`
-/

namespace A333725.P14170855939037570274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002182 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333725.P14170855939037570274

/-! ## A333725.P7898850488367903477

`Δ[A000720(A002182(n+1))]%A154638(n)`
-/

namespace A333725.P7898850488367903477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A154638 n)

end

end A333725.P7898850488367903477

/-! ## A333725.P3940615131977776325

`Δ[A000720(A135372(n+1)-A001221(n+1))]`
-/

namespace A333725.P3940615131977776325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A135372 (n + 1) - A001221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333725.P3940615131977776325

/-!
# A333727: Total numbers of graceful labelings of all simple graphs on n nodes.

The programs for A333727, there is no canonical definition to state claims against.
-/

/-! ## A333727.P6658327605766369694

`abs(A194514(10^n))`
-/

namespace A333727.P6658327605766369694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194514 (10 ^ n)|

end

end A333727.P6658327605766369694

/-!
# A333728: Maximum number of graceful labelings for a simple graph on n nodes.

The programs for A333728, there is no canonical definition to state claims against.
-/

/-! ## A333728.P16526237964181693270

`A127787(A046237(n+2))`
-/

namespace A333728.P16526237964181693270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127787 (A046237 (n + 2)).toNat

end

end A333728.P16526237964181693270

/-! ## A333728.P7068098700751010063

`A000010(A317079(n)+A000172(n))`
-/

namespace A333728.P7068098700751010063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A317079 n + A000172 n).toNat

end

end A333728.P7068098700751010063

/-!
# A333729: Total number of graceful labelings of the n-pan graph.

The programs for A333729, there is no canonical definition to state claims against.
-/

/-! ## A333729.P15557692383962469208

`4*A387804(n+3)`
-/

namespace A333729.P15557692383962469208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A387804 (n + 3)

end

end A333729.P15557692383962469208

/-!
# A333730: Number of simple 4-regular bipartite graphs with 2n nodes.

The programs for A333730, there is no canonical definition to state claims against.
-/

/-! ## A333730.P2909932540828105954

`A004525(A000843(n+1)+A000513(n+1))`
-/

namespace A333730.P2909932540828105954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000843 (n + 1) + A000513 (n + 1)).toNat

end

end A333730.P2909932540828105954

/-! ## A333730.P2652857299655653650

`A004526(A000843(n+1)+A000513(n+1))`
-/

namespace A333730.P2652857299655653650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000843 (n + 1) + A000513 (n + 1)).toNat

end

end A333730.P2652857299655653650

/-! ## A333730.P4588968562622403274

`A014682(A000843(n+1)+A000513(n+1))`
-/

namespace A333730.P4588968562622403274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000843 (n + 1) + A000513 (n + 1)).toNat

end

end A333730.P4588968562622403274

/-! ## A333730.P144775277575001430

`A025480(A000843(n+1)+A000513(n+1))`
-/

namespace A333730.P144775277575001430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000843 (n + 1) + A000513 (n + 1)).toNat

end

end A333730.P144775277575001430

/-! ## A333730.P12057110379930521033

`A026741(A000843(n+1)+A000513(n+1))`
-/

namespace A333730.P12057110379930521033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000843 (n + 1) + A000513 (n + 1)).toNat

end

end A333730.P12057110379930521033

/-!
# A333731: Number of simple 5-regular bipartite graphs with 2n nodes.

The programs for A333731, there is no canonical definition to state claims against.
-/

/-! ## A333731.P13998814881441461023

`A008327(A167499(n))%A276130(n+1)`
-/

namespace A333731.P13998814881441461023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008327 (A167499 n).toNat) (A276130 (n + 1))

end

end A333731.P13998814881441461023

/-!
# A333732: Number of non-isomorphic n X n binary matrices with equal row and column sums up to permutation of rows and columns and transposition.

The programs for A333732, there is no canonical definition to state claims against.
-/

/-! ## A333732.P2211911050517601383

`(A333160(n)+A333681(n))/2`
-/

namespace A333732.P2211911050517601383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333160 n + A333681 n : ℚ) / 2

end

end A333732.P2211911050517601383

/-! ## A333732.P14859053871851739939

`A081603(A260811(n))+A008324(n)`
-/

namespace A333732.P14859053871851739939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A260811 n).toNat + A008324 n

end

end A333732.P14859053871851739939

/-! ## A333732.P2590701614506395501

`A102683(A144978(n+1))+A008324(n)`
-/

namespace A333732.P2590701614506395501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A144978 (n + 1)).toNat + A008324 n

end

end A333732.P2590701614506395501

/-! ## A333732.P17496940189892388343

`A025465(A008372(n))+A008324(n)`
-/

namespace A333732.P17496940189892388343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A008372 n).toNat + A008324 n

end

end A333732.P17496940189892388343

/-! ## A333732.P13562430952820864070

`A055641(A034943(n))+A008324(n)`
-/

namespace A333732.P13562430952820864070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A034943 n).toNat + A008324 n

end

end A333732.P13562430952820864070

/-!
# A333733: Array read by antidiagonals: T(n,k) is the number of non-isomorphic n X n nonnegative integer matrices with all row and column sums equal to k up to permutations of rows and columns.

The programs for A333733, there is no canonical definition to state claims against.
-/

/-! ## A333733.P8094293085799966726

`A090106(A333737(n))`
-/

namespace A333733.P8094293085799966726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A333737 n).toNat

end

end A333733.P8094293085799966726

/-! ## A333733.P1762093216332002720

`A157684(3*A333737(n))`
-/

namespace A333733.P1762093216332002720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (3 * A333737 n).toNat

end

end A333733.P1762093216332002720

/-! ## A333733.P6584170802079735082

`A157685(3*A333737(n))`
-/

namespace A333733.P6584170802079735082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (3 * A333737 n).toNat

end

end A333733.P6584170802079735082

/-! ## A333733.P6971179540067279239

`A355249(3*A333737(n))`
-/

namespace A333733.P6971179540067279239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355249 (3 * A333737 n).toNat

end

end A333733.P6971179540067279239

/-! ## A333733.P6908865288334351926

`A000523(2^A333737(n))`
-/

namespace A333733.P6908865288334351926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A333737 n : ℤ))).toNat

end

end A333733.P6908865288334351926

/-!
# A333734: Number of non-isomorphic n X n nonnegative integer matrices with all row and column sums equal to n up to permutations of rows and columns.

The programs for A333734, there is no canonical definition to state claims against.
-/

/-! ## A333734.P1479304312266970774

`A377060(∑[4*n])`
-/

namespace A333734.P1479304312266970774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333734.P1479304312266970774

/-! ## A333734.P1880152439997924412

`A333733(∑[4*n])`
-/

namespace A333734.P1880152439997924412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333734.P1880152439997924412

/-! ## A333734.P189960194046092312

`A333733(A046092(n))/A333733(n)`
-/

namespace A333734.P189960194046092312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333733 (A046092 n).toNat : ℚ) / (A333733 n : ℚ)

end

end A333734.P189960194046092312

/-! ## A333734.P16730704307476012118

`A333733(A007590(2*n+1))*A333733(n)`
-/

namespace A333734.P16730704307476012118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A007590 (2 * n + 1)).toNat * A333733 n

end

end A333734.P16730704307476012118

/-!
# A333735: Number of non-isomorphic 5 X 5 nonnegative integer matrices with all row and column sums equal to n up to permutations of rows and columns.

The programs for A333735, there is no canonical definition to state claims against.
-/

/-! ## A333735.P16288060108162585350

`A333733(A167499(n+4))`
-/

namespace A333735.P16288060108162585350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A167499 (n + 4)).toNat

end

end A333735.P16288060108162585350

/-! ## A333735.P10152397750732456457

`A333733(A056115(n)+20)`
-/

namespace A333735.P10152397750732456457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A056115 n + 20).toNat

end

end A333735.P10152397750732456457

/-! ## A333735.P11112496002855251940

`A333733(eq[5, A002262(n)])`
-/

namespace A333735.P11112496002855251940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333735.P11112496002855251940

/-! ## A333735.P14172956363021384343

`A333733(A167487(n+4)-2)`
-/

namespace A333735.P14172956363021384343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A167487 (n + 4) - 2).toNat

end

end A333735.P14172956363021384343

/-!
# A333736: Number of non-isomorphic n X n nonnegative integer matrices with all row and column sums equal to 5 up to permutations of rows and columns.

The programs for A333736, there is no canonical definition to state claims against.
-/

/-! ## A333736.P5684535640532040543

`A333733(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A333736.P5684535640532040543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333736.P5684535640532040543

/-! ## A333736.P17840574677673287937

`A333733(A055999(n+3))`
-/

namespace A333736.P17840574677673287937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A055999 (n + 3)).toNat

end

end A333736.P17840574677673287937

/-! ## A333736.P1342878959755504889

`A333733(A056119(n)+15)`
-/

namespace A333736.P1342878959755504889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (A056119 n + 15).toNat

end

end A333736.P1342878959755504889

/-! ## A333736.P2141476766107076756

`A333733(eq[5, A025581(n)])`
-/

namespace A333736.P2141476766107076756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333736.P2141476766107076756

/-! ## A333736.P14313852354416154767

`A333733(eq[5, A193592(n+1)])`
-/

namespace A333736.P14313852354416154767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333736.P14313852354416154767

/-!
# A333738: Number of non-isomorphic n X n nonnegative integer symmetric matrices with all row and column sums equal to n up to permutations of rows and columns.

The programs for A333738, there is no canonical definition to state claims against.
-/

/-! ## A333738.P2051775622561112059

`A333737(∑[4*n])`
-/

namespace A333738.P2051775622561112059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333738.P2051775622561112059

/-! ## A333738.P15565483388181605843

`A333737(A046092(n))+A246578(n)`
-/

namespace A333738.P15565483388181605843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 (A046092 n).toNat + A246578 n

end

end A333738.P15565483388181605843

/-! ## A333738.P14523072082012040244

`A015522(n)*A333737(A046092(n))`
-/

namespace A333738.P14523072082012040244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015522 n * A333737 (A046092 n).toNat

end

end A333738.P14523072082012040244

/-! ## A333738.P9327291121907617865

`A333737(A046092(n))%A232261(n+4)`
-/

namespace A333738.P9327291121907617865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333737 (A046092 n).toNat) (A232261 (n + 4))

end

end A333738.P9327291121907617865

/-! ## A333738.P758459095795370292

`A333737(A046092(n))^(A000040(n+1)%2)`
-/

namespace A333738.P758459095795370292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333737 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A333738.P758459095795370292

/-!
# A333739: Number of n X n nonnegative integer symmetric matrices with all row and column sums equal to n.

The programs for A333739, there is no canonical definition to state claims against.
-/

/-! ## A333739.P1885353790192829403

`A188403((1-n)²+n²)`
-/

namespace A333739.P1885353790192829403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A333739.P1885353790192829403

/-! ## A333739.P8067199399547801475

`or(1, A188403(∑[a(n-1)+4]))` with `a(0)=1, a(1)=0`
-/

namespace A333739.P8067199399547801475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188403 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A333739.P8067199399547801475

/-!
# A333740: Number of inequivalent 2n X 2n binary matrices with rows and columns summing to n, where equivalence means permutations of rows or columns.

The programs for A333740, there is no canonical definition to state claims against.
-/

/-! ## A333740.P15948777375922357274

`A133687(∑[4*n])`
-/

namespace A333740.P15948777375922357274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333740.P15948777375922357274

/-! ## A333740.P6576668805860701824

`A065648(n)*A133687(A046092(n))`
-/

namespace A333740.P6576668805860701824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n * A133687 (A046092 n).toNat

end

end A333740.P6576668805860701824

/-! ## A333740.P2028864693803012477

`A133687(A046092(n))*A133687(n)`
-/

namespace A333740.P2028864693803012477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 (A046092 n).toNat * A133687 n

end

end A333740.P2028864693803012477

/-! ## A333740.P637355399021790745

`lcm(A033999(n), A133687(A046092(n)))`
-/

namespace A333740.P637355399021790745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A133687 (A046092 n).toNat)

end

end A333740.P637355399021790745

/-! ## A333740.P6062932310748670912

`or(A000007(n), A133687(A046092(n)))`
-/

namespace A333740.P6062932310748670912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A133687 (A046092 n).toNat)

end

end A333740.P6062932310748670912

/-!
# A333741: Odd numbers k such that phi(k) = phi(k+2), where phi is the Euler totient function (A000010).

The programs for A333741, there is no canonical definition to state claims against.
-/

/-! ## A333741.P17158204719576250671

`∩[or(1, A001494(n+1)), A001494(n+1)]`
-/

namespace A333741.P17158204719576250671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001494 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333741.P17158204719576250671

/-!
# A333742: Numbers k such that lambda(k) = lambda(k+2), where lambda is the Carmichael lambda function (A002322).

The programs for A333742, there is no canonical definition to state claims against.
-/

/-! ## A333742.P1299679825836456425

`eq[1-A277127(n+1)+n, A002322(n+3)]+1`
-/

namespace A333742.P1299679825836456425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A277127 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333742.P1299679825836456425

/-! ## A333742.P14345991013889914800

`A065475(eq[A002322(n+1), A002322(n+3)])`
-/

namespace A333742.P14345991013889914800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333742.P14345991013889914800

/-! ## A333742.P10575868563996899097

`A000027(eq[A002322(n+1), A002322(n+3)]+1)`
-/

namespace A333742.P10575868563996899097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A333742.P10575868563996899097

/-! ## A333742.P14105869248430249986

`eq[A000010(n+1)-A104194(n+1), A002322(n+3)]+1`
-/

namespace A333742.P14105869248430249986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A104194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333742.P14105869248430249986

/-! ## A333742.P9200950689989964075

`eq[A000040(n+1)-A104193(n+1), A002322(n+3)]+1`
-/

namespace A333742.P9200950689989964075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A104193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333742.P9200950689989964075

/-!
# A333743: Odd numbers k such that the multiplicative orders of 2 modulo k and modulo k+2 are equal.

The programs for A333743, there is no canonical definition to state claims against.
-/

/-! ## A333743.P11881529175663518277

`A005408(eq[A002326(n+1), A002326(n)])`
-/

namespace A333743.P11881529175663518277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333743.P11881529175663518277

/-! ## A333743.P7213950700910803224

`A144396(eq[A002326(n+1), A002326(n)])`
-/

namespace A333743.P7213950700910803224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333743.P7213950700910803224

/-! ## A333743.P7895945324826390385

`A005408(eq[A007733(2*n+3), A024222(2*(n+1))])`
-/

namespace A333743.P7895945324826390385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333743.P7895945324826390385

/-!
# A333747: Numbers that are either the product of two consecutive primes or two primes with a prime in between.

The programs for A333747, the canonical program `A333747.P908360627980820900` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333747 has offset 1).

The definition of A333747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333747.P12422359500486748883

`∪[A006094(n+1), A090076(n+1)]`
-/

namespace A333747.P12422359500486748883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333747.P12422359500486748883

namespace A333747

/-- `∪[A006094(n+1), A090076(n+1)]` -/
def P12422359500486748883.Spec : Prop :=
  ∀ n, (P12422359500486748883.a n : ℤ) = A333747 (n + 1)

end A333747

/-! ## A333747.P908360627980820900

`A000040(A008619(n))*A065091(A080513(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A333747

/-- `A000040(A008619(n))*A065091(A080513(n))` -/
def P908360627980820900.Spec : Prop :=
  ∀ n, P908360627980820900.a n = A333747 (n + 1)

theorem P908360627980820900.correct : P908360627980820900.Spec := by
  intro n
  simp only [A333747, Nat.add_sub_cancel]

end A333747

/-! ## A333747.P15988799949907589867

`A000040(A008619(n+1)+1)*A000040(A008619(n))`
-/

namespace A333747.P15988799949907589867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 (n + 1) + 1).toNat * A000040 (A008619 n).toNat

end

end A333747.P15988799949907589867

namespace A333747

/-- `A000040(A008619(n+1)+1)*A000040(A008619(n))` -/
def P15988799949907589867.Spec : Prop :=
  ∀ n, P15988799949907589867.a n = A333747 (n + 1)

end A333747

/-! ## A333747.P4450077386503599356

`A000040(A008619(n+3))*A000040(A008619(n))`
-/

namespace A333747.P4450077386503599356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 (n + 3)).toNat * A000040 (A008619 n).toNat

end

end A333747.P4450077386503599356

namespace A333747

/-- `A000040(A008619(n+3))*A000040(A008619(n))` -/
def P4450077386503599356.Spec : Prop :=
  ∀ n, P4450077386503599356.a n = A333747 (n + 1)

end A333747

/-! ## A333747.P4702107859573231520

`A057602(n+4)/ratio[A057602(n+2)]`
-/

namespace A333747.P4702107859573231520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057602 (n + 4) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A333747.P4702107859573231520

namespace A333747

/-- `A057602(n+4)/ratio[A057602(n+2)]` -/
def P4702107859573231520.Spec : Prop :=
  ∀ n, P4702107859573231520.a n = (A333747 (n + 1) : ℚ)

end A333747

/-! ## A333747.P9802071265604726147

`A000040(A028242(n+3))*A000040(A028242(n)+1)`
-/

namespace A333747.P9802071265604726147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028242 (n + 3)).toNat * A000040 (A028242 n + 1).toNat

end

end A333747.P9802071265604726147

namespace A333747

/-- `A000040(A028242(n+3))*A000040(A028242(n)+1)` -/
def P9802071265604726147.Spec : Prop :=
  ∀ n, P9802071265604726147.a n = A333747 (n + 1)

end A333747

/-! ## A333747.P18389449318712568486

`p?[A110654(n)]*A065091(A080513(n))`
-/

namespace A333747.P18389449318712568486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A065091 (A080513 n).toNat

end

end A333747.P18389449318712568486

namespace A333747

/-- `p?[A110654(n)]*A065091(A080513(n))` -/
def P18389449318712568486.Spec : Prop :=
  ∀ n, P18389449318712568486.a n = A333747 (n + 1)

end A333747

/-! ## A333747.P15494466875351656259

`A087112(A101881(n+1))`
-/

namespace A333747.P15494466875351656259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (A101881 (n + 1)).toNat

end

end A333747.P15494466875351656259

namespace A333747

/-- `A087112(A101881(n+1))` -/
def P15494466875351656259.Spec : Prop :=
  ∀ n, P15494466875351656259.a n = A333747 (n + 1)

end A333747

/-! ## A333747.P13042780465301048530

`A087112(Δ[A003453(n+6)]-1)`
-/

namespace A333747.P13042780465301048530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087112 (f1 (n + 1) - f1 n - 1).toNat

end

end A333747.P13042780465301048530

namespace A333747

/-- `A087112(Δ[A003453(n+6)]-1)` -/
def P13042780465301048530.Spec : Prop :=
  ∀ n, P13042780465301048530.a n = A333747 (n + 1)

end A333747

/-! ## A333747.P501396577003140008

`A098350(ceil((n+2)²/2)+1)`
-/

namespace A333747.P501396577003140008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (⌈((n + 2) ^ 2 : ℚ) / 2⌉ + 1).toNat

end

end A333747.P501396577003140008

namespace A333747

/-- `A098350(ceil((n+2)²/2)+1)` -/
def P501396577003140008.Spec : Prop :=
  ∀ n, P501396577003140008.a n = A333747 (n + 1)

end A333747

/-!
# A333748: Number of nonprime divisors of n that are <= sqrt(n).

The programs for A333748, the canonical program `A333748.P1056566153908479740` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333748 has offset 1).

The definition of A333748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333748.P1056566153908479740

`ceil(∏{e}[n+1, #+1]/2)-A063962(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333748

/-- `ceil(∏{e}[n+1, #+1]/2)-A063962(n+1)` -/
def P1056566153908479740.Spec : Prop :=
  ∀ n, P1056566153908479740.a n = A333748 (n + 1)

theorem P1056566153908479740.correct : P1056566153908479740.Spec := by
  intro n
  simp only [A333748, Nat.add_sub_cancel]

end A333748

/-! ## A333748.P10902147281637686932

`A038548(n+1)-A063962(n+1)`
-/

namespace A333748.P10902147281637686932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A063962 (n + 1)

end

end A333748.P10902147281637686932

namespace A333748

/-- `A038548(n+1)-A063962(n+1)` -/
def P10902147281637686932.Spec : Prop :=
  ∀ n, P10902147281637686932.a n = A333748 (n + 1)

end A333748

/-! ## A333748.P10725476314595003201

`A110654(A000005(n+1))-A063962(n+1)`
-/

namespace A333748.P10725476314595003201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000005 (n + 1)).toNat - A063962 (n + 1)

end

end A333748.P10725476314595003201

namespace A333748

/-- `A110654(A000005(n+1))-A063962(n+1)` -/
def P10725476314595003201.Spec : Prop :=
  ∀ n, P10725476314595003201.a n = A333748 (n + 1)

end A333748

/-! ## A333748.P257978464139018101

`A000005(n+1)-(A063962(n+1)+A056924(n+1))`
-/

namespace A333748.P257978464139018101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A063962 (n + 1) + A056924 (n + 1))

end

end A333748.P257978464139018101

namespace A333748

/-- `A000005(n+1)-(A063962(n+1)+A056924(n+1))` -/
def P257978464139018101.Spec : Prop :=
  ∀ n, P257978464139018101.a n = A333748 (n + 1)

end A333748

/-! ## A333748.P16087449400819092154

`A010052(n+1)+A056924(n+1)-A063962(n+1)`
-/

namespace A333748.P16087449400819092154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) + (A056924 (n + 1) - A063962 (n + 1))

end

end A333748.P16087449400819092154

namespace A333748

/-- `A010052(n+1)+A056924(n+1)-A063962(n+1)` -/
def P16087449400819092154.Spec : Prop :=
  ∀ n, P16087449400819092154.a n = A333748 (n + 1)

end A333748

/-! ## A333748.P15136612541320644689

`A349005(n+1)-(A063962(n+1)+A060866(n+1))`
-/

namespace A333748.P15136612541320644689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349005 (n + 1) - (A063962 (n + 1) + A060866 (n + 1))

end

end A333748.P15136612541320644689

namespace A333748

/-- `A349005(n+1)-(A063962(n+1)+A060866(n+1))` -/
def P15136612541320644689.Spec : Prop :=
  ∀ n, P15136612541320644689.a n = A333748 (n + 1)

end A333748

/-! ## A333748.P14084629196464903138

`A038548(n+1)-A001221(A072499(n+1))`
-/

namespace A333748.P14084629196464903138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A001221 (A072499 (n + 1)).toNat

end

end A333748.P14084629196464903138

namespace A333748

/-- `A038548(n+1)-A001221(A072499(n+1))` -/
def P14084629196464903138.Spec : Prop :=
  ∀ n, P14084629196464903138.a n = A333748 (n + 1)

end A333748

/-! ## A333748.P5477327507175669937

`A056924(2^A000005(n+1))-A063962(n+1)`
-/

namespace A333748.P5477327507175669937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat - A063962 (n + 1)

end

end A333748.P5477327507175669937

namespace A333748

/-- `A056924(2^A000005(n+1))-A063962(n+1)` -/
def P5477327507175669937.Spec : Prop :=
  ∀ n, P5477327507175669937.a n = A333748 (n + 1)

end A333748

/-!
# A333749: Number of squarefree divisors of n that are <= sqrt(n).

The programs for A333749, there is no canonical definition to state claims against.
-/

/-! ## A333749.P2311703555334060650

`A341596(n+1)+char[∏{p}[n, #²]-1]`
-/

namespace A333749.P2311703555334060650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333749.P2311703555334060650

/-! ## A333749.P13187032942384246409

`A341596(n+1)+A227291(n+1)`
-/

namespace A333749.P13187032942384246409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 (n + 1) + A227291 (n + 1)

end

end A333749.P13187032942384246409

/-! ## A333749.P4125728929428906018

`A034444(n+1)-A341595(n+1)`
-/

namespace A333749.P4125728929428906018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A341595 (n + 1)

end

end A333749.P4125728929428906018

/-! ## A333749.P6768802436449023569

`abs(A158522(n+1))-A341595(n+1)`
-/

namespace A333749.P6768802436449023569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)| - A341595 (n + 1)

end

end A333749.P6768802436449023569

/-! ## A333749.P11886568789330876126

`A341596(n+1)+A271102(n+1)²`
-/

namespace A333749.P11886568789330876126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 (n + 1) + A271102 (n + 1) ^ 2

end

end A333749.P11886568789330876126

/-! ## A333749.P10149869610818546422

`2^A001221(n+1)-A341595(n+1)`
-/

namespace A333749.P10149869610818546422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A341595 (n + 1) : ℚ)

end

end A333749.P10149869610818546422

/-! ## A333749.P14515614072788273318

`A000005(∏{p}[n+1, #])-A341595(n+1)`
-/

namespace A333749.P14515614072788273318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - A341595 (n + 1)

end

end A333749.P14515614072788273318

/-!
# A333750: Number of prime power divisors of n that are <= sqrt(n).

The programs for A333750, the canonical program `A333750.P13112265574583452252` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333750 has offset 1).

The definition of A333750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333750.P13112265574583452252

`∑{e}[A072504(n+1), #]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A333750

/-- `∑{e}[A072504(n+1), #]` -/
def P13112265574583452252.Spec : Prop :=
  ∀ n, (P13112265574583452252.a n : ℤ) = A333750 (n + 1)

theorem P13112265574583452252.correct : P13112265574583452252.Spec := by
  intro n
  simp only [A333750, Nat.add_sub_cancel]

end A333750

/-! ## A333750.P13060354480684224507

`A001222(A072504(n+1))`
-/

namespace A333750.P13060354480684224507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072504 (n + 1)).toNat

end

end A333750.P13060354480684224507

namespace A333750

/-- `A001222(A072504(n+1))` -/
def P13060354480684224507.Spec : Prop :=
  ∀ n, P13060354480684224507.a n = A333750 (n + 1)

end A333750

/-! ## A333750.P10763635887392086166

`A001222(n+1)-A341644(n+1)`
-/

namespace A333750.P10763635887392086166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A341644 (n + 1)

end

end A333750.P10763635887392086166

namespace A333750

/-- `A001222(n+1)-A341644(n+1)` -/
def P10763635887392086166.Spec : Prop :=
  ∀ n, P10763635887392086166.a n = A333750 (n + 1)

end A333750

/-! ## A333750.P7487419433415863635

`A001222((n+1)/A072505(n+1))`
-/

namespace A333750.P7487419433415863635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072505 (n + 1) : ℚ))).toNat

end

end A333750.P7487419433415863635

namespace A333750

/-- `A001222((n+1)/A072505(n+1))` -/
def P7487419433415863635.Spec : Prop :=
  ∀ n, P7487419433415863635.a n = A333750 (n + 1)

end A333750

/-! ## A333750.P11354647580718905777

`A001222(gcd(n+1, A003418(A000194(n))))`
-/

namespace A333750.P11354647580718905777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 1 : ℤ) (A003418 (A000194 n).toNat))

end

end A333750.P11354647580718905777

namespace A333750

/-- `A001222(gcd(n+1, A003418(A000194(n))))` -/
def P11354647580718905777.Spec : Prop :=
  ∀ n, P11354647580718905777.a n = A333750 (n + 1)

end A333750

/-! ## A333750.P18211119752266379072

`A001222(n+1)-A001222(A072505(n+1))`
-/

namespace A333750.P18211119752266379072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A072505 (n + 1)).toNat

end

end A333750.P18211119752266379072

namespace A333750

/-- `A001222(n+1)-A001222(A072505(n+1))` -/
def P18211119752266379072.Spec : Prop :=
  ∀ n, P18211119752266379072.a n = A333750 (n + 1)

end A333750

/-! ## A333750.P14352179622054703761

`A252736(2*A072504(n+1))`
-/

namespace A333750.P14352179622054703761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A072504 (n + 1)).toNat

end

end A333750.P14352179622054703761

namespace A333750

/-- `A252736(2*A072504(n+1))` -/
def P14352179622054703761.Spec : Prop :=
  ∀ n, P14352179622054703761.a n = A333750 (n + 1)

end A333750

/-! ## A333750.P4490366287517537313

`A252736(A072504(n+1)²)-A252736(A072504(n+1))`
-/

namespace A333750.P4490366287517537313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A072504 (n + 1) ^ 2).toNat - A252736 (A072504 (n + 1)).toNat

end

end A333750.P4490366287517537313

namespace A333750

/-- `A252736(A072504(n+1)²)-A252736(A072504(n+1))` -/
def P4490366287517537313.Spec : Prop :=
  ∀ n, P4490366287517537313.a n = A333750 (n + 1)

end A333750

/-! ## A333750.P12101517049616161177

`A341677(A140580(n+1))`
-/

namespace A333750.P12101517049616161177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341677 (A140580 (n + 1)).toNat

end

end A333750.P12101517049616161177

namespace A333750

/-- `A341677(A140580(n+1))` -/
def P12101517049616161177.Spec : Prop :=
  ∀ n, P12101517049616161177.a n = A333750 (n + 1)

end A333750

/-!
# A333751: Sum of nonprime divisors of n that are <= sqrt(n).

The programs for A333751, there is no canonical definition to state claims against.
-/

/-! ## A333751.P12103362893839290865

`A066839(n+1)-A097974(n+1)`
-/

namespace A333751.P12103362893839290865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - A097974 (n + 1)

end

end A333751.P12103362893839290865

/-! ## A333751.P8909000045577574401

`A066839(n+1)-A008472(A072504(n+1))`
-/

namespace A333751.P8909000045577574401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - A008472 (A072504 (n + 1)).toNat

end

end A333751.P8909000045577574401

/-! ## A333751.P276282366171106930

`A060866(n+1)-(A097974(n+1)+A070038(n+1))`
-/

namespace A333751.P276282366171106930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - (A097974 (n + 1) + A070038 (n + 1))

end

end A333751.P276282366171106930

/-! ## A333751.P13259517991588762286

`A070038(n+1)-(A097974(n+1)+A079667(n+1))`
-/

namespace A333751.P13259517991588762286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A097974 (n + 1) + A079667 (n + 1))

end

end A333751.P13259517991588762286

/-! ## A333751.P16113216920469856704

`2*A069289(n+1)-A333782(n+1)-A097974(n+1)`
-/

namespace A333751.P16113216920469856704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069289 (n + 1) - A333782 (n + 1) - A097974 (n + 1)

end

end A333751.P16113216920469856704

/-! ## A333751.P3419723372475500037

`A000203(n+1)+A037213(n+1)-A070038(n+1)-A097974(n+1)`
-/

namespace A333751.P3419723372475500037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A037213 (n + 1) - A070038 (n + 1)) - A097974 (n + 1)

end

end A333751.P3419723372475500037

/-! ## A333751.P4180047648213070757

`A070038(n+1)+A117004(n+1)-A000203(n+1)-A097974(n+1)`
-/

namespace A333751.P4180047648213070757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) + (A117004 (n + 1) - A000203 (n + 1)) - A097974 (n + 1)

end

end A333751.P4180047648213070757

/-! ## A333751.P4368803828800828441

`A070038(n+1)-(A245092(2*n+1)-A117004(n+1))-A097974(n+1)`
-/

namespace A333751.P4368803828800828441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A245092 (2 * n + 1) - A117004 (n + 1)) - A097974 (n + 1)

end

end A333751.P4368803828800828441

/-! ## A333751.P15986868474539415105

`A070038(n+1)-(A001065(n+1)+n+1-A117004(n+1))-A097974(n+1)`
-/

namespace A333751.P15986868474539415105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A001065 (n + 1) + (n + 1 : ℤ) - A117004 (n + 1)) - A097974 (n + 1)

end

end A333751.P15986868474539415105

/-! ## A333751.P5672139071641385800

`A066839(n+1)-A008472(A072499(n+1))`
-/

namespace A333751.P5672139071641385800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - A008472 (A072499 (n + 1)).toNat

end

end A333751.P5672139071641385800

/-!
# A333752: Sum of squarefree divisors of n that are <= sqrt(n).

The programs for A333752, there is no canonical definition to state claims against.
-/

/-! ## A333752.P6579668147599908515

`A097974(n+1)+A029093(A185284(n+1))`
-/

namespace A333752.P6579668147599908515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097974 (n + 1) + A029093 (A185284 (n + 1)).toNat

end

end A333752.P6579668147599908515

/-! ## A333752.P8579352079530792988

`A074372(A072499(n+1)²)`
-/

namespace A333752.P8579352079530792988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A072499 (n + 1) ^ 2).toNat

end

end A333752.P8579352079530792988

/-! ## A333752.P10528006955699283774

`A063958(A072499(n+1)²)+1`
-/

namespace A333752.P10528006955699283774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (A072499 (n + 1) ^ 2).toNat + 1

end

end A333752.P10528006955699283774

/-! ## A333752.P14501354988205700940

`A097974(A072499(n+1)²)+1`
-/

namespace A333752.P14501354988205700940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097974 (A072499 (n + 1) ^ 2).toNat + 1

end

end A333752.P14501354988205700940

/-! ## A333752.P13213659158355446965

`A097974(n+1)%A085516(n+1)+1`
-/

namespace A333752.P13213659158355446965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097974 (n + 1)) (A085516 (n + 1)) + 1

end

end A333752.P13213659158355446965

/-!
# A333753: Sum of prime power divisors of n that are <= sqrt(n).

The programs for A333753, the canonical program `A333753.P1428503214538916222` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333753 has offset 1).

The definition of A333753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333753.P1428503214538916222

`A023889(A072504(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333753

/-- `A023889(A072504(n+1))` -/
def P1428503214538916222.Spec : Prop :=
  ∀ n, P1428503214538916222.a n = A333753 (n + 1)

theorem P1428503214538916222.correct : P1428503214538916222.Spec := by
  intro n
  simp only [A333753, Nat.add_sub_cancel]

end A333753

/-! ## A333753.P3055682973586757416

`A023889((n+1)/A072505(n+1))`
-/

namespace A333753.P3055682973586757416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072505 (n + 1) : ℚ))).toNat

end

end A333753.P3055682973586757416

namespace A333753

/-- `A023889((n+1)/A072505(n+1))` -/
def P3055682973586757416.Spec : Prop :=
  ∀ n, P3055682973586757416.a n = A333753 (n + 1)

end A333753

/-! ## A333753.P10656249824300842322

`A023888(A072504(C(n+1, n)))-1`
-/

namespace A333753.P10656249824300842322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A072504 (Nat.choose (n + 1) n)).toNat - 1

end

end A333753.P10656249824300842322

namespace A333753

/-- `A023888(A072504(C(n+1, n)))-1` -/
def P10656249824300842322.Spec : Prop :=
  ∀ n, P10656249824300842322.a n = A333753 (n + 1)

end A333753

/-! ## A333753.P9546598592471803282

`A023888(A072504(-xor(n, -1)))-1`
-/

namespace A333753.P9546598592471803282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A072504 (-Int.xor (n : ℤ) (-1)).toNat).toNat - 1

end

end A333753.P9546598592471803282

namespace A333753

/-- `A023888(A072504(-xor(n, -1)))-1` -/
def P9546598592471803282.Spec : Prop :=
  ∀ n, P9546598592471803282.a n = A333753 (n + 1)

end A333753

/-! ## A333753.P4232728108894870916

`A023888(A072504(Δ[n²]-n))-1`
-/

namespace A333753.P4232728108894870916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A072504 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A333753.P4232728108894870916

namespace A333753

/-- `A023888(A072504(Δ[n²]-n))-1` -/
def P4232728108894870916.Spec : Prop :=
  ∀ n, P4232728108894870916.a n = A333753 (n + 1)

end A333753

/-! ## A333753.P13892297337771049036

`(A023888(A072504(n+1))-1)%A000040(n+1)`
-/

namespace A333753.P13892297337771049036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023888 (A072504 (n + 1)).toNat - 1) (A000040 (n + 1))

end

end A333753.P13892297337771049036

namespace A333753

/-- `(A023888(A072504(n+1))-1)%A000040(n+1)` -/
def P13892297337771049036.Spec : Prop :=
  ∀ n, P13892297337771049036.a n = A333753 (n + 1)

end A333753

/-! ## A333753.P454321342380019863

`A057428(n+1)+A023888(A072504(n+1))`
-/

namespace A333753.P454321342380019863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A023888 (A072504 (n + 1)).toNat

end

end A333753.P454321342380019863

namespace A333753

/-- `A057428(n+1)+A023888(A072504(n+1))` -/
def P454321342380019863.Spec : Prop :=
  ∀ n, P454321342380019863.a n = A333753 (n + 1)

end A333753

/-!
# A333754: Sum of the areas of all r X s rectangles such that r < s, r + s = 2n and (s - r) | (s * r).

The programs for A333754, there is no canonical definition to state claims against.
-/

/-! ## A333754.P11858592637961528264

`A334349(2*(n+1))`
-/

namespace A333754.P11858592637961528264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334349 (2 * (n + 1))

end

end A333754.P11858592637961528264

/-! ## A333754.P13849410426372740545

`lcm(2, A334349(A103517(n)))`
-/

namespace A333754.P13849410426372740545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A334349 (A103517 n).toNat)

end

end A333754.P13849410426372740545

/-! ## A333754.P3605383452312955325

`A334349(A103517(n))%A001845(n)`
-/

namespace A333754.P3605383452312955325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334349 (A103517 n).toNat) (A001845 n)

end

end A333754.P3605383452312955325

/-!
# A333755: Triangle read by rows where T(n,k) is the number of compositions of n with k runs, n >= 0, 0 <= k <= n.

The programs for A333755, there is no canonical definition to state claims against.
-/

/-! ## A333755.P13002799315829535705

`A238130(floor(acot(1-n))+n)`
-/

namespace A333755.P13002799315829535705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)⌋ + (n : ℤ)).toNat

end

end A333755.P13002799315829535705

/-! ## A333755.P1265073317598755585

`A238130(n-a(2%n))` with `a(0)=1, a(1)=0`
-/

namespace A333755.P1265073317598755585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A238130 ((n : ℤ) - a (2 % n)).toNat

end

end A333755.P1265073317598755585

/-! ## A333755.P4651601950453850227

`A238130(C(2, n²)-1+n)`
-/

namespace A333755.P4651601950453850227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 ((Nat.choose 2 (n ^ 2) : ℤ) - 1 + (n : ℤ)).toNat

end

end A333755.P4651601950453850227

/-! ## A333755.P7296615828028847024

`A238130(char[1]+n-floor(atan(n)))`
-/

namespace A333755.P7296615828028847024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 ((((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) - ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A333755.P7296615828028847024

/-! ## A333755.P14933202482681554133

`A238130(round(acot(n)+n)-(1-char[1]))`
-/

namespace A333755.P14933202482681554133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A333755.P14933202482681554133

/-! ## A333755.P4029611758515618194

`A238130(A134824(n)+n)`
-/

namespace A333755.P4029611758515618194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A134824 n + (n : ℤ)).toNat

end

end A333755.P4029611758515618194

/-! ## A333755.P10286337197178123216

`A238130(n-A167407(n))`
-/

namespace A333755.P10286337197178123216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 ((n : ℤ) - A167407 n).toNat

end

end A333755.P10286337197178123216

/-! ## A333755.P10164447741835416607

`A238130(A066182(n+1)-1)`
-/

namespace A333755.P10164447741835416607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (A066182 (n + 1) - 1).toNat

end

end A333755.P10164447741835416607

/-! ## A333755.P6754381268821963388

`A238130(floor(sqrt(A106230(n+1))))`
-/

namespace A333755.P6754381268821963388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (Int.sqrt (A106230 (n + 1))).toNat

end

end A333755.P6754381268821963388

/-! ## A333755.P6669955557388119526

`A238130(gcd(1-n, A004278(n+1)))`
-/

namespace A333755.P6669955557388119526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 (Int.gcd (1 - (n : ℤ)) (A004278 (n + 1)))

end

end A333755.P6669955557388119526

/-!
# A333757: Number of graceful labelings of the n-sunlet graph.

The programs for A333757, there is no canonical definition to state claims against.
-/

/-! ## A333757.P17082319504161746432

`4*(n+3)*A387808(n+3)`
-/

namespace A333757.P17082319504161746432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 3) : ℤ) * A387808 (n + 3)

end

end A333757.P17082319504161746432

/-!
# A333758: Square array T(n,k), n >= 2, k >= 2, read by antidiagonals, where T(n,k) is the number of self-avoiding closed paths in the n X k grid graph which pass through all vertices on four (left, right, upper, lower) sides of the graph.

The programs for A333758, there is no canonical definition to state claims against.
-/

/-! ## A333758.P18345018976082140156

`A162891(A048720(n)%A124532(n))`
-/

namespace A333758.P18345018976082140156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162891 (Int.tmod (A048720 n) (A124532 n)).toNat

end

end A333758.P18345018976082140156

/-! ## A333758.P484260808544730405

`A162891(A048720(n))%A162662(n+3)`
-/

namespace A333758.P484260808544730405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162891 (A048720 n).toNat) (A162662 (n + 3))

end

end A333758.P484260808544730405

/-!
# A333759: Number of self-avoiding closed paths in the n X n grid graph which pass through all vertices on four (left, right, upper, lower) sides of the graph.

The programs for A333759, there is no canonical definition to state claims against.
-/

/-! ## A333759.P2840848952789689796

`A333758(∑[4*n]+2)`
-/

namespace A333759.P2840848952789689796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333759.P2840848952789689796

/-!
# A333760: Number of self-avoiding closed paths in the 4 X n grid graph which pass through all vertices on four (left, right, upper, lower) sides of the graph.

The programs for A333760, the canonical program `A333760.P4214464401587446527` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333760 has offset 2).

The definition of A333760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333760.P4214464401587446527

`ogf(1/(1-3x-2x^2+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333760

/-- `ogf(1/(1-3x-2x^2+3x^3-x^4))` -/
def P4214464401587446527.Spec : Prop :=
  ∀ n, P4214464401587446527.a n = A333760 (n + 2)

theorem P4214464401587446527.correct : P4214464401587446527.Spec := by
  intro n
  simp only [A333760, Nat.add_sub_cancel]

end A333760

/-! ## A333760.P8766168272004292358

`A333758(∑[n+3]+2)`
-/

namespace A333760.P8766168272004292358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333760.P8766168272004292358

namespace A333760

/-- `A333758(∑[n+3]+2)` -/
def P8766168272004292358.Spec : Prop :=
  ∀ n, P8766168272004292358.a n = A333760 (n + 2)

end A333760

/-! ## A333760.P16066187373367445669

`record[A333758(A333530(n+1))]`
-/

namespace A333760.P16066187373367445669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333760.P16066187373367445669

namespace A333760

/-- `record[A333758(A333530(n+1))]` -/
def P16066187373367445669.Spec : Prop :=
  ∀ n, P16066187373367445669.a n = A333760 (n + 2)

end A333760

/-! ## A333760.P4907388457430454831

`record[A333758(record[A056943(n+4)])]`
-/

namespace A333760.P4907388457430454831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333760.P4907388457430454831

namespace A333760

/-- `record[A333758(record[A056943(n+4)])]` -/
def P4907388457430454831.Spec : Prop :=
  ∀ n, P4907388457430454831.a n = A333760 (n + 2)

end A333760

/-!
# A333761: Decimal expansion of root of the equation LambertW(r) = 1 - r.

The programs for A333761, there is no canonical definition to state claims against.
-/

/-! ## A333761.P10552556800715575395

`9-A352771(n)`
-/

namespace A333761.P10552556800715575395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A352771 n

end

end A333761.P10552556800715575395

/-!
# A333762: Fixed points of A333692.

The programs for A333762, there is no canonical definition to state claims against.
-/

/-! ## A333762.P13309834698158989715

`eq[n, A333692(n)]`
-/

namespace A333762.P13309834698158989715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333762.P13309834698158989715

/-! ## A333762.P4952354276603514502

`eq[n, A333693(n)]`
-/

namespace A333762.P4952354276603514502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333762.P4952354276603514502

/-! ## A333762.P809110443546590333

`record[gcd(n, A333692(2*n))]`
-/

namespace A333762.P809110443546590333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A333692 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333762.P809110443546590333

/-! ## A333762.P2717758786750053660

`record[gcd(A005843(n), A333693(n))]`
-/

namespace A333762.P2717758786750053660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A333693 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333762.P2717758786750053660

/-! ## A333762.P7290999518784833415

`eq[A004526(A145341(n+1)), A333777(n)]`
-/

namespace A333762.P7290999518784833415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A145341 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333762.P7290999518784833415

/-!
# A333763: a(n) = A161604(n) / A030101(A161604(n)).

The programs for A333763, there is no canonical definition to state claims against.
-/

/-! ## A333763.P14005245914271309442

`A161604(n+1)/A030101(A161604(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333763.P14005245914271309442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161604 (n + 1) : ℚ) / (A030101 (A161604 (n + 1)).toNat : ℚ)

end

end A333763.P14005245914271309442

/-! ## A333763.P13665888745015570399

`2^val(A161604(n+1), 2)`
-/

namespace A333763.P13665888745015570399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A161604 (n + 1)).toNat 2

end

end A333763.P13665888745015570399

/-! ## A333763.P8875095980068111719

`A000079(val(A161604(n+1), 2))`
-/

namespace A333763.P8875095980068111719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A161604 (n + 1)).toNat 2)

end

end A333763.P8875095980068111719

/-! ## A333763.P11737406047005971061

`2^val(A057890(n+2), 2)`
-/

namespace A333763.P11737406047005971061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A057890 (n + 2)).toNat 2

end

end A333763.P11737406047005971061

/-! ## A333763.P658882127850087622

`A000079(val(A057890(n+2), 2))`
-/

namespace A333763.P658882127850087622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A057890 (n + 2)).toNat 2)

end

end A333763.P658882127850087622

/-! ## A333763.P7215413024425737940

`A118824(A272670(n+1))`
-/

namespace A333763.P7215413024425737940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A272670 (n + 1)).toNat

end

end A333763.P7215413024425737940

/-! ## A333763.P883312460159430837

`A006519(A161604(n+1))`
-/

namespace A333763.P883312460159430837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A161604 (n + 1)).toNat

end

end A333763.P883312460159430837

/-! ## A333763.P6601316752767294398

`A006519(A057890(n+2))`
-/

namespace A333763.P6601316752767294398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A057890 (n + 2)).toNat

end

end A333763.P6601316752767294398

/-! ## A333763.P11333401520959033963

`A006519(A272670(n+1)/2)`
-/

namespace A333763.P11333401520959033963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (SequenceMachineLib.roundAway ((A272670 (n + 1) : ℚ) / 2)).toNat

end

end A333763.P11333401520959033963

/-! ## A333763.P2704434115431273820

`2^val(lt[A280506(n+1), 2]+1, 2)`
-/

namespace A333763.P2704434115431273820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280506 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 2

end

end A333763.P2704434115431273820

/-! ## A333763.P14994104097026376658

`A006519(record[A280505(n+1)])`
-/

namespace A333763.P14994104097026376658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333763.P14994104097026376658

/-! ## A333763.P8515616347680506890

`gcd(A000079(n), A161604(n+1))`
-/

namespace A333763.P8515616347680506890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A161604 (n + 1))

end

end A333763.P8515616347680506890

/-!
# A333764: Numbers k such that the k-th composition in standard order is a co-necklace.

The programs for A333764, there is no canonical definition to state claims against.
-/

/-! ## A333764.P2130522346228065457

`record[A163382(n+1)]`
-/

namespace A333764.P2130522346228065457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333764.P2130522346228065457

/-! ## A333764.P17459938400451384023

`eq[n, A163382(A028310(n))]`
-/

namespace A333764.P17459938400451384023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163382 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333764.P17459938400451384023

/-! ## A333764.P1581707263187006830

`eq[n, A163382(gcd(n, A008574(n)))]`
-/

namespace A333764.P1581707263187006830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163382 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333764.P1581707263187006830

/-! ## A333764.P13085882799346619770

`A163382(lt[n, A163382(n+1)]+1)`
-/

namespace A333764.P13085882799346619770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A333764.P13085882799346619770

/-! ## A333764.P10222839295569668273

`eq[A000027(n+1), A163382(n+1)]+1`
-/

namespace A333764.P10222839295569668273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333764.P10222839295569668273

/-! ## A333764.P15651780947314442542

`eq[A006257(n), A163381(A028310(n))]`
-/

namespace A333764.P15651780947314442542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163381 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333764.P15651780947314442542

/-! ## A333764.P18276094417306876668

`eq[A006094(n+1), A006094(A163382(n+1))]+1`
-/

namespace A333764.P18276094417306876668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A163382 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333764.P18276094417306876668

/-! ## A333764.P749774603323499261

`eq[A044922(n+1), A044922(A163382(n+1))]+1`
-/

namespace A333764.P749774603323499261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044922 (A163382 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333764.P749774603323499261

/-! ## A333764.P10241937976798051600

`eq[A174670(A163382(n+1)), A174670(n+1)]+1`
-/

namespace A333764.P10241937976798051600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (A163382 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333764.P10241937976798051600

/-!
# A333765: Number of co-Lyndon factorizations of the k-th composition in standard order.

The programs for A333765, there is no canonical definition to state claims against.
-/

/-! ## A333765.P12807271310066424811

`A379668(A000606(n))+A334029(n)`
-/

namespace A333765.P12807271310066424811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379668 (A000606 n).toNat + A334029 n

end

end A333765.P12807271310066424811

/-! ## A333765.P827300038507677215

`A334029(A151672(2*n)+n)`
-/

namespace A333765.P827300038507677215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A151672 (2 * n) + (n : ℤ)).toNat

end

end A333765.P827300038507677215

/-! ## A333765.P7237200475207304700

`A334029(or(n, A151672(2*n)))`
-/

namespace A333765.P7237200475207304700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (Int.lor (n : ℤ) (A151672 (2 * n))).toNat

end

end A333765.P7237200475207304700

/-! ## A333765.P13482134051114577084

`A334029(xor(n, A151672(2*n)))`
-/

namespace A333765.P13482134051114577084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (Int.xor (n : ℤ) (A151672 (2 * n))).toNat

end

end A333765.P13482134051114577084

/-! ## A333765.P1315554649610501515

`A099563(A014206(n)*A331274(n+1))`
-/

namespace A333765.P1315554649610501515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A014206 n * A331274 (n + 1)).toNat

end

end A333765.P1315554649610501515

/-!
# A333766: Maximum part of the n-th composition in standard order. a(0) = 0.

The programs for A333766, there is no canonical definition to state claims against.
-/

/-! ## A333766.P3384179544738331600

`(A087117(n)+1)%(n+1)`
-/

namespace A333766.P3384179544738331600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 n + 1) (n + 1 : ℤ)

end

end A333766.P3384179544738331600

/-! ## A333766.P4185510275874308572

`ceil(A087117(Δ[n²])+sin(n)²)`
-/

namespace A333766.P4185510275874308572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A333766.P4185510275874308572

/-! ## A333766.P3516838629467398401

`A087117(2*n+1)+ceil(sin(n)²)`
-/

namespace A333766.P3516838629467398401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (2 * n + 1) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A333766.P3516838629467398401

/-! ## A333766.P6045562370120437679

`A051903(A057335(n))`
-/

namespace A333766.P6045562370120437679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A057335 n).toNat

end

end A333766.P6045562370120437679

/-! ## A333766.P11282193331877621528

`A355661(A209636(n))`
-/

namespace A333766.P11282193331877621528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355661 (A209636 n).toNat

end

end A333766.P11282193331877621528

/-! ## A333766.P9125510629363927417

`A061395(A333219(n+1))`
-/

namespace A333766.P9125510629363927417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A333219 (n + 1)).toNat

end

end A333766.P9125510629363927417

/-! ## A333766.P9430366820735764157

`A158388(n)+A087117(n)`
-/

namespace A333766.P9430366820735764157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A087117 n

end

end A333766.P9430366820735764157

/-! ## A333766.P12261860677909614933

`A087117(n)+1-A000038(n)`
-/

namespace A333766.P12261860677909614933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + (1 - A000038 n)

end

end A333766.P12261860677909614933

/-! ## A333766.P3446441464370523024

`A087117(n)-A153881(n+1)`
-/

namespace A333766.P3446441464370523024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n - A153881 (n + 1)

end

end A333766.P3446441464370523024

/-! ## A333766.P16552268701003135056

`(A087117(n)+1)*A178334(n)`
-/

namespace A333766.P16552268701003135056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087117 n + 1) * A178334 n

end

end A333766.P16552268701003135056

/-!
# A333767: Length of shortest run of zeros after a one in the binary expansion of n. a(0) = 0.

The programs for A333767, there is no canonical definition to state claims against.
-/

/-! ## A333767.P836577541011094744

`∑{d}[n, C(and(n, #-n), n)]`
-/

namespace A333767.P836577541011094744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (Int.land (n : ℤ) ((d : ℤ) - (n : ℤ))).toNat n

end

end A333767.P836577541011094744

/-! ## A333767.P8463207082795249713

`∑{d}[n, floor(and(n, #-n)/n)]`
-/

namespace A333767.P8463207082795249713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(Int.land (n : ℤ) ((d : ℤ) - (n : ℤ)) : ℚ) / (n : ℚ)⌋

end

end A333767.P8463207082795249713

/-! ## A333767.P10022987697324647322

`floor(log(cosh(A333768(n))))`
-/

namespace A333767.P10022987697324647322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A333768 n : ℝ))⌋

end

end A333767.P10022987697324647322

/-! ## A333767.P11655368582365449747

`A333768(round(sqrt(n²+1)))-1`
-/

namespace A333767.P11655368582365449747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A333767.P11655368582365449747

/-! ## A333767.P3421264261747313764

`log2(gcd(2^floor(n/2), A233312(n)))`
-/

namespace A333767.P3421264261747313764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A233312 n) : ℝ)

end

end A333767.P3421264261747313764

/-! ## A333767.P15320186538368129156

`A089263(2*A233312(n))`
-/

namespace A333767.P15320186538368129156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (2 * A233312 n).toNat

end

end A333767.P15320186538368129156

/-! ## A333767.P7757263090698818698

`(A333768(n)-1)*A057427(n)`
-/

namespace A333767.P7757263090698818698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333768 n - 1) * A057427 n

end

end A333767.P7757263090698818698

/-! ## A333767.P15142097024772124218

`A008683((n+1)²)+A333768(n)-1`
-/

namespace A333767.P15142097024772124218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A333768 n - 1)

end

end A333767.P15142097024772124218

/-! ## A333767.P16457766854536192696

`ceil((A333768(n)-1)/A014963(n+2))`
-/

namespace A333767.P16457766854536192696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333768 n - 1 : ℚ) / (A014963 (n + 2) : ℚ)⌉

end

end A333767.P16457766854536192696

/-! ## A333767.P16011209242809589110

`(A333768(n)-1)*and(1, A000040(n+1))`
-/

namespace A333767.P16011209242809589110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333768 n - 1) * Int.land 1 (A000040 (n + 1))

end

end A333767.P16011209242809589110

/-!
# A333768: Minimum part of the n-th composition in standard order. a(0) = 0.

The programs for A333768, there is no canonical definition to state claims against.
-/

/-! ## A333768.P17041644779273354683

`∑{d}[n, C(and(n, #-n), n)]+ceil(n/98)`
-/

namespace A333768.P17041644779273354683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.choose (Int.land (n : ℤ) ((d : ℤ) - (n : ℤ))).toNat n : ℕ) : ℤ) + ⌈(n : ℚ) / 98⌉

end

end A333768.P17041644779273354683

/-! ## A333768.P13409069942549946987

`∑{d}[n, floor(and(n, #-n)/n)]+ceil(sin(n)²)`
-/

namespace A333768.P13409069942549946987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(Int.land (n : ℤ) ((d : ℤ) - (n : ℤ)) : ℚ) / (n : ℚ)⌋ + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A333768.P13409069942549946987

/-! ## A333768.P5958555172158029649

`∑{d}[n, floor(and(n, #-n)/n)]+1-C(2, n+2)`
-/

namespace A333768.P5958555172158029649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(Int.land (n : ℤ) ((d : ℤ) - (n : ℤ)) : ℚ) / (n : ℚ)⌋ + (1 - (Nat.choose 2 (n + 2) : ℤ))

end

end A333768.P5958555172158029649

/-! ## A333768.P13504001330805049365

`(∑{d}[n, floor(and(n, #-n)/n)]+1)%∑{d}[n+1, #]`
-/

namespace A333768.P13504001330805049365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), ⌊(Int.land (n : ℤ) ((d : ℤ) - (n : ℤ)) : ℚ) / (n : ℚ)⌋ + 1) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A333768.P13504001330805049365

/-! ## A333768.P17966483753372570680

`A333767(n)+ceil(n/98)`
-/

namespace A333768.P17966483753372570680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333767 n + ⌈(n : ℚ) / 98⌉

end

end A333768.P17966483753372570680

/-! ## A333768.P5102981589042804112

`A051904(A057335(n))`
-/

namespace A333768.P5102981589042804112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A057335 n).toNat

end

end A333768.P5102981589042804112

/-! ## A333768.P7538788028379334039

`A065120(A233569(n))`
-/

namespace A333768.P7538788028379334039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A233569 n).toNat

end

end A333768.P7538788028379334039

/-! ## A333768.P6912730771429721938

`A055396(A333219(n+1))`
-/

namespace A333768.P6912730771429721938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A333219 (n + 1)).toNat

end

end A333768.P6912730771429721938

/-! ## A333768.P17580505338117519231

`A089263(4*A233312(n))`
-/

namespace A333768.P17580505338117519231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (4 * A233312 n).toNat

end

end A333768.P17580505338117519231

/-! ## A333768.P3222992980532439708

`A285097(A348363(2*n+1))`
-/

namespace A333768.P3222992980532439708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A348363 (2 * n + 1)).toNat

end

end A333768.P3222992980532439708

/-!
# A333769: Irregular triangle read by rows where row k is the sequence of run-lengths of the k-th composition in standard order.

The programs for A333769, there is no canonical definition to state claims against.
-/

/-! ## A333769.P7189938231401529834

`A353932(n+1)/A374251(n+1)`
-/

namespace A333769.P7189938231401529834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353932 (n + 1) : ℚ) / (A374251 (n + 1) : ℚ)

end

end A333769.P7189938231401529834

/-!
# A333770: Smallest palindromic number >= 3^n.

The programs for A333770, there is no canonical definition to state claims against.
-/

/-! ## A333770.P14799790095418885939

`A262038(A000244(n))`
-/

namespace A333770.P14799790095418885939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A000244 n).toNat

end

end A333770.P14799790095418885939

/-! ## A333770.P15598471082040107295

`A262038(3^n)`
-/

namespace A333770.P15598471082040107295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (3 ^ n)

end

end A333770.P15598471082040107295

/-! ## A333770.P18075140911039607357

`A052036(3^n)+3^n`
-/

namespace A333770.P18075140911039607357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 (3 ^ n) + (3 ^ n : ℤ)

end

end A333770.P18075140911039607357

/-! ## A333770.P10250559382879960456

`record[A262038(A048883(n))]`
-/

namespace A333770.P10250559382879960456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333770.P10250559382879960456

/-! ## A333770.P8592123963882336254

`record[A262038(A112626(n))]`
-/

namespace A333770.P8592123963882336254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A112626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333770.P8592123963882336254

/-!
# A333771: Triangular numbers that are the product of four distinct primes.

The programs for A333771, the canonical program `A333771.P212505724064706080` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333771 has offset 1).

The definition of A333771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333771.P15189082008636524149

`∩[A061304(n+1), A076578(n+1)]`
-/

namespace A333771.P15189082008636524149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P15189082008636524149

namespace A333771

/-- `∩[A061304(n+1), A076578(n+1)]` -/
def P15189082008636524149.Spec : Prop :=
  ∀ n, (P15189082008636524149.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P8229978701180301659

`∩[A061304(n+1), A000217(A114435(n+1))]`
-/

namespace A333771.P8229978701180301659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A114435 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P8229978701180301659

namespace A333771

/-- `∩[A061304(n+1), A000217(A114435(n+1))]` -/
def P8229978701180301659.Spec : Prop :=
  ∀ n, (P8229978701180301659.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P212505724064706080

`A000217(∩[A114435(n+1), A215726(n+1)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A333771

/-- `A000217(∩[A114435(n+1), A215726(n+1)])` -/
def P212505724064706080.Spec : Prop :=
  ∀ n, P212505724064706080.a n = A333771 (n + 1)

theorem P212505724064706080.correct : P212505724064706080.Spec := by
  intro n
  simp only [A333771, Nat.add_sub_cancel]

end A333771

/-! ## A333771.P9014669148577947120

`∩[A076578(n+1), A121479(n+1)]`
-/

namespace A333771.P9014669148577947120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P9014669148577947120

namespace A333771

/-- `∩[A076578(n+1), A121479(n+1)]` -/
def P9014669148577947120.Spec : Prop :=
  ∀ n, (P9014669148577947120.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P14626188581024368186

`∩[A000217(A114435(n+1)), A121479(n+1)]`
-/

namespace A333771.P14626188581024368186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A114435 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P14626188581024368186

namespace A333771

/-- `∩[A000217(A114435(n+1)), A121479(n+1)]` -/
def P14626188581024368186.Spec : Prop :=
  ∀ n, (P14626188581024368186.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P4298306900328610338

`∩[A046386(n+1), A000217(n)]`
-/

namespace A333771.P4298306900328610338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P4298306900328610338

namespace A333771

/-- `∩[A046386(n+1), A000217(n)]` -/
def P4298306900328610338.Spec : Prop :=
  ∀ n, (P4298306900328610338.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P8148718205703014507

`∩[A046386(n+1), A001972(n)]`
-/

namespace A333771.P8148718205703014507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P8148718205703014507

namespace A333771

/-- `∩[A046386(n+1), A001972(n)]` -/
def P8148718205703014507.Spec : Prop :=
  ∀ n, (P8148718205703014507.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P12312578785815213243

`∩[A046386(n+1), A253145(n)]`
-/

namespace A333771.P12312578785815213243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P12312578785815213243

namespace A333771

/-- `∩[A046386(n+1), A253145(n)]` -/
def P12312578785815213243.Spec : Prop :=
  ∀ n, (P12312578785815213243.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P3680469673867371434

`∩[A005214(n+1), A046386(n+1)]`
-/

namespace A333771.P3680469673867371434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P3680469673867371434

namespace A333771

/-- `∩[A005214(n+1), A046386(n+1)]` -/
def P3680469673867371434.Spec : Prop :=
  ∀ n, (P3680469673867371434.a n : ℤ) = A333771 (n + 1)

end A333771

/-! ## A333771.P985280515725863183

`∩[A046386(n+1), A061304(n+1)]`
-/

namespace A333771.P985280515725863183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333771.P985280515725863183

namespace A333771

/-- `∩[A046386(n+1), A061304(n+1)]` -/
def P985280515725863183.Spec : Prop :=
  ∀ n, (P985280515725863183.a n : ℤ) = A333771 (n + 1)

end A333771

/-!
# A333772: a(n) = n * 2^n * (n!)^2.

The programs for A333772, the canonical program `A333772.P7739613937815837114` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333772 has offset 1).

The definition of A333772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^(n+1)*(n+1)!²` (program `A333772.P7739613937815837114`, by `A333772.P7739613937815837114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333772.P7739613937815837114

`(n+1)*2^(n+1)*(n+1)!²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333772

/-- `(n+1)*2^(n+1)*(n+1)!²` -/
def P7739613937815837114.Spec : Prop :=
  ∀ n, (P7739613937815837114.a n : ℤ) = A333772 (n + 1)

theorem P7739613937815837114.correct : P7739613937815837114.Spec := by
  intro n
  simp only [A333772, Nat.add_sub_cancel]

end A333772

/-! ## A333772.P6906514134187276173

`(n+1)*∏[2*(n+1)²]`
-/

namespace A333772.P6906514134187276173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A333772.P6906514134187276173

namespace A333772

/-- `(n+1)*∏[2*(n+1)²]` -/
def P6906514134187276173.Spec : Prop :=
  ∀ n, (P6906514134187276173.a n : ℤ) = A333772 (n + 1)

end A333772

/-! ## A333772.P6760004887530093328

`floor(a(n-1)/∑[n]*(n+1)²²)` with `a(0)=2`
-/

namespace A333772.P6760004887530093328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (((n + 1) ^ 2) ^ 2 : ℚ)⌋

end

end A333772.P6760004887530093328

namespace A333772

/-- `floor(a(n-1)/∑[n]*(n+1)²²)` -/
def P6760004887530093328.Spec : Prop :=
  ∀ n, P6760004887530093328.a n = A333772 (n + 1)

end A333772

/-! ## A333772.P413204568213430941

`(n+1)^4*a(n-1)/∑[n]` with `a(0)=2`
-/

namespace A333772.P413204568213430941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 1) ^ 4 : ℚ) * a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A333772.P413204568213430941

namespace A333772

/-- `(n+1)^4*a(n-1)/∑[n]` -/
def P413204568213430941.Spec : Prop :=
  ∀ n, P413204568213430941.a n = (A333772 (n + 1) : ℚ)

end A333772

/-! ## A333772.P9425521600859838623

`a(n-1)*Δ[∑[2*n]²]/(2*n)` with `a(0)=2`
-/

namespace A333772.P9425521600859838623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (2 * n : ℚ)

end

end A333772.P9425521600859838623

namespace A333772

/-- `a(n-1)*Δ[∑[2*n]²]/(2*n)` -/
def P9425521600859838623.Spec : Prop :=
  ∀ n, P9425521600859838623.a n = (A333772 (n + 1) : ℚ)

end A333772

/-!
# A333773: Replace 2's with (-1)'s in ternary representation of n and sum nonzero terms with alternating signs.

The programs for A333773, there is no canonical definition to state claims against.
-/

/-! ## A333773.P9223925260454796472

`A117966(A380350(n))`
-/

namespace A333773.P9223925260454796472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A380350 n).toNat

end

end A333773.P9223925260454796472

/-! ## A333773.P11239393992295398007

`-A117966(A380349(n))`
-/

namespace A333773.P11239393992295398007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A117966 (A380349 n).toNat

end

end A333773.P11239393992295398007

/-! ## A333773.P8472461859787736494

`A380349(n)-A380350(n)`
-/

namespace A333773.P8472461859787736494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380349 n - A380350 n

end

end A333773.P8472461859787736494

/-! ## A333773.P779067100790903605

`A380350(A004488(n))-A380350(n)`
-/

namespace A333773.P779067100790903605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A004488 n).toNat - A380350 n

end

end A333773.P779067100790903605

/-! ## A333773.P10209189671300888419

`A380349(n)-A380349(A004488(n))`
-/

namespace A333773.P10209189671300888419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380349 n - A380349 (A004488 n).toNat

end

end A333773.P10209189671300888419

/-!
# A333776: Scan the binary representation of n from right to left; at each 1, reverse the bits to the right and excluding this 1. The resulting binary representation is that of a(n).

The programs for A333776, there is no canonical definition to state claims against.
-/

/-! ## A333776.P1753488227660645552

`A333692(A145342(n+1)-1)`
-/

namespace A333776.P1753488227660645552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (A145342 (n + 1) - 1).toNat

end

end A333776.P1753488227660645552

/-! ## A333776.P13033628993890968373

`A333692((A145341(n+1)-1)/2)`
-/

namespace A333776.P13033628993890968373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (SequenceMachineLib.roundAway ((A145341 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A333776.P13033628993890968373

/-! ## A333776.P8604804584588327838

`A333692(A333777(A333692(n)))`
-/

namespace A333776.P8604804584588327838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (A333777 (A333692 n).toNat).toNat

end

end A333776.P8604804584588327838

/-! ## A333776.P2442354570361068025

`A333692(A145341(n+1)%A145342(n+1))`
-/

namespace A333776.P2442354570361068025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (Int.tmod (A145341 (n + 1)) (A145342 (n + 1))).toNat

end

end A333776.P2442354570361068025

/-! ## A333776.P16664791184598347107

`A333692(A030109(2*n+1))`
-/

namespace A333776.P16664791184598347107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333692 (A030109 (2 * n + 1)).toNat

end

end A333776.P16664791184598347107

/-! ## A333776.P2898248794497616431

`A030109(A333692(A030101(n+1+n)))`
-/

namespace A333776.P2898248794497616431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A333692 (A030101 (n + 1 + n)).toNat).toNat

end

end A333776.P2898248794497616431

/-!
# A333777: Inverse permutation to A333776.

The programs for A333777, the canonical program `A333777.P17376492726482821964` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333777 has offset 0).

The definition of A333777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333777.P17376492726482821964

`A053644(n)+a(A030109(n))` with `a(0)=0`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333777

/-- `A053644(n)+a(A030109(n))` -/
def P17376492726482821964.Spec : Prop :=
  ∀ n, P17376492726482821964.a n = A333777 n

theorem P17376492726482821964.correct : P17376492726482821964.Spec := by
  intro n
  simp only [A333777]

end A333777

/-! ## A333777.P10844626192364870780

`A333693(A333776(A333693(n)))`
-/

namespace A333777.P10844626192364870780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 (A333776 (A333693 n).toNat).toNat

end

end A333777.P10844626192364870780

namespace A333777

/-- `A333693(A333776(A333693(n)))` -/
def P10844626192364870780.Spec : Prop :=
  ∀ n, P10844626192364870780.a n = A333777 n

end A333777

/-! ## A333777.P8093398837341193758

`A030109(2*A333693(n)+1)`
-/

namespace A333777.P8093398837341193758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * A333693 n + 1).toNat

end

end A333777.P8093398837341193758

namespace A333777

/-- `A030109(2*A333693(n)+1)` -/
def P8093398837341193758.Spec : Prop :=
  ∀ n, P8093398837341193758.a n = A333777 n

end A333777

/-! ## A333777.P8932789281560462000

`A030109(xor(1, 2*A333693(n)))`
-/

namespace A333777.P8932789281560462000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (Int.xor 1 (2 * A333693 n)).toNat

end

end A333777.P8932789281560462000

namespace A333777

/-- `A030109(xor(1, 2*A333693(n)))` -/
def P8932789281560462000.Spec : Prop :=
  ∀ n, P8932789281560462000.a n = A333777 n

end A333777

/-! ## A333777.P10339074996831535369

`A030109(A333693(n)+A333693(n)+1)`
-/

namespace A333777.P10339074996831535369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A333693 n + (A333693 n + 1)).toNat

end

end A333777.P10339074996831535369

namespace A333777

/-- `A030109(A333693(n)+A333693(n)+1)` -/
def P10339074996831535369.Spec : Prop :=
  ∀ n, P10339074996831535369.a n = A333777 n

end A333777

/-!
# A333778: Fixed points of A333776.

The programs for A333778, there is no canonical definition to state claims against.
-/

/-! ## A333778.P15529573474414244093

`eq[n, A333776(n)]`
-/

namespace A333778.P15529573474414244093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333778.P15529573474414244093

/-! ## A333778.P1966011877726734555

`eq[n, A333777(n)]`
-/

namespace A333778.P1966011877726734555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333778.P1966011877726734555

/-! ## A333778.P13990094465541147477

`record[gcd(A005843(n), A333776(n))]`
-/

namespace A333778.P13990094465541147477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A333776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333778.P13990094465541147477

/-! ## A333778.P7194383854713011873

`record[gcd(A008585(n), A333777(n))]`
-/

namespace A333778.P7194383854713011873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008585 n) (A333777 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333778.P7194383854713011873

/-! ## A333778.P470950299258262240

`eq[A030109(2*n+1), A333693(n)]`
-/

namespace A333778.P470950299258262240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333778.P470950299258262240

/-! ## A333778.P11379009493668926473

`eq[A145341(n+1), A333693(A145341(n+1))]`
-/

namespace A333778.P11379009493668926473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 (A145341 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333778.P11379009493668926473

/-!
# A333779: Positive numbers m used to build entire prime set by m +/ - n without duplication or 0 if there is no such m.

The programs for A333779, there is no canonical definition to state claims against.
-/

/-! ## A333779.P17824280577915740478

`p?[A075323(n+1)-(n+1)]+n`
-/

namespace A333779.P17824280577915740478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)

end

end A333779.P17824280577915740478

/-! ## A333779.P14033038113887963993

`A075323(A004277(n))-A028310(n)`
-/

namespace A333779.P14033038113887963993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - A028310 n

end

end A333779.P14033038113887963993

/-! ## A333779.P7983294442759238743

`A075323(A028310(2*n))-A028310(n)`
-/

namespace A333779.P7983294442759238743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A028310 (2 * n)).toNat - A028310 n

end

end A333779.P7983294442759238743

/-! ## A333779.P3068750183953422448

`A075323(A004277(n))-(A000007(n)+n)`
-/

namespace A333779.P3068750183953422448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - (A000007 n + (n : ℤ))

end

end A333779.P3068750183953422448

/-! ## A333779.P4163487661443164960

`A075323(A028310(n)+n)-A028310(n)`
-/

namespace A333779.P4163487661443164960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A028310 n + (n : ℤ)).toNat - A028310 n

end

end A333779.P4163487661443164960

/-! ## A333779.P10166203613165494283

`A075323(A004277(n))-A008619(A004273(n))`
-/

namespace A333779.P10166203613165494283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - A008619 (A004273 n).toNat

end

end A333779.P10166203613165494283

/-! ## A333779.P7303751020196300989

`A075323(A004277(n))-A008619(A004275(n))`
-/

namespace A333779.P7303751020196300989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - A008619 (A004275 n).toNat

end

end A333779.P7303751020196300989

/-! ## A333779.P4481407211467911575

`A075323(A004277(n))-A065033(2*n)`
-/

namespace A333779.P4481407211467911575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - A065033 (2 * n)

end

end A333779.P4481407211467911575

/-! ## A333779.P14739571559219680912

`A075323(A004277(n))-A123108(2*n)`
-/

namespace A333779.P14739571559219680912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - A123108 (2 * n)

end

end A333779.P14739571559219680912

/-! ## A333779.P3985338610935603440

`A075323(A004277(n))-A003056(A000124(n))`
-/

namespace A333779.P3985338610935603440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - A003056 (A000124 n).toNat

end

end A333779.P3985338610935603440

/-! ## A333779.P55003280890060308

`A075323(A004277(n))-A137734(n²)`
-/

namespace A333779.P55003280890060308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075323 (A004277 n).toNat - A137734 (n ^ 2)

end

end A333779.P55003280890060308

/-!
# A333780: a(n) = g(-n) - g(n), where g corresponds to the inverse of A333773.

The programs for A333780, there is no canonical definition to state claims against.
-/

/-! ## A333780.P3686585317978328216

`A333773(A117967(n))`
-/

namespace A333780.P3686585317978328216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A117967 n).toNat

end

end A333780.P3686585317978328216

/-! ## A333780.P15882278281448813252

`A333773(A140265(2*n+1)-(n+1))`
-/

namespace A333780.P15882278281448813252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A140265 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A333780.P15882278281448813252

/-! ## A333780.P7676835898597567880

`A333773(A060374(n)+A060373(n))`
-/

namespace A333780.P7676835898597567880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A060374 n + A060373 n).toNat

end

end A333780.P7676835898597567880

/-! ## A333780.P7443780918063693594

`A333773(A117966(2*n)+A004488(n))`
-/

namespace A333780.P7443780918063693594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A117966 (2 * n) + A004488 n).toNat

end

end A333780.P7443780918063693594

/-! ## A333780.P10249153255080616575

`A338478(3*n)/3`
-/

namespace A333780.P10249153255080616575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338478 (3 * n) : ℚ) / 3

end

end A333780.P10249153255080616575

/-! ## A333780.P9956517963768575188

`round(A338478(A016777(n))/3)`
-/

namespace A333780.P9956517963768575188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338478 (A016777 n).toNat : ℚ) / 3)

end

end A333780.P9956517963768575188

/-! ## A333780.P7622011649859597445

`A333773(A140263(2*n)-n)`
-/

namespace A333780.P7622011649859597445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A140263 (2 * n) - (n : ℤ)).toNat

end

end A333780.P7622011649859597445

/-! ## A333780.P16363635984949497485

`A333773(A140263(comp[2*(n+1)]))`
-/

namespace A333780.P16363635984949497485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A140263 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A333780.P16363635984949497485

/-!
# A333781: G.f.: Sum_{k>=1} (-1)^(k + 1) * x^(k^2) / (1 - x^k).

The programs for A333781, there is no canonical definition to state claims against.
-/

/-! ## A333781.P3005351704966091235

`A348951(n+1)+A048272(n+1)`
-/

namespace A333781.P3005351704966091235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (n + 1) + A048272 (n + 1)

end

end A333781.P3005351704966091235

/-! ## A333781.P10147243495234887923

`A333809(n+1)+A258998(n+1)`
-/

namespace A333781.P10147243495234887923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333809 (n + 1) + A258998 (n + 1)

end

end A333781.P10147243495234887923

/-! ## A333781.P3852951124499745942

`∑{digits}[A303818(n+1), A054525(#)]`
-/

namespace A333781.P3852951124499745942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054525 x).sum

end

end A333781.P3852951124499745942

/-! ## A333781.P16677593455910985145

`∑{digits}[A303818(n+1), A055870(#)]`
-/

namespace A333781.P16677593455910985145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055870 x).sum

end

end A333781.P16677593455910985145

/-! ## A333781.P15777145351537059833

`∑{digits}[A303818(n+1), A131554(#)]`
-/

namespace A333781.P15777145351537059833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A131554 x).sum

end

end A333781.P15777145351537059833

/-! ## A333781.P13898559459714337037

`A348951(n+1)+Δ[A059851(n)]`
-/

namespace A333781.P13898559459714337037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (n + 1) + (f1 (n + 1) - f1 n)

end

end A333781.P13898559459714337037

/-! ## A333781.P2501409224158209386

`2*A069288(n+1)-A038548(n+1)`
-/

namespace A333781.P2501409224158209386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069288 (n + 1) - A038548 (n + 1)

end

end A333781.P2501409224158209386

/-! ## A333781.P1204373693341356412

`A333809(n+1)+A348951(n+1)+A348515(n+1)`
-/

namespace A333781.P1204373693341356412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333809 (n + 1) + (A348951 (n + 1) + A348515 (n + 1))

end

end A333781.P1204373693341356412

/-! ## A333781.P12824854216181789387

`A048272(n+1)+A258998(n+1)-A348515(n+1)`
-/

namespace A333781.P12824854216181789387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + (A258998 (n + 1) - A348515 (n + 1))

end

end A333781.P12824854216181789387

/-!
# A333782: G.f.: Sum_{k>=1} (-1)^(k + 1) * k * x^(k^2) / (1 - x^k).

The programs for A333782, there is no canonical definition to state claims against.
-/

/-! ## A333782.P13276671700772209764

`2*A069289(n+1)-A066839(n+1)`
-/

namespace A333782.P13276671700772209764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069289 (n + 1) - A066839 (n + 1)

end

end A333782.P13276671700772209764

/-! ## A333782.P6654720772001500884

`A004277(A069289(n+1))-A066839(n+1)`
-/

namespace A333782.P6654720772001500884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A069289 (n + 1)).toNat - A066839 (n + 1)

end

end A333782.P6654720772001500884

/-! ## A333782.P760474649000513485

`A005843(A069289(n+1))+A070038(n+1)-A060866(n+1)`
-/

namespace A333782.P760474649000513485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069289 (n + 1)).toNat + (A070038 (n + 1) - A060866 (n + 1))

end

end A333782.P760474649000513485

/-! ## A333782.P17528841258060908857

`A005843(A069289(n+1))+A238535(n+1)-A000203(n+1)`
-/

namespace A333782.P17528841258060908857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069289 (n + 1)).toNat + (A238535 (n + 1) - A000203 (n + 1))

end

end A333782.P17528841258060908857

/-! ## A333782.P11094954847077036123

`A005843(A069289(n+1))-(A333751(n+1)+A097974(n+1))`
-/

namespace A333782.P11094954847077036123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069289 (n + 1)).toNat - (A333751 (n + 1) + A097974 (n + 1))

end

end A333782.P11094954847077036123

/-! ## A333782.P15731868977179947071

`A069289(n+1)+A069289(n+1)-(A070038(n+1)-A079667(n+1))`
-/

namespace A333782.P15731868977179947071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069289 (n + 1) + (A069289 (n + 1) - (A070038 (n + 1) - A079667 (n + 1)))

end

end A333782.P15731868977179947071

/-! ## A333782.P1384201156735527633

`A005843(A069289(n+1))-A069292((n+1)²)`
-/

namespace A333782.P1384201156735527633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069289 (n + 1)).toNat - A069292 ((n + 1) ^ 2)

end

end A333782.P1384201156735527633

/-! ## A333782.P205026773771397952

`A333810(n+1)+A348954(n+1)+A348660(n+1)`
-/

namespace A333782.P205026773771397952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333810 (n + 1) + (A348954 (n + 1) + A348660 (n + 1))

end

end A333782.P205026773771397952

/-!
# A333783: a(n) = sigma(n) - A332993(n).

The programs for A333783, there is no canonical definition to state claims against.
-/

/-! ## A333783.P1367965598818343872

`A001065(n+1)-A006022(n+1)`
-/

namespace A333783.P1367965598818343872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A006022 (n + 1)

end

end A333783.P1367965598818343872

/-! ## A333783.P9869141103438301298

`A000203(n+1)-A332993(n+1)`
-/

namespace A333783.P9869141103438301298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A332993 (n + 1)

end

end A333783.P9869141103438301298

/-! ## A333783.P16618127477841824837

`A333784(n+1)-A333791(n+1)`
-/

namespace A333783.P16618127477841824837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333784 (n + 1) - A333791 (n + 1)

end

end A333783.P16618127477841824837

/-! ## A333783.P11073189518082962324

`Δ[A160664(n)]-A332993(n+1)`
-/

namespace A333783.P11073189518082962324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332993 (n + 1)

end

end A333783.P11073189518082962324

/-! ## A333783.P5473485270749127386

`A029837(n+1)+A163298(n+1)-A332993(n+1)`
-/

namespace A333783.P5473485270749127386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A163298 (n + 1) - A332993 (n + 1))

end

end A333783.P5473485270749127386

/-! ## A333783.P16732544198227372332

`A163297(n+1)-(A332993(n+1)+A029837(n+1))`
-/

namespace A333783.P16732544198227372332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163297 (n + 1) - (A332993 (n + 1) + A029837 (n + 1))

end

end A333783.P16732544198227372332

/-! ## A333783.P4922722165033990826

`A001065(n+1)-(A333791(n+1)+A322382(n+1))`
-/

namespace A333783.P4922722165033990826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (A333791 (n + 1) + A322382 (n + 1))

end

end A333783.P4922722165033990826

/-! ## A333783.P8247092961466017861

`A322382(n+1)+A333784(n+1)-A006022(n+1)`
-/

namespace A333783.P8247092961466017861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (n + 1) + (A333784 (n + 1) - A006022 (n + 1))

end

end A333783.P8247092961466017861

/-! ## A333783.P15081798905645204741

`A000203(n+1)-(A333791(n+1)+A332994(n+1))`
-/

namespace A333783.P15081798905645204741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A333791 (n + 1) + A332994 (n + 1))

end

end A333783.P15081798905645204741

/-! ## A333783.P10764044178415963477

`A332994(n+1)+A333784(n+1)-A332993(n+1)`
-/

namespace A333783.P10764044178415963477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (n + 1) + (A333784 (n + 1) - A332993 (n + 1))

end

end A333783.P10764044178415963477

/-! ## A333783.P9893954905591449270

`A335182(n+1)+A349659(n+1)-A332993(n+1)`
-/

namespace A333783.P9893954905591449270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335182 (n + 1) + (A349659 (n + 1) - A332993 (n + 1))

end

end A333783.P9893954905591449270

/-! ## A333783.P29149910106388778

`A000203(n+1)-A348977(n+1)*A348978(n+1)`
-/

namespace A333783.P29149910106388778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A348977 (n + 1) * A348978 (n + 1)

end

end A333783.P29149910106388778

/-! ## A333783.P198477706136473281

`A348977(n+1)*A348979(n+1)-A332993(n+1)`
-/

namespace A333783.P198477706136473281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348977 (n + 1) * A348979 (n + 1) - A332993 (n + 1)

end

end A333783.P198477706136473281

/-! ## A333783.P15641592710780623870

`(A348979(n+1)-A348978(n+1))*A348977(n+1)`
-/

namespace A333783.P15641592710780623870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348979 (n + 1) - A348978 (n + 1)) * A348977 (n + 1)

end

end A333783.P15641592710780623870

/-! ## A333783.P12352915254499268608

`A164533(n+1)/A051027(n+1)-A332993(n+1)`
-/

namespace A333783.P12352915254499268608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164533 (n + 1) : ℚ) / (A051027 (n + 1) : ℚ) - (A332993 (n + 1) : ℚ)

end

end A333783.P12352915254499268608

/-! ## A333783.P4733126290212334422

`A319699(2*(n+1))-A006022(n+1)`
-/

namespace A333783.P4733126290212334422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (2 * (n + 1)) - A006022 (n + 1)

end

end A333783.P4733126290212334422

/-! ## A333783.P15577471051933488970

`A007955(n+1)-(A332993(n+1)+A076721(n+1))`
-/

namespace A333783.P15577471051933488970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - (A332993 (n + 1) + A076721 (n + 1))

end

end A333783.P15577471051933488970

/-! ## A333783.P8809794700312018471

`A076720(n+1)-(A332993(n+1)+A007955(n+1))`
-/

namespace A333783.P8809794700312018471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1) - (A332993 (n + 1) + A007955 (n + 1))

end

end A333783.P8809794700312018471

/-! ## A333783.P4779666802225925071

`A076722(n+1)/A007955(n+1)-A332993(n+1)`
-/

namespace A333783.P4779666802225925071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) - (A332993 (n + 1) : ℚ)

end

end A333783.P4779666802225925071

/-! ## A333783.P14275861466212015020

`A000203(n+1)-A006022(2*(n+1))`
-/

namespace A333783.P14275861466212015020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A006022 (2 * (n + 1))

end

end A333783.P14275861466212015020

/-!
# A333784: a(n) = sigma(n) - A332994(n).

The programs for A333784, the canonical program `A333784.P5112711257938794451` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333784 has offset 1).

The definition of A333784 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333784.P12729044854594417557

`A333783(n+1)+A333791(n+1)`
-/

namespace A333784.P12729044854594417557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333783 (n + 1) + A333791 (n + 1)

end

end A333784.P12729044854594417557

namespace A333784

/-- `A333783(n+1)+A333791(n+1)` -/
def P12729044854594417557.Spec : Prop :=
  ∀ n, P12729044854594417557.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P6161114131298381566

`A001065(n+1)-A322382(n+1)`
-/

namespace A333784.P6161114131298381566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A322382 (n + 1)

end

end A333784.P6161114131298381566

namespace A333784

/-- `A001065(n+1)-A322382(n+1)` -/
def P6161114131298381566.Spec : Prop :=
  ∀ n, P6161114131298381566.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P5112711257938794451

`A000203(n+1)-A332994(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A333784

/-- `A000203(n+1)-A332994(n+1)` -/
def P5112711257938794451.Spec : Prop :=
  ∀ n, P5112711257938794451.a n = A333784 (n + 1)

theorem P5112711257938794451.correct : P5112711257938794451.Spec := by
  intro n
  simp only [A333784, Nat.add_sub_cancel]

end A333784

/-! ## A333784.P7940983706275462587

`Δ[A160664(n)]-A332994(n+1)`
-/

namespace A333784.P7940983706275462587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A332994 (n + 1)

end

end A333784.P7940983706275462587

namespace A333784

/-- `Δ[A160664(n)]-A332994(n+1)` -/
def P7940983706275462587.Spec : Prop :=
  ∀ n, P7940983706275462587.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P6066265026305128358

`A048050(n+1)-A339423(n+1)`
-/

namespace A333784.P6066265026305128358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - A339423 (n + 1)

end

end A333784.P6066265026305128358

namespace A333784

/-- `A048050(n+1)-A339423(n+1)` -/
def P6066265026305128358.Spec : Prop :=
  ∀ n, P6066265026305128358.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P15111845932984283277

`A074400(n+1)/2-A332994(n+1)`
-/

namespace A333784.P15111845932984283277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A332994 (n + 1) : ℚ)

end

end A333784.P15111845932984283277

namespace A333784

/-- `A074400(n+1)/2-A332994(n+1)` -/
def P15111845932984283277.Spec : Prop :=
  ∀ n, P15111845932984283277.a n = (A333784 (n + 1) : ℚ)

end A333784

/-! ## A333784.P5207590316060301490

`A000217(n)-(A322382(n+1)+A024816(n+1))`
-/

namespace A333784.P5207590316060301490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A322382 (n + 1) + A024816 (n + 1))

end

end A333784.P5207590316060301490

namespace A333784

/-- `A000217(n)-(A322382(n+1)+A024816(n+1))` -/
def P5207590316060301490.Spec : Prop :=
  ∀ n, P5207590316060301490.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P9335725074921323995

`A001065(n+1)+A333791(n+1)-A006022(n+1)`
-/

namespace A333784.P9335725074921323995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A333791 (n + 1) - A006022 (n + 1))

end

end A333784.P9335725074921323995

namespace A333784

/-- `A001065(n+1)+A333791(n+1)-A006022(n+1)` -/
def P9335725074921323995.Spec : Prop :=
  ∀ n, P9335725074921323995.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P8101195160159693904

`A006022(n+1)+A333783(n+1)-A322382(n+1)`
-/

namespace A333784.P8101195160159693904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1) + (A333783 (n + 1) - A322382 (n + 1))

end

end A333784.P8101195160159693904

namespace A333784

/-- `A006022(n+1)+A333783(n+1)-A322382(n+1)` -/
def P8101195160159693904.Spec : Prop :=
  ∀ n, P8101195160159693904.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P7242205137380352420

`A353130(n+1)-(A322382(n+1)+A057641(n+1))`
-/

namespace A333784.P7242205137380352420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353130 (n + 1) - (A322382 (n + 1) + A057641 (n + 1))

end

end A333784.P7242205137380352420

namespace A333784

/-- `A353130(n+1)-(A322382(n+1)+A057641(n+1))` -/
def P7242205137380352420.Spec : Prop :=
  ∀ n, P7242205137380352420.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P13654671866170282176

`A332993(n+1)+A333783(n+1)-A332994(n+1)`
-/

namespace A333784.P13654671866170282176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) + (A333783 (n + 1) - A332994 (n + 1))

end

end A333784.P13654671866170282176

namespace A333784

/-- `A332993(n+1)+A333783(n+1)-A332994(n+1)` -/
def P13654671866170282176.Spec : Prop :=
  ∀ n, P13654671866170282176.a n = A333784 (n + 1)

end A333784

/-! ## A333784.P15685265971065264122

`A348977(n+1)*A348979(n+1)-A332994(n+1)`
-/

namespace A333784.P15685265971065264122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348977 (n + 1) * A348979 (n + 1) - A332994 (n + 1)

end

end A333784.P15685265971065264122

namespace A333784

/-- `A348977(n+1)*A348979(n+1)-A332994(n+1)` -/
def P15685265971065264122.Spec : Prop :=
  ∀ n, P15685265971065264122.a n = A333784 (n + 1)

end A333784

/-!
# A333785: Numbers m such that the average path sum is an integer when iterating from m to 1 with nondeterministic map k -> k - k/p, where p is any prime factor of k.

The programs for A333785, there is no canonical definition to state claims against.
-/

/-! ## A333785.P18258435204498595689

`eq[1, A333003(n+1)]+1`
-/

namespace A333785.P18258435204498595689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333785.P18258435204498595689

/-! ## A333785.P7255285567133551477

`record[A000027(n+1)/A333003(n+1)]`
-/

namespace A333785.P7255285567133551477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A333003 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333785.P7255285567133551477

/-!
# A333786: a(n) is the first occurrence of n in A332809.

The programs for A333786, there is no canonical definition to state claims against.
-/

/-! ## A333786.P12128898629046506204

`A250246(record[A123108(A250072(n))])`
-/

namespace A333786.P12128898629046506204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A250072 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333786.P12128898629046506204

/-! ## A333786.P9140736806279046207

`A250250(A089633(A055645(n)+1))`
-/

namespace A333786.P9140736806279046207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A089633 (A055645 n + 1).toNat).toNat

end

end A333786.P9140736806279046207

/-! ## A333786.P7657682689772603914

`A077436(n+3)-A345943(A345943(n+1))`
-/

namespace A333786.P7657682689772603914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 3) - A345943 (A345943 (n + 1)).toNat

end

end A333786.P7657682689772603914

/-!
# A333787: Fully multiplicative with a(2) = 2 and a(p) = p-1 for odd primes p.

The programs for A333787, the canonical program `A333787.P7563771657480233851` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333787 has offset 1).

The definition of A333787 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333787.P7563771657480233851

`A003958(n+1)*A006519(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A333787

/-- `A003958(n+1)*A006519(n+1)` -/
def P7563771657480233851.Spec : Prop :=
  ∀ n, P7563771657480233851.a n = A333787 (n + 1)

theorem P7563771657480233851.correct : P7563771657480233851.Spec := by
  intro n
  simp only [A333787, Nat.add_sub_cancel]

end A333787

/-! ## A333787.P4012748673280733747

`A339905(A079707(n+1))`
-/

namespace A333787.P4012748673280733747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339905 (A079707 (n + 1)).toNat

end

end A333787.P4012748673280733747

namespace A333787

/-- `A339905(A079707(n+1))` -/
def P4012748673280733747.Spec : Prop :=
  ∀ n, P4012748673280733747.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P17831182178041425691

`A079579(n+1)/A000265(n+1)`
-/

namespace A333787.P17831182178041425691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079579 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A333787.P17831182178041425691

namespace A333787

/-- `A079579(n+1)/A000265(n+1)` -/
def P17831182178041425691.Spec : Prop :=
  ∀ n, P17831182178041425691.a n = (A333787 (n + 1) : ℚ)

end A333787

/-! ## A333787.P6653217205531840934

`gcd(A079579(n+1), A166632(n+1))`
-/

namespace A333787.P6653217205531840934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079579 (n + 1)) (A166632 (n + 1))

end

end A333787.P6653217205531840934

namespace A333787

/-- `gcd(A079579(n+1), A166632(n+1))` -/
def P6653217205531840934.Spec : Prop :=
  ∀ n, (P6653217205531840934.a n : ℤ) = A333787 (n + 1)

end A333787

/-! ## A333787.P10434881412709105524

`A349619(2*(n+1))-A349619(n+1)`
-/

namespace A333787.P10434881412709105524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349619 (2 * (n + 1)) - A349619 (n + 1)

end

end A333787.P10434881412709105524

namespace A333787

/-- `A349619(2*(n+1))-A349619(n+1)` -/
def P10434881412709105524.Spec : Prop :=
  ∀ n, P10434881412709105524.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P4959081865679816803

`A003958(n+1)/A000265(n+1)*(n+1)`
-/

namespace A333787.P4959081865679816803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A333787.P4959081865679816803

namespace A333787

/-- `A003958(n+1)/A000265(n+1)*(n+1)` -/
def P4959081865679816803.Spec : Prop :=
  ∀ n, P4959081865679816803.a n = (A333787 (n + 1) : ℚ)

end A333787

/-! ## A333787.P5514597826559594787

`∑{d}[n+1, A003966(#)*A006519((n+1)/#)]`
-/

namespace A333787.P5514597826559594787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A006519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333787.P5514597826559594787

namespace A333787

/-- `∑{d}[n+1, A003966(#)*A006519((n+1)/#)]` -/
def P5514597826559594787.Spec : Prop :=
  ∀ n, P5514597826559594787.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P13734527829450820634

`∑{d}[n+1, A003967(#)*A361984((n+1)/#)]`
-/

namespace A333787.P13734527829450820634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003967 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333787.P13734527829450820634

namespace A333787

/-- `∑{d}[n+1, A003967(#)*A361984((n+1)/#)]` -/
def P13734527829450820634.Spec : Prop :=
  ∀ n, P13734527829450820634.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P1761921728648979825

`∑{d}[n+1, A267092(#)*A349340((n+1)/#)]`
-/

namespace A333787.P1761921728648979825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267092 d * A349340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333787.P1761921728648979825

namespace A333787

/-- `∑{d}[n+1, A267092(#)*A349340((n+1)/#)]` -/
def P1761921728648979825.Spec : Prop :=
  ∀ n, P1761921728648979825.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P2080490932800244720

`∑{d}[n+1, A326937(#)*A349130((n+1)/#)]`
-/

namespace A333787.P2080490932800244720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326937 d * A349130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333787.P2080490932800244720

namespace A333787

/-- `∑{d}[n+1, A326937(#)*A349130((n+1)/#)]` -/
def P2080490932800244720.Spec : Prop :=
  ∀ n, P2080490932800244720.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P12502285106784523254

`A000079(A007814(n+1))*A003958(n+1)`
-/

namespace A333787.P12502285106784523254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A003958 (n + 1)

end

end A333787.P12502285106784523254

namespace A333787

/-- `A000079(A007814(n+1))*A003958(n+1)` -/
def P12502285106784523254.Spec : Prop :=
  ∀ n, P12502285106784523254.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P18088287941048088279

`∏{d}[n+1, A000010(A014963(#)+A014963(#))]`
-/

namespace A333787.P18088287941048088279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000010 (A014963 d + A014963 d).toNat

end

end A333787.P18088287941048088279

namespace A333787

/-- `∏{d}[n+1, A000010(A014963(#)+A014963(#))]` -/
def P18088287941048088279.Spec : Prop :=
  ∀ n, P18088287941048088279.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P4492072980065048809

`A003958(n+1)/2*A000010(A059159(n+1))`
-/

namespace A333787.P4492072980065048809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / 2 * (A000010 (A059159 (n + 1)).toNat : ℚ)

end

end A333787.P4492072980065048809

namespace A333787

/-- `A003958(n+1)/2*A000010(A059159(n+1))` -/
def P4492072980065048809.Spec : Prop :=
  ∀ n, P4492072980065048809.a n = (A333787 (n + 1) : ℚ)

end A333787

/-! ## A333787.P6998752283205232990

`2*A001316(n)*A003958(n+1)/A001316(n+1)`
-/

namespace A333787.P6998752283205232990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001316 n * A003958 (n + 1) : ℚ) / (A001316 (n + 1) : ℚ)

end

end A333787.P6998752283205232990

namespace A333787

/-- `2*A001316(n)*A003958(n+1)/A001316(n+1)` -/
def P6998752283205232990.Spec : Prop :=
  ∀ n, P6998752283205232990.a n = (A333787 (n + 1) : ℚ)

end A333787

/-! ## A333787.P5516823323334641550

`A003958(A394497(n+1))`
-/

namespace A333787.P5516823323334641550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A394497 (n + 1)).toNat

end

end A333787.P5516823323334641550

namespace A333787

/-- `A003958(A394497(n+1))` -/
def P5516823323334641550.Spec : Prop :=
  ∀ n, P5516823323334641550.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P1343229599646082646

`A003958(A133205(n+1)/A003960(n+1))`
-/

namespace A333787.P1343229599646082646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A133205 (n + 1) : ℚ) / (A003960 (n + 1) : ℚ))).toNat

end

end A333787.P1343229599646082646

namespace A333787

/-- `A003958(A133205(n+1)/A003960(n+1))` -/
def P1343229599646082646.Spec : Prop :=
  ∀ n, P1343229599646082646.a n = A333787 (n + 1)

end A333787

/-! ## A333787.P17213300473737243309

`A003958(A167338(n+1)/A003960(n+1))`
-/

namespace A333787.P17213300473737243309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A167338 (n + 1) : ℚ) / (A003960 (n + 1) : ℚ))).toNat

end

end A333787.P17213300473737243309

namespace A333787

/-- `A003958(A167338(n+1)/A003960(n+1))` -/
def P17213300473737243309.Spec : Prop :=
  ∀ n, P17213300473737243309.a n = A333787 (n + 1)

end A333787

/-!
# A333788: Semiprimes whose both factors are Fermat primes.

The programs for A333788, there is no canonical definition to state claims against.
-/

/-! ## A333788.P9438927011138822400

`A000051(A059268(n))*A000051(A137688(n))`
-/

namespace A333788.P9438927011138822400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A059268 n).toNat * A000051 (A137688 n).toNat

end

end A333788.P9438927011138822400

/-! ## A333788.P14032625642449620824

`A019434(A002024(n+1))*A019434(A002260(n+1))`
-/

namespace A333788.P14032625642449620824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019434 (A002024 (n + 1)).toNat * A019434 (A002260 (n + 1)).toNat

end

end A333788.P14032625642449620824

/-! ## A333788.P303444362123094395

`∩[A113433(n+1), A143512(n+1)]`
-/

namespace A333788.P303444362123094395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333788.P303444362123094395

/-!
# A333791: Difference of sums of two subsets of divisors of n, those obtained by repeatedly dividing with the smallest remaining prime factor (A332993) and those obtained by repeatedly dividing with the largest remaining prime factor (A332994).

The programs for A333791, there is no canonical definition to state claims against.
-/

/-! ## A333791.P18180909558228664723

`A006022(n+1)-A322382(n+1)`
-/

namespace A333791.P18180909558228664723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1) - A322382 (n + 1)

end

end A333791.P18180909558228664723

/-! ## A333791.P17141986285495569553

`A332993(n+1)-A332994(n+1)`
-/

namespace A333791.P17141986285495569553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) - A332994 (n + 1)

end

end A333791.P17141986285495569553

/-! ## A333791.P14331369168663517703

`A333784(n+1)-A333783(n+1)`
-/

namespace A333791.P14331369168663517703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333784 (n + 1) - A333783 (n + 1)

end

end A333791.P14331369168663517703

/-! ## A333791.P1663142159789629241

`A006022(n+1)+A333784(n+1)-A001065(n+1)`
-/

namespace A333791.P1663142159789629241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1) + (A333784 (n + 1) - A001065 (n + 1))

end

end A333791.P1663142159789629241

/-! ## A333791.P2472382750828755593

`A001478(n+1)+A332993(n+1)-A322382(n+1)`
-/

namespace A333791.P2472382750828755593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A332993 (n + 1) - A322382 (n + 1))

end

end A333791.P2472382750828755593

/-! ## A333791.P15481431910224080648

`A000203(n+1)-(A333783(n+1)+A332994(n+1))`
-/

namespace A333791.P15481431910224080648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A333783 (n + 1) + A332994 (n + 1))

end

end A333791.P15481431910224080648

/-! ## A333791.P13022580243882260710

`A332993(n+1)+A333784(n+1)-A000203(n+1)`
-/

namespace A333791.P13022580243882260710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) + (A333784 (n + 1) - A000203 (n + 1))

end

end A333791.P13022580243882260710

/-! ## A333791.P15286253488551740939

`A348977(n+1)*A348978(n+1)-A332994(n+1)`
-/

namespace A333791.P15286253488551740939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348977 (n + 1) * A348978 (n + 1) - A332994 (n + 1)

end

end A333791.P15286253488551740939

/-! ## A333791.P18163819018926426127

`A006022(2*(n+1))-A332994(n+1)`
-/

namespace A333791.P18163819018926426127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (2 * (n + 1)) - A332994 (n + 1)

end

end A333791.P18163819018926426127

/-! ## A333791.P4960436603819432970

`A332993(n+1)-A348987(n+1)*A348988(n+1)`
-/

namespace A333791.P4960436603819432970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) - A348987 (n + 1) * A348988 (n + 1)

end

end A333791.P4960436603819432970

/-!
# A333792: a(1) = 0, then after the first differences of A333793.

The programs for A333792, there is no canonical definition to state claims against.
-/

/-! ## A333792.P14193995967881955048

`Δ[A333793(A028310(n))]`
-/

namespace A333792.P14193995967881955048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333792.P14193995967881955048

/-! ## A333792.P1947467984156246398

`A333793(n+1)-A333793(A028310(n))`
-/

namespace A333792.P1947467984156246398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333793 (n + 1) - A333793 (A028310 n).toNat

end

end A333792.P1947467984156246398

/-! ## A333792.P17157112253130195239

`A333793(n+1)-A333793(A000007(n)+n)`
-/

namespace A333792.P17157112253130195239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333793 (n + 1) - A333793 (A000007 n + (n : ℤ)).toNat

end

end A333792.P17157112253130195239

/-! ## A333792.P1916592517493802912

`Δ[A333793(A000007(n)+n)]`
-/

namespace A333792.P1916592517493802912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333793 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333792.P1916592517493802912

/-!
# A333793: a(n) = A333794(n) - A073934(n).

The programs for A333793, there is no canonical definition to state claims against.
-/

/-! ## A333793.P11711561047129840571

`A333794(n+1)-A073934(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333793.P11711561047129840571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333794 (n + 1) - A073934 (n + 1)

end

end A333793.P11711561047129840571

/-! ## A333793.P9696362518330231020

`∑[A333792(n+1)]`
-/

namespace A333793.P9696362518330231020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333793.P9696362518330231020

/-!
# A333794: a(1) = 1, for n > 1, a(n) = n + a(n-A052126(n)).

The programs for A333794, the canonical program `A333794.P1319636771459117035` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333794 has offset 1).

The definition of A333794 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333794.P15598098343056863095

`n+1+a(A171462(n+1)-1)` with `a(0)=1`
-/

namespace A333794.P15598098343056863095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A171462 (n + 1) - 1).toNat

end

end A333794.P15598098343056863095

namespace A333794

/-- `n+1+a(A171462(n+1)-1)` -/
def P15598098343056863095.Spec : Prop :=
  ∀ n, (P15598098343056863095.a n : ℤ) = A333794 (n + 1)

end A333794

/-! ## A333794.P1319636771459117035

`n+1+a(n-A052126(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A333794

/-- `n+1+a(n-A052126(n+1))` -/
def P1319636771459117035.Spec : Prop :=
  ∀ n, (P1319636771459117035.a n : ℤ) = A333794 (n + 1)

theorem P1319636771459117035.correct : P1319636771459117035.Spec := by
  intro n
  simp only [A333794, Nat.add_sub_cancel]

end A333794

/-! ## A333794.P3739366988066877625

`A073934(n+1)+A333793(n+1)`
-/

namespace A333794.P3739366988066877625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073934 (n + 1) + A333793 (n + 1)

end

end A333794.P3739366988066877625

namespace A333794

/-- `A073934(n+1)+A333793(n+1)` -/
def P3739366988066877625.Spec : Prop :=
  ∀ n, P3739366988066877625.a n = A333794 (n + 1)

end A333794

/-! ## A333794.P11110648740693307422

`a(n-(n+1)/A006530(n+1))+n+1` with `a(0)=1`
-/

namespace A333794.P11110648740693307422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat + (n + 1)

end

end A333794.P11110648740693307422

namespace A333794

/-- `a(n-(n+1)/A006530(n+1))+n+1` -/
def P11110648740693307422.Spec : Prop :=
  ∀ n, (P11110648740693307422.a n : ℤ) = A333794 (n + 1)

end A333794

/-! ## A333794.P11931151900824290483

`A073934(n+1)+∑[A333792(n+1)]`
-/

namespace A333794.P11931151900824290483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073934 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333794.P11931151900824290483

namespace A333794

/-- `A073934(n+1)+∑[A333792(n+1)]` -/
def P11931151900824290483.Spec : Prop :=
  ∀ n, P11931151900824290483.a n = A333794 (n + 1)

end A333794

/-!
# A333797: Total number of saturated chains in the lattices L_n(2) of subspaces (ordered by inclusion) of the vector space GF(2)^n.

The programs for A333797, there is no canonical definition to state claims against.
-/

/-! ## A333797.P13040363961063419440

`A006116(n)+(2^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A333797.P13040363961063419440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006116 n + ((2 ^ n : ℤ) - 1) * a (n - 1)

end

end A333797.P13040363961063419440

/-! ## A333797.P7581871351052597277

`A006116(n)+a(n-1)*A000225(n)` with `a(0)=1`
-/

namespace A333797.P7581871351052597277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006116 n + a (n - 1) * A000225 n

end

end A333797.P7581871351052597277

/-! ## A333797.P648530741640211196

`∑[A182176(A028310(n)-1)]+(2^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A333797.P648530741640211196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182176 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 ^ n : ℤ) - 1) * a (n - 1)

end

end A333797.P648530741640211196

/-! ## A333797.P18184675213676899833

`A061034(2^n)+(2^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A333797.P18184675213676899833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061034 (2 ^ n) + ((2 ^ n : ℤ) - 1) * a (n - 1)

end

end A333797.P18184675213676899833

/-! ## A333797.P13970361611341499277

`A061034(2^n)+a(n-1)*A000225(n)` with `a(0)=1`
-/

namespace A333797.P13970361611341499277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061034 (2 ^ n) + a (n - 1) * A000225 n

end

end A333797.P13970361611341499277

