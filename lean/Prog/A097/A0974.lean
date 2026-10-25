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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A097401: Largest achievable determinant of a 3 X 3 matrix whose elements are 9 distinct nonnegative integers chosen from the range 0..n.

The programs for A097401, the canonical program `A097401.P8847930580663764338` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097401 has offset 8).

The definition of A097401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097401.P8847930580663764338

`2*((n+8)^3-9*(n+8)²+34*(n+8)-42)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097401

/-- `2*((n+8)^3-9*(n+8)²+34*(n+8)-42)` -/
def P8847930580663764338.Spec : Prop :=
  ∀ n, P8847930580663764338.a n = A097401 (n + 8)

theorem P8847930580663764338.correct : P8847930580663764338.Spec := by
  intro n
  simp only [A097401, Nat.add_sub_cancel]

end A097401

/-! ## A097401.P1180606095488522513

`A008574(n+5)+A008574(n+6)*A167614(n+3)`
-/

namespace A097401.P1180606095488522513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 5) + A008574 (n + 6) * A167614 (n + 3)

end

end A097401.P1180606095488522513

namespace A097401

/-- `A008574(n+5)+A008574(n+6)*A167614(n+3)` -/
def P1180606095488522513.Spec : Prop :=
  ∀ n, P1180606095488522513.a n = A097401 (n + 8)

end A097401

/-! ## A097401.P11541186553541568463

`A005898(n+4)+Δ[A270109(n+6)]`
-/

namespace A097401.P11541186553541568463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (n + 4) + (f1 (n + 1) - f1 n)

end

end A097401.P11541186553541568463

namespace A097401

/-- `A005898(n+4)+Δ[A270109(n+6)]` -/
def P11541186553541568463.Spec : Prop :=
  ∀ n, P11541186553541568463.a n = A097401 (n + 8)

theorem P11541186553541568463.correct : P11541186553541568463.Spec := by
  intro n
  simp only [A097401, Nat.add_sub_cancel, A097401.P11541186553541568463.f1, A097401.P11541186553541568463.a, A097401.P8847930580663764338.a, A005898, A005898.P8127451400230703254.a, A270109, A270109.P17257265850259097044.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097401

/-! ## A097401.P9816761790282842995

`A008586(n+6)*A167499(n+3)-A008586(n+7)`
-/

namespace A097401.P9816761790282842995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 6) * A167499 (n + 3) - A008586 (n + 7)

end

end A097401.P9816761790282842995

namespace A097401

/-- `A008586(n+6)*A167499(n+3)-A008586(n+7)` -/
def P9816761790282842995.Spec : Prop :=
  ∀ n, P9816761790282842995.a n = A097401 (n + 8)

end A097401

/-! ## A097401.P3994877210458381033

`A004276(n+9)*A027692(n+4)-A027692(n+3)`
-/

namespace A097401.P3994877210458381033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 9) * A027692 (n + 4) - A027692 (n + 3)

end

end A097401.P3994877210458381033

namespace A097401

/-- `A004276(n+9)*A027692(n+4)-A027692(n+3)` -/
def P3994877210458381033.Spec : Prop :=
  ∀ n, P3994877210458381033.a n = A097401 (n + 8)

end A097401

/-! ## A097401.P2562978057918218129

`A008486(A016897(n+5))+A007588(n+5)`
-/

namespace A097401.P2562978057918218129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A016897 (n + 5)).toNat + A007588 (n + 5)

end

end A097401.P2562978057918218129

namespace A097401

/-- `A008486(A016897(n+5))+A007588(n+5)` -/
def P2562978057918218129.Spec : Prop :=
  ∀ n, P2562978057918218129.a n = A097401 (n + 8)

end A097401

/-!
# A097402: Numbers k such that 6*10^k + 2*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A097402, there is no canonical definition to state claims against.
-/

/-! ## A097402.P7411244242969598461

`A346252(n²*comp[∑[n]])`
-/

namespace A097402.P7411244242969598461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346252 (n ^ 2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A097402.P7411244242969598461

/-!
# A097403: Minimum wind speed in knots for Beaufort Number n.

The programs for A097403, there is no canonical definition to state claims against.
-/

/-! ## A097403.P3668806909414888231

`floor(∑[sqrt(A247803(3*n+1))])`
-/

namespace A097403.P3668806909414888231
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A247803 (3 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A097403.P3668806909414888231

/-! ## A097403.P12827147960325920554

`floor(∑[log(A078971(2*(n+1)))])`
-/

namespace A097403.P12827147960325920554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A078971 (2 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A097403.P12827147960325920554

/-! ## A097403.P4092862447872439056

`∑[floor(e*sqrt(n))-A053260(n)]`
-/

namespace A097403.P4092862447872439056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * Real.sqrt (n : ℝ)⌋ - A053260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097403.P4092862447872439056

/-! ## A097403.P1035058394790018779

`A047299(∑[A003002(n)]+1)`
-/

namespace A097403.P1035058394790018779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A097403.P1035058394790018779

/-! ## A097403.P2033249638790669784

`A127032(n+1)+A109512(n)`
-/

namespace A097403.P2033249638790669784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127032 (n + 1) + A109512 n

end

end A097403.P2033249638790669784

/-!
# A097404: Minimum wind speed in statute miles per hour for Beaufort Number n.

The programs for A097404, there is no canonical definition to state claims against.
-/

/-! ## A097404.P1450937755039870091

`A007187(n+2)-A134451(A211343(n+1))`
-/

namespace A097404.P1450937755039870091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007187 (n + 2) - A134451 (A211343 (n + 1)).toNat

end

end A097404.P1450937755039870091

/-!
# A097405: Number of different rectangles created when a square sheet of paper is folded n times, the first time by one of the diagonals of the square and after by the median of the triangle.

The programs for A097405, there is no canonical definition to state claims against.
-/

/-! ## A097405.P14620457831647729034

`A096260(n+1)-(A096227(n+1)+1)`
-/

namespace A097405.P14620457831647729034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096260 (n + 1) - (A096227 (n + 1) + 1)

end

end A097405.P14620457831647729034

/-! ## A097405.P1202289348431405167

`A030000(A354847(n)-A185306(n+1))`
-/

namespace A097405.P1202289348431405167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 (A354847 n - A185306 (n + 1)).toNat

end

end A097405.P1202289348431405167

/-!
# A097406: Largest primitive prime factor of 2^n-1, or a(n) = 1 if no such prime exists.

The programs for A097406, there is no canonical definition to state claims against.
-/

/-! ## A097406.P9723447985432030803

`A006530(A064078(n+1))`
-/

namespace A097406.P9723447985432030803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064078 (n + 1)).toNat

end

end A097406.P9723447985432030803

/-! ## A097406.P11871344859295467053

`(n+1)*A097407(n+1)+1`
-/

namespace A097406.P11871344859295467053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097407 (n + 1) + 1

end

end A097406.P11871344859295467053

/-! ## A097406.P8667992963761111377

`A219792(2*A064078(n+1))`
-/

namespace A097406.P8667992963761111377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219792 (2 * A064078 (n + 1)).toNat

end

end A097406.P8667992963761111377

/-! ## A097406.P16389078935445570124

`A219792(lcm(2, A064078(n+1)))`
-/

namespace A097406.P16389078935445570124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219792 (Int.lcm 2 (A064078 (n + 1)))

end

end A097406.P16389078935445570124

/-!
# A097407: a(n) = (A097406(n) - 1)/n.

The programs for A097407, there is no canonical definition to state claims against.
-/

/-! ## A097407.P16276712934399722985

`(A097406(n+1)-1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097407.P16276712934399722985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097406 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A097407.P16276712934399722985

/-! ## A097407.P17696709734871258516

`floor(A097406(n+1)/(A028310(n)+1))`
-/

namespace A097407.P17696709734871258516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097406 (n + 1) : ℚ) / (A028310 n + 1 : ℚ)⌋

end

end A097407.P17696709734871258516

/-! ## A097407.P15872804487554222367

`floor(A097406(n+1)/A233583(n+2))`
-/

namespace A097407.P15872804487554222367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097406 (n + 1) : ℚ) / (A233583 (n + 2) : ℚ)⌋

end

end A097407.P15872804487554222367

/-! ## A097407.P12654158522977910065

`A000374(A097406(n+1))-1`
-/

namespace A097407.P12654158522977910065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A097406 (n + 1)).toNat - 1

end

end A097407.P12654158522977910065

/-! ## A097407.P49700050431803883

`(A006530(A064078(n+1))-1)/(n+1)`
-/

namespace A097407.P49700050431803883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A064078 (n + 1)).toNat - 1 : ℚ) / (n + 1 : ℚ)

end

end A097407.P49700050431803883

/-!
# A097408: Initial decimal digit of n^4.

The programs for A097408, there is no canonical definition to state claims against.
-/

/-! ## A097408.P12745251616202368575

`A002108(n+1)%10`
-/

namespace A097408.P12745251616202368575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002108 (n + 1)) 10

end

end A097408.P12745251616202368575

/-! ## A097408.P3290685921282603607

`A002942((n+1)²)%10`
-/

namespace A097408.P3290685921282603607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002942 ((n + 1) ^ 2)) 10

end

end A097408.P3290685921282603607

/-! ## A097408.P15972697264606717432

`dr(A002942(∑[2*n+1])%10)`
-/

namespace A097408.P15972697264606717432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A002942 (∑ j ∈ Finset.range (n + 1), f1 j)) 10)

end

end A097408.P15972697264606717432

/-! ## A097408.P12805338631702144586

`(A061226((n+1)²)-(n+1)^4)%10`
-/

namespace A097408.P12805338631702144586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061226 ((n + 1) ^ 2) - ((n + 1) ^ 4 : ℤ)) 10

end

end A097408.P12805338631702144586

/-! ## A097408.P9372481168207993132

`A002993(((n+1)/10^val(n+1, 10))²)`
-/

namespace A097408.P9372481168207993132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)) ^ 2)).toNat

end

end A097408.P9372481168207993132

/-! ## A097408.P1712209360319482772

`xor(1, xor(1, A002942(∑[n+1+n])))%10`
-/

namespace A097408.P1712209360319482772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (Int.xor 1 (A002942 (∑ j ∈ Finset.range (n + 1), f1 j)))) 10

end

end A097408.P1712209360319482772

/-! ## A097408.P149376349163905482

`A002993(A004151((n+1)²))`
-/

namespace A097408.P149376349163905482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A004151 ((n + 1) ^ 2)).toNat

end

end A097408.P149376349163905482

/-! ## A097408.P10706820727551906392

`A002993(A004151(n+1)^2)`
-/

namespace A097408.P10706820727551906392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A004151 (n + 1) ^ 2).toNat

end

end A097408.P10706820727551906392

/-! ## A097408.P15568672880674558184

`A010879(A367360(n*(n+2)))`
-/

namespace A097408.P15568672880674558184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A367360 (n * (n + 2))).toNat

end

end A097408.P15568672880674558184

/-! ## A097408.P17478483751104699600

`A002993((n+1)*A004151(n+1))`
-/

namespace A097408.P17478483751104699600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 ((n + 1 : ℤ) * A004151 (n + 1)).toNat

end

end A097408.P17478483751104699600

/-! ## A097408.P10203840346034876974

`(A007318(C(2, n))*A002942(∑[2*n+1]))%10`
-/

namespace A097408.P10203840346034876974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (Nat.choose 2 n) * A002942 (∑ j ∈ Finset.range (n + 1), f1 j)) 10

end

end A097408.P10203840346034876974

/-!
# A097409: Initial decimal digit of n^5.

The programs for A097409, there is no canonical definition to state claims against.
-/

/-! ## A097409.P1776025346843056058

`A002118(n+1)%10`
-/

namespace A097409.P1776025346843056058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002118 (n + 1)) 10

end

end A097409.P1776025346843056058

/-! ## A097409.P18425377489881198636

`A002993(∑{digits}[9*n, #/9]+floor(sqrt((n+1)^5)))`
-/

namespace A097409.P18425377489881198636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (SequenceMachineLib.roundAway (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 9).sum + (Nat.sqrt ((n + 1) ^ 5) : ℚ))).toNat

end

end A097409.P18425377489881198636

/-! ## A097409.P14611325427954580888

`A002993(floor(sqrt((n+1)^5))+n^(char[n²]/2))`
-/

namespace A097409.P14611325427954580888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (SequenceMachineLib.roundAway ((Nat.sqrt ((n + 1) ^ 5) : ℝ) + (n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))).toNat

end

end A097409.P14611325427954580888

/-! ## A097409.P12979677420367212143

`A008953(A172473(n+1))`
-/

namespace A097409.P12979677420367212143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008953 (A172473 (n + 1)).toNat

end

end A097409.P12979677420367212143

/-! ## A097409.P17091956107821820582

`A002994((n+1)*A030691(n+1))`
-/

namespace A097409.P17091956107821820582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 ((n + 1 : ℤ) * A030691 (n + 1)).toNat

end

end A097409.P17091956107821820582

/-!
# A097410: Initial decimal digit of n^6.

The programs for A097410, there is no canonical definition to state claims against.
-/

/-! ## A097410.P3191344820218370155

`A002138(n+1)%10`
-/

namespace A097410.P3191344820218370155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002138 (n + 1)) 10

end

end A097410.P3191344820218370155

/-! ## A097410.P17860841708915980569

`A004165((n+1)²)%10`
-/

namespace A097410.P17860841708915980569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004165 ((n + 1) ^ 2)) 10

end

end A097410.P17860841708915980569

/-! ## A097410.P5431591997884255135

`A032761((n+1)²)%10`
-/

namespace A097410.P5431591997884255135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032761 ((n + 1) ^ 2)) 10

end

end A097410.P5431591997884255135

/-! ## A097410.P11061450431388785872

`A002994(((n+1)/10^val(n+1, 10))²)`
-/

namespace A097410.P11061450431388785872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)) ^ 2)).toNat

end

end A097410.P11061450431388785872

/-! ## A097410.P1821295382115137771

`A002994((n+1)*(n+1)/10^val(n+1, 10))`
-/

namespace A097410.P1821295382115137771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)))).toNat

end

end A097410.P1821295382115137771

/-! ## A097410.P12246173751649165008

`A002994(A004151((n+1)²))`
-/

namespace A097410.P12246173751649165008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 (A004151 ((n + 1) ^ 2)).toNat

end

end A097410.P12246173751649165008

/-! ## A097410.P14500080154834537114

`A002994((n+1)*A004151(n+1))`
-/

namespace A097410.P14500080154834537114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 ((n + 1 : ℤ) * A004151 (n + 1)).toNat

end

end A097410.P14500080154834537114

/-! ## A097410.P17340851499955868200

`A002994((n+1)²)`
-/

namespace A097410.P17340851499955868200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 ((n + 1) ^ 2)

end

end A097410.P17340851499955868200

/-! ## A097410.P8866420357353633698

`dr(A002994((n+1)^2))`
-/

namespace A097410.P8866420357353633698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002994 ((n + 1) ^ 2))

end

end A097410.P8866420357353633698

/-! ## A097410.P9671967993130829370

`A002994(∑[2*n+1])%10`
-/

namespace A097410.P9671967993130829370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002994 (∑ j ∈ Finset.range (n + 1), f1 j)) 10

end

end A097410.P9671967993130829370

/-!
# A097411: Initial decimal digit of n^7.

The programs for A097411, there is no canonical definition to state claims against.
-/

/-! ## A097411.P13886994183366888045

`A002140(n+1)%10`
-/

namespace A097411.P13886994183366888045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002140 (n + 1)) 10

end

end A097411.P13886994183366888045

/-! ## A097411.P464095329943727008

`A002993(floor(sqrt(∑{d}[n+1, #^7])))`
-/

namespace A097411.P464095329943727008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (Nat.sqrt (∑ d ∈ Nat.divisors (f1 n), d ^ 7))

end

end A097411.P464095329943727008

/-! ## A097411.P10341210325028220262

`A002993(ceil(sqrt(∑{d}[n+1, #^7])))`
-/

namespace A097411.P10341210325028220262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 ⌈Real.sqrt ((∑ d ∈ Nat.divisors (f1 n), d ^ 7 : ℕ) : ℝ)⌉.toNat

end

end A097411.P10341210325028220262

/-! ## A097411.P8739706277786649225

`A002993(round(sqrt(∑{d}[n+1, #^7])))`
-/

namespace A097411.P8739706277786649225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (SequenceMachineLib.roundAway (Real.sqrt ((∑ d ∈ Nat.divisors (f1 n), d ^ 7 : ℕ) : ℝ))).toNat

end

end A097411.P8739706277786649225

/-! ## A097411.P10232626105702351872

`A002993(floor(sqrt(A013955(n+1))))`
-/

namespace A097411.P10232626105702351872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (Int.sqrt (A013955 (n + 1))).toNat

end

end A097411.P10232626105702351872

/-!
# A097412: Initial decimal digit of n^8.

The programs for A097412, there is no canonical definition to state claims against.
-/

/-! ## A097412.P7837602317698184797

`A002232(n)%10`
-/

namespace A097412.P7837602317698184797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002232 n) 10

end

end A097412.P7837602317698184797

/-! ## A097412.P12574310556225981866

`A097408(n^ceil(atan(n)))-floor(acot(n))`
-/

namespace A097412.P12574310556225981866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097408 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A097412.P12574310556225981866

/-! ## A097412.P3231569842885616063

`(A002108(A253909(n))-floor(acot(n)))%10`
-/

namespace A097412.P3231569842885616063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002108 (A253909 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋) 10

end

end A097412.P3231569842885616063

/-! ## A097412.P956729957379901704

`A097408(n^ceil(atan(n)))-A000007(n)`
-/

namespace A097412.P956729957379901704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097408 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat - A000007 n

end

end A097412.P956729957379901704

/-! ## A097412.P3174003006219197980

`A057427(n)*A097408(n^ceil(atan(n)))`
-/

namespace A097412.P3174003006219197980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A097408 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

end

end A097412.P3174003006219197980

/-! ## A097412.P9508908461577570737

`A097408(round(sqrt(n²+1))²)-A000007(n)`
-/

namespace A097412.P9508908461577570737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097408 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) ^ 2).toNat - A000007 n

end

end A097412.P9508908461577570737

/-! ## A097412.P4839110383827376105

`A097408(n^ceil(atan(n)))-A000038(n)/2`
-/

namespace A097412.P4839110383827376105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097408 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat : ℚ) - (A000038 n : ℚ) / 2

end

end A097412.P4839110383827376105

/-!
# A097413: Initial decimal digit of n^9.

The programs for A097413, there is no canonical definition to state claims against.
-/

/-! ## A097413.P912232068617527387

`A002239(n+1)%10`
-/

namespace A097413.P912232068617527387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002239 (n + 1)) 10

end

end A097413.P912232068617527387

/-! ## A097413.P2094509270437768240

`A002994(Δ[∑[n]²])`
-/

namespace A097413.P2094509270437768240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002994 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A097413.P2094509270437768240

/-! ## A097413.P6391882967026097000

`A032761(Δ[∑[n]²])%10`
-/

namespace A097413.P6391882967026097000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032761 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A097413.P6391882967026097000

/-! ## A097413.P8997614395248665390

`dr(A002994(∑[A003215(n)]))`
-/

namespace A097413.P8997614395248665390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A097413.P8997614395248665390

/-! ## A097413.P2055132122962072933

`dr(A002994(A000578(n+1)))`
-/

namespace A097413.P2055132122962072933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002994 (A000578 (n + 1)).toNat)

end

end A097413.P2055132122962072933

/-!
# A097414: Initial decimal digit of n^10.

The programs for A097414, there is no canonical definition to state claims against.
-/

/-! ## A097414.P15041334469688552917

`A097409((n+1)²)`
-/

namespace A097414.P15041334469688552917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097409 ((n + 1) ^ 2)

end

end A097414.P15041334469688552917

/-! ## A097414.P5445858957028094371

`dr(A097409(xor(n, -1)²))`
-/

namespace A097414.P5445858957028094371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A097409 (Int.xor (n : ℤ) (-1) ^ 2).toNat)

end

end A097414.P5445858957028094371

/-! ## A097414.P18005399604276118974

`A097409((n+1)^2)%10`
-/

namespace A097414.P18005399604276118974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097409 ((n + 1) ^ 2)) 10

end

end A097414.P18005399604276118974

/-! ## A097414.P11184325544742114133

`dr(A097409(∑[2*n+1]))`
-/

namespace A097414.P11184325544742114133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A097409 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A097414.P11184325544742114133

/-! ## A097414.P2046204572776391750

`xor(1, xor(1, A097409((n+1)*(n+1))))`
-/

namespace A097414.P2046204572776391750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A097409 ((n + 1) * (n + 1))))

end

end A097414.P2046204572776391750

/-! ## A097414.P1250981734731777584

`A000034(2*n)*A097409(∑[2*n+1])`
-/

namespace A097414.P1250981734731777584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A097409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097414.P1250981734731777584

/-! ## A097414.P4598505355076174800

`A097409((n+1)^2)^A014963(2*(n+1))`
-/

namespace A097414.P4598505355076174800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097409 ((n + 1) ^ 2) : ℚ) ^ (A014963 (2 * (n + 1)) : ℤ)

end

end A097414.P4598505355076174800

/-! ## A097414.P11683933994438366231

`A097409(∑[2*n+1])^and(1, A000040(n+1))`
-/

namespace A097414.P11683933994438366231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097409 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A097414.P11683933994438366231

/-! ## A097414.P16972401960420511769

`A097409(∑[2*n+1])+A001222(gcd(n, n+1))`
-/

namespace A097414.P16972401960420511769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097409 (∑ j ∈ Finset.range (n + 1), f1 j) + A001222 (Nat.gcd n (n + 1))

end

end A097414.P16972401960420511769

/-! ## A097414.P5899636394538911099

`A000108(round(1/(n+2)))*A097409(∑[2*n+1])`
-/

namespace A097414.P5899636394538911099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (1 / (n + 2 : ℚ))).toNat * A097409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097414.P5899636394538911099

/-!
# A097415: Values of k such that the first digit of 2^k is 9.

The programs for A097415, the canonical program `A097415.P765900112222958148` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097415 has offset 1).

The definition of A097415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097415.P765900112222958148

`lt[8, A008952(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097415

/-- `lt[8, A008952(n)]` -/
def P765900112222958148.Spec : Prop :=
  ∀ n, (P765900112222958148.a n : ℤ) = A097415 (n + 1)

theorem P765900112222958148.correct : P765900112222958148.Spec := by
  intro n
  simp only [A097415, Nat.add_sub_cancel]

end A097415

/-! ## A097415.P4248295022844865300

`A000027(eq[9, A008952(n)])`
-/

namespace A097415.P4248295022844865300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097415.P4248295022844865300

namespace A097415

/-- `A000027(eq[9, A008952(n)])` -/
def P4248295022844865300.Spec : Prop :=
  ∀ n, P4248295022844865300.a n = A097415 (n + 1)

end A097415

/-! ## A097415.P2666596359669634648

`A028310(eq[9, A008952(n)])`
-/

namespace A097415.P2666596359669634648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097415.P2666596359669634648

namespace A097415

/-- `A028310(eq[9, A008952(n)])` -/
def P2666596359669634648.Spec : Prop :=
  ∀ n, P2666596359669634648.a n = A097415 (n + 1)

end A097415

/-! ## A097415.P9387200064004033063

`A087156(eq[9, A008952(n)])`
-/

namespace A097415.P9387200064004033063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097415.P9387200064004033063

namespace A097415

/-- `A087156(eq[9, A008952(n)])` -/
def P9387200064004033063.Spec : Prop :=
  ∀ n, P9387200064004033063.a n = A097415 (n + 1)

end A097415

/-! ## A097415.P15516521802418088956

`eq[A008952(n), A168094(n)]`
-/

namespace A097415.P15516521802418088956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097415.P15516521802418088956

namespace A097415

/-- `eq[A008952(n), A168094(n)]` -/
def P15516521802418088956.Spec : Prop :=
  ∀ n, (P15516521802418088956.a n : ℤ) = A097415 (n + 1)

end A097415

/-! ## A097415.P6493910857327179922

`eq[A008952(n), A180599(n)]`
-/

namespace A097415.P6493910857327179922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097415.P6493910857327179922

namespace A097415

/-- `eq[A008952(n), A180599(n)]` -/
def P6493910857327179922.Spec : Prop :=
  ∀ n, (P6493910857327179922.a n : ℤ) = A097415 (n + 1)

end A097415

/-! ## A097415.P15276013376157272854

`eq[A008952(n), A066586(n+1)]`
-/

namespace A097415.P15276013376157272854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097415.P15276013376157272854

namespace A097415

/-- `eq[A008952(n), A066586(n+1)]` -/
def P15276013376157272854.Spec : Prop :=
  ∀ n, (P15276013376157272854.a n : ℤ) = A097415 (n + 1)

end A097415

/-! ## A097415.P1367101608939315245

`eq[A008952(n), A094327(n+1)]`
-/

namespace A097415.P1367101608939315245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097415.P1367101608939315245

namespace A097415

/-- `eq[A008952(n), A094327(n+1)]` -/
def P1367101608939315245.Spec : Prop :=
  ∀ n, (P1367101608939315245.a n : ℤ) = A097415 (n + 1)

end A097415

/-! ## A097415.P11827333845250931134

`eq[(A141044(n)+2)², A008952(n)]`
-/

namespace A097415.P11827333845250931134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141044 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097415.P11827333845250931134

namespace A097415

/-- `eq[(A141044(n)+2)², A008952(n)]` -/
def P11827333845250931134.Spec : Prop :=
  ∀ n, (P11827333845250931134.a n : ℤ) = A097415 (n + 1)

end A097415

/-! ## A097415.P1818990346512769145

`eq[A008952(n), A098610(A347633(3*(n+1)))]`
-/

namespace A097415.P1818990346512769145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098610 (A347633 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097415.P1818990346512769145

namespace A097415

/-- `eq[A008952(n), A098610(A347633(3*(n+1)))]` -/
def P1818990346512769145.Spec : Prop :=
  ∀ n, (P1818990346512769145.a n : ℤ) = A097415 (n + 1)

end A097415

/-! ## A097415.P5177556701191464947

`eq[9, A000030(A247243(n+1))]`
-/

namespace A097415.P5177556701191464947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097415.P5177556701191464947

namespace A097415

/-- `eq[9, A000030(A247243(n+1))]` -/
def P5177556701191464947.Spec : Prop :=
  ∀ n, (P5177556701191464947.a n : ℤ) = A097415 (n + 1)

end A097415

/-!
# A097416: Numbers n such that A076078(m)=n for some m, excluding powers of 2.

The programs for A097416, there is no canonical definition to state claims against.
-/

/-! ## A097416.P1350025927040446589

`filter[A097210(n+1), A202238(#)]`
-/

namespace A097416.P1350025927040446589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A097416.P1350025927040446589

/-! ## A097416.P842118195584048548

`filter[A097210(n+1), A323170(#)]`
-/

namespace A097416.P842118195584048548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A097416.P842118195584048548

/-! ## A097416.P7935561535581608775

`filter[A097210(n+1), A347523(#)]`
-/

namespace A097416.P7935561535581608775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A097416.P7935561535581608775

/-! ## A097416.P9357595890177963329

`filter[A097210(n+1), A143731(#)]`
-/

namespace A097416.P9357595890177963329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A097416.P9357595890177963329

/-! ## A097416.P1120007281108369376

`filter[A097210(n+2), A267579(#)]`
-/

namespace A097416.P1120007281108369376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A097416.P1120007281108369376

/-!
# A097417: a(1)=1; a(n+1) = Sum_{k=1..n} a(k) a(floor(n/k)).

The programs for A097417, there is no canonical definition to state claims against.
-/

/-! ## A097417.P3552109282931767442

`A008620(A001654(n+1)-n)`
-/

namespace A097417.P3552109282931767442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A001654 (n + 1) - (n : ℤ)).toNat

end

end A097417.P3552109282931767442

/-! ## A097417.P1141441194056591438

`A008620(∑[A037027(∑[n])²]-n)`
-/

namespace A097417.P1141441194056591438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A097417.P1141441194056591438

/-! ## A097417.P727099459238351070

`A008620(A006498(2*n+1)-n)`
-/

namespace A097417.P727099459238351070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A006498 (2 * n + 1) - (n : ℤ)).toNat

end

end A097417.P727099459238351070

/-! ## A097417.P16110002672451256065

`A008620(A080239(2*n+1)-n)`
-/

namespace A097417.P16110002672451256065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A080239 (2 * n + 1) - (n : ℤ)).toNat

end

end A097417.P16110002672451256065

/-! ## A097417.P4263939377321779734

`A008620(∑[A000045(n+1)²]-n)`
-/

namespace A097417.P4263939377321779734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A097417.P4263939377321779734

/-!
# A097418: Triangle of coefficients of a certain sequence of polynomials f_n(x) arising in connection with deformations of coordinate rings of type D Kleinian singularities.

The programs for A097418, there is no canonical definition to state claims against.
-/

/-! ## A097418.P200618601368229116

`A351981(A081580(n))+A143324(n+1)`
-/

namespace A097418.P200618601368229116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351981 (A081580 n).toNat + A143324 (n + 1)

end

end A097418.P200618601368229116

/-!
# A097419: a(1) = 2, a(n) = 2*a(n-1)^2 - a(n-1) for n > 1.

The programs for A097419, the canonical program `A097419.P13634893462076531613` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097419 has offset 1).

The definition of A097419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²-a(n-1)` (program `A097419.P13634893462076531613`, by `A097419.P13634893462076531613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097419.P13634893462076531613

`2*a(n-1)²-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097419

/-- `2*a(n-1)²-a(n-1)` -/
def P13634893462076531613.Spec : Prop :=
  ∀ n, P13634893462076531613.a n = A097419 (n + 1)

theorem P13634893462076531613.correct : P13634893462076531613.Spec := by
  intro n
  simp only [A097419, Nat.add_sub_cancel]

end A097419

/-! ## A097419.P3506297012420913020

`C(2*a(n-1), 2)` with `a(0)=2`
-/

namespace A097419.P3506297012420913020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (2 * a (n - 1)) 2

end

end A097419.P3506297012420913020

namespace A097419

/-- `C(2*a(n-1), 2)` -/
def P3506297012420913020.Spec : Prop :=
  ∀ n, (P3506297012420913020.a n : ℤ) = A097419 (n + 1)

end A097419

/-! ## A097419.P7767029193510836837

`C(lcm(4, a(n-1)), 2)` with `a(0)=2`
-/

namespace A097419.P7767029193510836837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (Nat.lcm 4 (a (n - 1))) 2

end

end A097419.P7767029193510836837

namespace A097419

/-- `C(lcm(4, a(n-1)), 2)` -/
def P7767029193510836837.Spec : Prop :=
  ∀ n, (P7767029193510836837.a n : ℤ) = A097419 (n + 1)

end A097419

/-! ## A097419.P17983185757646584018

`C(a(n-1)/sqrt(1/4), 2)` with `a(0)=2`
-/

namespace A097419.P17983185757646584018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))).toNat 2

end

end A097419.P17983185757646584018

namespace A097419

/-- `C(a(n-1)/sqrt(1/4), 2)` -/
def P17983185757646584018.Spec : Prop :=
  ∀ n, (P17983185757646584018.a n : ℤ) = A097419 (n + 1)

end A097419

/-!
# A097421: a(n) = (5^(2^n) - 1)/2^(n+2).

The programs for A097421, the canonical program `A097421.P7886779000050945240` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097421 has offset 0).

The definition of A097421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097421.P7886779000050945240

`(5^2^n-1)/2^(n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097421

/-- `(5^2^n-1)/2^(n+2)` -/
def P7886779000050945240.Spec : Prop :=
  ∀ n, P7886779000050945240.a n = (A097421 n : ℚ)

end A097421

/-! ## A097421.P9099928443466081986

`a(n-1)+a(n-1)²*2^n` with `a(0)=1`
-/

namespace A097421.P9099928443466081986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) ^ 2 * 2 ^ n

end

end A097421.P9099928443466081986

namespace A097421

/-- `a(n-1)+a(n-1)²*2^n` -/
def P9099928443466081986.Spec : Prop :=
  ∀ n, (P9099928443466081986.a n : ℤ) = A097421 n

end A097421

/-! ## A097421.P13481346952016191096

`(2^n*a(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A097421.P13481346952016191096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n * a (n - 1) + 1) * a (n - 1)

end

end A097421.P13481346952016191096

namespace A097421

/-- `(2^n*a(n-1)+1)*a(n-1)` -/
def P13481346952016191096.Spec : Prop :=
  ∀ n, (P13481346952016191096.a n : ℤ) = A097421 n

end A097421

/-! ## A097421.P10993365901897171317

`lcm(lcm(2^n, a(n-1))+1, a(n-1))` with `a(0)=1`
-/

namespace A097421.P10993365901897171317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (Nat.lcm (2 ^ n) (a (n - 1)) + 1) (a (n - 1))

end

end A097421.P10993365901897171317

namespace A097421

/-- `lcm(lcm(2^n, a(n-1))+1, a(n-1))` -/
def P10993365901897171317.Spec : Prop :=
  ∀ n, (P10993365901897171317.a n : ℤ) = A097421 n

end A097421

/-!
# A097422: Sum{k=1 to n} H(k) k!, where H(k) = sum{j=1 to k} 1/j.

The programs for A097422, there is no canonical definition to state claims against.
-/

/-! ## A097422.P15108330405477667646

`∑[(n-1)!+n*a(n-1)]` with `a(0)=0`
-/

namespace A097422.P15108330405477667646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.factorial ((n : ℤ) - 1).toNat + n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P15108330405477667646

/-! ## A097422.P3836854696152175715

`abs(∑[n*a(n-1)-(n-1)!])` with `a(0)=0`
-/

namespace A097422.P3836854696152175715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * f1 (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A097422.P3836854696152175715

/-! ## A097422.P15083058985786280126

`-∑[n*a(n-1)-(n-1)!]` with `a(0)=0`
-/

namespace A097422.P15083058985786280126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * f1 (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097422.P15083058985786280126

/-! ## A097422.P1347843498982158269

`∑[A000254(n)]`
-/

namespace A097422.P1347843498982158269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P1347843498982158269

/-! ## A097422.P4969637926037470545

`∑[abs(A081048(n))]`
-/

namespace A097422.P4969637926037470545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P4969637926037470545

/-! ## A097422.P4754835012238177285

`∑[A067176(∑[n])]`
-/

namespace A097422.P4754835012238177285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P4754835012238177285

/-! ## A097422.P6220243846947155730

`∑[A000774(n)-n!]`
-/

namespace A097422.P6220243846947155730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P6220243846947155730

/-! ## A097422.P3410736840526738616

`∑[n!-A081047(n)]`
-/

namespace A097422.P3410736840526738616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A081047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P3410736840526738616

/-! ## A097422.P6951645666472045785

`∑[A052517(n+1)/2]`
-/

namespace A097422.P6951645666472045785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052517 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P6951645666472045785

/-! ## A097422.P10200123885418044196

`∑[abs(A048994(∑[n+1]+2))]`
-/

namespace A097422.P10200123885418044196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (∑ j ∈ Finset.range (n + 1), f2 j + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097422.P10200123885418044196

/-!
# A097423: Numerator of Product_{k=1..n} H(k), where H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A097423, there is no canonical definition to state claims against.
-/

/-! ## A097423.P5665365334504976213

`xor(A000010(A163138(n)), A000225(n))`
-/

namespace A097423.P5665365334504976213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000010 (A163138 n).toNat) (A000225 n)

end

end A097423.P5665365334504976213

/-!
# A097424: Denominator of Product_{k=1..n} H(k), where H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A097424, there is no canonical definition to state claims against.
-/

/-! ## A097424.P15375332309619449999

`A034917(∑[A094587(n)])`
-/

namespace A097424.P15375332309619449999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097424.P15375332309619449999

/-! ## A097424.P2764671738768355526

`A034917(∑[A109152(n)])`
-/

namespace A097424.P2764671738768355526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097424.P2764671738768355526

/-!
# A097426: Integer part of the circumference of circles with prime diameters.

The programs for A097426, the canonical program `A097426.P4316148701383665850` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097426 has offset 1).

The definition of A097426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097426.P4316148701383665850

`floor(π*p?[ceil(2/acot(n))])`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097426

/-- `floor(π*p?[ceil(2/acot(n))])` -/
def P4316148701383665850.Spec : Prop :=
  ∀ n, P4316148701383665850.a n = A097426 (n + 1)

theorem P4316148701383665850.correct : P4316148701383665850.Spec := by
  intro n
  simp only [A097426, Nat.add_sub_cancel]

end A097426

/-! ## A097426.P13377941943657417482

`floor(4*p?[round(8*n/7)]*acot(1))`
-/

namespace A097426.P13377941943657417482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) * SequenceMachineLib.acot (1 : ℝ)⌋

end

end A097426.P13377941943657417482

namespace A097426

/-- `floor(4*p?[round(8*n/7)]*acot(1))` -/
def P13377941943657417482.Spec : Prop :=
  ∀ n, P13377941943657417482.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P5581476548325255190

`floor(Δ[π*A007504(n)])`
-/

namespace A097426.P5581476548325255190
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (A007504 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A097426.P5581476548325255190

namespace A097426

/-- `floor(Δ[π*A007504(n)])` -/
def P5581476548325255190.Spec : Prop :=
  ∀ n, P5581476548325255190.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P4690873533601671977

`floor(π*A000040(n+1))`
-/

namespace A097426.P4690873533601671977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000040 (n + 1) : ℝ)⌋

end

end A097426.P4690873533601671977

namespace A097426

/-- `floor(π*A000040(n+1))` -/
def P4690873533601671977.Spec : Prop :=
  ∀ n, P4690873533601671977.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P9185062548089204679

`floor(π*p?[xor(1, n)+1])`
-/

namespace A097426.P9185062548089204679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌋

end

end A097426.P9185062548089204679

namespace A097426

/-- `floor(π*p?[xor(1, n)+1])` -/
def P9185062548089204679.Spec : Prop :=
  ∀ n, P9185062548089204679.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P15038710776171576082

`record[floor(π*A006530(n+2))]`
-/

namespace A097426.P15038710776171576082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A006530 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097426.P15038710776171576082

namespace A097426

/-- `record[floor(π*A006530(n+2))]` -/
def P15038710776171576082.Spec : Prop :=
  ∀ n, P15038710776171576082.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P10793201995678907303

`record[floor(π*A020639(n+2))]`
-/

namespace A097426.P10793201995678907303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A020639 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097426.P10793201995678907303

namespace A097426

/-- `record[floor(π*A020639(n+2))]` -/
def P10793201995678907303.Spec : Prop :=
  ∀ n, P10793201995678907303.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P16507109933812306150

`record[floor(π*A166333(n+1))]`
-/

namespace A097426.P16507109933812306150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A166333 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097426.P16507109933812306150

namespace A097426

/-- `record[floor(π*A166333(n+1))]` -/
def P16507109933812306150.Spec : Prop :=
  ∀ n, P16507109933812306150.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P10802225216798439458

`A022844(p?[xor(1, n)+1])`
-/

namespace A097426.P10802225216798439458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097426.P10802225216798439458

namespace A097426

/-- `A022844(p?[xor(1, n)+1])` -/
def P10802225216798439458.Spec : Prop :=
  ∀ n, P10802225216798439458.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P7146031629394932597

`A022844(p?[round(sqrt(n)+n)])`
-/

namespace A097426.P7146031629394932597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A097426.P7146031629394932597

namespace A097426

/-- `A022844(p?[round(sqrt(n)+n)])` -/
def P7146031629394932597.Spec : Prop :=
  ∀ n, P7146031629394932597.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P10894427095017582788

`A022844(A000040(n+1))`
-/

namespace A097426.P10894427095017582788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A000040 (n + 1)).toNat

end

end A097426.P10894427095017582788

namespace A097426

/-- `A022844(A000040(n+1))` -/
def P10894427095017582788.Spec : Prop :=
  ∀ n, P10894427095017582788.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P11443020995194075687

`A022844(A008578(n+2))`
-/

namespace A097426.P11443020995194075687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A008578 (n + 2)).toNat

end

end A097426.P11443020995194075687

namespace A097426

/-- `A022844(A008578(n+2))` -/
def P11443020995194075687.Spec : Prop :=
  ∀ n, P11443020995194075687.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P6197050472895950588

`A022844(A182986(n+2))`
-/

namespace A097426.P6197050472895950588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A182986 (n + 2)).toNat

end

end A097426.P6197050472895950588

namespace A097426

/-- `A022844(A182986(n+2))` -/
def P6197050472895950588.Spec : Prop :=
  ∀ n, P6197050472895950588.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P2901611808830777867

`A140758(A100484(n+1))`
-/

namespace A097426.P2901611808830777867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (A100484 (n + 1)).toNat

end

end A097426.P2901611808830777867

namespace A097426

/-- `A140758(A100484(n+1))` -/
def P2901611808830777867.Spec : Prop :=
  ∀ n, P2901611808830777867.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P17202692612134199116

`A140758(A001747(n+2))`
-/

namespace A097426.P17202692612134199116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (A001747 (n + 2)).toNat

end

end A097426.P17202692612134199116

namespace A097426

/-- `A140758(A001747(n+2))` -/
def P17202692612134199116.Spec : Prop :=
  ∀ n, P17202692612134199116.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P11328019150999646646

`A274399(A001748(n+1))`
-/

namespace A097426.P11328019150999646646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (A001748 (n + 1)).toNat

end

end A097426.P11328019150999646646

namespace A097426

/-- `A274399(A001748(n+1))` -/
def P11328019150999646646.Spec : Prop :=
  ∀ n, P11328019150999646646.a n = A097426 (n + 1)

end A097426

/-! ## A097426.P2689846383760030120

`A274399(A112773(n+2))`
-/

namespace A097426.P2689846383760030120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (A112773 (n + 2)).toNat

end

end A097426.P2689846383760030120

namespace A097426

/-- `A274399(A112773(n+2))` -/
def P2689846383760030120.Spec : Prop :=
  ∀ n, P2689846383760030120.a n = A097426 (n + 1)

end A097426

/-!
# A097427: Integer part of the area of circles with prime radii.

The programs for A097427, there is no canonical definition to state claims against.
-/

/-! ## A097427.P17387888284196280361

`floor(π*p?[round(8*n/7)]²)`
-/

namespace A097427.P17387888284196280361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℝ)⌋

end

end A097427.P17387888284196280361

/-! ## A097427.P14886201485537687966

`A066643(p?[xor(1, n)+1])`
-/

namespace A097427.P14886201485537687966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097427.P14886201485537687966

/-! ## A097427.P8545252985971315777

`floor(π*A001248(n+1))`
-/

namespace A097427.P8545252985971315777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A001248 (n + 1) : ℝ)⌋

end

end A097427.P8545252985971315777

/-! ## A097427.P3170204817442222050

`floor(π*Δ[A007504(n)]²)`
-/

namespace A097427.P3170204817442222050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * ((f1 (n + 1) - f1 n) ^ 2 : ℝ)⌋

end

end A097427.P3170204817442222050

/-! ## A097427.P1350549815021831004

`floor(π*A000040(n+1)²)`
-/

namespace A097427.P1350549815021831004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000040 (n + 1) ^ 2 : ℝ)⌋

end

end A097427.P1350549815021831004

/-!
# A097428: Integer part of the diameters of circles with prime circumferences.

The programs for A097428, there is no canonical definition to state claims against.
-/

/-! ## A097428.P7983769287908215157

`floor(p?[xor(1, n)]/π)`
-/

namespace A097428.P7983769287908215157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / Real.pi⌋

end

end A097428.P7983769287908215157

/-! ## A097428.P11778848125595197653

`ceil(p?[xor(1, n)]/π)-1`
-/

namespace A097428.P11778848125595197653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / Real.pi⌉ - 1

end

end A097428.P11778848125595197653

/-! ## A097428.P18259865800762956308

`floor(p?[ceil(2/acot(n))]/π)`
-/

namespace A097428.P18259865800762956308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.pi⌋

end

end A097428.P18259865800762956308

/-! ## A097428.P8392957710611017082

`A032615(p?[xor(1, n)])`
-/

namespace A097428.P8392957710611017082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097428.P8392957710611017082

/-! ## A097428.P10160500906123345619

`floor(A272470(n+1)/22)`
-/

namespace A097428.P10160500906123345619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272470 (n + 1) : ℚ) / 22⌋

end

end A097428.P10160500906123345619

/-! ## A097428.P2491557282290093539

`floor(A000040(n+1)/π)`
-/

namespace A097428.P2491557282290093539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) / Real.pi⌋

end

end A097428.P2491557282290093539

/-! ## A097428.P881312130810255504

`floor(A006005(n+1)/π)`
-/

namespace A097428.P881312130810255504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℝ) / Real.pi⌋

end

end A097428.P881312130810255504

/-! ## A097428.P11743227608651021660

`floor(A008578(n+2)/π)`
-/

namespace A097428.P11743227608651021660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 2) : ℝ) / Real.pi⌋

end

end A097428.P11743227608651021660

/-! ## A097428.P15290595178098603336

`floor(record[A006530(n+2)/π])`
-/

namespace A097428.P15290595178098603336
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℝ) / Real.pi

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A097428.P15290595178098603336

/-! ## A097428.P4693261970936975219

`floor(record[A020639(n+2)/π])`
-/

namespace A097428.P4693261970936975219
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℝ) / Real.pi

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A097428.P4693261970936975219

/-!
# A097429: Integer part of the radii of circles with prime areas.

The programs for A097429, there is no canonical definition to state claims against.
-/

/-! ## A097429.P17398149553163912218

`floor(sqrt(p?[xor(1, n)]/π))`
-/

namespace A097429.P17398149553163912218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / Real.pi)⌋

end

end A097429.P17398149553163912218

/-! ## A097429.P6093259677328031303

`floor(root(p?[xor(1, n)]/π, 2))`
-/

namespace A097429.P6093259677328031303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) / Real.pi) ^ (1 / (2 : ℝ))⌋

end

end A097429.P6093259677328031303

/-! ## A097429.P9295305096640265340

`floor(sqrt(A000040(n+1)/π))`
-/

namespace A097429.P9295305096640265340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000040 (n + 1) : ℝ) / Real.pi)⌋

end

end A097429.P9295305096640265340

/-! ## A097429.P3131333097936446042

`floor(sqrt(sqrt(A001248(n+1))/π))`
-/

namespace A097429.P3131333097936446042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ) / Real.pi)⌋

end

end A097429.P3131333097936446042

/-! ## A097429.P10223067620217933738

`floor(record[sqrt(A006530(n+2)/π)])`
-/

namespace A097429.P10223067620217933738
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A006530 (n + 2) : ℝ) / Real.pi)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A097429.P10223067620217933738

/-! ## A097429.P6241999848736423594

`floor(sqrt(record[A014963(n+2)/π]))`
-/

namespace A097429.P6241999848736423594
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℝ) / Real.pi

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))⌋

end

end A097429.P6241999848736423594

/-! ## A097429.P9477037026281186309

`A000196(A172264(Δ[A007504(n)]))`
-/

namespace A097429.P9477037026281186309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A172264 (f1 (n + 1) - f1 n).toNat).toNat

end

end A097429.P9477037026281186309

/-! ## A097429.P15945004823502160140

`A000196(A172264(p?[A004442(n)]))`
-/

namespace A097429.P15945004823502160140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A172264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A097429.P15945004823502160140

/-! ## A097429.P11471797977805686163

`A000196(A062299(A006093(n+1)))`
-/

namespace A097429.P11471797977805686163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A062299 (A006093 (n + 1)).toNat).toNat

end

end A097429.P11471797977805686163

/-! ## A097429.P1788327834457691339

`A000196(A062299(record[A011773(n+1)]))`
-/

namespace A097429.P1788327834457691339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A062299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A097429.P1788327834457691339

/-!
# A097430: Integer part of the radii of circles with area n.

The programs for A097430, the canonical program `A097430.P1916388915681902912` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097430 has offset 1).

The definition of A097430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097430.P1916388915681902912

`floor(sqrt((n+1)/π))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097430

/-- `floor(sqrt((n+1)/π))` -/
def P1916388915681902912.Spec : Prop :=
  ∀ n, P1916388915681902912.a n = A097430 (n + 1)

theorem P1916388915681902912.correct : P1916388915681902912.Spec := by
  intro n
  simp only [A097430, Nat.add_sub_cancel]

end A097430

/-! ## A097430.P10096943160187702264

`ceil(record[sqrt(xor(7, n))]/5)-1`
-/

namespace A097430.P10096943160187702264
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 7 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 5⌉ - 1

end

end A097430.P10096943160187702264

namespace A097430

/-- `ceil(record[sqrt(xor(7, n))]/5)-1` -/
def P10096943160187702264.Spec : Prop :=
  ∀ n, P10096943160187702264.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P11259231783782597430

`dr(1-∑[char[floor(π*n²)]])`
-/

namespace A097430.P11259231783782597430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A097430.P11259231783782597430

namespace A097430

/-- `dr(1-∑[char[floor(π*n²)]])` -/
def P11259231783782597430.Spec : Prop :=
  ∀ n, (P11259231783782597430.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P12583116926700463725

`(∑[char[floor(π*n²)]]-1)%6`
-/

namespace A097430.P12583116926700463725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) 6

end

end A097430.P12583116926700463725

namespace A097430

/-- `(∑[char[floor(π*n²)]]-1)%6` -/
def P12583116926700463725.Spec : Prop :=
  ∀ n, P12583116926700463725.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P7648257526639541331

`xor(-1, -∑[char[floor(π*n²)]])`
-/

namespace A097430.P7648257526639541331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A097430.P7648257526639541331

namespace A097430

/-- `xor(-1, -∑[char[floor(π*n²)]])` -/
def P7648257526639541331.Spec : Prop :=
  ∀ n, P7648257526639541331.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P13798210889956728755

`∏{digits}[1-∑[char[floor(π*n²)]], #]`
-/

namespace A097430.P13798210889956728755
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A097430.P13798210889956728755

namespace A097430

/-- `∏{digits}[1-∑[char[floor(π*n²)]], #]` -/
def P13798210889956728755.Spec : Prop :=
  ∀ n, (P13798210889956728755.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P259675702815814381

`∑[char[floor(π*n²)]]-and(1, n)!`
-/

namespace A097430.P259675702815814381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial (Nat.land 1 n) : ℤ)

end

end A097430.P259675702815814381

namespace A097430

/-- `∑[char[floor(π*n²)]]-and(1, n)!` -/
def P259675702815814381.Spec : Prop :=
  ∀ n, P259675702815814381.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P5461731065120423034

`∑[char[floor(π*n²)]-C(2, n+2)]`
-/

namespace A097430.P5461731065120423034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097430.P5461731065120423034

namespace A097430

/-- `∑[char[floor(π*n²)]-C(2, n+2)]` -/
def P5461731065120423034.Spec : Prop :=
  ∀ n, P5461731065120423034.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P16699776473897496606

`∑[char[A066643(n+1)]]`
-/

namespace A097430.P16699776473897496606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097430.P16699776473897496606

namespace A097430

/-- `∑[char[A066643(n+1)]]` -/
def P16699776473897496606.Spec : Prop :=
  ∀ n, (P16699776473897496606.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P5824699765968282591

`∑[char[A066643(n)]]-1`
-/

namespace A097430.P5824699765968282591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A097430.P5824699765968282591

namespace A097430

/-- `∑[char[A066643(n)]]-1` -/
def P5824699765968282591.Spec : Prop :=
  ∀ n, P5824699765968282591.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P12921418154934787275

`A000196(floor((n+1)/π))`
-/

namespace A097430.P12921418154934787275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(n + 1 : ℝ) / Real.pi⌋.toNat

end

end A097430.P12921418154934787275

namespace A097430

/-- `A000196(floor((n+1)/π))` -/
def P12921418154934787275.Spec : Prop :=
  ∀ n, P12921418154934787275.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P1493900422841753746

`∑[char[A022844((n+1)²)]]`
-/

namespace A097430.P1493900422841753746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 ((n + 1) ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097430.P1493900422841753746

namespace A097430

/-- `∑[char[A022844((n+1)²)]]` -/
def P1493900422841753746.Spec : Prop :=
  ∀ n, (P1493900422841753746.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P15036598379367535138

`∑[char[A022844(n²)]]-1`
-/

namespace A097430.P15036598379367535138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A097430.P15036598379367535138

namespace A097430

/-- `∑[char[A022844(n²)]]-1` -/
def P15036598379367535138.Spec : Prop :=
  ∀ n, P15036598379367535138.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P6310847677453984720

`∑[char[∑[A020967(n+1)]]]`
-/

namespace A097430.P6310847677453984720
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097430.P6310847677453984720

namespace A097430

/-- `∑[char[∑[A020967(n+1)]]]` -/
def P6310847677453984720.Spec : Prop :=
  ∀ n, (P6310847677453984720.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P3194327244231503759

`∑[char[∑[A184529(n+1)]]]`
-/

namespace A097430.P3194327244231503759
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097430.P3194327244231503759

namespace A097430

/-- `∑[char[∑[A184529(n+1)]]]` -/
def P3194327244231503759.Spec : Prop :=
  ∀ n, (P3194327244231503759.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P16614361605085212746

`∑[char[∑[A338020(n+1)]]]`
-/

namespace A097430.P16614361605085212746
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097430.P16614361605085212746

namespace A097430

/-- `∑[char[∑[A338020(n+1)]]]` -/
def P16614361605085212746.Spec : Prop :=
  ∀ n, (P16614361605085212746.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P1422973966249241568

`A002266(floor(sqrt(8*n+4)))`
-/

namespace A097430.P1422973966249241568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Nat.sqrt (8 * n + 4))

end

end A097430.P1422973966249241568

namespace A097430

/-- `A002266(floor(sqrt(8*n+4)))` -/
def P1422973966249241568.Spec : Prop :=
  ∀ n, P1422973966249241568.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P2580585126218885001

`∑[char[A283733(2*n+1)]]`
-/

namespace A097430.P2580585126218885001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097430.P2580585126218885001

namespace A097430

/-- `∑[char[A283733(2*n+1)]]` -/
def P2580585126218885001.Spec : Prop :=
  ∀ n, (P2580585126218885001.a n : ℤ) = A097430 (n + 1)

end A097430

/-! ## A097430.P11096266356431745362

`A270890(∑[char[floor(π*n²)]])`
-/

namespace A097430.P11096266356431745362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097430.P11096266356431745362

namespace A097430

/-- `A270890(∑[char[floor(π*n²)]])` -/
def P11096266356431745362.Spec : Prop :=
  ∀ n, P11096266356431745362.a n = A097430 (n + 1)

end A097430

/-! ## A097430.P18277161150381694592

`A338840(∑[char[floor(π*n²)]])`
-/

namespace A097430.P18277161150381694592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097430.P18277161150381694592

namespace A097430

/-- `A338840(∑[char[floor(π*n²)]])` -/
def P18277161150381694592.Spec : Prop :=
  ∀ n, P18277161150381694592.a n = A097430 (n + 1)

end A097430

/-!
# A097431: Integer part of the hypotenuse of right triangles with consecutive prime legs.

The programs for A097431, the canonical program `A097431.P15092973135870859049` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097431 has offset 1).

The definition of A097431 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069484, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097431.P15092973135870859049

`floor(sqrt(A069484(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097431

/-- `floor(sqrt(A069484(n+1)))` -/
def P15092973135870859049.Spec : Prop :=
  ∀ n, P15092973135870859049.a n = A097431 (n + 1)

theorem P15092973135870859049.correct : P15092973135870859049.Spec := by
  intro n
  simp only [A097431, Nat.add_sub_cancel]

end A097431

/-! ## A097431.P16389945526662636908

`ceil(sqrt(A069484(n+1)))+(-1)^(-1)^A001222(n+1)`
-/

namespace A097431.P16389945526662636908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A069484 (n + 1) : ℝ)⌉ : ℝ) + (-1 : ℝ) ^ ((-1 : ℚ) ^ (A001222 (n + 1) : ℤ) : ℝ)

end

end A097431.P16389945526662636908

namespace A097431

/-- `ceil(sqrt(A069484(n+1)))+(-1)^(-1)^A001222(n+1)` -/
def P16389945526662636908.Spec : Prop :=
  ∀ n, P16389945526662636908.a n = (A097431 (n + 1) : ℝ)

end A097431

/-! ## A097431.P15108458610333379029

`floor(sqrt(A048851(n+2)))`
-/

namespace A097431.P15108458610333379029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048851 (n + 2))

end

end A097431.P15108458610333379029

namespace A097431

/-- `floor(sqrt(A048851(n+2)))` -/
def P15108458610333379029.Spec : Prop :=
  ∀ n, P15108458610333379029.a n = A097431 (n + 1)

end A097431

/-! ## A097431.P14264843485561526295

`floor(sqrt(A001248(n+1)+A001248(n+2)))`
-/

namespace A097431.P14264843485561526295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001248 (n + 1) + A001248 (n + 2))

end

end A097431.P14264843485561526295

namespace A097431

/-- `floor(sqrt(A001248(n+1)+A001248(n+2)))` -/
def P14264843485561526295.Spec : Prop :=
  ∀ n, P14264843485561526295.a n = A097431 (n + 1)

end A097431

/-! ## A097431.P2148493352624597037

`floor(sqrt(A280076(n+2)+A000040(n+2)²))`
-/

namespace A097431.P2148493352624597037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A280076 (n + 2) + A000040 (n + 2) ^ 2)

end

end A097431.P2148493352624597037

namespace A097431

/-- `floor(sqrt(A280076(n+2)+A000040(n+2)²))` -/
def P2148493352624597037.Spec : Prop :=
  ∀ n, P2148493352624597037.a n = A097431 (n + 1)

end A097431

/-! ## A097431.P14678297406741916273

`floor(sqrt(A000040(n+1)²+A000040(n+2)²))`
-/

namespace A097431.P14678297406741916273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) ^ 2 + A000040 (n + 2) ^ 2)

end

end A097431.P14678297406741916273

namespace A097431

/-- `floor(sqrt(A000040(n+1)²+A000040(n+2)²))` -/
def P14678297406741916273.Spec : Prop :=
  ∀ n, P14678297406741916273.a n = A097431 (n + 1)

end A097431

/-! ## A097431.P993812220489647645

`ceil(sqrt(A069484(n+1)))-A014963(10*(n+10))`
-/

namespace A097431.P993812220489647645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A069484 (n + 1) : ℝ)⌉ - A014963 (10 * (n + 10))

end

end A097431.P993812220489647645

namespace A097431

/-- `ceil(sqrt(A069484(n+1)))-A014963(10*(n+10))` -/
def P993812220489647645.Spec : Prop :=
  ∀ n, P993812220489647645.a n = A097431 (n + 1)

end A097431

/-! ## A097431.P14476023975180673800

`A023443(ceil(sqrt(A069484(n+1))))`
-/

namespace A097431.P14476023975180673800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (A069484 (n + 1) : ℝ)⌉.toNat

end

end A097431.P14476023975180673800

namespace A097431

/-- `A023443(ceil(sqrt(A069484(n+1))))` -/
def P14476023975180673800.Spec : Prop :=
  ∀ n, P14476023975180673800.a n = A097431 (n + 1)

end A097431

/-! ## A097431.P11908268970551718025

`floor(sqrt(∑{p}[A006094(n+1), #²]))`
-/

namespace A097431.P11908268970551718025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2)

end

end A097431.P11908268970551718025

namespace A097431

/-- `floor(sqrt(∑{p}[A006094(n+1), #²]))` -/
def P11908268970551718025.Spec : Prop :=
  ∀ n, (P11908268970551718025.a n : ℤ) = A097431 (n + 1)

end A097431

/-! ## A097431.P10005450213409338402

`ceil(sqrt(A069484(n+1)))-A007318((n²+n)/2)`
-/

namespace A097431.P10005450213409338402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A069484 (n + 1) : ℝ)⌉ - A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

end

end A097431.P10005450213409338402

namespace A097431

/-- `ceil(sqrt(A069484(n+1)))-A007318((n²+n)/2)` -/
def P10005450213409338402.Spec : Prop :=
  ∀ n, P10005450213409338402.a n = A097431 (n + 1)

end A097431

/-!
# A097432: Integer part of the hypotenuse of right triangles with consecutive integer legs.

The programs for A097432, the canonical program `A097432.P16747754077029298528` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097432 has offset 1).

The definition of A097432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097432.P16747754077029298528

`floor(sqrt(∑[record[or(5, n)]]+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097432

/-- `floor(sqrt(∑[record[or(5, n)]]+1))` -/
def P16747754077029298528.Spec : Prop :=
  ∀ n, (P16747754077029298528.a n : ℤ) = A097432 (n + 1)

theorem P16747754077029298528.correct : P16747754077029298528.Spec := by
  intro n
  simp only [A097432, Nat.add_sub_cancel]

end A097432

/-! ## A097432.P5767696280278094161

`floor(sqrt(2/Δ[atan(n+1)]))`
-/

namespace A097432.P5767696280278094161
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 / (f1 (n + 1) - f1 n))⌋

end

end A097432.P5767696280278094161

namespace A097432

/-- `floor(sqrt(2/Δ[atan(n+1)]))` -/
def P5767696280278094161.Spec : Prop :=
  ∀ n, P5767696280278094161.a n = A097432 (n + 1)

end A097432

/-! ## A097432.P9915332684275413605

`floor(2/acot(sqrt(∑[n+1])))`
-/

namespace A097432.P9915332684275413605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A097432.P9915332684275413605

namespace A097432

/-- `floor(2/acot(sqrt(∑[n+1])))` -/
def P9915332684275413605.Spec : Prop :=
  ∀ n, P9915332684275413605.a n = A097432 (n + 1)

end A097432

/-! ## A097432.P16033887043836914407

`floor(sqrt(∑[4*(n+1)]+1))`
-/

namespace A097432.P16033887043836914407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097432.P16033887043836914407

namespace A097432

/-- `floor(sqrt(∑[4*(n+1)]+1))` -/
def P16033887043836914407.Spec : Prop :=
  ∀ n, (P16033887043836914407.a n : ℤ) = A097432 (n + 1)

end A097432

/-! ## A097432.P3664631220609796313

`ceil(2/acot(sqrt(∑[n+1])))-1`
-/

namespace A097432.P3664631220609796313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉ - 1

end

end A097432.P3664631220609796313

namespace A097432

/-- `ceil(2/acot(sqrt(∑[n+1])))-1` -/
def P3664631220609796313.Spec : Prop :=
  ∀ n, P3664631220609796313.a n = A097432 (n + 1)

end A097432

/-! ## A097432.P7059781147729097666

`A181534(n+1)+A061288(n+1)`
-/

namespace A097432.P7059781147729097666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181534 (n + 1) + A061288 (n + 1)

end

end A097432.P7059781147729097666

namespace A097432

/-- `A181534(n+1)+A061288(n+1)` -/
def P7059781147729097666.Spec : Prop :=
  ∀ n, P7059781147729097666.a n = A097432 (n + 1)

theorem P7059781147729097666.correct : P7059781147729097666.Spec := by
  intro n
  simp only [A097432, Nat.add_sub_cancel, A097432.P7059781147729097666.a, A097432.P16747754077029298528.f2, A097432.P16747754077029298528.f1, A097432.P16747754077029298528.a, A061288, A061288.P6176697381631974922.a, A181534, A181534.P6465701493684644829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097432

/-!
# A097433: Integer part of the hypotenuse of prime leg isosceles right triangles.

The programs for A097433, the canonical program `A097433.P6198593509518081216` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097433 has offset 1).

The definition of A097433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097433.P6198593509518081216

`floor(sqrt(2*p?[round(8*n/7)]²))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097433

/-- `floor(sqrt(2*p?[round(8*n/7)]²))` -/
def P6198593509518081216.Spec : Prop :=
  ∀ n, P6198593509518081216.a n = A097433 (n + 1)

theorem P6198593509518081216.correct : P6198593509518081216.Spec := by
  intro n
  simp only [A097433, Nat.add_sub_cancel]

end A097433

/-! ## A097433.P1405666245731313091

`floor(4*p?[round(8*n/7)]/sqrt(8))`
-/

namespace A097433.P1405666245731313091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / Real.sqrt (8 : ℝ)⌋

end

end A097433.P1405666245731313091

namespace A097433

/-- `floor(4*p?[round(8*n/7)]/sqrt(8))` -/
def P1405666245731313091.Spec : Prop :=
  ∀ n, P1405666245731313091.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P17094043536503055053

`floor(sqrt(A079704(n+1)))`
-/

namespace A097433.P17094043536503055053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A079704 (n + 1))

end

end A097433.P17094043536503055053

namespace A097433

/-- `floor(sqrt(A079704(n+1)))` -/
def P17094043536503055053.Spec : Prop :=
  ∀ n, P17094043536503055053.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P12241215814883956483

`floor(sqrt(A179262(n+1)))`
-/

namespace A097433.P12241215814883956483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A179262 (n + 1))

end

end A097433.P12241215814883956483

namespace A097433

/-- `floor(sqrt(A179262(n+1)))` -/
def P12241215814883956483.Spec : Prop :=
  ∀ n, P12241215814883956483.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P14502340717426740663

`floor(sqrt(2)*Δ[A007504(n)])`
-/

namespace A097433.P14502340717426740663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (f1 (n + 1) - f1 n : ℝ)⌋

end

end A097433.P14502340717426740663

namespace A097433

/-- `floor(sqrt(2)*Δ[A007504(n)])` -/
def P14502340717426740663.Spec : Prop :=
  ∀ n, P14502340717426740663.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P12604828792666723473

`floor(sqrt(2)*p?[A259153(n)])`
-/

namespace A097433.P12604828792666723473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌋

end

end A097433.P12604828792666723473

namespace A097433

/-- `floor(sqrt(2)*p?[A259153(n)])` -/
def P12604828792666723473.Spec : Prop :=
  ∀ n, P12604828792666723473.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P10161879788426201915

`floor(sqrt(2)*A000040(n+1))`
-/

namespace A097433.P10161879788426201915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A000040 (n + 1) : ℝ)⌋

end

end A097433.P10161879788426201915

namespace A097433

/-- `floor(sqrt(2)*A000040(n+1))` -/
def P10161879788426201915.Spec : Prop :=
  ∀ n, P10161879788426201915.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P3626883025712232647

`floor(sqrt(2*A001248(n+1)))`
-/

namespace A097433.P3626883025712232647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A001248 (n + 1))

end

end A097433.P3626883025712232647

namespace A097433

/-- `floor(sqrt(2*A001248(n+1)))` -/
def P3626883025712232647.Spec : Prop :=
  ∀ n, P3626883025712232647.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P13567974497103716626

`floor(A100484(n+1)/sqrt(2))`
-/

namespace A097433.P13567974497103716626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100484 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A097433.P13567974497103716626

namespace A097433

/-- `floor(A100484(n+1)/sqrt(2))` -/
def P13567974497103716626.Spec : Prop :=
  ∀ n, P13567974497103716626.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P6563085018824472105

`floor(sqrt(2)*p?[xor(1, n)+1])`
-/

namespace A097433.P6563085018824472105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌋

end

end A097433.P6563085018824472105

namespace A097433

/-- `floor(sqrt(2)*p?[xor(1, n)+1])` -/
def P6563085018824472105.Spec : Prop :=
  ∀ n, P6563085018824472105.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P12100828576467743908

`floor(sqrt(2)*p?[n%3+n])`
-/

namespace A097433.P12100828576467743908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌋

end

end A097433.P12100828576467743908

namespace A097433

/-- `floor(sqrt(2)*p?[n%3+n])` -/
def P12100828576467743908.Spec : Prop :=
  ∀ n, P12100828576467743908.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P1739209035524492332

`A001951(p?[comp[n²]])`
-/

namespace A097433.P1739209035524492332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097433.P1739209035524492332

namespace A097433

/-- `A001951(p?[comp[n²]])` -/
def P1739209035524492332.Spec : Prop :=
  ∀ n, P1739209035524492332.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P2384921307417895639

`A001951(Δ[A007504(n)])`
-/

namespace A097433.P2384921307417895639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (n + 1) - f1 n).toNat

end

end A097433.P2384921307417895639

namespace A097433

/-- `A001951(Δ[A007504(n)])` -/
def P2384921307417895639.Spec : Prop :=
  ∀ n, P2384921307417895639.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P13219172960015826199

`A001951(record[A051698(n)])`
-/

namespace A097433.P13219172960015826199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097433.P13219172960015826199

namespace A097433

/-- `A001951(record[A051698(n)])` -/
def P13219172960015826199.Spec : Prop :=
  ∀ n, P13219172960015826199.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P17368021882908382590

`A001951(A000040(n+1))`
-/

namespace A097433.P17368021882908382590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A000040 (n + 1)).toNat

end

end A097433.P17368021882908382590

namespace A097433

/-- `A001951(A000040(n+1))` -/
def P17368021882908382590.Spec : Prop :=
  ∀ n, P17368021882908382590.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P4312162225884198059

`A001951(A008578(n+2))`
-/

namespace A097433.P4312162225884198059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A008578 (n + 2)).toNat

end

end A097433.P4312162225884198059

namespace A097433

/-- `A001951(A008578(n+2))` -/
def P4312162225884198059.Spec : Prop :=
  ∀ n, P4312162225884198059.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P6200303685609550753

`A001951(A182986(n+2))`
-/

namespace A097433.P6200303685609550753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A182986 (n + 2)).toNat

end

end A097433.P6200303685609550753

namespace A097433

/-- `A001951(A182986(n+2))` -/
def P6200303685609550753.Spec : Prop :=
  ∀ n, P6200303685609550753.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P10953254310886541936

`A001951(record[A000010(n+1)+1])`
-/

namespace A097433.P10953254310886541936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097433.P10953254310886541936

namespace A097433

/-- `A001951(record[A000010(n+1)+1])` -/
def P10953254310886541936.Spec : Prop :=
  ∀ n, P10953254310886541936.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P5685600217122277842

`A049472(A100484(n+1))`
-/

namespace A097433.P5685600217122277842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A100484 (n + 1)).toNat

end

end A097433.P5685600217122277842

namespace A097433

/-- `A049472(A100484(n+1))` -/
def P5685600217122277842.Spec : Prop :=
  ∀ n, P5685600217122277842.a n = A097433 (n + 1)

end A097433

/-! ## A097433.P4122078078102047367

`A049472(A001747(n+2))`
-/

namespace A097433.P4122078078102047367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A001747 (n + 2)).toNat

end

end A097433.P4122078078102047367

namespace A097433

/-- `A049472(A001747(n+2))` -/
def P4122078078102047367.Spec : Prop :=
  ∀ n, P4122078078102047367.a n = A097433 (n + 1)

end A097433

/-!
# A097434: Value of C in y = x^2 + 5x + C such that y is prime for all x = 0 to 3.

The programs for A097434, there is no canonical definition to state claims against.
-/

/-! ## A097434.P7334701534932446706

`∩[A023202(n+1)-6, A033560(n+1)]`
-/

namespace A097434.P7334701534932446706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097434.P7334701534932446706

/-! ## A097434.P18246323107064415760

`∩[A153417(n+1), A153418(n+1)-6]`
-/

namespace A097434.P18246323107064415760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097434.P18246323107064415760

/-! ## A097434.P1222187956996786113

`∩[A087695(n+1)-3, A140445(Δ[n²])-14]`
-/

namespace A097434.P1222187956996786113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) - 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat - 14

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097434.P1222187956996786113

/-!
# A097435: Numbers n such that n and its reversal are distinct brilliant numbers (A078972).

The programs for A097435, there is no canonical definition to state claims against.
-/

/-! ## A097435.P16748269507015382888

`∩[A050699(n+1), A115655(n+1)]`
-/

namespace A097435.P16748269507015382888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097435.P16748269507015382888

/-! ## A097435.P6736722541554801695

`∩[A097393(n+1), A115655(n+1)]`
-/

namespace A097435.P6736722541554801695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097435.P6736722541554801695

/-! ## A097435.P14700614232022998518

`∩[A109019(n+1), A115655(n+1)]`
-/

namespace A097435.P14700614232022998518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097435.P14700614232022998518

/-! ## A097435.P10450578844953882480

`∩[A115655(n+1), A156063(n+1)]`
-/

namespace A097435.P10450578844953882480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097435.P10450578844953882480

/-!
# A097436: Value of C in y = x^2+7x+C such that y is prime for all x = 0 to 4.

The programs for A097436, there is no canonical definition to state claims against.
-/

/-! ## A097436.P15272179145109573627

`p?[A000040(eq[4, A263297((n+1)²)])+10]`
-/

namespace A097436.P15272179145109573627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097436.P15272179145109573627

/-!
# A097437: Value of C in y = x^2 + 9x + C such that y is prime for all x = 0 to 5.

The programs for A097437, there is no canonical definition to state claims against.
-/

/-! ## A097437.P13837514499622836340

`A339465(A276081(n+1)+A124302(n))`
-/

namespace A097437.P13837514499622836340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339465 (A276081 (n + 1) + A124302 n).toNat

end

end A097437.P13837514499622836340

/-!
# A097438: a(n) = Sum_{k|n} a(k) a(n-k) for n >= 2, a(0)=0, a(1)=1.

The programs for A097438, there is no canonical definition to state claims against.
-/

/-! ## A097438.P11995038152590536325

`A340693(A240690(n+1))%record[A220517(n+1)]`
-/

namespace A097438.P11995038152590536325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340693 (A240690 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A097438.P11995038152590536325

/-!
# A097442: Integer part of the area of consecutive prime sided isosceles triangles.

The programs for A097442, there is no canonical definition to state claims against.
-/

/-! ## A097442.P308863631234889621

`A190561(A304229(n+1))+A016742(n)`
-/

namespace A097442.P308863631234889621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (A304229 (n + 1)).toNat + A016742 n

end

end A097442.P308863631234889621

/-! ## A097442.P7053314413658537716

`A268726(A099146(2*n+3))+A016742(n)`
-/

namespace A097442.P7053314413658537716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (A099146 (2 * n + 3)).toNat + A016742 n

end

end A097442.P7053314413658537716

/-! ## A097442.P816758133644567993

`xor(A059591(2*n), A296774(A307471(n+1)))`
-/

namespace A097442.P816758133644567993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059591 (2 * n)) (A296774 (A307471 (n + 1)).toNat)

end

end A097442.P816758133644567993

/-!
# A097443: Half-period primes, i.e., primes p for which the decimal expansion of 1/p has period (p-1)/2.

The programs for A097443, there is no canonical definition to state claims against.
-/

/-! ## A097443.P17512024403783826484

`or(1, A001914(n+1))`
-/

namespace A097443.P17512024403783826484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001914 (n + 1))

end

end A097443.P17512024403783826484

/-! ## A097443.P17036837752382175233

`A001914(n+1)+A000007(n)`
-/

namespace A097443.P17036837752382175233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1) + A000007 n

end

end A097443.P17036837752382175233

/-! ## A097443.P9459224130970374726

`A063524(n+1)+A001914(n+1)`
-/

namespace A097443.P9459224130970374726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A001914 (n + 1)

end

end A097443.P9459224130970374726

/-! ## A097443.P5906311679879532572

`A001914(n+1)+char[A001920(n)-1]`
-/

namespace A097443.P5906311679879532572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001920 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A097443.P5906311679879532572

/-! ## A097443.P6060545623156479000

`floor(A001914(n+1)+3/A001122(n+1))`
-/

namespace A097443.P6060545623156479000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001914 (n + 1) : ℚ) + 3 / (A001122 (n + 1) : ℚ)⌋

end

end A097443.P6060545623156479000

/-! ## A097443.P4699991947691579164

`A001914(n+1)+char[A001920(3*n+1)]`
-/

namespace A097443.P4699991947691579164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001920 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A097443.P4699991947691579164

/-! ## A097443.P7479761231587703898

`A002371(floor(1/(n+1))+1)+A001914(n+1)`
-/

namespace A097443.P7479761231587703898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat + A001914 (n + 1)

end

end A097443.P7479761231587703898

/-! ## A097443.P1111410747559300717

`A001914(n+1)+val(A001914(A003277(n+1)), 2)`
-/

namespace A097443.P1111410747559300717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1) + (SequenceMachineLib.valuation (A001914 (A003277 (n + 1)).toNat).toNat 2 : ℤ)

end

end A097443.P1111410747559300717

/-! ## A097443.P17925410643178178494

`A065091(eq[2, A060370(n+1)])`
-/

namespace A097443.P17925410643178178494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097443.P17925410643178178494

/-! ## A097443.P142039474153646631

`A000040(eq[2, A060370(n+1)]+1)`
-/

namespace A097443.P142039474153646631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A097443.P142039474153646631

/-! ## A097443.P1179771498686706886

`A064614(A001914(n+1))`
-/

namespace A097443.P1179771498686706886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A001914 (n + 1)).toNat

end

end A097443.P1179771498686706886

/-! ## A097443.P13487873816390062848

`eq[n, A004277(A007732(n+1))]+1`
-/

namespace A097443.P13487873816390062848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007732 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097443.P13487873816390062848

/-! ## A097443.P7997737362587317361

`A020725(eq[n, 2*A007732(n+1)])`
-/

namespace A097443.P7997737362587317361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097443.P7997737362587317361

/-! ## A097443.P5018525784021538248

`A065475(eq[n, 2*A007732(n+1)])`
-/

namespace A097443.P5018525784021538248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097443.P5018525784021538248

/-! ## A097443.P9699530141899357002

`A020725(eq[2, n/A007732(n+1)])`
-/

namespace A097443.P9699530141899357002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007732 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A097443.P9699530141899357002

/-! ## A097443.P4090387467578990952

`A065475(eq[2, n/A007732(n+1)])`
-/

namespace A097443.P4090387467578990952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007732 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A097443.P4090387467578990952

/-! ## A097443.P8138046339224706627

`A020725(eq[n-A007732(n+1), A007732(n+1)])`
-/

namespace A097443.P8138046339224706627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A097443.P8138046339224706627

/-! ## A097443.P1203999660228587794

`A065475(eq[n-A007732(n+1), A007732(n+1)])`
-/

namespace A097443.P1203999660228587794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A097443.P1203999660228587794

/-!
# A097444: Second occurrence where n# + p is prime for primes p = 3,5,...

The programs for A097444, there is no canonical definition to state claims against.
-/

/-! ## A097444.P10427047546576187004

`A087200(n+1)+A002110(n+1)`
-/

namespace A097444.P10427047546576187004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087200 (n + 1) + A002110 (n + 1)

end

end A097444.P10427047546576187004

/-! ## A097444.P889227880193712297

`A087200(n+1)+∏[A000040(n+1)]`
-/

namespace A097444.P889227880193712297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087200 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097444.P889227880193712297

/-! ## A097444.P13315628302816313443

`A087200(n+1)+∏[A008578(n+2)]`
-/

namespace A097444.P13315628302816313443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087200 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097444.P13315628302816313443

/-! ## A097444.P12912564493283437876

`A300951(A100484(n+1))+A087200(n+1)`
-/

namespace A097444.P12912564493283437876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A100484 (n + 1)).toNat + A087200 (n + 1)

end

end A097444.P12912564493283437876

/-! ## A097444.P16358761040679979096

`A035345(n+1)+A087200(n+1)-A005235(n+1)`
-/

namespace A097444.P16358761040679979096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035345 (n + 1) + (A087200 (n + 1) - A005235 (n + 1))

end

end A097444.P16358761040679979096

/-!
# A097445: Second occurrence where n# - p is prime for primes p = 3, 5, ...

The programs for A097445, there is no canonical definition to state claims against.
-/

/-! ## A097445.P6371219641008850901

`A002110(n+3)-A087201(n+3)`
-/

namespace A097445.P6371219641008850901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 3) - A087201 (n + 3)

end

end A097445.P6371219641008850901

/-! ## A097445.P9936130205636773444

`record[A108951(2*n+5)]-A087201(n+3)`
-/

namespace A097445.P9936130205636773444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A087201 (n + 3)

end

end A097445.P9936130205636773444

/-!
# A097446: Concatenate consecutive prime-sided isosceles triangles.

The programs for A097446, there is no canonical definition to state claims against.
-/

/-! ## A097446.P2922789449703685259

`A037276(A033477(3*n+2))`
-/

namespace A097446.P2922789449703685259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A033477 (3 * n + 2)).toNat

end

end A097446.P2922789449703685259

/-! ## A097446.P15313842918112393155

`A037276(∏{d}[p?[2*n+1], #]*A006094(n+1))`
-/

namespace A097446.P15313842918112393155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A006094 (n + 1)).toNat

end

end A097446.P15313842918112393155

/-! ## A097446.P3439324754851273897

`A037276(root(p?[2*n+1]^3, 3)*A006094(n+1))`
-/

namespace A097446.P3439324754851273897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3 : ℝ) ^ (1 / (3 : ℝ)) * (A006094 (n + 1) : ℝ))).toNat

end

end A097446.P3439324754851273897

/-! ## A097446.P11130670599152788316

`A037276((∑{d}[p?[2*n+1], #]-1)*A006094(n+1))`
-/

namespace A097446.P11130670599152788316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 ((((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1) * A006094 (n + 1)).toNat

end

end A097446.P11130670599152788316

/-! ## A097446.P17206213280217642078

`A037276(A166329(n+1)/A000040(n+1))`
-/

namespace A097446.P17206213280217642078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.roundAway ((A166329 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A097446.P17206213280217642078

/-!
# A097448: If n is square, replace it with sqrt(n).

The programs for A097448, there is no canonical definition to state claims against.
-/

/-! ## A097448.P18409005121343012588

`sqrt(n^(2-char[n²]))`
-/

namespace A097448.P18409005121343012588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℚ) ^ (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ) : ℝ)

end

end A097448.P18409005121343012588

/-! ## A097448.P9477705757040248130

`gcd(n, Δ[C(ceil(sqrt(n)), 2)])`
-/

namespace A097448.P9477705757040248130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.sqrt (n : ℝ)⌉.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A097448.P9477705757040248130

/-! ## A097448.P12924965079623314920

`sqrt(n)^ceil(acot(char[n²]))`
-/

namespace A097448.P12924965079623314920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (⌈SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉ : ℤ)

end

end A097448.P12924965079623314920

/-! ## A097448.P6947711400866236449

`sqrt(n)^round(acot(char[n²]))`
-/

namespace A097448.P6947711400866236449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)) : ℤ)

end

end A097448.P6947711400866236449

/-! ## A097448.P12077051675161083047

`n^sin(acot(char[n²]))²`
-/

namespace A097448.P12077051675161083047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.sin (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)) ^ 2)

end

end A097448.P12077051675161083047

/-! ## A097448.P15295534465621817937

`sqrt(n)^ceil(acos(char[n²]))!`
-/

namespace A097448.P15295534465621817937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ Nat.factorial ⌈Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉.toNat

end

end A097448.P15295534465621817937

/-! ## A097448.P13744758291650213582

`sqrt(n)^xor(2, 3*char[n²])`
-/

namespace A097448.P13744758291650213582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ Nat.xor 2 (3 * (if ∃ j, f1 j = n then 1 else 0))

end

end A097448.P13744758291650213582

/-! ## A097448.P4154080987870297065

`sqrt(n)^2^xor(1, char[n²])`
-/

namespace A097448.P4154080987870297065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ 2 ^ Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A097448.P4154080987870297065

/-! ## A097448.P13294733606874838374

`sqrt(n)^(acot(char[n²])/acot(1))`
-/

namespace A097448.P13294733606874838374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) / SequenceMachineLib.acot (1 : ℝ))

end

end A097448.P13294733606874838374

/-! ## A097448.P15350452728133370978

`sqrt(n)^(2/(char[n²]+1)!)`
-/

namespace A097448.P15350452728133370978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (2 / (Nat.factorial ((if ∃ j, f1 j = n then 1 else 0) + 1) : ℚ) : ℝ)

end

end A097448.P15350452728133370978

/-!
# A097449: If n is a cube, replace it with the cube root of n.

The programs for A097449, there is no canonical definition to state claims against.
-/

/-! ## A097449.P10944852182411718933

`n-∑[char[comp[n^3]]]*char[n^3]`
-/

namespace A097449.P10944852182411718933
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f4 j = n then 1 else 0) : ℕ) : ℤ)

end

end A097449.P10944852182411718933

/-! ## A097449.P1822076726939059806

`n%(A070923(n)²+6)`
-/

namespace A097449.P1822076726939059806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A070923 n ^ 2 + 6)

end

end A097449.P1822076726939059806

/-! ## A097449.P13060943462714299578

`gcd(n, char[n^3]*A048766(n))`
-/

namespace A097449.P13060943462714299578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A048766 n)

end

end A097449.P13060943462714299578

/-! ## A097449.P7484479515770086759

`n%A001526(A055400(n))`
-/

namespace A097449.P7484479515770086759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A001526 (A055400 n).toNat)

end

end A097449.P7484479515770086759

/-! ## A097449.P5207182765848460439

`gcd(n, A114760(A253641(n)))`
-/

namespace A097449.P5207182765848460439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A114760 (A253641 n).toNat)

end

end A097449.P5207182765848460439

/-! ## A097449.P4537080669611784588

`gcd(n-2*n, char[A048763(n)]*A350062(n+1))`
-/

namespace A097449.P4537080669611784588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (2 * n : ℤ)) (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A350062 (n + 1))

end

end A097449.P4537080669611784588

/-! ## A097449.P17552332845064932434

`A118759(n)%A167499(A075847(n))`
-/

namespace A097449.P17552332845064932434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 n) (A167499 (A075847 n).toNat)

end

end A097449.P17552332845064932434

/-! ## A097449.P3611028274003592212

`sqrt(A000290(n))%A280908(A018852(n))`
-/

namespace A097449.P3611028274003592212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))) (A280908 (A018852 n).toNat)

end

end A097449.P3611028274003592212

/-! ## A097449.P11487691724307042598

`(A000007(n)+n)%A280908(A018852(n))`
-/

namespace A097449.P11487691724307042598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000007 n + (n : ℤ)) (A280908 (A018852 n).toNat)

end

end A097449.P11487691724307042598

/-!
# A097450: If n is square, replace with the sqrt(n)-th prime.

The programs for A097450, there is no canonical definition to state claims against.
-/

/-! ## A097450.P10703434481551455101

`A109400(A037213(n+1)+(n+1)*(n+1))`
-/

namespace A097450.P10703434481551455101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (A037213 (n + 1) + ((n + 1) * (n + 1) : ℤ)).toNat

end

end A097450.P10703434481551455101

/-!
# A097451: Number of partitions of n into parts congruent to {2, 3, 4} mod 6.

The programs for A097451, there is no canonical definition to state claims against.
-/

/-! ## A097451.P16006024495019596260

`A233006(3*n+1)`
-/

namespace A097451.P16006024495019596260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233006 (3 * n + 1)

end

end A097451.P16006024495019596260

/-! ## A097451.P16245223763218801361

`A033999(n)²*A233006(A016777(n))`
-/

namespace A097451.P16245223763218801361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A233006 (A016777 n).toNat

end

end A097451.P16245223763218801361

/-! ## A097451.P18054435165947075985

`char[A057300(n)]*A233006(A016777(n))`
-/

namespace A097451.P18054435165947075985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A233006 (A016777 n).toNat

end

end A097451.P18054435165947075985

/-! ## A097451.P2230345408019030038

`A233006(A016777(n))/A054977(n+1)`
-/

namespace A097451.P2230345408019030038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233006 (A016777 n).toNat : ℚ) / (A054977 (n + 1) : ℚ)

end

end A097451.P2230345408019030038

/-! ## A097451.P442431892724576878

`A000034(2*n)*A233006(A016777(n))`
-/

namespace A097451.P442431892724576878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A233006 (A016777 n).toNat

end

end A097451.P442431892724576878

/-! ## A097451.P2711024443830625512

`A033999(2*n)*A233006(A016777(n))`
-/

namespace A097451.P2711024443830625512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A233006 (A016777 n).toNat

end

end A097451.P2711024443830625512

/-! ## A097451.P6795688852646414755

`A233006(A016777(n))+A133754(n)%2`
-/

namespace A097451.P6795688852646414755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233006 (A016777 n).toNat + Int.tmod (A133754 n) 2

end

end A097451.P6795688852646414755

/-! ## A097451.P17466998873598615797

`A054977(A001316(n))*A233006(A016777(n))`
-/

namespace A097451.P17466998873598615797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A001316 n).toNat * A233006 (A016777 n).toNat

end

end A097451.P17466998873598615797

/-! ## A097451.P8142579882135839951

`A233006(A016777(n))/A033999(A233006(n))²`
-/

namespace A097451.P8142579882135839951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233006 (A016777 n).toNat : ℚ) / (A033999 (A233006 n).toNat ^ 2 : ℚ)

end

end A097451.P8142579882135839951

/-! ## A097451.P1040310604830253819

`A054977(A133146(n))*A233006(A016777(n))`
-/

namespace A097451.P1040310604830253819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A133146 n).toNat * A233006 (A016777 n).toNat

end

end A097451.P1040310604830253819

/-!
# A097452: Primes of the form prime(k) + nonprime(k) for some k.

The programs for A097452, the canonical program `A097452.P4779352600059857251` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097452 has offset 1).

The definition of A097452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097452.P4779352600059857251

`p?[A022797(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097452

/-- `p?[A022797(n+1)]` -/
def P4779352600059857251.Spec : Prop :=
  ∀ n, P4779352600059857251.a n = A097452 (n + 1)

theorem P4779352600059857251.correct : P4779352600059857251.Spec := by
  intro n
  simp only [A097452, Nat.add_sub_cancel]

end A097452

/-! ## A097452.P12194993773588449246

`p?[A018252(n+1)+p?[A259153(n)]]`
-/

namespace A097452.P12194993773588449246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P12194993773588449246

namespace A097452

/-- `p?[A018252(n+1)+p?[A259153(n)]]` -/
def P12194993773588449246.Spec : Prop :=
  ∀ n, P12194993773588449246.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P12815946488598233433

`p?[A000040(n+1)+A018252(n+1)]`
-/

namespace A097452.P12815946488598233433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P12815946488598233433

namespace A097452

/-- `p?[A000040(n+1)+A018252(n+1)]` -/
def P12815946488598233433.Spec : Prop :=
  ∀ n, P12815946488598233433.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P13707989946792068675

`p?[A141468(n+1)+A008578(n+1)]`
-/

namespace A097452.P13707989946792068675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P13707989946792068675

namespace A097452

/-- `p?[A141468(n+1)+A008578(n+1)]` -/
def P13707989946792068675.Spec : Prop :=
  ∀ n, P13707989946792068675.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P7603987435170410250

`p?[A008578(n+2)+A018252(n+1)]`
-/

namespace A097452.P7603987435170410250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P7603987435170410250

namespace A097452

/-- `p?[A008578(n+2)+A018252(n+1)]` -/
def P7603987435170410250.Spec : Prop :=
  ∀ n, P7603987435170410250.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P5966165178439693765

`p?[A253910(n+1)%A001748(n+1)]`
-/

namespace A097452.P5966165178439693765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253910 (n + 1)) (A001748 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P5966165178439693765

namespace A097452

/-- `p?[A253910(n+1)%A001748(n+1)]` -/
def P5966165178439693765.Spec : Prop :=
  ∀ n, P5966165178439693765.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P8181838036927590777

`p?[A000040(n+1)+∑[A054546(n+1)]]`
-/

namespace A097452.P8181838036927590777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P8181838036927590777

namespace A097452

/-- `p?[A000040(n+1)+∑[A054546(n+1)]]` -/
def P8181838036927590777.Spec : Prop :=
  ∀ n, P8181838036927590777.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P14164908817415797839

`p?[A018252(n+1)+p?[A090252(n+1)]]`
-/

namespace A097452.P14164908817415797839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P14164908817415797839

namespace A097452

/-- `p?[A018252(n+1)+p?[A090252(n+1)]]` -/
def P14164908817415797839.Spec : Prop :=
  ∀ n, P14164908817415797839.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P4200991318078033667

`p?[A008578(n+1)+comp[A000040(n+1)]]`
-/

namespace A097452.P4200991318078033667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P4200991318078033667

namespace A097452

/-- `p?[A008578(n+1)+comp[A000040(n+1)]]` -/
def P4200991318078033667.Spec : Prop :=
  ∀ n, P4200991318078033667.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P14176772417660970322

`p?[A018252(n+1)+A006093(n+1)+1]`
-/

namespace A097452.P14176772417660970322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P14176772417660970322

namespace A097452

/-- `p?[A018252(n+1)+A006093(n+1)+1]` -/
def P14176772417660970322.Spec : Prop :=
  ∀ n, P14176772417660970322.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P8402849943857642951

`p?[A018252(n+1)+A008864(n+1)-1]`
-/

namespace A097452.P8402849943857642951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A008864 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P8402849943857642951

namespace A097452

/-- `p?[A018252(n+1)+A008864(n+1)-1]` -/
def P8402849943857642951.Spec : Prop :=
  ∀ n, P8402849943857642951.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P6089333008659350773

`p?[A018252(n+1)+A040976(n+1)+2]`
-/

namespace A097452.P6089333008659350773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P6089333008659350773

namespace A097452

/-- `p?[A018252(n+1)+A040976(n+1)+2]` -/
def P6089333008659350773.Spec : Prop :=
  ∀ n, P6089333008659350773.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P4670854014150909666

`p?[A018252(n+1)+A052147(n+1)-2]`
-/

namespace A097452.P4670854014150909666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A052147 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P4670854014150909666

namespace A097452

/-- `p?[A018252(n+1)+A052147(n+1)-2]` -/
def P4670854014150909666.Spec : Prop :=
  ∀ n, P4670854014150909666.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P4043169021778862396

`p?[A014237(n+1)+2*A018252(n+1)]`
-/

namespace A097452.P4043169021778862396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1) + 2 * A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P4043169021778862396

namespace A097452

/-- `p?[A014237(n+1)+2*A018252(n+1)]` -/
def P4043169021778862396.Spec : Prop :=
  ∀ n, P4043169021778862396.a n = A097452 (n + 1)

theorem P4043169021778862396.correct : P4043169021778862396.Spec := by
  intro n
  simp only [A097452, Nat.add_sub_cancel, A097452.P4043169021778862396.f1, A097452.P4043169021778862396.a, A097452.P4779352600059857251.f1, A097452.P4779352600059857251.a, A014237, A014237.P11822810703592861988.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A022797, A022797.P3696269492153289254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097452

/-! ## A097452.P14264597201129416454

`p?[A018252(n+1)+A014692(n+1)+n]`
-/

namespace A097452.P14264597201129416454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A014692 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P14264597201129416454

namespace A097452

/-- `p?[A018252(n+1)+A014692(n+1)+n]` -/
def P14264597201129416454.Spec : Prop :=
  ∀ n, P14264597201129416454.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P3976129385193214959

`p?[∑[A054546(n+1)]+A040976(n+1)+2]`
-/

namespace A097452.P3976129385193214959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P3976129385193214959

namespace A097452

/-- `p?[∑[A054546(n+1)]+A040976(n+1)+2]` -/
def P3976129385193214959.Spec : Prop :=
  ∀ n, P3976129385193214959.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P4315871933333361340

`p?[p?[A000430(n+1)]+A018252(n+1)]`
-/

namespace A097452.P4315871933333361340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P4315871933333361340

namespace A097452

/-- `p?[p?[A000430(n+1)]+A018252(n+1)]` -/
def P4315871933333361340.Spec : Prop :=
  ∀ n, P4315871933333361340.a n = A097452 (n + 1)

end A097452

/-! ## A097452.P7079931965047073792

`p?[p?[A000961(n+1)]+A018252(n+1)]`
-/

namespace A097452.P7079931965047073792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P7079931965047073792

namespace A097452

/-- `p?[p?[A000961(n+1)]+A018252(n+1)]` -/
def P7079931965047073792.Spec : Prop :=
  ∀ n, P7079931965047073792.a n = A097452 (n + 1)

end A097452

/-!
# A097453: Primes in A014237 in the order of their appearance.

The programs for A097453, the canonical program `A097453.P1775989512565720974` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097453 has offset 1).

The definition of A097453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097453.P2192267667440111181

`p?[A014237(n+1)]`
-/

namespace A097453.P2192267667440111181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P2192267667440111181

namespace A097453

/-- `p?[A014237(n+1)]` -/
def P2192267667440111181.Spec : Prop :=
  ∀ n, P2192267667440111181.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P1775989512565720974

`p?[Δ[A071411(n+1)]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A097453

/-- `p?[Δ[A071411(n+1)]]` -/
def P1775989512565720974.Spec : Prop :=
  ∀ n, P1775989512565720974.a n = A097453 (n + 1)

theorem P1775989512565720974.correct : P1775989512565720974.Spec := by
  intro n
  simp only [A097453, Nat.add_sub_cancel]

end A097453

/-! ## A097453.P12519494587535693460

`p?[p?[2*n+1]-A018252(n+2)]`
-/

namespace A097453.P12519494587535693460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P12519494587535693460

namespace A097453

/-- `p?[p?[2*n+1]-A018252(n+2)]` -/
def P12519494587535693460.Spec : Prop :=
  ∀ n, P12519494587535693460.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P4222835080151228897

`p?[abs(A014237(A028310(n)))]`
-/

namespace A097453.P4222835080151228897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014237 (A028310 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P4222835080151228897

namespace A097453

/-- `p?[abs(A014237(A028310(n)))]` -/
def P4222835080151228897.Spec : Prop :=
  ∀ n, P4222835080151228897.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P12245200167141393953

`p?[A000040(n+1)-A018252(n+1)]`
-/

namespace A097453.P12245200167141393953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P12245200167141393953

namespace A097453

/-- `p?[A000040(n+1)-A018252(n+1)]` -/
def P12245200167141393953.Spec : Prop :=
  ∀ n, P12245200167141393953.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P13720823856092681986

`p?[A006005(n+1)-A018252(n+1)]`
-/

namespace A097453.P13720823856092681986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P13720823856092681986

namespace A097453

/-- `p?[A006005(n+1)-A018252(n+1)]` -/
def P13720823856092681986.Spec : Prop :=
  ∀ n, P13720823856092681986.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P13221909421960432562

`p?[A008578(n+1)-A141468(n+1)]`
-/

namespace A097453.P13221909421960432562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P13221909421960432562

namespace A097453

/-- `p?[A008578(n+1)-A141468(n+1)]` -/
def P13221909421960432562.Spec : Prop :=
  ∀ n, P13221909421960432562.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P6657853288996788372

`p?[A000040(n+1)-∑[A054546(n+1)]]`
-/

namespace A097453.P6657853288996788372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P6657853288996788372

namespace A097453

/-- `p?[A000040(n+1)-∑[A054546(n+1)]]` -/
def P6657853288996788372.Spec : Prop :=
  ∀ n, P6657853288996788372.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P13046214737466060682

`p?[A008578(n+1)-comp[A000040(n+1)]]`
-/

namespace A097453.P13046214737466060682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P13046214737466060682

namespace A097453

/-- `p?[A008578(n+1)-comp[A000040(n+1)]]` -/
def P13046214737466060682.Spec : Prop :=
  ∀ n, P13046214737466060682.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P18150889080143769767

`p?[A006093(n+1)-comp[A006093(n+1)]]`
-/

namespace A097453.P18150889080143769767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P18150889080143769767

namespace A097453

/-- `p?[A006093(n+1)-comp[A006093(n+1)]]` -/
def P18150889080143769767.Spec : Prop :=
  ∀ n, P18150889080143769767.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P18366573210031062462

`p?[A026234(n+1)-(n+1)]`
-/

namespace A097453.P18366573210031062462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P18366573210031062462

namespace A097453

/-- `p?[A026234(n+1)-(n+1)]` -/
def P18366573210031062462.Spec : Prop :=
  ∀ n, P18366573210031062462.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P11610036140559160217

`p?[A065308(n+1)-A014681(n)]`
-/

namespace A097453.P11610036140559160217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065308 (n + 1) - A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P11610036140559160217

namespace A097453

/-- `p?[A065308(n+1)-A014681(n)]` -/
def P11610036140559160217.Spec : Prop :=
  ∀ n, P11610036140559160217.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P7899954152943954560

`p?[A073846(2*(n+1))-A073846(2*n+1)]`
-/

namespace A097453.P7899954152943954560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1)) - A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P7899954152943954560

namespace A097453

/-- `p?[A073846(2*(n+1))-A073846(2*n+1)]` -/
def P7899954152943954560.Spec : Prop :=
  ∀ n, P7899954152943954560.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P8022263608208886991

`p?[p?[A060462(n+1)]-A002808(n+1)]`
-/

namespace A097453.P8022263608208886991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P8022263608208886991

namespace A097453

/-- `p?[p?[A060462(n+1)]-A002808(n+1)]` -/
def P8022263608208886991.Spec : Prop :=
  ∀ n, P8022263608208886991.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P12310295556351707170

`p?[p?[A122825(n+1)]-A002808(n+1)]`
-/

namespace A097453.P12310295556351707170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P12310295556351707170

namespace A097453

/-- `p?[p?[A122825(n+1)]-A002808(n+1)]` -/
def P12310295556351707170.Spec : Prop :=
  ∀ n, P12310295556351707170.a n = A097453 (n + 1)

end A097453

/-! ## A097453.P5347363751232329447

`p?[A026235(p?[2*n+1])]`
-/

namespace A097453.P5347363751232329447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026235 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P5347363751232329447

namespace A097453

/-- `p?[A026235(p?[2*n+1])]` -/
def P5347363751232329447.Spec : Prop :=
  ∀ n, P5347363751232329447.a n = A097453 (n + 1)

end A097453

/-!
# A097454: a(n) = (number of nonprimes <= n) - (number of primes <= n).

The programs for A097454, the canonical program `A097454.P2717210328983116484` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097454 has offset 1).

The definition of A097454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097454.P2717210328983116484

`1+A072731(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A097454

/-- `1+A072731(n+1)` -/
def P2717210328983116484.Spec : Prop :=
  ∀ n, P2717210328983116484.a n = A097454 (n + 1)

theorem P2717210328983116484.correct : P2717210328983116484.Spec := by
  intro n
  simp only [A097454, Nat.add_sub_cancel]

end A097454

/-! ## A097454.P9598245555634428859

`n+1-2*A000720(n+1)`
-/

namespace A097454.P9598245555634428859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A000720 (n + 1)

end

end A097454.P9598245555634428859

namespace A097454

/-- `n+1-2*A000720(n+1)` -/
def P9598245555634428859.Spec : Prop :=
  ∀ n, P9598245555634428859.a n = A097454 (n + 1)

theorem P9598245555634428859.correct : P9598245555634428859.Spec := by
  intro n
  simp only [A097454, Nat.add_sub_cancel, A097454.P9598245555634428859.a, A097454.P2717210328983116484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A072731, A072731.P11631103641081885778.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097454

/-! ## A097454.P12068290734408542356

`A062298(n+1)-A000720(n+1)`
-/

namespace A097454.P12068290734408542356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A000720 (n + 1)

end

end A097454.P12068290734408542356

namespace A097454

/-- `A062298(n+1)-A000720(n+1)` -/
def P12068290734408542356.Spec : Prop :=
  ∀ n, P12068290734408542356.a n = A097454 (n + 1)

theorem P12068290734408542356.correct : P12068290734408542356.Spec := by
  intro n
  simp only [A097454, Nat.add_sub_cancel, A097454.P12068290734408542356.a, A097454.P2717210328983116484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A072731, A072731.P11631103641081885778.a, A065855, A065855.P16805213270251966039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097454

/-! ## A097454.P17543622554640985067

`∑[ratio[A065357(n)]]`
-/

namespace A097454.P17543622554640985067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P17543622554640985067

namespace A097454

/-- `∑[ratio[A065357(n)]]` -/
def P17543622554640985067.Spec : Prop :=
  ∀ n, P17543622554640985067.a n = (A097454 (n + 1) : ℚ)

end A097454

/-! ## A097454.P9845464121485858584

`A118777(n+1)-1`
-/

namespace A097454.P9845464121485858584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 (n + 1) - 1

end

end A097454.P9845464121485858584

namespace A097454

/-- `A118777(n+1)-1` -/
def P9845464121485858584.Spec : Prop :=
  ∀ n, P9845464121485858584.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P11174996252400236847

`∑[(-1)^A035026(n+1)]`
-/

namespace A097454.P11174996252400236847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A035026 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P11174996252400236847

namespace A097454

/-- `∑[(-1)^A035026(n+1)]` -/
def P11174996252400236847.Spec : Prop :=
  ∀ n, P11174996252400236847.a n = (A097454 (n + 1) : ℚ)

end A097454

/-! ## A097454.P15727324283728885199

`∑[2*A005171(n+1)-1]`
-/

namespace A097454.P15727324283728885199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005171 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P15727324283728885199

namespace A097454

/-- `∑[2*A005171(n+1)-1]` -/
def P15727324283728885199.Spec : Prop :=
  ∀ n, P15727324283728885199.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P4154881953277091349

`∑[1-2*A010051(n+1)]`
-/

namespace A097454.P4154881953277091349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P4154881953277091349

namespace A097454

/-- `∑[1-2*A010051(n+1)]` -/
def P4154881953277091349.Spec : Prop :=
  ∀ n, P4154881953277091349.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P218430431479196941

`∑[1-and(2, A046644(n+1))]`
-/

namespace A097454.P218430431479196941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A046644 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P218430431479196941

namespace A097454

/-- `∑[1-and(2, A046644(n+1))]` -/
def P218430431479196941.Spec : Prop :=
  ∀ n, P218430431479196941.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P7700457836014243954

`∑[1-and(2, A061142(n+1))]`
-/

namespace A097454.P7700457836014243954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A061142 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P7700457836014243954

namespace A097454

/-- `∑[1-and(2, A061142(n+1))]` -/
def P7700457836014243954.Spec : Prop :=
  ∀ n, P7700457836014243954.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P12330385739867455927

`∑[n+1-A175028(n+1)]`
-/

namespace A097454.P12330385739867455927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A175028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P12330385739867455927

namespace A097454

/-- `∑[n+1-A175028(n+1)]` -/
def P12330385739867455927.Spec : Prop :=
  ∀ n, P12330385739867455927.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P3295185067803555700

`∑[or(1, ∏{d}[n+1, A008683(#)])]`
-/

namespace A097454.P3295185067803555700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ d ∈ Nat.divisors (f2 n), A008683 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P3295185067803555700

namespace A097454

/-- `∑[or(1, ∏{d}[n+1, A008683(#)])]` -/
def P3295185067803555700.Spec : Prop :=
  ∀ n, P3295185067803555700.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P2104687401608836638

`∑[(-1)^C(2, A000005(n+1))]`
-/

namespace A097454.P2104687401608836638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.choose 2 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P2104687401608836638

namespace A097454

/-- `∑[(-1)^C(2, A000005(n+1))]` -/
def P2104687401608836638.Spec : Prop :=
  ∀ n, P2104687401608836638.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P13522740010351049433

`∑[2*char[comp[A000040(n+1)-1]]-1]`
-/

namespace A097454.P13522740010351049433
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P13522740010351049433

namespace A097454

/-- `∑[2*char[comp[A000040(n+1)-1]]-1]` -/
def P13522740010351049433.Spec : Prop :=
  ∀ n, P13522740010351049433.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P7401342030580812564

`n+3-∑[2*C(A000010(n+1), n)]`
-/

namespace A097454.P7401342030580812564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A097454.P7401342030580812564

namespace A097454

/-- `n+3-∑[2*C(A000010(n+1), n)]` -/
def P7401342030580812564.Spec : Prop :=
  ∀ n, P7401342030580812564.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P2766749964321688375

`n+2-∑[C(2, A000203(n+1)-(n+1))]`
-/

namespace A097454.P2766749964321688375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A097454.P2766749964321688375

namespace A097454

/-- `n+2-∑[C(2, A000203(n+1)-(n+1))]` -/
def P2766749964321688375.Spec : Prop :=
  ∀ n, P2766749964321688375.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P10418642694147947383

`A023443(A118777(n+1))`
-/

namespace A097454.P10418642694147947383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A118777 (n + 1)).toNat

end

end A097454.P10418642694147947383

namespace A097454

/-- `A023443(A118777(n+1))` -/
def P10418642694147947383.Spec : Prop :=
  ∀ n, P10418642694147947383.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P5420534548557140262

`∑[A008683(A089026(n+1))]`
-/

namespace A097454.P5420534548557140262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P5420534548557140262

namespace A097454

/-- `∑[A008683(A089026(n+1))]` -/
def P5420534548557140262.Spec : Prop :=
  ∀ n, P5420534548557140262.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P9919079822486167466

`A023444(A118777(n+1)+1)`
-/

namespace A097454.P9919079822486167466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A118777 (n + 1) + 1).toNat

end

end A097454.P9919079822486167466

namespace A097454

/-- `A023444(A118777(n+1)+1)` -/
def P9919079822486167466.Spec : Prop :=
  ∀ n, P9919079822486167466.a n = A097454 (n + 1)

end A097454

/-! ## A097454.P1343289199031107902

`2-∑[A008683(A014673(n+1))]`
-/

namespace A097454.P1343289199031107902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097454.P1343289199031107902

namespace A097454

/-- `2-∑[A008683(A014673(n+1))]` -/
def P1343289199031107902.Spec : Prop :=
  ∀ n, P1343289199031107902.a n = A097454 (n + 1)

end A097454

/-!
# A097455: a(n) = gcd(prime(n)+1, composite(n)).

The programs for A097455, the canonical program `A097455.P7800846484876980294` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097455 has offset 1).

The definition of A097455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097455.P7800846484876980294

`gcd(A008864(n+1), A018252(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097455

/-- `gcd(A008864(n+1), A018252(n+1))` -/
def P7800846484876980294.Spec : Prop :=
  ∀ n, (P7800846484876980294.a n : ℤ) = A097455 (n + 1)

theorem P7800846484876980294.correct : P7800846484876980294.Spec := by
  intro n
  simp only [A097455, Nat.add_sub_cancel]

end A097455

/-! ## A097455.P2382149869083605751

`gcd(A055670(n+1), A127118(n+1))`
-/

namespace A097455.P2382149869083605751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055670 (n + 1)) (A127118 (n + 1))

end

end A097455.P2382149869083605751

namespace A097455

/-- `gcd(A055670(n+1), A127118(n+1))` -/
def P2382149869083605751.Spec : Prop :=
  ∀ n, (P2382149869083605751.a n : ℤ) = A097455 (n + 1)

end A097455

/-! ## A097455.P1781159445512471980

`gcd(A065090(n+2), A299763(n+2))`
-/

namespace A097455.P1781159445512471980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065090 (n + 2)) (A299763 (n + 2))

end

end A097455.P1781159445512471980

namespace A097455

/-- `gcd(A065090(n+2), A299763(n+2))` -/
def P1781159445512471980.Spec : Prop :=
  ∀ n, (P1781159445512471980.a n : ℤ) = A097455 (n + 1)

end A097455

/-! ## A097455.P3769474783427462984

`gcd(A000040(n+1)+1, Δ[A051349(n)])`
-/

namespace A097455.P3769474783427462984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A097455.P3769474783427462984

namespace A097455

/-- `gcd(A000040(n+1)+1, Δ[A051349(n)])` -/
def P3769474783427462984.Spec : Prop :=
  ∀ n, (P3769474783427462984.a n : ℤ) = A097455 (n + 1)

end A097455

/-! ## A097455.P5721351122971162627

`gcd(A006005(n+1)+1, sqrt(A062312(n+1)))`
-/

namespace A097455.P5721351122971162627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006005 (n + 1) + 1) (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 1) : ℝ)))

end

end A097455.P5721351122971162627

namespace A097455

/-- `gcd(A006005(n+1)+1, sqrt(A062312(n+1)))` -/
def P5721351122971162627.Spec : Prop :=
  ∀ n, (P5721351122971162627.a n : ℤ) = A097455 (n + 1)

end A097455

/-! ## A097455.P13502279660281529950

`gcd(A073846(2*(n+1))+1, A073846(2*n+1))`
-/

namespace A097455.P13502279660281529950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073846 (2 * (n + 1)) + 1) (A073846 (2 * n + 1))

end

end A097455.P13502279660281529950

namespace A097455

/-- `gcd(A073846(2*(n+1))+1, A073846(2*n+1))` -/
def P13502279660281529950.Spec : Prop :=
  ∀ n, (P13502279660281529950.a n : ℤ) = A097455 (n + 1)

end A097455

/-! ## A097455.P17072910413939971727

`gcd(A002808(A028310(n)), A008864(n+1))`
-/

namespace A097455.P17072910413939971727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (A028310 n).toNat) (A008864 (n + 1))

end

end A097455.P17072910413939971727

namespace A097455

/-- `gcd(A002808(A028310(n)), A008864(n+1))` -/
def P17072910413939971727.Spec : Prop :=
  ∀ n, (P17072910413939971727.a n : ℤ) = A097455 (n + 1)

end A097455

/-! ## A097455.P10645610853937577722

`gcd(A000720(A007821(n+1)), A028815(n+1))`
-/

namespace A097455.P10645610853937577722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (A007821 (n + 1)).toNat) (A028815 (n + 1))

end

end A097455.P10645610853937577722

namespace A097455

/-- `gcd(A000720(A007821(n+1)), A028815(n+1))` -/
def P10645610853937577722.Spec : Prop :=
  ∀ n, (P10645610853937577722.a n : ℤ) = A097455 (n + 1)

end A097455

/-! ## A097455.P13985883068512600461

`gcd(A000203(A040976(n+1)+2), A141468(n+2))`
-/

namespace A097455.P13985883068512600461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A040976 (n + 1) + 2).toNat) (A141468 (n + 2))

end

end A097455.P13985883068512600461

namespace A097455

/-- `gcd(A000203(A040976(n+1)+2), A141468(n+2))` -/
def P13985883068512600461.Spec : Prop :=
  ∀ n, (P13985883068512600461.a n : ℤ) = A097455 (n + 1)

end A097455

/-!
# A097456: Integer part of the ratio (number of composites <=n) / (number of primes <=n).

The programs for A097456, the canonical program `A097456.P2347121820243890794` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097456 has offset 2).

The definition of A097456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097456.P6775694316622791627

`A127267(n+2)-1`
-/

namespace A097456.P6775694316622791627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127267 (n + 2) - 1

end

end A097456.P6775694316622791627

namespace A097456

/-- `A127267(n+2)-1` -/
def P6775694316622791627.Spec : Prop :=
  ∀ n, P6775694316622791627.a n = A097456 (n + 2)

theorem P6775694316622791627.correct : P6775694316622791627.Spec := by
  intro n
  simp only [A097456, Nat.add_sub_cancel, A097456.P6775694316622791627.a, A097456.P2347121820243890794.f1, A097456.P2347121820243890794.a, A046992, A046992.P5723550036857346414.a, A127267, A127267.P11390009319995840991.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097456

/-! ## A097456.P3089105220201739490

`floor((n+2)/A000720(n+2))-1`
-/

namespace A097456.P3089105220201739490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A000720 (n + 2) : ℚ)⌋ - 1

end

end A097456.P3089105220201739490

namespace A097456

/-- `floor((n+2)/A000720(n+2))-1` -/
def P3089105220201739490.Spec : Prop :=
  ∀ n, P3089105220201739490.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P15471985643446357759

`floor((n+2)/A230980(n+2))-1`
-/

namespace A097456.P15471985643446357759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A230980 (n + 2) : ℚ)⌋ - 1

end

end A097456.P15471985643446357759

namespace A097456

/-- `floor((n+2)/A230980(n+2))-1` -/
def P15471985643446357759.Spec : Prop :=
  ∀ n, P15471985643446357759.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P12123251621398561456

`floor((n+2)/∑[A010051(n+2)])-1`
-/

namespace A097456.P12123251621398561456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋ - 1

end

end A097456.P12123251621398561456

namespace A097456

/-- `floor((n+2)/∑[A010051(n+2)])-1` -/
def P12123251621398561456.Spec : Prop :=
  ∀ n, P12123251621398561456.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P2347121820243890794

`floor((n+2)/Δ[A046992(n+1)])-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097456

/-- `floor((n+2)/Δ[A046992(n+1)])-1` -/
def P2347121820243890794.Spec : Prop :=
  ∀ n, P2347121820243890794.a n = A097456 (n + 2)

theorem P2347121820243890794.correct : P2347121820243890794.Spec := by
  intro n
  simp only [A097456, Nat.add_sub_cancel]

end A097456

/-! ## A097456.P6330641269963381594

`floor((n+2)/(A036234(n+2)-1))-1`
-/

namespace A097456.P6330641269963381594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A036234 (n + 2) - 1 : ℚ)⌋ - 1

end

end A097456.P6330641269963381594

namespace A097456

/-- `floor((n+2)/(A036234(n+2)-1))-1` -/
def P6330641269963381594.Spec : Prop :=
  ∀ n, P6330641269963381594.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P4700935170040424494

`floor((n+2)/∑[C(2, A000005(n+2))])-1`
-/

namespace A097456.P4700935170040424494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ - 1

end

end A097456.P4700935170040424494

namespace A097456

/-- `floor((n+2)/∑[C(2, A000005(n+2))])-1` -/
def P4700935170040424494.Spec : Prop :=
  ∀ n, P4700935170040424494.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P16350827627350185542

`floor((n+2)/∑[C(A000010(n+2), n+1)])-1`
-/

namespace A097456.P16350827627350185542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 2)).toNat (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ - 1

end

end A097456.P16350827627350185542

namespace A097456

/-- `floor((n+2)/∑[C(A000010(n+2), n+1)])-1` -/
def P16350827627350185542.Spec : Prop :=
  ∀ n, P16350827627350185542.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P5861868508015521638

`11%A127267(A020725(n+1))`
-/

namespace A097456.P5861868508015521638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A127267 (A020725 (n + 1)).toNat)

end

end A097456.P5861868508015521638

namespace A097456

/-- `11%A127267(A020725(n+1))` -/
def P5861868508015521638.Spec : Prop :=
  ∀ n, P5861868508015521638.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P17855197345079690664

`23%A127267(A028310(n+2))`
-/

namespace A097456.P17855197345079690664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 23 (A127267 (A028310 (n + 2)).toNat)

end

end A097456.P17855197345079690664

namespace A097456

/-- `23%A127267(A028310(n+2))` -/
def P17855197345079690664.Spec : Prop :=
  ∀ n, P17855197345079690664.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P11089961505612614014

`A001538(n)%A127267(n+2)`
-/

namespace A097456.P11089961505612614014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A127267 (n + 2))

end

end A097456.P11089961505612614014

namespace A097456

/-- `A001538(n)%A127267(n+2)` -/
def P11089961505612614014.Spec : Prop :=
  ∀ n, P11089961505612614014.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P16282294929211481678

`A002148(n)%A127267(n+2)`
-/

namespace A097456.P16282294929211481678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A127267 (n + 2))

end

end A097456.P16282294929211481678

namespace A097456

/-- `A002148(n)%A127267(n+2)` -/
def P16282294929211481678.Spec : Prop :=
  ∀ n, P16282294929211481678.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P2977159057960169621

`A017653(n)%A127267(n+2)`
-/

namespace A097456.P2977159057960169621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A127267 (n + 2))

end

end A097456.P2977159057960169621

namespace A097456

/-- `A017653(n)%A127267(n+2)` -/
def P2977159057960169621.Spec : Prop :=
  ∀ n, P2977159057960169621.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P7835603031805514155

`A017655(n)%A127267(n+2)`
-/

namespace A097456.P7835603031805514155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A127267 (n + 2))

end

end A097456.P7835603031805514155

namespace A097456

/-- `A017655(n)%A127267(n+2)` -/
def P7835603031805514155.Spec : Prop :=
  ∀ n, P7835603031805514155.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P9003983564500283218

`A017657(n)%A127267(n+2)`
-/

namespace A097456.P9003983564500283218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A127267 (n + 2))

end

end A097456.P9003983564500283218

namespace A097456

/-- `A017657(n)%A127267(n+2)` -/
def P9003983564500283218.Spec : Prop :=
  ∀ n, P9003983564500283218.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P17165867096389258994

`A033300(n)%A127267(n+2)`
-/

namespace A097456.P17165867096389258994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033300 n) (A127267 (n + 2))

end

end A097456.P17165867096389258994

namespace A097456

/-- `A033300(n)%A127267(n+2)` -/
def P17165867096389258994.Spec : Prop :=
  ∀ n, P17165867096389258994.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P5420986925036941123

`A038867(n)%A127267(n+2)`
-/

namespace A097456.P5420986925036941123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038867 n) (A127267 (n + 2))

end

end A097456.P5420986925036941123

namespace A097456

/-- `A038867(n)%A127267(n+2)` -/
def P5420986925036941123.Spec : Prop :=
  ∀ n, P5420986925036941123.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P1759227432841935154

`A052940(n)%A127267(n+2)`
-/

namespace A097456.P1759227432841935154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052940 n) (A127267 (n + 2))

end

end A097456.P1759227432841935154

namespace A097456

/-- `A052940(n)%A127267(n+2)` -/
def P1759227432841935154.Spec : Prop :=
  ∀ n, P1759227432841935154.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P11055850106064395177

`A086972(n)%A127267(n+2)`
-/

namespace A097456.P11055850106064395177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086972 n) (A127267 (n + 2))

end

end A097456.P11055850106064395177

namespace A097456

/-- `A086972(n)%A127267(n+2)` -/
def P11055850106064395177.Spec : Prop :=
  ∀ n, P11055850106064395177.a n = A097456 (n + 2)

end A097456

/-! ## A097456.P15379984216855029264

`A168607(n)%A127267(n+2)`
-/

namespace A097456.P15379984216855029264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168607 n) (A127267 (n + 2))

end

end A097456.P15379984216855029264

namespace A097456

/-- `A168607(n)%A127267(n+2)` -/
def P15379984216855029264.Spec : Prop :=
  ∀ n, P15379984216855029264.a n = A097456 (n + 2)

end A097456

/-!
# A097457: If n is prime replace with the n-th nonprime otherwise replace with the n-th prime.

The programs for A097457, there is no canonical definition to state claims against.
-/

/-! ## A097457.P5748756721194592727

`A067747(∏{p}[n+1, C(#%n, #)]+2*n)`
-/

namespace A097457.P5748756721194592727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p + 2 * n)

end

end A097457.P5748756721194592727

/-! ## A097457.P4124225449377834466

`A067747(C(n, ∑{p}[n+1, C(#, n)])+2*n)`
-/

namespace A097457.P4124225449377834466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) + 2 * n)

end

end A097457.P4124225449377834466

/-! ## A097457.P16475572397986433776

`A026234(A117668(n+1))`
-/

namespace A097457.P16475572397986433776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A117668 (n + 1)).toNat

end

end A097457.P16475572397986433776

/-! ## A097457.P15944245580859119643

`A067747(A014684(n+1)+n)`
-/

namespace A097457.P15944245580859119643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A014684 (n + 1) + (n : ℤ)).toNat

end

end A097457.P15944245580859119643

/-! ## A097457.P14852300700403714904

`A073846(A113636(n+1)+n)`
-/

namespace A097457.P14852300700403714904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A113636 (n + 1) + (n : ℤ)).toNat

end

end A097457.P14852300700403714904

/-! ## A097457.P2226957549495581919

`A073846(A014684(n+1)+1+n)`
-/

namespace A097457.P2226957549495581919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A014684 (n + 1) + 1 + (n : ℤ)).toNat

end

end A097457.P2226957549495581919

/-! ## A097457.P16880807881594360599

`A022797(n+1)-A117668(n+1)`
-/

namespace A097457.P16880807881594360599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1) - A117668 (n + 1)

end

end A097457.P16880807881594360599

/-! ## A097457.P10416857719067275471

`A067747(A005171(n+1)+2*n)`
-/

namespace A097457.P10416857719067275471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A005171 (n + 1) + (2 * n : ℤ)).toNat

end

end A097457.P10416857719067275471

/-! ## A097457.P12417451235277366756

`A127118(n+1)/A117668(n+1)`
-/

namespace A097457.P12417451235277366756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127118 (n + 1) : ℚ) / (A117668 (n + 1) : ℚ)

end

end A097457.P12417451235277366756

/-! ## A097457.P3597240012681637486

`A067747(A005171(n+1)+n+n)`
-/

namespace A097457.P3597240012681637486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A005171 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A097457.P3597240012681637486

/-!
# A097462: Multiplication table for numbers 0 through 10 read by rows.

The programs for A097462, the canonical program `A097462.P7362709824220085281` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097462 has offset 0).

The definition of A097462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097462.P7362709824220085281

`n%11*floor(n/11)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097462

/-- `n%11*floor(n/11)` -/
def P7362709824220085281.Spec : Prop :=
  ∀ n, P7362709824220085281.a n = A097462 n

theorem P7362709824220085281.correct : P7362709824220085281.Spec := by
  intro n
  simp only [A097462]

end A097462

/-! ## A097462.P6005787762250004095

`floor(n/11)*A010880(n)`
-/

namespace A097462.P6005787762250004095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 11⌋ * A010880 n

end

end A097462.P6005787762250004095

namespace A097462

/-- `floor(n/11)*A010880(n)` -/
def P6005787762250004095.Spec : Prop :=
  ∀ n, P6005787762250004095.a n = A097462 n

theorem P6005787762250004095.correct : P6005787762250004095.Spec := by
  intro n
  simp only [A097462, Nat.add_sub_cancel, A097462.P6005787762250004095.a, A097462.P7362709824220085281.a, A010880, A010880.P18325059026936962362.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097462

/-! ## A097462.P586108124957359959

`∑[floor(n/11)]-A051865(floor(n/11))`
-/

namespace A097462.P586108124957359959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051865 ⌊(n : ℚ) / 11⌋.toNat

end

end A097462.P586108124957359959

namespace A097462

/-- `∑[floor(n/11)]-A051865(floor(n/11))` -/
def P586108124957359959.Spec : Prop :=
  ∀ n, P586108124957359959.a n = A097462 n

end A097462

/-! ## A097462.P8940030678498118878

`A010880(n)*A344420(n)`
-/

namespace A097462.P8940030678498118878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 n * A344420 n

end

end A097462.P8940030678498118878

namespace A097462

/-- `A010880(n)*A344420(n)` -/
def P8940030678498118878.Spec : Prop :=
  ∀ n, P8940030678498118878.a n = A097462 n

end A097462

/-! ## A097462.P15607831594969478395

`A053186(A055649(n)*A064458(n))`
-/

namespace A097462.P15607831594969478395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A055649 n * A064458 n).toNat

end

end A097462.P15607831594969478395

namespace A097462

/-- `A053186(A055649(n)*A064458(n))` -/
def P15607831594969478395.Spec : Prop :=
  ∀ n, P15607831594969478395.a n = A097462 n

end A097462

/-! ## A097462.P3224174334982564474

`A053188(A055649(n)*A064458(n))`
-/

namespace A097462.P3224174334982564474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A055649 n * A064458 n).toNat

end

end A097462.P3224174334982564474

namespace A097462

/-- `A053188(A055649(n)*A064458(n))` -/
def P3224174334982564474.Spec : Prop :=
  ∀ n, P3224174334982564474.a n = A097462 n

end A097462

/-!
# A097465: a(1) = 1; for n>1, a(n) = smallest positive integer which is not among earlier terms of sequence, is coprime to a(n-1) and is not equal to a(n-1) +- 1.

The programs for A097465, there is no canonical definition to state claims against.
-/

/-! ## A097465.P13410770339705252050

`A351646(n+1)+1+n`
-/

namespace A097465.P13410770339705252050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351646 (n + 1) + 1 + (n : ℤ)

end

end A097465.P13410770339705252050

/-! ## A097465.P8297091696810055349

`A351646(A077168(n))+n+1`
-/

namespace A097465.P8297091696810055349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351646 (A077168 n).toNat + (n + 1 : ℤ)

end

end A097465.P8297091696810055349

/-! ## A097465.P8097172215532668826

`A105353(A274631(n+1)^A351241(n+1))`
-/

namespace A097465.P8097172215532668826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105353 (SequenceMachineLib.roundAway ((A274631 (n + 1) : ℚ) ^ (A351241 (n + 1) : ℤ))).toNat

end

end A097465.P8097172215532668826

/-! ## A097465.P8635579556275116919

`A105353(C(A274631(n+1), A351241(n+1)))`
-/

namespace A097465.P8635579556275116919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105353 (Nat.choose (A274631 (n + 1)).toNat (A351241 (n + 1)).toNat)

end

end A097465.P8635579556275116919

/-! ## A097465.P1626641856643604802

`A105353(A351241(n+1)²*A274631(n+1))`
-/

namespace A097465.P1626641856643604802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105353 (A351241 (n + 1) ^ 2 * A274631 (n + 1)).toNat

end

end A097465.P1626641856643604802

/-!
# A097467: Permutation of natural numbers inverse to A097465.

The programs for A097467, there is no canonical definition to state claims against.
-/

/-! ## A097467.P7174574246851032894

`A127367(n+2)-A188973(A000079(n))`
-/

namespace A097467.P7174574246851032894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127367 (n + 2) - A188973 (A000079 n).toNat

end

end A097467.P7174574246851032894

/-!
# A097468: Number of 1's in the decimal expansion of the lesser of twin primes.

The programs for A097468, the canonical program `A097468.P5565453724640310347` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097468 has offset 2).

The definition of A097468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097468.P5565453724640310347

`∑{digits}[A001359(n+1), A033683(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A097468

/-- `∑{digits}[A001359(n+1), A033683(#)]` -/
def P5565453724640310347.Spec : Prop :=
  ∀ n, P5565453724640310347.a n = A097468 (n + 2)

theorem P5565453724640310347.correct : P5565453724640310347.Spec := by
  intro n
  simp only [A097468, Nat.add_sub_cancel]

end A097468

/-! ## A097468.P5271026558966689201

`∑{digits}[A001359(n+1), A259567(#)]`
-/

namespace A097468.P5271026558966689201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A259567 x).sum

end

end A097468.P5271026558966689201

namespace A097468

/-- `∑{digits}[A001359(n+1), A259567(#)]` -/
def P5271026558966689201.Spec : Prop :=
  ∀ n, P5271026558966689201.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P16164724597478400373

`∑{digits}[A001359(n+1), A326168(#)]`
-/

namespace A097468.P16164724597478400373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326168 x).sum

end

end A097468.P16164724597478400373

namespace A097468

/-- `∑{digits}[A001359(n+1), A326168(#)]` -/
def P16164724597478400373.Spec : Prop :=
  ∀ n, P16164724597478400373.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P7098029945078885490

`∑{digits}[A001359(n+1), A010051(A000225(#)+1)]`
-/

namespace A097468.P7098029945078885490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010051 (A000225 x + 1).toNat).sum

end

end A097468.P7098029945078885490

namespace A097468

/-- `∑{digits}[A001359(n+1), A010051(A000225(#)+1)]` -/
def P7098029945078885490.Spec : Prop :=
  ∀ n, P7098029945078885490.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P2340938500424664560

`∑{digits}[p?[A040976(n+1)], C(#, #!²)]`
-/

namespace A097468.P2340938500424664560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x (Nat.factorial x ^ 2)).sum

end

end A097468.P2340938500424664560

namespace A097468

/-- `∑{digits}[p?[A040976(n+1)], C(#, #!²)]` -/
def P2340938500424664560.Spec : Prop :=
  ∀ n, (P2340938500424664560.a n : ℤ) = A097468 (n + 2)

end A097468

/-! ## A097468.P6691134623147950993

`A085975(A029707(n+1))`
-/

namespace A097468.P6691134623147950993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085975 (A029707 (n + 1)).toNat

end

end A097468.P6691134623147950993

namespace A097468

/-- `A085975(A029707(n+1))` -/
def P6691134623147950993.Spec : Prop :=
  ∀ n, P6691134623147950993.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P4535873375522494968

`A268643(A001359(n+1))`
-/

namespace A097468.P4535873375522494968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A001359 (n + 1)).toNat

end

end A097468.P4535873375522494968

namespace A097468

/-- `A268643(A001359(n+1))` -/
def P4535873375522494968.Spec : Prop :=
  ∀ n, P4535873375522494968.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P1011148889154220194

`A268643(A111166(n+1))`
-/

namespace A097468.P1011148889154220194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A111166 (n + 1)).toNat

end

end A097468.P1011148889154220194

namespace A097468

/-- `A268643(A111166(n+1))` -/
def P1011148889154220194.Spec : Prop :=
  ∀ n, P1011148889154220194.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P7194076497943265217

`A268643(A124588(n+2))`
-/

namespace A097468.P7194076497943265217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A124588 (n + 2)).toNat

end

end A097468.P7194076497943265217

namespace A097468

/-- `A268643(A124588(n+2))` -/
def P7194076497943265217.Spec : Prop :=
  ∀ n, P7194076497943265217.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P6586029859219829915

`A268643(A181747(n+2))`
-/

namespace A097468.P6586029859219829915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A181747 (n + 2)).toNat

end

end A097468.P6586029859219829915

namespace A097468

/-- `A268643(A181747(n+2))` -/
def P6586029859219829915.Spec : Prop :=
  ∀ n, P6586029859219829915.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P4146174022820580266

`A268643(A238528(n+3))`
-/

namespace A097468.P4146174022820580266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A238528 (n + 3)).toNat

end

end A097468.P4146174022820580266

namespace A097468

/-- `A268643(A238528(n+3))` -/
def P4146174022820580266.Spec : Prop :=
  ∀ n, P4146174022820580266.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P8580452880239032982

`A268643(A077800(Δ[n²]))`
-/

namespace A097468.P8580452880239032982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A077800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A097468.P8580452880239032982

namespace A097468

/-- `A268643(A077800(Δ[n²]))` -/
def P8580452880239032982.Spec : Prop :=
  ∀ n, P8580452880239032982.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P16704105931520992729

`A268643(p?[A040976(n+1)])`
-/

namespace A097468.P16704105931520992729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A097468.P16704105931520992729

namespace A097468

/-- `A268643(p?[A040976(n+1)])` -/
def P16704105931520992729.Spec : Prop :=
  ∀ n, P16704105931520992729.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P13933786298391154738

`A268643(A006512(n+1)-2)`
-/

namespace A097468.P13933786298391154738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A006512 (n + 1) - 2).toNat

end

end A097468.P13933786298391154738

namespace A097468

/-- `A268643(A006512(n+1)-2)` -/
def P13933786298391154738.Spec : Prop :=
  ∀ n, P13933786298391154738.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P3353316577962477444

`A268643(p?[A000040(n+1)-2])`
-/

namespace A097468.P3353316577962477444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A097468.P3353316577962477444

namespace A097468

/-- `A268643(p?[A000040(n+1)-2])` -/
def P3353316577962477444.Spec : Prop :=
  ∀ n, P3353316577962477444.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P3095200498518163964

`A268643(p?[A008578(n+1)-2])`
-/

namespace A097468.P3095200498518163964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A097468.P3095200498518163964

namespace A097468

/-- `A268643(p?[A008578(n+1)-2])` -/
def P3095200498518163964.Spec : Prop :=
  ∀ n, P3095200498518163964.a n = A097468 (n + 2)

end A097468

/-! ## A097468.P16715483948986700168

`A268643(A174350(A000124(n)))`
-/

namespace A097468.P16715483948986700168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A174350 (A000124 n).toNat).toNat

end

end A097468.P16715483948986700168

namespace A097468

/-- `A268643(A174350(A000124(n)))` -/
def P16715483948986700168.Spec : Prop :=
  ∀ n, P16715483948986700168.a n = A097468 (n + 2)

end A097468

/-!
# A097470: Number of 0's in the decimal expansion of the lesser of twin primes.

The programs for A097470, the canonical program `A097470.P6580324684600316956` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097470 has offset 2).

The definition of A097470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097470.P6580324684600316956

`∑{digits}[A001359(n+1), A000007(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A097470

/-- `∑{digits}[A001359(n+1), A000007(#)]` -/
def P6580324684600316956.Spec : Prop :=
  ∀ n, P6580324684600316956.a n = A097470 (n + 2)

theorem P6580324684600316956.correct : P6580324684600316956.Spec := by
  intro n
  simp only [A097470, Nat.add_sub_cancel]

end A097470

/-! ## A097470.P4830507182955435694

`∑{digits}[A001359(n+1), A033683(#+1)]`
-/

namespace A097470.P4830507182955435694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033683 (x + 1)).sum

end

end A097470.P4830507182955435694

namespace A097470

/-- `∑{digits}[A001359(n+1), A033683(#+1)]` -/
def P4830507182955435694.Spec : Prop :=
  ∀ n, P4830507182955435694.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P13072878640695701207

`∑{digits}[A001359(n+1), A326168(#+1)]`
-/

namespace A097470.P13072878640695701207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A326168 (x + 1)).sum

end

end A097470.P13072878640695701207

namespace A097470

/-- `∑{digits}[A001359(n+1), A326168(#+1)]` -/
def P13072878640695701207.Spec : Prop :=
  ∀ n, P13072878640695701207.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P1427392425283131263

`∑{digits}[p?[A001838(n+1)], A000007(#)]`
-/

namespace A097470.P1427392425283131263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A097470.P1427392425283131263

namespace A097470

/-- `∑{digits}[p?[A001838(n+1)], A000007(#)]` -/
def P1427392425283131263.Spec : Prop :=
  ∀ n, P1427392425283131263.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P7074748042447947323

`A085974(A029707(n+1))`
-/

namespace A097470.P7074748042447947323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (A029707 (n + 1)).toNat

end

end A097470.P7074748042447947323

namespace A097470

/-- `A085974(A029707(n+1))` -/
def P7074748042447947323.Spec : Prop :=
  ∀ n, P7074748042447947323.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P8135361870250322423

`∑{digits}[p?[A040976(n+1)], A000007(#)]`
-/

namespace A097470.P8135361870250322423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A097470.P8135361870250322423

namespace A097470

/-- `∑{digits}[p?[A040976(n+1)], A000007(#)]` -/
def P8135361870250322423.Spec : Prop :=
  ∀ n, P8135361870250322423.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P3013371472668943116

`∑{digits}[A000040(A029707(n+1)), A000007(#)]`
-/

namespace A097470.P3013371472668943116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A097470.P3013371472668943116

namespace A097470

/-- `∑{digits}[A000040(A029707(n+1)), A000007(#)]` -/
def P3013371472668943116.Spec : Prop :=
  ∀ n, P3013371472668943116.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P3151926113349807164

`A055641(A001359(n+1))`
-/

namespace A097470.P3151926113349807164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A001359 (n + 1)).toNat

end

end A097470.P3151926113349807164

namespace A097470

/-- `A055641(A001359(n+1))` -/
def P3151926113349807164.Spec : Prop :=
  ∀ n, P3151926113349807164.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P7665654741931633005

`A055641(A111166(n+1))`
-/

namespace A097470.P7665654741931633005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A111166 (n + 1)).toNat

end

end A097470.P7665654741931633005

namespace A097470

/-- `A055641(A111166(n+1))` -/
def P7665654741931633005.Spec : Prop :=
  ∀ n, P7665654741931633005.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P7943123056602656670

`A055641(A124588(n+2))`
-/

namespace A097470.P7943123056602656670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A124588 (n + 2)).toNat

end

end A097470.P7943123056602656670

namespace A097470

/-- `A055641(A124588(n+2))` -/
def P7943123056602656670.Spec : Prop :=
  ∀ n, P7943123056602656670.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P13642770397349397523

`A055641(A181747(n+2))`
-/

namespace A097470.P13642770397349397523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A181747 (n + 2)).toNat

end

end A097470.P13642770397349397523

namespace A097470

/-- `A055641(A181747(n+2))` -/
def P13642770397349397523.Spec : Prop :=
  ∀ n, P13642770397349397523.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P11803964640636719192

`A055641(A077800(Δ[n²]))`
-/

namespace A097470.P11803964640636719192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A077800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A097470.P11803964640636719192

namespace A097470

/-- `A055641(A077800(Δ[n²]))` -/
def P11803964640636719192.Spec : Prop :=
  ∀ n, P11803964640636719192.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P2824465357754635110

`A055641(p?[A040976(n+1)])`
-/

namespace A097470.P2824465357754635110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A097470.P2824465357754635110

namespace A097470

/-- `A055641(p?[A040976(n+1)])` -/
def P2824465357754635110.Spec : Prop :=
  ∀ n, P2824465357754635110.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P11001214197334010274

`A055641(A014574(n+1)-1)`
-/

namespace A097470.P11001214197334010274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A014574 (n + 1) - 1).toNat

end

end A097470.P11001214197334010274

namespace A097470

/-- `A055641(A014574(n+1)-1)` -/
def P11001214197334010274.Spec : Prop :=
  ∀ n, P11001214197334010274.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P438102173594841386

`A055641(A006512(n+1)-2)`
-/

namespace A097470.P438102173594841386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A006512 (n + 1) - 2).toNat

end

end A097470.P438102173594841386

namespace A097470

/-- `A055641(A006512(n+1)-2)` -/
def P438102173594841386.Spec : Prop :=
  ∀ n, P438102173594841386.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P15454115150468804852

`A055641(p?[A000040(n+1)-2])`
-/

namespace A097470.P15454115150468804852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A097470.P15454115150468804852

namespace A097470

/-- `A055641(p?[A000040(n+1)-2])` -/
def P15454115150468804852.Spec : Prop :=
  ∀ n, P15454115150468804852.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P13898998093393933655

`A055641(p?[A008578(n+1)-2])`
-/

namespace A097470.P13898998093393933655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A097470.P13898998093393933655

namespace A097470

/-- `A055641(p?[A008578(n+1)-2])` -/
def P13898998093393933655.Spec : Prop :=
  ∀ n, P13898998093393933655.a n = A097470 (n + 2)

end A097470

/-! ## A097470.P12705349202486159162

`A055641(A174350(A000124(n)))`
-/

namespace A097470.P12705349202486159162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A174350 (A000124 n).toNat).toNat

end

end A097470.P12705349202486159162

namespace A097470

/-- `A055641(A174350(A000124(n)))` -/
def P12705349202486159162.Spec : Prop :=
  ∀ n, P12705349202486159162.a n = A097470 (n + 2)

end A097470

/-!
# A097471: First differences of A076678.

The programs for A097471, the canonical program `A097471.P1805001862533149154` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097471 has offset 1).

The definition of A097471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097471.P1805001862533149154

`A076678(n+1)-A076678(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097471

/-- `A076678(n+1)-A076678(n)` -/
def P1805001862533149154.Spec : Prop :=
  ∀ n, P1805001862533149154.a n = A097471 (n + 1)

theorem P1805001862533149154.correct : P1805001862533149154.Spec := by
  intro n
  simp only [A097471, Nat.add_sub_cancel]

end A097471

/-! ## A097471.P13796556768848335467

`Δ[floor(a(n-2)+sqrt(a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A097471.P13796556768848335467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(f1 (n - 2) : ℝ) + Real.sqrt (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097471.P13796556768848335467

namespace A097471

/-- `Δ[floor(a(n-2)+sqrt(a(n-1)))]` -/
def P13796556768848335467.Spec : Prop :=
  ∀ n, P13796556768848335467.a n = A097471 (n + 1)

end A097471

/-! ## A097471.P1892016296572536960

`Δ[floor(a(n-2)+a(n-1)^(1/2))]` with `a(0)=1, a(1)=1`
-/

namespace A097471.P1892016296572536960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(f1 (n - 2) : ℝ) + (f1 (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097471.P1892016296572536960

namespace A097471

/-- `Δ[floor(a(n-2)+a(n-1)^(1/2))]` -/
def P1892016296572536960.Spec : Prop :=
  ∀ n, P1892016296572536960.a n = A097471 (n + 1)

end A097471

/-! ## A097471.P12072842443973159962

`Δ[A076678(n)]`
-/

namespace A097471.P12072842443973159962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097471.P12072842443973159962

namespace A097471

/-- `Δ[A076678(n)]` -/
def P12072842443973159962.Spec : Prop :=
  ∀ n, P12072842443973159962.a n = A097471 (n + 1)

theorem P12072842443973159962.correct : P12072842443973159962.Spec := by
  intro n
  simp only [A097471, Nat.add_sub_cancel, A097471.P12072842443973159962.f1, A097471.P12072842443973159962.a, A097471.P1805001862533149154.a, SequenceMachineLib.memo_apply]

end A097471

/-! ## A097471.P13744598187962402485

`Δ[A000194(a(n-3))+a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A097471.P13744598187962402485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A000194 (f1 (n - 3)).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097471.P13744598187962402485

namespace A097471

/-- `Δ[A000194(a(n-3))+a(n-2)]` -/
def P13744598187962402485.Spec : Prop :=
  ∀ n, P13744598187962402485.a n = A097471 (n + 1)

end A097471

/-! ## A097471.P11437849266914926390

`Δ[A000196(a(n-1))+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A097471.P11437849266914926390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000196 (f1 (n - 1)).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097471.P11437849266914926390

namespace A097471

/-- `Δ[A000196(a(n-1))+a(n-2)]` -/
def P11437849266914926390.Spec : Prop :=
  ∀ n, P11437849266914926390.a n = A097471 (n + 1)

end A097471

/-!
# A097472: Number of different candle trees having a total of m edges.

The programs for A097472, the canonical program `A097472.P5819455639628559726` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097472 has offset 0).

The definition of A097472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097472.P5819455639628559726

`3*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=31`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097472

/-- `3*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P5819455639628559726.Spec : Prop :=
  ∀ n, P5819455639628559726.a n = A097472 n

theorem P5819455639628559726.correct : P5819455639628559726.Spec := by
  intro n
  simp only [A097472]

end A097472

/-! ## A097472.P10321499105238764753

`ogf(1/(1-3x-x^2+2x^3+x^4))`
-/

namespace A097472.P10321499105238764753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -1, 2, 1] n

end

end A097472.P10321499105238764753

namespace A097472

/-- `ogf(1/(1-3x-x^2+2x^3+x^4))` -/
def P10321499105238764753.Spec : Prop :=
  ∀ n, P10321499105238764753.a n = A097472 n

end A097472

/-! ## A097472.P8895489923842169866

`∑[A218836(n)]`
-/

namespace A097472.P8895489923842169866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097472.P8895489923842169866

namespace A097472

/-- `∑[A218836(n)]` -/
def P8895489923842169866.Spec : Prop :=
  ∀ n, P8895489923842169866.a n = A097472 n

end A097472

/-! ## A097472.P73835426990835284

`A193771(4*n)`
-/

namespace A097472.P73835426990835284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (4 * n)

end

end A097472.P73835426990835284

namespace A097472

/-- `A193771(4*n)` -/
def P73835426990835284.Spec : Prop :=
  ∀ n, P73835426990835284.a n = A097472 n

end A097472

/-! ## A097472.P13714136383938487235

`A060945(Δ[n²])`
-/

namespace A097472.P13714136383938487235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A097472.P13714136383938487235

namespace A097472

/-- `A060945(Δ[n²])` -/
def P13714136383938487235.Spec : Prop :=
  ∀ n, P13714136383938487235.a n = A097472 n

end A097472

/-! ## A097472.P10497343147837260957

`A181532(2*(n+1))`
-/

namespace A097472.P10497343147837260957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 (2 * (n + 1))

end

end A097472.P10497343147837260957

namespace A097472

/-- `A181532(2*(n+1))` -/
def P10497343147837260957.Spec : Prop :=
  ∀ n, P10497343147837260957.a n = A097472 n

end A097472

/-! ## A097472.P5312005771905502663

`A017818(4*n+5)`
-/

namespace A097472.P5312005771905502663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (4 * n + 5)

end

end A097472.P5312005771905502663

namespace A097472

/-- `A017818(4*n+5)` -/
def P5312005771905502663.Spec : Prop :=
  ∀ n, P5312005771905502663.a n = A097472 n

end A097472

/-! ## A097472.P10186215699307553267

`∑[A005251(2*(n+1))]`
-/

namespace A097472.P10186215699307553267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097472.P10186215699307553267

namespace A097472

/-- `∑[A005251(2*(n+1))]` -/
def P10186215699307553267.Spec : Prop :=
  ∀ n, P10186215699307553267.a n = A097472 n

end A097472

/-! ## A097472.P4679865177315912744

`∑[A134816(4*n+1)]`
-/

namespace A097472.P4679865177315912744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097472.P4679865177315912744

namespace A097472

/-- `∑[A134816(4*n+1)]` -/
def P4679865177315912744.Spec : Prop :=
  ∀ n, P4679865177315912744.a n = A097472 n

end A097472

/-! ## A097472.P7292619366260942819

`∑[A000931(4*n+5)]`
-/

namespace A097472.P7292619366260942819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097472.P7292619366260942819

namespace A097472

/-- `∑[A000931(4*n+5)]` -/
def P7292619366260942819.Spec : Prop :=
  ∀ n, P7292619366260942819.a n = A097472 n

end A097472

/-! ## A097472.P6362038155992586407

`A084084(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A097472.P6362038155992586407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A084084 n + a (n - 2)

end

end A097472.P6362038155992586407

namespace A097472

/-- `A084084(n)+a(n-2)` -/
def P6362038155992586407.Spec : Prop :=
  ∀ n, P6362038155992586407.a n = A097472 n

end A097472

/-! ## A097472.P9756813939291048429

`∑[A182097(2*(2*n+1))]`
-/

namespace A097472.P9756813939291048429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097472.P9756813939291048429

namespace A097472

/-- `∑[A182097(2*(2*n+1))]` -/
def P9756813939291048429.Spec : Prop :=
  ∀ n, P9756813939291048429.a n = A097472 n

end A097472

/-! ## A097472.P18317099736551479700

`A005251(2*n+2)+a(n-1)` with `a(0)=1`
-/

namespace A097472.P18317099736551479700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005251 (2 * n + 2) + a (n - 1)

end

end A097472.P18317099736551479700

namespace A097472

/-- `A005251(2*n+2)+a(n-1)` -/
def P18317099736551479700.Spec : Prop :=
  ∀ n, P18317099736551479700.a n = A097472 n

end A097472

/-! ## A097472.P16495739272527587465

`A228362(A113127(n+1))`
-/

namespace A097472.P16495739272527587465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228362 (A113127 (n + 1)).toNat

end

end A097472.P16495739272527587465

namespace A097472

/-- `A228362(A113127(n+1))` -/
def P16495739272527587465.Spec : Prop :=
  ∀ n, P16495739272527587465.a n = A097472 n

end A097472

/-! ## A097472.P14065818841192983996

`A334293(n+2)-A238236(n)`
-/

namespace A097472.P14065818841192983996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334293 (n + 2) - A238236 n

end

end A097472.P14065818841192983996

namespace A097472

/-- `A334293(n+2)-A238236(n)` -/
def P14065818841192983996.Spec : Prop :=
  ∀ n, P14065818841192983996.a n = A097472 n

end A097472

/-! ## A097472.P2802362885706393141

`A347493(2*n+1)+A238236(n)`
-/

namespace A097472.P2802362885706393141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 (2 * n + 1) + A238236 n

end

end A097472.P2802362885706393141

namespace A097472

/-- `A347493(2*n+1)+A238236(n)` -/
def P2802362885706393141.Spec : Prop :=
  ∀ n, P2802362885706393141.a n = A097472 n

end A097472

/-! ## A097472.P9833493535382909710

`A005314(2*(n+1))-A238236(n)`
-/

namespace A097472.P9833493535382909710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (2 * (n + 1)) - A238236 n

end

end A097472.P9833493535382909710

namespace A097472

/-- `A005314(2*(n+1))-A238236(n)` -/
def P9833493535382909710.Spec : Prop :=
  ∀ n, P9833493535382909710.a n = A097472 n

end A097472

/-! ## A097472.P2786885243028222306

`A334293(n+2)-A060945(2*n)`
-/

namespace A097472.P2786885243028222306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334293 (n + 2) - A060945 (2 * n)

end

end A097472.P2786885243028222306

namespace A097472

/-- `A334293(n+2)-A060945(2*n)` -/
def P2786885243028222306.Spec : Prop :=
  ∀ n, P2786885243028222306.a n = A097472 n

end A097472

/-! ## A097472.P14790300311281933636

`A137495(2*n)-A307677(2*n)`
-/

namespace A097472.P14790300311281933636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137495 (2 * n) - A307677 (2 * n)

end

end A097472.P14790300311281933636

namespace A097472

/-- `A137495(2*n)-A307677(2*n)` -/
def P14790300311281933636.Spec : Prop :=
  ∀ n, P14790300311281933636.a n = A097472 n

end A097472

/-! ## A097472.P9703163384416093172

`A060945(2*n+1)+A000007(n+1)`
-/

namespace A097472.P9703163384416093172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (2 * n + 1) + A000007 (n + 1)

end

end A097472.P9703163384416093172

namespace A097472

/-- `A060945(2*n+1)+A000007(n+1)` -/
def P9703163384416093172.Spec : Prop :=
  ∀ n, P9703163384416093172.a n = A097472 n

end A097472

/-!
# A097475: Numbers n such that n^12 - n^6 + 1 is prime.

The programs for A097475, there is no canonical definition to state claims against.
-/

/-! ## A097475.P2289148511505691737

`sqrt(∩[A164989(n+1), n²])`
-/

namespace A097475.P2289148511505691737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A097475.P2289148511505691737

/-! ## A097475.P16803220594831820006

`sqrt(∩[A000290(n), A164989(n+1)])`
-/

namespace A097475.P16803220594831820006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A097475.P16803220594831820006

/-! ## A097475.P815874365006149993

`record[A056926(A164989(n+3))]`
-/

namespace A097475.P815874365006149993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A164989 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097475.P815874365006149993

/-! ## A097475.P17035500763842242319

`A262689(∩[A164989(n+1), n²])`
-/

namespace A097475.P17035500763842242319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A097475.P17035500763842242319

/-!
# A097476: 

The programs for A097476, there is no canonical definition to state claims against.
-/

/-! ## A097476.P344011756053608328

`∏[(2*n)!²]`
-/

namespace A097476.P344011756053608328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097476.P344011756053608328

/-! ## A097476.P11366541947423258128

`∏[(2*n)!^2]`
-/

namespace A097476.P11366541947423258128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097476.P11366541947423258128

/-! ## A097476.P5937190375086950343

`4^∑[log2((2*n)!)]`
-/

namespace A097476.P5937190375086950343
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097476.P5937190375086950343

/-! ## A097476.P4901498184684647945

`∏[record[∏[xor(1, -n)]]²]`
-/

namespace A097476.P4901498184684647945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097476.P4901498184684647945

/-! ## A097476.P6967088212004108311

`∏[floor(2/acot(n))!]²`
-/

namespace A097476.P6967088212004108311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A097476.P6967088212004108311

/-!
# A097478: Atomic numbers of halogens in the periodic table.

The programs for A097478, there is no canonical definition to state claims against.
-/

/-! ## A097478.P17813177960727642026

`a(n-1)` with `a(0)=9, a(1)=17, a(2)=35, a(3)=53, a(4)=85, a(5)=117`
-/

namespace A097478.P17813177960727642026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 17, 35, 53, 85, 117] fun n a =>
  a (n - 1)

end

end A097478.P17813177960727642026

/-!
# A097480: Positive integers n such that 2n-15 is prime.

The programs for A097480, the canonical program `A097480.P24898552055680441` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097480 has offset 1).

The definition of A097480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097480.P24898552055680441

`A097363(n+1)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A097480

/-- `A097363(n+1)+1` -/
def P24898552055680441.Spec : Prop :=
  ∀ n, P24898552055680441.a n = A097480 (n + 1)

theorem P24898552055680441.correct : P24898552055680441.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel]

end A097480

/-! ## A097480.P6315157007655958647

`A097338(n+1)+2`
-/

namespace A097480.P6315157007655958647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 2

end

end A097480.P6315157007655958647

namespace A097480

/-- `A097338(n+1)+2` -/
def P6315157007655958647.Spec : Prop :=
  ∀ n, P6315157007655958647.a n = A097480 (n + 1)

theorem P6315157007655958647.correct : P6315157007655958647.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P6315157007655958647.a, A097480.P24898552055680441.a, A097338, A097338.P887064449779485792.a, A097363, A097363.P9324045915537457052.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P6803515848622334993

`A098605(n+1)-1`
-/

namespace A097480.P6803515848622334993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 1

end

end A097480.P6803515848622334993

namespace A097480

/-- `A098605(n+1)-1` -/
def P6803515848622334993.Spec : Prop :=
  ∀ n, P6803515848622334993.a n = A097480 (n + 1)

theorem P6803515848622334993.correct : P6803515848622334993.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P6803515848622334993.a, A097480.P24898552055680441.a, A097363, A097363.P9324045915537457052.a, A098605, A098605.P7733621595314557542.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P18150516503887065371

`A097069(n+1)+3`
-/

namespace A097480.P18150516503887065371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 3

end

end A097480.P18150516503887065371

namespace A097480

/-- `A097069(n+1)+3` -/
def P18150516503887065371.Spec : Prop :=
  ∀ n, P18150516503887065371.a n = A097480 (n + 1)

theorem P18150516503887065371.correct : P18150516503887065371.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P18150516503887065371.a, A097480.P24898552055680441.a, A097069, A097069.P18192174897570610825.a, A097363, A097363.P9324045915537457052.a, A089192, A089192.P5097066678155882464.a, A097338, A097338.P887064449779485792.a, A006254, A006254.P17336495081768971287.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P12710710446561736372

`A097932(n+1)-2`
-/

namespace A097480.P12710710446561736372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 2

end

end A097480.P12710710446561736372

namespace A097480

/-- `A097932(n+1)-2` -/
def P12710710446561736372.Spec : Prop :=
  ∀ n, P12710710446561736372.a n = A097480 (n + 1)

theorem P12710710446561736372.correct : P12710710446561736372.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P12710710446561736372.a, A097480.P24898552055680441.a, A097363, A097363.P9324045915537457052.a, A097932, A097932.P11808137079334481808.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P13480982025291097996

`A089192(n+1)+4`
-/

namespace A097480.P13480982025291097996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 4

end

end A097480.P13480982025291097996

namespace A097480

/-- `A089192(n+1)+4` -/
def P13480982025291097996.Spec : Prop :=
  ∀ n, P13480982025291097996.a n = A097480 (n + 1)

theorem P13480982025291097996.correct : P13480982025291097996.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P13480982025291097996.a, A097480.P24898552055680441.a, A089192, A089192.P5097066678155882464.a, A097363, A097363.P9324045915537457052.a, A006254, A006254.P17336495081768971287.a, A097338, A097338.P887064449779485792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P827248821091187020

`A089253(n+1)+5`
-/

namespace A097480.P827248821091187020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 5

end

end A097480.P827248821091187020

namespace A097480

/-- `A089253(n+1)+5` -/
def P827248821091187020.Spec : Prop :=
  ∀ n, P827248821091187020.a n = A097480 (n + 1)

theorem P827248821091187020.correct : P827248821091187020.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P827248821091187020.a, A097480.P24898552055680441.a, A089253, A089253.P9623062397135395528.a, A097363, A097363.P9324045915537457052.a, A067076, A067076.P14247190955968615804.a, A097338, A097338.P887064449779485792.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P1586319367432553787

`A098090(n+1)+6`
-/

namespace A097480.P1586319367432553787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 6

end

end A097480.P1586319367432553787

namespace A097480

/-- `A098090(n+1)+6` -/
def P1586319367432553787.Spec : Prop :=
  ∀ n, P1586319367432553787.a n = A097480 (n + 1)

end A097480

/-! ## A097480.P9303121497594053961

`A006254(n+1)+7`
-/

namespace A097480.P9303121497594053961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 7

end

end A097480.P9303121497594053961

namespace A097480

/-- `A006254(n+1)+7` -/
def P9303121497594053961.Spec : Prop :=
  ∀ n, P9303121497594053961.a n = A097480 (n + 1)

theorem P9303121497594053961.correct : P9303121497594053961.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P9303121497594053961.a, A097480.P24898552055680441.a, A006254, A006254.P17336495081768971287.a, A097363, A097363.P9324045915537457052.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P15090235677595466088

`A005097(n+1)+8`
-/

namespace A097480.P15090235677595466088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 8

end

end A097480.P15090235677595466088

namespace A097480

/-- `A005097(n+1)+8` -/
def P15090235677595466088.Spec : Prop :=
  ∀ n, P15090235677595466088.a n = A097480 (n + 1)

end A097480

/-! ## A097480.P6311890363233809554

`A067076(n+1)+9`
-/

namespace A097480.P6311890363233809554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 9

end

end A097480.P6311890363233809554

namespace A097480

/-- `A067076(n+1)+9` -/
def P6311890363233809554.Spec : Prop :=
  ∀ n, P6311890363233809554.a n = A097480 (n + 1)

theorem P6311890363233809554.correct : P6311890363233809554.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P6311890363233809554.a, A097480.P24898552055680441.a, A067076, A067076.P14247190955968615804.a, A097363, A097363.P9324045915537457052.a, A006254, A006254.P17336495081768971287.a, A097338, A097338.P887064449779485792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P13747302222907078793

`A177018(n+1)+n+6`
-/

namespace A097480.P13747302222907078793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + (n + 6 : ℤ)

end

end A097480.P13747302222907078793

namespace A097480

/-- `A177018(n+1)+n+6` -/
def P13747302222907078793.Spec : Prop :=
  ∀ n, P13747302222907078793.a n = A097480 (n + 1)

end A097480

/-! ## A097480.P8606849947176135089

`A163057(n+1)+7-n`
-/

namespace A097480.P8606849947176135089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + (7 - (n : ℤ))

end

end A097480.P8606849947176135089

namespace A097480

/-- `A163057(n+1)+7-n` -/
def P8606849947176135089.Spec : Prop :=
  ∀ n, P8606849947176135089.a n = A097480 (n + 1)

end A097480

/-! ## A097480.P13096903601641288191

`A008507(n+1)+n+9`
-/

namespace A097480.P13096903601641288191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n + 9 : ℤ)

end

end A097480.P13096903601641288191

namespace A097480

/-- `A008507(n+1)+n+9` -/
def P13096903601641288191.Spec : Prop :=
  ∀ n, P13096903601641288191.a n = A097480 (n + 1)

theorem P13096903601641288191.correct : P13096903601641288191.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P13096903601641288191.a, A097480.P24898552055680441.a, A008507, A008507.P5510179153814837351.a, A097363, A097363.P9324045915537457052.a, A067076, A067076.P14247190955968615804.a, A097338, A097338.P887064449779485792.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P9374959145256124234

`A175540(n+1)+8-n`
-/

namespace A097480.P9374959145256124234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + (8 - (n : ℤ))

end

end A097480.P9374959145256124234

namespace A097480

/-- `A175540(n+1)+8-n` -/
def P9374959145256124234.Spec : Prop :=
  ∀ n, P9374959145256124234.a n = A097480 (n + 1)

theorem P9374959145256124234.correct : P9374959145256124234.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P9374959145256124234.a, A097480.P24898552055680441.a, A097363, A097363.P9324045915537457052.a, A175540, A175540.P17413733986559148913.a, A067076, A067076.P14247190955968615804.a, A097338, A097338.P887064449779485792.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P1460562287293089384

`A024675(n)+15-a(n-1)` with `a(0)=9`
-/

namespace A097480.P1460562287293089384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A024675 n + (15 - a (n - 1))

end

end A097480.P1460562287293089384

namespace A097480

/-- `A024675(n)+15-a(n-1)` -/
def P1460562287293089384.Spec : Prop :=
  ∀ n, P1460562287293089384.a n = A097480 (n + 1)

end A097480

/-! ## A097480.P2283014003915538922

`A020723(n)+A008507(n+1)`
-/

namespace A097480.P2283014003915538922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n + A008507 (n + 1)

end

end A097480.P2283014003915538922

namespace A097480

/-- `A020723(n)+A008507(n+1)` -/
def P2283014003915538922.Spec : Prop :=
  ∀ n, P2283014003915538922.a n = A097480 (n + 1)

theorem P2283014003915538922.correct : P2283014003915538922.Spec := by
  intro n
  simp only [A097480, Nat.add_sub_cancel, A097480.P2283014003915538922.a, A097480.P24898552055680441.a, A008507, A008507.P5510179153814837351.a, A020723, A020723.P8213579202739937003.a, A097363, A097363.P9324045915537457052.a, A067076, A067076.P14247190955968615804.a, A097338, A097338.P887064449779485792.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097480

/-! ## A097480.P1352105102902179534

`A124678(n+2)+5`
-/

namespace A097480.P1352105102902179534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 2) + 5

end

end A097480.P1352105102902179534

namespace A097480

/-- `A124678(n+2)+5` -/
def P1352105102902179534.Spec : Prop :=
  ∀ n, P1352105102902179534.a n = A097480 (n + 1)

end A097480

/-! ## A097480.P5263411656960081394

`A111333(n+2)+7`
-/

namespace A097480.P5263411656960081394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + 7

end

end A097480.P5263411656960081394

namespace A097480

/-- `A111333(n+2)+7` -/
def P5263411656960081394.Spec : Prop :=
  ∀ n, P5263411656960081394.a n = A097480 (n + 1)

end A097480

/-! ## A097480.P9778362646755031892

`A130291(n+2)+7`
-/

namespace A097480.P9778362646755031892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 2) + 7

end

end A097480.P9778362646755031892

namespace A097480

/-- `A130291(n+2)+7` -/
def P9778362646755031892.Spec : Prop :=
  ∀ n, P9778362646755031892.a n = A097480 (n + 1)

end A097480

/-!
# A097481: Write the positive even integers on labels in numerical order, forming an infinite sequence L. Consider the succession of digits of L: 2 4 6 8 1 0 1 2 1 4 1 6 1 8 2 0 2 2 2 4 2 6 2 8 3 0 ... (A036211). This sequence gives a derangement of L that produces the same succession of digits, subject to the constraint that the smallest unused label must be used that does not lead to a contradiction.

The programs for A097481, there is no canonical definition to state claims against.
-/

/-! ## A097481.P3818936726200861392

`2*A098067(n+1)`
-/

namespace A097481.P3818936726200861392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098067 (n + 1)

end

end A097481.P3818936726200861392

/-! ## A097481.P1512144596693287751

`6*A098067(Δ[n²]-n)/3`
-/

namespace A097481.P1512144596693287751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A098067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 3)

end

end A097481.P1512144596693287751

/-! ## A097481.P7461376737059849252

`A004277(A098067(n+1))`
-/

namespace A097481.P7461376737059849252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A098067 (n + 1)).toNat

end

end A097481.P7461376737059849252

/-! ## A097481.P17101389870557584865

`A004275(A098067(n+1)+1)`
-/

namespace A097481.P17101389870557584865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A098067 (n + 1) + 1).toNat

end

end A097481.P17101389870557584865

/-! ## A097481.P6702916939384223427

`A005843(or(char[1], A098067(n+1)))`
-/

namespace A097481.P6702916939384223427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A098067 (n + 1))).toNat

end

end A097481.P6702916939384223427

/-! ## A097481.P12575663914865987763

`A005843(A098067(n+1)+1)-2`
-/

namespace A097481.P12575663914865987763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A098067 (n + 1) + 1).toNat - 2

end

end A097481.P12575663914865987763

/-! ## A097481.P13575921895366215455

`A098067(n+1)+A098067(Δ[n²]-n)`
-/

namespace A097481.P13575921895366215455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098067 (n + 1) + A098067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A097481.P13575921895366215455

/-! ## A097481.P13583177723957722889

`A005843(A098067(n+1)%A017042(n))`
-/

namespace A097481.P13583177723957722889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A098067 (n + 1)) (A017042 n)).toNat

end

end A097481.P13583177723957722889

/-! ## A097481.P2006519124565844183

`lcm(A000034(n), A005843(A098067(n+1)))`
-/

namespace A097481.P2006519124565844183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A005843 (A098067 (n + 1)).toNat)

end

end A097481.P2006519124565844183

/-! ## A097481.P4262569029590464389

`A005843(A098067(n+1))/A007318(C(2, n))`
-/

namespace A097481.P4262569029590464389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A098067 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A097481.P4262569029590464389

/-!
# A097482: a(1) = 1, a(2) = 1, a(n) = floor(sqrt(a(n-2)*a(n-1))) + 3 for n > 2.

The programs for A097482, the canonical program `A097482.P11967739360422376816` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097482 has offset 1).

The definition of A097482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(a(n-2)*a(n-1)))+3` (program `A097482.P11967739360422376816`, by `A097482.P11967739360422376816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097482.P11967739360422376816

`floor(sqrt(a(n-2)*a(n-1)))+3` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097482

/-- `floor(sqrt(a(n-2)*a(n-1)))+3` -/
def P11967739360422376816.Spec : Prop :=
  ∀ n, (P11967739360422376816.a n : ℤ) = A097482 (n + 1)

theorem P11967739360422376816.correct : P11967739360422376816.Spec := by
  intro n
  simp only [A097482, Nat.add_sub_cancel]

end A097482

/-! ## A097482.P9812500903475550379

`comp[3*n]-char[1]`
-/

namespace A097482.P9812500903475550379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A097482.P9812500903475550379

namespace A097482

/-- `comp[3*n]-char[1]` -/
def P9812500903475550379.Spec : Prop :=
  ∀ n, P9812500903475550379.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P17734239359307166841

`abs(char[1]-comp[lcm(3, n)])`
-/

namespace A097482.P17734239359307166841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)|

end

end A097482.P17734239359307166841

namespace A097482

/-- `abs(char[1]-comp[lcm(3, n)])` -/
def P17734239359307166841.Spec : Prop :=
  ∀ n, P17734239359307166841.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P5330839249040274689

`comp[3*n]^floor(atan(n))`
-/

namespace A097482.P5330839249040274689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A097482.P5330839249040274689

namespace A097482

/-- `comp[3*n]^floor(atan(n))` -/
def P5330839249040274689.Spec : Prop :=
  ∀ n, P5330839249040274689.a n = (A097482 (n + 1) : ℚ)

end A097482

/-! ## A097482.P10884964146983205890

`C(comp[3*n], floor(atan(n)))`
-/

namespace A097482.P10884964146983205890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ⌊Real.arctan (n : ℝ)⌋.toNat

end

end A097482.P10884964146983205890

namespace A097482

/-- `C(comp[3*n], floor(atan(n)))` -/
def P10884964146983205890.Spec : Prop :=
  ∀ n, (P10884964146983205890.a n : ℤ) = A097482 (n + 1)

end A097482

/-! ## A097482.P1953158833357853094

`gcd(round(acot(n)), comp[3*n])`
-/

namespace A097482.P1953158833357853094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ))) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A097482.P1953158833357853094

namespace A097482

/-- `gcd(round(acot(n)), comp[3*n])` -/
def P1953158833357853094.Spec : Prop :=
  ∀ n, (P1953158833357853094.a n : ℤ) = A097482 (n + 1)

end A097482

/-! ## A097482.P16788868612119847671

`C(comp[3*n], char[1]+1)`
-/

namespace A097482.P16788868612119847671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ((if ∃ j, f2 j = n then 1 else 0) + 1)

end

end A097482.P16788868612119847671

namespace A097482

/-- `C(comp[3*n], char[1]+1)` -/
def P16788868612119847671.Spec : Prop :=
  ∀ n, (P16788868612119847671.a n : ℤ) = A097482 (n + 1)

end A097482

/-! ## A097482.P2739768520396206625

`∑[a(n%2)+1]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A097482.P2739768520396206625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097482.P2739768520396206625

namespace A097482

/-- `∑[a(n%2)+1]` -/
def P2739768520396206625.Spec : Prop :=
  ∀ n, (P2739768520396206625.a n : ℤ) = A097482 (n + 1)

end A097482

/-! ## A097482.P8671958958876362630

`∑[3-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1`
-/

namespace A097482.P8671958958876362630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097482.P8671958958876362630

namespace A097482

/-- `∑[3-a(n-1)]` -/
def P8671958958876362630.Spec : Prop :=
  ∀ n, P8671958958876362630.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P10137873140420547269

`ogf((1+2x^2+x^3-x^4)/(1-x-x^2+x^3))`
-/

namespace A097482.P10137873140420547269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 1, -1] [1, -1, -1, 1] n

end

end A097482.P10137873140420547269

namespace A097482

/-- `ogf((1+2x^2+x^3-x^4)/(1-x-x^2+x^3))` -/
def P10137873140420547269.Spec : Prop :=
  ∀ n, P10137873140420547269.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P8663878472294037435

`ceil(a(n-2)/3+n+1)` with `a(0)=1, a(1)=1`
-/

namespace A097482.P8663878472294037435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) / 3 + (n + 1 : ℚ)⌉

end

end A097482.P8663878472294037435

namespace A097482

/-- `ceil(a(n-2)/3+n+1)` -/
def P8663878472294037435.Spec : Prop :=
  ∀ n, P8663878472294037435.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P11240934513349836121

`round(sqrt(A266956(n+1)))`
-/

namespace A097482.P11240934513349836121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A266956 (n + 1) : ℝ))

end

end A097482.P11240934513349836121

namespace A097482

/-- `round(sqrt(A266956(n+1)))` -/
def P11240934513349836121.Spec : Prop :=
  ∀ n, P11240934513349836121.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P14278777926424745913

`A001651(n+1)/A373565(n)`
-/

namespace A097482.P14278777926424745913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A097482.P14278777926424745913

namespace A097482

/-- `A001651(n+1)/A373565(n)` -/
def P14278777926424745913.Spec : Prop :=
  ∀ n, P14278777926424745913.a n = (A097482 (n + 1) : ℚ)

end A097482

/-! ## A097482.P16924537731359599709

`gcd(A001651(n+1), A169585(n))`
-/

namespace A097482.P16924537731359599709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001651 (n + 1)) (A169585 n)

end

end A097482.P16924537731359599709

namespace A097482

/-- `gcd(A001651(n+1), A169585(n))` -/
def P16924537731359599709.Spec : Prop :=
  ∀ n, (P16924537731359599709.a n : ℤ) = A097482 (n + 1)

end A097482

/-! ## A097482.P12114169643429451356

`A145064(A267528(n))`
-/

namespace A097482.P12114169643429451356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A267528 n).toNat

end

end A097482.P12114169643429451356

namespace A097482

/-- `A145064(A267528(n))` -/
def P12114169643429451356.Spec : Prop :=
  ∀ n, P12114169643429451356.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P10605512460255765176

`A147534(A299417(n))`
-/

namespace A097482.P10605512460255765176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A299417 n).toNat

end

end A097482.P10605512460255765176

namespace A097482

/-- `A147534(A299417(n))` -/
def P10605512460255765176.Spec : Prop :=
  ∀ n, P10605512460255765176.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P17821665988159224658

`A171526(A001651(n+1))`
-/

namespace A097482.P17821665988159224658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A001651 (n + 1)).toNat

end

end A097482.P17821665988159224658

namespace A097482

/-- `A171526(A001651(n+1))` -/
def P17821665988159224658.Spec : Prop :=
  ∀ n, P17821665988159224658.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P833401489848109239

`A171526(A133223(n+1))`
-/

namespace A097482.P833401489848109239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A133223 (n + 1)).toNat

end

end A097482.P833401489848109239

namespace A097482

/-- `A171526(A133223(n+1))` -/
def P833401489848109239.Spec : Prop :=
  ∀ n, P833401489848109239.a n = A097482 (n + 1)

end A097482

/-! ## A097482.P8746743705240717463

`gcd(A130706(n), A133223(n+1))`
-/

namespace A097482.P8746743705240717463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A133223 (n + 1))

end

end A097482.P8746743705240717463

namespace A097482

/-- `gcd(A130706(n), A133223(n+1))` -/
def P8746743705240717463.Spec : Prop :=
  ∀ n, (P8746743705240717463.a n : ℤ) = A097482 (n + 1)

end A097482

/-! ## A097482.P4307220645315508969

`A030065(A223134(n))`
-/

namespace A097482.P4307220645315508969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A223134 n).toNat

end

end A097482.P4307220645315508969

namespace A097482

/-- `A030065(A223134(n))` -/
def P4307220645315508969.Spec : Prop :=
  ∀ n, P4307220645315508969.a n = A097482 (n + 1)

end A097482

/-!
# A097483: Number of Gorenstein Schubert varieties in the (type A) flag variety Flags(C^n).

The programs for A097483, there is no canonical definition to state claims against.
-/

/-! ## A097483.P9268879920623287870

`(n+1)!-A022564(2*n+1)`
-/

namespace A097483.P9268879920623287870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A022564 (2 * n + 1)

end

end A097483.P9268879920623287870

/-! ## A097483.P10135362149089749458

`∑[A002265(2*a(n-1)*2*n-xor(-2, 3^n))]` with `a(0)=1`
-/

namespace A097483.P10135362149089749458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002265 (2 * f1 (n - 1) * (2 * n : ℤ) - Int.xor (-2) (3 ^ n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097483.P10135362149089749458

/-!
# A097484: Write the odd positive integers on labels in numerical order, forming an infinite sequence L. Consider the succession of single digits of L: 1 3 5 7 9 1 1 1 3 1 5 1 7 1 9 2 1 2 3 2 5 2 7 2 9 3 1 ... (A031312). This sequence is a derangement of L that produces the same succession of digits, subject to the constraint that the smallest unused label must be used that does not lead to a contradiction.

The programs for A097484, there is no canonical definition to state claims against.
-/

/-! ## A097484.P9876309489650079279

`A113139(A046682(2*n)+A026424(n+1))`
-/

namespace A097484.P9876309489650079279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113139 (A046682 (2 * n) + A026424 (n + 1)).toNat

end

end A097484.P9876309489650079279

/-! ## A097484.P5524348813356520119

`A098067(A098067(2*n+1))%A231610(A184048(n+1))`
-/

namespace A097484.P5524348813356520119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098067 (A098067 (2 * n + 1)).toNat) (A231610 (A184048 (n + 1)).toNat)

end

end A097484.P5524348813356520119

/-!
# A097486: A relationship between Pi and the Mandelbrot set. a(n) = number of iterations of z^2 + c that c-values -0.75 + x*i go through before escaping, where x = 10^(-n). Lim_{n->inf} a(n) * x = Pi.

The programs for A097486, there is no canonical definition to state claims against.
-/

/-! ## A097486.P2646523340497222097

`A065833(A005115(n+4))+A011545(n)`
-/

namespace A097486.P2646523340497222097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065833 (A005115 (n + 4)).toNat + A011545 n

end

end A097486.P2646523340497222097

/-! ## A097486.P1775661632658500512

`A057979(A271290(n))+round(π*10^n)`
-/

namespace A097486.P1775661632658500512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A271290 n).toNat + SequenceMachineLib.roundAway (Real.pi * (10 ^ n : ℝ))

end

end A097486.P1775661632658500512

/-!
# A097488: Write the positive multiples of 3 on labels in numerical order, forming an infinite sequence L. Now consider the succession of single digits of L: 3 6 9 1 2 1 5 1 8 2 1 2 4 2 7 3 0 3 3 3 6 3 9 4 2 .... This sequence is a derangement of L that produces the same succession of digits, subject to the constraint that the smallest unused label must be used that does not lead to a contradiction.

The programs for A097488, there is no canonical definition to state claims against.
-/

/-! ## A097488.P9433540308913253173

`3/2*A097481(A077342(n+1))`
-/

namespace A097488.P9433540308913253173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A097481 (A077342 (n + 1)).toNat : ℚ)

end

end A097488.P9433540308913253173

/-! ## A097488.P12741631920938306257

`A098067(n+1)*A158799(A000230(n))`
-/

namespace A097488.P12741631920938306257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098067 (n + 1) * A158799 (A000230 n).toNat

end

end A097488.P12741631920938306257

/-! ## A097488.P18154516004672748992

`A098067(n+1)+A097481(A077342(n+1))`
-/

namespace A097488.P18154516004672748992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098067 (n + 1) + A097481 (A077342 (n + 1)).toNat

end

end A097488.P18154516004672748992

/-! ## A097488.P9622804755521404800

`A088837(A032454(n+1))*A098067(n+1)`
-/

namespace A097488.P9622804755521404800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088837 (A032454 (n + 1)).toNat * A098067 (n + 1)

end

end A097488.P9622804755521404800

/-! ## A097488.P6535212695530592081

`A088837(A147335(n+1))*A098067(n+1)`
-/

namespace A097488.P6535212695530592081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088837 (A147335 (n + 1)).toNat * A098067 (n + 1)

end

end A097488.P6535212695530592081

/-!
# A097489: a(n) = product of first n terms of A001359.

The programs for A097489, there is no canonical definition to state claims against.
-/

/-! ## A097489.P13181423942045774644

`∏[p?[p?[2*n+1]-2]]`
-/

namespace A097489.P13181423942045774644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097489.P13181423942045774644

/-! ## A097489.P7538284946155773196

`∏[A001359(n+1)]`
-/

namespace A097489.P7538284946155773196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097489.P7538284946155773196

/-! ## A097489.P6984637904357191775

`∏[A124588(n+2)]`
-/

namespace A097489.P6984637904357191775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097489.P6984637904357191775

/-! ## A097489.P17348369610823860813

`∏[A181747(n+2)]`
-/

namespace A097489.P17348369610823860813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097489.P17348369610823860813

/-!
# A097492: a(n) = product of first n terms of A006512.

The programs for A097492, there is no canonical definition to state claims against.
-/

/-! ## A097492.P9425097535661881695

`∏[p?[p?[2*n+1]+2]]`
-/

namespace A097492.P9425097535661881695
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097492.P9425097535661881695

/-! ## A097492.P15511166719439647074

`∏[A006512(n+1)]`
-/

namespace A097492.P15511166719439647074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097492.P15511166719439647074

/-! ## A097492.P6303751903620883128

`∏[A067829(n+2)]`
-/

namespace A097492.P6303751903620883128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097492.P6303751903620883128

/-! ## A097492.P13326552638569475334

`∏[A094743(n+2)]`
-/

namespace A097492.P13326552638569475334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097492.P13326552638569475334

/-! ## A097492.P13010109963609903290

`∏[A175075(n+2)]`
-/

namespace A097492.P13010109963609903290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175075 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097492.P13010109963609903290

/-!
# A097493: Primes which are two greater than A097492 terms.

The programs for A097493, there is no canonical definition to state claims against.
-/

/-! ## A097493.P10093139981186291001

`A097492(A339630(n))+2`
-/

namespace A097493.P10093139981186291001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097492 (A339630 n).toNat + 2

end

end A097493.P10093139981186291001

/-!
# A097494: a(n) = floor( prime(n+1)*prime(n+2)/prime(n) ).

The programs for A097494, the canonical program `A097494.P5097683518575263080` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097494 has offset 1).

The definition of A097494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097494.P5097683518575263080

`floor(A046301(n+1)/A001248(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A097494

/-- `floor(A046301(n+1)/A001248(n+1))` -/
def P5097683518575263080.Spec : Prop :=
  ∀ n, P5097683518575263080.a n = A097494 (n + 1)

theorem P5097683518575263080.correct : P5097683518575263080.Spec := by
  intro n
  simp only [A097494, Nat.add_sub_cancel]

end A097494

/-! ## A097494.P15742695245331532493

`floor(A046301(n+1)/A000040(n+1)²)`
-/

namespace A097494.P15742695245331532493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046301 (n + 1) : ℚ) / (A000040 (n + 1) ^ 2 : ℚ)⌋

end

end A097494.P15742695245331532493

namespace A097494

/-- `floor(A046301(n+1)/A000040(n+1)²)` -/
def P15742695245331532493.Spec : Prop :=
  ∀ n, P15742695245331532493.a n = A097494 (n + 1)

theorem P15742695245331532493.correct : P15742695245331532493.Spec := by
  intro n
  simp only [A097494, Nat.add_sub_cancel, A097494.P15742695245331532493.a, A097494.P5097683518575263080.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A046301, A046301.P8827187728700103366.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097494

/-! ## A097494.P10703570922725759544

`floor(A006094(n+2)/Δ[A007504(n)])`
-/

namespace A097494.P10703570922725759544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A097494.P10703570922725759544

namespace A097494

/-- `floor(A006094(n+2)/Δ[A007504(n)])` -/
def P10703570922725759544.Spec : Prop :=
  ∀ n, P10703570922725759544.a n = A097494 (n + 1)

end A097494

/-! ## A097494.P10709827271839164016

`floor(A006094(n+2)/A000040(n+1))`
-/

namespace A097494.P10709827271839164016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A097494.P10709827271839164016

namespace A097494

/-- `floor(A006094(n+2)/A000040(n+1))` -/
def P10709827271839164016.Spec : Prop :=
  ∀ n, P10709827271839164016.a n = A097494 (n + 1)

theorem P10709827271839164016.correct : P10709827271839164016.Spec := by
  intro n
  simp only [A097494, Nat.add_sub_cancel, A097494.P10709827271839164016.a, A097494.P5097683518575263080.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A046301, A046301.P8827187728700103366.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097494

/-! ## A097494.P3140465052016171580

`floor(ratio[A000040(n+1)]*A045344(n+2))`
-/

namespace A097494.P3140465052016171580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A045344 (n + 2) : ℚ)⌋

end

end A097494.P3140465052016171580

namespace A097494

/-- `floor(ratio[A000040(n+1)]*A045344(n+2))` -/
def P3140465052016171580.Spec : Prop :=
  ∀ n, P3140465052016171580.a n = A097494 (n + 1)

end A097494

/-! ## A097494.P16966769122949880380

`(A006094(n+2)-A022461(n+1))/A000040(n+1)`
-/

namespace A097494.P16966769122949880380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 2) - A022461 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A097494.P16966769122949880380

namespace A097494

/-- `(A006094(n+2)-A022461(n+1))/A000040(n+1)` -/
def P16966769122949880380.Spec : Prop :=
  ∀ n, P16966769122949880380.a n = (A097494 (n + 1) : ℚ)

end A097494

/-! ## A097494.P5673446816904420011

`floor(A006094(n+2)/record[A006530(n+2)])`
-/

namespace A097494.P5673446816904420011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A097494.P5673446816904420011

namespace A097494

/-- `floor(A006094(n+2)/record[A006530(n+2)])` -/
def P5673446816904420011.Spec : Prop :=
  ∀ n, P5673446816904420011.a n = A097494 (n + 1)

end A097494

/-! ## A097494.P13238655764540150133

`floor(A006094(n+2)/record[A020639(n+2)])`
-/

namespace A097494.P13238655764540150133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A097494.P13238655764540150133

namespace A097494

/-- `floor(A006094(n+2)/record[A020639(n+2)])` -/
def P13238655764540150133.Spec : Prop :=
  ∀ n, P13238655764540150133.a n = A097494 (n + 1)

end A097494

/-! ## A097494.P4180797762013262898

`floor(A006094(n+2)/record[A014963(n+2)])`
-/

namespace A097494.P4180797762013262898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A097494.P4180797762013262898

namespace A097494

/-- `floor(A006094(n+2)/record[A014963(n+2)])` -/
def P4180797762013262898.Spec : Prop :=
  ∀ n, P4180797762013262898.a n = A097494 (n + 1)

end A097494

/-! ## A097494.P5823818636524481733

`floor(A006094(n+2)/p?[A001057(n)])`
-/

namespace A097494.P5823818636524481733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A097494.P5823818636524481733

namespace A097494

/-- `floor(A006094(n+2)/p?[A001057(n)])` -/
def P5823818636524481733.Spec : Prop :=
  ∀ n, P5823818636524481733.a n = A097494 (n + 1)

end A097494

/-! ## A097494.P6847266387863138604

`floor(A006094(n+2)/p?[A006370(n)])`
-/

namespace A097494.P6847266387863138604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A097494.P6847266387863138604

namespace A097494

/-- `floor(A006094(n+2)/p?[A006370(n)])` -/
def P6847266387863138604.Spec : Prop :=
  ∀ n, P6847266387863138604.a n = A097494 (n + 1)

end A097494

/-!
# A097495: Subsequence of terms of even index in the Somos-5 sequence.

The programs for A097495, the canonical program `A097495.P11680218432790075241` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097495 has offset 0).

The definition of A097495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097495.P11680218432790075241

`(a(n-1)*a(n-3)+8*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097495

/-- `(a(n-1)*a(n-3)+8*a(n-2)²)/a(n-4)` -/
def P11680218432790075241.Spec : Prop :=
  ∀ n, P11680218432790075241.a n = (A097495 n : ℚ)

end A097495

/-! ## A097495.P3301983615051480194

`A006721(2*n)`
-/

namespace A097495.P3301983615051480194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 (2 * n)

end

end A097495.P3301983615051480194

namespace A097495

/-- `A006721(2*n)` -/
def P3301983615051480194.Spec : Prop :=
  ∀ n, P3301983615051480194.a n = A097495 n

end A097495

/-! ## A097495.P3414986966779579434

`or(1, A006721(A005843(n)))`
-/

namespace A097495.P3414986966779579434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006721 (A005843 n).toNat)

end

end A097495.P3414986966779579434

namespace A097495

/-- `or(1, A006721(A005843(n)))` -/
def P3414986966779579434.Spec : Prop :=
  ∀ n, P3414986966779579434.a n = A097495 n

end A097495

/-! ## A097495.P14953113230838346391

`A025439(n)+A006721(A005843(n))`
-/

namespace A097495.P14953113230838346391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A006721 (A005843 n).toNat

end

end A097495.P14953113230838346391

namespace A097495

/-- `A025439(n)+A006721(A005843(n))` -/
def P14953113230838346391.Spec : Prop :=
  ∀ n, P14953113230838346391.a n = A097495 n

end A097495

/-! ## A097495.P16122185714478920717

`lcm(A006721(A005843(n)), A087960(n))`
-/

namespace A097495.P16122185714478920717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006721 (A005843 n).toNat) (A087960 n)

end

end A097495.P16122185714478920717

namespace A097495

/-- `lcm(A006721(A005843(n)), A087960(n))` -/
def P16122185714478920717.Spec : Prop :=
  ∀ n, (P16122185714478920717.a n : ℤ) = A097495 n

end A097495

/-!
# A097496: Subsequence of terms of odd index of the Somos-5 sequence.

The programs for A097496, the canonical program `A097496.P11961689309540743234` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097496 has offset 0).

The definition of A097496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097496.P11961689309540743234

`(a(n-1)*a(n-3)+8*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097496

/-- `(a(n-1)*a(n-3)+8*a(n-2)²)/a(n-4)` -/
def P11961689309540743234.Spec : Prop :=
  ∀ n, P11961689309540743234.a n = (A097496 n : ℚ)

end A097496

/-! ## A097496.P13978064558128038347

`A006721(Δ[n²])`
-/

namespace A097496.P13978064558128038347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A097496.P13978064558128038347

namespace A097496

/-- `A006721(Δ[n²])` -/
def P13978064558128038347.Spec : Prop :=
  ∀ n, P13978064558128038347.a n = A097496 n

end A097496

/-! ## A097496.P13994740192733146967

`A025439(n)+A006721(2*n+1)`
-/

namespace A097496.P13994740192733146967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A006721 (2 * n + 1)

end

end A097496.P13994740192733146967

namespace A097496

/-- `A025439(n)+A006721(2*n+1)` -/
def P13994740192733146967.Spec : Prop :=
  ∀ n, P13994740192733146967.a n = A097496 n

end A097496

/-! ## A097496.P18342245387708175996

`A326680(n)+A006721(2*n+1)`
-/

namespace A097496.P18342245387708175996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 n + A006721 (2 * n + 1)

end

end A097496.P18342245387708175996

namespace A097496

/-- `A326680(n)+A006721(2*n+1)` -/
def P18342245387708175996.Spec : Prop :=
  ∀ n, P18342245387708175996.a n = A097496 n

end A097496

/-! ## A097496.P3067498329039884320

`A006721(2*n+1)*A141605(n+1)`
-/

namespace A097496.P3067498329039884320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 (2 * n + 1) * A141605 (n + 1)

end

end A097496.P3067498329039884320

namespace A097496

/-- `A006721(2*n+1)*A141605(n+1)` -/
def P3067498329039884320.Spec : Prop :=
  ∀ n, P3067498329039884320.a n = A097496 n

end A097496

/-!
# A097497: Floor( prime(n)*(prime(n)+prime(n+1))/prime(n+1)).

The programs for A097497, there is no canonical definition to state claims against.
-/

/-! ## A097497.P7062675720280525260

`floor(A001043(n+1)/ratio[A000040(n+1)])`
-/

namespace A097497.P7062675720280525260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001043 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A097497.P7062675720280525260

/-! ## A097497.P18138246270187240567

`floor(A001043(n+1)/ratio[A001748(n+1)])`
-/

namespace A097497.P18138246270187240567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001043 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A097497.P18138246270187240567

/-! ## A097497.P11466130351630774612

`floor(A001043(n+1)/ratio[A100484(n+1)])`
-/

namespace A097497.P11466130351630774612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001043 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A097497.P11466130351630774612

/-! ## A097497.P17636486629930838512

`A001043(n+1)-(A113397(n+1)+1)`
-/

namespace A097497.P17636486629930838512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - (A113397 (n + 1) + 1)

end

end A097497.P17636486629930838512

/-! ## A097497.P16836709940836288713

`A100484(n+1)-A065033(A113397(n+1))`
-/

namespace A097497.P16836709940836288713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A065033 (A113397 (n + 1)).toNat

end

end A097497.P16836709940836288713

/-! ## A097497.P16613869768901122949

`A233583(A001043(n+1)-A113397(n+1))`
-/

namespace A097497.P16613869768901122949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A001043 (n + 1) - A113397 (n + 1)).toNat

end

end A097497.P16613869768901122949

/-! ## A097497.P14640129990756603278

`2*A000040(n+1)-A065033(A113397(n+1))`
-/

namespace A097497.P14640129990756603278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A065033 (A113397 (n + 1)).toNat

end

end A097497.P14640129990756603278

/-! ## A097497.P14098221495117760348

`record[2*A014963(n+2)]-A065033(A113397(n+1))`
-/

namespace A097497.P14098221495117760348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065033 (A113397 (n + 1)).toNat

end

end A097497.P14098221495117760348

/-! ## A097497.P13782241324732728335

`A006093(n+1)+A065091(n+1)-A113397(n+1)`
-/

namespace A097497.P13782241324732728335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A065091 (n + 1) - A113397 (n + 1))

end

end A097497.P13782241324732728335

/-!
# A097498: Numbers k divisible by their abundance sigma(k) - 2*k.

The programs for A097498, there is no canonical definition to state claims against.
-/

/-! ## A097498.P4021493659394927894

`∪[A153501(n+1), A271816(n+1)]`
-/

namespace A097498.P4021493659394927894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097498.P4021493659394927894

/-! ## A097498.P9168565811032905525

`eq[n+1, lcm(n+1, A033879(n+1))]+1`
-/

namespace A097498.P9168565811032905525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A033879 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A097498.P9168565811032905525

/-! ## A097498.P10902810643163252507

`A106247(eq[A009194(n+1)², A033880(n+1)²])`
-/

namespace A097498.P10902810643163252507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A097498.P10902810643163252507

/-! ## A097498.P12418395502656678577

`record[and(A022852(2*n+1), A202084(2*(n+1)))]`
-/

namespace A097498.P12418395502656678577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022852 (2 * n + 1)) (A202084 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097498.P12418395502656678577

/-! ## A097498.P4610187089192817609

`eq[A051794(n+1), A090329(n+1)]`
-/

namespace A097498.P4610187089192817609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097498.P4610187089192817609

/-!
# A097499: Numbers of the form p^q + q^p where p and q are consecutive primes.

The programs for A097499, the canonical program `A097499.P17050933069722058923` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097499 has offset 1).

The definition of A097499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097499.P17050933069722058923

`A053089(n+1)+A078422(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097499

/-- `A053089(n+1)+A078422(n+1)` -/
def P17050933069722058923.Spec : Prop :=
  ∀ n, P17050933069722058923.a n = A097499 (n + 1)

theorem P17050933069722058923.correct : P17050933069722058923.Spec := by
  intro n
  simp only [A097499, Nat.add_sub_cancel]

end A097499

/-! ## A097499.P11650673724474957588

`A053089(n+1)+p?[2*n+1]^record[A006530(n+2)]`
-/

namespace A097499.P11650673724474957588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053089 (n + 1) : ℚ) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A097499.P11650673724474957588

namespace A097499

/-- `A053089(n+1)+p?[2*n+1]^record[A006530(n+2)]` -/
def P11650673724474957588.Spec : Prop :=
  ∀ n, P11650673724474957588.a n = (A097499 (n + 1) : ℚ)

end A097499

/-! ## A097499.P1283977537628796892

`A053089(n+1)+p?[2*n+1]^record[A014963(n+2)]`
-/

namespace A097499.P1283977537628796892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053089 (n + 1) : ℚ) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A097499.P1283977537628796892

namespace A097499

/-- `A053089(n+1)+p?[2*n+1]^record[A014963(n+2)]` -/
def P1283977537628796892.Spec : Prop :=
  ∀ n, P1283977537628796892.a n = (A097499 (n + 1) : ℚ)

end A097499

/-! ## A097499.P10000365104226087287

`A053089(n+1)+A000040(n+2)^A000040(n+1)`
-/

namespace A097499.P10000365104226087287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053089 (n + 1) : ℚ) + (A000040 (n + 2) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A097499.P10000365104226087287

namespace A097499

/-- `A053089(n+1)+A000040(n+2)^A000040(n+1)` -/
def P10000365104226087287.Spec : Prop :=
  ∀ n, P10000365104226087287.a n = (A097499 (n + 1) : ℚ)

end A097499

