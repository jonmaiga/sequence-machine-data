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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A070901: a(1)=1, a(n) is the smallest integer > a(n-1) such that the largest element in the simple continued fraction for S(n)=1/a(1)+1/a(2)+...+1/a(n) equals prime(n).

The programs for A070901, there is no canonical definition to state claims against.
-/

/-! ## A070901.P8245407445266598701

`A352493(A107794(n+2))`
-/

namespace A070901.P8245407445266598701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A107794 (n + 2)).toNat

end

end A070901.P8245407445266598701

/-!
# A070906: Every third Bell number A000110.

The programs for A070906, there is no canonical definition to state claims against.
-/

/-! ## A070906.P12855646683165869497

`A000110(3*n)`
-/

namespace A070906.P12855646683165869497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (3 * n)

end

end A070906.P12855646683165869497

/-! ## A070906.P10144337863872858809

`A188164(6*n)`
-/

namespace A070906.P10144337863872858809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (6 * n)

end

end A070906.P10144337863872858809

/-! ## A070906.P18268674951861911047

`A134715(Δ[n²])`
-/

namespace A070906.P18268674951861911047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134715 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070906.P18268674951861911047

/-! ## A070906.P17404649023300797763

`A216079(Δ[n²])`
-/

namespace A070906.P17404649023300797763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216079 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070906.P17404649023300797763

/-! ## A070906.P3233524168407156933

`abs(A292935(3*n))`
-/

namespace A070906.P3233524168407156933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (3 * n)|

end

end A070906.P3233524168407156933

/-!
# A070907: Every fourth Bell number A000110.

The programs for A070907, there is no canonical definition to state claims against.
-/

/-! ## A070907.P16844392700569364778

`A000110(4*n)`
-/

namespace A070907.P16844392700569364778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (4 * n)

end

end A070907.P16844392700569364778

/-! ## A070907.P10017321702076459338

`A020557(2*n)`
-/

namespace A070907.P10017321702076459338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020557 (2 * n)

end

end A070907.P10017321702076459338

/-! ## A070907.P17329030561929675343

`A292935(4*n)`
-/

namespace A070907.P17329030561929675343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 (4 * n)

end

end A070907.P17329030561929675343

/-! ## A070907.P15215438623222362352

`A188164(8*n)`
-/

namespace A070907.P15215438623222362352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (8 * n)

end

end A070907.P15215438623222362352

/-! ## A070907.P7116718454695980364

`A011972(A014635(n))`
-/

namespace A070907.P7116718454695980364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A014635 n).toNat

end

end A070907.P7116718454695980364

/-!
# A070908: Every fifth Bell number A000110.

The programs for A070908, there is no canonical definition to state claims against.
-/

/-! ## A070908.P10974071959283317707

`A000110(5*n)`
-/

namespace A070908.P10974071959283317707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (5 * n)

end

end A070908.P10974071959283317707

/-! ## A070908.P13679033766511162664

`A188164(10*n)`
-/

namespace A070908.P13679033766511162664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (10 * n)

end

end A070908.P13679033766511162664

/-! ## A070908.P9435071432984405983

`A095149(C(5*n+1, 2))`
-/

namespace A070908.P9435071432984405983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (Nat.choose (5 * n + 1) 2)

end

end A070908.P9435071432984405983

/-! ## A070908.P534872260526335266

`sqrt(A001247(5*n))`
-/

namespace A070908.P534872260526335266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001247 (5 * n) : ℝ)

end

end A070908.P534872260526335266

/-! ## A070908.P16287510372323938439

`sqrt(A124419(10*n))`
-/

namespace A070908.P16287510372323938439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A124419 (10 * n) : ℝ)

end

end A070908.P16287510372323938439

/-!
# A070909: Triangle read by rows giving successive states of cellular automaton generated by "Rule 28" and by "Rule 156".

The programs for A070909, the canonical program `A070909.P18225673285116895919` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070909 has offset 0).

The definition of A070909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070909.P713790989935210765

`A072286(n)%2`
-/

namespace A070909.P713790989935210765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072286 n) 2

end

end A070909.P713790989935210765

namespace A070909

/-- `A072286(n)%2` -/
def P713790989935210765.Spec : Prop :=
  ∀ n, P713790989935210765.a n = A070909 n

end A070909

/-! ## A070909.P18225673285116895919

`A128227(n)%2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A070909

/-- `A128227(n)%2` -/
def P18225673285116895919.Spec : Prop :=
  ∀ n, P18225673285116895919.a n = A070909 n

theorem P18225673285116895919.correct : P18225673285116895919.Spec := by
  intro n
  simp only [A070909]

end A070909

/-! ## A070909.P2195369506655385815

`A209571(n+1)%2`
-/

namespace A070909.P2195369506655385815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209571 (n + 1)) 2

end

end A070909.P2195369506655385815

namespace A070909

/-- `A209571(n+1)%2` -/
def P2195369506655385815.Spec : Prop :=
  ∀ n, P2195369506655385815.a n = A070909 n

end A070909

/-! ## A070909.P6737980645660373483

`A103451(n*a(n-1))` with `a(0)=1`
-/

namespace A070909.P6737980645660373483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103451 ((n : ℤ) * a (n - 1)).toNat

end

end A070909.P6737980645660373483

namespace A070909

/-- `A103451(n*a(n-1))` -/
def P6737980645660373483.Spec : Prop :=
  ∀ n, P6737980645660373483.a n = A070909 n

end A070909

/-! ## A070909.P18412472834955606270

`A000035(A128227(n))`
-/

namespace A070909.P18412472834955606270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A128227 n).toNat

end

end A070909.P18412472834955606270

namespace A070909

/-- `A000035(A128227(n))` -/
def P18412472834955606270.Spec : Prop :=
  ∀ n, P18412472834955606270.a n = A070909 n

end A070909

/-! ## A070909.P293519566371874457

`A071024(n)*A106465(n)`
-/

namespace A070909.P293519566371874457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071024 n * A106465 n

end

end A070909.P293519566371874457

namespace A070909

/-- `A071024(n)*A106465(n)` -/
def P293519566371874457.Spec : Prop :=
  ∀ n, P293519566371874457.a n = A070909 n

end A070909

/-! ## A070909.P5641949300032330988

`and(A010686(n), A072286(n))`
-/

namespace A070909.P5641949300032330988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010686 n) (A072286 n)

end

end A070909.P5641949300032330988

namespace A070909

/-- `and(A010686(n), A072286(n))` -/
def P5641949300032330988.Spec : Prop :=
  ∀ n, P5641949300032330988.a n = A070909 n

end A070909

/-! ## A070909.P3661726548805438644

`and(A036065(n), A071024(n))`
-/

namespace A070909.P3661726548805438644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036065 n) (A071024 n)

end

end A070909.P3661726548805438644

namespace A070909

/-- `and(A036065(n), A071024(n))` -/
def P3661726548805438644.Spec : Prop :=
  ∀ n, P3661726548805438644.a n = A070909 n

end A070909

/-! ## A070909.P4582070286545683979

`A133083(n+1)-A023532(n)`
-/

namespace A070909.P4582070286545683979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133083 (n + 1) - A023532 n

end

end A070909.P4582070286545683979

namespace A070909

/-- `A133083(n+1)-A023532(n)` -/
def P4582070286545683979.Spec : Prop :=
  ∀ n, P4582070286545683979.a n = A070909 n

end A070909

/-! ## A070909.P4120468937744743263

`and(A003989(n+1), A071024(n))`
-/

namespace A070909.P4120468937744743263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003989 (n + 1)) (A071024 n)

end

end A070909.P4120468937744743263

namespace A070909

/-- `and(A003989(n+1), A071024(n))` -/
def P4120468937744743263.Spec : Prop :=
  ∀ n, P4120468937744743263.a n = A070909 n

end A070909

/-! ## A070909.P14148452414167749849

`A103631(A374441(n)/A194005(n+1))`
-/

namespace A070909.P14148452414167749849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.roundAway ((A374441 n : ℚ) / (A194005 (n + 1) : ℚ))).toNat

end

end A070909.P14148452414167749849

namespace A070909

/-- `A103631(A374441(n)/A194005(n+1))` -/
def P14148452414167749849.Spec : Prop :=
  ∀ n, P14148452414167749849.a n = A070909 n

end A070909

/-! ## A070909.P3447873568166993164

`2-A040001(A002262(n+1))`
-/

namespace A070909.P3447873568166993164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A040001 (A002262 (n + 1)).toNat

end

end A070909.P3447873568166993164

namespace A070909

/-- `2-A040001(A002262(n+1))` -/
def P3447873568166993164.Spec : Prop :=
  ∀ n, P3447873568166993164.a n = A070909 n

end A070909

/-! ## A070909.P5184459492849161406

`A040001(A134868(n+2))-1`
-/

namespace A070909.P5184459492849161406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A134868 (n + 2)).toNat - 1

end

end A070909.P5184459492849161406

namespace A070909

/-- `A040001(A134868(n+2))-1` -/
def P5184459492849161406.Spec : Prop :=
  ∀ n, P5184459492849161406.a n = A070909 n

end A070909

/-! ## A070909.P15307061179700424028

`A060510(n+1)+A010054(n+1)`
-/

namespace A070909.P15307061179700424028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 (n + 1) + A010054 (n + 1)

end

end A070909.P15307061179700424028

namespace A070909

/-- `A060510(n+1)+A010054(n+1)` -/
def P15307061179700424028.Spec : Prop :=
  ∀ n, P15307061179700424028.a n = A070909 n

end A070909

/-! ## A070909.P11043034558666895817

`A103631(A374441(n)/A065941(n+1))`
-/

namespace A070909.P11043034558666895817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.roundAway ((A374441 n : ℚ) / (A065941 (n + 1) : ℚ))).toNat

end

end A070909.P11043034558666895817

namespace A070909

/-- `A103631(A374441(n)/A065941(n+1))` -/
def P11043034558666895817.Spec : Prop :=
  ∀ n, P11043034558666895817.a n = A070909 n

end A070909

/-! ## A070909.P2432460026984239416

`A103633(A374441(n)/A065941(n+1))`
-/

namespace A070909.P2432460026984239416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (SequenceMachineLib.roundAway ((A374441 n : ℚ) / (A065941 (n + 1) : ℚ))).toNat

end

end A070909.P2432460026984239416

namespace A070909

/-- `A103633(A374441(n)/A065941(n+1))` -/
def P2432460026984239416.Spec : Prop :=
  ∀ n, P2432460026984239416.a n = A070909 n

end A070909

/-! ## A070909.P15702685574142104931

`A133607(A374441(n)/A065941(n+1))`
-/

namespace A070909.P15702685574142104931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133607 (SequenceMachineLib.roundAway ((A374441 n : ℚ) / (A065941 (n + 1) : ℚ))).toNat

end

end A070909.P15702685574142104931

namespace A070909

/-- `A133607(A374441(n)/A065941(n+1))` -/
def P15702685574142104931.Spec : Prop :=
  ∀ n, P15702685574142104931.a n = A070909 n

end A070909

/-! ## A070909.P7373387182548043115

`and(A071024(n), A135233(n+2))`
-/

namespace A070909.P7373387182548043115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071024 n) (A135233 (n + 2))

end

end A070909.P7373387182548043115

namespace A070909

/-- `and(A071024(n), A135233(n+2))` -/
def P7373387182548043115.Spec : Prop :=
  ∀ n, P7373387182548043115.a n = A070909 n

end A070909

/-! ## A070909.P3414830975574245649

`A071022(A061579(n))*A071024(n)`
-/

namespace A070909.P3414830975574245649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071022 (A061579 n).toNat * A071024 n

end

end A070909.P3414830975574245649

namespace A070909

/-- `A071022(A061579(n))*A071024(n)` -/
def P3414830975574245649.Spec : Prop :=
  ∀ n, P3414830975574245649.a n = A070909 n

end A070909

/-!
# A070910: Decimal expansion of BesselI(0,2).

The programs for A070910, there is no canonical definition to state claims against.
-/

/-! ## A070910.P15916975923504962440

`A130818(floor(acot(n)+n))`
-/

namespace A070910.P15916975923504962440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1)

end

end A070910.P15916975923504962440

/-! ## A070910.P9777319689874856085

`A130818(C(2, n+2)+n)`
-/

namespace A070910.P9777319689874856085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 (Nat.choose 2 (n + 2) + n + 1)

end

end A070910.P9777319689874856085

/-! ## A070910.P10697569226607913695

`A130818(root(n^ceil(atan(n)), 2))`
-/

namespace A070910.P10697569226607913695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((SequenceMachineLib.roundAway (((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) : ℝ) ^ (1 / (2 : ℝ)))).toNat + 1)

end

end A070910.P10697569226607913695

/-! ## A070910.P11380042991247693755

`A130818(round(1/acot(n/2))+n-∑[n%2])`
-/

namespace A070910.P11380042991247693755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ)) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat + 1)

end

end A070910.P11380042991247693755

/-! ## A070910.P4727262649506751703

`A130818(n-∑[and(1, n)]+round((1-n)/2)+n)`
-/

namespace A070910.P4727262649506751703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 (((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (SequenceMachineLib.roundAway ((1 - (n : ℤ) : ℚ) / 2) + (n : ℤ))).toNat + 1)

end

end A070910.P4727262649506751703

/-! ## A070910.P16420849781271622129

`A130818((or(1, n)-1)/2+round((1-n)/2)+n)`
-/

namespace A070910.P16420849781271622129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 + (SequenceMachineLib.roundAway ((1 - (n : ℤ) : ℚ) / 2) + (n : ℤ) : ℚ))).toNat + 1)

end

end A070910.P16420849781271622129

/-! ## A070910.P9752926161709833436

`A130818(round((n-sin(1))/2)+round((1-n)/2)+n)`
-/

namespace A070910.P9752926161709833436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((SequenceMachineLib.roundAway (((n : ℝ) - Real.sin (1 : ℝ)) / 2) + (SequenceMachineLib.roundAway ((1 - (n : ℤ) : ℚ) / 2) + (n : ℤ))).toNat + 1)

end

end A070910.P9752926161709833436

/-! ## A070910.P239939208681156799

`A130818(A028310(n))`
-/

namespace A070910.P239939208681156799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((A028310 n).toNat + 1)

end

end A070910.P239939208681156799

/-! ## A070910.P8330076321017206491

`A130818(sqrt(A253909(n)))`
-/

namespace A070910.P8330076321017206491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat + 1)

end

end A070910.P8330076321017206491

/-! ## A070910.P2512816732732967176

`A130818(A000007(n)+n)`
-/

namespace A070910.P2512816732732967176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A070910.P2512816732732967176

/-! ## A070910.P1894193161443155512

`A054977(n)*A130818(n)`
-/

namespace A070910.P1894193161443155512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A130818 (n + 1)

end

end A070910.P1894193161443155512

/-! ## A070910.P994922032781352498

`A130818(gcd(n, A008574(n)))`
-/

namespace A070910.P994922032781352498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 (Int.gcd (n : ℤ) (A008574 n) + 1)

end

end A070910.P994922032781352498

/-! ## A070910.P4520446767609228758

`A130818(or(n, A000007(n)))`
-/

namespace A070910.P4520446767609228758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A070910.P4520446767609228758

/-! ## A070910.P18100012299000243368

`A130818(xor(n, A000007(n)))`
-/

namespace A070910.P18100012299000243368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A070910.P18100012299000243368

/-! ## A070910.P14924323060696380244

`A130818(floor(sqrt(A002522(n))))`
-/

namespace A070910.P14924323060696380244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((Int.sqrt (A002522 n)).toNat + 1)

end

end A070910.P14924323060696380244

/-! ## A070910.P7464803162022208791

`A130818(ceil(sqrt(A002061(n))))`
-/

namespace A070910.P7464803162022208791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 (⌈Real.sqrt (A002061 n : ℝ)⌉.toNat + 1)

end

end A070910.P7464803162022208791

/-! ## A070910.P1122117095466247626

`A130818(round(sqrt(A002061(n))))`
-/

namespace A070910.P1122117095466247626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((SequenceMachineLib.roundAway (Real.sqrt (A002061 n : ℝ))).toNat + 1)

end

end A070910.P1122117095466247626

/-! ## A070910.P161257360054114553

`A130818(round(sqrt(A002522(n))))`
-/

namespace A070910.P161257360054114553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((SequenceMachineLib.roundAway (Real.sqrt (A002522 n : ℝ))).toNat + 1)

end

end A070910.P161257360054114553

/-! ## A070910.P6360865861239815569

`A130818(abs(n-A000007(n)))`
-/

namespace A070910.P6360865861239815569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 (|(n : ℤ) - A000007 n|.toNat + 1)

end

end A070910.P6360865861239815569

/-! ## A070910.P6888505269335232657

`A130818(A008486(n)-2*n)`
-/

namespace A070910.P6888505269335232657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130818 ((A008486 n - (2 * n : ℤ)).toNat + 1)

end

end A070910.P6888505269335232657

/-!
# A070911: a(n) is twice the least possible area enclosed by a convex lattice n-gon.

The programs for A070911, there is no canonical definition to state claims against.
-/

/-! ## A070911.P6284383782290421206

`2*A063984(n+3)+1+n`
-/

namespace A070911.P6284383782290421206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063984 (n + 3) + 1 + (n : ℤ)

end

end A070911.P6284383782290421206

/-! ## A070911.P2393606036746597023

`A005408(A063984(n+3))+n`
-/

namespace A070911.P2393606036746597023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A063984 (n + 3)).toNat + (n : ℤ)

end

end A070911.P2393606036746597023

/-! ## A070911.P14916564856646004176

`A004273(A063984(n+3)+1)+n`
-/

namespace A070911.P14916564856646004176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063984 (n + 3) + 1).toNat + (n : ℤ)

end

end A070911.P14916564856646004176

/-! ## A070911.P12477937896465420446

`A109613(2*A063984(n+3))+n`
-/

namespace A070911.P12477937896465420446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A063984 (n + 3)).toNat + (n : ℤ)

end

end A070911.P12477937896465420446

/-!
# A070912: Binary expansion of BesselI(0,2).

The programs for A070912, there is no canonical definition to state claims against.
-/

/-! ## A070912.P11809833804277293721

`A327177(A214926(n+1)+A001359(3*n+1))`
-/

namespace A070912.P11809833804277293721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (A214926 (n + 1) + A001359 (3 * n + 1)).toNat

end

end A070912.P11809833804277293721

/-! ## A070912.P10392806123105329365

`A197879(Δ[A007504(A004771(n))])`
-/

namespace A070912.P10392806123105329365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (f1 (n + 1) - f1 n).toNat

end

end A070912.P10392806123105329365

/-! ## A070912.P8738015984081080466

`A010060(A292156(n+1)+A239927(n+2))`
-/

namespace A070912.P8738015984081080466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A292156 (n + 1) + A239927 (n + 2)).toNat

end

end A070912.P8738015984081080466

/-! ## A070912.P10146904280290799914

`A365089(A270286(2*n+1)+A022340(n))`
-/

namespace A070912.P10146904280290799914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 (A270286 (2 * n + 1) + A022340 n).toNat

end

end A070912.P10146904280290799914

/-! ## A070912.P8005683551905060431

`A004641(A340051(n)+A312220(n))`
-/

namespace A070912.P8005683551905060431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (A340051 n + A312220 n).toNat

end

end A070912.P8005683551905060431

/-!
# A070914: Array read by antidiagonals giving number of paths up and left from (0,0) to (n,kn) where x/y <= k for all intermediate points.

The programs for A070914, there is no canonical definition to state claims against.
-/

/-! ## A070914.P12061642492013831646

`A355262(comp[∑[n-1]]*A123110(n))`
-/

namespace A070914.P12061642492013831646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355262 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A123110 n).toNat

end

end A070914.P12061642492013831646

/-! ## A070914.P14471328415117251625

`A355262(comp[∑[n-1]]%A219883(n+1))`
-/

namespace A070914.P14471328415117251625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355262 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A219883 (n + 1))).toNat

end

end A070914.P14471328415117251625

/-! ## A070914.P4202722580749863718

`A355262(comp[∑[n-1]])`
-/

namespace A070914.P4202722580749863718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A070914.P4202722580749863718

/-! ## A070914.P18244318748889455720

`filter[A355262(n+2), A168182(#)]`
-/

namespace A070914.P18244318748889455720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A070914.P18244318748889455720

/-! ## A070914.P3063597457278194351

`A144150(n)-A025469(A163661(n))`
-/

namespace A070914.P3063597457278194351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n - A025469 (A163661 n).toNat

end

end A070914.P3063597457278194351

/-!
# A070915: Numbers having at most two distinct prime factors.

The programs for A070915, the canonical program `A070915.P11112854238645212373` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070915 has offset 1).

The definition of A070915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070915.P14517499940914780125

`lt[A001221(n+1), 3]+1`
-/

namespace A070915.P14517499940914780125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070915.P14517499940914780125

namespace A070915

/-- `lt[A001221(n+1), 3]+1` -/
def P14517499940914780125.Spec : Prop :=
  ∀ n, (P14517499940914780125.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P11112854238645212373

`comp[A000977(n+1)-1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A070915

/-- `comp[A000977(n+1)-1]+1` -/
def P11112854238645212373.Spec : Prop :=
  ∀ n, (P11112854238645212373.a n : ℤ) = A070915 (n + 1)

theorem P11112854238645212373.correct : P11112854238645212373.Spec := by
  intro n
  simp only [A070915, Nat.add_sub_cancel]

end A070915

/-! ## A070915.P10418346163074036818

`eq[1, A052125(A052125(n+1))]+1`
-/

namespace A070915.P10418346163074036818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A052125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070915.P10418346163074036818

namespace A070915

/-- `eq[1, A052125(A052125(n+1))]+1` -/
def P10418346163074036818.Spec : Prop :=
  ∀ n, (P10418346163074036818.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P8075761177848451910

`eq[1, A229825(A259936(n+1))]+1`
-/

namespace A070915.P8075761177848451910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229825 (A259936 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070915.P8075761177848451910

namespace A070915

/-- `eq[1, A229825(A259936(n+1))]+1` -/
def P8075761177848451910.Spec : Prop :=
  ∀ n, (P8075761177848451910.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P11913268803846354536

`lt[A001222(A007947(n+1)), 3]+1`
-/

namespace A070915.P11913268803846354536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070915.P11913268803846354536

namespace A070915

/-- `lt[A001222(A007947(n+1)), 3]+1` -/
def P11913268803846354536.Spec : Prop :=
  ∀ n, (P11913268803846354536.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P5847360822349098408

`lt[A297155(n+1), 2]+1`
-/

namespace A070915.P5847360822349098408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070915.P5847360822349098408

namespace A070915

/-- `lt[A297155(n+1), 2]+1` -/
def P5847360822349098408.Spec : Prop :=
  ∀ n, (P5847360822349098408.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P17063630893078382533

`eq[1, A062513(n+1)]+1`
-/

namespace A070915.P17063630893078382533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070915.P17063630893078382533

namespace A070915

/-- `eq[1, A062513(n+1)]+1` -/
def P17063630893078382533.Spec : Prop :=
  ∀ n, (P17063630893078382533.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P13585145567179202889

`lt[A081400(n+1), 2]+1`
-/

namespace A070915.P13585145567179202889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070915.P13585145567179202889

namespace A070915

/-- `lt[A081400(n+1), 2]+1` -/
def P13585145567179202889.Spec : Prop :=
  ∀ n, (P13585145567179202889.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P15897248918112875310

`lt[A066882(n)², A092976(n)]`
-/

namespace A070915.P15897248918112875310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070915.P15897248918112875310

namespace A070915

/-- `lt[A066882(n)², A092976(n)]` -/
def P15897248918112875310.Spec : Prop :=
  ∀ n, (P15897248918112875310.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P8166292916186730277

`eq[1, A028234(A028234(n+1))]+1`
-/

namespace A070915.P8166292916186730277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A028234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070915.P8166292916186730277

namespace A070915

/-- `eq[1, A028234(A028234(n+1))]+1` -/
def P8166292916186730277.Spec : Prop :=
  ∀ n, (P8166292916186730277.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P8579636800402739745

`eq[1, A051119(A051119(n+1))]+1`
-/

namespace A070915.P8579636800402739745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A051119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070915.P8579636800402739745

namespace A070915

/-- `eq[1, A051119(A051119(n+1))]+1` -/
def P8579636800402739745.Spec : Prop :=
  ∀ n, (P8579636800402739745.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P401460166668140989

`eq[1, A232989(A309307(n+1))]+1`
-/

namespace A070915.P401460166668140989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232989 (A309307 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070915.P401460166668140989

namespace A070915

/-- `eq[1, A232989(A309307(n+1))]+1` -/
def P401460166668140989.Spec : Prop :=
  ∀ n, (P401460166668140989.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P17957545966362544287

`record[lcm(A028233(n+1), A053585(n+1))]`
-/

namespace A070915.P17957545966362544287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028233 (n + 1)) (A053585 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070915.P17957545966362544287

namespace A070915

/-- `record[lcm(A028233(n+1), A053585(n+1))]` -/
def P17957545966362544287.Spec : Prop :=
  ∀ n, (P17957545966362544287.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P3172421913022052140

`lt[∑{p}[n, n-#], 2*n]`
-/

namespace A070915.P3172421913022052140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A070915.P3172421913022052140

namespace A070915

/-- `lt[∑{p}[n, n-#], 2*n]` -/
def P3172421913022052140.Spec : Prop :=
  ∀ n, (P3172421913022052140.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P4307473206561825782

`lt[∑{e}[n, n-#], 2*n]`
-/

namespace A070915.P4307473206561825782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (Nat.factorization (f2 n) p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A070915.P4307473206561825782

namespace A070915

/-- `lt[∑{e}[n, n-#], 2*n]` -/
def P4307473206561825782.Spec : Prop :=
  ∀ n, (P4307473206561825782.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P12166545915015135331

`lt[∏{p}[n, n-#], (n+1)²]`
-/

namespace A070915.P12166545915015135331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A070915.P12166545915015135331

namespace A070915

/-- `lt[∏{p}[n, n-#], (n+1)²]` -/
def P12166545915015135331.Spec : Prop :=
  ∀ n, (P12166545915015135331.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P10971405267609569711

`lt[∏{e}[n, n-#], (n+1)²]`
-/

namespace A070915.P10971405267609569711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (Nat.factorization (f2 n) p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A070915.P10971405267609569711

namespace A070915

/-- `lt[∏{e}[n, n-#], (n+1)²]` -/
def P10971405267609569711.Spec : Prop :=
  ∀ n, (P10971405267609569711.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P15664440411445578635

`lt[A062319(n), ∑[A002618(n+1)]]`
-/

namespace A070915.P15664440411445578635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070915.P15664440411445578635

namespace A070915

/-- `lt[A062319(n), ∑[A002618(n+1)]]` -/
def P15664440411445578635.Spec : Prop :=
  ∀ n, (P15664440411445578635.a n : ℤ) = A070915 (n + 1)

end A070915

/-! ## A070915.P11207814582483876081

`lt[char[A000977(n+1)], A057427(n)]`
-/

namespace A070915.P11207814582483876081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A070915.P11207814582483876081

namespace A070915

/-- `lt[char[A000977(n+1)], A057427(n)]` -/
def P11207814582483876081.Spec : Prop :=
  ∀ n, (P11207814582483876081.a n : ℤ) = A070915 (n + 1)

end A070915

/-!
# A070916: a(1)=1, a(n) is the smallest integer >= a(n-1) such that a(n)*a(n-1) - 1 is prime.

The programs for A070916, there is no canonical definition to state claims against.
-/

/-! ## A070916.P10549832769796649083

`A107818(n)-A000007(n)`
-/

namespace A070916.P10549832769796649083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107818 n - A000007 n

end

end A070916.P10549832769796649083

/-! ## A070916.P11951818941655042483

`A107818(n)/A054977(n)`
-/

namespace A070916.P11951818941655042483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107818 n : ℚ) / (A054977 n : ℚ)

end

end A070916.P11951818941655042483

/-! ## A070916.P1043233716163861134

`A107818(n)/(A000007(n)/A108738(n+1)+1)`
-/

namespace A070916.P1043233716163861134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107818 n : ℚ) / ((A000007 n : ℚ) / (A108738 (n + 1) : ℚ) + 1)

end

end A070916.P1043233716163861134

/-! ## A070916.P10123919603686745384

`A272903(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A070916.P10123919603686745384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272903 (a (n - 1) + 1).toNat + a (n - 1)

end

end A070916.P10123919603686745384

/-! ## A070916.P18173729396850409611

`A181440(A107818(n))`
-/

namespace A070916.P18173729396850409611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A107818 n).toNat

end

end A070916.P18173729396850409611

/-!
# A070918: Triangle of T(n,k) coefficients of polynomials with first n prime numbers as roots.

The programs for A070918, there is no canonical definition to state claims against.
-/

/-! ## A070918.P2664675499846666847

`A062157(A025581(n)+1)*A260613(A061579(n))`
-/

namespace A070918.P2664675499846666847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A025581 n + 1).toNat * A260613 (A061579 n).toNat

end

end A070918.P2664675499846666847

/-! ## A070918.P5349637731955756850

`A062157(A055096(n+2))*A260613(A061579(n))`
-/

namespace A070918.P5349637731955756850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A055096 (n + 2)).toNat * A260613 (A061579 n).toNat

end

end A070918.P5349637731955756850

/-! ## A070918.P9383297303811957734

`A062157(A041352(n))*A260613(A061579(n))`
-/

namespace A070918.P9383297303811957734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A041352 n).toNat * A260613 (A061579 n).toNat

end

end A070918.P9383297303811957734

/-!
# A070919: a(n) = Card{ (x,y,z) | lcm(x,y,z)=n }.

The programs for A070919, the canonical program `A070919.P12544336825611404965` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070919 has offset 1).

The definition of A070919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070919.P16152784107158943221

`∑{d}[n+1, A247513(#)]`
-/

namespace A070919.P16152784107158943221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247513 d

end

end A070919.P16152784107158943221

namespace A070919

/-- `∑{d}[n+1, A247513(#)]` -/
def P16152784107158943221.Spec : Prop :=
  ∀ n, P16152784107158943221.a n = A070919 (n + 1)

end A070919

/-! ## A070919.P12544336825611404965

`∏{e}[n+1, A003215(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070919

/-- `∏{e}[n+1, A003215(#)]` -/
def P12544336825611404965.Spec : Prop :=
  ∀ n, P12544336825611404965.a n = A070919 (n + 1)

theorem P12544336825611404965.correct : P12544336825611404965.Spec := by
  intro n
  simp only [A070919, Nat.add_sub_cancel]

end A070919

/-! ## A070919.P15492909589506554557

`∏{e}[n+1, A016777(#²+#)]`
-/

namespace A070919.P15492909589506554557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016777 (Nat.factorization (f1 n) p ^ 2 + Nat.factorization (f1 n) p)

end

end A070919.P15492909589506554557

namespace A070919

/-- `∏{e}[n+1, A016777(#²+#)]` -/
def P15492909589506554557.Spec : Prop :=
  ∀ n, P15492909589506554557.a n = A070919 (n + 1)

theorem P15492909589506554557.correct : P15492909589506554557.Spec := by
  intro n
  simp only [A070919, Nat.add_sub_cancel, A070919.P15492909589506554557.f1, A070919.P15492909589506554557.a, A070919.P12544336825611404965.f1, A070919.P12544336825611404965.a, A003215, A003215.P5851317289441473820.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070919

/-! ## A070919.P12744088754106453569

`∏{e}[n+1, 3*A002378(#)+1]`
-/

namespace A070919.P12744088754106453569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (3 * A002378 (Nat.factorization (f1 n) p) + 1)

end

end A070919.P12744088754106453569

namespace A070919

/-- `∏{e}[n+1, 3*A002378(#)+1]` -/
def P12744088754106453569.Spec : Prop :=
  ∀ n, P12744088754106453569.a n = A070919 (n + 1)

theorem P12744088754106453569.correct : P12744088754106453569.Spec := by
  intro n
  simp only [A070919, Nat.add_sub_cancel, A070919.P12744088754106453569.f1, A070919.P12744088754106453569.a, A070919.P12544336825611404965.f1, A070919.P12544336825611404965.a, A002378, A002378.P6342434596694243671.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070919

/-! ## A070919.P11610253617425361519

`∏{e}[n+1, A014255(#+#)-#]`
-/

namespace A070919.P11610253617425361519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A014255 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p) - (Nat.factorization (f1 n) p : ℤ))

end

end A070919.P11610253617425361519

namespace A070919

/-- `∏{e}[n+1, A014255(#+#)-#]` -/
def P11610253617425361519.Spec : Prop :=
  ∀ n, P11610253617425361519.a n = A070919 (n + 1)

end A070919

/-! ## A070919.P2101689671544340971

`∑{d}[n+1, A007427(#)*A097988((n+1)/#)]`
-/

namespace A070919.P2101689671544340971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A097988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070919.P2101689671544340971

namespace A070919

/-- `∑{d}[n+1, A007427(#)*A097988((n+1)/#)]` -/
def P2101689671544340971.Spec : Prop :=
  ∀ n, P2101689671544340971.a n = A070919 (n + 1)

end A070919

/-! ## A070919.P1057372237402304520

`∑{d}[n+1, A008683(#)*A319089((n+1)/#)]`
-/

namespace A070919.P1057372237402304520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A319089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070919.P1057372237402304520

namespace A070919

/-- `∑{d}[n+1, A008683(#)*A319089((n+1)/#)]` -/
def P1057372237402304520.Spec : Prop :=
  ∀ n, P1057372237402304520.a n = A070919 (n + 1)

end A070919

/-! ## A070919.P7660706151274942151

`∑{d}[n+1, A046692(#)*A344082((n+1)/#)]`
-/

namespace A070919.P7660706151274942151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A344082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070919.P7660706151274942151

namespace A070919

/-- `∑{d}[n+1, A046692(#)*A344082((n+1)/#)]` -/
def P7660706151274942151.Spec : Prop :=
  ∀ n, P7660706151274942151.a n = A070919 (n + 1)

end A070919

/-! ## A070919.P17911913673251010716

`∑{d}[n+1, A055615(#)*A344132((n+1)/#)]`
-/

namespace A070919.P17911913673251010716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070919.P17911913673251010716

namespace A070919

/-- `∑{d}[n+1, A055615(#)*A344132((n+1)/#)]` -/
def P17911913673251010716.Spec : Prop :=
  ∀ n, P17911913673251010716.a n = A070919 (n + 1)

end A070919

/-! ## A070919.P7348455031158226586

`∑{d}[n+1, A226602(#²)]`
-/

namespace A070919.P7348455031158226586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A226602 (d ^ 2)

end

end A070919.P7348455031158226586

namespace A070919

/-- `∑{d}[n+1, A226602(#²)]` -/
def P7348455031158226586.Spec : Prop :=
  ∀ n, P7348455031158226586.a n = A070919 (n + 1)

end A070919

/-! ## A070919.P13136433521987844577

`∑{d}[(n+1)², A092520(#)]`
-/

namespace A070919.P13136433521987844577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 d

end

end A070919.P13136433521987844577

namespace A070919

/-- `∑{d}[(n+1)², A092520(#)]` -/
def P13136433521987844577.Spec : Prop :=
  ∀ n, P13136433521987844577.a n = A070919 (n + 1)

end A070919

/-!
# A070920: a(n) = Card{ (x,y,z,u) | lcm(x,y,z,u)=n }.

The programs for A070920, the canonical program `A070920.P1109967768938964097` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070920 has offset 1).

The definition of A070920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070920.P11744583450666624361

`∑{d}[n+1, A247516(#)]`
-/

namespace A070920.P11744583450666624361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247516 d

end

end A070920.P11744583450666624361

namespace A070920

/-- `∑{d}[n+1, A247516(#)]` -/
def P11744583450666624361.Spec : Prop :=
  ∀ n, P11744583450666624361.a n = A070920 (n + 1)

end A070920

/-! ## A070920.P1109967768938964097

`∏{e}[n+1, A005917(#+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070920

/-- `∏{e}[n+1, A005917(#+1)]` -/
def P1109967768938964097.Spec : Prop :=
  ∀ n, P1109967768938964097.a n = A070920 (n + 1)

theorem P1109967768938964097.correct : P1109967768938964097.Spec := by
  intro n
  simp only [A070920, Nat.add_sub_cancel]

end A070920

/-! ## A070920.P1331164248100899714

`∏{e}[n+1, A212975(#+#)]`
-/

namespace A070920.P1331164248100899714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A212975 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)

end

end A070920.P1331164248100899714

namespace A070920

/-- `∏{e}[n+1, A212975(#+#)]` -/
def P1331164248100899714.Spec : Prop :=
  ∀ n, P1331164248100899714.a n = A070920 (n + 1)

end A070920

/-! ## A070920.P13664045101800456954

`A048691(n+1)*A370297(n+1)`
-/

namespace A070920.P13664045101800456954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) * A370297 (n + 1)

end

end A070920.P13664045101800456954

namespace A070920

/-- `A048691(n+1)*A370297(n+1)` -/
def P13664045101800456954.Spec : Prop :=
  ∀ n, P13664045101800456954.a n = A070920 (n + 1)

end A070920

/-! ## A070920.P10528282874762190865

`∏{e}[n+1, A005915(#)+A000578(#)]`
-/

namespace A070920.P10528282874762190865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A005915 (Nat.factorization (f1 n) p) + A000578 (Nat.factorization (f1 n) p))

end

end A070920.P10528282874762190865

namespace A070920

/-- `∏{e}[n+1, A005915(#)+A000578(#)]` -/
def P10528282874762190865.Spec : Prop :=
  ∀ n, P10528282874762190865.a n = A070920 (n + 1)

theorem P10528282874762190865.correct : P10528282874762190865.Spec := by
  intro n
  simp only [A070920, Nat.add_sub_cancel, A070920.P10528282874762190865.f1, A070920.P10528282874762190865.a, A070920.P1109967768938964097.f1, A070920.P1109967768938964097.a, A000578, A000578.P12162961755414704816.a, A005915, A005915.P10778017196570457320.a, A005917, A005917.P593194106963301078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070920

/-! ## A070920.P12903186528615426064

`∑{d}[n+1, A055615(#)*A344138((n+1)/#)]`
-/

namespace A070920.P12903186528615426064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344138 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070920.P12903186528615426064

namespace A070920

/-- `∑{d}[n+1, A055615(#)*A344138((n+1)/#)]` -/
def P12903186528615426064.Spec : Prop :=
  ∀ n, P12903186528615426064.a n = A070920 (n + 1)

end A070920

/-!
# A070921: a(n) = Card{ (x,y,z,u,v) | lcm(x,y,z,u,v)=n }.

The programs for A070921, the canonical program `A070921.P11358675402838603622` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070921 has offset 1).

The definition of A070921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070921.P2803243144593842003

`∑{d}[n+1, A247517(#)]`
-/

namespace A070921.P2803243144593842003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247517 d

end

end A070921.P2803243144593842003

namespace A070921

/-- `∑{d}[n+1, A247517(#)]` -/
def P2803243144593842003.Spec : Prop :=
  ∀ n, P2803243144593842003.a n = A070921 (n + 1)

end A070921

/-! ## A070921.P11358675402838603622

`∏{e}[n+1, A022521(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070921

/-- `∏{e}[n+1, A022521(#)]` -/
def P11358675402838603622.Spec : Prop :=
  ∀ n, P11358675402838603622.a n = A070921 (n + 1)

theorem P11358675402838603622.correct : P11358675402838603622.Spec := by
  intro n
  simp only [A070921, Nat.add_sub_cancel]

end A070921

/-! ## A070921.P1007915267476656128

`∏{e}[n+1, 5*A002378(A002378(#))+1]`
-/

namespace A070921.P1007915267476656128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (5 * A002378 (A002378 (Nat.factorization (f1 n) p)).toNat + 1)

end

end A070921.P1007915267476656128

namespace A070921

/-- `∏{e}[n+1, 5*A002378(A002378(#))+1]` -/
def P1007915267476656128.Spec : Prop :=
  ∀ n, P1007915267476656128.a n = A070921 (n + 1)

end A070921

/-! ## A070921.P13998058502916447413

`∑{d}[n+1, A055615(#)*A344139((n+1)/#)]`
-/

namespace A070921.P13998058502916447413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070921.P13998058502916447413

namespace A070921

/-- `∑{d}[n+1, A055615(#)*A344139((n+1)/#)]` -/
def P13998058502916447413.Spec : Prop :=
  ∀ n, P13998058502916447413.a n = A070921 (n + 1)

end A070921

/-!
# A070922: First palindromic prime pyramids with a(1)=2 such that (number of digits in a(n+1)) = (number of digits in a(n)) + 2.

The programs for A070922, there is no canonical definition to state claims against.
-/

/-! ## A070922.P9089818089128378559

`A071119(A004259(n+1)+A000463(n+1))`
-/

namespace A070922.P9089818089128378559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071119 (A004259 (n + 1) + A000463 (n + 1)).toNat

end

end A070922.P9089818089128378559

/-!
# A070923: a(n) is the smallest value >= 0 of the form x^3 - n^2.

The programs for A070923, the canonical program `A070923.P1938961669613010010` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070923 has offset 0).

The definition of A070923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070923.P1938961669613010010

`ceil(n^(2/3))^3-n²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070923

/-- `ceil(n^(2/3))^3-n²` -/
def P1938961669613010010.Spec : Prop :=
  ∀ n, P1938961669613010010.a n = A070923 n

theorem P1938961669613010010.correct : P1938961669613010010.Spec := by
  intro n
  simp only [A070923]

end A070923

/-! ## A070923.P16542308178374430632

`(1-A010057(n))*A181138(n)`
-/

namespace A070923.P16542308178374430632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010057 n) * A181138 n

end

end A070923.P16542308178374430632

namespace A070923

/-- `(1-A010057(n))*A181138(n)` -/
def P16542308178374430632.Spec : Prop :=
  ∀ n, P16542308178374430632.a n = A070923 n

end A070923

/-! ## A070923.P4819616611823061790

`char[A007412(n+1)]*A181138(n)`
-/

namespace A070923.P4819616611823061790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A181138 n

end

end A070923.P4819616611823061790

namespace A070923

/-- `char[A007412(n+1)]*A181138(n)` -/
def P4819616611823061790.Spec : Prop :=
  ∀ n, P4819616611823061790.a n = A070923 n

end A070923

/-! ## A070923.P12477800984024532879

`A057427(A074989(n))*A181138(n)`
-/

namespace A070923.P12477800984024532879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A074989 n).toNat * A181138 n

end

end A070923.P12477800984024532879

namespace A070923

/-- `A057427(A074989(n))*A181138(n)` -/
def P12477800984024532879.Spec : Prop :=
  ∀ n, P12477800984024532879.a n = A070923 n

end A070923

/-! ## A070923.P18197727955481110679

`A181138(n)%A181138(A048763(n))`
-/

namespace A070923.P18197727955481110679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181138 n) (A181138 (A048763 n).toNat)

end

end A070923.P18197727955481110679

namespace A070923

/-- `A181138(n)%A181138(A048763(n))` -/
def P18197727955481110679.Spec : Prop :=
  ∀ n, P18197727955481110679.a n = A070923 n

end A070923

/-!
# A070924: Where A070871 sets a new record.

The programs for A070924, there is no canonical definition to state claims against.
-/

/-! ## A070924.P5856746530152676750

`A006068(lt[A006068(2*n+1), A325390(n+1)])`
-/

namespace A070924.P5856746530152676750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A070924.P5856746530152676750

/-! ## A070924.P9579799902984544349

`A357866(A212288(n+2))`
-/

namespace A070924.P9579799902984544349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357866 (A212288 (n + 2)).toNat

end

end A070924.P9579799902984544349

/-! ## A070924.P5671456029910270696

`eq[A000225(A276605(n)), A278657(n)]`
-/

namespace A070924.P5671456029910270696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A276605 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070924.P5671456029910270696

/-! ## A070924.P10942949508292733351

`A105588(A052905(n)-A364191(n+1))`
-/

namespace A070924.P10942949508292733351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105588 (A052905 n - A364191 (n + 1)).toNat

end

end A070924.P10942949508292733351

/-! ## A070924.P13634919511733724836

`eq[A276605(A215847(n+1)), A276605(n)]`
-/

namespace A070924.P13634919511733724836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 (A215847 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070924.P13634919511733724836

/-!
# A070925: Number of subsets of A = {1,2,...,n} that have the same center of gravity as A, i.e., (n+1)/2.

The programs for A070925, there is no canonical definition to state claims against.
-/

/-! ## A070925.P3986519524608149229

`A222955(n+1)-1`
-/

namespace A070925.P3986519524608149229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (n + 1) - 1

end

end A070925.P3986519524608149229

/-! ## A070925.P9243571142125298405

`2*A362046(n)+1`
-/

namespace A070925.P9243571142125298405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A362046 n + 1

end

end A070925.P9243571142125298405

/-! ## A070925.P2094259396179972086

`sqrt(A222956(n+1))-1`
-/

namespace A070925.P2094259396179972086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A222956 (n + 1) : ℝ) - 1

end

end A070925.P2094259396179972086

/-! ## A070925.P11792778941029745082

`A245134(∑[n+1])-1`
-/

namespace A070925.P11792778941029745082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A070925.P11792778941029745082

/-! ## A070925.P13672785889785987555

`2*A133406(n+1)-1`
-/

namespace A070925.P13672785889785987555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133406 (n + 1) - 1

end

end A070925.P13672785889785987555

/-!
# A070926: Records in the Conway's alimentary function A070871.

The programs for A070926, there is no canonical definition to state claims against.
-/

/-! ## A070926.P3707280749747864379

`record[A070871(n+1)]`
-/

namespace A070926.P3707280749747864379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070926.P3707280749747864379

/-! ## A070926.P11118537536727917953

`A070871(A070924(n+1))`
-/

namespace A070926.P11118537536727917953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (A070924 (n + 1)).toNat

end

end A070926.P11118537536727917953

/-! ## A070926.P7658309834899602743

`A071883(2*A070924(n+1))`
-/

namespace A070926.P7658309834899602743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071883 (2 * A070924 (n + 1)).toNat

end

end A070926.P7658309834899602743

/-! ## A070926.P4569746519323370835

`record[A070990(n)*A288003(n+1)]`
-/

namespace A070926.P4569746519323370835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 n * A288003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070926.P4569746519323370835

/-! ## A070926.P8417267321907581740

`A071883(A070924(n+1)+A070924(n+1))`
-/

namespace A070926.P8417267321907581740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071883 (A070924 (n + 1) + A070924 (n + 1)).toNat

end

end A070926.P8417267321907581740

/-! ## A070926.P4839309660291529806

`record[A272569(A145341(n+2))]`
-/

namespace A070926.P4839309660291529806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A145341 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070926.P4839309660291529806

/-! ## A070926.P5757990541021560039

`record[A287146(n+1)*A287146(n)]`
-/

namespace A070926.P5757990541021560039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (n + 1) * A287146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070926.P5757990541021560039

/-!
# A070928: Smallest integer >= 0 of the form x^4 - n^3.

The programs for A070928, the canonical program `A070928.P16978113661078083826` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070928 has offset 1).

The definition of A070928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070928.P16978113661078083826

`ceil((n+1)^(3/4))^4-(n+1)^3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070928

/-- `ceil((n+1)^(3/4))^4-(n+1)^3` -/
def P16978113661078083826.Spec : Prop :=
  ∀ n, P16978113661078083826.a n = A070928 (n + 1)

theorem P16978113661078083826.correct : P16978113661078083826.Spec := by
  intro n
  simp only [A070928, Nat.add_sub_cancel]

end A070928

/-!
# A070929: Smallest integer >= 0 of the form x^2 - n^3.

The programs for A070929, the canonical program `A070929.P7741398955012650462` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070929 has offset 0).

The definition of A070929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070929.P7741398955012650462

`ceil(n^(3/2))²-n^3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070929

/-- `ceil(n^(3/2))²-n^3` -/
def P7741398955012650462.Spec : Prop :=
  ∀ n, P7741398955012650462.a n = A070929 n

theorem P7741398955012650462.correct : P7741398955012650462.Spec := by
  intro n
  simp only [A070929]

end A070929

/-! ## A070929.P13689594521692733036

`ceil(sqrt(n^3))²%(lcm(2, n^(3%(n+3)))/2)`
-/

namespace A070929.P13689594521692733036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.sqrt (n ^ 3 : ℝ)⌉ ^ 2) (SequenceMachineLib.roundAway ((Nat.lcm 2 (n ^ (3 % (n + 3))) : ℚ) / 2))

end

end A070929.P13689594521692733036

namespace A070929

/-- `ceil(sqrt(n^3))²%(lcm(2, n^(3%(n+3)))/2)` -/
def P13689594521692733036.Spec : Prop :=
  ∀ n, P13689594521692733036.a n = A070929 n

end A070929

/-! ## A070929.P13812777540004723332

`A077115(n)%A129204(n)`
-/

namespace A070929.P13812777540004723332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077115 n) (A129204 n)

end

end A070929.P13812777540004723332

namespace A070929

/-- `A077115(n)%A129204(n)` -/
def P13812777540004723332.Spec : Prop :=
  ∀ n, P13812777540004723332.a n = A070929 n

end A070929

/-! ## A070929.P15281961578491246723

`A176581(n)%A129204(n)`
-/

namespace A070929.P15281961578491246723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176581 n) (A129204 n)

end

end A070929.P15281961578491246723

namespace A070929

/-- `A176581(n)%A129204(n)` -/
def P15281961578491246723.Spec : Prop :=
  ∀ n, P15281961578491246723.a n = A070929 n

end A070929

/-! ## A070929.P15071077161804776898

`A185549(n)²%A129204(n)`
-/

namespace A070929.P15071077161804776898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185549 n ^ 2) (A129204 n)

end

end A070929.P15071077161804776898

namespace A070929

/-- `A185549(n)²%A129204(n)` -/
def P15071077161804776898.Spec : Prop :=
  ∀ n, P15071077161804776898.a n = A070929 n

end A070929

/-! ## A070929.P10972190821303438244

`abs(A000578(n)-A185549(n)²)`
-/

namespace A070929.P10972190821303438244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A185549 n ^ 2|

end

end A070929.P10972190821303438244

namespace A070929

/-- `abs(A000578(n)-A185549(n)²)` -/
def P10972190821303438244.Spec : Prop :=
  ∀ n, P10972190821303438244.a n = A070929 n

end A070929

/-! ## A070929.P17617130395598569378

`A075847(ceil(sqrt(n^3)))`
-/

namespace A070929.P17617130395598569378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075847 ⌈Real.sqrt (n ^ 3 : ℝ)⌉.toNat

end

end A070929.P17617130395598569378

namespace A070929

/-- `A075847(ceil(sqrt(n^3)))` -/
def P17617130395598569378.Spec : Prop :=
  ∀ n, P17617130395598569378.a n = A070929 n

end A070929

/-! ## A070929.P6042843769547812750

`A084535(n)²%A004277(n²)`
-/

namespace A070929.P6042843769547812750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084535 n ^ 2) (A004277 (n ^ 2))

end

end A070929.P6042843769547812750

namespace A070929

/-- `A084535(n)²%A004277(n²)` -/
def P6042843769547812750.Spec : Prop :=
  ∀ n, P6042843769547812750.a n = A070929 n

end A070929

/-!
# A070930: Smallest integer >= 0 of the form x^3 - n^4.

The programs for A070930, the canonical program `A070930.P7832416490548204207` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070930 has offset 1).

The definition of A070930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070930.P7832416490548204207

`ceil((n+1)^(4/3))^3-(n+1)^4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070930

/-- `ceil((n+1)^(4/3))^3-(n+1)^4` -/
def P7832416490548204207.Spec : Prop :=
  ∀ n, P7832416490548204207.a n = A070930 (n + 1)

theorem P7832416490548204207.correct : P7832416490548204207.Spec := by
  intro n
  simp only [A070930, Nat.add_sub_cancel]

end A070930

/-! ## A070930.P12126478185496357273

`A070923((n+1)²)`
-/

namespace A070930.P12126478185496357273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 ((n + 1) ^ 2)

end

end A070930.P12126478185496357273

namespace A070930

/-- `A070923((n+1)²)` -/
def P12126478185496357273.Spec : Prop :=
  ∀ n, P12126478185496357273.a n = A070930 (n + 1)

end A070930

/-! ## A070930.P967872178404450480

`or(char[1], A070923(∑[2*n+1]))`
-/

namespace A070930.P967872178404450480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A070923 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A070930.P967872178404450480

namespace A070930

/-- `or(char[1], A070923(∑[2*n+1]))` -/
def P967872178404450480.Spec : Prop :=
  ∀ n, P967872178404450480.a n = A070930 (n + 1)

end A070930

/-! ## A070930.P13869069494812782491

`A070923(A000290(n+1))/ceil(acot(n))`
-/

namespace A070930.P13869069494812782491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070923 (A000290 (n + 1)).toNat : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A070930.P13869069494812782491

namespace A070930

/-- `A070923(A000290(n+1))/ceil(acot(n))` -/
def P13869069494812782491.Spec : Prop :=
  ∀ n, P13869069494812782491.a n = (A070930 (n + 1) : ℚ)

end A070930

/-! ## A070930.P7007893426390848292

`A007318(∑[n])*A070923(∑[2*n+1])`
-/

namespace A070930.P7007893426390848292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A070923 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A070930.P7007893426390848292

namespace A070930

/-- `A007318(∑[n])*A070923(∑[2*n+1])` -/
def P7007893426390848292.Spec : Prop :=
  ∀ n, P7007893426390848292.a n = A070930 (n + 1)

end A070930

/-! ## A070930.P10758039807372615539

`A070923(∑[2*n+1])%A000045(n+11)`
-/

namespace A070930.P10758039807372615539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070923 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000045 (n + 11))

end

end A070930.P10758039807372615539

namespace A070930

/-- `A070923(∑[2*n+1])%A000045(n+11)` -/
def P10758039807372615539.Spec : Prop :=
  ∀ n, P10758039807372615539.a n = A070930 (n + 1)

end A070930

/-!
# A070932: Possible number of units in a finite (commutative or non-commutative) ring.

The programs for A070932, there is no canonical definition to state claims against.
-/

/-! ## A070932.P11249263715667378686

`record[A296241(n+1)%A137905(n+1)]`
-/

namespace A070932.P11249263715667378686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296241 (n + 1)) (A137905 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070932.P11249263715667378686

/-! ## A070932.P12430024627416641585

`A296241(A348553(n))%A296217(n)`
-/

namespace A070932.P12430024627416641585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296241 (A348553 n).toNat) (A296217 n)

end

end A070932.P12430024627416641585

/-! ## A070932.P3188191433340185162

`A326547(A103297(n))+A296241(n+1)`
-/

namespace A070932.P3188191433340185162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 (A103297 n).toNat + A296241 (n + 1)

end

end A070932.P3188191433340185162

/-! ## A070932.P4052184625172076946

`A326547(A103297(n))+comp[A295584(n+1)]`
-/

namespace A070932.P4052184625172076946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295584 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 (A103297 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A070932.P4052184625172076946

/-!
# A070933: Expansion of Product_{k>=1} 1/(1 - 2*t^k).

The programs for A070933, there is no canonical definition to state claims against.
-/

/-! ## A070933.P10286340801987196932

`A036453(n+1)*A323583(n)`
-/

namespace A070933.P10286340801987196932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A323583 n

end

end A070933.P10286340801987196932

/-! ## A070933.P13879053694653012650

`ceil(2*A262444(n)/3)`
-/

namespace A070933.P13879053694653012650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A262444 n : ℚ) / 3)⌉

end

end A070933.P13879053694653012650

/-! ## A070933.P7904752883869238282

`A262444(n)/3*A071187(A062876(n+1))`
-/

namespace A070933.P7904752883869238282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262444 n : ℚ) / 3 * (A071187 (A062876 (n + 1)).toNat : ℚ)

end

end A070933.P7904752883869238282

/-! ## A070933.P1722704369885975395

`(A000007(n)*A071647(n+1)+2)*A262444(n)/3`
-/

namespace A070933.P1722704369885975395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n * A071647 (n + 1) + 2 : ℚ) * ((A262444 n : ℚ) / 3)

end

end A070933.P1722704369885975395

/-! ## A070933.P12532056557672071199

`A262444(n)/3*A071187(n²+4)`
-/

namespace A070933.P12532056557672071199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262444 n : ℚ) / 3 * (A071187 (n ^ 2 + 4) : ℚ)

end

end A070933.P12532056557672071199

/-! ## A070933.P12312997900092267714

`A300581(n)/2^n`
-/

namespace A070933.P12312997900092267714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300581 n : ℚ) / (2 ^ n : ℚ)

end

end A070933.P12312997900092267714

/-! ## A070933.P4221509653282389234

`A246935(∑[n+3])`
-/

namespace A070933.P4221509653282389234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070933.P4221509653282389234

/-! ## A070933.P14754638156928245182

`A209664(A089071(n+1))`
-/

namespace A070933.P14754638156928245182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209664 (A089071 (n + 1)).toNat

end

end A070933.P14754638156928245182

/-!
# A070934: Smallest prime equal to the sum of 2n+1 consecutive primes.

The programs for A070934, there is no canonical definition to state claims against.
-/

/-! ## A070934.P13973507616833656189

`A082244(n)-A000007(n)`
-/

namespace A070934.P13973507616833656189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082244 n - A000007 n

end

end A070934.P13973507616833656189

/-! ## A070934.P16233340200729248092

`A082244(n)-(A057428(n)+1)`
-/

namespace A070934.P16233340200729248092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082244 n - (A057428 n + 1)

end

end A070934.P16233340200729248092

/-! ## A070934.P9302606831039959245

`A070281(Δ[n²])`
-/

namespace A070934.P9302606831039959245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070934.P9302606831039959245

/-! ## A070934.P7439792405292444771

`A070281(2*n+1)+A070277(A001747(2*n+5))`
-/

namespace A070934.P7439792405292444771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (2 * n + 1) + A070277 (A001747 (2 * n + 5)).toNat

end

end A070934.P7439792405292444771

/-! ## A070934.P5537259803436596057

`p?[A070281(2*n+1)]`
-/

namespace A070934.P5537259803436596057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070934.P5537259803436596057

/-! ## A070934.P1153252869233734775

`filter[A070281(2*n+1), A008966(#)]`
-/

namespace A070934.P1153252869233734775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A070934.P1153252869233734775

/-! ## A070934.P10140511158927471527

`filter[A070281(2*n+1), A010051(#)]`
-/

namespace A070934.P10140511158927471527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070934.P10140511158927471527

/-! ## A070934.P4317734790796846105

`filter[A070281(2*n+1), A014578(#)]`
-/

namespace A070934.P4317734790796846105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A070934.P4317734790796846105

/-! ## A070934.P16461561209651363596

`filter[A070281(2*n+1), A066829(#)]`
-/

namespace A070934.P16461561209651363596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A070934.P16461561209651363596

/-! ## A070934.P592941765130827920

`filter[A070281(2*n+1), A069513(#)]`
-/

namespace A070934.P592941765130827920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A070934.P592941765130827920

/-!
# A070935: Largest proper divisor of n^2.

The programs for A070935, there is no canonical definition to state claims against.
-/

/-! ## A070935.P12764692534402907282

`(n+2)²/A020639(n+2)`
-/

namespace A070935.P12764692534402907282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A020639 (n + 2) : ℚ)

end

end A070935.P12764692534402907282

/-! ## A070935.P2056218393040970172

`(n+2)*A032742(n+2)`
-/

namespace A070935.P2056218393040970172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A032742 (n + 2)

end

end A070935.P2056218393040970172

/-! ## A070935.P18095001613269091926

`A032742((n+2)²)`
-/

namespace A070935.P18095001613269091926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 2) ^ 2)

end

end A070935.P18095001613269091926

/-! ## A070935.P16206788745222773083

`A071378(n+2)/(n+2)`
-/

namespace A070935.P16206788745222773083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071378 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A070935.P16206788745222773083

/-! ## A070935.P11656178840701816738

`(A089196(n+1)+1)*(n+2)`
-/

namespace A070935.P11656178840701816738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089196 (n + 1) + 1) * (n + 2 : ℤ)

end

end A070935.P11656178840701816738

/-! ## A070935.P4880768007573751424

`(n+2)*(A338281(n+2)-(n+2))`
-/

namespace A070935.P4880768007573751424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A338281 (n + 2) - (n + 2 : ℤ))

end

end A070935.P4880768007573751424

/-! ## A070935.P16624271112482513709

`∏{d}[A020639(2*n-(n-2)), (n+2)/#]`
-/

namespace A070935.P16624271112482513709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (n + 2 : ℚ) / (d : ℚ)

end

end A070935.P16624271112482513709

/-! ## A070935.P586991205788497604

`(n+2)*(n+2)/A020639(∏{p}[n+2, #])`
-/

namespace A070935.P586991205788497604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 2 : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ))

end

end A070935.P586991205788497604

/-! ## A070935.P7507869099815179168

`(n+2)*(n+2)/A020639(C(n+2, n+1))`
-/

namespace A070935.P7507869099815179168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 2 : ℚ) / (A020639 (Nat.choose (n + 2) (n + 1)) : ℚ))

end

end A070935.P7507869099815179168

/-! ## A070935.P5086768367044216233

`(n+2)^3/A285109(n+2)`
-/

namespace A070935.P5086768367044216233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℚ) / (A285109 (n + 2) : ℚ)

end

end A070935.P5086768367044216233

/-! ## A070935.P5026275960745685909

`A005451(n+2)*A117818(n+2)`
-/

namespace A070935.P5026275960745685909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 2) * A117818 (n + 2)

end

end A070935.P5026275960745685909

/-! ## A070935.P15706811735443744276

`A052126(n+2)*A130064(n+2)`
-/

namespace A070935.P15706811735443744276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 2) * A130064 (n + 2)

end

end A070935.P15706811735443744276

/-! ## A070935.P12300646102336799092

`(n+2)²/A092028(n+3)`
-/

namespace A070935.P12300646102336799092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A092028 (n + 3) : ℚ)

end

end A070935.P12300646102336799092

/-! ## A070935.P2317990232544568351

`(n+2)*A054576(2*(n+2))`
-/

namespace A070935.P2317990232544568351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A054576 (2 * (n + 2))

end

end A070935.P2317990232544568351

/-! ## A070935.P17883706778680814176

`(n+2)*A002265(A286473(n+2))`
-/

namespace A070935.P17883706778680814176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002265 (A286473 (n + 2)).toNat

end

end A070935.P17883706778680814176

/-! ## A070935.P10640308881134334495

`(n+2)*A002265(A286474(n+2))`
-/

namespace A070935.P10640308881134334495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002265 (A286474 (n + 2)).toNat

end

end A070935.P10640308881134334495

/-! ## A070935.P12337701723989968626

`(n+2)*A256578(A255833(n+2))`
-/

namespace A070935.P12337701723989968626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A256578 (A255833 (n + 2)).toNat

end

end A070935.P12337701723989968626

/-! ## A070935.P5723094947050331177

`floor(A109816(2*n+n+4)/A020639(n+2))`
-/

namespace A070935.P5723094947050331177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109816 (2 * n + (n + 4)) : ℚ) / (A020639 (n + 2) : ℚ)⌋

end

end A070935.P5723094947050331177

/-! ## A070935.P15600729856299492670

`(n+2)*A280498(A249817(n+2))`
-/

namespace A070935.P15600729856299492670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A280498 (A249817 (n + 2)).toNat

end

end A070935.P15600729856299492670

/-!
# A070936: Square array read by antidiagonals: T(n,k) = number of partitions of n into distinct parts, each no more than k.

The programs for A070936, there is no canonical definition to state claims against.
-/

/-! ## A070936.P12717006315191996125

`A026836(A038722(n+1))`
-/

namespace A070936.P12717006315191996125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A038722 (n + 1)).toNat

end

end A070936.P12717006315191996125

/-! ## A070936.P6154692713191567856

`A026836(A061579(n)+1)`
-/

namespace A070936.P6154692713191567856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A061579 n + 1).toNat

end

end A070936.P6154692713191567856

/-! ## A070936.P6819264219223048158

`A026836(A114327(n)+1+n)`
-/

namespace A070936.P6819264219223048158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A114327 n + 1 + (n : ℤ)).toNat

end

end A070936.P6819264219223048158

/-! ## A070936.P12560237870508856904

`A026836(A093995(n+1)-n)`
-/

namespace A070936.P12560237870508856904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A070936.P12560237870508856904

/-! ## A070936.P5485430305318961768

`A026836(A002024(n+1)²-n)`
-/

namespace A070936.P5485430305318961768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026836 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A070936.P5485430305318961768

/-! ## A070936.P14932543326494125066

`A059607(A099375(n)+1+n)`
-/

namespace A070936.P14932543326494125066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A099375 n + 1 + (n : ℤ)).toNat

end

end A070936.P14932543326494125066

/-! ## A070936.P16683261867429396463

`A059607(A061579(A007401(n+1)))`
-/

namespace A070936.P16683261867429396463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A061579 (A007401 (n + 1)).toNat).toNat

end

end A070936.P16683261867429396463

/-! ## A070936.P3804942670804448000

`A059607(A061579(n)+A003057(n+2))`
-/

namespace A070936.P3804942670804448000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A061579 n + A003057 (n + 2)).toNat

end

end A070936.P3804942670804448000

/-! ## A070936.P14768479028832467967

`A059607(A038722(n+1)+A002024(n+1))`
-/

namespace A070936.P14768479028832467967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A070936.P14768479028832467967

/-! ## A070936.P10798312305867025713

`A059607(A003057(n+2)²-A014132(n+1))`
-/

namespace A070936.P10798312305867025713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 (A003057 (n + 2) ^ 2 - A014132 (n + 1)).toNat

end

end A070936.P10798312305867025713

/-!
# A070937: Number of times maximal coefficient (A025591) appears in Product_{k<=n} (x^k + 1), i.e., number of times highest value appears in n-th row of A053632 or n-th column of A070936.

The programs for A070937, there is no canonical definition to state claims against.
-/

/-! ## A070937.P17143573266174361117

`2*(A350394(n)+1)-(∑[n]+1)`
-/

namespace A070937.P17143573266174361117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A350394 n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A070937.P17143573266174361117

/-!
# A070938: Harshad numbers which terminate in their digital sum.

The programs for A070938, there is no canonical definition to state claims against.
-/

/-! ## A070938.P9744159166510085078

`∩[A005349(n+1), A352462(n+1)]`
-/

namespace A070938.P9744159166510085078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070938.P9744159166510085078

/-! ## A070938.P5793991315474682018

`∩[A352462(n+1), A356349(n+1)]`
-/

namespace A070938.P5793991315474682018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070938.P5793991315474682018

/-! ## A070938.P8235960235513894686

`filter[A352462(n+1), A188641(#)]`
-/

namespace A070938.P8235960235513894686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A070938.P8235960235513894686

/-! ## A070938.P7743475291693386734

`A070594(A043318(n+1))`
-/

namespace A070938.P7743475291693386734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070594 (A043318 (n + 1)).toNat

end

end A070938.P7743475291693386734

/-! ## A070938.P9959397642864436680

`A070594(A044915(n+1))`
-/

namespace A070938.P9959397642864436680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070594 (A044915 (n + 1)).toNat

end

end A070938.P9959397642864436680

/-!
# A070939: Length of binary representation of n.

The programs for A070939, the canonical program `A070939.P14677302147902843740` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070939 has offset 0).

The definition of A070939 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A070939.anchor (n : ℕ) : A070939 n = if n = 0 then 1 else ((Nat.digits 2 n).length : ℤ)` in `Proof.A070.A070939`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070939.P14677302147902843740

`1+a(floor(n/2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070939

/-- `1+a(floor(n/2))` -/
def P14677302147902843740.Spec : Prop :=
  ∀ n, (P14677302147902843740.a n : ℤ) = A070939 n

theorem P14677302147902843740.correct : P14677302147902843740.Spec := by
  intro n
  simp only [A070939]

end A070939

/-! ## A070939.P16018410428494680641

`A000120(n)+A023416(n)`
-/

namespace A070939.P16018410428494680641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A023416 n

end

end A070939.P16018410428494680641

namespace A070939

/-- `A000120(n)+A023416(n)` -/
def P16018410428494680641.Spec : Prop :=
  ∀ n, P16018410428494680641.a n = A070939 n

theorem P16018410428494680641.correct : P16018410428494680641.Spec := by
  intro n
  simp only [A070939, Nat.add_sub_cancel, A070939.P16018410428494680641.a, A070939.P14677302147902843740.a, A000120, A000120.P2816527436160941581.a, A023416, A023416.P8124303482289229133.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070939

/-! ## A070939.P14366321985138157395

`A001855(n+1)-A296349(n)+1`
-/

namespace A070939.P14366321985138157395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) - A296349 n + 1

end

end A070939.P14366321985138157395

namespace A070939

/-- `A001855(n+1)-A296349(n)+1` -/
def P14366321985138157395.Spec : Prop :=
  ∀ n, P14366321985138157395.a n = A070939 n

end A070939

/-! ## A070939.P6010912694813170

`ceil(abs(log2(acot(n))))`
-/

namespace A070939.P6010912694813170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (SequenceMachineLib.acot (n : ℝ))|⌉

end

end A070939.P6010912694813170

namespace A070939

/-- `ceil(abs(log2(acot(n))))` -/
def P6010912694813170.Spec : Prop :=
  ∀ n, P6010912694813170.a n = A070939 n

end A070939

/-! ## A070939.P7428742870885986701

`floor(record[log2(or(2, n))])`
-/

namespace A070939.P7428742870885986701
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A070939.P7428742870885986701

namespace A070939

/-- `floor(record[log2(or(2, n))])` -/
def P7428742870885986701.Spec : Prop :=
  ∀ n, P7428742870885986701.a n = A070939 n

end A070939

/-! ## A070939.P1367192203062863922

`floor(log2(record[xor(2, n)]))`
-/

namespace A070939.P1367192203062863922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A070939.P1367192203062863922

namespace A070939

/-- `floor(log2(record[xor(2, n)]))` -/
def P1367192203062863922.Spec : Prop :=
  ∀ n, (P1367192203062863922.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P3698353675538848072

`ceil(abs(log2(n+γ)))`
-/

namespace A070939.P3698353675538848072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 ((n : ℝ) + Real.eulerMascheroniConstant)|⌉

end

end A070939.P3698353675538848072

namespace A070939

/-- `ceil(abs(log2(n+γ)))` -/
def P3698353675538848072.Spec : Prop :=
  ∀ n, P3698353675538848072.a n = A070939 n

end A070939

/-! ## A070939.P6249845575383077013

`abs(floor(log2(sinh(acot(n)))))`
-/

namespace A070939.P6249845575383077013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.logb 2 (Real.sinh (SequenceMachineLib.acot (n : ℝ)))⌋|

end

end A070939.P6249845575383077013

namespace A070939

/-- `abs(floor(log2(sinh(acot(n)))))` -/
def P6249845575383077013.Spec : Prop :=
  ∀ n, P6249845575383077013.a n = A070939 n

end A070939

/-! ## A070939.P2558039972698183780

`abs(floor(log2(tanh(acot(n)))))`
-/

namespace A070939.P2558039972698183780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.logb 2 (Real.tanh (SequenceMachineLib.acot (n : ℝ)))⌋|

end

end A070939.P2558039972698183780

namespace A070939

/-- `abs(floor(log2(tanh(acot(n)))))` -/
def P2558039972698183780.Spec : Prop :=
  ∀ n, P2558039972698183780.a n = A070939 n

end A070939

/-! ## A070939.P8587892947793186435

`-floor(log2(tanh(acot(n))))`
-/

namespace A070939.P8587892947793186435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.logb 2 (Real.tanh (SequenceMachineLib.acot (n : ℝ)))⌋

end

end A070939.P8587892947793186435

namespace A070939

/-- `-floor(log2(tanh(acot(n))))` -/
def P8587892947793186435.Spec : Prop :=
  ∀ n, P8587892947793186435.a n = A070939 n

end A070939

/-! ## A070939.P17042241252011744880

`floor(log2(or(1, n)))+1`
-/

namespace A070939.P17042241252011744880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.lor 1 n) + 1

end

end A070939.P17042241252011744880

namespace A070939

/-- `floor(log2(or(1, n)))+1` -/
def P17042241252011744880.Spec : Prop :=
  ∀ n, (P17042241252011744880.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P4958756255860864649

`floor(log2(2*or(1, n)))`
-/

namespace A070939.P4958756255860864649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (2 * Nat.lor 1 n)

end

end A070939.P4958756255860864649

namespace A070939

/-- `floor(log2(2*or(1, n)))` -/
def P4958756255860864649.Spec : Prop :=
  ∀ n, (P4958756255860864649.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P3760814468368780740

`∑[char[and(n, 1-n)]]`
-/

namespace A070939.P3760814468368780740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070939.P3760814468368780740

namespace A070939

/-- `∑[char[and(n, 1-n)]]` -/
def P3760814468368780740.Spec : Prop :=
  ∀ n, (P3760814468368780740.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P6621127491953798039

`∑[C(and(n, 1-n), n)]`
-/

namespace A070939.P6621127491953798039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (1 - (n : ℤ))).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070939.P6621127491953798039

namespace A070939

/-- `∑[C(and(n, 1-n), n)]` -/
def P6621127491953798039.Spec : Prop :=
  ∀ n, (P6621127491953798039.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P2270102696607786759

`floor(log2(comp[and(2, n)+n]))`
-/

namespace A070939.P2270102696607786759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A070939.P2270102696607786759

namespace A070939

/-- `floor(log2(comp[and(2, n)+n]))` -/
def P2270102696607786759.Spec : Prop :=
  ∀ n, (P2270102696607786759.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P17596042437511222457

`∑[C(∑{e}[n, 2^#], n)]`
-/

namespace A070939.P17596042437511222457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070939.P17596042437511222457

namespace A070939

/-- `∑[C(∑{e}[n, 2^#], n)]` -/
def P17596042437511222457.Spec : Prop :=
  ∀ n, (P17596042437511222457.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P3361789494073283883

`abs(floor(-log2(acot(2*n))))`
-/

namespace A070939.P3361789494073283883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊-Real.logb 2 (SequenceMachineLib.acot (2 * n : ℝ))⌋|

end

end A070939.P3361789494073283883

namespace A070939

/-- `abs(floor(-log2(acot(2*n))))` -/
def P3361789494073283883.Spec : Prop :=
  ∀ n, P3361789494073283883.a n = A070939 n

end A070939

/-! ## A070939.P351053527963103329

`∑[char[ogf(2x/(1-2x))]]`
-/

namespace A070939.P351053527963103329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070939.P351053527963103329

namespace A070939

/-- `∑[char[ogf(2x/(1-2x))]]` -/
def P351053527963103329.Spec : Prop :=
  ∀ n, (P351053527963103329.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P6138068942010497753

`∑[char[2*a(n-1)]]` with `a(0)=0, a(1)=2`
-/

namespace A070939.P6138068942010497753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  2 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070939.P6138068942010497753

namespace A070939

/-- `∑[char[2*a(n-1)]]` -/
def P6138068942010497753.Spec : Prop :=
  ∀ n, (P6138068942010497753.a n : ℤ) = A070939 n

end A070939

/-! ## A070939.P9060808626285900846

`1-floor(1/n-a(floor(n/2)))` with `a(0)=1`
-/

namespace A070939.P9060808626285900846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊1 / (n : ℚ) - (a ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌋

end

end A070939.P9060808626285900846

namespace A070939

/-- `1-floor(1/n-a(floor(n/2)))` -/
def P9060808626285900846.Spec : Prop :=
  ∀ n, P9060808626285900846.a n = A070939 n

end A070939

/-!
# A070940: Number of digits that must be counted from left to right to reach the last 1 in the binary representation of n.

The programs for A070940, the canonical program `A070940.P9952911694472804508` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070940 has offset 1).

The definition of A070940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070940.P9952911694472804508

`A070939(A000265(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A070940

/-- `A070939(A000265(n+1))` -/
def P9952911694472804508.Spec : Prop :=
  ∀ n, P9952911694472804508.a n = A070940 (n + 1)

theorem P9952911694472804508.correct : P9952911694472804508.Spec := by
  intro n
  simp only [A070940, Nat.add_sub_cancel]

end A070940

/-! ## A070940.P16707449292421633890

`A070939(n+1)-A007814(n+1)`
-/

namespace A070940.P16707449292421633890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A007814 (n + 1)

end

end A070940.P16707449292421633890

namespace A070940

/-- `A070939(n+1)-A007814(n+1)` -/
def P16707449292421633890.Spec : Prop :=
  ∀ n, P16707449292421633890.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P2345319305039362247

`ceil(log2(n+2)-val(n+1, 2))`
-/

namespace A070940.P2345319305039362247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)⌉

end

end A070940.P2345319305039362247

namespace A070940

/-- `ceil(log2(n+2)-val(n+1, 2))` -/
def P2345319305039362247.Spec : Prop :=
  ∀ n, P2345319305039362247.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P6792738242327006489

`floor(log2(n+1))-val(n+1, 2)+1`
-/

namespace A070940.P6792738242327006489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + 1

end

end A070940.P6792738242327006489

namespace A070940

/-- `floor(log2(n+1))-val(n+1, 2)+1` -/
def P6792738242327006489.Spec : Prop :=
  ∀ n, P6792738242327006489.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P9317779017821978505

`∑[char[2^n-1]]-val(n+1, 2)`
-/

namespace A070940.P9317779017821978505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A070940.P9317779017821978505

namespace A070940

/-- `∑[char[2^n-1]]-val(n+1, 2)` -/
def P9317779017821978505.Spec : Prop :=
  ∀ n, P9317779017821978505.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P13948302310282157122

`∑{e}[gcd(n+2, a(n-1))*a(floor(n/2)), #]` with `a(0)=2`
-/

namespace A070940.P13948302310282157122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.gcd (n + 2) (f1 (n - 1)) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A070940.P13948302310282157122

namespace A070940

/-- `∑{e}[gcd(n+2, a(n-1))*a(floor(n/2)), #]` -/
def P13948302310282157122.Spec : Prop :=
  ∀ n, (P13948302310282157122.a n : ℤ) = A070940 (n + 1)

end A070940

/-! ## A070940.P13123262754138268290

`A119387(n)+1`
-/

namespace A070940.P13123262754138268290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 n + 1

end

end A070940.P13123262754138268290

namespace A070940

/-- `A119387(n)+1` -/
def P13123262754138268290.Spec : Prop :=
  ∀ n, P13123262754138268290.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P3852257536623227376

`log2(A082908(n))+1`
-/

namespace A070940.P3852257536623227376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082908 n : ℝ) + 1

end

end A070940.P3852257536623227376

namespace A070940

/-- `log2(A082908(n))+1` -/
def P3852257536623227376.Spec : Prop :=
  ∀ n, P3852257536623227376.a n = (A070940 (n + 1) : ℝ)

end A070940

/-! ## A070940.P16016519268201915607

`log2(A307313(n+1))`
-/

namespace A070940.P16016519268201915607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A307313 (n + 1) : ℝ)

end

end A070940.P16016519268201915607

namespace A070940

/-- `log2(A307313(n+1))` -/
def P16016519268201915607.Spec : Prop :=
  ∀ n, P16016519268201915607.a n = (A070940 (n + 1) : ℝ)

end A070940

/-! ## A070940.P7009017435774648253

`floor(log2(A030101(n+1)))+1`
-/

namespace A070940.P7009017435774648253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A030101 (n + 1)).toNat + 1

end

end A070940.P7009017435774648253

namespace A070940

/-- `floor(log2(A030101(n+1)))+1` -/
def P7009017435774648253.Spec : Prop :=
  ∀ n, (P7009017435774648253.a n : ℤ) = A070940 (n + 1)

end A070940

/-! ## A070940.P1421267529234085656

`floor(log2(A322250(n+1)))+1`
-/

namespace A070940.P1421267529234085656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A322250 (n + 1)).toNat + 1

end

end A070940.P1421267529234085656

namespace A070940

/-- `floor(log2(A322250(n+1)))+1` -/
def P1421267529234085656.Spec : Prop :=
  ∀ n, (P1421267529234085656.a n : ℤ) = A070940 (n + 1)

end A070940

/-! ## A070940.P9589797875553834373

`floor(log2(A325401(n+1)))+1`
-/

namespace A070940.P9589797875553834373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A325401 (n + 1)).toNat + 1

end

end A070940.P9589797875553834373

namespace A070940

/-- `floor(log2(A325401(n+1)))+1` -/
def P9589797875553834373.Spec : Prop :=
  ∀ n, (P9589797875553834373.a n : ℤ) = A070940 (n + 1)

end A070940

/-! ## A070940.P12801494118496165673

`ceil(log2(A003602(n+1)))+1`
-/

namespace A070940.P12801494118496165673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A003602 (n + 1) : ℝ)⌉ + 1

end

end A070940.P12801494118496165673

namespace A070940

/-- `ceil(log2(A003602(n+1)))+1` -/
def P12801494118496165673.Spec : Prop :=
  ∀ n, P12801494118496165673.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P6115420447631388172

`ceil(log2(A049773(n+1)))+1`
-/

namespace A070940.P6115420447631388172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A049773 (n + 1) : ℝ)⌉ + 1

end

end A070940.P6115420447631388172

namespace A070940

/-- `ceil(log2(A049773(n+1)))+1` -/
def P6115420447631388172.Spec : Prop :=
  ∀ n, P6115420447631388172.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P11780540755129252371

`ceil(log2(A110963(2*n+1)))+1`
-/

namespace A070940.P11780540755129252371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A110963 (2 * n + 1) : ℝ)⌉ + 1

end

end A070940.P11780540755129252371

namespace A070940

/-- `ceil(log2(A110963(2*n+1)))+1` -/
def P11780540755129252371.Spec : Prop :=
  ∀ n, P11780540755129252371.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P10731888037263345848

`A000005(A082908(n))`
-/

namespace A070940.P10731888037263345848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A082908 n).toNat

end

end A070940.P10731888037263345848

namespace A070940

/-- `A000005(A082908(n))` -/
def P10731888037263345848.Spec : Prop :=
  ∀ n, P10731888037263345848.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P9219026342278817070

`A070941(A025480(n))`
-/

namespace A070940.P9219026342278817070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A025480 n).toNat

end

end A070940.P9219026342278817070

namespace A070940

/-- `A070941(A025480(n))` -/
def P9219026342278817070.Spec : Prop :=
  ∀ n, P9219026342278817070.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P14439569675451911039

`A106737(A086099(n))`
-/

namespace A070940.P14439569675451911039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A086099 n).toNat

end

end A070940.P14439569675451911039

namespace A070940

/-- `A106737(A086099(n))` -/
def P14439569675451911039.Spec : Prop :=
  ∀ n, P14439569675451911039.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P1345131633111008560

`A070939(A153733(n))`
-/

namespace A070940.P1345131633111008560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A153733 n).toNat

end

end A070940.P1345131633111008560

namespace A070940

/-- `A070939(A153733(n))` -/
def P1345131633111008560.Spec : Prop :=
  ∀ n, P1345131633111008560.a n = A070940 (n + 1)

end A070940

/-! ## A070940.P17580677945104845278

`A263017(A142151(n))`
-/

namespace A070940.P17580677945104845278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (A142151 n).toNat

end

end A070940.P17580677945104845278

namespace A070940

/-- `A263017(A142151(n))` -/
def P17580677945104845278.Spec : Prop :=
  ∀ n, P17580677945104845278.a n = A070940 (n + 1)

end A070940

/-!
# A070941: Length of binary representation of 2n+1.

The programs for A070941, the canonical program `A070941.P17496607985201220680` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070941 has offset 0).

The definition of A070941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070941.P17496607985201220680

`1+ceil(log2(n+1))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070941

/-- `1+ceil(log2(n+1))` -/
def P17496607985201220680.Spec : Prop :=
  ∀ n, P17496607985201220680.a n = A070941 n

theorem P17496607985201220680.correct : P17496607985201220680.Spec := by
  intro n
  simp only [A070941]

end A070941

/-! ## A070941.P2078363209627521438

`ceil(record[log2(or(2, n))])`
-/

namespace A070941.P2078363209627521438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A070941.P2078363209627521438

namespace A070941

/-- `ceil(record[log2(or(2, n))])` -/
def P2078363209627521438.Spec : Prop :=
  ∀ n, P2078363209627521438.a n = A070941 n

end A070941

/-! ## A070941.P424955390889596993

`ceil(log2(record[xor(2, n)]))`
-/

namespace A070941.P424955390889596993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌉

end

end A070941.P424955390889596993

namespace A070941

/-- `ceil(log2(record[xor(2, n)]))` -/
def P424955390889596993.Spec : Prop :=
  ∀ n, P424955390889596993.a n = A070941 n

end A070941

/-! ## A070941.P1147153792289210772

`floor(log2(record[xor(3, n)]))`
-/

namespace A070941.P1147153792289210772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A070941.P1147153792289210772

namespace A070941

/-- `floor(log2(record[xor(3, n)]))` -/
def P1147153792289210772.Spec : Prop :=
  ∀ n, (P1147153792289210772.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P8232616311630272121

`∑[∏{p}[n, val(#, 2)]]`
-/

namespace A070941.P8232616311630272121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P8232616311630272121

namespace A070941

/-- `∑[∏{p}[n, val(#, 2)]]` -/
def P8232616311630272121.Spec : Prop :=
  ∀ n, (P8232616311630272121.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P7580503262714934465

`∑[C(2, ∑{p}[n, #])]`
-/

namespace A070941.P7580503262714934465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P7580503262714934465

namespace A070941

/-- `∑[C(2, ∑{p}[n, #])]` -/
def P7580503262714934465.Spec : Prop :=
  ∀ n, (P7580503262714934465.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P1642101183851736764

`∑[∏{p}[n, C(2, #)]]`
-/

namespace A070941.P1642101183851736764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P1642101183851736764

namespace A070941

/-- `∑[∏{p}[n, C(2, #)]]` -/
def P1642101183851736764.Spec : Prop :=
  ∀ n, (P1642101183851736764.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P8293685552071848583

`ceil(log2(2/acot(n)))`
-/

namespace A070941.P8293685552071848583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 / SequenceMachineLib.acot (n : ℝ))⌉

end

end A070941.P8293685552071848583

namespace A070941

/-- `ceil(log2(2/acot(n)))` -/
def P8293685552071848583.Spec : Prop :=
  ∀ n, P8293685552071848583.a n = A070941 n

end A070941

/-! ## A070941.P1002324348640921740

`floor(log2(4/acot(n)))`
-/

namespace A070941.P1002324348640921740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (4 / SequenceMachineLib.acot (n : ℝ))⌋

end

end A070941.P1002324348640921740

namespace A070941

/-- `floor(log2(4/acot(n)))` -/
def P1002324348640921740.Spec : Prop :=
  ∀ n, P1002324348640921740.a n = A070941 n

end A070941

/-! ## A070941.P880010386058762486

`∑[char[and(n, -n)]]`
-/

namespace A070941.P880010386058762486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P880010386058762486

namespace A070941

/-- `∑[char[and(n, -n)]]` -/
def P880010386058762486.Spec : Prop :=
  ∀ n, (P880010386058762486.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P7032473851508702546

`ceil(abs(log2(acot(2*n))))`
-/

namespace A070941.P7032473851508702546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.logb 2 (SequenceMachineLib.acot (2 * n : ℝ))|⌉

end

end A070941.P7032473851508702546

namespace A070941

/-- `ceil(abs(log2(acot(2*n))))` -/
def P7032473851508702546.Spec : Prop :=
  ∀ n, P7032473851508702546.a n = A070941 n

end A070941

/-! ## A070941.P98554863241025189

`∑[∏{p}[n, floor(2/#)]]`
-/

namespace A070941.P98554863241025189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌊2 / (p : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P98554863241025189

namespace A070941

/-- `∑[∏{p}[n, floor(2/#)]]` -/
def P98554863241025189.Spec : Prop :=
  ∀ n, P98554863241025189.a n = A070941 n

end A070941

/-! ## A070941.P14781843784962838227

`∑[round(1/∏{p}[n, #])]`
-/

namespace A070941.P14781843784962838227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P14781843784962838227

namespace A070941

/-- `∑[round(1/∏{p}[n, #])]` -/
def P14781843784962838227.Spec : Prop :=
  ∀ n, P14781843784962838227.a n = A070941 n

end A070941

/-! ## A070941.P4001365461257278048

`ceil(log2(∑[gcd(4, n-2)]))`
-/

namespace A070941.P4001365461257278048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A070941.P4001365461257278048

namespace A070941

/-- `ceil(log2(∑[gcd(4, n-2)]))` -/
def P4001365461257278048.Spec : Prop :=
  ∀ n, P4001365461257278048.a n = A070941 n

end A070941

/-! ## A070941.P10837751090469920989

`floor(record[log2(lcm(2, n+1))])`
-/

namespace A070941.P10837751090469920989
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A070941.P10837751090469920989

namespace A070941

/-- `floor(record[log2(lcm(2, n+1))])` -/
def P10837751090469920989.Spec : Prop :=
  ∀ n, P10837751090469920989.a n = A070941 n

end A070941

/-! ## A070941.P4188337186354138603

`∑[∏{p}[n, #+1]%2]`
-/

namespace A070941.P4188337186354138603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (p + 1)) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P4188337186354138603

namespace A070941

/-- `∑[∏{p}[n, #+1]%2]` -/
def P4188337186354138603.Spec : Prop :=
  ∀ n, (P4188337186354138603.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P13530971064923841166

`∑[and(1, ∏{p}[n, #+1])]`
-/

namespace A070941.P13530971064923841166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f2 n), (p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P13530971064923841166

namespace A070941

/-- `∑[and(1, ∏{p}[n, #+1])]` -/
def P13530971064923841166.Spec : Prop :=
  ∀ n, (P13530971064923841166.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P11397326342673185294

`∑[∏{e}[n, val(2^#, n)]]`
-/

namespace A070941.P11397326342673185294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (2 ^ Nat.factorization (f2 n) p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P11397326342673185294

namespace A070941

/-- `∑[∏{e}[n, val(2^#, n)]]` -/
def P11397326342673185294.Spec : Prop :=
  ∀ n, (P11397326342673185294.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P1765995915921486884

`∑[C(2^∑{e}[n, #], n)]`
-/

namespace A070941.P1765995915921486884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P1765995915921486884

namespace A070941

/-- `∑[C(2^∑{e}[n, #], n)]` -/
def P1765995915921486884.Spec : Prop :=
  ∀ n, (P1765995915921486884.a n : ℤ) = A070941 n

end A070941

/-! ## A070941.P6144325684104902208

`∑[∏{e}[n, C(2^#, n)]]`
-/

namespace A070941.P6144325684104902208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (2 ^ Nat.factorization (f2 n) p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070941.P6144325684104902208

namespace A070941

/-- `∑[∏{e}[n, C(2^#, n)]]` -/
def P6144325684104902208.Spec : Prop :=
  ∀ n, (P6144325684104902208.a n : ℤ) = A070941 n

end A070941

/-!
# A070942: Values of n such that the first n terms of A055265 constitute a permutation of {1,2,3,...,n}.

The programs for A070942, there is no canonical definition to state claims against.
-/

/-! ## A070942.P9173975401240709815

`record[A002260(∑[A055265(n+1)])]`
-/

namespace A070942.P9173975401240709815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070942.P9173975401240709815

/-! ## A070942.P5153401087478324545

`record[A127093(∑[A055265(n+1)])]`
-/

namespace A070942.P5153401087478324545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070942.P5153401087478324545

/-! ## A070942.P4550292668365407643

`record[A109004(∑[A117922(n+1)])]`
-/

namespace A070942.P4550292668365407643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070942.P4550292668365407643

/-! ## A070942.P13964157933251495039

`record[A051237(∑[A055265(n+1)])]`
-/

namespace A070942.P13964157933251495039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051237 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070942.P13964157933251495039

/-! ## A070942.P5586540046949285287

`record[A051237(∑[A117922(n+1)])]`
-/

namespace A070942.P5586540046949285287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051237 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070942.P5586540046949285287

/-!
# A070943: Commuting elements: number of ordered pairs g, h in the group GL(2,Z_n) such that gh = hg.

The programs for A070943, the canonical program `A070943.P14364430333234565674` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070943 has offset 1).

The definition of A070943 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070943.P14364430333234565674

`A000252(n+1)*A062354(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A070943

/-- `A000252(n+1)*A062354(n+1)` -/
def P14364430333234565674.Spec : Prop :=
  ∀ n, P14364430333234565674.a n = A070943 (n + 1)

theorem P14364430333234565674.correct : P14364430333234565674.Spec := by
  intro n
  simp only [A070943, Nat.add_sub_cancel]

end A070943

/-! ## A070943.P15219737025069625608

`A000010(n+1)*A000203(n+1)*A000252(n+1)`
-/

namespace A070943.P15219737025069625608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000203 (n + 1) * A000252 (n + 1)

end

end A070943.P15219737025069625608

namespace A070943

/-- `A000010(n+1)*A000203(n+1)*A000252(n+1)` -/
def P15219737025069625608.Spec : Prop :=
  ∀ n, P15219737025069625608.a n = A070943 (n + 1)

end A070943

/-! ## A070943.P17718781445622457969

`A000252(n+1)*A009223(n+1)*A009286(n+1)`
-/

namespace A070943.P17718781445622457969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1) * A009223 (n + 1) * A009286 (n + 1)

end

end A070943.P17718781445622457969

namespace A070943

/-- `A000252(n+1)*A009223(n+1)*A009286(n+1)` -/
def P17718781445622457969.Spec : Prop :=
  ∀ n, P17718781445622457969.a n = A070943 (n + 1)

end A070943

/-! ## A070943.P8585034959281430653

`A000010(n+1)*A000056(n+1)*A062354(n+1)`
-/

namespace A070943.P8585034959281430653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000056 (n + 1) * A062354 (n + 1)

end

end A070943.P8585034959281430653

namespace A070943

/-- `A000010(n+1)*A000056(n+1)*A062354(n+1)` -/
def P8585034959281430653.Spec : Prop :=
  ∀ n, P8585034959281430653.a n = A070943 (n + 1)

end A070943

/-! ## A070943.P17340198455981837700

`A002618(n+1)*A007434(n+1)*A062354(n+1)`
-/

namespace A070943.P17340198455981837700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) * A007434 (n + 1) * A062354 (n + 1)

end

end A070943.P17340198455981837700

namespace A070943

/-- `A002618(n+1)*A007434(n+1)*A062354(n+1)` -/
def P17340198455981837700.Spec : Prop :=
  ∀ n, P17340198455981837700.a n = A070943 (n + 1)

end A070943

/-! ## A070943.P8411088727329268524

`A000082(n+1)*A062354(n+1)*A127473(n+1)`
-/

namespace A070943.P8411088727329268524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (n + 1) * A062354 (n + 1) * A127473 (n + 1)

end

end A070943.P8411088727329268524

namespace A070943

/-- `A000082(n+1)*A062354(n+1)*A127473(n+1)` -/
def P8411088727329268524.Spec : Prop :=
  ∀ n, P8411088727329268524.a n = A070943 (n + 1)

end A070943

/-! ## A070943.P1695826104804323797

`A062354(n+1)*A062570(n+1)*A065430(n+1)`
-/

namespace A070943.P1695826104804323797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) * A062570 (n + 1) * A065430 (n + 1)

end

end A070943.P1695826104804323797

namespace A070943

/-- `A062354(n+1)*A062570(n+1)*A065430(n+1)` -/
def P1695826104804323797.Spec : Prop :=
  ∀ n, P1695826104804323797.a n = A070943 (n + 1)

end A070943

/-! ## A070943.P4798071219290532619

`A062354(n+1)*A070732(n+1)*A082953(n+1)`
-/

namespace A070943.P4798071219290532619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) * A070732 (n + 1) * A082953 (n + 1)

end

end A070943.P4798071219290532619

namespace A070943

/-- `A062354(n+1)*A070732(n+1)*A082953(n+1)` -/
def P4798071219290532619.Spec : Prop :=
  ∀ n, P4798071219290532619.a n = A070943 (n + 1)

end A070943

/-! ## A070943.P17052434889264806375

`A062354(n+1)*A063445(∑[A005408(n)])`
-/

namespace A070943.P17052434889264806375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) * A063445 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070943.P17052434889264806375

namespace A070943

/-- `A062354(n+1)*A063445(∑[A005408(n)])` -/
def P17052434889264806375.Spec : Prop :=
  ∀ n, P17052434889264806375.a n = A070943 (n + 1)

end A070943

/-!
# A070945: Number of permutations on n letters that have only cycles of length 4 or less.

The programs for A070945, there is no canonical definition to state claims against.
-/

/-! ## A070945.P2327962953265503414

`A000027(A053502(n)-A029573(n))`
-/

namespace A070945.P2327962953265503414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A053502 n - A029573 n).toNat

end

end A070945.P2327962953265503414

/-! ## A070945.P10851993722477213705

`A000027(A070946(n)-A029572(n))`
-/

namespace A070945.P10851993722477213705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A070946 n - A029572 n).toNat

end

end A070945.P10851993722477213705

/-! ## A070945.P2659087195981379063

`A053502(A046469(n))-A029573(n)`
-/

namespace A070945.P2659087195981379063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 (A046469 n).toNat - A029573 n

end

end A070945.P2659087195981379063

/-! ## A070945.P12244911297987872974

`A070946(A046469(n))-A029572(n)`
-/

namespace A070945.P12244911297987872974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070946 (A046469 n).toNat - A029572 n

end

end A070945.P12244911297987872974

/-! ## A070945.P2257596215549946478

`A053502(n)-A029573(A087036(n))`
-/

namespace A070945.P2257596215549946478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 n - A029573 (A087036 n).toNat

end

end A070945.P2257596215549946478

/-!
# A070946: Number of permutations on n letters that have only cycles of length 5 or less.

The programs for A070946, there is no canonical definition to state claims against.
-/

/-! ## A070946.P783532183391447658

`A001065(A096172(n+1))*A070947(n)-A029573(n)`
-/

namespace A070946.P783532183391447658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A096172 (n + 1)).toNat * A070947 n - A029573 n

end

end A070946.P783532183391447658

/-! ## A070946.P14180646033876880308

`A029572(n)+A000027(A070945(n))`
-/

namespace A070946.P14180646033876880308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029572 n + A000027 (A070945 n).toNat

end

end A070946.P14180646033876880308

/-! ## A070946.P12677815742793031229

`A070945(A046469(n))+A029572(n)`
-/

namespace A070946.P12677815742793031229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070945 (A046469 n).toNat + A029572 n

end

end A070946.P12677815742793031229

/-! ## A070946.P17972172772303385147

`A070945(n)+A029572(A087036(n))`
-/

namespace A070946.P17972172772303385147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070945 n + A029572 (A087036 n).toNat

end

end A070946.P17972172772303385147

/-! ## A070946.P18192181148974125607

`A000027(A070947(n)-A029573(n))`
-/

namespace A070946.P18192181148974125607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A070947 n - A029573 n).toNat

end

end A070946.P18192181148974125607

/-!
# A070947: Number of permutations on n letters that have only cycles of length 6 or less.

The programs for A070947, there is no canonical definition to state claims against.
-/

/-! ## A070947.P15038658249420780674

`A029571(n)+A000027(A053505(n))`
-/

namespace A070947.P15038658249420780674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029571 n + A000027 (A053505 n).toNat

end

end A070947.P15038658249420780674

/-! ## A070947.P5548283411931138156

`A029572(n)+A000027(A053502(n))`
-/

namespace A070947.P5548283411931138156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029572 n + A000027 (A053502 n).toNat

end

end A070947.P5548283411931138156

/-! ## A070947.P16583544176702824572

`A029573(n)+A000027(A070946(n))`
-/

namespace A070947.P16583544176702824572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029573 n + A000027 (A070946 n).toNat

end

end A070947.P16583544176702824572

/-! ## A070947.P10955283321731951406

`A053502(A046469(n))+A029572(n)`
-/

namespace A070947.P10955283321731951406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053502 (A046469 n).toNat + A029572 n

end

end A070947.P10955283321731951406

/-! ## A070947.P818979919179796284

`A053505(A046469(n))+A029571(n)`
-/

namespace A070947.P818979919179796284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053505 (A046469 n).toNat + A029571 n

end

end A070947.P818979919179796284

/-!
# A070949: Little Hankel transform of A002487.

The programs for A070949, the canonical program `A070949.P1002043794183417045` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070949 has offset 0).

The definition of A070949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070949.P1002043794183417045

`Δ[A174868(n+1)]²-A071883(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070949

/-- `Δ[A174868(n+1)]²-A071883(n+1)` -/
def P1002043794183417045.Spec : Prop :=
  ∀ n, P1002043794183417045.a n = A070949 n

theorem P1002043794183417045.correct : P1002043794183417045.Spec := by
  intro n
  simp only [A070949]

end A070949

/-! ## A070949.P14680519377857845810

`A174981(2*n+1)²-A071883(n+1)`
-/

namespace A070949.P14680519377857845810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174981 (2 * n + 1) ^ 2 - A071883 (n + 1)

end

end A070949.P14680519377857845810

namespace A070949

/-- `A174981(2*n+1)²-A071883(n+1)` -/
def P14680519377857845810.Spec : Prop :=
  ∀ n, P14680519377857845810.a n = A070949 n

end A070949

/-!
# A070950: Triangle read by rows giving successive states of cellular automaton generated by "Rule 30".

The programs for A070950, there is no canonical definition to state claims against.
-/

/-! ## A070950.P1210692057336928246

`1-A226463(n)`
-/

namespace A070950.P1210692057336928246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226463 n

end

end A070950.P1210692057336928246

/-! ## A070950.P2270879543336721374

`A071032(A020703(n+2))`
-/

namespace A070950.P2270879543336721374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (A020703 (n + 2)).toNat

end

end A070950.P2270879543336721374

/-! ## A070950.P18195503309441558974

`A000007(n*A226463(n))`
-/

namespace A070950.P18195503309441558974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A226463 n).toNat

end

end A070950.P18195503309441558974

/-! ## A070950.P3876897013107664152

`A000122(n*A226463(n))`
-/

namespace A070950.P3876897013107664152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n : ℤ) * A226463 n).toNat

end

end A070950.P3876897013107664152

/-! ## A070950.P9339044930089391398

`(A226482(n)+A226463(n))%2`
-/

namespace A070950.P9339044930089391398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226482 n + A226463 n) 2

end

end A070950.P9339044930089391398

/-! ## A070950.P5680103268613121126

`(A226463(n)+A175789(n+1))%2`
-/

namespace A070950.P5680103268613121126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226463 n + A175789 (n + 1)) 2

end

end A070950.P5680103268613121126

/-! ## A070950.P10906844582808524651

`(A226463(n)+A175791(n+1))%2`
-/

namespace A070950.P10906844582808524651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226463 n + A175791 (n + 1)) 2

end

end A070950.P10906844582808524651

/-! ## A070950.P989177957794058064

`(A226463(n)+A180555(n+1))%2`
-/

namespace A070950.P989177957794058064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226463 n + A180555 (n + 1)) 2

end

end A070950.P989177957794058064

/-! ## A070950.P11653376867125553529

`A051023(A226463(n)*A327985(n+1))`
-/

namespace A070950.P11653376867125553529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (A226463 n * A327985 (n + 1)).toNat

end

end A070950.P11653376867125553529

/-! ## A070950.P18206184425095609098

`A000010(A070952(n*A226463(n)))%2`
-/

namespace A070950.P18206184425095609098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A070952 ((n : ℤ) * A226463 n).toNat).toNat) 2

end

end A070950.P18206184425095609098

/-! ## A070950.P12943122514961353188

`A051023(eq[0, A051023(n)]*A226463(n))`
-/

namespace A070950.P12943122514961353188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A226463 n).toNat

end

end A070950.P12943122514961353188

/-! ## A070950.P13154472967368654347

`A008484(A014963(2*(n+1))*A226463(n))`
-/

namespace A070950.P13154472967368654347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (A014963 (2 * (n + 1)) * A226463 n).toNat

end

end A070950.P13154472967368654347

/-! ## A070950.P17777572551601450018

`A000035(A226463(n)+2*n+1)`
-/

namespace A070950.P17777572551601450018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A226463 n + (2 * n + 1 : ℤ)).toNat

end

end A070950.P17777572551601450018

/-!
# A070951: Number of 0's in n-th row of triangle in A070950.

The programs for A070951, there is no canonical definition to state claims against.
-/

/-! ## A070951.P1254982585833852254

`1-A246024(n)+n`
-/

namespace A070951.P1254982585833852254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A246024 n + (n : ℤ)

end

end A070951.P1254982585833852254

/-! ## A070951.P6104101217378659150

`Δ[A265224(abs(1-n))]`
-/

namespace A070951.P6104101217378659150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265224 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070951.P6104101217378659150

/-! ## A070951.P10159305945165829947

`Δ[n²]-A070952(n)`
-/

namespace A070951.P10159305945165829947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A070952 n

end

end A070951.P10159305945165829947

/-! ## A070951.P3493657891034919449

`∑[2-A151929(n)]-1`
-/

namespace A070951.P3493657891034919449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A151929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A070951.P3493657891034919449

/-! ## A070951.P5429418497827665236

`A265701(n)-A151929(n)`
-/

namespace A070951.P5429418497827665236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n - A151929 n

end

end A070951.P5429418497827665236

/-! ## A070951.P5269294962591115243

`A265224(n)+A265704(n)-n²`
-/

namespace A070951.P5269294962591115243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265224 n + (A265704 n - (n ^ 2 : ℤ))

end

end A070951.P5269294962591115243

/-! ## A070951.P10423521932267720132

`Δ[A265702(n)]-2`
-/

namespace A070951.P10423521932267720132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A070951.P10423521932267720132

/-! ## A070951.P5571109573735529026

`A265701(n+1)-2`
-/

namespace A070951.P5571109573735529026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 (n + 1) - 2

end

end A070951.P5571109573735529026

/-! ## A070951.P8325064042879730114

`Δ[n²-A265704(n)]`
-/

namespace A070951.P8325064042879730114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A265704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070951.P8325064042879730114

/-! ## A070951.P7412968187902284328

`Δ[n²-∑[A265703(n)]]`
-/

namespace A070951.P7412968187902284328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070951.P7412968187902284328

/-! ## A070951.P7770202710471014768

`Δ[n²]-A265703(n+1)`
-/

namespace A070951.P7770202710471014768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A265703 (n + 1)

end

end A070951.P7770202710471014768

/-! ## A070951.P9175796099614563587

`A005408(n)-Δ[A265704(n)]`
-/

namespace A070951.P9175796099614563587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (f1 (n + 1) - f1 n)

end

end A070951.P9175796099614563587

/-! ## A070951.P14339558297240242435

`Δ[A000217(n)-A265704(n)]+n`
-/

namespace A070951.P14339558297240242435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A265704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A070951.P14339558297240242435

/-! ## A070951.P15097363395876156032

`A005843(n+1)-(A265703(n+1)+1)`
-/

namespace A070951.P15097363395876156032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - (A265703 (n + 1) + 1)

end

end A070951.P15097363395876156032

/-! ## A070951.P15022242939916049254

`A023444(A265701(n+1))`
-/

namespace A070951.P15022242939916049254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A265701 (n + 1)).toNat

end

end A070951.P15022242939916049254

/-!
# A070952: Number of 1's in n-th generation of 1-D CA using Rule 30, started with a single 1.

The programs for A070952, there is no canonical definition to state claims against.
-/

/-! ## A070952.P3050019554506020354

`∑[A151929(n)]`
-/

namespace A070952.P3050019554506020354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070952.P3050019554506020354

/-! ## A070952.P13756194197033156021

`A246024(n)+n`
-/

namespace A070952.P13756194197033156021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 n + (n : ℤ)

end

end A070952.P13756194197033156021

/-! ## A070952.P12797173554721383738

`Δ[n²]-A070951(n)`
-/

namespace A070952.P12797173554721383738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A070951 n

end

end A070952.P12797173554721383738

/-! ## A070952.P11117060934546973533

`A265703(n)+A151929(n)`
-/

namespace A070952.P11117060934546973533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 n + A151929 n

end

end A070952.P11117060934546973533

/-! ## A070952.P1284590977704075949

`A110267(n)-A265704(n)`
-/

namespace A070952.P1284590977704075949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110267 n - A265704 n

end

end A070952.P1284590977704075949

/-! ## A070952.P16600840365126419461

`A265702(n)-A265224(n)`
-/

namespace A070952.P16600840365126419461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265702 n - A265224 n

end

end A070952.P16600840365126419461

/-! ## A070952.P17641079811122163929

`A110267(n+1)-(A151929(n+1)+A110267(n))`
-/

namespace A070952.P17641079811122163929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110267 (n + 1) - (A151929 (n + 1) + A110267 n)

end

end A070952.P17641079811122163929

/-! ## A070952.P3938225217929614828

`Δ[A265704(n)]`
-/

namespace A070952.P3938225217929614828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070952.P3938225217929614828

/-! ## A070952.P15220196778579787410

`A265703(n+1)`
-/

namespace A070952.P15220196778579787410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1)

end

end A070952.P15220196778579787410

/-! ## A070952.P6957676204404389258

`∑[2-Δ[A265701(n)]]`
-/

namespace A070952.P6957676204404389258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070952.P6957676204404389258

/-! ## A070952.P13742948408634033167

`2*n+3-A265701(n+1)`
-/

namespace A070952.P13742948408634033167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A265701 (n + 1)

end

end A070952.P13742948408634033167

/-! ## A070952.P11922474771214781844

`A265704(n+1)-A265704(n)`
-/

namespace A070952.P11922474771214781844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 (n + 1) - A265704 n

end

end A070952.P11922474771214781844

/-! ## A070952.P16706809126280520003

`∑[A265701(n)+2-A265701(n+1)]`
-/

namespace A070952.P16706809126280520003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n + (2 - A265701 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070952.P16706809126280520003

/-! ## A070952.P16693150249623281718

`A328105(n)-A110266(n+1)`
-/

namespace A070952.P16693150249623281718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328105 n - A110266 (n + 1)

end

end A070952.P16693150249623281718

/-!
# A070953: Order of the group GU(n,2), the general unitary n X n matrices over the finite field GF(4).

The programs for A070953, there is no canonical definition to state claims against.
-/

/-! ## A070953.P7331632376297138697

`∏[(-2)^n+2*4^n]`
-/

namespace A070953.P7331632376297138697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n + (2 * 4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070953.P7331632376297138697

/-! ## A070953.P4066856716879604983

`C(∑[2^n]+gcd(2, n), 2)*a(n-1)` with `a(0)=3`
-/

namespace A070953.P4066856716879604983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 n) 2 * a (n - 1)

end

end A070953.P4066856716879604983

/-! ## A070953.P5415042223959190013

`lcm(3, ∏[A003674(n+1)])`
-/

namespace A070953.P5415042223959190013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003674 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A070953.P5415042223959190013

/-! ## A070953.P14103494732745701040

`3*a(n-1)*Δ[A084152(n+1)]` with `a(0)=3`
-/

namespace A070953.P14103494732745701040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) * (f1 (n + 1) - f1 n)

end

end A070953.P14103494732745701040

/-!
# A070954: Emirps which when concatenated with their reversals after a 0 make a palindromic prime of the form emirp0prime.

The programs for A070954, there is no canonical definition to state claims against.
-/

/-! ## A070954.P9354243231152949347

`∩[A006567(n+1), A083988(n+1)]`
-/

namespace A070954.P9354243231152949347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P9354243231152949347

/-! ## A070954.P4731106860605019589

`∩[A007500(n+1), A083988(n+1)]`
-/

namespace A070954.P4731106860605019589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P4731106860605019589

/-! ## A070954.P279564833764453913

`∩[A083988(n+1), A085869(n+1)]`
-/

namespace A070954.P279564833764453913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P279564833764453913

/-! ## A070954.P17690249164959391339

`∩[A083988(n+1), A095179(n+1)]`
-/

namespace A070954.P17690249164959391339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P17690249164959391339

/-! ## A070954.P3940584553389342367

`∩[A083988(n+1), A000040(A156793(n+1))]`
-/

namespace A070954.P3940584553389342367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P3940584553389342367

/-! ## A070954.P1543066336016700379

`∩[A062895(n+1), A083988(n+1)]`
-/

namespace A070954.P1543066336016700379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P1543066336016700379

/-! ## A070954.P915599077808279486

`∩[A068893(n+1), A083988(n+1)]`
-/

namespace A070954.P915599077808279486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P915599077808279486

/-! ## A070954.P582535930938651982

`∩[A083988(n+1), A109019(n+1)]`
-/

namespace A070954.P582535930938651982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P582535930938651982

/-! ## A070954.P14138508338372140648

`∩[A083988(n+1), A350867(n+1)]`
-/

namespace A070954.P14138508338372140648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070954.P14138508338372140648

/-!
# A070956: Number of pairs (x,y) such that n = gcd(x,y) + lcm(x,y).

The programs for A070956, there is no canonical definition to state claims against.
-/

/-! ## A070956.P14106832612996086207

`∏{e}[n+1, #+1]-A071034(A071069(3*n+2))`
-/

namespace A070956.P14106832612996086207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A071034 (A071069 (3 * n + 2)).toNat

end

end A070956.P14106832612996086207

/-! ## A070956.P17035893270336803425

`A000005(n+1)-A361022(A139398(n+1))`
-/

namespace A070956.P17035893270336803425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A361022 (A139398 (n + 1)).toNat

end

end A070956.P17035893270336803425

/-! ## A070956.P3975606482130977656

`A000005(n+1)-A358194(A194119(n+4))`
-/

namespace A070956.P3975606482130977656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A358194 (A194119 (n + 4)).toNat

end

end A070956.P3975606482130977656

/-! ## A070956.P1426955193128813941

`A028422(n+1)+A001221(A273972(n))`
-/

namespace A070956.P1426955193128813941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + A001221 (A273972 n).toNat

end

end A070956.P1426955193128813941

/-! ## A070956.P12938491103719081598

`A000005(n+1)-A324290(A233247(n))`
-/

namespace A070956.P12938491103719081598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A324290 (A233247 n).toNat

end

end A070956.P12938491103719081598

/-!
# A070957: Primes p such that the equation sigma(x) = p has no solution.

The programs for A070957, there is no canonical definition to state claims against.
-/

/-! ## A070957.P12460018587650259789

`record[A000040(n+1)%A097018(n+1)]`
-/

namespace A070957.P12460018587650259789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A097018 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070957.P12460018587650259789

/-! ## A070957.P6681759344215341113

`p?[A378915(n+1)]`
-/

namespace A070957.P6681759344215341113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070957.P6681759344215341113

/-! ## A070957.P6159265507964107304

`filter[A378915(n+1), A010051(#)]`
-/

namespace A070957.P6159265507964107304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070957.P6159265507964107304

/-! ## A070957.P10804257841629172900

`filter[A378915(n+1), A323153(#)]`
-/

namespace A070957.P10804257841629172900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A070957.P10804257841629172900

/-! ## A070957.P16048198077977935058

`filter[A378915(n+2), A323152(#)]`
-/

namespace A070957.P16048198077977935058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378915 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A070957.P16048198077977935058

/-! ## A070957.P5974678548276226453

`∩[A093515(n+1), A378915(n+1)]`
-/

namespace A070957.P5974678548276226453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P5974678548276226453

/-! ## A070957.P13079386613928081649

`∩[A106843(n+1), A378915(n+1)]`
-/

namespace A070957.P13079386613928081649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P13079386613928081649

/-! ## A070957.P2666018795444023621

`record[p?[A257670(n+1)]]`
-/

namespace A070957.P2666018795444023621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070957.P2666018795444023621

/-! ## A070957.P2590997660273395643

`record[A257670(A151800(n))]`
-/

namespace A070957.P2590997660273395643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070957.P2590997660273395643

/-! ## A070957.P16784112013124577492

`record[A257670(A000040(n+1))]`
-/

namespace A070957.P16784112013124577492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070957.P16784112013124577492

/-! ## A070957.P5358258681301843141

`record[A257670(A006530(n+2))]`
-/

namespace A070957.P5358258681301843141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070957.P5358258681301843141

/-! ## A070957.P12613616891589479957

`record[A257670(A020639(n+2))]`
-/

namespace A070957.P12613616891589479957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070957.P12613616891589479957

/-! ## A070957.P10551961540249124943

`p?[A007369(n+1)]`
-/

namespace A070957.P10551961540249124943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070957.P10551961540249124943

/-! ## A070957.P8483001374084337611

`filter[A007369(n+1), A010051(#)]`
-/

namespace A070957.P8483001374084337611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A070957.P8483001374084337611

/-! ## A070957.P3324406007323819546

`∩[A000040(n+1), A007369(n+1)]`
-/

namespace A070957.P3324406007323819546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P3324406007323819546

/-! ## A070957.P2214310500387500220

`∩[A007369(n+1), A008578(n+1)]`
-/

namespace A070957.P2214310500387500220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P2214310500387500220

/-! ## A070957.P7733678815028114805

`∩[A007369(n+1), A045344(n+1)]`
-/

namespace A070957.P7733678815028114805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P7733678815028114805

/-! ## A070957.P3308578609951810407

`∩[A007369(n+1), A046022(n+1)]`
-/

namespace A070957.P3308578609951810407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P3308578609951810407

/-! ## A070957.P4948072366943678265

`∩[A007369(n+1), A093515(n+1)]`
-/

namespace A070957.P4948072366943678265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P4948072366943678265

/-! ## A070957.P3279948240935858020

`∩[A007369(n+1), A111688(n+1)]`
-/

namespace A070957.P3279948240935858020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070957.P3279948240935858020

/-!
# A070958: Numbers n such that the largest digit of n is the same as the largest digit of (sum of digits of n).

The programs for A070958, the canonical program `A070958.P2058158255106177248` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070958 has offset 1).

The definition of A070958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070958.P1013298056193573603

`eq[A004185(n)%30, A007953(n)]`
-/

namespace A070958.P1013298056193573603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070958.P1013298056193573603

namespace A070958

/-- `eq[A004185(n)%30, A007953(n)]` -/
def P1013298056193573603.Spec : Prop :=
  ∀ n, (P1013298056193573603.a n : ℤ) = A070958 (n + 1)

end A070958

/-! ## A070958.P2058158255106177248

`eq[A010879(A007953(n)), A054055(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A070958

/-- `eq[A010879(A007953(n)), A054055(n)]` -/
def P2058158255106177248.Spec : Prop :=
  ∀ n, (P2058158255106177248.a n : ℤ) = A070958 (n + 1)

theorem P2058158255106177248.correct : P2058158255106177248.Spec := by
  intro n
  simp only [A070958, Nat.add_sub_cancel]

end A070958

/-! ## A070958.P12840436434836782976

`eq[A054055(n), A054055(A062028(n)-n)]`
-/

namespace A070958.P12840436434836782976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070958.P12840436434836782976

namespace A070958

/-- `eq[A054055(n), A054055(A062028(n)-n)]` -/
def P12840436434836782976.Spec : Prop :=
  ∀ n, (P12840436434836782976.a n : ℤ) = A070958 (n + 1)

end A070958

/-! ## A070958.P7568690070408518746

`eq[A053837(n), A054055(n)]`
-/

namespace A070958.P7568690070408518746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070958.P7568690070408518746

namespace A070958

/-- `eq[A053837(n), A054055(n)]` -/
def P7568690070408518746.Spec : Prop :=
  ∀ n, (P7568690070408518746.a n : ℤ) = A070958 (n + 1)

theorem P7568690070408518746.correct : P7568690070408518746.Spec := by
  intro n
  simp only [A070958, Nat.add_sub_cancel, A070958.P7568690070408518746.f1, A070958.P7568690070408518746.f2, A070958.P7568690070408518746.a, A070958.P2058158255106177248.f1, A070958.P2058158255106177248.f2, A070958.P2058158255106177248.a, A007953, A007953.P3472751987379697826.a, A010879, A010879.P10561743211919002802.a, A053837, A053837.P1951223835563838367.a, A054055, A054055.P4613541377942540963.a, A054899, A054899.P10770181254942084517.a, A355222, A355222.P17906569904308679321.a, A054054, A054054.P1056175227029170886.a, A056142, A056142.P638140004868031470.a, A182324, A182324.P68523715600839783.a, A000030, A000030.P4990867543733972260.a, A059995, A059995.P135539884652528526.a, A275238, A275238.P2529277380881640300.a, A348783, A348783.P18337028565941183294.f1, A348783.P18337028565941183294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070958

/-! ## A070958.P18176507314720102260

`eq[A054055(n-A066568(n)), A054055(n)]`
-/

namespace A070958.P18176507314720102260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 ((n : ℤ) - A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070958.P18176507314720102260

namespace A070958

/-- `eq[A054055(n-A066568(n)), A054055(n)]` -/
def P18176507314720102260.Spec : Prop :=
  ∀ n, (P18176507314720102260.a n : ℤ) = A070958 (n + 1)

end A070958

/-!
# A070959: First minimum value > 0 of the form x^3-k^2 when k > n^3.

The programs for A070959, the canonical program `A070959.P15896875382652512971` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070959 has offset 1).

The definition of A070959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070959.P15896875382652512971

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=4, a(1)=4, a(2)=39, a(3)=13, a(4)=152, a(5)=28, a(6)=391, a(7)=49`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070959

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P15896875382652512971.Spec : Prop :=
  ∀ n, P15896875382652512971.a n = A070959 (n + 1)

theorem P15896875382652512971.correct : P15896875382652512971.Spec := by
  intro n
  simp only [A070959, Nat.add_sub_cancel]

end A070959

/-! ## A070959.P8248633126992773243

`A033428(A008619(n))+C(or(1, n), n)^3`
-/

namespace A070959.P8248633126992773243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (A008619 n).toNat + (Nat.choose (Nat.lor 1 n) n ^ 3 : ℤ)

end

end A070959.P8248633126992773243

namespace A070959

/-- `A033428(A008619(n))+C(or(1, n), n)^3` -/
def P8248633126992773243.Spec : Prop :=
  ∀ n, P8248633126992773243.a n = A070959 (n + 1)

end A070959

/-! ## A070959.P13262042026395212923

`A077116((n+1)²+1)`
-/

namespace A070959.P13262042026395212923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077116 ((n + 1) ^ 2 + 1)

end

end A070959.P13262042026395212923

namespace A070959

/-- `A077116((n+1)²+1)` -/
def P13262042026395212923.Spec : Prop :=
  ∀ n, P13262042026395212923.a n = A070959 (n + 1)

end A070959

/-! ## A070959.P12144855739517410002

`A154333((n+1)²+1)`
-/

namespace A070959.P12144855739517410002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154333 ((n + 1) ^ 2 + 1)

end

end A070959.P12144855739517410002

namespace A070959

/-- `A154333((n+1)²+1)` -/
def P12144855739517410002.Spec : Prop :=
  ∀ n, P12144855739517410002.a n = A070959 (n + 1)

end A070959

/-! ## A070959.P4406312199701691215

`A154333(A002522(n+1))%A054038(n+1)`
-/

namespace A070959.P4406312199701691215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154333 (A002522 (n + 1)).toNat) (A054038 (n + 1))

end

end A070959.P4406312199701691215

namespace A070959

/-- `A154333(A002522(n+1))%A054038(n+1)` -/
def P4406312199701691215.Spec : Prop :=
  ∀ n, P4406312199701691215.a n = A070959 (n + 1)

end A070959

/-!
# A070960: a(1) = 1; a(n) = n!*(3/2) for n>=2.

The programs for A070960, there is no canonical definition to state claims against.
-/

/-! ## A070960.P5796305827805703133

`∏[char[1]+1+n]`
-/

namespace A070960.P5796305827805703133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070960.P5796305827805703133

/-! ## A070960.P11154520145732309786

`floor(3/2*(n+1)!)`
-/

namespace A070960.P11154520145732309786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (Nat.factorial (n + 1) : ℚ)⌋

end

end A070960.P11154520145732309786

/-! ## A070960.P11786355749037641101

`(n+1)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A070960.P11786355749037641101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 1) * a (n - 1)

end

end A070960.P11786355749037641101

/-! ## A070960.P370592582040622673

`record[n*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A070960.P370592582040622673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070960.P370592582040622673

/-! ## A070960.P10778347717150667855

`∏[round(acot(n)+n)+1]/3`
-/

namespace A070960.P10778347717150667855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A070960.P10778347717150667855

/-! ## A070960.P4810460821022285335

`floor(∏[a(n-1)+1])` with `a(0)=1, a(1)=3, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A070960.P4810460821022285335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070960.P4810460821022285335

/-! ## A070960.P17072709215168899896

`ceil(∏[a(n-1)+1])` with `a(0)=1, a(1)=3, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A070960.P17072709215168899896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070960.P17072709215168899896

/-! ## A070960.P10951983975464167330

`∏[a(n-1)+1]/2` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A070960.P10951983975464167330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A070960.P10951983975464167330

/-! ## A070960.P15242535935093534091

`a(n-2)*∑[2*n]` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A070960.P15242535935093534091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070960.P15242535935093534091

/-! ## A070960.P14006605016572809210

`∏[C(2, n+1)+n+1]/3`
-/

namespace A070960.P14006605016572809210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 1) + (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A070960.P14006605016572809210

/-!
# A070961: a(n) = Card{ k<=n | bigomega(k) != bigomega(n) }.

The programs for A070961, there is no canonical definition to state claims against.
-/

/-! ## A070961.P17448318882024375663

`n-A335097(n+1)`
-/

namespace A070961.P17448318882024375663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A335097 (n + 1)

end

end A070961.P17448318882024375663

/-! ## A070961.P16866169240681479656

`1-A058933(n+1)+n`
-/

namespace A070961.P16866169240681479656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A058933 (n + 1) + (n : ℤ)

end

end A070961.P16866169240681479656

/-! ## A070961.P5505973433728926183

`1-(A058933(n-log2(1/2))-n)`
-/

namespace A070961.P5505973433728926183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A058933 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A070961.P5505973433728926183

/-! ## A070961.P12095132974166530871

`Δ[n²]-n-A058933(Δ[n²]-n)`
-/

namespace A070961.P12095132974166530871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) - A058933 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A070961.P12095132974166530871

/-! ## A070961.P283418590747238099

`A024000(A058933(n+1))+n`
-/

namespace A070961.P283418590747238099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A058933 (n + 1)).toNat + (n : ℤ)

end

end A070961.P283418590747238099

/-! ## A070961.P17418240924255673668

`-(A058933(n+1)+A001478(n+1))`
-/

namespace A070961.P17418240924255673668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A058933 (n + 1) + A001478 (n + 1))

end

end A070961.P17418240924255673668

/-! ## A070961.P7589956012892710804

`n-log2(Δ[A339511(n)])`
-/

namespace A070961.P7589956012892710804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339511 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A070961.P7589956012892710804

/-! ## A070961.P11221403291854163743

`A001489(log2(Δ[A339511(n)]))+n`
-/

namespace A070961.P11221403291854163743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat + (n : ℤ)

end

end A070961.P11221403291854163743

/-! ## A070961.P8071519032959981846

`1-A331295(A053024(n+1))+n`
-/

namespace A070961.P8071519032959981846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A331295 (A053024 (n + 1)).toNat + (n : ℤ)

end

end A070961.P8071519032959981846

/-! ## A070961.P14662073499965958966

`1-A331295(A020338(n+1))+n`
-/

namespace A070961.P14662073499965958966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A331295 (A020338 (n + 1)).toNat + (n : ℤ)

end

end A070961.P14662073499965958966

/-!
# A070962: a(n) = Card{ k<=n | omega(k)!=omega(n) }, where omega(n) = A001221(n).

The programs for A070962, there is no canonical definition to state claims against.
-/

/-! ## A070962.P1086283615053052154

`n-A334655(n+1)`
-/

namespace A070962.P1086283615053052154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A334655 (n + 1)

end

end A070962.P1086283615053052154

/-! ## A070962.P6835979605095532790

`1-A067003(n+1)+n`
-/

namespace A070962.P6835979605095532790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A067003 (n + 1) + (n : ℤ)

end

end A070962.P6835979605095532790

/-! ## A070962.P8509125474955437588

`1-(A067003(Δ[n²]-n)-n)`
-/

namespace A070962.P8509125474955437588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A067003 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A070962.P8509125474955437588

/-! ## A070962.P7738361432933978833

`n-log2(1/2)-A067003(n-log2(1/2))`
-/

namespace A070962.P7738361432933978833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A067003 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A070962.P7738361432933978833

/-! ## A070962.P14694060257039637683

`n-A023443(A067003(n+1))`
-/

namespace A070962.P14694060257039637683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A067003 (n + 1)).toNat

end

end A070962.P14694060257039637683

/-! ## A070962.P11213540859066534336

`A322841(n+1)+A322837(n+1)`
-/

namespace A070962.P11213540859066534336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (n + 1) + A322837 (n + 1)

end

end A070962.P11213540859066534336

/-! ## A070962.P13079341584554219585

`n-log2(Δ[A339512(n)])`
-/

namespace A070962.P13079341584554219585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A070962.P13079341584554219585

/-! ## A070962.P14295473226674411116

`n-val(Δ[A339512(n)], A020639(2*(n+1)))`
-/

namespace A070962.P14295473226674411116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A020639 (2 * (n + 1))).toNat : ℤ)

end

end A070962.P14295473226674411116

/-!
# A070964: a(n) = Sum_{1<=k<=n, gcd(k,n)=1} Fibonacci(k).

The programs for A070964, there is no canonical definition to state claims against.
-/

/-! ## A070964.P10747679420857303705

`A356874(A054432(n+1))`
-/

namespace A070964.P10747679420857303705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A054432 (n + 1)).toNat

end

end A070964.P10747679420857303705

/-!
# A070965: a(1) = 1; a(n+1) = sum{k|n} a(k) * mu(k), where the sum is over the positive divisors, k, of n; and mu(k) is the Moebius function.

The programs for A070965, there is no canonical definition to state claims against.
-/

/-! ## A070965.P13020811573066650701

`A016366(lcm(A005811(n), A131762(n)))`
-/

namespace A070965.P13020811573066650701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016366 (Int.lcm (A005811 n) (A131762 n))

end

end A070965.P13020811573066650701

/-! ## A070965.P630043053006262222

`A254651(n)-A121262(A210736(n))`
-/

namespace A070965.P630043053006262222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 n - A121262 (A210736 n).toNat

end

end A070965.P630043053006262222

/-! ## A070965.P8289713567065460875

`A010060(A085489(n+1))-A254379(n)`
-/

namespace A070965.P8289713567065460875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A085489 (n + 1)).toNat - A254379 n

end

end A070965.P8289713567065460875

/-! ## A070965.P1475513106453684974

`A117568(A000120(n)%A000005(A005578(n)))`
-/

namespace A070965.P1475513106453684974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (Int.tmod (A000120 n) (A000005 (A005578 n).toNat)).toNat

end

end A070965.P1475513106453684974

/-! ## A070965.P293651733884018928

`2-A358359(A088146(n+1))`
-/

namespace A070965.P293651733884018928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A358359 (A088146 (n + 1)).toNat

end

end A070965.P293651733884018928

/-!
# A070966: a(n) = Sum_{k|n, k<=sqrt(n)} phi(k); where the sum is over the positive divisors, k, of n, which are <= the square root of n; and phi(k) is the Euler totient function.

The programs for A070966, there is no canonical definition to state claims against.
-/

/-! ## A070966.P18082326485016916151

`A091238(A072499(n+1))`
-/

namespace A070966.P18082326485016916151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091238 (A072499 (n + 1)).toNat

end

end A070966.P18082326485016916151

/-! ## A070966.P17915647783827602326

`A275314(A072499(n+1)%A141214(n))`
-/

namespace A070966.P17915647783827602326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (Int.tmod (A072499 (n + 1)) (A141214 n)).toNat

end

end A070966.P17915647783827602326

/-! ## A070966.P8382120900393300907

`A257977(n+1)%A002907(n)`
-/

namespace A070966.P8382120900393300907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257977 (n + 1)) (A002907 n)

end

end A070966.P8382120900393300907

/-! ## A070966.P8576162042082274187

`and(A257977(n+1), A359085(n+1))`
-/

namespace A070966.P8576162042082274187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A257977 (n + 1)) (A359085 (n + 1))

end

end A070966.P8576162042082274187

/-!
# A070967: a(n) = Sum_{k=0..n} binomial(6*n,6*k).

The programs for A070967, there is no canonical definition to state claims against.
-/

/-! ## A070967.P13117101832041759384

`A378031(2*n)`
-/

namespace A070967.P13117101832041759384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378031 (2 * n)

end

end A070967.P13117101832041759384

/-! ## A070967.P10033646714214438666

`A377627(3*n)`
-/

namespace A070967.P10033646714214438666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377627 (3 * n)

end

end A070967.P10033646714214438666

/-! ## A070967.P8662009466513701754

`A094715(6*n)`
-/

namespace A070967.P8662009466513701754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094715 (6 * n)

end

end A070967.P8662009466513701754

/-! ## A070967.P12266008804858321146

`A306847(6*n)`
-/

namespace A070967.P12266008804858321146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (6 * n)

end

end A070967.P12266008804858321146

/-! ## A070967.P1055915064395571373

`A192355(3*n+1)`
-/

namespace A070967.P1055915064395571373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192355 (3 * n + 1)

end

end A070967.P1055915064395571373

/-! ## A070967.P14821587139310466509

`record[gcd(A134581(n), A306847(n))]`
-/

namespace A070967.P14821587139310466509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134581 n) (A306847 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070967.P14821587139310466509

/-! ## A070967.P12622503077045441420

`record[A192355(Δ[A093005(n+1)])]`
-/

namespace A070967.P12622503077045441420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192355 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070967.P12622503077045441420

/-! ## A070967.P6837692823124180714

`A306847(A008458(n))-A243836(n)`
-/

namespace A070967.P6837692823124180714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (A008458 n).toNat - A243836 n

end

end A070967.P6837692823124180714

/-! ## A070967.P3553005755905456905

`A306847(A008458(n))^A178334(n)`
-/

namespace A070967.P3553005755905456905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306847 (A008458 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A070967.P3553005755905456905

/-! ## A070967.P15712152215024203377

`A306847(A008458(n))+C(2, A000203(n+2))`
-/

namespace A070967.P15712152215024203377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (A008458 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A070967.P15712152215024203377

/-!
# A070968: Number of cycles in the complete bipartite graph K(n,n).

The programs for A070968, there is no canonical definition to state claims against.
-/

/-! ## A070968.P7867165726769326985

`A360854(n+1)-A288961(n+1)`
-/

namespace A070968.P7867165726769326985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360854 (n + 1) - A288961 (n + 1)

end

end A070968.P7867165726769326985

/-! ## A070968.P2071992865180613935

`A360854(n+1)-(A071238(n)-∑[n])`
-/

namespace A070968.P2071992865180613935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360854 (n + 1) - (A071238 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A070968.P2071992865180613935

/-! ## A070968.P9864164471544378193

`A360854(n+1)-∑[A000447(n)-n²]`
-/

namespace A070968.P9864164471544378193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360854 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070968.P9864164471544378193

/-! ## A070968.P15493837923735691984

`A360854(n+1)-(∑[n]+A330700(n)-n)`
-/

namespace A070968.P15493837923735691984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360854 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A330700 n - (n : ℤ)))

end

end A070968.P15493837923735691984

/-! ## A070968.P15846316382896989029

`A360854(n+1)-(A014820(n)-(n+1)^3)`
-/

namespace A070968.P15846316382896989029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360854 (n + 1) - (A014820 n - ((n + 1) ^ 3 : ℤ))

end

end A070968.P15846316382896989029

/-!
# A070969: a(n) = 2^(2^n + 1) + 1.

The programs for A070969, the canonical program `A070969.P8734940012539666366` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070969 has offset 0).

The definition of A070969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2^n+1)+1` (program `A070969.P8734940012539666366`, by `A070969.P8734940012539666366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070969.P8734940012539666366

`2^(2^n+1)+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070969

/-- `2^(2^n+1)+1` -/
def P8734940012539666366.Spec : Prop :=
  ∀ n, (P8734940012539666366.a n : ℤ) = A070969 n

theorem P8734940012539666366.correct : P8734940012539666366.Spec := by
  intro n
  simp only [A070969]

end A070969

/-! ## A070969.P446302849651495503

`xor(floor(a(n-1)²/2), a(n-1))` with `a(0)=5`
-/

namespace A070969.P446302849651495503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor ⌊(a (n - 1) ^ 2 : ℚ) / 2⌋ (a (n - 1))

end

end A070969.P446302849651495503

namespace A070969

/-- `xor(floor(a(n-1)²/2), a(n-1))` -/
def P446302849651495503.Spec : Prop :=
  ∀ n, P446302849651495503.a n = A070969 n

end A070969

/-! ## A070969.P7669889883989777426

`((a(n-1)-2)*a(n-1)+3)/2` with `a(0)=5`
-/

namespace A070969.P7669889883989777426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  ((a (n - 1) - 2) * a (n - 1) + 3) / 2

end

end A070969.P7669889883989777426

namespace A070969

/-- `((a(n-1)-2)*a(n-1)+3)/2` -/
def P7669889883989777426.Spec : Prop :=
  ∀ n, P7669889883989777426.a n = (A070969 n : ℚ)

theorem P7669889883989777426.correct : P7669889883989777426.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070969, Nat.add_sub_cancel, A070969.P7669889883989777426.a, A070969.P8734940012539666366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070969, Nat.add_sub_cancel, A070969.P7669889883989777426.a, A070969.P8734940012539666366.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070969

/-! ## A070969.P10108604880753152888

`(3-(2-a(n-1))*a(n-1))/2` with `a(0)=5`
-/

namespace A070969.P10108604880753152888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (3 - (2 - a (n - 1)) * a (n - 1)) / 2

end

end A070969.P10108604880753152888

namespace A070969

/-- `(3-(2-a(n-1))*a(n-1))/2` -/
def P10108604880753152888.Spec : Prop :=
  ∀ n, P10108604880753152888.a n = (A070969 n : ℚ)

theorem P10108604880753152888.correct : P10108604880753152888.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A070969, Nat.add_sub_cancel, A070969.P10108604880753152888.a, A070969.P8734940012539666366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A070969, Nat.add_sub_cancel, A070969.P10108604880753152888.a, A070969.P8734940012539666366.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A070969

/-! ## A070969.P7402386478618779244

`A048578(2^n)`
-/

namespace A070969.P7402386478618779244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (2 ^ n)

end

end A070969.P7402386478618779244

namespace A070969

/-- `A048578(2^n)` -/
def P7402386478618779244.Spec : Prop :=
  ∀ n, P7402386478618779244.a n = A070969 n

end A070969

/-!
# A070971: a(n) is the smallest positive integer m for which A070194(m) (i.e., the maximal gap in {k|gcd(k,m) = 1, 1 <= k <= m-1}) is n.

The programs for A070971, there is no canonical definition to state claims against.
-/

/-! ## A070971.P16624144080891700724

`round(A128759(n+1)+acot(A008911(n)))`
-/

namespace A070971.P16624144080891700724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A128759 (n + 1) : ℝ) + SequenceMachineLib.acot (A008911 n : ℝ))

end

end A070971.P16624144080891700724

/-! ## A070971.P14702287774985694888

`A128759(n+1)+A000122(A000041(n))`
-/

namespace A070971.P14702287774985694888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128759 (n + 1) + A000122 (A000041 n).toNat

end

end A070971.P14702287774985694888

/-! ## A070971.P16318393041992199091

`A128759(n+1)+A000122(A332280(n))`
-/

namespace A070971.P16318393041992199091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128759 (n + 1) + A000122 (A332280 n).toNat

end

end A070971.P16318393041992199091

/-! ## A070971.P8768656951676869080

`A014963(A070260(n+1))*A128759(n+1)`
-/

namespace A070971.P8768656951676869080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A070260 (n + 1)).toNat * A128759 (n + 1)

end

end A070971.P8768656951676869080

/-! ## A070971.P3910399911871665964

`A014963(A176045(n+1))*A128759(n+1)`
-/

namespace A070971.P3910399911871665964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A176045 (n + 1)).toNat * A128759 (n + 1)

end

end A070971.P3910399911871665964

/-!
# A070974: Number of steps to reach 1 in `3x+1' (or Collatz) problem starting with n!.

The programs for A070974, there is no canonical definition to state claims against.
-/

/-! ## A070974.P13286658259763222017

`A081613(n+1)-1`
-/

namespace A070974.P13286658259763222017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081613 (n + 1) - 1

end

end A070974.P13286658259763222017

/-! ## A070974.P11323089474705249688

`Δ[∑[A081613(n)]-n]`
-/

namespace A070974.P11323089474705249688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070974.P11323089474705249688

/-! ## A070974.P625205987472840317

`∑[Δ[A081613(n)]*A057427(n)]`
-/

namespace A070974.P625205987472840317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070974.P625205987472840317

/-! ## A070974.P14397615303796609024

`∑[Δ[A081613(n)]%A017057(n)]`
-/

namespace A070974.P14397615303796609024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070974.P14397615303796609024

/-! ## A070974.P5027432327227831841

`A317950(gcd(n, n+1))+A081613(n+1)`
-/

namespace A070974.P5027432327227831841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (Nat.gcd n (n + 1)) + A081613 (n + 1)

end

end A070974.P5027432327227831841

/-! ## A070974.P11630732597933867689

`A023443(A081613(n+1))`
-/

namespace A070974.P11630732597933867689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081613 (n + 1)).toNat

end

end A070974.P11630732597933867689

/-! ## A070974.P10903962624798880493

`A289207(A081613(n+1)+1)`
-/

namespace A070974.P10903962624798880493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A081613 (n + 1) + 1).toNat

end

end A070974.P10903962624798880493

/-! ## A070974.P4578090061498972742

`A332823(A332822(n+1))+A081613(n+1)`
-/

namespace A070974.P4578090061498972742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A332822 (n + 1)).toNat + A081613 (n + 1)

end

end A070974.P4578090061498972742

/-!
# A070975: Number of steps to reach 1 in `3x+1' (or Collatz) problem starting with prime(n).

The programs for A070975, there is no canonical definition to state claims against.
-/

/-! ## A070975.P4132662479249872888

`A246009(n+1)-1`
-/

namespace A070975.P4132662479249872888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246009 (n + 1) - 1

end

end A070975.P4132662479249872888

/-! ## A070975.P9256848010841361337

`A023443(A246009(n+1))`
-/

namespace A070975.P9256848010841361337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A246009 (n + 1)).toNat

end

end A070975.P9256848010841361337

/-! ## A070975.P18163965254369864945

`A006577(Δ[A007504(n)])`
-/

namespace A070975.P18163965254369864945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (n + 1) - f1 n).toNat

end

end A070975.P18163965254369864945

/-! ## A070975.P10905654632811357322

`A006577(A000040(n+1))`
-/

namespace A070975.P10905654632811357322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A000040 (n + 1)).toNat

end

end A070975.P10905654632811357322

/-! ## A070975.P6399054135005559374

`A006577(A008578(n+2))`
-/

namespace A070975.P6399054135005559374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A008578 (n + 2)).toNat

end

end A070975.P6399054135005559374

/-! ## A070975.P13061284624554367260

`A006577(A182986(n+2))`
-/

namespace A070975.P13061284624554367260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A182986 (n + 2)).toNat

end

end A070975.P13061284624554367260

/-! ## A070975.P7028604205478900634

`A006577(eq[1, A003415(n)])`
-/

namespace A070975.P7028604205478900634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070975.P7028604205478900634

/-! ## A070975.P7454296202241827179

`A006577(eq[1, A018783(n)])`
-/

namespace A070975.P7454296202241827179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070975.P7454296202241827179

/-! ## A070975.P12695104913477474855

`A006577(record[A006530(n+2)])`
-/

namespace A070975.P12695104913477474855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070975.P12695104913477474855

/-! ## A070975.P11927735403863041476

`A006577(record[A014963(n+2)])`
-/

namespace A070975.P11927735403863041476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070975.P11927735403863041476

/-! ## A070975.P16169264988865278284

`A006577(record[A020639(n+2)])`
-/

namespace A070975.P16169264988865278284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070975.P16169264988865278284

/-! ## A070975.P3295561161611587453

`A006577(p?[A206074(n+1)])`
-/

namespace A070975.P3295561161611587453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A070975.P3295561161611587453

/-! ## A070975.P10829882230274074460

`A006577(A082500(2*(n+1)))`
-/

namespace A070975.P10829882230274074460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A082500 (2 * (n + 1))).toNat

end

end A070975.P10829882230274074460

/-! ## A070975.P17205423239296772893

`A006577(A100484(n+1)/2)`
-/

namespace A070975.P17205423239296772893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A070975.P17205423239296772893

/-! ## A070975.P11678218211903956966

`A006577(A001747(n+2)/2)`
-/

namespace A070975.P11678218211903956966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A070975.P11678218211903956966

/-! ## A070975.P15067125485801230040

`A006577(record[A000010(n+1)+1])`
-/

namespace A070975.P15067125485801230040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070975.P15067125485801230040

/-! ## A070975.P16482680608173503425

`A008908(record[A006530(n+2)])-1`
-/

namespace A070975.P16482680608173503425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A070975.P16482680608173503425

/-! ## A070975.P13867535579407809683

`A008908(record[A020639(n+2)])-1`
-/

namespace A070975.P13867535579407809683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A070975.P13867535579407809683

/-! ## A070975.P2281688956615161517

`A008908(p?[A323309(n+1)])-1`
-/

namespace A070975.P2281688956615161517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A070975.P2281688956615161517

/-! ## A070975.P7575942020422616258

`A006577(eq[1, A001222(n+1)]+1)`
-/

namespace A070975.P7575942020422616258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A070975.P7575942020422616258

/-!
# A070976: Number of steps to reach 1 in '3x+1' (or Collatz) problem starting with 3^n.

The programs for A070976, there is no canonical definition to state claims against.
-/

/-! ## A070976.P15310017040363353868

`A074472(n)-1`
-/

namespace A070976.P15310017040363353868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074472 n - 1

end

end A070976.P15310017040363353868

/-! ## A070976.P4821299236783400279

`A057427(n)*A075487(n+1)`
-/

namespace A070976.P4821299236783400279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A075487 (n + 1)

end

end A070976.P4821299236783400279

/-! ## A070976.P3826962706982072395

`A075487(n+1)%A074472(n)`
-/

namespace A070976.P3826962706982072395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075487 (n + 1)) (A074472 n)

end

end A070976.P3826962706982072395

/-! ## A070976.P4969431966681033044

`and(A057428(n), A075487(n+1))`
-/

namespace A070976.P4969431966681033044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A075487 (n + 1))

end

end A070976.P4969431966681033044

/-! ## A070976.P15669332547301756018

`(A212653(n+1)+1)%A005714(n+3)`
-/

namespace A070976.P15669332547301756018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212653 (n + 1) + 1) (A005714 (n + 3))

end

end A070976.P15669332547301756018

/-! ## A070976.P6738985671345379729

`(A134869(n+1)-∑[n+1])*A075487(n+1)`
-/

namespace A070976.P6738985671345379729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134869 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A075487 (n + 1)

end

end A070976.P6738985671345379729

/-! ## A070976.P9756448795726035687

`A086831(A000040(2*(n+2)))+A074472(n)`
-/

namespace A070976.P9756448795726035687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (A000040 (2 * (n + 2))).toNat + A074472 n

end

end A070976.P9756448795726035687

/-! ## A070976.P1181387158045218181

`A086831(A121764(n+1))+A074472(n)`
-/

namespace A070976.P1181387158045218181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (A121764 (n + 1)).toNat + A074472 n

end

end A070976.P1181387158045218181

/-! ## A070976.P13873694765104271865

`A086831(A238056(n+1))+A074472(n)`
-/

namespace A070976.P13873694765104271865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (A238056 (n + 1)).toNat + A074472 n

end

end A070976.P13873694765104271865

/-! ## A070976.P1769082564008000355

`A023443(A074472(n))`
-/

namespace A070976.P1769082564008000355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074472 n).toNat

end

end A070976.P1769082564008000355

/-!
# A070977: Smallest k such that zeta(3)-sum(i=1,k,1/i^3) <= zeta(4)-sum(i=1,n,1/i^4).

The programs for A070977, there is no canonical definition to state claims against.
-/

/-! ## A070977.P10344779477278610568

`A065981(n+1)+1`
-/

namespace A070977.P10344779477278610568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065981 (n + 1) + 1

end

end A070977.P10344779477278610568

/-! ## A070977.P3349907307464398614

`A020725(A065981(n+1))`
-/

namespace A070977.P3349907307464398614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A065981 (n + 1)).toNat

end

end A070977.P3349907307464398614

/-! ## A070977.P7377340730453344787

`A077074(n+2)-1`
-/

namespace A070977.P7377340730453344787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077074 (n + 2) - 1

end

end A070977.P7377340730453344787

/-! ## A070977.P12580398871174097027

`A233583(A077074(n+2))`
-/

namespace A070977.P12580398871174097027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A077074 (n + 2)).toNat

end

end A070977.P12580398871174097027

/-! ## A070977.P6169949486594885474

`record[A077074(n)-A057427(n)]`
-/

namespace A070977.P6169949486594885474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077074 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070977.P6169949486594885474

/-!
# A070978: Smallest k such that zeta(4)-sum(i=1,k,1/i^4) <= zeta(5)-sum(i=1,n,1/i^5).

The programs for A070978, there is no canonical definition to state claims against.
-/

/-! ## A070978.P17015536714095924761

`A077075(n+2)-1`
-/

namespace A070978.P17015536714095924761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077075 (n + 2) - 1

end

end A070978.P17015536714095924761

/-! ## A070978.P3741655121176614511

`record[A077075(n)-ceil(sin(n)²)]`
-/

namespace A070978.P3741655121176614511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077075 n - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070978.P3741655121176614511

/-! ## A070978.P192135065461263140

`A023443(A077075(n+2))`
-/

namespace A070978.P192135065461263140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077075 (n + 2)).toNat

end

end A070978.P192135065461263140

/-! ## A070978.P7508867075194910863

`record[A077075(n)+A057428(n)]`
-/

namespace A070978.P7508867075194910863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077075 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070978.P7508867075194910863

/-! ## A070978.P2358202107226276568

`record[A077075(n)-A057427(n)]`
-/

namespace A070978.P2358202107226276568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077075 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070978.P2358202107226276568

/-! ## A070978.P1967935314095430297

`record[A233583(A077075(A008611(n)))]`
-/

namespace A070978.P1967935314095430297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A077075 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070978.P1967935314095430297

/-! ## A070978.P5000264271783897662

`record[A233583(A077075(A022290(n)))]`
-/

namespace A070978.P5000264271783897662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A077075 (A022290 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070978.P5000264271783897662

/-!
# A070979: Triangle read by rows giving size of minimal asymmetric covering code of length n and radius R.

The programs for A070979, there is no canonical definition to state claims against.
-/

/-! ## A070979.P11943096206001085877

`A381524(A092288(n+1))`
-/

namespace A070979.P11943096206001085877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A092288 (n + 1)).toNat

end

end A070979.P11943096206001085877

/-! ## A070979.P2722303434960639664

`A339276(A164881(n+1))`
-/

namespace A070979.P2722303434960639664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A164881 (n + 1)).toNat

end

end A070979.P2722303434960639664

/-! ## A070979.P9872210277451756331

`A097576(4*A235670(n))`
-/

namespace A070979.P9872210277451756331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 (4 * A235670 n).toNat

end

end A070979.P9872210277451756331

/-! ## A070979.P8693391840692316882

`A097576(4*A140740(n+1))`
-/

namespace A070979.P8693391840692316882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 (4 * A140740 (n + 1)).toNat

end

end A070979.P8693391840692316882

/-!
# A070980: Numbers k such that the number of steps to reach 1 in '3x+1' problem equals tau(k), the number of divisors of k.

The programs for A070980, there is no canonical definition to state claims against.
-/

/-! ## A070980.P16565590297823664790

`A014681(eq[A006577(n+1), A096737(n+1)])`
-/

namespace A070980.P16565590297823664790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070980.P16565590297823664790

/-!
# A070982: Smallest integer k such that n divides sigma(k).

The programs for A070982, there is no canonical definition to state claims against.
-/

/-! ## A070982.P4445376495213083255

`A051444(A085961(n+1))`
-/

namespace A070982.P4445376495213083255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A085961 (n + 1)).toNat

end

end A070982.P4445376495213083255

/-! ## A070982.P16293158879210814265

`A233929(A085961(n+1)+1)`
-/

namespace A070982.P16293158879210814265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A085961 (n + 1) + 1).toNat

end

end A070982.P16293158879210814265

/-! ## A070982.P4229170409713533242

`A051444((n+1)*A283495(n+1))`
-/

namespace A070982.P4229170409713533242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 ((n + 1 : ℤ) * A283495 (n + 1)).toNat

end

end A070982.P4229170409713533242

/-! ## A070982.P16224676251453308869

`A233929((n+1)*A283495(n+1)+1)`
-/

namespace A070982.P16224676251453308869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 ((n + 1 : ℤ) * A283495 (n + 1) + 1).toNat

end

end A070982.P16224676251453308869

/-! ## A070982.P16226081788195996619

`A074625(∑[n+1])`
-/

namespace A070982.P16226081788195996619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070982.P16226081788195996619

/-!
# A070984: a(n) = k such that (k-1)*log(k-1) < n < k*log(k).

The programs for A070984, the canonical program `A070984.P8562650798820688543` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070984 has offset 1).

The definition of A070984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070984.P8562650798820688543

`ceil((n+1)/log(a(n-1)))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070984

/-- `ceil((n+1)/log(a(n-1)))` -/
def P8562650798820688543.Spec : Prop :=
  ∀ n, P8562650798820688543.a n = A070984 (n + 1)

theorem P8562650798820688543.correct : P8562650798820688543.Spec := by
  intro n
  simp only [A070984, Nat.add_sub_cancel]

end A070984

/-! ## A070984.P14981911259297049398

`floor((n+1)/log(a(n-1)))+1` with `a(0)=2`
-/

namespace A070984.P14981911259297049398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(n + 1 : ℝ) / Real.log (a (n - 1) : ℝ)⌋ + 1

end

end A070984.P14981911259297049398

namespace A070984

/-- `floor((n+1)/log(a(n-1)))+1` -/
def P14981911259297049398.Spec : Prop :=
  ∀ n, P14981911259297049398.a n = A070984 (n + 1)

end A070984

/-! ## A070984.P6924579062830343858

`∑[char[floor((n+1)*log(n+1))]]+1`
-/

namespace A070984.P6924579062830343858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070984.P6924579062830343858

namespace A070984

/-- `∑[char[floor((n+1)*log(n+1))]]+1` -/
def P6924579062830343858.Spec : Prop :=
  ∀ n, (P6924579062830343858.a n : ℤ) = A070984 (n + 1)

end A070984

/-! ## A070984.P13236749708615164882

`(A225545(n+1)+1)%(n+3)`
-/

namespace A070984.P13236749708615164882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225545 (n + 1) + 1) (n + 3 : ℤ)

end

end A070984.P13236749708615164882

namespace A070984

/-- `(A225545(n+1)+1)%(n+3)` -/
def P13236749708615164882.Spec : Prop :=
  ∀ n, P13236749708615164882.a n = A070984 (n + 1)

end A070984

/-! ## A070984.P6790348827177204838

`A020725(A225545(n+1))`
-/

namespace A070984.P6790348827177204838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A225545 (n + 1)).toNat

end

end A070984.P6790348827177204838

namespace A070984

/-- `A020725(A225545(n+1))` -/
def P6790348827177204838.Spec : Prop :=
  ∀ n, P6790348827177204838.a n = A070984 (n + 1)

end A070984

/-! ## A070984.P6905634472546982141

`ceil(log2(exp((n+1)/log2(a(n-1)))))` with `a(0)=2`
-/

namespace A070984.P6905634472546982141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.logb 2 (Real.exp ((n + 1 : ℝ) / Real.logb 2 (a (n - 1) : ℝ)))⌉

end

end A070984.P6905634472546982141

namespace A070984

/-- `ceil(log2(exp((n+1)/log2(a(n-1)))))` -/
def P6905634472546982141.Spec : Prop :=
  ∀ n, P6905634472546982141.a n = A070984 (n + 1)

end A070984

/-!
# A070990: First differences of A002487.

The programs for A070990, the canonical program `A070990.P8890907964988409263` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070990 has offset 0).

The definition of A070990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070990.P8890907964988409263

`Δ[A324337(A003188(n+2))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070990

/-- `Δ[A324337(A003188(n+2))]` -/
def P8890907964988409263.Spec : Prop :=
  ∀ n, P8890907964988409263.a n = A070990 n

theorem P8890907964988409263.correct : P8890907964988409263.Spec := by
  intro n
  simp only [A070990]

end A070990

/-! ## A070990.P31599204556156170

`Δ[Δ[A007729(n)]]`
-/

namespace A070990.P31599204556156170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P31599204556156170

namespace A070990

/-- `Δ[Δ[A007729(n)]]` -/
def P31599204556156170.Spec : Prop :=
  ∀ n, P31599204556156170.a n = A070990 n

end A070990

/-! ## A070990.P15594796763513701583

`∑[A283104(n+1)]`
-/

namespace A070990.P15594796763513701583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070990.P15594796763513701583

namespace A070990

/-- `∑[A283104(n+1)]` -/
def P15594796763513701583.Spec : Prop :=
  ∀ n, P15594796763513701583.a n = A070990 n

end A070990

/-! ## A070990.P8874739189858602383

`(A071883(n+1)-A070871(n+1))/A002487(n+1)`
-/

namespace A070990.P8874739189858602383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071883 (n + 1) - A070871 (n + 1) : ℚ) / (A002487 (n + 1) : ℚ)

end

end A070990.P8874739189858602383

namespace A070990

/-- `(A071883(n+1)-A070871(n+1))/A002487(n+1)` -/
def P8874739189858602383.Spec : Prop :=
  ∀ n, P8874739189858602383.a n = (A070990 n : ℚ)

end A070990

/-! ## A070990.P9865559751831615008

`A002487(n+1)-A288002(n+2)-A288002(n+2)`
-/

namespace A070990.P9865559751831615008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A288002 (n + 2) - A288002 (n + 2)

end

end A070990.P9865559751831615008

namespace A070990

/-- `A002487(n+1)-A288002(n+2)-A288002(n+2)` -/
def P9865559751831615008.Spec : Prop :=
  ∀ n, P9865559751831615008.a n = A070990 n

end A070990

/-! ## A070990.P13800680988159284020

`Δ[A002487(n+2)]`
-/

namespace A070990.P13800680988159284020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P13800680988159284020

namespace A070990

/-- `Δ[A002487(n+2)]` -/
def P13800680988159284020.Spec : Prop :=
  ∀ n, P13800680988159284020.a n = A070990 n

end A070990

/-! ## A070990.P5965969404011014822

`Δ[Δ[A174868(n+1)]]`
-/

namespace A070990.P5965969404011014822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P5965969404011014822

namespace A070990

/-- `Δ[Δ[A174868(n+1)]]` -/
def P5965969404011014822.Spec : Prop :=
  ∀ n, P5965969404011014822.a n = A070990 n

end A070990

/-! ## A070990.P10327635314992870859

`Δ[A324337(A233280(n+1))]`
-/

namespace A070990.P10327635314992870859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A233280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P10327635314992870859

namespace A070990

/-- `Δ[A324337(A233280(n+1))]` -/
def P10327635314992870859.Spec : Prop :=
  ∀ n, P10327635314992870859.a n = A070990 n

end A070990

/-! ## A070990.P10973325559325994482

`Δ[A007306(A003602(n+2))]`
-/

namespace A070990.P10973325559325994482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P10973325559325994482

namespace A070990

/-- `Δ[A007306(A003602(n+2))]` -/
def P10973325559325994482.Spec : Prop :=
  ∀ n, P10973325559325994482.a n = A070990 n

end A070990

/-! ## A070990.P292888349636415388

`A002487(n+3)-A002487(n+2)`
-/

namespace A070990.P292888349636415388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 3) - A002487 (n + 2)

end

end A070990.P292888349636415388

namespace A070990

/-- `A002487(n+3)-A002487(n+2)` -/
def P292888349636415388.Spec : Prop :=
  ∀ n, P292888349636415388.a n = A070990 n

end A070990

/-! ## A070990.P11811063470424506789

`1-Δ[A284013(n+2)]`
-/

namespace A070990.P11811063470424506789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A070990.P11811063470424506789

namespace A070990

/-- `1-Δ[A284013(n+2)]` -/
def P11811063470424506789.Spec : Prop :=
  ∀ n, P11811063470424506789.a n = A070990 n

end A070990

/-! ## A070990.P2333897490861008030

`Δ[A324338(A233280(n+2))]`
-/

namespace A070990.P2333897490861008030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A233280 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P2333897490861008030

namespace A070990

/-- `Δ[A324338(A233280(n+2))]` -/
def P2333897490861008030.Spec : Prop :=
  ∀ n, P2333897490861008030.a n = A070990 n

end A070990

/-! ## A070990.P1464427717323825745

`Δ[A020650(A231550(n+1))]`
-/

namespace A070990.P1464427717323825745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A231550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P1464427717323825745

namespace A070990

/-- `Δ[A020650(A231550(n+1))]` -/
def P1464427717323825745.Spec : Prop :=
  ∀ n, P1464427717323825745.a n = A070990 n

end A070990

/-! ## A070990.P6923151320360732921

`Δ[A317840(2*(n+2))]`
-/

namespace A070990.P6923151320360732921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P6923151320360732921

namespace A070990

/-- `Δ[A317840(2*(n+2))]` -/
def P6923151320360732921.Spec : Prop :=
  ∀ n, P6923151320360732921.a n = A070990 n

end A070990

/-! ## A070990.P12982074959180970546

`A283104(2*n+1)+A283104(n+1)-A007306(n+1)`
-/

namespace A070990.P12982074959180970546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (2 * n + 1) + (A283104 (n + 1) - A007306 (n + 1))

end

end A070990.P12982074959180970546

namespace A070990

/-- `A283104(2*n+1)+A283104(n+1)-A007306(n+1)` -/
def P12982074959180970546.Spec : Prop :=
  ∀ n, P12982074959180970546.a n = A070990 n

end A070990

/-! ## A070990.P2637486427051298448

`A283104(2*n+1)+A283104(2*n)+A283104(n+1)`
-/

namespace A070990.P2637486427051298448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (2 * n + 1) + (A283104 (2 * n) + A283104 (n + 1))

end

end A070990.P2637486427051298448

namespace A070990

/-- `A283104(2*n+1)+A283104(2*n)+A283104(n+1)` -/
def P2637486427051298448.Spec : Prop :=
  ∀ n, P2637486427051298448.a n = A070990 n

end A070990

/-! ## A070990.P6394781253131873308

`A283104(2*n+3)-A007306(n+2)`
-/

namespace A070990.P6394781253131873308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (2 * n + 3) - A007306 (n + 2)

end

end A070990.P6394781253131873308

namespace A070990

/-- `A283104(2*n+3)-A007306(n+2)` -/
def P6394781253131873308.Spec : Prop :=
  ∀ n, P6394781253131873308.a n = A070990 n

end A070990

/-! ## A070990.P17312208008485902559

`A283104(2*(n+1))+A283104(2*n+3)`
-/

namespace A070990.P17312208008485902559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (2 * (n + 1)) + A283104 (2 * n + 3)

end

end A070990.P17312208008485902559

namespace A070990

/-- `A283104(2*(n+1))+A283104(2*n+3)` -/
def P17312208008485902559.Spec : Prop :=
  ∀ n, P17312208008485902559.a n = A070990 n

end A070990

/-! ## A070990.P15409433896735511193

`Δ[A127971(2*n+3)]`
-/

namespace A070990.P15409433896735511193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P15409433896735511193

namespace A070990

/-- `Δ[A127971(2*n+3)]` -/
def P15409433896735511193.Spec : Prop :=
  ∀ n, P15409433896735511193.a n = A070990 n

end A070990

/-! ## A070990.P16859314017216809303

`Δ[A288003(2*n+3)]`
-/

namespace A070990.P16859314017216809303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P16859314017216809303

namespace A070990

/-- `Δ[A288003(2*n+3)]` -/
def P16859314017216809303.Spec : Prop :=
  ∀ n, P16859314017216809303.a n = A070990 n

end A070990

/-!
# A070991: Numbers n such that the trajectory of n under the `3x+1' map reaches n - 1.

The programs for A070991, there is no canonical definition to state claims against.
-/

/-! ## A070991.P17246058327302723708

`record[gcd(n+2, A187831(n+1))]`
-/

namespace A070991.P17246058327302723708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A187831 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070991.P17246058327302723708

/-! ## A070991.P8744349469342141567

`eq[n+1, A225840(n+2)]+2`
-/

namespace A070991.P8744349469342141567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225840 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070991.P8744349469342141567

/-! ## A070991.P10048751616646982743

`eq[A087156(n+1), A187831(n)]+1`
-/

namespace A070991.P10048751616646982743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070991.P10048751616646982743

/-! ## A070991.P7500001151938523112

`eq[A178915(n+1), A187831(n)]+1`
-/

namespace A070991.P7500001151938523112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070991.P7500001151938523112

/-! ## A070991.P8191141393805117221

`A020725(eq[A087156(n+1), A187831(n)])`
-/

namespace A070991.P8191141393805117221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070991.P8191141393805117221

/-!
# A070992: Partial sums of A002487.

The programs for A070992, the canonical program `A070992.P10139312046146458352` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070992 has offset 0).

The definition of A070992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070992.P10139312046146458352

`∑[abs(Δ[A007729(n)])]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070992

/-- `∑[abs(Δ[A007729(n)])]` -/
def P10139312046146458352.Spec : Prop :=
  ∀ n, P10139312046146458352.a n = A070992 n

theorem P10139312046146458352.correct : P10139312046146458352.Spec := by
  intro n
  simp only [A070992]

end A070992

/-! ## A070992.P11443961851811561

`A007729(n+1)-1`
-/

namespace A070992.P11443961851811561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 (n + 1) - 1

end

end A070992.P11443961851811561

namespace A070992

/-- `A007729(n+1)-1` -/
def P11443961851811561.Spec : Prop :=
  ∀ n, P11443961851811561.a n = A070992 n

end A070992

/-! ## A070992.P10201458733287428634

`∑[A245328(A284460(n+1))]`
-/

namespace A070992.P10201458733287428634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A284460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P10201458733287428634

namespace A070992

/-- `∑[A245328(A284460(n+1))]` -/
def P10201458733287428634.Spec : Prop :=
  ∀ n, P10201458733287428634.a n = A070992 n

end A070992

/-! ## A070992.P16119848632622042144

`∑[A324337(A003188(n+2))]`
-/

namespace A070992.P16119848632622042144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P16119848632622042144

namespace A070992

/-- `∑[A324337(A003188(n+2))]` -/
def P16119848632622042144.Spec : Prop :=
  ∀ n, P16119848632622042144.a n = A070992 n

end A070992

/-! ## A070992.P3616922062532033258

`∑[A245327(A284460(n+2))]`
-/

namespace A070992.P3616922062532033258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A284460 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P3616922062532033258

namespace A070992

/-- `∑[A245327(A284460(n+2))]` -/
def P3616922062532033258.Spec : Prop :=
  ∀ n, P3616922062532033258.a n = A070992 n

end A070992

/-! ## A070992.P1721088169827239614

`A301977(n+1)+A174868(n)`
-/

namespace A070992.P1721088169827239614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301977 (n + 1) + A174868 n

end

end A070992.P1721088169827239614

namespace A070992

/-- `A301977(n+1)+A174868(n)` -/
def P1721088169827239614.Spec : Prop :=
  ∀ n, P1721088169827239614.a n = A070992 n

theorem P1721088169827239614.correct : P1721088169827239614.Spec := by
  intro n
  simp only [A070992, Nat.add_sub_cancel, A070992.P1721088169827239614.a, A070992.P10139312046146458352.f2, A070992.P10139312046146458352.f1, A070992.P10139312046146458352.a, A007729, A007729.P2856163913979848745.a, A174868, A174868.P8863606013298281785.f1, A174868.P8863606013298281785.a, A301977, A301977.P124265642836154627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070992

/-! ## A070992.P14263285423538452965

`∑[Δ[A007729(n)]%A000040(n+1)]`
-/

namespace A070992.P14263285423538452965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P14263285423538452965

namespace A070992

/-- `∑[Δ[A007729(n)]%A000040(n+1)]` -/
def P14263285423538452965.Spec : Prop :=
  ∀ n, P14263285423538452965.a n = A070992 n

end A070992

/-! ## A070992.P4361790646506839796

`∑[A317838(n+2)-A317837(n+2)]`
-/

namespace A070992.P4361790646506839796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317838 (n + 2) - A317837 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P4361790646506839796

namespace A070992

/-- `∑[A317838(n+2)-A317837(n+2)]` -/
def P4361790646506839796.Spec : Prop :=
  ∀ n, P4361790646506839796.a n = A070992 n

end A070992

/-! ## A070992.P18257902959627611490

`∑[A002487(n+2)]`
-/

namespace A070992.P18257902959627611490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P18257902959627611490

namespace A070992

/-- `∑[A002487(n+2)]` -/
def P18257902959627611490.Spec : Prop :=
  ∀ n, P18257902959627611490.a n = A070992 n

end A070992

/-! ## A070992.P6136562376919193422

`A174868(n+2)-1`
-/

namespace A070992.P6136562376919193422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 2) - 1

end

end A070992.P6136562376919193422

namespace A070992

/-- `A174868(n+2)-1` -/
def P6136562376919193422.Spec : Prop :=
  ∀ n, P6136562376919193422.a n = A070992 n

end A070992

/-! ## A070992.P1706094269387708619

`record[abs(1-A174868(n))]`
-/

namespace A070992.P1706094269387708619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A174868 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070992.P1706094269387708619

namespace A070992

/-- `record[abs(1-A174868(n))]` -/
def P1706094269387708619.Spec : Prop :=
  ∀ n, P1706094269387708619.a n = A070992 n

end A070992

/-! ## A070992.P9749243011857992046

`∑[A324337(A233280(n+1))]`
-/

namespace A070992.P9749243011857992046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A233280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P9749243011857992046

namespace A070992

/-- `∑[A324337(A233280(n+1))]` -/
def P9749243011857992046.Spec : Prop :=
  ∀ n, P9749243011857992046.a n = A070992 n

end A070992

/-! ## A070992.P8205662078155715148

`∑[A007306(A003602(n+2))]`
-/

namespace A070992.P8205662078155715148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P8205662078155715148

namespace A070992

/-- `∑[A007306(A003602(n+2))]` -/
def P8205662078155715148.Spec : Prop :=
  ∀ n, P8205662078155715148.a n = A070992 n

end A070992

/-! ## A070992.P5397727042780495921

`record[abs(1-∑[A002487(n)])]`
-/

namespace A070992.P5397727042780495921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070992.P5397727042780495921

namespace A070992

/-- `record[abs(1-∑[A002487(n)])]` -/
def P5397727042780495921.Spec : Prop :=
  ∀ n, P5397727042780495921.a n = A070992 n

end A070992

/-! ## A070992.P12078536218481851877

`∑[n+2-A284013(n+2)]`
-/

namespace A070992.P12078536218481851877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A284013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P12078536218481851877

namespace A070992

/-- `∑[n+2-A284013(n+2)]` -/
def P12078536218481851877.Spec : Prop :=
  ∀ n, P12078536218481851877.a n = A070992 n

end A070992

/-! ## A070992.P2678852049218814353

`∑[A324338(A233280(n+2))]`
-/

namespace A070992.P2678852049218814353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A233280 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P2678852049218814353

namespace A070992

/-- `∑[A324338(A233280(n+2))]` -/
def P2678852049218814353.Spec : Prop :=
  ∀ n, P2678852049218814353.a n = A070992 n

end A070992

/-! ## A070992.P14106283143629477683

`∑[A020650(A231550(n+1))]`
-/

namespace A070992.P14106283143629477683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A231550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P14106283143629477683

namespace A070992

/-- `∑[A020650(A231550(n+1))]` -/
def P14106283143629477683.Spec : Prop :=
  ∀ n, P14106283143629477683.a n = A070992 n

end A070992

/-! ## A070992.P3411830735756192482

`∑[A317840(2*(n+2))]`
-/

namespace A070992.P3411830735756192482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P3411830735756192482

namespace A070992

/-- `∑[A317840(2*(n+2))]` -/
def P3411830735756192482.Spec : Prop :=
  ∀ n, P3411830735756192482.a n = A070992 n

end A070992

/-! ## A070992.P16279725439531786096

`∑[A020651(A231550(n+2))]`
-/

namespace A070992.P16279725439531786096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A231550 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P16279725439531786096

namespace A070992

/-- `∑[A020651(A231550(n+2))]` -/
def P16279725439531786096.Spec : Prop :=
  ∀ n, P16279725439531786096.a n = A070992 n

end A070992

/-! ## A070992.P6153893982201864295

`∑[A007305(A145342(n+3))]`
-/

namespace A070992.P6153893982201864295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A145342 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P6153893982201864295

namespace A070992

/-- `∑[A007305(A145342(n+3))]` -/
def P6153893982201864295.Spec : Prop :=
  ∀ n, P6153893982201864295.a n = A070992 n

end A070992

/-!
# A070993: Numbers n such that the trajectory of n under the "3x+1" map reaches n+1.

The programs for A070993, there is no canonical definition to state claims against.
-/

/-! ## A070993.P18068446791367227789

`or(A089242(A322851(n)), A345958(n+1))`
-/

namespace A070993.P18068446791367227789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089242 (A322851 n).toNat) (A345958 (n + 1))

end

end A070993.P18068446791367227789

/-! ## A070993.P4324154000207484214

`A219608(A248794(n+1)+A248768(n+2))`
-/

namespace A070993.P4324154000207484214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (A248794 (n + 1) + A248768 (n + 2)).toNat

end

end A070993.P4324154000207484214

/-! ## A070993.P6104597186319299272

`or(A112798(A045623(n+3)), A345958(n+1))`
-/

namespace A070993.P6104597186319299272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112798 (A045623 (n + 3)).toNat) (A345958 (n + 1))

end

end A070993.P6104597186319299272

/-! ## A070993.P6697625249399561298

`or(A345958(n+1), A345982(A345948(n+3)))`
-/

namespace A070993.P6697625249399561298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A345958 (n + 1)) (A345982 (A345948 (n + 3)).toNat)

end

end A070993.P6697625249399561298

/-!
# A070996: Numbers n whose sum of divisors and number of divisors are both triangular numbers.

The programs for A070996, there is no canonical definition to state claims against.
-/

/-! ## A070996.P16192418959709568312

`∩[A045746(n+1), A081619(n+1)]`
-/

namespace A070996.P16192418959709568312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070996.P16192418959709568312

/-! ## A070996.P15387672299598754448

`∩[A045746(n+1), A340780(n+1)]`
-/

namespace A070996.P15387672299598754448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070996.P15387672299598754448

/-!
# A070997: a(n) = 8*a(n-1) - a(n-2), a(0)=1, a(-1)=1.

The programs for A070997, the canonical program `A070997.P10308215639543342380` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070997 has offset 0).

The definition of A070997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A070997.P10308215639543342380`, by `A070997.P10308215639543342380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070997.P10308215639543342380

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070997

/-- `8*a(n-1)-a(n-2)` -/
def P10308215639543342380.Spec : Prop :=
  ∀ n, P10308215639543342380.a n = A070997 n

theorem P10308215639543342380.correct : P10308215639543342380.Spec := by
  intro n
  simp only [A070997]

end A070997

/-! ## A070997.P4110190383839714388

`(5+sqrt(15))/10*(4+sqrt(15))^n+(5-sqrt(15))/10*(4-sqrt(15))^n`
-/

namespace A070997.P4110190383839714388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 + Real.sqrt (15 : ℝ)) / 10 * (4 + Real.sqrt (15 : ℝ)) ^ n + (5 - Real.sqrt (15 : ℝ)) / 10 * (4 - Real.sqrt (15 : ℝ)) ^ n

end

end A070997.P4110190383839714388

namespace A070997

/-- `(5+sqrt(15))/10*(4+sqrt(15))^n+(5-sqrt(15))/10*(4-sqrt(15))^n` -/
def P4110190383839714388.Spec : Prop :=
  ∀ n, P4110190383839714388.a n = (A070997 n : ℝ)

theorem P4110190383839714388.correct : P4110190383839714388.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A070997, Nat.add_sub_cancel, A070997.P4110190383839714388.a, A070997.P10308215639543342380.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A070997, Nat.add_sub_cancel, A070997.P4110190383839714388.a, A070997.P10308215639543342380.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A070997

/-! ## A070997.P12754914439248099987

`ogf((1-x)/(1-8x+x^2))`
-/

namespace A070997.P12754914439248099987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8, 1] n

end

end A070997.P12754914439248099987

namespace A070997

/-- `ogf((1-x)/(1-8x+x^2))` -/
def P12754914439248099987.Spec : Prop :=
  ∀ n, P12754914439248099987.a n = A070997 n

end A070997

/-! ## A070997.P5177712851956531093

`Δ[A001090(n)]`
-/

namespace A070997.P5177712851956531093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070997.P5177712851956531093

namespace A070997

/-- `Δ[A001090(n)]` -/
def P5177712851956531093.Spec : Prop :=
  ∀ n, P5177712851956531093.a n = A070997 n

end A070997

/-! ## A070997.P12296106889753321038

`A041023(2*n)`
-/

namespace A070997.P12296106889753321038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n)

end

end A070997.P12296106889753321038

namespace A070997

/-- `A041023(2*n)` -/
def P12296106889753321038.Spec : Prop :=
  ∀ n, P12296106889753321038.a n = A070997 n

end A070997

/-! ## A070997.P11015590345332487293

`A080871(Δ[n²])`
-/

namespace A070997.P11015590345332487293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070997.P11015590345332487293

namespace A070997

/-- `A080871(Δ[n²])` -/
def P11015590345332487293.Spec : Prop :=
  ∀ n, P11015590345332487293.a n = A070997 n

end A070997

/-! ## A070997.P17376280959472096254

`A145542(Δ[n²])`
-/

namespace A070997.P17376280959472096254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145542 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A070997.P17376280959472096254

namespace A070997

/-- `A145542(Δ[n²])` -/
def P17376280959472096254.Spec : Prop :=
  ∀ n, P17376280959472096254.a n = A070997 n

end A070997

/-! ## A070997.P12230840981198210591

`(A077246(n)+A001090(n))/2`
-/

namespace A070997.P12230840981198210591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077246 n + A001090 n : ℚ) / 2

end

end A070997.P12230840981198210591

namespace A070997

/-- `(A077246(n)+A001090(n))/2` -/
def P12230840981198210591.Spec : Prop :=
  ∀ n, P12230840981198210591.a n = (A070997 n : ℚ)

end A070997

/-! ## A070997.P11394273840984260473

`(a(n-1)²+6)/a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A070997.P11394273840984260473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  (a (n - 1) ^ 2 + 6) / a (n - 2)

end

end A070997.P11394273840984260473

namespace A070997

/-- `(a(n-1)²+6)/a(n-2)` -/
def P11394273840984260473.Spec : Prop :=
  ∀ n, P11394273840984260473.a n = (A070997 n : ℚ)

end A070997

/-! ## A070997.P13847520639410658523

`sqrt(A098306(2*n+1))`
-/

namespace A070997.P13847520639410658523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098306 (2 * n + 1) : ℝ)

end

end A070997.P13847520639410658523

namespace A070997

/-- `sqrt(A098306(2*n+1))` -/
def P13847520639410658523.Spec : Prop :=
  ∀ n, P13847520639410658523.a n = (A070997 n : ℝ)

end A070997

/-!
# A070998: a(n) = 9*a(n-1) - a(n-2) for n > 0, a(0)=1, a(-1)=1.

The programs for A070998, the canonical program `A070998.P13280984473195178256` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070998 has offset 0).

The definition of A070998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-a(n-2)` (program `A070998.P13280984473195178256`, by `A070998.P13280984473195178256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070998.P13280984473195178256

`9*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070998

/-- `9*a(n-1)-a(n-2)` -/
def P13280984473195178256.Spec : Prop :=
  ∀ n, P13280984473195178256.a n = A070998 n

theorem P13280984473195178256.correct : P13280984473195178256.Spec := by
  intro n
  simp only [A070998]

end A070998

/-! ## A070998.P4505900178869017067

`A018913(n+1)-A018913(n)`
-/

namespace A070998.P4505900178869017067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (n + 1) - A018913 n

end

end A070998.P4505900178869017067

namespace A070998

/-- `A018913(n+1)-A018913(n)` -/
def P4505900178869017067.Spec : Prop :=
  ∀ n, P4505900178869017067.a n = A070998 n

end A070998

/-! ## A070998.P3405660293088095610

`ogf((1-x)/(1-9x+x^2))`
-/

namespace A070998.P3405660293088095610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -9, 1] n

end

end A070998.P3405660293088095610

namespace A070998

/-- `ogf((1-x)/(1-9x+x^2))` -/
def P3405660293088095610.Spec : Prop :=
  ∀ n, P3405660293088095610.a n = A070998 n

end A070998

/-! ## A070998.P13640133773372394261

`lcm(9, a(n-1))-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A070998.P13640133773372394261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - a (n - 2)

end

end A070998.P13640133773372394261

namespace A070998

/-- `lcm(9, a(n-1))-a(n-2)` -/
def P13640133773372394261.Spec : Prop :=
  ∀ n, P13640133773372394261.a n = A070998 n

end A070998

/-! ## A070998.P922684343361186584

`Δ[A018913(n)]`
-/

namespace A070998.P922684343361186584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070998.P922684343361186584

namespace A070998

/-- `Δ[A018913(n)]` -/
def P922684343361186584.Spec : Prop :=
  ∀ n, P922684343361186584.a n = A070998 n

end A070998

/-! ## A070998.P11043983536006969903

`A056918(n)-a(n-1)` with `a(0)=1`
-/

namespace A070998.P11043983536006969903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056918 n - a (n - 1)

end

end A070998.P11043983536006969903

namespace A070998

/-- `A056918(n)-a(n-1)` -/
def P11043983536006969903.Spec : Prop :=
  ∀ n, P11043983536006969903.a n = A070998 n

end A070998

/-! ## A070998.P15499962333843339321

`A098307(n+1)+A098307(n)`
-/

namespace A070998.P15499962333843339321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098307 (n + 1) + A098307 n

end

end A070998.P15499962333843339321

namespace A070998

/-- `A098307(n+1)+A098307(n)` -/
def P15499962333843339321.Spec : Prop :=
  ∀ n, P15499962333843339321.a n = A070998 n

end A070998

/-! ## A070998.P13254179875058147548

`A057081(n)-2*A018913(n)`
-/

namespace A070998.P13254179875058147548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057081 n - 2 * A018913 n

end

end A070998.P13254179875058147548

namespace A070998

/-- `A057081(n)-2*A018913(n)` -/
def P13254179875058147548.Spec : Prop :=
  ∀ n, P13254179875058147548.a n = A070998 n

end A070998

/-! ## A070998.P14464580013111760051

`(a(n-1)²+7)/a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A070998.P14464580013111760051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  (a (n - 1) ^ 2 + 7) / a (n - 2)

end

end A070998.P14464580013111760051

namespace A070998

/-- `(a(n-1)²+7)/a(n-2)` -/
def P14464580013111760051.Spec : Prop :=
  ∀ n, P14464580013111760051.a n = (A070998 n : ℚ)

end A070998

/-! ## A070998.P14170420234927067481

`sqrt(A098307(Δ[n²]))`
-/

namespace A070998.P14170420234927067481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A070998.P14170420234927067481

namespace A070998

/-- `sqrt(A098307(Δ[n²]))` -/
def P14170420234927067481.Spec : Prop :=
  ∀ n, P14170420234927067481.a n = (A070998 n : ℝ)

end A070998

/-!
# A070999: Numbers n such that the denominator of Sum_{k=1..n} 1/gcd(n,k) is not equal to n.

The programs for A070999, the canonical program `A070999.P10711028318610631314` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070999 has offset 1).

The definition of A070999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070999.P1356206767268551365

`lt[A333696(n+1), n]+1`
-/

namespace A070999.P1356206767268551365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333696 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070999.P1356206767268551365

namespace A070999

/-- `lt[A333696(n+1), n]+1` -/
def P1356206767268551365.Spec : Prop :=
  ∀ n, (P1356206767268551365.a n : ℤ) = A070999 (n + 1)

end A070999

/-! ## A070999.P10711028318610631314

`lt[1, gcd(n+1, A057660(n+1))]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070999

/-- `lt[1, gcd(n+1, A057660(n+1))]+1` -/
def P10711028318610631314.Spec : Prop :=
  ∀ n, (P10711028318610631314.a n : ℤ) = A070999 (n + 1)

theorem P10711028318610631314.correct : P10711028318610631314.Spec := by
  intro n
  simp only [A070999, Nat.add_sub_cancel]

end A070999

/-! ## A070999.P51825347750897195

`lt[A294650(n^ceil(atan(n))), n²]`
-/

namespace A070999.P51825347750897195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070999.P51825347750897195

namespace A070999

/-- `lt[A294650(n^ceil(atan(n))), n²]` -/
def P51825347750897195.Spec : Prop :=
  ∀ n, (P51825347750897195.a n : ℤ) = A070999 (n + 1)

end A070999

/-! ## A070999.P18438431131901059942

`lt[sqrt(A294650((n+1)²)), n]+1`
-/

namespace A070999.P18438431131901059942
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A294650 ((n + 1) ^ 2) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A070999.P18438431131901059942

namespace A070999

/-- `lt[sqrt(A294650((n+1)²)), n]+1` -/
def P18438431131901059942.Spec : Prop :=
  ∀ n, (P18438431131901059942.a n : ℤ) = A070999 (n + 1)

end A070999

/-! ## A070999.P6058634544583641857

`lt[A294650((n+1)²)-(1-n)², A071321(n+1)]+1`
-/

namespace A070999.P6058634544583641857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 ((n + 1) ^ 2) - (1 - (n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070999.P6058634544583641857

namespace A070999

/-- `lt[A294650((n+1)²)-(1-n)², A071321(n+1)]+1` -/
def P6058634544583641857.Spec : Prop :=
  ∀ n, (P6058634544583641857.a n : ℤ) = A070999 (n + 1)

end A070999

