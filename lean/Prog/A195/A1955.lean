import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A195504: Product of numbers up to n-1 used as divisors in A008336(n), n >= 2; a(1) = 1.

The programs for A195504, there is no canonical definition to state claims against.
-/

/-! ## A195504.P4554389748491831177

`sqrt(n!/A008336(n+1))`
-/

namespace A195504.P4554389748491831177
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.factorial n : ℚ) / (A008336 (n + 1) : ℚ) : ℝ)

end

end A195504.P4554389748491831177

/-! ## A195504.P5898366028839673141

`floor(A055228(n)/sqrt(A008336(n+1)))`
-/

namespace A195504.P5898366028839673141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055228 n : ℝ) / Real.sqrt (A008336 (n + 1) : ℝ)⌋

end

end A195504.P5898366028839673141

/-! ## A195504.P10001349438160766791

`ceil(A055226(n)/sqrt(A008336(n+1)))`
-/

namespace A195504.P10001349438160766791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055226 n : ℝ) / Real.sqrt (A008336 (n + 1) : ℝ)⌉

end

end A195504.P10001349438160766791

/-! ## A195504.P12739219739396527517

`sqrt(A000142(n)/A008336(n+1))`
-/

namespace A195504.P12739219739396527517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A000142 n : ℚ) / (A008336 (n + 1) : ℚ) : ℝ)

end

end A195504.P12739219739396527517

/-! ## A195504.P6730444947331169047

`sqrt(∏[A028310(n)]/A008336(n+1))`
-/

namespace A195504.P6730444947331169047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008336 (n + 1) : ℚ) : ℝ)

end

end A195504.P6730444947331169047

/-!
# A195506: Denominator of Sum_{k=1..n} H(k)/k^2, where H(k) is the k-th harmonic number.

The programs for A195506, there is no canonical definition to state claims against.
-/

/-! ## A195506.P4617592680863473669

`A003418(A120229(A120229(n+1)))^3`
-/

namespace A195506.P4617592680863473669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A120229 (A120229 (n + 1)).toNat).toNat ^ 3

end

end A195506.P4617592680863473669

/-! ## A195506.P15872111482486152619

`A003418(A077342(n+1))^3`
-/

namespace A195506.P15872111482486152619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A077342 (n + 1)).toNat ^ 3

end

end A195506.P15872111482486152619

/-! ## A195506.P16069841502531178363

`A003418(A351374(n+1))^3`
-/

namespace A195506.P16069841502531178363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A351374 (n + 1)).toNat ^ 3

end

end A195506.P16069841502531178363

/-! ## A195506.P5220970658324718466

`A003418(A229621(n+2))^3`
-/

namespace A195506.P5220970658324718466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A229621 (n + 2)).toNat ^ 3

end

end A195506.P5220970658324718466

/-! ## A195506.P12872376545115188059

`A002944(n+1)*A119936(n+1)`
-/

namespace A195506.P12872376545115188059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) * A119936 (n + 1)

end

end A195506.P12872376545115188059

/-!
# A195507: Smallest integer m greater than n such that m (mod k) == n (mod k) for k = 1..n-1.

The programs for A195507, the canonical program `A195507.P13812271573965113829` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195507 has offset 1).

The definition of A195507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195507.P13812271573965113829

`n+1+A003418(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195507

/-- `n+1+A003418(n)` -/
def P13812271573965113829.Spec : Prop :=
  ∀ n, P13812271573965113829.a n = A195507 (n + 1)

theorem P13812271573965113829.correct : P13812271573965113829.Spec := by
  intro n
  simp only [A195507, Nat.add_sub_cancel]

end A195507

/-! ## A195507.P5489126667518994116

`lcm(n, a(n-1)-n)+1+n` with `a(0)=2`
-/

namespace A195507.P5489126667518994116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (n : ℤ) ((a (n - 1) : ℤ) - (n : ℤ)) + 1 + n

end

end A195507.P5489126667518994116

namespace A195507

/-- `lcm(n, a(n-1)-n)+1+n` -/
def P5489126667518994116.Spec : Prop :=
  ∀ n, (P5489126667518994116.a n : ℤ) = A195507 (n + 1)

end A195507

/-! ## A195507.P13604338773582314888

`A075059(n)+n`
-/

namespace A195507.P13604338773582314888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 n + (n : ℤ)

end

end A195507.P13604338773582314888

namespace A195507

/-- `A075059(n)+n` -/
def P13604338773582314888.Spec : Prop :=
  ∀ n, P13604338773582314888.a n = A195507 (n + 1)

theorem P13604338773582314888.correct : P13604338773582314888.Spec := by
  intro n
  simp only [A195507, Nat.add_sub_cancel, A195507.P13604338773582314888.a, A195507.P13812271573965113829.a, A003418, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195507

/-! ## A195507.P7046163022686298923

`A139550(2*n)+n+1`
-/

namespace A195507.P7046163022686298923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n) + (n + 1 : ℤ)

end

end A195507.P7046163022686298923

namespace A195507

/-- `A139550(2*n)+n+1` -/
def P7046163022686298923.Spec : Prop :=
  ∀ n, P7046163022686298923.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P14003844352315365995

`∏[A014963(∏{p}[n, #])]+1+n`
-/

namespace A195507.P14003844352315365995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A195507.P14003844352315365995

namespace A195507

/-- `∏[A014963(∏{p}[n, #])]+1+n` -/
def P14003844352315365995.Spec : Prop :=
  ∀ n, P14003844352315365995.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P4769493933976038350

`∏[A014963(floor(acot(n)+n))]+n+1`
-/

namespace A195507.P4769493933976038350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A195507.P4769493933976038350

namespace A195507

/-- `∏[A014963(floor(acot(n)+n))]+n+1` -/
def P4769493933976038350.Spec : Prop :=
  ∀ n, P4769493933976038350.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P16006638381720734622

`∏[A014963(round(sqrt(n²+1)))]+1+n`
-/

namespace A195507.P16006638381720734622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A195507.P16006638381720734622

namespace A195507

/-- `∏[A014963(round(sqrt(n²+1)))]+1+n` -/
def P16006638381720734622.Spec : Prop :=
  ∀ n, P16006638381720734622.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P283453521962810150

`(a(n-1)-n)*A014963(n)+n+1` with `a(0)=2`
-/

namespace A195507.P283453521962810150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) - (n : ℤ)) * A014963 n + (n + 1 : ℤ)

end

end A195507.P283453521962810150

namespace A195507

/-- `(a(n-1)-n)*A014963(n)+n+1` -/
def P283453521962810150.Spec : Prop :=
  ∀ n, P283453521962810150.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P15193658311854697160

`A065500(n)+A036453(n+1)`
-/

namespace A195507.P15193658311854697160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065500 n + A036453 (n + 1)

end

end A195507.P15193658311854697160

namespace A195507

/-- `A065500(n)+A036453(n+1)` -/
def P15193658311854697160.Spec : Prop :=
  ∀ n, P15193658311854697160.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P10235005447915631135

`1-(A001489(n)-A003418(n))`
-/

namespace A195507.P10235005447915631135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A003418 n)

end

end A195507.P10235005447915631135

namespace A195507

/-- `1-(A001489(n)-A003418(n))` -/
def P10235005447915631135.Spec : Prop :=
  ∀ n, P10235005447915631135.a n = A195507 (n + 1)

theorem P10235005447915631135.correct : P10235005447915631135.Spec := by
  intro n
  simp only [A195507, Nat.add_sub_cancel, A195507.P10235005447915631135.a, A195507.P13812271573965113829.a, A001489, A001489.P15233530513763566776.a, A003418, A003418.P6976248655893080794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195507

/-! ## A195507.P18428868551123645937

`A005408(n)-(n-A003418(n))`
-/

namespace A195507.P18428868551123645937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - A003418 n)

end

end A195507.P18428868551123645937

namespace A195507

/-- `A005408(n)-(n-A003418(n))` -/
def P18428868551123645937.Spec : Prop :=
  ∀ n, P18428868551123645937.a n = A195507 (n + 1)

theorem P18428868551123645937.correct : P18428868551123645937.Spec := by
  intro n
  simp only [A195507, Nat.add_sub_cancel, A195507.P18428868551123645937.a, A195507.P13812271573965113829.a, A003418, A003418.P6976248655893080794.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195507

/-! ## A195507.P17722884409861830317

`n+1+∏[A014963(A065033(2*n))]`
-/

namespace A195507.P17722884409861830317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A195507.P17722884409861830317

namespace A195507

/-- `n+1+∏[A014963(A065033(2*n))]` -/
def P17722884409861830317.Spec : Prop :=
  ∀ n, P17722884409861830317.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P1227722744230227945

`∏[A014963(A004277(n)-n)]+n+1`
-/

namespace A195507.P1227722744230227945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A195507.P1227722744230227945

namespace A195507

/-- `∏[A014963(A004277(n)-n)]+n+1` -/
def P1227722744230227945.Spec : Prop :=
  ∀ n, P1227722744230227945.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P15993341832163874964

`(A014963(n+1)+A002944(n+1))*A048671(n+1)`
-/

namespace A195507.P15993341832163874964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) + A002944 (n + 1)) * A048671 (n + 1)

end

end A195507.P15993341832163874964

namespace A195507

/-- `(A014963(n+1)+A002944(n+1))*A048671(n+1)` -/
def P15993341832163874964.Spec : Prop :=
  ∀ n, P15993341832163874964.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P11311090377147828281

`A060401(n+1)-A119944(n)`
-/

namespace A195507.P11311090377147828281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) - A119944 n

end

end A195507.P11311090377147828281

namespace A195507

/-- `A060401(n+1)-A119944(n)` -/
def P11311090377147828281.Spec : Prop :=
  ∀ n, P11311090377147828281.a n = A195507 (n + 1)

theorem P11311090377147828281.correct : P11311090377147828281.Spec := by
  intro n
  simp only [A195507, Nat.add_sub_cancel, A195507.P11311090377147828281.a, A195507.P13812271573965113829.a, A003418, A003418.P6976248655893080794.a, A060401, A060401.P17035692861748186501.a, A119944, A119944.P17068462013719077516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195507

/-! ## A195507.P7331603774375554152

`A034472(n)+n-A347302(n)`
-/

namespace A195507.P7331603774375554152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n + ((n : ℤ) - A347302 n)

end

end A195507.P7331603774375554152

namespace A195507

/-- `A034472(n)+n-A347302(n)` -/
def P7331603774375554152.Spec : Prop :=
  ∀ n, P7331603774375554152.a n = A195507 (n + 1)

theorem P7331603774375554152.correct : P7331603774375554152.Spec := by
  intro n
  simp only [A195507, Nat.add_sub_cancel, A195507.P7331603774375554152.a, A195507.P13812271573965113829.a, A003418, A003418.P6976248655893080794.a, A034472, A034472.P6935477064191477456.a, A347302, A347302.P12145525369688810272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A195507

/-! ## A195507.P1437360818389488250

`A120108(A161680(n))+1+n`
-/

namespace A195507.P1437360818389488250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A161680 n).toNat + 1 + (n : ℤ)

end

end A195507.P1437360818389488250

namespace A195507

/-- `A120108(A161680(n))+1+n` -/
def P1437360818389488250.Spec : Prop :=
  ∀ n, P1437360818389488250.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P15239034192512744892

`A093919(A099392(n+1))+1+n`
-/

namespace A195507.P15239034192512744892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A099392 (n + 1)).toNat + 1 + (n : ℤ)

end

end A195507.P15239034192512744892

namespace A195507

/-- `A093919(A099392(n+1))+1+n` -/
def P15239034192512744892.Spec : Prop :=
  ∀ n, P15239034192512744892.a n = A195507 (n + 1)

end A195507

/-! ## A195507.P16612832829660155282

`A093919(A179865(n+1))+1+n`
-/

namespace A195507.P16612832829660155282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A179865 (n + 1)).toNat + 1 + (n : ℤ)

end

end A195507.P16612832829660155282

namespace A195507

/-- `A093919(A179865(n+1))+1+n` -/
def P16612832829660155282.Spec : Prop :=
  ∀ n, P16612832829660155282.a n = A195507 (n + 1)

end A195507

/-!
# A195508: Number of iterations in a Draim factorization of 2n+1.

The programs for A195508, there is no canonical definition to state claims against.
-/

/-! ## A195508.P6322837959337257421

`(A090368(n+2)-1)/2`
-/

namespace A195508.P6322837959337257421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090368 (n + 2) - 1 : ℚ) / 2

end

end A195508.P6322837959337257421

/-! ## A195508.P6291579736179565179

`A057237(2*n+3)/2`
-/

namespace A195508.P6291579736179565179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057237 (2 * n + 3) : ℚ) / 2

end

end A195508.P6291579736179565179

/-! ## A195508.P3492466675244495931

`floor(A020639(2*n+3)/2)`
-/

namespace A195508.P3492466675244495931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020639 (2 * n + 3) : ℚ) / 2⌋

end

end A195508.P3492466675244495931

/-! ## A195508.P1078619855181513220

`(A020639(n+3+n)-1)/2`
-/

namespace A195508.P1078619855181513220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 3 + n) - 1 : ℚ) / 2

end

end A195508.P1078619855181513220

/-! ## A195508.P12602005091144598007

`∑[Δ[A020639(2*n+1)]/2]`
-/

namespace A195508.P12602005091144598007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195508.P12602005091144598007

/-! ## A195508.P2312466880603990678

`A005097(A038802(n+1))`
-/

namespace A195508.P2312466880603990678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A038802 (n + 1)).toNat

end

end A195508.P2312466880603990678

/-! ## A195508.P12105031077589745782

`∑[A177961(n+1)-A090368(n+1)]`
-/

namespace A195508.P12105031077589745782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177961 (n + 1) - A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195508.P12105031077589745782

/-! ## A195508.P15710826295368430556

`floor(A090368(n+2)/2)`
-/

namespace A195508.P15710826295368430556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090368 (n + 2) : ℚ) / 2⌋

end

end A195508.P15710826295368430556

/-! ## A195508.P9463765199103056019

`A246425(A090368(n+2)-2)`
-/

namespace A195508.P9463765199103056019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A090368 (n + 2) - 2).toNat

end

end A195508.P9463765199103056019

/-! ## A195508.P11625486836660642896

`A336837(A117368(n+2))`
-/

namespace A195508.P11625486836660642896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336837 (A117368 (n + 2)).toNat

end

end A195508.P11625486836660642896

/-! ## A195508.P10545558230979606237

`(A005843(n+1)-A046666(2*n+3))/2`
-/

namespace A195508.P10545558230979606237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) - A046666 (2 * n + 3) : ℚ) / 2

end

end A195508.P10545558230979606237

/-! ## A195508.P8460709180491160218

`n+2-A175126(2*n+3)`
-/

namespace A195508.P8460709180491160218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A175126 (2 * n + 3)

end

end A195508.P8460709180491160218

/-! ## A195508.P17360974585034602776

`A003974(2*A117368(n+2)-A117368(n+2))`
-/

namespace A195508.P17360974585034602776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003974 (2 * A117368 (n + 2) - A117368 (n + 2)).toNat

end

end A195508.P17360974585034602776

/-! ## A195508.P5678124469585009013

`A002616(A090368(n+2))`
-/

namespace A195508.P5678124469585009013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A090368 (n + 2)).toNat

end

end A195508.P5678124469585009013

/-! ## A195508.P1899374818396774456

`A025480(A090368(n+2)-1)`
-/

namespace A195508.P1899374818396774456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A090368 (n + 2) - 1).toNat

end

end A195508.P1899374818396774456

/-! ## A195508.P2673666817169771383

`A032742(A090368(n+2)-1)`
-/

namespace A195508.P2673666817169771383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A090368 (n + 2) - 1).toNat

end

end A195508.P2673666817169771383

/-! ## A195508.P8092161866527619732

`A065033(A090368(n+2)-1)`
-/

namespace A195508.P8092161866527619732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A090368 (n + 2) - 1).toNat

end

end A195508.P8092161866527619732

/-! ## A195508.P10020858053282510553

`A110654(A090368(n+2)-1)`
-/

namespace A195508.P10020858053282510553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A090368 (n + 2) - 1).toNat

end

end A195508.P10020858053282510553

/-! ## A195508.P16712474762016055828

`A123108(A090368(n+2)-1)`
-/

namespace A195508.P16712474762016055828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A090368 (n + 2) - 1).toNat

end

end A195508.P16712474762016055828

/-! ## A195508.P11393909974290831126

`A003602(A090368(n+2)-2)`
-/

namespace A195508.P11393909974290831126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A090368 (n + 2) - 2).toNat

end

end A195508.P11393909974290831126

/-!
# A195509: Expansion of e.g.f. (exp(x*exp(x)) + exp(x/exp(x)))/2.

The programs for A195509, there is no canonical definition to state claims against.
-/

/-! ## A195509.P14805564394382825729

`(A003725(n)+A000248(n))/2`
-/

namespace A195509.P14805564394382825729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003725 n + A000248 n : ℚ) / 2

end

end A195509.P14805564394382825729

/-! ## A195509.P7338127544820987068

`A014682(A003725(n)+A000248(n))`
-/

namespace A195509.P7338127544820987068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A003725 n + A000248 n).toNat

end

end A195509.P7338127544820987068

/-! ## A195509.P88993587041761582

`A004525(A003725(n)+A000248(n))`
-/

namespace A195509.P88993587041761582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003725 n + A000248 n).toNat

end

end A195509.P88993587041761582

/-! ## A195509.P13318624766258166868

`A004526(A003725(n)+A000248(n))`
-/

namespace A195509.P13318624766258166868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003725 n + A000248 n).toNat

end

end A195509.P13318624766258166868

/-!
# A195510: E.g.f. satisfies: A(x) = (exp(x*A(x)) + exp(x/A(x)))/2.

The programs for A195510, there is no canonical definition to state claims against.
-/

/-! ## A195510.P204127551620570095

`A353355(3*a(n-1)-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A195510.P204127551620570095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A353355 (3 * a (n - 1) - 1).toNat

end

end A195510.P204127551620570095

/-! ## A195510.P11078564692806632734

`A079750(3^C(a(n-1), 68)+n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A195510.P11078564692806632734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A079750 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A195510.P11078564692806632734

/-!
# A195511: E.g.f. satisfies: A(x) = (exp(x) + exp(x*A(x)^2))/2.

The programs for A195511, there is no canonical definition to state claims against.
-/

/-! ## A195511.P16055183790430084262

`A004526(A295254(n)+A005315(n))`
-/

namespace A195511.P16055183790430084262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A295254 n + A005315 n).toNat

end

end A195511.P16055183790430084262

/-! ## A195511.P16840187653891380759

`A004525(A273954(n)+A052722(n))`
-/

namespace A195511.P16840187653891380759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A273954 n + A052722 n).toNat

end

end A195511.P16840187653891380759

/-!
# A195513: E.g.f. satisfies: A(x) = exp(x*A(x)) - exp(x*A(x)^2) + exp(x*A(x)^3).

The programs for A195513, there is no canonical definition to state claims against.
-/

/-! ## A195513.P3842960998486562667

`A172493(lcm(n, A007318(n)²))`
-/

namespace A195513.P3842960998486562667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172493 (Int.lcm (n : ℤ) (A007318 n ^ 2))

end

end A195513.P3842960998486562667

/-! ## A195513.P12745903064729148041

`A172493(A141769(n+1)-1)`
-/

namespace A195513.P12745903064729148041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172493 (A141769 (n + 1) - 1).toNat

end

end A195513.P12745903064729148041

/-! ## A195513.P7516726301832536708

`A172493(A172449(n+1)+n)`
-/

namespace A195513.P7516726301832536708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172493 (A172449 (n + 1) + (n : ℤ)).toNat

end

end A195513.P7516726301832536708

/-!
# A195514: E.g.f. satisfies: A(x) = exp(x/A(x)) - exp(x) + exp(x*A(x)).

The programs for A195514, there is no canonical definition to state claims against.
-/

/-! ## A195514.P13633449302404389745

`A124741(2*(n+1)^(n-2))`
-/

namespace A195514.P13633449302404389745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (SequenceMachineLib.roundAway (2 * (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A195514.P13633449302404389745

/-! ## A195514.P1176957519984058498

`A215824(A005034(n))`
-/

namespace A195514.P1176957519984058498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215824 (A005034 n).toNat

end

end A195514.P1176957519984058498

/-!
# A195515: Number of lower triangles of an n X n -1..1 array with all row and column sums zero.

The programs for A195515, there is no canonical definition to state claims against.
-/

/-! ## A195515.P11306837513275004367

`A195644(∑[n+2])`
-/

namespace A195515.P11306837513275004367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195515.P11306837513275004367

/-! ## A195515.P17022420581556565016

`A195522(∑[n+1])`
-/

namespace A195515.P17022420581556565016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195515.P17022420581556565016

/-! ## A195515.P4490524623716244841

`or(1, A195522(A000217(n+1)))`
-/

namespace A195515.P4490524623716244841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195522 (A000217 (n + 1)).toNat)

end

end A195515.P4490524623716244841

/-! ## A195515.P17897878271163753656

`A324731(n+1)+A195522(A000217(n+1))`
-/

namespace A195515.P17897878271163753656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1) + A195522 (A000217 (n + 1)).toNat

end

end A195515.P17897878271163753656

/-! ## A195515.P1742181543740813422

`A361161(n+1)+A195522(A000217(n+1))`
-/

namespace A195515.P1742181543740813422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361161 (n + 1) + A195522 (A000217 (n + 1)).toNat

end

end A195515.P1742181543740813422

/-!
# A195516: Number of lower triangles of an n X n -2..2 array with all row and column sums zero.

The programs for A195516, there is no canonical definition to state claims against.
-/

/-! ## A195516.P4777879769944521048

`A195522(∑[n+2])`
-/

namespace A195516.P4777879769944521048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195516.P4777879769944521048

/-!
# A195517: Number of lower triangles of an n X n -3..3 array with all row and column sums zero.

The programs for A195517, there is no canonical definition to state claims against.
-/

/-! ## A195517.P12101325210692325597

`A195522(∑[n+3]+1)`
-/

namespace A195517.P12101325210692325597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195517.P12101325210692325597

/-!
# A195518: Number of lower triangles of an n X n -4..4 array with all row and column sums zero.

The programs for A195518, there is no canonical definition to state claims against.
-/

/-! ## A195518.P1929759969722859317

`A195522(A141214(n+1))`
-/

namespace A195518.P1929759969722859317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A141214 (n + 1)).toNat

end

end A195518.P1929759969722859317

/-! ## A195518.P13481476865334355982

`A195522(A055998(n+2))`
-/

namespace A195518.P13481476865334355982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A055998 (n + 2)).toNat

end

end A195518.P13481476865334355982

/-! ## A195518.P8346580127477674964

`A195522(A155212(n)+5)`
-/

namespace A195518.P8346580127477674964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A155212 n + 5).toNat

end

end A195518.P8346580127477674964

/-! ## A195518.P13997594550382477058

`A195522(A056000(n)+7)`
-/

namespace A195518.P13997594550382477058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A056000 n + 7).toNat

end

end A195518.P13997594550382477058

/-! ## A195518.P9844827527100424310

`A195522(A052905(n+1)+2)`
-/

namespace A195518.P9844827527100424310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A052905 (n + 1) + 2).toNat

end

end A195518.P9844827527100424310

/-!
# A195519: Number of lower triangles of an n X n -5..5 array with all row and column sums zero.

The programs for A195519, there is no canonical definition to state claims against.
-/

/-! ## A195519.P5523906377157236352

`A195522(Δ[A264443(n)])`
-/

namespace A195519.P5523906377157236352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (f1 (n + 1) - f1 n).toNat

end

end A195519.P5523906377157236352

/-! ## A195519.P10906009386273152762

`A195522(A046691(n+3))`
-/

namespace A195519.P10906009386273152762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A046691 (n + 3)).toNat

end

end A195519.P10906009386273152762

/-! ## A195519.P17050888186437745925

`A195522(A056115(n)+11)`
-/

namespace A195519.P17050888186437745925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A056115 n + 11).toNat

end

end A195519.P17050888186437745925

/-! ## A195519.P10411627412938335617

`A195522(eq[2, A092921(n)])`
-/

namespace A195519.P10411627412938335617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195519.P10411627412938335617

/-!
# A195520: Number of lower triangles of an n X n -6..6 array with all row and column sums zero.

The programs for A195520, there is no canonical definition to state claims against.
-/

/-! ## A195520.P16681090822443655613

`A195522(A052905(n+3))`
-/

namespace A195520.P16681090822443655613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A052905 (n + 3)).toNat

end

end A195520.P16681090822443655613

/-! ## A195520.P16722107216045477414

`A195522(A056119(n)+16)`
-/

namespace A195520.P16722107216045477414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A056119 n + 16).toNat

end

end A195520.P16722107216045477414

/-! ## A195520.P6539116291347342844

`A195522(eq[3, A219347(n)])`
-/

namespace A195520.P6539116291347342844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195520.P6539116291347342844

/-!
# A195521: Number of lower triangles of an n X n -7..7 array with all row and column sums zero.

The programs for A195521, there is no canonical definition to state claims against.
-/

/-! ## A195521.P11761928728109055008

`A195522(eq[6, A193592(n)])`
-/

namespace A195521.P11761928728109055008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195521.P11761928728109055008

/-!
# A195522: T(n,k) = Number of lower triangles of an n X n -k..k array with all row and column sums zero.

The programs for A195522, there is no canonical definition to state claims against.
-/

/-! ## A195522.P13010650584969620708

`A195892((n+1)^round(n/9))`
-/

namespace A195522.P13010650584969620708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 9) : ℤ))).toNat

end

end A195522.P13010650584969620708

/-! ## A195522.P10535070941211119125

`A065708(A195892(n+1))`
-/

namespace A195522.P10535070941211119125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A195892 (n + 1)).toNat

end

end A195522.P10535070941211119125

/-! ## A195522.P546922847691481696

`A330101(or(1, A195892(n+1)))`
-/

namespace A195522.P546922847691481696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 (Int.lor 1 (A195892 (n + 1))).toNat

end

end A195522.P546922847691481696

/-! ## A195522.P2245682479241516285

`∏{p}[A195892(n+1), A327076(#)]`
-/

namespace A195522.P2245682479241516285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A327076 p

end

end A195522.P2245682479241516285

/-! ## A195522.P6802097505823062475

`A330101(∏{p}[A195892(n+1), #])`
-/

namespace A195522.P6802097505823062475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A195522.P6802097505823062475

/-!
# A195523: Number of lower triangles of a 5 X 5 -n..n array with all row and column sums zero.

The programs for A195523, there is no canonical definition to state claims against.
-/

/-! ## A195523.P2820045285724290826

`A195522(∑[n+4]+11)`
-/

namespace A195523.P2820045285724290826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A195523.P2820045285724290826

/-!
# A195524: Number of lower triangles of a 6X6 -n..n array with all row and column sums zero.

The programs for A195524, there is no canonical definition to state claims against.
-/

/-! ## A195524.P13288320391902071902

`A195522(A056115(n)+21)`
-/

namespace A195524.P13288320391902071902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A056115 n + 21).toNat

end

end A195524.P13288320391902071902

/-! ## A195524.P10401215811243662672

`A195522(A167499(n+4)+1)`
-/

namespace A195524.P10401215811243662672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A167499 (n + 4) + 1).toNat

end

end A195524.P10401215811243662672

/-! ## A195524.P490613055093369997

`A195522(A167487(n+4)-1)`
-/

namespace A195524.P490613055093369997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195522 (A167487 (n + 4) - 1).toNat

end

end A195524.P490613055093369997

/-!
# A195526: Numbers written with two Roman numerals.

The programs for A195526, there is no canonical definition to state claims against.
-/

/-! ## A195526.P7524500962660367895

`A003587(n+8)`
-/

namespace A195526.P7524500962660367895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003587 (n + 8)

end

end A195526.P7524500962660367895

/-! ## A195526.P5425795654787090057

`eq[2, A006968(n+1)]+1`
-/

namespace A195526.P5425795654787090057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195526.P5425795654787090057

/-! ## A195526.P17953538061548039364

`eq[2, A006968(A028310(n))]`
-/

namespace A195526.P17953538061548039364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195526.P17953538061548039364

/-! ## A195526.P3640958565203855980

`A020725(eq[2, A006968(n+1)])`
-/

namespace A195526.P3640958565203855980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195526.P3640958565203855980

/-! ## A195526.P10656189082221442904

`eq[2, A006968(A065033(2*n))]`
-/

namespace A195526.P10656189082221442904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195526.P10656189082221442904

/-!
# A195527: Integers n that are k-gonal for precisely 3 distinct values of k, where k >= 3.

The programs for A195527, there is no canonical definition to state claims against.
-/

/-! ## A195527.P1703960456108401543

`eq[4, A129654(n+2)]+2`
-/

namespace A195527.P1703960456108401543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A195527.P1703960456108401543

/-! ## A195527.P11575176759768410761

`eq[3, A177025(n+3)]+3`
-/

namespace A195527.P11575176759768410761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A195527.P11575176759768410761

/-! ## A195527.P17987932593785181377

`A009056(eq[4, A129654(n+2)])`
-/

namespace A195527.P17987932593785181377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195527.P17987932593785181377

/-! ## A195527.P10504732655201323674

`A171463(eq[4, A129654(n+2)])`
-/

namespace A195527.P10504732655201323674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195527.P10504732655201323674

/-! ## A195527.P1041355862936099497

`eq[4, A129654(A233583(n+1))]`
-/

namespace A195527.P1041355862936099497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195527.P1041355862936099497

/-!
# A195528: Integers n that are k-gonal for precisely 4 distinct values of k, where k >= 3.

The programs for A195528, there is no canonical definition to state claims against.
-/

/-! ## A195528.P16870220762922037372

`eq[5, A129654(n+2)]+2`
-/

namespace A195528.P16870220762922037372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A195528.P16870220762922037372

/-! ## A195528.P18359272589920441023

`eq[4, A177025(n+3)]+3`
-/

namespace A195528.P18359272589920441023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A195528.P18359272589920441023

/-! ## A195528.P13718429501509005045

`A009056(eq[5, A129654(n+2)])`
-/

namespace A195528.P13718429501509005045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195528.P13718429501509005045

/-! ## A195528.P11672119452149828418

`A171463(eq[5, A129654(n+2)])`
-/

namespace A195528.P11672119452149828418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195528.P11672119452149828418

/-! ## A195528.P2216079377886197522

`eq[5, A129654(A233583(n+1))]`
-/

namespace A195528.P2216079377886197522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195528.P2216079377886197522

/-!
# A195530: Primes of the form 3*2^n - 2*n - 1.

The programs for A195530, there is no canonical definition to state claims against.
-/

/-! ## A195530.P9662128360925966281

`p?[3*2^n-Δ[n²]]`
-/

namespace A195530.P9662128360925966281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195530.P9662128360925966281

/-! ## A195530.P16262153449456707000

`char[10]+p?[A050488(n)+2]`
-/

namespace A195530.P16262153449456707000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A195530.P16262153449456707000

/-! ## A195530.P13888216782929083231

`record[p?[A074323(n)+1-n]]`
-/

namespace A195530.P13888216782929083231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n + (1 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195530.P13888216782929083231

/-! ## A195530.P15579127691509200280

`record[p?[A164073(n+1)-n]]`
-/

namespace A195530.P15579127691509200280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195530.P15579127691509200280

/-! ## A195530.P2130694295503777791

`record[p?[A355065(n+1)+1-n]]`
-/

namespace A195530.P2130694295503777791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355065 (n + 1) + 1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195530.P2130694295503777791

/-!
# A195531: Hypotenuses of Pythagorean triples in A195499 and A195503.

The programs for A195531, the canonical program `A195531.P2814914716476778936` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195531 has offset 1).

The definition of A195531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195531.P9071910304768988976

`ogf((5+2x-x^2)/(1-3x-3x^2+x^3))`
-/

namespace A195531.P9071910304768988976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, -1] [1, -3, -3, 1] n

end

end A195531.P9071910304768988976

namespace A195531

/-- `ogf((5+2x-x^2)/(1-3x-3x^2+x^3))` -/
def P9071910304768988976.Spec : Prop :=
  ∀ n, P9071910304768988976.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P2814914716476778936

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=5, a(1)=17, a(2)=65`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195531

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P2814914716476778936.Spec : Prop :=
  ∀ n, P2814914716476778936.a n = A195531 (n + 1)

theorem P2814914716476778936.correct : P2814914716476778936.Spec := by
  intro n
  simp only [A195531, Nat.add_sub_cancel]

end A195531

/-! ## A195531.P4933198946270153943

`A120893(n+2)`
-/

namespace A195531.P4933198946270153943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (n + 2)

end

end A195531.P4933198946270153943

namespace A195531

/-- `A120893(n+2)` -/
def P4933198946270153943.Spec : Prop :=
  ∀ n, P4933198946270153943.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P9584508210107464784

`4*A072335(n)+1`
-/

namespace A195531.P9584508210107464784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A072335 n + 1

end

end A195531.P9584508210107464784

namespace A195531

/-- `4*A072335(n)+1` -/
def P9584508210107464784.Spec : Prop :=
  ∀ n, P9584508210107464784.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P8665270878082319583

`record[A120893(abs(2-n))]`
-/

namespace A195531.P8665270878082319583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195531.P8665270878082319583

namespace A195531

/-- `record[A120893(abs(2-n))]` -/
def P8665270878082319583.Spec : Prop :=
  ∀ n, P8665270878082319583.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P12990867478372698196

`Δ[Δ[A006253(n)]+gcd(2, n)]`
-/

namespace A195531.P12990867478372698196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195531.P12990867478372698196

namespace A195531

/-- `Δ[Δ[A006253(n)]+gcd(2, n)]` -/
def P12990867478372698196.Spec : Prop :=
  ∀ n, P12990867478372698196.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P1714603922037575674

`A003699(n+2)-a(n-1)` with `a(0)=5`
-/

namespace A195531.P1714603922037575674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A003699 (n + 2) - a (n - 1)

end

end A195531.P1714603922037575674

namespace A195531

/-- `A003699(n+2)-a(n-1)` -/
def P1714603922037575674.Spec : Prop :=
  ∀ n, P1714603922037575674.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P8862535809514238903

`A010905(n)+A006253(n)`
-/

namespace A195531.P8862535809514238903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010905 n + A006253 n

end

end A195531.P8862535809514238903

namespace A195531

/-- `A010905(n)+A006253(n)` -/
def P8862535809514238903.Spec : Prop :=
  ∀ n, P8862535809514238903.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P4027019054268141302

`Δ[A109438(n)+A061278(n)]`
-/

namespace A195531.P4027019054268141302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 n + A061278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195531.P4027019054268141302

namespace A195531

/-- `Δ[A109438(n)+A061278(n)]` -/
def P4027019054268141302.Spec : Prop :=
  ∀ n, P4027019054268141302.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P10903821291462928835

`A214998(n)+A109437(n+1)`
-/

namespace A195531.P10903821291462928835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214998 n + A109437 (n + 1)

end

end A195531.P10903821291462928835

namespace A195531

/-- `A214998(n)+A109437(n+1)` -/
def P10903821291462928835.Spec : Prop :=
  ∀ n, P10903821291462928835.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P11001419771917548178

`A006253(n)+A001353(n+2)`
-/

namespace A195531.P11001419771917548178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n + A001353 (n + 2)

end

end A195531.P11001419771917548178

namespace A195531

/-- `A006253(n)+A001353(n+2)` -/
def P11001419771917548178.Spec : Prop :=
  ∀ n, P11001419771917548178.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P11278540876173681152

`A153373(n+1)-A001045(n)`
-/

namespace A195531.P11278540876173681152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153373 (n + 1) - A001045 n

end

end A195531.P11278540876173681152

namespace A195531

/-- `A153373(n+1)-A001045(n)` -/
def P11278540876173681152.Spec : Prop :=
  ∀ n, P11278540876173681152.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P3984431431621763063

`A109438(n+1)-A109437(n)`
-/

namespace A195531.P3984431431621763063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 (n + 1) - A109437 n

end

end A195531.P3984431431621763063

namespace A195531

/-- `A109438(n+1)-A109437(n)` -/
def P3984431431621763063.Spec : Prop :=
  ∀ n, P3984431431621763063.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P7586214783157627889

`A006253(n)-A106707(n+2)`
-/

namespace A195531.P7586214783157627889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n - A106707 (n + 2)

end

end A195531.P7586214783157627889

namespace A195531

/-- `A006253(n)-A106707(n+2)` -/
def P7586214783157627889.Spec : Prop :=
  ∀ n, P7586214783157627889.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P9279838016196740645

`Δ[A109438(n)+∑[A001353(n)]]`
-/

namespace A195531.P9279838016196740645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195531.P9279838016196740645

namespace A195531

/-- `Δ[A109438(n)+∑[A001353(n)]]` -/
def P9279838016196740645.Spec : Prop :=
  ∀ n, P9279838016196740645.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P15792058075947312841

`A001353(n+1)+Δ[A109438(n)]`
-/

namespace A195531.P15792058075947312841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) + (f1 (n + 1) - f1 n)

end

end A195531.P15792058075947312841

namespace A195531

/-- `A001353(n+1)+Δ[A109438(n)]` -/
def P15792058075947312841.Spec : Prop :=
  ∀ n, P15792058075947312841.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P17586627340502658554

`Δ[A109437(n)+A061278(n+1)]`
-/

namespace A195531.P17586627340502658554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + A061278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195531.P17586627340502658554

namespace A195531

/-- `Δ[A109437(n)+A061278(n+1)]` -/
def P17586627340502658554.Spec : Prop :=
  ∀ n, P17586627340502658554.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P10110971331562535118

`Δ[A109438(n)+A101265(n+1)]`
-/

namespace A195531.P10110971331562535118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 n + A101265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195531.P10110971331562535118

namespace A195531

/-- `Δ[A109438(n)+A101265(n+1)]` -/
def P10110971331562535118.Spec : Prop :=
  ∀ n, P10110971331562535118.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P17431473537123922597

`Δ[A109437(n)+A101265(n+2)]`
-/

namespace A195531.P17431473537123922597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n + A101265 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195531.P17431473537123922597

namespace A195531

/-- `Δ[A109437(n)+A101265(n+2)]` -/
def P17431473537123922597.Spec : Prop :=
  ∀ n, P17431473537123922597.a n = A195531 (n + 1)

end A195531

/-! ## A195531.P17885381564699136679

`A105968(n+1)+A001353(n+1)`
-/

namespace A195531.P17885381564699136679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105968 (n + 1) + A001353 (n + 1)

end

end A195531.P17885381564699136679

namespace A195531

/-- `A105968(n+1)+A001353(n+1)` -/
def P17885381564699136679.Spec : Prop :=
  ∀ n, P17885381564699136679.a n = A195531 (n + 1)

end A195531

/-!
# A195538: Denominators a(n) of Pythagorean approximations b(n)/a(n) to sqrt(8).

The programs for A195538, there is no canonical definition to state claims against.
-/

/-! ## A195538.P8430127662836670721

`A041011(n)*A069306(n+2)`
-/

namespace A195538.P8430127662836670721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 n * A069306 (n + 2)

end

end A195538.P8430127662836670721

/-! ## A195538.P8699544054209017104

`A000129(n+3)*A041011(n)`
-/

namespace A195538.P8699544054209017104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3) * A041011 n

end

end A195538.P8699544054209017104

/-! ## A195538.P8495579411482872768

`A041011(n)*A215928(n+3)`
-/

namespace A195538.P8495579411482872768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 n * A215928 (n + 3)

end

end A195538.P8495579411482872768

/-! ## A195538.P1432886604075381951

`lcm(A069306(n+2), A077985(n))`
-/

namespace A195538.P1432886604075381951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A069306 (n + 2)) (A077985 n)

end

end A195538.P1432886604075381951

/-! ## A195538.P17658196712399303395

`abs(A041011(n+2)*A077985(n))`
-/

namespace A195538.P17658196712399303395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A041011 (n + 2) * A077985 n|

end

end A195538.P17658196712399303395

/-!
# A195539: Numerators b(n) of Pythagorean approximations b(n)/a(n) to sqrt(8).

The programs for A195539, there is no canonical definition to state claims against.
-/

/-! ## A195539.P12937470386799648590

`record[A204512(or(2, n)+5)]`
-/

namespace A195539.P12937470386799648590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (Nat.lor 2 n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195539.P12937470386799648590

/-! ## A195539.P11169926933003620759

`A000129(2*(n+2))/gcd(2, n+1)`
-/

namespace A195539.P11169926933003620759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (2 * (n + 2)) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A195539.P11169926933003620759

/-! ## A195539.P10162787399951217919

`A001542(n+2)/A000034(n)`
-/

namespace A195539.P10162787399951217919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001542 (n + 2) : ℚ) / (A000034 n : ℚ)

end

end A195539.P10162787399951217919

/-! ## A195539.P1679988202483171326

`Δ[A011900(n+1)]/A000034(n)`
-/

namespace A195539.P1679988202483171326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 n : ℚ)

end

end A195539.P1679988202483171326

/-! ## A195539.P10527828192446663069

`Δ[A053141(n+1)]/A000034(n)`
-/

namespace A195539.P10527828192446663069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 n : ℚ)

end

end A195539.P10527828192446663069

/-!
# A195540: Hypotenuses of primitive Pythagorean triples in A195538 and A195539.

The programs for A195540, there is no canonical definition to state claims against.
-/

/-! ## A195540.P2380210593080157641

`∩[A184534(n+1)+1, A032528(n)]`
-/

namespace A195540.P2380210593080157641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184534 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195540.P2380210593080157641

/-! ## A195540.P337714903210609304

`∩[A184533(n+1), A194073(n+1)]`
-/

namespace A195540.P337714903210609304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195540.P337714903210609304

/-! ## A195540.P2664566949576898696

`∩[A184533(n+1), A184534(n+2)+1]`
-/

namespace A195540.P2664566949576898696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184534 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195540.P2664566949576898696

/-! ## A195540.P8510020910852304396

`A007590(A079496(n+2))+A079496(n+2)²`
-/

namespace A195540.P8510020910852304396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A079496 (n + 2)).toNat + A079496 (n + 2) ^ 2

end

end A195540.P8510020910852304396

/-! ## A195540.P13161294421272752623

`∩[A184533(n+1), A305185(n+1)]`
-/

namespace A195540.P13161294421272752623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195540.P13161294421272752623

/-!
# A195547: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 1/2.

The programs for A195547, the canonical program `A195547.P10842416328423530270` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195547 has offset 1).

The definition of A195547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195547.P4201973729807247935

`(2-char[3*n])*∑[A000045(n+1)²]`
-/

namespace A195547.P4201973729807247935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A195547.P4201973729807247935

namespace A195547

/-- `(2-char[3*n])*∑[A000045(n+1)²]` -/
def P4201973729807247935.Spec : Prop :=
  ∀ n, P4201973729807247935.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P10842416328423530270

`Δ[A064831(n)]*A130196(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195547

/-- `Δ[A064831(n)]*A130196(n)` -/
def P10842416328423530270.Spec : Prop :=
  ∀ n, P10842416328423530270.a n = A195547 (n + 1)

theorem P10842416328423530270.correct : P10842416328423530270.Spec := by
  intro n
  simp only [A195547, Nat.add_sub_cancel]

end A195547

/-! ## A195547.P7222721566207672148

`gcd(2, A070550(n)²)*A070550(2*n)`
-/

namespace A195547.P7222721566207672148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A070550 n ^ 2) : ℤ) * A070550 (2 * n)

end

end A195547.P7222721566207672148

namespace A195547

/-- `gcd(2, A070550(n)²)*A070550(2*n)` -/
def P7222721566207672148.Spec : Prop :=
  ∀ n, P7222721566207672148.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P6483126425637426454

`(2-A079979(2*n))*A001654(n+1)`
-/

namespace A195547.P6483126425637426454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A079979 (2 * n)) * A001654 (n + 1)

end

end A195547.P6483126425637426454

namespace A195547

/-- `(2-A079979(2*n))*A001654(n+1)` -/
def P6483126425637426454.Spec : Prop :=
  ∀ n, P6483126425637426454.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P8696195801480182342

`(2-A079978(n))*A080239(2*n+1)`
-/

namespace A195547.P8696195801480182342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A079978 n) * A080239 (2 * n + 1)

end

end A195547.P8696195801480182342

namespace A195547

/-- `(2-A079978(n))*A080239(2*n+1)` -/
def P8696195801480182342.Spec : Prop :=
  ∀ n, P8696195801480182342.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P2762002823679105310

`∑[A000045(n+1)²]*A131718(2*n)`
-/

namespace A195547.P2762002823679105310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A131718 (2 * n)

end

end A195547.P2762002823679105310

namespace A195547

/-- `∑[A000045(n+1)²]*A131718(2*n)` -/
def P2762002823679105310.Spec : Prop :=
  ∀ n, P2762002823679105310.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P11192657317836773584

`A293411(2*n+1)/(2-A204418(n+1))`
-/

namespace A195547.P11192657317836773584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293411 (2 * n + 1) : ℚ) / (2 - A204418 (n + 1) : ℚ)

end

end A195547.P11192657317836773584

namespace A195547

/-- `A293411(2*n+1)/(2-A204418(n+1))` -/
def P11192657317836773584.Spec : Prop :=
  ∀ n, P11192657317836773584.a n = (A195547 (n + 1) : ℚ)

end A195547

/-! ## A195547.P2375086291284478909

`A000034(A002487(n))*A001654(n+1)`
-/

namespace A195547.P2375086291284478909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002487 n).toNat * A001654 (n + 1)

end

end A195547.P2375086291284478909

namespace A195547

/-- `A000034(A002487(n))*A001654(n+1)` -/
def P2375086291284478909.Spec : Prop :=
  ∀ n, P2375086291284478909.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P17226010295737837241

`A000032(∑[A049347(n)])*A001654(n+1)`
-/

namespace A195547.P17226010295737837241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A001654 (n + 1)

end

end A195547.P17226010295737837241

namespace A195547

/-- `A000032(∑[A049347(n)])*A001654(n+1)` -/
def P17226010295737837241.Spec : Prop :=
  ∀ n, P17226010295737837241.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P880808977628912902

`(A000035(A004396(n))+1)*A001654(n+1)`
-/

namespace A195547.P880808977628912902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (A004396 n).toNat + 1) * A001654 (n + 1)

end

end A195547.P880808977628912902

namespace A195547

/-- `(A000035(A004396(n))+1)*A001654(n+1)` -/
def P880808977628912902.Spec : Prop :=
  ∀ n, P880808977628912902.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P16457864928873345605

`A195549(n+1)-A000045(n)*A167808(n)`
-/

namespace A195547.P16457864928873345605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195549 (n + 1) - A000045 n * A167808 n

end

end A195547.P16457864928873345605

namespace A195547

/-- `A195549(n+1)-A000045(n)*A167808(n)` -/
def P16457864928873345605.Spec : Prop :=
  ∀ n, P16457864928873345605.a n = A195547 (n + 1)

end A195547

/-! ## A195547.P12835832843144645274

`gcd(A001654(n+1)², A079472(n+2))`
-/

namespace A195547.P12835832843144645274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001654 (n + 1) ^ 2) (A079472 (n + 2))

end

end A195547.P12835832843144645274

namespace A195547

/-- `gcd(A001654(n+1)², A079472(n+2))` -/
def P12835832843144645274.Spec : Prop :=
  ∀ n, (P12835832843144645274.a n : ℤ) = A195547 (n + 1)

end A195547

/-! ## A195547.P4556159648938997226

`A293411(2*n+1)/(A204418(n²)+1)`
-/

namespace A195547.P4556159648938997226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293411 (2 * n + 1) : ℚ) / (A204418 (n ^ 2) + 1 : ℚ)

end

end A195547.P4556159648938997226

namespace A195547

/-- `A293411(2*n+1)/(A204418(n²)+1)` -/
def P4556159648938997226.Spec : Prop :=
  ∀ n, P4556159648938997226.a n = (A195547 (n + 1) : ℚ)

end A195547

/-!
# A195548: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 1/2.

The programs for A195548, there is no canonical definition to state claims against.
-/

/-! ## A195548.P3842933893485055751

`A020695(n)*A167808(n)`
-/

namespace A195548.P3842933893485055751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A167808 n

end

end A195548.P3842933893485055751

/-! ## A195548.P18043156259586435674

`lcm(A000045(n), A020695(n))`
-/

namespace A195548.P18043156259586435674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 n) (A020695 n)

end

end A195548.P18043156259586435674

/-! ## A195548.P18250425102364587290

`lcm(Δ[A048584(n)], A236191(n))`
-/

namespace A195548.P18250425102364587290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A236191 n)

end

end A195548.P18250425102364587290

/-!
# A195549: Hypotenuses of primitive Pythagorean triples in A195547 and A195548.

The programs for A195549, the canonical program `A195549.P12232775344250980731` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195549 has offset 1).

The definition of A195549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195549.P12232775344250980731

`18*a(n-3)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=17, a(4)=89, a(5)=233`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195549

/-- `18*a(n-3)-a(n-6)` -/
def P12232775344250980731.Spec : Prop :=
  ∀ n, P12232775344250980731.a n = A195549 (n + 1)

theorem P12232775344250980731.correct : P12232775344250980731.Spec := by
  intro n
  simp only [A195549, Nat.add_sub_cancel]

end A195549

/-! ## A195549.P12305279842453448412

`A167808(2*n+3)`
-/

namespace A195549.P12305279842453448412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (2 * n + 3)

end

end A195549.P12305279842453448412

namespace A195549

/-- `A167808(2*n+3)` -/
def P12305279842453448412.Spec : Prop :=
  ∀ n, P12305279842453448412.a n = A195549 (n + 1)

end A195549

/-! ## A195549.P15066568000290953490

`A174883(2*n+3)`
-/

namespace A195549.P15066568000290953490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174883 (2 * n + 3)

end

end A195549.P15066568000290953490

namespace A195549

/-- `A174883(2*n+3)` -/
def P15066568000290953490.Spec : Prop :=
  ∀ n, P15066568000290953490.a n = A195549 (n + 1)

end A195549

/-! ## A195549.P7822343739113572256

`record[A000045(or(1, n))/gcd(6, n+1)]`
-/

namespace A195549.P7822343739113572256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (Nat.lor 1 n) : ℚ) / (Nat.gcd 6 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195549.P7822343739113572256

namespace A195549

/-- `record[A000045(or(1, n))/gcd(6, n+1)]` -/
def P7822343739113572256.Spec : Prop :=
  ∀ n, P7822343739113572256.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P1791084051179674867

`A079497(A004773(n+1))`
-/

namespace A195549.P1791084051179674867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079497 (A004773 (n + 1)).toNat

end

end A195549.P1791084051179674867

namespace A195549

/-- `A079497(A004773(n+1))` -/
def P1791084051179674867.Spec : Prop :=
  ∀ n, P1791084051179674867.a n = A195549 (n + 1)

end A195549

/-! ## A195549.P1313908617258845507

`2*A179134(n)-A128052(n)`
-/

namespace A195549.P1313908617258845507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179134 n - A128052 n

end

end A195549.P1313908617258845507

namespace A195549

/-- `2*A179134(n)-A128052(n)` -/
def P1313908617258845507.Spec : Prop :=
  ∀ n, P1313908617258845507.a n = A195549 (n + 1)

end A195549

/-! ## A195549.P5902282283145934139

`A179133(n+1)/A069705(n+2)`
-/

namespace A195549.P5902282283145934139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179133 (n + 1) : ℚ) / (A069705 (n + 2) : ℚ)

end

end A195549.P5902282283145934139

namespace A195549

/-- `A179133(n+1)/A069705(n+2)` -/
def P5902282283145934139.Spec : Prop :=
  ∀ n, P5902282283145934139.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P16850810460005343951

`A130196(n)/2*A122367(n+1)`
-/

namespace A195549.P16850810460005343951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130196 n : ℚ) / 2 * (A122367 (n + 1) : ℚ)

end

end A195549.P16850810460005343951

namespace A195549

/-- `A130196(n)/2*A122367(n+1)` -/
def P16850810460005343951.Spec : Prop :=
  ∀ n, P16850810460005343951.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P12513170466499110128

`∩[A031121(n+1), A079497(n+1)]`
-/

namespace A195549.P12513170466499110128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195549.P12513170466499110128

namespace A195549

/-- `∩[A031121(n+1), A079497(n+1)]` -/
def P12513170466499110128.Spec : Prop :=
  ∀ n, (P12513170466499110128.a n : ℤ) = A195549 (n + 1)

end A195549

/-! ## A195549.P11224582079596129805

`A179133(n+1)/A153727(2*n+1)`
-/

namespace A195549.P11224582079596129805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179133 (n + 1) : ℚ) / (A153727 (2 * n + 1) : ℚ)

end

end A195549.P11224582079596129805

namespace A195549

/-- `A179133(n+1)/A153727(2*n+1)` -/
def P11224582079596129805.Spec : Prop :=
  ∀ n, P11224582079596129805.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P3606107915286566953

`A000045(2*n+3)/gcd(2, A000045(n))`
-/

namespace A195549.P3606107915286566953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 3) : ℚ) / (Int.gcd 2 (A000045 n) : ℚ)

end

end A195549.P3606107915286566953

namespace A195549

/-- `A000045(2*n+3)/gcd(2, A000045(n))` -/
def P3606107915286566953.Spec : Prop :=
  ∀ n, P3606107915286566953.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P5870756850649264635

`A000045(n+3+n)/A000045(n+3+n)%4`
-/

namespace A195549.P5870756850649264635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3 + n) : ℚ) / (Int.tmod (A000045 (n + 3 + n)) 4 : ℚ)

end

end A195549.P5870756850649264635

namespace A195549

/-- `A000045(n+3+n)/A000045(n+3+n)%4` -/
def P5870756850649264635.Spec : Prop :=
  ∀ n, P5870756850649264635.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P4475929824809873127

`A069705(n)*A179133(n)-A128052(n)`
-/

namespace A195549.P4475929824809873127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n * A179133 n - A128052 n

end

end A195549.P4475929824809873127

namespace A195549

/-- `A069705(n)*A179133(n)-A128052(n)` -/
def P4475929824809873127.Spec : Prop :=
  ∀ n, P4475929824809873127.a n = A195549 (n + 1)

end A195549

/-! ## A195549.P13902842723247003617

`lcm(A099496(n+1), A153727(2*n+1))/A153727(2*n+1)`
-/

namespace A195549.P13902842723247003617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A099496 (n + 1)) (A153727 (2 * n + 1)) : ℚ) / (A153727 (2 * n + 1) : ℚ)

end

end A195549.P13902842723247003617

namespace A195549

/-- `lcm(A099496(n+1), A153727(2*n+1))/A153727(2*n+1)` -/
def P13902842723247003617.Spec : Prop :=
  ∀ n, P13902842723247003617.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P9125029964770339173

`A179131(n+1)/5`
-/

namespace A195549.P9125029964770339173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179131 (n + 1) : ℚ) / 5

end

end A195549.P9125029964770339173

namespace A195549

/-- `A179131(n+1)/5` -/
def P9125029964770339173.Spec : Prop :=
  ∀ n, P9125029964770339173.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P443875472956296205

`lcm(2, A099496(n+1))/2`
-/

namespace A195549.P443875472956296205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A099496 (n + 1)) : ℚ) / 2

end

end A195549.P443875472956296205

namespace A195549

/-- `lcm(2, A099496(n+1))/2` -/
def P443875472956296205.Spec : Prop :=
  ∀ n, P443875472956296205.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P2374762807167138653

`A179134(n+1)/A153727(n+1)`
-/

namespace A195549.P2374762807167138653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179134 (n + 1) : ℚ) / (A153727 (n + 1) : ℚ)

end

end A195549.P2374762807167138653

namespace A195549

/-- `A179134(n+1)/A153727(n+1)` -/
def P2374762807167138653.Spec : Prop :=
  ∀ n, P2374762807167138653.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P5724517364878011574

`A179131(n+1)-A153727(n)*A179133(n+1)`
-/

namespace A195549.P5724517364878011574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179131 (n + 1) - A153727 n * A179133 (n + 1)

end

end A195549.P5724517364878011574

namespace A195549

/-- `A179131(n+1)-A153727(n)*A179133(n+1)` -/
def P5724517364878011574.Spec : Prop :=
  ∀ n, P5724517364878011574.a n = A195549 (n + 1)

end A195549

/-! ## A195549.P16360951469609241461

`lcm(12, Δ[A000045(2*(n+1))])/12`
-/

namespace A195549.P16360951469609241461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 12 (f1 (n + 1) - f1 n) : ℚ) / 12

end

end A195549.P16360951469609241461

namespace A195549

/-- `lcm(12, Δ[A000045(2*(n+1))])/12` -/
def P16360951469609241461.Spec : Prop :=
  ∀ n, P16360951469609241461.a n = (A195549 (n + 1) : ℚ)

end A195549

/-! ## A195549.P4671101418659453536

`∩[A079497(n+1), A293173(n+1)]`
-/

namespace A195549.P4671101418659453536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195549.P4671101418659453536

namespace A195549

/-- `∩[A079497(n+1), A293173(n+1)]` -/
def P4671101418659453536.Spec : Prop :=
  ∀ n, (P4671101418659453536.a n : ℤ) = A195549 (n + 1)

end A195549

/-!
# A195550: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 3/2.

The programs for A195550, there is no canonical definition to state claims against.
-/

/-! ## A195550.P16876864739381422082

`A195560(A047878(2*(n+2))+n)`
-/

namespace A195550.P16876864739381422082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195560 (A047878 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A195550.P16876864739381422082

/-! ## A195550.P4863081340864880209

`A195560(A037453(n+1)+1)`
-/

namespace A195550.P4863081340864880209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195560 (A037453 (n + 1) + 1).toNat

end

end A195550.P4863081340864880209

/-!
# A195551: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 3/2.

The programs for A195551, there is no canonical definition to state claims against.
-/

/-! ## A195551.P17496472736328802387

`lcm(A003688(n+2), A052924(n+1))`
-/

namespace A195551.P17496472736328802387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003688 (n + 2)) (A052924 (n + 1))

end

end A195551.P17496472736328802387

/-! ## A195551.P12141896332261715581

`sqrt(A195552(n+1)²-A195550(n+1)²)`
-/

namespace A195551.P12141896332261715581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A195552 (n + 1) ^ 2 - A195550 (n + 1) ^ 2 : ℝ)

end

end A195551.P12141896332261715581

/-! ## A195551.P2033868900629870814

`lcm(Δ[A249580(4*(n+1))], A249580(4*n+3))`
-/

namespace A195551.P2033868900629870814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249580 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A249580 (4 * n + 3))

end

end A195551.P2033868900629870814

/-!
# A195552: Hypotenuses of primitive Pythagorean triples in A195550 and A195551.

The programs for A195552, there is no canonical definition to state claims against.
-/

/-! ## A195552.P409204791096187611

`A041019(∑[floor(a(n-3))])` with `a(0)=4, a(1)=4, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A195552.P409204791096187611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195552.P409204791096187611

/-! ## A195552.P114498531633151314

`A041019(A063087(n+2))`
-/

namespace A195552.P114498531633151314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041019 (A063087 (n + 2)).toNat

end

end A195552.P114498531633151314

/-! ## A195552.P15392418386836657395

`A195561(A047223(n+2))`
-/

namespace A195552.P15392418386836657395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195561 (A047223 (n + 2)).toNat

end

end A195552.P15392418386836657395

/-! ## A195552.P7421986125574022131

`A006190(2*n+3)/A100063(n+3)`
-/

namespace A195552.P7421986125574022131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006190 (2 * n + 3) : ℚ) / (A100063 (n + 3) : ℚ)

end

end A195552.P7421986125574022131

/-! ## A195552.P8054371574409901730

`abs(A006190(2*n+3)/A057079(n+1))`
-/

namespace A195552.P8054371574409901730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A006190 (2 * n + 3) : ℚ) / (A057079 (n + 1) : ℚ)|

end

end A195552.P8054371574409901730

/-!
# A195553: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 5/2.

The programs for A195553, there is no canonical definition to state claims against.
-/

/-! ## A195553.P10958794469928846202

`A195575(A008854(n+1)+2)`
-/

namespace A195553.P10958794469928846202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195575 (A008854 (n + 1) + 2).toNat

end

end A195553.P10958794469928846202

/-! ## A195553.P5401492926294076471

`A195575(A241008(n+1)-A000120(3*n+2))`
-/

namespace A195553.P5401492926294076471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195575 (A241008 (n + 1) - A000120 (3 * n + 2)).toNat

end

end A195553.P5401492926294076471

/-! ## A195553.P14188125763138825488

`A195575(A037453(n+1)+1)`
-/

namespace A195553.P14188125763138825488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195575 (A037453 (n + 1) + 1).toNat

end

end A195553.P14188125763138825488

/-! ## A195553.P17924649540326352034

`A195575(A259587(n+1)-A259572(n+1))`
-/

namespace A195553.P17924649540326352034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195575 (A259587 (n + 1) - A259572 (n + 1)).toNat

end

end A195553.P17924649540326352034

/-!
# A195554: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 5/2.

The programs for A195554, there is no canonical definition to state claims against.
-/

/-! ## A195554.P13754351264327024005

`Δ[A099365(n+1)]/A339526(2*n+3)`
-/

namespace A195554.P13754351264327024005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099365 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A339526 (2 * n + 3) : ℚ)

end

end A195554.P13754351264327024005

/-! ## A195554.P18252026794149048387

`A195574(A008854(n+1)+2)`
-/

namespace A195554.P18252026794149048387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195574 (A008854 (n + 1) + 2).toNat

end

end A195554.P18252026794149048387

/-! ## A195554.P17427868113536093444

`A195574(A037453(n+1)+1)`
-/

namespace A195554.P17427868113536093444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195574 (A037453 (n + 1) + 1).toNat

end

end A195554.P17427868113536093444

/-! ## A195554.P18061883609674635088

`A195574(A259587(n+1)-A259572(n+1))`
-/

namespace A195554.P18061883609674635088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195574 (A259587 (n + 1) - A259572 (n + 1)).toNat

end

end A195554.P18061883609674635088

/-!
# A195555: Hypotenuses of primitive Pythagorean triples in A195553 and A195554.

The programs for A195555, there is no canonical definition to state claims against.
-/

/-! ## A195555.P16624831282658536678

`A041047(A063087(n+2))`
-/

namespace A195555.P16624831282658536678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041047 (A063087 (n + 2)).toNat

end

end A195555.P16624831282658536678

/-! ## A195555.P18439103057901998284

`∩[A041211(n+2), A041047(n)]`
-/

namespace A195555.P18439103057901998284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041211 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195555.P18439103057901998284

/-! ## A195555.P16757965401895756985

`lcm(12, A052918(2*(n+1)))/12`
-/

namespace A195555.P16757965401895756985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 12 (A052918 (2 * (n + 1))) : ℚ) / 12

end

end A195555.P16757965401895756985

/-! ## A195555.P6000207764101287887

`A097835(n+1)/gcd(2, A087130(n))`
-/

namespace A195555.P6000207764101287887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097835 (n + 1) : ℚ) / (Int.gcd 2 (A087130 n) : ℚ)

end

end A195555.P6000207764101287887

/-! ## A195555.P2667970813908042039

`A052918(2*n+2)/A052918(2*n+2)%4`
-/

namespace A195555.P2667970813908042039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052918 (2 * n + 2) : ℚ) / (Int.tmod (A052918 (2 * n + 2)) 4 : ℚ)

end

end A195555.P2667970813908042039

/-!
# A195556: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 1/3.

The programs for A195556, there is no canonical definition to state claims against.
-/

/-! ## A195556.P5135228354400142578

`A111609(A056391(2*n+1))*A248513(2*n+1)`
-/

namespace A195556.P5135228354400142578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111609 (A056391 (2 * n + 1)).toNat * A248513 (2 * n + 1)

end

end A195556.P5135228354400142578

/-!
# A195557: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 1/3.

The programs for A195557, there is no canonical definition to state claims against.
-/

/-! ## A195557.P1743565844328162805

`A001318(record[Δ[A122149(n+1)]])`
-/

namespace A195557.P1743565844328162805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122149 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A195557.P1743565844328162805

/-!
# A195558: Hypotenuses of primitive Pythagorean triples in A195556 and A195557.

The programs for A195558, the canonical program `A195558.P16219263023274103274` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195558 has offset 1).

The definition of A195558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195558.P16219263023274103274

`∑[A078469(Δ[A208994(n)])]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195558

/-- `∑[A078469(Δ[A208994(n)])]` -/
def P16219263023274103274.Spec : Prop :=
  ∀ n, P16219263023274103274.a n = A195558 (n + 1)

theorem P16219263023274103274.correct : P16219263023274103274.Spec := by
  intro n
  simp only [A195558, Nat.add_sub_cancel]

end A195558

/-! ## A195558.P13694069997206557807

`∑[A078469(A008611(2*n+1))]`
-/

namespace A195558.P13694069997206557807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078469 (A008611 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195558.P13694069997206557807

namespace A195558

/-- `∑[A078469(A008611(2*n+1))]` -/
def P13694069997206557807.Spec : Prop :=
  ∀ n, P13694069997206557807.a n = A195558 (n + 1)

end A195558

/-! ## A195558.P1255588902408344910

`A106610(A052454(n+2))`
-/

namespace A195558.P1255588902408344910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A052454 (n + 2)).toNat

end

end A195558.P1255588902408344910

namespace A195558

/-- `A106610(A052454(n+2))` -/
def P1255588902408344910.Spec : Prop :=
  ∀ n, P1255588902408344910.a n = A195558 (n + 1)

end A195558

/-! ## A195558.P12727238139417473329

`A146535(A180003(n+2))`
-/

namespace A195558.P12727238139417473329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A180003 (n + 2)).toNat

end

end A195558.P12727238139417473329

namespace A195558

/-- `A146535(A180003(n+2))` -/
def P12727238139417473329.Spec : Prop :=
  ∀ n, P12727238139417473329.a n = A195558 (n + 1)

end A195558

/-!
# A195559: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 2/3.

The programs for A195559, there is no canonical definition to state claims against.
-/

/-! ## A195559.P100825738509037926

`sqrt(A195561(n+1)²-A195560(n+1)²)`
-/

namespace A195559.P100825738509037926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A195561 (n + 1) ^ 2 - A195560 (n + 1) ^ 2 : ℝ)

end

end A195559.P100825738509037926

/-!
# A195560: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 2/3.

The programs for A195560, there is no canonical definition to state claims against.
-/

/-! ## A195560.P312665604464250973

`sqrt(A195561(n+1)²-A195559(n+1)²)`
-/

namespace A195560.P312665604464250973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A195561 (n + 1) ^ 2 - A195559 (n + 1) ^ 2 : ℝ)

end

end A195560.P312665604464250973

/-!
# A195561: Hypotenuses of primitive Pythagorean triples in A195559 and A195560.

The programs for A195561, there is no canonical definition to state claims against.
-/

/-! ## A195561.P15000060051910955432

`sqrt(A195559(n+1)²+A195560(n+1)²)`
-/

namespace A195561.P15000060051910955432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A195559 (n + 1) ^ 2 + A195560 (n + 1) ^ 2 : ℝ)

end

end A195561.P15000060051910955432

/-!
# A195563: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 1/4.

The programs for A195563, there is no canonical definition to state claims against.
-/

/-! ## A195563.P12655850102390185895

`A087606(A260793(n+1))-A137501(2*n+1)`
-/

namespace A195563.P12655850102390185895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087606 (A260793 (n + 1)).toNat - A137501 (2 * n + 1)

end

end A195563.P12655850102390185895

/-!
# A195564: Hypotenuses of primitive Pythagorean triples in A195561 and A195562.

The programs for A195564, there is no canonical definition to state claims against.
-/

/-! ## A195564.P111858091474557090

`A199772(n+2)/gcd(4, A199772(n+2))`
-/

namespace A195564.P111858091474557090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199772 (n + 2) : ℚ) / (Int.gcd 4 (A199772 (n + 2)) : ℚ)

end

end A195564.P111858091474557090

/-! ## A195564.P8185746812880523182

`A199772(n+2)/A240226(A228157(3*(n+1)))`
-/

namespace A195564.P8185746812880523182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199772 (n + 2) : ℚ) / (A240226 (A228157 (3 * (n + 1))).toNat : ℚ)

end

end A195564.P8185746812880523182

/-! ## A195564.P2834911474632979445

`A000265(A199772(n+2))`
-/

namespace A195564.P2834911474632979445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A199772 (n + 2)).toNat

end

end A195564.P2834911474632979445

/-!
# A195572: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 1/5.

The programs for A195572, there is no canonical definition to state claims against.
-/

/-! ## A195572.P4109569563422430515

`A056239(A092317(n+1)+A092277(n))`
-/

namespace A195572.P4109569563422430515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A092317 (n + 1) + A092277 n).toNat

end

end A195572.P4109569563422430515

/-!
# A195577: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 3/5.

The programs for A195577, there is no canonical definition to state claims against.
-/

/-! ## A195577.P7150754132584119966

`A026366(A195569(n+1)-1)`
-/

namespace A195577.P7150754132584119966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A195569 (n + 1) - 1).toNat

end

end A195577.P7150754132584119966

/-!
# A195581: Number T(n,k) of permutations of {1,2,...,n} that result in a binary search tree of height k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A195581, there is no canonical definition to state claims against.
-/

/-! ## A195581.P5827362062911622461

`A194443(A122890(n)*A122896(n))`
-/

namespace A195581.P5827362062911622461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (A122890 n * A122896 n).toNat

end

end A195581.P5827362062911622461

/-! ## A195581.P1024253137855053786

`A194443(A122890(n)*A291883(n))`
-/

namespace A195581.P1024253137855053786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (A122890 n * A291883 n).toNat

end

end A195581.P1024253137855053786

/-! ## A195581.P12203635282629379053

`A220495(A122890(n)*A291883(n))`
-/

namespace A195581.P12203635282629379053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220495 (A122890 n * A291883 n).toNat

end

end A195581.P12203635282629379053

/-! ## A195581.P17965781599544381205

`A194443(lcm(A122890(n), A122896(n)))`
-/

namespace A195581.P17965781599544381205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (Int.lcm (A122890 n) (A122896 n))

end

end A195581.P17965781599544381205

/-! ## A195581.P4503917885669336332

`A047998(n)*A053164(A011782(n))`
-/

namespace A195581.P4503917885669336332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n * A053164 (A011782 n).toNat

end

end A195581.P4503917885669336332

/-!
# A195582: Numerator of the average height of a binary search tree on n elements.

The programs for A195582, there is no canonical definition to state claims against.
-/

/-! ## A195582.P16385727242151961382

`A195583(n)/A000142(n)*A316944(n)`
-/

namespace A195582.P16385727242151961382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195583 n : ℚ) / (A000142 n : ℚ) * (A316944 n : ℚ)

end

end A195582.P16385727242151961382

/-! ## A195582.P7527840533795295967

`A374811(n)+A195583(n)`
-/

namespace A195582.P7527840533795295967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374811 n + A195583 n

end

end A195582.P7527840533795295967

/-!
# A195583: Denominator of the average height of a binary search tree on n elements.

The programs for A195583, there is no canonical definition to state claims against.
-/

/-! ## A195583.P4488144909665126742

`A000142(n)/gcd(A000142(n), A316944(n))`
-/

namespace A195583.P4488144909665126742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A316944 n) : ℚ)

end

end A195583.P4488144909665126742

/-! ## A195583.P15552805137649195080

`A195582(n)-A374811(n)`
-/

namespace A195583.P15552805137649195080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195582 n - A374811 n

end

end A195583.P15552805137649195080

/-! ## A195583.P15298389398059762440

`gcd(n!, A211134(comp[n²]))`
-/

namespace A195583.P15298389398059762440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A211134 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A195583.P15298389398059762440

/-! ## A195583.P12210699798171268795

`A030101(C(n, 2)^round(xor(4, n²)/24))`
-/

namespace A195583.P12210699798171268795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) ^ (SequenceMachineLib.roundAway ((Nat.xor 4 (n ^ 2) : ℚ) / 24) : ℤ))).toNat

end

end A195583.P12210699798171268795

/-!
# A195584: O.g.f.: exp( Sum_{n>=1} (sigma(2*n^2)-sigma(n^2)) * x^n/n ).

The programs for A195584, there is no canonical definition to state claims against.
-/

/-! ## A195584.P5724370398728740887

`record[lcm(A106347(n), A169787(n+1))]`
-/

namespace A195584.P5724370398728740887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106347 n) (A169787 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195584.P5724370398728740887

/-! ## A195584.P202298855329567757

`A170905(A094015(n)+2^n-1)`
-/

namespace A195584.P202298855329567757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (A094015 n + ((2 ^ n : ℤ) - 1)).toNat

end

end A195584.P202298855329567757

/-! ## A195584.P10770702706695241475

`A170905(or(2^n-1, A094015(n)))`
-/

namespace A195584.P10770702706695241475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (Int.lor ((2 ^ n : ℤ) - 1) (A094015 n)).toNat

end

end A195584.P10770702706695241475

/-!
# A195585: sigma(2*n^2) - sigma(n^2).

The programs for A195585, the canonical program `A195585.P435392344371100577` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195585 has offset 1).

The definition of A195585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195585.P435392344371100577

`A054785((n+1)²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A195585

/-- `A054785((n+1)²)` -/
def P435392344371100577.Spec : Prop :=
  ∀ n, P435392344371100577.a n = A195585 (n + 1)

theorem P435392344371100577.correct : P435392344371100577.Spec := by
  intro n
  simp only [A195585, Nat.add_sub_cancel]

end A195585

/-! ## A195585.P14460465709526089689

`A065765(n+1)-A065764(n+1)`
-/

namespace A195585.P14460465709526089689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065765 (n + 1) - A065764 (n + 1)

end

end A195585.P14460465709526089689

namespace A195585

/-- `A065765(n+1)-A065764(n+1)` -/
def P14460465709526089689.Spec : Prop :=
  ∀ n, P14460465709526089689.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P18305592843320295772

`A065764((n+1)/2^val(n+1, 2))+A065764(n+1)`
-/

namespace A195585.P18305592843320295772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + A065764 (n + 1)

end

end A195585.P18305592843320295772

namespace A195585

/-- `A065764((n+1)/2^val(n+1, 2))+A065764(n+1)` -/
def P18305592843320295772.Spec : Prop :=
  ∀ n, P18305592843320295772.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P15220991092624412185

`A065764((n+1)/and(n+1, -(n+1)))+A065764(n+1)`
-/

namespace A195585.P15220991092624412185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + A065764 (n + 1)

end

end A195585.P15220991092624412185

namespace A195585

/-- `A065764((n+1)/and(n+1, -(n+1)))+A065764(n+1)` -/
def P15220991092624412185.Spec : Prop :=
  ∀ n, P15220991092624412185.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P7888456470769364752

`A065764(A000265(n+1))+A065764(n+1)`
-/

namespace A195585.P7888456470769364752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (A000265 (n + 1)).toNat + A065764 (n + 1)

end

end A195585.P7888456470769364752

namespace A195585

/-- `A065764(A000265(n+1))+A065764(n+1)` -/
def P7888456470769364752.Spec : Prop :=
  ∀ n, P7888456470769364752.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P17942524796388796249

`A097022(2*(n+1))-A097022(n+1)`
-/

namespace A195585.P17942524796388796249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097022 (2 * (n + 1)) - A097022 (n + 1)

end

end A195585.P17942524796388796249

namespace A195585

/-- `A097022(2*(n+1))-A097022(n+1)` -/
def P17942524796388796249.Spec : Prop :=
  ∀ n, P17942524796388796249.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P17866456834664789047

`∑{d}[(n+1)², lcm(2, #)]`
-/

namespace A195585.P17866456834664789047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm 2 d

end

end A195585.P17866456834664789047

namespace A195585

/-- `∑{d}[(n+1)², lcm(2, #)]` -/
def P17866456834664789047.Spec : Prop :=
  ∀ n, (P17866456834664789047.a n : ℤ) = A195585 (n + 1)

end A195585

/-! ## A195585.P1431384417755076260

`A065765(n+1)-A000203((n+1)²)`
-/

namespace A195585.P1431384417755076260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065765 (n + 1) - A000203 ((n + 1) ^ 2)

end

end A195585.P1431384417755076260

namespace A195585

/-- `A065765(n+1)-A000203((n+1)²)` -/
def P1431384417755076260.Spec : Prop :=
  ∀ n, P1431384417755076260.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P12457915810871571892

`A000203((n+1)²)+A000203(A000265((n+1)²))`
-/

namespace A195585.P12457915810871571892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) + A000203 (A000265 ((n + 1) ^ 2)).toNat

end

end A195585.P12457915810871571892

namespace A195585

/-- `A000203((n+1)²)+A000203(A000265((n+1)²))` -/
def P12457915810871571892.Spec : Prop :=
  ∀ n, P12457915810871571892.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P14038109194863498805

`A000203(2*(n+1)²)-A000203((n+1)²)`
-/

namespace A195585.P14038109194863498805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1) ^ 2) - A000203 ((n + 1) ^ 2)

end

end A195585.P14038109194863498805

namespace A195585

/-- `A000203(2*(n+1)²)-A000203((n+1)²)` -/
def P14038109194863498805.Spec : Prop :=
  ∀ n, P14038109194863498805.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P16603229485689614569

`A000203(A001105(n+1))-A065764(n+1)`
-/

namespace A195585.P16603229485689614569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001105 (n + 1)).toNat - A065764 (n + 1)

end

end A195585.P16603229485689614569

namespace A195585

/-- `A000203(A001105(n+1))-A065764(n+1)` -/
def P16603229485689614569.Spec : Prop :=
  ∀ n, P16603229485689614569.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P14439952846405881192

`A326066(2*(n+1)²)`
-/

namespace A195585.P14439952846405881192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (2 * (n + 1) ^ 2)

end

end A195585.P14439952846405881192

namespace A195585

/-- `A326066(2*(n+1)²)` -/
def P14439952846405881192.Spec : Prop :=
  ∀ n, P14439952846405881192.a n = A195585 (n + 1)

end A195585

/-! ## A195585.P3825867579259211473

`∑{d}[(n+1)², A109043(#)]`
-/

namespace A195585.P3825867579259211473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109043 d

end

end A195585.P3825867579259211473

namespace A195585

/-- `∑{d}[(n+1)², A109043(#)]` -/
def P3825867579259211473.Spec : Prop :=
  ∀ n, P3825867579259211473.a n = A195585 (n + 1)

end A195585

/-!
# A195587: a(n) = A163659(n^2), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

The programs for A195587, the canonical program `A195587.P17624761415793386705` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195587 has offset 1).

The definition of A195587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163659, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A195587.P17624761415793386705

`A163659((n+1)²)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A195587

/-- `A163659((n+1)²)` -/
def P17624761415793386705.Spec : Prop :=
  ∀ n, P17624761415793386705.a n = A195587 (n + 1)

theorem P17624761415793386705.correct : P17624761415793386705.Spec := by
  intro n
  simp only [A195587, Nat.add_sub_cancel]

end A195587

/-! ## A195587.P8776155020400804503

`A061347(n+1)*A379007(n+1)`
-/

namespace A195587.P8776155020400804503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A379007 (n + 1)

end

end A195587.P8776155020400804503

namespace A195587

/-- `A061347(n+1)*A379007(n+1)` -/
def P8776155020400804503.Spec : Prop :=
  ∀ n, P8776155020400804503.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P5111152775256363172

`A061347(n+1)*A083420(A007814(n+1))`
-/

namespace A195587.P5111152775256363172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A083420 (A007814 (n + 1)).toNat

end

end A195587.P5111152775256363172

namespace A195587

/-- `A061347(n+1)*A083420(A007814(n+1))` -/
def P5111152775256363172.Spec : Prop :=
  ∀ n, P5111152775256363172.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P1527275436790026831

`A061347(n+1)*A074148(A038712(n+1))`
-/

namespace A195587.P1527275436790026831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A074148 (A038712 (n + 1)).toNat

end

end A195587.P1527275436790026831

namespace A195587

/-- `A061347(n+1)*A074148(A038712(n+1))` -/
def P1527275436790026831.Spec : Prop :=
  ∀ n, P1527275436790026831.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P3011366728553721230

`A074148(A038712(n+1))*A237649(A038500(n+1))`
-/

namespace A195587.P3011366728553721230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A038712 (n + 1)).toNat * A237649 (A038500 (n + 1)).toNat

end

end A195587.P3011366728553721230

namespace A195587

/-- `A074148(A038712(n+1))*A237649(A038500(n+1))` -/
def P3011366728553721230.Spec : Prop :=
  ∀ n, P3011366728553721230.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P9714249298774837059

`A000203(A006519(n+1)²)*A061347(n+1)`
-/

namespace A195587.P9714249298774837059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006519 (n + 1) ^ 2).toNat * A061347 (n + 1)

end

end A195587.P9714249298774837059

namespace A195587

/-- `A000203(A006519(n+1)²)*A061347(n+1)` -/
def P9714249298774837059.Spec : Prop :=
  ∀ n, P9714249298774837059.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P5605582169793710283

`A000203(A118830(n+1)²)*A061347(n+1)`
-/

namespace A195587.P5605582169793710283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A118830 (n + 1) ^ 2).toNat * A061347 (n + 1)

end

end A195587.P5605582169793710283

namespace A195587

/-- `A000203(A118830(n+1)²)*A061347(n+1)` -/
def P5605582169793710283.Spec : Prop :=
  ∀ n, P5605582169793710283.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P12818081399441832409

`A038712(A006519(n+1)²)*A061347(n+1)`
-/

namespace A195587.P12818081399441832409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A006519 (n + 1) ^ 2).toNat * A061347 (n + 1)

end

end A195587.P12818081399441832409

namespace A195587

/-- `A038712(A006519(n+1)²)*A061347(n+1)` -/
def P12818081399441832409.Spec : Prop :=
  ∀ n, P12818081399441832409.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P17597946877374174500

`A046913(A006519(n+1)²)*A061347(n+1)`
-/

namespace A195587.P17597946877374174500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (A006519 (n + 1) ^ 2).toNat * A061347 (n + 1)

end

end A195587.P17597946877374174500

namespace A195587

/-- `A046913(A006519(n+1)²)*A061347(n+1)` -/
def P17597946877374174500.Spec : Prop :=
  ∀ n, P17597946877374174500.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P13181871712951139207

`A038712(A055975(n+1)²)*A061347(n+1)`
-/

namespace A195587.P13181871712951139207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A055975 (n + 1) ^ 2).toNat * A061347 (n + 1)

end

end A195587.P13181871712951139207

namespace A195587

/-- `A038712(A055975(n+1)²)*A061347(n+1)` -/
def P13181871712951139207.Spec : Prop :=
  ∀ n, P13181871712951139207.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P552929889342691987

`A038712((n+1)²)*A061347(n+1)`
-/

namespace A195587.P552929889342691987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 ((n + 1) ^ 2) * A061347 (n + 1)

end

end A195587.P552929889342691987

namespace A195587

/-- `A038712((n+1)²)*A061347(n+1)` -/
def P552929889342691987.Spec : Prop :=
  ∀ n, P552929889342691987.a n = A195587 (n + 1)

end A195587

/-! ## A195587.P8464896728055239781

`A038712((n+1)²)*A237649(A038500(n+1))`
-/

namespace A195587.P8464896728055239781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 ((n + 1) ^ 2) * A237649 (A038500 (n + 1)).toNat

end

end A195587.P8464896728055239781

namespace A195587

/-- `A038712((n+1)²)*A237649(A038500(n+1))` -/
def P8464896728055239781.Spec : Prop :=
  ∀ n, P8464896728055239781.a n = A195587 (n + 1)

end A195587

/-!
# A195590: Number of ways to place 2n nonattacking kings on a vertical cylinder 4 X 2n.

The programs for A195590, the canonical program `A195590.P14472549165152331506` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195590 has offset 1).

The definition of A195590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195590.P14472549165152331506

`(5*(n+1)-3)*2^(n+1)+4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195590

/-- `(5*(n+1)-3)*2^(n+1)+4` -/
def P14472549165152331506.Spec : Prop :=
  ∀ n, P14472549165152331506.a n = A195590 (n + 1)

theorem P14472549165152331506.correct : P14472549165152331506.Spec := by
  intro n
  simp only [A195590, Nat.add_sub_cancel]

end A195590

/-! ## A195590.P1807977486692778359

`∑[ogf((8-8x+4x^2)/(1-4x+4x^2))]`
-/

namespace A195590.P1807977486692778359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -8, 4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195590.P1807977486692778359

namespace A195590

/-- `∑[ogf((8-8x+4x^2)/(1-4x+4x^2))]` -/
def P1807977486692778359.Spec : Prop :=
  ∀ n, P1807977486692778359.a n = A195590 (n + 1)

end A195590

/-! ## A195590.P1789964748311662538

`2*(a(n-1)-(2-5*2^n))` with `a(0)=8`
-/

namespace A195590.P1789964748311662538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  2 * (a (n - 1) - (2 - (5 * 2 ^ n : ℤ)))

end

end A195590.P1789964748311662538

namespace A195590

/-- `2*(a(n-1)-(2-5*2^n))` -/
def P1789964748311662538.Spec : Prop :=
  ∀ n, P1789964748311662538.a n = A195590 (n + 1)

theorem P1789964748311662538.correct : P1789964748311662538.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A195590, Nat.add_sub_cancel, A195590.P1789964748311662538.a, A195590.P14472549165152331506.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A195590, Nat.add_sub_cancel, A195590.P1789964748311662538.a, A195590.P14472549165152331506.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195590

/-! ## A195590.P1096778144501023529

`xor(1, A048498(n+2))`
-/

namespace A195590.P1096778144501023529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A048498 (n + 2))

end

end A195590.P1096778144501023529

namespace A195590

/-- `xor(1, A048498(n+2))` -/
def P1096778144501023529.Spec : Prop :=
  ∀ n, P1096778144501023529.a n = A195590 (n + 1)

end A195590

/-! ## A195590.P17297804013000933416

`2*(2^n*A016873(n)+2)`
-/

namespace A195590.P17297804013000933416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) * A016873 n + 2)

end

end A195590.P17297804013000933416

namespace A195590

/-- `2*(2^n*A016873(n)+2)` -/
def P17297804013000933416.Spec : Prop :=
  ∀ n, P17297804013000933416.a n = A195590 (n + 1)

theorem P17297804013000933416.correct : P17297804013000933416.Spec := by
  intro n
  simp only [A195590, Nat.add_sub_cancel, A195590.P17297804013000933416.a, A195590.P14472549165152331506.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A195590

/-! ## A195590.P2198170305668831709

`4*(A048476(n)+A000079(n))`
-/

namespace A195590.P2198170305668831709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A048476 n + A000079 n)

end

end A195590.P2198170305668831709

namespace A195590

/-- `4*(A048476(n)+A000079(n))` -/
def P2198170305668831709.Spec : Prop :=
  ∀ n, P2198170305668831709.a n = A195590 (n + 1)

end A195590

/-! ## A195590.P12955648545920882944

`4*(A048498(n)+A048487(n))`
-/

namespace A195590.P12955648545920882944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A048498 n + A048487 n)

end

end A195590.P12955648545920882944

namespace A195590

/-- `4*(A048498(n)+A048487(n))` -/
def P12955648545920882944.Spec : Prop :=
  ∀ n, P12955648545920882944.a n = A195590 (n + 1)

end A195590

/-! ## A195590.P1419392508058512436

`floor(A048498(n+2)-1/A057021(n+1))`
-/

namespace A195590.P1419392508058512436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048498 (n + 2) : ℚ) - 1 / (A057021 (n + 1) : ℚ)⌋

end

end A195590.P1419392508058512436

namespace A195590

/-- `floor(A048498(n+2)-1/A057021(n+1))` -/
def P1419392508058512436.Spec : Prop :=
  ∀ n, P1419392508058512436.a n = A195590 (n + 1)

end A195590

/-! ## A195590.P9383491944478266222

`ogf((8-8x+4x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A195590.P9383491944478266222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -8, 4] [1, -5, 8, -4] n

end

end A195590.P9383491944478266222

namespace A195590

/-- `ogf((8-8x+4x^2)/(1-5x+8x^2-4x^3))` -/
def P9383491944478266222.Spec : Prop :=
  ∀ n, P9383491944478266222.a n = A195590 (n + 1)

end A195590

/-!
# A195591: Number of ways to place 3n nonattacking kings on a vertical cylinder 6 X 2n.

The programs for A195591, the canonical program `A195591.P13182911666003397043` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195591 has offset 1).

The definition of A195591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195591.P13182911666003397043

`(31*(n+1)-65)*2^(n+1)+18*(n+1)+66`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195591

/-- `(31*(n+1)-65)*2^(n+1)+18*(n+1)+66` -/
def P13182911666003397043.Spec : Prop :=
  ∀ n, P13182911666003397043.a n = A195591 (n + 1)

theorem P13182911666003397043.correct : P13182911666003397043.Spec := by
  intro n
  simp only [A195591, Nat.add_sub_cancel]

end A195591

/-!
# A195592: Number of ways to place 4n nonattacking kings on a vertical cylinder 8 X 2n.

The programs for A195592, the canonical program `A195592.P9576766212288812463` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195592 has offset 1).

The definition of A195592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195592.P9576766212288812463

`(221*(n+1)-779)*2^(n+1)+44*(n+1)²+324*(n+1)+780`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195592

/-- `(221*(n+1)-779)*2^(n+1)+44*(n+1)²+324*(n+1)+780` -/
def P9576766212288812463.Spec : Prop :=
  ∀ n, P9576766212288812463.a n = A195592 (n + 1)

theorem P9576766212288812463.correct : P9576766212288812463.Spec := by
  intro n
  simp only [A195592, Nat.add_sub_cancel]

end A195592

