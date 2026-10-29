import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
# A105306: Triangle read by rows: T(n,k) is the number of directed column-convex polyominoes of area n, having the top of the rightmost column at height k.

The programs for A105306, the canonical program `A105306.P13292258459623253563` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105306 has offset 1).

The definition of A105306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105306.P13292258459623253563

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105306

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P13292258459623253563.Spec : Prop :=
  ∀ n, P13292258459623253563.a n = A105306 (n + 1)

theorem P13292258459623253563.correct : P13292258459623253563.Spec := by
  intro n
  simp only [A105306, Nat.add_sub_cancel]

end A105306

/-! ## A105306.P7153634377307568072

`A062110(comp[∑[n]])`
-/

namespace A105306.P7153634377307568072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A105306.P7153634377307568072

namespace A105306

/-- `A062110(comp[∑[n]])` -/
def P7153634377307568072.Spec : Prop :=
  ∀ n, P7153634377307568072.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P16501418772827693097

`(A106195(n)+A062110(n))/2`
-/

namespace A105306.P16501418772827693097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106195 n + A062110 n : ℚ) / 2

end

end A105306.P16501418772827693097

namespace A105306

/-- `(A106195(n)+A062110(n))/2` -/
def P16501418772827693097.Spec : Prop :=
  ∀ n, P16501418772827693097.a n = (A105306 (n + 1) : ℚ)

end A105306

/-! ## A105306.P13287041247716868333

`2*A106195(n)-A207615(n+1)`
-/

namespace A105306.P13287041247716868333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106195 n - A207615 (n + 1)

end

end A105306.P13287041247716868333

namespace A105306

/-- `2*A106195(n)-A207615(n+1)` -/
def P13287041247716868333.Spec : Prop :=
  ∀ n, P13287041247716868333.a n = A105306 (n + 1)

theorem P13287041247716868333.correct : P13287041247716868333.Spec := by
  intro n
  simp only [A105306, Nat.add_sub_cancel, A105306.P13287041247716868333.a, A105306.P13292258459623253563.a, A106195, A106195.P14550587330251621766.a, A207615, A207615.P277629571045541267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105306

/-! ## A105306.P11979812983610526725

`or(A000007(n), A062110(A014132(n+1)))`
-/

namespace A105306.P11979812983610526725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A062110 (A014132 (n + 1)).toNat)

end

end A105306.P11979812983610526725

namespace A105306

/-- `or(A000007(n), A062110(A014132(n+1)))` -/
def P11979812983610526725.Spec : Prop :=
  ∀ n, P11979812983610526725.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P1631243755789695135

`(A000027(n+1)-n)*A062110(A014132(n+1))`
-/

namespace A105306.P1631243755789695135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A062110 (A014132 (n + 1)).toNat

end

end A105306.P1631243755789695135

namespace A105306

/-- `(A000027(n+1)-n)*A062110(A014132(n+1))` -/
def P1631243755789695135.Spec : Prop :=
  ∀ n, P1631243755789695135.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P16990697378023181156

`A062110(A014132(n+1)+A000007(n))+A000007(n)`
-/

namespace A105306.P16990697378023181156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A014132 (n + 1) + A000007 n).toNat + A000007 n

end

end A105306.P16990697378023181156

namespace A105306

/-- `A062110(A014132(n+1)+A000007(n))+A000007(n)` -/
def P16990697378023181156.Spec : Prop :=
  ∀ n, P16990697378023181156.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P18109628150485680829

`A160232(A038722(n+1))`
-/

namespace A105306.P18109628150485680829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A038722 (n + 1)).toNat

end

end A105306.P18109628150485680829

namespace A105306

/-- `A160232(A038722(n+1))` -/
def P18109628150485680829.Spec : Prop :=
  ∀ n, P18109628150485680829.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P10084768420471583905

`A160232(A061579(n)+1)`
-/

namespace A105306.P10084768420471583905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A061579 n + 1).toNat

end

end A105306.P10084768420471583905

namespace A105306

/-- `A160232(A061579(n)+1)` -/
def P10084768420471583905.Spec : Prop :=
  ∀ n, P10084768420471583905.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P17766213994181787787

`A160232(A093995(n+1)-n)`
-/

namespace A105306.P17766213994181787787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A105306.P17766213994181787787

namespace A105306

/-- `A160232(A093995(n+1)-n)` -/
def P17766213994181787787.Spec : Prop :=
  ∀ n, P17766213994181787787.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P8953882787271779993

`A106195(n)-A049600(A061579(n))`
-/

namespace A105306.P8953882787271779993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - A049600 (A061579 n).toNat

end

end A105306.P8953882787271779993

namespace A105306

/-- `A106195(n)-A049600(A061579(n))` -/
def P8953882787271779993.Spec : Prop :=
  ∀ n, P8953882787271779993.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P16708492157167903488

`A106195(n)-A049600(A038722(n+1)-1)`
-/

namespace A105306.P16708492157167903488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - A049600 (A038722 (n + 1) - 1).toNat

end

end A105306.P16708492157167903488

namespace A105306

/-- `A106195(n)-A049600(A038722(n+1)-1)` -/
def P16708492157167903488.Spec : Prop :=
  ∀ n, P16708492157167903488.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P8301598060858786231

`A106195(n)-A049600(A038722(n+2))`
-/

namespace A105306.P8301598060858786231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - A049600 (A038722 (n + 2)).toNat

end

end A105306.P8301598060858786231

namespace A105306

/-- `A106195(n)-A049600(A038722(n+2))` -/
def P8301598060858786231.Spec : Prop :=
  ∀ n, P8301598060858786231.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P12333373829337853546

`A188510(A005843(n))+A062110(A014132(n+1))`
-/

namespace A105306.P12333373829337853546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A005843 n).toNat + A062110 (A014132 (n + 1)).toNat

end

end A105306.P12333373829337853546

namespace A105306

/-- `A188510(A005843(n))+A062110(A014132(n+1))` -/
def P12333373829337853546.Spec : Prop :=
  ∀ n, P12333373829337853546.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P16912429459299784327

`A188510(A008586(n))+A062110(A014132(n+1))`
-/

namespace A105306.P16912429459299784327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A008586 n).toNat + A062110 (A014132 (n + 1)).toNat

end

end A105306.P16912429459299784327

namespace A105306

/-- `A188510(A008586(n))+A062110(A014132(n+1))` -/
def P16912429459299784327.Spec : Prop :=
  ∀ n, P16912429459299784327.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P10625285519426846639

`A062110(A014132(n+1))%A022114(n)`
-/

namespace A105306.P10625285519426846639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062110 (A014132 (n + 1)).toNat) (A022114 n)

end

end A105306.P10625285519426846639

namespace A105306

/-- `A062110(A014132(n+1))%A022114(n)` -/
def P10625285519426846639.Spec : Prop :=
  ∀ n, P10625285519426846639.a n = A105306 (n + 1)

end A105306

/-! ## A105306.P1980527088230858884

`A000027(A062110(A014132(n+1)))`
-/

namespace A105306.P1980527088230858884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A062110 (A014132 (n + 1)).toNat).toNat

end

end A105306.P1980527088230858884

namespace A105306

/-- `A000027(A062110(A014132(n+1)))` -/
def P1980527088230858884.Spec : Prop :=
  ∀ n, P1980527088230858884.a n = A105306 (n + 1)

end A105306

/-!
# A105307: Base-2 logarithm of the number of divisors of Fibonacci(n) if that number is a power of 2, otherwise -1.

The programs for A105307, the canonical program `A105307.P5045705934214273131` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105307 has offset 1).

The definition of A105307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105307.P5045705934214273131

`A104117(A063375(n+1))-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A105307

/-- `A104117(A063375(n+1))-1` -/
def P5045705934214273131.Spec : Prop :=
  ∀ n, P5045705934214273131.a n = A105307 (n + 1)

theorem P5045705934214273131.correct : P5045705934214273131.Spec := by
  intro n
  simp only [A105307, Nat.add_sub_cancel]

end A105307

/-! ## A105307.P11830436371861548896

`A358580(2*A063375(n+1))`
-/

namespace A105307.P11830436371861548896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358580 (2 * A063375 (n + 1)).toNat

end

end A105307.P11830436371861548896

namespace A105307

/-- `A358580(2*A063375(n+1))` -/
def P11830436371861548896.Spec : Prop :=
  ∀ n, P11830436371861548896.a n = A105307 (n + 1)

end A105307

/-! ## A105307.P9458150915394342932

`A125989(3*A063375(n+1))`
-/

namespace A105307.P9458150915394342932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125989 (3 * A063375 (n + 1)).toNat

end

end A105307.P9458150915394342932

namespace A105307

/-- `A125989(3*A063375(n+1))` -/
def P9458150915394342932.Spec : Prop :=
  ∀ n, P9458150915394342932.a n = A105307 (n + 1)

end A105307

/-!
# A105308: Indices n of primes p(n), p(n+2) such that p(n)-1 and p(n+2)-1 have the same largest prime factor.

The programs for A105308, there is no canonical definition to state claims against.
-/

/-! ## A105308.P5613679488185602086

`A026255(A059305(n+1))+3`
-/

namespace A105308.P5613679488185602086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A059305 (n + 1)).toNat + 3

end

end A105308.P5613679488185602086

/-!
# A105309: a(n) = |b(n)|^2 = x^2 + 3*y^2 where (x,y,y,y) is the quaternion b(n) of the sequence b of quaternions defined by b(0)=1,b(1)=1, b(n) = b(n-1) + b(n-2)*(0,c,c,c) where c = 1/sqrt(3).

The programs for A105309, the canonical program `A105309.P6551316124684408301` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105309 has offset 0).

The definition of A105309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105309.P1719031483249928015

`ogf((1-x^2)/(1-x-2x^2-x^3+x^4))`
-/

namespace A105309.P1719031483249928015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -2, -1, 1] n

end

end A105309.P1719031483249928015

namespace A105309

/-- `ogf((1-x^2)/(1-x-2x^2-x^3+x^4))` -/
def P1719031483249928015.Spec : Prop :=
  ∀ n, P1719031483249928015.a n = A105309 n

end A105309

/-! ## A105309.P6551316124684408301

`A201837(n)²+A201838(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105309

/-- `A201837(n)²+A201838(n)²` -/
def P6551316124684408301.Spec : Prop :=
  ∀ n, P6551316124684408301.a n = A105309 n

theorem P6551316124684408301.correct : P6551316124684408301.Spec := by
  intro n
  simp only [A105309]

end A105309

/-! ## A105309.P13426581789959634764

`A119749(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A105309.P13426581789959634764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A119749 n + a (n - 2)

end

end A105309.P13426581789959634764

namespace A105309

/-- `A119749(n)+a(n-2)` -/
def P13426581789959634764.Spec : Prop :=
  ∀ n, P13426581789959634764.a n = A105309 n

end A105309

/-! ## A105309.P10108104212199147264

`A240513(A028310(n))-1`
-/

namespace A105309.P10108104212199147264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (A028310 n).toNat - 1

end

end A105309.P10108104212199147264

namespace A105309

/-- `A240513(A028310(n))-1` -/
def P10108104212199147264.Spec : Prop :=
  ∀ n, P10108104212199147264.a n = A105309 n

end A105309

/-! ## A105309.P17370215639558000947

`A240513(A065033(2*n))-1`
-/

namespace A105309.P17370215639558000947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (A065033 (2 * n)).toNat - 1

end

end A105309.P17370215639558000947

namespace A105309

/-- `A240513(A065033(2*n))-1` -/
def P17370215639558000947.Spec : Prop :=
  ∀ n, P17370215639558000947.a n = A105309 n

end A105309

/-! ## A105309.P16566826487432085004

`A240513(A123108(2*n))-1`
-/

namespace A105309.P16566826487432085004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (A123108 (2 * n)).toNat - 1

end

end A105309.P16566826487432085004

namespace A105309

/-- `A240513(A123108(2*n))-1` -/
def P16566826487432085004.Spec : Prop :=
  ∀ n, P16566826487432085004.a n = A105309 n

end A105309

/-! ## A105309.P8764979518416883313

`A240513(A000007(n)+n)-1`
-/

namespace A105309.P8764979518416883313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (A000007 n + (n : ℤ)).toNat - 1

end

end A105309.P8764979518416883313

namespace A105309

/-- `A240513(A000007(n)+n)-1` -/
def P8764979518416883313.Spec : Prop :=
  ∀ n, P8764979518416883313.a n = A105309 n

end A105309

/-! ## A105309.P4028261771139901821

`A240513(A004277(n)-n)-1`
-/

namespace A105309.P4028261771139901821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (A004277 n - (n : ℤ)).toNat - 1

end

end A105309.P4028261771139901821

namespace A105309

/-- `A240513(A004277(n)-n)-1` -/
def P4028261771139901821.Spec : Prop :=
  ∀ n, P4028261771139901821.a n = A105309 n

end A105309

/-! ## A105309.P11602946977574284470

`A301658(A000007(n)+n)-4`
-/

namespace A105309.P11602946977574284470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301658 (A000007 n + (n : ℤ)).toNat - 4

end

end A105309.P11602946977574284470

namespace A105309

/-- `A301658(A000007(n)+n)-4` -/
def P11602946977574284470.Spec : Prop :=
  ∀ n, P11602946977574284470.a n = A105309 n

end A105309

/-! ## A105309.P5470914396414338728

`A242510(n)-A092886(n)`
-/

namespace A105309.P5470914396414338728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242510 n - A092886 n

end

end A105309.P5470914396414338728

namespace A105309

/-- `A242510(n)-A092886(n)` -/
def P5470914396414338728.Spec : Prop :=
  ∀ n, P5470914396414338728.a n = A105309 n

end A105309

/-! ## A105309.P15825604749493163756

`A092886(n+1)+A092886(n+1)-A119749(n+1)`
-/

namespace A105309.P15825604749493163756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (n + 1) + (A092886 (n + 1) - A119749 (n + 1))

end

end A105309.P15825604749493163756

namespace A105309

/-- `A092886(n+1)+A092886(n+1)-A119749(n+1)` -/
def P15825604749493163756.Spec : Prop :=
  ∀ n, P15825604749493163756.a n = A105309 n

end A105309

/-! ## A105309.P9789258465265253837

`Δ[A240513(n+1)]-2*A092886(n)`
-/

namespace A105309.P9789258465265253837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A092886 n

end

end A105309.P9789258465265253837

namespace A105309

/-- `Δ[A240513(n+1)]-2*A092886(n)` -/
def P9789258465265253837.Spec : Prop :=
  ∀ n, P9789258465265253837.a n = A105309 n

end A105309

/-! ## A105309.P15893628916409893934

`Δ[A301658(n+1)]-2*A092886(n)`
-/

namespace A105309.P15893628916409893934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A092886 n

end

end A105309.P15893628916409893934

namespace A105309

/-- `Δ[A301658(n+1)]-2*A092886(n)` -/
def P15893628916409893934.Spec : Prop :=
  ∀ n, P15893628916409893934.a n = A105309 n

end A105309

/-! ## A105309.P9847204981698855668

`2*A242510(n)-Δ[A240513(n+1)]`
-/

namespace A105309.P9847204981698855668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A242510 n - (f1 (n + 1) - f1 n)

end

end A105309.P9847204981698855668

namespace A105309

/-- `2*A242510(n)-Δ[A240513(n+1)]` -/
def P9847204981698855668.Spec : Prop :=
  ∀ n, P9847204981698855668.a n = A105309 n

end A105309

/-! ## A105309.P3218113592882245213

`A240513(n+2)-(A119749(n+2)+1)`
-/

namespace A105309.P3218113592882245213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 2) - (A119749 (n + 2) + 1)

end

end A105309.P3218113592882245213

namespace A105309

/-- `A240513(n+2)-(A119749(n+2)+1)` -/
def P3218113592882245213.Spec : Prop :=
  ∀ n, P3218113592882245213.a n = A105309 n

end A105309

/-! ## A105309.P16161638427098211946

`A092886(n+3)-A101400(n+1)`
-/

namespace A105309.P16161638427098211946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (n + 3) - A101400 (n + 1)

end

end A105309.P16161638427098211946

namespace A105309

/-- `A092886(n+3)-A101400(n+1)` -/
def P16161638427098211946.Spec : Prop :=
  ∀ n, P16161638427098211946.a n = A105309 n

end A105309

/-!
# A105312: a(n) = Sum_{j=0..15} n^j.

The programs for A105312, the canonical program `A105312.P15209003862599370654` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105312 has offset 0).

The definition of A105312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[15, n^#]` (program `A105312.P15209003862599370654`, by `A105312.P15209003862599370654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105312.P15209003862599370654

`∑{#}[15, n^#]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105312

/-- `∑{#}[15, n^#]` -/
def P15209003862599370654.Spec : Prop :=
  ∀ n, (P15209003862599370654.a n : ℤ) = A105312 n

theorem P15209003862599370654.correct : P15209003862599370654.Spec := by
  intro n
  simp only [A105312]

end A105312

/-! ## A105312.P14357183078373131458

`(n^8+1)*(n^4+1)*(n²+1)*(n+1)`
-/

namespace A105312.P14357183078373131458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 8 + 1) * ((n ^ 4 + 1) * ((n ^ 2 + 1) * (n + 1)))

end

end A105312.P14357183078373131458

namespace A105312

/-- `(n^8+1)*(n^4+1)*(n²+1)*(n+1)` -/
def P14357183078373131458.Spec : Prop :=
  ∀ n, (P14357183078373131458.a n : ℤ) = A105312 n

end A105312

/-! ## A105312.P16786194465303683327

`n*A104682(n)+1`
-/

namespace A105312.P16786194465303683327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104682 n + 1

end

end A105312.P16786194465303683327

namespace A105312

/-- `n*A104682(n)+1` -/
def P16786194465303683327.Spec : Prop :=
  ∀ n, P16786194465303683327.a n = A105312 n

end A105312

/-! ## A105312.P2395950732575852394

`n*(n*A104376(n)+1)+1`
-/

namespace A105312.P2395950732575852394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A104376 n + 1) + 1

end

end A105312.P2395950732575852394

namespace A105312

/-- `n*(n*A104376(n)+1)+1` -/
def P2395950732575852394.Spec : Prop :=
  ∀ n, P2395950732575852394.a n = A105312 n

end A105312

/-! ## A105312.P5136034099872517320

`A269442(n)-A001016(n)²`
-/

namespace A105312.P5136034099872517320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269442 n - A001016 n ^ 2

end

end A105312.P5136034099872517320

namespace A105312

/-- `A269442(n)-A001016(n)²` -/
def P5136034099872517320.Spec : Prop :=
  ∀ n, P5136034099872517320.a n = A105312 n

end A105312

/-! ## A105312.P18206201153048329883

`A102909(n)+A001016(n)*A228291(n)`
-/

namespace A105312.P18206201153048329883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102909 n + A001016 n * A228291 n

end

end A105312.P18206201153048329883

namespace A105312

/-- `A102909(n)+A001016(n)*A228291(n)` -/
def P18206201153048329883.Spec : Prop :=
  ∀ n, P18206201153048329883.a n = A105312 n

end A105312

/-! ## A105312.P12612084124943726880

`A269442(n)-A001016(n²)`
-/

namespace A105312.P12612084124943726880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269442 n - A001016 (n ^ 2)

end

end A105312.P12612084124943726880

namespace A105312

/-- `A269442(n)-A001016(n²)` -/
def P12612084124943726880.Spec : Prop :=
  ∀ n, P12612084124943726880.a n = A105312 n

end A105312

/-!
# A105314: Write the natural numbers as an infinite sequence of digits, starting at the left; a(n) is the subset (i.e., the position in this sequence of the "counting digits") of the first digit of the n-th square.

The programs for A105314, the canonical program `A105314.P11378633476736743267` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105314 has offset 1).

The definition of A105314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105314.P11378633476736743267

`A117804((n+1)²)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A105314

/-- `A117804((n+1)²)` -/
def P11378633476736743267.Spec : Prop :=
  ∀ n, P11378633476736743267.a n = A105314 (n + 1)

theorem P11378633476736743267.correct : P11378633476736743267.Spec := by
  intro n
  simp only [A105314, Nat.add_sub_cancel]

end A105314

/-! ## A105314.P6685643921308228741

`or(char[2], A117804(∑[2*n+1]))`
-/

namespace A105314.P6685643921308228741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A117804 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A105314.P6685643921308228741

namespace A105314

/-- `or(char[2], A117804(∑[2*n+1]))` -/
def P6685643921308228741.Spec : Prop :=
  ∀ n, P6685643921308228741.a n = A105314 (n + 1)

end A105314

/-! ## A105314.P5073975173890552261

`record[A117804(A065648(n)²)]`
-/

namespace A105314.P5073975173890552261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105314.P5073975173890552261

namespace A105314

/-- `record[A117804(A065648(n)²)]` -/
def P5073975173890552261.Spec : Prop :=
  ∀ n, P5073975173890552261.a n = A105314 (n + 1)

end A105314

/-! ## A105314.P11384076612001184902

`record[A117804(A133310(n)²)]`
-/

namespace A105314.P11384076612001184902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105314.P11384076612001184902

namespace A105314

/-- `record[A117804(A133310(n)²)]` -/
def P11384076612001184902.Spec : Prop :=
  ∀ n, P11384076612001184902.a n = A105314 (n + 1)

end A105314

/-! ## A105314.P5259267573018462363

`A117804(A000290(n+1))/A053589(2*n+1)`
-/

namespace A105314.P5259267573018462363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117804 (A000290 (n + 1)).toNat : ℚ) / (A053589 (2 * n + 1) : ℚ)

end

end A105314.P5259267573018462363

namespace A105314

/-- `A117804(A000290(n+1))/A053589(2*n+1)` -/
def P5259267573018462363.Spec : Prop :=
  ∀ n, P5259267573018462363.a n = (A105314 (n + 1) : ℚ)

end A105314

/-! ## A105314.P16727413479750963664

`record[A117804(A112382(n)²)]`
-/

namespace A105314.P16727413479750963664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A112382 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105314.P16727413479750963664

namespace A105314

/-- `record[A117804(A112382(n)²)]` -/
def P16727413479750963664.Spec : Prop :=
  ∀ n, P16727413479750963664.a n = A105314 (n + 1)

end A105314

/-! ## A105314.P14107545218395560905

`A342115(A342115(A117804((n+1)*(n+1))))`
-/

namespace A105314.P14107545218395560905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342115 (A342115 (A117804 ((n + 1) * (n + 1))).toNat).toNat

end

end A105314.P14107545218395560905

namespace A105314

/-- `A342115(A342115(A117804((n+1)*(n+1))))` -/
def P14107545218395560905.Spec : Prop :=
  ∀ n, P14107545218395560905.a n = A105314 (n + 1)

end A105314

/-!
# A105315: From the 4-symbol substitution 1->{2, 3}, 2->{3, 4}, 3->{4}, 4->{1}.

The programs for A105315, there is no canonical definition to state claims against.
-/

/-! ## A105315.P9753693442662954948

`A124736(lcm(A007093(n), A114327(n)))`
-/

namespace A105315.P9753693442662954948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (Int.lcm (A007093 n) (A114327 n))

end

end A105315.P9753693442662954948

/-! ## A105315.P2084372486577889057

`A105316(A135480(n))`
-/

namespace A105315.P2084372486577889057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105316 (A135480 n).toNat

end

end A105315.P2084372486577889057

/-! ## A105315.P7928764442263353382

`A000120(A302778(3*n+2)%A115697(3*(n+1)))`
-/

namespace A105315.P7928764442263353382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A302778 (3 * n + 2)) (A115697 (3 * (n + 1)))).toNat

end

end A105315.P7928764442263353382

/-! ## A105315.P2446059387941508505

`A105933(A261279(n+1))`
-/

namespace A105315.P2446059387941508505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105933 (A261279 (n + 1)).toNat

end

end A105315.P2446059387941508505

/-! ## A105315.P15429262075652756092

`A360697(A169662(n+2))`
-/

namespace A105315.P15429262075652756092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360697 (A169662 (n + 2)).toNat

end

end A105315.P15429262075652756092

/-!
# A105316: Let s denote the 4-symbol substitution 1->{2, 3}, 2->{3, 4}, 3->{}, 4->{1, 3}; let S(1) = 1, and S(n+1) = concat( S(n), s(S(n)) ); then the sequence is S(1), S(2), S(3), ...

The programs for A105316, there is no canonical definition to state claims against.
-/

/-! ## A105316.P8457273729650987584

`A000120(lt[A070939(n), A274742(3*(n+1))])`
-/

namespace A105316.P8457273729650987584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274742 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105316.P8457273729650987584

/-! ## A105316.P8427280559845344001

`A000120(lt[A330166(3*n+2), A360407(n)])`
-/

namespace A105316.P8427280559845344001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105316.P8427280559845344001

/-! ## A105316.P7317255124661909755

`A000120(lt[A066633(3*n+2), A065428(n+1)])`
-/

namespace A105316.P7317255124661909755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105316.P7317255124661909755

/-! ## A105316.P1436773461074878629

`A000120(lt[A067824(3*n+5), A018609(n+1)])`
-/

namespace A105316.P1436773461074878629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105316.P1436773461074878629

/-! ## A105316.P10542876325235828855

`A000120(lt[A206714(3*n+5), A004524(2*n)])`
-/

namespace A105316.P10542876325235828855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206714 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105316.P10542876325235828855

/-!
# A105317: Powers of Fibonacci numbers.

The programs for A105317, there is no canonical definition to state claims against.
-/

/-! ## A105317.P7640570873351859126

`record[n*char[A210341(n)]]`
-/

namespace A105317.P7640570873351859126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210341 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105317.P7640570873351859126

/-! ## A105317.P3586104820581992004

`record[n*char[A103323(n+1)]]`
-/

namespace A105317.P3586104820581992004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103323 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105317.P3586104820581992004

/-! ## A105317.P15174691870736374963

`eq[char[A210341(n)], A057427(n)]`
-/

namespace A105317.P15174691870736374963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210341 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A105317.P15174691870736374963

/-! ## A105317.P17473350668274906645

`eq[char[A103323(n+1)], A057427(n)]`
-/

namespace A105317.P17473350668274906645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103323 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A105317.P17473350668274906645

/-! ## A105317.P13592861184136918753

`eq[char[A210341(n)], A178334(n)]`
-/

namespace A105317.P13592861184136918753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210341 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A105317.P13592861184136918753

/-!
# A105320: Digital expansion of Pi: numbers from each pair of successive digits.

The programs for A105320, there is no canonical definition to state claims against.
-/

/-! ## A105320.P898571245416853588

`floor(A107117(n+1)/10)`
-/

namespace A105320.P898571245416853588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107117 (n + 1) : ℚ) / 10⌋

end

end A105320.P898571245416853588

/-! ## A105320.P5528241303414534852

`A059995(A107117(n+1))`
-/

namespace A105320.P5528241303414534852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A107117 (n + 1)).toNat

end

end A105320.P5528241303414534852

/-! ## A105320.P16450175885290078039

`A099817(n+1)+10*A099816(n+1)`
-/

namespace A105320.P16450175885290078039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099817 (n + 1) + 10 * A099816 (n + 1)

end

end A105320.P16450175885290078039

/-! ## A105320.P11978937741013044582

`A000796(Δ[n²])+10*A000796(2*n)`
-/

namespace A105320.P11978937741013044582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1) + 10 * A000796 (2 * n + 1)

end

end A105320.P11978937741013044582

/-! ## A105320.P18151533886568876294

`A000796(2*n+1)+A000796(2*n)*10`
-/

namespace A105320.P18151533886568876294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (2 * n + 1 + 1) + A000796 (2 * n + 1) * 10

end

end A105320.P18151533886568876294

/-!
# A105321: Convolution of binomial(1,n) and Gould's sequence A001316.

The programs for A105321, the canonical program `A105321.P8001804258587492463` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105321 has offset 0).

The definition of A105321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105321.P2684103004144828196

`Δ[A173522(n)]`
-/

namespace A105321.P2684103004144828196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105321.P2684103004144828196

namespace A105321

/-- `Δ[A173522(n)]` -/
def P2684103004144828196.Spec : Prop :=
  ∀ n, P2684103004144828196.a n = A105321 n

end A105321

/-! ## A105321.P8001804258587492463

`Δ[n²]-A249304(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A105321

/-- `Δ[n²]-A249304(n)` -/
def P8001804258587492463.Spec : Prop :=
  ∀ n, P8001804258587492463.a n = A105321 n

theorem P8001804258587492463.correct : P8001804258587492463.Spec := by
  intro n
  simp only [A105321]

end A105321

/-! ## A105321.P17070353493804848320

`Δ[A139250(n)-A173454(n)]`
-/

namespace A105321.P17070353493804848320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A173454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105321.P17070353493804848320

namespace A105321

/-- `Δ[A139250(n)-A173454(n)]` -/
def P17070353493804848320.Spec : Prop :=
  ∀ n, P17070353493804848320.a n = A105321 n

end A105321

/-! ## A105321.P5010503536339881249

`A173522(n+1)-A173522(n)`
-/

namespace A105321.P5010503536339881249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 1) - A173522 n

end

end A105321.P5010503536339881249

namespace A105321

/-- `A173522(n+1)-A173522(n)` -/
def P5010503536339881249.Spec : Prop :=
  ∀ n, P5010503536339881249.a n = A105321 n

end A105321

/-! ## A105321.P9553473675299267993

`A139251(n+1)-Δ[A173454(n)]`
-/

namespace A105321.P9553473675299267993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) - (f1 (n + 1) - f1 n)

end

end A105321.P9553473675299267993

namespace A105321

/-- `A139251(n+1)-Δ[A173454(n)]` -/
def P9553473675299267993.Spec : Prop :=
  ∀ n, P9553473675299267993.a n = A105321 n

end A105321

/-! ## A105321.P3062815810466848826

`A000265(A001316(n)+1)+n-A261366(n)`
-/

namespace A105321.P3062815810466848826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001316 n + 1).toNat + ((n : ℤ) - A261366 n)

end

end A105321.P3062815810466848826

namespace A105321

/-- `A000265(A001316(n)+1)+n-A261366(n)` -/
def P3062815810466848826.Spec : Prop :=
  ∀ n, P3062815810466848826.a n = A105321 n

end A105321

/-! ## A105321.P10106478685411010871

`A139251(n+1)+A173454(n)-A173454(n+1)`
-/

namespace A105321.P10106478685411010871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) + (A173454 n - A173454 (n + 1))

end

end A105321.P10106478685411010871

namespace A105321

/-- `A139251(n+1)+A173454(n)-A173454(n+1)` -/
def P10106478685411010871.Spec : Prop :=
  ∀ n, P10106478685411010871.a n = A105321 n

end A105321

/-! ## A105321.P4735054329486565111

`Δ[∑[A139251(n)]-A173454(n)]`
-/

namespace A105321.P4735054329486565111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A173454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105321.P4735054329486565111

namespace A105321

/-- `Δ[∑[A139251(n)]-A173454(n)]` -/
def P4735054329486565111.Spec : Prop :=
  ∀ n, P4735054329486565111.a n = A105321 n

end A105321

/-! ## A105321.P5570170877418555382

`A131136(n)+Δ[A000010(A131136(n))]`
-/

namespace A105321.P5570170877418555382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A131136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n + (f1 (n + 1) - f1 n)

end

end A105321.P5570170877418555382

namespace A105321

/-- `A131136(n)+Δ[A000010(A131136(n))]` -/
def P5570170877418555382.Spec : Prop :=
  ∀ n, P5570170877418555382.a n = A105321 n

end A105321

/-! ## A105321.P3700976618102861036

`Δ[∑{d}[A039635(n+1), A006046(n+1-A016006(#))]]`
-/

namespace A105321.P3700976618102861036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A006046 ((n + 1 : ℤ) - A016006 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105321.P3700976618102861036

namespace A105321

/-- `Δ[∑{d}[A039635(n+1), A006046(n+1-A016006(#))]]` -/
def P3700976618102861036.Spec : Prop :=
  ∀ n, P3700976618102861036.a n = A105321 n

end A105321

/-! ## A105321.P6617693130769202400

`A001316(n)+sqrt(A177241(n))`
-/

namespace A105321.P6617693130769202400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℝ) + Real.sqrt (A177241 n : ℝ)

end

end A105321.P6617693130769202400

namespace A105321

/-- `A001316(n)+sqrt(A177241(n))` -/
def P6617693130769202400.Spec : Prop :=
  ∀ n, P6617693130769202400.a n = (A105321 n : ℝ)

end A105321

/-! ## A105321.P10797459220684196680

`A114212(2*n)`
-/

namespace A105321.P10797459220684196680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114212 (2 * n)

end

end A105321.P10797459220684196680

namespace A105321

/-- `A114212(2*n)` -/
def P10797459220684196680.Spec : Prop :=
  ∀ n, P10797459220684196680.a n = A105321 n

end A105321

/-! ## A105321.P10671509286508378171

`A233775(2*n)-A319650(A233775(2*n))`
-/

namespace A105321.P10671509286508378171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (2 * n) - A319650 (A233775 (2 * n)).toNat

end

end A105321.P10671509286508378171

namespace A105321

/-- `A233775(2*n)-A319650(A233775(2*n))` -/
def P10671509286508378171.Spec : Prop :=
  ∀ n, P10671509286508378171.a n = A105321 n

end A105321

/-! ## A105321.P15261909450986532822

`Δ[A151566(A004273(n))]`
-/

namespace A105321.P15261909450986532822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105321.P15261909450986532822

namespace A105321

/-- `Δ[A151566(A004273(n))]` -/
def P15261909450986532822.Spec : Prop :=
  ∀ n, P15261909450986532822.a n = A105321 n

end A105321

/-! ## A105321.P9227921267351527288

`A151566(2*n+1)-A151566(A004273(n))`
-/

namespace A105321.P9227921267351527288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n + 1) - A151566 (A004273 n).toNat

end

end A105321.P9227921267351527288

namespace A105321

/-- `A151566(2*n+1)-A151566(A004273(n))` -/
def P9227921267351527288.Spec : Prop :=
  ∀ n, P9227921267351527288.a n = A105321 n

end A105321

/-! ## A105321.P16056405750880090017

`A151566(2*n+1)-A151566(A014681(2*n))`
-/

namespace A105321.P16056405750880090017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n + 1) - A151566 (A014681 (2 * n)).toNat

end

end A105321.P16056405750880090017

namespace A105321

/-- `A151566(2*n+1)-A151566(A014681(2*n))` -/
def P16056405750880090017.Spec : Prop :=
  ∀ n, P16056405750880090017.a n = A105321 n

end A105321

/-! ## A105321.P9105457368149334228

`Δ[A266530(Δ[n²])-A173454(n)]`
-/

namespace A105321.P9105457368149334228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A173454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105321.P9105457368149334228

namespace A105321

/-- `Δ[A266530(Δ[n²])-A173454(n)]` -/
def P9105457368149334228.Spec : Prop :=
  ∀ n, P9105457368149334228.a n = A105321 n

end A105321

/-! ## A105321.P13687607170923792611

`A004526(A131136(n+1)+A131136(n))`
-/

namespace A105321.P13687607170923792611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131136 (n + 1) + A131136 n).toNat

end

end A105321.P13687607170923792611

namespace A105321

/-- `A004526(A131136(n+1)+A131136(n))` -/
def P13687607170923792611.Spec : Prop :=
  ∀ n, P13687607170923792611.a n = A105321 n

end A105321

/-! ## A105321.P7619987718059076347

`A139251(n)-A173069(n)`
-/

namespace A105321.P7619987718059076347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n - A173069 n

end

end A105321.P7619987718059076347

namespace A105321

/-- `A139251(n)-A173069(n)` -/
def P7619987718059076347.Spec : Prop :=
  ∀ n, P7619987718059076347.a n = A105321 n

end A105321

/-! ## A105321.P3611714328454053264

`A072406(2*n)`
-/

namespace A105321.P3611714328454053264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072406 (2 * n)

end

end A105321.P3611714328454053264

namespace A105321

/-- `A072406(2*n)` -/
def P3611714328454053264.Spec : Prop :=
  ∀ n, P3611714328454053264.a n = A105321 n

end A105321

/-!
# A105322: Primes of the form 8*10^n-7.

The programs for A105322, there is no canonical definition to state claims against.
-/

/-! ## A105322.P16201142878435234475

`A100412(A099190(n+1))`
-/

namespace A105322.P16201142878435234475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100412 (A099190 (n + 1)).toNat

end

end A105322.P16201142878435234475

/-! ## A105322.P14505846019669436180

`A100412(A101155(n+1)+1)`
-/

namespace A105322.P14505846019669436180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100412 (A101155 (n + 1) + 1).toNat

end

end A105322.P14505846019669436180

/-! ## A105322.P9528457266779292411

`A086579(A101155(n+1)+1)+1`
-/

namespace A105322.P9528457266779292411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 (A101155 (n + 1) + 1).toNat + 1

end

end A105322.P9528457266779292411

/-! ## A105322.P3059197353121797441

`A158416(2*n+3)+A086579(A099190(n+1))`
-/

namespace A105322.P3059197353121797441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n + 3) + A086579 (A099190 (n + 1)).toNat

end

end A105322.P3059197353121797441

/-!
# A105323: Numbers of the form 41*(2*10^n+1) where (2*10^n+1)/3 is prime (n is in the sequence A096507).

The programs for A105323, there is no canonical definition to state claims against.
-/

/-! ## A105323.P16162736280013722390

`A104907(A287404(n+1)+A000001(n))`
-/

namespace A105323.P16162736280013722390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104907 (A287404 (n + 1) + A000001 n).toNat

end

end A105323.P16162736280013722390

/-! ## A105323.P9973057379648617768

`A104907(A287404(n+1)+A276088(n))`
-/

namespace A105323.P9973057379648617768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104907 (A287404 (n + 1) + A276088 n).toNat

end

end A105323.P9973057379648617768

/-!
# A105325: Digital expansion of e: numbers from each pair of successive digits.

The programs for A105325, there is no canonical definition to state claims against.
-/

/-! ## A105325.P15844669069385469334

`A099987(n)+10*A099986(n)`
-/

namespace A105325.P15844669069385469334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099987 n + 10 * A099986 n

end

end A105325.P15844669069385469334

/-! ## A105325.P17790724602605168600

`A001113(Δ[n²])+10*A001113(2*n)`
-/

namespace A105325.P17790724602605168600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1) + 10 * A001113 (2 * n + 1)

end

end A105325.P17790724602605168600

/-!
# A105329: Numbers k such that prime(k+1) == 5 (mod k).

The programs for A105329, there is no canonical definition to state claims against.
-/

/-! ## A105329.P3251634016468048599

`eq[n, gcd(n, 5-A000040(n+1))]`
-/

namespace A105329.P3251634016468048599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (5 - A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105329.P3251634016468048599

/-! ## A105329.P3105525684928434912

`A024326(A007583(n))+A023143(n+1)`
-/

namespace A105329.P3105525684928434912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024326 (A007583 n).toNat + A023143 (n + 1)

end

end A105329.P3105525684928434912

/-! ## A105329.P9358509198866666247

`A023143(n+1)+A010051(A054382(n))`
-/

namespace A105329.P9358509198866666247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023143 (n + 1) + A010051 (A054382 n).toNat

end

end A105329.P9358509198866666247

/-!
# A105330: Numbers k such that 2^(k+1) + 2*k + 1 is prime.

The programs for A105330, there is no canonical definition to state claims against.
-/

/-! ## A105330.P16261062843248873425

`A174181(n+1)-1`
-/

namespace A105330.P16261062843248873425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174181 (n + 1) - 1

end

end A105330.P16261062843248873425

/-! ## A105330.P1420505612038202129

`A023443(A174181(n+1))`
-/

namespace A105330.P1420505612038202129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A174181 (n + 1)).toNat

end

end A105330.P1420505612038202129

/-! ## A105330.P15975955717152981603

`A023444(A174181(n+1)+1)`
-/

namespace A105330.P15975955717152981603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A174181 (n + 1) + 1).toNat

end

end A105330.P15975955717152981603

/-! ## A105330.P5114814969544863165

`A289207(A174181(n+1)+1)`
-/

namespace A105330.P5114814969544863165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A174181 (n + 1) + 1).toNat

end

end A105330.P5114814969544863165

/-! ## A105330.P8989929467594713889

`A023445(A174181(n+1)+2)`
-/

namespace A105330.P8989929467594713889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A174181 (n + 1) + 2).toNat

end

end A105330.P8989929467594713889

/-!
# A105331: Numbers of the form 2^n*(2^(n+1)+2n+1) where 2^(n+1)+2n+1 is prime.

The programs for A105331, there is no canonical definition to state claims against.
-/

/-! ## A105331.P10185917795396015639

`2^A105330(n+1)*(2^(A105330(n+1)+1)+2*A105330(n+1)+1)`
-/

namespace A105331.P10185917795396015639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A105330 (n + 1) : ℤ) * ((2 : ℚ) ^ (A105330 (n + 1) + 1 : ℤ) + (2 * A105330 (n + 1) : ℚ) + 1)

end

end A105331.P10185917795396015639

/-! ## A105331.P3111540356974747544

`2^A105330(n+1)*A173168(n+1)`
-/

namespace A105331.P3111540356974747544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A105330 (n + 1) : ℤ) * (A173168 (n + 1) : ℚ)

end

end A105331.P3111540356974747544

/-! ## A105331.P9924961604190685159

`A011782(A174181(n+1))*A173168(n+1)`
-/

namespace A105331.P9924961604190685159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A174181 (n + 1)).toNat * A173168 (n + 1)

end

end A105331.P9924961604190685159

/-! ## A105331.P5214885514588334144

`lcm(A122803(A105330(n+1)), A173168(n+1))`
-/

namespace A105331.P5214885514588334144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122803 (A105330 (n + 1)).toNat) (A173168 (n + 1))

end

end A105331.P5214885514588334144

/-! ## A105331.P613131399568185035

`A011782(A174181(n+1))*A061761(A105330(n+1)+1)`
-/

namespace A105331.P613131399568185035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A174181 (n + 1)).toNat * A061761 (A105330 (n + 1) + 1).toNat

end

end A105331.P613131399568185035

/-!
# A105332: a(n) = n*(n+1)/2 mod 8.

The programs for A105332, the canonical program `A105332.P10510638666253593251` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105332 has offset 0).

The definition of A105332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105332.P10510638666253593251

`∑[n]%8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105332

/-- `∑[n]%8` -/
def P10510638666253593251.Spec : Prop :=
  ∀ n, (P10510638666253593251.a n : ℤ) = A105332 n

theorem P10510638666253593251.correct : P10510638666253593251.Spec := by
  intro n
  simp only [A105332]

end A105332

/-!
# A105333: a(n) = n*(n+1)/2 mod 16.

The programs for A105333, the canonical program `A105333.P908517797238101680` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105333 has offset 0).

The definition of A105333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105333.P908517797238101680

`∑[n]%16`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105333

/-- `∑[n]%16` -/
def P908517797238101680.Spec : Prop :=
  ∀ n, (P908517797238101680.a n : ℤ) = A105333 n

theorem P908517797238101680.correct : P908517797238101680.Spec := by
  intro n
  simp only [A105333]

end A105333

/-!
# A105334: a(n) = n*(n+1)/2 mod 32.

The programs for A105334, the canonical program `A105334.P15920900232197348403` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105334 has offset 0).

The definition of A105334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105334.P15920900232197348403

`∑[n]%32`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105334

/-- `∑[n]%32` -/
def P15920900232197348403.Spec : Prop :=
  ∀ n, (P15920900232197348403.a n : ℤ) = A105334 n

theorem P15920900232197348403.correct : P15920900232197348403.Spec := by
  intro n
  simp only [A105334]

end A105334

/-!
# A105335: a(n) = n*(n+1)/2 mod 64.

The programs for A105335, the canonical program `A105335.P11758408966434049159` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105335 has offset 0).

The definition of A105335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105335.P11758408966434049159

`∑[n]%64`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105335

/-- `∑[n]%64` -/
def P11758408966434049159.Spec : Prop :=
  ∀ n, (P11758408966434049159.a n : ℤ) = A105335 n

theorem P11758408966434049159.correct : P11758408966434049159.Spec := by
  intro n
  simp only [A105335]

end A105335

/-!
# A105336: a(n) = n*(n+1)/2 mod 128.

The programs for A105336, the canonical program `A105336.P4590208485834452768` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105336 has offset 0).

The definition of A105336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105336.P4590208485834452768

`∑[n]%128`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105336

/-- `∑[n]%128` -/
def P4590208485834452768.Spec : Prop :=
  ∀ n, (P4590208485834452768.a n : ℤ) = A105336 n

theorem P4590208485834452768.correct : P4590208485834452768.Spec := by
  intro n
  simp only [A105336]

end A105336

/-!
# A105337: a(n) = n*(n+1)/2 mod 256.

The programs for A105337, the canonical program `A105337.P16238524910667093604` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105337 has offset 0).

The definition of A105337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105337.P16238524910667093604

`∑[n]%256`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105337

/-- `∑[n]%256` -/
def P16238524910667093604.Spec : Prop :=
  ∀ n, (P16238524910667093604.a n : ℤ) = A105337 n

theorem P16238524910667093604.correct : P16238524910667093604.Spec := by
  intro n
  simp only [A105337]

end A105337

/-!
# A105338: a(n) = n*(n+1)/2 mod 512.

The programs for A105338, the canonical program `A105338.P18412288952153769829` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105338 has offset 0).

The definition of A105338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105338.P18412288952153769829

`∑[n]%512`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105338

/-- `∑[n]%512` -/
def P18412288952153769829.Spec : Prop :=
  ∀ n, (P18412288952153769829.a n : ℤ) = A105338 n

theorem P18412288952153769829.correct : P18412288952153769829.Spec := by
  intro n
  simp only [A105338]

end A105338

/-!
# A105339: a(n) = n*(n+1)/2 mod 1024.

The programs for A105339, the canonical program `A105339.P13165114051006301456` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105339 has offset 0).

The definition of A105339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105339.P13165114051006301456

`∑[n]%(64/2)²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105339

/-- `∑[n]%(64/2)²` -/
def P13165114051006301456.Spec : Prop :=
  ∀ n, P13165114051006301456.a n = A105339 n

theorem P13165114051006301456.correct : P13165114051006301456.Spec := by
  intro n
  simp only [A105339]

end A105339

/-!
# A105340: a(n) = n*(n+1)/2 mod 2048.

The programs for A105340, the canonical program `A105340.P6672143543646660390` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105340 has offset 0).

The definition of A105340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105340.P6672143543646660390

`∑[n]%root(2, 1/11)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105340

/-- `∑[n]%root(2, 1/11)` -/
def P6672143543646660390.Spec : Prop :=
  ∀ n, P6672143543646660390.a n = A105340 n

theorem P6672143543646660390.correct : P6672143543646660390.Spec := by
  intro n
  simp only [A105340]

end A105340

/-! ## A105340.P7640052237304870178

`and(∑[n], A141232(A329900(2*n+3)))`
-/

namespace A105340.P7640052237304870178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A141232 (A329900 (2 * n + 3)).toNat)

end

end A105340.P7640052237304870178

namespace A105340

/-- `and(∑[n], A141232(A329900(2*n+3)))` -/
def P7640052237304870178.Spec : Prop :=
  ∀ n, P7640052237304870178.a n = A105340 n

end A105340

/-! ## A105340.P14195988270330455411

`and(∑[n], A141232(A328457(2*n+5)))`
-/

namespace A105340.P14195988270330455411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A141232 (A328457 (2 * n + 5)).toNat)

end

end A105340.P14195988270330455411

namespace A105340

/-- `and(∑[n], A141232(A328457(2*n+5)))` -/
def P14195988270330455411.Spec : Prop :=
  ∀ n, P14195988270330455411.a n = A105340 n

end A105340

/-! ## A105340.P17282261553858401718

`and(A000217(n), A270697(A046206(2*(n+1))))`
-/

namespace A105340.P17282261553858401718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 n) (A270697 (A046206 (2 * (n + 1))).toNat)

end

end A105340.P17282261553858401718

namespace A105340

/-- `and(A000217(n), A270697(A046206(2*(n+1))))` -/
def P17282261553858401718.Spec : Prop :=
  ∀ n, P17282261553858401718.a n = A105340 n

end A105340

/-! ## A105340.P6766525002942418909

`and(A000217(n), A001262(A055396(2*(n+2))))`
-/

namespace A105340.P6766525002942418909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 n) (A001262 (A055396 (2 * (n + 2))).toNat)

end

end A105340.P6766525002942418909

namespace A105340

/-- `and(A000217(n), A001262(A055396(2*(n+2))))` -/
def P6766525002942418909.Spec : Prop :=
  ∀ n, P6766525002942418909.a n = A105340 n

end A105340

/-!
# A105343: Elements of even index in the sequence gives A005893, points on surface of tetrahedron: 2n^2 + 2 for n > 1.

The programs for A105343, the canonical program `A105343.P8549059243923286326` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105343 has offset 0).

The definition of A105343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105343.P8549059243923286326

`ogf((1+x-2x^2+x^3+x^4)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105343

/-- `ogf((1+x-2x^2+x^3+x^4)/(1-2x+2x^3-x^4))` -/
def P8549059243923286326.Spec : Prop :=
  ∀ n, P8549059243923286326.a n = A105343 n

theorem P8549059243923286326.correct : P8549059243923286326.Spec := by
  intro n
  simp only [A105343]

end A105343

/-! ## A105343.P7059075126771586519

`∑[a(n-2)+2]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A105343.P7059075126771586519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105343.P7059075126771586519

namespace A105343

/-- `∑[a(n-2)+2]` -/
def P7059075126771586519.Spec : Prop :=
  ∀ n, (P7059075126771586519.a n : ℤ) = A105343 n

end A105343

/-! ## A105343.P3344099431669874694

`and(-2, a(n-1))+n` with `a(0)=1, a(1)=3`
-/

namespace A105343.P3344099431669874694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.land (-2) (a (n - 1)) + (n : ℤ)

end

end A105343.P3344099431669874694

namespace A105343

/-- `and(-2, a(n-1))+n` -/
def P3344099431669874694.Spec : Prop :=
  ∀ n, P3344099431669874694.a n = A105343 n

end A105343

/-! ## A105343.P5068134886857382580

`a(n-1)-or(1, -n)` with `a(0)=1, a(1)=3`
-/

namespace A105343.P5068134886857382580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - Int.lor 1 (-(n : ℤ))

end

end A105343.P5068134886857382580

namespace A105343

/-- `a(n-1)-or(1, -n)` -/
def P5068134886857382580.Spec : Prop :=
  ∀ n, P5068134886857382580.a n = A105343 n

end A105343

/-! ## A105343.P1846987586425401741

`∑[abs(∑[(-1)^n]-(char[1]+n))]`
-/

namespace A105343.P1846987586425401741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - (((if ∃ j, f3 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105343.P1846987586425401741

namespace A105343

/-- `∑[abs(∑[(-1)^n]-(char[1]+n))]` -/
def P1846987586425401741.Spec : Prop :=
  ∀ n, P1846987586425401741.a n = A105343 n

end A105343

/-! ## A105343.P7034053496781620556

`or(1, a(n-1))+n-1` with `a(0)=1, a(1)=3`
-/

namespace A105343.P7034053496781620556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor 1 (a (n - 1)) + ((n : ℤ) - 1)

end

end A105343.P7034053496781620556

namespace A105343

/-- `or(1, a(n-1))+n-1` -/
def P7034053496781620556.Spec : Prop :=
  ∀ n, P7034053496781620556.a n = A105343 n

end A105343

/-! ## A105343.P1687917559044238225

`a(n-2)+2*(n-1)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A105343.P1687917559044238225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) - 1)

end

end A105343.P1687917559044238225

namespace A105343

/-- `a(n-2)+2*(n-1)` -/
def P1687917559044238225.Spec : Prop :=
  ∀ n, P1687917559044238225.a n = A105343 n

end A105343

/-! ## A105343.P9226898613429874982

`2*n-(2-a(n-2))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A105343.P9226898613429874982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  (2 * n : ℤ) - (2 - a (n - 2))

end

end A105343.P9226898613429874982

namespace A105343

/-- `2*n-(2-a(n-2))` -/
def P9226898613429874982.Spec : Prop :=
  ∀ n, P9226898613429874982.a n = A105343 n

end A105343

/-! ## A105343.P1605060126954391232

`n-2+a(n-2)+n` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A105343.P1605060126954391232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  (n : ℤ) - 2 + (a (n - 2) + (n : ℤ))

end

end A105343.P1605060126954391232

namespace A105343

/-- `n-2+a(n-2)+n` -/
def P1605060126954391232.Spec : Prop :=
  ∀ n, P1605060126954391232.a n = A105343 n

end A105343

/-! ## A105343.P11808437526436578544

`n-(2-a(n-2)-n)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A105343.P11808437526436578544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  (n : ℤ) - (2 - a (n - 2) - (n : ℤ))

end

end A105343.P11808437526436578544

namespace A105343

/-- `n-(2-a(n-2)-n)` -/
def P11808437526436578544.Spec : Prop :=
  ∀ n, P11808437526436578544.a n = A105343 n

end A105343

/-! ## A105343.P337428280049137838

`A333574(n+1)+and(1, n)`
-/

namespace A105343.P337428280049137838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) + (Nat.land 1 n : ℤ)

end

end A105343.P337428280049137838

namespace A105343

/-- `A333574(n+1)+and(1, n)` -/
def P337428280049137838.Spec : Prop :=
  ∀ n, P337428280049137838.a n = A105343 n

end A105343

/-! ## A105343.P2094671850945145165

`A063196(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A105343.P2094671850945145165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A063196 n + a (n - 1)

end

end A105343.P2094671850945145165

namespace A105343

/-- `A063196(n)+a(n-1)` -/
def P2094671850945145165.Spec : Prop :=
  ∀ n, P2094671850945145165.a n = A105343 n

end A105343

/-! ## A105343.P10951178760336374955

`round(A089071(n+1)+n/2)`
-/

namespace A105343.P10951178760336374955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A089071 (n + 1) : ℚ) + (n : ℚ) / 2)

end

end A105343.P10951178760336374955

namespace A105343

/-- `round(A089071(n+1)+n/2)` -/
def P10951178760336374955.Spec : Prop :=
  ∀ n, P10951178760336374955.a n = A105343 n

end A105343

/-! ## A105343.P17910732507146339031

`A061925(n)+A057427(n)`
-/

namespace A105343.P17910732507146339031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n + A057427 n

end

end A105343.P17910732507146339031

namespace A105343

/-- `A061925(n)+A057427(n)` -/
def P17910732507146339031.Spec : Prop :=
  ∀ n, P17910732507146339031.a n = A105343 n

end A105343

/-! ## A105343.P5224082738898254575

`A010000(n)-A007590(n)`
-/

namespace A105343.P5224082738898254575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n - A007590 n

end

end A105343.P5224082738898254575

namespace A105343

/-- `A010000(n)-A007590(n)` -/
def P5224082738898254575.Spec : Prop :=
  ∀ n, P5224082738898254575.a n = A105343 n

end A105343

/-! ## A105343.P7607260484015496583

`A005893(n)-A032528(n)`
-/

namespace A105343.P7607260484015496583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A032528 n

end

end A105343.P7607260484015496583

namespace A105343

/-- `A005893(n)-A032528(n)` -/
def P7607260484015496583.Spec : Prop :=
  ∀ n, P7607260484015496583.a n = A105343 n

end A105343

/-! ## A105343.P1028679506342408551

`A005899(n)-A032525(n)`
-/

namespace A105343.P1028679506342408551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A032525 n

end

end A105343.P1028679506342408551

namespace A105343

/-- `A005899(n)-A032525(n)` -/
def P1028679506342408551.Spec : Prop :=
  ∀ n, P1028679506342408551.a n = A105343 n

end A105343

/-! ## A105343.P562016204287147207

`A005918(n)-A032526(n)`
-/

namespace A105343.P562016204287147207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A032526 n

end

end A105343.P562016204287147207

namespace A105343

/-- `A005918(n)-A032526(n)` -/
def P562016204287147207.Spec : Prop :=
  ∀ n, P562016204287147207.a n = A105343 n

end A105343

/-! ## A105343.P12603471680980524980

`A008253(n)-A077221(n)`
-/

namespace A105343.P12603471680980524980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n - A077221 n

end

end A105343.P12603471680980524980

namespace A105343

/-- `A008253(n)-A077221(n)` -/
def P12603471680980524980.Spec : Prop :=
  ∀ n, P12603471680980524980.a n = A105343 n

end A105343

/-!
# A105345: Primes p with class number h(-p) divisible by 16.

The programs for A105345, there is no canonical definition to state claims against.
-/

/-! ## A105345.P6911911698289666804

`A105389(eq[floor(n/2), A088936(n+1)])`
-/

namespace A105345.P6911911698289666804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105389 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105345.P6911911698289666804

/-!
# A105346: 3-almost primes whose indices are 3-almost primes: a(n) = A014612(A014612(n)).

The programs for A105346, the canonical program `A105346.P11183548890485311869` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105346 has offset 1).

The definition of A105346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105346.P11183548890485311869

`A014612(A014612(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A105346

/-- `A014612(A014612(n+1))` -/
def P11183548890485311869.Spec : Prop :=
  ∀ n, P11183548890485311869.a n = A105346 (n + 1)

theorem P11183548890485311869.correct : P11183548890485311869.Spec := by
  intro n
  simp only [A105346, Nat.add_sub_cancel]

end A105346

/-! ## A105346.P11197310878766235424

`A014612(eq[3, ∑{e}[n, #]])`
-/

namespace A105346.P11197310878766235424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105346.P11197310878766235424

namespace A105346

/-- `A014612(eq[3, ∑{e}[n, #]])` -/
def P11197310878766235424.Spec : Prop :=
  ∀ n, P11197310878766235424.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P14341761197166217204

`A014612(lt[abs(11-∑{e}[n, #]²), 5])`
-/

namespace A105346.P14341761197166217204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 - (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2 : ℕ) : ℤ)|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A105346.P14341761197166217204

namespace A105346

/-- `A014612(lt[abs(11-∑{e}[n, #]²), 5])` -/
def P14341761197166217204.Spec : Prop :=
  ∀ n, P14341761197166217204.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P17034143309908168179

`record[A014612(A014612(A117910(n)))]`
-/

namespace A105346.P17034143309908168179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (A117910 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105346.P17034143309908168179

namespace A105346

/-- `record[A014612(A014612(A117910(n)))]` -/
def P17034143309908168179.Spec : Prop :=
  ∀ n, P17034143309908168179.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P13884506826300595259

`record[A014612(A014612(A154958(n)))]`
-/

namespace A105346.P13884506826300595259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105346.P13884506826300595259

namespace A105346

/-- `record[A014612(A014612(A154958(n)))]` -/
def P13884506826300595259.Spec : Prop :=
  ∀ n, P13884506826300595259.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P8840870248603754502

`record[A014612(A014612(A324347(n)))]`
-/

namespace A105346.P8840870248603754502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105346.P8840870248603754502

namespace A105346

/-- `record[A014612(A014612(A324347(n)))]` -/
def P8840870248603754502.Spec : Prop :=
  ∀ n, P8840870248603754502.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P14284788548740679235

`record[A014612(A014612(A324380(n)))]`
-/

namespace A105346.P14284788548740679235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (A324380 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105346.P14284788548740679235

namespace A105346

/-- `record[A014612(A014612(A324380(n)))]` -/
def P14284788548740679235.Spec : Prop :=
  ∀ n, P14284788548740679235.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P1244761989988667696

`record[A014612(A014612(A328399(n)))]`
-/

namespace A105346.P1244761989988667696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105346.P1244761989988667696

namespace A105346

/-- `record[A014612(A014612(A328399(n)))]` -/
def P1244761989988667696.Spec : Prop :=
  ∀ n, P1244761989988667696.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P3585245832222735136

`record[A014612(A014612(A349315(n)))]`
-/

namespace A105346.P3585245832222735136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (A349315 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105346.P3585245832222735136

namespace A105346

/-- `record[A014612(A014612(A349315(n)))]` -/
def P3585245832222735136.Spec : Prop :=
  ∀ n, P3585245832222735136.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P6072167808687463637

`record[A014612(A014612(A262519(n)))]`
-/

namespace A105346.P6072167808687463637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A014612 (A262519 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105346.P6072167808687463637

namespace A105346

/-- `record[A014612(A014612(A262519(n)))]` -/
def P6072167808687463637.Spec : Prop :=
  ∀ n, P6072167808687463637.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P7626865780623495540

`A000720(A124268(A000720(A124268(n+1))))`
-/

namespace A105346.P7626865780623495540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124268 (A000720 (A124268 (n + 1)).toNat).toNat).toNat

end

end A105346.P7626865780623495540

namespace A105346

/-- `A000720(A124268(A000720(A124268(n+1))))` -/
def P7626865780623495540.Spec : Prop :=
  ∀ n, P7626865780623495540.a n = A105346 (n + 1)

end A105346

/-! ## A105346.P11976449405015358918

`A014612(record[A014612(A020986(n))])`
-/

namespace A105346.P11976449405015358918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105346.P11976449405015358918

namespace A105346

/-- `A014612(record[A014612(A020986(n))])` -/
def P11976449405015358918.Spec : Prop :=
  ∀ n, P11976449405015358918.a n = A105346 (n + 1)

end A105346

/-!
# A105348: An indicator sequence for the Jacobsthal numbers.

The programs for A105348, the canonical program `A105348.P15431712592980947353` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105348 has offset 0).

The definition of A105348 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105348.P15431712592980947353

`A130253(n)-A130250(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105348

/-- `A130253(n)-A130250(n)` -/
def P15431712592980947353.Spec : Prop :=
  ∀ n, P15431712592980947353.a n = A105348 n

theorem P15431712592980947353.correct : P15431712592980947353.Spec := by
  intro n
  simp only [A105348]

end A105348

/-! ## A105348.P985286584516520993

`1+A130249(n)-A130250(n)`
-/

namespace A105348.P985286584516520993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A130249 n - A130250 n

end

end A105348.P985286584516520993

namespace A105348

/-- `1+A130249(n)-A130250(n)` -/
def P985286584516520993.Spec : Prop :=
  ∀ n, P985286584516520993.a n = A105348 n

theorem P985286584516520993.correct : P985286584516520993.Spec := by
  intro n
  simp only [A105348, Nat.add_sub_cancel, A105348.P985286584516520993.a, A105348.P15431712592980947353.a, A130249, A130249.P17391547216416663463.a, A130250, A130250.P10470076401278137826.a, A130253, A130253.P13667080394334210224.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105348

/-! ## A105348.P16764114808941469046

`A130250(n+1)-A130250(n)`
-/

namespace A105348.P16764114808941469046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (n + 1) - A130250 n

end

end A105348.P16764114808941469046

namespace A105348

/-- `A130250(n+1)-A130250(n)` -/
def P16764114808941469046.Spec : Prop :=
  ∀ n, P16764114808941469046.a n = A105348 n

end A105348

/-! ## A105348.P1207593175202742623

`Δ[ceil(log2(xor(1, 3*n)))]`
-/

namespace A105348.P1207593175202742623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.xor 1 (3 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105348.P1207593175202742623

namespace A105348

/-- `Δ[ceil(log2(xor(1, 3*n)))]` -/
def P1207593175202742623.Spec : Prop :=
  ∀ n, P1207593175202742623.a n = A105348 n

end A105348

/-! ## A105348.P15233444075812509630

`Δ[ceil(log2(abs(1-3*n)))]`
-/

namespace A105348.P15233444075812509630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (|1 - (3 * n : ℤ)| : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105348.P15233444075812509630

namespace A105348

/-- `Δ[ceil(log2(abs(1-3*n)))]` -/
def P15233444075812509630.Spec : Prop :=
  ∀ n, P15233444075812509630.a n = A105348 n

end A105348

/-! ## A105348.P2433702095678138140

`C(a(n-2), and(2*n+1+n, n-3))` with `a(0)=1, a(1)=2`
-/

namespace A105348.P2433702095678138140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose (a (n - 2)) (Int.land (2 * n + 1 + n : ℤ) ((n : ℤ) - 3)).toNat

end

end A105348.P2433702095678138140

namespace A105348

/-- `C(a(n-2), and(2*n+1+n, n-3))` -/
def P2433702095678138140.Spec : Prop :=
  ∀ n, (P2433702095678138140.a n : ℤ) = A105348 n

end A105348

/-! ## A105348.P15311204868100338733

`and((2*n+a(n-1)-1)%(2*n), char[round(2^n/3)])` with `a(0)=1, a(1)=2`
-/

namespace A105348.P15311204868100338733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.land (Int.tmod ((2 * n : ℤ) + (a (n - 1) - 1)) (2 * n : ℤ)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105348.P15311204868100338733

namespace A105348

/-- `and((2*n+a(n-1)-1)%(2*n), char[round(2^n/3)])` -/
def P15311204868100338733.Spec : Prop :=
  ∀ n, P15311204868100338733.a n = A105348 n

end A105348

/-! ## A105348.P4584964876952946927

`A147612(n)+char[1]`
-/

namespace A105348.P4584964876952946927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A105348.P4584964876952946927

namespace A105348

/-- `A147612(n)+char[1]` -/
def P4584964876952946927.Spec : Prop :=
  ∀ n, P4584964876952946927.a n = A105348 n

end A105348

/-! ## A105348.P15042678736976271177

`char[1]+char[A001045(n)]`
-/

namespace A105348.P15042678736976271177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A105348.P15042678736976271177

namespace A105348

/-- `char[1]+char[A001045(n)]` -/
def P15042678736976271177.Spec : Prop :=
  ∀ n, (P15042678736976271177.a n : ℤ) = A105348 n

end A105348

/-! ## A105348.P8966968273657406421

`char[1]+char[A092808(n)]`
-/

namespace A105348.P8966968273657406421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A105348.P8966968273657406421

namespace A105348

/-- `char[1]+char[A092808(n)]` -/
def P8966968273657406421.Spec : Prop :=
  ∀ n, (P8966968273657406421.a n : ℤ) = A105348 n

end A105348

/-! ## A105348.P489735429099565570

`A027642(n)*A147612(n)`
-/

namespace A105348.P489735429099565570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A147612 n

end

end A105348.P489735429099565570

namespace A105348

/-- `A027642(n)*A147612(n)` -/
def P489735429099565570.Spec : Prop :=
  ∀ n, P489735429099565570.a n = A105348 n

end A105348

/-! ## A105348.P13427314534856003925

`A138702(n)*A147612(n)`
-/

namespace A105348.P13427314534856003925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138702 n * A147612 n

end

end A105348.P13427314534856003925

namespace A105348

/-- `A138702(n)*A147612(n)` -/
def P13427314534856003925.Spec : Prop :=
  ∀ n, P13427314534856003925.a n = A105348 n

end A105348

/-! ## A105348.P563493665649414090

`A147612(n)*A166333(n)`
-/

namespace A105348.P563493665649414090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 n * A166333 n

end

end A105348.P563493665649414090

namespace A105348

/-- `A147612(n)*A166333(n)` -/
def P563493665649414090.Spec : Prop :=
  ∀ n, P563493665649414090.a n = A105348 n

end A105348

/-! ## A105348.P2862541170019296885

`A147612(n)*A288872(n)`
-/

namespace A105348.P2862541170019296885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 n * A288872 n

end

end A105348.P2862541170019296885

namespace A105348

/-- `A147612(n)*A288872(n)` -/
def P2862541170019296885.Spec : Prop :=
  ∀ n, P2862541170019296885.a n = A105348 n

end A105348

/-! ## A105348.P5164305312164485131

`A147612(n)*A293668(n)`
-/

namespace A105348.P5164305312164485131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 n * A293668 n

end

end A105348.P5164305312164485131

namespace A105348

/-- `A147612(n)*A293668(n)` -/
def P5164305312164485131.Spec : Prop :=
  ∀ n, P5164305312164485131.a n = A105348 n

end A105348

/-! ## A105348.P11308451605015736473

`A147612(n)*A369010(n)`
-/

namespace A105348.P11308451605015736473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 n * A369010 n

end

end A105348.P11308451605015736473

namespace A105348

/-- `A147612(n)*A369010(n)` -/
def P11308451605015736473.Spec : Prop :=
  ∀ n, P11308451605015736473.a n = A105348 n

end A105348

/-! ## A105348.P16192191719813100690

`A049076(n+1)*A147612(n)`
-/

namespace A105348.P16192191719813100690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1) * A147612 n

end

end A105348.P16192191719813100690

namespace A105348

/-- `A049076(n+1)*A147612(n)` -/
def P16192191719813100690.Spec : Prop :=
  ∀ n, P16192191719813100690.a n = A105348 n

end A105348

/-! ## A105348.P17877754449651002103

`A080305(n+1)*A147612(n)`
-/

namespace A105348.P17877754449651002103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 1) * A147612 n

end

end A105348.P17877754449651002103

namespace A105348

/-- `A080305(n+1)*A147612(n)` -/
def P17877754449651002103.Spec : Prop :=
  ∀ n, P17877754449651002103.a n = A105348 n

end A105348

/-! ## A105348.P6670558311839330463

`A089026(n+1)*A147612(n)`
-/

namespace A105348.P6670558311839330463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A147612 n

end

end A105348.P6670558311839330463

namespace A105348

/-- `A089026(n+1)*A147612(n)` -/
def P6670558311839330463.Spec : Prop :=
  ∀ n, P6670558311839330463.a n = A105348 n

end A105348

/-! ## A105348.P16184963619806221477

`(A209229(n)+1)*A209229(A047227(n+1))`
-/

namespace A105348.P16184963619806221477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209229 n + 1) * A209229 (A047227 (n + 1)).toNat

end

end A105348.P16184963619806221477

namespace A105348

/-- `(A209229(n)+1)*A209229(A047227(n+1))` -/
def P16184963619806221477.Spec : Prop :=
  ∀ n, P16184963619806221477.a n = A105348 n

end A105348

/-!
# A105349: Characteristic sequence for the Pell numbers.

The programs for A105349, the canonical program `A105349.P14061247895125347524` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105349 has offset 0).

The definition of A105349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105349.P14560146708697097887

`char[ogf(x/(1-2x-x^2))]`
-/

namespace A105349.P14560146708697097887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -1] n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P14560146708697097887

namespace A105349

/-- `char[ogf(x/(1-2x-x^2))]` -/
def P14560146708697097887.Spec : Prop :=
  ∀ n, (P14560146708697097887.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P14061247895125347524

`char[a(n-2)+2*a(n-1)]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105349

/-- `char[a(n-2)+2*a(n-1)]` -/
def P14061247895125347524.Spec : Prop :=
  ∀ n, (P14061247895125347524.a n : ℤ) = A105349 n

theorem P14061247895125347524.correct : P14061247895125347524.Spec := by
  intro n
  simp only [A105349]

end A105349

/-! ## A105349.P12646453869737379183

`char[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A105349.P12646453869737379183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A105349.P12646453869737379183

namespace A105349

/-- `char[a(n-1)+a(n-1)+a(n-2)]` -/
def P12646453869737379183.Spec : Prop :=
  ∀ n, (P12646453869737379183.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P15336835308087694967

`char[2-(2*(1-a(n-1))-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A105349.P15336835308087694967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 - (2 * (1 - f1 (n - 1)) - f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P15336835308087694967

namespace A105349

/-- `char[2-(2*(1-a(n-1))-a(n-2))]` -/
def P15336835308087694967.Spec : Prop :=
  ∀ n, (P15336835308087694967.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P3909295716691078502

`char[A000129(n)]`
-/

namespace A105349.P3909295716691078502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P3909295716691078502

namespace A105349

/-- `char[A000129(n)]` -/
def P3909295716691078502.Spec : Prop :=
  ∀ n, (P3909295716691078502.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P4942351462265687430

`char[A116558(n)]`
-/

namespace A105349.P4942351462265687430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P4942351462265687430

namespace A105349

/-- `char[A116558(n)]` -/
def P4942351462265687430.Spec : Prop :=
  ∀ n, (P4942351462265687430.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P2568816946459332257

`char[A135153(n)]`
-/

namespace A105349.P2568816946459332257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P2568816946459332257

namespace A105349

/-- `char[A135153(n)]` -/
def P2568816946459332257.Spec : Prop :=
  ∀ n, (P2568816946459332257.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P2630549376877613816

`char[abs(A176981(n))]`
-/

namespace A105349.P2630549376877613816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P2630549376877613816

namespace A105349

/-- `char[abs(A176981(n))]` -/
def P2630549376877613816.Spec : Prop :=
  ∀ n, (P2630549376877613816.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P5590826304278430085

`char[abs(A215936(n))]`
-/

namespace A105349.P5590826304278430085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215936 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P5590826304278430085

namespace A105349

/-- `char[abs(A215936(n))]` -/
def P5590826304278430085.Spec : Prop :=
  ∀ n, (P5590826304278430085.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P9950824222954288284

`char[A188285(∑[n])]`
-/

namespace A105349.P9950824222954288284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188285 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P9950824222954288284

namespace A105349

/-- `char[A188285(∑[n])]` -/
def P9950824222954288284.Spec : Prop :=
  ∀ n, (P9950824222954288284.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P3459722268890757885

`char[Δ[A002965(n)]]`
-/

namespace A105349.P3459722268890757885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P3459722268890757885

namespace A105349

/-- `char[Δ[A002965(n)]]` -/
def P3459722268890757885.Spec : Prop :=
  ∀ n, (P3459722268890757885.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P12522327057814432807

`char[Δ[A171842(n)]]`
-/

namespace A105349.P12522327057814432807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P12522327057814432807

namespace A105349

/-- `char[Δ[A171842(n)]]` -/
def P12522327057814432807.Spec : Prop :=
  ∀ n, (P12522327057814432807.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P2027484205769682270

`char[A002965(2*n)]`
-/

namespace A105349.P2027484205769682270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P2027484205769682270

namespace A105349

/-- `char[A002965(2*n)]` -/
def P2027484205769682270.Spec : Prop :=
  ∀ n, (P2027484205769682270.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P14900016867219976459

`char[A116560(2*n)]`
-/

namespace A105349.P14900016867219976459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P14900016867219976459

namespace A105349

/-- `char[A116560(2*n)]` -/
def P14900016867219976459.Spec : Prop :=
  ∀ n, (P14900016867219976459.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P12740828699036670075

`char[A249576(3*n)]`
-/

namespace A105349.P12740828699036670075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P12740828699036670075

namespace A105349

/-- `char[A249576(3*n)]` -/
def P12740828699036670075.Spec : Prop :=
  ∀ n, (P12740828699036670075.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P13317043523735059997

`char[-A176981(n+1)]`
-/

namespace A105349.P13317043523735059997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A176981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P13317043523735059997

namespace A105349

/-- `char[-A176981(n+1)]` -/
def P13317043523735059997.Spec : Prop :=
  ∀ n, (P13317043523735059997.a n : ℤ) = A105349 n

end A105349

/-! ## A105349.P8417646978296332460

`char[A172236(∑[n+2])]`
-/

namespace A105349.P8417646978296332460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A105349.P8417646978296332460

namespace A105349

/-- `char[A172236(∑[n+2])]` -/
def P8417646978296332460.Spec : Prop :=
  ∀ n, (P8417646978296332460.a n : ℤ) = A105349 n

end A105349

/-!
# A105350: Largest squared factorial dividing n!.

The programs for A105350, there is no canonical definition to state claims against.
-/

/-! ## A105350.P9636232952585244237

`A056038(n)²`
-/

namespace A105350.P9636232952585244237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056038 n ^ 2

end

end A105350.P9636232952585244237

/-! ## A105350.P15799874679073672342

`A056038(and(n, -2))*A056038(n)`
-/

namespace A105350.P15799874679073672342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056038 (Int.land (n : ℤ) (-2)).toNat * A056038 n

end

end A105350.P15799874679073672342

/-! ## A105350.P3729537605354944209

`A056038(n)^A020639(record[2-xor(1, -n)])`
-/

namespace A105350.P3729537605354944209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056038 n : ℚ) ^ (A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A105350.P3729537605354944209

/-! ## A105350.P3622462608457254854

`A056038(n)^A020639(∑[char[n!-1]]!)`
-/

namespace A105350.P3622462608457254854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056038 n : ℚ) ^ (A020639 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ)

end

end A105350.P3622462608457254854

/-! ## A105350.P9665851638952722008

`A056038(n)^A001316(A001316(n))`
-/

namespace A105350.P9665851638952722008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056038 n : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A105350.P9665851638952722008

/-! ## A105350.P13406567292438259221

`A056038(n)^A000005(A002144(n+1))`
-/

namespace A105350.P13406567292438259221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056038 n : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A105350.P13406567292438259221

/-! ## A105350.P14320615222772297290

`A056038(n)^A000005(A046132(n+1))`
-/

namespace A105350.P14320615222772297290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056038 n : ℚ) ^ (A000005 (A046132 (n + 1)).toNat : ℤ)

end

end A105350.P14320615222772297290

/-!
# A105352: Numbers of points on successive rings of the simple square lattice.

The programs for A105352, there is no canonical definition to state claims against.
-/

/-! ## A105352.P3806055110474370651

`A004018(A001481(n+1))`
-/

namespace A105352.P3806055110474370651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A001481 (n + 1)).toNat

end

end A105352.P3806055110474370651

/-! ## A105352.P14618644068179698040

`A004018(eq[0, A070176(n)])`
-/

namespace A105352.P14618644068179698040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105352.P14618644068179698040

/-! ## A105352.P2722687622091595426

`A004018(lt[0, A004018(n)])`
-/

namespace A105352.P2722687622091595426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A105352.P2722687622091595426

/-! ## A105352.P10184851873076815872

`A004018(eq[1, A229062(n)])`
-/

namespace A105352.P10184851873076815872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105352.P10184851873076815872

/-! ## A105352.P3256337773321624239

`filter[A004018(n), A022932(#)]`
-/

namespace A105352.P3256337773321624239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A105352.P3256337773321624239

/-! ## A105352.P13284847385792883121

`filter[A004018(n), A075897(#)]`
-/

namespace A105352.P13284847385792883121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A105352.P13284847385792883121

/-! ## A105352.P4737216503711493879

`filter[A004018(n), A109720(#)]`
-/

namespace A105352.P4737216503711493879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A105352.P4737216503711493879

/-! ## A105352.P17259577749982113243

`filter[A004018(n), A135947(#)]`
-/

namespace A105352.P17259577749982113243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A105352.P17259577749982113243

/-! ## A105352.P3970895613290389708

`filter[A004018(n), A145568(#)]`
-/

namespace A105352.P3970895613290389708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A105352.P3970895613290389708

/-! ## A105352.P16479966417234076214

`filter[A004018(n), A276398(#)]`
-/

namespace A105352.P16479966417234076214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A105352.P16479966417234076214

/-! ## A105352.P6048074322772715541

`filter[A004018(n), A316343(#)]`
-/

namespace A105352.P6048074322772715541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316343 (f1 j).toNat = 1) n)

end

end A105352.P6048074322772715541

/-! ## A105352.P6980166708956235259

`A004018(comp[A022544(n+1)])`
-/

namespace A105352.P6980166708956235259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105352.P6980166708956235259

/-! ## A105352.P2369315438995348817

`A004018(A166687(n+1)-1)`
-/

namespace A105352.P2369315438995348817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A166687 (n + 1) - 1).toNat

end

end A105352.P2369315438995348817

/-! ## A105352.P14558782673228714721

`A004018(eq[1, gcd(17, A004018(n))])`
-/

namespace A105352.P14558782673228714721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 17 (A004018 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105352.P14558782673228714721

/-! ## A105352.P12910989746718486558

`A004018(record[n%(A004018(n)+n)])`
-/

namespace A105352.P12910989746718486558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A004018 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105352.P12910989746718486558

/-! ## A105352.P7948256287343841369

`A104794(lt[0, A104794(n)])`
-/

namespace A105352.P7948256287343841369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A105352.P7948256287343841369

/-! ## A105352.P16446441308900951147

`A104794(2*A001481(n+1))`
-/

namespace A105352.P16446441308900951147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * A001481 (n + 1)).toNat

end

end A105352.P16446441308900951147

/-! ## A105352.P15987754162538665433

`A004018(2*eq[0, char[A022544(n+1)]])`
-/

namespace A105352.P15987754162538665433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105352.P15987754162538665433

/-! ## A105352.P16927027959148876096

`A004018(comp[n-(n+1)*A004018(n)])`
-/

namespace A105352.P16927027959148876096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n + 1 : ℤ) * A004018 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105352.P16927027959148876096

/-! ## A105352.P5078515617915496252

`A004531(2*2*A001481(n+1))`
-/

namespace A105352.P5078515617915496252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (2 * (2 * A001481 (n + 1))).toNat

end

end A105352.P5078515617915496252

/-!
# A105353: Rearrangement of positive integers: parity of a(n) coincides with parity of n-th digit of decimal expansion of Pi (see comments).

The programs for A105353, there is no canonical definition to state claims against.
-/

/-! ## A105353.P6297179448870387364

`xor(1, A105357(n+1)-1)+1`
-/

namespace A105353.P6297179448870387364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A105357 (n + 1) - 1) + 1

end

end A105353.P6297179448870387364

/-! ## A105353.P6173450228861285164

`A014681(A105357(n+1))`
-/

namespace A105353.P6173450228861285164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A105357 (n + 1)).toNat

end

end A105353.P6173450228861285164

/-! ## A105353.P13968915532628118451

`A121496(2*A105357(n+1))`
-/

namespace A105353.P13968915532628118451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (2 * A105357 (n + 1)).toNat

end

end A105353.P13968915532628118451

/-! ## A105353.P424544928811306635

`A103889(or(char[2], A105357(n+1)))`
-/

namespace A105353.P424544928811306635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A105357 (n + 1))).toNat

end

end A105353.P424544928811306635

/-! ## A105353.P3680302368329368550

`A103889(A105357(n+1))%A000040(n+2)`
-/

namespace A105353.P3680302368329368550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103889 (A105357 (n + 1)).toNat) (A000040 (n + 2))

end

end A105353.P3680302368329368550

/-! ## A105353.P13604791758904172779

`A007318(C(2, n))*A103889(A105357(n+1))`
-/

namespace A105353.P13604791758904172779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A103889 (A105357 (n + 1)).toNat

end

end A105353.P13604791758904172779

/-! ## A105353.P834175416805588016

`A014963(6*(n+1))*A103889(A105357(n+1))`
-/

namespace A105353.P834175416805588016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A103889 (A105357 (n + 1)).toNat

end

end A105353.P834175416805588016

/-! ## A105353.P17840675691221344170

`A000041(C(2, n+2))*A103889(A105357(n+1))`
-/

namespace A105353.P17840675691221344170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A103889 (A105357 (n + 1)).toNat

end

end A105353.P17840675691221344170

/-! ## A105353.P15118383801459458587

`A000108(C(2, n+2))*A103889(A105357(n+1))`
-/

namespace A105353.P15118383801459458587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A103889 (A105357 (n + 1)).toNat

end

end A105353.P15118383801459458587

/-!
# A105354: Position of n in rearrangement A105353.

The programs for A105354, there is no canonical definition to state claims against.
-/

/-! ## A105354.P3769422533757403116

`A105358(xor(1, n)+1)`
-/

namespace A105354.P3769422533757403116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105358 (Nat.xor 1 n + 1)

end

end A105354.P3769422533757403116

/-! ## A105354.P7850771103483102582

`A105358(2*or(1, n)-n)`
-/

namespace A105354.P7850771103483102582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105358 (2 * Nat.lor 1 n - n)

end

end A105354.P7850771103483102582

/-! ## A105354.P4256047403880309636

`A105358((-1)^n+n+1)`
-/

namespace A105354.P4256047403880309636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105358 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A105354.P4256047403880309636

/-! ## A105354.P11954644099835232140

`A105358(A103889(n+1))%90`
-/

namespace A105354.P11954644099835232140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105358 (A103889 (n + 1)).toNat) 90

end

end A105354.P11954644099835232140

/-! ## A105354.P3851162130095976448

`gcd(A000038(n), A105358(A103889(n+1)))`
-/

namespace A105354.P3851162130095976448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A105358 (A103889 (n + 1)).toNat)

end

end A105354.P3851162130095976448

/-!
# A105355: Records in rearrangement A105353.

The programs for A105355, there is no canonical definition to state claims against.
-/

/-! ## A105355.P1583544948810121676

`or(A105359(n+1), A210709(A013928(n+1)))`
-/

namespace A105355.P1583544948810121676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105359 (n + 1)) (A210709 (A013928 (n + 1)).toNat)

end

end A105355.P1583544948810121676

/-! ## A105355.P6745228577402591182

`A105359(n+1)+A001613(A010894(n))`
-/

namespace A105355.P6745228577402591182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105359 (n + 1) + A001613 (A010894 (n + 21)).toNat

end

end A105355.P6745228577402591182

/-! ## A105355.P2144362444173873622

`or(A105359(n+1), A210709(A004396(n)))`
-/

namespace A105355.P2144362444173873622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105359 (n + 1)) (A210709 (A004396 n).toNat)

end

end A105355.P2144362444173873622

/-!
# A105356: Records in A105354.

The programs for A105356, there is no canonical definition to state claims against.
-/

/-! ## A105356.P17706407827646205350

`comp[45*n]+n`
-/

namespace A105356.P17706407827646205350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A105356.P17706407827646205350

/-! ## A105356.P13091981053545371499

`floor(Δ[n²]/cos(19))`
-/

namespace A105356.P13091981053545371499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) / Real.cos (19 : ℝ)⌋

end

end A105356.P13091981053545371499

/-! ## A105356.P13470969206020894286

`∑[a(val(n, 44))+1]` with `a(0)=1`
-/

namespace A105356.P13470969206020894286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (SequenceMachineLib.valuation n 44) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105356.P13470969206020894286

/-! ## A105356.P16265592711285944360

`floor((2*n+1)/tanh(log2(6)))`
-/

namespace A105356.P16265592711285944360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.tanh (Real.logb 2 (6 : ℝ))⌋

end

end A105356.P16265592711285944360

/-! ## A105356.P16685889683291002090

`round((n+3)/sin(8)+n-2)`
-/

namespace A105356.P16685889683291002090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℝ) / Real.sin (8 : ℝ) + ((n : ℤ) - 2 : ℝ))

end

end A105356.P16685889683291002090

/-! ## A105356.P5826961559966855667

`∑[A000040(a(val(n, 44)))]` with `a(0)=1`
-/

namespace A105356.P5826961559966855667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000040 (f1 (SequenceMachineLib.valuation n 44)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105356.P5826961559966855667

/-! ## A105356.P7756326985233237480

`∑[A020639(A249406(2*n+1))]`
-/

namespace A105356.P7756326985233237480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A249406 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105356.P7756326985233237480

/-! ## A105356.P12973937888597499813

`∑[A020639((n+1)*(A183093(n+1)+1))]`
-/

namespace A105356.P12973937888597499813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * (A183093 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105356.P12973937888597499813

/-! ## A105356.P1131044745362451508

`lt[A020639(A018252(n+2))-a(n-1), 1]` with `a(0)=6`
-/

namespace A105356.P1131044745362451508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A020639 (A018252 (n + 2)).toNat - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105356.P1131044745362451508

/-! ## A105356.P8653112068156240283

`∑[A020639((n+1)*A000005(A000005(A000005(n+1))))]`
-/

namespace A105356.P8653112068156240283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A000005 (A000005 (A000005 (n + 1)).toNat).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105356.P8653112068156240283

/-!
# A105357: Rearrangement of positive integers: parity of a[n] is opposite to parity of n-th digit of decimal expansion of Pi (see comments).

The programs for A105357, there is no canonical definition to state claims against.
-/

/-! ## A105357.P15057739424082507028

`abs(xor(1, -A105353(n+1)))`
-/

namespace A105357.P15057739424082507028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A105353 (n + 1))|

end

end A105357.P15057739424082507028

/-! ## A105357.P13530269377657310094

`round(sqrt(xor(1, -A105353(n%(n+1)+1))²+1))`
-/

namespace A105357.P13530269377657310094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.xor 1 (-A105353 (n % (n + 1) + 1)) ^ 2 + 1 : ℝ))

end

end A105357.P13530269377657310094

/-! ## A105357.P10425363923518042879

`A014681(A105353(n+1))`
-/

namespace A105357.P10425363923518042879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A105353 (n + 1)).toNat

end

end A105357.P10425363923518042879

/-! ## A105357.P15684036186801866820

`A121496(2*A105353(n+1))`
-/

namespace A105357.P15684036186801866820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (2 * A105353 (n + 1)).toNat

end

end A105357.P15684036186801866820

/-! ## A105357.P1123809070878206440

`A103889(or(char[1], A105353(n+1)))`
-/

namespace A105357.P1123809070878206440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A105353 (n + 1))).toNat

end

end A105357.P1123809070878206440

/-! ## A105357.P7779197419206101709

`∑{d}[xor(1, -A105353(n+1)), A000010(#)]`
-/

namespace A105357.P7779197419206101709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-A105353 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A105357.P7779197419206101709

/-! ## A105357.P7524167612653141670

`-(A007318(C(2, n))*xor(1, -A105353(n+1)))`
-/

namespace A105357.P7524167612653141670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A007318 (Nat.choose 2 n) * Int.xor 1 (-A105353 (n + 1)))

end

end A105357.P7524167612653141670

/-! ## A105357.P4470055181143751610

`A008683(4*(n+1))-xor(1, -A105353(n+1))`
-/

namespace A105357.P4470055181143751610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - Int.xor 1 (-A105353 (n + 1))

end

end A105357.P4470055181143751610

/-! ## A105357.P16983039780982277279

`A001222(gcd(n, n+1))-xor(1, -A105353(n+1))`
-/

namespace A105357.P16983039780982277279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) - Int.xor 1 (-A105353 (n + 1))

end

end A105357.P16983039780982277279

/-! ## A105357.P12979420950633133226

`-(log2(A020639(4*(n+1)))*xor(1, -A105353(n+1)))`
-/

namespace A105357.P12979420950633133226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(Real.logb 2 (A020639 (4 * (n + 1)) : ℝ) * (Int.xor 1 (-A105353 (n + 1)) : ℝ))

end

end A105357.P12979420950633133226

/-!
# A105358: Position of n in rearrangement A105357.

The programs for A105358, there is no canonical definition to state claims against.
-/

/-! ## A105358.P17184168615867261081

`A105354(xor(1, n)+1)`
-/

namespace A105358.P17184168615867261081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105354 (Nat.xor 1 n + 1)

end

end A105358.P17184168615867261081

/-! ## A105358.P16860372303843975128

`A105354((-1)^n+n+1)`
-/

namespace A105358.P16860372303843975128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105354 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A105358.P16860372303843975128

/-! ## A105358.P13288753401895044914

`A105354(A103889(n+1))%90`
-/

namespace A105358.P13288753401895044914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105354 (A103889 (n + 1)).toNat) 90

end

end A105358.P13288753401895044914

/-! ## A105358.P1036818399649093668

`or(A000038(n), A105354(A103889(n+1)))`
-/

namespace A105358.P1036818399649093668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A105354 (A103889 (n + 1)).toNat)

end

end A105358.P1036818399649093668

/-! ## A105358.P13797130102441516382

`A007318(C(3, n))*A105354(A103889(n+1))`
-/

namespace A105358.P13797130102441516382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A105354 (A103889 (n + 1)).toNat

end

end A105358.P13797130102441516382

/-! ## A105358.P16215238640004129366

`A105354(A103889(n+1))/A014963(6*(n+1))`
-/

namespace A105358.P16215238640004129366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105354 (A103889 (n + 1)).toNat : ℚ) / (A014963 (6 * (n + 1)) : ℚ)

end

end A105358.P16215238640004129366

/-! ## A105358.P11704936928148720995

`A000045(gcd(n, n+1))*A105354(A103889(n+1))`
-/

namespace A105358.P11704936928148720995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A105354 (A103889 (n + 1)).toNat

end

end A105358.P11704936928148720995

/-!
# A105359: Records in rearrangement A105357.

The programs for A105359, there is no canonical definition to state claims against.
-/

/-! ## A105359.P2724501018560957552

`A105355(n+1)-A001613(A010894(n))`
-/

namespace A105359.P2724501018560957552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105355 (n + 1) - A001613 (A010894 (n + 21)).toNat

end

end A105359.P2724501018560957552

/-! ## A105359.P4434999840833721251

`and(A105355(n+1), A387415(n+1))`
-/

namespace A105359.P4434999840833721251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105355 (n + 1)) (A387415 (n + 1))

end

end A105359.P4434999840833721251

/-! ## A105359.P12336940174894620764

`and(A105355(n+1), A387418(n+1))`
-/

namespace A105359.P12336940174894620764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105355 (n + 1)) (A387418 (n + 1))

end

end A105359.P12336940174894620764

/-! ## A105359.P17379140731238648379

`A105355(n+1)%A105388(2*n+3)²`
-/

namespace A105359.P17379140731238648379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105355 (n + 1)) (A105388 (2 * n + 3) ^ 2)

end

end A105359.P17379140731238648379

/-! ## A105359.P1518880513241702515

`A105355(n+1)%A002762(n)`
-/

namespace A105359.P1518880513241702515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105355 (n + 1)) (A002762 n)

end

end A105359.P1518880513241702515

/-!
# A105360: Records in A105358.

The programs for A105360, there is no canonical definition to state claims against.
-/

/-! ## A105360.P13724402205390804061

`a(n-1)+3*A185284(Δ[A035382(n)])+2` with `a(0)=1, a(1)=2`
-/

namespace A105360.P13724402205390804061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (3 * A185284 (f1 (n + 1) - f1 n).toNat + 2)

end

end A105360.P13724402205390804061

/-! ## A105360.P17539775143110017326

`A004277(n)+3*A185284(Δ[A035382(n)])`
-/

namespace A105360.P17539775143110017326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 3 * A185284 (f1 (n + 1) - f1 n).toNat

end

end A105360.P17539775143110017326

/-! ## A105360.P3820670167696096995

`3*A185284(Δ[A035382(n)])+A028310(2*n)`
-/

namespace A105360.P3820670167696096995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A185284 (f1 (n + 1) - f1 n).toNat + A028310 (2 * n)

end

end A105360.P3820670167696096995

/-!
# A105361: Rearrangement of positive integers according to decimal expansions of Pi and e (see comments).

The programs for A105361, there is no canonical definition to state claims against.
-/

/-! ## A105361.P8646691443201687635

`lcm(A040001(A346102(3*(n+1))), A099470(2*n+1))`
-/

namespace A105361.P8646691443201687635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 (A346102 (3 * (n + 1))).toNat) (A099470 (2 * n + 1))

end

end A105361.P8646691443201687635

/-!
# A105363: Rearrangement of positive integers according to parity of (prime(n)-1)/2 (see comments).

The programs for A105363, there is no canonical definition to state claims against.
-/

/-! ## A105363.P15535138084382529485

`A332805(n+2)-1`
-/

namespace A105363.P15535138084382529485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332805 (n + 2) - 1

end

end A105363.P15535138084382529485

/-! ## A105363.P17555114180905618841

`abs(xor(1, -A105364(n+1)))`
-/

namespace A105363.P17555114180905618841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A105364 (n + 1))|

end

end A105363.P17555114180905618841

/-! ## A105363.P6396470464298282476

`log2(A332816(p?[2*n+1]))`
-/

namespace A105363.P6396470464298282476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A332816 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A105363.P6396470464298282476

/-! ## A105363.P16816575570462203362

`∑[Δ[A332805(n+1)]%10]`
-/

namespace A105363.P16816575570462203362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105363.P16816575570462203362

/-! ## A105363.P8788664236057828048

`A332894(p?[2*n+1])-1`
-/

namespace A105363.P8788664236057828048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A105363.P8788664236057828048

/-! ## A105363.P15715916913528312242

`A332899(p?[2*n+1])-1`
-/

namespace A105363.P15715916913528312242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A105363.P15715916913528312242

/-! ## A105363.P13041104149442146211

`A014681(A105364(n+1))`
-/

namespace A105363.P13041104149442146211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A105364 (n + 1)).toNat

end

end A105363.P13041104149442146211

/-! ## A105363.P1794877187056277656

`A023443(A332805(n+2))`
-/

namespace A105363.P1794877187056277656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332805 (n + 2)).toNat

end

end A105363.P1794877187056277656

/-! ## A105363.P14430210684208798201

`A033270(A332806(n+2))`
-/

namespace A105363.P14430210684208798201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A332806 (n + 2)).toNat

end

end A105363.P14430210684208798201

/-! ## A105363.P13408314520708921144

`A332894(A000040(n+2))-1`
-/

namespace A105363.P13408314520708921144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A000040 (n + 2)).toNat - 1

end

end A105363.P13408314520708921144

/-!
# A105364: Rearrangement of positive integers according to parity of (prime(n)-1)/2 (see comments).

The programs for A105364, there is no canonical definition to state claims against.
-/

/-! ## A105364.P15315794604789946516

`xor(1, A332805(n+2))-1`
-/

namespace A105364.P15315794604789946516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A332805 (n + 2)) - 1

end

end A105364.P15315794604789946516

/-! ## A105364.P814624435611782760

`abs(xor(1, -A105363(n+1)))`
-/

namespace A105364.P814624435611782760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A105363 (n + 1))|

end

end A105364.P814624435611782760

/-! ## A105364.P8768127008681093648

`A014681(A105363(n+1))`
-/

namespace A105364.P8768127008681093648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A105363 (n + 1)).toNat

end

end A105364.P8768127008681093648

/-! ## A105364.P16809310150387127507

`A004442(A332805(n+2))-1`
-/

namespace A105364.P16809310150387127507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A332805 (n + 2)).toNat - 1

end

end A105364.P16809310150387127507

/-! ## A105364.P15941586869574388226

`A014681(A332805(n+2)-1)`
-/

namespace A105364.P15941586869574388226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A332805 (n + 2) - 1).toNat

end

end A105364.P15941586869574388226

/-! ## A105364.P13652282230860454409

`A332805(A267100(n+2))-1`
-/

namespace A105364.P13652282230860454409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332805 (A267100 (n + 2)).toNat - 1

end

end A105364.P13652282230860454409

/-! ## A105364.P15939978694077917316

`A332894(A267101(n+2))-1`
-/

namespace A105364.P15939978694077917316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (A267101 (n + 2)).toNat - 1

end

end A105364.P15939978694077917316

/-! ## A105364.P1476561064664514609

`A023443(xor(1, A332805(n+2)))`
-/

namespace A105364.P1476561064664514609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.xor 1 (A332805 (n + 2))).toNat

end

end A105364.P1476561064664514609

/-! ## A105364.P3731869097101300757

`A212159(n+2)+A105363(n+1)`
-/

namespace A105364.P3731869097101300757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212159 (n + 2) + A105363 (n + 1)

end

end A105364.P3731869097101300757

/-! ## A105364.P1166873467522332914

`A105363(n+1)-A077008(n+2)`
-/

namespace A105364.P1166873467522332914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105363 (n + 1) - A077008 (n + 2)

end

end A105364.P1166873467522332914

/-!
# A105365: Rearrangement of positive integers according to parity of (prime(n)-1)/2 (see comments).

The programs for A105365, there is no canonical definition to state claims against.
-/

/-! ## A105365.P9643947796969359079

`A026239(A105366(n+1))`
-/

namespace A105365.P9643947796969359079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A105366 (n + 1)).toNat

end

end A105365.P9643947796969359079

/-! ## A105365.P9755539042056432906

`A073846(A332805(n+1)-A070750(n+1))`
-/

namespace A105365.P9755539042056432906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A332805 (n + 1) - A070750 (n + 1)).toNat

end

end A105365.P9755539042056432906

/-! ## A105365.P18342388590726591907

`A073846(xor(A070750(n+1)², A332805(n+1)))`
-/

namespace A105365.P18342388590726591907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.xor (A070750 (n + 1) ^ 2) (A332805 (n + 1))).toNat

end

end A105365.P18342388590726591907

/-! ## A105365.P667949917650479632

`A105366(A267100(n+1))`
-/

namespace A105365.P667949917650479632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105366 (A267100 (n + 1)).toNat

end

end A105365.P667949917650479632

/-! ## A105365.P7879439341661656474

`A237056(A015161(n)!*A332805(n+1))`
-/

namespace A105365.P7879439341661656474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 ((Nat.factorial (A015161 n).toNat : ℤ) * A332805 (n + 1)).toNat

end

end A105365.P7879439341661656474

/-!
# A105366: Rearrangement of positive integers according to parity of (prime(n)-1)/2 (see comments).

The programs for A105366, there is no canonical definition to state claims against.
-/

/-! ## A105366.P6720489144863261975

`A026239(A105365(n+1))`
-/

namespace A105366.P6720489144863261975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A105365 (n + 1)).toNat

end

end A105366.P6720489144863261975

/-! ## A105366.P13327957832473762696

`A073846(A332805(n+1))`
-/

namespace A105366.P13327957832473762696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A332805 (n + 1)).toNat

end

end A105366.P13327957832473762696

/-! ## A105366.P5912874852945961459

`A073846(A000720(p?[A332808(n+1)]))`
-/

namespace A105366.P5912874852945961459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A105366.P5912874852945961459

/-! ## A105366.P7028027681557980949

`A105365(A267100(n+1))`
-/

namespace A105366.P7028027681557980949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105365 (A267100 (n + 1)).toNat

end

end A105366.P7028027681557980949

/-!
# A105367: Expansion of (1-x^3)/(1-x^5).

The programs for A105367, the canonical program `A105367.P14678649837860167741` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105367 has offset 0).

The definition of A105367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3)/(1-x^5))` (program `A105367.P14678649837860167741`, by `A105367.P14678649837860167741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105367.P14539667595372462828

`ogf((1+x+x^2)/(1+x+x^2+x^3+x^4))`
-/

namespace A105367.P14539667595372462828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 1, 1, 1, 1] n

end

end A105367.P14539667595372462828

namespace A105367

/-- `ogf((1+x+x^2)/(1+x+x^2+x^3+x^4))` -/
def P14539667595372462828.Spec : Prop :=
  ∀ n, P14539667595372462828.a n = A105367 n

end A105367

/-! ## A105367.P14678649837860167741

`ogf((1-x^3)/(1-x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105367

/-- `ogf((1-x^3)/(1-x^5))` -/
def P14678649837860167741.Spec : Prop :=
  ∀ n, P14678649837860167741.a n = A105367 n

theorem P14678649837860167741.correct : P14678649837860167741.Spec := by
  intro n
  simp only [A105367]

end A105367

/-!
# A105368: Expansion of (1-x-x^3+x^4)/(1-x^5).

The programs for A105368, the canonical program `A105368.P13814333630225827930` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105368 has offset 0).

The definition of A105368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^3+x^4)/(1-x^5))` (program `A105368.P13814333630225827930`, by `A105368.P13814333630225827930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105368.P4643626274432346522

`2-(n²+n+1)%5`
-/

namespace A105368.P4643626274432346522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((n ^ 2 + n + 1) % 5 : ℕ) : ℤ)

end

end A105368.P4643626274432346522

namespace A105368

/-- `2-(n²+n+1)%5` -/
def P4643626274432346522.Spec : Prop :=
  ∀ n, P4643626274432346522.a n = A105368 n

end A105368

/-! ## A105368.P13814333630225827930

`ogf((1-x-x^3+x^4)/(1-x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105368

/-- `ogf((1-x-x^3+x^4)/(1-x^5))` -/
def P13814333630225827930.Spec : Prop :=
  ∀ n, P13814333630225827930.a n = A105368 n

theorem P13814333630225827930.correct : P13814333630225827930.Spec := by
  intro n
  simp only [A105368]

end A105368

/-!
# A105369: Expansion of ((1+x)^3 - x^3)/((1+x)^5 - x^5).

The programs for A105369, the canonical program `A105369.P9947520137654954532` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105369 has offset 0).

The definition of A105369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+3x^2)/(1+5x+10x^2+10x^3+5x^4))` (program `A105369.P9947520137654954532`, by `A105369.P9947520137654954532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105369.P9947520137654954532

`ogf((1+3x+3x^2)/(1+5x+10x^2+10x^3+5x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105369

/-- `ogf((1+3x+3x^2)/(1+5x+10x^2+10x^3+5x^4))` -/
def P9947520137654954532.Spec : Prop :=
  ∀ n, P9947520137654954532.a n = A105369 n

theorem P9947520137654954532.correct : P9947520137654954532.Spec := by
  intro n
  simp only [A105369]

end A105369

/-! ## A105369.P10581787539424495150

`A105370(n)-a(n-1)` with `a(0)=1`
-/

namespace A105369.P10581787539424495150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105370 n - a (n - 1)

end

end A105369.P10581787539424495150

namespace A105369

/-- `A105370(n)-a(n-1)` -/
def P10581787539424495150.Spec : Prop :=
  ∀ n, P10581787539424495150.a n = A105369 n

end A105369

/-! ## A105369.P4820477332670777235

`(A289388(n)+A289306(n))*(-1)^n-a(n-1)` with `a(0)=1`
-/

namespace A105369.P4820477332670777235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A289388 n + A289306 n) * (-1) ^ n - a (n - 1)

end

end A105369.P4820477332670777235

namespace A105369

/-- `(A289388(n)+A289306(n))*(-1)^n-a(n-1)` -/
def P4820477332670777235.Spec : Prop :=
  ∀ n, P4820477332670777235.a n = A105369 n

end A105369

/-!
# A105370: Expansion of ((1+x)^4-(1+x)x^3)/((1+x)^5-x^5).

The programs for A105370, the canonical program `A105370.P9518182643864272577` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105370 has offset 0).

The definition of A105370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+6x^2+3x^3)/(1+5x+10x^2+10x^3+5x^4))` (program `A105370.P9518182643864272577`, by `A105370.P9518182643864272577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105370.P9518182643864272577

`ogf((1+4x+6x^2+3x^3)/(1+5x+10x^2+10x^3+5x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105370

/-- `ogf((1+4x+6x^2+3x^3)/(1+5x+10x^2+10x^3+5x^4))` -/
def P9518182643864272577.Spec : Prop :=
  ∀ n, P9518182643864272577.a n = A105370 n

theorem P9518182643864272577.correct : P9518182643864272577.Spec := by
  intro n
  simp only [A105370]

end A105370

/-! ## A105370.P10789276244737778422

`(A289388(n)+A289306(n))*(-1)^n`
-/

namespace A105370.P10789276244737778422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289388 n + A289306 n) * (-1) ^ n

end

end A105370.P10789276244737778422

namespace A105370

/-- `(A289388(n)+A289306(n))*(-1)^n` -/
def P10789276244737778422.Spec : Prop :=
  ∀ n, P10789276244737778422.a n = A105370 n

end A105370

/-! ## A105370.P9479945887772007256

`(A289388(n)+A289306(n))/A033999(n)`
-/

namespace A105370.P9479945887772007256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289388 n + A289306 n : ℚ) / (A033999 n : ℚ)

end

end A105370.P9479945887772007256

namespace A105370

/-- `(A289388(n)+A289306(n))/A033999(n)` -/
def P9479945887772007256.Spec : Prop :=
  ∀ n, P9479945887772007256.a n = (A105370 n : ℚ)

end A105370

/-!
# A105371: Expansion of (1-x)*(1-x+x^2)/(1-3*x+4*x^2-2*x^3+x^4).

The programs for A105371, the canonical program `A105371.P15252701725184640144` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105371 has offset 0).

The definition of A105371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+2x^2-x^3)/(1-3x+4x^2-2x^3+x^4))` (program `A105371.P15252701725184640144`, by `A105371.P15252701725184640144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105371.P15252701725184640144

`ogf((1-2x+2x^2-x^3)/(1-3x+4x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105371

/-- `ogf((1-2x+2x^2-x^3)/(1-3x+4x^2-2x^3+x^4))` -/
def P15252701725184640144.Spec : Prop :=
  ∀ n, P15252701725184640144.a n = A105371 n

theorem P15252701725184640144.correct : P15252701725184640144.Spec := by
  intro n
  simp only [A105371]

end A105371

/-! ## A105371.P32742890622631369

`3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A105371.P32742890622631369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A105371.P32742890622631369

namespace A105371

/-- `3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P32742890622631369.Spec : Prop :=
  ∀ n, P32742890622631369.a n = A105371 n

end A105371

/-! ## A105371.P5117879724497704966

`round((a(n-1)-a(n-2))*ϕ²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A105371.P5117879724497704966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) - a (n - 2) : ℝ) * Real.goldenRatio ^ 2)

end

end A105371.P5117879724497704966

namespace A105371

/-- `round((a(n-1)-a(n-2))*ϕ²)` -/
def P5117879724497704966.Spec : Prop :=
  ∀ n, P5117879724497704966.a n = A105371 n

end A105371

/-! ## A105371.P16948958717855903856

`1-∑[A138112(n)]`
-/

namespace A105371.P16948958717855903856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105371.P16948958717855903856

namespace A105371

/-- `1-∑[A138112(n)]` -/
def P16948958717855903856.Spec : Prop :=
  ∀ n, P16948958717855903856.a n = A105371 n

end A105371

/-! ## A105371.P6604729737298095723

`round(A100334(n+1)/ϕ)`
-/

namespace A105371.P6604729737298095723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100334 (n + 1) : ℝ) / Real.goldenRatio)

end

end A105371.P6604729737298095723

namespace A105371

/-- `round(A100334(n+1)/ϕ)` -/
def P6604729737298095723.Spec : Prop :=
  ∀ n, P6604729737298095723.a n = A105371 n

end A105371

/-! ## A105371.P17917559989082647945

`A100334(n)+Δ[A103311(n)]`
-/

namespace A105371.P17917559989082647945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n + (f1 (n + 1) - f1 n)

end

end A105371.P17917559989082647945

namespace A105371

/-- `A100334(n)+Δ[A103311(n)]` -/
def P17917559989082647945.Spec : Prop :=
  ∀ n, P17917559989082647945.a n = A105371 n

end A105371

/-! ## A105371.P14636289742417263888

`Δ[A138112(n)+A100334(n)]`
-/

namespace A105371.P14636289742417263888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 n + A100334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105371.P14636289742417263888

namespace A105371

/-- `Δ[A138112(n)+A100334(n)]` -/
def P14636289742417263888.Spec : Prop :=
  ∀ n, P14636289742417263888.a n = A105371 n

end A105371

/-! ## A105371.P12089595494901091050

`A100334(n+1)-A103311(n)`
-/

namespace A105371.P12089595494901091050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (n + 1) - A103311 n

end

end A105371.P12089595494901091050

namespace A105371

/-- `A100334(n+1)-A103311(n)` -/
def P12089595494901091050.Spec : Prop :=
  ∀ n, P12089595494901091050.a n = A105371 n

end A105371

/-! ## A105371.P16096346183909137212

`∑[A103311(n+1)]-A103311(n)`
-/

namespace A105371.P16096346183909137212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A103311 n

end

end A105371.P16096346183909137212

namespace A105371

/-- `∑[A103311(n+1)]-A103311(n)` -/
def P16096346183909137212.Spec : Prop :=
  ∀ n, P16096346183909137212.a n = A105371 n

end A105371

/-! ## A105371.P16149343249993373739

`A138003(n+1)-A100334(n+1)`
-/

namespace A105371.P16149343249993373739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 (n + 1) - A100334 (n + 1)

end

end A105371.P16149343249993373739

namespace A105371

/-- `A138003(n+1)-A100334(n+1)` -/
def P16149343249993373739.Spec : Prop :=
  ∀ n, P16149343249993373739.a n = A105371 n

end A105371

/-! ## A105371.P7860600471256098937

`A138112(n+2)+A103311(n+2)`
-/

namespace A105371.P7860600471256098937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 (n + 2) + A103311 (n + 2)

end

end A105371.P7860600471256098937

namespace A105371

/-- `A138112(n+2)+A103311(n+2)` -/
def P7860600471256098937.Spec : Prop :=
  ∀ n, P7860600471256098937.a n = A105371 n

end A105371

/-! ## A105371.P17915405689196590472

`A138003(n)-(A138112(n)+A100334(n))`
-/

namespace A105371.P17915405689196590472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 n - (A138112 n + A100334 n)

end

end A105371.P17915405689196590472

namespace A105371

/-- `A138003(n)-(A138112(n)+A100334(n))` -/
def P17915405689196590472.Spec : Prop :=
  ∀ n, P17915405689196590472.a n = A105371 n

end A105371

/-! ## A105371.P10268417791293098701

`A138003(n+1)+A138112(n+1)-A138003(n)`
-/

namespace A105371.P10268417791293098701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 (n + 1) + (A138112 (n + 1) - A138003 n)

end

end A105371.P10268417791293098701

namespace A105371

/-- `A138003(n+1)+A138112(n+1)-A138003(n)` -/
def P10268417791293098701.Spec : Prop :=
  ∀ n, P10268417791293098701.a n = A105371 n

end A105371

/-! ## A105371.P2577461139818924608

`A171408(n+1)/4`
-/

namespace A105371.P2577461139818924608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171408 (n + 1) : ℚ) / 4

end

end A105371.P2577461139818924608

namespace A105371

/-- `A171408(n+1)/4` -/
def P2577461139818924608.Spec : Prop :=
  ∀ n, P2577461139818924608.a n = (A105371 n : ℚ)

end A105371

/-! ## A105371.P10357547859078031508

`A139398(n)-A139748(n)`
-/

namespace A105371.P10357547859078031508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n - A139748 n

end

end A105371.P10357547859078031508

namespace A105371

/-- `A139398(n)-A139748(n)` -/
def P10357547859078031508.Spec : Prop :=
  ∀ n, P10357547859078031508.a n = A105371 n

end A105371

/-! ## A105371.P1229974827781329904

`∑[A139761(n)-A139748(n)]+1`
-/

namespace A105371.P1229974827781329904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n - A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A105371.P1229974827781329904

namespace A105371

/-- `∑[A139761(n)-A139748(n)]+1` -/
def P1229974827781329904.Spec : Prop :=
  ∀ n, P1229974827781329904.a n = A105371 n

end A105371

/-! ## A105371.P13724832883775233124

`A138003(n)+A139761(n)-A133476(n)`
-/

namespace A105371.P13724832883775233124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 n + (A139761 n - A133476 n)

end

end A105371.P13724832883775233124

namespace A105371

/-- `A138003(n)+A139761(n)-A133476(n)` -/
def P13724832883775233124.Spec : Prop :=
  ∀ n, P13724832883775233124.a n = A105371 n

end A105371

/-! ## A105371.P13692996349643439069

`Δ[A103311(n)]+A133476(n)-A139748(n)`
-/

namespace A105371.P13692996349643439069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A133476 n - A139748 n)

end

end A105371.P13692996349643439069

namespace A105371

/-- `Δ[A103311(n)]+A133476(n)-A139748(n)` -/
def P13692996349643439069.Spec : Prop :=
  ∀ n, P13692996349643439069.a n = A105371 n

end A105371

/-! ## A105371.P6211158630302400480

`Δ[A133476(n)]-A139748(n)`
-/

namespace A105371.P6211158630302400480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139748 n

end

end A105371.P6211158630302400480

namespace A105371

/-- `Δ[A133476(n)]-A139748(n)` -/
def P6211158630302400480.Spec : Prop :=
  ∀ n, P6211158630302400480.a n = A105371 n

end A105371

/-! ## A105371.P18301163230329124063

`Δ[A133476(n)-A139761(n)]`
-/

namespace A105371.P18301163230329124063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - A139761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105371.P18301163230329124063

namespace A105371

/-- `Δ[A133476(n)-A139761(n)]` -/
def P18301163230329124063.Spec : Prop :=
  ∀ n, P18301163230329124063.a n = A105371 n

end A105371

/-!
# A105373: Square array by antidiagonals of number of straight lines with n points in a k-dimensional hypercube with n points on each edge.

The programs for A105373, there is no canonical definition to state claims against.
-/

/-! ## A105373.P14555521100044471114

`A296548(n)%A217423(n+1)`
-/

namespace A105373.P14555521100044471114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296548 n) (A217423 (n + 1))

end

end A105373.P14555521100044471114

/-! ## A105373.P1075986637311719175

`A007318(A313909(n)^A247505(n))`
-/

namespace A105373.P1075986637311719175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A313909 n : ℚ) ^ (A247505 n : ℤ))).toNat

end

end A105373.P1075986637311719175

/-! ## A105373.P13180452085695698498

`A296548(n)%A035112(A000930(n))`
-/

namespace A105373.P13180452085695698498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296548 n) (A035112 (A000930 n).toNat)

end

end A105373.P13180452085695698498

/-! ## A105373.P9036717346622884131

`A329431(A056939(n)-A297299(n+1))`
-/

namespace A105373.P9036717346622884131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329431 (A056939 n - A297299 (n + 1)).toNat

end

end A105373.P9036717346622884131

/-! ## A105373.P13259799717564351755

`A007318(A292565(n+1)^A238010(n))`
-/

namespace A105373.P13259799717564351755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A292565 (n + 1) : ℚ) ^ (A238010 n : ℤ))).toNat

end

end A105373.P13259799717564351755

/-!
# A105374: a(n) = 4*n^3 + 4*n.

The programs for A105374, the canonical program `A105374.P15227727533401661173` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105374 has offset 0).

The definition of A105374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3+4*n` (program `A105374.P15227727533401661173`, by `A105374.P15227727533401661173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105374.P15227727533401661173

`4*n^3+4*n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105374

/-- `4*n^3+4*n` -/
def P15227727533401661173.Spec : Prop :=
  ∀ n, (P15227727533401661173.a n : ℤ) = A105374 n

theorem P15227727533401661173.correct : P15227727533401661173.Spec := by
  intro n
  simp only [A105374]

end A105374

/-! ## A105374.P10458347446341072944

`ogf((8x+8x^2+8x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A105374.P10458347446341072944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 8, 8] [1, -4, 6, -4, 1] n

end

end A105374.P10458347446341072944

namespace A105374

/-- `ogf((8x+8x^2+8x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10458347446341072944.Spec : Prop :=
  ∀ n, P10458347446341072944.a n = A105374 n

end A105374

/-! ## A105374.P7578199272431969379

`4*A034262(n)`
-/

namespace A105374.P7578199272431969379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A034262 n

end

end A105374.P7578199272431969379

namespace A105374

/-- `4*A034262(n)` -/
def P7578199272431969379.Spec : Prop :=
  ∀ n, P7578199272431969379.a n = A105374 n

theorem P7578199272431969379.correct : P7578199272431969379.Spec := by
  intro n
  simp only [A105374, Nat.add_sub_cancel, A105374.P7578199272431969379.a, A105374.P15227727533401661173.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105374

/-! ## A105374.P16368164146699067238

`8*A006003(n)`
-/

namespace A105374.P16368164146699067238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006003 n

end

end A105374.P16368164146699067238

namespace A105374

/-- `8*A006003(n)` -/
def P16368164146699067238.Spec : Prop :=
  ∀ n, P16368164146699067238.a n = A105374 n

end A105374

/-! ## A105374.P12531801301221551120

`A002522(n)*A008586(n)`
-/

namespace A105374.P12531801301221551120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A008586 n

end

end A105374.P12531801301221551120

namespace A105374

/-- `A002522(n)*A008586(n)` -/
def P12531801301221551120.Spec : Prop :=
  ∀ n, P12531801301221551120.a n = A105374 n

theorem P12531801301221551120.correct : P12531801301221551120.Spec := by
  intro n
  simp only [A105374, Nat.add_sub_cancel, A105374.P12531801301221551120.a, A105374.P15227727533401661173.a, A002522, A002522.P3778392011853271743.a, A008586, A008586.P15642444062404201100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105374

/-! ## A105374.P5320257737429126118

`Δ[or(1, n²-n)²]`
-/

namespace A105374.P5320257737429126118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105374.P5320257737429126118

namespace A105374

/-- `Δ[or(1, n²-n)²]` -/
def P5320257737429126118.Spec : Prop :=
  ∀ n, P5320257737429126118.a n = A105374 n

end A105374

/-! ## A105374.P4438493316536689506

`Δ[xor(1, n²-n)²]`
-/

namespace A105374.P4438493316536689506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105374.P4438493316536689506

namespace A105374

/-- `Δ[xor(1, n²-n)²]` -/
def P4438493316536689506.Spec : Prop :=
  ∀ n, P4438493316536689506.a n = A105374 n

end A105374

/-! ## A105374.P12423591022519220218

`n*(2/cos(atan(n)))²`
-/

namespace A105374.P12423591022519220218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (2 / Real.cos (Real.arctan (n : ℝ))) ^ 2

end

end A105374.P12423591022519220218

namespace A105374

/-- `n*(2/cos(atan(n)))²` -/
def P12423591022519220218.Spec : Prop :=
  ∀ n, P12423591022519220218.a n = (A105374 n : ℝ)

end A105374

/-! ## A105374.P1163560398565064955

`n/(cos(atan(n))/2)²`
-/

namespace A105374.P1163560398565064955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.cos (Real.arctan (n : ℝ)) / 2) ^ 2

end

end A105374.P1163560398565064955

namespace A105374

/-- `n/(cos(atan(n))/2)²` -/
def P1163560398565064955.Spec : Prop :=
  ∀ n, P1163560398565064955.a n = (A105374 n : ℝ)

end A105374

/-! ## A105374.P14717351711894273195

`n*(2/sin(acot(n)))²`
-/

namespace A105374.P14717351711894273195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (2 / Real.sin (SequenceMachineLib.acot (n : ℝ))) ^ 2

end

end A105374.P14717351711894273195

namespace A105374

/-- `n*(2/sin(acot(n)))²` -/
def P14717351711894273195.Spec : Prop :=
  ∀ n, P14717351711894273195.a n = (A105374 n : ℝ)

end A105374

/-! ## A105374.P2215642296793442474

`n/(sin(acot(n))/2)²`
-/

namespace A105374.P2215642296793442474
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.sin (SequenceMachineLib.acot (n : ℝ)) / 2) ^ 2

end

end A105374.P2215642296793442474

namespace A105374

/-- `n/(sin(acot(n))/2)²` -/
def P2215642296793442474.Spec : Prop :=
  ∀ n, P2215642296793442474.a n = (A105374 n : ℝ)

end A105374

/-! ## A105374.P15633727031449661055

`Δ[(2*C(n, 2)+1)²]`
-/

namespace A105374.P15633727031449661055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n 2 + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105374.P15633727031449661055

namespace A105374

/-- `Δ[(2*C(n, 2)+1)²]` -/
def P15633727031449661055.Spec : Prop :=
  ∀ n, P15633727031449661055.a n = A105374 n

theorem P15633727031449661055.correct : P15633727031449661055.Spec := by
  intro n
  simp only [A105374, Nat.add_sub_cancel, A105374.P15633727031449661055.f1, A105374.P15633727031449661055.a, A105374.P15227727533401661173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105374

/-! ## A105374.P1501039580539912421

`Δ[(lcm(n, 1-n)+1)²]`
-/

namespace A105374.P1501039580539912421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (1 - (n : ℤ)) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A105374.P1501039580539912421

namespace A105374

/-- `Δ[(lcm(n, 1-n)+1)²]` -/
def P1501039580539912421.Spec : Prop :=
  ∀ n, P1501039580539912421.a n = A105374 n

end A105374

/-! ## A105374.P18408658861049623467

`lcm(2, n*4*(n²+1))`
-/

namespace A105374.P18408658861049623467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (4 * (n ^ 2 + 1)))

end

end A105374.P18408658861049623467

namespace A105374

/-- `lcm(2, n*4*(n²+1))` -/
def P18408658861049623467.Spec : Prop :=
  ∀ n, (P18408658861049623467.a n : ℤ) = A105374 n

end A105374

/-! ## A105374.P9780235990263153344

`n*(or(1, (2*n)²)+3)`
-/

namespace A105374.P9780235990263153344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.lor 1 ((2 * n) ^ 2) + 3)

end

end A105374.P9780235990263153344

namespace A105374

/-- `n*(or(1, (2*n)²)+3)` -/
def P9780235990263153344.Spec : Prop :=
  ∀ n, (P9780235990263153344.a n : ℤ) = A105374 n

end A105374

/-! ## A105374.P11892220403416017410

`n*(xor(1, (2*n)²)+3)`
-/

namespace A105374.P11892220403416017410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.xor 1 ((2 * n) ^ 2) + 3)

end

end A105374.P11892220403416017410

namespace A105374

/-- `n*(xor(1, (2*n)²)+3)` -/
def P11892220403416017410.Spec : Prop :=
  ∀ n, (P11892220403416017410.a n : ℤ) = A105374 n

end A105374

/-! ## A105374.P6541128905932757024

`abs(n*xor(-4, (2*n)²))`
-/

namespace A105374.P6541128905932757024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor (-4) ((2 * n) ^ 2 : ℤ)|

end

end A105374.P6541128905932757024

namespace A105374

/-- `abs(n*xor(-4, (2*n)²))` -/
def P6541128905932757024.Spec : Prop :=
  ∀ n, P6541128905932757024.a n = A105374 n

end A105374

/-! ## A105374.P10100356955426820955

`-(n*xor(-4, (2*n)²))`
-/

namespace A105374.P10100356955426820955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor (-4) ((2 * n) ^ 2 : ℤ))

end

end A105374.P10100356955426820955

namespace A105374

/-- `-(n*xor(-4, (2*n)²))` -/
def P10100356955426820955.Spec : Prop :=
  ∀ n, P10100356955426820955.a n = A105374 n

end A105374

/-! ## A105374.P1763481495517040520

`n*∑[a(n-1)+8]` with `a(0)=4, a(1)=4`
-/

namespace A105374.P1763481495517040520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105374.P1763481495517040520

namespace A105374

/-- `n*∑[a(n-1)+8]` -/
def P1763481495517040520.Spec : Prop :=
  ∀ n, (P1763481495517040520.a n : ℤ) = A105374 n

end A105374

/-! ## A105374.P15750116330585298428

`∑[∑[ogf((8x+8x^2+8x^3)/(1-2x+x^2))]]`
-/

namespace A105374.P15750116330585298428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 8, 8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105374.P15750116330585298428

namespace A105374

/-- `∑[∑[ogf((8x+8x^2+8x^3)/(1-2x+x^2))]]` -/
def P15750116330585298428.Spec : Prop :=
  ∀ n, P15750116330585298428.a n = A105374 n

end A105374

/-!
# A105384: Expansion of x/(1 + x + x^2 + x^3 + x^4).

The programs for A105384, the canonical program `A105384.P15758363086363046606` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105384 has offset 0).

The definition of A105384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1+x+x^2+x^3+x^4))` (program `A105384.P15758363086363046606`, by `A105384.P15758363086363046606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105384.P15758363086363046606

`ogf(x/(1+x+x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105384

/-- `ogf(x/(1+x+x^2+x^3+x^4))` -/
def P15758363086363046606.Spec : Prop :=
  ∀ n, P15758363086363046606.a n = A105384 n

theorem P15758363086363046606.correct : P15758363086363046606.Spec := by
  intro n
  simp only [A105384]

end A105384

/-!
# A105385: Expansion of (1-x^2)/(1-x^5).

The programs for A105385, the canonical program `A105385.P3626278482792639120` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105385 has offset 0).

The definition of A105385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x^5))` (program `A105385.P3626278482792639120`, by `A105385.P3626278482792639120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105385.P10661769629387807853

`ogf((1+x)/(1+x+x^2+x^3+x^4))`
-/

namespace A105385.P10661769629387807853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 1, 1, 1, 1] n

end

end A105385.P10661769629387807853

namespace A105385

/-- `ogf((1+x)/(1+x+x^2+x^3+x^4))` -/
def P10661769629387807853.Spec : Prop :=
  ∀ n, P10661769629387807853.a n = A105385 n

end A105385

/-! ## A105385.P3626278482792639120

`ogf((1-x^2)/(1-x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105385

/-- `ogf((1-x^2)/(1-x^5))` -/
def P3626278482792639120.Spec : Prop :=
  ∀ n, P3626278482792639120.a n = A105385 n

theorem P3626278482792639120.correct : P3626278482792639120.Spec := by
  intro n
  simp only [A105385]

end A105385

/-!
# A105389: Primes of the form x^2 + 32 y^2, also primes p with h(-p) divisible by 8.

The programs for A105389, there is no canonical definition to state claims against.
-/

/-! ## A105389.P16791302164125132757

`p?[(A286813(n)+1)*A004768(n)]`
-/

namespace A105389.P16791302164125132757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286813 n + 1) * A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105389.P16791302164125132757

/-! ## A105389.P6097195427336299081

`p?[n*and(3, A045851(n))]`
-/

namespace A105389.P6097195427336299081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 3 (A045851 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105389.P6097195427336299081

/-! ## A105389.P13203994070818287341

`p?[A249811(A004768(n)+A286813(n)%2)]`
-/

namespace A105389.P13203994070818287341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (A004768 n + Int.tmod (A286813 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105389.P13203994070818287341

/-! ## A105389.P10435493608778928029

`∪[A325067(n+1), A325069(n+1)]`
-/

namespace A105389.P10435493608778928029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105389.P10435493608778928029

/-!
# A105390: Number of Hannah Rollman's numbers <= n.

The programs for A105390, there is no canonical definition to state claims against.
-/

/-! ## A105390.P17225086333639498812

`∑[char[A048992(n+1)-1]]`
-/

namespace A105390.P17225086333639498812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048992 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105390.P17225086333639498812

/-! ## A105390.P5100002277314652993

`∑[char[comp[A048991(n+1)-1]]]`
-/

namespace A105390.P5100002277314652993
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048991 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105390.P5100002277314652993

/-! ## A105390.P17254593170178718017

`∑[char[A023443(A048992(n+1))]]`
-/

namespace A105390.P17254593170178718017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A048992 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105390.P17254593170178718017

/-! ## A105390.P13964730793155224019

`char[A048992(A028310(n))-1]+a(n-1)` with `a(0)=0`
-/

namespace A105390.P13964730793155224019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048992 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A105390.P13964730793155224019

/-! ## A105390.P3497771043090899433

`A131981(n+1)-∑[A179801(A322094(n+1))]`
-/

namespace A105390.P3497771043090899433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A322094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131981 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105390.P3497771043090899433

/-! ## A105390.P18143869566500064100

`∑[A179801(n+1)-A179801(A322094(n+1))]`
-/

namespace A105390.P18143869566500064100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1) - A179801 (A322094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105390.P18143869566500064100

/-! ## A105390.P5975275296932430517

`∑[A060576(A000196((n+2)²)-A322094(n+1))]`
-/

namespace A105390.P5975275296932430517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A000196 ((n + 2) ^ 2) - A322094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105390.P5975275296932430517

/-! ## A105390.P8095093493480236907

`∑[A089967(A322094(n+1))%A089967(n+1)]`
-/

namespace A105390.P8095093493480236907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089967 (A322094 (n + 1)).toNat) (A089967 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105390.P8095093493480236907

/-!
# A105392: Frobenius number of the subsemigroup of the natural numbers generated by successive pairs of Lucas numbers.

The programs for A105392, the canonical program `A105392.P15515099334863126414` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105392 has offset 1).

The definition of A105392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105392.P15515099334863126414

`ogf((5x+2x^2+3x^3-x^5)/(1-3x-x^2+5x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105392

/-- `ogf((5x+2x^2+3x^3-x^5)/(1-3x-x^2+5x^3+x^4-x^5))` -/
def P15515099334863126414.Spec : Prop :=
  ∀ n, P15515099334863126414.a n = A105392 (n + 1)

theorem P15515099334863126414.correct : P15515099334863126414.Spec := by
  intro n
  simp only [A105392, Nat.add_sub_cancel]

end A105392

/-! ## A105392.P5573371112045407339

`record[A215602(n)-A288219(n)]`
-/

namespace A105392.P5573371112045407339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n - A288219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105392.P5573371112045407339

namespace A105392

/-- `record[A215602(n)-A288219(n)]` -/
def P5573371112045407339.Spec : Prop :=
  ∀ n, P5573371112045407339.a n = A105392 (n + 1)

end A105392

/-! ## A105392.P8443762383449888281

`record[A215602(n)-A163695(n+1)]`
-/

namespace A105392.P8443762383449888281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n - A163695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105392.P8443762383449888281

namespace A105392

/-- `record[A215602(n)-A163695(n+1)]` -/
def P8443762383449888281.Spec : Prop :=
  ∀ n, P8443762383449888281.a n = A105392 (n + 1)

end A105392

/-! ## A105392.P829264437228038117

`record[A000032(n)]*A014739(n)-A000032(n)`
-/

namespace A105392.P829264437228038117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A014739 n - A000032 n

end

end A105392.P829264437228038117

namespace A105392

/-- `record[A000032(n)]*A014739(n)-A000032(n)` -/
def P829264437228038117.Spec : Prop :=
  ∀ n, P829264437228038117.a n = A105392 (n + 1)

end A105392

/-! ## A105392.P9782534053234051777

`∑[A000032(n)]*A000204(n+1)-A288219(n)`
-/

namespace A105392.P9782534053234051777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000204 (n + 1) - A288219 n

end

end A105392.P9782534053234051777

namespace A105392

/-- `∑[A000032(n)]*A000204(n+1)-A288219(n)` -/
def P9782534053234051777.Spec : Prop :=
  ∀ n, P9782534053234051777.a n = A105392 (n + 1)

end A105392

/-! ## A105392.P7432635208276510912

`A000032(n+1)*A001610(n+1)-A288219(n)`
-/

namespace A105392.P7432635208276510912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A001610 (n + 1) - A288219 n

end

end A105392.P7432635208276510912

namespace A105392

/-- `A000032(n+1)*A001610(n+1)-A288219(n)` -/
def P7432635208276510912.Spec : Prop :=
  ∀ n, P7432635208276510912.a n = A105392 (n + 1)

end A105392

/-! ## A105392.P13440892866852509852

`A080023(n+1)*A288219(n)-A288219(n+1)`
-/

namespace A105392.P13440892866852509852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (n + 1) * A288219 n - A288219 (n + 1)

end

end A105392.P13440892866852509852

namespace A105392

/-- `A080023(n+1)*A288219(n)-A288219(n+1)` -/
def P13440892866852509852.Spec : Prop :=
  ∀ n, P13440892866852509852.a n = A105392 (n + 1)

end A105392

/-! ## A105392.P8400120118075166344

`A169985(n+1)*A288219(n)-A288219(n+1)`
-/

namespace A105392.P8400120118075166344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 1) * A288219 n - A288219 (n + 1)

end

end A105392.P8400120118075166344

namespace A105392

/-- `A169985(n+1)*A288219(n)-A288219(n+1)` -/
def P8400120118075166344.Spec : Prop :=
  ∀ n, P8400120118075166344.a n = A105392 (n + 1)

end A105392

/-!
# A105395: A simple "Fractal Jump Sequence" (FJS).

The programs for A105395, the canonical program `A105395.P3454780605812742109` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105395 has offset 1).

The definition of A105395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105395.P3454780605812742109

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105395

/-- `a(n-3)` -/
def P3454780605812742109.Spec : Prop :=
  ∀ n, (P3454780605812742109.a n : ℤ) = A105395 (n + 1)

theorem P3454780605812742109.correct : P3454780605812742109.Spec := by
  intro n
  simp only [A105395, Nat.add_sub_cancel]

end A105395

/-!
# A105396: A simple "Fractal Jump Sequence" (FJS).

The programs for A105396, the canonical program `A105396.P8253217185561578042` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105396 has offset 3).

The definition of A105396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105396.P8253217185561578042

`ogf((3+6x+6x^2)/(1-x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105396

/-- `ogf((3+6x+6x^2)/(1-x^3))` -/
def P8253217185561578042.Spec : Prop :=
  ∀ n, P8253217185561578042.a n = A105396 (n + 3)

theorem P8253217185561578042.correct : P8253217185561578042.Spec := by
  intro n
  simp only [A105396, Nat.add_sub_cancel]

end A105396

/-!
# A105397: Periodic with period 2: repeat [4,2].

The programs for A105397, the canonical program `A105397.P12786109591907576801` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105397 has offset 0).

The definition of A105397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105397.P12786109591907576801

`3+(-1)^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105397

/-- `3+(-1)^n` -/
def P12786109591907576801.Spec : Prop :=
  ∀ n, P12786109591907576801.a n = A105397 n

theorem P12786109591907576801.correct : P12786109591907576801.Spec := by
  intro n
  simp only [A105397]

end A105397

/-!
# A105399: Largest prime <= numbers of the form 6k+3 (duplicates removed).

The programs for A105399, the canonical program `A105399.P18363914772709504287` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105399 has offset 1).

The definition of A105399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105399.P18363914772709504287

`record[p?[n-a(n-3)]]` with `a(0)=9, a(1)=1, a(2)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105399

/-- `record[p?[n-a(n-3)]]` -/
def P18363914772709504287.Spec : Prop :=
  ∀ n, P18363914772709504287.a n = A105399 (n + 1)

theorem P18363914772709504287.correct : P18363914772709504287.Spec := by
  intro n
  simp only [A105399, Nat.add_sub_cancel]

end A105399

/-! ## A105399.P12157001254235280066

`record[p?[n-3*gcd(3, n+1)]]`
-/

namespace A105399.P12157001254235280066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (3 * Nat.gcd 3 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P12157001254235280066

namespace A105399

/-- `record[p?[n-3*gcd(3, n+1)]]` -/
def P12157001254235280066.Spec : Prop :=
  ∀ n, P12157001254235280066.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P5698584420447141689

`record[A133387(n+1)]`
-/

namespace A105399.P5698584420447141689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P5698584420447141689

namespace A105399

/-- `record[A133387(n+1)]` -/
def P5698584420447141689.Spec : Prop :=
  ∀ n, P5698584420447141689.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P14822478969589657236

`or(1, A067774(n+1))`
-/

namespace A105399.P14822478969589657236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A067774 (n + 1))

end

end A105399.P14822478969589657236

namespace A105399

/-- `or(1, A067774(n+1))` -/
def P14822478969589657236.Spec : Prop :=
  ∀ n, P14822478969589657236.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P9028102322004524674

`record[p?[A074066(n+1)]]`
-/

namespace A105399.P9028102322004524674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P9028102322004524674

namespace A105399

/-- `record[p?[A074066(n+1)]]` -/
def P9028102322004524674.Spec : Prop :=
  ∀ n, P9028102322004524674.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P2890441060275678508

`record[p?[A116551(n+1)]]`
-/

namespace A105399.P2890441060275678508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P2890441060275678508

namespace A105399

/-- `record[p?[A116551(n+1)]]` -/
def P2890441060275678508.Spec : Prop :=
  ∀ n, P2890441060275678508.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P15109049717719344624

`record[p?[A367618(n+1)]]`
-/

namespace A105399.P15109049717719344624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367618 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P15109049717719344624

namespace A105399

/-- `record[p?[A367618(n+1)]]` -/
def P15109049717719344624.Spec : Prop :=
  ∀ n, P15109049717719344624.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P4710350508548960619

`record[p?[A004485(n+2)]]`
-/

namespace A105399.P4710350508548960619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004485 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P4710350508548960619

namespace A105399

/-- `record[p?[A004485(n+2)]]` -/
def P4710350508548960619.Spec : Prop :=
  ∀ n, P4710350508548960619.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P13506955109010681605

`record[p?[A072026(n+3)]]`
-/

namespace A105399.P13506955109010681605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072026 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P13506955109010681605

namespace A105399

/-- `record[p?[A072026(n+3)]]` -/
def P13506955109010681605.Spec : Prop :=
  ∀ n, P13506955109010681605.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P4618353067441975124

`or(1, A141515(n+1)+1)`
-/

namespace A105399.P4618353067441975124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A141515 (n + 1) + 1)

end

end A105399.P4618353067441975124

namespace A105399

/-- `or(1, A141515(n+1)+1)` -/
def P4618353067441975124.Spec : Prop :=
  ∀ n, P4618353067441975124.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P18377297996348520427

`record[p?[A115731(n+1)+2]]`
-/

namespace A105399.P18377297996348520427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115731 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P18377297996348520427

namespace A105399

/-- `record[p?[A115731(n+1)+2]]` -/
def P18377297996348520427.Spec : Prop :=
  ∀ n, P18377297996348520427.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P16128551347327393660

`or(1, p?[A018252(n+1)-2])`
-/

namespace A105399.P16128551347327393660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A105399.P16128551347327393660

namespace A105399

/-- `or(1, p?[A018252(n+1)-2])` -/
def P16128551347327393660.Spec : Prop :=
  ∀ n, P16128551347327393660.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P6347857534907032608

`A064614(A067774(n+1))`
-/

namespace A105399.P6347857534907032608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A067774 (n + 1)).toNat

end

end A105399.P6347857534907032608

namespace A105399

/-- `A064614(A067774(n+1))` -/
def P6347857534907032608.Spec : Prop :=
  ∀ n, P6347857534907032608.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P17072673232793625412

`A035031(A107986(n+1))`
-/

namespace A105399.P17072673232793625412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A107986 (n + 1)).toNat

end

end A105399.P17072673232793625412

namespace A105399

/-- `A035031(A107986(n+1))` -/
def P17072673232793625412.Spec : Prop :=
  ∀ n, P17072673232793625412.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P2063502856011654432

`A076566(A141515(n+1))`
-/

namespace A105399.P2063502856011654432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A141515 (n + 1)).toNat

end

end A105399.P2063502856011654432

namespace A105399

/-- `A076566(A141515(n+1))` -/
def P2063502856011654432.Spec : Prop :=
  ∀ n, P2063502856011654432.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P141311695786576874

`A051697(A238327(n+1))`
-/

namespace A105399.P141311695786576874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A238327 (n + 1)).toNat

end

end A105399.P141311695786576874

namespace A105399

/-- `A051697(A238327(n+1))` -/
def P141311695786576874.Spec : Prop :=
  ∀ n, P141311695786576874.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P15613901082817259399

`A033302(A238327(n+2))`
-/

namespace A105399.P15613901082817259399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A238327 (n + 2)).toNat

end

end A105399.P15613901082817259399

namespace A105399

/-- `A033302(A238327(n+2))` -/
def P15613901082817259399.Spec : Prop :=
  ∀ n, P15613901082817259399.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P10661337149649586255

`A335285(A141515(n+2))`
-/

namespace A105399.P10661337149649586255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A141515 (n + 2)).toNat

end

end A105399.P10661337149649586255

namespace A105399

/-- `A335285(A141515(n+2))` -/
def P10661337149649586255.Spec : Prop :=
  ∀ n, P10661337149649586255.a n = A105399 (n + 1)

end A105399

/-! ## A105399.P1645770611497753101

`record[A020482(A016789(n)+1)]`
-/

namespace A105399.P1645770611497753101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A016789 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105399.P1645770611497753101

namespace A105399

/-- `record[A020482(A016789(n)+1)]` -/
def P1645770611497753101.Spec : Prop :=
  ∀ n, P1645770611497753101.a n = A105399 (n + 1)

end A105399

