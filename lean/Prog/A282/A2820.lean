import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A282001: a(n) is the smallest prime p such that there is a multiplicative subgroup H of Z/pZ, of odd size and of index 2n, such that for any two cosets H1 and H2 of H, H1 + H2 contains all of (Z/pZ)\0.

The programs for A282001, there is no canonical definition to state claims against.
-/

/-! ## A282001.P6871748330787086150

`A176983(A214727(n+2)+A000010(n+1))`
-/

namespace A282001.P6871748330787086150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176983 (A214727 (n + 2) + A000010 (n + 1)).toNat

end

end A282001.P6871748330787086150

/-!
# A282002: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

The programs for A282002, the canonical program `A282002.P14148458962214913846` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282002 has offset 0).

The definition of A282002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282002.P14148458962214913846

`A094026(A267352(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A282002

/-- `A094026(A267352(n))` -/
def P14148458962214913846.Spec : Prop :=
  ∀ n, P14148458962214913846.a n = A282002 n

theorem P14148458962214913846.correct : P14148458962214913846.Spec := by
  intro n
  simp only [A282002]

end A282002

/-! ## A282002.P13532720229614125669

`gcd(A287190(n), A288768(n))`
-/

namespace A282002.P13532720229614125669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287190 n) (A288768 n)

end

end A282002.P13532720229614125669

namespace A282002

/-- `gcd(A287190(n), A288768(n))` -/
def P13532720229614125669.Spec : Prop :=
  ∀ n, (P13532720229614125669.a n : ℤ) = A282002 n

end A282002

/-! ## A282002.P13494328444602272582

`A288768(n)%A280411(A133265(n))`
-/

namespace A282002.P13494328444602272582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288768 n) (A280411 (A133265 n).toNat)

end

end A282002.P13494328444602272582

namespace A282002

/-- `A288768(n)%A280411(A133265(n))` -/
def P13494328444602272582.Spec : Prop :=
  ∀ n, P13494328444602272582.a n = A282002 n

end A282002

/-! ## A282002.P772623921394806485

`or(A010131(A008458(n)), A280410(n))`
-/

namespace A282002.P772623921394806485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010131 (A008458 n).toNat) (A280410 n)

end

end A282002.P772623921394806485

namespace A282002

/-- `or(A010131(A008458(n)), A280410(n))` -/
def P772623921394806485.Spec : Prop :=
  ∀ n, P772623921394806485.a n = A282002 n

end A282002

/-! ## A282002.P4315189919052072155

`A287190(abs(A193356(n+1)-A009001(n)))`
-/

namespace A282002.P4315189919052072155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 |A193356 (n + 1) - A009001 n|.toNat

end

end A282002.P4315189919052072155

namespace A282002

/-- `A287190(abs(A193356(n+1)-A009001(n)))` -/
def P4315189919052072155.Spec : Prop :=
  ∀ n, P4315189919052072155.a n = A282002 n

end A282002

/-! ## A282002.P3393396482183136945

`A277797(n)+10%A101233(n+1)`
-/

namespace A282002.P3393396482183136945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277797 n + Int.tmod 10 (A101233 (n + 1))

end

end A282002.P3393396482183136945

namespace A282002

/-- `A277797(n)+10%A101233(n+1)` -/
def P3393396482183136945.Spec : Prop :=
  ∀ n, P3393396482183136945.a n = A282002 n

end A282002

/-! ## A282002.P13344936225528845677

`A287190(n*gcd(2, n))`
-/

namespace A282002.P13344936225528845677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (n * Nat.gcd 2 n)

end

end A282002.P13344936225528845677

namespace A282002

/-- `A287190(n*gcd(2, n))` -/
def P13344936225528845677.Spec : Prop :=
  ∀ n, P13344936225528845677.a n = A282002 n

end A282002

/-! ## A282002.P1849417694106440031

`A287190(n*A000034(n+1))`
-/

namespace A282002.P1849417694106440031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 ((n : ℤ) * A000034 (n + 1)).toNat

end

end A282002.P1849417694106440031

namespace A282002

/-- `A287190(n*A000034(n+1))` -/
def P1849417694106440031.Spec : Prop :=
  ∀ n, P1849417694106440031.a n = A282002 n

end A282002

/-! ## A282002.P9859486297919915920

`A287190(n*(2-A000035(n)))`
-/

namespace A282002.P9859486297919915920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 ((n : ℤ) * (2 - A000035 n)).toNat

end

end A282002.P9859486297919915920

namespace A282002

/-- `A287190(n*(2-A000035(n)))` -/
def P9859486297919915920.Spec : Prop :=
  ∀ n, P9859486297919915920.a n = A282002 n

end A282002

/-! ## A282002.P2781464423279603253

`A287190(2*n/A000034(n))`
-/

namespace A282002.P2781464423279603253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287190 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A000034 n : ℚ)))).toNat

end

end A282002.P2781464423279603253

namespace A282002

/-- `A287190(2*n/A000034(n))` -/
def P2781464423279603253.Spec : Prop :=
  ∀ n, P2781464423279603253.a n = A282002 n

end A282002

/-!
# A282003: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

The programs for A282003, the canonical program `A282003.P4951618772127714983` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282003 has offset 0).

The definition of A282003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282003.P4951618772127714983

`A277798(n)+A178501(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A282003

/-- `A277798(n)+A178501(n)` -/
def P4951618772127714983.Spec : Prop :=
  ∀ n, P4951618772127714983.a n = A282003 n

theorem P4951618772127714983.correct : P4951618772127714983.Spec := by
  intro n
  simp only [A282003]

end A282003

/-! ## A282003.P3715161910689666418

`A280368(xor(1, n+1))`
-/

namespace A282003.P3715161910689666418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280368 (Nat.xor 1 (n + 1))

end

end A282003.P3715161910689666418

namespace A282003

/-- `A280368(xor(1, n+1))` -/
def P3715161910689666418.Spec : Prop :=
  ∀ n, P3715161910689666418.a n = A282003 n

end A282003

/-! ## A282003.P398119975590816721

`A280368(1-A033999(n)+n)`
-/

namespace A282003.P398119975590816721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280368 (1 - A033999 n + (n : ℤ)).toNat

end

end A282003.P398119975590816721

namespace A282003

/-- `A280368(1-A033999(n)+n)` -/
def P398119975590816721.Spec : Prop :=
  ∀ n, P398119975590816721.a n = A282003 n

end A282003

/-! ## A282003.P11569286360449361617

`A280368(1-(A033999(n)-n))`
-/

namespace A282003.P11569286360449361617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280368 (1 - (A033999 n - (n : ℤ))).toNat

end

end A282003.P11569286360449361617

namespace A282003

/-- `A280368(1-(A033999(n)-n))` -/
def P11569286360449361617.Spec : Prop :=
  ∀ n, P11569286360449361617.a n = A282003 n

end A282003

/-! ## A282003.P17248544018194389449

`A277798(n)+A007088(A131577(n))`
-/

namespace A282003.P17248544018194389449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 n + A007088 (A131577 n).toNat

end

end A282003.P17248544018194389449

namespace A282003

/-- `A277798(n)+A007088(A131577(n))` -/
def P17248544018194389449.Spec : Prop :=
  ∀ n, P17248544018194389449.a n = A282003 n

end A282003

/-!
# A282004: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

The programs for A282004, the canonical program `A282004.P11991646138547053131` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282004 has offset 0).

The definition of A282004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282004.P11991646138547053131

`A277866(n)+A134451(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A282004

/-- `A277866(n)+A134451(n)` -/
def P11991646138547053131.Spec : Prop :=
  ∀ n, P11991646138547053131.a n = A282004 n

theorem P11991646138547053131.correct : P11991646138547053131.Spec := by
  intro n
  simp only [A282004]

end A282004

/-! ## A282004.P2758688916432146466

`gcd(A117980(n), A287192(n))`
-/

namespace A282004.P2758688916432146466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117980 n) (A287192 n)

end

end A282004.P2758688916432146466

namespace A282004

/-- `gcd(A117980(n), A287192(n))` -/
def P2758688916432146466.Spec : Prop :=
  ∀ n, (P2758688916432146466.a n : ℤ) = A282004 n

end A282004

/-! ## A282004.P679761669836550939

`gcd(A254006(n), A288770(n))`
-/

namespace A282004.P679761669836550939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254006 n) (A288770 n)

end

end A282004.P679761669836550939

namespace A282004

/-- `gcd(A254006(n), A288770(n))` -/
def P679761669836550939.Spec : Prop :=
  ∀ n, (P679761669836550939.a n : ℤ) = A282004 n

end A282004

/-! ## A282004.P9640073580439686974

`xor(A000051(n), A280293(n))`
-/

namespace A282004.P9640073580439686974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 n) (A280293 n)

end

end A282004.P9640073580439686974

namespace A282004

/-- `xor(A000051(n), A280293(n))` -/
def P9640073580439686974.Spec : Prop :=
  ∀ n, P9640073580439686974.a n = A282004 n

end A282004

/-! ## A282004.P854753161259325330

`xor(A130130(n), A287197(n))`
-/

namespace A282004.P854753161259325330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130130 n) (A287197 n)

end

end A282004.P854753161259325330

namespace A282004

/-- `xor(A130130(n), A287197(n))` -/
def P854753161259325330.Spec : Prop :=
  ∀ n, P854753161259325330.a n = A282004 n

end A282004

/-! ## A282004.P5428073109876562544

`A153284(n+1)*A280412(n)`
-/

namespace A282004.P5428073109876562544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A280412 n

end

end A282004.P5428073109876562544

namespace A282004

/-- `A153284(n+1)*A280412(n)` -/
def P5428073109876562544.Spec : Prop :=
  ∀ n, P5428073109876562544.a n = A282004 n

end A282004

/-! ## A282004.P6267851796477149296

`and(A168330(n+1), A282124(n))`
-/

namespace A282004.P6267851796477149296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A282124 n)

end

end A282004.P6267851796477149296

namespace A282004

/-- `and(A168330(n+1), A282124(n))` -/
def P6267851796477149296.Spec : Prop :=
  ∀ n, P6267851796477149296.a n = A282004 n

end A282004

/-! ## A282004.P4912061711121156602

`and(A168330(n+1), A282658(n))`
-/

namespace A282004.P4912061711121156602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A282658 n)

end

end A282004.P4912061711121156602

namespace A282004

/-- `and(A168330(n+1), A282658(n))` -/
def P4912061711121156602.Spec : Prop :=
  ∀ n, P4912061711121156602.a n = A282004 n

end A282004

/-! ## A282004.P12573560496823352120

`and(A168330(n+1), A285542(n))`
-/

namespace A282004.P12573560496823352120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A285542 n)

end

end A282004.P12573560496823352120

namespace A282004

/-- `and(A168330(n+1), A285542(n))` -/
def P12573560496823352120.Spec : Prop :=
  ∀ n, P12573560496823352120.a n = A282004 n

end A282004

/-! ## A282004.P15509339878604769494

`and(A168330(n+1), A285562(n))`
-/

namespace A282004.P15509339878604769494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A285562 n)

end

end A282004.P15509339878604769494

namespace A282004

/-- `and(A168330(n+1), A285562(n))` -/
def P15509339878604769494.Spec : Prop :=
  ∀ n, P15509339878604769494.a n = A282004 n

end A282004

/-! ## A282004.P15650037652121838678

`and(A168330(n+1), A286206(n))`
-/

namespace A282004.P15650037652121838678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A286206 n)

end

end A282004.P15650037652121838678

namespace A282004

/-- `and(A168330(n+1), A286206(n))` -/
def P15650037652121838678.Spec : Prop :=
  ∀ n, P15650037652121838678.a n = A282004 n

end A282004

/-! ## A282004.P18295987991290876495

`and(A168330(n+1), A286501(n))`
-/

namespace A282004.P18295987991290876495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A286501 n)

end

end A282004.P18295987991290876495

namespace A282004

/-- `and(A168330(n+1), A286501(n))` -/
def P18295987991290876495.Spec : Prop :=
  ∀ n, P18295987991290876495.a n = A282004 n

end A282004

/-! ## A282004.P18434928696061925346

`and(A168330(n+1), A287188(n))`
-/

namespace A282004.P18434928696061925346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A287188 n)

end

end A282004.P18434928696061925346

namespace A282004

/-- `and(A168330(n+1), A287188(n))` -/
def P18434928696061925346.Spec : Prop :=
  ∀ n, P18434928696061925346.a n = A282004 n

end A282004

/-! ## A282004.P11289712497216108431

`and(A168330(n+1), A288770(n))`
-/

namespace A282004.P11289712497216108431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A288770 n)

end

end A282004.P11289712497216108431

namespace A282004

/-- `and(A168330(n+1), A288770(n))` -/
def P11289712497216108431.Spec : Prop :=
  ∀ n, P11289712497216108431.a n = A282004 n

end A282004

/-! ## A282004.P18171291433433555074

`and(A168330(n+1), A288803(n))`
-/

namespace A282004.P18171291433433555074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A288803 n)

end

end A282004.P18171291433433555074

namespace A282004

/-- `and(A168330(n+1), A288803(n))` -/
def P18171291433433555074.Spec : Prop :=
  ∀ n, P18171291433433555074.a n = A282004 n

end A282004

/-! ## A282004.P8421298310104948500

`and(A277866(n)+2, A282658(n))`
-/

namespace A282004.P8421298310104948500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n + 2) (A282658 n)

end

end A282004.P8421298310104948500

namespace A282004

/-- `and(A277866(n)+2, A282658(n))` -/
def P8421298310104948500.Spec : Prop :=
  ∀ n, P8421298310104948500.a n = A282004 n

end A282004

/-! ## A282004.P8137251658303575365

`and(A277866(n)+2, A288770(n))`
-/

namespace A282004.P8137251658303575365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277866 n + 2) (A288770 n)

end

end A282004.P8137251658303575365

namespace A282004

/-- `and(A277866(n)+2, A288770(n))` -/
def P8137251658303575365.Spec : Prop :=
  ∀ n, P8137251658303575365.a n = A282004 n

end A282004

/-! ## A282004.P17027523334663266571

`xor(A005578(n), A096773(n+1))`
-/

namespace A282004.P17027523334663266571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005578 n) (A096773 (n + 1))

end

end A282004.P17027523334663266571

namespace A282004

/-- `xor(A005578(n), A096773(n+1))` -/
def P17027523334663266571.Spec : Prop :=
  ∀ n, P17027523334663266571.a n = A282004 n

end A282004

/-! ## A282004.P13164050694025702300

`or(2-A318608(n+1), A287131(n))`
-/

namespace A282004.P13164050694025702300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - A318608 (n + 1)) (A287131 n)

end

end A282004.P13164050694025702300

namespace A282004

/-- `or(2-A318608(n+1), A287131(n))` -/
def P13164050694025702300.Spec : Prop :=
  ∀ n, P13164050694025702300.a n = A282004 n

end A282004

/-! ## A282004.P8447199274011957987

`gcd(A095121(n), A115634(n))`
-/

namespace A282004.P8447199274011957987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095121 n) (A115634 n)

end

end A282004.P8447199274011957987

namespace A282004

/-- `gcd(A095121(n), A115634(n))` -/
def P8447199274011957987.Spec : Prop :=
  ∀ n, (P8447199274011957987.a n : ℤ) = A282004 n

end A282004

/-!
# A282005: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

The programs for A282005, the canonical program `A282005.P6948125954037535404` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282005 has offset 0).

The definition of A282005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282005.P6948125954037535404

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=7, a(4)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282005

/-- `5*a(n-2)-4*a(n-4)` -/
def P6948125954037535404.Spec : Prop :=
  ∀ n, P6948125954037535404.a n = A282005 n

theorem P6948125954037535404.correct : P6948125954037535404.Spec := by
  intro n
  simp only [A282005]

end A282005

/-! ## A282005.P12474035291375995283

`A122756(n)-and(1, n)`
-/

namespace A282005.P12474035291375995283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 n - (Nat.land 1 n : ℤ)

end

end A282005.P12474035291375995283

namespace A282005

/-- `A122756(n)-and(1, n)` -/
def P12474035291375995283.Spec : Prop :=
  ∀ n, P12474035291375995283.a n = A282005 n

end A282005

/-! ## A282005.P10150077663724794208

`A277800(n)+A131577(n)`
-/

namespace A282005.P10150077663724794208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 n + A131577 n

end

end A282005.P10150077663724794208

namespace A282005

/-- `A277800(n)+A131577(n)` -/
def P10150077663724794208.Spec : Prop :=
  ∀ n, P10150077663724794208.a n = A282005 n

end A282005

/-! ## A282005.P8830902831589016286

`A122756(n)-A000035(n)`
-/

namespace A282005.P8830902831589016286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 n - A000035 n

end

end A282005.P8830902831589016286

namespace A282005

/-- `A122756(n)-A000035(n)` -/
def P8830902831589016286.Spec : Prop :=
  ∀ n, P8830902831589016286.a n = A282005 n

end A282005

/-! ## A282005.P10299585627722939614

`or(A011782(n), A051049(n))`
-/

namespace A282005.P10299585627722939614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A051049 n)

end

end A282005.P10299585627722939614

namespace A282005

/-- `or(A011782(n), A051049(n))` -/
def P10299585627722939614.Spec : Prop :=
  ∀ n, P10299585627722939614.a n = A282005 n

end A282005

/-! ## A282005.P2240393363885848330

`or(A051049(n), A131577(n))`
-/

namespace A282005.P2240393363885848330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A131577 n)

end

end A282005.P2240393363885848330

namespace A282005

/-- `or(A051049(n), A131577(n))` -/
def P2240393363885848330.Spec : Prop :=
  ∀ n, P2240393363885848330.a n = A282005 n

end A282005

/-! ## A282005.P1989322066744292205

`or(A011782(n), A277800(n))`
-/

namespace A282005.P1989322066744292205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n) (A277800 n)

end

end A282005.P1989322066744292205

namespace A282005

/-- `or(A011782(n), A277800(n))` -/
def P1989322066744292205.Spec : Prop :=
  ∀ n, P1989322066744292205.a n = A282005 n

end A282005

/-! ## A282005.P11037507969013212386

`xor(A140252(n), A279872(n))`
-/

namespace A282005.P11037507969013212386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A140252 n) (A279872 n)

end

end A282005.P11037507969013212386

namespace A282005

/-- `xor(A140252(n), A279872(n))` -/
def P11037507969013212386.Spec : Prop :=
  ∀ n, P11037507969013212386.a n = A282005 n

end A282005

/-! ## A282005.P8042945050575886158

`xor(A166920(n), A290662(n))`
-/

namespace A282005.P8042945050575886158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166920 n) (A290662 n)

end

end A282005.P8042945050575886158

namespace A282005

/-- `xor(A166920(n), A290662(n))` -/
def P8042945050575886158.Spec : Prop :=
  ∀ n, P8042945050575886158.a n = A282005 n

end A282005

/-! ## A282005.P15049575793578691022

`A122756(n)+1-A000034(n)`
-/

namespace A282005.P15049575793578691022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 n + (1 - A000034 n)

end

end A282005.P15049575793578691022

namespace A282005

/-- `A122756(n)+1-A000034(n)` -/
def P15049575793578691022.Spec : Prop :=
  ∀ n, P15049575793578691022.a n = A282005 n

end A282005

/-! ## A282005.P8528920919946430172

`A140253(n+1)-A140252(n)`
-/

namespace A282005.P8528920919946430172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 (n + 1) - A140252 n

end

end A282005.P8528920919946430172

namespace A282005

/-- `A140253(n+1)-A140252(n)` -/
def P8528920919946430172.Spec : Prop :=
  ∀ n, P8528920919946430172.a n = A282005 n

end A282005

/-! ## A282005.P1623254004873565177

`gcd(A186685(n+1), A287193(n))`
-/

namespace A282005.P1623254004873565177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186685 (n + 1)) (A287193 n)

end

end A282005.P1623254004873565177

namespace A282005

/-- `gcd(A186685(n+1), A287193(n))` -/
def P1623254004873565177.Spec : Prop :=
  ∀ n, (P1623254004873565177.a n : ℤ) = A282005 n

end A282005

/-! ## A282005.P10099706549340564742

`A280370(xor(1, n+1))`
-/

namespace A282005.P10099706549340564742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (Nat.xor 1 (n + 1))

end

end A282005.P10099706549340564742

namespace A282005

/-- `A280370(xor(1, n+1))` -/
def P10099706549340564742.Spec : Prop :=
  ∀ n, P10099706549340564742.a n = A282005 n

end A282005

/-! ## A282005.P1512165880245778035

`A280370(A004442(n+1))`
-/

namespace A282005.P1512165880245778035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (A004442 (n + 1)).toNat

end

end A282005.P1512165880245778035

namespace A282005

/-- `A280370(A004442(n+1))` -/
def P1512165880245778035.Spec : Prop :=
  ∀ n, P1512165880245778035.a n = A282005 n

end A282005

/-! ## A282005.P682288631530624339

`A280370(A004442(2*n)-A004442(n))`
-/

namespace A282005.P682288631530624339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (A004442 (2 * n) - A004442 n).toNat

end

end A282005.P682288631530624339

namespace A282005

/-- `A280370(A004442(2*n)-A004442(n))` -/
def P682288631530624339.Spec : Prop :=
  ∀ n, P682288631530624339.a n = A282005 n

end A282005

/-! ## A282005.P16418451614480188793

`A267351(n)%A198633(n)`
-/

namespace A282005.P16418451614480188793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267351 n) (A198633 n)

end

end A282005.P16418451614480188793

namespace A282005

/-- `A267351(n)%A198633(n)` -/
def P16418451614480188793.Spec : Prop :=
  ∀ n, P16418451614480188793.a n = A282005 n

end A282005

/-! ## A282005.P15494880100015766932

`gcd(A006516(n), A287193(n))`
-/

namespace A282005.P15494880100015766932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006516 n) (A287193 n)

end

end A282005.P15494880100015766932

namespace A282005

/-- `gcd(A006516(n), A287193(n))` -/
def P15494880100015766932.Spec : Prop :=
  ∀ n, (P15494880100015766932.a n : ℤ) = A282005 n

end A282005

/-! ## A282005.P9350668946966419433

`and(A126646(n), A267351(n))`
-/

namespace A282005.P9350668946966419433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267351 n)

end

end A282005.P9350668946966419433

namespace A282005

/-- `and(A126646(n), A267351(n))` -/
def P9350668946966419433.Spec : Prop :=
  ∀ n, P9350668946966419433.a n = A282005 n

end A282005

/-! ## A282005.P15290305582367572706

`and(A267351(n), A282123(n))`
-/

namespace A282005.P15290305582367572706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267351 n) (A282123 n)

end

end A282005.P15290305582367572706

namespace A282005

/-- `and(A267351(n), A282123(n))` -/
def P15290305582367572706.Spec : Prop :=
  ∀ n, P15290305582367572706.a n = A282005 n

end A282005

/-! ## A282005.P11965350881797324037

`and(A267351(n), A282659(n))`
-/

namespace A282005.P11965350881797324037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267351 n) (A282659 n)

end

end A282005.P11965350881797324037

namespace A282005

/-- `and(A267351(n), A282659(n))` -/
def P11965350881797324037.Spec : Prop :=
  ∀ n, P11965350881797324037.a n = A282005 n

end A282005

/-!
# A282006: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A282006, there is no canonical definition to state claims against.
-/

/-! ## A282006.P2969793075375694763

`A000042(n+1)-A282976(A028310(n))`
-/

namespace A282006.P2969793075375694763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282976 (A028310 n).toNat

end

end A282006.P2969793075375694763

/-! ## A282006.P249184557621033877

`A282007(n)+A282977(n)-A282976(n)`
-/

namespace A282006.P249184557621033877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282007 n + (A282977 n - A282976 n)

end

end A282006.P249184557621033877

/-! ## A282006.P15338949745676769489

`A288643(n)+A289930(n)-A282976(n)`
-/

namespace A282006.P15338949745676769489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288643 n + (A289930 n - A282976 n)

end

end A282006.P15338949745676769489

/-! ## A282006.P11626946190086240929

`A000042(n+1)-A282976(A065033(2*n))`
-/

namespace A282006.P11626946190086240929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282976 (A065033 (2 * n)).toNat

end

end A282006.P11626946190086240929

/-! ## A282006.P13367283118328867258

`A000042(n+1)-A282976(n)%A000042(n+1)`
-/

namespace A282006.P13367283118328867258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282976 n) (A000042 (n + 1))

end

end A282006.P13367283118328867258

/-!
# A282007: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A282007, there is no canonical definition to state claims against.
-/

/-! ## A282007.P3164012165345817680

`A000042(n+1)-A282977(A028310(n))`
-/

namespace A282007.P3164012165345817680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282977 (A028310 n).toNat

end

end A282007.P3164012165345817680

/-! ## A282007.P7661055301923825291

`A282006(n)+A282976(n)-A282977(n)`
-/

namespace A282007.P7661055301923825291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282006 n + (A282976 n - A282977 n)

end

end A282007.P7661055301923825291

/-! ## A282007.P3178157975869553514

`A000042(n+1)-A282977(A065033(2*n))`
-/

namespace A282007.P3178157975869553514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A282977 (A065033 (2 * n)).toNat

end

end A282007.P3178157975869553514

/-! ## A282007.P17025113751000059765

`A000042(n+1)-A282977(n)%A000042(n+1)`
-/

namespace A282007.P17025113751000059765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282977 n) (A000042 (n + 1))

end

end A282007.P17025113751000059765

/-! ## A282007.P13629054652449922379

`A007088(A282009(n))`
-/

namespace A282007.P13629054652449922379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282009 n).toNat

end

end A282007.P13629054652449922379

/-!
# A282008: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A282008, there is no canonical definition to state claims against.
-/

/-! ## A282008.P1697145145667385032

`A095121(n)+1-A282978(n)`
-/

namespace A282008.P1697145145667385032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282978 n)

end

end A282008.P1697145145667385032

/-! ## A282008.P7898358561222043902

`xor(record[A324715(n+1)], A282978(n))`
-/

namespace A282008.P7898358561222043902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282978 n)

end

end A282008.P7898358561222043902

/-! ## A282008.P17383006073663664294

`A282009(n)+A282979(n)-A282978(n)`
-/

namespace A282008.P17383006073663664294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282009 n + (A282979 n - A282978 n)

end

end A282008.P17383006073663664294

/-! ## A282008.P15200241089034225931

`A127330(A000124(n))-A282978(n)`
-/

namespace A282008.P15200241089034225931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282978 n

end

end A282008.P15200241089034225931

/-! ## A282008.P8453044239885335448

`A127330(∑[A028310(n)])-A282978(n)`
-/

namespace A282008.P8453044239885335448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A282978 n

end

end A282008.P8453044239885335448

/-!
# A282009: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A282009, there is no canonical definition to state claims against.
-/

/-! ## A282009.P15271068110203948851

`A095121(n)+1-A282979(n)`
-/

namespace A282009.P15271068110203948851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282979 n)

end

end A282009.P15271068110203948851

/-! ## A282009.P4103051858063753089

`xor(record[A324715(n+1)], A282979(n))`
-/

namespace A282009.P4103051858063753089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282979 n)

end

end A282009.P4103051858063753089

/-! ## A282009.P8539594598779402373

`A282008(n)+A282978(n)-A282979(n)`
-/

namespace A282009.P8539594598779402373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282008 n + (A282978 n - A282979 n)

end

end A282009.P8539594598779402373

/-! ## A282009.P13601303870043812071

`A127330(A000124(n))-A282979(n)`
-/

namespace A282009.P13601303870043812071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282979 n

end

end A282009.P13601303870043812071

/-! ## A282009.P6476851806372880897

`A127330(∑[A028310(n)])-A282979(n)`
-/

namespace A282009.P6476851806372880897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A282979 n

end

end A282009.P6476851806372880897

/-!
# A282010: Number of ways to partition Turan graph T(2n,n) into connected components.

The programs for A282010, there is no canonical definition to state claims against.
-/

/-! ## A282010.P10522684403807850596

`A020654(A354327(n)+A055779(n+1))`
-/

namespace A282010.P10522684403807850596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A354327 n + A055779 (n + 1)).toNat

end

end A282010.P10522684403807850596

/-!
# A282011: Number T(n,k) of k-element subsets of [n] having an even sum; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A282011, there is no canonical definition to state claims against.
-/

/-! ## A282011.P5205881522329217811

`A124921(A099627(n))`
-/

namespace A282011.P5205881522329217811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (A099627 n).toNat

end

end A282011.P5205881522329217811

/-! ## A282011.P15484942451204008919

`A124921(∑[A232089(n)])`
-/

namespace A282011.P15484942451204008919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282011.P15484942451204008919

/-! ## A282011.P4808145255557715060

`A124921(A089633(n)+1)`
-/

namespace A282011.P4808145255557715060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (A089633 n + 1).toNat

end

end A282011.P4808145255557715060

/-! ## A282011.P3980929196872718829

`A124921(A023758(n+2))`
-/

namespace A282011.P3980929196872718829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (A023758 (n + 2)).toNat

end

end A282011.P3980929196872718829

/-! ## A282011.P14720834679643895885

`A124921(A173786(n)-1)`
-/

namespace A282011.P14720834679643895885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (A173786 n - 1).toNat

end

end A282011.P14720834679643895885

/-! ## A282011.P17758214522757477249

`A124921(eq[1, A069010(n)])`
-/

namespace A282011.P17758214522757477249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282011.P17758214522757477249

/-! ## A282011.P14573225777624004063

`A124921(∑[A057728(n+1)])`
-/

namespace A282011.P14573225777624004063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282011.P14573225777624004063

/-! ## A282011.P17969649185034720841

`A124921(record[A161924(n+1)])`
-/

namespace A282011.P17969649185034720841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282011.P17969649185034720841

/-! ## A282011.P7364854235676064979

`A124921(A043569(n+1)/2)`
-/

namespace A282011.P7364854235676064979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2)).toNat

end

end A282011.P7364854235676064979

/-! ## A282011.P11344897597653706180

`A124921(∑[A011782(A002262(n))])`
-/

namespace A282011.P11344897597653706180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282011.P11344897597653706180

/-! ## A282011.P7268702420641465330

`A124921(∑[A003557(A059268(n))])`
-/

namespace A282011.P7268702420641465330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282011.P7268702420641465330

/-!
# A282013: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that both x and 49*x + 48*(y-z) are squares.

The programs for A282013, there is no canonical definition to state claims against.
-/

/-! ## A282013.P13042643235091013753

`A275299(lt[A119687(n), A333531(3*n+2)])`
-/

namespace A282013.P13042643235091013753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333531 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275299 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282013.P13042643235091013753

/-! ## A282013.P6587189129498374764

`A326568(A373961(n+1)+A025398(3*n+5))`
-/

namespace A282013.P6587189129498374764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (A373961 (n + 1) + A025398 (3 * n + 5)).toNat

end

end A282013.P6587189129498374764

/-!
# A282014: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that both x and 121*x + 48*(y-z) are squares.

The programs for A282014, there is no canonical definition to state claims against.
-/

/-! ## A282014.P9399352815571772235

`A284817(A164501(n+4))+A275299(n)`
-/

namespace A282014.P9399352815571772235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (A164501 (n + 4)).toNat + A275299 n

end

end A282014.P9399352815571772235

/-!
# A282016: Least k > 0 such that phi(n) divides phi(n+k).

The programs for A282016, there is no canonical definition to state claims against.
-/

/-! ## A282016.P7133080674680500236

`A069797(n+1)-(n+1)`
-/

namespace A282016.P7133080674680500236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069797 (n + 1) - (n + 1 : ℤ)

end

end A282016.P7133080674680500236

/-! ## A282016.P7211940988243857153

`A023443(A069797(n+1)-n)`
-/

namespace A282016.P7211940988243857153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A069797 (n + 1) - (n : ℤ)).toNat

end

end A282016.P7211940988243857153

/-! ## A282016.P7660896571560855533

`abs(A069797(n+1)+A001478(n+1))`
-/

namespace A282016.P7660896571560855533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069797 (n + 1) + A001478 (n + 1)|

end

end A282016.P7660896571560855533

/-! ## A282016.P10411291088859438143

`A000027(A069797(n+1)+A001478(n+1))`
-/

namespace A282016.P10411291088859438143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069797 (n + 1) + A001478 (n + 1)).toNat

end

end A282016.P10411291088859438143

/-! ## A282016.P14956813381119508733

`A023443(A069797(n+1))+A001489(n)`
-/

namespace A282016.P14956813381119508733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A069797 (n + 1)).toNat + A001489 n

end

end A282016.P14956813381119508733

/-! ## A282016.P1393542948368569185

`A002260(A069797(n+1)+∑[n])`
-/

namespace A282016.P1393542948368569185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A069797 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A282016.P1393542948368569185

/-! ## A282016.P9401748417758373009

`A001489(∑[n+1])+A069797(n+1)+∑[n]`
-/

namespace A282016.P9401748417758373009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j) + (A069797 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A282016.P9401748417758373009

/-! ## A282016.P14049034512960956045

`A002262(A069797(n+1)+A000217(n))`
-/

namespace A282016.P14049034512960956045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A069797 (n + 1) + A000217 n).toNat

end

end A282016.P14049034512960956045

/-!
# A282017: Coefficients in q-expansion of (E_4 + E_2^2)/2, where E_2 and E_4 are the Eisenstein series shown in A006352 and A004009, respectively.

The programs for A282017, there is no canonical definition to state claims against.
-/

/-! ## A282017.P1535233410479333888

`(A281374(n)+A004009(n))/2`
-/

namespace A282017.P1535233410479333888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281374 n + A004009 n : ℚ) / 2

end

end A282017.P1535233410479333888

/-! ## A282017.P3544509774321434647

`A004009(n)+A006352(n)*A008588(n)`
-/

namespace A282017.P3544509774321434647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 n + A006352 n * A008588 n

end

end A282017.P3544509774321434647

/-! ## A282017.P15144143499118948211

`A281374(n)-A006352(n)*A008588(n)`
-/

namespace A282017.P15144143499118948211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281374 n - A006352 n * A008588 n

end

end A282017.P15144143499118948211

/-! ## A282017.P3207466018353572456

`A004009(n)+A006352(n)*A008594(n)/2`
-/

namespace A282017.P3207466018353572456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004009 n : ℚ) + (A006352 n * A008594 n : ℚ) / 2

end

end A282017.P3207466018353572456

/-! ## A282017.P11503226165378340780

`A004009(n)+(A228746(2*n)+A143337(2*n))/2*A008588(n)`
-/

namespace A282017.P11503226165378340780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004009 n : ℚ) + (A228746 (2 * n) + A143337 (2 * n) : ℚ) / 2 * (A008588 n : ℚ)

end

end A282017.P11503226165378340780

/-!
# A282018: Coefficients in q-expansion of E_2^3, where E_2 is the Eisenstein series shown in A006352.

The programs for A282018, there is no canonical definition to state claims against.
-/

/-! ## A282018.P7791430066279959743

`A282019(n)+A008588(n)*A281374(n)`
-/

namespace A282018.P7791430066279959743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282019 n + A008588 n * A281374 n

end

end A282018.P7791430066279959743

/-!
# A282019: Coefficients in q-expansion of E_2*E_4, where E_2 and E_4 are the Eisenstein series shown in A006352 and A004009, respectively.

The programs for A282019, there is no canonical definition to state claims against.
-/

/-! ## A282019.P17314466054200686356

`A013973(n)+A004009(n)*A008585(n)`
-/

namespace A282019.P17314466054200686356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013973 n + A004009 n * A008585 n

end

end A282019.P17314466054200686356

/-! ## A282019.P6989436327399568968

`A282018(n)-A008588(n)*A281374(n)`
-/

namespace A282019.P6989436327399568968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282018 n - A008588 n * A281374 n

end

end A282019.P6989436327399568968

/-! ## A282019.P9448398927128499526

`A013973(n)+(2*A008430(n)-A035016(n))*A008585(n)`
-/

namespace A282019.P9448398927128499526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013973 n + (2 * A008430 n - A035016 n) * A008585 n

end

end A282019.P9448398927128499526

/-! ## A282019.P5092913342301280164

`A013973(n)+(A000143(2*n)+2*A007331(4*n))*A008585(n)`
-/

namespace A282019.P5092913342301280164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013973 n + (A000143 (2 * n) + 2 * A007331 (4 * n)) * A008585 n

end

end A282019.P5092913342301280164

/-! ## A282019.P6164292532700082679

`A013973(n)+(A035016(2*n)+2*A007331(4*n))*A008585(n)`
-/

namespace A282019.P6164292532700082679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013973 n + (A035016 (2 * n) + 2 * A007331 (4 * n)) * A008585 n

end

end A282019.P6164292532700082679

/-!
# A282020: Coefficients in q-expansion of (E_2^3 - E_2*E_4)/288, where E_2 and E_4 are the Eisenstein series shown in A006352 and A004009, respectively.

The programs for A282020, there is no canonical definition to state claims against.
-/

/-! ## A282020.P13792722531035300888

`(A282018(n)-A282019(n))/288`
-/

namespace A282020.P13792722531035300888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282018 n - A282019 n : ℚ) / 288

end

end A282020.P13792722531035300888

/-! ## A282020.P16964451478466662432

`n/48*A281374(n)`
-/

namespace A282020.P16964451478466662432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 48 * (A281374 n : ℚ)

end

end A282020.P16964451478466662432

/-!
# A282022: Start with 1; multiply alternately by 3 and 4.

The programs for A282022, the canonical program `A282022.P9419247075625249770` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282022 has offset 0).

The definition of A282022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282022.P9419247075625249770

`12*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282022

/-- `12*a(n-2)` -/
def P9419247075625249770.Spec : Prop :=
  ∀ n, (P9419247075625249770.a n : ℤ) = A282022 n

theorem P9419247075625249770.correct : P9419247075625249770.Spec := by
  intro n
  simp only [A282022]

end A282022

/-! ## A282022.P9071947400463206111

`ogf((1+3x)/(1-12x^2))`
-/

namespace A282022.P9071947400463206111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -12] n

end

end A282022.P9071947400463206111

namespace A282022

/-- `ogf((1+3x)/(1-12x^2))` -/
def P9071947400463206111.Spec : Prop :=
  ∀ n, P9071947400463206111.a n = A282022 n

end A282022

/-! ## A282022.P1533168894253006667

`∏[7-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A282022.P1533168894253006667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P1533168894253006667

namespace A282022

/-- `∏[7-a(n-1)]` -/
def P1533168894253006667.Spec : Prop :=
  ∀ n, P1533168894253006667.a n = A282022 n

end A282022

/-! ## A282022.P6334821931293326121

`∏[or(3, (n+2)²)%(n+3)]`
-/

namespace A282022.P6334821931293326121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 ((n + 2) ^ 2) % (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P6334821931293326121

namespace A282022

/-- `∏[or(3, (n+2)²)%(n+3)]` -/
def P6334821931293326121.Spec : Prop :=
  ∀ n, (P6334821931293326121.a n : ℤ) = A282022 n

end A282022

/-! ## A282022.P13136775451639749178

`∏[(∑[3^n]+1-2^n)%6]`
-/

namespace A282022.P13136775451639749178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ))) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P13136775451639749178

namespace A282022

/-- `∏[(∑[3^n]+1-2^n)%6]` -/
def P13136775451639749178.Spec : Prop :=
  ∀ n, P13136775451639749178.a n = A282022 n

end A282022

/-! ## A282022.P2602875321237822949

`a(n-2)/(1/3-1/4)` with `a(0)=1, a(1)=3`
-/

namespace A282022.P2602875321237822949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3 - (1 : ℚ) / 4)

end

end A282022.P2602875321237822949

namespace A282022

/-- `a(n-2)/(1/3-1/4)` -/
def P2602875321237822949.Spec : Prop :=
  ∀ n, P2602875321237822949.a n = (A282022 n : ℚ)

end A282022

/-! ## A282022.P15959808487653819771

`∏[gcd(12, ∑[floor(3^(n-1))]+2^n)]`
-/

namespace A282022.P15959808487653819771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (∑ j ∈ Finset.range (n + 1), f2 j + (2 ^ n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P15959808487653819771

namespace A282022

/-- `∏[gcd(12, ∑[floor(3^(n-1))]+2^n)]` -/
def P15959808487653819771.Spec : Prop :=
  ∀ n, (P15959808487653819771.a n : ℤ) = A282022 n

end A282022

/-! ## A282022.P1992924961413477360

`A253852(5*n)`
-/

namespace A282022.P1992924961413477360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253852 (5 * n)

end

end A282022.P1992924961413477360

namespace A282022

/-- `A253852(5*n)` -/
def P1992924961413477360.Spec : Prop :=
  ∀ n, P1992924961413477360.a n = A282022 n

end A282022

/-! ## A282022.P209509473032827701

`∏[dr(A094025(n))]`
-/

namespace A282022.P209509473032827701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A094025 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P209509473032827701

namespace A282022

/-- `∏[dr(A094025(n))]` -/
def P209509473032827701.Spec : Prop :=
  ∀ n, (P209509473032827701.a n : ℤ) = A282022 n

end A282022

/-! ## A282022.P8136878655423386833

`∏[and(7, A133647(n))]`
-/

namespace A282022.P8136878655423386833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A133647 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P8136878655423386833

namespace A282022

/-- `∏[and(7, A133647(n))]` -/
def P8136878655423386833.Spec : Prop :=
  ∀ n, P8136878655423386833.a n = A282022 n

end A282022

/-! ## A282022.P9757837916987150022

`∏[A025509(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P9757837916987150022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025509 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P9757837916987150022

namespace A282022

/-- `∏[A025509(a(n-1))]` -/
def P9757837916987150022.Spec : Prop :=
  ∀ n, P9757837916987150022.a n = A282022 n

end A282022

/-! ## A282022.P4956034469359936820

`∏[A027011(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P4956034469359936820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027011 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P4956034469359936820

namespace A282022

/-- `∏[A027011(a(n-1))]` -/
def P4956034469359936820.Spec : Prop :=
  ∀ n, P4956034469359936820.a n = A282022 n

end A282022

/-! ## A282022.P13753735468586266762

`∏[A029882(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P13753735468586266762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A029882 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P13753735468586266762

namespace A282022

/-- `∏[A029882(a(n-1))]` -/
def P13753735468586266762.Spec : Prop :=
  ∀ n, P13753735468586266762.a n = A282022 n

end A282022

/-! ## A282022.P5633812224792689119

`∏[A046537(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P5633812224792689119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A046537 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P5633812224792689119

namespace A282022

/-- `∏[A046537(a(n-1))]` -/
def P5633812224792689119.Spec : Prop :=
  ∀ n, P5633812224792689119.a n = A282022 n

end A282022

/-! ## A282022.P6023848801750524168

`∏[A052938(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P6023848801750524168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A052938 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P6023848801750524168

namespace A282022

/-- `∏[A052938(a(n-1))]` -/
def P6023848801750524168.Spec : Prop :=
  ∀ n, P6023848801750524168.a n = A282022 n

end A282022

/-! ## A282022.P17206226873109547354

`∏[A054019(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P17206226873109547354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A054019 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P17206226873109547354

namespace A282022

/-- `∏[A054019(a(n-1))]` -/
def P17206226873109547354.Spec : Prop :=
  ∀ n, P17206226873109547354.a n = A282022 n

end A282022

/-! ## A282022.P16201485571453201651

`∏[A062964(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P16201485571453201651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A062964 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P16201485571453201651

namespace A282022

/-- `∏[A062964(a(n-1))]` -/
def P16201485571453201651.Spec : Prop :=
  ∀ n, P16201485571453201651.a n = A282022 n

end A282022

/-! ## A282022.P8868328655507172874

`∏[A070296(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P8868328655507172874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A070296 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P8868328655507172874

namespace A282022

/-- `∏[A070296(a(n-1))]` -/
def P8868328655507172874.Spec : Prop :=
  ∀ n, P8868328655507172874.a n = A282022 n

end A282022

/-! ## A282022.P10580845854118373905

`∏[A080038(a(n-1))]` with `a(0)=1`
-/

namespace A282022.P10580845854118373905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A080038 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282022.P10580845854118373905

namespace A282022

/-- `∏[A080038(a(n-1))]` -/
def P10580845854118373905.Spec : Prop :=
  ∀ n, P10580845854118373905.a n = A282022 n

end A282022

/-!
# A282023: Start with 1; multiply alternately by 4 and 3.

The programs for A282023, the canonical program `A282023.P14467956217262675460` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282023 has offset 0).

The definition of A282023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282023.P14467956217262675460

`12*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282023

/-- `12*a(n-2)` -/
def P14467956217262675460.Spec : Prop :=
  ∀ n, (P14467956217262675460.a n : ℤ) = A282023 n

theorem P14467956217262675460.correct : P14467956217262675460.Spec := by
  intro n
  simp only [A282023]

end A282023

/-! ## A282023.P248745932366857115

`ogf((1+4x)/(1-12x^2))`
-/

namespace A282023.P248745932366857115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, 0, -12] n

end

end A282023.P248745932366857115

namespace A282023

/-- `ogf((1+4x)/(1-12x^2))` -/
def P248745932366857115.Spec : Prop :=
  ∀ n, P248745932366857115.a n = A282023 n

end A282023

/-! ## A282023.P3388651830112234009

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A282023.P3388651830112234009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P3388651830112234009

namespace A282023

/-- `∏[abs(a(n-2))]` -/
def P3388651830112234009.Spec : Prop :=
  ∀ n, (P3388651830112234009.a n : ℤ) = A282023 n

end A282023

/-! ## A282023.P8759627056735400630

`∏[7-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A282023.P8759627056735400630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P8759627056735400630

namespace A282023

/-- `∏[7-a(n-1)]` -/
def P8759627056735400630.Spec : Prop :=
  ∀ n, P8759627056735400630.a n = A282023 n

end A282023

/-! ## A282023.P2759931622766510284

`∏[gcd(n%2+3, floor(acot(n)))]`
-/

namespace A282023.P2759931622766510284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 + 3 : ℕ) : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P2759931622766510284

namespace A282023

/-- `∏[gcd(n%2+3, floor(acot(n)))]` -/
def P2759931622766510284.Spec : Prop :=
  ∀ n, (P2759931622766510284.a n : ℤ) = A282023 n

end A282023

/-! ## A282023.P6326249125140390815

`a(n-2)/(1/3-1/4)` with `a(0)=1, a(1)=4`
-/

namespace A282023.P6326249125140390815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3 - (1 : ℚ) / 4)

end

end A282023.P6326249125140390815

namespace A282023

/-- `a(n-2)/(1/3-1/4)` -/
def P6326249125140390815.Spec : Prop :=
  ∀ n, P6326249125140390815.a n = (A282023 n : ℚ)

end A282023

/-! ## A282023.P6224702086742847474

`∏[A103947(n)]`
-/

namespace A282023.P6224702086742847474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P6224702086742847474

namespace A282023

/-- `∏[A103947(n)]` -/
def P6224702086742847474.Spec : Prop :=
  ∀ n, P6224702086742847474.a n = A282023 n

end A282023

/-! ## A282023.P15148876485542215694

`2^n*A038754(n)`
-/

namespace A282023.P15148876485542215694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A038754 n

end

end A282023.P15148876485542215694

namespace A282023

/-- `2^n*A038754(n)` -/
def P15148876485542215694.Spec : Prop :=
  ∀ n, P15148876485542215694.a n = A282023 n

end A282023

/-! ## A282023.P8768010882873984979

`∏[A010702(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P8768010882873984979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A010702 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P8768010882873984979

namespace A282023

/-- `∏[A010702(a(n-1))]` -/
def P8768010882873984979.Spec : Prop :=
  ∀ n, P8768010882873984979.a n = A282023 n

end A282023

/-! ## A282023.P58342590926043906

`∏[A049007(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P58342590926043906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A049007 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P58342590926043906

namespace A282023

/-- `∏[A049007(a(n-1))]` -/
def P58342590926043906.Spec : Prop :=
  ∀ n, P58342590926043906.a n = A282023 n

end A282023

/-! ## A282023.P192475594343755880

`∏[A073259(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P192475594343755880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A073259 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P192475594343755880

namespace A282023

/-- `∏[A073259(a(n-1))]` -/
def P192475594343755880.Spec : Prop :=
  ∀ n, P192475594343755880.a n = A282023 n

end A282023

/-! ## A282023.P10827719111608305332

`∏[A075234(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P10827719111608305332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A075234 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P10827719111608305332

namespace A282023

/-- `∏[A075234(a(n-1))]` -/
def P10827719111608305332.Spec : Prop :=
  ∀ n, P10827719111608305332.a n = A282023 n

end A282023

/-! ## A282023.P16517141293515777730

`∏[A083954(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P16517141293515777730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A083954 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P16517141293515777730

namespace A282023

/-- `∏[A083954(a(n-1))]` -/
def P16517141293515777730.Spec : Prop :=
  ∀ n, P16517141293515777730.a n = A282023 n

end A282023

/-! ## A282023.P12578775489728721732

`∏[A106055(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P12578775489728721732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A106055 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P12578775489728721732

namespace A282023

/-- `∏[A106055(a(n-1))]` -/
def P12578775489728721732.Spec : Prop :=
  ∀ n, P12578775489728721732.a n = A282023 n

end A282023

/-! ## A282023.P8968087233579882971

`∏[A111048(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P8968087233579882971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A111048 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P8968087233579882971

namespace A282023

/-- `∏[A111048(a(n-1))]` -/
def P8968087233579882971.Spec : Prop :=
  ∀ n, P8968087233579882971.a n = A282023 n

end A282023

/-! ## A282023.P1980248459772302018

`∏[A117499(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P1980248459772302018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A117499 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P1980248459772302018

namespace A282023

/-- `∏[A117499(a(n-1))]` -/
def P1980248459772302018.Spec : Prop :=
  ∀ n, P1980248459772302018.a n = A282023 n

end A282023

/-! ## A282023.P16364797742629122238

`∏[A122219(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P16364797742629122238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A122219 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P16364797742629122238

namespace A282023

/-- `∏[A122219(a(n-1))]` -/
def P16364797742629122238.Spec : Prop :=
  ∀ n, P16364797742629122238.a n = A282023 n

end A282023

/-! ## A282023.P1486126307310724172

`∏[A131369(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P1486126307310724172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A131369 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P1486126307310724172

namespace A282023

/-- `∏[A131369(a(n-1))]` -/
def P1486126307310724172.Spec : Prop :=
  ∀ n, P1486126307310724172.a n = A282023 n

end A282023

/-! ## A282023.P7023669812946384984

`∏[A136627(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P7023669812946384984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A136627 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P7023669812946384984

namespace A282023

/-- `∏[A136627(a(n-1))]` -/
def P7023669812946384984.Spec : Prop :=
  ∀ n, P7023669812946384984.a n = A282023 n

end A282023

/-! ## A282023.P8353250754895201185

`∏[A161811(a(n-1))]` with `a(0)=1`
-/

namespace A282023.P8353250754895201185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A161811 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A282023.P8353250754895201185

namespace A282023

/-- `∏[A161811(a(n-1))]` -/
def P8353250754895201185.Spec : Prop :=
  ∀ n, P8353250754895201185.a n = A282023 n

end A282023

/-!
# A282024: Define k by A280864(k) = 2^n; then a(n) = A280864(k-1)/2, or -1 if that is not an integer.

The programs for A282024, there is no canonical definition to state claims against.
-/

/-! ## A282024.P14071342647040860949

`A360007(A095944(n+1))`
-/

namespace A282024.P14071342647040860949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360007 (A095944 (n + 1)).toNat

end

end A282024.P14071342647040860949

/-! ## A282024.P1115034361709549874

`A360007(A089054(n)+n)`
-/

namespace A282024.P1115034361709549874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360007 (A089054 n + (n : ℤ)).toNat

end

end A282024.P1115034361709549874

/-! ## A282024.P17336183918609665619

`A360007(∑[∑[A000009(n)]])`
-/

namespace A282024.P17336183918609665619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282024.P17336183918609665619

/-!
# A282025: a(r) is the maximum number of secretaries for which the first r should be rejected, if selecting the one with the highest or lowest ranking are both considered a success.

The programs for A282025, there is no canonical definition to state claims against.
-/

/-! ## A282025.P8259282556515375465

`5*n+4-A195174(A062575(2*(n+2)))`
-/

namespace A282025.P8259282556515375465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 4 : ℤ) - A195174 (A062575 (2 * (n + 2))).toNat

end

end A282025.P8259282556515375465

/-! ## A282025.P5267824143280386810

`A190086(n+1)-A133233(∑[n])`
-/

namespace A282025.P5267824143280386810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190086 (n + 1) - A133233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282025.P5267824143280386810

/-! ## A282025.P286608208728691043

`A190086(n+1)-A001222(A130791(n+1))`
-/

namespace A282025.P286608208728691043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190086 (n + 1) - A001222 (A130791 (n + 1)).toNat

end

end A282025.P286608208728691043

/-! ## A282025.P16707007265222952829

`A190086(n+1)-A054977(A271269(n+1))`
-/

namespace A282025.P16707007265222952829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190086 (n + 1) - A054977 (A271269 (n + 1)).toNat

end

end A282025.P16707007265222952829

/-! ## A282025.P9465991442669313262

`A190086(n+1)-A079978(A292314(n+1))`
-/

namespace A282025.P9465991442669313262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190086 (n + 1) - A079978 (A292314 (n + 1)).toNat

end

end A282025.P9465991442669313262

/-!
# A282027: a(n+1) = smallest prime p > a(n) such that p-1 divides a(1)*a(2)*...*a(n); or if no such prime p exists, then a(n+1) = smallest prime > a(n).

The programs for A282027, there is no canonical definition to state claims against.
-/

/-! ## A282027.P2407034186423609809

`filter[A267504(n+1), A290808(#)]`
-/

namespace A282027.P2407034186423609809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290808 (f1 j).toNat = 1) n)

end

end A282027.P2407034186423609809

/-! ## A282027.P7949943818407186927

`A319126(a(n-3)+7)` with `a(0)=2, a(1)=3, a(2)=7`
-/

namespace A282027.P7949943818407186927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 7] fun n a =>
  A319126 (a (n - 3) + 7).toNat

end

end A282027.P7949943818407186927

/-!
# A282029: a(n) = n - pi(n/2).

The programs for A282029, the canonical program `A282029.P4628424250403549240` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282029 has offset 0).

The definition of A282029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282029.P10565703468580671978

`n-A056172(or(1, n))`
-/

namespace A282029.P10565703468580671978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056172 (Nat.lor 1 n)

end

end A282029.P10565703468580671978

namespace A282029

/-- `n-A056172(or(1, n))` -/
def P10565703468580671978.Spec : Prop :=
  ∀ n, P10565703468580671978.a n = A282029 n

end A282029

/-! ## A282029.P4628424250403549240

`n-A242096(or(1, n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A282029

/-- `n-A242096(or(1, n))` -/
def P4628424250403549240.Spec : Prop :=
  ∀ n, P4628424250403549240.a n = A282029 n

theorem P4628424250403549240.correct : P4628424250403549240.Spec := by
  intro n
  simp only [A282029]

end A282029

/-! ## A282029.P13289364453426849963

`n-abs(Δ[A242096(n)])`
-/

namespace A282029.P13289364453426849963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |f1 (n + 1) - f1 n|

end

end A282029.P13289364453426849963

namespace A282029

/-- `n-abs(Δ[A242096(n)])` -/
def P13289364453426849963.Spec : Prop :=
  ∀ n, P13289364453426849963.a n = A282029 n

end A282029

/-! ## A282029.P1325169482702563988

`∑[and(1, A002126(n)+1)]`
-/

namespace A282029.P1325169482702563988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002126 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282029.P1325169482702563988

namespace A282029

/-- `∑[and(1, A002126(n)+1)]` -/
def P1325169482702563988.Spec : Prop :=
  ∀ n, P1325169482702563988.a n = A282029 n

end A282029

/-! ## A282029.P10248424658769095101

`n-A230980(floor(n/2))`
-/

namespace A282029.P10248424658769095101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A230980 ⌊(n : ℚ) / 2⌋.toNat

end

end A282029.P10248424658769095101

namespace A282029

/-- `n-A230980(floor(n/2))` -/
def P10248424658769095101.Spec : Prop :=
  ∀ n, P10248424658769095101.a n = A282029 n

end A282029

/-! ## A282029.P6778344008134996459

`n-∑[char[A100484(n+1)]]`
-/

namespace A282029.P6778344008134996459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A282029.P6778344008134996459

namespace A282029

/-- `n-∑[char[A100484(n+1)]]` -/
def P6778344008134996459.Spec : Prop :=
  ∀ n, P6778344008134996459.a n = A282029 n

end A282029

/-! ## A282029.P4784774351679040688

`∑[char[comp[A076274(n+2)]+1]]`
-/

namespace A282029.P4784774351679040688
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282029.P4784774351679040688

namespace A282029

/-- `∑[char[comp[A076274(n+2)]+1]]` -/
def P4784774351679040688.Spec : Prop :=
  ∀ n, (P4784774351679040688.a n : ℤ) = A282029 n

end A282029

/-! ## A282029.P9278883710687806587

`a(n-1)+1-A353478(n)` with `a(0)=0`
-/

namespace A282029.P9278883710687806587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A353478 n)

end

end A282029.P9278883710687806587

namespace A282029

/-- `a(n-1)+1-A353478(n)` -/
def P9278883710687806587.Spec : Prop :=
  ∀ n, P9278883710687806587.a n = A282029 n

end A282029

/-! ## A282029.P4515914536624997699

`n-∑[char[2*A000040(n+1)]]`
-/

namespace A282029.P4515914536624997699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A282029.P4515914536624997699

namespace A282029

/-- `n-∑[char[2*A000040(n+1)]]` -/
def P4515914536624997699.Spec : Prop :=
  ∀ n, P4515914536624997699.a n = A282029 n

end A282029

/-! ## A282029.P16331696109888308691

`∑[char[comp[2*A006530(n+2)]]]-1`
-/

namespace A282029.P16331696109888308691
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A282029.P16331696109888308691

namespace A282029

/-- `∑[char[comp[2*A006530(n+2)]]]-1` -/
def P16331696109888308691.Spec : Prop :=
  ∀ n, P16331696109888308691.a n = A282029 n

end A282029

/-! ## A282029.P15287935683161313599

`abs(∑[char[2*A020639(n+2)]]-n)`
-/

namespace A282029.P15287935683161313599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A282029.P15287935683161313599

namespace A282029

/-- `abs(∑[char[2*A020639(n+2)]]-n)` -/
def P15287935683161313599.Spec : Prop :=
  ∀ n, P15287935683161313599.a n = A282029 n

end A282029

/-! ## A282029.P3106169996687021232

`n-A056172(A028310(n))`
-/

namespace A282029.P3106169996687021232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056172 (A028310 n).toNat

end

end A282029.P3106169996687021232

namespace A282029

/-- `n-A056172(A028310(n))` -/
def P3106169996687021232.Spec : Prop :=
  ∀ n, P3106169996687021232.a n = A282029 n

end A282029

/-! ## A282029.P13521530942218579300

`n-A056172(A109613(n))`
-/

namespace A282029.P13521530942218579300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056172 (A109613 n).toNat

end

end A282029.P13521530942218579300

namespace A282029

/-- `n-A056172(A109613(n))` -/
def P13521530942218579300.Spec : Prop :=
  ∀ n, P13521530942218579300.a n = A282029 n

end A282029

/-! ## A282029.P11031215710457659506

`∑[A000035(A002126(n)+1)]`
-/

namespace A282029.P11031215710457659506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002126 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282029.P11031215710457659506

namespace A282029

/-- `∑[A000035(A002126(n)+1)]` -/
def P11031215710457659506.Spec : Prop :=
  ∀ n, P11031215710457659506.a n = A282029 n

end A282029

/-! ## A282029.P5302383382389571650

`∑[A000035(xor(1, A002126(n)))]`
-/

namespace A282029.P5302383382389571650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor 1 (A002126 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282029.P5302383382389571650

namespace A282029

/-- `∑[A000035(xor(1, A002126(n)))]` -/
def P5302383382389571650.Spec : Prop :=
  ∀ n, P5302383382389571650.a n = A282029 n

end A282029

/-! ## A282029.P11077805141790305946

`n-A056172(A000038(n)+n)`
-/

namespace A282029.P11077805141790305946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056172 (A000038 n + (n : ℤ)).toNat

end

end A282029.P11077805141790305946

namespace A282029

/-- `n-A056172(A000038(n)+n)` -/
def P11077805141790305946.Spec : Prop :=
  ∀ n, P11077805141790305946.a n = A282029 n

end A282029

/-! ## A282029.P13682143485241140176

`n-∑[char[A005843(A000040(n+1))]]`
-/

namespace A282029.P13682143485241140176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000040 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A282029.P13682143485241140176

namespace A282029

/-- `n-∑[char[A005843(A000040(n+1))]]` -/
def P13682143485241140176.Spec : Prop :=
  ∀ n, P13682143485241140176.a n = A282029 n

end A282029

/-! ## A282029.P15842418944585477865

`A266715(n+1)-A266714(n+1)+n`
-/

namespace A282029.P15842418944585477865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (n + 1) - A266714 (n + 1) + (n : ℤ)

end

end A282029.P15842418944585477865

namespace A282029

/-- `A266715(n+1)-A266714(n+1)+n` -/
def P15842418944585477865.Spec : Prop :=
  ∀ n, P15842418944585477865.a n = A282029 n

end A282029

/-! ## A282029.P4144936978318923161

`n-A056811(A033638(n))`
-/

namespace A282029.P4144936978318923161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056811 (A033638 n).toNat

end

end A282029.P4144936978318923161

namespace A282029

/-- `n-A056811(A033638(n))` -/
def P4144936978318923161.Spec : Prop :=
  ∀ n, P4144936978318923161.a n = A282029 n

end A282029

/-!
# A282030: Numerators in an "almost partition identity".

The programs for A282030, there is no canonical definition to state claims against.
-/

/-! ## A282030.P16866943664225361802

`A302843(A302287(n)+A180780(n+1))`
-/

namespace A282030.P16866943664225361802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A302287 n + A180780 (n + 1)).toNat

end

end A282030.P16866943664225361802

/-!
# A282031: Coefficients in q-expansion of (9*E_2(q^3)-E_2(q))/8.

The programs for A282031, there is no canonical definition to state claims against.
-/

/-! ## A282031.P7357582866938300809

`A008653(n)*A131943(n)/A186100(n)`
-/

namespace A282031.P7357582866938300809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n * A131943 n : ℚ) / (A186100 n : ℚ)

end

end A282031.P7357582866938300809

/-!
# A282032: Additive number system based on U.S. coins.

The programs for A282032, there is no canonical definition to state claims against.
-/

/-! ## A282032.P8983036558615397059

`∑[∏[A320887(A105602(3*n+5))]]`
-/

namespace A282032.P8983036558615397059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320887 (A105602 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282032.P8983036558615397059

/-!
# A282033: An example of a collection of five sets (based on U.S. coinage) which is not an additive number system.

The programs for A282033, there is no canonical definition to state claims against.
-/

/-! ## A282033.P9046850715901304228

`eq[A277231(n+1), A289772(n)]`
-/

namespace A282033.P9046850715901304228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282033.P9046850715901304228

/-!
# A282034: Three-set non-British additive number system read by rows.

The programs for A282034, there is no canonical definition to state claims against.
-/

/-! ## A282034.P10501689646642290687

`∑[A040533((n+1)^4)]`
-/

namespace A282034.P10501689646642290687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040533 ((n + 1) ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282034.P10501689646642290687

/-! ## A282034.P6336524816823714914

`∑[A051340(∑[(6*n)²])]`
-/

namespace A282034.P6336524816823714914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282034.P6336524816823714914

/-! ## A282034.P14462968307809037869

`A326351(floor(sqrt(n))²)+n`
-/

namespace A282034.P14462968307809037869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326351 (Nat.sqrt n ^ 2) + (n : ℤ)

end

end A282034.P14462968307809037869

/-! ## A282034.P16383795273525255011

`∑[A061446((n*val(n+1, 5))!)]`
-/

namespace A282034.P16383795273525255011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (Nat.factorial (n * SequenceMachineLib.valuation (n + 1) 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282034.P16383795273525255011

/-! ## A282034.P12423007971543545592

`∑[A061446((n^val(n+1, 5))!)]`
-/

namespace A282034.P12423007971543545592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (Nat.factorial (n ^ SequenceMachineLib.valuation (n + 1) 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282034.P12423007971543545592

/-!
# A282035: Sum of quadratic residues of (n-th prime == 3 mod 4).

The programs for A282035, there is no canonical definition to state claims against.
-/

/-! ## A282035.P17606931553894826473

`A076409(A080148(n+1))`
-/

namespace A282035.P17606931553894826473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076409 (A080148 (n + 1)).toNat

end

end A282035.P17606931553894826473

/-! ## A282035.P8696825304546307018

`A166100(A104635(n+1))`
-/

namespace A282035.P8696825304546307018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A104635 (n + 1)).toNat

end

end A282035.P8696825304546307018

/-! ## A282035.P16603230441415956094

`A282036(n+1)-A282037(n+1)`
-/

namespace A282035.P16603230441415956094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282036 (n + 1) - A282037 (n + 1)

end

end A282035.P16603230441415956094

/-! ## A282035.P4846165880674459266

`A165909(A002145(n+1))`
-/

namespace A282035.P4846165880674459266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A002145 (n + 1)).toNat

end

end A282035.P4846165880674459266

/-! ## A282035.P16323682027537568032

`A165909(A045326(n+2))`
-/

namespace A282035.P16323682027537568032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A045326 (n + 2)).toNat

end

end A282035.P16323682027537568032

/-! ## A282035.P1311588270604128016

`A165909(A281664(n+2)+1)`
-/

namespace A282035.P1311588270604128016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A281664 (n + 2) + 1).toNat

end

end A282035.P1311588270604128016

/-! ## A282035.P18212346682240996449

`A165909(p?[A084060(n+1)-n])`
-/

namespace A282035.P18212346682240996449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282035.P18212346682240996449

/-! ## A282035.P9863068851312081484

`A165909(record[A125254(n+1)])`
-/

namespace A282035.P9863068851312081484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282035.P9863068851312081484

/-!
# A282036: a(n) is the sum of quadratic nonresidues of A002145(n) (the n-th prime == 3 mod 4).

The programs for A282036, there is no canonical definition to state claims against.
-/

/-! ## A282036.P18282748180675515286

`A166405(A104635(n+1))`
-/

namespace A282036.P18282748180675515286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A104635 (n + 1)).toNat

end

end A282036.P18282748180675515286

/-! ## A282036.P5947259589819931973

`A166405(A090670(n+1)-2)`
-/

namespace A282036.P5947259589819931973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A090670 (n + 1) - 2).toNat

end

end A282036.P5947259589819931973

/-! ## A282036.P17995243147737788425

`A166405(floor(A002145(n+1)/2))`
-/

namespace A282036.P17995243147737788425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 ⌊(A002145 (n + 1) : ℚ) / 2⌋.toNat

end

end A282036.P17995243147737788425

/-! ## A282036.P18023273112022738375

`A166405((A002145(n+1)-1)/2)`
-/

namespace A282036.P18023273112022738375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (SequenceMachineLib.roundAway ((A002145 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A282036.P18023273112022738375

/-! ## A282036.P2203531904915471003

`A282037(n+1)+A282035(n+1)`
-/

namespace A282036.P2203531904915471003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282037 (n + 1) + A282035 (n + 1)

end

end A282036.P2203531904915471003

/-! ## A282036.P10844096365562885869

`A166405(eq[A020639(n+1), A051612(2*n+1)])`
-/

namespace A282036.P10844096365562885869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282036.P10844096365562885869

/-! ## A282036.P8561102738726132222

`A165186(A002145(n+1))/2`
-/

namespace A282036.P8561102738726132222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165186 (A002145 (n + 1)).toNat : ℚ) / 2

end

end A282036.P8561102738726132222

/-! ## A282036.P12252227733613855716

`A125615(A080148(n+1))`
-/

namespace A282036.P12252227733613855716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125615 (A080148 (n + 1)).toNat

end

end A282036.P12252227733613855716

/-! ## A282036.P7270173779573237636

`A165898(p?[A003815(n)])`
-/

namespace A282036.P7270173779573237636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282036.P7270173779573237636

/-! ## A282036.P492197390852035203

`A165898(p?[A014601(n)])`
-/

namespace A282036.P492197390852035203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282036.P492197390852035203

/-!
# A282037: Let p = n-th prime == 3 mod 4; a(n) = (sum of quadratic nonresidues mod p) - (sum of quadratic residues mod p).

The programs for A282037, there is no canonical definition to state claims against.
-/

/-! ## A282037.P9428391807872918113

`A166406(A104635(n+1))`
-/

namespace A282037.P9428391807872918113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (A104635 (n + 1)).toNat

end

end A282037.P9428391807872918113

/-! ## A282037.P16052319947736294340

`A282038(A080148(n+1))`
-/

namespace A282037.P16052319947736294340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (A080148 (n + 1)).toNat

end

end A282037.P16052319947736294340

/-! ## A282037.P10574076157779051031

`A282038(A138971(n+1)+1)`
-/

namespace A282037.P10574076157779051031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (A138971 (n + 1) + 1).toNat

end

end A282037.P10574076157779051031

/-! ## A282037.P15221808331779779427

`A282038(lt[2, A039702(n+1)]+1)`
-/

namespace A282037.P15221808331779779427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A282037.P15221808331779779427

/-! ## A282037.P12591983495899801252

`A282038(lt[(A006093(n+1)+2)%4, 1]+1)`
-/

namespace A282037.P12591983495899801252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 2) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A282037.P12591983495899801252

/-! ## A282037.P11994418882326334938

`A282038(lt[and(6, -(A072055(n+1)+1)), 2]+1)`
-/

namespace A282037.P11994418882326334938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (-(A072055 (n + 1) + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A282037.P11994418882326334938

/-! ## A282037.P2211981045670622321

`A282036(n+1)-A282035(n+1)`
-/

namespace A282037.P2211981045670622321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282036 (n + 1) - A282035 (n + 1)

end

end A282037.P2211981045670622321

/-! ## A282037.P12720052138708246484

`gcd(A002145(n+1), A282035(n+1))*A002143(n+1)`
-/

namespace A282037.P12720052138708246484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002145 (n + 1)) (A282035 (n + 1)) : ℤ) * A002143 (n + 1)

end

end A282037.P12720052138708246484

/-! ## A282037.P9775262675448412206

`A282038(A000720(p?[4*n-1]))`
-/

namespace A282037.P9775262675448412206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A282037.P9775262675448412206

/-! ## A282037.P4080791600544628489

`2-4/2-A228131(A002145(n+1))`
-/

namespace A282037.P4080791600544628489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 - (A228131 (A002145 (n + 1)).toNat : ℚ)

end

end A282037.P4080791600544628489

/-! ## A282037.P4464298953876531349

`filter[A282038(n+2), A368916(#)]`
-/

namespace A282037.P4464298953876531349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A282037.P4464298953876531349

/-! ## A282037.P1210893653257622933

`filter[A282038(n+2), A098725(#)]`
-/

namespace A282037.P1210893653257622933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A282037.P1210893653257622933

/-! ## A282037.P6146969307635314564

`filter[A282038(n+2), A115971(#)]`
-/

namespace A282037.P6146969307635314564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A282037.P6146969307635314564

/-! ## A282037.P8502600168585659060

`filter[A282038(n+2), A166486(#)]`
-/

namespace A282037.P8502600168585659060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A282037.P8502600168585659060

/-! ## A282037.P17670345671610369182

`filter[A282038(n+2), A168185(#)]`
-/

namespace A282037.P17670345671610369182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A282037.P17670345671610369182

/-!
# A282038: (Sum of the quadratic nonresidues of prime(n)) - (sum of the quadratic residues of prime(n)).

The programs for A282038, there is no canonical definition to state claims against.
-/

/-! ## A282038.P14716437639308668171

`A166406(A102781(n+1))`
-/

namespace A282038.P14716437639308668171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (A102781 (n + 1)).toNat

end

end A282038.P14716437639308668171

/-! ## A282038.P16927434526031422698

`A008837(n+1)-2*A076409(n+1)`
-/

namespace A282038.P16927434526031422698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) - 2 * A076409 (n + 1)

end

end A282038.P16927434526031422698

/-! ## A282038.P3253685260811891730

`A166405(A102781(n+1))-A166100(A130290(n+1))`
-/

namespace A282038.P3253685260811891730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A102781 (n + 1)).toNat - A166100 (A130290 (n + 1)).toNat

end

end A282038.P3253685260811891730

/-! ## A282038.P4925094296163656681

`-A228131(A000040(n+1))`
-/

namespace A282038.P4925094296163656681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A228131 (A000040 (n + 1)).toNat

end

end A282038.P4925094296163656681

/-! ## A282038.P11977381855646853208

`A166406(lt[A001055(2*n+1), 2])`
-/

namespace A282038.P11977381855646853208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A282038.P11977381855646853208

/-! ## A282038.P11550522002917461444

`A166406(lt[A078898(2*n+1), 2])`
-/

namespace A282038.P11550522002917461444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166406 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A282038.P11550522002917461444

/-! ## A282038.P2898556691350745836

`A125615(n+1)-A076409(n+1)`
-/

namespace A282038.P2898556691350745836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125615 (n + 1) - A076409 (n + 1)

end

end A282038.P2898556691350745836

/-! ## A282038.P2263730697358444638

`2*A125615(n+1)-A008837(n+1)`
-/

namespace A282038.P2263730697358444638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125615 (n + 1) - A008837 (n + 1)

end

end A282038.P2263730697358444638

/-! ## A282038.P15413224923963741005

`A125615(n+1)-A166100(A102781(n+1))`
-/

namespace A282038.P15413224923963741005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125615 (n + 1) - A166100 (A102781 (n + 1)).toNat

end

end A282038.P15413224923963741005

/-!
# A282039: Let p = n-th prime == 7 mod 8; a(n) = sum of quadratic residues mod p that are < p/2.

The programs for A282039, the canonical program `A282039.P14747219083662801215` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282039 has offset 1).

The definition of A282039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282039.P14747219083662801215

`floor((p?[8*n-1]/4)²)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282039

/-- `floor((p?[8*n-1]/4)²)` -/
def P14747219083662801215.Spec : Prop :=
  ∀ n, P14747219083662801215.a n = A282039 (n + 1)

theorem P14747219083662801215.correct : P14747219083662801215.Spec := by
  intro n
  simp only [A282039, Nat.add_sub_cancel]

end A282039

/-! ## A282039.P18350064552271847967

`3/2*A060108(n+1)`
-/

namespace A282039.P18350064552271847967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A060108 (n + 1) : ℚ)

end

end A282039.P18350064552271847967

namespace A282039

/-- `3/2*A060108(n+1)` -/
def P18350064552271847967.Spec : Prop :=
  ∀ n, P18350064552271847967.a n = (A282039 (n + 1) : ℚ)

end A282039

/-! ## A282039.P2240742883068106973

`floor((A007522(n+1)/4)²)`
-/

namespace A282039.P2240742883068106973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A007522 (n + 1) : ℚ) / 4) ^ 2⌋

end

end A282039.P2240742883068106973

namespace A282039

/-- `floor((A007522(n+1)/4)²)` -/
def P2240742883068106973.Spec : Prop :=
  ∀ n, P2240742883068106973.a n = A282039 (n + 1)

theorem P2240742883068106973.correct : P2240742883068106973.Spec := by
  intro n
  simp only [A282039, Nat.add_sub_cancel, A282039.P2240742883068106973.a, A282039.P14747219083662801215.f1, A282039.P14747219083662801215.a, A007522, A007522.P292576302828348404.f1, A007522.P292576302828348404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282039

/-! ## A282039.P8394124743979831068

`A005122(n+1)*A186302(n+1)`
-/

namespace A282039.P8394124743979831068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) * A186302 (n + 1)

end

end A282039.P8394124743979831068

namespace A282039

/-- `A005122(n+1)*A186302(n+1)` -/
def P8394124743979831068.Spec : Prop :=
  ∀ n, P8394124743979831068.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P1353744662137276325

`(A139487(n+1)+1)*A186302(n+1)`
-/

namespace A282039.P1353744662137276325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139487 (n + 1) + 1) * A186302 (n + 1)

end

end A282039.P1353744662137276325

namespace A282039

/-- `(A139487(n+1)+1)*A186302(n+1)` -/
def P1353744662137276325.Spec : Prop :=
  ∀ n, P1353744662137276325.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P15638403646825122339

`A282041(n+1)-A282040(n+1)`
-/

namespace A282039.P15638403646825122339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282041 (n + 1) - A282040 (n + 1)

end

end A282039.P15638403646825122339

namespace A282039

/-- `A282041(n+1)-A282040(n+1)` -/
def P15638403646825122339.Spec : Prop :=
  ∀ n, P15638403646825122339.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P17562110531151790475

`A033991(A005122(n+1))`
-/

namespace A282039.P17562110531151790475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 (A005122 (n + 1)).toNat

end

end A282039.P17562110531151790475

namespace A282039

/-- `A033991(A005122(n+1))` -/
def P17562110531151790475.Spec : Prop :=
  ∀ n, P17562110531151790475.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P12939815472773257288

`(A153766(n+1)-1)*A131098(A153766(n+1))`
-/

namespace A282039.P12939815472773257288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153766 (n + 1) - 1) * A131098 (A153766 (n + 1)).toNat

end

end A282039.P12939815472773257288

namespace A282039

/-- `(A153766(n+1)-1)*A131098(A153766(n+1))` -/
def P12939815472773257288.Spec : Prop :=
  ∀ n, P12939815472773257288.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P3644343868876089789

`A000217(A186302(n+1))/2`
-/

namespace A282039.P3644343868876089789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A186302 (n + 1)).toNat : ℚ) / 2

end

end A282039.P3644343868876089789

namespace A282039

/-- `A000217(A186302(n+1))/2` -/
def P3644343868876089789.Spec : Prop :=
  ∀ n, P3644343868876089789.a n = (A282039 (n + 1) : ℚ)

end A282039

/-! ## A282039.P11475258304130781170

`A011848(A186303(n+1))`
-/

namespace A282039.P11475258304130781170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (A186303 (n + 1)).toNat

end

end A282039.P11475258304130781170

namespace A282039

/-- `A011848(A186303(n+1))` -/
def P11475258304130781170.Spec : Prop :=
  ∀ n, P11475258304130781170.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P412330072079452206

`A011848(A186302(n+1)+1)`
-/

namespace A282039.P412330072079452206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (A186302 (n + 1) + 1).toNat

end

end A282039.P412330072079452206

namespace A282039

/-- `A011848(A186302(n+1)+1)` -/
def P412330072079452206.Spec : Prop :=
  ∀ n, P412330072079452206.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P14402729236383004741

`A002265(A186302(n+1)+1)*A186302(n+1)`
-/

namespace A282039.P14402729236383004741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A186302 (n + 1) + 1).toNat * A186302 (n + 1)

end

end A282039.P14402729236383004741

namespace A282039

/-- `A002265(A186302(n+1)+1)*A186302(n+1)` -/
def P14402729236383004741.Spec : Prop :=
  ∀ n, P14402729236383004741.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P2951670713819622387

`A220838(p?[8*n-1]+1)`
-/

namespace A282039.P2951670713819622387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A282039.P2951670713819622387

namespace A282039

/-- `A220838(p?[8*n-1]+1)` -/
def P2951670713819622387.Spec : Prop :=
  ∀ n, P2951670713819622387.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P10426122509018057076

`A056822(A007522(n+1))`
-/

namespace A282039.P10426122509018057076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 (A007522 (n + 1)).toNat

end

end A282039.P10426122509018057076

namespace A282039

/-- `A056822(A007522(n+1))` -/
def P10426122509018057076.Spec : Prop :=
  ∀ n, P10426122509018057076.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P14310080414957095397

`A056822(A045382(n+2))`
-/

namespace A282039.P14310080414957095397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 (A045382 (n + 2)).toNat

end

end A282039.P14310080414957095397

namespace A282039

/-- `A056822(A045382(n+2))` -/
def P14310080414957095397.Spec : Prop :=
  ∀ n, P14310080414957095397.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P14669263722199983396

`A002620(p?[A004771(n)])/4`
-/

namespace A282039.P14669263722199983396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 4

end

end A282039.P14669263722199983396

namespace A282039

/-- `A002620(p?[A004771(n)])/4` -/
def P14669263722199983396.Spec : Prop :=
  ∀ n, P14669263722199983396.a n = (A282039 (n + 1) : ℚ)

end A282039

/-! ## A282039.P16791847154135058912

`A220838(A045382(n+2)+1)`
-/

namespace A282039.P16791847154135058912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (A045382 (n + 2) + 1).toNat

end

end A282039.P16791847154135058912

namespace A282039

/-- `A220838(A045382(n+2)+1)` -/
def P16791847154135058912.Spec : Prop :=
  ∀ n, P16791847154135058912.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P2818624822882555942

`A220838(2*(A186302(n+1)+1))`
-/

namespace A282039.P2818624822882555942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (2 * (A186302 (n + 1) + 1)).toNat

end

end A282039.P2818624822882555942

namespace A282039

/-- `A220838(2*(A186302(n+1)+1))` -/
def P2818624822882555942.Spec : Prop :=
  ∀ n, P2818624822882555942.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P9202077326955071746

`A220838(A186302(n+1)+A186302(n+1)+2)`
-/

namespace A282039.P9202077326955071746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (A186302 (n + 1) + (A186302 (n + 1) + 2)).toNat

end

end A282039.P9202077326955071746

namespace A282039

/-- `A220838(A186302(n+1)+A186302(n+1)+2)` -/
def P9202077326955071746.Spec : Prop :=
  ∀ n, P9202077326955071746.a n = A282039 (n + 1)

end A282039

/-! ## A282039.P17253484410683652387

`A115000(2*A007522(n+1))/2`
-/

namespace A282039.P17253484410683652387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115000 (2 * A007522 (n + 1)).toNat : ℚ) / 2

end

end A282039.P17253484410683652387

namespace A282039

/-- `A115000(2*A007522(n+1))/2` -/
def P17253484410683652387.Spec : Prop :=
  ∀ n, P17253484410683652387.a n = (A282039 (n + 1) : ℚ)

end A282039

/-!
# A282040: Let p = n-th prime == 7 mod 8; a(n) = sum of quadratic residues mod p that are > p/2.

The programs for A282040, there is no canonical definition to state claims against.
-/

/-! ## A282040.P6559718292162182261

`A282041(n+1)-floor((p?[8*n-1]/4)²)`
-/

namespace A282040.P6559718292162182261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282041 (n + 1) - ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4) ^ 2⌋

end

end A282040.P6559718292162182261

/-! ## A282040.P4551840087458972339

`A282041(n+1)-A282039(n+1)`
-/

namespace A282040.P4551840087458972339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282041 (n + 1) - A282039 (n + 1)

end

end A282040.P4551840087458972339

/-! ## A282040.P1385640162676910383

`A282041(n+1)-3/2*A060108(n+1)`
-/

namespace A282040.P1385640162676910383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282041 (n + 1) : ℚ) - (3 : ℚ) / 2 * (A060108 (n + 1) : ℚ)

end

end A282040.P1385640162676910383

/-! ## A282040.P1437253951231890060

`A165909(p?[8*n-1])-floor((p?[8*n-1]/4)²)`
-/

namespace A282040.P1437253951231890060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - ⌊((f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 4) ^ 2⌋

end

end A282040.P1437253951231890060

/-! ## A282040.P15547539243324295572

`A165909(p?[8*n-1])-A282039(n+1)`
-/

namespace A282040.P15547539243324295572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A282039 (n + 1)

end

end A282040.P15547539243324295572

/-!
# A282041: Let p = n-th prime == 7 mod 8; a(n) = sum of quadratic residues mod p.

The programs for A282041, there is no canonical definition to state claims against.
-/

/-! ## A282041.P3496472554235578368

`A166100(A186302(n+1))`
-/

namespace A282041.P3496472554235578368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A186302 (n + 1)).toNat

end

end A282041.P3496472554235578368

/-! ## A282041.P4400406926583200671

`A166100(A186303(n+1)-1)`
-/

namespace A282041.P4400406926583200671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A186303 (n + 1) - 1).toNat

end

end A282041.P4400406926583200671

/-! ## A282041.P974858349548345602

`A282040(n+1)+A282039(n+1)`
-/

namespace A282041.P974858349548345602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282040 (n + 1) + A282039 (n + 1)

end

end A282041.P974858349548345602

/-! ## A282041.P5128730706109682887

`A007522(n+1)*A186302(n+1)-A166405(A186302(n+1))`
-/

namespace A282041.P5128730706109682887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) * A186302 (n + 1) - A166405 (A186302 (n + 1)).toNat

end

end A282041.P5128730706109682887

/-! ## A282041.P4202361052049570192

`A165909(p?[8*n-1])`
-/

namespace A282041.P4202361052049570192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282041.P4202361052049570192

/-! ## A282041.P12008109632470498038

`A165909(A007522(n+1))`
-/

namespace A282041.P12008109632470498038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A007522 (n + 1)).toNat

end

end A282041.P12008109632470498038

/-! ## A282041.P8791866709853339194

`A165909(A045382(n+2))`
-/

namespace A282041.P8791866709853339194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A045382 (n + 2)).toNat

end

end A282041.P8791866709853339194

/-! ## A282041.P13505488838883944027

`A165909(record[A125254(2*(n+1))])`
-/

namespace A282041.P13505488838883944027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125254 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282041.P13505488838883944027

/-!
# A282042: Let p = n-th prime == 7 mod 8; a(n) = sum of quadratic nonresidues mod p that are > p/2.

The programs for A282042, there is no canonical definition to state claims against.
-/

/-! ## A282042.P15889679900139793161

`C(p?[8*n-1], 2)-A282041(n+1)-A282039(n+1)`
-/

namespace A282042.P15889679900139793161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2 : ℤ) - A282041 (n + 1) - A282039 (n + 1)

end

end A282042.P15889679900139793161

/-! ## A282042.P12592627399334269659

`C(p?[8*n-1], 2)-A282041(n+1)-3/2*A060108(n+1)`
-/

namespace A282042.P12592627399334269659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2 : ℤ) - A282041 (n + 1) : ℚ) - (3 : ℚ) / 2 * (A060108 (n + 1) : ℚ)

end

end A282042.P12592627399334269659

/-! ## A282042.P9921493854748439600

`A166405(A186302(n+1))-A282039(n+1)`
-/

namespace A282042.P9921493854748439600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186302 (n + 1)).toNat - A282039 (n + 1)

end

end A282042.P9921493854748439600

/-! ## A282042.P6343343827289712055

`A166405(A186302(n+1))-3/2*A060108(n+1)`
-/

namespace A282042.P6343343827289712055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166405 (A186302 (n + 1)).toNat : ℚ) - (3 : ℚ) / 2 * (A060108 (n + 1) : ℚ)

end

end A282042.P6343343827289712055

/-! ## A282042.P13996578982405622714

`A166405(A186302(n+1))-floor((A007522(n+1)/4)²)`
-/

namespace A282042.P13996578982405622714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186302 (n + 1)).toNat - ⌊((A007522 (n + 1) : ℚ) / 4) ^ 2⌋

end

end A282042.P13996578982405622714

/-! ## A282042.P7565241704164429260

`A166405(A186302(n+1))-A033991(A005122(n+1))`
-/

namespace A282042.P7565241704164429260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186302 (n + 1)).toNat - A033991 (A005122 (n + 1)).toNat

end

end A282042.P7565241704164429260

/-! ## A282042.P3191018366510209145

`A166405(A186302(n+1))-A011848(A186303(n+1))`
-/

namespace A282042.P3191018366510209145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186302 (n + 1)).toNat - A011848 (A186303 (n + 1)).toNat

end

end A282042.P3191018366510209145

/-! ## A282042.P12310346633822215907

`A166405(A186302(n+1))-A220838(p?[8*n-1]+1)`
-/

namespace A282042.P12310346633822215907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186302 (n + 1)).toNat - A220838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A282042.P12310346633822215907

/-! ## A282042.P1315917497704738651

`A166405(A186302(n+1))-A115000(2*A007522(n+1))/2`
-/

namespace A282042.P1315917497704738651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166405 (A186302 (n + 1)).toNat : ℚ) - (A115000 (2 * A007522 (n + 1)).toNat : ℚ) / 2

end

end A282042.P1315917497704738651

/-!
# A282043: Let p = n-th prime == 7 mod 8; a(n) = sum of quadratic nonresidues mod p.

The programs for A282043, there is no canonical definition to state claims against.
-/

/-! ## A282043.P7720997842959646094

`C(p?[8*n-1], 2)-A282041(n+1)`
-/

namespace A282043.P7720997842959646094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2 : ℤ) - A282041 (n + 1)

end

end A282043.P7720997842959646094

/-! ## A282043.P18407463082185046501

`A282042(n+1)+floor((p?[8*n-1]/4)²)`
-/

namespace A282043.P18407463082185046501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282042 (n + 1) + ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4) ^ 2⌋

end

end A282043.P18407463082185046501

/-! ## A282043.P9736559440921975864

`A165898(p?[A004771(n)])`
-/

namespace A282043.P9736559440921975864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282043.P9736559440921975864

/-! ## A282043.P12346524406690312579

`A165898(p?[A133655(n)])`
-/

namespace A282043.P12346524406690312579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282043.P12346524406690312579

/-! ## A282043.P4753916094083719403

`A165898(A007522(n+1))`
-/

namespace A282043.P4753916094083719403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A007522 (n + 1)).toNat

end

end A282043.P4753916094083719403

/-!
# A282044: Reduced Kronecker coefficients for the case a=2, b=3, i=4.

The programs for A282044, there is no canonical definition to state claims against.
-/

/-! ## A282044.P7943142333976006197

`or(A339825(A003154(3*(n+1))), A360419(n+1))`
-/

namespace A282044.P7943142333976006197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A339825 (A003154 (3 * (n + 1))).toNat) (A360419 (n + 1))

end

end A282044.P7943142333976006197

/-!
# A282049: Least prime p such that n divides sigma(p*n).

The programs for A282049, there is no canonical definition to state claims against.
-/

/-! ## A282049.P4418254097247121005

`A038700(n+1)%A266798(A097332(n))`
-/

namespace A282049.P4418254097247121005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038700 (n + 1)) (A266798 (A097332 n).toNat)

end

end A282049.P4418254097247121005

/-! ## A282049.P4090067463336999192

`((n+1)*A053989(n+1)-1)%A266798(A097332(n))`
-/

namespace A282049.P4090067463336999192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A053989 (n + 1) - 1) (A266798 (A097332 n).toNat)

end

end A282049.P4090067463336999192

/-! ## A282049.P15545587763855713936

`A000040(A219109(n+1))%A266798(A097332(n))`
-/

namespace A282049.P15545587763855713936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A219109 (n + 1)).toNat) (A266798 (A097332 n).toNat)

end

end A282049.P15545587763855713936

/-! ## A282049.P18080781109344695388

`A008578(A219109(n+1)+1)%A266798(A097332(n))`
-/

namespace A282049.P18080781109344695388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A219109 (n + 1) + 1).toNat) (A266798 (A097332 n).toNat)

end

end A282049.P18080781109344695388

/-! ## A282049.P17219413052805639041

`A182986(A219109(n+1)+1)%A266798(A097332(n))`
-/

namespace A282049.P17219413052805639041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182986 (A219109 (n + 1) + 1).toNat) (A266798 (A097332 n).toNat)

end

end A282049.P17219413052805639041

/-!
# A282050: Coefficients in q-expansion of (E_4^2 - E_2*E_6)/1008, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A282050, the canonical program `A282050.P1008104855356694622` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282050 has offset 0).

The definition of A282050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282050.P1008104855356694622

`∑{d}[n, n*#^5]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282050

/-- `∑{d}[n, n*#^5]` -/
def P1008104855356694622.Spec : Prop :=
  ∀ n, (P1008104855356694622.a n : ℤ) = A282050 n

theorem P1008104855356694622.correct : P1008104855356694622.Spec := by
  intro n
  simp only [A282050]

end A282050

/-! ## A282050.P9166434941037196435

`n*∑{d}[n, #*A000583(#)]`
-/

namespace A282050.P9166434941037196435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000583 d)

end

end A282050.P9166434941037196435

namespace A282050

/-- `n*∑{d}[n, #*A000583(#)]` -/
def P9166434941037196435.Spec : Prop :=
  ∀ n, P9166434941037196435.a n = A282050 n

end A282050

/-! ## A282050.P4902293035746528400

`n*A001160(abs(1-n)+1)`
-/

namespace A282050.P4902293035746528400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001160 (|1 - (n : ℤ)| + 1).toNat

end

end A282050.P4902293035746528400

namespace A282050

/-- `n*A001160(abs(1-n)+1)` -/
def P4902293035746528400.Spec : Prop :=
  ∀ n, P4902293035746528400.a n = A282050 n

end A282050

/-! ## A282050.P13421964610598926748

`A282751(n)/A028310(n)`
-/

namespace A282050.P13421964610598926748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282751 n : ℚ) / (A028310 n : ℚ)

end

end A282050.P13421964610598926748

namespace A282050

/-- `A282751(n)/A028310(n)` -/
def P13421964610598926748.Spec : Prop :=
  ∀ n, P13421964610598926748.a n = (A282050 n : ℚ)

end A282050

/-! ## A282050.P9004859965645171076

`A282781(n)/A253909(n)`
-/

namespace A282050.P9004859965645171076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A253909 n : ℚ)

end

end A282050.P9004859965645171076

namespace A282050

/-- `A282781(n)/A253909(n)` -/
def P9004859965645171076.Spec : Prop :=
  ∀ n, P9004859965645171076.a n = (A282050 n : ℚ)

end A282050

/-! ## A282050.P18172371642894308899

`A282781(n)/A028310(n)²`
-/

namespace A282050.P18172371642894308899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A282050.P18172371642894308899

namespace A282050

/-- `A282781(n)/A028310(n)²` -/
def P18172371642894308899.Spec : Prop :=
  ∀ n, P18172371642894308899.a n = (A282050 n : ℚ)

end A282050

/-! ## A282050.P17535184905415243959

`A282781(n)/(A000007(n)+n)²`
-/

namespace A282050.P17535184905415243959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / ((A000007 n + (n : ℤ)) ^ 2 : ℚ)

end

end A282050.P17535184905415243959

namespace A282050

/-- `A282781(n)/(A000007(n)+n)²` -/
def P17535184905415243959.Spec : Prop :=
  ∀ n, P17535184905415243959.a n = (A282050 n : ℚ)

end A282050

/-! ## A282050.P7436223736960855579

`2*∑{d}[n, A343508(#)]-∑{d}[n, A343508(#)]`
-/

namespace A282050.P7436223736960855579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A343508 d) - ∑ d ∈ Nat.divisors (f2 n), A343508 d

end

end A282050.P7436223736960855579

namespace A282050

/-- `2*∑{d}[n, A343508(#)]-∑{d}[n, A343508(#)]` -/
def P7436223736960855579.Spec : Prop :=
  ∀ n, P7436223736960855579.a n = A282050 n

end A282050

/-! ## A282050.P15124978586789762799

`A282781(n)/A065033(2*n)²`
-/

namespace A282050.P15124978586789762799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A065033 (2 * n) ^ 2 : ℚ)

end

end A282050.P15124978586789762799

namespace A282050

/-- `A282781(n)/A065033(2*n)²` -/
def P15124978586789762799.Spec : Prop :=
  ∀ n, P15124978586789762799.a n = (A282050 n : ℚ)

end A282050

/-! ## A282050.P9653088018004980659

`A282781(n)/A137734(n²)²`
-/

namespace A282050.P9653088018004980659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A137734 (n ^ 2) ^ 2 : ℚ)

end

end A282050.P9653088018004980659

namespace A282050

/-- `A282781(n)/A137734(n²)²` -/
def P9653088018004980659.Spec : Prop :=
  ∀ n, P9653088018004980659.a n = (A282050 n : ℚ)

end A282050

/-! ## A282050.P3384591748897701169

`A282781(n)/A028310(n*A028310(n))`
-/

namespace A282050.P3384591748897701169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A028310 ((n : ℤ) * A028310 n).toNat : ℚ)

end

end A282050.P3384591748897701169

namespace A282050

/-- `A282781(n)/A028310(n*A028310(n))` -/
def P3384591748897701169.Spec : Prop :=
  ∀ n, P3384591748897701169.a n = (A282050 n : ℚ)

end A282050

/-!
# A282051: Number of n X 2 0..2 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282051, there is no canonical definition to state claims against.
-/

/-! ## A282051.P6807228505354303074

`A282056(∑[n+1]+2)`
-/

namespace A282051.P6807228505354303074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282051.P6807228505354303074

/-! ## A282051.P8260373743479263948

`record[A282056(n+3)/A093644(n)]`
-/

namespace A282051.P8260373743479263948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282056 (n + 3) : ℚ) / (A093644 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282051.P8260373743479263948

/-! ## A282051.P3255849644724182670

`record[gcd(A282056(n+2), A298645(n+2))]`
-/

namespace A282051.P3255849644724182670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282056 (n + 2)) (A298645 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282051.P3255849644724182670

/-! ## A282051.P17894879454789629380

`A282056(A000096(n)+3)%A204623(n+1)`
-/

namespace A282051.P17894879454789629380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282056 (A000096 n + 3).toNat) (A204623 (n + 1))

end

end A282051.P17894879454789629380

/-! ## A282051.P18311306362938505644

`record[A282056(Δ[A003453(n+5)])]`
-/

namespace A282051.P18311306362938505644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282051.P18311306362938505644

/-!
# A282052: Number of nX3 0..2 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282052, there is no canonical definition to state claims against.
-/

/-! ## A282052.P15542377324637132274

`A282056(∑[n+2]+4)`
-/

namespace A282052.P15542377324637132274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282052.P15542377324637132274

/-! ## A282052.P8153779983324460079

`record[gcd(A282056(n+4), A319047(n+1))]`
-/

namespace A282052.P8153779983324460079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282056 (n + 4)) (A319047 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282052.P8153779983324460079

/-! ## A282052.P16093639818862414270

`A282056(A167614(n+1))+A011736(n)`
-/

namespace A282052.P16093639818862414270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A167614 (n + 1)).toNat + A011736 n

end

end A282052.P16093639818862414270

/-! ## A282052.P14606951981420529283

`A282056(A167614(n+1))+A185036(n)`
-/

namespace A282052.P14606951981420529283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A167614 (n + 1)).toNat + A185036 n

end

end A282052.P14606951981420529283

/-! ## A282052.P13062221717012671736

`A282056(A167614(n+1))+A185063(n)`
-/

namespace A282052.P13062221717012671736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A167614 (n + 1)).toNat + A185063 n

end

end A282052.P13062221717012671736

/-!
# A282053: Number of nX4 0..2 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282053, there is no canonical definition to state claims against.
-/

/-! ## A282053.P15959604305679071474

`A282056(∑[n+3]+7)`
-/

namespace A282053.P15959604305679071474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A282053.P15959604305679071474

/-!
# A282054: Number of nX5 0..2 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282054, there is no canonical definition to state claims against.
-/

/-! ## A282054.P18098094141791504064

`A282056(A374005(n+1))`
-/

namespace A282054.P18098094141791504064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A374005 (n + 1)).toNat

end

end A282054.P18098094141791504064

/-! ## A282054.P17009230409510391643

`A282056(A167499(n+3))`
-/

namespace A282054.P17009230409510391643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A167499 (n + 3)).toNat

end

end A282054.P17009230409510391643

/-! ## A282054.P16315122306870936558

`A282056(A155212(n)+13)`
-/

namespace A282054.P16315122306870936558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A155212 n + 13).toNat

end

end A282054.P16315122306870936558

/-! ## A282054.P10477981010571090726

`A282056(A056000(n)+15)`
-/

namespace A282054.P10477981010571090726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A056000 n + 15).toNat

end

end A282054.P10477981010571090726

/-! ## A282054.P7200754530641968676

`A282056(eq[7, A066657(n)])`
-/

namespace A282054.P7200754530641968676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282054.P7200754530641968676

/-!
# A282055: Number of nX6 0..2 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282055, there is no canonical definition to state claims against.
-/

/-! ## A282055.P17579250164329513352

`A282056(A374007(n+1))`
-/

namespace A282055.P17579250164329513352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A374007 (n + 1)).toNat

end

end A282055.P17579250164329513352

/-! ## A282055.P9484620579456838900

`A282056(A167499(n+4)+1)`
-/

namespace A282055.P9484620579456838900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A167499 (n + 4) + 1).toNat

end

end A282055.P9484620579456838900

/-! ## A282055.P1706862338415742276

`A282056(eq[7, A131818(n+1)])`
-/

namespace A282055.P1706862338415742276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282055.P1706862338415742276

/-! ## A282055.P93472158809708991

`A282056(A052905(n+3))`
-/

namespace A282055.P93472158809708991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (A052905 (n + 3)).toNat

end

end A282055.P93472158809708991

/-! ## A282055.P5593590557961117715

`A282056(eq[3, A219347(n)])`
-/

namespace A282055.P5593590557961117715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282055.P5593590557961117715

/-!
# A282056: T(n,k) = Number of n X k 0..2 arrays with no element unequal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282056, there is no canonical definition to state claims against.
-/

/-! ## A282056.P14361514226666442524

`A259101(n)-A000122(A060168(2*(n+2)))`
-/

namespace A282056.P14361514226666442524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259101 n - A000122 (A060168 (2 * (n + 2))).toNat

end

end A282056.P14361514226666442524

/-!
# A282057: Odd numbers n such that for all k >= 1 the numbers n*4^k - 1 and n*4^k + 1 do not form a twin prime pair.

The programs for A282057, there is no canonical definition to state claims against.
-/

/-! ## A282057.P9809812850914481620

`lt[2, A328578(n)]+3`
-/

namespace A282057.P9809812850914481620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A282057.P9809812850914481620

/-! ## A282057.P4759984562450477268

`lt[3, A328579(n)]+3`
-/

namespace A282057.P4759984562450477268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A282057.P4759984562450477268

/-! ## A282057.P1424507069163568274

`2*(eq[0, A358841(2*n)]+1)+1`
-/

namespace A282057.P1424507069163568274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A282057.P1424507069163568274

/-! ## A282057.P12162880759480475823

`lt[3*(-1)^n+2, A328590(n+1)]+4`
-/

namespace A282057.P12162880759480475823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A282057.P12162880759480475823

/-! ## A282057.P8643049848148591217

`A062545(lt[1, A358840(2*n)])`
-/

namespace A282057.P8643049848148591217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A282057.P8643049848148591217

/-!
# A282060: Coefficients in q-expansion of E_4*(E_2*E_4 - E_6)/720, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A282060, the canonical program `A282060.P5316906224555445883` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282060 has offset 0).

The definition of A282060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282060.P6170039687552319647

`(A282101(n)-A013974(n))/720`
-/

namespace A282060.P6170039687552319647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282101 n - A013974 n : ℚ) / 720

end

end A282060.P6170039687552319647

namespace A282060

/-- `(A282101(n)-A013974(n))/720` -/
def P6170039687552319647.Spec : Prop :=
  ∀ n, P6170039687552319647.a n = (A282060 n : ℚ)

end A282060

/-! ## A282060.P5316906224555445883

`∑{d}[n, n*#^7]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282060

/-- `∑{d}[n, n*#^7]` -/
def P5316906224555445883.Spec : Prop :=
  ∀ n, (P5316906224555445883.a n : ℤ) = A282060 n

theorem P5316906224555445883.correct : P5316906224555445883.Spec := by
  intro n
  simp only [A282060]

end A282060

/-! ## A282060.P7529695877808106915

`n*∑{d}[n, #*A001014(#)]`
-/

namespace A282060.P7529695877808106915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001014 d)

end

end A282060.P7529695877808106915

namespace A282060

/-- `n*∑{d}[n, #*A001014(#)]` -/
def P7529695877808106915.Spec : Prop :=
  ∀ n, P7529695877808106915.a n = A282060 n

end A282060

/-! ## A282060.P3194872520947676291

`n*A013955(abs(1-n)+1)`
-/

namespace A282060.P3194872520947676291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013955 (|1 - (n : ℤ)| + 1).toNat

end

end A282060.P3194872520947676291

namespace A282060

/-- `n*A013955(abs(1-n)+1)` -/
def P3194872520947676291.Spec : Prop :=
  ∀ n, P3194872520947676291.a n = A282060 n

end A282060

/-! ## A282060.P4670316413571232578

`A282753(n)/A028310(n)`
-/

namespace A282060.P4670316413571232578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282753 n : ℚ) / (A028310 n : ℚ)

end

end A282060.P4670316413571232578

namespace A282060

/-- `A282753(n)/A028310(n)` -/
def P4670316413571232578.Spec : Prop :=
  ∀ n, P4670316413571232578.a n = (A282060 n : ℚ)

end A282060

/-! ## A282060.P14955293599794626288

`A386781(n)/A253909(n)`
-/

namespace A282060.P14955293599794626288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386781 n : ℚ) / (A253909 n : ℚ)

end

end A282060.P14955293599794626288

namespace A282060

/-- `A386781(n)/A253909(n)` -/
def P14955293599794626288.Spec : Prop :=
  ∀ n, P14955293599794626288.a n = (A282060 n : ℚ)

end A282060

/-! ## A282060.P10544429664014856697

`A282753(n)/A065033(2*n)`
-/

namespace A282060.P10544429664014856697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282753 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A282060.P10544429664014856697

namespace A282060

/-- `A282753(n)/A065033(2*n)` -/
def P10544429664014856697.Spec : Prop :=
  ∀ n, P10544429664014856697.a n = (A282060 n : ℚ)

end A282060

/-!
# A282062: Expansion of (x + Sum_{p prime, k>=1} x^(p^k))^2.

The programs for A282062, there is no canonical definition to state claims against.
-/

/-! ## A282062.P10957733154214560257

`A347762(n)-A010055(A028310(n))`
-/

namespace A282062.P10957733154214560257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A010055 (A028310 n).toNat

end

end A282062.P10957733154214560257

/-! ## A282062.P15316312828670353317

`A347762(n)-A010055(A253909(n))`
-/

namespace A282062.P15316312828670353317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A010055 (A253909 n).toNat

end

end A282062.P15316312828670353317

/-! ## A282062.P12922199465281824111

`A347762(n)-A010055(A257088(n))`
-/

namespace A282062.P12922199465281824111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A010055 (A257088 n).toNat

end

end A282062.P12922199465281824111

/-! ## A282062.P3399029328762566872

`A347762(n)-A010055(A233583(n+1))`
-/

namespace A282062.P3399029328762566872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A010055 (A233583 (n + 1)).toNat

end

end A282062.P3399029328762566872

/-! ## A282062.P3512319320858783656

`A347762(n)-A010055(A123108(2*n))`
-/

namespace A282062.P3512319320858783656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A010055 (A123108 (2 * n)).toNat

end

end A282062.P3512319320858783656

/-! ## A282062.P633692559106816256

`A347762(n)-A010055(A000007(n)+n)`
-/

namespace A282062.P633692559106816256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A010055 (A000007 n + (n : ℤ)).toNat

end

end A282062.P633692559106816256

/-!
# A282064: Expansion of (x + Sum_{p prime, k>=1} x^(p^k))^3.

The programs for A282064, there is no canonical definition to state claims against.
-/

/-! ## A282064.P7066917068432949052

`A347763(n)-A347762(n)`
-/

namespace A282064.P7066917068432949052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - A347762 n

end

end A282064.P7066917068432949052

/-! ## A282064.P5066297540856044195

`A347763(n)-floor(A347643(n)+A282062(n)/2)`
-/

namespace A282064.P5066297540856044195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - ⌊(A347643 n : ℚ) + (A282062 n : ℚ) / 2⌋

end

end A282064.P5066297540856044195

/-! ## A282064.P1568834243983893570

`A347763(n)-(A282062(n)+A010055(A253909(n)))`
-/

namespace A282064.P1568834243983893570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - (A282062 n + A010055 (A253909 n).toNat)

end

end A282064.P1568834243983893570

/-! ## A282064.P13224100796384344089

`A347763(n)-(A347643(n)+A004526(A282062(n)))`
-/

namespace A282064.P13224100796384344089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - (A347643 n + A004526 (A282062 n).toNat)

end

end A282064.P13224100796384344089

/-! ## A282064.P13349317792504024314

`A347763(n)-(A282062(n)+A010055(A233583(n+1)))`
-/

namespace A282064.P13349317792504024314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - (A282062 n + A010055 (A233583 (n + 1)).toNat)

end

end A282064.P13349317792504024314

/-! ## A282064.P6274252375923486389

`A347763(n)-(A282062(n)+A010055(A123108(2*n)))`
-/

namespace A282064.P6274252375923486389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - (A282062 n + A010055 (A123108 (2 * n)).toNat)

end

end A282064.P6274252375923486389

/-! ## A282064.P4032839525253560324

`A347763(n)-(A282062(n)+A010055(A000007(n)+n))`
-/

namespace A282064.P4032839525253560324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347763 n - (A282062 n + A010055 (A000007 n + (n : ℤ)).toNat)

end

end A282064.P4032839525253560324

/-!
# A282065: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A282065, there is no canonical definition to state claims against.
-/

/-! ## A282065.P17508588560781149620

`A007088(A282067(n))`
-/

namespace A282065.P17508588560781149620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282067 n).toNat

end

end A282065.P17508588560781149620

/-! ## A282065.P5794447482631522827

`A185544(2*A282067(n))`
-/

namespace A282065.P5794447482631522827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282067 n).toNat

end

end A282065.P5794447482631522827

/-!
# A282066: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A282066, there is no canonical definition to state claims against.
-/

/-! ## A282066.P15912523333601194617

`A007088(A282068(n))`
-/

namespace A282066.P15912523333601194617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282068 n).toNat

end

end A282066.P15912523333601194617

/-! ## A282066.P15879999430987979375

`A185544(2*A282068(n))`
-/

namespace A282066.P15879999430987979375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282068 n).toNat

end

end A282066.P15879999430987979375

/-!
# A282069: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A282069, there is no canonical definition to state claims against.
-/

/-! ## A282069.P4537996224802492985

`A007088(A282071(n))`
-/

namespace A282069.P4537996224802492985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282071 n).toNat

end

end A282069.P4537996224802492985

/-! ## A282069.P1358881550852167690

`A185544(2*A282071(n))`
-/

namespace A282069.P1358881550852167690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282071 n).toNat

end

end A282069.P1358881550852167690

/-!
# A282070: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A282070, there is no canonical definition to state claims against.
-/

/-! ## A282070.P15808079238710132784

`A007088(A282072(n))`
-/

namespace A282070.P15808079238710132784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282072 n).toNat

end

end A282070.P15808079238710132784

/-! ## A282070.P4728714480283522969

`A185544(2*A282072(n))`
-/

namespace A282070.P4728714480283522969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282072 n).toNat

end

end A282070.P4728714480283522969

/-!
# A282073: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A282073, there is no canonical definition to state claims against.
-/

/-! ## A282073.P13010620286124768856

`A007088(A282075(n))`
-/

namespace A282073.P13010620286124768856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282075 n).toNat

end

end A282073.P13010620286124768856

/-! ## A282073.P9041207789923485712

`A185544(2*A282075(n))`
-/

namespace A282073.P9041207789923485712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282075 n).toNat

end

end A282073.P9041207789923485712

/-! ## A282073.P953295930993831304

`A000027(A282276(n))`
-/

namespace A282073.P953295930993831304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A282276 n).toNat

end

end A282073.P953295930993831304

/-!
# A282074: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A282074, there is no canonical definition to state claims against.
-/

/-! ## A282074.P4777659862226180662

`A007088(A282076(n))`
-/

namespace A282074.P4777659862226180662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282076 n).toNat

end

end A282074.P4777659862226180662

/-! ## A282074.P7381236196973203583

`A185544(2*A282076(n))`
-/

namespace A282074.P7381236196973203583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282076 n).toNat

end

end A282074.P7381236196973203583

/-! ## A282074.P1318504644872631786

`A282325(n)%A367902(n+2)`
-/

namespace A282074.P1318504644872631786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282325 n) (A367902 (n + 2))

end

end A282074.P1318504644872631786

/-!
# A282075: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A282075, there is no canonical definition to state claims against.
-/

/-! ## A282075.P6822916688917569384

`A282514(n)-A364913(A058275(n))`
-/

namespace A282075.P6822916688917569384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282514 n - A364913 (A058275 n).toNat

end

end A282075.P6822916688917569384

/-! ## A282075.P15694571925565070654

`A282514(n)-A322437(A004127(n+1))`
-/

namespace A282075.P15694571925565070654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282514 n - A322437 (A004127 (n + 1)).toNat

end

end A282075.P15694571925565070654

/-! ## A282075.P8811158443057336949

`or(A030998(n+1), A288663(A004891(n+1)))`
-/

namespace A282075.P8811158443057336949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030998 (n + 1)) (A288663 (A004891 (n + 1)).toNat)

end

end A282075.P8811158443057336949

/-!
# A282076: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A282076, there is no canonical definition to state claims against.
-/

/-! ## A282076.P10340816553223886434

`A282553(n)%p?[2^n-1]`
-/

namespace A282076.P10340816553223886434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282553 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A282076.P10340816553223886434

/-! ## A282076.P3778357032060322737

`A282553(A004890(n+1))`
-/

namespace A282076.P3778357032060322737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282553 (A004890 (n + 1)).toNat

end

end A282076.P3778357032060322737

/-! ## A282076.P567556032304361240

`A282553(A004901(n+1))`
-/

namespace A282076.P567556032304361240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282553 (A004901 (n + 1)).toNat

end

end A282076.P567556032304361240

/-!
# A282077: Number of 9-element subsets of [n+9] having an even sum.

The programs for A282077, there is no canonical definition to state claims against.
-/

/-! ## A282077.P13674978979760461122

`A000582(n+9)-A018213(n)`
-/

namespace A282077.P13674978979760461122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A018213 n

end

end A282077.P13674978979760461122

/-! ## A282077.P18418809637257159990

`∑[A000581(n+8)]-A018213(n)`
-/

namespace A282077.P18418809637257159990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018213 n

end

end A282077.P18418809637257159990

/-! ## A282077.P16609485306673887396

`∑[∑[A000580(n+7)]]-A018213(n)`
-/

namespace A282077.P16609485306673887396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018213 n

end

end A282077.P16609485306673887396

/-! ## A282077.P13117098324216797475

`A282078(n)-A282078(n-A057427(n))`
-/

namespace A282077.P13117098324216797475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n - A282078 ((n : ℤ) - A057427 n).toNat

end

end A282077.P13117098324216797475

/-! ## A282077.P11126517643182363704

`Δ[A282078(n-A057427(n))]`
-/

namespace A282077.P11126517643182363704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282077.P11126517643182363704

/-! ## A282077.P8339852694167719265

`A018213(n+1)-A018212(n+1)`
-/

namespace A282077.P8339852694167719265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 (n + 1) - A018212 (n + 1)

end

end A282077.P8339852694167719265

/-! ## A282077.P8331865075569995595

`Δ[A282078(n+1-A127750(2*n))]`
-/

namespace A282077.P8331865075569995595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 ((n + 1 : ℤ) - A127750 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282077.P8331865075569995595

/-! ## A282077.P1673538415056129307

`A282078(n)-A282078(log2(A011782(n)))`
-/

namespace A282077.P1673538415056129307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n - A282078 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A282077.P1673538415056129307

/-! ## A282077.P3697384519122977417

`A282078(n)-A282078(val(A011782(n), 2))`
-/

namespace A282077.P3697384519122977417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n - A282078 (SequenceMachineLib.valuation (A011782 n).toNat 2)

end

end A282077.P3697384519122977417

/-! ## A282077.P17914215010031145719

`Δ[A282078(log2(A011782(n)))]`
-/

namespace A282077.P17914215010031145719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282077.P17914215010031145719

/-! ## A282077.P5189027596838844442

`Δ[A282078(val(A011782(n), 2))]`
-/

namespace A282077.P5189027596838844442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282077.P5189027596838844442

/-!
# A282078: Number of 10-element subsets of [n+10] having an even sum.

The programs for A282078, there is no canonical definition to state claims against.
-/

/-! ## A282078.P12068455374842985566

`∑[A282077(n)]`
-/

namespace A282078.P12068455374842985566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282078.P12068455374842985566

/-! ## A282078.P60799433898683469

`A001287(n)-A018214(n)`
-/

namespace A282078.P60799433898683469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - A018214 n

end

end A282078.P60799433898683469

/-! ## A282078.P13460452962685544745

`A018214(n)-A189980(n)`
-/

namespace A282078.P13460452962685544745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018214 n - A189980 (n + 10)

end

end A282078.P13460452962685544745

/-! ## A282078.P9080369309344786416

`A001287(n)-∑[A018213(n)]`
-/

namespace A282078.P9080369309344786416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282078.P9080369309344786416

/-! ## A282078.P4676088802942602252

`∑[A000582(n+9)-A018213(n)]`
-/

namespace A282078.P4676088802942602252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) - A018213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282078.P4676088802942602252

/-! ## A282078.P8110446340387424432

`∑[A000582(n+9)]-A018214(n)`
-/

namespace A282078.P8110446340387424432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A018214 n

end

end A282078.P8110446340387424432

/-! ## A282078.P6797964979705096254

`∑[∑[A000581(n+8)]-A018213(n)]`
-/

namespace A282078.P6797964979705096254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A018213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282078.P6797964979705096254

/-! ## A282078.P4891230620036475303

`A034852(A134869(n+10)+9)`
-/

namespace A282078.P4891230620036475303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A134869 (n + 10) + 9).toNat

end

end A282078.P4891230620036475303

/-!
# A282079: Number of n-element subsets of [n+2] having an even sum.

The programs for A282079, the canonical program `A282079.P9573112354558112500` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282079 has offset 0).

The definition of A282079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282079.P9573112354558112500

`or(1, ∑[n])-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282079

/-- `or(1, ∑[n])-a(n-2)` -/
def P9573112354558112500.Spec : Prop :=
  ∀ n, P9573112354558112500.a n = A282079 n

theorem P9573112354558112500.correct : P9573112354558112500.Spec := by
  intro n
  simp only [A282079]

end A282079

/-! ## A282079.P1280109084419228301

`round((n+1)*or(2, n+1)/4)`
-/

namespace A282079.P1280109084419228301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.lor 2 (n + 1) : ℚ) / 4))

end

end A282079.P1280109084419228301

namespace A282079

/-- `round((n+1)*or(2, n+1)/4)` -/
def P1280109084419228301.Spec : Prop :=
  ∀ n, P1280109084419228301.a n = A282079 n

end A282079

/-! ## A282079.P11388129060988939464

`∑[∑[and(2, n)]-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A282079.P11388129060988939464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282079.P11388129060988939464

namespace A282079

/-- `∑[∑[and(2, n)]-a(n-2)]` -/
def P11388129060988939464.Spec : Prop :=
  ∀ n, P11388129060988939464.a n = A282079 n

end A282079

/-! ## A282079.P15335940540554941473

`(n+1)*ceil(sqrt(a(n-1)))-a(n-1)` with `a(0)=1`
-/

namespace A282079.P15335940540554941473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * ⌈Real.sqrt (a (n - 1) : ℝ)⌉ - a (n - 1)

end

end A282079.P15335940540554941473

namespace A282079

/-- `(n+1)*ceil(sqrt(a(n-1)))-a(n-1)` -/
def P15335940540554941473.Spec : Prop :=
  ∀ n, P15335940540554941473.a n = A282079 n

end A282079

/-! ## A282079.P11945113165387060827

`floor((A098180(n+1)/2)²)`
-/

namespace A282079.P11945113165387060827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A098180 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A282079.P11945113165387060827

namespace A282079

/-- `floor((A098180(n+1)/2)²)` -/
def P11945113165387060827.Spec : Prop :=
  ∀ n, P11945113165387060827.a n = A282079 n

end A282079

/-! ## A282079.P4330679138191343487

`lcm(A008619(n), A188444(n))`
-/

namespace A282079.P4330679138191343487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008619 n) (A188444 n)

end

end A282079.P4330679138191343487

namespace A282079

/-- `lcm(A008619(n), A188444(n))` -/
def P4330679138191343487.Spec : Prop :=
  ∀ n, (P4330679138191343487.a n : ℤ) = A282079 n

end A282079

/-! ## A282079.P3664118964528965042

`or(1, A065033(n))*A008619(n)`
-/

namespace A282079.P3664118964528965042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065033 n) * A008619 n

end

end A282079.P3664118964528965042

namespace A282079

/-- `or(1, A065033(n))*A008619(n)` -/
def P3664118964528965042.Spec : Prop :=
  ∀ n, P3664118964528965042.a n = A282079 n

end A282079

/-! ## A282079.P6197670044059706873

`A008619(n)*A109613(A110654(n))`
-/

namespace A282079.P6197670044059706873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A109613 (A110654 n).toNat

end

end A282079.P6197670044059706873

namespace A282079

/-- `A008619(n)*A109613(A110654(n))` -/
def P6197670044059706873.Spec : Prop :=
  ∀ n, P6197670044059706873.a n = A282079 n

end A282079

/-! ## A282079.P760813195294550257

`A109613(A110654(n))*A110654(n+1)`
-/

namespace A282079.P760813195294550257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A110654 n).toNat * A110654 (n + 1)

end

end A282079.P760813195294550257

namespace A282079

/-- `A109613(A110654(n))*A110654(n+1)` -/
def P760813195294550257.Spec : Prop :=
  ∀ n, P760813195294550257.a n = A282079 n

end A282079

/-! ## A282079.P8713558116477391193

`A008619(n)*A109613(A001651(n+1)-A109613(n))`
-/

namespace A282079.P8713558116477391193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A109613 (A001651 (n + 1) - A109613 n).toNat

end

end A282079.P8713558116477391193

namespace A282079

/-- `A008619(n)*A109613(A001651(n+1)-A109613(n))` -/
def P8713558116477391193.Spec : Prop :=
  ∀ n, P8713558116477391193.a n = A282079 n

end A282079

/-! ## A282079.P6943984891392059684

`Δ[ceil(∑[n*or(2, n)]/4)]`
-/

namespace A282079.P6943984891392059684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282079.P6943984891392059684

namespace A282079

/-- `Δ[ceil(∑[n*or(2, n)]/4)]` -/
def P6943984891392059684.Spec : Prop :=
  ∀ n, P6943984891392059684.a n = A282079 n

end A282079

/-! ## A282079.P15128699078447262579

`A002620(A098180(n+1))`
-/

namespace A282079.P15128699078447262579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A098180 (n + 1)).toNat

end

end A282079.P15128699078447262579

namespace A282079

/-- `A002620(A098180(n+1))` -/
def P15128699078447262579.Spec : Prop :=
  ∀ n, P15128699078447262579.a n = A282079 n

end A282079

/-! ## A282079.P11814858989993689624

`A008619(n)*A129756(n+1)`
-/

namespace A282079.P11814858989993689624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A129756 (n + 1)

end

end A282079.P11814858989993689624

namespace A282079

/-- `A008619(n)*A129756(n+1)` -/
def P11814858989993689624.Spec : Prop :=
  ∀ n, P11814858989993689624.a n = A282079 n

end A282079

/-! ## A282079.P3255076031803084731

`A002620(2/A014695(n)+n)`
-/

namespace A282079.P3255076031803084731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.roundAway (2 / (A014695 n : ℚ) + (n : ℚ))).toNat

end

end A282079.P3255076031803084731

namespace A282079

/-- `A002620(2/A014695(n)+n)` -/
def P3255076031803084731.Spec : Prop :=
  ∀ n, P3255076031803084731.a n = A282079 n

end A282079

/-! ## A282079.P13832133591461761452

`A002620(gcd(2, A000217(n))+n)`
-/

namespace A282079.P13832133591461761452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Int.gcd 2 (A000217 n) + n)

end

end A282079.P13832133591461761452

namespace A282079

/-- `A002620(gcd(2, A000217(n))+n)` -/
def P13832133591461761452.Spec : Prop :=
  ∀ n, P13832133591461761452.a n = A282079 n

end A282079

/-! ## A282079.P1300505641657180924

`A002620(A133872(n+1)+n+1)`
-/

namespace A282079.P1300505641657180924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A133872 (n + 1) + (n + 1 : ℤ)).toNat

end

end A282079.P1300505641657180924

namespace A282079

/-- `A002620(A133872(n+1)+n+1)` -/
def P1300505641657180924.Spec : Prop :=
  ∀ n, P1300505641657180924.a n = A282079 n

end A282079

/-! ## A282079.P17359810706930468383

`A002620(n+2-A021913(n+1))`
-/

namespace A282079.P17359810706930468383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((n + 2 : ℤ) - A021913 (n + 1)).toNat

end

end A282079.P17359810706930468383

namespace A282079

/-- `A002620(n+2-A021913(n+1))` -/
def P17359810706930468383.Spec : Prop :=
  ∀ n, P17359810706930468383.a n = A282079 n

end A282079

/-! ## A282079.P14689535506603459886

`A004525(n+1)*A004525(n+2)`
-/

namespace A282079.P14689535506603459886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) * A004525 (n + 2)

end

end A282079.P14689535506603459886

namespace A282079

/-- `A004525(n+1)*A004525(n+2)` -/
def P14689535506603459886.Spec : Prop :=
  ∀ n, P14689535506603459886.a n = A282079 n

end A282079

/-! ## A282079.P13724317770733609403

`or(1, A130472(n+1))*A130472(n+1)`
-/

namespace A282079.P13724317770733609403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A130472 (n + 1)) * A130472 (n + 1)

end

end A282079.P13724317770733609403

namespace A282079

/-- `or(1, A130472(n+1))*A130472(n+1)` -/
def P13724317770733609403.Spec : Prop :=
  ∀ n, P13724317770733609403.a n = A282079 n

end A282079

/-! ## A282079.P3581370682084585471

`A008619(n)*A109613(A004526(n+1))`
-/

namespace A282079.P3581370682084585471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A109613 (A004526 (n + 1)).toNat

end

end A282079.P3581370682084585471

namespace A282079

/-- `A008619(n)*A109613(A004526(n+1))` -/
def P3581370682084585471.Spec : Prop :=
  ∀ n, P3581370682084585471.a n = A282079 n

end A282079

/-!
# A282080: Number of n-element subsets of [n+4] having an even sum.

The programs for A282080, the canonical program `A282080.P11231614446896098972` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282080 has offset 0).

The definition of A282080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282080.P11231614446896098972

`A213850(n+1)-A000292(A285869(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A282080

/-- `A213850(n+1)-A000292(A285869(n))` -/
def P11231614446896098972.Spec : Prop :=
  ∀ n, P11231614446896098972.a n = A282080 n

theorem P11231614446896098972.correct : P11231614446896098972.Spec := by
  intro n
  simp only [A282080]

end A282080

/-! ## A282080.P12327521799101039686

`record[A282011(A052905(n))]`
-/

namespace A282080.P12327521799101039686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282080.P12327521799101039686

namespace A282080

/-- `record[A282011(A052905(n))]` -/
def P12327521799101039686.Spec : Prop :=
  ∀ n, P12327521799101039686.a n = A282080 n

end A282080

/-! ## A282080.P14812729335931832207

`A282011(A052905(n+2))`
-/

namespace A282080.P14812729335931832207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A052905 (n + 2)).toNat

end

end A282080.P14812729335931832207

namespace A282080

/-- `A282011(A052905(n+2))` -/
def P14812729335931832207.Spec : Prop :=
  ∀ n, P14812729335931832207.a n = A282080 n

end A282080

/-! ## A282080.P13094111867776464784

`A282011(Δ[A264443(n)]-1)`
-/

namespace A282080.P13094111867776464784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (f1 (n + 1) - f1 n - 1).toNat

end

end A282080.P13094111867776464784

namespace A282080

/-- `A282011(Δ[A264443(n)]-1)` -/
def P13094111867776464784.Spec : Prop :=
  ∀ n, P13094111867776464784.a n = A282080 n

end A282080

/-! ## A282080.P11942501900751370918

`A282011(Δ[A055831(n+4)])`
-/

namespace A282080.P11942501900751370918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (f1 (n + 1) - f1 n).toNat

end

end A282080.P11942501900751370918

namespace A282080

/-- `A282011(Δ[A055831(n+4)])` -/
def P11942501900751370918.Spec : Prop :=
  ∀ n, P11942501900751370918.a n = A282080 n

end A282080

/-! ## A282080.P6476001098034030946

`A282011(A000217(n+5)-5)`
-/

namespace A282080.P6476001098034030946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000217 (n + 5) - 5).toNat

end

end A282080.P6476001098034030946

namespace A282080

/-- `A282011(A000217(n+5)-5)` -/
def P6476001098034030946.Spec : Prop :=
  ∀ n, P6476001098034030946.a n = A282080 n

end A282080

/-! ## A282080.P3170186589359564778

`A282011(A167499(n)+4*(n+1))`
-/

namespace A282080.P3170186589359564778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A167499 n + (4 * (n + 1) : ℤ)).toNat

end

end A282080.P3170186589359564778

namespace A282080

/-- `A282011(A167499(n)+4*(n+1))` -/
def P3170186589359564778.Spec : Prop :=
  ∀ n, P3170186589359564778.a n = A282080 n

end A282080

/-! ## A282080.P11527693618782353758

`A282011(eq[4, A025581(n)])`
-/

namespace A282080.P11527693618782353758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282080.P11527693618782353758

namespace A282080

/-- `A282011(eq[4, A025581(n)])` -/
def P11527693618782353758.Spec : Prop :=
  ∀ n, P11527693618782353758.a n = A282080 n

end A282080

/-!
# A282081: Number of n-element subsets of [n+5] having an even sum.

The programs for A282081, the canonical program `A282081.P11413017079100609461` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282081 has offset 0).

The definition of A282081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282081.P11413017079100609461

`∑[A282080(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A282081

/-- `∑[A282080(n)]` -/
def P11413017079100609461.Spec : Prop :=
  ∀ n, P11413017079100609461.a n = A282081 n

theorem P11413017079100609461.correct : P11413017079100609461.Spec := by
  intro n
  simp only [A282081]

end A282081

/-! ## A282081.P11701171264742685933

`A282080(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A282081.P11701171264742685933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282080 (n % (n + 1)) + a (n - 1)

end

end A282081.P11701171264742685933

namespace A282081

/-- `A282080(n%(n+1))+a(n-1)` -/
def P11701171264742685933.Spec : Prop :=
  ∀ n, P11701171264742685933.a n = A282081 n

end A282081

/-! ## A282081.P623485255312521632

`A282080(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A282081.P623485255312521632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282080 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A282081.P623485255312521632

namespace A282081

/-- `A282080(round(sqrt(n²+1)))+a(n-1)` -/
def P623485255312521632.Spec : Prop :=
  ∀ n, P623485255312521632.a n = A282081 n

end A282081

/-! ## A282081.P9629317167687783322

`round(A282080(A028310(n))+a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A282081.P9629317167687783322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282080 (A028310 n).toNat + a (n - 1)

end

end A282081.P9629317167687783322

namespace A282081

/-- `round(A282080(A028310(n))+a(n-1))` -/
def P9629317167687783322.Spec : Prop :=
  ∀ n, P9629317167687783322.a n = A282081 n

end A282081

/-! ## A282081.P12233348252237329842

`∑[A213850(n+1)-A000292(A285869(n))]`
-/

namespace A282081.P12233348252237329842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1) - A000292 (A285869 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282081.P12233348252237329842

namespace A282081

/-- `∑[A213850(n+1)-A000292(A285869(n))]` -/
def P12233348252237329842.Spec : Prop :=
  ∀ n, P12233348252237329842.a n = A282081 n

end A282081

/-! ## A282081.P220894416502223734

`∑[record[A282011(A052905(n))]]`
-/

namespace A282081.P220894416502223734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A052905 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282081.P220894416502223734

namespace A282081

/-- `∑[record[A282011(A052905(n))]]` -/
def P220894416502223734.Spec : Prop :=
  ∀ n, P220894416502223734.a n = A282081 n

end A282081

/-! ## A282081.P12057147896689632137

`∑[A282011(A052905(n+2))]`
-/

namespace A282081.P12057147896689632137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A052905 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282081.P12057147896689632137

namespace A282081

/-- `∑[A282011(A052905(n+2))]` -/
def P12057147896689632137.Spec : Prop :=
  ∀ n, P12057147896689632137.a n = A282081 n

end A282081

/-! ## A282081.P2845597291526742886

`A282011(A000217(n+6)-6)`
-/

namespace A282081.P2845597291526742886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000217 (n + 6) - 6).toNat

end

end A282081.P2845597291526742886

namespace A282081

/-- `A282011(A000217(n+6)-6)` -/
def P2845597291526742886.Spec : Prop :=
  ∀ n, P2845597291526742886.a n = A282081 n

end A282081

/-! ## A282081.P1428533267453494657

`A282011(Δ[A264443(n+1)]-2)`
-/

namespace A282081.P1428533267453494657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (f1 (n + 1) - f1 n - 2).toNat

end

end A282081.P1428533267453494657

namespace A282081

/-- `A282011(Δ[A264443(n+1)]-2)` -/
def P1428533267453494657.Spec : Prop :=
  ∀ n, P1428533267453494657.a n = A282081 n

end A282081

/-! ## A282081.P10324160149632554121

`A282011(Δ[A055831(n+5)]-1)`
-/

namespace A282081.P10324160149632554121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (f1 (n + 1) - f1 n - 1).toNat

end

end A282081.P10324160149632554121

namespace A282081

/-- `A282011(Δ[A055831(n+5)]-1)` -/
def P10324160149632554121.Spec : Prop :=
  ∀ n, P10324160149632554121.a n = A282081 n

end A282081

/-!
# A282082: Number of n-element subsets of [n+6] having an even sum.

The programs for A282082, there is no canonical definition to state claims against.
-/

/-! ## A282082.P13256598732920053703

`A282011(A055999(n+4)-1)`
-/

namespace A282082.P13256598732920053703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A055999 (n + 4) - 1).toNat

end

end A282082.P13256598732920053703

/-! ## A282082.P3724969762399952148

`A282011(A000217(n+7)-7)`
-/

namespace A282082.P3724969762399952148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000217 (n + 7) - 7).toNat

end

end A282082.P3724969762399952148

/-! ## A282082.P17643456806084283754

`A282011(2*n+A000096(n+4)+7)`
-/

namespace A282082.P17643456806084283754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 ((2 * n : ℤ) + (A000096 (n + 4) + 7)).toNat

end

end A282082.P17643456806084283754

/-! ## A282082.P15666118498739084818

`A282011(A034856(n+4)+A005843(n+4))`
-/

namespace A282082.P15666118498739084818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A034856 (n + 4) + A005843 (n + 4)).toNat

end

end A282082.P15666118498739084818

/-! ## A282082.P17802638226611105055

`A282011(eq[6, A025581(n)])`
-/

namespace A282082.P17802638226611105055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282082.P17802638226611105055

/-! ## A282082.P14093319645359455984

`A282011(eq[7, A004736(n+1)])`
-/

namespace A282082.P14093319645359455984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282082.P14093319645359455984

/-!
# A282083: Number of n-element subsets of [n+7] having an even sum.

The programs for A282083, there is no canonical definition to state claims against.
-/

/-! ## A282083.P14907224298492262618

`∑[A282082(n)]`
-/

namespace A282083.P14907224298492262618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282083.P14907224298492262618

/-! ## A282083.P9757898219596401368

`A282082(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A282083.P9757898219596401368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282082 n + a (A023443 n).toNat

end

end A282083.P9757898219596401368

/-! ## A282083.P6413110280234280549

`A282011(∑[n+7]+21+n)`
-/

namespace A282083.P6413110280234280549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (∑ j ∈ Finset.range (n + 1), f1 j + 21 + n)

end

end A282083.P6413110280234280549

/-! ## A282083.P18188296017056612841

`a(n-1)+A282082(n)%A133190(2*n)` with `a(0)=1, a(1)=4`
-/

namespace A282083.P18188296017056612841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + Int.tmod (A282082 n) (A133190 (2 * n))

end

end A282083.P18188296017056612841

/-! ## A282083.P14489768833836766897

`∑[A282011(eq[6, A025581(n)])]`
-/

namespace A282083.P14489768833836766897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282083.P14489768833836766897

/-! ## A282083.P4382960351101888348

`∑[A282011(eq[7, A193739(n)])]`
-/

namespace A282083.P4382960351101888348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282083.P4382960351101888348

/-!
# A282084: Number of n-element subsets of [n+8] having an even sum.

The programs for A282084, there is no canonical definition to state claims against.
-/

/-! ## A282084.P15192759581779542203

`A282011(A046691(n+7)-5)`
-/

namespace A282084.P15192759581779542203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A046691 (n + 7) - 5).toNat

end

end A282084.P15192759581779542203

/-! ## A282084.P399343783662893743

`A282011(A055998(n+7)-6)`
-/

namespace A282084.P399343783662893743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A055998 (n + 7) - 6).toNat

end

end A282084.P399343783662893743

/-! ## A282084.P4153022297729446976

`A282011(A000217(n+9)-9)`
-/

namespace A282084.P4153022297729446976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000217 (n + 9) - 9).toNat

end

end A282084.P4153022297729446976

/-! ## A282084.P13640463730594571070

`A282011(A000124(n+9)-10)`
-/

namespace A282084.P13640463730594571070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000124 (n + 9) - 10).toNat

end

end A282084.P13640463730594571070

/-! ## A282084.P1741775149292974626

`A282011(eq[7, A116598(n)])`
-/

namespace A282084.P1741775149292974626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282084.P1741775149292974626

/-! ## A282084.P13467087480000573101

`A282011(eq[8, A025581(n)])`
-/

namespace A282084.P13467087480000573101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282084.P13467087480000573101

/-!
# A282085: Number of n-element subsets of [n+9] having an even sum.

The programs for A282085, there is no canonical definition to state claims against.
-/

/-! ## A282085.P4490347248576729209

`∑[A282084(n)]`
-/

namespace A282085.P4490347248576729209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282085.P4490347248576729209

/-! ## A282085.P15421794854151570751

`A282084(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A282085.P15421794854151570751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282084 n + a (A023443 n).toNat

end

end A282085.P15421794854151570751

/-! ## A282085.P7523456252840890103

`A282084(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A282085.P7523456252840890103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282084 n - (A000007 n - a (n - 1))

end

end A282085.P7523456252840890103

/-! ## A282085.P2039763349097384925

`∑[A282011(A046691(n+7)-5)]`
-/

namespace A282085.P2039763349097384925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A046691 (n + 7) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282085.P2039763349097384925

/-! ## A282085.P12053701298720078265

`A282011(A000217(n+10)-10)`
-/

namespace A282085.P12053701298720078265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000217 (n + 10) - 10).toNat

end

end A282085.P12053701298720078265

/-! ## A282085.P12448736207070755237

`A282011(A117619(n+7)-A167499(n+2))`
-/

namespace A282085.P12448736207070755237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A117619 (n + 7) - A167499 (n + 2)).toNat

end

end A282085.P12448736207070755237

/-! ## A282085.P11004740163909443423

`A282011(eq[9, A025581(n)])`
-/

namespace A282085.P11004740163909443423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282085.P11004740163909443423

/-!
# A282086: Number of n-element subsets of [n+10] having an even sum.

The programs for A282086, there is no canonical definition to state claims against.
-/

/-! ## A282086.P9126668811909992127

`A282011(A000096(n+9)+n+1)`
-/

namespace A282086.P9126668811909992127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A282086.P9126668811909992127

/-! ## A282086.P11374300973905727422

`A282011(A005408(n)+A046691(n+7)+13)`
-/

namespace A282086.P11374300973905727422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A005408 n + (A046691 (n + 7) + 13)).toNat

end

end A282086.P11374300973905727422

/-! ## A282086.P7185142539711439502

`A282011(eq[10, A025581(n)])`
-/

namespace A282086.P7185142539711439502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282086.P7185142539711439502

/-! ## A282086.P12587831743111314999

`A282011(eq[11, A004736(n+1)])`
-/

namespace A282086.P12587831743111314999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282086.P12587831743111314999

/-!
# A282087: Number of length-n ternary strings that do not contain both "00" and "11".

The programs for A282087, the canonical program `A282087.P16533665158671584640` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282087 has offset 0).

The definition of A282087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282087.P16533665158671584640

`4*a(n-1)-a(n-2)-6*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282087

/-- `4*a(n-1)-a(n-2)-6*a(n-3)-2*a(n-4)` -/
def P16533665158671584640.Spec : Prop :=
  ∀ n, P16533665158671584640.a n = A282087 n

theorem P16533665158671584640.correct : P16533665158671584640.Spec := by
  intro n
  simp only [A282087]

end A282087

/-! ## A282087.P583748384773837626

`ogf((1-x-2x^2)/(1-4x+x^2+6x^3+2x^4))`
-/

namespace A282087.P583748384773837626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -4, 1, 6, 2] n

end

end A282087.P583748384773837626

namespace A282087

/-- `ogf((1-x-2x^2)/(1-4x+x^2+6x^3+2x^4))` -/
def P583748384773837626.Spec : Prop :=
  ∀ n, P583748384773837626.a n = A282087 n

end A282087

/-! ## A282087.P6642940714095141749

`2*A028859(n)-A078057(n)`
-/

namespace A282087.P6642940714095141749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028859 n - A078057 n

end

end A282087.P6642940714095141749

namespace A282087

/-- `2*A028859(n)-A078057(n)` -/
def P6642940714095141749.Spec : Prop :=
  ∀ n, P6642940714095141749.a n = A282087 n

end A282087

/-! ## A282087.P14681360068706034956

`A002605(n+2)-A001333(n+1)`
-/

namespace A282087.P14681360068706034956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 2) - A001333 (n + 1)

end

end A282087.P14681360068706034956

namespace A282087

/-- `A002605(n+2)-A001333(n+1)` -/
def P14681360068706034956.Spec : Prop :=
  ∀ n, P14681360068706034956.a n = A282087 n

end A282087

/-! ## A282087.P2557011132719356490

`∑[A026150(n+1)-A163271(n+1)]`
-/

namespace A282087.P2557011132719356490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 1) - A163271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282087.P2557011132719356490

namespace A282087

/-- `∑[A026150(n+1)-A163271(n+1)]` -/
def P2557011132719356490.Spec : Prop :=
  ∀ n, P2557011132719356490.a n = A282087 n

end A282087

/-! ## A282087.P12562478963140539690

`A005665(n+1)+1-A001333(n+1)`
-/

namespace A282087.P12562478963140539690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005665 (n + 1) + (1 - A001333 (n + 1))

end

end A282087.P12562478963140539690

namespace A282087

/-- `A005665(n+1)+1-A001333(n+1)` -/
def P12562478963140539690.Spec : Prop :=
  ∀ n, P12562478963140539690.a n = A282087 n

end A282087

/-! ## A282087.P16694261605312426196

`A002605(n+2)-A002965(2*n+3)`
-/

namespace A282087.P16694261605312426196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 2) - A002965 (2 * n + 3)

end

end A282087.P16694261605312426196

namespace A282087

/-- `A002605(n+2)-A002965(2*n+3)` -/
def P16694261605312426196.Spec : Prop :=
  ∀ n, P16694261605312426196.a n = A282087 n

end A282087

/-! ## A282087.P6315152715846538875

`1-(Δ[A000129(n+1)]-A005665(n+1))`
-/

namespace A282087.P6315152715846538875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n - A005665 (n + 1))

end

end A282087.P6315152715846538875

namespace A282087

/-- `1-(Δ[A000129(n+1)]-A005665(n+1))` -/
def P6315152715846538875.Spec : Prop :=
  ∀ n, P6315152715846538875.a n = A282087 n

end A282087

/-! ## A282087.P13357717550536999541

`A028859(n)+A028859(n)-A001333(n+1)`
-/

namespace A282087.P13357717550536999541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n + (A028859 n - A001333 (n + 1))

end

end A282087.P13357717550536999541

namespace A282087

/-- `A028859(n)+A028859(n)-A001333(n+1)` -/
def P13357717550536999541.Spec : Prop :=
  ∀ n, P13357717550536999541.a n = A282087 n

end A282087

/-! ## A282087.P12457499807055713884

`A094309(n+4)-(A176758(n+3)+A001333(n+1))`
-/

namespace A282087.P12457499807055713884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094309 (n + 4) - (A176758 (n + 3) + A001333 (n + 1))

end

end A282087.P12457499807055713884

namespace A282087

/-- `A094309(n+4)-(A176758(n+3)+A001333(n+1))` -/
def P12457499807055713884.Spec : Prop :=
  ∀ n, P12457499807055713884.a n = A282087 n

end A282087

/-!
# A282088: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 553", based on the 5-celled von Neumann neighborhood.

The programs for A282088, the canonical program `A282088.P14513073344983035111` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282088 has offset 0).

The definition of A282088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282088.P17942755124884619950

`101*a(n-2)-100*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=101`
-/

namespace A282088.P17942755124884619950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 101] fun n a =>
  101 * a (n - 2) - 100 * a (n - 4)

end

end A282088.P17942755124884619950

namespace A282088

/-- `101*a(n-2)-100*a(n-4)` -/
def P17942755124884619950.Spec : Prop :=
  ∀ n, P17942755124884619950.a n = A282088 n

end A282088

/-! ## A282088.P14513073344983035111

`A279028(abs(A097141(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A282088

/-- `A279028(abs(A097141(n)))` -/
def P14513073344983035111.Spec : Prop :=
  ∀ n, P14513073344983035111.a n = A282088 n

theorem P14513073344983035111.correct : P14513073344983035111.Spec := by
  intro n
  simp only [A282088]

end A282088

/-! ## A282088.P8621757187678156425

`A279028(2*A134824(n)+n)`
-/

namespace A282088.P8621757187678156425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (2 * A134824 n + (n : ℤ)).toNat

end

end A282088.P8621757187678156425

namespace A282088

/-- `A279028(2*A134824(n)+n)` -/
def P8621757187678156425.Spec : Prop :=
  ∀ n, P8621757187678156425.a n = A282088 n

end A282088

/-! ## A282088.P1522898753552604163

`A279028((2-n)*A134824(n))`
-/

namespace A282088.P1522898753552604163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 ((2 - (n : ℤ)) * A134824 n).toNat

end

end A282088.P1522898753552604163

namespace A282088

/-- `A279028((2-n)*A134824(n))` -/
def P1522898753552604163.Spec : Prop :=
  ∀ n, P1522898753552604163.a n = A282088 n

end A282088

/-! ## A282088.P6507978677761408468

`A056830(lcm(1-n, A056594(n)))`
-/

namespace A282088.P6507978677761408468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (Int.lcm (1 - (n : ℤ)) (A056594 n))

end

end A282088.P6507978677761408468

namespace A282088

/-- `A056830(lcm(1-n, A056594(n)))` -/
def P6507978677761408468.Spec : Prop :=
  ∀ n, P6507978677761408468.a n = A282088 n

end A282088

/-! ## A282088.P10572043664102933090

`A279028(lcm(2-n, A097141(n)))`
-/

namespace A282088.P10572043664102933090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (Int.lcm (2 - (n : ℤ)) (A097141 n))

end

end A282088.P10572043664102933090

namespace A282088

/-- `A279028(lcm(2-n, A097141(n)))` -/
def P10572043664102933090.Spec : Prop :=
  ∀ n, P10572043664102933090.a n = A282088 n

end A282088

/-! ## A282088.P13562255290277527037

`A279028(gcd(A097141(n), A279030(n+1)))`
-/

namespace A282088.P13562255290277527037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (Int.gcd (A097141 n) (A279030 (n + 1)))

end

end A282088.P13562255290277527037

namespace A282088

/-- `A279028(gcd(A097141(n), A279030(n+1)))` -/
def P13562255290277527037.Spec : Prop :=
  ∀ n, P13562255290277527037.a n = A282088 n

end A282088

/-! ## A282088.P17206327221697444613

`A279028(A134824(n)+A134824(n)+n)`
-/

namespace A282088.P17206327221697444613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (A134824 n + (A134824 n + (n : ℤ))).toNat

end

end A282088.P17206327221697444613

namespace A282088

/-- `A279028(A134824(n)+A134824(n)+n)` -/
def P17206327221697444613.Spec : Prop :=
  ∀ n, P17206327221697444613.a n = A282088 n

end A282088

/-! ## A282088.P12850109456239379903

`A279028(A134824(n)+A014681(n))`
-/

namespace A282088.P12850109456239379903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (A134824 n + A014681 n).toNat

end

end A282088.P12850109456239379903

namespace A282088

/-- `A279028(A134824(n)+A014681(n))` -/
def P12850109456239379903.Spec : Prop :=
  ∀ n, P12850109456239379903.a n = A282088 n

end A282088

/-! ## A282088.P4723698052109933899

`A279028(A014681(n)-A134824(n)²)`
-/

namespace A282088.P4723698052109933899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (A014681 n - A134824 n ^ 2).toNat

end

end A282088.P4723698052109933899

namespace A282088

/-- `A279028(A014681(n)-A134824(n)²)` -/
def P4723698052109933899.Spec : Prop :=
  ∀ n, P4723698052109933899.a n = A282088 n

end A282088

/-!
# A282090: Totient numbers (A002202) of the form 1 + k + k^2 + k^3 +...+ k^i (i > 1, k > 1).

The programs for A282090, there is no canonical definition to state claims against.
-/

/-! ## A282090.P3096457218261827311

`filter[A325658(n+1), A264739(#)]`
-/

namespace A282090.P3096457218261827311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j).toNat = 1) n)

end

end A282090.P3096457218261827311

/-! ## A282090.P7600275794212206876

`A321491(A397983(n+1))`
-/

namespace A282090.P7600275794212206876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321491 (A397983 (n + 1)).toNat

end

end A282090.P7600275794212206876

/-!
# A282091: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x + y - z a cube of an integer, where x,y,z,w are nonnegative integers with x >= y <= z and x == y (mod 2).

The programs for A282091, there is no canonical definition to state claims against.
-/

/-! ## A282091.P3937542376041061449

`gcd(A035513(2*n+1), A122349(A077066(n+1)))`
-/

namespace A282091.P3937542376041061449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035513 (2 * n + 1)) (A122349 (A077066 (n + 1)).toNat)

end

end A282091.P3937542376041061449

/-! ## A282091.P5371623002021558861

`A276273(A035612(A192969(n)))`
-/

namespace A282091.P5371623002021558861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276273 (A035612 (A192969 n).toNat).toNat

end

end A282091.P5371623002021558861

/-! ## A282091.P5737901035740284864

`A083039(A061579(n)^A112689(n))`
-/

namespace A282091.P5737901035740284864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083039 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A112689 n : ℤ))).toNat

end

end A282091.P5737901035740284864

/-! ## A282091.P17280488912838265612

`∑{d}[A035612(A192969(n)), A248601(#)]`
-/

namespace A282091.P17280488912838265612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A192969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A248601 d

end

end A282091.P17280488912838265612

/-! ## A282091.P15071015430415872087

`A359538(A232751(n+1))`
-/

namespace A282091.P15071015430415872087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359538 (A232751 (n + 1)).toNat

end

end A282091.P15071015430415872087

/-!
# A282092: Numbers m such that there exists at least one integer k < m such that m^2+1 and k^2+1 have the same prime factors.

The programs for A282092, there is no canonical definition to state claims against.
-/

/-! ## A282092.P10020729333975286719

`A284477(Δ[n²])`
-/

namespace A282092.P10020729333975286719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284477 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A282092.P10020729333975286719

/-! ## A282092.P14985228900687229707

`record[A284477(n+1)]`
-/

namespace A282092.P14985228900687229707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282092.P14985228900687229707

/-! ## A282092.P13658899156842275122

`or(char[2], A284477(2*n+1))`
-/

namespace A282092.P13658899156842275122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A284477 (2 * n + 1))

end

end A282092.P13658899156842275122

/-! ## A282092.P17067956867916040345

`A284477(2*n+1)%A199307(n+1)²`
-/

namespace A282092.P17067956867916040345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284477 (2 * n + 1)) (A199307 (n + 1) ^ 2)

end

end A282092.P17067956867916040345

/-! ## A282092.P12874880880881962098

`A284477(2*n+1)+char[A024088(n+2)]`
-/

namespace A282092.P12874880880881962098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024088 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284477 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A282092.P12874880880881962098

/-!
# A282093: Larger member of a pair (x,y) which solves x^2+y^2 = z^3 for positive x, y and z.

The programs for A282093, there is no canonical definition to state claims against.
-/

/-! ## A282093.P5830183348935283401

`∩[A007412(n+1), A282094(n+1)]`
-/

namespace A282093.P5830183348935283401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282093.P5830183348935283401

/-! ## A282093.P17351711989589293271

`A282094(A184004(n+2))`
-/

namespace A282093.P17351711989589293271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282094 (A184004 (n + 2)).toNat

end

end A282093.P17351711989589293271

/-!
# A282094: Larger member of a pair (x,y) which solves x^2 + y^2 = z^3 for nonnegative x, y and z.

The programs for A282094, there is no canonical definition to state claims against.
-/

/-! ## A282094.P10592094887748102644

`∪[A282093(n+1), n^3]`
-/

namespace A282094.P10592094887748102644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282093 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A282094.P10592094887748102644

/-! ## A282094.P16132687702309254735

`∪[A000578(n), A282093(n+1)]`
-/

namespace A282094.P16132687702309254735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282094.P16132687702309254735

/-! ## A282094.P2630816491535451233

`∪[A014187(n), A282093(n+1)]`
-/

namespace A282094.P2630816491535451233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282094.P2630816491535451233

/-! ## A282094.P12187313249768667748

`∪[A030295(n+1), A282093(n+1)]`
-/

namespace A282094.P12187313249768667748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282094.P12187313249768667748

/-! ## A282094.P687926966321372211

`∪[A050750(n+1), A282093(n+1)]`
-/

namespace A282094.P687926966321372211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282094.P687926966321372211

/-!
# A282095: Larger member of a coprime pair (x,y) which solves x^2 + y^2 = z^3 with positive x, y and z.

The programs for A282095, there is no canonical definition to state claims against.
-/

/-! ## A282095.P4554939233368254650

`A345665(A324013(n+3)+eq[1, A249093(n+2)]+2)`
-/

namespace A282095.P4554939233368254650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345665 (A324013 (n + 3) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A282095.P4554939233368254650

/-!
# A282096: Coefficients in q-expansion of E_2*E_6, where E_2, E_6 are the Eisenstein series shown in A006352, A013973, respectively.

The programs for A282096, there is no canonical definition to state claims against.
-/

/-! ## A282096.P4819347002103745222

`A008410(n)+A005843(n)*A013973(n)`
-/

namespace A282096.P4819347002103745222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008410 n + A005843 n * A013973 n

end

end A282096.P4819347002103745222

/-!
# A282097: Coefficients in q-expansion of (3*E_2*E_4 - 2*E_6 - E_2^3)/1728, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A282097, the canonical program `A282097.P9978893990536554872` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282097 has offset 0).

The definition of A282097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282097.P9978893990536554872

`∑{d}[n, #*n²]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282097

/-- `∑{d}[n, #*n²]` -/
def P9978893990536554872.Spec : Prop :=
  ∀ n, (P9978893990536554872.a n : ℤ) = A282097 n

theorem P9978893990536554872.correct : P9978893990536554872.Spec := by
  intro n
  simp only [A282097]

end A282097

/-! ## A282097.P12418920868406948765

`n*∑{d}[n, n*#]`
-/

namespace A282097.P12418920868406948765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n * d)

end

end A282097.P12418920868406948765

namespace A282097

/-- `n*∑{d}[n, n*#]` -/
def P12418920868406948765.Spec : Prop :=
  ∀ n, (P12418920868406948765.a n : ℤ) = A282097 n

end A282097

/-! ## A282097.P3079795232805412136

`floor(∑{d}[n, n^3/#])`
-/

namespace A282097.P3079795232805412136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (n ^ 3 : ℚ) / (d : ℚ)⌋

end

end A282097.P3079795232805412136

namespace A282097

/-- `floor(∑{d}[n, n^3/#])` -/
def P3079795232805412136.Spec : Prop :=
  ∀ n, P3079795232805412136.a n = A282097 n

end A282097

/-! ## A282097.P3463142131056914842

`ceil(∑{d}[n, n^3/#])`
-/

namespace A282097.P3463142131056914842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (n ^ 3 : ℚ) / (d : ℚ)⌉

end

end A282097.P3463142131056914842

namespace A282097

/-- `ceil(∑{d}[n, n^3/#])` -/
def P3463142131056914842.Spec : Prop :=
  ∀ n, P3463142131056914842.a n = A282097 n

end A282097

/-! ## A282097.P977270645297258122

`round(∑{d}[n, n^3/#])`
-/

namespace A282097.P977270645297258122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n ^ 3 : ℚ) / (d : ℚ))

end

end A282097.P977270645297258122

namespace A282097

/-- `round(∑{d}[n, n^3/#])` -/
def P977270645297258122.Spec : Prop :=
  ∀ n, P977270645297258122.a n = A282097 n

end A282097

/-! ## A282097.P7322864499107093005

`A282154(n)/24`
-/

namespace A282097.P7322864499107093005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282154 n : ℚ) / 24

end

end A282097.P7322864499107093005

namespace A282097

/-- `A282154(n)/24` -/
def P7322864499107093005.Spec : Prop :=
  ∀ n, P7322864499107093005.a n = (A282097 n : ℚ)

theorem P7322864499107093005.correct : P7322864499107093005.Spec := by
  intro n
  simp only [A282097, Nat.add_sub_cancel, A282097.P7322864499107093005.a, A282097.P9978893990536554872.f1, A282097.P9978893990536554872.a, A282154, A282154.P723453364652554422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A282097

/-! ## A282097.P8399469919897647136

`∑{d}[n, #]*A000290(n)`
-/

namespace A282097.P8399469919897647136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A000290 n

end

end A282097.P8399469919897647136

namespace A282097

/-- `∑{d}[n, #]*A000290(n)` -/
def P8399469919897647136.Spec : Prop :=
  ∀ n, P8399469919897647136.a n = A282097 n

end A282097

/-! ## A282097.P9140031630779662697

`(A039653(n)+1)*n²`
-/

namespace A282097.P9140031630779662697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 n + 1) * (n ^ 2 : ℤ)

end

end A282097.P9140031630779662697

namespace A282097

/-- `(A039653(n)+1)*n²` -/
def P9140031630779662697.Spec : Prop :=
  ∀ n, P9140031630779662697.a n = A282097 n

end A282097

/-! ## A282097.P6020984538240259447

`A000203(abs(1-n)+1)*n²`
-/

namespace A282097.P6020984538240259447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat * (n ^ 2 : ℤ)

end

end A282097.P6020984538240259447

namespace A282097

/-- `A000203(abs(1-n)+1)*n²` -/
def P6020984538240259447.Spec : Prop :=
  ∀ n, P6020984538240259447.a n = A282097 n

end A282097

/-! ## A282097.P7155218672093198656

`(A155085(abs(1-n)+1)-n)*n²`
-/

namespace A282097.P7155218672093198656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (|1 - (n : ℤ)| + 1).toNat - (n : ℤ)) * (n ^ 2 : ℤ)

end

end A282097.P7155218672093198656

namespace A282097

/-- `(A155085(abs(1-n)+1)-n)*n²` -/
def P7155218672093198656.Spec : Prop :=
  ∀ n, P7155218672093198656.a n = A282097 n

end A282097

/-! ## A282097.P8003647417723563806

`n*A064987(A028310(n))`
-/

namespace A282097.P8003647417723563806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064987 (A028310 n).toNat

end

end A282097.P8003647417723563806

namespace A282097

/-- `n*A064987(A028310(n))` -/
def P8003647417723563806.Spec : Prop :=
  ∀ n, P8003647417723563806.a n = A282097 n

end A282097

/-! ## A282097.P5072769828504490481

`A282211(n)/A028310(n)`
-/

namespace A282097.P5072769828504490481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282211 n : ℚ) / (A028310 n : ℚ)

end

end A282097.P5072769828504490481

namespace A282097

/-- `A282211(n)/A028310(n)` -/
def P5072769828504490481.Spec : Prop :=
  ∀ n, P5072769828504490481.a n = (A282097 n : ℚ)

end A282097

/-! ## A282097.P16750368669281554637

`A280022(n)/A253909(n)`
-/

namespace A282097.P16750368669281554637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280022 n : ℚ) / (A253909 n : ℚ)

end

end A282097.P16750368669281554637

namespace A282097

/-- `A280022(n)/A253909(n)` -/
def P16750368669281554637.Spec : Prop :=
  ∀ n, P16750368669281554637.a n = (A282097 n : ℚ)

end A282097

/-! ## A282097.P1954085543335591971

`n²*A245092(A004273(n))`
-/

namespace A282097.P1954085543335591971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A245092 (A004273 n).toNat

end

end A282097.P1954085543335591971

namespace A282097

/-- `n²*A245092(A004273(n))` -/
def P1954085543335591971.Spec : Prop :=
  ∀ n, P1954085543335591971.a n = A282097 n

end A282097

/-! ## A282097.P15854959063276409984

`A280022(n)/A028310(n)²`
-/

namespace A282097.P15854959063276409984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280022 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A282097.P15854959063276409984

namespace A282097

/-- `A280022(n)/A028310(n)²` -/
def P15854959063276409984.Spec : Prop :=
  ∀ n, P15854959063276409984.a n = (A282097 n : ℚ)

end A282097

/-! ## A282097.P15876464121717052271

`(A000203(n+1)-A340793(n+1))*n²`
-/

namespace A282097.P15876464121717052271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A340793 (n + 1)) * (n ^ 2 : ℤ)

end

end A282097.P15876464121717052271

namespace A282097

/-- `(A000203(n+1)-A340793(n+1))*n²` -/
def P15876464121717052271.Spec : Prop :=
  ∀ n, P15876464121717052271.a n = A282097 n

end A282097

/-! ## A282097.P4555784942801888816

`n²*A245092(record[A006369(n)])`
-/

namespace A282097.P4555784942801888816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A245092 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282097.P4555784942801888816

namespace A282097

/-- `n²*A245092(record[A006369(n)])` -/
def P4555784942801888816.Spec : Prop :=
  ∀ n, P4555784942801888816.a n = A282097 n

end A282097

/-! ## A282097.P11177031365708950116

`n²*A000203(A065033(2*n))`
-/

namespace A282097.P11177031365708950116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000203 (A065033 (2 * n)).toNat

end

end A282097.P11177031365708950116

namespace A282097

/-- `n²*A000203(A065033(2*n))` -/
def P11177031365708950116.Spec : Prop :=
  ∀ n, P11177031365708950116.a n = A282097 n

end A282097

/-! ## A282097.P13772419124196263171

`n²*A000203(A123108(2*n))`
-/

namespace A282097.P13772419124196263171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000203 (A123108 (2 * n)).toNat

end

end A282097.P13772419124196263171

namespace A282097

/-- `n²*A000203(A123108(2*n))` -/
def P13772419124196263171.Spec : Prop :=
  ∀ n, P13772419124196263171.a n = A282097 n

end A282097

/-!
# A282098: a(n) = A006530(a(n-1)) + A006530(a(n-2)) + A006530(a(n-3)) with a(0) = a(1) = a(2) = 1.

The programs for A282098, the canonical program `A282098.P4672254977080989792` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282098 has offset 0).

The definition of A282098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282098.P4672254977080989792

`A006530(a(n-1))+A006530(a(n-2))+A006530(a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A282098

/-- `A006530(a(n-1))+A006530(a(n-2))+A006530(a(n-3))` -/
def P4672254977080989792.Spec : Prop :=
  ∀ n, P4672254977080989792.a n = A282098 n

theorem P4672254977080989792.correct : P4672254977080989792.Spec := by
  intro n
  simp only [A282098]

end A282098

/-!
# A282099: Coefficients in q-expansion of (E_2^2*E_4 - 2*E_2*E_6 + E_4^2)/1728, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A282099, the canonical program `A282099.P15182332998967256290` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282099 has offset 0).

The definition of A282099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282099.P15182332998967256290

`∑{d}[n, n²*#^3]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A282099

/-- `∑{d}[n, n²*#^3]` -/
def P15182332998967256290.Spec : Prop :=
  ∀ n, (P15182332998967256290.a n : ℤ) = A282099 n

theorem P15182332998967256290.correct : P15182332998967256290.Spec := by
  intro n
  simp only [A282099]

end A282099

/-! ## A282099.P5304075810494253671

`n*∑{d}[n, n*#^3]`
-/

namespace A282099.P5304075810494253671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n * d ^ 3)

end

end A282099.P5304075810494253671

namespace A282099

/-- `n*∑{d}[n, n*#^3]` -/
def P5304075810494253671.Spec : Prop :=
  ∀ n, (P5304075810494253671.a n : ℤ) = A282099 n

end A282099

/-! ## A282099.P18144869260680448856

`n*A281372(n)`
-/

namespace A282099.P18144869260680448856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A281372 n

end

end A282099.P18144869260680448856

namespace A282099

/-- `n*A281372(n)` -/
def P18144869260680448856.Spec : Prop :=
  ∀ n, P18144869260680448856.a n = A282099 n

end A282099

/-! ## A282099.P8120056415964358943

`A282213(n)/A028310(n)`
-/

namespace A282099.P8120056415964358943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282213 n : ℚ) / (A028310 n : ℚ)

end

end A282099.P8120056415964358943

namespace A282099

/-- `A282213(n)/A028310(n)` -/
def P8120056415964358943.Spec : Prop :=
  ∀ n, P8120056415964358943.a n = (A282099 n : ℚ)

end A282099

/-! ## A282099.P1395312563233049490

`A280025(n)/A253909(n)`
-/

namespace A282099.P1395312563233049490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 n : ℚ) / (A253909 n : ℚ)

end

end A282099.P1395312563233049490

namespace A282099

/-- `A280025(n)/A253909(n)` -/
def P1395312563233049490.Spec : Prop :=
  ∀ n, P1395312563233049490.a n = (A282099 n : ℚ)

end A282099

/-! ## A282099.P15449110569681851056

`A280025(n)/A028310(n)²`
-/

namespace A282099.P15449110569681851056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A282099.P15449110569681851056

namespace A282099

/-- `A280025(n)/A028310(n)²` -/
def P15449110569681851056.Spec : Prop :=
  ∀ n, P15449110569681851056.a n = (A282099 n : ℚ)

end A282099

/-! ## A282099.P15021947784034248243

`n/A253909(n)*A282213(n)`
-/

namespace A282099.P15021947784034248243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253909 n : ℚ) * (A282213 n : ℚ)

end

end A282099.P15021947784034248243

namespace A282099

/-- `n/A253909(n)*A282213(n)` -/
def P15021947784034248243.Spec : Prop :=
  ∀ n, P15021947784034248243.a n = (A282099 n : ℚ)

end A282099

/-! ## A282099.P6973909626527885934

`A280025(n)/A123108(2*n)²`
-/

namespace A282099.P6973909626527885934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 n : ℚ) / (A123108 (2 * n) ^ 2 : ℚ)

end

end A282099.P6973909626527885934

namespace A282099

/-- `A280025(n)/A123108(2*n)²` -/
def P6973909626527885934.Spec : Prop :=
  ∀ n, P6973909626527885934.a n = (A282099 n : ℚ)

end A282099

/-! ## A282099.P15707589562830847864

`A280025(n)/A028310(n*A028310(n))`
-/

namespace A282099.P15707589562830847864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 n : ℚ) / (A028310 ((n : ℤ) * A028310 n).toNat : ℚ)

end

end A282099.P15707589562830847864

namespace A282099

/-- `A280025(n)/A028310(n*A028310(n))` -/
def P15707589562830847864.Spec : Prop :=
  ∀ n, P15707589562830847864.a n = (A282099 n : ℚ)

end A282099

