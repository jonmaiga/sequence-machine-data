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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A373100: Last digit of n*2^n - 1.

The programs for A373100, the canonical program `A373100.P6860553483612996895` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373100 has offset 1).

The definition of A373100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373100.P6860553483612996895

`ogf((1+7x+2x^2-4x^3+7x^4+6x^5-9x^6-2x^7+13x^8+2x^9-8x^10+x^11+9x^12)/(1-x^2+x^4-x^5-x^6+x^7+x^8-x^9+x^11-x^13))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373100

/-- `ogf((1+7x+2x^2-4x^3+7x^4+6x^5-9x^6-2x^7+13x^8+2x^9-8x^10+x^11+9x^12)/(1-x^2+x^4-x^5-x^6+x^7+x^8-x^9+x^11-x^13))` -/
def P6860553483612996895.Spec : Prop :=
  ∀ n, P6860553483612996895.a n = A373100 (n + 1)

theorem P6860553483612996895.correct : P6860553483612996895.Spec := by
  intro n
  simp only [A373100, Nat.add_sub_cancel]

end A373100

/-!
# A373101: Triangle read by rows, T(n,k) = (binomial(n,k)^3 - binomial(n,k))/6 for k=1..n-1 and n >= 2.

The programs for A373101, the canonical program `A373101.P8641558268484953081` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373101 has offset 2).

The definition of A373101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373101.P8641558268484953081

`C(A014430(n)+2, 3)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373101

/-- `C(A014430(n)+2, 3)` -/
def P8641558268484953081.Spec : Prop :=
  ∀ n, (P8641558268484953081.a n : ℤ) = A373101 (n + 2)

theorem P8641558268484953081.correct : P8641558268484953081.Spec := by
  intro n
  simp only [A373101, Nat.add_sub_cancel]

end A373101

/-! ## A373101.P5274629491493607634

`C(A014410(n+2)+1, 3)`
-/

namespace A373101.P5274629491493607634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014410 (n + 2) + 1).toNat 3

end

end A373101.P5274629491493607634

namespace A373101

/-- `C(A014410(n+2)+1, 3)` -/
def P5274629491493607634.Spec : Prop :=
  ∀ n, (P5274629491493607634.a n : ℤ) = A373101 (n + 2)

end A373101

/-! ## A373101.P6698979566875617010

`A000292(A014430(n))`
-/

namespace A373101.P6698979566875617010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A014430 n).toNat

end

end A373101.P6698979566875617010

namespace A373101

/-- `A000292(A014430(n))` -/
def P6698979566875617010.Spec : Prop :=
  ∀ n, P6698979566875617010.a n = A373101 (n + 2)

end A373101

/-! ## A373101.P9323225018869124139

`A000292(A014410(n+2)-1)`
-/

namespace A373101.P9323225018869124139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A014410 (n + 2) - 1).toNat

end

end A373101.P9323225018869124139

namespace A373101

/-- `A000292(A014410(n+2)-1)` -/
def P9323225018869124139.Spec : Prop :=
  ∀ n, P9323225018869124139.a n = A373101 (n + 2)

end A373101

/-! ## A373101.P8852607417536985042

`A000292(A194121(n)-A194118(n)-1)`
-/

namespace A373101.P8852607417536985042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A194121 n - A194118 n - 1).toNat

end

end A373101.P8852607417536985042

namespace A373101

/-- `A000292(A194121(n)-A194118(n)-1)` -/
def P8852607417536985042.Spec : Prop :=
  ∀ n, P8852607417536985042.a n = A373101 (n + 2)

end A373101

/-! ## A373101.P5355959614853421414

`A000292(A074909(n+1)+A074909(n)-1)`
-/

namespace A373101.P5355959614853421414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A074909 (n + 1) + A074909 n - 1).toNat

end

end A373101.P5355959614853421414

namespace A373101

/-- `A000292(A074909(n+1)+A074909(n)-1)` -/
def P5355959614853421414.Spec : Prop :=
  ∀ n, P5355959614853421414.a n = A373101 (n + 2)

end A373101

/-! ## A373101.P8277329758832602087

`A000292(A252820(n+1)-A252876(n+1))`
-/

namespace A373101.P8277329758832602087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A252820 (n + 1) - A252876 (n + 1)).toNat

end

end A373101.P8277329758832602087

namespace A373101

/-- `A000292(A252820(n+1)-A252876(n+1))` -/
def P8277329758832602087.Spec : Prop :=
  ∀ n, P8277329758832602087.a n = A373101 (n + 2)

end A373101

/-!
# A373103: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^4.

The programs for A373103, the canonical program `A373103.P1036733656248794888` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373103 has offset 1).

The definition of A373103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373103.P1036733656248794888

`∑{d}[n+1, A013957(#)*A334660((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373103

/-- `∑{d}[n+1, A013957(#)*A334660((n+1)/#)]` -/
def P1036733656248794888.Spec : Prop :=
  ∀ n, P1036733656248794888.a n = A373103 (n + 1)

theorem P1036733656248794888.correct : P1036733656248794888.Spec := by
  intro n
  simp only [A373103, Nat.add_sub_cancel]

end A373103

/-! ## A373103.P11361488893079250541

`∑{d}[n+1, A239443(#)*A372966((n+1)/#)]`
-/

namespace A373103.P11361488893079250541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239443 d * A372966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373103.P11361488893079250541

namespace A373103

/-- `∑{d}[n+1, A239443(#)*A372966((n+1)/#)]` -/
def P11361488893079250541.Spec : Prop :=
  ∀ n, P11361488893079250541.a n = A373103 (n + 1)

end A373103

/-!
# A373106: Number of vertices among all distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square when every pair of the 4 + 4*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A373106, there is no canonical definition to state claims against.
-/

/-! ## A373106.P2546441366248075989

`A373108(n)-A373107(n)+1`
-/

namespace A373106.P2546441366248075989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373108 n - A373107 n + 1

end

end A373106.P2546441366248075989

/-!
# A373107: Number of regions among all distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square when every pair of the 4 + 4*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A373107, there is no canonical definition to state claims against.
-/

/-! ## A373107.P8053253638017309859

`A373108(n)-A373106(n)+1`
-/

namespace A373107.P8053253638017309859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373108 n - A373106 n + 1

end

end A373107.P8053253638017309859

/-!
# A373108: Number of edges among all distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square when every pair of the 4 + 4*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A373108, there is no canonical definition to state claims against.
-/

/-! ## A373108.P15934735785594045300

`A373106(n)+A373107(n)-1`
-/

namespace A373108.P15934735785594045300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373106 n + A373107 n - 1

end

end A373108.P15934735785594045300

/-!
# A373110: Number of distinct circles that can be constructed from the 4 vertices and the equally spaced 4*n points placed on the sides of a square when every pair of the 4 + 4*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A373110, the canonical program `A373110.P8868248740056110779` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373110 has offset 0).

The definition of A373110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373110.P8868248740056110779

`∑[A255413(n+1)-n]-n`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373110

/-- `∑[A255413(n+1)-n]-n` -/
def P8868248740056110779.Spec : Prop :=
  ∀ n, P8868248740056110779.a n = A373110 n

theorem P8868248740056110779.correct : P8868248740056110779.Spec := by
  intro n
  simp only [A373110]

end A373110

/-! ## A373110.P13171331660500262556

`∑[A059841(n)+14*n+3]+1`
-/

namespace A373110.P13171331660500262556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (14 * n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A373110.P13171331660500262556

namespace A373110

/-- `∑[A059841(n)+14*n+3]+1` -/
def P13171331660500262556.Spec : Prop :=
  ∀ n, P13171331660500262556.a n = A373110 n

end A373110

/-! ## A373110.P12304693344702365611

`A178977(n)+A032526(n)`
-/

namespace A373110.P12304693344702365611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178977 n + A032526 n

end

end A373110.P12304693344702365611

namespace A373110

/-- `A178977(n)+A032526(n)` -/
def P12304693344702365611.Spec : Prop :=
  ∀ n, P12304693344702365611.a n = A373110 n

end A373110

/-! ## A373110.P13017614467995003098

`A201279(n)+A035608(n)`
-/

namespace A373110.P13017614467995003098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 n + A035608 n

end

end A373110.P13017614467995003098

namespace A373110

/-- `A201279(n)+A035608(n)` -/
def P13017614467995003098.Spec : Prop :=
  ∀ n, P13017614467995003098.a n = A373110 n

end A373110

/-! ## A373110.P9837109245501534857

`A283394(n)+A121509(n+1)`
-/

namespace A373110.P9837109245501534857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283394 n + A121509 (n + 1)

end

end A373110.P9837109245501534857

namespace A373110

/-- `A283394(n)+A121509(n+1)` -/
def P9837109245501534857.Spec : Prop :=
  ∀ n, P9837109245501534857.a n = A373110 n

end A373110

/-! ## A373110.P14955360579706428706

`A060820(n+1)-A156859(n)`
-/

namespace A373110.P14955360579706428706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060820 (n + 1) - A156859 n

end

end A373110.P14955360579706428706

namespace A373110

/-- `A060820(n+1)-A156859(n)` -/
def P14955360579706428706.Spec : Prop :=
  ∀ n, P14955360579706428706.a n = A373110 n

end A373110

/-! ## A373110.P15101964399782403306

`A171769(n+1)+A126587(n+1)`
-/

namespace A373110.P15101964399782403306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171769 (n + 1) + A126587 (n + 1)

end

end A373110.P15101964399782403306

namespace A373110

/-- `A171769(n+1)+A126587(n+1)` -/
def P15101964399782403306.Spec : Prop :=
  ∀ n, P15101964399782403306.a n = A373110 n

end A373110

/-! ## A373110.P16725004273442063058

`A254527(n+1)-A267682(n+1)`
-/

namespace A373110.P16725004273442063058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254527 (n + 1) - A267682 (n + 1)

end

end A373110.P16725004273442063058

namespace A373110

/-- `A254527(n+1)-A267682(n+1)` -/
def P16725004273442063058.Spec : Prop :=
  ∀ n, P16725004273442063058.a n = A373110 n

end A373110

/-! ## A373110.P13541722707602111969

`A016754(n)+A016742(n+1)-A156859(n)`
-/

namespace A373110.P13541722707602111969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A016742 (n + 1) - A156859 n

end

end A373110.P13541722707602111969

namespace A373110

/-- `A016754(n)+A016742(n+1)-A156859(n)` -/
def P13541722707602111969.Spec : Prop :=
  ∀ n, P13541722707602111969.a n = A373110 n

end A373110

/-! ## A373110.P8335334605170174139

`A054556(n+2)+A033951(n)-A014848(n)`
-/

namespace A373110.P8335334605170174139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 2) + A033951 n - A014848 n

end

end A373110.P8335334605170174139

namespace A373110

/-- `A054556(n+2)+A033951(n)-A014848(n)` -/
def P8335334605170174139.Spec : Prop :=
  ∀ n, P8335334605170174139.a n = A373110 n

end A373110

/-! ## A373110.P14258169117569014627

`A033951(n)+A007742(n+1)-A267682(n+1)`
-/

namespace A373110.P14258169117569014627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n + A007742 (n + 1) - A267682 (n + 1)

end

end A373110.P14258169117569014627

namespace A373110

/-- `A033951(n)+A007742(n+1)-A267682(n+1)` -/
def P14258169117569014627.Spec : Prop :=
  ∀ n, P14258169117569014627.a n = A373110 n

end A373110

/-! ## A373110.P15518119624881734377

`A054554(n+2)+A054554(n+2)-A267682(n+1)`
-/

namespace A373110.P15518119624881734377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 2) + A054554 (n + 2) - A267682 (n + 1)

end

end A373110.P15518119624881734377

namespace A373110

/-- `A054554(n+2)+A054554(n+2)-A267682(n+1)` -/
def P15518119624881734377.Spec : Prop :=
  ∀ n, P15518119624881734377.a n = A373110 n

end A373110

/-! ## A373110.P3683818850695536876

`floor(A069099(2*(n+1))/2)+1`
-/

namespace A373110.P3683818850695536876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069099 (2 * (n + 1)) : ℚ) / 2⌋ + 1

end

end A373110.P3683818850695536876

namespace A373110

/-- `floor(A069099(2*(n+1))/2)+1` -/
def P3683818850695536876.Spec : Prop :=
  ∀ n, P3683818850695536876.a n = A373110 n

end A373110

/-! ## A373110.P12144497625967605037

`ceil(A024966(2*n+1)/2)+1`
-/

namespace A373110.P12144497625967605037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024966 (2 * n + 1) : ℚ) / 2⌉ + 1

end

end A373110.P12144497625967605037

namespace A373110

/-- `ceil(A024966(2*n+1)/2)+1` -/
def P12144497625967605037.Spec : Prop :=
  ∀ n, P12144497625967605037.a n = A373110 n

end A373110

/-! ## A373110.P15064168904267308974

`A281026(2*n)+A007742(n+1)`
-/

namespace A373110.P15064168904267308974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 (2 * n) + A007742 (n + 1)

end

end A373110.P15064168904267308974

namespace A373110

/-- `A281026(2*n)+A007742(n+1)` -/
def P15064168904267308974.Spec : Prop :=
  ∀ n, P15064168904267308974.a n = A373110 n

end A373110

/-! ## A373110.P9048445020276156323

`A001844(2*n+1)-A156859(n)`
-/

namespace A373110.P9048445020276156323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * n + 1) - A156859 n

end

end A373110.P9048445020276156323

namespace A373110

/-- `A001844(2*n+1)-A156859(n)` -/
def P9048445020276156323.Spec : Prop :=
  ∀ n, P9048445020276156323.a n = A373110 n

end A373110

/-! ## A373110.P9766950936912267106

`A195041(2*n+1)+A047345(n+2)`
-/

namespace A373110.P9766950936912267106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 (2 * n + 1) + A047345 (n + 2)

end

end A373110.P9766950936912267106

namespace A373110

/-- `A195041(2*n+1)+A047345(n+2)` -/
def P9766950936912267106.Spec : Prop :=
  ∀ n, P9766950936912267106.a n = A373110 n

end A373110

/-! ## A373110.P18326712726732907056

`A343007(2*n+1)-A267682(n+1)`
-/

namespace A373110.P18326712726732907056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343007 (2 * n + 1) - A267682 (n + 1)

end

end A373110.P18326712726732907056

namespace A373110

/-- `A343007(2*n+1)-A267682(n+1)` -/
def P18326712726732907056.Spec : Prop :=
  ∀ n, P18326712726732907056.a n = A373110 n

end A373110

/-! ## A373110.P15377336932863393738

`∑[A313510(3*n+1)]-n`
-/

namespace A373110.P15377336932863393738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A373110.P15377336932863393738

namespace A373110

/-- `∑[A313510(3*n+1)]-n` -/
def P15377336932863393738.Spec : Prop :=
  ∀ n, P15377336932863393738.a n = A373110 n

end A373110

/-!
# A373111: Lexicographically earliest sequence of positive integers such that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form a progression of the form c, c+2d, c+d, where d >= 0.

The programs for A373111, there is no canonical definition to state claims against.
-/

/-! ## A373111.P5025730025460803182

`A373010(n+1)^A000108(A292260(n))`
-/

namespace A373111.P5025730025460803182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373010 (n + 1) : ℚ) ^ (A000108 (A292260 n).toNat : ℤ)

end

end A373111.P5025730025460803182

/-!
# A373112: Number of binary digits in the integer part of e^n.

The programs for A373112, the canonical program `A373112.P6539485442718131367` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373112 has offset 1).

The definition of A373112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373112.P6539485442718131367

`floor(log2(floor(e^(n+1))))+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373112

/-- `floor(log2(floor(e^(n+1))))+1` -/
def P6539485442718131367.Spec : Prop :=
  ∀ n, (P6539485442718131367.a n : ℤ) = A373112 (n + 1)

theorem P6539485442718131367.correct : P6539485442718131367.Spec := by
  intro n
  simp only [A373112, Nat.add_sub_cancel]

end A373112

/-! ## A373112.P3935166787986057482

`A020725(A307513(n+1))`
-/

namespace A373112.P3935166787986057482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A307513 (n + 1)).toNat

end

end A373112.P3935166787986057482

namespace A373112

/-- `A020725(A307513(n+1))` -/
def P3935166787986057482.Spec : Prop :=
  ∀ n, P3935166787986057482.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P15564145737159617139

`A008619(A078608(n+1))`
-/

namespace A373112.P15564145737159617139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A078608 (n + 1)).toNat

end

end A373112.P15564145737159617139

namespace A373112

/-- `A008619(A078608(n+1))` -/
def P15564145737159617139.Spec : Prop :=
  ∀ n, P15564145737159617139.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P16220342808052301252

`A065033(A342831(n+1))`
-/

namespace A373112.P16220342808052301252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A342831 (n + 1)).toNat

end

end A373112.P16220342808052301252

namespace A373112

/-- `A065033(A342831(n+1))` -/
def P16220342808052301252.Spec : Prop :=
  ∀ n, P16220342808052301252.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P15061444353620154791

`A065033(A078608(n+1)+1)`
-/

namespace A373112.P15061444353620154791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A078608 (n + 1) + 1).toNat

end

end A373112.P15061444353620154791

namespace A373112

/-- `A065033(A078608(n+1)+1)` -/
def P15061444353620154791.Spec : Prop :=
  ∀ n, P15061444353620154791.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P4782350477487313038

`A004526(A342831(n+1)+1)`
-/

namespace A373112.P4782350477487313038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342831 (n + 1) + 1).toNat

end

end A373112.P4782350477487313038

namespace A373112

/-- `A004526(A342831(n+1)+1)` -/
def P4782350477487313038.Spec : Prop :=
  ∀ n, P4782350477487313038.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P6346820589704199327

`A123108(A342831(n+1)+1)`
-/

namespace A373112.P6346820589704199327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A342831 (n + 1) + 1).toNat

end

end A373112.P6346820589704199327

namespace A373112

/-- `A123108(A342831(n+1)+1)` -/
def P6346820589704199327.Spec : Prop :=
  ∀ n, P6346820589704199327.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P4333368992466075177

`A123108(A078608(n+1)+2)`
-/

namespace A373112.P4333368992466075177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A078608 (n + 1) + 2).toNat

end

end A373112.P4333368992466075177

namespace A373112

/-- `A123108(A078608(n+1)+2)` -/
def P4333368992466075177.Spec : Prop :=
  ∀ n, P4333368992466075177.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P13922557584708762476

`record[ceil(log2(exp(abs(1-n))))]`
-/

namespace A373112.P13922557584708762476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.exp (|1 - (n : ℤ)| : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373112.P13922557584708762476

namespace A373112

/-- `record[ceil(log2(exp(abs(1-n))))]` -/
def P13922557584708762476.Spec : Prop :=
  ∀ n, P13922557584708762476.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P1080700934886503172

`floor(log2(cosh(n+1)))+2`
-/

namespace A373112.P1080700934886503172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.cosh (n + 1 : ℝ))⌋ + 2

end

end A373112.P1080700934886503172

namespace A373112

/-- `floor(log2(cosh(n+1)))+2` -/
def P1080700934886503172.Spec : Prop :=
  ∀ n, P1080700934886503172.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P4951383290347034762

`ceil(log2(cosh(n+1)))+1`
-/

namespace A373112.P4951383290347034762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.cosh (n + 1 : ℝ))⌉ + 1

end

end A373112.P4951383290347034762

namespace A373112

/-- `ceil(log2(cosh(n+1)))+1` -/
def P4951383290347034762.Spec : Prop :=
  ∀ n, P4951383290347034762.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P7117122351213862132

`floor(log2(sinh(n+1)))+2`
-/

namespace A373112.P7117122351213862132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sinh (n + 1 : ℝ))⌋ + 2

end

end A373112.P7117122351213862132

namespace A373112

/-- `floor(log2(sinh(n+1)))+2` -/
def P7117122351213862132.Spec : Prop :=
  ∀ n, P7117122351213862132.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P17433986899832653849

`ceil(log2(sinh(n+1)))+1`
-/

namespace A373112.P17433986899832653849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sinh (n + 1 : ℝ))⌉ + 1

end

end A373112.P17433986899832653849

namespace A373112

/-- `ceil(log2(sinh(n+1)))+1` -/
def P17433986899832653849.Spec : Prop :=
  ∀ n, P17433986899832653849.a n = A373112 (n + 1)

end A373112

/-! ## A373112.P6845434280613328657

`Δ[record[A293056(n+1)]]`
-/

namespace A373112.P6845434280613328657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373112.P6845434280613328657

namespace A373112

/-- `Δ[record[A293056(n+1)]]` -/
def P6845434280613328657.Spec : Prop :=
  ∀ n, P6845434280613328657.a n = A373112 (n + 1)

end A373112

/-!
# A373113: For n >= 1, a(n) = Sum_{i = n..(n + A000005(n) - 1)} i.

The programs for A373113, the canonical program `A373113.P16353525734578801021` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373113 has offset 1).

The definition of A373113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]` (program `A373113.P16353525734578801021`, by `A373113.P16353525734578801021.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373113.P16353525734578801021

`∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373113

/-- `∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]` -/
def P16353525734578801021.Spec : Prop :=
  ∀ n, (P16353525734578801021.a n : ℤ) = A373113 (n + 1)

theorem P16353525734578801021.correct : P16353525734578801021.Spec := by
  intro n
  simp only [A373113, Nat.add_sub_cancel]

end A373113

/-! ## A373113.P5306061583150364909

`A066446(n+1)+(n+1)*A000005(n+1)`
-/

namespace A373113.P5306061583150364909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (n + 1 : ℤ) * A000005 (n + 1)

end

end A373113.P5306061583150364909

namespace A373113

/-- `A066446(n+1)+(n+1)*A000005(n+1)` -/
def P5306061583150364909.Spec : Prop :=
  ∀ n, P5306061583150364909.a n = A373113 (n + 1)

end A373113

/-! ## A373113.P1804631375823723706

`∑{d}[n+1, lcm(#, n+1)]+C(∏{e}[n+1, #+1], 2)`
-/

namespace A373113.P1804631375823723706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) + Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) 2

end

end A373113.P1804631375823723706

namespace A373113

/-- `∑{d}[n+1, lcm(#, n+1)]+C(∏{e}[n+1, #+1], 2)` -/
def P1804631375823723706.Spec : Prop :=
  ∀ n, (P1804631375823723706.a n : ℤ) = A373113 (n + 1)

end A373113

/-! ## A373113.P13392309565574991279

`A066446(n+1)+A038040(n+1)`
-/

namespace A373113.P13392309565574991279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + A038040 (n + 1)

end

end A373113.P13392309565574991279

namespace A373113

/-- `A066446(n+1)+A038040(n+1)` -/
def P13392309565574991279.Spec : Prop :=
  ∀ n, P13392309565574991279.a n = A373113 (n + 1)

end A373113

/-! ## A373113.P13691137557068319376

`A038040(n+1)+C(A000005(n+1), 2)`
-/

namespace A373113.P13691137557068319376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + (Nat.choose (A000005 (n + 1)).toNat 2 : ℤ)

end

end A373113.P13691137557068319376

namespace A373113

/-- `A038040(n+1)+C(A000005(n+1), 2)` -/
def P13691137557068319376.Spec : Prop :=
  ∀ n, P13691137557068319376.a n = A373113 (n + 1)

end A373113

/-! ## A373113.P5860199693939776661

`A184389(n+1)+n*A000005(n+1)`
-/

namespace A373113.P5860199693939776661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + (n : ℤ) * A000005 (n + 1)

end

end A373113.P5860199693939776661

namespace A373113

/-- `A184389(n+1)+n*A000005(n+1)` -/
def P5860199693939776661.Spec : Prop :=
  ∀ n, P5860199693939776661.a n = A373113 (n + 1)

end A373113

/-! ## A373113.P15479078922690522305

`A000217(∏{e}[n+1, #+1]+n)-A000217(n)`
-/

namespace A373113.P15479078922690522305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + n) - A000217 n

end

end A373113.P15479078922690522305

namespace A373113

/-- `A000217(∏{e}[n+1, #+1]+n)-A000217(n)` -/
def P15479078922690522305.Spec : Prop :=
  ∀ n, P15479078922690522305.a n = A373113 (n + 1)

end A373113

/-!
# A373114: Cardinality of the largest subset of {1,...,n} such that no odd number of terms from this subset multiply to a square.

The programs for A373114, there is no canonical definition to state claims against.
-/

/-! ## A373114.P77680970555292595

`(n+1-A360659(n+1))/2`
-/

namespace A373114.P77680970555292595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A360659 (n + 1) : ℚ) / 2

end

end A373114.P77680970555292595

/-! ## A373114.P8233338742712308079

`A110654(n+1-A360659(n+1))`
-/

namespace A373114.P8233338742712308079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n + 1 : ℤ) - A360659 (n + 1)).toNat

end

end A373114.P8233338742712308079

/-! ## A373114.P13674178853579959146

`A115384(A218444(n)%A338646(n+1))`
-/

namespace A373114.P13674178853579959146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (Int.tmod (A218444 n) (A338646 (n + 1))).toNat

end

end A373114.P13674178853579959146

/-! ## A373114.P3592457154781646224

`A115384(A218444(n))%A005555(3*(n+1))`
-/

namespace A373114.P3592457154781646224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115384 (A218444 n).toNat) (A005555 (3 * (n + 1)))

end

end A373114.P3592457154781646224

/-!
# A373115: Number weak ascent sequences of length 2n (prefixed with a zero) with exactly n weak ascents.

The programs for A373115, there is no canonical definition to state claims against.
-/

/-! ## A373115.P16888693996078685400

`A369321(∑[4*n])`
-/

namespace A373115.P16888693996078685400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373115.P16888693996078685400

/-! ## A373115.P8407393440029303482

`A065272(A326573(n))-A051953(n+1)`
-/

namespace A373115.P8407393440029303482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065272 (A326573 n).toNat - A051953 (n + 1)

end

end A373115.P8407393440029303482

/-!
# A373116: Fibonacci numbers whose digits product is a positive perfect power (A001597).

The programs for A373116, there is no canonical definition to state claims against.
-/

/-! ## A373116.P8590595285188476875

`A000045(∑[∑{e}[A260916(3*(n+1)), #]])`
-/

namespace A373116.P8590595285188476875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260916 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373116.P8590595285188476875

/-! ## A373116.P4806734324904106561

`A000045(A269003(n)+A072956(n+1))`
-/

namespace A373116.P4806734324904106561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A269003 n + A072956 (n + 1)).toNat

end

end A373116.P4806734324904106561

/-!
# A373117: Stable numbers on vertical blade (see the Example section for an explanation).

The programs for A373117, there is no canonical definition to state claims against.
-/

/-! ## A373117.P6308396678117343659

`∪[A061917(n+1), A282151(n+1)]`
-/

namespace A373117.P6308396678117343659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373117.P6308396678117343659

/-! ## A373117.P4654920862454822078

`∪[A282151(n+1), A325152(n+1)]`
-/

namespace A373117.P4654920862454822078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373117.P4654920862454822078

/-!
# A373118: Number T(n,k) of compositions of n such that the set of parts is [k]; triangle T(n,k), n>=0, 0<=k<=A003056(n), read by rows.

The programs for A373118, there is no canonical definition to state claims against.
-/

/-! ## A373118.P17522409502095770587

`A219311(n)-A185044(A169623(3*n+1))`
-/

namespace A373118.P17522409502095770587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219311 n - A185044 (A169623 (3 * n + 1)).toNat

end

end A373118.P17522409502095770587

/-! ## A373118.P14288309521584739343

`A049076(A283015(n))*A298668(n)`
-/

namespace A373118.P14288309521584739343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A283015 n).toNat * A298668 n

end

end A373118.P14288309521584739343

/-!
# A373119: Cardinality of the largest subset of {1,...,n} such that no four distinct elements of this subset multiply to a square.

The programs for A373119, there is no canonical definition to state claims against.
-/

/-! ## A373119.P13466109586214544076

`A055642(A096741(n+1))+A000720(n+1)`
-/

namespace A373119.P13466109586214544076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A096741 (n + 1)).toNat + A000720 (n + 1)

end

end A373119.P13466109586214544076

/-! ## A373119.P17789104115510414724

`∑[A371690(A037276(n+1)+1-n)]`
-/

namespace A373119.P17789104115510414724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371690 (A037276 (n + 1) + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373119.P17789104115510414724

/-! ## A373119.P6038084316550832033

`A070939(A187267(n+1)-A008292(n+1))`
-/

namespace A373119.P6038084316550832033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A187267 (n + 1) - A008292 (n + 1)).toNat

end

end A373119.P6038084316550832033

/-! ## A373119.P14973747692818725290

`∑[A122254(A001065(3*n+5)²)%2]`
-/

namespace A373119.P14973747692818725290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122254 (A001065 (3 * n + 5) ^ 2).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373119.P14973747692818725290

/-! ## A373119.P12227028533157454037

`A039836(A282737(n))`
-/

namespace A373119.P12227028533157454037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A282737 n).toNat

end

end A373119.P12227028533157454037

/-!
# A373120: Number of distinct possible binary ranks of integer partitions of n, where the binary rank of a partition y is given by Sum_i 2^(y_i-1).

The programs for A373120, there is no canonical definition to state claims against.
-/

/-! ## A373120.P12922701221193341022

`A204164(A219555(n)-A071673(n))`
-/

namespace A373120.P12922701221193341022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A219555 n - A071673 n).toNat

end

end A373120.P12922701221193341022

/-! ## A373120.P5388581285483367319

`A204164(A219555(n)-A072643(n))`
-/

namespace A373120.P5388581285483367319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A219555 n - A072643 n).toNat

end

end A373120.P5388581285483367319

/-! ## A373120.P4799902998411800621

`A204164(A219555(n)-A374993(n))`
-/

namespace A373120.P4799902998411800621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A219555 n - A374993 n).toNat

end

end A373120.P4799902998411800621

/-! ## A373120.P15835226437843009416

`A204164(A219555(n)-val(A102377(n), 2))`
-/

namespace A373120.P15835226437843009416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A219555 n - (SequenceMachineLib.valuation (A102377 n).toNat 2 : ℤ)).toNat

end

end A373120.P15835226437843009416

/-! ## A373120.P13968160128991551809

`A204164(A219555(n)-A023416(3*(n+1)))`
-/

namespace A373120.P13968160128991551809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A219555 n - A023416 (3 * (n + 1))).toNat

end

end A373120.P13968160128991551809

/-!
# A373123: Sum of all squarefree numbers from 2^(n-1) to 2^n - 1.

The programs for A373123, there is no canonical definition to state claims against.
-/

/-! ## A373123.P17495231337757081187

`A179213(A000079(n))%A050247(n+1)`
-/

namespace A373123.P17495231337757081187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179213 (A000079 n).toNat) (A050247 (n + 1))

end

end A373123.P17495231337757081187

/-! ## A373123.P13801440767271347331

`A262870(2^(n+1))`
-/

namespace A373123.P13801440767271347331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (2 ^ (n + 1))

end

end A373123.P13801440767271347331

/-! ## A373123.P14236183716799008612

`record[A262870(2*A000079(val(n+1, 2)))]`
-/

namespace A373123.P14236183716799008612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (2 * A000079 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373123.P14236183716799008612

/-! ## A373123.P16495023156038773256

`A262870(A011782(n+2))%A126614(n+2)`
-/

namespace A373123.P16495023156038773256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262870 (A011782 (n + 2)).toNat) (A126614 (n + 2))

end

end A373123.P16495023156038773256

/-! ## A373123.P15315148648006219850

`lcm(A262870(A056503(2*n+3)), A285572(2*n+3))`
-/

namespace A373123.P15315148648006219850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A262870 (A056503 (2 * n + 3)).toNat) (A285572 (2 * n + 3))

end

end A373123.P15315148648006219850

/-!
# A373124: Sum of indices of primes between powers of 2.

The programs for A373124, there is no canonical definition to state claims against.
-/

/-! ## A373124.P9018113092225187325

`Δ[C(A007053(n)+1, 2)]`
-/

namespace A373124.P9018113092225187325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007053 n + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373124.P9018113092225187325

/-! ## A373124.P9787860860524136170

`Δ[A000217(A007053(n))]`
-/

namespace A373124.P9787860860524136170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373124.P9787860860524136170

/-! ## A373124.P13179299146908934827

`Δ[A000217(A060967(2*n))]`
-/

namespace A373124.P13179299146908934827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A060967 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373124.P13179299146908934827

/-! ## A373124.P9811186136874916789

`Δ[A000217(A060971(5*n))]`
-/

namespace A373124.P9811186136874916789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A060971 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373124.P9811186136874916789

/-! ## A373124.P16919347410211702790

`Δ[C(A000720(2^n)+1, 2)]`
-/

namespace A373124.P16919347410211702790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000720 (2 ^ n) + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373124.P16919347410211702790

/-!
# A373125: Difference between 2^n and the least squarefree number >= 2^n.

The programs for A373125, the canonical program `A373125.P1876854732026961662` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373125 has offset 0).

The definition of A373125 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373125.P1876854732026961662

`A372683(n)-2^n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373125

/-- `A372683(n)-2^n` -/
def P1876854732026961662.Spec : Prop :=
  ∀ n, P1876854732026961662.a n = A373125 n

theorem P1876854732026961662.correct : P1876854732026961662.Spec := by
  intro n
  simp only [A373125]

end A373125

/-! ## A373125.P11132348005744593164

`A372683(n)%A000079(n)`
-/

namespace A373125.P11132348005744593164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372683 n) (A000079 n)

end

end A373125.P11132348005744593164

namespace A373125

/-- `A372683(n)%A000079(n)` -/
def P11132348005744593164.Spec : Prop :=
  ∀ n, P11132348005744593164.a n = A373125 n

end A373125

/-! ## A373125.P2566795253887650230

`and(A000225(n), A372683(n))`
-/

namespace A373125.P2566795253887650230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A372683 n)

end

end A373125.P2566795253887650230

namespace A373125

/-- `and(A000225(n), A372683(n))` -/
def P2566795253887650230.Spec : Prop :=
  ∀ n, P2566795253887650230.a n = A373125 n

end A373125

/-! ## A373125.P4631635729724544006

`and(A003817(n), A372683(n))`
-/

namespace A373125.P4631635729724544006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A372683 n)

end

end A373125.P4631635729724544006

namespace A373125

/-- `and(A003817(n), A372683(n))` -/
def P4631635729724544006.Spec : Prop :=
  ∀ n, P4631635729724544006.a n = A373125 n

end A373125

/-! ## A373125.P1189908802642940488

`and(A038573(n), A372683(n))`
-/

namespace A373125.P1189908802642940488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038573 n) (A372683 n)

end

end A373125.P1189908802642940488

namespace A373125

/-- `and(A038573(n), A372683(n))` -/
def P1189908802642940488.Spec : Prop :=
  ∀ n, P1189908802642940488.a n = A373125 n

end A373125

/-! ## A373125.P5663212888035328952

`and(A116362(n), A372683(n))`
-/

namespace A373125.P5663212888035328952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116362 n) (A372683 n)

end

end A373125.P5663212888035328952

namespace A373125

/-- `and(A116362(n), A372683(n))` -/
def P5663212888035328952.Spec : Prop :=
  ∀ n, P5663212888035328952.a n = A373125 n

end A373125

/-! ## A373125.P1234655383884531748

`and(A139250(n), A372683(n))`
-/

namespace A373125.P1234655383884531748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139250 n) (A372683 n)

end

end A373125.P1234655383884531748

namespace A373125

/-- `and(A139250(n), A372683(n))` -/
def P1234655383884531748.Spec : Prop :=
  ∀ n, P1234655383884531748.a n = A373125 n

end A373125

/-! ## A373125.P10887187554294155023

`and(A139814(n), A372683(n))`
-/

namespace A373125.P10887187554294155023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139814 n) (A372683 n)

end

end A373125.P10887187554294155023

namespace A373125

/-- `and(A139814(n), A372683(n))` -/
def P10887187554294155023.Spec : Prop :=
  ∀ n, P10887187554294155023.a n = A373125 n

end A373125

/-! ## A373125.P12015598517641841575

`and(A140252(n), A372683(n))`
-/

namespace A373125.P12015598517641841575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140252 n) (A372683 n)

end

end A373125.P12015598517641841575

namespace A373125

/-- `and(A140252(n), A372683(n))` -/
def P12015598517641841575.Spec : Prop :=
  ∀ n, P12015598517641841575.a n = A373125 n

end A373125

/-! ## A373125.P14262904932090377035

`and(A160160(n), A372683(n))`
-/

namespace A373125.P14262904932090377035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160160 n) (A372683 n)

end

end A373125.P14262904932090377035

namespace A373125

/-- `and(A160160(n), A372683(n))` -/
def P14262904932090377035.Spec : Prop :=
  ∀ n, P14262904932090377035.a n = A373125 n

end A373125

/-! ## A373125.P15134731965843364883

`and(A173530(n), A372683(n))`
-/

namespace A373125.P15134731965843364883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173530 n) (A372683 n)

end

end A373125.P15134731965843364883

namespace A373125

/-- `and(A173530(n), A372683(n))` -/
def P15134731965843364883.Spec : Prop :=
  ∀ n, P15134731965843364883.a n = A373125 n

end A373125

/-! ## A373125.P9057314644896587850

`and(A140683(n), A372683(n))`
-/

namespace A373125.P9057314644896587850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140683 n) (A372683 n)

end

end A373125.P9057314644896587850

namespace A373125

/-- `and(A140683(n), A372683(n))` -/
def P9057314644896587850.Spec : Prop :=
  ∀ n, P9057314644896587850.a n = A373125 n

end A373125

/-! ## A373125.P11471903200692503083

`and(A153893(n), A372683(n))`
-/

namespace A373125.P11471903200692503083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A372683 n)

end

end A373125.P11471903200692503083

namespace A373125

/-- `and(A153893(n), A372683(n))` -/
def P11471903200692503083.Spec : Prop :=
  ∀ n, P11471903200692503083.a n = A373125 n

end A373125

/-! ## A373125.P4350942962692063022

`and(A086224(n), A372683(n))`
-/

namespace A373125.P4350942962692063022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A372683 n)

end

end A373125.P4350942962692063022

namespace A373125

/-- `and(A086224(n), A372683(n))` -/
def P4350942962692063022.Spec : Prop :=
  ∀ n, P4350942962692063022.a n = A373125 n

end A373125

/-! ## A373125.P6654117569173763182

`and(A153894(n), A372683(n))`
-/

namespace A373125.P6654117569173763182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 n) (A372683 n)

end

end A373125.P6654117569173763182

namespace A373125

/-- `and(A153894(n), A372683(n))` -/
def P6654117569173763182.Spec : Prop :=
  ∀ n, P6654117569173763182.a n = A373125 n

end A373125

/-! ## A373125.P6491556236035868029

`and(A086225(n), A372683(n))`
-/

namespace A373125.P6491556236035868029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A372683 n)

end

end A373125.P6491556236035868029

namespace A373125

/-- `and(A086225(n), A372683(n))` -/
def P6491556236035868029.Spec : Prop :=
  ∀ n, P6491556236035868029.a n = A373125 n

end A373125

/-! ## A373125.P6485147326899318193

`and(A198275(n), A372683(n))`
-/

namespace A373125.P6485147326899318193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A372683 n)

end

end A373125.P6485147326899318193

namespace A373125

/-- `and(A198275(n), A372683(n))` -/
def P6485147326899318193.Spec : Prop :=
  ∀ n, P6485147326899318193.a n = A373125 n

end A373125

/-! ## A373125.P14768388840010748495

`and(A171389(n), A372683(n))`
-/

namespace A373125.P14768388840010748495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A372683 n)

end

end A373125.P14768388840010748495

namespace A373125

/-- `and(A171389(n), A372683(n))` -/
def P14768388840010748495.Spec : Prop :=
  ∀ n, P14768388840010748495.a n = A373125 n

end A373125

/-! ## A373125.P14900531986848869705

`and(A198276(n), A372683(n))`
-/

namespace A373125.P14900531986848869705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A372683 n)

end

end A373125.P14900531986848869705

namespace A373125

/-- `and(A198276(n), A372683(n))` -/
def P14900531986848869705.Spec : Prop :=
  ∀ n, P14900531986848869705.a n = A373125 n

end A373125

/-! ## A373125.P7433509130460567122

`and(A291557(n), A372683(n))`
-/

namespace A373125.P7433509130460567122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291557 n) (A372683 n)

end

end A373125.P7433509130460567122

namespace A373125

/-- `and(A291557(n), A372683(n))` -/
def P7433509130460567122.Spec : Prop :=
  ∀ n, P7433509130460567122.a n = A373125 n

end A373125

/-!
# A373126: Difference between 2^n and the greatest squarefree number <= 2^n.

The programs for A373126, the canonical program `A373126.P14612012098336311250` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373126 has offset 0).

The definition of A373126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373126.P14612012098336311250

`2^n-A372889(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373126

/-- `2^n-A372889(n)` -/
def P14612012098336311250.Spec : Prop :=
  ∀ n, P14612012098336311250.a n = A373126 n

theorem P14612012098336311250.correct : P14612012098336311250.Spec := by
  intro n
  simp only [A373126]

end A373126

/-! ## A373126.P18112066709740639536

`A000079(n)%A372889(n)`
-/

namespace A373126.P18112066709740639536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A372889 n)

end

end A373126.P18112066709740639536

namespace A373126

/-- `A000079(n)%A372889(n)` -/
def P18112066709740639536.Spec : Prop :=
  ∀ n, P18112066709740639536.a n = A373126 n

end A373126

/-! ## A373126.P17232821581155056004

`A155559(n)%A372889(n)`
-/

namespace A373126.P17232821581155056004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A372889 n)

end

end A373126.P17232821581155056004

namespace A373126

/-- `A155559(n)%A372889(n)` -/
def P17232821581155056004.Spec : Prop :=
  ∀ n, P17232821581155056004.a n = A373126 n

end A373126

/-! ## A373126.P3139723282462366438

`A171449(n)%A372889(n)`
-/

namespace A373126.P3139723282462366438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A372889 n)

end

end A373126.P3139723282462366438

namespace A373126

/-- `A171449(n)%A372889(n)` -/
def P3139723282462366438.Spec : Prop :=
  ∀ n, P3139723282462366438.a n = A373126 n

end A373126

/-! ## A373126.P1426698397982231218

`A171559(n)%A372889(n)`
-/

namespace A373126.P1426698397982231218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A372889 n)

end

end A373126.P1426698397982231218

namespace A373126

/-- `A171559(n)%A372889(n)` -/
def P1426698397982231218.Spec : Prop :=
  ∀ n, P1426698397982231218.a n = A373126 n

end A373126

/-! ## A373126.P1303539875990292620

`A186949(n)%A372889(n)`
-/

namespace A373126.P1303539875990292620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 n) (A372889 n)

end

end A373126.P1303539875990292620

namespace A373126

/-- `A186949(n)%A372889(n)` -/
def P1303539875990292620.Spec : Prop :=
  ∀ n, P1303539875990292620.a n = A373126 n

end A373126

/-!
# A373127: Length of the n-th maximal antirun of squarefree numbers differing by more than one.

The programs for A373127, there is no canonical definition to state claims against.
-/

/-! ## A373127.P6535023589222856900

`Δ[comp[∑[A120992(n+1)]]]`
-/

namespace A373127.P6535023589222856900
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373127.P6535023589222856900

/-! ## A373127.P11944150886958630504

`Δ[comp[A013929(n+1)-(n+1)]]`
-/

namespace A373127.P11944150886958630504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373127.P11944150886958630504

/-! ## A373127.P14864945152815070089

`Δ[comp[A013928(A243346(2*n+3))]]`
-/

namespace A373127.P14864945152815070089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A243346 (2 * n + 3)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373127.P14864945152815070089

/-! ## A373127.P2096509053455922895

`Δ[∪[A121628(n+1), A375927(n+1)]]`
-/

namespace A373127.P2096509053455922895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121628 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375927 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373127.P2096509053455922895

/-! ## A373127.P7762489673723543557

`Δ[comp[A013928(n+1)-A100112(n+1)]]`
-/

namespace A373127.P7762489673723543557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A100112 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373127.P7762489673723543557

/-!
# A373128: Least k such that the k-th maximal antirun of squarefree numbers has length n. Position of first appearance of n in A373127.

The programs for A373128, there is no canonical definition to state claims against.
-/

/-! ## A373128.P18184888752865105193

`A064664(A326363(n)+A316828(n))`
-/

namespace A373128.P18184888752865105193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A326363 n + A316828 n).toNat

end

end A373128.P18184888752865105193

/-! ## A373128.P6365415084760602577

`A349837(A068156(n)*A161701(n))`
-/

namespace A373128.P6365415084760602577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349837 (A068156 n * A161701 n).toNat

end

end A373128.P6365415084760602577

/-!
# A373129: a(n) = Sum_{1 <= x_1, x_2 <= n} sigma( n/gcd(x_1, x_2, n) ).

The programs for A373129, the canonical program `A373129.P16918047502827028780` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373129 has offset 1).

The definition of A373129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373129.P16918047502827028780

`∑{d}[n+1, A002618(#)*A372227((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373129

/-- `∑{d}[n+1, A002618(#)*A372227((n+1)/#)]` -/
def P16918047502827028780.Spec : Prop :=
  ∀ n, P16918047502827028780.a n = A373129 (n + 1)

theorem P16918047502827028780.correct : P16918047502827028780.Spec := by
  intro n
  simp only [A373129, Nat.add_sub_cancel]

end A373129

/-!
# A373130: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} sigma( n/gcd(x_1, x_2, x_3, n) ).

The programs for A373130, the canonical program `A373130.P1368605892545228178` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373130 has offset 1).

The definition of A373130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373130.P1368605892545228178

`∑{d}[n+1, A000056(#)*A372998((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373130

/-- `∑{d}[n+1, A000056(#)*A372998((n+1)/#)]` -/
def P1368605892545228178.Spec : Prop :=
  ∀ n, P1368605892545228178.a n = A373130 (n + 1)

theorem P1368605892545228178.correct : P1368605892545228178.Spec := by
  intro n
  simp only [A373130, Nat.add_sub_cancel]

end A373130

/-!
# A373134: Expansion of e.g.f. (1/2)*(x^2*exp(x))*(sinh(x))^2.

The programs for A373134, the canonical program `A373134.P17234218766703833969` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373134 has offset 0).

The definition of A373134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373134.P17234218766703833969

`C(n, 2)*(3^(n-2)+(-1)^n-2)/4`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373134

/-- `C(n, 2)*(3^(n-2)+(-1)^n-2)/4` -/
def P17234218766703833969.Spec : Prop :=
  ∀ n, P17234218766703833969.a n = (A373134 n : ℚ)

end A373134

/-! ## A373134.P2959794660584358100

`n*(n-1)*(3^(n-2)+(-1)^n-2)/8`
-/

namespace A373134.P2959794660584358100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) : ℚ) * ((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + ((-1) ^ n : ℚ) - 2) / 8

end

end A373134.P2959794660584358100

namespace A373134

/-- `n*(n-1)*(3^(n-2)+(-1)^n-2)/8` -/
def P2959794660584358100.Spec : Prop :=
  ∀ n, P2959794660584358100.a n = (A373134 n : ℚ)

end A373134

/-! ## A373134.P2353992235252662655

`ogf((12x^4-48x^5+48x^6+20x^8)/(1-9x+24x^2-78x^4+54x^5+80x^6-72x^7-27x^8+27x^9))`
-/

namespace A373134.P2353992235252662655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 12, -48, 48, 0, 20] [1, -9, 24, 0, -78, 54, 80, -72, -27, 27] n

end

end A373134.P2353992235252662655

namespace A373134

/-- `ogf((12x^4-48x^5+48x^6+20x^8)/(1-9x+24x^2-78x^4+54x^5+80x^6-72x^7-27x^8+27x^9))` -/
def P2353992235252662655.Spec : Prop :=
  ∀ n, P2353992235252662655.a n = A373134 n

end A373134

/-! ## A373134.P7350407594569758207

`A373065(n)-A161680(n)`
-/

namespace A373134.P7350407594569758207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373065 n - A161680 n

end

end A373134.P7350407594569758207

namespace A373134

/-- `A373065(n)-A161680(n)` -/
def P7350407594569758207.Spec : Prop :=
  ∀ n, P7350407594569758207.a n = A373134 n

end A373134

/-! ## A373134.P1406485067390715371

`A373065(n)-A000217(n)+n`
-/

namespace A373134.P1406485067390715371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373065 n - A000217 n + (n : ℤ)

end

end A373134.P1406485067390715371

namespace A373134

/-- `A373065(n)-A000217(n)+n` -/
def P1406485067390715371.Spec : Prop :=
  ∀ n, P1406485067390715371.a n = A373134 n

end A373134

/-!
# A373136: a(n) = 1 if n is of the form 2^i * 3^j * k, i+j even, gcd(k,6)=1, otherwise 0.

The programs for A373136, the canonical program `A373136.P5249414669009137846` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373136 has offset 1).

The definition of A373136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373136.P5249414669009137846

`1-∑{p}[n+7, val(n+1, #)]%2`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373136

/-- `1-∑{p}[n+7, val(n+1, #)]%2` -/
def P5249414669009137846.Spec : Prop :=
  ∀ n, P5249414669009137846.a n = A373136 (n + 1)

theorem P5249414669009137846.correct : P5249414669009137846.Spec := by
  intro n
  simp only [A373136, Nat.add_sub_cancel]

end A373136

/-! ## A373136.P14424208864608655520

`1-A182582(n+1)`
-/

namespace A373136.P14424208864608655520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182582 (n + 1)

end

end A373136.P14424208864608655520

namespace A373136

/-- `1-A182582(n+1)` -/
def P14424208864608655520.Spec : Prop :=
  ∀ n, P14424208864608655520.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P8626905165840080758

`A182582(2*(n+1))`
-/

namespace A373136.P8626905165840080758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (2 * (n + 1))

end

end A373136.P8626905165840080758

namespace A373136

/-- `A182582(2*(n+1))` -/
def P8626905165840080758.Spec : Prop :=
  ∀ n, P8626905165840080758.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P358053377082932684

`gcd(2, A169611(n+1))-1`
-/

namespace A373136.P358053377082932684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A169611 (n + 1)) : ℤ) - 1

end

end A373136.P358053377082932684

namespace A373136

/-- `gcd(2, A169611(n+1))-1` -/
def P358053377082932684.Spec : Prop :=
  ∀ n, P358053377082932684.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P16844229091376895539

`A035263(A079707(n+1))`
-/

namespace A373136.P16844229091376895539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A079707 (n + 1)).toNat

end

end A373136.P16844229091376895539

namespace A373136

/-- `A035263(A079707(n+1))` -/
def P16844229091376895539.Spec : Prop :=
  ∀ n, P16844229091376895539.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P776446100671469715

`A065043(A065331(n+1))`
-/

namespace A373136.P776446100671469715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A065331 (n + 1)).toNat

end

end A373136.P776446100671469715

namespace A373136

/-- `A065043(A065331(n+1))` -/
def P776446100671469715.Spec : Prop :=
  ∀ n, P776446100671469715.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P15100687191625943664

`A065043(A102440(n+1))`
-/

namespace A373136.P15100687191625943664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A102440 (n + 1)).toNat

end

end A373136.P15100687191625943664

namespace A373136

/-- `A065043(A102440(n+1))` -/
def P15100687191625943664.Spec : Prop :=
  ∀ n, P15100687191625943664.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P12718460133706166372

`A059841(A169611(n+1))`
-/

namespace A373136.P12718460133706166372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A169611 (n + 1)).toNat

end

end A373136.P12718460133706166372

namespace A373136

/-- `A059841(A169611(n+1))` -/
def P12718460133706166372.Spec : Prop :=
  ∀ n, P12718460133706166372.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P11881137551436913159

`A000035(A169611(n+1)+1)`
-/

namespace A373136.P11881137551436913159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A169611 (n + 1) + 1).toNat

end

end A373136.P11881137551436913159

namespace A373136

/-- `A000035(A169611(n+1)+1)` -/
def P11881137551436913159.Spec : Prop :=
  ∀ n, P11881137551436913159.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P16908675975728407055

`1-A182581(A334747(n+1))`
-/

namespace A373136.P16908675975728407055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182581 (A334747 (n + 1)).toNat

end

end A373136.P16908675975728407055

namespace A373136

/-- `1-A182581(A334747(n+1))` -/
def P16908675975728407055.Spec : Prop :=
  ∀ n, P16908675975728407055.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P5321071628286077165

`1-A292077(A355582(n+1))`
-/

namespace A373136.P5321071628286077165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A292077 (A355582 (n + 1)).toNat

end

end A373136.P5321071628286077165

namespace A373136

/-- `1-A292077(A355582(n+1))` -/
def P5321071628286077165.Spec : Prop :=
  ∀ n, P5321071628286077165.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P8174568363200870647

`A066829(2*A065331(n+1))`
-/

namespace A373136.P8174568363200870647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * A065331 (n + 1)).toNat

end

end A373136.P8174568363200870647

namespace A373136

/-- `A066829(2*A065331(n+1))` -/
def P8174568363200870647.Spec : Prop :=
  ∀ n, P8174568363200870647.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P2367658292878786382

`A066829(2*A102440(n+1))`
-/

namespace A373136.P2367658292878786382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * A102440 (n + 1)).toNat

end

end A373136.P2367658292878786382

namespace A373136

/-- `A066829(2*A102440(n+1))` -/
def P2367658292878786382.Spec : Prop :=
  ∀ n, P2367658292878786382.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P7913664252582683166

`A096268((A169611(n+1)+1)²)`
-/

namespace A373136.P7913664252582683166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 ((A169611 (n + 1) + 1) ^ 2).toNat

end

end A373136.P7913664252582683166

namespace A373136

/-- `A096268((A169611(n+1)+1)²)` -/
def P7913664252582683166.Spec : Prop :=
  ∀ n, P7913664252582683166.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P10398050531013508941

`and(1, A169611(n+1)+A016760(n))`
-/

namespace A373136.P10398050531013508941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A169611 (n + 1) + A016760 n)

end

end A373136.P10398050531013508941

namespace A373136

/-- `and(1, A169611(n+1)+A016760(n))` -/
def P10398050531013508941.Spec : Prop :=
  ∀ n, P10398050531013508941.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P1507285048387943799

`and(1, A169611(n+1)+A016820(n))`
-/

namespace A373136.P1507285048387943799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A169611 (n + 1) + A016820 n)

end

end A373136.P1507285048387943799

namespace A373136

/-- `and(1, A169611(n+1)+A016820(n))` -/
def P1507285048387943799.Spec : Prop :=
  ∀ n, P1507285048387943799.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P17996310295808105670

`xor(A035263(n+1), A182581(n+1))`
-/

namespace A373136.P17996310295808105670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035263 (n + 1)) (A182581 (n + 1))

end

end A373136.P17996310295808105670

namespace A373136

/-- `xor(A035263(n+1), A182581(n+1))` -/
def P17996310295808105670.Spec : Prop :=
  ∀ n, P17996310295808105670.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P11726563824399038122

`A096268(A096268(n)+A080278(n+1))`
-/

namespace A373136.P11726563824399038122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A096268 n + A080278 (n + 1)).toNat

end

end A373136.P11726563824399038122

namespace A373136

/-- `A096268(A096268(n)+A080278(n+1))` -/
def P11726563824399038122.Spec : Prop :=
  ∀ n, P11726563824399038122.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P1426522411768645891

`A372574(A372574(A307150(n+1))+n+1)`
-/

namespace A373136.P1426522411768645891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372574 (A372574 (A307150 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A373136.P1426522411768645891

namespace A373136

/-- `A372574(A372574(A307150(n+1))+n+1)` -/
def P1426522411768645891.Spec : Prop :=
  ∀ n, P1426522411768645891.a n = A373136 (n + 1)

end A373136

/-! ## A373136.P16108424356034821502

`A292077(2*A355582(n+1))`
-/

namespace A373136.P16108424356034821502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (2 * A355582 (n + 1)).toNat

end

end A373136.P16108424356034821502

namespace A373136

/-- `A292077(2*A355582(n+1))` -/
def P16108424356034821502.Spec : Prop :=
  ∀ n, P16108424356034821502.a n = A373136 (n + 1)

end A373136

/-!
# A373137: a(n) = 1 if A276085(n) is a multiple of 8, otherwise 0, where A276085 is the primorial base log-function.

The programs for A373137, the canonical program `A373137.P15909934193213727265` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373137 has offset 1).

The definition of A373137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373137.P11799123405051930560

`A373266(9*(n+1))`
-/

namespace A373137.P11799123405051930560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373266 (9 * (n + 1))

end

end A373137.P11799123405051930560

namespace A373137

/-- `A373266(9*(n+1))` -/
def P11799123405051930560.Spec : Prop :=
  ∀ n, P11799123405051930560.a n = A373137 (n + 1)

end A373137

/-! ## A373137.P515611330682589232

`char[A373138(n+1)-1]`
-/

namespace A373137.P515611330682589232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373138 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373137.P515611330682589232

namespace A373137

/-- `char[A373138(n+1)-1]` -/
def P515611330682589232.Spec : Prop :=
  ∀ n, (P515611330682589232.a n : ℤ) = A373137 (n + 1)

end A373137

/-! ## A373137.P15909934193213727265

`A253513(A372576(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373137

/-- `A253513(A372576(n+1))` -/
def P15909934193213727265.Spec : Prop :=
  ∀ n, P15909934193213727265.a n = A373137 (n + 1)

theorem P15909934193213727265.correct : P15909934193213727265.Spec := by
  intro n
  simp only [A373137, Nat.add_sub_cancel]

end A373137

/-! ## A373137.P2208770031579216348

`A369001(n+1)-A373266(n+1)`
-/

namespace A373137.P2208770031579216348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (n + 1) - A373266 (n + 1)

end

end A373137.P2208770031579216348

namespace A373137

/-- `A369001(n+1)-A373266(n+1)` -/
def P2208770031579216348.Spec : Prop :=
  ∀ n, P2208770031579216348.a n = A373137 (n + 1)

theorem P2208770031579216348.correct : P2208770031579216348.Spec := by
  intro n
  simp only [A373137, Nat.add_sub_cancel, A373137.P2208770031579216348.a, A373137.P15909934193213727265.a, A253513, A253513.P7768194327896133816.a, A369001, A369001.P2904300838152435751.a, A372576, A372576.P10992458721375840572.a, A373266, A373266.P11769714245437534244.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A276085, A276085.P15454204715786806768.a, A002110, A002110.P13704446489392701398.a, A028234, A028234.P14857795114050463851.f1, A028234.P14857795114050463851.a, A055396, A055396.P18305262754425103137.a, A067029, A067029.P17255758945913048832.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A020639, A020639.P7578813688609615429.a, A061395, A061395.P8431317036300486107.a, A085731, A085731.P17818604226734037125.a, A243055, A243055.P2464886309294058059.a, A362983, A362983.P10144634432132035395.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373137

/-! ## A373137.P18377462023915151784

`and(1, A373377(n+1)+1)-A373266(n+1)`
-/

namespace A373137.P18377462023915151784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A373377 (n + 1) + 1) - A373266 (n + 1)

end

end A373137.P18377462023915151784

namespace A373137

/-- `and(1, A373377(n+1)+1)-A373266(n+1)` -/
def P18377462023915151784.Spec : Prop :=
  ∀ n, P18377462023915151784.a n = A373137 (n + 1)

end A373137

/-!
# A373138: Numbers k such that A276085(k) is a multiple of 8, where A276085 is the primorial base log-function.

The programs for A373138, the canonical program `A373138.P8055344566125608397` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373138 has offset 1).

The definition of A373138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373138.P8055344566125608397

`eq[1, A373137(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373138

/-- `eq[1, A373137(n+1)]+1` -/
def P8055344566125608397.Spec : Prop :=
  ∀ n, (P8055344566125608397.a n : ℤ) = A373138 (n + 1)

theorem P8055344566125608397.correct : P8055344566125608397.Spec := by
  intro n
  simp only [A373138, Nat.add_sub_cancel]

end A373138

/-! ## A373138.P17902224992877474387

`filter[A319701(n+1), A373137(#)]`
-/

namespace A373138.P17902224992877474387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P17902224992877474387

namespace A373138

/-- `filter[A319701(n+1), A373137(#)]` -/
def P17902224992877474387.Spec : Prop :=
  ∀ n, P17902224992877474387.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P12876659291779338003

`filter[A319702(n+1), A373137(#)]`
-/

namespace A373138.P12876659291779338003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P12876659291779338003

namespace A373138

/-- `filter[A319702(n+1), A373137(#)]` -/
def P12876659291779338003.Spec : Prop :=
  ∀ n, P12876659291779338003.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P15635386473530163547

`filter[A368998(n+1), A373137(#)]`
-/

namespace A373138.P15635386473530163547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P15635386473530163547

namespace A373138

/-- `filter[A368998(n+1), A373137(#)]` -/
def P15635386473530163547.Spec : Prop :=
  ∀ n, P15635386473530163547.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P10717184445549832911

`filter[A319357(n+1), A373137(#)]`
-/

namespace A373138.P10717184445549832911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P10717184445549832911

namespace A373138

/-- `filter[A319357(n+1), A373137(#)]` -/
def P10717184445549832911.Spec : Prop :=
  ∀ n, P10717184445549832911.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P14720336747802086849

`filter[A326202(n+1), A373137(#)]`
-/

namespace A373138.P14720336747802086849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P14720336747802086849

namespace A373138

/-- `filter[A326202(n+1), A373137(#)]` -/
def P14720336747802086849.Spec : Prop :=
  ∀ n, P14720336747802086849.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P12810778026827127458

`filter[A305980(n+1), A373137(#)]`
-/

namespace A373138.P12810778026827127458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P12810778026827127458

namespace A373138

/-- `filter[A305980(n+1), A373137(#)]` -/
def P12810778026827127458.Spec : Prop :=
  ∀ n, P12810778026827127458.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P11733540085668698310

`filter[A322810(n+1), A373137(#)]`
-/

namespace A373138.P11733540085668698310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P11733540085668698310

namespace A373138

/-- `filter[A322810(n+1), A373137(#)]` -/
def P11733540085668698310.Spec : Prop :=
  ∀ n, P11733540085668698310.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P2179764678051411616

`filter[A326201(n+1), A373137(#)]`
-/

namespace A373138.P2179764678051411616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P2179764678051411616

namespace A373138

/-- `filter[A326201(n+1), A373137(#)]` -/
def P2179764678051411616.Spec : Prop :=
  ∀ n, P2179764678051411616.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P16090277612136652302

`filter[A369002(n+1), A373137(#)]`
-/

namespace A373138.P16090277612136652302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P16090277612136652302

namespace A373138

/-- `filter[A369002(n+1), A373137(#)]` -/
def P16090277612136652302.Spec : Prop :=
  ∀ n, P16090277612136652302.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P3537907311809828016

`filter[A377873(n+1), A373137(#)]`
-/

namespace A373138.P3537907311809828016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P3537907311809828016

namespace A373138

/-- `filter[A377873(n+1), A373137(#)]` -/
def P3537907311809828016.Spec : Prop :=
  ∀ n, P3537907311809828016.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P13366217267984333588

`filter[A264828(n+1), A373137(#)]`
-/

namespace A373138.P13366217267984333588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P13366217267984333588

namespace A373138

/-- `filter[A264828(n+1), A373137(#)]` -/
def P13366217267984333588.Spec : Prop :=
  ∀ n, P13366217267984333588.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P12158641038656440977

`filter[A235992(n+2), A373137(#)]`
-/

namespace A373138.P12158641038656440977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P12158641038656440977

namespace A373138

/-- `filter[A235992(n+2), A373137(#)]` -/
def P12158641038656440977.Spec : Prop :=
  ∀ n, P12158641038656440977.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P4837631351104081334

`filter[A018252(n+1), A373137(#)]`
-/

namespace A373138.P4837631351104081334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P4837631351104081334

namespace A373138

/-- `filter[A018252(n+1), A373137(#)]` -/
def P4837631351104081334.Spec : Prop :=
  ∀ n, P4837631351104081334.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P10819325543152119627

`filter[A003159(n+1), A373137(#)]`
-/

namespace A373138.P10819325543152119627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P10819325543152119627

namespace A373138

/-- `filter[A003159(n+1), A373137(#)]` -/
def P10819325543152119627.Spec : Prop :=
  ∀ n, P10819325543152119627.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P14593472814331768153

`filter[A260401(n+1), A373137(#)]`
-/

namespace A373138.P14593472814331768153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P14593472814331768153

namespace A373138

/-- `filter[A260401(n+1), A373137(#)]` -/
def P14593472814331768153.Spec : Prop :=
  ∀ n, P14593472814331768153.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P12323982022764039579

`filter[A174891(n+1), A373137(#)]`
-/

namespace A373138.P12323982022764039579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P12323982022764039579

namespace A373138

/-- `filter[A174891(n+1), A373137(#)]` -/
def P12323982022764039579.Spec : Prop :=
  ∀ n, P12323982022764039579.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P4808344658976227964

`filter[A056653(n+1), A373137(#)]`
-/

namespace A373138.P4808344658976227964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P4808344658976227964

namespace A373138

/-- `filter[A056653(n+1), A373137(#)]` -/
def P4808344658976227964.Spec : Prop :=
  ∀ n, P4808344658976227964.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P15754599178901219261

`filter[A065090(n+1), A373137(#)]`
-/

namespace A373138.P15754599178901219261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P15754599178901219261

namespace A373138

/-- `filter[A065090(n+1), A373137(#)]` -/
def P15754599178901219261.Spec : Prop :=
  ∀ n, P15754599178901219261.a n = A373138 (n + 1)

end A373138

/-! ## A373138.P1972668670020651897

`filter[A073900(n+1), A373137(#)]`
-/

namespace A373138.P1972668670020651897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373137 (f1 j).toNat = 1) n)

end

end A373138.P1972668670020651897

namespace A373138

/-- `filter[A073900(n+1), A373137(#)]` -/
def P1972668670020651897.Spec : Prop :=
  ∀ n, P1972668670020651897.a n = A373138 (n + 1)

end A373138

/-!
# A373139: a(n) = 1 if A276085(n) is a multiple of 5, otherwise 0, where A276085 is the primorial base log-function.

The programs for A373139, the canonical program `A373139.P16425581517255700780` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373139 has offset 1).

The definition of A373139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373139.P1766525039457548413

`char[A373140(n+1)-1]`
-/

namespace A373139.P1766525039457548413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373140 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373139.P1766525039457548413

namespace A373139

/-- `char[A373140(n+1)-1]` -/
def P1766525039457548413.Spec : Prop :=
  ∀ n, (P1766525039457548413.a n : ℤ) = A373139 (n + 1)

end A373139

/-! ## A373139.P16425581517255700780

`A079998(A372576(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373139

/-- `A079998(A372576(n+1))` -/
def P16425581517255700780.Spec : Prop :=
  ∀ n, P16425581517255700780.a n = A373139 (n + 1)

theorem P16425581517255700780.correct : P16425581517255700780.Spec := by
  intro n
  simp only [A373139, Nat.add_sub_cancel]

end A373139

/-! ## A373139.P1644248392754251114

`A079998(A391946(n+1))`
-/

namespace A373139.P1644248392754251114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A391946 (n + 1)).toNat

end

end A373139.P1644248392754251114

namespace A373139

/-- `A079998(A391946(n+1))` -/
def P1644248392754251114.Spec : Prop :=
  ∀ n, P1644248392754251114.a n = A373139 (n + 1)

end A373139

/-! ## A373139.P2038113822510020353

`A000007(A372576(n+1)%5*A086892(n+1))`
-/

namespace A373139.P2038113822510020353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A372576 (n + 1)) 5 * A086892 (n + 1)).toNat

end

end A373139.P2038113822510020353

namespace A373139

/-- `A000007(A372576(n+1)%5*A086892(n+1))` -/
def P2038113822510020353.Spec : Prop :=
  ∀ n, P2038113822510020353.a n = A373139 (n + 1)

end A373139

/-! ## A373139.P14695009618630450142

`A000035(A186237(3*n+5)*A238128(n))`
-/

namespace A373139.P14695009618630450142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A186237 (3 * n + 5) * A238128 n).toNat

end

end A373139.P14695009618630450142

namespace A373139

/-- `A000035(A186237(3*n+5)*A238128(n))` -/
def P14695009618630450142.Spec : Prop :=
  ∀ n, P14695009618630450142.a n = A373139 (n + 1)

end A373139

/-!
# A373140: Numbers k such that A276085(k) is a multiple of 5, where A276085 is the primorial base log-function.

The programs for A373140, the canonical program `A373140.P8936309099140756942` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373140 has offset 1).

The definition of A373140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373140.P8936309099140756942

`eq[1, A373139(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373140

/-- `eq[1, A373139(n+1)]+1` -/
def P8936309099140756942.Spec : Prop :=
  ∀ n, (P8936309099140756942.a n : ℤ) = A373140 (n + 1)

theorem P8936309099140756942.correct : P8936309099140756942.Spec := by
  intro n
  simp only [A373140, Nat.add_sub_cancel]

end A373140

/-! ## A373140.P6539394864153338402

`record[A000027(n+1)*A373139(n+1)]`
-/

namespace A373140.P6539394864153338402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A373139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373140.P6539394864153338402

namespace A373140

/-- `record[A000027(n+1)*A373139(n+1)]` -/
def P6539394864153338402.Spec : Prop :=
  ∀ n, P6539394864153338402.a n = A373140 (n + 1)

end A373140

/-! ## A373140.P352528957126966342

`eq[0, A372576(n+1)%5]+1`
-/

namespace A373140.P352528957126966342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372576 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373140.P352528957126966342

namespace A373140

/-- `eq[0, A372576(n+1)%5]+1` -/
def P352528957126966342.Spec : Prop :=
  ∀ n, (P352528957126966342.a n : ℤ) = A373140 (n + 1)

end A373140

/-! ## A373140.P7419209111347267663

`filter[A132999(n+1), A373139(#)]`
-/

namespace A373140.P7419209111347267663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A373140.P7419209111347267663

namespace A373140

/-- `filter[A132999(n+1), A373139(#)]` -/
def P7419209111347267663.Spec : Prop :=
  ∀ n, P7419209111347267663.a n = A373140 (n + 1)

end A373140

/-! ## A373140.P16788348412879584148

`filter[A099424(n+1), A373139(#)]`
-/

namespace A373140.P16788348412879584148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A373140.P16788348412879584148

namespace A373140

/-- `filter[A099424(n+1), A373139(#)]` -/
def P16788348412879584148.Spec : Prop :=
  ∀ n, P16788348412879584148.a n = A373140 (n + 1)

end A373140

/-! ## A373140.P13305062870207697910

`filter[A060000(n+1), A373139(#)]`
-/

namespace A373140.P13305062870207697910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A373140.P13305062870207697910

namespace A373140

/-- `filter[A060000(n+1), A373139(#)]` -/
def P13305062870207697910.Spec : Prop :=
  ∀ n, P13305062870207697910.a n = A373140 (n + 1)

end A373140

/-! ## A373140.P13877283970308398059

`filter[A138153(n+1), A373139(#)]`
-/

namespace A373140.P13877283970308398059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A373140.P13877283970308398059

namespace A373140

/-- `filter[A138153(n+1), A373139(#)]` -/
def P13877283970308398059.Spec : Prop :=
  ∀ n, P13877283970308398059.a n = A373140 (n + 1)

end A373140

/-! ## A373140.P17053507115339824014

`filter[A038459(n+1), A373139(#)]`
-/

namespace A373140.P17053507115339824014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A373140.P17053507115339824014

namespace A373140

/-- `filter[A038459(n+1), A373139(#)]` -/
def P17053507115339824014.Spec : Prop :=
  ∀ n, P17053507115339824014.a n = A373140 (n + 1)

end A373140

/-! ## A373140.P1383970997725722151

`filter[A072442(n), A373139(#)]`
-/

namespace A373140.P1383970997725722151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A373140.P1383970997725722151

namespace A373140

/-- `filter[A072442(n), A373139(#)]` -/
def P1383970997725722151.Spec : Prop :=
  ∀ n, P1383970997725722151.a n = A373140 (n + 1)

end A373140

/-! ## A373140.P830922532846579795

`filter[A115510(n+1), A373139(#)]`
-/

namespace A373140.P830922532846579795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A373140.P830922532846579795

namespace A373140

/-- `filter[A115510(n+1), A373139(#)]` -/
def P830922532846579795.Spec : Prop :=
  ∀ n, P830922532846579795.a n = A373140 (n + 1)

end A373140

/-!
# A373141: a(n) = 1 if A276085(n) is of the form 4m+2, otherwise 0, where A276085 is the primorial base log-function.

The programs for A373141, the canonical program `A373141.P12083770546413304913` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373141 has offset 1).

The definition of A373141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373141.P12083770546413304913

`A035263(n+1)-A369001(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373141

/-- `A035263(n+1)-A369001(n+1)` -/
def P12083770546413304913.Spec : Prop :=
  ∀ n, P12083770546413304913.a n = A373141 (n + 1)

theorem P12083770546413304913.correct : P12083770546413304913.Spec := by
  intro n
  simp only [A373141, Nat.add_sub_cancel]

end A373141

/-! ## A373141.P5862635944205741521

`A369001(3*(n+1))`
-/

namespace A373141.P5862635944205741521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (3 * (n + 1))

end

end A373141.P5862635944205741521

namespace A373141

/-- `A369001(3*(n+1))` -/
def P5862635944205741521.Spec : Prop :=
  ∀ n, P5862635944205741521.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P11933795448110973930

`A368994(4*(n+1))`
-/

namespace A373141.P11933795448110973930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (4 * (n + 1))

end

end A373141.P11933795448110973930

namespace A373141

/-- `A368994(4*(n+1))` -/
def P11933795448110973930.Spec : Prop :=
  ∀ n, P11933795448110973930.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P5849694401452978618

`A189036(n+1)%2`
-/

namespace A373141.P5849694401452978618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189036 (n + 1)) 2

end

end A373141.P5849694401452978618

namespace A373141

/-- `A189036(n+1)%2` -/
def P5849694401452978618.Spec : Prop :=
  ∀ n, P5849694401452978618.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P7956168188945535467

`1-A152822(A372576(n+1))`
-/

namespace A373141.P7956168188945535467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152822 (A372576 (n + 1)).toNat

end

end A373141.P7956168188945535467

namespace A373141

/-- `1-A152822(A372576(n+1))` -/
def P7956168188945535467.Spec : Prop :=
  ∀ n, P7956168188945535467.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P12250831287098482150

`and(A054977(n), A189036(n+1))`
-/

namespace A373141.P12250831287098482150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A189036 (n + 1))

end

end A373141.P12250831287098482150

namespace A373141

/-- `and(A054977(n), A189036(n+1))` -/
def P12250831287098482150.Spec : Prop :=
  ∀ n, P12250831287098482150.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P409521951679280233

`and(A057427(n), A189036(n+1))`
-/

namespace A373141.P409521951679280233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A189036 (n + 1))

end

end A373141.P409521951679280233

namespace A373141

/-- `and(A057427(n), A189036(n+1))` -/
def P409521951679280233.Spec : Prop :=
  ∀ n, P409521951679280233.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P14514656759220502647

`and(A060576(n), A189036(n+1))`
-/

namespace A373141.P14514656759220502647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A189036 (n + 1))

end

end A373141.P14514656759220502647

namespace A373141

/-- `and(A060576(n), A189036(n+1))` -/
def P14514656759220502647.Spec : Prop :=
  ∀ n, P14514656759220502647.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P16757039876870785617

`and(A157928(n), A189036(n+1))`
-/

namespace A373141.P16757039876870785617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157928 n) (A189036 (n + 1))

end

end A373141.P16757039876870785617

namespace A373141

/-- `and(A157928(n), A189036(n+1))` -/
def P16757039876870785617.Spec : Prop :=
  ∀ n, P16757039876870785617.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P5106368134174190369

`and(A158388(n), A189036(n+1))`
-/

namespace A373141.P5106368134174190369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A189036 (n + 1))

end

end A373141.P5106368134174190369

namespace A373141

/-- `and(A158388(n), A189036(n+1))` -/
def P5106368134174190369.Spec : Prop :=
  ∀ n, P5106368134174190369.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P4284422280109946698

`and(A035263(n+1), A083345(n+1))`
-/

namespace A373141.P4284422280109946698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A083345 (n + 1))

end

end A373141.P4284422280109946698

namespace A373141

/-- `and(A035263(n+1), A083345(n+1))` -/
def P4284422280109946698.Spec : Prop :=
  ∀ n, P4284422280109946698.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P7930342984191455334

`and(A048578(n), A189036(n+1))`
-/

namespace A373141.P7930342984191455334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A189036 (n + 1))

end

end A373141.P7930342984191455334

namespace A373141

/-- `and(A048578(n), A189036(n+1))` -/
def P7930342984191455334.Spec : Prop :=
  ∀ n, P7930342984191455334.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P12891735736278068785

`and(A020737(n), A189036(n+1))`
-/

namespace A373141.P12891735736278068785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A189036 (n + 1))

end

end A373141.P12891735736278068785

namespace A373141

/-- `and(A020737(n), A189036(n+1))` -/
def P12891735736278068785.Spec : Prop :=
  ∀ n, P12891735736278068785.a n = A373141 (n + 1)

end A373141

/-! ## A373141.P3779891069839943871

`and(A189036(n+1), A195744(n))`
-/

namespace A373141.P3779891069839943871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189036 (n + 1)) (A195744 n)

end

end A373141.P3779891069839943871

namespace A373141

/-- `and(A189036(n+1), A195744(n))` -/
def P3779891069839943871.Spec : Prop :=
  ∀ n, P3779891069839943871.a n = A373141 (n + 1)

end A373141

/-!
# A373142: Numbers k such that A276085(k) is of the form 4m+2, where A276085 is the primorial base log-function.

The programs for A373142, the canonical program `A373142.P4478044181005577462` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373142 has offset 1).

The definition of A373142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373142.P4478044181005577462

`eq[1, A373141(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373142

/-- `eq[1, A373141(n+1)]+1` -/
def P4478044181005577462.Spec : Prop :=
  ∀ n, (P4478044181005577462.a n : ℤ) = A373142 (n + 1)

theorem P4478044181005577462.correct : P4478044181005577462.Spec := by
  intro n
  simp only [A373142, Nat.add_sub_cancel]

end A373142

/-! ## A373142.P9053128203207180611

`eq[1, A374132(n+2)]+2`
-/

namespace A373142.P9053128203207180611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374132 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A373142.P9053128203207180611

namespace A373142

/-- `eq[1, A374132(n+2)]+2` -/
def P9053128203207180611.Spec : Prop :=
  ∀ n, (P9053128203207180611.a n : ℤ) = A373142 (n + 1)

end A373142

/-! ## A373142.P6245799709232863504

`filter[A344180(n), A373141(#)]`
-/

namespace A373142.P6245799709232863504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P6245799709232863504

namespace A373142

/-- `filter[A344180(n), A373141(#)]` -/
def P6245799709232863504.Spec : Prop :=
  ∀ n, P6245799709232863504.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P3276807580910033926

`eq[1, A369001(3*(n+1))]+1`
-/

namespace A373142.P3276807580910033926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373142.P3276807580910033926

namespace A373142

/-- `eq[1, A369001(3*(n+1))]+1` -/
def P3276807580910033926.Spec : Prop :=
  ∀ n, (P3276807580910033926.a n : ℤ) = A373142 (n + 1)

end A373142

/-! ## A373142.P5281847391205322095

`filter[A359822(n+2), A373141(#)]`
-/

namespace A373142.P5281847391205322095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359822 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P5281847391205322095

namespace A373142

/-- `filter[A359822(n+2), A373141(#)]` -/
def P5281847391205322095.Spec : Prop :=
  ∀ n, P5281847391205322095.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P3687923876557519608

`filter[A359776(n+1), A373141(#)]`
-/

namespace A373142.P3687923876557519608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P3687923876557519608

namespace A373142

/-- `filter[A359776(n+1), A373141(#)]` -/
def P3687923876557519608.Spec : Prop :=
  ∀ n, P3687923876557519608.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P7163737833193956560

`filter[A003159(n+1), A373141(#)]`
-/

namespace A373142.P7163737833193956560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P7163737833193956560

namespace A373142

/-- `filter[A003159(n+1), A373141(#)]` -/
def P7163737833193956560.Spec : Prop :=
  ∀ n, P7163737833193956560.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P8114426961247608816

`filter[A369003(n+1), A035263(#)]`
-/

namespace A373142.P8114426961247608816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A373142.P8114426961247608816

namespace A373142

/-- `filter[A369003(n+1), A035263(#)]` -/
def P8114426961247608816.Spec : Prop :=
  ∀ n, P8114426961247608816.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P2448198449306499725

`filter[A369003(n+1), A373141(#)]`
-/

namespace A373142.P2448198449306499725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P2448198449306499725

namespace A373142

/-- `filter[A369003(n+1), A373141(#)]` -/
def P2448198449306499725.Spec : Prop :=
  ∀ n, P2448198449306499725.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P5738608833229216207

`∩[A003159(n+1), A369003(n+1)]`
-/

namespace A373142.P5738608833229216207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373142.P5738608833229216207

namespace A373142

/-- `∩[A003159(n+1), A369003(n+1)]` -/
def P5738608833229216207.Spec : Prop :=
  ∀ n, (P5738608833229216207.a n : ℤ) = A373142 (n + 1)

end A373142

/-! ## A373142.P17886166858576461784

`filter[A260401(n+1), A373141(#)]`
-/

namespace A373142.P17886166858576461784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P17886166858576461784

namespace A373142

/-- `filter[A260401(n+1), A373141(#)]` -/
def P17886166858576461784.Spec : Prop :=
  ∀ n, P17886166858576461784.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P11280145438265401324

`filter[A246716(n+1), A373141(#)]`
-/

namespace A373142.P11280145438265401324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P11280145438265401324

namespace A373142

/-- `filter[A246716(n+1), A373141(#)]` -/
def P11280145438265401324.Spec : Prop :=
  ∀ n, P11280145438265401324.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P12323761814228838161

`filter[A107750(n+1), A373141(#)]`
-/

namespace A373142.P12323761814228838161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P12323761814228838161

namespace A373142

/-- `filter[A107750(n+1), A373141(#)]` -/
def P12323761814228838161.Spec : Prop :=
  ∀ n, P12323761814228838161.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P15461331857343610916

`filter[A042965(n+2), A373141(#)]`
-/

namespace A373142.P15461331857343610916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P15461331857343610916

namespace A373142

/-- `filter[A042965(n+2), A373141(#)]` -/
def P15461331857343610916.Spec : Prop :=
  ∀ n, P15461331857343610916.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P2524857349647647798

`filter[A263715(n+3), A373141(#)]`
-/

namespace A373142.P2524857349647647798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P2524857349647647798

namespace A373142

/-- `filter[A263715(n+3), A373141(#)]` -/
def P2524857349647647798.Spec : Prop :=
  ∀ n, P2524857349647647798.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P13036691032620167285

`filter[A047565(n+3), A373141(#)]`
-/

namespace A373142.P13036691032620167285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P13036691032620167285

namespace A373142

/-- `filter[A047565(n+3), A373141(#)]` -/
def P13036691032620167285.Spec : Prop :=
  ∀ n, P13036691032620167285.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P325274200814758345

`filter[A122906(n+1), A373141(#)]`
-/

namespace A373142.P325274200814758345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P325274200814758345

namespace A373142

/-- `filter[A122906(n+1), A373141(#)]` -/
def P325274200814758345.Spec : Prop :=
  ∀ n, P325274200814758345.a n = A373142 (n + 1)

end A373142

/-! ## A373142.P17247098518475176182

`lt[0, A373141(A028310(n))]`
-/

namespace A373142.P17247098518475176182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373141 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A373142.P17247098518475176182

namespace A373142

/-- `lt[0, A373141(A028310(n))]` -/
def P17247098518475176182.Spec : Prop :=
  ∀ n, (P17247098518475176182.a n : ℤ) = A373142 (n + 1)

end A373142

/-! ## A373142.P13473877162603504014

`filter[A116966(n), A373141(#)]`
-/

namespace A373142.P13473877162603504014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A373142.P13473877162603504014

namespace A373142

/-- `filter[A116966(n), A373141(#)]` -/
def P13473877162603504014.Spec : Prop :=
  ∀ n, P13473877162603504014.a n = A373142 (n + 1)

end A373142

/-!
# A373143: a(n) = 1 if both A003415(n) and A276085(n) are multiples of 3, otherwise 0, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373143, the canonical program `A373143.P15888518406424866869` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373143 has offset 1).

The definition of A373143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373143.P15888518406424866869

`A359430(n+1)*A372573(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A373143

/-- `A359430(n+1)*A372573(n+1)` -/
def P15888518406424866869.Spec : Prop :=
  ∀ n, P15888518406424866869.a n = A373143 (n + 1)

theorem P15888518406424866869.correct : P15888518406424866869.Spec := by
  intro n
  simp only [A373143, Nat.add_sub_cancel]

end A373143

/-! ## A373143.P6163542276051569638

`char[A373144(n+1)-1]`
-/

namespace A373143.P6163542276051569638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373144 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373143.P6163542276051569638

namespace A373143

/-- `char[A373144(n+1)-1]` -/
def P6163542276051569638.Spec : Prop :=
  ∀ n, (P6163542276051569638.a n : ℤ) = A373143 (n + 1)

end A373143

/-! ## A373143.P13926908877579585880

`A079978(A373145(n+1))`
-/

namespace A373143.P13926908877579585880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A373145 (n + 1)).toNat

end

end A373143.P13926908877579585880

namespace A373143

/-- `A079978(A373145(n+1))` -/
def P13926908877579585880.Spec : Prop :=
  ∀ n, P13926908877579585880.a n = A373143 (n + 1)

end A373143

/-! ## A373143.P10733471361613132191

`A037140(A373145(n+1))%A280560(3*n+2)`
-/

namespace A373143.P10733471361613132191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037140 (A373145 (n + 1)).toNat) (A280560 (3 * n + 2))

end

end A373143.P10733471361613132191

namespace A373143

/-- `A037140(A373145(n+1))%A280560(3*n+2)` -/
def P10733471361613132191.Spec : Prop :=
  ∀ n, P10733471361613132191.a n = A373143 (n + 1)

end A373143

/-! ## A373143.P15815540296625103602

`A060398(A373145(n+1)²)`
-/

namespace A373143.P15815540296625103602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A373145 (n + 1) ^ 2).toNat

end

end A373143.P15815540296625103602

namespace A373143

/-- `A060398(A373145(n+1)²)` -/
def P15815540296625103602.Spec : Prop :=
  ∀ n, P15815540296625103602.a n = A373143 (n + 1)

end A373143

/-! ## A373143.P11299527948748404438

`and(A279329(n+1), A352874(n+1))`
-/

namespace A373143.P11299527948748404438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279329 (n + 1)) (A352874 (n + 1))

end

end A373143.P11299527948748404438

namespace A373143

/-- `and(A279329(n+1), A352874(n+1))` -/
def P11299527948748404438.Spec : Prop :=
  ∀ n, P11299527948748404438.a n = A373143 (n + 1)

end A373143

/-! ## A373143.P1607115112206743641

`A279329(n+1)*A279329(A294335(n))`
-/

namespace A373143.P1607115112206743641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (n + 1) * A279329 (A294335 n).toNat

end

end A373143.P1607115112206743641

namespace A373143

/-- `A279329(n+1)*A279329(A294335(n))` -/
def P1607115112206743641.Spec : Prop :=
  ∀ n, P1607115112206743641.a n = A373143 (n + 1)

end A373143

/-! ## A373143.P17485839259559436948

`A280130(n+1-A280130(A078130(n+1)))`
-/

namespace A373143.P17485839259559436948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 ((n + 1 : ℤ) - A280130 (A078130 (n + 1)).toNat).toNat

end

end A373143.P17485839259559436948

namespace A373143

/-- `A280130(n+1-A280130(A078130(n+1)))` -/
def P17485839259559436948.Spec : Prop :=
  ∀ n, P17485839259559436948.a n = A373143 (n + 1)

end A373143

/-! ## A373143.P9361382560014307822

`A284388(A003349(2*n+5)^A297199(n+1))`
-/

namespace A373143.P9361382560014307822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (SequenceMachineLib.roundAway ((A003349 (2 * n + 5) : ℚ) ^ (A297199 (n + 1) : ℤ))).toNat

end

end A373143.P9361382560014307822

namespace A373143

/-- `A284388(A003349(2*n+5)^A297199(n+1))` -/
def P9361382560014307822.Spec : Prop :=
  ∀ n, P9361382560014307822.a n = A373143 (n + 1)

end A373143

/-! ## A373143.P8523719273132804324

`and(A089192(A359352(n+1)), A374119(n+1))`
-/

namespace A373143.P8523719273132804324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089192 (A359352 (n + 1)).toNat) (A374119 (n + 1))

end

end A373143.P8523719273132804324

namespace A373143

/-- `and(A089192(A359352(n+1)), A374119(n+1))` -/
def P8523719273132804324.Spec : Prop :=
  ∀ n, P8523719273132804324.a n = A373143 (n + 1)

end A373143

/-!
# A373144: Numbers k such that both A003415(k) and A276085(k) are multiples of 3, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373144, the canonical program `A373144.P16197007913121420560` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373144 has offset 1).

The definition of A373144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373144.P16197007913121420560

`record[(n+1)*A373143(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A373144

/-- `record[(n+1)*A373143(n+1)]` -/
def P16197007913121420560.Spec : Prop :=
  ∀ n, P16197007913121420560.a n = A373144 (n + 1)

theorem P16197007913121420560.correct : P16197007913121420560.Spec := by
  intro n
  simp only [A373144, Nat.add_sub_cancel]

end A373144

/-! ## A373144.P9626771273318768416

`filter[A305800(n+1), A373143(#)]`
-/

namespace A373144.P9626771273318768416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P9626771273318768416

namespace A373144

/-- `filter[A305800(n+1), A373143(#)]` -/
def P9626771273318768416.Spec : Prop :=
  ∀ n, P9626771273318768416.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P15759831773912841098

`filter[A305801(n+1), A373143(#)]`
-/

namespace A373144.P15759831773912841098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P15759831773912841098

namespace A373144

/-- `filter[A305801(n+1), A373143(#)]` -/
def P15759831773912841098.Spec : Prop :=
  ∀ n, P15759831773912841098.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P13771614158384907638

`filter[A305900(n+1), A373143(#)]`
-/

namespace A373144.P13771614158384907638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P13771614158384907638

namespace A373144

/-- `filter[A305900(n+1), A373143(#)]` -/
def P13771614158384907638.Spec : Prop :=
  ∀ n, P13771614158384907638.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P7706001056956315203

`filter[A305901(n+1), A373143(#)]`
-/

namespace A373144.P7706001056956315203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P7706001056956315203

namespace A373144

/-- `filter[A305901(n+1), A373143(#)]` -/
def P7706001056956315203.Spec : Prop :=
  ∀ n, P7706001056956315203.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P18341310997226571686

`filter[A305903(n+1), A373143(#)]`
-/

namespace A373144.P18341310997226571686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P18341310997226571686

namespace A373144

/-- `filter[A305903(n+1), A373143(#)]` -/
def P18341310997226571686.Spec : Prop :=
  ∀ n, P18341310997226571686.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P7273087366330490399

`filter[A305904(n+1), A373143(#)]`
-/

namespace A373144.P7273087366330490399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P7273087366330490399

namespace A373144

/-- `filter[A305904(n+1), A373143(#)]` -/
def P7273087366330490399.Spec : Prop :=
  ∀ n, P7273087366330490399.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P7133863036584183979

`filter[A305975(n+1), A373143(#)]`
-/

namespace A373144.P7133863036584183979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P7133863036584183979

namespace A373144

/-- `filter[A305975(n+1), A373143(#)]` -/
def P7133863036584183979.Spec : Prop :=
  ∀ n, P7133863036584183979.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P8268644507927869215

`filter[A305976(n+1), A373143(#)]`
-/

namespace A373144.P8268644507927869215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P8268644507927869215

namespace A373144

/-- `filter[A305976(n+1), A373143(#)]` -/
def P8268644507927869215.Spec : Prop :=
  ∀ n, P8268644507927869215.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P3518069074438408760

`filter[A305979(n+1), A373143(#)]`
-/

namespace A373144.P3518069074438408760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P3518069074438408760

namespace A373144

/-- `filter[A305979(n+1), A373143(#)]` -/
def P3518069074438408760.Spec : Prop :=
  ∀ n, P3518069074438408760.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P16870873789221307423

`filter[A319704(n+1), A373143(#)]`
-/

namespace A373144.P16870873789221307423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P16870873789221307423

namespace A373144

/-- `filter[A319704(n+1), A373143(#)]` -/
def P16870873789221307423.Spec : Prop :=
  ∀ n, P16870873789221307423.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P3885757885856322126

`filter[A319707(n+1), A373143(#)]`
-/

namespace A373144.P3885757885856322126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P3885757885856322126

namespace A373144

/-- `filter[A319707(n+1), A373143(#)]` -/
def P3885757885856322126.Spec : Prop :=
  ∀ n, P3885757885856322126.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P3374721593617008204

`filter[A331304(n+1), A373143(#)]`
-/

namespace A373144.P3374721593617008204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P3374721593617008204

namespace A373144

/-- `filter[A331304(n+1), A373143(#)]` -/
def P3374721593617008204.Spec : Prop :=
  ∀ n, P3374721593617008204.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P16515682662705797028

`filter[A379000(n+1), A373143(#)]`
-/

namespace A373144.P16515682662705797028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P16515682662705797028

namespace A373144

/-- `filter[A379000(n+1), A373143(#)]` -/
def P16515682662705797028.Spec : Prop :=
  ∀ n, P16515682662705797028.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P16933352194488492494

`filter[A332900(n+1), A373143(#)]`
-/

namespace A373144.P16933352194488492494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P16933352194488492494

namespace A373144

/-- `filter[A332900(n+1), A373143(#)]` -/
def P16933352194488492494.Spec : Prop :=
  ∀ n, P16933352194488492494.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P12895838335821963847

`filter[A300827(n+1), A373143(#)]`
-/

namespace A373144.P12895838335821963847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P12895838335821963847

namespace A373144

/-- `filter[A300827(n+1), A373143(#)]` -/
def P12895838335821963847.Spec : Prop :=
  ∀ n, P12895838335821963847.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P1221476427188560074

`filter[A324401(n+1), A373143(#)]`
-/

namespace A373144.P1221476427188560074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P1221476427188560074

namespace A373144

/-- `filter[A324401(n+1), A373143(#)]` -/
def P1221476427188560074.Spec : Prop :=
  ∀ n, P1221476427188560074.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P9911823719276039215

`filter[A305902(n+1), A373143(#)]`
-/

namespace A373144.P9911823719276039215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P9911823719276039215

namespace A373144

/-- `filter[A305902(n+1), A373143(#)]` -/
def P9911823719276039215.Spec : Prop :=
  ∀ n, P9911823719276039215.a n = A373144 (n + 1)

end A373144

/-! ## A373144.P7386536384142608851

`filter[A283312(n+1), A373143(#)]`
-/

namespace A373144.P7386536384142608851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373143 (f1 j).toNat = 1) n)

end

end A373144.P7386536384142608851

namespace A373144

/-- `filter[A283312(n+1), A373143(#)]` -/
def P7386536384142608851.Spec : Prop :=
  ∀ n, P7386536384142608851.a n = A373144 (n + 1)

end A373144

/-!
# A373145: a(n) = gcd(A003415(n), A276085(n)), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373145, the canonical program `A373145.P6066227124448221809` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373145 has offset 1).

The definition of A373145 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373145.P6066227124448221809

`gcd(A003415(n+1), A276085(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373145

/-- `gcd(A003415(n+1), A276085(n+1))` -/
def P6066227124448221809.Spec : Prop :=
  ∀ n, (P6066227124448221809.a n : ℤ) = A373145 (n + 1)

theorem P6066227124448221809.correct : P6066227124448221809.Spec := by
  intro n
  simp only [A373145, Nat.add_sub_cancel]

end A373145

/-! ## A373145.P8499406601712582728

`gcd(A003415(A000027(n+1)), A373146(n+1))`
-/

namespace A373145.P8499406601712582728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (A000027 (n + 1)).toNat) (A373146 (n + 1))

end

end A373145.P8499406601712582728

namespace A373145

/-- `gcd(A003415(A000027(n+1)), A373146(n+1))` -/
def P8499406601712582728.Spec : Prop :=
  ∀ n, (P8499406601712582728.a n : ℤ) = A373145 (n + 1)

end A373145

/-! ## A373145.P12890004028677324013

`gcd(A328769(n+1)/(n+1), ∑[A258057(n)])`
-/

namespace A373145.P12890004028677324013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A328769 (n + 1) : ℚ) / (n + 1 : ℚ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373145.P12890004028677324013

namespace A373145

/-- `gcd(A328769(n+1)/(n+1), ∑[A258057(n)])` -/
def P12890004028677324013.Spec : Prop :=
  ∀ n, (P12890004028677324013.a n : ℤ) = A373145 (n + 1)

end A373145

/-! ## A373145.P4871205298468031132

`gcd(A006218(A324665(n)), A342001(n+1))`
-/

namespace A373145.P4871205298468031132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006218 (A324665 n).toNat) (A342001 (n + 1))

end

end A373145.P4871205298468031132

namespace A373145

/-- `gcd(A006218(A324665(n)), A342001(n+1))` -/
def P4871205298468031132.Spec : Prop :=
  ∀ n, (P4871205298468031132.a n : ℤ) = A373145 (n + 1)

end A373145

/-! ## A373145.P1426643154471416712

`A373362(n+1)+A179391(A276086(n))`
-/

namespace A373145.P1426643154471416712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373362 (n + 1) + A179391 (A276086 n).toNat

end

end A373145.P1426643154471416712

namespace A373145

/-- `A373362(n+1)+A179391(A276086(n))` -/
def P1426643154471416712.Spec : Prop :=
  ∀ n, P1426643154471416712.a n = A373145 (n + 1)

end A373145

/-!
# A373146: a(n) = A276085(n) - A003415(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373146, the canonical program `A373146.P15020100916809049614` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373146 has offset 1).

The definition of A373146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373146.P15020100916809049614

`A276085(n+1)-A003415(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373146

/-- `A276085(n+1)-A003415(n+1)` -/
def P15020100916809049614.Spec : Prop :=
  ∀ n, P15020100916809049614.a n = A373146 (n + 1)

theorem P15020100916809049614.correct : P15020100916809049614.Spec := by
  intro n
  simp only [A373146, Nat.add_sub_cancel]

end A373146

/-! ## A373146.P11325499500489448694

`A276085(n+1)-∑[A258057(n)]`
-/

namespace A373146.P11325499500489448694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373146.P11325499500489448694

namespace A373146

/-- `A276085(n+1)-∑[A258057(n)]` -/
def P11325499500489448694.Spec : Prop :=
  ∀ n, P11325499500489448694.a n = A373146 (n + 1)

end A373146

/-! ## A373146.P9401879161112812666

`A276085(n+1)-A319703(A003961(n+1))`
-/

namespace A373146.P9401879161112812666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1) - A319703 (A003961 (n + 1)).toNat

end

end A373146.P9401879161112812666

namespace A373146

/-- `A276085(n+1)-A319703(A003961(n+1))` -/
def P9401879161112812666.Spec : Prop :=
  ∀ n, P9401879161112812666.a n = A373146 (n + 1)

end A373146

/-! ## A373146.P9065121684625942295

`A276085(n+1)+A001489(A319703(2*(n+1)))`
-/

namespace A373146.P9065121684625942295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1) + A001489 (A319703 (2 * (n + 1))).toNat

end

end A373146.P9065121684625942295

namespace A373146

/-- `A276085(n+1)+A001489(A319703(2*(n+1)))` -/
def P9065121684625942295.Spec : Prop :=
  ∀ n, P9065121684625942295.a n = A373146 (n + 1)

end A373146

/-! ## A373146.P250015389580393987

`A328769(n+1)/(n+1)-A003415(n+1)`
-/

namespace A373146.P250015389580393987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328769 (n + 1) : ℚ) / (n + 1 : ℚ) - (A003415 (n + 1) : ℚ)

end

end A373146.P250015389580393987

namespace A373146

/-- `A328769(n+1)/(n+1)-A003415(n+1)` -/
def P250015389580393987.Spec : Prop :=
  ∀ n, P250015389580393987.a n = (A373146 (n + 1) : ℚ)

end A373146

/-!
# A373147: a(n) = A003415(n) mod A276085(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373147, the canonical program `A373147.P3382100505561380020` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373147 has offset 2).

The definition of A373147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373147.P3382100505561380020

`A003415(n+2)%A276085(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373147

/-- `A003415(n+2)%A276085(n+2)` -/
def P3382100505561380020.Spec : Prop :=
  ∀ n, P3382100505561380020.a n = A373147 (n + 2)

theorem P3382100505561380020.correct : P3382100505561380020.Spec := by
  intro n
  simp only [A373147, Nat.add_sub_cancel]

end A373147

/-! ## A373147.P10972404972332695678

`and(A262945(A274473(n+2)), A370174(n))`
-/

namespace A373147.P10972404972332695678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262945 (A274473 (n + 2)).toNat) (A370174 n)

end

end A373147.P10972404972332695678

namespace A373147

/-- `and(A262945(A274473(n+2)), A370174(n))` -/
def P10972404972332695678.Spec : Prop :=
  ∀ n, P10972404972332695678.a n = A373147 (n + 2)

end A373147

/-!
# A373148: a(n) = A276085(n) mod A003415(n), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A373148, the canonical program `A373148.P6189189648227648503` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373148 has offset 2).

The definition of A373148 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276085, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373148.P6189189648227648503

`A276085(n+2)%A003415(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373148

/-- `A276085(n+2)%A003415(n+2)` -/
def P6189189648227648503.Spec : Prop :=
  ∀ n, P6189189648227648503.a n = A373148 (n + 2)

theorem P6189189648227648503.correct : P6189189648227648503.Spec := by
  intro n
  simp only [A373148, Nat.add_sub_cancel]

end A373148

/-! ## A373148.P648641681566510373

`A059125(A059966(n+1))*A070939(n+1)`
-/

namespace A373148.P648641681566510373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059125 (A059966 (n + 1)).toNat * A070939 (n + 1)

end

end A373148.P648641681566510373

namespace A373148

/-- `A059125(A059966(n+1))*A070939(n+1)` -/
def P648641681566510373.Spec : Prop :=
  ∀ n, P648641681566510373.a n = A373148 (n + 2)

end A373148

/-! ## A373148.P9557766149903030906

`A110475(A110482(n+1)+A110471(2*(n+1)))`
-/

namespace A373148.P9557766149903030906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (A110482 (n + 1) + A110471 (2 * (n + 1))).toNat

end

end A373148.P9557766149903030906

namespace A373148

/-- `A110475(A110482(n+1)+A110471(2*(n+1)))` -/
def P9557766149903030906.Spec : Prop :=
  ∀ n, P9557766149903030906.a n = A373148 (n + 2)

end A373148

/-! ## A373148.P8600117166851926937

`A007949(A319347(n+1)^A331246(n+1))`
-/

namespace A373148.P8600117166851926937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((A319347 (n + 1) : ℚ) ^ (A331246 (n + 1) : ℤ))).toNat

end

end A373148.P8600117166851926937

namespace A373148

/-- `A007949(A319347(n+1)^A331246(n+1))` -/
def P8600117166851926937.Spec : Prop :=
  ∀ n, P8600117166851926937.a n = A373148 (n + 2)

end A373148

/-! ## A373148.P8483319993712630039

`and(A055642(A383211(3*n+2)), A179016(n))`
-/

namespace A373148.P8483319993712630039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055642 (A383211 (3 * n + 2)).toNat) (A179016 n)

end

end A373148.P8483319993712630039

namespace A373148

/-- `and(A055642(A383211(3*n+2)), A179016(n))` -/
def P8483319993712630039.Spec : Prop :=
  ∀ n, P8483319993712630039.a n = A373148 (n + 2)

end A373148

/-!
# A373149: Fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

The programs for A373149, the canonical program `A373149.P16458993901171327611` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373149 has offset 1).

The definition of A373149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373149.P16458993901171327611

`A001414(A064989(n+1))+val(n+1, 2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A373149

/-- `A001414(A064989(n+1))+val(n+1, 2)` -/
def P16458993901171327611.Spec : Prop :=
  ∀ n, P16458993901171327611.a n = A373149 (n + 1)

theorem P16458993901171327611.correct : P16458993901171327611.Spec := by
  intro n
  simp only [A373149, Nat.add_sub_cancel]

end A373149

/-! ## A373149.P14966077699840586855

`A007814(n+1)+A001414(A064989(n+1))`
-/

namespace A373149.P14966077699840586855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A001414 (A064989 (n + 1)).toNat

end

end A373149.P14966077699840586855

namespace A373149

/-- `A007814(n+1)+A001414(A064989(n+1))` -/
def P14966077699840586855.Spec : Prop :=
  ∀ n, P14966077699840586855.a n = A373149 (n + 1)

end A373149

/-! ## A373149.P12540618956202458675

`A059975(A064989(n+1))+A001222(n+1)`
-/

namespace A373149.P12540618956202458675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (A064989 (n + 1)).toNat + A001222 (n + 1)

end

end A373149.P12540618956202458675

namespace A373149

/-- `A059975(A064989(n+1))+A001222(n+1)` -/
def P12540618956202458675.Spec : Prop :=
  ∀ n, P12540618956202458675.a n = A373149 (n + 1)

end A373149

/-! ## A373149.P17017091253760285108

`∑{e}[A181821(n+1), A008578(#)]`
-/

namespace A373149.P17017091253760285108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008578 (Nat.factorization (f1 n).natAbs p)

end

end A373149.P17017091253760285108

namespace A373149

/-- `∑{e}[A181821(n+1), A008578(#)]` -/
def P17017091253760285108.Spec : Prop :=
  ∀ n, P17017091253760285108.a n = A373149 (n + 1)

end A373149

/-! ## A373149.P1118478894608915128

`∑{e}[A181821(n+1), A319627(A000040(#))]`
-/

namespace A373149.P1118478894608915128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A319627 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A373149.P1118478894608915128

namespace A373149

/-- `∑{e}[A181821(n+1), A319627(A000040(#))]` -/
def P1118478894608915128.Spec : Prop :=
  ∀ n, P1118478894608915128.a n = A373149 (n + 1)

end A373149

/-!
# A373152: Lexicographically earliest infinite sequence such that a(i) = a(j) => A085731(i) = A085731(j) and A373145(i) = A373145(j), for all i, j >= 1.

The programs for A373152, there is no canonical definition to state claims against.
-/

/-! ## A373152.P2558009632873695413

`gcd(A055932(A000079(n)), A300827(n+1))`
-/

namespace A373152.P2558009632873695413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055932 (A000079 n).toNat) (A300827 (n + 1))

end

end A373152.P2558009632873695413

/-! ## A373152.P12376986090764004353

`gcd(A099231(A127515(n+4)), A319343(n+1))`
-/

namespace A373152.P12376986090764004353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099231 (A127515 (n + 4)).toNat) (A319343 (n + 1))

end

end A373152.P12376986090764004353

/-! ## A373152.P6164604068069099341

`gcd(A318835(n+1), A318879(A318848(3*n+1)))`
-/

namespace A373152.P6164604068069099341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318835 (n + 1)) (A318879 (A318848 (3 * n + 1)).toNat)

end

end A373152.P6164604068069099341

/-! ## A373152.P1880743451799053842

`A300827(n+1)-A324192(A038041(n+1))`
-/

namespace A373152.P1880743451799053842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) - A324192 (A038041 (n + 1)).toNat

end

end A373152.P1880743451799053842

/-! ## A373152.P16945061978381402412

`A352899(n+1)-A152822(A183467(n+1))`
-/

namespace A373152.P16945061978381402412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352899 (n + 1) - A152822 (A183467 (n + 1)).toNat

end

end A373152.P16945061978381402412

/-!
# A373153: a(n) is -1, 0, or 1 such that a(n) == A276085(n) (mod 3), where A276085 is the primorial base log-function.

The programs for A373153, the canonical program `A373153.P13043252029439132361` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373153 has offset 1).

The definition of A373153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373153.P13043252029439132361

`A234045(A065331(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373153

/-- `A234045(A065331(n+1))` -/
def P13043252029439132361.Spec : Prop :=
  ∀ n, P13043252029439132361.a n = A373153 (n + 1)

theorem P13043252029439132361.correct : P13043252029439132361.Spec := by
  intro n
  simp only [A373153, Nat.add_sub_cancel]

end A373153

/-! ## A373153.P5857895105537125623

`A102283(A372576(n+1))`
-/

namespace A373153.P5857895105537125623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A372576 (n + 1)).toNat

end

end A373153.P5857895105537125623

namespace A373153

/-- `A102283(A372576(n+1))` -/
def P5857895105537125623.Spec : Prop :=
  ∀ n, P5857895105537125623.a n = A373153 (n + 1)

end A373153

/-! ## A373153.P9584046735652261347

`A102283(A391946(n+1))`
-/

namespace A373153.P9584046735652261347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A391946 (n + 1)).toNat

end

end A373153.P9584046735652261347

namespace A373153

/-- `A102283(A391946(n+1))` -/
def P9584046735652261347.Spec : Prop :=
  ∀ n, P9584046735652261347.a n = A373153 (n + 1)

end A373153

/-! ## A373153.P12083974801582327098

`A373260(n+1)-A373263(n+1)`
-/

namespace A373153.P12083974801582327098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (n + 1) - A373263 (n + 1)

end

end A373153.P12083974801582327098

namespace A373153

/-- `A373260(n+1)-A373263(n+1)` -/
def P12083974801582327098.Spec : Prop :=
  ∀ n, P12083974801582327098.a n = A373153 (n + 1)

end A373153

/-! ## A373153.P6541058131483172388

`A373260(n+1)-A372573(2*(n+1))`
-/

namespace A373153.P6541058131483172388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (n + 1) - A372573 (2 * (n + 1))

end

end A373153.P6541058131483172388

namespace A373153

/-- `A373260(n+1)-A372573(2*(n+1))` -/
def P6541058131483172388.Spec : Prop :=
  ∀ n, P6541058131483172388.a n = A373153 (n + 1)

end A373153

/-! ## A373153.P13886571808435050707

`A373263(2*(n+1))-A373263(n+1)`
-/

namespace A373153.P13886571808435050707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373263 (2 * (n + 1)) - A373263 (n + 1)

end

end A373153.P13886571808435050707

namespace A373153

/-- `A373263(2*(n+1))-A373263(n+1)` -/
def P13886571808435050707.Spec : Prop :=
  ∀ n, P13886571808435050707.a n = A373153 (n + 1)

end A373153

/-! ## A373153.P10005775065023228651

`A332813(A065331(2*(n+1)))-1`
-/

namespace A373153.P10005775065023228651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A065331 (2 * (n + 1))).toNat - 1

end

end A373153.P10005775065023228651

namespace A373153

/-- `A332813(A065331(2*(n+1)))-1` -/
def P10005775065023228651.Spec : Prop :=
  ∀ n, P10005775065023228651.a n = A373153 (n + 1)

end A373153

/-! ## A373153.P12306180291510485164

`A373260(n+1)-A373260((n+1)²)`
-/

namespace A373153.P12306180291510485164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373260 (n + 1) - A373260 ((n + 1) ^ 2)

end

end A373153.P12306180291510485164

namespace A373153

/-- `A373260(n+1)-A373260((n+1)²)` -/
def P12306180291510485164.Spec : Prop :=
  ∀ n, P12306180291510485164.a n = A373153 (n + 1)

end A373153

/-! ## A373153.P16405732318430986987

`A332823(A265398(n+1))`
-/

namespace A373153.P16405732318430986987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A265398 (n + 1)).toNat

end

end A373153.P16405732318430986987

namespace A373153

/-- `A332823(A265398(n+1))` -/
def P16405732318430986987.Spec : Prop :=
  ∀ n, P16405732318430986987.a n = A373153 (n + 1)

end A373153

/-!
# A373154: a(n) = 1 if 6*n is squarefree, otherwise 0.

The programs for A373154, the canonical program `A373154.P41254786666242686` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373154 has offset 1).

The definition of A373154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373154.P41254786666242686

`abs(A355688(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A373154

/-- `abs(A355688(n+1))` -/
def P41254786666242686.Spec : Prop :=
  ∀ n, P41254786666242686.a n = A373154 (n + 1)

theorem P41254786666242686.correct : P41254786666242686.Spec := by
  intro n
  simp only [A373154, Nat.add_sub_cancel]

end A373154

/-! ## A373154.P4630412782633552718

`A008966(6*(n+1))`
-/

namespace A373154.P4630412782633552718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (6 * (n + 1))

end

end A373154.P4630412782633552718

namespace A373154

/-- `A008966(6*(n+1))` -/
def P4630412782633552718.Spec : Prop :=
  ∀ n, P4630412782633552718.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P15720068274207377211

`A359377(2*(n+1))`
-/

namespace A373154.P15720068274207377211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (2 * (n + 1))

end

end A373154.P15720068274207377211

namespace A373154

/-- `A359377(2*(n+1))` -/
def P15720068274207377211.Spec : Prop :=
  ∀ n, P15720068274207377211.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P9829370078695015932

`A323239(3*(n+1))`
-/

namespace A373154.P9829370078695015932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (3 * (n + 1))

end

end A373154.P9829370078695015932

namespace A373154

/-- `A323239(3*(n+1))` -/
def P9829370078695015932.Spec : Prop :=
  ∀ n, P9829370078695015932.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P12100013660629393161

`A354819(6*(n+1))`
-/

namespace A373154.P12100013660629393161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354819 (6 * (n + 1))

end

end A373154.P12100013660629393161

namespace A373154

/-- `A354819(6*(n+1))` -/
def P12100013660629393161.Spec : Prop :=
  ∀ n, P12100013660629393161.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P16261688172705357508

`A379966(6*(n+1))`
-/

namespace A373154.P16261688172705357508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (6 * (n + 1))

end

end A373154.P16261688172705357508

namespace A373154

/-- `A379966(6*(n+1))` -/
def P16261688172705357508.Spec : Prop :=
  ∀ n, P16261688172705357508.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P13834208688859026994

`val(A123623(n+1), 6)`
-/

namespace A373154.P13834208688859026994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A123623 (n + 1)).toNat 6

end

end A373154.P13834208688859026994

namespace A373154

/-- `val(A123623(n+1), 6)` -/
def P13834208688859026994.Spec : Prop :=
  ∀ n, (P13834208688859026994.a n : ℤ) = A373154 (n + 1)

end A373154

/-! ## A373154.P8144569545926876884

`abs(A156277(2*(n+1)))`
-/

namespace A373154.P8144569545926876884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156277 (2 * (n + 1))|

end

end A373154.P8144569545926876884

namespace A373154

/-- `abs(A156277(2*(n+1)))` -/
def P8144569545926876884.Spec : Prop :=
  ∀ n, P8144569545926876884.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P17891552175444665641

`abs(A365428(2*(n+1)))`
-/

namespace A373154.P17891552175444665641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A365428 (2 * (n + 1))|

end

end A373154.P17891552175444665641

namespace A373154

/-- `abs(A365428(2*(n+1)))` -/
def P17891552175444665641.Spec : Prop :=
  ∀ n, P17891552175444665641.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P18101267167534980466

`A355688(lcm(5, n+1))²`
-/

namespace A373154.P18101267167534980466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (Nat.lcm 5 (n + 1)) ^ 2

end

end A373154.P18101267167534980466

namespace A373154

/-- `A355688(lcm(5, n+1))²` -/
def P18101267167534980466.Spec : Prop :=
  ∀ n, P18101267167534980466.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P8547448002569018798

`char[A276378(n+1)-1]`
-/

namespace A373154.P8547448002569018798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276378 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373154.P8547448002569018798

namespace A373154

/-- `char[A276378(n+1)-1]` -/
def P8547448002569018798.Spec : Prop :=
  ∀ n, (P8547448002569018798.a n : ℤ) = A373154 (n + 1)

end A373154

/-! ## A373154.P1062145893084006852

`and(1, A117997(2*(n+1)))`
-/

namespace A373154.P1062145893084006852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117997 (2 * (n + 1)))

end

end A373154.P1062145893084006852

namespace A373154

/-- `and(1, A117997(2*(n+1)))` -/
def P1062145893084006852.Spec : Prop :=
  ∀ n, P1062145893084006852.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P2864368270044429446

`and(1, A349125(2*(n+1)))`
-/

namespace A373154.P2864368270044429446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A349125 (2 * (n + 1)))

end

end A373154.P2864368270044429446

namespace A373154

/-- `and(1, A349125(2*(n+1)))` -/
def P2864368270044429446.Spec : Prop :=
  ∀ n, P2864368270044429446.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P9362016506696297925

`and(1, A349368(2*(n+1)))`
-/

namespace A373154.P9362016506696297925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A349368 (2 * (n + 1)))

end

end A373154.P9362016506696297925

namespace A373154

/-- `and(1, A349368(2*(n+1)))` -/
def P9362016506696297925.Spec : Prop :=
  ∀ n, P9362016506696297925.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P5559872579796242164

`and(n+1, A359377(n+1))`
-/

namespace A373154.P5559872579796242164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359377 (n + 1))

end

end A373154.P5559872579796242164

namespace A373154

/-- `and(n+1, A359377(n+1))` -/
def P5559872579796242164.Spec : Prop :=
  ∀ n, P5559872579796242164.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P3001159817362613235

`and(n+1, A364250(n+1))`
-/

namespace A373154.P3001159817362613235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A364250 (n + 1))

end

end A373154.P3001159817362613235

namespace A373154

/-- `and(n+1, A364250(n+1))` -/
def P3001159817362613235.Spec : Prop :=
  ∀ n, P3001159817362613235.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P14807209055188871776

`A156277(A165998(n))²`
-/

namespace A373154.P14807209055188871776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A165998 n).toNat ^ 2

end

end A373154.P14807209055188871776

namespace A373154

/-- `A156277(A165998(n))²` -/
def P14807209055188871776.Spec : Prop :=
  ∀ n, P14807209055188871776.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P15450252709911514395

`A156277(A294178(n))²`
-/

namespace A373154.P15450252709911514395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A294178 n).toNat ^ 2

end

end A373154.P15450252709911514395

namespace A373154

/-- `A156277(A294178(n))²` -/
def P15450252709911514395.Spec : Prop :=
  ∀ n, P15450252709911514395.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P17172758706203784646

`A014045(A123623(n+1))`
-/

namespace A373154.P17172758706203784646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014045 (A123623 (n + 1)).toNat

end

end A373154.P17172758706203784646

namespace A373154

/-- `A014045(A123623(n+1))` -/
def P17172758706203784646.Spec : Prop :=
  ∀ n, P17172758706203784646.a n = A373154 (n + 1)

end A373154

/-! ## A373154.P15749741831866792063

`and(A002033(n), A232991(n))`
-/

namespace A373154.P15749741831866792063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A232991 n)

end

end A373154.P15749741831866792063

namespace A373154

/-- `and(A002033(n), A232991(n))` -/
def P15749741831866792063.Spec : Prop :=
  ∀ n, P15749741831866792063.a n = A373154 (n + 1)

end A373154

/-!
# A373155: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is even, otherwise 0.

The programs for A373155, the canonical program `A373155.P8541549841256857123` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373155 has offset 1).

The definition of A373155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373155.P14682246258852558549

`abs(A084091(n+1))`
-/

namespace A373155.P14682246258852558549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084091 (n + 1)|

end

end A373155.P14682246258852558549

namespace A373155

/-- `abs(A084091(n+1))` -/
def P14682246258852558549.Spec : Prop :=
  ∀ n, P14682246258852558549.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P8541549841256857123

`A011655(n+1)*A035263(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373155

/-- `A011655(n+1)*A035263(n+1)` -/
def P8541549841256857123.Spec : Prop :=
  ∀ n, P8541549841256857123.a n = A373155 (n + 1)

theorem P8541549841256857123.correct : P8541549841256857123.Spec := by
  intro n
  simp only [A373155, Nat.add_sub_cancel]

end A373155

/-! ## A373155.P15140726433899674952

`xor(n+1, ∑[n%3])%3`
-/

namespace A373155.P15140726433899674952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A373155.P15140726433899674952

namespace A373155

/-- `xor(n+1, ∑[n%3])%3` -/
def P15140726433899674952.Spec : Prop :=
  ∀ n, (P15140726433899674952.a n : ℤ) = A373155 (n + 1)

end A373155

/-! ## A373155.P8708119272252469376

`((n+1)*xor(n, n+1))²%3`
-/

namespace A373155.P8708119272252469376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.xor n (n + 1)) ^ 2 % 3

end

end A373155.P8708119272252469376

namespace A373155

/-- `((n+1)*xor(n, n+1))²%3` -/
def P8708119272252469376.Spec : Prop :=
  ∀ n, (P8708119272252469376.a n : ℤ) = A373155 (n + 1)

end A373155

/-! ## A373155.P4496199467439431964

`∑{d}[or(n, n+1)-n, (n+1)²/#]%3`
-/

namespace A373155.P4496199467439431964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1) ^ 2 : ℚ) / (d : ℚ))) 3

end

end A373155.P4496199467439431964

namespace A373155

/-- `∑{d}[or(n, n+1)-n, (n+1)²/#]%3` -/
def P4496199467439431964.Spec : Prop :=
  ∀ n, P4496199467439431964.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P4835613259450642918

`A235201(n+1)%2`
-/

namespace A373155.P4835613259450642918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235201 (n + 1)) 2

end

end A373155.P4835613259450642918

namespace A373155

/-- `A235201(n+1)%2` -/
def P4835613259450642918.Spec : Prop :=
  ∀ n, P4835613259450642918.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P11937468129277177036

`A287896(n+1)%2`
-/

namespace A373155.P11937468129277177036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287896 (n + 1)) 2

end

end A373155.P11937468129277177036

namespace A373155

/-- `A287896(n+1)%2` -/
def P11937468129277177036.Spec : Prop :=
  ∀ n, P11937468129277177036.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P1562306708268967514

`A349122(n+1)%2`
-/

namespace A373155.P1562306708268967514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349122 (n + 1)) 2

end

end A373155.P1562306708268967514

namespace A373155

/-- `A349122(n+1)%2` -/
def P1562306708268967514.Spec : Prop :=
  ∀ n, P1562306708268967514.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P2951116343690942135

`A349138(n+1)%2`
-/

namespace A373155.P2951116343690942135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349138 (n + 1)) 2

end

end A373155.P2951116343690942135

namespace A373155

/-- `A349138(n+1)%2` -/
def P2951116343690942135.Spec : Prop :=
  ∀ n, P2951116343690942135.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P18242203574916180284

`A091519(n+1)%3`
-/

namespace A373155.P18242203574916180284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091519 (n + 1)) 3

end

end A373155.P18242203574916180284

namespace A373155

/-- `A091519(n+1)%3` -/
def P18242203574916180284.Spec : Prop :=
  ∀ n, P18242203574916180284.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P1597097519210936308

`A084091(4*(n+1))²`
-/

namespace A373155.P1597097519210936308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (4 * (n + 1)) ^ 2

end

end A373155.P1597097519210936308

namespace A373155

/-- `A084091(4*(n+1))²` -/
def P1597097519210936308.Spec : Prop :=
  ∀ n, P1597097519210936308.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P11508498300989515787

`A033684(A065331(n+1))`
-/

namespace A373155.P11508498300989515787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A065331 (n + 1)).toNat

end

end A373155.P11508498300989515787

namespace A373155

/-- `A033684(A065331(n+1))` -/
def P11508498300989515787.Spec : Prop :=
  ∀ n, P11508498300989515787.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P2078695008774781597

`A182582(A047261(n+1))`
-/

namespace A373155.P2078695008774781597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (A047261 (n + 1)).toNat

end

end A373155.P2078695008774781597

namespace A373155

/-- `A182582(A047261(n+1))` -/
def P2078695008774781597.Spec : Prop :=
  ∀ n, P2078695008774781597.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P8983797190304462498

`A187074(A065883(n+1))`
-/

namespace A373155.P8983797190304462498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (A065883 (n + 1)).toNat

end

end A373155.P8983797190304462498

namespace A373155

/-- `A187074(A065883(n+1))` -/
def P8983797190304462498.Spec : Prop :=
  ∀ n, P8983797190304462498.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P17477855855755427646

`A187074(A066990(n+1))`
-/

namespace A373155.P17477855855755427646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187074 (A066990 (n + 1)).toNat

end

end A373155.P17477855855755427646

namespace A373155

/-- `A187074(A066990(n+1))` -/
def P17477855855755427646.Spec : Prop :=
  ∀ n, P17477855855755427646.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P2634329994641162000

`A000035(A287896(n+1))`
-/

namespace A373155.P2634329994641162000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A287896 (n + 1)).toNat

end

end A373155.P2634329994641162000

namespace A373155

/-- `A000035(A287896(n+1))` -/
def P2634329994641162000.Spec : Prop :=
  ∀ n, P2634329994641162000.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P14289524425817259551

`A204418(n-A025480(n))`
-/

namespace A373155.P14289524425817259551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 ((n : ℤ) - A025480 n).toNat

end

end A373155.P14289524425817259551

namespace A373155

/-- `A204418(n-A025480(n))` -/
def P14289524425817259551.Spec : Prop :=
  ∀ n, P14289524425817259551.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P14193303899030736969

`A059841(A287896(n+1)+1)`
-/

namespace A373155.P14193303899030736969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A287896 (n + 1) + 1).toNat

end

end A373155.P14193303899030736969

namespace A373155

/-- `A059841(A287896(n+1)+1)` -/
def P14193303899030736969.Spec : Prop :=
  ∀ n, P14193303899030736969.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P17077702225034397347

`A079978(A065331(n+1)-1)`
-/

namespace A373155.P17077702225034397347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A065331 (n + 1) - 1).toNat

end

end A373155.P17077702225034397347

namespace A373155

/-- `A079978(A065331(n+1)-1)` -/
def P17077702225034397347.Spec : Prop :=
  ∀ n, P17077702225034397347.a n = A373155 (n + 1)

end A373155

/-! ## A373155.P10675848580208883616

`A296066(A287896(n+1)+2)`
-/

namespace A373155.P10675848580208883616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (A287896 (n + 1) + 2).toNat

end

end A373155.P10675848580208883616

namespace A373155

/-- `A296066(A287896(n+1)+2)` -/
def P10675848580208883616.Spec : Prop :=
  ∀ n, P10675848580208883616.a n = A373155 (n + 1)

end A373155

/-!
# A373156: a(n) = 1 if the 2-adic and the 3-adic valuations of n are equal, otherwise 0.

The programs for A373156, the canonical program `A373156.P12007324002122430818` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373156 has offset 1).

The definition of A373156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373156.P16296335851727584205

`A226569(n+1)%2`
-/

namespace A373156.P16296335851727584205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226569 (n + 1)) 2

end

end A373156.P16296335851727584205

namespace A373156

/-- `A226569(n+1)%2` -/
def P16296335851727584205.Spec : Prop :=
  ∀ n, P16296335851727584205.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P12007324002122430818

`C(A214681(n+1), n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A373156

/-- `C(A214681(n+1), n+1)` -/
def P12007324002122430818.Spec : Prop :=
  ∀ n, (P12007324002122430818.a n : ℤ) = A373156 (n + 1)

theorem P12007324002122430818.correct : P12007324002122430818.Spec := by
  intro n
  simp only [A373156, Nat.add_sub_cancel]

end A373156

/-! ## A373156.P16573376796783817125

`A356170(A065331(n+1))`
-/

namespace A373156.P16573376796783817125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356170 (A065331 (n + 1)).toNat

end

end A373156.P16573376796783817125

namespace A373156

/-- `A356170(A065331(n+1))` -/
def P16573376796783817125.Spec : Prop :=
  ∀ n, P16573376796783817125.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P13261352608157083657

`A320106(A244414(n+1))`
-/

namespace A373156.P13261352608157083657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (A244414 (n + 1)).toNat

end

end A373156.P13261352608157083657

namespace A373156

/-- `A320106(A244414(n+1))` -/
def P13261352608157083657.Spec : Prop :=
  ∀ n, P13261352608157083657.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P2990194178736288918

`A320106(A373397(n+1))`
-/

namespace A373156.P2990194178736288918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320106 (A373397 (n + 1)).toNat

end

end A373156.P2990194178736288918

namespace A373156

/-- `A320106(A373397(n+1))` -/
def P2990194178736288918.Spec : Prop :=
  ∀ n, P2990194178736288918.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P7790124770391390525

`and(A060576(n), A226569(n+1))`
-/

namespace A373156.P7790124770391390525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A226569 (n + 1))

end

end A373156.P7790124770391390525

namespace A373156

/-- `and(A060576(n), A226569(n+1))` -/
def P7790124770391390525.Spec : Prop :=
  ∀ n, P7790124770391390525.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P3785071552233818385

`and(A158388(n), A226569(n+1))`
-/

namespace A373156.P3785071552233818385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A226569 (n + 1))

end

end A373156.P3785071552233818385

namespace A373156

/-- `and(A158388(n), A226569(n+1))` -/
def P3785071552233818385.Spec : Prop :=
  ∀ n, P3785071552233818385.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P8875724154768424749

`and(A179184(n), A226569(n+1))`
-/

namespace A373156.P8875724154768424749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A226569 (n + 1))

end

end A373156.P8875724154768424749

namespace A373156

/-- `and(A179184(n), A226569(n+1))` -/
def P8875724154768424749.Spec : Prop :=
  ∀ n, P8875724154768424749.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P10120411689663021626

`and(A185114(n), A226569(n+1))`
-/

namespace A373156.P10120411689663021626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185114 n) (A226569 (n + 1))

end

end A373156.P10120411689663021626

namespace A373156

/-- `and(A185114(n), A226569(n+1))` -/
def P10120411689663021626.Spec : Prop :=
  ∀ n, P10120411689663021626.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P9780636116052698210

`and(A226569(n+1), A267442(n))`
-/

namespace A373156.P9780636116052698210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226569 (n + 1)) (A267442 n)

end

end A373156.P9780636116052698210

namespace A373156

/-- `and(A226569(n+1), A267442(n))` -/
def P9780636116052698210.Spec : Prop :=
  ∀ n, P9780636116052698210.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P13315605314910775183

`and(A226569(n+1), A267537(n))`
-/

namespace A373156.P13315605314910775183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A226569 (n + 1)) (A267537 n)

end

end A373156.P13315605314910775183

namespace A373156

/-- `and(A226569(n+1), A267537(n))` -/
def P13315605314910775183.Spec : Prop :=
  ∀ n, P13315605314910775183.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P17085458159355718885

`A079979(A309891((n+1)/A214681(n+1)))`
-/

namespace A373156.P17085458159355718885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A309891 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A214681 (n + 1) : ℚ))).toNat).toNat

end

end A373156.P17085458159355718885

namespace A373156

/-- `A079979(A309891((n+1)/A214681(n+1)))` -/
def P17085458159355718885.Spec : Prop :=
  ∀ n, P17085458159355718885.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P12365787315636640471

`char[A283980(n+1)-1]`
-/

namespace A373156.P12365787315636640471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373156.P12365787315636640471

namespace A373156

/-- `char[A283980(n+1)-1]` -/
def P12365787315636640471.Spec : Prop :=
  ∀ n, (P12365787315636640471.a n : ℤ) = A373156 (n + 1)

end A373156

/-! ## A373156.P964351131625915190

`A182582(A064614(n+1)+n+1)`
-/

namespace A373156.P964351131625915190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (A064614 (n + 1) + (n + 1 : ℤ)).toNat

end

end A373156.P964351131625915190

namespace A373156

/-- `A182582(A064614(n+1)+n+1)` -/
def P964351131625915190.Spec : Prop :=
  ∀ n, P964351131625915190.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P3316959329195299515

`A011655(A276147(n+1))`
-/

namespace A373156.P3316959329195299515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A276147 (n + 1)).toNat

end

end A373156.P3316959329195299515

namespace A373156

/-- `A011655(A276147(n+1))` -/
def P3316959329195299515.Spec : Prop :=
  ∀ n, P3316959329195299515.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P7654688727921368749

`and(A048578(n), A226569(n+1))`
-/

namespace A373156.P7654688727921368749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A226569 (n + 1))

end

end A373156.P7654688727921368749

namespace A373156

/-- `and(A048578(n), A226569(n+1))` -/
def P7654688727921368749.Spec : Prop :=
  ∀ n, P7654688727921368749.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P7930296006225077654

`and(A020737(n), A226569(n+1))`
-/

namespace A373156.P7930296006225077654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A226569 (n + 1))

end

end A373156.P7930296006225077654

namespace A373156

/-- `and(A020737(n), A226569(n+1))` -/
def P7930296006225077654.Spec : Prop :=
  ∀ n, P7930296006225077654.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P911794053711561628

`and(A195744(n), A226569(n+1))`
-/

namespace A373156.P911794053711561628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A226569 (n + 1))

end

end A373156.P911794053711561628

namespace A373156

/-- `and(A195744(n), A226569(n+1))` -/
def P911794053711561628.Spec : Prop :=
  ∀ n, P911794053711561628.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P4481345067863561987

`and(A122041(n+1), A226569(n+1))`
-/

namespace A373156.P4481345067863561987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A226569 (n + 1))

end

end A373156.P4481345067863561987

namespace A373156

/-- `and(A122041(n+1), A226569(n+1))` -/
def P4481345067863561987.Spec : Prop :=
  ∀ n, P4481345067863561987.a n = A373156 (n + 1)

end A373156

/-! ## A373156.P16171481900639220693

`and(A196657(n), A226569(n+1))`
-/

namespace A373156.P16171481900639220693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A226569 (n + 1))

end

end A373156.P16171481900639220693

namespace A373156

/-- `and(A196657(n), A226569(n+1))` -/
def P16171481900639220693.Spec : Prop :=
  ∀ n, P16171481900639220693.a n = A373156 (n + 1)

end A373156

/-!
# A373157: a(n) = 1 if the 2-adic valuation of n is a multiple of 3, otherwise 0.

The programs for A373157, the canonical program `A373157.P4583093611440562059` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373157 has offset 1).

The definition of A373157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373157.P4583093611440562059

`(xor(n, n+1)%7)%3`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A373157

/-- `(xor(n, n+1)%7)%3` -/
def P4583093611440562059.Spec : Prop :=
  ∀ n, (P4583093611440562059.a n : ℤ) = A373157 (n + 1)

theorem P4583093611440562059.correct : P4583093611440562059.Spec := by
  intro n
  simp only [A373157, Nat.add_sub_cancel]

end A373157

/-! ## A373157.P14467550569548965924

`A048798(n+1)%2`
-/

namespace A373157.P14467550569548965924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048798 (n + 1)) 2

end

end A373157.P14467550569548965924

namespace A373157

/-- `A048798(n+1)%2` -/
def P14467550569548965924.Spec : Prop :=
  ∀ n, P14467550569548965924.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P4970161252010705184

`A050985(n+1)%2`
-/

namespace A373157.P4970161252010705184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050985 (n + 1)) 2

end

end A373157.P4970161252010705184

namespace A373157

/-- `A050985(n+1)%2` -/
def P4970161252010705184.Spec : Prop :=
  ∀ n, P4970161252010705184.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P89983318843714315

`A056551(n+1)%2`
-/

namespace A373157.P89983318843714315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056551 (n + 1)) 2

end

end A373157.P89983318843714315

namespace A373157

/-- `A056551(n+1)%2` -/
def P89983318843714315.Spec : Prop :=
  ∀ n, P89983318843714315.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P16398478041371597351

`A056552(n+1)%2`
-/

namespace A373157.P16398478041371597351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056552 (n + 1)) 2

end

end A373157.P16398478041371597351

namespace A373157

/-- `A056552(n+1)%2` -/
def P16398478041371597351.Spec : Prop :=
  ∀ n, P16398478041371597351.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P17260186953208048178

`A277546(n+1)%2`
-/

namespace A373157.P17260186953208048178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277546 (n + 1)) 2

end

end A373157.P17260186953208048178

namespace A373157

/-- `A277546(n+1)%2` -/
def P17260186953208048178.Spec : Prop :=
  ∀ n, P17260186953208048178.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P8649771174699740878

`A115364(n+1)%3`
-/

namespace A373157.P8649771174699740878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115364 (n + 1)) 3

end

end A373157.P8649771174699740878

namespace A373157

/-- `A115364(n+1)%3` -/
def P8649771174699740878.Spec : Prop :=
  ∀ n, P8649771174699740878.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P10930376431255875695

`A128972(n+2)%2`
-/

namespace A373157.P10930376431255875695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128972 (n + 2)) 2

end

end A373157.P10930376431255875695

namespace A373157

/-- `A128972(n+2)%2` -/
def P10930376431255875695.Spec : Prop :=
  ∀ n, P10930376431255875695.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P5035064084894107887

`C(2, A096271(n)+2)`
-/

namespace A373157.P5035064084894107887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A096271 n + 2).toNat

end

end A373157.P5035064084894107887

namespace A373157

/-- `C(2, A096271(n)+2)` -/
def P5035064084894107887.Spec : Prop :=
  ∀ n, (P5035064084894107887.a n : ℤ) = A373157 (n + 1)

end A373157

/-! ## A373157.P3293629429190573350

`val(A088839(n+1), 7)`
-/

namespace A373157.P3293629429190573350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088839 (n + 1)).toNat 7

end

end A373157.P3293629429190573350

namespace A373157

/-- `val(A088839(n+1), 7)` -/
def P3293629429190573350.Spec : Prop :=
  ∀ n, (P3293629429190573350.a n : ℤ) = A373157 (n + 1)

end A373157

/-! ## A373157.P5911746843254164267

`A096271(2*n+1)%2`
-/

namespace A373157.P5911746843254164267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096271 (2 * n + 1)) 2

end

end A373157.P5911746843254164267

namespace A373157

/-- `A096271(2*n+1)%2` -/
def P5911746843254164267.Spec : Prop :=
  ∀ n, P5911746843254164267.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P11133885126097513603

`round((1/A078734(n+1))²)`
-/

namespace A373157.P11133885126097513603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 / (A078734 (n + 1) : ℚ)) ^ 2)

end

end A373157.P11133885126097513603

namespace A373157

/-- `round((1/A078734(n+1))²)` -/
def P11133885126097513603.Spec : Prop :=
  ∀ n, P11133885126097513603.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P11702652111366126983

`A010057(A006519(n+1))`
-/

namespace A373157.P11702652111366126983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A006519 (n + 1)).toNat

end

end A373157.P11702652111366126983

namespace A373157

/-- `A010057(A006519(n+1))` -/
def P11702652111366126983.Spec : Prop :=
  ∀ n, P11702652111366126983.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P12548100186917624196

`A000035(A050985(n+1))`
-/

namespace A373157.P12548100186917624196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A050985 (n + 1)).toNat

end

end A373157.P12548100186917624196

namespace A373157

/-- `A000035(A050985(n+1))` -/
def P12548100186917624196.Spec : Prop :=
  ∀ n, P12548100186917624196.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P14946001830742717356

`A000035(A056552(n+1))`
-/

namespace A373157.P14946001830742717356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A056552 (n + 1)).toNat

end

end A373157.P14946001830742717356

namespace A373157

/-- `A000035(A056552(n+1))` -/
def P14946001830742717356.Spec : Prop :=
  ∀ n, P14946001830742717356.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P9893348412737534701

`A079978(A007814(n+1))`
-/

namespace A373157.P9893348412737534701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A007814 (n + 1)).toNat

end

end A373157.P9893348412737534701

namespace A373157

/-- `A079978(A007814(n+1))` -/
def P9893348412737534701.Spec : Prop :=
  ∀ n, P9893348412737534701.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P17573242030895398452

`A204418(A007814(n+1)²)`
-/

namespace A373157.P17573242030895398452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (A007814 (n + 1) ^ 2).toNat

end

end A373157.P17573242030895398452

namespace A373157

/-- `A204418(A007814(n+1)²)` -/
def P17573242030895398452.Spec : Prop :=
  ∀ n, P17573242030895398452.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P16220735528665418547

`A007949(A115364(n+1)+2)`
-/

namespace A373157.P16220735528665418547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A115364 (n + 1) + 2).toNat

end

end A373157.P16220735528665418547

namespace A373157

/-- `A007949(A115364(n+1)+2)` -/
def P16220735528665418547.Spec : Prop :=
  ∀ n, P16220735528665418547.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P14186322260855648672

`and(A048798(n+1), A060576(n))`
-/

namespace A373157.P14186322260855648672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048798 (n + 1)) (A060576 n)

end

end A373157.P14186322260855648672

namespace A373157

/-- `and(A048798(n+1), A060576(n))` -/
def P14186322260855648672.Spec : Prop :=
  ∀ n, P14186322260855648672.a n = A373157 (n + 1)

end A373157

/-! ## A373157.P8838088797926992893

`and(A050985(n+1), A060576(n))`
-/

namespace A373157.P8838088797926992893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050985 (n + 1)) (A060576 n)

end

end A373157.P8838088797926992893

namespace A373157

/-- `and(A050985(n+1), A060576(n))` -/
def P8838088797926992893.Spec : Prop :=
  ∀ n, P8838088797926992893.a n = A373157 (n + 1)

end A373157

/-!
# A373158: Fully additive with a(p) = p# for prime p, where x# is the primorial A034386(x).

The programs for A373158, the canonical program `A373158.P5262006199716644131` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373158 has offset 1).

The definition of A373158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A276085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373158.P5262006199716644131

`A276085(A003961(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A373158

/-- `A276085(A003961(n+1))` -/
def P5262006199716644131.Spec : Prop :=
  ∀ n, P5262006199716644131.a n = A373158 (n + 1)

theorem P5262006199716644131.correct : P5262006199716644131.Spec := by
  intro n
  simp only [A373158, Nat.add_sub_cancel]

end A373158

/-! ## A373158.P3833638775602065153

`A108951(n+1)-A373984(n+1)`
-/

namespace A373158.P3833638775602065153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A373984 (n + 1)

end

end A373158.P3833638775602065153

namespace A373158

/-- `A108951(n+1)-A373984(n+1)` -/
def P3833638775602065153.Spec : Prop :=
  ∀ n, P3833638775602065153.a n = A373158 (n + 1)

theorem P3833638775602065153.correct : P3833638775602065153.Spec := by
  intro n
  simp only [A373158, Nat.add_sub_cancel, A373158.P3833638775602065153.a, A373158.P5262006199716644131.a, A003961, A003961.P5996473960037614004.a, A108951, A108951.P1294613322156543690.a, A276085, A276085.P15454204715786806768.a, A373984, A373984.P1990840556673078357.a, A002110, A002110.P13704446489392701398.a, A028234, A028234.P14857795114050463851.f1, A028234.P14857795114050463851.a, A055396, A055396.P18305262754425103137.a, A064989, A064989.P13349672914146769936.a, A067029, A067029.P17255758945913048832.a, A253885, A253885.P16715555451856890624.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A020639, A020639.P7578813688609615429.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A243055, A243055.P2464886309294058059.a, A243501, A243501.P10707292738867961998.a, A362983, A362983.P10144634432132035395.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A048673, A048673.P3613002930333742504.a, A087207, A087207.P12536008426233777954.a, A117371, A117371.P12406732587805932156.a, A158611, A158611.P9275629407611603775.a, A297155, A297155.P1611206963555320167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373158

/-! ## A373158.P13022115873965790653

`A373985(n+1)*A373986(n+1)`
-/

namespace A373158.P13022115873965790653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373985 (n + 1) * A373986 (n + 1)

end

end A373158.P13022115873965790653

namespace A373158

/-- `A373985(n+1)*A373986(n+1)` -/
def P13022115873965790653.Spec : Prop :=
  ∀ n, P13022115873965790653.a n = A373158 (n + 1)

end A373158

/-! ## A373158.P4509856027848689584

`A373985(n+1)*A373987(n+1)-A373984(n+1)`
-/

namespace A373158.P4509856027848689584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373985 (n + 1) * A373987 (n + 1) - A373984 (n + 1)

end

end A373158.P4509856027848689584

namespace A373158

/-- `A373985(n+1)*A373987(n+1)-A373984(n+1)` -/
def P4509856027848689584.Spec : Prop :=
  ∀ n, P4509856027848689584.a n = A373158 (n + 1)

end A373158

/-! ## A373158.P17131704333831512646

`A108951(n+1)*A373986(n+1)/A373987(n+1)`
-/

namespace A373158.P17131704333831512646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108951 (n + 1) * A373986 (n + 1) : ℚ) / (A373987 (n + 1) : ℚ)

end

end A373158.P17131704333831512646

namespace A373158

/-- `A108951(n+1)*A373986(n+1)/A373987(n+1)` -/
def P17131704333831512646.Spec : Prop :=
  ∀ n, P17131704333831512646.a n = (A373158 (n + 1) : ℚ)

end A373158

/-! ## A373158.P6656766345985411349

`a(A028234(n+1)-1)+A067029(n+1)*A002110(A055396(n+1))` with `a(0)=0`
-/

namespace A373158.P6656766345985411349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A028234 (n + 1) - 1).toNat + A067029 (n + 1) * A002110 (A055396 (n + 1)).toNat

end

end A373158.P6656766345985411349

namespace A373158

/-- `a(A028234(n+1)-1)+A067029(n+1)*A002110(A055396(n+1))` -/
def P6656766345985411349.Spec : Prop :=
  ∀ n, P6656766345985411349.a n = A373158 (n + 1)

end A373158

/-!
# A373160: a(n) = denominator of Sum_{k>=0} cos(k*Pi/3)/n^k.

The programs for A373160, there is no canonical definition to state claims against.
-/

/-! ## A373160.P6120437817564520113

`gcd((n+2)^3+1, ∑[∑[∑[8*n]+2]])`
-/

namespace A373160.P6120437817564520113
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) ^ 3 + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373160.P6120437817564520113

/-! ## A373160.P10062047653360404124

`(n%2+1)*A046163(n+1)`
-/

namespace A373160.P10062047653360404124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A046163 (n + 1)

end

end A373160.P10062047653360404124

/-! ## A373160.P10134647310392481117

`(A093005(2*n+3)-n)/gcd(6, n)`
-/

namespace A373160.P10134647310392481117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093005 (2 * n + 3) - (n : ℤ) : ℚ) / (Nat.gcd 6 n : ℚ)

end

end A373160.P10134647310392481117

/-! ## A373160.P4619750752875399536

`A000034(n)*A046163(n+1)`
-/

namespace A373160.P4619750752875399536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A046163 (n + 1)

end

end A373160.P4619750752875399536

/-! ## A373160.P10812937747458442945

`A000034(n)*A130770(n+1)`
-/

namespace A373160.P10812937747458442945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A130770 (n + 1)

end

end A373160.P10812937747458442945

/-! ## A373160.P1880348625022389956

`A051176(n+1)/A060789(n+1)*A130770(n+1)`
-/

namespace A373160.P1880348625022389956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051176 (n + 1) : ℚ) / (A060789 (n + 1) : ℚ) * (A130770 (n + 1) : ℚ)

end

end A373160.P1880348625022389956

/-!
# A373161: a(n) = numerator of Sum_{k>=0} cos(k*Pi/3)/n^k.

The programs for A373161, there is no canonical definition to state claims against.
-/

/-! ## A373161.P17497508936936984679

`gcd(C(2*(n+2), 4), Δ[C(2*n+5, 5)])`
-/

namespace A373161.P17497508936936984679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 5) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (2 * (n + 2)) 4 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A373161.P17497508936936984679

/-! ## A373161.P12001074916712900880

`A000217(2*n+3)/gcd(6, n)`
-/

namespace A373161.P12001074916712900880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 3) : ℚ) / (Nat.gcd 6 n : ℚ)

end

end A373161.P12001074916712900880

/-! ## A373161.P14529793936862547506

`gcd(A022997(n+2), A053134(n))`
-/

namespace A373161.P14529793936862547506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022997 (n + 2)) (A053134 n)

end

end A373161.P14529793936862547506

/-! ## A373161.P9367139933139489551

`A145051(n+1)*A146535(n+2)`
-/

namespace A373161.P9367139933139489551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) * A146535 (n + 2)

end

end A373161.P9367139933139489551

/-! ## A373161.P5337308351636355952

`A026741((n+2)*A146535(n+2))`
-/

namespace A373161.P5337308351636355952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) * A146535 (n + 2)).toNat

end

end A373161.P5337308351636355952

/-! ## A373161.P17553835434053002273

`A000217(2*n+3)/A089128(n)`
-/

namespace A373161.P17553835434053002273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 3) : ℚ) / (A089128 n : ℚ)

end

end A373161.P17553835434053002273

/-! ## A373161.P16289448299898286655

`lcm(A145051(n+1), A175485(n+1))`
-/

namespace A373161.P16289448299898286655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A145051 (n + 1)) (A175485 (n + 1))

end

end A373161.P16289448299898286655

/-! ## A373161.P15006500981743537609

`A089128(2*n+1)*A175485(n+1)`
-/

namespace A373161.P15006500981743537609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (2 * n + 1) * A175485 (n + 1)

end

end A373161.P15006500981743537609

/-! ## A373161.P10741755907133567174

`A026741((n+2)*A145064(2*n+1))`
-/

namespace A373161.P10741755907133567174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) * A145064 (2 * n + 1)).toNat

end

end A373161.P10741755907133567174

/-! ## A373161.P10283485338644404488

`A026741(A027626(2*n+1)*A109007(2*n+1))`
-/

namespace A373161.P10283485338644404488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A027626 (2 * n + 1) * A109007 (2 * n + 1)).toNat

end

end A373161.P10283485338644404488

/-!
# A373162: a(n) = denominator of Sum_{k>=0} cos(2k*Pi/3)/n^k.

The programs for A373162, there is no canonical definition to state claims against.
-/

/-! ## A373162.P5356920819360848329

`(Δ[floor(n/2)]+1)*A158622(n+2)`
-/

namespace A373162.P5356920819360848329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A158622 (n + 2)

end

end A373162.P5356920819360848329

/-! ## A373162.P3003600873403264562

`A244734(A099776(n+2))`
-/

namespace A373162.P3003600873403264562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244734 (A099776 (n + 2)).toNat

end

end A373162.P3003600873403264562

/-! ## A373162.P9328773272916251818

`A000034(n)*A046163(n+2)`
-/

namespace A373162.P9328773272916251818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A046163 (n + 2)

end

end A373162.P9328773272916251818

/-! ## A373162.P2591806427704866199

`lcm(A000034(n), A158622(n+2))`
-/

namespace A373162.P2591806427704866199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A158622 (n + 2))

end

end A373162.P2591806427704866199

/-! ## A373162.P1005877425427877757

`A373163(n+2)+A026741(A145064(n+2))`
-/

namespace A373162.P1005877425427877757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373163 (n + 2) + A026741 (A145064 (n + 2)).toNat

end

end A373162.P1005877425427877757

/-!
# A373163: a(n) = numerator of Sum_{k>=0} cos(2k*Pi/3)/n^k.

The programs for A373163, there is no canonical definition to state claims against.
-/

/-! ## A373163.P13928994133559572581

`A000217(2*(n+2))/gcd(6, 2-n)`
-/

namespace A373163.P13928994133559572581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * (n + 2)) : ℚ) / (Int.gcd 6 (2 - (n : ℤ)) : ℚ)

end

end A373163.P13928994133559572581

/-! ## A373163.P17957422911616876073

`A145051(n+1)*A145064(2*n+3)`
-/

namespace A373163.P17957422911616876073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) * A145064 (2 * n + 3)

end

end A373163.P17957422911616876073

/-! ## A373163.P17600371586967343358

`gcd(A002378(2*(n+2)), A290313(2*(n+1)))`
-/

namespace A373163.P17600371586967343358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 (2 * (n + 2))) (A290313 (2 * (n + 1)))

end

end A373163.P17600371586967343358

/-! ## A373163.P10427481394174283589

`gcd(A000217(2*(n+2)), A179095(2*(n+2)))`
-/

namespace A373163.P10427481394174283589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (2 * (n + 2))) (A179095 (2 * (n + 2)))

end

end A373163.P10427481394174283589

/-! ## A373163.P16512996427609987506

`A145051(n+1)*A146535(A145051(2*n+5))`
-/

namespace A373163.P16512996427609987506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) * A146535 (A145051 (2 * n + 5)).toNat

end

end A373163.P16512996427609987506

/-! ## A373163.P8767429730404375974

`A026741(A026741(2*(n+2))*A060789(2*n+5))`
-/

namespace A373163.P8767429730404375974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (2 * (n + 2)) * A060789 (2 * n + 5)).toNat

end

end A373163.P8767429730404375974

/-! ## A373163.P1189225660852595852

`A000034(n)*A046163(n+2)-A026741(A145064(n+2))`
-/

namespace A373163.P1189225660852595852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A046163 (n + 2) - A026741 (A145064 (n + 2)).toNat

end

end A373163.P1189225660852595852

/-!
# A373164: Triangle read by rows: the exponential almost-Riordan array ( 1 | 2 - exp(x), x ).

The programs for A373164, there is no canonical definition to state claims against.
-/

/-! ## A373164.P10669234353988001128

`(2*char[∑[n-1]]-1)*A097805(n)`
-/

namespace A373164.P10669234353988001128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1) * A097805 n

end

end A373164.P10669234353988001128

/-! ## A373164.P3943335450008357421

`A124459(n+1)-A131111(n)`
-/

namespace A373164.P3943335450008357421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124459 (n + 1) - A131111 n

end

end A373164.P3943335450008357421

/-! ## A373164.P2573428582949650724

`A097805(n)*A154990(n+1)`
-/

namespace A373164.P2573428582949650724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A154990 (n + 1)

end

end A373164.P2573428582949650724

/-! ## A373164.P370629869192721948

`A367267(n)/A154926(n+1)`
-/

namespace A373164.P370629869192721948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367267 n : ℚ) / (A154926 (n + 1) : ℚ)

end

end A373164.P370629869192721948

/-! ## A373164.P7151342217093010107

`A135225(n+1)-A198321(n+1)`
-/

namespace A373164.P7151342217093010107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (n + 1) - A198321 (n + 1)

end

end A373164.P7151342217093010107

/-! ## A373164.P16445982514880587538

`A209562(n+2)-A051601(n+1)`
-/

namespace A373164.P16445982514880587538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209562 (n + 2) - A051601 (n + 1)

end

end A373164.P16445982514880587538

/-! ## A373164.P5548931450745012384

`A028326(A083920(n))-A029653(n)`
-/

namespace A373164.P5548931450745012384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (A083920 n).toNat - A029653 n

end

end A373164.P5548931450745012384

/-! ## A373164.P713265867547460197

`A028326(A271439(n))-A029653(n)`
-/

namespace A373164.P713265867547460197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (A271439 n).toNat - A029653 n

end

end A373164.P713265867547460197

/-! ## A373164.P9505280279060158256

`A005843(A135225(n+1))-A029653(n)`
-/

namespace A373164.P9505280279060158256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A135225 (n + 1)).toNat - A029653 n

end

end A373164.P9505280279060158256

/-! ## A373164.P15013535297326496755

`A000038(A097805(n+1))-A097805(n)`
-/

namespace A373164.P15013535297326496755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A097805 (n + 1)).toNat - A097805 n

end

end A373164.P15013535297326496755

/-!
# A373168: Triangle read by rows: the exponential almost-Riordan array ( exp(x/(1-x)) | 1/(1-x), x ).

The programs for A373168, there is no canonical definition to state claims against.
-/

/-! ## A373168.P17411769297845425915

`A188584(A225468(n))`
-/

namespace A373168.P17411769297845425915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188584 (A225468 n).toNat

end

end A373168.P17411769297845425915

/-! ## A373168.P14568863398310217929

`A188584(A261763(n+1))`
-/

namespace A373168.P14568863398310217929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188584 (A261763 (n + 1)).toNat

end

end A373168.P14568863398310217929

/-! ## A373168.P16168867660265250657

`gcd(A216294(n), A294175(A278272(n+1)))`
-/

namespace A373168.P16168867660265250657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216294 n) (A294175 (A278272 (n + 1)).toNat)

end

end A373168.P16168867660265250657

/-!
# A373169: Square array read by ascending antidiagonals: T(n,k) = noz(T(n,k-1) + (k-1)*(n-2) + 1), with T(n,1) = 1, n >= 2, k >= 1, where noz(n) = A004719(n).

The programs for A373169, there is no canonical definition to state claims against.
-/

/-! ## A373169.P1865060649573342878

`A057145(n+2)%A250120(A203610(n+2))`
-/

namespace A373169.P1865060649573342878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057145 (n + 2)) (A250120 (A203610 (n + 2)).toNat)

end

end A373169.P1865060649573342878

/-! ## A373169.P11818026530718245152

`A057145(n+2)%A373404(A114292(n))`
-/

namespace A373169.P11818026530718245152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057145 (n + 2)) (A373404 (A114292 n).toNat)

end

end A373169.P11818026530718245152

/-! ## A373169.P10229422785877058757

`gcd(A057145(n+2), A121373(A095911(n+1)))`
-/

namespace A373169.P10229422785877058757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057145 (n + 2)) (A121373 (A095911 (n + 1)).toNat)

end

end A373169.P10229422785877058757

/-! ## A373169.P153554397666205131

`A004719(A057145(n+2))%A107811(3*n+4)`
-/

namespace A373169.P153554397666205131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004719 (A057145 (n + 2)).toNat) (A107811 (3 * n + 4))

end

end A373169.P153554397666205131

/-! ## A373169.P17578659105127886127

`gcd(A010815(A008654(n)), A057145(n+2))`
-/

namespace A373169.P17578659105127886127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A008654 n).toNat) (A057145 (n + 2))

end

end A373169.P17578659105127886127

/-!
# A373170: Main diagonal of A373169.

The programs for A373170, there is no canonical definition to state claims against.
-/

/-! ## A373170.P12400548611743748438

`A373169(∑[4*n]+2)`
-/

namespace A373170.P12400548611743748438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A373170.P12400548611743748438

/-!
# A373171: a(1) = 1; for n >= 2, a(n) = noz(a(n-1) + 3*n - 2), where noz(n) = A004719(n).

The programs for A373171, there is no canonical definition to state claims against.
-/

/-! ## A373171.P960080482958739192

`A373169(A155212(n)+6)`
-/

namespace A373171.P960080482958739192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A155212 n + 6).toNat

end

end A373171.P960080482958739192

/-! ## A373171.P11474348050779589338

`A373169(A056000(n)+8)`
-/

namespace A373171.P11474348050779589338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A056000 n + 8).toNat

end

end A373171.P11474348050779589338

/-! ## A373171.P9348998829922407121

`A373169(A000124(n+4)-3)`
-/

namespace A373171.P9348998829922407121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A000124 (n + 4) - 3).toNat

end

end A373171.P9348998829922407121

/-! ## A373171.P6524383481302940687

`A373169(A186349(2*n+5))`
-/

namespace A373171.P6524383481302940687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A186349 (2 * n + 5)).toNat

end

end A373171.P6524383481302940687

/-! ## A373171.P3928051228499605031

`A373169(A074148(n+3)+A008619(n))`
-/

namespace A373171.P3928051228499605031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A074148 (n + 3) + A008619 n).toNat

end

end A373171.P3928051228499605031

/-!
# A373172: a(1) = 1; for n >= 2, a(n) = noz(a(n-1) + 4*n - 3), where noz(n) = A004719(n).

The programs for A373172, there is no canonical definition to state claims against.
-/

/-! ## A373172.P9920665235052778256

`A373169(Δ[A264443(n)]+1)`
-/

namespace A373172.P9920665235052778256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (f1 (n + 1) - f1 n + 1).toNat

end

end A373172.P9920665235052778256

/-! ## A373172.P6711757473672564008

`A373169(A055998(n)+A008585(n+4))`
-/

namespace A373172.P6711757473672564008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (A055998 n + A008585 (n + 4)).toNat

end

end A373172.P6711757473672564008

/-! ## A373172.P4542045036009362014

`A373169(eq[4, A175331(n+2)])`
-/

namespace A373172.P4542045036009362014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A373172.P4542045036009362014

/-! ## A373172.P5493604089166126643

`A000384(n+1)%A343443(A006038(2*n+1))`
-/

namespace A373172.P5493604089166126643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000384 (n + 1)) (A343443 (A006038 (2 * n + 1)).toNat)

end

end A373172.P5493604089166126643

/-!
# A373175: Expansion of e.g.f. exp(sqrt(2*x+1)-1)/(2-sqrt(2*x+1))^2.

The programs for A373175, there is no canonical definition to state claims against.
-/

/-! ## A373175.P13055408261770422801

`A076411(A003169(n+1))+A006384(n)`
-/

namespace A373175.P13055408261770422801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (A003169 (n + 1)).toNat + A006384 n

end

end A373175.P13055408261770422801

/-! ## A373175.P3360907062045034026

`A375433(A328433(n+3))-A038197(n)`
-/

namespace A373175.P3360907062045034026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375433 (A328433 (n + 3)).toNat - A038197 n

end

end A373175.P3360907062045034026

/-!
# A373176: Expansion of e.g.f. 2*exp(sqrt(2*x+1)-1)/(2-sqrt(2*x+1))^3.

The programs for A373176, there is no canonical definition to state claims against.
-/

/-! ## A373176.P13226332918332359245

`A372935(A084173(n+1))`
-/

namespace A373176.P13226332918332359245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372935 (A084173 (n + 1)).toNat

end

end A373176.P13226332918332359245

/-!
# A373178: Cardinality of the largest subset of {1,...,n} such that no five distinct elements of this subset multiply to a square.

The programs for A373178, there is no canonical definition to state claims against.
-/

/-! ## A373178.P14134631148472900842

`A372306(n+1)+A103675(n)`
-/

namespace A373178.P14134631148472900842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372306 (n + 1) + A103675 n

end

end A373178.P14134631148472900842

/-! ## A373178.P17494031031059221589

`A172471(A325097(3*n+1)-A001221(n+1))`
-/

namespace A373178.P17494031031059221589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A325097 (3 * n + 1) - A001221 (n + 1)).toNat

end

end A373178.P17494031031059221589

/-! ## A373178.P14882420480568314919

`A070939(A320426(n+1)+A251759(n))`
-/

namespace A373178.P14882420480568314919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A320426 (n + 1) + A251759 n).toNat

end

end A373178.P14882420480568314919

/-! ## A373178.P13020594071536364636

`A070939(A320426(n+1)+A251764(n))`
-/

namespace A373178.P13020594071536364636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A320426 (n + 1) + A251764 n).toNat

end

end A373178.P13020594071536364636

/-!
# A373179: a(n) is the smallest n-digit integer whose digit permutations make the maximum possible number of n-digit primes.

The programs for A373179, there is no canonical definition to state claims against.
-/

/-! ## A373179.P14106736263148515526

`A046888(A077643(n+1))`
-/

namespace A373179.P14106736263148515526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046888 (A077643 (n + 1)).toNat

end

end A373179.P14106736263148515526

/-!
# A373181: k such that 0 = Sum_{j=1..k} A373223(k, j). The indices of the rows in Gauss's triangle with vanishing row sums.

The programs for A373181, there is no canonical definition to state claims against.
-/

/-! ## A373181.P11514488640998386628

`A000720(A373225(n+1))`
-/

namespace A373181.P11514488640998386628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A373225 (n + 1)).toNat

end

end A373181.P11514488640998386628

/-! ## A373181.P15743727525685430363

`A061395(2*A373225(n+1))`
-/

namespace A373181.P15743727525685430363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A373225 (n + 1)).toNat

end

end A373181.P15743727525685430363

/-! ## A373181.P12721562941862784268

`eq[A111744(n+1), A116974(n+1)]`
-/

namespace A373181.P12721562941862784268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373181.P12721562941862784268

/-! ## A373181.P12743790886431767991

`eq[A111744(n+1), A175787(n+1)]`
-/

namespace A373181.P12743790886431767991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373181.P12743790886431767991

/-! ## A373181.P17372507701351165571

`A297109(A373225(n+1)+A086015(n))`
-/

namespace A373181.P17372507701351165571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A373225 (n + 1) + A086015 n).toNat

end

end A373181.P17372507701351165571

/-!
# A373182: Number of ways that people can sit in n linearly arranged seats such that there are one or two empty seats between any two persons, zero or one empty seats at the start and end, and at least one person gets seated.

The programs for A373182, there is no canonical definition to state claims against.
-/

/-! ## A373182.P17612890415733807775

`A373829(n+1)+A081123(n+3)`
-/

namespace A373182.P17612890415733807775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373829 (n + 1) + A081123 (n + 3)

end

end A373182.P17612890415733807775

/-! ## A373182.P10840584740483616715

`A204352(A029965(n+1))+A000045(n)`
-/

namespace A373182.P10840584740483616715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204352 (A029965 (n + 1)).toNat + A000045 n

end

end A373182.P10840584740483616715

/-! ## A373182.P13163368183624099548

`A175246(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A373182.P13163368183624099548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A175246 (a (n - 1)).toNat

end

end A373182.P13163368183624099548

/-! ## A373182.P297609148302475111

`A023190(A027133(n))`
-/

namespace A373182.P297609148302475111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A027133 n).toNat

end

end A373182.P297609148302475111

/-!
# A373183: Irregular triangle T(n, k), n >= 0, k > 0, read by rows with row polynomials R(n, x) such that R(2n+1, x) = x*R(n, x) for n >= 0, R(2n, x) = x*(R(n, x+1) - R(n, x)) for n > 0 with R(0, x) = x.

The programs for A373183, there is no canonical definition to state claims against.
-/

/-! ## A373183.P12842865912481734554

`A276625(n+1)%A272171(A213106(n+2))`
-/

namespace A373183.P12842865912481734554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276625 (n + 1)) (A272171 (A213106 (n + 2)).toNat)

end

end A373183.P12842865912481734554

/-! ## A373183.P2738142465465267316

`and(A039712(3*n+5), A181940(A103571(n+1)))`
-/

namespace A373183.P2738142465465267316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039712 (3 * n + 5)) (A181940 (A103571 (n + 1)).toNat)

end

end A373183.P2738142465465267316

/-! ## A373183.P14426979106337398717

`A324106(A269919(n))%(A004526(n)+2)`
-/

namespace A373183.P14426979106337398717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324106 (A269919 n).toNat) (A004526 n + 2)

end

end A373183.P14426979106337398717

/-! ## A373183.P470642776526398217

`A292260(n+1)+A010872(A323652(n+1))`
-/

namespace A373183.P470642776526398217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292260 (n + 1) + A010872 (A323652 (n + 1)).toNat

end

end A373183.P470642776526398217

/-! ## A373183.P2114580920187428904

`C(A067029(A000931(3*(n+1))), A104714(n))`
-/

namespace A373183.P2114580920187428904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067029 (A000931 (3 * (n + 1))).toNat).toNat (A104714 n).toNat

end

end A373183.P2114580920187428904

/-!
# A373184: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^3).

The programs for A373184, the canonical program `A373184.P13347508952625175779` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373184 has offset 1).

The definition of A373184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373184.P7817154750794862130

`A327625(n+1)+A051064(n+1)`
-/

namespace A373184.P7817154750794862130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327625 (n + 1) + A051064 (n + 1)

end

end A373184.P7817154750794862130

namespace A373184

/-- `A327625(n+1)+A051064(n+1)` -/
def P7817154750794862130.Spec : Prop :=
  ∀ n, P7817154750794862130.a n = A373184 (n + 1)

end A373184

/-! ## A373184.P8856796530689082349

`A007949(n+1)+A327625(n+1)+1`
-/

namespace A373184.P8856796530689082349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + (A327625 (n + 1) + 1)

end

end A373184.P8856796530689082349

namespace A373184

/-- `A007949(n+1)+A327625(n+1)+1` -/
def P8856796530689082349.Spec : Prop :=
  ∀ n, P8856796530689082349.a n = A373184 (n + 1)

end A373184

/-! ## A373184.P3675146055008338494

`∑{d}[n+1, A007503(#)*A156277((n+1)/#)]`
-/

namespace A373184.P3675146055008338494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007503 d * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373184.P3675146055008338494

namespace A373184

/-- `∑{d}[n+1, A007503(#)*A156277((n+1)/#)]` -/
def P3675146055008338494.Spec : Prop :=
  ∀ n, P3675146055008338494.a n = A373184 (n + 1)

end A373184

/-! ## A373184.P13347508952625175779

`A168570(n+1)+A327625(n+1)+A284413(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373184

/-- `A168570(n+1)+A327625(n+1)+A284413(n+1)` -/
def P13347508952625175779.Spec : Prop :=
  ∀ n, P13347508952625175779.a n = A373184 (n + 1)

theorem P13347508952625175779.correct : P13347508952625175779.Spec := by
  intro n
  simp only [A373184, Nat.add_sub_cancel]

end A373184

/-! ## A373184.P17354029047234599067

`A327625(n+1)+A007949(A074724(n+1))`
-/

namespace A373184.P17354029047234599067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327625 (n + 1) + A007949 (A074724 (n + 1)).toNat

end

end A373184.P17354029047234599067

namespace A373184

/-- `A327625(n+1)+A007949(A074724(n+1))` -/
def P17354029047234599067.Spec : Prop :=
  ∀ n, P17354029047234599067.a n = A373184 (n + 1)

end A373184

/-! ## A373184.P17762913844879114106

`A327625(n+1)+A168570(2*(n+1))`
-/

namespace A373184.P17762913844879114106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327625 (n + 1) + A168570 (2 * (n + 1))

end

end A373184.P17762913844879114106

namespace A373184

/-- `A327625(n+1)+A168570(2*(n+1))` -/
def P17762913844879114106.Spec : Prop :=
  ∀ n, P17762913844879114106.a n = A373184 (n + 1)

end A373184

/-! ## A373184.P16204262379551705192

`A327625(n+1)+A007949(A166466(n+1))`
-/

namespace A373184.P16204262379551705192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327625 (n + 1) + A007949 (A166466 (n + 1)).toNat

end

end A373184.P16204262379551705192

namespace A373184

/-- `A327625(n+1)+A007949(A166466(n+1))` -/
def P16204262379551705192.Spec : Prop :=
  ∀ n, P16204262379551705192.a n = A373184 (n + 1)

end A373184

/-!
# A373185: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^4).

The programs for A373185, the canonical program `A373185.P3689991770781756836` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373185 has offset 1).

The definition of A373185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373185.P1222847938505154658

`A373188(n+1)+A115362(n)`
-/

namespace A373185.P1222847938505154658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373188 (n + 1) + A115362 n

end

end A373185.P1222847938505154658

namespace A373185

/-- `A373188(n+1)+A115362(n)` -/
def P1222847938505154658.Spec : Prop :=
  ∀ n, P1222847938505154658.a n = A373185 (n + 1)

theorem P1222847938505154658.correct : P1222847938505154658.Spec := by
  intro n
  simp only [A373185, Nat.add_sub_cancel, A373185.P1222847938505154658.a, A373185.P3689991770781756836.f1, A373185.P3689991770781756836.a, A084432, A084432.P7240558742881928274.a, A115362, A115362.P12022203208950917127.a, A154269, A154269.P12629811224364299033.f1, A154269.P12629811224364299033.a, A373188, A373188.P5716519306742437807.a, A008836, A008836.P691704047226663751.a, A053737, A053737.P2884229603739038868.a, A323239, A323239.P16564446151600433291.f1, A323239.P16564446151600433291.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A033999, A033999.P17703899380244199787.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373185

/-! ## A373185.P3689991770781756836

`∑{d}[n+1, A084432(#)*A154269((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A373185

/-- `∑{d}[n+1, A084432(#)*A154269((n+1)/#)]` -/
def P3689991770781756836.Spec : Prop :=
  ∀ n, P3689991770781756836.a n = A373185 (n + 1)

theorem P3689991770781756836.correct : P3689991770781756836.Spec := by
  intro n
  simp only [A373185, Nat.add_sub_cancel]

end A373185

/-! ## A373185.P17845503068198499086

`∑{d}[n+1, A007503(#)*A355689((n+1)/#)]`
-/

namespace A373185.P17845503068198499086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007503 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373185.P17845503068198499086

namespace A373185

/-- `∑{d}[n+1, A007503(#)*A355689((n+1)/#)]` -/
def P17845503068198499086.Spec : Prop :=
  ∀ n, P17845503068198499086.a n = A373185 (n + 1)

end A373185

/-! ## A373185.P6237137663151601996

`A126071(A002808(3*n+4)^val(n+1, 4))+n+1`
-/

namespace A373185.P6237137663151601996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (A002808 (3 * n + 4) ^ SequenceMachineLib.valuation (n + 1) 4).toNat + (n + 1 : ℤ)

end

end A373185.P6237137663151601996

namespace A373185

/-- `A126071(A002808(3*n+4)^val(n+1, 4))+n+1` -/
def P6237137663151601996.Spec : Prop :=
  ∀ n, P6237137663151601996.a n = A373185 (n + 1)

end A373185

/-! ## A373185.P13173858594330724082

`A003313(A060546(2*n+3)-A011765(n+1))`
-/

namespace A373185.P13173858594330724082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A060546 (2 * n + 3) - A011765 (n + 1)).toNat

end

end A373185.P13173858594330724082

namespace A373185

/-- `A003313(A060546(2*n+3)-A011765(n+1))` -/
def P13173858594330724082.Spec : Prop :=
  ∀ n, P13173858594330724082.a n = A373185 (n + 1)

end A373185

/-!
# A373186: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^3.

The programs for A373186, the canonical program `A373186.P9548359750285709063` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373186 has offset 1).

The definition of A373186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373186.P541088111415057889

`∑{d}[n+1, A007438(#)*A051064((n+1)/#)]`
-/

namespace A373186.P541088111415057889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A051064 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P541088111415057889

namespace A373186

/-- `∑{d}[n+1, A007438(#)*A051064((n+1)/#)]` -/
def P541088111415057889.Spec : Prop :=
  ∀ n, P541088111415057889.a n = A373186 (n + 1)

end A373186

/-! ## A373186.P15322815132842072828

`∑{d}[n+1, A007437(#)*A156277((n+1)/#)]`
-/

namespace A373186.P15322815132842072828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P15322815132842072828

namespace A373186

/-- `∑{d}[n+1, A007437(#)*A156277((n+1)/#)]` -/
def P15322815132842072828.Spec : Prop :=
  ∀ n, P15322815132842072828.a n = A373186 (n + 1)

end A373186

/-! ## A373186.P9548359750285709063

`∑{d}[n+1, A057661(#)*A195459((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373186

/-- `∑{d}[n+1, A057661(#)*A195459((n+1)/#)]` -/
def P9548359750285709063.Spec : Prop :=
  ∀ n, P9548359750285709063.a n = A373186 (n + 1)

theorem P9548359750285709063.correct : P9548359750285709063.Spec := by
  intro n
  simp only [A373186, Nat.add_sub_cancel]

end A373186

/-! ## A373186.P1090799136482265749

`∑{d}[n+1, A023896(#)*A327625((n+1)/#)]`
-/

namespace A373186.P1090799136482265749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P1090799136482265749

namespace A373186

/-- `∑{d}[n+1, A023896(#)*A327625((n+1)/#)]` -/
def P1090799136482265749.Spec : Prop :=
  ∀ n, P1090799136482265749.a n = A373186 (n + 1)

end A373186

/-! ## A373186.P15513132527843680795

`∑{d}[n+1, A195094(#)*A284413((n+1)/#)]`
-/

namespace A373186.P15513132527843680795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195094 d * A284413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P15513132527843680795

namespace A373186

/-- `∑{d}[n+1, A195094(#)*A284413((n+1)/#)]` -/
def P15513132527843680795.Spec : Prop :=
  ∀ n, P15513132527843680795.a n = A373186 (n + 1)

end A373186

/-! ## A373186.P11077723959384497724

`∑{d}[n+1, A326828(#)*A328484((n+1)/#)]`
-/

namespace A373186.P11077723959384497724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326828 d * A328484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P11077723959384497724

namespace A373186

/-- `∑{d}[n+1, A326828(#)*A328484((n+1)/#)]` -/
def P11077723959384497724.Spec : Prop :=
  ∀ n, P11077723959384497724.a n = A373186 (n + 1)

end A373186

/-!
# A373187: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^4.

The programs for A373187, the canonical program `A373187.P18015203837873108425` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373187 has offset 1).

The definition of A373187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373187.P18015203837873108425

`∑{d}[n+1, A154269(#)*A338046((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A373187

/-- `∑{d}[n+1, A154269(#)*A338046((n+1)/#)]` -/
def P18015203837873108425.Spec : Prop :=
  ∀ n, P18015203837873108425.a n = A373187 (n + 1)

theorem P18015203837873108425.correct : P18015203837873108425.Spec := by
  intro n
  simp only [A373187, Nat.add_sub_cancel]

end A373187

/-! ## A373187.P5233920474331432473

`∑{d}[n+1, A115362(#-1)*A117108((n+1)/#)]`
-/

namespace A373187.P5233920474331432473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115362 (d - 1) * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373187.P5233920474331432473

namespace A373187

/-- `∑{d}[n+1, A115362(#-1)*A117108((n+1)/#)]` -/
def P5233920474331432473.Spec : Prop :=
  ∀ n, P5233920474331432473.a n = A373187 (n + 1)

end A373187

/-! ## A373187.P896813571626918347

`A007949(A099152(n))+A000292(n+1)`
-/

namespace A373187.P896813571626918347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A099152 n).toNat + A000292 (n + 1)

end

end A373187.P896813571626918347

namespace A373187

/-- `A007949(A099152(n))+A000292(n+1)` -/
def P896813571626918347.Spec : Prop :=
  ∀ n, P896813571626918347.a n = A373187 (n + 1)

end A373187

/-! ## A373187.P158597218657023729

`A090579(n+1)+A072627(A113340(3*n+2))`
-/

namespace A373187.P158597218657023729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090579 (n + 1) + A072627 (A113340 (3 * n + 2)).toNat

end

end A373187.P158597218657023729

namespace A373187

/-- `A090579(n+1)+A072627(A113340(3*n+2))` -/
def P158597218657023729.Spec : Prop :=
  ∀ n, P158597218657023729.a n = A373187 (n + 1)

end A373187

/-!
# A373188: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^2.

The programs for A373188, the canonical program `A373188.P5716519306742437807` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373188 has offset 1).

The definition of A373188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373188.P5716519306742437807

`A373185(n+1)-A115362(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A373188

/-- `A373185(n+1)-A115362(n)` -/
def P5716519306742437807.Spec : Prop :=
  ∀ n, P5716519306742437807.a n = A373188 (n + 1)

theorem P5716519306742437807.correct : P5716519306742437807.Spec := by
  intro n
  simp only [A373188, Nat.add_sub_cancel]

end A373188

/-! ## A373188.P17550307337977803130

`A065883(n+1)*A323921(n+1)`
-/

namespace A373188.P17550307337977803130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1) * A323921 (n + 1)

end

end A373188.P17550307337977803130

namespace A373188

/-- `A065883(n+1)*A323921(n+1)` -/
def P17550307337977803130.Spec : Prop :=
  ∀ n, P17550307337977803130.a n = A373188 (n + 1)

end A373188

/-! ## A373188.P14634269986557567675

`∑{d}[n+1, A035263(#)*A062570((n+1)/#)]`
-/

namespace A373188.P14634269986557567675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373188.P14634269986557567675

namespace A373188

/-- `∑{d}[n+1, A035263(#)*A062570((n+1)/#)]` -/
def P14634269986557567675.Spec : Prop :=
  ∀ n, P14634269986557567675.a n = A373188 (n + 1)

end A373188

/-! ## A373188.P7664418426085293897

`∑{d}[n+1, A000203(#)*A355689((n+1)/#)]`
-/

namespace A373188.P7664418426085293897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373188.P7664418426085293897

namespace A373188

/-- `∑{d}[n+1, A000203(#)*A355689((n+1)/#)]` -/
def P7664418426085293897.Spec : Prop :=
  ∀ n, P7664418426085293897.a n = A373188 (n + 1)

end A373188

/-! ## A373188.P12222172596552265396

`∑{d}[n+1, A074722(#)*A365207((n+1)/#)]`
-/

namespace A373188.P12222172596552265396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A365207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373188.P12222172596552265396

namespace A373188

/-- `∑{d}[n+1, A074722(#)*A365207((n+1)/#)]` -/
def P12222172596552265396.Spec : Prop :=
  ∀ n, P12222172596552265396.a n = A373188 (n + 1)

end A373188

/-! ## A373188.P6450499053250842871

`∑{d}[n+1, A206369(#)*A353627((n+1)/#)]`
-/

namespace A373188.P6450499053250842871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373188.P6450499053250842871

namespace A373188

/-- `∑{d}[n+1, A206369(#)*A353627((n+1)/#)]` -/
def P6450499053250842871.Spec : Prop :=
  ∀ n, P6450499053250842871.a n = A373188 (n + 1)

end A373188

/-! ## A373188.P8099434727863307972

`∑{d}[n+1, A372671(#)*A373155((n+1)/#)]`
-/

namespace A373188.P8099434727863307972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d * A373155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373188.P8099434727863307972

namespace A373188

/-- `∑{d}[n+1, A372671(#)*A373155((n+1)/#)]` -/
def P8099434727863307972.Spec : Prop :=
  ∀ n, P8099434727863307972.a n = A373188 (n + 1)

end A373188

/-! ## A373188.P1401548182098910973

`∑{d}[n+1, A000010(#)*A115362((n+1)/#-1)]`
-/

namespace A373188.P1401548182098910973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A115362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A373188.P1401548182098910973

namespace A373188

/-- `∑{d}[n+1, A000010(#)*A115362((n+1)/#-1)]` -/
def P1401548182098910973.Spec : Prop :=
  ∀ n, P1401548182098910973.a n = A373188 (n + 1)

end A373188

/-! ## A373188.P1143891268459458633

`∑{d}[n+1, A036987(#-1)*A335115((n+1)/#)]`
-/

namespace A373188.P1143891268459458633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A335115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373188.P1143891268459458633

namespace A373188

/-- `∑{d}[n+1, A036987(#-1)*A335115((n+1)/#)]` -/
def P1143891268459458633.Spec : Prop :=
  ∀ n, P1143891268459458633.a n = A373188 (n + 1)

end A373188

/-!
# A373189: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^3.

The programs for A373189, the canonical program `A373189.P2339985558679468875` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373189 has offset 1).

The definition of A373189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373189.P8929147398097161167

`∑{d}[n+1, A007437(#)*A355689((n+1)/#)]`
-/

namespace A373189.P8929147398097161167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P8929147398097161167

namespace A373189

/-- `∑{d}[n+1, A007437(#)*A355689((n+1)/#)]` -/
def P8929147398097161167.Spec : Prop :=
  ∀ n, P8929147398097161167.a n = A373189 (n + 1)

end A373189

/-! ## A373189.P2339985558679468875

`∑{d}[n+1, A023896(#)*A373188((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A373189

/-- `∑{d}[n+1, A023896(#)*A373188((n+1)/#)]` -/
def P2339985558679468875.Spec : Prop :=
  ∀ n, P2339985558679468875.a n = A373189 (n + 1)

theorem P2339985558679468875.correct : P2339985558679468875.Spec := by
  intro n
  simp only [A373189, Nat.add_sub_cancel]

end A373189

/-! ## A373189.P8930213555372898977

`∑{d}[n+1, A154269(#)*A338045((n+1)/#)]`
-/

namespace A373189.P8930213555372898977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A338045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P8930213555372898977

namespace A373189

/-- `∑{d}[n+1, A154269(#)*A338045((n+1)/#)]` -/
def P8930213555372898977.Spec : Prop :=
  ∀ n, P8930213555372898977.a n = A373189 (n + 1)

end A373189

/-! ## A373189.P583003978026451740

`∑{d}[n+1, A007438(#)*A115362((n+1)/#-1)]`
-/

namespace A373189.P583003978026451740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A115362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A373189.P583003978026451740

namespace A373189

/-- `∑{d}[n+1, A007438(#)*A115362((n+1)/#-1)]` -/
def P583003978026451740.Spec : Prop :=
  ∀ n, P583003978026451740.a n = A373189 (n + 1)

end A373189

/-! ## A373189.P13770337021528586965

`∑{d}[n+1, A035263(#)*A195094((n+1)/#)]`
-/

namespace A373189.P13770337021528586965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A195094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P13770337021528586965

namespace A373189

/-- `∑{d}[n+1, A035263(#)*A195094((n+1)/#)]` -/
def P13770337021528586965.Spec : Prop :=
  ∀ n, P13770337021528586965.a n = A373189 (n + 1)

end A373189

/-!
# A373193: On a unit square grid, the number of squares enclosed by a circle of radius n with origin at the center of a square.

The programs for A373193, the canonical program `A373193.P6794396675598338010` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373193 has offset 1).

The definition of A373193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373193.P6794396675598338010

`A053415(2*(n+1))-(4*n+3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A373193

/-- `A053415(2*(n+1))-(4*n+3)` -/
def P6794396675598338010.Spec : Prop :=
  ∀ n, P6794396675598338010.a n = A373193 (n + 1)

theorem P6794396675598338010.correct : P6794396675598338010.Spec := by
  intro n
  simp only [A373193, Nat.add_sub_cancel]

end A373193

/-!
# A373194: Numbers k such that phi(k) is a Lucas number.

The programs for A373194, there is no canonical definition to state claims against.
-/

/-! ## A373194.P10228838427893986007

`eq[1, A102460(A000010(n+1))]+1`
-/

namespace A373194.P10228838427893986007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373194.P10228838427893986007

/-!
# A373195: Cardinality of the largest subset of {1,...,n} such that no six distinct elements of this subset multiply to a square.

The programs for A373195, there is no canonical definition to state claims against.
-/

/-! ## A373195.P12064532978882125999

`∑[A117358(n+1)*A336040(A349741(n+1))]`
-/

namespace A373195.P12064532978882125999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (n + 1) * A336040 (A349741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373195.P12064532978882125999

/-! ## A373195.P3434591576334403833

`∑[A323022(n+2)*A336040(A349741(n+1))]`
-/

namespace A373195.P3434591576334403833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (n + 2) * A336040 (A349741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373195.P3434591576334403833

/-!
# A373196: Maximal coefficient (in absolute value) in the numerator of C({1..n},x).

The programs for A373196, there is no canonical definition to state claims against.
-/

/-! ## A373196.P1441871493565227963

`A179078(∏[n!])`
-/

namespace A373196.P1441871493565227963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179078 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A373196.P1441871493565227963

/-!
# A373197: Sum of all squarefree numbers from prime(n) to prime(n+1) - 1.

The programs for A373197, there is no canonical definition to state claims against.
-/

/-! ## A373197.P8764743146628212390

`Δ[A368674(A000040(n+1))]`
-/

namespace A373197.P8764743146628212390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368674 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373197.P8764743146628212390

/-! ## A373197.P2639229932806726718

`Δ[A066779(record[A000010(n+1)])]`
-/

namespace A373197.P2639229932806726718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373197.P2639229932806726718

/-! ## A373197.P8763296347687039392

`Δ[A066779(A000040(n+1)-1)]`
-/

namespace A373197.P8763296347687039392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373197.P8763296347687039392

/-! ## A373197.P13142418758904045948

`A371201(n+1)-A378618(n+1)`
-/

namespace A373197.P13142418758904045948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 (n + 1) - A378618 (n + 1)

end

end A373197.P13142418758904045948

/-!
# A373198: Number of squarefree numbers from prime(n) to prime(n+1) - 1.

The programs for A373198, the canonical program `A373198.P11417829531777717316` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373198 has offset 1).

The definition of A373198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373198.P11417829531777717316

`A061398(n+1)+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A373198

/-- `A061398(n+1)+1` -/
def P11417829531777717316.Spec : Prop :=
  ∀ n, P11417829531777717316.a n = A373198 (n + 1)

theorem P11417829531777717316.correct : P11417829531777717316.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel]

end A373198

/-! ## A373198.P3884473277311445452

`A001223(n+1)-A061399(n+1)`
-/

namespace A373198.P3884473277311445452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A061399 (n + 1)

end

end A373198.P3884473277311445452

namespace A373198

/-- `A001223(n+1)-A061399(n+1)` -/
def P3884473277311445452.Spec : Prop :=
  ∀ n, P3884473277311445452.a n = A373198 (n + 1)

theorem P3884473277311445452.correct : P3884473277311445452.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P3884473277311445452.a, A373198.P11417829531777717316.a, A001223, A001223.P5034056745985311719.a, A061398, A061398.P14693318756630178419.a, A061399, A061399.P875585814381713750.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A046933, A046933.P9479947770746769512.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P9208114345189133097

`A046933(n+1)+1-A061399(n+1)`
-/

namespace A373198.P9208114345189133097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + (1 - A061399 (n + 1))

end

end A373198.P9208114345189133097

namespace A373198

/-- `A046933(n+1)+1-A061399(n+1)` -/
def P9208114345189133097.Spec : Prop :=
  ∀ n, P9208114345189133097.a n = A373198 (n + 1)

theorem P9208114345189133097.correct : P9208114345189133097.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P9208114345189133097.a, A373198.P11417829531777717316.a, A046933, A046933.P9479947770746769512.a, A061398, A061398.P14693318756630178419.a, A061399, A061399.P875585814381713750.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P3261348128515153536

`A368748(n+1)+1-A373643(n+1)`
-/

namespace A373198.P3261348128515153536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368748 (n + 1) + (1 - A373643 (n + 1))

end

end A373198.P3261348128515153536

namespace A373198

/-- `A368748(n+1)+1-A373643(n+1)` -/
def P3261348128515153536.Spec : Prop :=
  ∀ n, P3261348128515153536.a n = A373198 (n + 1)

theorem P3261348128515153536.correct : P3261348128515153536.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P3261348128515153536.a, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A368748, A368748.P2060391924120103936.a, A373643, A373643.P3675062936320699717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A080101, A080101.P17293988866175764959.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A024620, A024620.P8536977387799856667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P16383174740298360752

`A001223(n+1)-(A373643(n+1)+A080101(n+1))`
-/

namespace A373198.P16383174740298360752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (A373643 (n + 1) + A080101 (n + 1))

end

end A373198.P16383174740298360752

namespace A373198

/-- `A001223(n+1)-(A373643(n+1)+A080101(n+1))` -/
def P16383174740298360752.Spec : Prop :=
  ∀ n, P16383174740298360752.a n = A373198 (n + 1)

theorem P16383174740298360752.correct : P16383174740298360752.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P16383174740298360752.a, A373198.P11417829531777717316.a, A001223, A001223.P5034056745985311719.a, A061398, A061398.P14693318756630178419.a, A080101, A080101.P17293988866175764959.a, A373643, A373643.P3675062936320699717.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A024620, A024620.P8536977387799856667.a, A065515, A065515.P15129427044826637405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P11976518539896414838

`Δ[A071403(n+1)]`
-/

namespace A373198.P11976518539896414838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P11976518539896414838

namespace A373198

/-- `Δ[A071403(n+1)]` -/
def P11976518539896414838.Spec : Prop :=
  ∀ n, P11976518539896414838.a n = A373198 (n + 1)

theorem P11976518539896414838.correct : P11976518539896414838.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P11976518539896414838.f1, A373198.P11976518539896414838.a, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A071403, A071403.P15817908968978529389.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A112929, A112929.P128816744454326581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P132431973570751602

`Δ[A112929(n+1)]`
-/

namespace A373198.P132431973570751602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P132431973570751602

namespace A373198

/-- `Δ[A112929(n+1)]` -/
def P132431973570751602.Spec : Prop :=
  ∀ n, P132431973570751602.a n = A373198 (n + 1)

theorem P132431973570751602.correct : P132431973570751602.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P132431973570751602.f1, A373198.P132431973570751602.a, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A112929, A112929.P128816744454326581.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P14665165707354133941

`Δ[A112930(n+1)]`
-/

namespace A373198.P14665165707354133941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P14665165707354133941

namespace A373198

/-- `Δ[A112930(n+1)]` -/
def P14665165707354133941.Spec : Prop :=
  ∀ n, P14665165707354133941.a n = A373198 (n + 1)

theorem P14665165707354133941.correct : P14665165707354133941.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P14665165707354133941.f1, A373198.P14665165707354133941.a, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A112930, A112930.P7126053726691172401.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A112929, A112929.P128816744454326581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P223792572210143250

`Δ[A337030(n+1)]+1`
-/

namespace A373198.P223792572210143250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A373198.P223792572210143250

namespace A373198

/-- `Δ[A337030(n+1)]+1` -/
def P223792572210143250.Spec : Prop :=
  ∀ n, P223792572210143250.a n = A373198 (n + 1)

end A373198

/-! ## A373198.P707387519430386359

`A071403(n+2)-A071403(n+1)`
-/

namespace A373198.P707387519430386359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 2) - A071403 (n + 1)

end

end A373198.P707387519430386359

namespace A373198

/-- `A071403(n+2)-A071403(n+1)` -/
def P707387519430386359.Spec : Prop :=
  ∀ n, P707387519430386359.a n = A373198 (n + 1)

theorem P707387519430386359.correct : P707387519430386359.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P707387519430386359.a, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A071403, A071403.P15817908968978529389.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A112929, A112929.P128816744454326581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P8287475253826200456

`A112929(n+2)-A112929(n+1)`
-/

namespace A373198.P8287475253826200456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 2) - A112929 (n + 1)

end

end A373198.P8287475253826200456

namespace A373198

/-- `A112929(n+2)-A112929(n+1)` -/
def P8287475253826200456.Spec : Prop :=
  ∀ n, P8287475253826200456.a n = A373198 (n + 1)

theorem P8287475253826200456.correct : P8287475253826200456.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P8287475253826200456.a, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A112929, A112929.P128816744454326581.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P5530209379766272811

`A112930(n+2)-A112930(n+1)`
-/

namespace A373198.P5530209379766272811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 2) - A112930 (n + 1)

end

end A373198.P5530209379766272811

namespace A373198

/-- `A112930(n+2)-A112930(n+1)` -/
def P5530209379766272811.Spec : Prop :=
  ∀ n, P5530209379766272811.a n = A373198 (n + 1)

theorem P5530209379766272811.correct : P5530209379766272811.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P5530209379766272811.a, A373198.P11417829531777717316.a, A061398, A061398.P14693318756630178419.a, A112930, A112930.P7126053726691172401.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A112929, A112929.P128816744454326581.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P4816415796668531823

`A000040(n+2)-(A061399(n+1)+A000040(n+1))`
-/

namespace A373198.P4816415796668531823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A061399 (n + 1) + A000040 (n + 1))

end

end A373198.P4816415796668531823

namespace A373198

/-- `A000040(n+2)-(A061399(n+1)+A000040(n+1))` -/
def P4816415796668531823.Spec : Prop :=
  ∀ n, P4816415796668531823.a n = A373198 (n + 1)

theorem P4816415796668531823.correct : P4816415796668531823.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P4816415796668531823.a, A373198.P11417829531777717316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061398, A061398.P14693318756630178419.a, A061399, A061399.P875585814381713750.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A046933, A046933.P9479947770746769512.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P150722350432887657

`Δ[A013928(Δ[A007504(n)])]`
-/

namespace A373198.P150722350432887657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P150722350432887657

namespace A373198

/-- `Δ[A013928(Δ[A007504(n)])]` -/
def P150722350432887657.Spec : Prop :=
  ∀ n, P150722350432887657.a n = A373198 (n + 1)

end A373198

/-! ## A373198.P4249889468426886220

`Δ[A013928(A000040(n+1))]`
-/

namespace A373198.P4249889468426886220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P4249889468426886220

namespace A373198

/-- `Δ[A013928(A000040(n+1))]` -/
def P4249889468426886220.Spec : Prop :=
  ∀ n, P4249889468426886220.a n = A373198 (n + 1)

theorem P4249889468426886220.correct : P4249889468426886220.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P4249889468426886220.f1, A373198.P4249889468426886220.a, A373198.P11417829531777717316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A061398, A061398.P14693318756630178419.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P16162268903411876391

`A013928(A000040(n+2))-A013928(A000040(n+1))`
-/

namespace A373198.P16162268903411876391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000040 (n + 2)).toNat - A013928 (A000040 (n + 1)).toNat

end

end A373198.P16162268903411876391

namespace A373198

/-- `A013928(A000040(n+2))-A013928(A000040(n+1))` -/
def P16162268903411876391.Spec : Prop :=
  ∀ n, P16162268903411876391.a n = A373198 (n + 1)

theorem P16162268903411876391.correct : P16162268903411876391.Spec := by
  intro n
  simp only [A373198, Nat.add_sub_cancel, A373198.P16162268903411876391.a, A373198.P11417829531777717316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A061398, A061398.P14693318756630178419.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373198

/-! ## A373198.P9638730057689945878

`Δ[record[A265675(n+2)]]`
-/

namespace A373198.P9638730057689945878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265675 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P9638730057689945878

namespace A373198

/-- `Δ[record[A265675(n+2)]]` -/
def P9638730057689945878.Spec : Prop :=
  ∀ n, P9638730057689945878.a n = A373198 (n + 1)

end A373198

/-! ## A373198.P8779887572362019300

`Δ[record[A073311(n+1)]]`
-/

namespace A373198.P8779887572362019300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073311 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P8779887572362019300

namespace A373198

/-- `Δ[record[A073311(n+1)]]` -/
def P8779887572362019300.Spec : Prop :=
  ∀ n, P8779887572362019300.a n = A373198 (n + 1)

end A373198

/-! ## A373198.P10760391189275884080

`Δ[record[A169646(n+1)]]`
-/

namespace A373198.P10760391189275884080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169646 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A373198.P10760391189275884080

namespace A373198

/-- `Δ[record[A169646(n+1)]]` -/
def P10760391189275884080.Spec : Prop :=
  ∀ n, P10760391189275884080.a n = A373198 (n + 1)

end A373198

/-!
# A373199: Least k such that the k-th maximal run of nonsquarefree numbers has length n. Position of first appearance of n in A053797.

The programs for A373199, there is no canonical definition to state claims against.
-/

/-! ## A373199.P5051883009479889742

`A190896(A047520(n))`
-/

namespace A373199.P5051883009479889742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190896 (A047520 n).toNat

end

end A373199.P5051883009479889742

