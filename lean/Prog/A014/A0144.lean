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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B001.C010
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A014400: Inverse of 391st cyclotomic polynomial.

The programs for A014400, there is no canonical definition to state claims against.
-/

/-! ## A014400.P8363387810377056590

`A014791(n)*A033999(n)`
-/

namespace A014400.P8363387810377056590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014791 n * A033999 n

end

end A014400.P8363387810377056590

/-!
# A014401: Denominators of coefficients of odd powers of x of the expansion of Bessel function J_3(x).

The programs for A014401, there is no canonical definition to state claims against.
-/

/-! ## A014401.P16640779179378627858

`A002506(n)*2*(n+3)`
-/

namespace A014401.P16640779179378627858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002506 n * (2 * (n + 3) : ℤ)

end

end A014401.P16640779179378627858

/-! ## A014401.P12564133659211810431

`2^n*n!*A000165(n+3)`
-/

namespace A014401.P12564133659211810431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A000165 (n + 3)

end

end A014401.P12564133659211810431

/-! ## A014401.P4125858194965562046

`(A020742(n)-1)*A002506(n)`
-/

namespace A014401.P4125858194965562046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020742 n - 1) * A002506 n

end

end A014401.P4125858194965562046

/-! ## A014401.P6631358960692410318

`A000165(n+3)*A000165(n)`
-/

namespace A014401.P6631358960692410318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 3) * A000165 n

end

end A014401.P6631358960692410318

/-! ## A014401.P1520850975412277597

`2^n*n!*A006882(A020739(n))`
-/

namespace A014401.P1520850975412277597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A006882 (A020739 n).toNat

end

end A014401.P1520850975412277597

/-!
# A014402: Numbers found in denominators of expansion of Airy function Ai(x).

The programs for A014402, there is no canonical definition to state claims against.
-/

/-! ## A014402.P7403923753312052099

`record[A318918(n)]/A000034(n)`
-/

namespace A014402.P7403923753312052099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000034 n : ℚ)

end

end A014402.P7403923753312052099

/-! ## A014402.P4891110514789923472

`record[A318918(n)]/(2-A059841(n))`
-/

namespace A014402.P4891110514789923472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 - A059841 n : ℚ)

end

end A014402.P4891110514789923472

/-! ## A014402.P8389471454893276467

`A203431(n+1)/A007494(n+1)`
-/

namespace A014402.P8389471454893276467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203431 (n + 1) : ℚ) / (A007494 (n + 1) : ℚ)

end

end A014402.P8389471454893276467

/-! ## A014402.P121662777975419480

`a(n-2)*A002378(A267528(n))` with `a(0)=1, a(1)=1`
-/

namespace A014402.P121662777975419480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A002378 (A267528 n).toNat

end

end A014402.P121662777975419480

/-! ## A014402.P10745089916760800321

`6*a(n-2)*∑[A110654(A257088(n))-1]` with `a(0)=1, a(1)=1`
-/

namespace A014402.P10745089916760800321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A257088 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  6 * (a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A014402.P10745089916760800321

/-!
# A014403: Numbers found in denominators of expansion of Airy function Bi(x).

The programs for A014403, there is no canonical definition to state claims against.
-/

/-! ## A014403.P14399343529993419638

`record[A318918(n)]/a(A000034(n))` with `a(0)=1, a(1)=1`
-/

namespace A014403.P14399343529993419638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318918 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / a (A000034 n).toNat

end

end A014403.P14399343529993419638

/-! ## A014403.P8533249821124436967

`record[A318918(n)]/a(2-A059841(n))` with `a(0)=1, a(1)=1`
-/

namespace A014403.P8533249821124436967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318918 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / a (2 - A059841 n).toNat

end

end A014403.P8533249821124436967

/-! ## A014403.P12757825705971805179

`A014402(n)/A037227(A348999(n))`
-/

namespace A014403.P12757825705971805179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014402 n : ℚ) / (A037227 (A348999 n).toNat : ℚ)

end

end A014403.P12757825705971805179

/-! ## A014403.P9186197522938494405

`A000027(A014402(n))/A066839(n+1)`
-/

namespace A014403.P9186197522938494405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A014402 n).toNat : ℚ) / (A066839 (n + 1) : ℚ)

end

end A014403.P9186197522938494405

/-!
# A014404: Number of ways of getting 5 of a kind, straight flush, 4 of a kind, full house, other flush, other straight, 3 of a kind, 2 pair, a pair or no pair in 5-card poker when joker is wild.

The programs for A014404, there is no canonical definition to state claims against.
-/

/-! ## A014404.P602624565855263117

`A057807(A222234(n))`
-/

namespace A014404.P602624565855263117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057807 (A222234 n).toNat

end

end A014404.P602624565855263117

/-! ## A014404.P16012111125451162770

`A057807(A131717(n+1)-1)`
-/

namespace A014404.P16012111125451162770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057807 (A131717 (n + 1) - 1).toNat

end

end A014404.P16012111125451162770

/-! ## A014404.P1775668682757162542

`A200430(A070077(n+1))+A057799(n+1)`
-/

namespace A014404.P1775668682757162542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200430 (A070077 (n + 1)).toNat + A057799 (n + 1)

end

end A014404.P1775668682757162542

/-! ## A014404.P14013645934123252730

`A057807(A056019(n))`
-/

namespace A014404.P14013645934123252730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057807 (A056019 n).toNat

end

end A014404.P14013645934123252730

/-!
# A014405: Number of arithmetic progressions of 3 or more positive integers, strictly increasing with sum n.

The programs for A014405, there is no canonical definition to state claims against.
-/

/-! ## A014405.P8744455407735066083

`A049992(n+1)-A023645(n+1)`
-/

namespace A014405.P8744455407735066083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1) - A023645 (n + 1)

end

end A014405.P8744455407735066083

/-! ## A014405.P5915329915673510456

`Δ[A014406(round(sqrt(n²+1)))]`
-/

namespace A014405.P5915329915673510456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014406 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014405.P5915329915673510456

/-! ## A014405.P6476167367545888345

`A049982(n+1)-floor(n/2)`
-/

namespace A014405.P6476167367545888345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) - ⌊(n : ℚ) / 2⌋

end

end A014405.P6476167367545888345

/-! ## A014405.P11799576536202205444

`A049980(n+1)-∑[log2(gcd(2, n))]`
-/

namespace A014405.P11799576536202205444
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049980 (n + 1) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014405.P11799576536202205444

/-! ## A014405.P1816867086113496016

`A049980(n+1)-A008619(n)`
-/

namespace A014405.P1816867086113496016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - A008619 n

end

end A014405.P1816867086113496016

/-! ## A014405.P14551426277498402099

`A049980(n+1)-(A004526(n)+1)`
-/

namespace A014405.P14551426277498402099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - (A004526 n + 1)

end

end A014405.P14551426277498402099

/-! ## A014405.P8755354982384511613

`A014406(n+1)-A014406(abs(1-n)+1)`
-/

namespace A014405.P8755354982384511613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014406 (n + 1) - A014406 (|1 - (n : ℤ)| + 1).toNat

end

end A014405.P8755354982384511613

/-! ## A014405.P5749172456708198468

`A049980(n+1)-∑[A010059(a(n-1))]` with `a(0)=1`
-/

namespace A014405.P5749172456708198468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A010059 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014405.P5749172456708198468

/-! ## A014405.P1942767285391064233

`A049980(n+1)-∑[A305935(a(n-1))]` with `a(0)=1`
-/

namespace A014405.P1942767285391064233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A305935 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014405.P1942767285391064233

/-! ## A014405.P12603098302084621394

`A049990(n+1)-A088922(n+1)`
-/

namespace A014405.P12603098302084621394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (n + 1) - A088922 (n + 1)

end

end A014405.P12603098302084621394

/-!
# A014406: Number of strictly increasing arithmetic progressions of positive integers with at least 3 terms and sum <= n.

The programs for A014406, there is no canonical definition to state claims against.
-/

/-! ## A014406.P14537822558882351474

`∑[A014405(n+1)]`
-/

namespace A014406.P14537822558882351474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014406.P14537822558882351474

/-! ## A014406.P15611682602435330048

`∑[A049982(n+1)-floor(n/2)]`
-/

namespace A014406.P15611682602435330048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014406.P15611682602435330048

/-! ## A014406.P4287986284888701457

`∑[A049982(n+1)]-A002620(n)`
-/

namespace A014406.P4287986284888701457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002620 n

end

end A014406.P4287986284888701457

/-! ## A014406.P1889738344268627792

`∑[A049980(n+1)-(A004526(n)+1)]`
-/

namespace A014406.P1889738344268627792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - (A004526 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014406.P1889738344268627792

/-! ## A014406.P3400288158227954044

`∑[A049980(n+1)-∑[A010059(a(n-1))]]` with `a(0)=1`
-/

namespace A014406.P3400288158227954044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A010059 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014406.P3400288158227954044

/-! ## A014406.P16016287962784460388

`∑[A049980(n+1)-∑[A305935(a(n-1))]]` with `a(0)=1`
-/

namespace A014406.P16016287962784460388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A305935 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014406.P16016287962784460388

/-! ## A014406.P18205033107392853880

`∑[(A049980(n+1)+A004526(n+1))%(n+1)]`
-/

namespace A014406.P18205033107392853880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049980 (n + 1) + A004526 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014406.P18205033107392853880

/-! ## A014406.P6904581322444917723

`A049981(n+1)-A087811(n+1)`
-/

namespace A014406.P6904581322444917723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) - A087811 (n + 1)

end

end A014406.P6904581322444917723

/-! ## A014406.P6058058003408979228

`A049981(n+1)-∑[A110654(n+1)]`
-/

namespace A014406.P6058058003408979228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049981 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014406.P6058058003408979228

/-! ## A014406.P13796453720041608345

`A049983(n+1)-A002620(n)`
-/

namespace A014406.P13796453720041608345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049983 (n + 1) - A002620 n

end

end A014406.P13796453720041608345

/-! ## A014406.P15469063034892430234

`A049993(n+1)-A366968(n+1)`
-/

namespace A014406.P15469063034892430234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049993 (n + 1) - A366968 (n + 1)

end

end A014406.P15469063034892430234

/-!
# A014407: Numbers k such that s(j) < s(k) for all j < k, where s = A014405.

The programs for A014407, there is no canonical definition to state claims against.
-/

/-! ## A014407.P14451917727999457844

`(3*A165412(n+1))%A261763(3*n+2)`
-/

namespace A014407.P14451917727999457844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A165412 (n + 1)) (A261763 (3 * n + 2))

end

end A014407.P14451917727999457844

/-! ## A014407.P17452222767255908480

`A010684(A029757(n))*A165412(n+1)`
-/

namespace A014407.P17452222767255908480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A029757 n).toNat * A165412 (n + 1)

end

end A014407.P17452222767255908480

/-! ## A014407.P12881005371821514811

`A010684(A029757(n))*A178859(n+1)`
-/

namespace A014407.P12881005371821514811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A029757 n).toNat * A178859 (n + 1)

end

end A014407.P12881005371821514811

/-! ## A014407.P5720924270190911151

`A010684(A178854(n))*A165412(n+1)`
-/

namespace A014407.P5720924270190911151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A178854 n).toNat * A165412 (n + 1)

end

end A014407.P5720924270190911151

/-! ## A014407.P163362821224347211

`A010684(A178854(n))*A178859(n+1)`
-/

namespace A014407.P163362821224347211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A178854 n).toNat * A178859 (n + 1)

end

end A014407.P163362821224347211

/-!
# A014408: Inverse of 399th cyclotomic polynomial.

The programs for A014408, there is no canonical definition to state claims against.
-/

/-! ## A014408.P14075929616844195442

`A014807(n)*A033999(n)`
-/

namespace A014408.P14075929616844195442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014807 n * A033999 n

end

end A014408.P14075929616844195442

/-!
# A014409: Number of inequivalent ways (mod D_4) a pair of checkers can be placed on an n X n board.

The programs for A014409, the canonical program `A014409.P7587171456424882811` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014409 has offset 1).

The definition of A014409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014409.P5507692005707952158

`floor(A279111(n+1)+(n+1)²/2)`
-/

namespace A014409.P5507692005707952158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A279111 (n + 1) : ℚ) + ((n + 1) ^ 2 : ℚ) / 2⌋

end

end A014409.P5507692005707952158

namespace A014409

/-- `floor(A279111(n+1)+(n+1)²/2)` -/
def P5507692005707952158.Spec : Prop :=
  ∀ n, P5507692005707952158.a n = A014409 (n + 1)

end A014409

/-! ## A014409.P7587171456424882811

`∑[A001859(n)]+A002620(n)²`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014409

/-- `∑[A001859(n)]+A002620(n)²` -/
def P7587171456424882811.Spec : Prop :=
  ∀ n, P7587171456424882811.a n = A014409 (n + 1)

theorem P7587171456424882811.correct : P7587171456424882811.Spec := by
  intro n
  simp only [A014409, Nat.add_sub_cancel]

end A014409

/-! ## A014409.P10552557193220198827

`A045947(n+1)+A002620(n)²`
-/

namespace A014409.P10552557193220198827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + A002620 n ^ 2

end

end A014409.P10552557193220198827

namespace A014409

/-- `A045947(n+1)+A002620(n)²` -/
def P10552557193220198827.Spec : Prop :=
  ∀ n, P10552557193220198827.a n = A014409 (n + 1)

end A014409

/-! ## A014409.P13076721062197434473

`∑[A000982(n)*A008619(n)+n]`
-/

namespace A014409.P13076721062197434473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A008619 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014409.P13076721062197434473

namespace A014409

/-- `∑[A000982(n)*A008619(n)+n]` -/
def P13076721062197434473.Spec : Prop :=
  ∀ n, P13076721062197434473.a n = A014409 (n + 1)

end A014409

/-! ## A014409.P13304576305145685527

`A307304(n+1)+A210433(n+1)`
-/

namespace A014409.P13304576305145685527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307304 (n + 1) + A210433 (n + 1)

end

end A014409.P13304576305145685527

namespace A014409

/-- `A307304(n+1)+A210433(n+1)` -/
def P13304576305145685527.Spec : Prop :=
  ∀ n, P13304576305145685527.a n = A014409 (n + 1)

end A014409

/-! ## A014409.P12193599487582662323

`A232567(n+1)+∑[n-A004526(n)]`
-/

namespace A014409.P12193599487582662323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232567 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014409.P12193599487582662323

namespace A014409

/-- `A232567(n+1)+∑[n-A004526(n)]` -/
def P12193599487582662323.Spec : Prop :=
  ∀ n, P12193599487582662323.a n = A014409 (n + 1)

end A014409

/-! ## A014409.P60526050058105327

`A232567(n+1)+∑[A004526(n+1)]`
-/

namespace A014409.P60526050058105327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232567 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014409.P60526050058105327

namespace A014409

/-- `A232567(n+1)+∑[A004526(n+1)]` -/
def P60526050058105327.Spec : Prop :=
  ∀ n, P60526050058105327.a n = A014409 (n + 1)

end A014409

/-! ## A014409.P5335802111396101991

`A045947(n+1)+∑[A002265(2*n)]²`
-/

namespace A014409.P5335802111396101991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014409.P5335802111396101991

namespace A014409

/-- `A045947(n+1)+∑[A002265(2*n)]²` -/
def P5335802111396101991.Spec : Prop :=
  ∀ n, P5335802111396101991.a n = A014409 (n + 1)

end A014409

/-! ## A014409.P6115925634679582593

`A045947(n+1)+A002265(n²)²`
-/

namespace A014409.P6115925634679582593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + A002265 (n ^ 2) ^ 2

end

end A014409.P6115925634679582593

namespace A014409

/-- `A045947(n+1)+A002265(n²)²` -/
def P6115925634679582593.Spec : Prop :=
  ∀ n, P6115925634679582593.a n = A014409 (n + 1)

end A014409

/-!
# A014410: Elements in Pascal's triangle (by row) that are not 1.

The programs for A014410, the canonical program `A014410.P12420516935091573692` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014410 has offset 2).

The definition of A014410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014410.P10174093512524642977

`C(A003057(n+2), A002260(n+1))`
-/

namespace A014410.P10174093512524642977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003057 (n + 2)).toNat (A002260 (n + 1)).toNat

end

end A014410.P10174093512524642977

namespace A014410

/-- `C(A003057(n+2), A002260(n+1))` -/
def P10174093512524642977.Spec : Prop :=
  ∀ n, (P10174093512524642977.a n : ℤ) = A014410 (n + 2)

end A014410

/-! ## A014410.P12420516935091573692

`C(A003057(n+2), A004736(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014410

/-- `C(A003057(n+2), A004736(n+1))` -/
def P12420516935091573692.Spec : Prop :=
  ∀ n, (P12420516935091573692.a n : ℤ) = A014410 (n + 2)

theorem P12420516935091573692.correct : P12420516935091573692.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel]

end A014410

/-! ## A014410.P17308991303239129690

`A014430(n)+1`
-/

namespace A014410.P17308991303239129690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + 1

end

end A014410.P17308991303239129690

namespace A014410

/-- `A014430(n)+1` -/
def P17308991303239129690.Spec : Prop :=
  ∀ n, P17308991303239129690.a n = A014410 (n + 2)

theorem P17308991303239129690.correct : P17308991303239129690.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P17308991303239129690.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A014430, A014430.P11701806938926061192.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P4485058908440829818

`A028327(n)/2`
-/

namespace A014410.P4485058908440829818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028327 n : ℚ) / 2

end

end A014410.P4485058908440829818

namespace A014410

/-- `A028327(n)/2` -/
def P4485058908440829818.Spec : Prop :=
  ∀ n, P4485058908440829818.a n = (A014410 (n + 2) : ℚ)

theorem P4485058908440829818.correct : P4485058908440829818.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P4485058908440829818.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028327, A028327.P9835590816428302231.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A014430, A014430.P11701806938926061192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P6998856143634886984

`ceil(sqrt(A065420(n)))`
-/

namespace A014410.P6998856143634886984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A065420 n : ℝ)⌉

end

end A014410.P6998856143634886984

namespace A014410

/-- `ceil(sqrt(A065420(n)))` -/
def P6998856143634886984.Spec : Prop :=
  ∀ n, P6998856143634886984.a n = A014410 (n + 2)

end A014410

/-! ## A014410.P15076328879486786450

`A074909(comp[∑[n]])`
-/

namespace A014410.P15076328879486786450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014410.P15076328879486786450

namespace A014410

/-- `A074909(comp[∑[n]])` -/
def P15076328879486786450.Spec : Prop :=
  ∀ n, P15076328879486786450.a n = A014410 (n + 2)

end A014410

/-! ## A014410.P1664309308949821582

`sqrt(A014719(n+2))`
-/

namespace A014410.P1664309308949821582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014719 (n + 2) : ℝ)

end

end A014410.P1664309308949821582

namespace A014410

/-- `sqrt(A014719(n+2))` -/
def P1664309308949821582.Spec : Prop :=
  ∀ n, P1664309308949821582.a n = (A014410 (n + 2) : ℝ)

end A014410

/-! ## A014410.P6412094024258407635

`A051597(n)+A007318(n)`
-/

namespace A014410.P6412094024258407635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + A007318 n

end

end A014410.P6412094024258407635

namespace A014410

/-- `A051597(n)+A007318(n)` -/
def P6412094024258407635.Spec : Prop :=
  ∀ n, P6412094024258407635.a n = A014410 (n + 2)

theorem P6412094024258407635.correct : P6412094024258407635.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P6412094024258407635.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A051597, A051597.P4383731425265306086.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A014430, A014430.P11701806938926061192.a, A014473, A014473.P9301799580602651200.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P4936463581267695291

`A051601(n)+A028326(n)`
-/

namespace A014410.P4936463581267695291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + A028326 n

end

end A014410.P4936463581267695291

namespace A014410

/-- `A051601(n)+A028326(n)` -/
def P4936463581267695291.Spec : Prop :=
  ∀ n, P4936463581267695291.a n = A014410 (n + 2)

theorem P4936463581267695291.correct : P4936463581267695291.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P4936463581267695291.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028326, A028326.P16610217584664895500.a, A051601, A051601.P16211897946955376091.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A007318, A007318.P302227728145965961.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A014430, A014430.P11701806938926061192.a, A028263, A028263.P3177418721069471964.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P11912461944088680954

`A135278(n)+A074909(n)`
-/

namespace A014410.P11912461944088680954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A074909 n

end

end A014410.P11912461944088680954

namespace A014410

/-- `A135278(n)+A074909(n)` -/
def P11912461944088680954.Spec : Prop :=
  ∀ n, P11912461944088680954.a n = A014410 (n + 2)

end A014410

/-! ## A014410.P11886904836587845575

`A028263(n)-A007318(n)`
-/

namespace A014410.P11886904836587845575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - A007318 n

end

end A014410.P11886904836587845575

namespace A014410

/-- `A028263(n)-A007318(n)` -/
def P11886904836587845575.Spec : Prop :=
  ∀ n, P11886904836587845575.a n = A014410 (n + 2)

theorem P11886904836587845575.correct : P11886904836587845575.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P11886904836587845575.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A028263, A028263.P3177418721069471964.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A014430, A014430.P11701806938926061192.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P10178488090790234795

`A028276(n)-A028326(n)`
-/

namespace A014410.P10178488090790234795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n - A028326 n

end

end A014410.P10178488090790234795

namespace A014410

/-- `A028276(n)-A028326(n)` -/
def P10178488090790234795.Spec : Prop :=
  ∀ n, P10178488090790234795.a n = A014410 (n + 2)

theorem P10178488090790234795.correct : P10178488090790234795.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P10178488090790234795.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028276, A028276.P15109551320821074576.a, A028326, A028326.P16610217584664895500.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A007318, A007318.P302227728145965961.a, A028263, A028263.P3177418721069471964.a, A014430, A014430.P11701806938926061192.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P6909555710625285042

`A134636(n)-A051631(n)`
-/

namespace A014410.P6909555710625285042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A051631 n

end

end A014410.P6909555710625285042

namespace A014410

/-- `A134636(n)-A051631(n)` -/
def P6909555710625285042.Spec : Prop :=
  ∀ n, P6909555710625285042.a n = A014410 (n + 2)

theorem P6909555710625285042.correct : P6909555710625285042.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P6909555710625285042.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A051631, A051631.P17531129287709021472.a, A134636, A134636.P14217444213641303487.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A028263, A028263.P3177418721069471964.a, A028314, A028314.P1408064926550668039.a, A028327, A028327.P9835590816428302231.a, A051632, A051632.P5030505018056849433.a, A007318, A007318.P302227728145965961.a, A014430, A014430.P11701806938926061192.a, A028276, A028276.P15109551320821074576.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P4273652326527815678

`A194121(n)-A194118(n)`
-/

namespace A014410.P4273652326527815678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - A194118 n

end

end A014410.P4273652326527815678

namespace A014410

/-- `A194121(n)-A194118(n)` -/
def P4273652326527815678.Spec : Prop :=
  ∀ n, P4273652326527815678.a n = A014410 (n + 2)

theorem P4273652326527815678.correct : P4273652326527815678.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P4273652326527815678.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A194118, A194118.P13941331000178065428.a, A194121, A194121.P4983122932321246475.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A104712, A104712.P8393777965278521263.a, A209518, A209518.P15211053160365626883.f2, A209518.P15211053160365626883.f1, A209518.P15211053160365626883.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A168577, A168577.P14364464542492817144.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P12152017754641522904

`A194118(n)-A222403(n)`
-/

namespace A014410.P12152017754641522904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - A222403 n

end

end A014410.P12152017754641522904

namespace A014410

/-- `A194118(n)-A222403(n)` -/
def P12152017754641522904.Spec : Prop :=
  ∀ n, P12152017754641522904.a n = A014410 (n + 2)

theorem P12152017754641522904.correct : P12152017754641522904.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P12152017754641522904.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A194118, A194118.P13941331000178065428.a, A222403, A222403.P3020155544965014607.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A028327, A028327.P9835590816428302231.a, A104712, A104712.P8393777965278521263.a, A194121, A194121.P4983122932321246475.a, A209518, A209518.P15211053160365626883.f2, A209518.P15211053160365626883.f1, A209518.P15211053160365626883.a, A014430, A014430.P11701806938926061192.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A168577, A168577.P14364464542492817144.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P10732219394983717260

`A065420(n)/A014430(n)`
-/

namespace A014410.P10732219394983717260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065420 n : ℚ) / (A014430 n : ℚ)

end

end A014410.P10732219394983717260

namespace A014410

/-- `A065420(n)/A014430(n)` -/
def P10732219394983717260.Spec : Prop :=
  ∀ n, P10732219394983717260.a n = (A014410 (n + 2) : ℚ)

end A014410

/-! ## A014410.P17406121407573685114

`A028263(n)-abs(A130595(n))`
-/

namespace A014410.P17406121407573685114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - |A130595 n|

end

end A014410.P17406121407573685114

namespace A014410

/-- `A028263(n)-abs(A130595(n))` -/
def P17406121407573685114.Spec : Prop :=
  ∀ n, P17406121407573685114.a n = A014410 (n + 2)

end A014410

/-! ## A014410.P3456619774093267722

`A074909(n+1)+A074909(n)`
-/

namespace A014410.P3456619774093267722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + A074909 n

end

end A014410.P3456619774093267722

namespace A014410

/-- `A074909(n+1)+A074909(n)` -/
def P3456619774093267722.Spec : Prop :=
  ∀ n, P3456619774093267722.a n = A014410 (n + 2)

end A014410

/-! ## A014410.P17599269372159742667

`A014719(n+2)-A065420(n)`
-/

namespace A014410.P17599269372159742667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014719 (n + 2) - A065420 n

end

end A014410.P17599269372159742667

namespace A014410

/-- `A014719(n+2)-A065420(n)` -/
def P17599269372159742667.Spec : Prop :=
  ∀ n, P17599269372159742667.a n = A014410 (n + 2)

theorem P17599269372159742667.correct : P17599269372159742667.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P17599269372159742667.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A014719, A014719.P3871794258725070210.a, A065420, A065420.P14835865265555642949.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A143418, A143418.P1053362496203516466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-! ## A014410.P2134521599361024786

`A051601(n)+2*A007318(n)`
-/

namespace A014410.P2134521599361024786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + 2 * A007318 n

end

end A014410.P2134521599361024786

namespace A014410

/-- `A051601(n)+2*A007318(n)` -/
def P2134521599361024786.Spec : Prop :=
  ∀ n, P2134521599361024786.a n = A014410 (n + 2)

theorem P2134521599361024786.correct : P2134521599361024786.Spec := by
  intro n
  simp only [A014410, Nat.add_sub_cancel, A014410.P2134521599361024786.a, A014410.P12420516935091573692.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A051601, A051601.P16211897946955376091.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A014430, A014430.P11701806938926061192.a, A028263, A028263.P3177418721069471964.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014410

/-!
# A014411: Triangular array formed from elements to right of middle of rows of Pascal's triangle that are not 1.

The programs for A014411, the canonical program `A014411.P10381451059067802495` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014411 has offset 1).

The definition of A014411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014411.P17604908765750811816

`A028331(n)/2`
-/

namespace A014411.P17604908765750811816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028331 n : ℚ) / 2

end

end A014411.P17604908765750811816

namespace A014411

/-- `A028331(n)/2` -/
def P17604908765750811816.Spec : Prop :=
  ∀ n, P17604908765750811816.a n = (A014411 (n + 1) : ℚ)

theorem P17604908765750811816.correct : P17604908765750811816.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P17604908765750811816.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A028331, A028331.P79324678744647748.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P1632951337323103191

`A014413(A049068(n+1))`
-/

namespace A014411.P1632951337323103191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A049068 (n + 1)).toNat

end

end A014411.P1632951337323103191

namespace A014411

/-- `A014413(A049068(n+1))` -/
def P1632951337323103191.Spec : Prop :=
  ∀ n, P1632951337323103191.a n = A014411 (n + 1)

end A014411

/-! ## A014411.P5306701328690690394

`A028285(n)-A028330(n)`
-/

namespace A014411.P5306701328690690394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n - A028330 n

end

end A014411.P5306701328690690394

namespace A014411

/-- `A028285(n)-A028330(n)` -/
def P5306701328690690394.Spec : Prop :=
  ∀ n, P5306701328690690394.a n = A014411 (n + 1)

theorem P5306701328690690394.correct : P5306701328690690394.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P5306701328690690394.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A028285, A028285.P5292532840332202507.a, A028330, A028330.P6625420377303343371.a, A008314, A008314.P17030209366717782596.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A007318, A007318.P302227728145965961.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P9071115759308998614

`A029633(n)-A029663(n)`
-/

namespace A014411.P9071115759308998614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029633 n - A029663 n

end

end A014411.P9071115759308998614

namespace A014411

/-- `A029633(n)-A029663(n)` -/
def P9071115759308998614.Spec : Prop :=
  ∀ n, P9071115759308998614.a n = A014411 (n + 1)

theorem P9071115759308998614.correct : P9071115759308998614.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P9071115759308998614.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A029633, A029633.P3103712161572054441.a, A029663, A029663.P14112828887232245740.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A082375, A082375.P11690082017939293058.a, A183569, A183569.P5499308566454369165.a, A000034, A000034.P10773112074177680709.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A206735, A206735.P9027577083690455181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P3730968443522417001

`A014413(A000267(n)+2+n)`
-/

namespace A014411.P3730968443522417001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A000267 n + 2 + (n : ℤ)).toNat

end

end A014411.P3730968443522417001

namespace A014411

/-- `A014413(A000267(n)+2+n)` -/
def P3730968443522417001.Spec : Prop :=
  ∀ n, P3730968443522417001.a n = A014411 (n + 1)

end A014411

/-! ## A014411.P12634690097846251722

`A028272(n)-A014413(n+1)`
-/

namespace A014411.P12634690097846251722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n - A014413 (n + 1)

end

end A014411.P12634690097846251722

namespace A014411

/-- `A028272(n)-A014413(n+1)` -/
def P12634690097846251722.Spec : Prop :=
  ∀ n, P12634690097846251722.a n = A014411 (n + 1)

theorem P12634690097846251722.correct : P12634690097846251722.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P12634690097846251722.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A007318, A007318.P302227728145965961.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A340507, A340507.P13308749696070402216.a, A000034, A000034.P10773112074177680709.a, A003056, A003056.P5318256527314048597.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P4850281077277187014

`A029615(n+1)-A029649(n)`
-/

namespace A014411.P4850281077277187014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029615 (n + 1) - A029649 n

end

end A014411.P4850281077277187014

namespace A014411

/-- `A029615(n+1)-A029649(n)` -/
def P4850281077277187014.Spec : Prop :=
  ∀ n, P4850281077277187014.a n = A014411 (n + 1)

theorem P4850281077277187014.correct : P4850281077277187014.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P4850281077277187014.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A029615, A029615.P6413097162909646570.a, A029649, A029649.P9567198299936449511.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A029663, A029663.P14112828887232245740.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A029633, A029633.P3103712161572054441.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A183569, A183569.P5499308566454369165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P16711095982681762962

`A014413(A055086(n)+3+n)`
-/

namespace A014411.P16711095982681762962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A055086 n + 3 + (n : ℤ)).toNat

end

end A014411.P16711095982681762962

namespace A014411

/-- `A014413(A055086(n)+3+n)` -/
def P16711095982681762962.Spec : Prop :=
  ∀ n, P16711095982681762962.a n = A014411 (n + 1)

end A014411

/-! ## A014411.P9019920348543407660

`2*A028272(n)-A028285(n)`
-/

namespace A014411.P9019920348543407660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028272 n - A028285 n

end

end A014411.P9019920348543407660

namespace A014411

/-- `2*A028272(n)-A028285(n)` -/
def P9019920348543407660.Spec : Prop :=
  ∀ n, P9019920348543407660.a n = A014411 (n + 1)

theorem P9019920348543407660.correct : P9019920348543407660.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P9019920348543407660.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A028272, A028272.P16658782118669179364.a, A028285, A028285.P5292532840332202507.a, A008314, A008314.P17030209366717782596.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A007318, A007318.P302227728145965961.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P14562303062259999541

`A028272(n)-A028330(n)/2`
-/

namespace A014411.P14562303062259999541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028272 n : ℚ) - (A028330 n : ℚ) / 2

end

end A014411.P14562303062259999541

namespace A014411

/-- `A028272(n)-A028330(n)/2` -/
def P14562303062259999541.Spec : Prop :=
  ∀ n, P14562303062259999541.a n = (A014411 (n + 1) : ℚ)

theorem P14562303062259999541.correct : P14562303062259999541.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P14562303062259999541.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A028272, A028272.P16658782118669179364.a, A028330, A028330.P6625420377303343371.a, A008314, A008314.P17030209366717782596.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A007318, A007318.P302227728145965961.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P10438912384143583733

`A014413(A027434(n+1)+1+n)`
-/

namespace A014411.P10438912384143583733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A027434 (n + 1) + 1 + (n : ℤ)).toNat

end

end A014411.P10438912384143583733

namespace A014411

/-- `A014413(A027434(n+1)+1+n)` -/
def P10438912384143583733.Spec : Prop :=
  ∀ n, P10438912384143583733.a n = A014411 (n + 1)

end A014411

/-! ## A014411.P7403843273693247553

`A028285(n)-2*A014413(n+1)`
-/

namespace A014411.P7403843273693247553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n - 2 * A014413 (n + 1)

end

end A014411.P7403843273693247553

namespace A014411

/-- `A028285(n)-2*A014413(n+1)` -/
def P7403843273693247553.Spec : Prop :=
  ∀ n, P7403843273693247553.a n = A014411 (n + 1)

theorem P7403843273693247553.correct : P7403843273693247553.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel, A014411.P7403843273693247553.a, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A008311, A008311.P16507071146551103518.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A007318, A007318.P302227728145965961.a, A008314, A008314.P17030209366717782596.a, A028272, A028272.P16658782118669179364.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A340507, A340507.P13308749696070402216.a, A000034, A000034.P10773112074177680709.a, A003056, A003056.P5318256527314048597.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A055086, A055086.P18168198331367643999.a, A055087, A055087.P17964067358640094815.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014411

/-! ## A014411.P4317261008695991590

`A014413(A000037(A000037(n+1)))`
-/

namespace A014411.P4317261008695991590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A000037 (A000037 (n + 1)).toNat).toNat

end

end A014411.P4317261008695991590

namespace A014411

/-- `A014413(A000037(A000037(n+1)))` -/
def P4317261008695991590.Spec : Prop :=
  ∀ n, P4317261008695991590.a n = A014411 (n + 1)

end A014411

/-! ## A014411.P13958649697870889323

`A028330(A183569(n+1))/2`
-/

namespace A014411.P13958649697870889323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028330 (A183569 (n + 1)).toNat : ℚ) / 2

end

end A014411.P13958649697870889323

namespace A014411

/-- `A028330(A183569(n+1))/2` -/
def P13958649697870889323.Spec : Prop :=
  ∀ n, P13958649697870889323.a n = (A014411 (n + 1) : ℚ)

end A014411

/-! ## A014411.P13024308067090317822

`A028330(lt[1, A028323(n)])/2`
-/

namespace A014411.P13024308067090317822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A014411.P13024308067090317822

namespace A014411

/-- `A028330(lt[1, A028323(n)])/2` -/
def P13024308067090317822.Spec : Prop :=
  ∀ n, P13024308067090317822.a n = (A014411 (n + 1) : ℚ)

end A014411

/-! ## A014411.P10066627334046334739

`A028330(lt[2, A028330(n)])/2`
-/

namespace A014411.P10066627334046334739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A014411.P10066627334046334739

namespace A014411

/-- `A028330(lt[2, A028330(n)])/2` -/
def P10066627334046334739.Spec : Prop :=
  ∀ n, P10066627334046334739.a n = (A014411 (n + 1) : ℚ)

end A014411

/-! ## A014411.P10381451059067802495

`A008311(lt[A008311(n+1), A008311(n)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014411

/-- `A008311(lt[A008311(n+1), A008311(n)])` -/
def P10381451059067802495.Spec : Prop :=
  ∀ n, P10381451059067802495.a n = A014411 (n + 1)

theorem P10381451059067802495.correct : P10381451059067802495.Spec := by
  intro n
  simp only [A014411, Nat.add_sub_cancel]

end A014411

/-! ## A014411.P14988466827552594213

`sqrt(A014720(n+1))`
-/

namespace A014411.P14988466827552594213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014720 (n + 1) : ℝ)

end

end A014411.P14988466827552594213

namespace A014411

/-- `sqrt(A014720(n+1))` -/
def P14988466827552594213.Spec : Prop :=
  ∀ n, P14988466827552594213.a n = (A014411 (n + 1) : ℝ)

end A014411

/-! ## A014411.P12421026854188322316

`A074909(lt[2*A007318(n), A074909(n)])`
-/

namespace A014411.P12421026854188322316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014411.P12421026854188322316

namespace A014411

/-- `A074909(lt[2*A007318(n), A074909(n)])` -/
def P12421026854188322316.Spec : Prop :=
  ∀ n, P12421026854188322316.a n = A014411 (n + 1)

end A014411

/-! ## A014411.P1838230410787521076

`A074909(lt[2, A074909(n)/A007318(n)])`
-/

namespace A014411.P1838230410787521076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A014411.P1838230410787521076

namespace A014411

/-- `A074909(lt[2, A074909(n)/A007318(n)])` -/
def P1838230410787521076.Spec : Prop :=
  ∀ n, P1838230410787521076.a n = A014411 (n + 1)

end A014411

/-!
# A014412: Inverse of 403rd cyclotomic polynomial.

The programs for A014412, there is no canonical definition to state claims against.
-/

/-! ## A014412.P17566282390983060675

`A014815(n)*A033999(n)`
-/

namespace A014412.P17566282390983060675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 n * A033999 n

end

end A014412.P17566282390983060675

/-!
# A014413: Triangular array formed from elements to right of middle of Pascal's triangle.

The programs for A014413, the canonical program `A014413.P14567634354021645646` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014413 has offset 1).

The definition of A014413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014413.P12833833583783490134

`A028330(n)/2`
-/

namespace A014413.P12833833583783490134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028330 n : ℚ) / 2

end

end A014413.P12833833583783490134

namespace A014413

/-- `A028330(n)/2` -/
def P12833833583783490134.Spec : Prop :=
  ∀ n, P12833833583783490134.a n = (A014413 (n + 1) : ℚ)

theorem P12833833583783490134.correct : P12833833583783490134.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P12833833583783490134.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A028330, A028330.P6625420377303343371.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P2299823075652385004

`A028285(n)-A028272(n)`
-/

namespace A014413.P2299823075652385004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n - A028272 n

end

end A014413.P2299823075652385004

namespace A014413

/-- `A028285(n)-A028272(n)` -/
def P2299823075652385004.Spec : Prop :=
  ∀ n, P2299823075652385004.a n = A014413 (n + 1)

theorem P2299823075652385004.correct : P2299823075652385004.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P2299823075652385004.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A028272, A028272.P16658782118669179364.a, A028285, A028285.P5292532840332202507.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008311, A008311.P16507071146551103518.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A008314, A008314.P17030209366717782596.a, A010054, A010054.P18347828677204923252.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P17654744020958136139

`A028324(n)-A028285(n)`
-/

namespace A014413.P17654744020958136139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028324 n - A028285 n

end

end A014413.P17654744020958136139

namespace A014413

/-- `A028324(n)-A028285(n)` -/
def P17654744020958136139.Spec : Prop :=
  ∀ n, P17654744020958136139.a n = A014413 (n + 1)

theorem P17654744020958136139.correct : P17654744020958136139.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P17654744020958136139.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A028285, A028285.P5292532840332202507.a, A028324, A028324.P3744947203801218243.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A028272, A028272.P16658782118669179364.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A008311, A008311.P16507071146551103518.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P731642313567709299

`A029614(n)-A029648(n)`
-/

namespace A014413.P731642313567709299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - A029648 n

end

end A014413.P731642313567709299

namespace A014413

/-- `A029614(n)-A029648(n)` -/
def P731642313567709299.Spec : Prop :=
  ∀ n, P731642313567709299.a n = A014413 (n + 1)

theorem P731642313567709299.correct : P731642313567709299.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P731642313567709299.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A029614, A029614.P3750468161563103685.a, A029648, A029648.P5252646046348079995.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008313, A008313.P7466062722273303324.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A029666, A029666.P12567084913895410295.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008311, A008311.P16507071146551103518.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A008314, A008314.P17030209366717782596.a, A010054, A010054.P18347828677204923252.a, A028391, A028391.P17198271841435315725.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A082375, A082375.P11690082017939293058.a, A206735, A206735.P9027577083690455181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P18098704343342450593

`A029632(n)-A029666(n)`
-/

namespace A014413.P18098704343342450593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 n - A029666 n

end

end A014413.P18098704343342450593

namespace A014413

/-- `A029632(n)-A029666(n)` -/
def P18098704343342450593.Spec : Prop :=
  ∀ n, P18098704343342450593.a n = A014413 (n + 1)

theorem P18098704343342450593.correct : P18098704343342450593.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P18098704343342450593.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A029666, A029666.P12567084913895410295.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A206735, A206735.P9027577083690455181.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A029600, A029600.P6364138794063411097.a, A061579, A061579.P7462537595056690109.a, A153861, A153861.P2940504812879242112.a, A325191, A325191.P1948114789834443761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P15029467016285901914

`A029648(n)-A034869(n)`
-/

namespace A014413.P15029467016285901914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n - A034869 n

end

end A014413.P15029467016285901914

namespace A014413

/-- `A029648(n)-A034869(n)` -/
def P15029467016285901914.Spec : Prop :=
  ∀ n, P15029467016285901914.a n = A014413 (n + 1)

end A014413

/-! ## A014413.P9226624994417109711

`A028272(n)-A014411(n+1)`
-/

namespace A014413.P9226624994417109711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n - A014411 (n + 1)

end

end A014413.P9226624994417109711

namespace A014413

/-- `A028272(n)-A014411(n+1)` -/
def P9226624994417109711.Spec : Prop :=
  ∀ n, P9226624994417109711.a n = A014413 (n + 1)

theorem P9226624994417109711.correct : P9226624994417109711.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P9226624994417109711.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028272, A028272.P16658782118669179364.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P12378563571039982066

`2*A028271(n)-A028284(n)`
-/

namespace A014413.P12378563571039982066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028271 n - A028284 n

end

end A014413.P12378563571039982066

namespace A014413

/-- `2*A028271(n)-A028284(n)` -/
def P12378563571039982066.Spec : Prop :=
  ∀ n, P12378563571039982066.a n = A014413 (n + 1)

theorem P12378563571039982066.correct : P12378563571039982066.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P12378563571039982066.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A028271, A028271.P5697614823521881732.f1, A028271.P5697614823521881732.f2, A028271.P5697614823521881732.a, A028284, A028284.P7098314447050730030.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A028262, A028262.P11072633460123417746.a, A152815, A152815.P5566439542825391343.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A004526, A004526.P10084182425416171735.a, A014473, A014473.P9301799580602651200.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A323211, A323211.P6731529718550413430.a, A010054, A010054.P18347828677204923252.a, A057944, A057944.P16851463738746886639.a, A113313, A113313.P6907104958604162947.f1, A113313.P6907104958604162947.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P2906544297645406853

`(A034869(n)+A029666(n))/2`
-/

namespace A014413.P2906544297645406853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034869 n + A029666 n : ℚ) / 2

end

end A014413.P2906544297645406853

namespace A014413

/-- `(A034869(n)+A029666(n))/2` -/
def P2906544297645406853.Spec : Prop :=
  ∀ n, P2906544297645406853.a n = (A014413 (n + 1) : ℚ)

theorem P2906544297645406853.correct : P2906544297645406853.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P2906544297645406853.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A029666, A029666.P12567084913895410295.a, A034869, A034869.P2608600676671799699.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A028330, A028330.P6625420377303343371.a, A029632, A029632.P1805722220011820677.f1, A029632.P1805722220011820677.f2, A029632.P1805722220011820677.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A029620, A029620.P6209062257735337057.f2, A029620.P6209062257735337057.f1, A029620.P6209062257735337057.a, A029621, A029621.P3765941121051379767.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A029618, A029618.P143499929436318524.a, A029655, A029655.P14912270738703485013.a, A206735, A206735.P9027577083690455181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P4136909546923816564

`(A028324(n)-A028272(n))/2`
-/

namespace A014413.P4136909546923816564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028324 n - A028272 n : ℚ) / 2

end

end A014413.P4136909546923816564

namespace A014413

/-- `(A028324(n)-A028272(n))/2` -/
def P4136909546923816564.Spec : Prop :=
  ∀ n, P4136909546923816564.a n = (A014413 (n + 1) : ℚ)

theorem P4136909546923816564.correct : P4136909546923816564.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P4136909546923816564.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A028272, A028272.P16658782118669179364.a, A028324, A028324.P3744947203801218243.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028285, A028285.P5292532840332202507.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008311, A008311.P16507071146551103518.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A008314, A008314.P17030209366717782596.a, A010054, A010054.P18347828677204923252.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P7530301524070619913

`(A029614(n)-A034869(n))/2`
-/

namespace A014413.P7530301524070619913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029614 n - A034869 n : ℚ) / 2

end

end A014413.P7530301524070619913

namespace A014413

/-- `(A029614(n)-A034869(n))/2` -/
def P7530301524070619913.Spec : Prop :=
  ∀ n, P7530301524070619913.a n = (A014413 (n + 1) : ℚ)

end A014413

/-! ## A014413.P1240584739432005717

`A046207(n+1)/A027434(n+1)`
-/

namespace A014413.P1240584739432005717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046207 (n + 1) : ℚ) / (A027434 (n + 1) : ℚ)

end

end A014413.P1240584739432005717

namespace A014413

/-- `A046207(n+1)/A027434(n+1)` -/
def P1240584739432005717.Spec : Prop :=
  ∀ n, P1240584739432005717.a n = (A014413 (n + 1) : ℚ)

end A014413

/-! ## A014413.P6302989414959072301

`(A028285(n)-A014411(n+1))/2`
-/

namespace A014413.P6302989414959072301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028285 n - A014411 (n + 1) : ℚ) / 2

end

end A014413.P6302989414959072301

namespace A014413

/-- `(A028285(n)-A014411(n+1))/2` -/
def P6302989414959072301.Spec : Prop :=
  ∀ n, P6302989414959072301.a n = (A014413 (n + 1) : ℚ)

theorem P6302989414959072301.correct : P6302989414959072301.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P6302989414959072301.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A028285, A028285.P5292532840332202507.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A028272, A028272.P16658782118669179364.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P5743924369173340674

`A034869(n)+A034869(n+1)%A034869(n)`
-/

namespace A014413.P5743924369173340674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n + Int.tmod (A034869 (n + 1)) (A034869 n)

end

end A014413.P5743924369173340674

namespace A014413

/-- `A034869(n)+A034869(n+1)%A034869(n)` -/
def P5743924369173340674.Spec : Prop :=
  ∀ n, P5743924369173340674.a n = A014413 (n + 1)

end A014413

/-! ## A014413.P16421605830733976593

`A008311(comp[∑[2*n]])`
-/

namespace A014413.P16421605830733976593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014413.P16421605830733976593

namespace A014413

/-- `A008311(comp[∑[2*n]])` -/
def P16421605830733976593.Spec : Prop :=
  ∀ n, P16421605830733976593.a n = A014413 (n + 1)

end A014413

/-! ## A014413.P17961995958919214982

`A034869(comp[∑[2*n]])`
-/

namespace A014413.P17961995958919214982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014413.P17961995958919214982

namespace A014413

/-- `A034869(comp[∑[2*n]])` -/
def P17961995958919214982.Spec : Prop :=
  ∀ n, P17961995958919214982.a n = A014413 (n + 1)

end A014413

/-! ## A014413.P9211922415985558683

`sqrt(A014721(n+1))`
-/

namespace A014413.P9211922415985558683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014721 (n + 1) : ℝ)

end

end A014413.P9211922415985558683

namespace A014413

/-- `sqrt(A014721(n+1))` -/
def P9211922415985558683.Spec : Prop :=
  ∀ n, P9211922415985558683.a n = (A014413 (n + 1) : ℝ)

end A014413

/-! ## A014413.P5113948098248688688

`A028326(eq[1, A340507(n)])/2`
-/

namespace A014413.P5113948098248688688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A014413.P5113948098248688688

namespace A014413

/-- `A028326(eq[1, A340507(n)])/2` -/
def P5113948098248688688.Spec : Prop :=
  ∀ n, P5113948098248688688.a n = (A014413 (n + 1) : ℚ)

theorem P5113948098248688688.correct : P5113948098248688688.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel, A014413.P5113948098248688688.f1, A014413.P5113948098248688688.f2, A014413.P5113948098248688688.a, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014413

/-! ## A014413.P15091523655481802005

`A178300(A091995(n+1))`
-/

namespace A014413.P15091523655481802005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (A091995 (n + 1)).toNat

end

end A014413.P15091523655481802005

namespace A014413

/-- `A178300(A091995(n+1))` -/
def P15091523655481802005.Spec : Prop :=
  ∀ n, P15091523655481802005.a n = A014413 (n + 1)

end A014413

/-! ## A014413.P14567634354021645646

`A007318(eq[1, A340507(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A014413

/-- `A007318(eq[1, A340507(n)])` -/
def P14567634354021645646.Spec : Prop :=
  ∀ n, P14567634354021645646.a n = A014413 (n + 1)

theorem P14567634354021645646.correct : P14567634354021645646.Spec := by
  intro n
  simp only [A014413, Nat.add_sub_cancel]

end A014413

/-!
# A014414: Odd elements in Pascal's triangle that are not 1.

The programs for A014414, the canonical program `A014414.P8989341581527788122` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014414 has offset 1).

The definition of A014414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014414.P8989341581527788122

`A014421(lt[1, A014421(n)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014414

/-- `A014421(lt[1, A014421(n)])` -/
def P8989341581527788122.Spec : Prop :=
  ∀ n, P8989341581527788122.a n = A014414 (n + 1)

theorem P8989341581527788122.correct : P8989341581527788122.Spec := by
  intro n
  simp only [A014414, Nat.add_sub_cancel]

end A014414

/-! ## A014414.P14137311716326990788

`sqrt(A014725(n+1))`
-/

namespace A014414.P14137311716326990788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014725 (n + 1) : ℝ)

end

end A014414.P14137311716326990788

namespace A014414

/-- `sqrt(A014725(n+1))` -/
def P14137311716326990788.Spec : Prop :=
  ∀ n, P14137311716326990788.a n = (A014414 (n + 1) : ℝ)

end A014414

/-! ## A014414.P7640511554606898633

`A014410(record[(n+1)*A014410(n+3)%2]+2)`
-/

namespace A014414.P7640511554606898633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A014410 (n + 3)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A014414.P7640511554606898633

namespace A014414

/-- `A014410(record[(n+1)*A014410(n+3)%2]+2)` -/
def P7640511554606898633.Spec : Prop :=
  ∀ n, P7640511554606898633.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P1068007170678193388

`A007318(eq[1, (A007318(n)-2)%2])`
-/

namespace A014414.P1068007170678193388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n - 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014414.P1068007170678193388

namespace A014414

/-- `A007318(eq[1, (A007318(n)-2)%2])` -/
def P1068007170678193388.Spec : Prop :=
  ∀ n, P1068007170678193388.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P18023273615946373985

`A007318(lt[1, A007318(n)*A047999(n)])`
-/

namespace A014414.P18023273615946373985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014414.P18023273615946373985

namespace A014414

/-- `A007318(lt[1, A007318(n)*A047999(n)])` -/
def P18023273615946373985.Spec : Prop :=
  ∀ n, P18023273615946373985.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P7111974927589162785

`A007318(lt[1/A007318(n), A047999(n)])`
-/

namespace A014414.P7111974927589162785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A007318 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A014414.P7111974927589162785

namespace A014414

/-- `A007318(lt[1/A007318(n), A047999(n)])` -/
def P7111974927589162785.Spec : Prop :=
  ∀ n, P7111974927589162785.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P1781122707265274033

`A007318(lt[1, A143333(n)])`
-/

namespace A014414.P1781122707265274033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014414.P1781122707265274033

namespace A014414

/-- `A007318(lt[1, A143333(n)])` -/
def P1781122707265274033.Spec : Prop :=
  ∀ n, P1781122707265274033.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P43694420631839329

`A143333(lt[1, A143333(n)])`
-/

namespace A014414.P43694420631839329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014414.P43694420631839329

namespace A014414

/-- `A143333(lt[1, A143333(n)])` -/
def P43694420631839329.Spec : Prop :=
  ∀ n, P43694420631839329.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P12622673328224490538

`A007318(eq[A035214(n), A050600(n)])`
-/

namespace A014414.P12622673328224490538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014414.P12622673328224490538

namespace A014414

/-- `A007318(eq[A035214(n), A050600(n)])` -/
def P12622673328224490538.Spec : Prop :=
  ∀ n, P12622673328224490538.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P730480474815010783

`A007318(eq[A004198(n), A103451(n)])`
-/

namespace A014414.P730480474815010783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014414.P730480474815010783

namespace A014414

/-- `A007318(eq[A004198(n), A103451(n)])` -/
def P730480474815010783.Spec : Prop :=
  ∀ n, P730480474815010783.a n = A014414 (n + 1)

end A014414

/-! ## A014414.P855613552359855718

`A007318(eq[A050600(n), A131843(n)])`
-/

namespace A014414.P855613552359855718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014414.P855613552359855718

namespace A014414

/-- `A007318(eq[A050600(n), A131843(n)])` -/
def P855613552359855718.Spec : Prop :=
  ∀ n, P855613552359855718.a n = A014414 (n + 1)

end A014414

/-!
# A014415: Inverse of 406th cyclotomic polynomial.

The programs for A014415, there is no canonical definition to state claims against.
-/

/-! ## A014415.P4880734511324361359

`A014212(n)*A033999(n)`
-/

namespace A014415.P4880734511324361359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014212 n * A033999 n

end

end A014415.P4880734511324361359

/-!
# A014416: Inverse of 407th cyclotomic polynomial.

The programs for A014416, there is no canonical definition to state claims against.
-/

/-! ## A014416.P1065641498430404619

`A014823(n)*A033999(n)`
-/

namespace A014416.P1065641498430404619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014823 n * A033999 n

end

end A014416.P1065641498430404619

/-!
# A014417: Representation of n in base of Fibonacci numbers (the Zeckendorf representation of n). Also, binary words starting with 1 not containing 11, with the word 0 added.

The programs for A014417, there is no canonical definition to state claims against.
-/

/-! ## A014417.P4049989545568288361

`record[A130310(n)/10]`
-/

namespace A014417.P4049989545568288361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130310 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014417.P4049989545568288361

/-! ## A014417.P12884559131121266957

`A007088(A003714(n-A003849(n)))+A003849(n)`
-/

namespace A014417.P12884559131121266957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003714 ((n : ℤ) - A003849 n).toNat).toNat + A003849 n

end

end A014417.P12884559131121266957

/-! ## A014417.P17584490953302341207

`A007088(eq[0, and(n, 2*n)])`
-/

namespace A014417.P17584490953302341207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014417.P17584490953302341207

/-! ## A014417.P10116442969783362025

`A007088(lt[and(n, floor(n/2)), 1])`
-/

namespace A014417.P10116442969783362025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014417.P10116442969783362025

/-! ## A014417.P1922173214510946600

`A007088(record[xor(n, floor(n/2))-n])`
-/

namespace A014417.P1922173214510946600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014417.P1922173214510946600

/-! ## A014417.P8120116330418120526

`record[C(and(n, 3*n), n)*A007088(n)]`
-/

namespace A014417.P8120116330418120526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.land n (3 * n)) n : ℤ) * A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014417.P8120116330418120526

/-! ## A014417.P4826705942098936056

`A007088(A003714(n))`
-/

namespace A014417.P4826705942098936056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003714 n).toNat

end

end A014417.P4826705942098936056

/-! ## A014417.P2129257440402701892

`A007088(A022340(n)/2)`
-/

namespace A014417.P2129257440402701892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A014417.P2129257440402701892

/-! ## A014417.P12017889810971995473

`A007088(record[n/A344180(n)])`
-/

namespace A014417.P12017889810971995473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A344180 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A014417.P12017889810971995473

/-! ## A014417.P10246676213042581069

`record[(2-A344180(n))*A007088(n)]`
-/

namespace A014417.P10246676213042581069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A344180 n) * A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014417.P10246676213042581069

/-! ## A014417.P3074646483905565251

`A007088(eq[0, A318921(n)])`
-/

namespace A014417.P3074646483905565251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014417.P3074646483905565251

/-! ## A014417.P14254041370821865201

`A007088(record[A003188(n)-n])`
-/

namespace A014417.P14254041370821865201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014417.P14254041370821865201

/-! ## A014417.P17731872073528984042

`A007088(record[A003188(2*n)/3])`
-/

namespace A014417.P17731872073528984042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003188 (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A014417.P17731872073528984042

/-! ## A014417.P5216296380502982403

`A007088(A360434(A003754(n+1)))`
-/

namespace A014417.P5216296380502982403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A360434 (A003754 (n + 1)).toNat).toNat

end

end A014417.P5216296380502982403

/-! ## A014417.P13679160140560746926

`A007088(record[A090077(n)])`
-/

namespace A014417.P13679160140560746926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014417.P13679160140560746926

/-! ## A014417.P17473195333414093624

`A007088(eq[0, A048735(n)])`
-/

namespace A014417.P17473195333414093624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014417.P17473195333414093624

/-! ## A014417.P10089720483841431365

`A007088(eq[n, A090077(n)])`
-/

namespace A014417.P10089720483841431365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014417.P10089720483841431365

/-! ## A014417.P15173955438377999551

`A340051(A295897(n+1))`
-/

namespace A014417.P15173955438377999551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340051 (A295897 (n + 1)).toNat

end

end A014417.P15173955438377999551

/-! ## A014417.P12273624968556250754

`A185544(2*record[xor(n, 2*n)/3])`
-/

namespace A014417.P12273624968556250754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A014417.P12273624968556250754

/-! ## A014417.P4784007068464044845

`A185544(A022340(n))`
-/

namespace A014417.P4784007068464044845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A022340 n).toNat

end

end A014417.P4784007068464044845

/-!
# A014418: Representation of n in base of Catalan numbers (a classic greedy version).

The programs for A014418, there is no canonical definition to state claims against.
-/

/-! ## A014418.P5005731290564739770

`A007090(A244161(n))`
-/

namespace A014418.P5005731290564739770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A244161 n).toNat

end

end A014418.P5005731290564739770

/-! ## A014418.P6042010565421982142

`A007089(A014419(n))`
-/

namespace A014418.P6042010565421982142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A014419 n).toNat

end

end A014418.P6042010565421982142

/-! ## A014418.P10447915970260550941

`A109683(A014419(n)%A014419(n+1))`
-/

namespace A014418.P10447915970260550941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109683 (Int.tmod (A014419 n) (A014419 (n + 1))).toNat

end

end A014418.P10447915970260550941

/-! ## A014418.P11034160170286297236

`A109683(A014419(n))%A175361(n²)`
-/

namespace A014418.P11034160170286297236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109683 (A014419 n).toNat) (A175361 (n ^ 2))

end

end A014418.P11034160170286297236

/-! ## A014418.P7317716817043575645

`A109683(A014419(n))+A000038(A119620(n))`
-/

namespace A014418.P7317716817043575645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109683 (A014419 n).toNat + A000038 (A119620 n).toNat

end

end A014418.P7317716817043575645

/-!
# A014419: Write n in base of Catalan numbers, then interpret as if written in base 3.

The programs for A014419, the canonical program `A014419.P11152760906125658214` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014419 has offset 0).

The definition of A014419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014419.P11152760906125658214

`eq[1, val(A270205(n+3), 9)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014419

/-- `eq[1, val(A270205(n+3), 9)]` -/
def P11152760906125658214.Spec : Prop :=
  ∀ n, (P11152760906125658214.a n : ℤ) = A014419 n

theorem P11152760906125658214.correct : P11152760906125658214.Spec := by
  intro n
  simp only [A014419]

end A014419

/-! ## A014419.P3016170160663905989

`A215090(A244161(n))`
-/

namespace A014419.P3016170160663905989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A244161 n).toNat

end

end A014419.P3016170160663905989

namespace A014419

/-- `A215090(A244161(n))` -/
def P3016170160663905989.Spec : Prop :=
  ∀ n, P3016170160663905989.a n = A014419 n

end A014419

/-! ## A014419.P2691367564276704095

`lt[A348706(A028310(n)), A348706(n+4)]`
-/

namespace A014419.P2691367564276704095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014419.P2691367564276704095

namespace A014419

/-- `lt[A348706(A028310(n)), A348706(n+4)]` -/
def P2691367564276704095.Spec : Prop :=
  ∀ n, (P2691367564276704095.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P13965832983853440027

`lt[A065361(n), A065361(A244477(n+5))]`
-/

namespace A014419.P13965832983853440027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A244477 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014419.P13965832983853440027

namespace A014419

/-- `lt[A065361(n), A065361(A244477(n+5))]` -/
def P13965832983853440027.Spec : Prop :=
  ∀ n, (P13965832983853440027.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P4702153439285400949

`lt[A051064(A138995(n+1)), A340407(n+1)]`
-/

namespace A014419.P4702153439285400949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A138995 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014419.P4702153439285400949

namespace A014419

/-- `lt[A051064(A138995(n+1)), A340407(n+1)]` -/
def P4702153439285400949.Spec : Prop :=
  ∀ n, (P4702153439285400949.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P3672625839539860969

`A032766(∪[A047246(n+1), A087444(n+1)])`
-/

namespace A014419.P3672625839539860969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A014419.P3672625839539860969

namespace A014419

/-- `A032766(∪[A047246(n+1), A087444(n+1)])` -/
def P3672625839539860969.Spec : Prop :=
  ∀ n, P3672625839539860969.a n = A014419 n

end A014419

/-! ## A014419.P4077263884261318104

`lt[A051064(A340407(n+1)+n), A340407(n+1)]`
-/

namespace A014419.P4077263884261318104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A340407 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014419.P4077263884261318104

namespace A014419

/-- `lt[A051064(A340407(n+1)+n), A340407(n+1)]` -/
def P4077263884261318104.Spec : Prop :=
  ∀ n, (P4077263884261318104.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P8811355409014208068

`lt[A109681(n)%A102370(2*(n+2)), A143579(n+2)]`
-/

namespace A014419.P8811355409014208068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109681 n) (A102370 (2 * (n + 2)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014419.P8811355409014208068

namespace A014419

/-- `lt[A109681(n)%A102370(2*(n+2)), A143579(n+2)]` -/
def P8811355409014208068.Spec : Prop :=
  ∀ n, (P8811355409014208068.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P14687681899416291867

`eq[A007093(A037455(n)), A109683(n)]`
-/

namespace A014419.P14687681899416291867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A037455 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014419.P14687681899416291867

namespace A014419

/-- `eq[A007093(A037455(n)), A109683(n)]` -/
def P14687681899416291867.Spec : Prop :=
  ∀ n, (P14687681899416291867.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P12729734290583445370

`eq[A036621(n), A036621(A109681(n))]`
-/

namespace A014419.P12729734290583445370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036621 (A109681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014419.P12729734290583445370

namespace A014419

/-- `eq[A036621(n), A036621(A109681(n))]` -/
def P12729734290583445370.Spec : Prop :=
  ∀ n, (P12729734290583445370.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P5611030913227510500

`eq[A036642(n), A036642(A109681(n))]`
-/

namespace A014419.P5611030913227510500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036642 (A109681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014419.P5611030913227510500

namespace A014419

/-- `eq[A036642(n), A036642(A109681(n))]` -/
def P5611030913227510500.Spec : Prop :=
  ∀ n, (P5611030913227510500.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P4397270360918124680

`eq[A092893(n), A092893(A109681(n))]`
-/

namespace A014419.P4397270360918124680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092893 (A109681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014419.P4397270360918124680

namespace A014419

/-- `eq[A092893(n), A092893(A109681(n))]` -/
def P4397270360918124680.Spec : Prop :=
  ∀ n, (P4397270360918124680.a n : ℤ) = A014419 n

end A014419

/-! ## A014419.P219031276712366370

`eq[A211797(A109681(n)), A211797(n)]`
-/

namespace A014419.P219031276712366370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211797 (A109681 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014419.P219031276712366370

namespace A014419

/-- `eq[A211797(A109681(n)), A211797(n)]` -/
def P219031276712366370.Spec : Prop :=
  ∀ n, (P219031276712366370.a n : ℤ) = A014419 n

end A014419

/-!
# A014420: Minimal number of Catalan numbers that sum to n.

The programs for A014420, the canonical program `A014420.P10947574684232609405` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014420 has offset 0).

The definition of A014420 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081290, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014420.P10947574684232609405

`1+a(n-A081290(n))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014420

/-- `1+a(n-A081290(n))` -/
def P10947574684232609405.Spec : Prop :=
  ∀ n, (P10947574684232609405.a n : ℤ) = A014420 n

theorem P10947574684232609405.correct : P10947574684232609405.Spec := by
  intro n
  simp only [A014420]

end A014420

/-! ## A014420.P2888342839412542484

`n-A244320(n)`
-/

namespace A014420.P2888342839412542484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A244320 n

end

end A014420.P2888342839412542484

namespace A014420

/-- `n-A244320(n)` -/
def P2888342839412542484.Spec : Prop :=
  ∀ n, P2888342839412542484.a n = A014420 n

theorem P2888342839412542484.correct : P2888342839412542484.Spec := by
  intro n
  simp only [A014420, Nat.add_sub_cancel, A014420.P2888342839412542484.a, A014420.P10947574684232609405.a, A081290, A081290.P17861651078763600075.f2, A081290.P17861651078763600075.f1, A081290.P17861651078763600075.a, A244320, A244320.P4637654026684033109.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014420

/-! ## A014420.P4475758439085657204

`∑{digits}[A014418(n), #]`
-/

namespace A014420.P4475758439085657204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A014420.P4475758439085657204

namespace A014420

/-- `∑{digits}[A014418(n), #]` -/
def P4475758439085657204.Spec : Prop :=
  ∀ n, (P4475758439085657204.a n : ℤ) = A014420 n

end A014420

/-! ## A014420.P6280570787993166705

`-(A244320(n)+A001489(n))`
-/

namespace A014420.P6280570787993166705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A244320 n + A001489 n)

end

end A014420.P6280570787993166705

namespace A014420

/-- `-(A244320(n)+A001489(n))` -/
def P6280570787993166705.Spec : Prop :=
  ∀ n, P6280570787993166705.a n = A014420 n

theorem P6280570787993166705.correct : P6280570787993166705.Spec := by
  intro n
  simp only [A014420, Nat.add_sub_cancel, A014420.P6280570787993166705.a, A014420.P10947574684232609405.a, A001489, A001489.P15233530513763566776.a, A081290, A081290.P17861651078763600075.f2, A081290.P17861651078763600075.f1, A081290.P17861651078763600075.a, A244320, A244320.P4637654026684033109.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014420

/-! ## A014420.P2086212281521202097

`A134824(n)*A244320(n)+n`
-/

namespace A014420.P2086212281521202097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n * A244320 n + (n : ℤ)

end

end A014420.P2086212281521202097

namespace A014420

/-- `A134824(n)*A244320(n)+n` -/
def P2086212281521202097.Spec : Prop :=
  ∀ n, P2086212281521202097.a n = A014420 n

end A014420

/-! ## A014420.P14015265384294280164

`A020715(n)%A020715(A244320(n))`
-/

namespace A014420.P14015265384294280164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020715 n) (A020715 (A244320 n).toNat)

end

end A014420.P14015265384294280164

namespace A014420

/-- `A020715(n)%A020715(A244320(n))` -/
def P14015265384294280164.Spec : Prop :=
  ∀ n, P14015265384294280164.a n = A014420 n

end A014420

/-! ## A014420.P7945913149813562655

`A027615(A244161(n))`
-/

namespace A014420.P7945913149813562655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A244161 n).toNat

end

end A014420.P7945913149813562655

namespace A014420

/-- `A027615(A244161(n))` -/
def P7945913149813562655.Spec : Prop :=
  ∀ n, P7945913149813562655.a n = A014420 n

end A014420

/-! ## A014420.P3383974709640702185

`A053735(A014419(n))`
-/

namespace A014420.P3383974709640702185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A014419 n).toNat

end

end A014420.P3383974709640702185

namespace A014420

/-- `A053735(A014419(n))` -/
def P3383974709640702185.Spec : Prop :=
  ∀ n, P3383974709640702185.a n = A014420 n

end A014420

/-! ## A014420.P712894094869268913

`A110654(A056239(A244318(n)²))`
-/

namespace A014420.P712894094869268913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A056239 (A244318 n ^ 2).toNat).toNat

end

end A014420.P712894094869268913

namespace A014420

/-- `A110654(A056239(A244318(n)²))` -/
def P712894094869268913.Spec : Prop :=
  ∀ n, P712894094869268913.a n = A014420 n

end A014420

/-! ## A014420.P93266292591747659

`A014418(A118759(n))%9`
-/

namespace A014420.P93266292591747659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014418 (A118759 n).toNat) 9

end

end A014420.P93266292591747659

namespace A014420

/-- `A014418(A118759(n))%9` -/
def P93266292591747659.Spec : Prop :=
  ∀ n, P93266292591747659.a n = A014420 n

end A014420

/-!
# A014421: Odd elements in Pascal's triangle.

The programs for A014421, the canonical program `A014421.P10055746152506597456` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014421 has offset 0).

The definition of A014421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014421.P6794131187831690288

`sqrt(A014726(n))`
-/

namespace A014421.P6794131187831690288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014726 n : ℝ)

end

end A014421.P6794131187831690288

namespace A014421

/-- `sqrt(A014726(n))` -/
def P6794131187831690288.Spec : Prop :=
  ∀ n, P6794131187831690288.a n = (A014421 n : ℝ)

end A014421

/-! ## A014421.P10055746152506597456

`A007318(A268231(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A014421

/-- `A007318(A268231(n+1))` -/
def P10055746152506597456.Spec : Prop :=
  ∀ n, P10055746152506597456.a n = A014421 n

theorem P10055746152506597456.correct : P10055746152506597456.Spec := by
  intro n
  simp only [A014421]

end A014421

/-! ## A014421.P10594836659442681305

`A007318(lt[0, A047999(n)])`
-/

namespace A014421.P10594836659442681305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014421.P10594836659442681305

namespace A014421

/-- `A007318(lt[0, A047999(n)])` -/
def P10594836659442681305.Spec : Prop :=
  ∀ n, P10594836659442681305.a n = A014421 n

end A014421

/-! ## A014421.P6849113609694629125

`A007318(eq[1, A047999(n)])`
-/

namespace A014421.P6849113609694629125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014421.P6849113609694629125

namespace A014421

/-- `A007318(eq[1, A047999(n)])` -/
def P6849113609694629125.Spec : Prop :=
  ∀ n, P6849113609694629125.a n = A014421 n

end A014421

/-! ## A014421.P13559773869164153267

`A007318(comp[A268232(n+1)])`
-/

namespace A014421.P13559773869164153267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268232 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014421.P13559773869164153267

namespace A014421

/-- `A007318(comp[A268232(n+1)])` -/
def P13559773869164153267.Spec : Prop :=
  ∀ n, P13559773869164153267.a n = A014421 n

end A014421

/-! ## A014421.P7218730186765210761

`A007318(lt[0, A007318(n)%2])`
-/

namespace A014421.P7218730186765210761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014421.P7218730186765210761

namespace A014421

/-- `A007318(lt[0, A007318(n)%2])` -/
def P7218730186765210761.Spec : Prop :=
  ∀ n, P7218730186765210761.a n = A014421 n

end A014421

/-! ## A014421.P1838020492662272131

`A007318(eq[1, gcd(2, A007318(n))])`
-/

namespace A014421.P1838020492662272131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014421.P1838020492662272131

namespace A014421

/-- `A007318(eq[1, gcd(2, A007318(n))])` -/
def P1838020492662272131.Spec : Prop :=
  ∀ n, P1838020492662272131.a n = A014421 n

end A014421

/-! ## A014421.P10333768001948971854

`A007318(eq[0, val(A007318(n), 2)])`
-/

namespace A014421.P10333768001948971854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014421.P10333768001948971854

namespace A014421

/-- `A007318(eq[0, val(A007318(n), 2)])` -/
def P10333768001948971854.Spec : Prop :=
  ∀ n, P10333768001948971854.a n = A014421 n

end A014421

/-! ## A014421.P2662529910934707677

`A007318(lt[val(A007318(n), 2), 1])`
-/

namespace A014421.P2662529910934707677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014421.P2662529910934707677

namespace A014421

/-- `A007318(lt[val(A007318(n), 2), 1])` -/
def P2662529910934707677.Spec : Prop :=
  ∀ n, P2662529910934707677.a n = A014421 n

end A014421

/-! ## A014421.P7034468153634478890

`A007318(eq[1, and(1, A007318(n))])`
-/

namespace A014421.P7034468153634478890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014421.P7034468153634478890

namespace A014421

/-- `A007318(eq[1, and(1, A007318(n))])` -/
def P7034468153634478890.Spec : Prop :=
  ∀ n, P7034468153634478890.a n = A014421 n

end A014421

/-! ## A014421.P10971815083006779453

`A007318(eq[1, A007318(n)²%2])`
-/

namespace A014421.P10971815083006779453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014421.P10971815083006779453

namespace A014421

/-- `A007318(eq[1, A007318(n)²%2])` -/
def P10971815083006779453.Spec : Prop :=
  ∀ n, P10971815083006779453.a n = A014421 n

end A014421

/-! ## A014421.P2890079826855318198

`A007318(eq[0, A065040(n)])`
-/

namespace A014421.P2890079826855318198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014421.P2890079826855318198

namespace A014421

/-- `A007318(eq[0, A065040(n)])` -/
def P2890079826855318198.Spec : Prop :=
  ∀ n, P2890079826855318198.a n = A014421 n

end A014421

/-! ## A014421.P13179337998874619103

`A007318(eq[0, A004198(n)])`
-/

namespace A014421.P13179337998874619103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014421.P13179337998874619103

namespace A014421

/-- `A007318(eq[0, A004198(n)])` -/
def P13179337998874619103.Spec : Prop :=
  ∀ n, P13179337998874619103.a n = A014421 n

end A014421

/-! ## A014421.P2899481758885970066

`A007318(eq[0, A219463(n)])`
-/

namespace A014421.P2899481758885970066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014421.P2899481758885970066

namespace A014421

/-- `A007318(eq[0, A219463(n)])` -/
def P2899481758885970066.Spec : Prop :=
  ∀ n, P2899481758885970066.a n = A014421 n

end A014421

/-! ## A014421.P12993814186613245667

`A007318(lt[0, A143333(n)])`
-/

namespace A014421.P12993814186613245667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014421.P12993814186613245667

namespace A014421

/-- `A007318(lt[0, A143333(n)])` -/
def P12993814186613245667.Spec : Prop :=
  ∀ n, P12993814186613245667.a n = A014421 n

end A014421

/-! ## A014421.P8963737945227042181

`A143333(lt[0, A143333(n)])`
-/

namespace A014421.P8963737945227042181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014421.P8963737945227042181

namespace A014421

/-- `A143333(lt[0, A143333(n)])` -/
def P8963737945227042181.Spec : Prop :=
  ∀ n, P8963737945227042181.a n = A014421 n

end A014421

/-! ## A014421.P6025869284077469268

`A007318(lt[A004198(n), 1])`
-/

namespace A014421.P6025869284077469268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014421.P6025869284077469268

namespace A014421

/-- `A007318(lt[A004198(n), 1])` -/
def P6025869284077469268.Spec : Prop :=
  ∀ n, P6025869284077469268.a n = A014421 n

end A014421

/-! ## A014421.P3702569839156083592

`A007318(eq[A007318(n), A143333(n)])`
-/

namespace A014421.P3702569839156083592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014421.P3702569839156083592

namespace A014421

/-- `A007318(eq[A007318(n), A143333(n)])` -/
def P3702569839156083592.Spec : Prop :=
  ∀ n, P3702569839156083592.a n = A014421 n

end A014421

/-! ## A014421.P17038872131773285621

`A007318(eq[A007318(n), A319861(n)])`
-/

namespace A014421.P17038872131773285621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014421.P17038872131773285621

namespace A014421

/-- `A007318(eq[A007318(n), A319861(n)])` -/
def P17038872131773285621.Spec : Prop :=
  ∀ n, P17038872131773285621.a n = A014421 n

end A014421

/-! ## A014421.P16598606059425440172

`A007318(eq[A050600(n)², A050600(n)])`
-/

namespace A014421.P16598606059425440172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014421.P16598606059425440172

namespace A014421

/-- `A007318(eq[A050600(n)², A050600(n)])` -/
def P16598606059425440172.Spec : Prop :=
  ∀ n, P16598606059425440172.a n = A014421 n

end A014421

/-!
# A014422: Inverse of 413th cyclotomic polynomial.

The programs for A014422, there is no canonical definition to state claims against.
-/

/-! ## A014422.P17042392399845196704

`A015270(A249025(n+1))`
-/

namespace A014422.P17042392399845196704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015270 (A249025 (n + 1)).toNat

end

end A014422.P17042392399845196704

/-!
# A014423: From table of maximal epacts e(p) and corresponding primes p, for x_1=2, x_{m+1} = (x_m)^2+1; sequence gives e(p).

The programs for A014423, there is no canonical definition to state claims against.
-/

/-! ## A014423.P4547865240089180504

`A028815(n)+A001222(A287022(n))`
-/

namespace A014423.P4547865240089180504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + A001222 (A287022 n).toNat

end

end A014423.P4547865240089180504

/-! ## A014423.P13518884388788851017

`A366570(A175105(2*n+1))+A008578(n+1)`
-/

namespace A014423.P13518884388788851017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366570 (A175105 (2 * n + 1)).toNat + A008578 (n + 1)

end

end A014423.P13518884388788851017

/-!
# A014424: From table of maximal epacts e(p) and corresponding primes p, for x_1=2, x_{m+1} = (x_m)^2+1; sequence gives p.

The programs for A014424, there is no canonical definition to state claims against.
-/

/-! ## A014424.P5506295398474233983

`p?[A318719(record[A057335(n)])]`
-/

namespace A014424.P5506295398474233983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014424.P5506295398474233983

/-! ## A014424.P6550315494093166321

`A318719(record[A057335(n+1)])`
-/

namespace A014424.P6550315494093166321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014424.P6550315494093166321

/-! ## A014424.P463852290094311663

`A318719(record[A071364(2*n+5)])`
-/

namespace A014424.P463852290094311663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014424.P463852290094311663

/-!
# A014426: From table of maximal epacts e(p) and corresponding primes p, for x_0=2, x_{m+1} = (x_m)^2-1; sequence gives p.

The programs for A014426, there is no canonical definition to state claims against.
-/

/-! ## A014426.P17216320719285363618

`p?[and(A053438(n), A324672(n))]`
-/

namespace A014426.P17216320719285363618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053438 n) (A324672 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014426.P17216320719285363618

/-! ## A014426.P6553406613817328969

`p?[A266724(and(n, A324672(n)))]`
-/

namespace A014426.P6553406613817328969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (Int.land (n : ℤ) (A324672 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014426.P6553406613817328969

/-! ## A014426.P3243990969273065376

`A053027(eq[n+1, A259200(n+3)])`
-/

namespace A014426.P3243990969273065376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259200 (n + 3 + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014426.P3243990969273065376

/-! ## A014426.P16625503210567691828

`∩[A106865(n+1), A276112(n+1)]`
-/

namespace A014426.P16625503210567691828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014426.P16625503210567691828

/-!
# A014427: Inverse of 418th cyclotomic polynomial.

The programs for A014427, there is no canonical definition to state claims against.
-/

/-! ## A014427.P2848856039855795725

`A014218(n)*A033999(n)`
-/

namespace A014427.P2848856039855795725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014218 n * A033999 n

end

end A014427.P2848856039855795725

/-!
# A014428: Even elements in Pascal's triangle.

The programs for A014428, the canonical program `A014428.P4888485289418456815` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014428 has offset 1).

The definition of A014428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014428.P10398151583823034774

`sqrt(A014727(n))`
-/

namespace A014428.P10398151583823034774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014727 n : ℝ)

end

end A014428.P10398151583823034774

namespace A014428

/-- `sqrt(A014727(n))` -/
def P10398151583823034774.Spec : Prop :=
  ∀ n, P10398151583823034774.a n = (A014428 (n + 1) : ℝ)

end A014428

/-! ## A014428.P602289615630643378

`A051434(n)-A051429(n)`
-/

namespace A014428.P602289615630643378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n - A051429 n

end

end A014428.P602289615630643378

namespace A014428

/-- `A051434(n)-A051429(n)` -/
def P602289615630643378.Spec : Prop :=
  ∀ n, P602289615630643378.a n = A014428 (n + 1)

theorem P602289615630643378.correct : P602289615630643378.Spec := by
  intro n
  simp only [A014428, Nat.add_sub_cancel, A014428.P602289615630643378.a, A014428.P4888485289418456815.a, A007318, A007318.P302227728145965961.a, A051429, A051429.P11525553807131597753.a, A051434, A051434.P18205378062709367027.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029659, A029659.P14042741699956388996.a, A080098, A080098.P7543541268193481793.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A029607, A029607.P1574991405031157313.f1, A029607.P1574991405031157313.f2, A029607.P1574991405031157313.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A010054, A010054.P18347828677204923252.a, A029605, A029605.P7080579544809329854.f1, A029605.P7080579544809329854.f2, A029605.P7080579544809329854.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014428

/-! ## A014428.P4133251789880406637

`A051456(n)-A051468(n)`
-/

namespace A014428.P4133251789880406637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n - A051468 n

end

end A014428.P4133251789880406637

namespace A014428

/-- `A051456(n)-A051468(n)` -/
def P4133251789880406637.Spec : Prop :=
  ∀ n, P4133251789880406637.a n = A014428 (n + 1)

theorem P4133251789880406637.correct : P4133251789880406637.Spec := by
  intro n
  simp only [A014428, Nat.add_sub_cancel, A014428.P4133251789880406637.a, A014428.P4888485289418456815.a, A007318, A007318.P302227728145965961.a, A051456, A051456.P8737044778690682288.a, A051468, A051468.P6533800774819959610.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A029625, A029625.P8414473659430485930.f1, A029625.P8414473659430485930.f2, A029625.P8414473659430485930.a, A080098, A080098.P7543541268193481793.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A029623, A029623.P11351172865891342749.f1, A029623.P11351172865891342749.f2, A029623.P11351172865891342749.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A010054, A010054.P18347828677204923252.a, A029618, A029618.P143499929436318524.a, A057944, A057944.P16851463738746886639.a, A290452, A290452.P1449433213042397141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014428

/-! ## A014428.P15410479531729766480

`A028326(A268232(n+1))/2`
-/

namespace A014428.P15410479531729766480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (A268232 (n + 1)).toNat : ℚ) / 2

end

end A014428.P15410479531729766480

namespace A014428

/-- `A028326(A268232(n+1))/2` -/
def P15410479531729766480.Spec : Prop :=
  ∀ n, P15410479531729766480.a n = (A014428 (n + 1) : ℚ)

theorem P15410479531729766480.correct : P15410479531729766480.Spec := by
  intro n
  simp only [A014428, Nat.add_sub_cancel, A014428.P15410479531729766480.a, A014428.P4888485289418456815.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A268232, A268232.P6386950122841436999.f1, A268232.P6386950122841436999.f2, A268232.P6386950122841436999.a, A000217, A000217.P10269402890581615239.a, A080098, A080098.P7543541268193481793.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A010054, A010054.P18347828677204923252.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014428

/-! ## A014428.P4888485289418456815

`A007318(A268232(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A014428

/-- `A007318(A268232(n+1))` -/
def P4888485289418456815.Spec : Prop :=
  ∀ n, P4888485289418456815.a n = A014428 (n + 1)

theorem P4888485289418456815.correct : P4888485289418456815.Spec := by
  intro n
  simp only [A014428, Nat.add_sub_cancel]

end A014428

/-! ## A014428.P8679398959012722843

`A007318(eq[0, A047999(n)])`
-/

namespace A014428.P8679398959012722843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014428.P8679398959012722843

namespace A014428

/-- `A007318(eq[0, A047999(n)])` -/
def P8679398959012722843.Spec : Prop :=
  ∀ n, P8679398959012722843.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P10298517234099920162

`A007318(lt[A047999(n), 1])`
-/

namespace A014428.P10298517234099920162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014428.P10298517234099920162

namespace A014428

/-- `A007318(lt[A047999(n), 1])` -/
def P10298517234099920162.Spec : Prop :=
  ∀ n, P10298517234099920162.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P5941444776041150013

`A007318(comp[A268231(n+1)])`
-/

namespace A014428.P5941444776041150013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014428.P5941444776041150013

namespace A014428

/-- `A007318(comp[A268231(n+1)])` -/
def P5941444776041150013.Spec : Prop :=
  ∀ n, P5941444776041150013.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P12819252358597858633

`A007318(eq[0, A007318(n)%2])`
-/

namespace A014428.P12819252358597858633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014428.P12819252358597858633

namespace A014428

/-- `A007318(eq[0, A007318(n)%2])` -/
def P12819252358597858633.Spec : Prop :=
  ∀ n, P12819252358597858633.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P11781785826822371237

`A007318(lt[1, gcd(2, A007318(n))])`
-/

namespace A014428.P11781785826822371237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014428.P11781785826822371237

namespace A014428

/-- `A007318(lt[1, gcd(2, A007318(n))])` -/
def P11781785826822371237.Spec : Prop :=
  ∀ n, P11781785826822371237.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P10438130636882555213

`A007318(lt[0, val(A007318(n), 2)])`
-/

namespace A014428.P10438130636882555213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014428.P10438130636882555213

namespace A014428

/-- `A007318(lt[0, val(A007318(n), 2)])` -/
def P10438130636882555213.Spec : Prop :=
  ∀ n, P10438130636882555213.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P16374843584607943608

`A007318(eq[0, and(1, A007318(n))])`
-/

namespace A014428.P16374843584607943608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014428.P16374843584607943608

namespace A014428

/-- `A007318(eq[0, and(1, A007318(n))])` -/
def P16374843584607943608.Spec : Prop :=
  ∀ n, P16374843584607943608.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P3062843668214448681

`A007318(lt[and(1, A007318(n)), 1])`
-/

namespace A014428.P3062843668214448681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014428.P3062843668214448681

namespace A014428

/-- `A007318(lt[and(1, A007318(n)), 1])` -/
def P3062843668214448681.Spec : Prop :=
  ∀ n, P3062843668214448681.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P9075899173438873471

`A007318(eq[0, A143333(n)])`
-/

namespace A014428.P9075899173438873471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014428.P9075899173438873471

namespace A014428

/-- `A007318(eq[0, A143333(n)])` -/
def P9075899173438873471.Spec : Prop :=
  ∀ n, P9075899173438873471.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P515916462368653002

`A007318(lt[0, A004198(n)])`
-/

namespace A014428.P515916462368653002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014428.P515916462368653002

namespace A014428

/-- `A007318(lt[0, A004198(n)])` -/
def P515916462368653002.Spec : Prop :=
  ∀ n, P515916462368653002.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P2505433641832804451

`A007318(eq[1, A219463(n)])`
-/

namespace A014428.P2505433641832804451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014428.P2505433641832804451

namespace A014428

/-- `A007318(eq[1, A219463(n)])` -/
def P2505433641832804451.Spec : Prop :=
  ∀ n, P2505433641832804451.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P964133679811072334

`A007318(lt[A143333(n), 1])`
-/

namespace A014428.P964133679811072334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014428.P964133679811072334

namespace A014428

/-- `A007318(lt[A143333(n), 1])` -/
def P964133679811072334.Spec : Prop :=
  ∀ n, P964133679811072334.a n = A014428 (n + 1)

end A014428

/-! ## A014428.P1986128329161833557

`A007318(lt[1, A307433(n)])`
-/

namespace A014428.P1986128329161833557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014428.P1986128329161833557

namespace A014428

/-- `A007318(lt[1, A307433(n)])` -/
def P1986128329161833557.Spec : Prop :=
  ∀ n, P1986128329161833557.a n = A014428 (n + 1)

end A014428

/-!
# A014429: Inverse of 420th cyclotomic polynomial.

The programs for A014429, there is no canonical definition to state claims against.
-/

/-! ## A014429.P10283760389989679120

`A014639(A006368(n))`
-/

namespace A014429.P10283760389989679120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014639 (A006368 n).toNat

end

end A014429.P10283760389989679120

/-!
# A014430: Subtract 1 from Pascal's triangle, read by rows.

The programs for A014430, the canonical program `A014430.P11701806938926061192` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014430 has offset 0).

The definition of A014430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014430.P1402120880421032202

`floor(sqrt(A065420(n)))`
-/

namespace A014430.P1402120880421032202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A065420 n)

end

end A014430.P1402120880421032202

namespace A014430

/-- `floor(sqrt(A065420(n)))` -/
def P1402120880421032202.Spec : Prop :=
  ∀ n, P1402120880421032202.a n = A014430 n

end A014430

/-! ## A014430.P11701806938926061192

`A014410(n+2)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014430

/-- `A014410(n+2)-1` -/
def P11701806938926061192.Spec : Prop :=
  ∀ n, P11701806938926061192.a n = A014430 n

theorem P11701806938926061192.correct : P11701806938926061192.Spec := by
  intro n
  simp only [A014430]

end A014430

/-! ## A014430.P12657582424686049812

`A028327(n)/2-1`
-/

namespace A014430.P12657582424686049812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028327 n : ℚ) / 2 - 1

end

end A014430.P12657582424686049812

namespace A014430

/-- `A028327(n)/2-1` -/
def P12657582424686049812.Spec : Prop :=
  ∀ n, P12657582424686049812.a n = (A014430 n : ℚ)

theorem P12657582424686049812.correct : P12657582424686049812.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P12657582424686049812.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A028327, A028327.P9835590816428302231.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P17861137648012751488

`A074909(comp[∑[n]])-1`
-/

namespace A014430.P17861137648012751488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A014430.P17861137648012751488

namespace A014430

/-- `A074909(comp[∑[n]])-1` -/
def P17861137648012751488.Spec : Prop :=
  ∀ n, P17861137648012751488.a n = A014430 n

end A014430

/-! ## A014430.P7879522187544141418

`sqrt(A014719(n+2))-1`
-/

namespace A014430.P7879522187544141418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014719 (n + 2) : ℝ) - 1

end

end A014430.P7879522187544141418

namespace A014430

/-- `sqrt(A014719(n+2))-1` -/
def P7879522187544141418.Spec : Prop :=
  ∀ n, P7879522187544141418.a n = (A014430 n : ℝ)

end A014430

/-! ## A014430.P8717153713856515871

`A051597(n)+A014473(n)`
-/

namespace A014430.P8717153713856515871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + A014473 n

end

end A014430.P8717153713856515871

namespace A014430

/-- `A051597(n)+A014473(n)` -/
def P8717153713856515871.Spec : Prop :=
  ∀ n, P8717153713856515871.a n = A014430 n

theorem P8717153713856515871.correct : P8717153713856515871.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P8717153713856515871.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A014473, A014473.P9301799580602651200.a, A051597, A051597.P4383731425265306086.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P896187249655705756

`A109128(n)+A051601(n)`
-/

namespace A014430.P896187249655705756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + A051601 n

end

end A014430.P896187249655705756

namespace A014430

/-- `A109128(n)+A051601(n)` -/
def P896187249655705756.Spec : Prop :=
  ∀ n, P896187249655705756.a n = A014430 n

theorem P896187249655705756.correct : P896187249655705756.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P896187249655705756.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A051601, A051601.P16211897946955376091.a, A109128, A109128.P11896187039746255515.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028276, A028276.P15109551320821074576.a, A028326, A028326.P16610217584664895500.a, A028327, A028327.P9835590816428302231.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A007318, A007318.P302227728145965961.a, A028263, A028263.P3177418721069471964.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P10159179922652926938

`A131768(n)-A214292(n)`
-/

namespace A014430.P10159179922652926938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131768 n - A214292 n

end

end A014430.P10159179922652926938

namespace A014430

/-- `A131768(n)-A214292(n)` -/
def P10159179922652926938.Spec : Prop :=
  ∀ n, P10159179922652926938.a n = A014430 n

end A014430

/-! ## A014430.P11226217649433535982

`A299146(n+1)+A003056(n)`
-/

namespace A014430.P11226217649433535982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299146 (n + 1) + A003056 n

end

end A014430.P11226217649433535982

namespace A014430

/-- `A299146(n+1)+A003056(n)` -/
def P11226217649433535982.Spec : Prop :=
  ∀ n, P11226217649433535982.a n = A014430 n

end A014430

/-! ## A014430.P10546454343848777998

`A028263(n)-(A007318(n)+1)`
-/

namespace A014430.P10546454343848777998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - (A007318 n + 1)

end

end A014430.P10546454343848777998

namespace A014430

/-- `A028263(n)-(A007318(n)+1)` -/
def P10546454343848777998.Spec : Prop :=
  ∀ n, P10546454343848777998.a n = A014430 n

theorem P10546454343848777998.correct : P10546454343848777998.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P10546454343848777998.a, A014430.P11701806938926061192.a, A007318, A007318.P302227728145965961.a, A014410, A014410.P12420516935091573692.a, A028263, A028263.P3177418721069471964.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P2879656083093844325

`A028276(n)-(A028326(n)+1)`
-/

namespace A014430.P2879656083093844325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n - (A028326 n + 1)

end

end A014430.P2879656083093844325

namespace A014430

/-- `A028276(n)-(A028326(n)+1)` -/
def P2879656083093844325.Spec : Prop :=
  ∀ n, P2879656083093844325.a n = A014430 n

theorem P2879656083093844325.correct : P2879656083093844325.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P2879656083093844325.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A028276, A028276.P15109551320821074576.a, A028326, A028326.P16610217584664895500.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A028263, A028263.P3177418721069471964.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P5764982353624252191

`A007318(n)+A051597(n)-1`
-/

namespace A014430.P5764982353624252191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A051597 n - 1)

end

end A014430.P5764982353624252191

namespace A014430

/-- `A007318(n)+A051597(n)-1` -/
def P5764982353624252191.Spec : Prop :=
  ∀ n, P5764982353624252191.a n = A014430 n

theorem P5764982353624252191.correct : P5764982353624252191.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P5764982353624252191.a, A014430.P11701806938926061192.a, A007318, A007318.P302227728145965961.a, A014410, A014410.P12420516935091573692.a, A051597, A051597.P4383731425265306086.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A014473, A014473.P9301799580602651200.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P12710999018155781552

`A028326(n)+A051601(n)-1`
-/

namespace A014430.P12710999018155781552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A051601 n - 1)

end

end A014430.P12710999018155781552

namespace A014430

/-- `A028326(n)+A051601(n)-1` -/
def P12710999018155781552.Spec : Prop :=
  ∀ n, P12710999018155781552.a n = A014430 n

theorem P12710999018155781552.correct : P12710999018155781552.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P12710999018155781552.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A028326, A028326.P16610217584664895500.a, A051601, A051601.P16211897946955376091.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A007318, A007318.P302227728145965961.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A028263, A028263.P3177418721069471964.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P7098548853166074125

`A134636(n)-(A051631(n)+1)`
-/

namespace A014430.P7098548853166074125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - (A051631 n + 1)

end

end A014430.P7098548853166074125

namespace A014430

/-- `A134636(n)-(A051631(n)+1)` -/
def P7098548853166074125.Spec : Prop :=
  ∀ n, P7098548853166074125.a n = A014430 n

theorem P7098548853166074125.correct : P7098548853166074125.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P7098548853166074125.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A051631, A051631.P17531129287709021472.a, A134636, A134636.P14217444213641303487.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028263, A028263.P3177418721069471964.a, A028314, A028314.P1408064926550668039.a, A028327, A028327.P9835590816428302231.a, A051632, A051632.P5030505018056849433.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A007318, A007318.P302227728145965961.a, A028276, A028276.P15109551320821074576.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P15151277189841079660

`A194121(n)-(A194118(n)+1)`
-/

namespace A014430.P15151277189841079660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - (A194118 n + 1)

end

end A014430.P15151277189841079660

namespace A014430

/-- `A194121(n)-(A194118(n)+1)` -/
def P15151277189841079660.Spec : Prop :=
  ∀ n, P15151277189841079660.a n = A014430 n

theorem P15151277189841079660.correct : P15151277189841079660.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P15151277189841079660.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A194118, A194118.P13941331000178065428.a, A194121, A194121.P4983122932321246475.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A104712, A104712.P8393777965278521263.a, A209518, A209518.P15211053160365626883.f2, A209518.P15211053160365626883.f1, A209518.P15211053160365626883.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A168577, A168577.P14364464542492817144.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P13930246425890166943

`A194118(n)-(A222403(n)+1)`
-/

namespace A014430.P13930246425890166943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - (A222403 n + 1)

end

end A014430.P13930246425890166943

namespace A014430

/-- `A194118(n)-(A222403(n)+1)` -/
def P13930246425890166943.Spec : Prop :=
  ∀ n, P13930246425890166943.a n = A014430 n

theorem P13930246425890166943.correct : P13930246425890166943.Spec := by
  intro n
  simp only [A014430, Nat.add_sub_cancel, A014430.P13930246425890166943.a, A014430.P11701806938926061192.a, A014410, A014410.P12420516935091573692.a, A194118, A194118.P13941331000178065428.a, A222403, A222403.P3020155544965014607.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A028327, A028327.P9835590816428302231.a, A104712, A104712.P8393777965278521263.a, A194121, A194121.P4983122932321246475.a, A209518, A209518.P15211053160365626883.f2, A209518.P15211053160365626883.f1, A209518.P15211053160365626883.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A168577, A168577.P14364464542492817144.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014430

/-! ## A014430.P17188309211076424661

`A065420(n)/A014410(n+2)`
-/

namespace A014430.P17188309211076424661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065420 n : ℚ) / (A014410 (n + 2) : ℚ)

end

end A014430.P17188309211076424661

namespace A014430

/-- `A065420(n)/A014410(n+2)` -/
def P17188309211076424661.Spec : Prop :=
  ∀ n, P17188309211076424661.a n = (A014430 n : ℚ)

end A014430

/-! ## A014430.P16544049874646491610

`A028263(n)-(abs(A130595(n))+1)`
-/

namespace A014430.P16544049874646491610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - (|A130595 n| + 1)

end

end A014430.P16544049874646491610

namespace A014430

/-- `A028263(n)-(abs(A130595(n))+1)` -/
def P16544049874646491610.Spec : Prop :=
  ∀ n, P16544049874646491610.a n = A014430 n

end A014430

/-! ## A014430.P98976349913841252

`(A118963(n+1)-A007318(n))/A007318(n)`
-/

namespace A014430.P98976349913841252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118963 (n + 1) - A007318 n : ℚ) / (A007318 n : ℚ)

end

end A014430.P98976349913841252

namespace A014430

/-- `(A118963(n+1)-A007318(n))/A007318(n)` -/
def P98976349913841252.Spec : Prop :=
  ∀ n, P98976349913841252.a n = (A014430 n : ℚ)

end A014430

/-! ## A014430.P16960815601010792596

`A007318(lt[1, A007318(n)])-1`
-/

namespace A014430.P16960815601010792596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A014430.P16960815601010792596

namespace A014430

/-- `A007318(lt[1, A007318(n)])-1` -/
def P16960815601010792596.Spec : Prop :=
  ∀ n, P16960815601010792596.a n = A014430 n

end A014430

/-!
# A014431: a(1) = 1, a(2) = 2, a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-2)*a(2) for n >= 3.

The programs for A014431, there is no canonical definition to state claims against.
-/

/-! ## A014431.P17343935810068114573

`A036453(n+1)*A306684(A027379(n))`
-/

namespace A014431.P17343935810068114573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A306684 (A027379 n).toNat

end

end A014431.P17343935810068114573

/-! ## A014431.P403652108099611320

`A036453(n+1)*A306684(A055998(n))`
-/

namespace A014431.P403652108099611320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A306684 (A055998 n).toNat

end

end A014431.P403652108099611320

/-! ## A014431.P14419530099601899193

`(and(1, A228233(n+1))+1)*A306684(A027379(n))`
-/

namespace A014431.P14419530099601899193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A228233 (n + 1)) + 1) * A306684 (A027379 n).toNat

end

end A014431.P14419530099601899193

/-! ## A014431.P163519015899538584

`A084600(n²+1+n)/A028310(n)`
-/

namespace A014431.P163519015899538584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084600 (n ^ 2 + 1 + n) : ℚ) / (A028310 n : ℚ)

end

end A014431.P163519015899538584

/-!
# A014432: a(n) = Sum_{i=1..n-1} a(i)*a(n-1-i), with a(0) = 1, a(1) = 3.

The programs for A014432, the canonical program `A014432.P9142585396779688428` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014432 has offset 0).

The definition of A014432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014432.P9142585396779688428

`3*A025237((n-1)%(a(n-1)+1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014432

/-- `3*A025237((n-1)%(a(n-1)+1))` -/
def P9142585396779688428.Spec : Prop :=
  ∀ n, P9142585396779688428.a n = A014432 n

theorem P9142585396779688428.correct : P9142585396779688428.Spec := by
  intro n
  simp only [A014432]

end A014432

/-! ## A014432.P12351591983285720610

`A323649(A049868(n))`
-/

namespace A014432.P12351591983285720610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323649 (A049868 n).toNat

end

end A014432.P12351591983285720610

namespace A014432

/-- `A323649(A049868(n))` -/
def P12351591983285720610.Spec : Prop :=
  ∀ n, P12351591983285720610.a n = A014432 n

end A014432

/-! ## A014432.P1235885276849896347

`A323649(A001045(n)+A000048(n))`
-/

namespace A014432.P1235885276849896347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323649 (A001045 n + A000048 n).toNat

end

end A014432.P1235885276849896347

namespace A014432

/-- `A323649(A001045(n)+A000048(n))` -/
def P1235885276849896347.Spec : Prop :=
  ∀ n, P1235885276849896347.a n = A014432 n

end A014432

/-!
# A014433: a(n) = Sum_{i=0..n-1} a(i)*a(n-i), with a(0) = 1 and a(1) = 4.

The programs for A014433, there is no canonical definition to state claims against.
-/

/-! ## A014433.P11312823212815623758

`A084604(∑[A028310(2*n)])/A028310(n)`
-/

namespace A014433.P11312823212815623758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A028310 n : ℚ)

end

end A014433.P11312823212815623758

/-! ## A014433.P10544345186893520867

`A151896(A202668(n))`
-/

namespace A014433.P10544345186893520867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151896 (A202668 n).toNat

end

end A014433.P10544345186893520867

/-!
# A014435: a(n) = Sum_{i=0..n-1} a(i)*a(n-i) with a(0)=1, a(1)=6.

The programs for A014435, there is no canonical definition to state claims against.
-/

/-! ## A014435.P3857085291140774576

`A008458(A241904(n+1)-A158416(n))`
-/

namespace A014435.P3857085291140774576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A241904 (n + 1) - A158416 n).toNat

end

end A014435.P3857085291140774576

/-!
# A014436: Inverse of 427th cyclotomic polynomial.

The programs for A014436, there is no canonical definition to state claims against.
-/

/-! ## A014436.P10723570040135823290

`A014863(n)*A033999(n)`
-/

namespace A014436.P10723570040135823290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014863 n * A033999 n

end

end A014436.P10723570040135823290

/-!
# A014437: Odd Fibonacci numbers.

The programs for A014437, the canonical program `A014437.P3348506842956370509` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014437 has offset 0).

The definition of A014437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014437.P3348506842956370509

`4*a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014437

/-- `4*a(n-2)+a(n-4)` -/
def P3348506842956370509.Spec : Prop :=
  ∀ n, (P3348506842956370509.a n : ℤ) = A014437 n

theorem P3348506842956370509.correct : P3348506842956370509.Spec := by
  intro n
  simp only [A014437]

end A014437

/-! ## A014437.P2939500986667865097

`ogf((1+x-x^2+x^3)/(1-4x^2-x^4))`
-/

namespace A014437.P2939500986667865097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, 0, -4, 0, -1] n

end

end A014437.P2939500986667865097

namespace A014437

/-- `ogf((1+x-x^2+x^3)/(1-4x^2-x^4))` -/
def P2939500986667865097.Spec : Prop :=
  ∀ n, P2939500986667865097.a n = A014437 n

end A014437

/-! ## A014437.P16284800182626849336

`A000045(comp[3*n])`
-/

namespace A014437.P16284800182626849336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014437.P16284800182626849336

namespace A014437

/-- `A000045(comp[3*n])` -/
def P16284800182626849336.Spec : Prop :=
  ∀ n, P16284800182626849336.a n = A014437 n

end A014437

/-! ## A014437.P8935156318320603404

`A167808(comp[3*n])`
-/

namespace A014437.P8935156318320603404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014437.P8935156318320603404

namespace A014437

/-- `A167808(comp[3*n])` -/
def P8935156318320603404.Spec : Prop :=
  ∀ n, P8935156318320603404.a n = A014437 n

end A014437

/-! ## A014437.P8186801218675721805

`A174883(comp[3*n])`
-/

namespace A014437.P8186801218675721805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174883 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014437.P8186801218675721805

namespace A014437

/-- `A174883(comp[3*n])` -/
def P8186801218675721805.Spec : Prop :=
  ∀ n, P8186801218675721805.a n = A014437 n

end A014437

/-! ## A014437.P4880249777448220885

`A212804(∑[gcd(2, n)])`
-/

namespace A014437.P4880249777448220885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014437.P4880249777448220885

namespace A014437

/-- `A212804(∑[gcd(2, n)])` -/
def P4880249777448220885.Spec : Prop :=
  ∀ n, P4880249777448220885.a n = A014437 n

end A014437

/-! ## A014437.P15144145883452271362

`or(1, record[A167808(n)])`
-/

namespace A014437.P15144145883452271362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A014437.P15144145883452271362

namespace A014437

/-- `or(1, record[A167808(n)])` -/
def P15144145883452271362.Spec : Prop :=
  ∀ n, P15144145883452271362.a n = A014437 n

end A014437

/-! ## A014437.P2161732637660314543

`A103609(3*n+2)`
-/

namespace A014437.P2161732637660314543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (3 * n + 2)

end

end A014437.P2161732637660314543

namespace A014437

/-- `A103609(3*n+2)` -/
def P2161732637660314543.Spec : Prop :=
  ∀ n, P2161732637660314543.a n = A014437 n

end A014437

/-! ## A014437.P382446350098779390

`A001611(comp[3*n])-1`
-/

namespace A014437.P382446350098779390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A014437.P382446350098779390

namespace A014437

/-- `A001611(comp[3*n])-1` -/
def P382446350098779390.Spec : Prop :=
  ∀ n, P382446350098779390.a n = A014437 n

end A014437

/-! ## A014437.P17083153932071662700

`2*A107857(n+1)-1`
-/

namespace A014437.P17083153932071662700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107857 (n + 1) - 1

end

end A014437.P17083153932071662700

namespace A014437

/-- `2*A107857(n+1)-1` -/
def P17083153932071662700.Spec : Prop :=
  ∀ n, P17083153932071662700.a n = A014437 n

end A014437

/-! ## A014437.P2222205156065133694

`A115339(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A014437.P2222205156065133694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115339 (3 * n) - a (n - 1)

end

end A014437.P2222205156065133694

namespace A014437

/-- `A115339(3*n)-a(n-1)` -/
def P2222205156065133694.Spec : Prop :=
  ∀ n, P2222205156065133694.a n = A014437 n

end A014437

/-! ## A014437.P7332702613827202334

`A212804(2*n-∑[char[or(1, n)]]+2)`
-/

namespace A014437.P7332702613827202334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ((2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2).toNat

end

end A014437.P7332702613827202334

namespace A014437

/-- `A212804(2*n-∑[char[or(1, n)]]+2)` -/
def P7332702613827202334.Spec : Prop :=
  ∀ n, P7332702613827202334.a n = A014437 n

end A014437

/-! ## A014437.P17404694929631047658

`A103610(A017545(n))`
-/

namespace A014437.P17404694929631047658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017545 n).toNat

end

end A014437.P17404694929631047658

namespace A014437

/-- `A103610(A017545(n))` -/
def P17404694929631047658.Spec : Prop :=
  ∀ n, P17404694929631047658.a n = A014437 n

end A014437

/-! ## A014437.P13243939540164623179

`A103610(A017581(n))`
-/

namespace A014437.P13243939540164623179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017581 n).toNat

end

end A014437.P13243939540164623179

namespace A014437

/-- `A103610(A017581(n))` -/
def P13243939540164623179.Spec : Prop :=
  ∀ n, P13243939540164623179.a n = A014437 n

end A014437

/-! ## A014437.P5459748737538647250

`A103610(A017617(n))`
-/

namespace A014437.P5459748737538647250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A017617 n).toNat

end

end A014437.P5459748737538647250

namespace A014437

/-- `A103610(A017617(n))` -/
def P5459748737538647250.Spec : Prop :=
  ∀ n, P5459748737538647250.a n = A014437 n

end A014437

/-! ## A014437.P14701586965378367776

`A071679(A267528(n))`
-/

namespace A014437.P14701586965378367776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (A267528 n).toNat

end

end A014437.P14701586965378367776

namespace A014437

/-- `A071679(A267528(n))` -/
def P14701586965378367776.Spec : Prop :=
  ∀ n, P14701586965378367776.a n = A014437 n

end A014437

/-! ## A014437.P326261525368072959

`A324969(A114119(n))`
-/

namespace A014437.P326261525368072959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A114119 n).toNat

end

end A014437.P326261525368072959

namespace A014437

/-- `A324969(A114119(n))` -/
def P326261525368072959.Spec : Prop :=
  ∀ n, P326261525368072959.a n = A014437 n

end A014437

/-! ## A014437.P12499797181930840159

`A327035(A261953(n))`
-/

namespace A014437.P12499797181930840159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A261953 n).toNat

end

end A014437.P12499797181930840159

namespace A014437

/-- `A327035(A261953(n))` -/
def P12499797181930840159.Spec : Prop :=
  ∀ n, P12499797181930840159.a n = A014437 n

end A014437

/-! ## A014437.P11092142831785913375

`A053602(A047235(n+1))`
-/

namespace A014437.P11092142831785913375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A047235 (n + 1)).toNat

end

end A014437.P11092142831785913375

namespace A014437

/-- `A053602(A047235(n+1))` -/
def P11092142831785913375.Spec : Prop :=
  ∀ n, P11092142831785913375.a n = A014437 n

end A014437

/-! ## A014437.P15431920926632820258

`A079977(A047238(n+1))`
-/

namespace A014437.P15431920926632820258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A047238 (n + 1)).toNat

end

end A014437.P15431920926632820258

namespace A014437

/-- `A079977(A047238(n+1))` -/
def P15431920926632820258.Spec : Prop :=
  ∀ n, P15431920926632820258.a n = A014437 n

end A014437

/-!
# A014438: Inverse of 429th cyclotomic polynomial.

The programs for A014438, there is no canonical definition to state claims against.
-/

/-! ## A014438.P13354690918150540463

`(xor(1, n)-n)*A014867(n)`
-/

namespace A014438.P13354690918150540463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A014867 n

end

end A014438.P13354690918150540463

/-!
# A014440: Differences between two positive cubes in exactly 2 ways.

The programs for A014440, there is no canonical definition to state claims against.
-/

/-! ## A014440.P4286523796694965625

`record[A034179(n+1)%A014441(A081123(n))]`
-/

namespace A014440.P4286523796694965625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034179 (n + 1)) (A014441 (A081123 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014440.P4286523796694965625

/-! ## A014440.P5337556450952075537

`A034179(comp[∑[4*n]]%(A239523(n+1)+1))`
-/

namespace A014440.P5337556450952075537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034179 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A239523 (n + 1) + 1)).toNat

end

end A014440.P5337556450952075537

/-! ## A014440.P17236365146535992885

`A034179(A256450(n)^A123895(n))`
-/

namespace A014440.P17236365146535992885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034179 (SequenceMachineLib.roundAway ((A256450 n : ℚ) ^ (A123895 n : ℤ))).toNat

end

end A014440.P17236365146535992885

/-! ## A014440.P3685095877853685445

`A034179(A256450(n)^A136400(n))`
-/

namespace A014440.P3685095877853685445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034179 (SequenceMachineLib.roundAway ((A256450 n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A014440.P3685095877853685445

/-! ## A014440.P9498325818259889364

`A034179(A256450(n)%A093775(n+1))`
-/

namespace A014440.P9498325818259889364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034179 (Int.tmod (A256450 n) (A093775 (n + 1))).toNat

end

end A014440.P9498325818259889364

/-!
# A014441: Differences between two positive cubes in exactly 3 ways.

The programs for A014441, there is no canonical definition to state claims against.
-/

/-! ## A014441.P7859859992773687014

`A265625(A348553(n))%A038648(2*n+3)`
-/

namespace A014441.P7859859992773687014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265625 (A348553 n).toNat) (A038648 (2 * n + 3))

end

end A014441.P7859859992773687014

/-! ## A014441.P4884777913122081070

`A265625(A348553(n))+A000007(A078371(n))`
-/

namespace A014441.P4884777913122081070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265625 (A348553 n).toNat + A000007 (A078371 n).toNat

end

end A014441.P4884777913122081070

/-! ## A014441.P5725138124499332966

`A265625(A348553(n))+A000007(A102416(n))`
-/

namespace A014441.P5725138124499332966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265625 (A348553 n).toNat + A000007 (A102416 n).toNat

end

end A014441.P5725138124499332966

/-! ## A014441.P7042019920537865828

`A265625(or(A151622(n), A348553(n)))`
-/

namespace A014441.P7042019920537865828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265625 (Int.lor (A151622 n) (A348553 n)).toNat

end

end A014441.P7042019920537865828

/-! ## A014441.P652666692930489973

`A265625(A187829(n+1))`
-/

namespace A014441.P652666692930489973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265625 (A187829 (n + 1)).toNat

end

end A014441.P652666692930489973

/-!
# A014442: Largest prime factor of n^2 + 1.

The programs for A014442, the canonical program `A014442.P5459533592084316320` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014442 has offset 1).

The definition of A014442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A014442.P5459533592084316320

`A006530(1+(n+1)²)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A014442

/-- `A006530(1+(n+1)²)` -/
def P5459533592084316320.Spec : Prop :=
  ∀ n, P5459533592084316320.a n = A014442 (n + 1)

theorem P5459533592084316320.correct : P5459533592084316320.Spec := by
  intro n
  simp only [A014442, Nat.add_sub_cancel]

end A014442

/-! ## A014442.P8270694798755033999

`A250069(n+1)+1`
-/

namespace A014442.P8270694798755033999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1) + 1

end

end A014442.P8270694798755033999

namespace A014442

/-- `A250069(n+1)+1` -/
def P8270694798755033999.Spec : Prop :=
  ∀ n, P8270694798755033999.a n = A014442 (n + 1)

theorem P8270694798755033999.correct : P8270694798755033999.Spec := by
  intro n
  simp only [A014442, Nat.add_sub_cancel, A014442.P8270694798755033999.a, A014442.P5459533592084316320.a, A006530, A006530.P13372528560459906635.a, A250069, A250069.P12140619609167371164.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014442

/-! ## A014442.P17911260364857095495

`A252096(n+1)+A089120(n+1)`
-/

namespace A014442.P17911260364857095495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252096 (n + 1) + A089120 (n + 1)

end

end A014442.P17911260364857095495

namespace A014442

/-- `A252096(n+1)+A089120(n+1)` -/
def P17911260364857095495.Spec : Prop :=
  ∀ n, P17911260364857095495.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P13407169162930730902

`A002522(n+1)/A248516(n+1)`
-/

namespace A014442.P13407169162930730902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (n + 1) : ℚ) / (A248516 (n + 1) : ℚ)

end

end A014442.P13407169162930730902

namespace A014442

/-- `A002522(n+1)/A248516(n+1)` -/
def P13407169162930730902.Spec : Prop :=
  ∀ n, P13407169162930730902.a n = (A014442 (n + 1) : ℚ)

end A014442

/-! ## A014442.P10118288671856106718

`A002313(A248746(n+1))`
-/

namespace A014442.P10118288671856106718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A248746 (n + 1)).toNat

end

end A014442.P10118288671856106718

namespace A014442

/-- `A002313(A248746(n+1))` -/
def P10118288671856106718.Spec : Prop :=
  ∀ n, P10118288671856106718.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P3196451262593092100

`A089122(∑[A128428(n+1)])`
-/

namespace A014442.P3196451262593092100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089122 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014442.P3196451262593092100

namespace A014442

/-- `A089122(∑[A128428(n+1)])` -/
def P3196451262593092100.Spec : Prop :=
  ∀ n, P3196451262593092100.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P17944677751276240822

`p?[A006530(n²+1)]`
-/

namespace A014442.P17944677751276240822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014442.P17944677751276240822

namespace A014442

/-- `p?[A006530(n²+1)]` -/
def P17944677751276240822.Spec : Prop :=
  ∀ n, P17944677751276240822.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P5585924034098825839

`∏{d}[A006530(n*(n+2)+2), #]`
-/

namespace A014442.P5585924034098825839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n * (n + 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A014442.P5585924034098825839

namespace A014442

/-- `∏{d}[A006530(n*(n+2)+2), #]` -/
def P5585924034098825839.Spec : Prop :=
  ∀ n, (P5585924034098825839.a n : ℤ) = A014442 (n + 1)

end A014442

/-! ## A014442.P15363960016504818433

`∑{p}[A006530(∑[2*n+1]+1), #]`
-/

namespace A014442.P15363960016504818433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A014442.P15363960016504818433

namespace A014442

/-- `∑{p}[A006530(∑[2*n+1]+1), #]` -/
def P15363960016504818433.Spec : Prop :=
  ∀ n, (P15363960016504818433.a n : ℤ) = A014442 (n + 1)

end A014442

/-! ## A014442.P5898310583564833268

`∏{p}[A006530((n+3)*(n-1)+5), #]`
-/

namespace A014442.P5898310583564833268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 3 : ℤ) * ((n : ℤ) - 1) + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A014442.P5898310583564833268

namespace A014442

/-- `∏{p}[A006530((n+3)*(n-1)+5), #]` -/
def P5898310583564833268.Spec : Prop :=
  ∀ n, (P5898310583564833268.a n : ℤ) = A014442 (n + 1)

end A014442

/-! ## A014442.P10922523353754853229

`lcm(n+1, A006530(∑[2*n]+n+2))/(n+1)`
-/

namespace A014442.P10922523353754853229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A006530 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2))) : ℚ) / (n + 1 : ℚ)

end

end A014442.P10922523353754853229

namespace A014442

/-- `lcm(n+1, A006530(∑[2*n]+n+2))/(n+1)` -/
def P10922523353754853229.Spec : Prop :=
  ∀ n, P10922523353754853229.a n = (A014442 (n + 1) : ℚ)

end A014442

/-! ## A014442.P14540388510154978460

`A000040(A061395((n+1)²+1))`
-/

namespace A014442.P14540388510154978460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 ((n + 1) ^ 2 + 1)).toNat

end

end A014442.P14540388510154978460

namespace A014442

/-- `A000040(A061395((n+1)²+1))` -/
def P14540388510154978460.Spec : Prop :=
  ∀ n, P14540388510154978460.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P4286456479172480097

`or(A006530(∑[2*n+1]+1), A324823(n+1))`
-/

namespace A014442.P4286456479172480097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A324823 (n + 1))

end

end A014442.P4286456479172480097

namespace A014442

/-- `or(A006530(∑[2*n+1]+1), A324823(n+1))` -/
def P4286456479172480097.Spec : Prop :=
  ∀ n, P4286456479172480097.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P13285071852776304214

`A006530(∑[2*n+1]+1)%(3-A038644(n+1))`
-/

namespace A014442.P13285071852776304214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (3 - A038644 (n + 1))

end

end A014442.P13285071852776304214

namespace A014442

/-- `A006530(∑[2*n+1]+1)%(3-A038644(n+1))` -/
def P13285071852776304214.Spec : Prop :=
  ∀ n, P13285071852776304214.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P18015219258364054838

`A078312((n+1)*(n+1)/∏{p}[n+1, #])`
-/

namespace A014442.P18015219258364054838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078312 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A014442.P18015219258364054838

namespace A014442

/-- `A078312((n+1)*(n+1)/∏{p}[n+1, #])` -/
def P18015219258364054838.Spec : Prop :=
  ∀ n, P18015219258364054838.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P6277917321050789895

`A078312(A102631(n+1))`
-/

namespace A014442.P6277917321050789895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078312 (A102631 (n + 1)).toNat

end

end A014442.P6277917321050789895

namespace A014442

/-- `A078312(A102631(n+1))` -/
def P6277917321050789895.Spec : Prop :=
  ∀ n, P6277917321050789895.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P17623329657737027191

`A078312((n+1)*A003557(n+1))`
-/

namespace A014442.P17623329657737027191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078312 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A014442.P17623329657737027191

namespace A014442

/-- `A078312((n+1)*A003557(n+1))` -/
def P17623329657737027191.Spec : Prop :=
  ∀ n, P17623329657737027191.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P15468178989161888332

`A000040(A263297((n+1)²+1))`
-/

namespace A014442.P15468178989161888332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A263297 ((n + 1) ^ 2 + 1)).toNat

end

end A014442.P15468178989161888332

namespace A014442

/-- `A000040(A263297((n+1)²+1))` -/
def P15468178989161888332.Spec : Prop :=
  ∀ n, P15468178989161888332.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P5635948359775624069

`A231233(∑[n+1])`
-/

namespace A014442.P5635948359775624069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014442.P5635948359775624069

namespace A014442

/-- `A231233(∑[n+1])` -/
def P5635948359775624069.Spec : Prop :=
  ∀ n, P5635948359775624069.a n = A014442 (n + 1)

end A014442

/-! ## A014442.P7213310396593324784

`A004482(A250069(n+1))`
-/

namespace A014442.P7213310396593324784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A250069 (n + 1)).toNat

end

end A014442.P7213310396593324784

namespace A014442

/-- `A004482(A250069(n+1))` -/
def P7213310396593324784.Spec : Prop :=
  ∀ n, P7213310396593324784.a n = A014442 (n + 1)

end A014442

/-!
# A014443: Inverse of 434th cyclotomic polynomial.

The programs for A014443, there is no canonical definition to state claims against.
-/

/-! ## A014443.P5049940408927235625

`A014226(n)*A033999(n)`
-/

namespace A014443.P5049940408927235625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014226 n * A033999 n

end

end A014443.P5049940408927235625

/-!
# A014444: Inverse of 435th cyclotomic polynomial.

The programs for A014444, there is no canonical definition to state claims against.
-/

/-! ## A014444.P13474106574668543018

`A014879(n)*A033999(n)`
-/

namespace A014444.P13474106574668543018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014879 n * A033999 n

end

end A014444.P13474106574668543018

/-!
# A014445: Even Fibonacci numbers; or, Fibonacci(3*n).

The programs for A014445, the canonical program `A014445.P5156304004957086378` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014445 has offset 0).

The definition of A014445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014445.P5156304004957086378

`4*a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014445

/-- `4*a(n-1)+a(n-2)` -/
def P5156304004957086378.Spec : Prop :=
  ∀ n, (P5156304004957086378.a n : ℤ) = A014445 n

theorem P5156304004957086378.correct : P5156304004957086378.Spec := by
  intro n
  simp only [A014445]

end A014445

/-! ## A014445.P15501451597174775318

`2*A001076(n)`
-/

namespace A014445.P15501451597174775318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001076 n

end

end A014445.P15501451597174775318

namespace A014445

/-- `2*A001076(n)` -/
def P15501451597174775318.Spec : Prop :=
  ∀ n, P15501451597174775318.a n = A014445 n

end A014445

/-! ## A014445.P14566162597751960934

`2*((2+sqrt(5))^n-(2-sqrt(5))^n)/sqrt(20)`
-/

namespace A014445.P14566162597751960934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((2 + Real.sqrt (5 : ℝ)) ^ n - (2 - Real.sqrt (5 : ℝ)) ^ n) / Real.sqrt (20 : ℝ)

end

end A014445.P14566162597751960934

namespace A014445

/-- `2*((2+sqrt(5))^n-(2-sqrt(5))^n)/sqrt(20)` -/
def P14566162597751960934.Spec : Prop :=
  ∀ n, P14566162597751960934.a n = (A014445 n : ℝ)

end A014445

/-! ## A014445.P7147614131172441483

`ogf(2x/(1-4x-x^2))`
-/

namespace A014445.P7147614131172441483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, -1] n

end

end A014445.P7147614131172441483

namespace A014445

/-- `ogf(2x/(1-4x-x^2))` -/
def P7147614131172441483.Spec : Prop :=
  ∀ n, P7147614131172441483.a n = A014445 n

end A014445

/-! ## A014445.P15832920847482420057

`round(ϕ^3*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A014445.P15832920847482420057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A014445.P15832920847482420057

namespace A014445

/-- `round(ϕ^3*a(n-1))` -/
def P15832920847482420057.Spec : Prop :=
  ∀ n, P15832920847482420057.a n = A014445 n

end A014445

/-! ## A014445.P7653371732310503574

`4*a(n-1)-floor(-a(n-2))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A014445.P7653371732310503574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * a (n - 1) - (-a (n - 2))

end

end A014445.P7653371732310503574

namespace A014445

/-- `4*a(n-1)-floor(-a(n-2))` -/
def P7653371732310503574.Spec : Prop :=
  ∀ n, P7653371732310503574.a n = A014445 n

end A014445

/-! ## A014445.P2959083076936064209

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=0, a(1)=2`
-/

namespace A014445.P2959083076936064209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A014445.P2959083076936064209

namespace A014445

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P2959083076936064209.Spec : Prop :=
  ∀ n, P2959083076936064209.a n = (A014445 n : ℚ)

end A014445

/-! ## A014445.P13418377306610632914

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A014445.P13418377306610632914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A014445.P13418377306610632914

namespace A014445

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P13418377306610632914.Spec : Prop :=
  ∀ n, P13418377306610632914.a n = A014445 n

end A014445

/-! ## A014445.P9848498229673676519

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A014445.P9848498229673676519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2))))

end

end A014445.P9848498229673676519

namespace A014445

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P9848498229673676519.Spec : Prop :=
  ∀ n, (P9848498229673676519.a n : ℤ) = A014445 n

theorem P9848498229673676519.correct : P9848498229673676519.Spec := by
  intro n
  simp only [A014445, Nat.add_sub_cancel, A014445.P9848498229673676519.a, A014445.P5156304004957086378.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014445

/-! ## A014445.P11390331389997675367

`record[A102875(n)]`
-/

namespace A014445.P11390331389997675367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014445.P11390331389997675367

namespace A014445

/-- `record[A102875(n)]` -/
def P11390331389997675367.Spec : Prop :=
  ∀ n, P11390331389997675367.a n = A014445 n

end A014445

/-! ## A014445.P12537709573327338924

`A117647(2*n)`
-/

namespace A014445.P12537709573327338924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n)

end

end A014445.P12537709573327338924

namespace A014445

/-- `A117647(2*n)` -/
def P12537709573327338924.Spec : Prop :=
  ∀ n, P12537709573327338924.a n = A014445 n

end A014445

/-! ## A014445.P8589215430509792563

`A000045(3*n)`
-/

namespace A014445.P8589215430509792563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n)

end

end A014445.P8589215430509792563

namespace A014445

/-- `A000045(3*n)` -/
def P8589215430509792563.Spec : Prop :=
  ∀ n, P8589215430509792563.a n = A014445 n

end A014445

/-! ## A014445.P1637969188177559350

`A104221(3*n)`
-/

namespace A014445.P1637969188177559350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (3 * n)

end

end A014445.P1637969188177559350

namespace A014445

/-- `A104221(3*n)` -/
def P1637969188177559350.Spec : Prop :=
  ∀ n, P1637969188177559350.a n = A014445 n

end A014445

/-! ## A014445.P4441761861462470071

`A116585(3*n)`
-/

namespace A014445.P4441761861462470071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116585 (3 * n)

end

end A014445.P4441761861462470071

namespace A014445

/-- `A116585(3*n)` -/
def P4441761861462470071.Spec : Prop :=
  ∀ n, P4441761861462470071.a n = A014445 n

end A014445

/-! ## A014445.P3584554585024544099

`A103609(6*n)`
-/

namespace A014445.P3584554585024544099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (6 * n)

end

end A014445.P3584554585024544099

namespace A014445

/-- `A103609(6*n)` -/
def P3584554585024544099.Spec : Prop :=
  ∀ n, P3584554585024544099.a n = A014445 n

end A014445

/-! ## A014445.P5548313145633390676

`A212804(3*n+1)`
-/

namespace A014445.P5548313145633390676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n + 1)

end

end A014445.P5548313145633390676

namespace A014445

/-- `A212804(3*n+1)` -/
def P5548313145633390676.Spec : Prop :=
  ∀ n, P5548313145633390676.a n = A014445 n

end A014445

/-! ## A014445.P15552618819924709536

`A298919(3*n+1)`
-/

namespace A014445.P15552618819924709536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298919 (3 * n + 1)

end

end A014445.P15552618819924709536

namespace A014445

/-- `A298919(3*n+1)` -/
def P15552618819924709536.Spec : Prop :=
  ∀ n, P15552618819924709536.a n = A014445 n

end A014445

/-! ## A014445.P871717427445808980

`A001611(3*n)-1`
-/

namespace A014445.P871717427445808980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (3 * n) - 1

end

end A014445.P871717427445808980

namespace A014445

/-- `A001611(3*n)-1` -/
def P871717427445808980.Spec : Prop :=
  ∀ n, P871717427445808980.a n = A014445 n

end A014445

/-! ## A014445.P10183760865391244323

`A104220(3*n)-1`
-/

namespace A014445.P10183760865391244323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 (3 * n) - 1

end

end A014445.P10183760865391244323

namespace A014445

/-- `A104220(3*n)-1` -/
def P10183760865391244323.Spec : Prop :=
  ∀ n, P10183760865391244323.a n = A014445 n

end A014445

/-! ## A014445.P16047649597671103398

`2*A059973(2*n)`
-/

namespace A014445.P16047649597671103398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059973 (2 * n)

end

end A014445.P16047649597671103398

namespace A014445

/-- `2*A059973(2*n)` -/
def P16047649597671103398.Spec : Prop :=
  ∀ n, P16047649597671103398.a n = A014445 n

end A014445

/-!
# A014446: Inverse of 437th cyclotomic polynomial.

The programs for A014446, there is no canonical definition to state claims against.
-/

/-! ## A014446.P12847418721662868479

`A014883(n)*A033999(n)`
-/

namespace A014446.P12847418721662868479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014883 n * A033999 n

end

end A014446.P12847418721662868479

/-!
# A014447: Odd Lucas numbers.

The programs for A014447, the canonical program `A014447.P16687338868927914747` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014447 has offset 0).

The definition of A014447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014447.P16687338868927914747

`4*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014447

/-- `4*a(n-2)+a(n-4)` -/
def P16687338868927914747.Spec : Prop :=
  ∀ n, (P16687338868927914747.a n : ℤ) = A014447 n

theorem P16687338868927914747.correct : P16687338868927914747.Spec := by
  intro n
  simp only [A014447]

end A014447

/-! ## A014447.P17613261556909703654

`ogf((1+3x+3x^2-x^3)/(1-4x^2-x^4))`
-/

namespace A014447.P17613261556909703654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, -1] [1, 0, -4, 0, -1] n

end

end A014447.P17613261556909703654

namespace A014447

/-- `ogf((1+3x+3x^2-x^3)/(1-4x^2-x^4))` -/
def P17613261556909703654.Spec : Prop :=
  ∀ n, P17613261556909703654.a n = A014447 n

end A014447

/-! ## A014447.P12284238321607550217

`A000032(comp[3*n])`
-/

namespace A014447.P12284238321607550217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014447.P12284238321607550217

namespace A014447

/-- `A000032(comp[3*n])` -/
def P12284238321607550217.Spec : Prop :=
  ∀ n, P12284238321607550217.a n = A014447 n

end A014447

/-! ## A014447.P6366505575062631645

`A000204(comp[3*n])`
-/

namespace A014447.P6366505575062631645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A014447.P6366505575062631645

namespace A014447

/-- `A000204(comp[3*n])` -/
def P6366505575062631645.Spec : Prop :=
  ∀ n, P6366505575062631645.a n = A014447 n

end A014447

/-! ## A014447.P12046751219050822127

`or(1, A000032(comp[lcm(3, n)]))`
-/

namespace A014447.P12046751219050822127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A014447.P12046751219050822127

namespace A014447

/-- `or(1, A000032(comp[lcm(3, n)]))` -/
def P12046751219050822127.Spec : Prop :=
  ∀ n, P12046751219050822127.a n = A014447 n

end A014447

/-! ## A014447.P1443017256473933106

`record[A000032(n^(n²%3))]`
-/

namespace A014447.P1443017256473933106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n ^ (n ^ 2 % 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P1443017256473933106

namespace A014447

/-- `record[A000032(n^(n²%3))]` -/
def P1443017256473933106.Spec : Prop :=
  ∀ n, P1443017256473933106.a n = A014447 n

end A014447

/-! ## A014447.P12663063790759956644

`record[A000032(lcm(27, n+1)/27)]`
-/

namespace A014447.P12663063790759956644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((Nat.lcm 27 (n + 1) : ℚ) / 27)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P12663063790759956644

namespace A014447

/-- `record[A000032(lcm(27, n+1)/27)]` -/
def P12663063790759956644.Spec : Prop :=
  ∀ n, P12663063790759956644.a n = A014447 n

end A014447

/-! ## A014447.P9799439589698436481

`A254729(A114119(n))`
-/

namespace A014447.P9799439589698436481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A114119 n).toNat

end

end A014447.P9799439589698436481

namespace A014447

/-- `A254729(A114119(n))` -/
def P9799439589698436481.Spec : Prop :=
  ∀ n, P9799439589698436481.a n = A014447 n

end A014447

/-! ## A014447.P2131960715314813880

`record[A000032(A004482(n))]`
-/

namespace A014447.P2131960715314813880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004482 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P2131960715314813880

namespace A014447

/-- `record[A000032(A004482(n))]` -/
def P2131960715314813880.Spec : Prop :=
  ∀ n, P2131960715314813880.a n = A014447 n

end A014447

/-! ## A014447.P5185987135100759435

`A090244(A047238(n+1))`
-/

namespace A014447.P5185987135100759435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A047238 (n + 1)).toNat

end

end A014447.P5185987135100759435

namespace A014447

/-- `A090244(A047238(n+1))` -/
def P5185987135100759435.Spec : Prop :=
  ∀ n, P5185987135100759435.a n = A014447 n

end A014447

/-! ## A014447.P10504058080295612602

`A090244(A047264(n+1))`
-/

namespace A014447.P10504058080295612602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A047264 (n + 1)).toNat

end

end A014447.P10504058080295612602

namespace A014447

/-- `A090244(A047264(n+1))` -/
def P10504058080295612602.Spec : Prop :=
  ∀ n, P10504058080295612602.a n = A014447 n

end A014447

/-! ## A014447.P18080618871611636455

`A115339(A047235(n+1))`
-/

namespace A014447.P18080618871611636455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A047235 (n + 1)).toNat

end

end A014447.P18080618871611636455

namespace A014447

/-- `A115339(A047235(n+1))` -/
def P18080618871611636455.Spec : Prop :=
  ∀ n, P18080618871611636455.a n = A014447 n

end A014447

/-! ## A014447.P8346637037689988750

`A302126(A047270(n+1))`
-/

namespace A014447.P8346637037689988750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A047270 (n + 1)).toNat

end

end A014447.P8346637037689988750

namespace A014447

/-- `A302126(A047270(n+1))` -/
def P8346637037689988750.Spec : Prop :=
  ∀ n, P8346637037689988750.a n = A014447 n

end A014447

/-! ## A014447.P14191315866751433739

`record[A000032(A030065(n+1))]`
-/

namespace A014447.P14191315866751433739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A030065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P14191315866751433739

namespace A014447

/-- `record[A000032(A030065(n+1))]` -/
def P14191315866751433739.Spec : Prop :=
  ∀ n, P14191315866751433739.a n = A014447 n

end A014447

/-! ## A014447.P13460876729554279302

`record[A000032(A038502(n+1))]`
-/

namespace A014447.P13460876729554279302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A038502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P13460876729554279302

namespace A014447

/-- `record[A000032(A038502(n+1))]` -/
def P13460876729554279302.Spec : Prop :=
  ∀ n, P13460876729554279302.a n = A014447 n

end A014447

/-! ## A014447.P484934100302144597

`record[A000032(A051176(n+1))]`
-/

namespace A014447.P484934100302144597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A051176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P484934100302144597

namespace A014447

/-- `record[A000032(A051176(n+1))]` -/
def P484934100302144597.Spec : Prop :=
  ∀ n, P484934100302144597.a n = A014447 n

end A014447

/-! ## A014447.P3039181550930409103

`record[A000032(A091684(n+1))]`
-/

namespace A014447.P3039181550930409103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A091684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P3039181550930409103

namespace A014447

/-- `record[A000032(A091684(n+1))]` -/
def P3039181550930409103.Spec : Prop :=
  ∀ n, P3039181550930409103.a n = A014447 n

end A014447

/-! ## A014447.P5557107656191744891

`record[A000032(A106610(n+1))]`
-/

namespace A014447.P5557107656191744891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A106610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P5557107656191744891

namespace A014447

/-- `record[A000032(A106610(n+1))]` -/
def P5557107656191744891.Spec : Prop :=
  ∀ n, P5557107656191744891.a n = A014447 n

end A014447

/-! ## A014447.P11085633139117410125

`record[A000032(A143097(n+1))]`
-/

namespace A014447.P11085633139117410125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A143097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P11085633139117410125

namespace A014447

/-- `record[A000032(A143097(n+1))]` -/
def P11085633139117410125.Spec : Prop :=
  ∀ n, P11085633139117410125.a n = A014447 n

end A014447

/-! ## A014447.P3759643366134450020

`record[A000032(A186101(n+1))]`
-/

namespace A014447.P3759643366134450020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A186101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014447.P3759643366134450020

namespace A014447

/-- `record[A000032(A186101(n+1))]` -/
def P3759643366134450020.Spec : Prop :=
  ∀ n, P3759643366134450020.a n = A014447 n

end A014447

/-!
# A014448: Even Lucas numbers: a(n) = L(3*n).

The programs for A014448, the canonical program `A014448.P15102495241809714058` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014448 has offset 0).

The definition of A014448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014448.P15102495241809714058

`4*a(n-1)+a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014448

/-- `4*a(n-1)+a(n-2)` -/
def P15102495241809714058.Spec : Prop :=
  ∀ n, (P15102495241809714058.a n : ℤ) = A014448 n

theorem P15102495241809714058.correct : P15102495241809714058.Spec := by
  intro n
  simp only [A014448]

end A014448

/-! ## A014448.P7408273967312304742

`2*A001077(n)`
-/

namespace A014448.P7408273967312304742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001077 n

end

end A014448.P7408273967312304742

namespace A014448

/-- `2*A001077(n)` -/
def P7408273967312304742.Spec : Prop :=
  ∀ n, P7408273967312304742.a n = A014448 n

end A014448

/-! ## A014448.P2323131014340703815

`A000032(3*n)`
-/

namespace A014448.P2323131014340703815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n)

end

end A014448.P2323131014340703815

namespace A014448

/-- `A000032(3*n)` -/
def P2323131014340703815.Spec : Prop :=
  ∀ n, P2323131014340703815.a n = A014448 n

end A014448

/-! ## A014448.P18133443850026352085

`ogf((-2+4x)/(-1+4x+x^2))`
-/

namespace A014448.P18133443850026352085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4, -1] n

end

end A014448.P18133443850026352085

namespace A014448

/-- `ogf((-2+4x)/(-1+4x+x^2))` -/
def P18133443850026352085.Spec : Prop :=
  ∀ n, P18133443850026352085.a n = A014448 n

end A014448

/-! ## A014448.P11337503103732699959

`round(ϕ^floor(3/acot(n)))`
-/

namespace A014448.P11337503103732699959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ))

end

end A014448.P11337503103732699959

namespace A014448

/-- `round(ϕ^floor(3/acot(n)))` -/
def P11337503103732699959.Spec : Prop :=
  ∀ n, P11337503103732699959.a n = A014448 n

end A014448

/-! ## A014448.P10455202651201098291

`2*round(ϕ^(3*n)/2)`
-/

namespace A014448.P10455202651201098291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.goldenRatio ^ (3 * n) / 2)

end

end A014448.P10455202651201098291

namespace A014448

/-- `2*round(ϕ^(3*n)/2)` -/
def P10455202651201098291.Spec : Prop :=
  ∀ n, P10455202651201098291.a n = A014448 n

end A014448

/-! ## A014448.P11232354712622678066

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=2, a(1)=4`
-/

namespace A014448.P11232354712622678066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A014448.P11232354712622678066

namespace A014448

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P11232354712622678066.Spec : Prop :=
  ∀ n, P11232354712622678066.a n = (A014448 n : ℚ)

end A014448

/-! ## A014448.P2008959264943865021

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A014448.P2008959264943865021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A014448.P2008959264943865021

namespace A014448

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P2008959264943865021.Spec : Prop :=
  ∀ n, P2008959264943865021.a n = A014448 n

end A014448

/-! ## A014448.P13682662415633359706

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A014448.P13682662415633359706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2))))

end

end A014448.P13682662415633359706

namespace A014448

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P13682662415633359706.Spec : Prop :=
  ∀ n, (P13682662415633359706.a n : ℤ) = A014448 n

theorem P13682662415633359706.correct : P13682662415633359706.Spec := by
  intro n
  simp only [A014448, Nat.add_sub_cancel, A014448.P13682662415633359706.a, A014448.P15102495241809714058.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014448

/-! ## A014448.P9669711608674689969

`A100233(n)+1`
-/

namespace A014448.P9669711608674689969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 n + 1

end

end A014448.P9669711608674689969

namespace A014448

/-- `A100233(n)+1` -/
def P9669711608674689969.Spec : Prop :=
  ∀ n, P9669711608674689969.a n = A014448 n

end A014448

/-! ## A014448.P3686315779379505214

`A127218(6*n)`
-/

namespace A014448.P3686315779379505214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (6 * n)

end

end A014448.P3686315779379505214

namespace A014448

/-- `A127218(6*n)` -/
def P3686315779379505214.Spec : Prop :=
  ∀ n, P3686315779379505214.a n = A014448 n

end A014448

/-! ## A014448.P10984409328244575635

`A303427(6*n)`
-/

namespace A014448.P10984409328244575635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (6 * n)

end

end A014448.P10984409328244575635

namespace A014448

/-- `A303427(6*n)` -/
def P10984409328244575635.Spec : Prop :=
  ∀ n, P10984409328244575635.a n = A014448 n

end A014448

/-! ## A014448.P7642059092588599285

`record[A174506(n)+1]`
-/

namespace A014448.P7642059092588599285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174506 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014448.P7642059092588599285

namespace A014448

/-- `record[A174506(n)+1]` -/
def P7642059092588599285.Spec : Prop :=
  ∀ n, P7642059092588599285.a n = A014448 n

end A014448

/-! ## A014448.P2376588969017456559

`A001612(3*n)-1`
-/

namespace A014448.P2376588969017456559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (3 * n) - 1

end

end A014448.P2376588969017456559

namespace A014448

/-- `A001612(3*n)-1` -/
def P2376588969017456559.Spec : Prop :=
  ∀ n, P2376588969017456559.a n = A014448 n

end A014448

/-! ## A014448.P3330280668824779725

`A329723(3*n+2)`
-/

namespace A014448.P3330280668824779725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (3 * n + 2)

end

end A014448.P3330280668824779725

namespace A014448

/-- `A329723(3*n+2)` -/
def P3330280668824779725.Spec : Prop :=
  ∀ n, P3330280668824779725.a n = A014448 n

end A014448

/-! ## A014448.P1593920814418887907

`A000211(3*n)-2`
-/

namespace A014448.P1593920814418887907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (3 * n) - 2

end

end A014448.P1593920814418887907

namespace A014448

/-- `A000211(3*n)-2` -/
def P1593920814418887907.Spec : Prop :=
  ∀ n, P1593920814418887907.a n = A014448 n

end A014448

/-! ## A014448.P16233151727796419405

`record[Δ[2*A167808(n)]]`
-/

namespace A014448.P16233151727796419405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014448.P16233151727796419405

namespace A014448

/-- `record[Δ[2*A167808(n)]]` -/
def P16233151727796419405.Spec : Prop :=
  ∀ n, P16233151727796419405.a n = A014448 n

end A014448

/-! ## A014448.P2807363638497161060

`record[Δ[lcm(2, A000045(n))]]`
-/

namespace A014448.P2807363638497161060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000045 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014448.P2807363638497161060

namespace A014448

/-- `record[Δ[lcm(2, A000045(n))]]` -/
def P2807363638497161060.Spec : Prop :=
  ∀ n, P2807363638497161060.a n = A014448 n

end A014448

/-! ## A014448.P14402001808987111308

`A080023(A008486(n))`
-/

namespace A014448.P14402001808987111308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (A008486 n).toNat

end

end A014448.P14402001808987111308

namespace A014448

/-- `A080023(A008486(n))` -/
def P14402001808987111308.Spec : Prop :=
  ∀ n, P14402001808987111308.a n = A014448 n

end A014448

/-! ## A014448.P10892243358254567280

`A090244(A016921(n))`
-/

namespace A014448.P10892243358254567280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A016921 n).toNat

end

end A014448.P10892243358254567280

namespace A014448

/-- `A090244(A016921(n))` -/
def P10892243358254567280.Spec : Prop :=
  ∀ n, P10892243358254567280.a n = A014448 n

end A014448

/-!
# A014449: Numbers in the triangle of Eulerian numbers (A008292) that are not 1.

The programs for A014449, there is no canonical definition to state claims against.
-/

/-! ## A014449.P3616990971644007107

`A123125(lt[1, A122935(n)])`
-/

namespace A014449.P3616990971644007107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014449.P3616990971644007107

/-! ## A014449.P13942314081822015023

`A123125(lt[1, A123125(n)])`
-/

namespace A014449.P13942314081822015023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014449.P13942314081822015023

/-! ## A014449.P6821097587526944112

`A173018(lt[1, A173018(n)])`
-/

namespace A014449.P6821097587526944112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014449.P6821097587526944112

/-! ## A014449.P4529341729458033058

`A008292(lt[2, A059268(n)])`
-/

namespace A014449.P4529341729458033058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014449.P4529341729458033058

/-! ## A014449.P3299058341417665335

`A008292(eq[0, A103452(n)]+1)`
-/

namespace A014449.P3299058341417665335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014449.P3299058341417665335

/-! ## A014449.P4482485798548949874

`A008292(eq[0, A128541(n)]+2)`
-/

namespace A014449.P4482485798548949874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A014449.P4482485798548949874

/-! ## A014449.P8798495064633215239

`A008292(eq[2, A154325(n)]+1)`
-/

namespace A014449.P8798495064633215239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014449.P8798495064633215239

/-! ## A014449.P17220951177909629498

`A123125(eq[2, 2%A004070(n)])`
-/

namespace A014449.P17220951177909629498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A004070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014449.P17220951177909629498

/-! ## A014449.P7261034860130650576

`A008292(comp[eq[1, A007318(n)]]+1)`
-/

namespace A014449.P7261034860130650576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A014449.P7261034860130650576

/-! ## A014449.P5193790265427756290

`A008292(lt[1, A008292(n+1)]+1)`
-/

namespace A014449.P5193790265427756290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A014449.P5193790265427756290

/-! ## A014449.P485274457491955595

`A008292(lt[A056857(n+1), A033306(n)])`
-/

namespace A014449.P485274457491955595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014449.P485274457491955595

/-! ## A014449.P2098223784734882861

`A008292(lt[1, A179454(n)])`
-/

namespace A014449.P2098223784734882861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014449.P2098223784734882861

/-! ## A014449.P10441311268032245044

`A008292(A140978(n+1)+1-n)`
-/

namespace A014449.P10441311268032245044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A140978 (n + 1) + (1 - (n : ℤ))).toNat

end

end A014449.P10441311268032245044

/-! ## A014449.P14071850149091515818

`A008292(A003057(n+2)²-n+1)`
-/

namespace A014449.P14071850149091515818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A003057 (n + 2) ^ 2 - (n : ℤ) + 1).toNat

end

end A014449.P14071850149091515818

/-! ## A014449.P7406692586536601379

`sqrt(A014732(n+1))`
-/

namespace A014449.P7406692586536601379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014732 (n + 1) : ℝ)

end

end A014449.P7406692586536601379

/-! ## A014449.P9050770034679527726

`A008292(lt[2, A008305(n+1)])`
-/

namespace A014449.P9050770034679527726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014449.P9050770034679527726

/-!
# A014450: Even numbers in the triangle of Eulerian numbers.

The programs for A014450, there is no canonical definition to state claims against.
-/

/-! ## A014450.P2501766385621535839

`2*A051474(n)`
-/

namespace A014450.P2501766385621535839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051474 n

end

end A014450.P2501766385621535839

/-! ## A014450.P6334925551132327467

`A008292(A268232(n+1)+1)`
-/

namespace A014450.P6334925551132327467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A268232 (n + 1) + 1).toNat

end

end A014450.P6334925551132327467

/-! ## A014450.P15868426412453726693

`A008292(comp[A268231(n+1)]+1)`
-/

namespace A014450.P15868426412453726693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A014450.P15868426412453726693

/-! ## A014450.P15670654426273546976

`A008292(eq[2, gcd(2, A007318(n))]+1)`
-/

namespace A014450.P15670654426273546976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A014450.P15670654426273546976

/-! ## A014450.P13664818859419205619

`A008292(eq[0, and(1, A007318(n))]+1)`
-/

namespace A014450.P13664818859419205619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014450.P13664818859419205619

/-! ## A014450.P5838530031437589500

`A008292(eq[0, and(1, A008292(n+1))]+1)`
-/

namespace A014450.P5838530031437589500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008292 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014450.P5838530031437589500

/-! ## A014450.P4179866008660289780

`2*sqrt(A051476(n))`
-/

namespace A014450.P4179866008660289780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A051476 n : ℝ)

end

end A014450.P4179866008660289780

/-! ## A014450.P6739879930176024344

`A051474(n)+A051476(n)/A051474(n)`
-/

namespace A014450.P6739879930176024344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051474 n : ℚ) + (A051476 n : ℚ) / (A051474 n : ℚ)

end

end A014450.P6739879930176024344

/-! ## A014450.P16015683722613596967

`sqrt(A014733(n+1))`
-/

namespace A014450.P16015683722613596967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014733 (n + 1) : ℝ)

end

end A014450.P16015683722613596967

/-! ## A014450.P5052993668488001864

`A014733(n+1)/(A051474(n)+A051474(n))`
-/

namespace A014450.P5052993668488001864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014733 (n + 1) : ℚ) / (A051474 n + A051474 n : ℚ)

end

end A014450.P5052993668488001864

/-!
# A014451: Inverse of 442nd cyclotomic polynomial.

The programs for A014451, there is no canonical definition to state claims against.
-/

/-! ## A014451.P2755324665945487141

`(-1)^n*A014230(n)`
-/

namespace A014451.P2755324665945487141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014230 n

end

end A014451.P2755324665945487141

/-!
# A014452: Theta series of quadratic form with Gram matrix [ 1, 0, 0; 0, 2, 1; 0, 1, 2 ].

The programs for A014452, there is no canonical definition to state claims against.
-/

/-! ## A014452.P9374790304691496803

`A029594(2*n)`
-/

namespace A014452.P9374790304691496803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 (2 * n)

end

end A014452.P9374790304691496803

/-! ## A014452.P8293658366993665301

`A029594(A005843(n))+A019590(n+5)`
-/

namespace A014452.P8293658366993665301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029594 (A005843 n).toNat + A019590 (n + 5)

end

end A014452.P8293658366993665301

/-! ## A014452.P15372957085353421556

`A029594(A005843(n))%A001359(n+1)`
-/

namespace A014452.P15372957085353421556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029594 (A005843 n).toNat) (A001359 (n + 1))

end

end A014452.P15372957085353421556

/-! ## A014452.P11656043272327030945

`gcd(A000122(A006530(n+1)), A029594(n+n))`
-/

namespace A014452.P11656043272327030945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A006530 (n + 1)).toNat) (A029594 (n + n))

end

end A014452.P11656043272327030945

/-! ## A014452.P5909732349974016775

`A257653(3*n)`
-/

namespace A014452.P5909732349974016775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257653 (3 * n)

end

end A014452.P5909732349974016775

/-! ## A014452.P17123770327016362357

`A029672(4*n)`
-/

namespace A014452.P17123770327016362357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029672 (4 * n)

end

end A014452.P17123770327016362357

/-! ## A014452.P17412950664070930139

`A029678(8*n)`
-/

namespace A014452.P17412950664070930139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029678 (8 * n)

end

end A014452.P17412950664070930139

/-! ## A014452.P12115244470104677269

`A213618(12*n)`
-/

namespace A014452.P12115244470104677269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (12 * n)

end

end A014452.P12115244470104677269

/-!
# A014453: Theta series of quadratic form with Gram matrix [ 2, 0, 0; 0, 2, 1; 0, 1, 2 ].

The programs for A014453, there is no canonical definition to state claims against.
-/

/-! ## A014453.P8189293887393265344

`(A034933(4*n)+A034933(n))/2`
-/

namespace A014453.P8189293887393265344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034933 (4 * n) + A034933 n : ℚ) / 2

end

end A014453.P8189293887393265344

/-! ## A014453.P13723022299199578766

`A001281(A034933(4*n)+A034933(n))`
-/

namespace A014453.P13723022299199578766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A034933 (4 * n) + A034933 n).toNat

end

end A014453.P13723022299199578766

/-! ## A014453.P15789111281258260739

`A004526(A034933(4*n)+A034933(n))`
-/

namespace A014453.P15789111281258260739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A034933 (4 * n) + A034933 n).toNat

end

end A014453.P15789111281258260739

/-! ## A014453.P6752301043983431496

`A014682(A034933(4*n)+A034933(n))`
-/

namespace A014453.P6752301043983431496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034933 (4 * n) + A034933 n).toNat

end

end A014453.P6752301043983431496

/-! ## A014453.P7523558888969071301

`A025480(A034933(4*n)+A034933(n))`
-/

namespace A014453.P7523558888969071301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A034933 (4 * n) + A034933 n).toNat

end

end A014453.P7523558888969071301

/-! ## A014453.P4513121863896113221

`A038572(A034933(4*n)+A034933(n))`
-/

namespace A014453.P4513121863896113221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A034933 (4 * n) + A034933 n).toNat

end

end A014453.P4513121863896113221

/-! ## A014453.P10004107498267734014

`A259657(12*n)`
-/

namespace A014453.P10004107498267734014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259657 (12 * n)

end

end A014453.P10004107498267734014

/-!
# A014455: Theta series of quadratic form with Gram matrix [ 1, 0, 0; 0, 1, 0; 0, 0, 2 ]. Number of integer solutions to x^2 + y^2 + 2*z^2 = n.

The programs for A014455, there is no canonical definition to state claims against.
-/

/-! ## A014455.P9886834307267176233

`A004015(n)/A010684(n)`
-/

namespace A014455.P9886834307267176233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004015 n : ℚ) / (A010684 n : ℚ)

end

end A014455.P9886834307267176233

/-! ## A014455.P5564328500842635683

`A005875(2*n)/(2-A033999(n))`
-/

namespace A014455.P5564328500842635683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (2 * n) : ℚ) / (2 - A033999 n : ℚ)

end

end A014455.P5564328500842635683

/-! ## A014455.P3634030847259645973

`A005875(2*n)/(A033999(n+1)+2)`
-/

namespace A014455.P3634030847259645973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (2 * n) : ℚ) / (A033999 (n + 1) + 2 : ℚ)

end

end A014455.P3634030847259645973

/-! ## A014455.P17660579329870890262

`A005875(2*n)/(2-A009001(2*n))`
-/

namespace A014455.P17660579329870890262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (2 * n) : ℚ) / (2 - A009001 (2 * n) : ℚ)

end

end A014455.P17660579329870890262

/-! ## A014455.P2946090776029831393

`A005875(2*n)/A236923(2*n)*A236924(2*n)`
-/

namespace A014455.P2946090776029831393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (2 * n) : ℚ) / (A236923 (2 * n) : ℚ) * (A236924 (2 * n) : ℚ)

end

end A014455.P2946090776029831393

/-! ## A014455.P16540744519292208706

`A169783(2*n)`
-/

namespace A014455.P16540744519292208706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (2 * n)

end

end A014455.P16540744519292208706

/-! ## A014455.P9027588459111263735

`A246631(2*n)`
-/

namespace A014455.P9027588459111263735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (2 * n)

end

end A014455.P9027588459111263735

/-! ## A014455.P12014185854631597985

`abs(A212885(2*n))`
-/

namespace A014455.P12014185854631597985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212885 (2 * n)|

end

end A014455.P12014185854631597985

/-! ## A014455.P10823994196976072873

`A033999(n)*A212885(2*n)`
-/

namespace A014455.P10823994196976072873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A212885 (2 * n)

end

end A014455.P10823994196976072873

/-! ## A014455.P13508264752359889072

`gcd(A000038(n), A212885(2*n))`
-/

namespace A014455.P13508264752359889072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A212885 (2 * n))

end

end A014455.P13508264752359889072

/-! ## A014455.P3160394382119238559

`lcm(A000034(n), A212885(2*n))`
-/

namespace A014455.P3160394382119238559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A212885 (2 * n))

end

end A014455.P3160394382119238559

/-! ## A014455.P15513559827262951622

`A004015(n)/A204689(2*n+1)`
-/

namespace A014455.P15513559827262951622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004015 n : ℚ) / (A204689 (2 * n + 1) : ℚ)

end

end A014455.P15513559827262951622

/-! ## A014455.P16143729375777587631

`A087960(2*n)*A212885(2*n)`
-/

namespace A014455.P16143729375777587631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A212885 (2 * n)

end

end A014455.P16143729375777587631

/-! ## A014455.P6831905913156675189

`A005875(2*n)/A084101(2*n)`
-/

namespace A014455.P6831905913156675189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (2 * n) : ℚ) / (A084101 (2 * n) : ℚ)

end

end A014455.P6831905913156675189

/-! ## A014455.P9385334129059460239

`A014457(4*n)`
-/

namespace A014455.P9385334129059460239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (4 * n)

end

end A014455.P9385334129059460239

/-! ## A014455.P9044668204724311149

`A072070(4*n)`
-/

namespace A014455.P9044668204724311149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 (4 * n)

end

end A014455.P9044668204724311149

/-! ## A014455.P5872887961091612933

`A033717(4*n)`
-/

namespace A014455.P5872887961091612933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 (4 * n)

end

end A014455.P5872887961091612933

/-! ## A014455.P4170267362715727301

`abs(A319078(2*n))`
-/

namespace A014455.P4170267362715727301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319078 (2 * n)|

end

end A014455.P4170267362715727301

/-! ## A014455.P14329316719458459709

`A033999(n)*A319078(2*n)`
-/

namespace A014455.P14329316719458459709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A319078 (2 * n)

end

end A014455.P14329316719458459709

/-! ## A014455.P2772733953528950039

`lcm(A001285(n), A319078(2*n))`
-/

namespace A014455.P2772733953528950039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A319078 (2 * n))

end

end A014455.P2772733953528950039

/-!
# A014456: Numbers represented by quadratic form with Gram matrix [ 2, 1, 0; 1, 3, 1; 0, 1, 2 ].

The programs for A014456, there is no canonical definition to state claims against.
-/

/-! ## A014456.P1503832174027603561

`∩[A000401(n+1), A047547(n+1)]`
-/

namespace A014456.P1503832174027603561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014456.P1503832174027603561

/-! ## A014456.P18355514989727129303

`lt[0, A014457(n)]`
-/

namespace A014456.P18355514989727129303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014456.P18355514989727129303

/-! ## A014456.P3046329965719595498

`eq[A000038(n), A208274(A014457(n))]`
-/

namespace A014456.P3046329965719595498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 (A014457 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014456.P3046329965719595498

/-! ## A014456.P5161083033886200186

`eq[A036987(2*n), A036987(A014457(n))]`
-/

namespace A014456.P5161083033886200186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A014457 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014456.P5161083033886200186

/-! ## A014456.P6911540478165386483

`eq[A000007(n), A036987(A014457(n))]`
-/

namespace A014456.P6911540478165386483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A014457 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014456.P6911540478165386483

/-! ## A014456.P6824550307780702353

`eq[A057427(n), A178226(A014457(n))]`
-/

namespace A014456.P6824550307780702353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A014457 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014456.P6824550307780702353

/-! ## A014456.P15838551780950982442

`record[A087734(n%A053347(A014457(n)))]`
-/

namespace A014456.P15838551780950982442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (Int.tmod (n : ℤ) (A053347 (A014457 n).toNat)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014456.P15838551780950982442

/-! ## A014456.P7684089088994269691

`eq[1, A002828(A014457(n)²)]`
-/

namespace A014456.P7684089088994269691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A014457 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014456.P7684089088994269691

/-! ## A014456.P792385979274520190

`eq[1, A089309(A014457(n)²)]`
-/

namespace A014456.P792385979274520190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A014457 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014456.P792385979274520190

/-!
# A014457: Theta series of quadratic form (or lattice) with Gram matrix [ 2, 1, 0; 1, 3, 1; 0, 1, 2 ].

The programs for A014457, there is no canonical definition to state claims against.
-/

/-! ## A014457.P15281006836362169173

`(A083703(n)+A014455(n))/2`
-/

namespace A014457.P15281006836362169173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083703 n + A014455 n : ℚ) / 2

end

end A014457.P15281006836362169173

/-! ## A014457.P6418018896469843700

`A001281(A083703(n)+A014455(n))`
-/

namespace A014457.P6418018896469843700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A083703 n + A014455 n).toNat

end

end A014457.P6418018896469843700

/-! ## A014457.P9517655399371596588

`A004525(A083703(n)+A014455(n))`
-/

namespace A014457.P9517655399371596588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A083703 n + A014455 n).toNat

end

end A014457.P9517655399371596588

/-! ## A014457.P12728704513839040273

`A004526(A083703(n)+A014455(n))`
-/

namespace A014457.P12728704513839040273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A083703 n + A014455 n).toNat

end

end A014457.P12728704513839040273

/-! ## A014457.P11199590127470431162

`A025480(A083703(n)+A014455(n))`
-/

namespace A014457.P11199590127470431162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A083703 n + A014455 n).toNat

end

end A014457.P11199590127470431162

/-! ## A014457.P10374083800653265453

`A026741(A083703(n)+A014455(n))`
-/

namespace A014457.P10374083800653265453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A083703 n + A014455 n).toNat

end

end A014457.P10374083800653265453

/-! ## A014457.P2471423656548858811

`A038572(A083703(n)+A014455(n))`
-/

namespace A014457.P2471423656548858811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A083703 n + A014455 n).toNat

end

end A014457.P2471423656548858811

/-! ## A014457.P16718210277528273811

`A064680(A083703(n)+A014455(n))`
-/

namespace A014457.P16718210277528273811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A083703 n + A014455 n).toNat

end

end A014457.P16718210277528273811

/-! ## A014457.P8673340962150079876

`A142150(A083703(n)+A014455(n))`
-/

namespace A014457.P8673340962150079876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A083703 n + A014455 n).toNat

end

end A014457.P8673340962150079876

/-! ## A014457.P15530561279658450392

`A014455(n)-A004526(A014455(n)-A083703(n))`
-/

namespace A014457.P15530561279658450392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 n - A004526 (A014455 n - A083703 n).toNat

end

end A014457.P15530561279658450392

/-! ## A014457.P3124669510403312717

`A014455(n)-A026741(A014455(n)-A083703(n))`
-/

namespace A014457.P3124669510403312717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 n - A026741 (A014455 n - A083703 n).toNat

end

end A014457.P3124669510403312717

/-!
# A014458: Theta series of quadratic form with Gram matrix [ 2, 1, 0; 1, 4, 1; 0, 1, 2 ].

The programs for A014458, there is no canonical definition to state claims against.
-/

/-! ## A014458.P7912170385627046206

`A034933(2*n)`
-/

namespace A014458.P7912170385627046206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034933 (2 * n)

end

end A014458.P7912170385627046206

/-! ## A014458.P14194673307082492746

`A034933(A005843(n))%A126587(n+1)`
-/

namespace A014458.P14194673307082492746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034933 (A005843 n).toNat) (A126587 (n + 1))

end

end A014458.P14194673307082492746

/-! ## A014458.P16768955059931662171

`A224821(2*n)`
-/

namespace A014458.P16768955059931662171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224821 (2 * n)

end

end A014458.P16768955059931662171

/-! ## A014458.P17866007081952553508

`A028967(3*n)`
-/

namespace A014458.P17866007081952553508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (3 * n)

end

end A014458.P17866007081952553508

/-! ## A014458.P8747940480750313873

`A224822(6*n)`
-/

namespace A014458.P8747940480750313873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (6 * n)

end

end A014458.P8747940480750313873

/-! ## A014458.P11219734278554985968

`A246927(6*n)`
-/

namespace A014458.P11219734278554985968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 (6 * n)

end

end A014458.P11219734278554985968

/-! ## A014458.P16614993712524346098

`A246928(6*n)`
-/

namespace A014458.P16614993712524346098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (6 * n)

end

end A014458.P16614993712524346098

/-! ## A014458.P13418282096930442089

`A033721(3*6*n)`
-/

namespace A014458.P13418282096930442089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (3 * (6 * n))

end

end A014458.P13418282096930442089

/-! ## A014458.P16559856472656602471

`A329955(3*6*n)`
-/

namespace A014458.P16559856472656602471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329955 (3 * (6 * n))

end

end A014458.P16559856472656602471

/-! ## A014458.P10130655585218970661

`A028702(A044102(2*n))`
-/

namespace A014458.P10130655585218970661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (A044102 (2 * n)).toNat

end

end A014458.P10130655585218970661

/-! ## A014458.P12762809363809604108

`A028702(A008606(2*n)+A008606(n))`
-/

namespace A014458.P12762809363809604108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (A008606 (2 * n) + A008606 n).toNat

end

end A014458.P12762809363809604108

/-!
# A014459: Odd numbers in the triangle of Eulerian numbers.

The programs for A014459, there is no canonical definition to state claims against.
-/

/-! ## A014459.P3403188992678739431

`A008292(A268231(n+1)+1)`
-/

namespace A014459.P3403188992678739431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A268231 (n + 1) + 1).toNat

end

end A014459.P3403188992678739431

/-! ## A014459.P12635058664321011578

`A008292(eq[1, A047999(n)]+1)`
-/

namespace A014459.P12635058664321011578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014459.P12635058664321011578

/-! ## A014459.P1990752312842963950

`A008292(record[(n+1)*A047999(n)])`
-/

namespace A014459.P1990752312842963950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014459.P1990752312842963950

/-! ## A014459.P5300250077477704317

`A008292(eq[1, gcd(2, A007318(n))]+1)`
-/

namespace A014459.P5300250077477704317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A014459.P5300250077477704317

/-! ## A014459.P5147431046550012320

`A008292(eq[1, and(1, A007318(n))]+1)`
-/

namespace A014459.P5147431046550012320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014459.P5147431046550012320

/-! ## A014459.P7784591743774770518

`A008292(eq[1, A008292(n+1)%2]+1)`
-/

namespace A014459.P7784591743774770518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008292 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014459.P7784591743774770518

/-! ## A014459.P13539966238115763901

`sqrt(A014734(n+1))`
-/

namespace A014459.P13539966238115763901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014734 (n + 1) : ℝ)

end

end A014459.P13539966238115763901

/-!
# A014460: Inverse of 451st cyclotomic polynomial.

The programs for A014460, there is no canonical definition to state claims against.
-/

/-! ## A014460.P2625233621991931768

`A014911(n)*A033999(n)`
-/

namespace A014460.P2625233621991931768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014911 n * A033999 n

end

end A014460.P2625233621991931768

/-!
# A014461: Odd numbers in the triangle of Eulerian numbers that are not 1.

The programs for A014461, there is no canonical definition to state claims against.
-/

/-! ## A014461.P5744230117709901210

`A014459(lt[1, A014459(n+1)]+1)`
-/

namespace A014461.P5744230117709901210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A014461.P5744230117709901210

/-! ## A014461.P6127083139522098254

`A008292(eq[A004198(n), A103451(n)]+1)`
-/

namespace A014461.P6127083139522098254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A014461.P6127083139522098254

/-! ## A014461.P6268792852697188066

`A014459(comp[1-A014459(n+1)+n]+1)`
-/

namespace A014461.P6268792852697188066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014459 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A014461.P6268792852697188066

/-! ## A014461.P10440978038725306496

`sqrt(A014735(n+1))`
-/

namespace A014461.P10440978038725306496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014735 (n + 1) : ℝ)

end

end A014461.P10440978038725306496

/-! ## A014461.P13163673716662857252

`root(A014735(n+1), A040063(2*n+1))`
-/

namespace A014461.P13163673716662857252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014735 (n + 1) : ℝ) ^ (1 / (A040063 (2 * n + 1) : ℝ))

end

end A014461.P13163673716662857252

/-! ## A014461.P8044783010746472945

`root(A014735(n+1), A014710((n+1)²))`
-/

namespace A014461.P8044783010746472945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014735 (n + 1) : ℝ) ^ (1 / (A014710 ((n + 1) ^ 2) : ℝ))

end

end A014461.P8044783010746472945

/-!
# A014462: Triangular array formed from elements to left of middle of Pascal's triangle.

The programs for A014462, the canonical program `A014462.P14691259310245244798` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014462 has offset 1).

The definition of A014462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014462.P5176196325700913867

`A008314(comp[n²-1])`
-/

namespace A014462.P5176196325700913867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014462.P5176196325700913867

namespace A014462

/-- `A008314(comp[n²-1])` -/
def P5176196325700913867.Spec : Prop :=
  ∀ n, P5176196325700913867.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P9577098766810077721

`A029610(n)-A029644(n)`
-/

namespace A014462.P9577098766810077721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029610 n - A029644 n

end

end A014462.P9577098766810077721

namespace A014462

/-- `A029610(n)-A029644(n)` -/
def P9577098766810077721.Spec : Prop :=
  ∀ n, P9577098766810077721.a n = A014462 (n + 1)

theorem P9577098766810077721.correct : P9577098766810077721.Spec := by
  intro n
  simp only [A014462, Nat.add_sub_cancel, A014462.P9577098766810077721.a, A014462.P14691259310245244798.a, A000267, A000267.P8737011026442136894.a, A029610, A029610.P915263053335155690.a, A029644, A029644.P14451125049666601969.a, A055087, A055087.P17964067358640094815.a, A008315, A008315.P15103667333557069867.a, A029628, A029628.P6623095559692305680.a, A034868, A034868.P12965043593595847904.a, A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014462

/-! ## A014462.P15080958296424387280

`A029628(n)-A029662(n)`
-/

namespace A014462.P15080958296424387280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 n - A029662 n

end

end A014462.P15080958296424387280

namespace A014462

/-- `A029628(n)-A029662(n)` -/
def P15080958296424387280.Spec : Prop :=
  ∀ n, P15080958296424387280.a n = A014462 (n + 1)

theorem P15080958296424387280.correct : P15080958296424387280.Spec := by
  intro n
  simp only [A014462, Nat.add_sub_cancel, A014462.P15080958296424387280.a, A014462.P14691259310245244798.a, A000267, A000267.P8737011026442136894.a, A029628, A029628.P6623095559692305680.a, A029662, A029662.P6655327354340354651.a, A055087, A055087.P17964067358640094815.a, A008315, A008315.P15103667333557069867.a, A029644, A029644.P14451125049666601969.a, A034868, A034868.P12965043593595847904.a, A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014462

/-! ## A014462.P16917739535227029409

`A029662(n)-A034868(n)`
-/

namespace A014462.P16917739535227029409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 n - A034868 n

end

end A014462.P16917739535227029409

namespace A014462

/-- `A029662(n)-A034868(n)` -/
def P16917739535227029409.Spec : Prop :=
  ∀ n, P16917739535227029409.a n = A014462 (n + 1)

theorem P16917739535227029409.correct : P16917739535227029409.Spec := by
  intro n
  simp only [A014462, Nat.add_sub_cancel, A014462.P16917739535227029409.a, A014462.P14691259310245244798.a, A000267, A000267.P8737011026442136894.a, A029662, A029662.P6655327354340354651.a, A034868, A034868.P12965043593595847904.a, A055087, A055087.P17964067358640094815.a, A008315, A008315.P15103667333557069867.a, A029644, A029644.P14451125049666601969.a, A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014462

/-! ## A014462.P14691259310245244798

`C(A000267(n), A055087(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014462

/-- `C(A000267(n), A055087(n))` -/
def P14691259310245244798.Spec : Prop :=
  ∀ n, (P14691259310245244798.a n : ℤ) = A014462 (n + 1)

theorem P14691259310245244798.correct : P14691259310245244798.Spec := by
  intro n
  simp only [A014462, Nat.add_sub_cancel]

end A014462

/-! ## A014462.P243889563543516254

`2*A034868(n)-A008315(n)`
-/

namespace A014462.P243889563543516254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034868 n - A008315 n

end

end A014462.P243889563543516254

namespace A014462

/-- `2*A034868(n)-A008315(n)` -/
def P243889563543516254.Spec : Prop :=
  ∀ n, P243889563543516254.a n = A014462 (n + 1)

theorem P243889563543516254.correct : P243889563543516254.Spec := by
  intro n
  simp only [A014462, Nat.add_sub_cancel, A014462.P243889563543516254.a, A014462.P14691259310245244798.a, A000267, A000267.P8737011026442136894.a, A008315, A008315.P15103667333557069867.a, A034868, A034868.P12965043593595847904.a, A055087, A055087.P17964067358640094815.a, A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014462

/-! ## A014462.P3294662674426738805

`(A034868(n)+A029644(n))/2`
-/

namespace A014462.P3294662674426738805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034868 n + A029644 n : ℚ) / 2

end

end A014462.P3294662674426738805

namespace A014462

/-- `(A034868(n)+A029644(n))/2` -/
def P3294662674426738805.Spec : Prop :=
  ∀ n, P3294662674426738805.a n = (A014462 (n + 1) : ℚ)

theorem P3294662674426738805.correct : P3294662674426738805.Spec := by
  intro n
  simp only [A014462, Nat.add_sub_cancel, A014462.P3294662674426738805.a, A014462.P14691259310245244798.a, A000267, A000267.P8737011026442136894.a, A029644, A029644.P14451125049666601969.a, A034868, A034868.P12965043593595847904.a, A055087, A055087.P17964067358640094815.a, A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014462

/-! ## A014462.P8517911414203528116

`C(A055086(n)+1, A055087(n))`
-/

namespace A014462.P8517911414203528116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055086 n + 1).toNat (A055087 n).toNat

end

end A014462.P8517911414203528116

namespace A014462

/-- `C(A055086(n)+1, A055087(n))` -/
def P8517911414203528116.Spec : Prop :=
  ∀ n, (P8517911414203528116.a n : ℤ) = A014462 (n + 1)

end A014462

/-! ## A014462.P542412899773291052

`A034868(A000037(n+1)-1)`
-/

namespace A014462.P542412899773291052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (A000037 (n + 1) - 1).toNat

end

end A014462.P542412899773291052

namespace A014462

/-- `A034868(A000037(n+1)-1)` -/
def P542412899773291052.Spec : Prop :=
  ∀ n, P542412899773291052.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P15705446279364221879

`A034868(A000194(n+1)+n)`
-/

namespace A014462.P15705446279364221879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (A000194 (n + 1) + (n : ℤ)).toNat

end

end A014462.P15705446279364221879

namespace A014462

/-- `A034868(A000194(n+1)+n)` -/
def P15705446279364221879.Spec : Prop :=
  ∀ n, P15705446279364221879.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P302030728885611727

`A074909(lt[A074909(n), 2*A007318(n)])`
-/

namespace A014462.P302030728885611727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014462.P302030728885611727

namespace A014462

/-- `A074909(lt[A074909(n), 2*A007318(n)])` -/
def P302030728885611727.Spec : Prop :=
  ∀ n, P302030728885611727.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P4755200729544247152

`A074909(lt[A074909(n)/2, A007318(n)])`
-/

namespace A014462.P4755200729544247152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A014462.P4755200729544247152

namespace A014462

/-- `A074909(lt[A074909(n)/2, A007318(n)])` -/
def P4755200729544247152.Spec : Prop :=
  ∀ n, P4755200729544247152.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P14810080234052365940

`A178300(A056536(n+1))`
-/

namespace A014462.P14810080234052365940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (A056536 (n + 1)).toNat

end

end A014462.P14810080234052365940

namespace A014462

/-- `A178300(A056536(n+1))` -/
def P14810080234052365940.Spec : Prop :=
  ∀ n, P14810080234052365940.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P13528200235782623877

`A007318(lt[n+1, A038722(n+1)])`
-/

namespace A014462.P13528200235782623877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014462.P13528200235782623877

namespace A014462

/-- `A007318(lt[n+1, A038722(n+1)])` -/
def P13528200235782623877.Spec : Prop :=
  ∀ n, P13528200235782623877.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P10340425205400286092

`A007318(eq[n+1, (n+1)%A038722(n+1)])`
-/

namespace A014462.P10340425205400286092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A038722 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014462.P10340425205400286092

namespace A014462

/-- `A007318(eq[n+1, (n+1)%A038722(n+1)])` -/
def P10340425205400286092.Spec : Prop :=
  ∀ n, P10340425205400286092.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P10493031962087679823

`A007318(lt[A074909(n), A074909(n+1)])`
-/

namespace A014462.P10493031962087679823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014462.P10493031962087679823

namespace A014462

/-- `A007318(lt[A074909(n), A074909(n+1)])` -/
def P10493031962087679823.Spec : Prop :=
  ∀ n, P10493031962087679823.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P4029901168941180513

`A007318(eq[0, A098158(n)])`
-/

namespace A014462.P4029901168941180513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014462.P4029901168941180513

namespace A014462

/-- `A007318(eq[0, A098158(n)])` -/
def P4029901168941180513.Spec : Prop :=
  ∀ n, P4029901168941180513.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P16722261889575903486

`A007318(eq[0, A109466(n)])`
-/

namespace A014462.P16722261889575903486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014462.P16722261889575903486

namespace A014462

/-- `A007318(eq[0, A109466(n)])` -/
def P16722261889575903486.Spec : Prop :=
  ∀ n, P16722261889575903486.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P13860989211796557429

`A007318(eq[0, A207543(n)])`
-/

namespace A014462.P13860989211796557429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014462.P13860989211796557429

namespace A014462

/-- `A007318(eq[0, A207543(n)])` -/
def P13860989211796557429.Spec : Prop :=
  ∀ n, P13860989211796557429.a n = A014462 (n + 1)

end A014462

/-! ## A014462.P11432951472121190368

`A007318(lt[A026729(n), 1])`
-/

namespace A014462.P11432951472121190368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014462.P11432951472121190368

namespace A014462

/-- `A007318(lt[A026729(n), 1])` -/
def P11432951472121190368.Spec : Prop :=
  ∀ n, P11432951472121190368.a n = A014462 (n + 1)

end A014462

/-!
# A014463: Triangular array formed from elements to left of middle of rows of Pascal's triangle that are not 1.

The programs for A014463, the canonical program `A014463.P9700480387867443290` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014463 has offset 1).

The definition of A014463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014463.P9700480387867443290

`A014462(A080037(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014463

/-- `A014462(A080037(n+1))` -/
def P9700480387867443290.Spec : Prop :=
  ∀ n, P9700480387867443290.a n = A014463 (n + 1)

theorem P9700480387867443290.correct : P9700480387867443290.Spec := by
  intro n
  simp only [A014463, Nat.add_sub_cancel]

end A014463

/-! ## A014463.P7795207146723671153

`A029611(n)-A029645(n)`
-/

namespace A014463.P7795207146723671153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 n - A029645 n

end

end A014463.P7795207146723671153

namespace A014463

/-- `A029611(n)-A029645(n)` -/
def P7795207146723671153.Spec : Prop :=
  ∀ n, P7795207146723671153.a n = A014463 (n + 1)

theorem P7795207146723671153.correct : P7795207146723671153.Spec := by
  intro n
  simp only [A014463, Nat.add_sub_cancel, A014463.P7795207146723671153.a, A014463.P9700480387867443290.a, A014462, A014462.P14691259310245244798.a, A029611, A029611.P2146311653280549813.a, A029645, A029645.P11204956944610452439.a, A080037, A080037.P7803047585790766488.a, A000267, A000267.P8737011026442136894.a, A029610, A029610.P915263053335155690.a, A049068, A049068.P6609318107156725997.a, A055087, A055087.P17964067358640094815.a, A240025, A240025.P6086676864116806394.a, A000007, A000007.P6599383543502402472.a, A000037, A000037.P3199287792184117507.a, A008315, A008315.P15103667333557069867.a, A029628, A029628.P6623095559692305680.a, A034868, A034868.P12965043593595847904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014463

/-! ## A014463.P9853175633051546295

`A029629(n)-A029667(n)`
-/

namespace A014463.P9853175633051546295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029629 n - A029667 n

end

end A014463.P9853175633051546295

namespace A014463

/-- `A029629(n)-A029667(n)` -/
def P9853175633051546295.Spec : Prop :=
  ∀ n, P9853175633051546295.a n = A014463 (n + 1)

theorem P9853175633051546295.correct : P9853175633051546295.Spec := by
  intro n
  simp only [A014463, Nat.add_sub_cancel, A014463.P9853175633051546295.a, A014463.P9700480387867443290.a, A014462, A014462.P14691259310245244798.a, A029629, A029629.P6084514030674874401.a, A029667, A029667.P12356662964523118376.a, A080037, A080037.P7803047585790766488.a, A000267, A000267.P8737011026442136894.a, A029628, A029628.P6623095559692305680.a, A049068, A049068.P6609318107156725997.a, A055087, A055087.P17964067358640094815.a, A240025, A240025.P6086676864116806394.a, A000007, A000007.P6599383543502402472.a, A000037, A000037.P3199287792184117507.a, A034868, A034868.P12965043593595847904.a, A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014463

/-! ## A014463.P17576789038919254150

`A008314(A161827(n+1))`
-/

namespace A014463.P17576789038919254150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A161827 (n + 1)).toNat

end

end A014463.P17576789038919254150

namespace A014463

/-- `A008314(A161827(n+1))` -/
def P17576789038919254150.Spec : Prop :=
  ∀ n, P17576789038919254150.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P17689467261338465432

`A008314(A000037(A000037(A000037(n+1))))`
-/

namespace A014463.P17689467261338465432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 (A000037 (A000037 (A000037 (n + 1)).toNat).toNat).toNat

end

end A014463.P17689467261338465432

namespace A014463

/-- `A008314(A000037(A000037(A000037(n+1))))` -/
def P17689467261338465432.Spec : Prop :=
  ∀ n, P17689467261338465432.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P16785860692338699158

`A257241(A049068(n+1))`
-/

namespace A014463.P16785860692338699158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257241 (A049068 (n + 1)).toNat

end

end A014463.P16785860692338699158

namespace A014463

/-- `A257241(A049068(n+1))` -/
def P16785860692338699158.Spec : Prop :=
  ∀ n, P16785860692338699158.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P17330884479502467234

`A257241(A183866(n+2))`
-/

namespace A014463.P17330884479502467234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257241 (A183866 (n + 2)).toNat

end

end A014463.P17330884479502467234

namespace A014463

/-- `A257241(A183866(n+2))` -/
def P17330884479502467234.Spec : Prop :=
  ∀ n, P17330884479502467234.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P16087034236167379258

`A007318(eq[0, A100218(n)])`
-/

namespace A014463.P16087034236167379258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014463.P16087034236167379258

namespace A014463

/-- `A007318(eq[0, A100218(n)])` -/
def P16087034236167379258.Spec : Prop :=
  ∀ n, P16087034236167379258.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P14999298714305229401

`A007318(lt[1, A052553(n)])`
-/

namespace A014463.P14999298714305229401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014463.P14999298714305229401

namespace A014463

/-- `A007318(lt[1, A052553(n)])` -/
def P14999298714305229401.Spec : Prop :=
  ∀ n, P14999298714305229401.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P8922195030331876722

`A007318(lt[1, A202023(n)])`
-/

namespace A014463.P8922195030331876722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014463.P8922195030331876722

namespace A014463

/-- `A007318(lt[1, A202023(n)])` -/
def P8922195030331876722.Spec : Prop :=
  ∀ n, P8922195030331876722.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P9372358512178068571

`A007318(lt[1, A238341(n)])`
-/

namespace A014463.P9372358512178068571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014463.P9372358512178068571

namespace A014463

/-- `A007318(lt[1, A238341(n)])` -/
def P9372358512178068571.Spec : Prop :=
  ∀ n, P9372358512178068571.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P10445325205016359723

`A007318(lt[1, A077029(n+1)])`
-/

namespace A014463.P10445325205016359723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014463.P10445325205016359723

namespace A014463

/-- `A007318(lt[1, A077029(n+1)])` -/
def P10445325205016359723.Spec : Prop :=
  ∀ n, P10445325205016359723.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P5842404610164524192

`A007318(lt[1, A244454(n+1)])`
-/

namespace A014463.P5842404610164524192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014463.P5842404610164524192

namespace A014463

/-- `A007318(lt[1, A244454(n+1)])` -/
def P5842404610164524192.Spec : Prop :=
  ∀ n, P5842404610164524192.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P12191754875074987223

`A007318(lt[A047071(n), A047010(n)])`
-/

namespace A014463.P12191754875074987223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014463.P12191754875074987223

namespace A014463

/-- `A007318(lt[A047071(n), A047010(n)])` -/
def P12191754875074987223.Spec : Prop :=
  ∀ n, P12191754875074987223.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P4337093733984782594

`A007318(eq[0, A145460(n)])`
-/

namespace A014463.P4337093733984782594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014463.P4337093733984782594

namespace A014463

/-- `A007318(eq[0, A145460(n)])` -/
def P4337093733984782594.Spec : Prop :=
  ∀ n, P4337093733984782594.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P15928976862258744688

`A007318(eq[0, A292948(n)])`
-/

namespace A014463.P15928976862258744688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014463.P15928976862258744688

namespace A014463

/-- `A007318(eq[0, A292948(n)])` -/
def P15928976862258744688.Spec : Prop :=
  ∀ n, P15928976862258744688.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P5582080974084188761

`A007318(lt[A145460(n), 1])`
-/

namespace A014463.P5582080974084188761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014463.P5582080974084188761

namespace A014463

/-- `A007318(lt[A145460(n), 1])` -/
def P5582080974084188761.Spec : Prop :=
  ∀ n, P5582080974084188761.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P7056153098619249369

`A007318(eq[0, A292973(n)])`
-/

namespace A014463.P7056153098619249369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014463.P7056153098619249369

namespace A014463

/-- `A007318(eq[0, A292973(n)])` -/
def P7056153098619249369.Spec : Prop :=
  ∀ n, P7056153098619249369.a n = A014463 (n + 1)

end A014463

/-! ## A014463.P14913743033760312727

`A007318(eq[0, A292978(n)])`
-/

namespace A014463.P14913743033760312727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014463.P14913743033760312727

namespace A014463

/-- `A007318(eq[0, A292978(n)])` -/
def P14913743033760312727.Spec : Prop :=
  ∀ n, P14913743033760312727.a n = A014463 (n + 1)

end A014463

/-!
# A014464: Inverse of 455th cyclotomic polynomial.

The programs for A014464, there is no canonical definition to state claims against.
-/

/-! ## A014464.P9399083930602511698

`A014919(n)*A033999(n)`
-/

namespace A014464.P9399083930602511698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014919 n * A033999 n

end

end A014464.P9399083930602511698

/-!
# A014465: A063691 without zeros.

The programs for A014465, there is no canonical definition to state claims against.
-/

/-! ## A014465.P2804582479034394251

`A063691(A000408(n+1))`
-/

namespace A014465.P2804582479034394251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A000408 (n + 1)).toNat

end

end A014465.P2804582479034394251

/-! ## A014465.P7093200604219456865

`A063691(lt[0, A063691(n)])`
-/

namespace A014465.P7093200604219456865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014465.P7093200604219456865

/-! ## A014465.P9177918166881586691

`A063691(eq[n+1, (n+1)%(A063691(n)+1+n)])`
-/

namespace A014465.P9177918166881586691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A063691 n + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014465.P9177918166881586691

/-! ## A014465.P8366332226262221658

`A063691(eq[0, A000007(A063691(n))])`
-/

namespace A014465.P8366332226262221658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A063691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014465.P8366332226262221658

/-! ## A014465.P1718454319477136724

`A063691(eq[1, A057427(A063691(n))])`
-/

namespace A014465.P1718454319477136724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A063691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014465.P1718454319477136724

/-!
# A014466: Dedekind numbers: monotone Boolean functions, or nonempty antichains of subsets of an n-set.

The programs for A014466, there is no canonical definition to state claims against.
-/

/-! ## A014466.P2249485712562916269

`A007153(n)+1`
-/

namespace A014466.P2249485712562916269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 n + 1

end

end A014466.P2249485712562916269

/-! ## A014466.P15891063705791339819

`A000372(n)-1`
-/

namespace A014466.P15891063705791339819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n - 1

end

end A014466.P15891063705791339819

/-! ## A014466.P8799871801309783394

`A321800(n)+A000372(n)`
-/

namespace A014466.P8799871801309783394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A000372 n

end

end A014466.P8799871801309783394

/-! ## A014466.P12504308154559450324

`∑{digits}[A045918(n), A007153(#)]`
-/

namespace A014466.P12504308154559450324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007153 x).sum

end

end A014466.P12504308154559450324

/-! ## A014466.P13067309882633927260

`A057428(n+1)+A000372(n)`
-/

namespace A014466.P13067309882633927260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000372 n

end

end A014466.P13067309882633927260

/-!
# A014467: Triangular array formed from elements to right of middle of rows of the triangle of Eulerian numbers.

The programs for A014467, there is no canonical definition to state claims against.
-/

/-! ## A014467.P12674782755525293488

`A008292(A274428(n+1))`
-/

namespace A014467.P12674782755525293488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A274428 (n + 1)).toNat

end

end A014467.P12674782755525293488

/-! ## A014467.P11507969253507394775

`A123125(eq[0, A169803(n)])`
-/

namespace A014467.P11507969253507394775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014467.P11507969253507394775

/-! ## A014467.P497143651892829467

`A008292(comp[A245300(n)]+1)`
-/

namespace A014467.P497143651892829467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A014467.P497143651892829467

/-! ## A014467.P8131965895349565338

`A008292(eq[0, A052553(n)]+1)`
-/

namespace A014467.P8131965895349565338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A014467.P8131965895349565338

/-! ## A014467.P2818827602146865926

`A173018(eq[0, A026794(n+1)])`
-/

namespace A014467.P2818827602146865926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014467.P2818827602146865926

/-! ## A014467.P14047541046658892015

`A173018(eq[0, A079308(n+1)])`
-/

namespace A014467.P14047541046658892015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014467.P14047541046658892015

/-! ## A014467.P4744705367520436892

`A008292(lt[A061579(n), n]+1)`
-/

namespace A014467.P4744705367520436892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A014467.P4744705367520436892

/-! ## A014467.P7533087076886386151

`A173018(lt[A293024(n), A145460(n)])`
-/

namespace A014467.P7533087076886386151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014467.P7533087076886386151

/-! ## A014467.P18377438653589714003

`A173018(lt[A007318(n+1), A007318(n)])`
-/

namespace A014467.P18377438653589714003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014467.P18377438653589714003

/-! ## A014467.P7890998305566481789

`A173018(lt[A130321(n+1), A059268(n)])`
-/

namespace A014467.P7890998305566481789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014467.P7890998305566481789

/-! ## A014467.P7367793273404668533

`A173018(lt[A173018(n+1), A123125(n)])`
-/

namespace A014467.P7367793273404668533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014467.P7367793273404668533

/-! ## A014467.P10594207610793573736

`A173018(lt[A122935(n+2), A122935(n)])`
-/

namespace A014467.P10594207610793573736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014467.P10594207610793573736

/-! ## A014467.P14914125774411729766

`A123125(lt[2*A007318(n), A074909(n)])`
-/

namespace A014467.P14914125774411729766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014467.P14914125774411729766

/-! ## A014467.P15362854186644822174

`A173018(lt[2, A029635(n)*A107131(n)])`
-/

namespace A014467.P15362854186644822174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n * A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014467.P15362854186644822174

/-! ## A014467.P1685330118860538538

`A123125(lt[2, A074909(n)/A007318(n)])`
-/

namespace A014467.P1685330118860538538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A014467.P1685330118860538538

/-! ## A014467.P12251310644712313935

`A173018(lt[2/A029635(n), A107131(n)])`
-/

namespace A014467.P12251310644712313935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A029635 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A014467.P12251310644712313935

/-! ## A014467.P1883296638560014168

`A123125(lt[A122935(n+2), A122935(n)]+1)`
-/

namespace A014467.P1883296638560014168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A014467.P1883296638560014168

/-! ## A014467.P11251212747210911259

`A123125(eq[0, A182062(n)])`
-/

namespace A014467.P11251212747210911259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014467.P11251212747210911259

/-! ## A014467.P4597316302523094466

`A173018(lt[n, A107131(n)²²])`
-/

namespace A014467.P4597316302523094466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107131 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014467.P4597316302523094466

/-! ## A014467.P11129251107631601903

`sqrt(A014748(n))`
-/

namespace A014467.P11129251107631601903
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014748 n : ℝ)

end

end A014467.P11129251107631601903

/-!
# A014468: Triangular array formed from elements to right of middle of rows of the triangle of Eulerian numbers that are greater than 1.

The programs for A014468, there is no canonical definition to state claims against.
-/

/-! ## A014468.P6043171638105082105

`A014467(A049068(n+1))`
-/

namespace A014468.P6043171638105082105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (A049068 (n + 1)).toNat

end

end A014468.P6043171638105082105

/-! ## A014468.P14729897426396720024

`A014449(A274428(n+1))`
-/

namespace A014468.P14729897426396720024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014449 (A274428 (n + 1)).toNat

end

end A014468.P14729897426396720024

/-! ## A014468.P10488996839984405091

`A014467(lt[1, A014462(n+1)])`
-/

namespace A014468.P10488996839984405091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014468.P10488996839984405091

/-! ## A014468.P11278960051173303055

`A008292(lt[1, A212363(n)]+1)`
-/

namespace A014468.P11278960051173303055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A014468.P11278960051173303055

/-! ## A014468.P6216196491093943102

`A008292(lt[A061579(n)+2, n])`
-/

namespace A014468.P6216196491093943102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014468.P6216196491093943102

/-! ## A014468.P4826016550036656076

`A008292(lt[2, n-A061579(n)])`
-/

namespace A014468.P4826016550036656076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014468.P4826016550036656076

/-! ## A014468.P16967423289229175019

`A014467(lt[1, A014467(n+1)]+1)`
-/

namespace A014468.P16967423289229175019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A014468.P16967423289229175019

/-! ## A014468.P7133298977810302656

`A123125(eq[A079308(n+1)², A169803(n)])`
-/

namespace A014468.P7133298977810302656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014468.P7133298977810302656

/-! ## A014468.P11432875726701036086

`A173018(eq[A026794(n+1), A079308(n+2)])`
-/

namespace A014468.P11432875726701036086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014468.P11432875726701036086

/-! ## A014468.P13880559284965318125

`A173018(eq[A079308(n+1), A079308(n+2)])`
-/

namespace A014468.P13880559284965318125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014468.P13880559284965318125

/-! ## A014468.P4356942544037653778

`A123125(eq[n*A079308(n+1), A169803(n)])`
-/

namespace A014468.P4356942544037653778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A079308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014468.P4356942544037653778

/-! ## A014468.P16069878793488130614

`A123125(eq[A079308(n+1), A182062(n)])`
-/

namespace A014468.P16069878793488130614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014468.P16069878793488130614

/-! ## A014468.P17453007792874098738

`sqrt(A014749(n+1))`
-/

namespace A014468.P17453007792874098738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014749 (n + 1) : ℝ)

end

end A014468.P17453007792874098738

/-!
# A014469: Triangular array formed from odd elements to right of middle of rows of the triangle of Eulerian numbers (A008292).

The programs for A014469, there is no canonical definition to state claims against.
-/

/-! ## A014469.P12774709316026686273

`sqrt(A014756(n+1))`
-/

namespace A014469.P12774709316026686273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014756 (n + 1) : ℝ)

end

end A014469.P12774709316026686273

/-! ## A014469.P12082706855815493908

`root(A014756(n+1), A040002(n))²`
-/

namespace A014469.P12082706855815493908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A014756 (n + 1) : ℝ) ^ (1 / (A040002 n : ℝ))) ^ 2

end

end A014469.P12082706855815493908

/-! ## A014469.P762723522036475250

`root(A014756(n+1), 2%A017510(n))`
-/

namespace A014469.P762723522036475250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014756 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017510 n) : ℝ))

end

end A014469.P762723522036475250

/-! ## A014469.P10930505073010000175

`root(A014756(n+1), gcd(2, A053214(n)))`
-/

namespace A014469.P10930505073010000175
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014756 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A053214 n) : ℝ))

end

end A014469.P10930505073010000175

/-! ## A014469.P2636370928563855207

`root(A014756(n+1), lcm(2, A020985(n)))`
-/

namespace A014469.P2636370928563855207
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014756 (n + 1) : ℝ) ^ (1 / (Int.lcm 2 (A020985 n) : ℝ))

end

end A014469.P2636370928563855207

/-! ## A014469.P17097230428834931496

`root(A014756(n+1), A001316(A001316(n)))`
-/

namespace A014469.P17097230428834931496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014756 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A014469.P17097230428834931496

/-!
# A014470: Triangular array formed from odd elements to right of middle of rows of the triangle of Eulerian numbers that are greater than 1.

The programs for A014470, there is no canonical definition to state claims against.
-/

/-! ## A014470.P4040499610518775276

`A014469(lt[1, A014469(n+1)]+1)`
-/

namespace A014470.P4040499610518775276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A014470.P4040499610518775276

/-! ## A014470.P13291102731891615624

`sqrt(A014758(n+1))`
-/

namespace A014470.P13291102731891615624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014758 (n + 1) : ℝ)

end

end A014470.P13291102731891615624

/-! ## A014470.P543009098707998074

`root(A014758(n+1), 2%A052034(n+1))`
-/

namespace A014470.P543009098707998074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014758 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A052034 (n + 1)) : ℝ))

end

end A014470.P543009098707998074

/-! ## A014470.P268171831620759577

`A014758(n+1)^(2^(A191115(n+2)%2)/2)`
-/

namespace A014470.P268171831620759577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014758 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (Int.tmod (A191115 (n + 2)) 2 : ℤ) / 2 : ℝ)

end

end A014470.P268171831620759577

/-! ## A014470.P16676532324628959267

`root(A014758(n+1), A001316(A001316(n)))`
-/

namespace A014470.P16676532324628959267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014758 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A014470.P16676532324628959267

/-!
# A014471: Inverse of 462nd cyclotomic polynomial.

The programs for A014471, there is no canonical definition to state claims against.
-/

/-! ## A014471.P16250584968101521230

`A014240(n)*A033999(n)`
-/

namespace A014471.P16250584968101521230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014240 n * A033999 n

end

end A014471.P16250584968101521230

/-!
# A014472: Triangular array formed from even elements to right of middle of rows of the triangle of Eulerian numbers.

The programs for A014472, there is no canonical definition to state claims against.
-/

/-! ## A014472.P11729786078185913259

`2*A051475(n)`
-/

namespace A014472.P11729786078185913259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051475 n

end

end A014472.P11729786078185913259

/-! ## A014472.P5886463991690452871

`A051475(A023443(n+1))+A051475(n)`
-/

namespace A014472.P5886463991690452871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051475 (A023443 (n + 1)).toNat + A051475 n

end

end A014472.P5886463991690452871

/-! ## A014472.P13717073863159221432

`2*A051474(lt[A051429(n), A051468(n)])`
-/

namespace A014472.P13717073863159221432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051474 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014472.P13717073863159221432

/-! ## A014472.P4617564667960941923

`2*A051474(lt[A051434(n), A051456(n)])`
-/

namespace A014472.P4617564667960941923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051474 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014472.P4617564667960941923

/-! ## A014472.P2100030921001598704

`lcm(A051475(n)+A051475(n), A001468(n))`
-/

namespace A014472.P2100030921001598704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051475 n + A051475 n) (A001468 n)

end

end A014472.P2100030921001598704

/-! ## A014472.P18154746056715518198

`A051475(n)/2^A008683(A006450(n+1))`
-/

namespace A014472.P18154746056715518198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) / (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A014472.P18154746056715518198

/-! ## A014472.P2857852463114893820

`A051475(A004524(n+1+n))+A051475(n)`
-/

namespace A014472.P2857852463114893820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051475 (A004524 (n + 1 + n)).toNat + A051475 n

end

end A014472.P2857852463114893820

/-! ## A014472.P17174734485683712787

`sqrt(A014759(n+1))`
-/

namespace A014472.P17174734485683712787
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014759 (n + 1) : ℝ)

end

end A014472.P17174734485683712787

/-! ## A014472.P9990103491520432397

`2*sqrt(A051477(n))`
-/

namespace A014472.P9990103491520432397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A051477 n : ℝ)

end

end A014472.P9990103491520432397

/-! ## A014472.P4289163325988079258

`A051475(n)+A051477(n)/A051475(n)`
-/

namespace A014472.P4289163325988079258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051475 n : ℚ) + (A051477 n : ℚ) / (A051475 n : ℚ)

end

end A014472.P4289163325988079258

/-! ## A014472.P15533263051919551958

`A014759(n+1)/(A051475(n)+A051475(n))`
-/

namespace A014472.P15533263051919551958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014759 (n + 1) : ℚ) / (A051475 n + A051475 n : ℚ)

end

end A014472.P15533263051919551958

/-!
# A014473: Pascal's triangle - 1: Triangle read by rows: T(n, k) = A007318(n, k) - 1.

The programs for A014473, the canonical program `A014473.P9301799580602651200` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014473 has offset 0).

The definition of A014473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014473.P9301799580602651200

`A007318(n)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A014473

/-- `A007318(n)-1` -/
def P9301799580602651200.Spec : Prop :=
  ∀ n, P9301799580602651200.a n = A014473 n

theorem P9301799580602651200.correct : P9301799580602651200.Spec := by
  intro n
  simp only [A014473]

end A014473

/-! ## A014473.P10264127831666281945

`abs(A108086(n))-1`
-/

namespace A014473.P10264127831666281945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - 1

end

end A014473.P10264127831666281945

namespace A014473

/-- `abs(A108086(n))-1` -/
def P10264127831666281945.Spec : Prop :=
  ∀ n, P10264127831666281945.a n = A014473 n

end A014473

/-! ## A014473.P17962742625217848667

`abs(A130595(n))-1`
-/

namespace A014473.P17962742625217848667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - 1

end

end A014473.P17962742625217848667

namespace A014473

/-- `abs(A130595(n))-1` -/
def P17962742625217848667.Spec : Prop :=
  ∀ n, P17962742625217848667.a n = A014473 n

end A014473

/-! ## A014473.P11000396015338212033

`sqrt(A008459(n))-1`
-/

namespace A014473.P11000396015338212033
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - 1

end

end A014473.P11000396015338212033

namespace A014473

/-- `sqrt(A008459(n))-1` -/
def P11000396015338212033.Spec : Prop :=
  ∀ n, P11000396015338212033.a n = (A014473 n : ℝ)

end A014473

/-! ## A014473.P1975250205951072894

`floor(A109128(n)/2)`
-/

namespace A014473.P1975250205951072894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109128 n : ℚ) / 2⌋

end

end A014473.P1975250205951072894

namespace A014473

/-- `floor(A109128(n)/2)` -/
def P1975250205951072894.Spec : Prop :=
  ∀ n, P1975250205951072894.a n = A014473 n

end A014473

/-! ## A014473.P372543326162669591

`Δ[A102363(n)]-1`
-/

namespace A014473.P372543326162669591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A014473.P372543326162669591

namespace A014473

/-- `Δ[A102363(n)]-1` -/
def P372543326162669591.Spec : Prop :=
  ∀ n, P372543326162669591.a n = A014473 n

end A014473

/-! ## A014473.P8185947352391832647

`floor(sinh(log(A028326(n))))`
-/

namespace A014473.P8185947352391832647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A028326 n : ℝ))⌋

end

end A014473.P8185947352391832647

namespace A014473

/-- `floor(sinh(log(A028326(n))))` -/
def P8185947352391832647.Spec : Prop :=
  ∀ n, P8185947352391832647.a n = A014473 n

end A014473

/-! ## A014473.P6306082828523625043

`(A131060(n)-1)/3`
-/

namespace A014473.P6306082828523625043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n - 1 : ℚ) / 3

end

end A014473.P6306082828523625043

namespace A014473

/-- `(A131060(n)-1)/3` -/
def P6306082828523625043.Spec : Prop :=
  ∀ n, P6306082828523625043.a n = (A014473 n : ℚ)

end A014473

/-! ## A014473.P5692035642016152170

`(A131061(n)-1)/4`
-/

namespace A014473.P5692035642016152170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131061 n - 1 : ℚ) / 4

end

end A014473.P5692035642016152170

namespace A014473

/-- `(A131061(n)-1)/4` -/
def P5692035642016152170.Spec : Prop :=
  ∀ n, P5692035642016152170.a n = (A014473 n : ℚ)

theorem P5692035642016152170.correct : P5692035642016152170.Spec := by
  intro n
  simp only [A014473, Nat.add_sub_cancel, A014473.P5692035642016152170.a, A014473.P9301799580602651200.a, A007318, A007318.P302227728145965961.a, A131061, A131061.P592121948917823822.a, A109128, A109128.P11896187039746255515.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A028326, A028326.P16610217584664895500.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014473

/-! ## A014473.P3911994574209564767

`(A131063(n)-1)/5`
-/

namespace A014473.P3911994574209564767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n - 1 : ℚ) / 5

end

end A014473.P3911994574209564767

namespace A014473

/-- `(A131063(n)-1)/5` -/
def P3911994574209564767.Spec : Prop :=
  ∀ n, P3911994574209564767.a n = (A014473 n : ℚ)

theorem P3911994574209564767.correct : P3911994574209564767.Spec := by
  intro n
  simp only [A014473, Nat.add_sub_cancel, A014473.P3911994574209564767.a, A014473.P9301799580602651200.a, A007318, A007318.P302227728145965961.a, A131063, A131063.P17257853289505011625.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014473

/-! ## A014473.P17075653350547740503

`floor(sqrt(A141596(n))/2)`
-/

namespace A014473.P17075653350547740503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A141596 n : ℝ) / 2⌋

end

end A014473.P17075653350547740503

namespace A014473

/-- `floor(sqrt(A141596(n))/2)` -/
def P17075653350547740503.Spec : Prop :=
  ∀ n, P17075653350547740503.a n = A014473 n

end A014473

/-! ## A014473.P17388411484344851748

`∑[A259525(abs(1-n))]`
-/

namespace A014473.P17388411484344851748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259525 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014473.P17388411484344851748

namespace A014473

/-- `∑[A259525(abs(1-n))]` -/
def P17388411484344851748.Spec : Prop :=
  ∀ n, P17388411484344851748.a n = A014473 n

end A014473

/-! ## A014473.P8623154460378860832

`abs(2-A173740(n))-1`
-/

namespace A014473.P8623154460378860832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173740 n| - 1

end

end A014473.P8623154460378860832

namespace A014473

/-- `abs(2-A173740(n))-1` -/
def P8623154460378860832.Spec : Prop :=
  ∀ n, P8623154460378860832.a n = A014473 n

end A014473

/-! ## A014473.P14054641691219853446

`floor((A124927(n)-1)/2)`
-/

namespace A014473.P14054641691219853446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124927 n - 1 : ℚ) / 2⌋

end

end A014473.P14054641691219853446

namespace A014473

/-- `floor((A124927(n)-1)/2)` -/
def P14054641691219853446.Spec : Prop :=
  ∀ n, P14054641691219853446.a n = A014473 n

end A014473

/-! ## A014473.P16816929314201692178

`floor((A131108(n)-1)/2)`
-/

namespace A014473.P16816929314201692178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131108 n - 1 : ℚ) / 2⌋

end

end A014473.P16816929314201692178

namespace A014473

/-- `floor((A131108(n)-1)/2)` -/
def P16816929314201692178.Spec : Prop :=
  ∀ n, P16816929314201692178.a n = A014473 n

end A014473

/-! ## A014473.P5429971974328232444

`floor((A132046(n)-1)/2)`
-/

namespace A014473.P5429971974328232444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132046 n - 1 : ℚ) / 2⌋

end

end A014473.P5429971974328232444

namespace A014473

/-- `floor((A132046(n)-1)/2)` -/
def P5429971974328232444.Spec : Prop :=
  ∀ n, P5429971974328232444.a n = A014473 n

end A014473

/-! ## A014473.P14195073006355692170

`floor((A134058(n)-1)/2)`
-/

namespace A014473.P14195073006355692170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134058 n - 1 : ℚ) / 2⌋

end

end A014473.P14195073006355692170

namespace A014473

/-- `floor((A134058(n)-1)/2)` -/
def P14195073006355692170.Spec : Prop :=
  ∀ n, P14195073006355692170.a n = A014473 n

end A014473

/-! ## A014473.P3374883839091042358

`A014430(n)-A051597(n)`
-/

namespace A014473.P3374883839091042358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n - A051597 n

end

end A014473.P3374883839091042358

namespace A014473

/-- `A014430(n)-A051597(n)` -/
def P3374883839091042358.Spec : Prop :=
  ∀ n, P3374883839091042358.a n = A014473 n

theorem P3374883839091042358.correct : P3374883839091042358.Spec := by
  intro n
  simp only [A014473, Nat.add_sub_cancel, A014473.P3374883839091042358.a, A014473.P9301799580602651200.a, A007318, A007318.P302227728145965961.a, A014430, A014430.P11701806938926061192.a, A051597, A051597.P4383731425265306086.a, A014410, A014410.P12420516935091573692.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014473

/-! ## A014473.P2385017831812356527

`A132110(n)-A059268(n)`
-/

namespace A014473.P2385017831812356527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132110 n - A059268 n

end

end A014473.P2385017831812356527

namespace A014473

/-- `A132110(n)-A059268(n)` -/
def P2385017831812356527.Spec : Prop :=
  ∀ n, P2385017831812356527.a n = A014473 n

theorem P2385017831812356527.correct : P2385017831812356527.Spec := by
  intro n
  simp only [A014473, Nat.add_sub_cancel, A014473.P2385017831812356527.a, A014473.P9301799580602651200.a, A007318, A007318.P302227728145965961.a, A059268, A059268.P15217573790077737885.a, A132110, A132110.P9059509720305907983.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A137688, A137688.P9746695207037186753.a, A010054, A010054.P18347828677204923252.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014473

/-! ## A014473.P6850781938704947639

`A128715(n)-A103516(n)`
-/

namespace A014473.P6850781938704947639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n - A103516 n

end

end A014473.P6850781938704947639

namespace A014473

/-- `A128715(n)-A103516(n)` -/
def P6850781938704947639.Spec : Prop :=
  ∀ n, P6850781938704947639.a n = A014473 n

theorem P6850781938704947639.correct : P6850781938704947639.Spec := by
  intro n
  simp only [A014473, Nat.add_sub_cancel, A014473.P6850781938704947639.a, A014473.P9301799580602651200.a, A007318, A007318.P302227728145965961.a, A103516, A103516.P4703470818759479887.a, A128715, A128715.P7289910566905276765.a, A103451, A103451.P2977452712529643699.a, A131923, A131923.P17720918590992570165.f1, A131923.P17720918590992570165.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A080233, A080233.P15572603627752373411.a, A103452, A103452.P9591001737205339396.f1, A103452.P9591001737205339396.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A056943, A056943.P2657344456391598982.a, A073424, A073424.P9168526329464022542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014473

/-!
# A014474: Inverse of 465th cyclotomic polynomial.

The programs for A014474, there is no canonical definition to state claims against.
-/

/-! ## A014474.P3747294173850292213

`A014939(n)*A033999(n)`
-/

namespace A014474.P3747294173850292213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014939 n * A033999 n

end

end A014474.P3747294173850292213

/-!
# A014475: Triangular array formed from odd elements to right of middle of rows of Pascal's triangle.

The programs for A014475, the canonical program `A014475.P5620230107622203063` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014475 has offset 1).

The definition of A014475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014475.P18007921632661679765

`sqrt(A014761(n+1))`
-/

namespace A014475.P18007921632661679765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014761 (n + 1) : ℝ)

end

end A014475.P18007921632661679765

namespace A014475

/-- `sqrt(A014761(n+1))` -/
def P18007921632661679765.Spec : Prop :=
  ∀ n, P18007921632661679765.a n = (A014475 (n + 1) : ℝ)

end A014475

/-! ## A014475.P5620230107622203063

`A007318(eq[A065040(n), A089627(n)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014475

/-- `A007318(eq[A065040(n), A089627(n)])` -/
def P5620230107622203063.Spec : Prop :=
  ∀ n, P5620230107622203063.a n = A014475 (n + 1)

theorem P5620230107622203063.correct : P5620230107622203063.Spec := by
  intro n
  simp only [A014475, Nat.add_sub_cancel]

end A014475

/-! ## A014475.P3676383937389956990

`A007318(eq[1, A008482(n)%2])`
-/

namespace A014475.P3676383937389956990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008482 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014475.P3676383937389956990

namespace A014475

/-- `A007318(eq[1, A008482(n)%2])` -/
def P3676383937389956990.Spec : Prop :=
  ∀ n, P3676383937389956990.a n = A014475 (n + 1)

end A014475

/-! ## A014475.P5518434724910202882

`A007318(eq[A004198(n), A089627(n)])`
-/

namespace A014475.P5518434724910202882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P5518434724910202882

namespace A014475

/-- `A007318(eq[A004198(n), A089627(n)])` -/
def P5518434724910202882.Spec : Prop :=
  ∀ n, P5518434724910202882.a n = A014475 (n + 1)

end A014475

/-! ## A014475.P17420904910709452760

`A143333(eq[A004198(n), A089627(n)])`
-/

namespace A014475.P17420904910709452760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P17420904910709452760

namespace A014475

/-- `A143333(eq[A004198(n), A089627(n)])` -/
def P17420904910709452760.Spec : Prop :=
  ∀ n, P17420904910709452760.a n = A014475 (n + 1)

end A014475

/-! ## A014475.P15129099584535860152

`A007318(eq[A061896(n), A219463(n)])`
-/

namespace A014475.P15129099584535860152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P15129099584535860152

namespace A014475

/-- `A007318(eq[A061896(n), A219463(n)])` -/
def P15129099584535860152.Spec : Prop :=
  ∀ n, P15129099584535860152.a n = A014475 (n + 1)

end A014475

/-! ## A014475.P217817280585706547

`A007318(eq[A089627(n), A219463(n)])`
-/

namespace A014475.P217817280585706547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P217817280585706547

namespace A014475

/-- `A007318(eq[A089627(n), A219463(n)])` -/
def P217817280585706547.Spec : Prop :=
  ∀ n, P217817280585706547.a n = A014475 (n + 1)

end A014475

/-! ## A014475.P11845033392664952312

`A143333(eq[A061896(n), A219463(n)])`
-/

namespace A014475.P11845033392664952312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P11845033392664952312

namespace A014475

/-- `A143333(eq[A061896(n), A219463(n)])` -/
def P11845033392664952312.Spec : Prop :=
  ∀ n, P11845033392664952312.a n = A014475 (n + 1)

end A014475

/-! ## A014475.P16563767840005190314

`A143333(eq[A089627(n), A219463(n)])`
-/

namespace A014475.P16563767840005190314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P16563767840005190314

namespace A014475

/-- `A143333(eq[A089627(n), A219463(n)])` -/
def P16563767840005190314.Spec : Prop :=
  ∀ n, P16563767840005190314.a n = A014475 (n + 1)

end A014475

/-! ## A014475.P4605232758195623649

`A007318(eq[A004198(n)², A061896(n)])`
-/

namespace A014475.P4605232758195623649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014475.P4605232758195623649

namespace A014475

/-- `A007318(eq[A004198(n)², A061896(n)])` -/
def P4605232758195623649.Spec : Prop :=
  ∀ n, P4605232758195623649.a n = A014475 (n + 1)

end A014475

/-!
# A014476: Triangular array formed from even elements to right of middle of rows of Pascal's triangle.

The programs for A014476, there is no canonical definition to state claims against.
-/

/-! ## A014476.P10253978838146465860

`2*A051497(n+1)`
-/

namespace A014476.P10253978838146465860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051497 (n + 1)

end

end A014476.P10253978838146465860

/-! ## A014476.P13661372905140839931

`A051497(n-log2(1/2))+A051497(n+1)`
-/

namespace A014476.P13661372905140839931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051497 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + A051497 (n + 1)

end

end A014476.P13661372905140839931

/-! ## A014476.P18444211496700280439

`2/A051497(n+1)^A156709(Δ[A188376(n+1)])`
-/

namespace A014476.P18444211496700280439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A051497 (n + 1) : ℚ) ^ (A156709 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A014476.P18444211496700280439

/-! ## A014476.P17707403549664942928

`2*sqrt(A051514(n))`
-/

namespace A014476.P17707403549664942928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A051514 n : ℝ)

end

end A014476.P17707403549664942928

/-! ## A014476.P6355593156477711572

`A051497(n+1)+sqrt(A051514(n))`
-/

namespace A014476.P6355593156477711572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051497 (n + 1) : ℝ) + Real.sqrt (A051514 n : ℝ)

end

end A014476.P6355593156477711572

/-! ## A014476.P1947907900635075024

`sqrt(A014762(n+1))`
-/

namespace A014476.P1947907900635075024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014762 (n + 1) : ℝ)

end

end A014476.P1947907900635075024

/-! ## A014476.P11889943901601533273

`A007318(eq[A061896(n)+1, A219463(n)])`
-/

namespace A014476.P11889943901601533273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014476.P11889943901601533273

/-! ## A014476.P9785349975926493931

`A007318(eq[A089627(n)+1, A219463(n)])`
-/

namespace A014476.P9785349975926493931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014476.P9785349975926493931

/-! ## A014476.P5988371512803547082

`A007318(eq[1, A219463(n)-A061896(n)])`
-/

namespace A014476.P5988371512803547082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n - A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014476.P5988371512803547082

/-! ## A014476.P9460174937614380312

`A007318(eq[1, A219463(n)-A089627(n)])`
-/

namespace A014476.P9460174937614380312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n - A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014476.P9460174937614380312

/-! ## A014476.P13337798129951842103

`A051497(n+1)/2^A008683(A006450(n+1))`
-/

namespace A014476.P13337798129951842103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051497 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A014476.P13337798129951842103

/-!
# A014477: Expansion of (1 + 2*x)/(1 - 2*x)^3.

The programs for A014477, the canonical program `A014477.P15801602020113746063` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014477 has offset 0).

The definition of A014477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-6x+12x^2-8x^3))` (program `A014477.P15801602020113746063`, by `A014477.P15801602020113746063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014477.P15735461573037189792

`(n+1)²*2^n`
-/

namespace A014477.P15735461573037189792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * 2 ^ n

end

end A014477.P15735461573037189792

namespace A014477

/-- `(n+1)²*2^n` -/
def P15735461573037189792.Spec : Prop :=
  ∀ n, (P15735461573037189792.a n : ℤ) = A014477 n

end A014477

/-! ## A014477.P15801602020113746063

`ogf((1+2x)/(1-6x+12x^2-8x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014477

/-- `ogf((1+2x)/(1-6x+12x^2-8x^3))` -/
def P15801602020113746063.Spec : Prop :=
  ∀ n, P15801602020113746063.a n = A014477 n

theorem P15801602020113746063.correct : P15801602020113746063.Spec := by
  intro n
  simp only [A014477]

end A014477

/-! ## A014477.P15562626313159693491

`A007758(n+1)/2`
-/

namespace A014477.P15562626313159693491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007758 (n + 1) : ℚ) / 2

end

end A014477.P15562626313159693491

namespace A014477

/-- `A007758(n+1)/2` -/
def P15562626313159693491.Spec : Prop :=
  ∀ n, P15562626313159693491.a n = (A014477 n : ℚ)

end A014477

/-! ## A014477.P15388968041704951250

`record[(n-1)²]/2^-n`
-/

namespace A014477.P15388968041704951250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A014477.P15388968041704951250

namespace A014477

/-- `record[(n-1)²]/2^-n` -/
def P15388968041704951250.Spec : Prop :=
  ∀ n, P15388968041704951250.a n = (A014477 n : ℚ)

end A014477

/-! ## A014477.P9024884924635649512

`floor((n+1)²/acot(2^n))`
-/

namespace A014477.P9024884924635649512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℝ) / SequenceMachineLib.acot (2 ^ n : ℝ)⌋

end

end A014477.P9024884924635649512

namespace A014477

/-- `floor((n+1)²/acot(2^n))` -/
def P9024884924635649512.Spec : Prop :=
  ∀ n, P9024884924635649512.a n = A014477 n

end A014477

/-! ## A014477.P14067998250375348277

`((n+1)/cos(atan(1))^n)²`
-/

namespace A014477.P14067998250375348277
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.cos (Real.arctan (1 : ℝ)) ^ n) ^ 2

end

end A014477.P14067998250375348277

namespace A014477

/-- `((n+1)/cos(atan(1))^n)²` -/
def P14067998250375348277.Spec : Prop :=
  ∀ n, P14067998250375348277.a n = (A014477 n : ℝ)

end A014477

/-! ## A014477.P9979204367814394394

`((n+1)/sin(atan(1))^n)²`
-/

namespace A014477.P9979204367814394394
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.sin (Real.arctan (1 : ℝ)) ^ n) ^ 2

end

end A014477.P9979204367814394394

namespace A014477

/-- `((n+1)/sin(atan(1))^n)²` -/
def P9979204367814394394.Spec : Prop :=
  ∀ n, P9979204367814394394.a n = (A014477 n : ℝ)

end A014477

/-! ## A014477.P10567443480529507709

`((n+1)/cos(acot(1))^n)²`
-/

namespace A014477.P10567443480529507709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ)) ^ n) ^ 2

end

end A014477.P10567443480529507709

namespace A014477

/-- `((n+1)/cos(acot(1))^n)²` -/
def P10567443480529507709.Spec : Prop :=
  ∀ n, P10567443480529507709.a n = (A014477 n : ℝ)

end A014477

/-! ## A014477.P15676165943585689092

`((n+1)/sin(acot(1))^n)²`
-/

namespace A014477.P15676165943585689092
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) / Real.sin (SequenceMachineLib.acot (1 : ℝ)) ^ n) ^ 2

end

end A014477.P15676165943585689092

namespace A014477

/-- `((n+1)/sin(acot(1))^n)²` -/
def P15676165943585689092.Spec : Prop :=
  ∀ n, P15676165943585689092.a n = (A014477 n : ℝ)

end A014477

/-! ## A014477.P4379107356264270872

`(n+1)²/tan(acot(2^n))`
-/

namespace A014477.P4379107356264270872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ n : ℝ))

end

end A014477.P4379107356264270872

namespace A014477

/-- `(n+1)²/tan(acot(2^n))` -/
def P4379107356264270872.Spec : Prop :=
  ∀ n, P4379107356264270872.a n = (A014477 n : ℝ)

end A014477

/-! ## A014477.P6734633756305296962

`2^n/cot(atan(n+1))²`
-/

namespace A014477.P6734633756305296962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ)) ^ 2

end

end A014477.P6734633756305296962

namespace A014477

/-- `2^n/cot(atan(n+1))²` -/
def P6734633756305296962.Spec : Prop :=
  ∀ n, P6734633756305296962.a n = (A014477 n : ℝ)

end A014477

/-! ## A014477.P10619856401487258251

`record[ceil((1-n)²*2^(n-2))]`
-/

namespace A014477.P10619856401487258251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014477.P10619856401487258251

namespace A014477

/-- `record[ceil((1-n)²*2^(n-2))]` -/
def P10619856401487258251.Spec : Prop :=
  ∀ n, P10619856401487258251.a n = A014477 n

end A014477

/-! ## A014477.P3336844592269994820

`floor(2^n*∑[a(n-1)+2])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014477.P3336844592269994820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014477.P3336844592269994820

namespace A014477

/-- `floor(2^n*∑[a(n-1)+2])` -/
def P3336844592269994820.Spec : Prop :=
  ∀ n, (P3336844592269994820.a n : ℤ) = A014477 n

end A014477

/-! ## A014477.P12199101370933762195

`lcm(n+1, 2^n*∑[2*n+1])`
-/

namespace A014477.P12199101370933762195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A014477.P12199101370933762195

namespace A014477

/-- `lcm(n+1, 2^n*∑[2*n+1])` -/
def P12199101370933762195.Spec : Prop :=
  ∀ n, (P12199101370933762195.a n : ℤ) = A014477 n

end A014477

/-! ## A014477.P14779790091039792239

`floor((n+1)²*Δ[2*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014477.P14779790091039792239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014477.P14779790091039792239

namespace A014477

/-- `floor((n+1)²*Δ[2*a(n-1)])` -/
def P14779790091039792239.Spec : Prop :=
  ∀ n, P14779790091039792239.a n = A014477 n

end A014477

/-! ## A014477.P14079385389350140027

`floor((n+1)²*∑[2*a(n-1)])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014477.P14079385389350140027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014477.P14079385389350140027

namespace A014477

/-- `floor((n+1)²*∑[2*a(n-1)])` -/
def P14079385389350140027.Spec : Prop :=
  ∀ n, (P14079385389350140027.a n : ℤ) = A014477 n

end A014477

/-! ## A014477.P15467217434971671743

`(n+1)²/2^(gcd(n, n+1)-(n+1))`
-/

namespace A014477.P15467217434971671743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (2 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A014477.P15467217434971671743

namespace A014477

/-- `(n+1)²/2^(gcd(n, n+1)-(n+1))` -/
def P15467217434971671743.Spec : Prop :=
  ∀ n, P15467217434971671743.a n = (A014477 n : ℚ)

end A014477

/-! ## A014477.P9889954364578872410

`∑[abs(Δ[n*A001787(n)])]`
-/

namespace A014477.P9889954364578872410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014477.P9889954364578872410

namespace A014477

/-- `∑[abs(Δ[n*A001787(n)])]` -/
def P9889954364578872410.Spec : Prop :=
  ∀ n, P9889954364578872410.a n = A014477 n

end A014477

/-! ## A014477.P7357819154766665212

`(n+1)*A087323(n)+n+1`
-/

namespace A014477.P7357819154766665212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087323 n + (n + 1 : ℤ)

end

end A014477.P7357819154766665212

namespace A014477

/-- `(n+1)*A087323(n)+n+1` -/
def P7357819154766665212.Spec : Prop :=
  ∀ n, P7357819154766665212.a n = A014477 n

end A014477

/-! ## A014477.P17241524028265859264

`(n+1)*A005183(n+1)-(n+1)`
-/

namespace A014477.P17241524028265859264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005183 (n + 1) - (n + 1 : ℤ)

end

end A014477.P17241524028265859264

namespace A014477

/-- `(n+1)*A005183(n+1)-(n+1)` -/
def P17241524028265859264.Spec : Prop :=
  ∀ n, P17241524028265859264.a n = A014477 n

end A014477

/-!
# A014478: Inverse of 469th cyclotomic polynomial.

The programs for A014478, there is no canonical definition to state claims against.
-/

/-! ## A014478.P233604196639876652

`floor(1/A376661(n))`
-/

namespace A014478.P233604196639876652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A376661 n : ℚ)⌋

end

end A014478.P233604196639876652

/-!
# A014479: Exponential generating function = (1+2*x)/(1-2*x)^3.

The programs for A014479, the canonical program `A014479.P10325531686254012501` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014479 has offset 0).

The definition of A014479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014479.P10325531686254012501

`2^n*(n+1)²*n!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014479

/-- `2^n*(n+1)²*n!` -/
def P10325531686254012501.Spec : Prop :=
  ∀ n, (P10325531686254012501.a n : ℤ) = A014479 n

theorem P10325531686254012501.correct : P10325531686254012501.Spec := by
  intro n
  simp only [A014479]

end A014479

/-! ## A014479.P11533993427862236266

`2^n*Δ[(n+1)!]`
-/

namespace A014479.P11533993427862236266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014479.P11533993427862236266

namespace A014479

/-- `2^n*Δ[(n+1)!]` -/
def P11533993427862236266.Spec : Prop :=
  ∀ n, P11533993427862236266.a n = A014479 n

theorem P11533993427862236266.correct : P11533993427862236266.Spec := by
  intro n
  simp only [A014479, Nat.add_sub_cancel, A014479.P11533993427862236266.f1, A014479.P11533993427862236266.a, A014479.P10325531686254012501.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A014479

/-! ## A014479.P10687872804036901018

`2^n*Δ[∏[n+1]]`
-/

namespace A014479.P10687872804036901018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014479.P10687872804036901018

namespace A014479

/-- `2^n*Δ[∏[n+1]]` -/
def P10687872804036901018.Spec : Prop :=
  ∀ n, P10687872804036901018.a n = A014479 n

theorem P10687872804036901018.correct : P10687872804036901018.Spec := by
  intro n
  simp only [A014479, Nat.add_sub_cancel, A014479.P10687872804036901018.f2, A014479.P10687872804036901018.f1, A014479.P10687872804036901018.a, A014479.P10325531686254012501.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A014479

/-! ## A014479.P9566206735089357383

`Δ[(n+1)!]/2^-n`
-/

namespace A014479.P9566206735089357383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A014479.P9566206735089357383

namespace A014479

/-- `Δ[(n+1)!]/2^-n` -/
def P9566206735089357383.Spec : Prop :=
  ∀ n, P9566206735089357383.a n = (A014479 n : ℚ)

theorem P9566206735089357383.correct : P9566206735089357383.Spec := by
  intro n
  simp only [A014479, Nat.add_sub_cancel, A014479.P9566206735089357383.f1, A014479.P9566206735089357383.a, A014479.P10325531686254012501.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A014479

/-! ## A014479.P1183287866778505569

`(n+1)*∏[a(n-1)+2]/2` with `a(0)=2`
-/

namespace A014479.P1183287866778505569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A014479.P1183287866778505569

namespace A014479

/-- `(n+1)*∏[a(n-1)+2]/2` -/
def P1183287866778505569.Spec : Prop :=
  ∀ n, P1183287866778505569.a n = (A014479 n : ℚ)

end A014479

/-! ## A014479.P2037381451377445448

`abs((n+1)*∏[a(n-1)+2])` with `a(0)=1, a(1)=4`
-/

namespace A014479.P2037381451377445448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A014479.P2037381451377445448

namespace A014479

/-- `abs((n+1)*∏[a(n-1)+2])` -/
def P2037381451377445448.Spec : Prop :=
  ∀ n, (P2037381451377445448.a n : ℤ) = A014479 n

end A014479

/-! ## A014479.P12524904389631981433

`floor((n+1)*∏[a(n-1)+2])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A014479.P12524904389631981433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A014479.P12524904389631981433

namespace A014479

/-- `floor((n+1)*∏[a(n-1)+2])` -/
def P12524904389631981433.Spec : Prop :=
  ∀ n, (P12524904389631981433.a n : ℤ) = A014479 n

end A014479

/-! ## A014479.P2173475585877011029

`round((n+1)*∏[a(n-1)+2])` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A014479.P2173475585877011029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A014479.P2173475585877011029

namespace A014479

/-- `round((n+1)*∏[a(n-1)+2])` -/
def P2173475585877011029.Spec : Prop :=
  ∀ n, (P2173475585877011029.a n : ℤ) = A014479 n

end A014479

/-! ## A014479.P6094246880760538745

`Δ[2*n*a(n-1)]+2*n*a(n-1)` with `a(0)=1`
-/

namespace A014479.P6094246880760538745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ) * a (n - 1)

end

end A014479.P6094246880760538745

namespace A014479

/-- `Δ[2*n*a(n-1)]+2*n*a(n-1)` -/
def P6094246880760538745.Spec : Prop :=
  ∀ n, P6094246880760538745.a n = A014479 n

end A014479

/-! ## A014479.P6464399196658256730

`A392473((n+1)²+n)`
-/

namespace A014479.P6464399196658256730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392473 ((n + 1) ^ 2 + n)

end

end A014479.P6464399196658256730

namespace A014479

/-- `A392473((n+1)²+n)` -/
def P6464399196658256730.Spec : Prop :=
  ∀ n, P6464399196658256730.a n = A014479 n

end A014479

/-!
# A014480: Expansion of g.f. (1+2*x)/(1-2*x)^2.

The programs for A014480, the canonical program `A014480.P10023141099273982588` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014480 has offset 0).

The definition of A014480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-4x+4x^2))` (program `A014480.P10023141099273982588`, by `A014480.P10023141099273982588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014480.P10023141099273982588

`ogf((1+2x)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014480

/-- `ogf((1+2x)/(1-4x+4x^2))` -/
def P10023141099273982588.Spec : Prop :=
  ∀ n, P10023141099273982588.a n = A014480 n

theorem P10023141099273982588.correct : P10023141099273982588.Spec := by
  intro n
  simp only [A014480]

end A014480

/-! ## A014480.P17927830905378444574

`(2*n+1)*2^n`
-/

namespace A014480.P17927830905378444574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * 2 ^ n

end

end A014480.P17927830905378444574

namespace A014480

/-- `(2*n+1)*2^n` -/
def P17927830905378444574.Spec : Prop :=
  ∀ n, (P17927830905378444574.a n : ℤ) = A014480 n

end A014480

/-! ## A014480.P5169146349085781567

`a(n-1)+A052951(n)` with `a(0)=1`
-/

namespace A014480.P5169146349085781567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A052951 n

end

end A014480.P5169146349085781567

namespace A014480

/-- `a(n-1)+A052951(n)` -/
def P5169146349085781567.Spec : Prop :=
  ∀ n, P5169146349085781567.a n = A014480 n

end A014480

/-! ## A014480.P3482819452204508890

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A014480.P3482819452204508890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A014480.P3482819452204508890

namespace A014480

/-- `4*a(n-1)-4*a(n-2)` -/
def P3482819452204508890.Spec : Prop :=
  ∀ n, P3482819452204508890.a n = A014480 n

end A014480

/-! ## A014480.P448498619061265132

`lcm(2^n, Δ[n²])`
-/

namespace A014480.P448498619061265132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014480.P448498619061265132

namespace A014480

/-- `lcm(2^n, Δ[n²])` -/
def P448498619061265132.Spec : Prop :=
  ∀ n, (P448498619061265132.a n : ℤ) = A014480 n

end A014480

/-! ## A014480.P11632234383681605127

`or(1, 2*n)/2^-n`
-/

namespace A014480.P11632234383681605127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A014480.P11632234383681605127

namespace A014480

/-- `or(1, 2*n)/2^-n` -/
def P11632234383681605127.Spec : Prop :=
  ∀ n, P11632234383681605127.a n = (A014480 n : ℚ)

end A014480

/-! ## A014480.P18139859149436491749

`xor(1, 2*n)/2^-n`
-/

namespace A014480.P18139859149436491749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A014480.P18139859149436491749

namespace A014480

/-- `xor(1, 2*n)/2^-n` -/
def P18139859149436491749.Spec : Prop :=
  ∀ n, P18139859149436491749.a n = (A014480 n : ℚ)

end A014480

/-! ## A014480.P5052962391858879844

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A014480.P5052962391858879844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A014480.P5052962391858879844

namespace A014480

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P5052962391858879844.Spec : Prop :=
  ∀ n, P5052962391858879844.a n = A014480 n

end A014480

/-! ## A014480.P6250036559382443066

`a(n-1)+a(n-1)+2^(n+1)` with `a(0)=1`
-/

namespace A014480.P6250036559382443066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ (n + 1))

end

end A014480.P6250036559382443066

namespace A014480

/-- `a(n-1)+a(n-1)+2^(n+1)` -/
def P6250036559382443066.Spec : Prop :=
  ∀ n, (P6250036559382443066.a n : ℤ) = A014480 n

end A014480

/-! ## A014480.P4549996720924725648

`∑[A052951(n)]`
-/

namespace A014480.P4549996720924725648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014480.P4549996720924725648

namespace A014480

/-- `∑[A052951(n)]` -/
def P4549996720924725648.Spec : Prop :=
  ∀ n, P4549996720924725648.a n = A014480 n

end A014480

/-! ## A014480.P868153957851695923

`A093968(Δ[n²])`
-/

namespace A014480.P868153957851695923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014480.P868153957851695923

namespace A014480

/-- `A093968(Δ[n²])` -/
def P868153957851695923.Spec : Prop :=
  ∀ n, P868153957851695923.a n = A014480 n

end A014480

/-! ## A014480.P976473603710031682

`A132344(Δ[n²])`
-/

namespace A014480.P976473603710031682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014480.P976473603710031682

namespace A014480

/-- `A132344(Δ[n²])` -/
def P976473603710031682.Spec : Prop :=
  ∀ n, P976473603710031682.a n = A014480 n

end A014480

/-! ## A014480.P1182849287661814478

`abs(A316386(Δ[n²]))`
-/

namespace A014480.P1182849287661814478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A014480.P1182849287661814478

namespace A014480

/-- `abs(A316386(Δ[n²]))` -/
def P1182849287661814478.Spec : Prop :=
  ∀ n, P1182849287661814478.a n = A014480 n

end A014480

/-! ## A014480.P3838744352021281925

`A271771(n+1)+n`
-/

namespace A014480.P3838744352021281925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271771 (n + 1) + (n : ℤ)

end

end A014480.P3838744352021281925

namespace A014480

/-- `A271771(n+1)+n` -/
def P3838744352021281925.Spec : Prop :=
  ∀ n, P3838744352021281925.a n = A014480 n

end A014480

/-! ## A014480.P11118847241313935192

`∑[∑[A386270(n+1)]]`
-/

namespace A014480.P11118847241313935192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386270 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014480.P11118847241313935192

namespace A014480

/-- `∑[∑[A386270(n+1)]]` -/
def P11118847241313935192.Spec : Prop :=
  ∀ n, P11118847241313935192.a n = A014480 n

end A014480

/-! ## A014480.P15713459454254618570

`record[Δ[n*A131575(n)]]`
-/

namespace A014480.P15713459454254618570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014480.P15713459454254618570

namespace A014480

/-- `record[Δ[n*A131575(n)]]` -/
def P15713459454254618570.Spec : Prop :=
  ∀ n, P15713459454254618570.a n = A014480 n

end A014480

/-! ## A014480.P15943696177018300715

`record[(n+1)*A077957(n)]`
-/

namespace A014480.P15943696177018300715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014480.P15943696177018300715

namespace A014480

/-- `record[(n+1)*A077957(n)]` -/
def P15943696177018300715.Spec : Prop :=
  ∀ n, P15943696177018300715.a n = A014480 n

end A014480

/-! ## A014480.P12657521942407311172

`A208658(n+1)+1+n`
-/

namespace A014480.P12657521942407311172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208658 (n + 1) + 1 + (n : ℤ)

end

end A014480.P12657521942407311172

namespace A014480

/-- `A208658(n+1)+1+n` -/
def P12657521942407311172.Spec : Prop :=
  ∀ n, P12657521942407311172.a n = A014480 n

end A014480

/-! ## A014480.P9222821280017330830

`A058922(n+1)+2^n`
-/

namespace A014480.P9222821280017330830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 1) + (2 ^ n : ℤ)

end

end A014480.P9222821280017330830

namespace A014480

/-- `A058922(n+1)+2^n` -/
def P9222821280017330830.Spec : Prop :=
  ∀ n, P9222821280017330830.a n = A014480 n

end A014480

/-! ## A014480.P7925408204187020576

`A036289(n+1)-2^n`
-/

namespace A014480.P7925408204187020576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 1) - (2 ^ n : ℤ)

end

end A014480.P7925408204187020576

namespace A014480

/-- `A036289(n+1)-2^n` -/
def P7925408204187020576.Spec : Prop :=
  ∀ n, P7925408204187020576.a n = A014480 n

end A014480

/-!
# A014481: a(n) = 2^n*n!*(2*n+1).

The programs for A014481, the canonical program `A014481.P2660214983851442911` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014481 has offset 0).

The definition of A014481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*n!*(2*n+1)` (program `A014481.P2660214983851442911`, by `A014481.P2660214983851442911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014481.P2660214983851442911

`2^n*n!*(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014481

/-- `2^n*n!*(2*n+1)` -/
def P2660214983851442911.Spec : Prop :=
  ∀ n, (P2660214983851442911.a n : ℤ) = A014481 n

theorem P2660214983851442911.correct : P2660214983851442911.Spec := by
  intro n
  simp only [A014481]

end A014481

/-! ## A014481.P10869934984432188615

`n!*A014480(n)`
-/

namespace A014481.P10869934984432188615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A014480 n

end

end A014481.P10869934984432188615

namespace A014481

/-- `n!*A014480(n)` -/
def P10869934984432188615.Spec : Prop :=
  ∀ n, P10869934984432188615.a n = A014481 n

end A014481

/-! ## A014481.P15097358906852211977

`A009445(n)/A001147(n)`
-/

namespace A014481.P15097358906852211977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009445 n : ℚ) / (A001147 n : ℚ)

end

end A014481.P15097358906852211977

namespace A014481

/-- `A009445(n)/A001147(n)` -/
def P15097358906852211977.Spec : Prop :=
  ∀ n, P15097358906852211977.a n = (A014481 n : ℚ)

end A014481

/-! ## A014481.P4979364221446825363

`Δ[2^n*n!]`
-/

namespace A014481.P4979364221446825363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014481.P4979364221446825363

namespace A014481

/-- `Δ[2^n*n!]` -/
def P4979364221446825363.Spec : Prop :=
  ∀ n, P4979364221446825363.a n = A014481 n

theorem P4979364221446825363.correct : P4979364221446825363.Spec := by
  intro n
  simp only [A014481, Nat.add_sub_cancel, A014481.P4979364221446825363.f1, A014481.P4979364221446825363.a, A014481.P2660214983851442911.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A014481

/-! ## A014481.P10366269639223703762

`Δ[n!/2^-n]`
-/

namespace A014481.P10366269639223703762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014481.P10366269639223703762

namespace A014481

/-- `Δ[n!/2^-n]` -/
def P10366269639223703762.Spec : Prop :=
  ∀ n, P10366269639223703762.a n = (A014481 n : ℚ)

end A014481

/-! ## A014481.P11983950738127660917

`Δ[2^(log2(n!)+n)]`
-/

namespace A014481.P11983950738127660917
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014481.P11983950738127660917

namespace A014481

/-- `Δ[2^(log2(n!)+n)]` -/
def P11983950738127660917.Spec : Prop :=
  ∀ n, P11983950738127660917.a n = (A014481 n : ℝ)

end A014481

/-! ## A014481.P2505605823652177384

`Δ[2*n*a(n-1)]` with `a(0)=1`
-/

namespace A014481.P2505605823652177384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (n * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014481.P2505605823652177384

namespace A014481

/-- `Δ[2*n*a(n-1)]` -/
def P2505605823652177384.Spec : Prop :=
  ∀ n, P2505605823652177384.a n = A014481 n

end A014481

/-! ## A014481.P12917781188993578219

`Δ[∏[comp[2*(n+1)]+1]]`
-/

namespace A014481.P12917781188993578219
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014481.P12917781188993578219

namespace A014481

/-- `Δ[∏[comp[2*(n+1)]+1]]` -/
def P12917781188993578219.Spec : Prop :=
  ∀ n, P12917781188993578219.a n = A014481 n

end A014481

/-! ## A014481.P18187863313918952589

`Δ[n²]*∏[floor(2/acot(n))]`
-/

namespace A014481.P18187863313918952589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A014481.P18187863313918952589

namespace A014481

/-- `Δ[n²]*∏[floor(2/acot(n))]` -/
def P18187863313918952589.Spec : Prop :=
  ∀ n, P18187863313918952589.a n = A014481 n

end A014481

/-!
# A014482: Inverse of 473rd cyclotomic polynomial.

The programs for A014482, there is no canonical definition to state claims against.
-/

/-! ## A014482.P10764883924372333019

`A014955(n)*A033999(n)`
-/

namespace A014482.P10764883924372333019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014955 n * A033999 n

end

end A014482.P10764883924372333019

/-!
# A014483: Expansion of (1+2*x) / (1-2*x)^4.

The programs for A014483, the canonical program `A014483.P8383316405996242225` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014483 has offset 0).

The definition of A014483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-8x+24x^2-32x^3+16x^4))` (program `A014483.P8383316405996242225`, by `A014483.P8383316405996242225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014483.P4777612835017606028

`2^n*A000330(n+1)`
-/

namespace A014483.P4777612835017606028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000330 (n + 1)

end

end A014483.P4777612835017606028

namespace A014483

/-- `2^n*A000330(n+1)` -/
def P4777612835017606028.Spec : Prop :=
  ∀ n, P4777612835017606028.a n = A014483 n

end A014483

/-! ## A014483.P5909063359980057110

`2^(n-1)*(6+13*n+9*n²+2*n^3)/3`
-/

namespace A014483.P5909063359980057110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (6 + 13 * n + 9 * n ^ 2 + 2 * n ^ 3 : ℚ) / 3

end

end A014483.P5909063359980057110

namespace A014483

/-- `2^(n-1)*(6+13*n+9*n²+2*n^3)/3` -/
def P5909063359980057110.Spec : Prop :=
  ∀ n, P5909063359980057110.a n = (A014483 n : ℚ)

end A014483

/-! ## A014483.P8383316405996242225

`ogf((1+2x)/(1-8x+24x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014483

/-- `ogf((1+2x)/(1-8x+24x^2-32x^3+16x^4))` -/
def P8383316405996242225.Spec : Prop :=
  ∀ n, P8383316405996242225.a n = A014483 n

theorem P8383316405996242225.correct : P8383316405996242225.Spec := by
  intro n
  simp only [A014483]

end A014483

/-! ## A014483.P11895682250160560750

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=10, a(2)=56, a(3)=240`
-/

namespace A014483.P11895682250160560750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 56, 240] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A014483.P11895682250160560750

namespace A014483

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P11895682250160560750.Spec : Prop :=
  ∀ n, P11895682250160560750.a n = A014483 n

end A014483

/-! ## A014483.P8415333804660407420

`A087076(n+1)`
-/

namespace A014483.P8415333804660407420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 (n + 1)

end

end A014483.P8415333804660407420

namespace A014483

/-- `A087076(n+1)` -/
def P8415333804660407420.Spec : Prop :=
  ∀ n, P8415333804660407420.a n = A014483 n

end A014483

/-! ## A014483.P8689999221385780818

`∑[A085385(n+1)]`
-/

namespace A014483.P8689999221385780818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014483.P8689999221385780818

namespace A014483

/-- `∑[A085385(n+1)]` -/
def P8689999221385780818.Spec : Prop :=
  ∀ n, P8689999221385780818.a n = A014483 n

end A014483

/-! ## A014483.P4226430902049887819

`record[A087076(abs(1-n))]`
-/

namespace A014483.P4226430902049887819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014483.P4226430902049887819

namespace A014483

/-- `record[A087076(abs(1-n))]` -/
def P4226430902049887819.Spec : Prop :=
  ∀ n, P4226430902049887819.a n = A014483 n

end A014483

/-! ## A014483.P617684017538443095

`∑[(n+1)²]*A000079(n)`
-/

namespace A014483.P617684017538443095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 n

end

end A014483.P617684017538443095

namespace A014483

/-- `∑[(n+1)²]*A000079(n)` -/
def P617684017538443095.Spec : Prop :=
  ∀ n, P617684017538443095.a n = A014483 n

end A014483

/-! ## A014483.P11963540632783485795

`∑[(n+1)²]*A011782(n+1)`
-/

namespace A014483.P11963540632783485795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 (n + 1)

end

end A014483.P11963540632783485795

namespace A014483

/-- `∑[(n+1)²]*A011782(n+1)` -/
def P11963540632783485795.Spec : Prop :=
  ∀ n, P11963540632783485795.a n = A014483 n

end A014483

/-! ## A014483.P1818699467580016811

`∑[(n+1)²]*A131577(n+1)`
-/

namespace A014483.P1818699467580016811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A131577 (n + 1)

end

end A014483.P1818699467580016811

namespace A014483

/-- `∑[(n+1)²]*A131577(n+1)` -/
def P1818699467580016811.Spec : Prop :=
  ∀ n, P1818699467580016811.a n = A014483 n

end A014483

/-! ## A014483.P2170427044620011100

`a(n-1)+A014477(n)+a(n-1)` with `a(0)=1`
-/

namespace A014483.P2170427044620011100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A014477 n + a (n - 1))

end

end A014483.P2170427044620011100

namespace A014483

/-- `a(n-1)+A014477(n)+a(n-1)` -/
def P2170427044620011100.Spec : Prop :=
  ∀ n, P2170427044620011100.a n = A014483 n

end A014483

/-! ## A014483.P15949865702811830008

`∑[(n+1)²]+∑[(n+1)²]*A000225(n)`
-/

namespace A014483.P15949865702811830008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000225 n

end

end A014483.P15949865702811830008

namespace A014483

/-- `∑[(n+1)²]+∑[(n+1)²]*A000225(n)` -/
def P15949865702811830008.Spec : Prop :=
  ∀ n, P15949865702811830008.a n = A014483 n

end A014483

/-! ## A014483.P5954106258301486088

`∑[A001789(n+3)+A001788(n)]`
-/

namespace A014483.P5954106258301486088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) + A001788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014483.P5954106258301486088

namespace A014483

/-- `∑[A001789(n+3)+A001788(n)]` -/
def P5954106258301486088.Spec : Prop :=
  ∀ n, P5954106258301486088.a n = A014483 n

end A014483

/-! ## A014483.P15249192810973561827

`A001794(n)+∑[n]*A001792(n)`
-/

namespace A014483.P15249192810973561827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001792 n

end

end A014483.P15249192810973561827

namespace A014483

/-- `A001794(n)+∑[n]*A001792(n)` -/
def P15249192810973561827.Spec : Prop :=
  ∀ n, P15249192810973561827.a n = A014483 n

end A014483

/-! ## A014483.P14908496843562059801

`A290026(n+2)+A001788(n+1)`
-/

namespace A014483.P14908496843562059801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290026 (n + 2) + A001788 (n + 1)

end

end A014483.P14908496843562059801

namespace A014483

/-- `A290026(n+2)+A001788(n+1)` -/
def P14908496843562059801.Spec : Prop :=
  ∀ n, P14908496843562059801.a n = A014483 n

end A014483

/-! ## A014483.P358819237073826480

`A000079(n)*A006918(2*n+1)`
-/

namespace A014483.P358819237073826480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006918 (2 * n + 1)

end

end A014483.P358819237073826480

namespace A014483

/-- `A000079(n)*A006918(2*n+1)` -/
def P358819237073826480.Spec : Prop :=
  ∀ n, P358819237073826480.a n = A014483 n

end A014483

/-! ## A014483.P15986304658714608728

`A000079(n)*A053307(2*n+1)`
-/

namespace A014483.P15986304658714608728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A053307 (2 * n + 1)

end

end A014483.P15986304658714608728

namespace A014483

/-- `A000079(n)*A053307(2*n+1)` -/
def P15986304658714608728.Spec : Prop :=
  ∀ n, P15986304658714608728.a n = A014483 n

end A014483

/-! ## A014483.P4050869773610858809

`A000330(n+1)*A077957(2*n)`
-/

namespace A014483.P4050869773610858809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A077957 (2 * n)

end

end A014483.P4050869773610858809

namespace A014483

/-- `A000330(n+1)*A077957(2*n)` -/
def P4050869773610858809.Spec : Prop :=
  ∀ n, P4050869773610858809.a n = A014483 n

end A014483

/-! ## A014483.P18419612534867439762

`∑[A001794(n+1)-A136530(n+1)]`
-/

namespace A014483.P18419612534867439762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 (n + 1) - A136530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014483.P18419612534867439762

namespace A014483

/-- `∑[A001794(n+1)-A136530(n+1)]` -/
def P18419612534867439762.Spec : Prop :=
  ∀ n, P18419612534867439762.a n = A014483 n

end A014483

/-! ## A014483.P5600716688184955627

`A000079(n+1)*A000292(n+1)-A001788(n+1)`
-/

namespace A014483.P5600716688184955627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A000292 (n + 1) - A001788 (n + 1)

end

end A014483.P5600716688184955627

namespace A014483

/-- `A000079(n+1)*A000292(n+1)-A001788(n+1)` -/
def P5600716688184955627.Spec : Prop :=
  ∀ n, P5600716688184955627.a n = A014483 n

end A014483

/-!
# A014484: Expansion of (1+2x)/(1-2x)^4 (E.g.f.).

The programs for A014484, the canonical program `A014484.P17485245557235073165` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014484 has offset 0).

The definition of A014484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014484.P17485245557235073165

`(n+1)*(n+2)*(2*n+3)/6*2^n*n!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014484

/-- `(n+1)*(n+2)*(2*n+3)/6*2^n*n!` -/
def P17485245557235073165.Spec : Prop :=
  ∀ n, P17485245557235073165.a n = (A014484 n : ℚ)

end A014484

/-! ## A014484.P14623508041610706040

`n!*A014483(n)`
-/

namespace A014484.P14623508041610706040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A014483 n

end

end A014484.P14623508041610706040

namespace A014484

/-- `n!*A014483(n)` -/
def P14623508041610706040.Spec : Prop :=
  ∀ n, P14623508041610706040.a n = A014484 n

end A014484

/-! ## A014484.P14109916397598103337

`∑[(n+1)²]*A000165(n)`
-/

namespace A014484.P14109916397598103337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000165 n

end

end A014484.P14109916397598103337

namespace A014484

/-- `∑[(n+1)²]*A000165(n)` -/
def P14109916397598103337.Spec : Prop :=
  ∀ n, P14109916397598103337.a n = A014484 n

end A014484

/-! ## A014484.P690747241586597640

`∑[(n+1)²]*∏[A004277(n)]`
-/

namespace A014484.P690747241586597640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A014484.P690747241586597640

namespace A014484

/-- `∑[(n+1)²]*∏[A004277(n)]` -/
def P690747241586597640.Spec : Prop :=
  ∀ n, P690747241586597640.a n = A014484 n

end A014484

/-! ## A014484.P2826797941913579478

`A014479(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A014484.P2826797941913579478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014479 n + (2 * n : ℤ) * a (n - 1)

end

end A014484.P2826797941913579478

namespace A014484

/-- `A014479(n)+2*n*a(n-1)` -/
def P2826797941913579478.Spec : Prop :=
  ∀ n, P2826797941913579478.a n = A014484 n

end A014484

/-! ## A014484.P6273937200014469450

`A000142(n)*A014483(n)`
-/

namespace A014484.P6273937200014469450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A014483 n

end

end A014484.P6273937200014469450

namespace A014484

/-- `A000142(n)*A014483(n)` -/
def P6273937200014469450.Spec : Prop :=
  ∀ n, P6273937200014469450.a n = A014484 n

end A014484

/-! ## A014484.P10115308552899229670

`A000165(n)*A000330(n+1)`
-/

namespace A014484.P10115308552899229670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A000330 (n + 1)

end

end A014484.P10115308552899229670

namespace A014484

/-- `A000165(n)*A000330(n+1)` -/
def P10115308552899229670.Spec : Prop :=
  ∀ n, P10115308552899229670.a n = A014484 n

end A014484

/-! ## A014484.P11863007528761143539

`2*A051580(n)-A051578(n)`
-/

namespace A014484.P11863007528761143539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051580 n - A051578 n

end

end A014484.P11863007528761143539

namespace A014484

/-- `2*A051580(n)-A051578(n)` -/
def P11863007528761143539.Spec : Prop :=
  ∀ n, P11863007528761143539.a n = A014484 n

end A014484

/-! ## A014484.P7878156448461902715

`A000330(n+1)*A006882(2*n)`
-/

namespace A014484.P7878156448461902715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A006882 (2 * n)

end

end A014484.P7878156448461902715

namespace A014484

/-- `A000330(n+1)*A006882(2*n)` -/
def P7878156448461902715.Spec : Prop :=
  ∀ n, P7878156448461902715.a n = A014484 n

end A014484

/-! ## A014484.P2928603017580881456

`A014483(n)*A098361(A000217(n))`
-/

namespace A014484.P2928603017580881456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014483 n * A098361 (A000217 n).toNat

end

end A014484.P2928603017580881456

namespace A014484

/-- `A014483(n)*A098361(A000217(n))` -/
def P2928603017580881456.Spec : Prop :=
  ∀ n, P2928603017580881456.a n = A014484 n

end A014484

/-!
# A014485: Inverse of 476th cyclotomic polynomial.

The programs for A014485, there is no canonical definition to state claims against.
-/

/-! ## A014485.P6363277883031248031

`A014961(2*n)`
-/

namespace A014485.P6363277883031248031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014961 (2 * n)

end

end A014485.P6363277883031248031

/-!
# A014486: List of totally balanced sequences of 2n binary digits written in base 10. Binary expansion of each term contains n 0's and n 1's and reading from left to right (the most significant to the least significant bit), the number of 0's never exceeds the number of 1's.

The programs for A014486, there is no canonical definition to state claims against.
-/

/-! ## A014486.P17136578048706165688

`2*A057520(n)`
-/

namespace A014486.P17136578048706165688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057520 n

end

end A014486.P17136578048706165688

/-! ## A014486.P14206521306678724403

`A194045(n)/2`
-/

namespace A014486.P14206521306678724403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 n : ℚ) / 2

end

end A014486.P14206521306678724403

/-! ## A014486.P13950770110820795375

`(A085224(n)-2)/4`
-/

namespace A014486.P13950770110820795375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085224 n - 2 : ℚ) / 4

end

end A014486.P13950770110820795375

/-! ## A014486.P348439666963284511

`A057547(n)-A083937(n)`
-/

namespace A014486.P348439666963284511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057547 n - A083937 n

end

end A014486.P348439666963284511

/-! ## A014486.P3419953438930249139

`∪[A080971(n), A080981(n)]`
-/

namespace A014486.P3419953438930249139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080981 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014486.P3419953438930249139

/-! ## A014486.P4565825516943392857

`∑[A085192(n)]-A085192(n)`
-/

namespace A014486.P4565825516943392857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085192 n

end

end A014486.P4565825516943392857

/-! ## A014486.P12321106853727875086

`∪[A081292(n+1), A083937(n)]`
-/

namespace A014486.P12321106853727875086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014486.P12321106853727875086

/-! ## A014486.P11371832783789868222

`A057520(A005843(n)/2)+A057520(n)`
-/

namespace A014486.P11371832783789868222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A057520 n

end

end A014486.P11371832783789868222

/-! ## A014486.P18216296583473455022

`A194045(n)-A057520(n)-A057520(n)`
-/

namespace A014486.P18216296583473455022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194045 n - A057520 n - A057520 n

end

end A014486.P18216296583473455022

/-! ## A014486.P15201735473455120825

`A057520(n+1)+A057520(n+1)-A085192(n)`
-/

namespace A014486.P15201735473455120825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 (n + 1) + (A057520 (n + 1) - A085192 n)

end

end A014486.P15201735473455120825

/-! ## A014486.P16816702173971714018

`2*A085183(A072795(n))`
-/

namespace A014486.P16816702173971714018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085183 (A072795 n).toNat

end

end A014486.P16816702173971714018

/-! ## A014486.P16043956680556020578

`record[A080116(2*n)*2*n]`
-/

namespace A014486.P16043956680556020578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (2 * n) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014486.P16043956680556020578

/-! ## A014486.P4871895512355180688

`A085183(A057548(n))`
-/

namespace A014486.P4871895512355180688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085183 (A057548 n).toNat

end

end A014486.P4871895512355180688

/-! ## A014486.P5015006001375644981

`filter[A085183(n+1), A080116(#)]`
-/

namespace A014486.P5015006001375644981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A014486.P5015006001375644981

/-! ## A014486.P2242519121294543245

`record[2*A273943(n*A080116(n))]`
-/

namespace A014486.P2242519121294543245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273943 ((n : ℤ) * A080116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014486.P2242519121294543245

/-! ## A014486.P1635182730222573196

`lt[0, A080116(n)]`
-/

namespace A014486.P1635182730222573196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014486.P1635182730222573196

/-! ## A014486.P17845031783415803747

`filter[A036990(n+1), A080116(#)]`
-/

namespace A014486.P17845031783415803747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A014486.P17845031783415803747

/-! ## A014486.P6999947416235667130

`∩[A036990(n+1), A085183(n+1)]`
-/

namespace A014486.P6999947416235667130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014486.P6999947416235667130

/-! ## A014486.P10083509298577334247

`filter[2*n, A080116(#)]`
-/

namespace A014486.P10083509298577334247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j) = 1) n)

end

end A014486.P10083509298577334247

/-! ## A014486.P9495168853007145802

`A005843(A057520(n))`
-/

namespace A014486.P9495168853007145802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A057520 n).toNat

end

end A014486.P9495168853007145802

/-!
# A014487: Weight distribution of [ 18,9,8 ] self-dual code over GF(4).

The programs for A014487, there is no canonical definition to state claims against.
-/

/-! ## A014487.P4637249308762749624

`A004525(A030030(n))*A310477(n)`
-/

namespace A014487.P4637249308762749624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A030030 n).toNat * A310477 n

end

end A014487.P4637249308762749624

/-! ## A014487.P1545844702274465404

`A004525(A030030(n))*A310478(n)`
-/

namespace A014487.P1545844702274465404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A030030 n).toNat * A310478 n

end

end A014487.P1545844702274465404

/-!
# A014488: Weight distribution of [ 17,9,7 ] code over GF(4).

The programs for A014488, there is no canonical definition to state claims against.
-/

/-! ## A014488.P15207374991859958471

`A027356(A328520(n)²)`
-/

namespace A014488.P15207374991859958471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A328520 n ^ 2).toNat

end

end A014488.P15207374991859958471

/-! ## A014488.P9785953601073797748

`Δ[A001110(A212997(n))]`
-/

namespace A014488.P9785953601073797748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 (A212997 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014488.P9785953601073797748

/-! ## A014488.P9292175933476525125

`A002265(6*A015159(n))`
-/

namespace A014488.P9292175933476525125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A015159 n).toNat

end

end A014488.P9292175933476525125

/-! ## A014488.P12098414969550251858

`A027356(A328520(n)^2)`
-/

namespace A014488.P12098414969550251858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A328520 n ^ 2).toNat

end

end A014488.P12098414969550251858

/-!
# A014489: Positions of involutions (permutations whose square is the identity) in reverse colexicographic order (A055089/A195663).

The programs for A014489, there is no canonical definition to state claims against.
-/

/-! ## A014489.P3779501621648168813

`A066646(n+1)-1`
-/

namespace A014489.P3779501621648168813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066646 (n + 1) - 1

end

end A014489.P3779501621648168813

/-! ## A014489.P7800094447757186650

`lt[A055092(n), 3]`
-/

namespace A014489.P7800094447757186650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014489.P7800094447757186650

/-! ## A014489.P2571384061016453652

`eq[A055092(A055092(n)-1), A055092(n)]`
-/

namespace A014489.P2571384061016453652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 (A055092 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014489.P2571384061016453652

/-! ## A014489.P14581958828932709280

`eq[n, A056019(n)]`
-/

namespace A014489.P14581958828932709280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014489.P14581958828932709280

/-! ## A014489.P8300492063122828015

`A060119(A261220(n))`
-/

namespace A014489.P8300492063122828015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A261220 n).toNat

end

end A014489.P8300492063122828015

/-! ## A014489.P15191176900355087702

`A023443(A066646(n+1))`
-/

namespace A014489.P15191176900355087702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066646 (n + 1)).toNat

end

end A014489.P15191176900355087702

/-! ## A014489.P17822264389672764273

`A060119(lt[A060131(n), 3])`
-/

namespace A014489.P17822264389672764273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014489.P17822264389672764273

/-! ## A014489.P3289856212997698602

`lt[A060131(A060126(n)), 3]`
-/

namespace A014489.P3289856212997698602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060131 (A060126 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014489.P3289856212997698602

/-! ## A014489.P10014464203216246105

`eq[A055090(n), A055091(n)]`
-/

namespace A014489.P10014464203216246105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014489.P10014464203216246105

/-! ## A014489.P8182831504534804390

`A060119(eq[n, A060125(n)])`
-/

namespace A014489.P8182831504534804390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014489.P8182831504534804390

/-! ## A014489.P10539303328013969234

`eq[A060126(n), A060127(n)]`
-/

namespace A014489.P10539303328013969234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014489.P10539303328013969234

/-! ## A014489.P7140948751830497101

`A060120(A261220(2*n-n))`
-/

namespace A014489.P7140948751830497101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 (A261220 (2 * n - n)).toNat

end

end A014489.P7140948751830497101

/-! ## A014489.P11154509402280243965

`eq[2, A055092(A055092(n)²²)]`
-/

namespace A014489.P11154509402280243965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 ((A055092 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014489.P11154509402280243965

/-! ## A014489.P6852706679231920186

`A060119(eq[A060119(n), A060120(n)])`
-/

namespace A014489.P6852706679231920186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014489.P6852706679231920186

/-! ## A014489.P9344516487475092945

`eq[0, A261099(n)]`
-/

namespace A014489.P9344516487475092945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014489.P9344516487475092945

/-! ## A014489.P15095526726188800727

`A060119(lt[A261219(n), 1])`
-/

namespace A014489.P15095526726188800727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261219 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014489.P15095526726188800727

/-! ## A014489.P13484677882118029120

`A060119(record[n-A261219(n)])`
-/

namespace A014489.P13484677882118029120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014489.P13484677882118029120

/-! ## A014489.P12208600150277744535

`eq[A036453(2*n+1), A055092(n)]`
-/

namespace A014489.P12208600150277744535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014489.P12208600150277744535

/-!
# A014490: Inverse of 481st cyclotomic polynomial.

The programs for A014490, there is no canonical definition to state claims against.
-/

/-! ## A014490.P2197294251464686281

`A014971(n)*A033999(n)`
-/

namespace A014490.P2197294251464686281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014971 n * A033999 n

end

end A014490.P2197294251464686281

/-!
# A014491: a(n) = gcd(n, 2^n - 1).

The programs for A014491, the canonical program `A014491.P13671895498974125134` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014491 has offset 1).

The definition of A014491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, 2^(n+1)-1)` (program `A014491.P13671895498974125134`, by `A014491.P13671895498974125134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014491.P13671895498974125134

`gcd(n+1, 2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014491

/-- `gcd(n+1, 2^(n+1)-1)` -/
def P13671895498974125134.Spec : Prop :=
  ∀ n, (P13671895498974125134.a n : ℤ) = A014491 (n + 1)

theorem P13671895498974125134.correct : P13671895498974125134.Spec := by
  intro n
  simp only [A014491, Nat.add_sub_cancel]

end A014491

/-! ## A014491.P9819474328502197701

`A260626(A066246(n+1)+1)`
-/

namespace A014491.P9819474328502197701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260626 (A066246 (n + 1) + 1).toNat

end

end A014491.P9819474328502197701

namespace A014491

/-- `A260626(A066246(n+1)+1)` -/
def P9819474328502197701.Spec : Prop :=
  ∀ n, P9819474328502197701.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P12276320803373821416

`A336314(A008578(n+1))`
-/

namespace A014491.P12276320803373821416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A008578 (n + 1)).toNat

end

end A014491.P12276320803373821416

namespace A014491

/-- `A336314(A008578(n+1))` -/
def P12276320803373821416.Spec : Prop :=
  ∀ n, P12276320803373821416.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P13986726862047337518

`A336314(A075643(n+1))`
-/

namespace A014491.P13986726862047337518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A075643 (n + 1)).toNat

end

end A014491.P13986726862047337518

namespace A014491

/-- `A336314(A075643(n+1))` -/
def P13986726862047337518.Spec : Prop :=
  ∀ n, P13986726862047337518.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P7339672352760795101

`A336314(A171525(n+1))`
-/

namespace A014491.P7339672352760795101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A171525 (n + 1)).toNat

end

end A014491.P7339672352760795101

namespace A014491

/-- `A336314(A171525(n+1))` -/
def P7339672352760795101.Spec : Prop :=
  ∀ n, P7339672352760795101.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P3693060195345726392

`A336314(A158611(n+2))`
-/

namespace A014491.P3693060195345726392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A158611 (n + 2)).toNat

end

end A014491.P3693060195345726392

namespace A014491

/-- `A336314(A158611(n+2))` -/
def P3693060195345726392.Spec : Prop :=
  ∀ n, P3693060195345726392.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P17080216548801482526

`A336314(record[A006530(n+1)])`
-/

namespace A014491.P17080216548801482526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014491.P17080216548801482526

namespace A014491

/-- `A336314(record[A006530(n+1)])` -/
def P17080216548801482526.Spec : Prop :=
  ∀ n, P17080216548801482526.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P15204061522014684910

`A336314(record[A020639(n+1)])`
-/

namespace A014491.P15204061522014684910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014491.P15204061522014684910

namespace A014491

/-- `A336314(record[A020639(n+1)])` -/
def P15204061522014684910.Spec : Prop :=
  ∀ n, P15204061522014684910.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P9088110712585975319

`A336314(record[A014963(n+1)])`
-/

namespace A014491.P9088110712585975319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014491.P9088110712585975319

namespace A014491

/-- `A336314(record[A014963(n+1)])` -/
def P9088110712585975319.Spec : Prop :=
  ∀ n, P9088110712585975319.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P18081200906656553828

`A336314(A083190(n+1))`
-/

namespace A014491.P18081200906656553828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336314 (A083190 (n + 1)).toNat

end

end A014491.P18081200906656553828

namespace A014491

/-- `A336314(A083190(n+1))` -/
def P18081200906656553828.Spec : Prop :=
  ∀ n, P18081200906656553828.a n = A014491 (n + 1)

end A014491

/-! ## A014491.P4956684479565578084

`A126646(n)/A090633(n+1)`
-/

namespace A014491.P4956684479565578084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A090633 (n + 1) : ℚ)

end

end A014491.P4956684479565578084

namespace A014491

/-- `A126646(n)/A090633(n+1)` -/
def P4956684479565578084.Spec : Prop :=
  ∀ n, P4956684479565578084.a n = (A014491 (n + 1) : ℚ)

end A014491

/-!
# A014492: Inverse of 483rd cyclotomic polynomial.

The programs for A014492, there is no canonical definition to state claims against.
-/

/-! ## A014492.P870373102364495539

`A014975(n)*A033999(n)`
-/

namespace A014492.P870373102364495539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014975 n * A033999 n

end

end A014492.P870373102364495539

/-!
# A014493: Odd triangular numbers.

The programs for A014493, the canonical program `A014493.P3969749634927987271` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014493 has offset 1).

The definition of A014493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014493.P4807913583776157280

`(2*(n+1)-1)*(2*(n+1)-1-(-1)^(n+1))/2`
-/

namespace A014493.P4807913583776157280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * ((2 * (n + 1) : ℤ) - 1 - (-1) ^ (n + 1)) : ℚ) / 2

end

end A014493.P4807913583776157280

namespace A014493

/-- `(2*(n+1)-1)*(2*(n+1)-1-(-1)^(n+1))/2` -/
def P4807913583776157280.Spec : Prop :=
  ∀ n, P4807913583776157280.a n = (A014493 (n + 1) : ℚ)

theorem P4807913583776157280.correct : P4807913583776157280.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A014493, Nat.add_sub_cancel, A014493.P4807913583776157280.a, A014493.P3969749634927987271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A014493, Nat.add_sub_cancel, A014493.P4807913583776157280.a, A014493.P3969749634927987271.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014493

/-! ## A014493.P3969749634927987271

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=15, a(3)=21, a(4)=45`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014493

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P3969749634927987271.Spec : Prop :=
  ∀ n, P3969749634927987271.a n = A014493 (n + 1)

theorem P3969749634927987271.correct : P3969749634927987271.Spec := by
  intro n
  simp only [A014493, Nat.add_sub_cancel]

end A014493

/-! ## A014493.P15377313219519889224

`A193868(n+1)-1`
-/

namespace A014493.P15377313219519889224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193868 (n + 1) - 1

end

end A014493.P15377313219519889224

namespace A014493

/-- `A193868(n+1)-1` -/
def P15377313219519889224.Spec : Prop :=
  ∀ n, P15377313219519889224.a n = A014493 (n + 1)

end A014493

/-! ## A014493.P14056673337507353889

`A000217(A042963(n+1))`
-/

namespace A014493.P14056673337507353889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A042963 (n + 1)).toNat

end

end A014493.P14056673337507353889

namespace A014493

/-- `A000217(A042963(n+1))` -/
def P14056673337507353889.Spec : Prop :=
  ∀ n, P14056673337507353889.a n = A014493 (n + 1)

end A014493

/-! ## A014493.P7941259316137883149

`record[C(or(2, n), 2)]`
-/

namespace A014493.P7941259316137883149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014493.P7941259316137883149

namespace A014493

/-- `record[C(or(2, n), 2)]` -/
def P7941259316137883149.Spec : Prop :=
  ∀ n, (P7941259316137883149.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P6243951184815659764

`record[C(xor(2, n), 2)]`
-/

namespace A014493.P6243951184815659764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 2 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014493.P6243951184815659764

namespace A014493

/-- `record[C(xor(2, n), 2)]` -/
def P6243951184815659764.Spec : Prop :=
  ∀ n, (P6243951184815659764.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P7950172578268080150

`record[C(n, and(2, n))]`
-/

namespace A014493.P7950172578268080150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014493.P7950172578268080150

namespace A014493

/-- `record[C(n, and(2, n))]` -/
def P7950172578268080150.Spec : Prop :=
  ∀ n, (P7950172578268080150.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P8147231612089161653

`C(eq[n, or(2, n)], 2)`
-/

namespace A014493.P8147231612089161653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2

end

end A014493.P8147231612089161653

namespace A014493

/-- `C(eq[n, or(2, n)], 2)` -/
def P8147231612089161653.Spec : Prop :=
  ∀ n, (P8147231612089161653.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P7925186150641672196

`C(lt[xor(2, n), n], 2)`
-/

namespace A014493.P7925186150641672196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) 2

end

end A014493.P7925186150641672196

namespace A014493

/-- `C(lt[xor(2, n), n], 2)` -/
def P7925186150641672196.Spec : Prop :=
  ∀ n, (P7925186150641672196.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P7335337644725770984

`or(1, n)*Δ[n²]`
-/

namespace A014493.P7335337644725770984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014493.P7335337644725770984

namespace A014493

/-- `or(1, n)*Δ[n²]` -/
def P7335337644725770984.Spec : Prop :=
  ∀ n, P7335337644725770984.a n = A014493 (n + 1)

end A014493

/-! ## A014493.P266921707501210401

`C(comp[and(2, n)+n], 2)`
-/

namespace A014493.P266921707501210401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A014493.P266921707501210401

namespace A014493

/-- `C(comp[and(2, n)+n], 2)` -/
def P266921707501210401.Spec : Prop :=
  ∀ n, (P266921707501210401.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P15906213833126657806

`(2*n+1)*or(1, n)`
-/

namespace A014493.P15906213833126657806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 1 n

end

end A014493.P15906213833126657806

namespace A014493

/-- `(2*n+1)*or(1, n)` -/
def P15906213833126657806.Spec : Prop :=
  ∀ n, (P15906213833126657806.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P14717051026112421500

`C(gcd(2, n)+2*n, 2)`
-/

namespace A014493.P14717051026112421500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 n + 2 * n) 2

end

end A014493.P14717051026112421500

namespace A014493

/-- `C(gcd(2, n)+2*n, 2)` -/
def P14717051026112421500.Spec : Prop :=
  ∀ n, (P14717051026112421500.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P5967440465022505098

`C(or(1, n)+1+n, 2)`
-/

namespace A014493.P5967440465022505098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n + 1 + n) 2

end

end A014493.P5967440465022505098

namespace A014493

/-- `C(or(1, n)+1+n, 2)` -/
def P5967440465022505098.Spec : Prop :=
  ∀ n, (P5967440465022505098.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P8731782181849476292

`or(1, n*or(3, 2*n))`
-/

namespace A014493.P8731782181849476292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.lor 3 (2 * n))

end

end A014493.P8731782181849476292

namespace A014493

/-- `or(1, n*or(3, 2*n))` -/
def P8731782181849476292.Spec : Prop :=
  ∀ n, (P8731782181849476292.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P17536515368530821717

`C(eq[2, and(n, 1-n)], 2)`
-/

namespace A014493.P17536515368530821717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A014493.P17536515368530821717

namespace A014493

/-- `C(eq[2, and(n, 1-n)], 2)` -/
def P17536515368530821717.Spec : Prop :=
  ∀ n, (P17536515368530821717.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P9361477590227088319

`lcm(n+1+n, or(1, n))`
-/

namespace A014493.P9361477590227088319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1 + n) (Nat.lor 1 n)

end

end A014493.P9361477590227088319

namespace A014493

/-- `lcm(n+1+n, or(1, n))` -/
def P9361477590227088319.Spec : Prop :=
  ∀ n, (P9361477590227088319.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P11333040346353134873

`C(and(n+2, -2)+n, 2)`
-/

namespace A014493.P11333040346353134873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n + 2 : ℤ) (-2) + (n : ℤ)).toNat 2

end

end A014493.P11333040346353134873

namespace A014493

/-- `C(and(n+2, -2)+n, 2)` -/
def P11333040346353134873.Spec : Prop :=
  ∀ n, (P11333040346353134873.a n : ℤ) = A014493 (n + 1)

end A014493

/-! ## A014493.P5554668876283512539

`record[(n+1)*xor(2, n)/2]`
-/

namespace A014493.P5554668876283512539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.xor 2 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014493.P5554668876283512539

namespace A014493

/-- `record[(n+1)*xor(2, n)/2]` -/
def P5554668876283512539.Spec : Prop :=
  ∀ n, P5554668876283512539.a n = (A014493 (n + 1) : ℚ)

end A014493

/-! ## A014493.P4516694065622393361

`C(∑[3/a(n-1)], 2)` with `a(0)=2, a(1)=1`
-/

namespace A014493.P4516694065622393361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A014493.P4516694065622393361

namespace A014493

/-- `C(∑[3/a(n-1)], 2)` -/
def P4516694065622393361.Spec : Prop :=
  ∀ n, (P4516694065622393361.a n : ℤ) = A014493 (n + 1)

end A014493

/-!
# A014494: Even triangular numbers.

The programs for A014494, the canonical program `A014494.P4970245120649333827` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014494 has offset 0).

The definition of A014494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014494.P4970245120649333827

`(2*n+1)*(n+n%2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014494

/-- `(2*n+1)*(n+n%2)` -/
def P4970245120649333827.Spec : Prop :=
  ∀ n, (P4970245120649333827.a n : ℤ) = A014494 n

theorem P4970245120649333827.correct : P4970245120649333827.Spec := by
  intro n
  simp only [A014494]

end A014494

/-! ## A014494.P1033946264024715604

`2*ceil(n/2)*(2*n+1)`
-/

namespace A014494.P1033946264024715604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 2⌉ * (2 * n + 1 : ℤ)

end

end A014494.P1033946264024715604

namespace A014494

/-- `2*ceil(n/2)*(2*n+1)` -/
def P1033946264024715604.Spec : Prop :=
  ∀ n, P1033946264024715604.a n = A014494 n

end A014494

/-! ## A014494.P18079810921977018622

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=10, a(3)=28, a(4)=36`
-/

namespace A014494.P18079810921977018622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 10, 28, 36] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A014494.P18079810921977018622

namespace A014494

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P18079810921977018622.Spec : Prop :=
  ∀ n, P18079810921977018622.a n = A014494 n

end A014494

/-! ## A014494.P17867872589613037236

`A193867(n+1)-1`
-/

namespace A014494.P17867872589613037236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (n + 1) - 1

end

end A014494.P17867872589613037236

namespace A014494

/-- `A193867(n+1)-1` -/
def P17867872589613037236.Spec : Prop :=
  ∀ n, P17867872589613037236.a n = A014494 n

theorem P17867872589613037236.correct : P17867872589613037236.Spec := by
  intro n
  simp only [A014494, Nat.add_sub_cancel, A014494.P17867872589613037236.a, A014494.P4970245120649333827.a, A193867, A193867.P15975463476327367108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014494

/-! ## A014494.P4466541452902310608

`A014493(n+1)-(2*n+1)*(-1)^n`
-/

namespace A014494.P4466541452902310608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) - (2 * n + 1 : ℤ) * (-1) ^ n

end

end A014494.P4466541452902310608

namespace A014494

/-- `A014493(n+1)-(2*n+1)*(-1)^n` -/
def P4466541452902310608.Spec : Prop :=
  ∀ n, P4466541452902310608.a n = A014494 n

end A014494

/-! ## A014494.P12998290117491343074

`A000217(A014601(n))`
-/

namespace A014494.P12998290117491343074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014601 n).toNat

end

end A014494.P12998290117491343074

namespace A014494

/-- `A000217(A014601(n))` -/
def P12998290117491343074.Spec : Prop :=
  ∀ n, P12998290117491343074.a n = A014494 n

end A014494

/-! ## A014494.P14680180622793458451

`C(∑[3^(n%2)], 2)`
-/

namespace A014494.P14680180622793458451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A014494.P14680180622793458451

namespace A014494

/-- `C(∑[3^(n%2)], 2)` -/
def P14680180622793458451.Spec : Prop :=
  ∀ n, (P14680180622793458451.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P15350304574625249968

`C(∑[3^and(1, n)], 2)`
-/

namespace A014494.P15350304574625249968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A014494.P15350304574625249968

namespace A014494

/-- `C(∑[3^and(1, n)], 2)` -/
def P15350304574625249968.Spec : Prop :=
  ∀ n, (P15350304574625249968.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P11216562595471238004

`C(∑[C(3, and(1, n))], 2)`
-/

namespace A014494.P11216562595471238004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A014494.P11216562595471238004

namespace A014494

/-- `C(∑[C(3, and(1, n))], 2)` -/
def P11216562595471238004.Spec : Prop :=
  ∀ n, (P11216562595471238004.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P8131145730034160129

`∑[lcm(2, lcm(2, n)+n)]`
-/

namespace A014494.P8131145730034160129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lcm 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014494.P8131145730034160129

namespace A014494

/-- `∑[lcm(2, lcm(2, n)+n)]` -/
def P8131145730034160129.Spec : Prop :=
  ∀ n, (P8131145730034160129.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P8833007719281613701

`record[C(and(n, n+2), 2)]`
-/

namespace A014494.P8833007719281613701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014494.P8833007719281613701

namespace A014494

/-- `record[C(and(n, n+2), 2)]` -/
def P8833007719281613701.Spec : Prop :=
  ∀ n, (P8833007719281613701.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P6584148235553923213

`C(or(1, n+1)+n, 2)`
-/

namespace A014494.P6584148235553923213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 1) + n) 2

end

end A014494.P6584148235553923213

namespace A014494

/-- `C(or(1, n+1)+n, 2)` -/
def P6584148235553923213.Spec : Prop :=
  ∀ n, (P6584148235553923213.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P5239721974657116646

`C(Δ[n²]+and(1, n), 2)`
-/

namespace A014494.P5239721974657116646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land 1 n : ℤ)).toNat 2

end

end A014494.P5239721974657116646

namespace A014494

/-- `C(Δ[n²]+and(1, n), 2)` -/
def P5239721974657116646.Spec : Prop :=
  ∀ n, (P5239721974657116646.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P8757498961569603490

`lcm(and(1, n)+n, Δ[n²])`
-/

namespace A014494.P8757498961569603490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.land 1 n + n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014494.P8757498961569603490

namespace A014494

/-- `lcm(and(1, n)+n, Δ[n²])` -/
def P8757498961569603490.Spec : Prop :=
  ∀ n, (P8757498961569603490.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P17658388611079857694

`C(∑[(2*n+1)%4], 2)`
-/

namespace A014494.P17658388611079857694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A014494.P17658388611079857694

namespace A014494

/-- `C(∑[(2*n+1)%4], 2)` -/
def P17658388611079857694.Spec : Prop :=
  ∀ n, (P17658388611079857694.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P7277092244647676809

`C(∑[3/a(n-1)], 2)` with `a(0)=1`
-/

namespace A014494.P7277092244647676809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A014494.P7277092244647676809

namespace A014494

/-- `C(∑[3/a(n-1)], 2)` -/
def P7277092244647676809.Spec : Prop :=
  ∀ n, (P7277092244647676809.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P14393399166019440229

`C(∑[C(3, a(n-1))], 2)` with `a(0)=1`
-/

namespace A014494.P14393399166019440229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose 3 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A014494.P14393399166019440229

namespace A014494

/-- `C(∑[C(3, a(n-1))], 2)` -/
def P14393399166019440229.Spec : Prop :=
  ∀ n, (P14393399166019440229.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P12676943790770870016

`∑[2*(lcm(4, 2*n)-n)]`
-/

namespace A014494.P12676943790770870016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm 4 (2 * n) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014494.P12676943790770870016

namespace A014494

/-- `∑[2*(lcm(4, 2*n)-n)]` -/
def P12676943790770870016.Spec : Prop :=
  ∀ n, P12676943790770870016.a n = A014494 n

end A014494

/-! ## A014494.P13249055323956874224

`∑[2*n*3^and(1, n)]`
-/

namespace A014494.P13249055323956874224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * 3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014494.P13249055323956874224

namespace A014494

/-- `∑[2*n*3^and(1, n)]` -/
def P13249055323956874224.Spec : Prop :=
  ∀ n, (P13249055323956874224.a n : ℤ) = A014494 n

end A014494

/-! ## A014494.P13314395549825030558

`C(∑[∑[ogf((1+3x)/(1+x))]], 2)`
-/

namespace A014494.P13314395549825030558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A014494.P13314395549825030558

namespace A014494

/-- `C(∑[∑[ogf((1+3x)/(1+x))]], 2)` -/
def P13314395549825030558.Spec : Prop :=
  ∀ n, (P13314395549825030558.a n : ℤ) = A014494 n

end A014494

/-!
# A014495: Central binomial coefficient - 1.

The programs for A014495, the canonical program `A014495.P8648755420632744383` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014495 has offset 0).

The definition of A014495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014495.P8648755420632744383

`A001405(n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014495

/-- `A001405(n)-1` -/
def P8648755420632744383.Spec : Prop :=
  ∀ n, P8648755420632744383.a n = A014495 n

theorem P8648755420632744383.correct : P8648755420632744383.Spec := by
  intro n
  simp only [A014495]

end A014495

/-! ## A014495.P14311983331423030886

`C(n, floor(n/2))-1`
-/

namespace A014495.P14311983331423030886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) - 1

end

end A014495.P14311983331423030886

namespace A014495

/-- `C(n, floor(n/2))-1` -/
def P14311983331423030886.Spec : Prop :=
  ∀ n, P14311983331423030886.a n = A014495 n

end A014495

/-! ## A014495.P14485135428570882188

`A201686(n)+1`
-/

namespace A014495.P14485135428570882188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + 1

end

end A014495.P14485135428570882188

namespace A014495

/-- `A201686(n)+1` -/
def P14485135428570882188.Spec : Prop :=
  ∀ n, P14485135428570882188.a n = A014495 n

theorem P14485135428570882188.correct : P14485135428570882188.Spec := by
  intro n
  simp only [A014495, Nat.add_sub_cancel, A014495.P14485135428570882188.a, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014495

/-! ## A014495.P6556263413934947713

`A051920(n)-2`
-/

namespace A014495.P6556263413934947713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - 2

end

end A014495.P6556263413934947713

namespace A014495

/-- `A051920(n)-2` -/
def P6556263413934947713.Spec : Prop :=
  ∀ n, P6556263413934947713.a n = A014495 n

theorem P6556263413934947713.correct : P6556263413934947713.Spec := by
  intro n
  simp only [A014495, Nat.add_sub_cancel, A014495.P6556263413934947713.a, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014495

/-! ## A014495.P3452374894184482533

`abs(A126930(n))-1`
-/

namespace A014495.P3452374894184482533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n| - 1

end

end A014495.P3452374894184482533

namespace A014495

/-- `abs(A126930(n))-1` -/
def P3452374894184482533.Spec : Prop :=
  ∀ n, P3452374894184482533.a n = A014495 n

end A014495

/-! ## A014495.P18037364503565010491

`A210736(n+1)-1`
-/

namespace A014495.P18037364503565010491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - 1

end

end A014495.P18037364503565010491

namespace A014495

/-- `A210736(n+1)-1` -/
def P18037364503565010491.Spec : Prop :=
  ∀ n, P18037364503565010491.a n = A014495 n

end A014495

/-! ## A014495.P12792243059854226153

`∑[∑[A191529(n)]-1]`
-/

namespace A014495.P12792243059854226153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014495.P12792243059854226153

namespace A014495

/-- `∑[∑[A191529(n)]-1]` -/
def P12792243059854226153.Spec : Prop :=
  ∀ n, P12792243059854226153.a n = A014495 n

end A014495

/-! ## A014495.P7801434200523892877

`A037952(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A014495.P7801434200523892877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037952 (n - 1) + a (n - 1)

end

end A014495.P7801434200523892877

namespace A014495

/-- `A037952(n-1)+a(n-1)` -/
def P7801434200523892877.Spec : Prop :=
  ∀ n, P7801434200523892877.a n = A014495 n

end A014495

/-! ## A014495.P6328368377469432339

`A395396(n)+A059841(n)`
-/

namespace A014495.P6328368377469432339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395396 n + A059841 n

end

end A014495.P6328368377469432339

namespace A014495

/-- `A395396(n)+A059841(n)` -/
def P6328368377469432339.Spec : Prop :=
  ∀ n, P6328368377469432339.a n = A014495 n

end A014495

/-! ## A014495.P15506087585803168338

`A326763(n)-A370686(n)`
-/

namespace A014495.P15506087585803168338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326763 n - A370686 n

end

end A014495.P15506087585803168338

namespace A014495

/-- `A326763(n)-A370686(n)` -/
def P15506087585803168338.Spec : Prop :=
  ∀ n, P15506087585803168338.a n = A014495 n

end A014495

/-! ## A014495.P2836693213425724314

`A072100(n+1)-A166588(n)`
-/

namespace A014495.P2836693213425724314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1) - A166588 n

end

end A014495.P2836693213425724314

namespace A014495

/-- `A072100(n+1)-A166588(n)` -/
def P2836693213425724314.Spec : Prop :=
  ∀ n, P2836693213425724314.a n = A014495 n

end A014495

/-! ## A014495.P15267766852874161134

`A126869(n)+A138364(n)-1`
-/

namespace A014495.P15267766852874161134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + (A138364 n - 1)

end

end A014495.P15267766852874161134

namespace A014495

/-- `A126869(n)+A138364(n)-1` -/
def P15267766852874161134.Spec : Prop :=
  ∀ n, P15267766852874161134.a n = A014495 n

end A014495

/-! ## A014495.P5994442073891258452

`A033999(2*n+1)+A001405(n)`
-/

namespace A014495.P5994442073891258452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001405 n

end

end A014495.P5994442073891258452

namespace A014495

/-- `A033999(2*n+1)+A001405(n)` -/
def P5994442073891258452.Spec : Prop :=
  ∀ n, P5994442073891258452.a n = A014495 n

end A014495

/-! ## A014495.P4154835047251214842

`(∏[2*or(1, n)/(n+1)]-2)/2`
-/

namespace A014495.P4154835047251214842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2

end

end A014495.P4154835047251214842

namespace A014495

/-- `(∏[2*or(1, n)/(n+1)]-2)/2` -/
def P4154835047251214842.Spec : Prop :=
  ∀ n, P4154835047251214842.a n = (A014495 n : ℚ)

end A014495

/-! ## A014495.P996017721883176936

`A218008(n)/2`
-/

namespace A014495.P996017721883176936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218008 n : ℚ) / 2

end

end A014495.P996017721883176936

namespace A014495

/-- `A218008(n)/2` -/
def P996017721883176936.Spec : Prop :=
  ∀ n, P996017721883176936.a n = (A014495 n : ℚ)

end A014495

/-! ## A014495.P8305385807972301250

`Δ[∑[A210736(n)]-n]`
-/

namespace A014495.P8305385807972301250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014495.P8305385807972301250

namespace A014495

/-- `Δ[∑[A210736(n)]-n]` -/
def P8305385807972301250.Spec : Prop :=
  ∀ n, P8305385807972301250.a n = A014495 n

end A014495

/-! ## A014495.P7216698227513001555

`A063886(n+1)/2-1`
-/

namespace A014495.P7216698227513001555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) : ℚ) / 2 - 1

end

end A014495.P7216698227513001555

namespace A014495

/-- `A063886(n+1)/2-1` -/
def P7216698227513001555.Spec : Prop :=
  ∀ n, P7216698227513001555.a n = (A014495 n : ℚ)

end A014495

/-! ## A014495.P14132566962279296189

`A182027(n+2)/2-1`
-/

namespace A014495.P14132566962279296189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (n + 2) : ℚ) / 2 - 1

end

end A014495.P14132566962279296189

namespace A014495

/-- `A182027(n+2)/2-1` -/
def P14132566962279296189.Spec : Prop :=
  ∀ n, P14132566962279296189.a n = (A014495 n : ℚ)

end A014495

/-! ## A014495.P2504741004450882824

`A208976(n)%A128015(n)`
-/

namespace A014495.P2504741004450882824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208976 n) (A128015 n)

end

end A014495.P2504741004450882824

namespace A014495

/-- `A208976(n)%A128015(n)` -/
def P2504741004450882824.Spec : Prop :=
  ∀ n, P2504741004450882824.a n = A014495 n

end A014495

/-! ## A014495.P5921064423549763075

`∑[A037952(n)]-A037952(n)`
-/

namespace A014495.P5921064423549763075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037952 n

end

end A014495.P5921064423549763075

namespace A014495

/-- `∑[A037952(n)]-A037952(n)` -/
def P5921064423549763075.Spec : Prop :=
  ∀ n, P5921064423549763075.a n = A014495 n

end A014495

/-!
# A014496: Theta series of hypothetical extremal 3-modular even 36-dimensional lattice with minimal norm 8 and det = 3^18.

The programs for A014496, there is no canonical definition to state claims against.
-/

/-! ## A014496.P5250955801854609045

`A057405(n)*A152394(A052443(n+1))`
-/

namespace A014496.P5250955801854609045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057405 n * A152394 (A052443 (n + 1)).toNat

end

end A014496.P5250955801854609045

/-!
# A014497: Theta series of hypothetical extremal 3-modular even 48-dimensional lattice with minimal norm 10 and det = 3^24.

The programs for A014497, there is no canonical definition to state claims against.
-/

/-! ## A014497.P17762454984069844085

`A397657(A328296(n))`
-/

namespace A014497.P17762454984069844085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397657 (A328296 n).toNat

end

end A014497.P17762454984069844085

/-! ## A014497.P5160133682500318764

`A003221(n)*A265089(A008000(n))`
-/

namespace A014497.P5160133682500318764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003221 n * A265089 (A008000 n).toNat

end

end A014497.P5160133682500318764

/-!
# A014498: Varying radii of inscribed circles within primitive Pythagorean triples as a function of increasing values of hypotenuse.

The programs for A014498, there is no canonical definition to state claims against.
-/

/-! ## A014498.P15883081711937738450

`A087459(n+1)/2`
-/

namespace A014498.P15883081711937738450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087459 (n + 1) : ℚ) / 2

end

end A014498.P15883081711937738450

/-! ## A014498.P10098659821226728282

`sqrt(A118961(n+1)*A118962(n+1)/2)`
-/

namespace A014498.P10098659821226728282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A118961 (n + 1) * A118962 (n + 1) : ℚ) / 2 : ℝ)

end

end A014498.P10098659821226728282

/-! ## A014498.P11311484870688154994

`(A046086(n+1)+A046087(n+1)-A020882(n+1))/2`
-/

namespace A014498.P11311484870688154994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046086 (n + 1) + A046087 (n + 1) - A020882 (n + 1) : ℚ) / 2

end

end A014498.P11311484870688154994

/-! ## A014498.P4532674575692725485

`A014682(A087459(n+1))`
-/

namespace A014498.P4532674575692725485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A087459 (n + 1)).toNat

end

end A014498.P4532674575692725485

/-! ## A014498.P11043944918040506219

`(A120681(n+1)-A020882(n+1))/2`
-/

namespace A014498.P11043944918040506219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120681 (n + 1) - A020882 (n + 1) : ℚ) / 2

end

end A014498.P11043944918040506219

/-! ## A014498.P7487312908779476829

`(A046086(n+1)-A118961(n+1))/2`
-/

namespace A014498.P7487312908779476829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046086 (n + 1) - A118961 (n + 1) : ℚ) / 2

end

end A014498.P7487312908779476829

/-! ## A014498.P13598582140066523613

`(A046087(n+1)-A118962(n+1))/2`
-/

namespace A014498.P13598582140066523613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) - A118962 (n + 1) : ℚ) / 2

end

end A014498.P13598582140066523613

/-! ## A014498.P6718801826911573916

`A120644(n+1)/(A120681(n+1)+A020882(n+1))`
-/

namespace A014498.P6718801826911573916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120644 (n + 1) : ℚ) / (A120681 (n + 1) + A020882 (n + 1) : ℚ)

end

end A014498.P6718801826911573916

/-! ## A014498.P15109677176272877739

`A008619(A087459(n+1)-1)`
-/

namespace A014498.P15109677176272877739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A087459 (n + 1) - 1).toNat

end

end A014498.P15109677176272877739

/-! ## A014498.P5866962578951872296

`A052938(A087459(n+1)-2)`
-/

namespace A014498.P5866962578951872296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A087459 (n + 1) - 2).toNat

end

end A014498.P5866962578951872296

/-!
# A014499: Number of 1's in binary representation of n-th prime.

The programs for A014499, the canonical program `A014499.P9770580101482900462` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014499 has offset 1).

The definition of A014499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014499.P9770580101482900462

`A000120(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014499

/-- `A000120(A000040(n+1))` -/
def P9770580101482900462.Spec : Prop :=
  ∀ n, P9770580101482900462.a n = A014499 (n + 1)

theorem P9770580101482900462.correct : P9770580101482900462.Spec := by
  intro n
  simp only [A014499, Nat.add_sub_cancel]

end A014499

/-! ## A014499.P5431903843618386073

`∑{digits}[A004676(n+1), #]`
-/

namespace A014499.P5431903843618386073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A014499.P5431903843618386073

namespace A014499

/-- `∑{digits}[A004676(n+1), #]` -/
def P5431903843618386073.Spec : Prop :=
  ∀ n, (P5431903843618386073.a n : ℤ) = A014499 (n + 1)

end A014499

/-! ## A014499.P7987897598724869267

`A344511(A162720(n+1))`
-/

namespace A014499.P7987897598724869267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A162720 (n + 1)).toNat

end

end A014499.P7987897598724869267

namespace A014499

/-- `A344511(A162720(n+1))` -/
def P7987897598724869267.Spec : Prop :=
  ∀ n, P7987897598724869267.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P13229700827726337926

`Δ[A007504(n)]-A080085(n+1)`
-/

namespace A014499.P13229700827726337926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080085 (n + 1)

end

end A014499.P13229700827726337926

namespace A014499

/-- `Δ[A007504(n)]-A080085(n+1)` -/
def P13229700827726337926.Spec : Prop :=
  ∀ n, P13229700827726337926.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P11810886049375765260

`A372516(n+1)+A035103(n+1)`
-/

namespace A014499.P11810886049375765260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372516 (n + 1) + A035103 (n + 1)

end

end A014499.P11810886049375765260

namespace A014499

/-- `A372516(n+1)+A035103(n+1)` -/
def P11810886049375765260.Spec : Prop :=
  ∀ n, P11810886049375765260.a n = A014499 (n + 1)

theorem P11810886049375765260.correct : P11810886049375765260.Spec := by
  intro n
  simp only [A014499, Nat.add_sub_cancel, A014499.P11810886049375765260.a, A014499.P9770580101482900462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A035103, A035103.P1324719609663575418.a, A372516, A372516.P8084116944890719171.a, A005187, A005187.P3874015513960485494.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014499

/-! ## A014499.P18168986590866465101

`A035100(n+1)-A035103(n+1)`
-/

namespace A014499.P18168986590866465101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) - A035103 (n + 1)

end

end A014499.P18168986590866465101

namespace A014499

/-- `A035100(n+1)-A035103(n+1)` -/
def P18168986590866465101.Spec : Prop :=
  ∀ n, P18168986590866465101.a n = A014499 (n + 1)

theorem P18168986590866465101.correct : P18168986590866465101.Spec := by
  intro n
  simp only [A014499, Nat.add_sub_cancel, A014499.P18168986590866465101.a, A014499.P9770580101482900462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A035100, A035100.P16711503485959756516.a, A035103, A035103.P1324719609663575418.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014499

/-! ## A014499.P4820062883050039525

`A000040(n+1)-A080085(n+1)`
-/

namespace A014499.P4820062883050039525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A080085 (n + 1)

end

end A014499.P4820062883050039525

namespace A014499

/-- `A000040(n+1)-A080085(n+1)` -/
def P4820062883050039525.Spec : Prop :=
  ∀ n, P4820062883050039525.a n = A014499 (n + 1)

theorem P4820062883050039525.correct : P4820062883050039525.Spec := by
  intro n
  simp only [A014499, Nat.add_sub_cancel, A014499.P4820062883050039525.a, A014499.P9770580101482900462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A080085, A080085.P4216384539738297619.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014499

/-! ## A014499.P10724846748634039340

`A000120(n+1)-A090455(n+1)`
-/

namespace A014499.P10724846748634039340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A090455 (n + 1)

end

end A014499.P10724846748634039340

namespace A014499

/-- `A000120(n+1)-A090455(n+1)` -/
def P10724846748634039340.Spec : Prop :=
  ∀ n, P10724846748634039340.a n = A014499 (n + 1)

theorem P10724846748634039340.correct : P10724846748634039340.Spec := by
  intro n
  simp only [A014499, Nat.add_sub_cancel, A014499.P10724846748634039340.a, A014499.P9770580101482900462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A090455, A090455.P12087489954554024740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014499

/-! ## A014499.P1667825303908101134

`A100484(n+1)-A084421(n+1)`
-/

namespace A014499.P1667825303908101134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A084421 (n + 1)

end

end A014499.P1667825303908101134

namespace A014499

/-- `A100484(n+1)-A084421(n+1)` -/
def P1667825303908101134.Spec : Prop :=
  ∀ n, P1667825303908101134.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P14293683166510925842

`A177959(n+1)-A163293(n+1)`
-/

namespace A014499.P14293683166510925842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177959 (n + 1) - A163293 (n + 1)

end

end A014499.P14293683166510925842

namespace A014499

/-- `A177959(n+1)-A163293(n+1)` -/
def P14293683166510925842.Spec : Prop :=
  ∀ n, P14293683166510925842.a n = A014499 (n + 1)

theorem P14293683166510925842.correct : P14293683166510925842.Spec := by
  intro n
  simp only [A014499, Nat.add_sub_cancel, A014499.P14293683166510925842.a, A014499.P9770580101482900462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A163293, A163293.P4247609805888595491.a, A177959, A177959.P3892879503494814762.a, A005187, A005187.P3874015513960485494.a, A035100, A035100.P16711503485959756516.a, A035103, A035103.P1324719609663575418.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014499

/-! ## A014499.P6962803850702376461

`A328659(n+1)-(A328659(n)+A035103(n+1))`
-/

namespace A014499.P6962803850702376461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 (n + 1) - (A328659 n + A035103 (n + 1))

end

end A014499.P6962803850702376461

namespace A014499

/-- `A328659(n+1)-(A328659(n)+A035103(n+1))` -/
def P6962803850702376461.Spec : Prop :=
  ∀ n, P6962803850702376461.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P5414080188702961716

`A000040(n+1)+A000040(n+1)-A084421(n+1)`
-/

namespace A014499.P5414080188702961716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 1) - A084421 (n + 1))

end

end A014499.P5414080188702961716

namespace A014499

/-- `A000040(n+1)+A000040(n+1)-A084421(n+1)` -/
def P5414080188702961716.Spec : Prop :=
  ∀ n, P5414080188702961716.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P1344646727878686531

`A035531(record[A006530(n+2)])`
-/

namespace A014499.P1344646727878686531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014499.P1344646727878686531

namespace A014499

/-- `A035531(record[A006530(n+2)])` -/
def P1344646727878686531.Spec : Prop :=
  ∀ n, P1344646727878686531.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P5595789645788634484

`A035531(record[A020639(n+2)])`
-/

namespace A014499.P5595789645788634484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014499.P5595789645788634484

namespace A014499

/-- `A035531(record[A020639(n+2)])` -/
def P5595789645788634484.Spec : Prop :=
  ∀ n, P5595789645788634484.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P2082116890013207844

`A063787(A111333(n+1))`
-/

namespace A014499.P2082116890013207844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A111333 (n + 1)).toNat

end

end A014499.P2082116890013207844

namespace A014499

/-- `A063787(A111333(n+1))` -/
def P2082116890013207844.Spec : Prop :=
  ∀ n, P2082116890013207844.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P7619703536823382465

`A000040(n+1)-A078896(A000040(n+1)-1)`
-/

namespace A014499.P7619703536823382465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A078896 (A000040 (n + 1) - 1).toNat

end

end A014499.P7619703536823382465

namespace A014499

/-- `A000040(n+1)-A078896(A000040(n+1)-1)` -/
def P7619703536823382465.Spec : Prop :=
  ∀ n, P7619703536823382465.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P10041145046276958274

`A000120(A088147(n+1))`
-/

namespace A014499.P10041145046276958274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A088147 (n + 1)).toNat

end

end A014499.P10041145046276958274

namespace A014499

/-- `A000120(A088147(n+1))` -/
def P10041145046276958274.Spec : Prop :=
  ∀ n, P10041145046276958274.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P17954378007438008560

`A000120(p?[comp[n²]])`
-/

namespace A014499.P17954378007438008560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A014499.P17954378007438008560

namespace A014499

/-- `A000120(p?[comp[n²]])` -/
def P17954378007438008560.Spec : Prop :=
  ∀ n, P17954378007438008560.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P12193454493695290293

`A000120(A006005(n+1))`
-/

namespace A014499.P12193454493695290293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006005 (n + 1)).toNat

end

end A014499.P12193454493695290293

namespace A014499

/-- `A000120(A006005(n+1))` -/
def P12193454493695290293.Spec : Prop :=
  ∀ n, P12193454493695290293.a n = A014499 (n + 1)

end A014499

/-! ## A014499.P1346004189438269444

`A081743(A006093(n+1))`
-/

namespace A014499.P1346004189438269444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A006093 (n + 1)).toNat

end

end A014499.P1346004189438269444

namespace A014499

/-- `A081743(A006093(n+1))` -/
def P1346004189438269444.Spec : Prop :=
  ∀ n, P1346004189438269444.a n = A014499 (n + 1)

end A014499

