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
import Seq.B000.C035
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
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A168100: a(n) = number of natural numbers m such that n - 10 <= m <= n + 10.

The programs for A168100, the canonical program `A168100.P975628281349588795` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168100 has offset 0).

The definition of A168100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168100.P975628281349588795

`round(a(n-1)+10/a(n-1))` with `a(0)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168100

/-- `round(a(n-1)+10/a(n-1))` -/
def P975628281349588795.Spec : Prop :=
  ∀ n, P975628281349588795.a n = A168100 n

theorem P975628281349588795.correct : P975628281349588795.Spec := by
  intro n
  simp only [A168100]

end A168100

/-!
# A168101: a(n) = sum of natural numbers m such that n - 2 <= m <= n + 2.

The programs for A168101, the canonical program `A168101.P8391321715091704467` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168101 has offset 0).

The definition of A168101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168101.P8391321715091704467

`floor(5/acot(n))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168101

/-- `floor(5/acot(n))` -/
def P8391321715091704467.Spec : Prop :=
  ∀ n, P8391321715091704467.a n = A168101 n

theorem P8391321715091704467.correct : P8391321715091704467.Spec := by
  intro n
  simp only [A168101]

end A168101

/-!
# A168102: a(n) = sum of natural numbers m such that n - 3 <= m <= n + 3.

The programs for A168102, the canonical program `A168102.P5859603676936399709` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168102 has offset 0).

The definition of A168102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168102.P5859603676936399709

`a(n-1)+7` with `a(0)=6, a(1)=10, a(2)=15, a(3)=21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168102

/-- `a(n-1)+7` -/
def P5859603676936399709.Spec : Prop :=
  ∀ n, (P5859603676936399709.a n : ℤ) = A168102 n

theorem P5859603676936399709.correct : P5859603676936399709.Spec := by
  intro n
  simp only [A168102]

end A168102

/-!
# A168103: a(n) = sum of natural numbers m such that n - 4 <= m <= n + 4.

The programs for A168103, the canonical program `A168103.P15360894804193738191` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168103 has offset 0).

The definition of A168103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168103.P15360894804193738191

`record[a(dr(n)-1)+n]` with `a(0)=10, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168103

/-- `record[a(dr(n)-1)+n]` -/
def P15360894804193738191.Spec : Prop :=
  ∀ n, (P15360894804193738191.a n : ℤ) = A168103 n

theorem P15360894804193738191.correct : P15360894804193738191.Spec := by
  intro n
  simp only [A168103]

end A168103

/-!
# A168104: a(n) = sum of natural numbers m such that n - 5 <= m <= n + 5.

The programs for A168104, the canonical program `A168104.P5845644003780604461` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168104 has offset 0).

The definition of A168104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168104.P5845644003780604461

`floor((A168105(n)+A168103(n))/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A168104

/-- `floor((A168105(n)+A168103(n))/2)` -/
def P5845644003780604461.Spec : Prop :=
  ∀ n, P5845644003780604461.a n = A168104 n

theorem P5845644003780604461.correct : P5845644003780604461.Spec := by
  intro n
  simp only [A168104]

end A168104

/-!
# A168105: a(n) = sum of natural numbers m such that n - 6 <= m <= n + 6.

The programs for A168105, the canonical program `A168105.P7913787577739813184` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168105 has offset 0).

The definition of A168105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168105.P7913787577739813184

`a(n-1)+13` with `a(0)=21, a(1)=28, a(2)=36, a(3)=45, a(4)=55, a(5)=66, a(6)=78`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168105

/-- `a(n-1)+13` -/
def P7913787577739813184.Spec : Prop :=
  ∀ n, (P7913787577739813184.a n : ℤ) = A168105 n

theorem P7913787577739813184.correct : P7913787577739813184.Spec := by
  intro n
  simp only [A168105]

end A168105

/-!
# A168106: a(n) = sum of natural numbers m such that n - 7 <= m <= n + 7.

The programs for A168106, the canonical program `A168106.P4089788785591146941` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168106 has offset 0).

The definition of A168106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168106.P4089788785591146941

`a(n-1)+15` with `a(0)=28, a(1)=36, a(2)=45, a(3)=55, a(4)=66, a(5)=78, a(6)=91, a(7)=105`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168106

/-- `a(n-1)+15` -/
def P4089788785591146941.Spec : Prop :=
  ∀ n, (P4089788785591146941.a n : ℤ) = A168106 n

theorem P4089788785591146941.correct : P4089788785591146941.Spec := by
  intro n
  simp only [A168106]

end A168106

/-!
# A168107: a(n) = sum of natural numbers m such that n - 8 <= m <= n + 8.

The programs for A168107, the canonical program `A168107.P14409543928797331274` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168107 has offset 0).

The definition of A168107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168107.P14409543928797331274

`a(n-1)+17` with `a(0)=36, a(1)=45, a(2)=55, a(3)=66, a(4)=78, a(5)=91, a(6)=105, a(7)=120, a(8)=136`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168107

/-- `a(n-1)+17` -/
def P14409543928797331274.Spec : Prop :=
  ∀ n, (P14409543928797331274.a n : ℤ) = A168107 n

theorem P14409543928797331274.correct : P14409543928797331274.Spec := by
  intro n
  simp only [A168107]

end A168107

/-!
# A168108: a(n) = sum of natural numbers m such that n - 9 <= m <= n + 9.

The programs for A168108, the canonical program `A168108.P5979969680335579582` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168108 has offset 0).

The definition of A168108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168108.P5979969680335579582

`a(n-1)+19` with `a(0)=45, a(1)=55, a(2)=66, a(3)=78, a(4)=91, a(5)=105, a(6)=120, a(7)=136, a(8)=153, a(9)=171`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168108

/-- `a(n-1)+19` -/
def P5979969680335579582.Spec : Prop :=
  ∀ n, (P5979969680335579582.a n : ℤ) = A168108 n

theorem P5979969680335579582.correct : P5979969680335579582.Spec := by
  intro n
  simp only [A168108]

end A168108

/-!
# A168109: a(n) = sum of natural numbers m such that n - 10 <= m <= n + 10.

The programs for A168109, there is no canonical definition to state claims against.
-/

/-! ## A168109.P1574985265576228005

`A112355(A062279(n)+8)`
-/

namespace A168109.P1574985265576228005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112355 (A062279 n + 8).toNat

end

end A168109.P1574985265576228005

/-!
# A168111: Sum of the partition numbers of the proper divisors of n, with a(1) = 0.

The programs for A168111, there is no canonical definition to state claims against.
-/

/-! ## A168111.P13907619319158563229

`A047968(n+1)-A000041(n+1)`
-/

namespace A168111.P13907619319158563229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 1) - A000041 (n + 1)

end

end A168111.P13907619319158563229

/-! ## A168111.P4991146593453312684

`∑{d}[n+1, A018783(#)]`
-/

namespace A168111.P4991146593453312684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018783 d

end

end A168111.P4991146593453312684

/-! ## A168111.P1140146887100922398

`A329435(n+1)-A338470(n+1)`
-/

namespace A168111.P1140146887100922398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329435 (n + 1) - A338470 (n + 1)

end

end A168111.P1140146887100922398

/-! ## A168111.P8777831273341671494

`∑{d}[n+1, A000041(#)]-A000041(n+1)`
-/

namespace A168111.P8777831273341671494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 d - A000041 (n + 1)

end

end A168111.P8777831273341671494

/-! ## A168111.P15290928744690561550

`∑{d}[n+1, A047968(#)*A157658((n+1)/#)]`
-/

namespace A168111.P15290928744690561550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047968 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A168111.P15290928744690561550

/-! ## A168111.P4021581019335916570

`∑{d}[n+1, A051953(#)*A333697((n+1)/#)]`
-/

namespace A168111.P4021581019335916570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A333697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A168111.P4021581019335916570

/-! ## A168111.P12435354465034051694

`∑{d}[n+1, A296066(#)*A305841((n+1)/#)]`
-/

namespace A168111.P12435354465034051694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d * A305841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A168111.P12435354465034051694

/-! ## A168111.P282863427359714166

`A047968(n+1)-(A018783(n+1)+A000837(n+1))`
-/

namespace A168111.P282863427359714166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 1) - (A018783 (n + 1) + A000837 (n + 1))

end

end A168111.P282863427359714166

/-! ## A168111.P7024129880745646108

`A047968(n+1)+A168014(n+1)-A168015(n+1)`
-/

namespace A168111.P7024129880745646108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 1) + (A168014 (n + 1) - A168015 (n + 1))

end

end A168111.P7024129880745646108

/-! ## A168111.P5945558675365692226

`A047968(n+1)+A000070(n)-A000070(n+1)`
-/

namespace A168111.P5945558675365692226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 1) + (A000070 n - A000070 (n + 1))

end

end A168111.P5945558675365692226

/-! ## A168111.P16395145366106675041

`A047968(n+1)+A230441(n+1)-A015128(n+1)`
-/

namespace A168111.P16395145366106675041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047968 (n + 1) + (A230441 (n + 1) - A015128 (n + 1))

end

end A168111.P16395145366106675041

/-!
# A168112: Toothpick sequence starting with a straight line, with angle = Pi/4, from which protrudes a half toothpick.

The programs for A168112, there is no canonical definition to state claims against.
-/

/-! ## A168112.P11434669079996974531

`A160730(n)/2`
-/

namespace A168112.P11434669079996974531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160730 n : ℚ) / 2

end

end A168112.P11434669079996974531

/-! ## A168112.P13610237062668615504

`floor(A323646(n+1)/2)`
-/

namespace A168112.P13610237062668615504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323646 (n + 1) : ℚ) / 2⌋

end

end A168112.P13610237062668615504

/-! ## A168112.P2540374686268009877

`A168113(n)+a(n-1)` with `a(0)=0`
-/

namespace A168112.P2540374686268009877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A168113 n + a (n - 1)

end

end A168112.P2540374686268009877

/-! ## A168112.P5245057147351568176

`∑[floor(A323647(n+1)/2)]`
-/

namespace A168112.P5245057147351568176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323647 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168112.P5245057147351568176

/-! ## A168112.P12031896050096975990

`(∑[A323647(2*n+1-n)]-1)/2`
-/

namespace A168112.P12031896050096975990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (2 * n + 1 - n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A168112.P12031896050096975990

/-! ## A168112.P18216420166680830498

`A001281(A160730(n))`
-/

namespace A168112.P18216420166680830498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160730 n).toNat

end

end A168112.P18216420166680830498

/-! ## A168112.P13475228267949800699

`A004524(A160730(n)+1)`
-/

namespace A168112.P13475228267949800699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A160730 n + 1).toNat

end

end A168112.P13475228267949800699

/-! ## A168112.P3933698701711671993

`A004526(A160730(n)+1)`
-/

namespace A168112.P3933698701711671993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A160730 n + 1).toNat

end

end A168112.P3933698701711671993

/-! ## A168112.P10651022238865699769

`A004524(A323646(n+1))`
-/

namespace A168112.P10651022238865699769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A323646 (n + 1)).toNat

end

end A168112.P10651022238865699769

/-! ## A168112.P11405090705133790391

`A110657(2*A160730(n))`
-/

namespace A168112.P11405090705133790391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A160730 n).toNat

end

end A168112.P11405090705133790391

/-!
# A168113: First differences of A168112.

The programs for A168113, there is no canonical definition to state claims against.
-/

/-! ## A168113.P2904368268501279535

`A160731(n+1)/2`
-/

namespace A168113.P2904368268501279535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160731 (n + 1) : ℚ) / 2

end

end A168113.P2904368268501279535

/-! ## A168113.P3626517911259394251

`Δ[A160730(n)/2]`
-/

namespace A168113.P3626517911259394251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160730 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168113.P3626517911259394251

/-! ## A168113.P1474452091086590843

`A323647(n+2)/2`
-/

namespace A168113.P1474452091086590843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323647 (n + 2) : ℚ) / 2

end

end A168113.P1474452091086590843

/-! ## A168113.P6539746231753976531

`Δ[A323646(n+1)/2]`
-/

namespace A168113.P6539746231753976531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323646 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168113.P6539746231753976531

/-! ## A168113.P2195634631849800875

`floor(A187211(n+2)/8)+1`
-/

namespace A168113.P2195634631849800875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187211 (n + 2) : ℚ) / 8⌋ + 1

end

end A168113.P2195634631849800875

/-! ## A168113.P8288183925443698405

`Δ[A323646(-xor(n, -1))]/2`
-/

namespace A168113.P8288183925443698405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323646 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A168113.P8288183925443698405

/-! ## A168113.P898240257838099332

`a(n-1)*ratio[A323647(n+1)]` with `a(0)=1`
-/

namespace A168113.P898240257838099332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A168113.P898240257838099332

/-! ## A168113.P2932793277789598843

`A001281(Δ[A160730(n)])`
-/

namespace A168113.P2932793277789598843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A168113.P2932793277789598843

/-! ## A168113.P4243659363078945097

`A004525(Δ[A160730(n)])`
-/

namespace A168113.P4243659363078945097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A168113.P4243659363078945097

/-! ## A168113.P10822355841111152883

`A004526(Δ[A160730(n)])`
-/

namespace A168113.P10822355841111152883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A168113.P10822355841111152883

/-!
# A168114: If A168113 is regarded as a triangle then the rows converge to this sequence.

The programs for A168114, there is no canonical definition to state claims against.
-/

/-! ## A168114.P5860966333076282679

`n%2+A151688(n)+1`
-/

namespace A168114.P5860966333076282679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A151688 n + 1)

end

end A168114.P5860966333076282679

/-! ## A168114.P17854611368194122476

`Δ[A159793(n)]+gcd(2, n+1)`
-/

namespace A168114.P17854611368194122476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.gcd 2 (n + 1) : ℤ)

end

end A168114.P17854611368194122476

/-! ## A168114.P7974349928141013095

`and(1, n)+2*A152980(n)+1`
-/

namespace A168114.P7974349928141013095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (2 * A152980 n + 1)

end

end A168114.P7974349928141013095

/-! ## A168114.P11915211145262679854

`Δ[2*A153006(n)]+and(1, n)+1`
-/

namespace A168114.P11915211145262679854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.land 1 n + 1 : ℤ)

end

end A168114.P11915211145262679854

/-! ## A168114.P15100131039691345716

`Δ[A159795(n)/2]+and(1, n)+1`
-/

namespace A168114.P15100131039691345716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159795 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.land 1 n + 1 : ℚ)

end

end A168114.P15100131039691345716

/-! ## A168114.P4676288946445588875

`A151688(n)+A000034(n)`
-/

namespace A168114.P4676288946445588875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n + A000034 n

end

end A168114.P4676288946445588875

/-! ## A168114.P266299555822401428

`A162779(n)+A010693(n)`
-/

namespace A168114.P266299555822401428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162779 n + A010693 n

end

end A168114.P266299555822401428

/-! ## A168114.P13944963488369326882

`A000035(n)+A151688(n)+1`
-/

namespace A168114.P13944963488369326882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A151688 n + 1)

end

end A168114.P13944963488369326882

/-! ## A168114.P7565179895343905351

`A151688(n)+A020639(or(n, n+1)-n)`
-/

namespace A168114.P7565179895343905351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n + A020639 (Nat.lor n (n + 1) - n)

end

end A168114.P7565179895343905351

/-! ## A168114.P3410671741218841315

`A162779(n)+A020639(A020639(n+1)+1)`
-/

namespace A168114.P3410671741218841315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162779 n + A020639 (A020639 (n + 1) + 1).toNat

end

end A168114.P3410671741218841315

/-!
# A168115: a(n) = A139560(n+1)/2.

The programs for A168115, there is no canonical definition to state claims against.
-/

/-! ## A168115.P15435889764156350621

`A139560(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168115.P15435889764156350621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139560 (n + 2) : ℚ) / 2

end

end A168115.P15435889764156350621

/-! ## A168115.P9513714257406179821

`Δ[A139252(n+1)/2]`
-/

namespace A168115.P9513714257406179821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139252 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168115.P9513714257406179821

/-! ## A168115.P135040677964351130

`Δ[Δ[∑[A139252(n)]/2]]`
-/

namespace A168115.P135040677964351130
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168115.P135040677964351130

/-! ## A168115.P16091358379392964454

`Δ[A000463(A139252(n+1))]`
-/

namespace A168115.P16091358379392964454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A139252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168115.P16091358379392964454

/-! ## A168115.P9966219925896088773

`A001281(Δ[A139252(n+1)])`
-/

namespace A168115.P9966219925896088773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A168115.P9966219925896088773

/-! ## A168115.P5360872220325626215

`A004525(Δ[A139252(n+1)])`
-/

namespace A168115.P5360872220325626215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A168115.P5360872220325626215

/-! ## A168115.P10729628967589151941

`A004526(Δ[A139252(n+1)])`
-/

namespace A168115.P10729628967589151941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A168115.P10729628967589151941

/-! ## A168115.P1694355677017084747

`A006370(Δ[A139252(n+1)])`
-/

namespace A168115.P1694355677017084747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A168115.P1694355677017084747

/-! ## A168115.P13280087330256357708

`A014682(Δ[A139252(n+1)])`
-/

namespace A168115.P13280087330256357708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A168115.P13280087330256357708

/-! ## A168115.P5657663333935341207

`abs(A001057(Δ[A139252(n+1)]))`
-/

namespace A168115.P5657663333935341207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (f1 (n + 1) - f1 n).toNat|

end

end A168115.P5657663333935341207

/-!
# A168116: a(n) = n*(n^8+1)/2.

The programs for A168116, the canonical program `A168116.P7119324971349933904` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168116 has offset 0).

The definition of A168116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168116.P7119324971349933904

`n*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168116

/-- `n*(n^8+1)/2` -/
def P7119324971349933904.Spec : Prop :=
  ∀ n, P7119324971349933904.a n = (A168116 n : ℚ)

end A168116

/-! ## A168116.P10750968111944182409

`A196290(n)/2`
-/

namespace A168116.P10750968111944182409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196290 n : ℚ) / 2

end

end A168116.P10750968111944182409

namespace A168116

/-- `A196290(n)/2` -/
def P10750968111944182409.Spec : Prop :=
  ∀ n, P10750968111944182409.a n = (A168116 n : ℚ)

end A168116

/-! ## A168116.P7499132368762032873

`(A001017(n)+n)/2`
-/

namespace A168116.P7499132368762032873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n + (n : ℤ) : ℚ) / 2

end

end A168116.P7499132368762032873

namespace A168116

/-- `(A001017(n)+n)/2` -/
def P7499132368762032873.Spec : Prop :=
  ∀ n, P7499132368762032873.a n = (A168116 n : ℚ)

end A168116

/-! ## A168116.P11411759127394235140

`A196289(n)/2+n`
-/

namespace A168116.P11411759127394235140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196289 n : ℚ) / 2 + (n : ℚ)

end

end A168116.P11411759127394235140

namespace A168116

/-- `A196289(n)/2+n` -/
def P11411759127394235140.Spec : Prop :=
  ∀ n, P11411759127394235140.a n = (A168116 n : ℚ)

end A168116

/-! ## A168116.P8451719468612537432

`(n+1-A024007(n))/2`
-/

namespace A168116.P8451719468612537432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A024007 n : ℚ) / 2

end

end A168116.P8451719468612537432

namespace A168116

/-- `(n+1-A024007(n))/2` -/
def P8451719468612537432.Spec : Prop :=
  ∀ n, P8451719468612537432.a n = (A168116 n : ℚ)

end A168116

/-! ## A168116.P11123785684700982788

`A168187(n)-A135503(n)`
-/

namespace A168116.P11123785684700982788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168187 n - A135503 n

end

end A168116.P11123785684700982788

namespace A168116

/-- `A168187(n)-A135503(n)` -/
def P11123785684700982788.Spec : Prop :=
  ∀ n, P11123785684700982788.a n = A168116 n

end A168116

/-! ## A168116.P4939012233589663736

`A168125(n)-A161680(n)`
-/

namespace A168116.P4939012233589663736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168125 n - A161680 n

end

end A168116.P4939012233589663736

namespace A168116

/-- `A168125(n)-A161680(n)` -/
def P4939012233589663736.Spec : Prop :=
  ∀ n, P4939012233589663736.a n = A168116 n

end A168116

/-! ## A168116.P15921656934128888290

`A168126(n)/A028310(n)`
-/

namespace A168116.P15921656934128888290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168126 n : ℚ) / (A028310 n : ℚ)

end

end A168116.P15921656934128888290

namespace A168116

/-- `A168126(n)/A028310(n)` -/
def P15921656934128888290.Spec : Prop :=
  ∀ n, P15921656934128888290.a n = (A168116 n : ℚ)

end A168116

/-! ## A168116.P12515232796881497254

`A168189(n)/A253909(n)`
-/

namespace A168116.P12515232796881497254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168189 n : ℚ) / (A253909 n : ℚ)

end

end A168116.P12515232796881497254

namespace A168116

/-- `A168189(n)/A253909(n)` -/
def P12515232796881497254.Spec : Prop :=
  ∀ n, P12515232796881497254.a n = (A168116 n : ℚ)

end A168116

/-! ## A168116.P2528891707040370070

`A170784(n)%A103623(n)`
-/

namespace A168116.P2528891707040370070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170784 n) (A103623 n)

end

end A168116.P2528891707040370070

namespace A168116

/-- `A170784(n)%A103623(n)` -/
def P2528891707040370070.Spec : Prop :=
  ∀ n, P2528891707040370070.a n = A168116 n

end A168116

/-! ## A168116.P651615614193293083

`A168675(n)+n-A168067(n)`
-/

namespace A168116.P651615614193293083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168675 n + ((n : ℤ) - A168067 n)

end

end A168116.P651615614193293083

namespace A168116

/-- `A168675(n)+n-A168067(n)` -/
def P651615614193293083.Spec : Prop :=
  ∀ n, P651615614193293083.a n = A168116 n

end A168116

/-! ## A168116.P13603604565077895249

`A170783(n)+n-A168118(n)`
-/

namespace A168116.P13603604565077895249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170783 n + ((n : ℤ) - A168118 n)

end

end A168116.P13603604565077895249

namespace A168116

/-- `A170783(n)+n-A168118(n)` -/
def P13603604565077895249.Spec : Prop :=
  ∀ n, P13603604565077895249.a n = A168116 n

end A168116

/-! ## A168116.P10140477262871652233

`A170784(n)+n-A168119(n)`
-/

namespace A168116.P10140477262871652233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170784 n + ((n : ℤ) - A168119 n)

end

end A168116.P10140477262871652233

namespace A168116

/-- `A170784(n)+n-A168119(n)` -/
def P10140477262871652233.Spec : Prop :=
  ∀ n, P10140477262871652233.a n = A168116 n

end A168116

/-! ## A168116.P2684858570921697350

`n*A168067(n)-A161680(n)`
-/

namespace A168116.P2684858570921697350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168067 n - A161680 n

end

end A168116.P2684858570921697350

namespace A168116

/-- `n*A168067(n)-A161680(n)` -/
def P2684858570921697350.Spec : Prop :=
  ∀ n, P2684858570921697350.a n = A168116 n

end A168116

/-! ## A168116.P17757216828508841787

`n²*A168029(n)-A135503(n)`
-/

namespace A168116.P17757216828508841787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168029 n - A135503 n

end

end A168116.P17757216828508841787

namespace A168116

/-- `n²*A168029(n)-A135503(n)` -/
def P17757216828508841787.Spec : Prop :=
  ∀ n, P17757216828508841787.a n = A168116 n

end A168116

/-!
# A168118: a(n) = n*(n^9+1)/2.

The programs for A168118, the canonical program `A168118.P12594359377140650970` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168118 has offset 0).

The definition of A168118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168118.P12594359377140650970

`n*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168118

/-- `n*(n^9+1)/2` -/
def P12594359377140650970.Spec : Prop :=
  ∀ n, P12594359377140650970.a n = (A168118 n : ℚ)

end A168118

/-! ## A168118.P6901201434675342317

`round(sqrt(C((n*n²²)²+n, 2)/2))`
-/

namespace A168118.P6901201434675342317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose ((n * (n ^ 2) ^ 2) ^ 2 + n) 2 : ℚ) / 2 : ℝ))

end

end A168118.P6901201434675342317

namespace A168118

/-- `round(sqrt(C((n*n²²)²+n, 2)/2))` -/
def P6901201434675342317.Spec : Prop :=
  ∀ n, P6901201434675342317.a n = A168118 n

end A168118

/-! ## A168118.P8054925093282585213

`A196292(n)/2`
-/

namespace A168118.P8054925093282585213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196292 n : ℚ) / 2

end

end A168118.P8054925093282585213

namespace A168118

/-- `A196292(n)/2` -/
def P8054925093282585213.Spec : Prop :=
  ∀ n, P8054925093282585213.a n = (A168118 n : ℚ)

end A168118

/-! ## A168118.P952117748536296333

`(A008454(n)+n)/2`
-/

namespace A168118.P952117748536296333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008454 n + (n : ℤ) : ℚ) / 2

end

end A168118.P952117748536296333

namespace A168118

/-- `(A008454(n)+n)/2` -/
def P952117748536296333.Spec : Prop :=
  ∀ n, P952117748536296333.a n = (A168118 n : ℚ)

end A168118

/-! ## A168118.P16699214919730806865

`A196291(n)/2+n`
-/

namespace A168118.P16699214919730806865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196291 n : ℚ) / 2 + (n : ℚ)

end

end A168118.P16699214919730806865

namespace A168118

/-- `A196291(n)/2+n` -/
def P16699214919730806865.Spec : Prop :=
  ∀ n, P16699214919730806865.a n = (A168118 n : ℚ)

end A168118

/-! ## A168118.P17280114103060794808

`(n+1-A024008(n))/2`
-/

namespace A168118.P17280114103060794808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A024008 n : ℚ) / 2

end

end A168118.P17280114103060794808

namespace A168118

/-- `(n+1-A024008(n))/2` -/
def P17280114103060794808.Spec : Prop :=
  ∀ n, P17280114103060794808.a n = (A168118 n : ℚ)

end A168118

/-! ## A168118.P4573556601703626510

`A168188(n)-A135503(n)`
-/

namespace A168118.P4573556601703626510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168188 n - A135503 n

end

end A168118.P4573556601703626510

namespace A168118

/-- `A168188(n)-A135503(n)` -/
def P4573556601703626510.Spec : Prop :=
  ∀ n, P4573556601703626510.a n = A168118 n

end A168118

/-! ## A168118.P62938409443009878

`A168126(n)-A161680(n)`
-/

namespace A168118.P62938409443009878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168126 n - A161680 n

end

end A168118.P62938409443009878

namespace A168118

/-- `A168126(n)-A161680(n)` -/
def P62938409443009878.Spec : Prop :=
  ∀ n, P62938409443009878.a n = A168118 n

end A168118

/-! ## A168118.P10990723334206999595

`A168153(n)/A028310(n)`
-/

namespace A168118.P10990723334206999595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168153 n : ℚ) / (A028310 n : ℚ)

end

end A168118.P10990723334206999595

namespace A168118

/-- `A168153(n)/A028310(n)` -/
def P10990723334206999595.Spec : Prop :=
  ∀ n, P10990723334206999595.a n = (A168118 n : ℚ)

end A168118

/-! ## A168118.P9471257865560851569

`A170783(n)+n-A168116(n)`
-/

namespace A168118.P9471257865560851569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170783 n + ((n : ℤ) - A168116 n)

end

end A168118.P9471257865560851569

namespace A168118

/-- `A170783(n)+n-A168116(n)` -/
def P9471257865560851569.Spec : Prop :=
  ∀ n, P9471257865560851569.a n = A168118 n

end A168118

/-! ## A168118.P2200259579962729043

`A170793(n)+n-A168119(n)`
-/

namespace A168118.P2200259579962729043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170793 n + ((n : ℤ) - A168119 n)

end

end A168118.P2200259579962729043

namespace A168118

/-- `A170793(n)+n-A168119(n)` -/
def P2200259579962729043.Spec : Prop :=
  ∀ n, P2200259579962729043.a n = A168118 n

end A168118

/-! ## A168118.P5185232891050746530

`n*A168116(n)-A161680(n)`
-/

namespace A168118.P5185232891050746530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168116 n - A161680 n

end

end A168118.P5185232891050746530

namespace A168118

/-- `n*A168116(n)-A161680(n)` -/
def P5185232891050746530.Spec : Prop :=
  ∀ n, P5185232891050746530.a n = A168118 n

end A168118

/-! ## A168118.P16937696177867785039

`n²*A168067(n)-A135503(n)`
-/

namespace A168118.P16937696177867785039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168067 n - A135503 n

end

end A168118.P16937696177867785039

namespace A168118

/-- `n²*A168067(n)-A135503(n)` -/
def P16937696177867785039.Spec : Prop :=
  ∀ n, P16937696177867785039.a n = A168118 n

end A168118

/-! ## A168118.P5553548266349489722

`A168067(n)+A168660(n)-A168635(n)`
-/

namespace A168118.P5553548266349489722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + (A168660 n - A168635 n)

end

end A168118.P5553548266349489722

namespace A168118

/-- `A168067(n)+A168660(n)-A168635(n)` -/
def P5553548266349489722.Spec : Prop :=
  ∀ n, P5553548266349489722.a n = A168118 n

end A168118

/-! ## A168118.P6818072980931355906

`A021003(n²)-A161680(n)`
-/

namespace A168118.P6818072980931355906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n ^ 2) - A161680 n

end

end A168118.P6818072980931355906

namespace A168118

/-- `A021003(n²)-A161680(n)` -/
def P6818072980931355906.Spec : Prop :=
  ∀ n, P6818072980931355906.a n = A168118 n

end A168118

/-! ## A168118.P9816172140551816868

`A021003(n²)+n-A000217(n)`
-/

namespace A168118.P9816172140551816868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n ^ 2) + ((n : ℤ) - A000217 n)

end

end A168118.P9816172140551816868

namespace A168118

/-- `A021003(n²)+n-A000217(n)` -/
def P9816172140551816868.Spec : Prop :=
  ∀ n, P9816172140551816868.a n = A168118 n

end A168118

/-!
# A168119: a(n) = n*(n^10+1)/2.

The programs for A168119, the canonical program `A168119.P13433056298139574105` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168119 has offset 0).

The definition of A168119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168119.P13433056298139574105

`n*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168119

/-- `n*(n^10+1)/2` -/
def P13433056298139574105.Spec : Prop :=
  ∀ n, P13433056298139574105.a n = (A168119 n : ℚ)

end A168119

/-! ## A168119.P11805744543168527068

`(A008455(n)+n)/2`
-/

namespace A168119.P11805744543168527068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008455 n + (n : ℤ) : ℚ) / 2

end

end A168119.P11805744543168527068

namespace A168119

/-- `(A008455(n)+n)/2` -/
def P11805744543168527068.Spec : Prop :=
  ∀ n, P11805744543168527068.a n = (A168119 n : ℚ)

end A168119

/-! ## A168119.P3075235292540493225

`A168153(n)-C(n, 2)`
-/

namespace A168119.P3075235292540493225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n - (Nat.choose n 2 : ℤ)

end

end A168119.P3075235292540493225

namespace A168119

/-- `A168153(n)-C(n, 2)` -/
def P3075235292540493225.Spec : Prop :=
  ∀ n, P3075235292540493225.a n = A168119 n

end A168119

/-! ## A168119.P5106911465155769287

`ceil((n-A024009(n))/2)`
-/

namespace A168119.P5106911465155769287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A024009 n : ℚ) / 2⌉

end

end A168119.P5106911465155769287

namespace A168119

/-- `ceil((n-A024009(n))/2)` -/
def P5106911465155769287.Spec : Prop :=
  ∀ n, P5106911465155769287.a n = A168119 n

end A168119

/-! ## A168119.P9475588932814747043

`A168189(n)-A135503(n)`
-/

namespace A168119.P9475588932814747043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168189 n - A135503 n

end

end A168119.P9475588932814747043

namespace A168119

/-- `A168189(n)-A135503(n)` -/
def P9475588932814747043.Spec : Prop :=
  ∀ n, P9475588932814747043.a n = A168119 n

end A168119

/-! ## A168119.P4642241121814899688

`A168153(n)-A161680(n)`
-/

namespace A168119.P4642241121814899688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n - A161680 n

end

end A168119.P4642241121814899688

namespace A168119

/-- `A168153(n)-A161680(n)` -/
def P4642241121814899688.Spec : Prop :=
  ∀ n, P4642241121814899688.a n = A168119 n

end A168119

/-! ## A168119.P5514177505513826541

`A170793(n)+n-A168118(n)`
-/

namespace A168119.P5514177505513826541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170793 n + ((n : ℤ) - A168118 n)

end

end A168119.P5514177505513826541

namespace A168119

/-- `A170793(n)+n-A168118(n)` -/
def P5514177505513826541.Spec : Prop :=
  ∀ n, P5514177505513826541.a n = A168119 n

end A168119

/-! ## A168119.P173794805398749835

`n*A168118(n)-A161680(n)`
-/

namespace A168119.P173794805398749835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168118 n - A161680 n

end

end A168119.P173794805398749835

namespace A168119

/-- `n*A168118(n)-A161680(n)` -/
def P173794805398749835.Spec : Prop :=
  ∀ n, P173794805398749835.a n = A168119 n

end A168119

/-! ## A168119.P2789055258213482616

`n²*A168116(n)-A135503(n)`
-/

namespace A168119.P2789055258213482616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168116 n - A135503 n

end

end A168119.P2789055258213482616

namespace A168119

/-- `n²*A168116(n)-A135503(n)` -/
def P2789055258213482616.Spec : Prop :=
  ∀ n, P2789055258213482616.a n = A168119 n

end A168119

/-! ## A168119.P369475877246251835

`A168067(n)+A168661(n)-A168635(n)`
-/

namespace A168119.P369475877246251835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + (A168661 n - A168635 n)

end

end A168119.P369475877246251835

namespace A168119

/-- `A168067(n)+A168661(n)-A168635(n)` -/
def P369475877246251835.Spec : Prop :=
  ∀ n, P369475877246251835.a n = A168119 n

end A168119

/-! ## A168119.P17787053348293007430

`A161680(n+1)+A161680(n)*A228293(n)`
-/

namespace A168119.P17787053348293007430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) + A161680 n * A228293 n

end

end A168119.P17787053348293007430

namespace A168119

/-- `A161680(n+1)+A161680(n)*A228293(n)` -/
def P17787053348293007430.Spec : Prop :=
  ∀ n, P17787053348293007430.a n = A168119 n

end A168119

/-!
# A168120: Square array T(n,k) read by antidiagonals in which column k lists each number A000009 followed by k-1 zeros, for k>0.

The programs for A168120, there is no canonical definition to state claims against.
-/

/-! ## A168120.P5323527944509666472

`A000009(A167192(n+1))*A051731(n+1)`
-/

namespace A168120.P5323527944509666472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A167192 (n + 1)).toNat * A051731 (n + 1)

end

end A168120.P5323527944509666472

/-! ## A168120.P16189166662330280084

`A000009(A010766(n+1)-1)*A051731(n+1)`
-/

namespace A168120.P16189166662330280084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A010766 (n + 1) - 1).toNat * A051731 (n + 1)

end

end A168120.P16189166662330280084

/-!
# A168121: Triangle T(n,k) read by rows in which column k lists each number A000009 followed by k-1 zeros, for k>0.

The programs for A168121, there is no canonical definition to state claims against.
-/

/-! ## A168121.P8153659296535788103

`A054846(A168019(n))`
-/

namespace A168121.P8153659296535788103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A168019 n).toNat

end

end A168121.P8153659296535788103

/-! ## A168121.P16135602741912993469

`A035457(A143315(n+1)+1)`
-/

namespace A168121.P16135602741912993469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A143315 (n + 1) + 1).toNat

end

end A168121.P16135602741912993469

/-! ## A168121.P3073299791706846285

`A052839(A126988(n+1))-1`
-/

namespace A168121.P3073299791706846285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A126988 (n + 1)).toNat - 1

end

end A168121.P3073299791706846285

/-! ## A168121.P13948912118449481587

`A117409(A126988(n+1)+2)`
-/

namespace A168121.P13948912118449481587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A126988 (n + 1) + 2).toNat

end

end A168121.P13948912118449481587

/-! ## A168121.P17506349329971378977

`A351008(A126988(n+1)+2)`
-/

namespace A168121.P17506349329971378977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351008 (A126988 (n + 1) + 2).toNat

end

end A168121.P17506349329971378977

/-! ## A168121.P8209402216609170150

`A053266(2*A126988(n+1))`
-/

namespace A168121.P8209402216609170150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 (2 * A126988 (n + 1)).toNat

end

end A168121.P8209402216609170150

/-! ## A168121.P6360150424744725246

`∑{d}[A126988(n+1), A078374(#)]`
-/

namespace A168121.P6360150424744725246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078374 d

end

end A168121.P6360150424744725246

/-! ## A168121.P5900442495739281915

`A035457(A000267(A126988(n+1)²))`
-/

namespace A168121.P5900442495739281915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A000267 (A126988 (n + 1) ^ 2).toNat).toNat

end

end A168121.P5900442495739281915

/-! ## A168121.P14183671854928910298

`A048766(∑{d}[A126988(n+1), A008860(#)])`
-/

namespace A168121.P14183671854928910298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ d ∈ Nat.divisors (f1 n).natAbs, A008860 d).toNat

end

end A168121.P14183671854928910298

/-!
# A168122: a(n) = n^2*(n^4+1)/2.

The programs for A168122, the canonical program `A168122.P11399665017750262028` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168122 has offset 0).

The definition of A168122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168122.P11399665017750262028

`(n^6+n²)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168122

/-- `(n^6+n²)/2` -/
def P11399665017750262028.Spec : Prop :=
  ∀ n, P11399665017750262028.a n = (A168122 n : ℚ)

end A168122

/-! ## A168122.P580335648218692358

`n²*(n^4+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168122.P580335648218692358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * ((n ^ 4 + 1 : ℚ) / 2)

end

end A168122.P580335648218692358

namespace A168122

/-- `n²*(n^4+1)/2` -/
def P580335648218692358.Spec : Prop :=
  ∀ n, P580335648218692358.a n = (A168122 n : ℚ)

end A168122

/-! ## A168122.P6705838620066059091

`n²+A136008(n)/2`
-/

namespace A168122.P6705838620066059091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A136008 n : ℚ) / 2

end

end A168122.P6705838620066059091

namespace A168122

/-- `n²+A136008(n)/2` -/
def P6705838620066059091.Spec : Prop :=
  ∀ n, P6705838620066059091.a n = (A168122 n : ℚ)

end A168122

/-! ## A168122.P15416823461156049429

`A085744(n)+n*∑[n]`
-/

namespace A168122.P15416823461156049429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A168122.P15416823461156049429

namespace A168122

/-- `A085744(n)+n*∑[n]` -/
def P15416823461156049429.Spec : Prop :=
  ∀ n, P15416823461156049429.a n = A168122 n

end A168122

/-! ## A168122.P13108191156698269907

`(A060884(n)+1)*∑[n]-n`
-/

namespace A168122.P13108191156698269907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060884 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A168122.P13108191156698269907

namespace A168122

/-- `(A060884(n)+1)*∑[n]-n` -/
def P13108191156698269907.Spec : Prop :=
  ∀ n, P13108191156698269907.a n = A168122 n

end A168122

/-! ## A168122.P8958168450986126940

`A168627(n)%(n^6+n^3+1)`
-/

namespace A168122.P8958168450986126940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168627 n) (n ^ 6 + (n ^ 3 + 1) : ℤ)

end

end A168122.P8958168450986126940

namespace A168122

/-- `A168627(n)%(n^6+n^3+1)` -/
def P8958168450986126940.Spec : Prop :=
  ∀ n, P8958168450986126940.a n = A168122 n

end A168122

/-! ## A168122.P628467444025975351

`A167963(n)+A161680(n)`
-/

namespace A168122.P628467444025975351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n + A161680 n

end

end A168122.P628467444025975351

namespace A168122

/-- `A167963(n)+A161680(n)` -/
def P628467444025975351.Spec : Prop :=
  ∀ n, P628467444025975351.a n = A168122 n

end A168122

/-! ## A168122.P365065007689191918

`A168564(n)%A053717(n)`
-/

namespace A168122.P365065007689191918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168564 n) (A053717 n)

end

end A168122.P365065007689191918

namespace A168122

/-- `A168564(n)%A053717(n)` -/
def P365065007689191918.Spec : Prop :=
  ∀ n, P365065007689191918.a n = A168122 n

end A168122

/-! ## A168122.P4393306867870890336

`lcm(A021003(n), A129194(n))`
-/

namespace A168122.P4393306867870890336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A021003 n) (A129194 n)

end

end A168122.P4393306867870890336

namespace A168122

/-- `lcm(A021003(n), A129194(n))` -/
def P4393306867870890336.Spec : Prop :=
  ∀ n, (P4393306867870890336.a n : ℤ) = A168122 n

end A168122

/-! ## A168122.P4836010886523947597

`A135509(n)+A135503(n)²`
-/

namespace A168122.P4836010886523947597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135509 n + A135503 n ^ 2

end

end A168122.P4836010886523947597

namespace A168122

/-- `A135509(n)+A135503(n)²` -/
def P4836010886523947597.Spec : Prop :=
  ∀ n, P4836010886523947597.a n = A168122 n

end A168122

/-! ## A168122.P13015900134624451802

`2*A006003(n)²-A000583(n)`
-/

namespace A168122.P13015900134624451802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006003 n ^ 2 - A000583 n

end

end A168122.P13015900134624451802

namespace A168122

/-- `2*A006003(n)²-A000583(n)` -/
def P13015900134624451802.Spec : Prop :=
  ∀ n, P13015900134624451802.a n = A168122 n

end A168122

/-! ## A168122.P18258398757805049655

`A034262(n)²/2-A000583(n)`
-/

namespace A168122.P18258398757805049655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034262 n ^ 2 : ℚ) / 2 - (A000583 n : ℚ)

end

end A168122.P18258398757805049655

namespace A168122

/-- `A034262(n)²/2-A000583(n)` -/
def P18258398757805049655.Spec : Prop :=
  ∀ n, P18258398757805049655.a n = (A168122 n : ℚ)

end A168122

/-! ## A168122.P10492717326946264299

`n²+A002378(n)*A071252(n)`
-/

namespace A168122.P10492717326946264299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A002378 n * A071252 n

end

end A168122.P10492717326946264299

namespace A168122

/-- `n²+A002378(n)*A071252(n)` -/
def P10492717326946264299.Spec : Prop :=
  ∀ n, P10492717326946264299.a n = A168122 n

end A168122

/-! ## A168122.P10558095852469771244

`n²+A034262(n)*A135503(n)`
-/

namespace A168122.P10558095852469771244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A034262 n * A135503 n

end

end A168122.P10558095852469771244

namespace A168122

/-- `n²+A034262(n)*A135503(n)` -/
def P10558095852469771244.Spec : Prop :=
  ∀ n, P10558095852469771244.a n = A168122 n

end A168122

/-! ## A168122.P7776592065366801792

`A000217(n)+A168526(n)-A168029(n)`
-/

namespace A168122.P7776592065366801792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A168526 n - A168029 n)

end

end A168122.P7776592065366801792

namespace A168122

/-- `A000217(n)+A168526(n)-A168029(n)` -/
def P7776592065366801792.Spec : Prop :=
  ∀ n, P7776592065366801792.a n = A168122 n

end A168122

/-! ## A168122.P12671189419757960049

`A006003(n²)`
-/

namespace A168122.P12671189419757960049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n ^ 2)

end

end A168122.P12671189419757960049

namespace A168122

/-- `A006003(n²)` -/
def P12671189419757960049.Spec : Prop :=
  ∀ n, P12671189419757960049.a n = A168122 n

end A168122

/-! ## A168122.P3234607345669278468

`sqrt(A135509(n²))`
-/

namespace A168122.P3234607345669278468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135509 (n ^ 2) : ℝ)

end

end A168122.P3234607345669278468

namespace A168122

/-- `sqrt(A135509(n²))` -/
def P3234607345669278468.Spec : Prop :=
  ∀ n, P3234607345669278468.a n = (A168122 n : ℝ)

end A168122

/-! ## A168122.P17166562678504231955

`n²+A135503(n²)`
-/

namespace A168122.P17166562678504231955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A135503 (n ^ 2)

end

end A168122.P17166562678504231955

namespace A168122

/-- `n²+A135503(n²)` -/
def P17166562678504231955.Spec : Prop :=
  ∀ n, P17166562678504231955.a n = A168122 n

end A168122

/-! ## A168122.P11431532235201182402

`A229183(n²)-n²`
-/

namespace A168122.P11431532235201182402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 (n ^ 2) - (n ^ 2 : ℤ)

end

end A168122.P11431532235201182402

namespace A168122

/-- `A229183(n²)-n²` -/
def P11431532235201182402.Spec : Prop :=
  ∀ n, P11431532235201182402.a n = A168122 n

end A168122

/-!
# A168123: a(n) = n^2*(n^5+1)/2.

The programs for A168123, the canonical program `A168123.P8881922350872634059` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168123 has offset 0).

The definition of A168123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168123.P8881922350872634059

`n²*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168123

/-- `n²*(n^5+1)/2` -/
def P8881922350872634059.Spec : Prop :=
  ∀ n, P8881922350872634059.a n = (A168123 n : ℚ)

end A168123

/-! ## A168123.P14064034454943279005

`A168194(n)-C(n², 2)`
-/

namespace A168123.P14064034454943279005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168194 n - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168123.P14064034454943279005

namespace A168123

/-- `A168194(n)-C(n², 2)` -/
def P14064034454943279005.Spec : Prop :=
  ∀ n, P14064034454943279005.a n = A168123 n

end A168123

/-! ## A168123.P12635742804103041417

`∑[n]+A168029(n)-n`
-/

namespace A168123.P12635742804103041417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A168029 n - (n : ℤ))

end

end A168123.P12635742804103041417

namespace A168123

/-- `∑[n]+A168029(n)-n` -/
def P12635742804103041417.Spec : Prop :=
  ∀ n, P12635742804103041417.a n = A168123 n

end A168123

/-! ## A168123.P572990580232441252

`ceil((n²+A001015(n)+1)/2)-1`
-/

namespace A168123.P572990580232441252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℤ) + (A001015 n + 1) : ℚ) / 2⌉ - 1

end

end A168123.P572990580232441252

namespace A168123

/-- `ceil((n²+A001015(n)+1)/2)-1` -/
def P572990580232441252.Spec : Prop :=
  ∀ n, P572990580232441252.a n = A168123 n

end A168123

/-! ## A168123.P404319011347485970

`A168029(n)+A161680(n)`
-/

namespace A168123.P404319011347485970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + A161680 n

end

end A168123.P404319011347485970

namespace A168123

/-- `A168029(n)+A161680(n)` -/
def P404319011347485970.Spec : Prop :=
  ∀ n, P404319011347485970.a n = A168123 n

end A168123

/-! ## A168123.P4893600857242941016

`A168180(n)/A028310(n)`
-/

namespace A168123.P4893600857242941016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168180 n : ℚ) / (A028310 n : ℚ)

end

end A168123.P4893600857242941016

namespace A168123

/-- `A168180(n)/A028310(n)` -/
def P4893600857242941016.Spec : Prop :=
  ∀ n, P4893600857242941016.a n = (A168123 n : ℚ)

end A168123

/-! ## A168123.P5790658653877861639

`A168196(n)/A253909(n)`
-/

namespace A168123.P5790658653877861639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168196 n : ℚ) / (A253909 n : ℚ)

end

end A168123.P5790658653877861639

namespace A168123

/-- `A168196(n)/A253909(n)` -/
def P5790658653877861639.Spec : Prop :=
  ∀ n, P5790658653877861639.a n = (A168123 n : ℚ)

end A168123

/-! ## A168123.P1428200211833815318

`A168660(n)%A053717(n)`
-/

namespace A168123.P1428200211833815318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168660 n) (A053717 n)

end

end A168123.P1428200211833815318

namespace A168123

/-- `A168660(n)%A053717(n)` -/
def P1428200211833815318.Spec : Prop :=
  ∀ n, P1428200211833815318.a n = A168123 n

end A168123

/-! ## A168123.P12446746581393927382

`A168661(n)%A102909(n)`
-/

namespace A168123.P12446746581393927382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168661 n) (A102909 n)

end

end A168123.P12446746581393927382

namespace A168123

/-- `A168661(n)%A102909(n)` -/
def P12446746581393927382.Spec : Prop :=
  ∀ n, P12446746581393927382.a n = A168123 n

end A168123

/-! ## A168123.P17282031746162375518

`lcm(A002411(n), A167963(n))`
-/

namespace A168123.P17282031746162375518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002411 n) (A167963 n)

end

end A168123.P17282031746162375518

namespace A168123

/-- `lcm(A002411(n), A167963(n))` -/
def P17282031746162375518.Spec : Prop :=
  ∀ n, (P17282031746162375518.a n : ℤ) = A168123 n

end A168123

/-!
# A168124: a(n) = n^2*(n^6+1)/2.

The programs for A168124, the canonical program `A168124.P12261092909522125276` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168124 has offset 0).

The definition of A168124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168124.P12261092909522125276

`n²*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168124

/-- `n²*(n^6+1)/2` -/
def P12261092909522125276.Spec : Prop :=
  ∀ n, P12261092909522125276.a n = (A168124 n : ℚ)

end A168124

/-! ## A168124.P11637548451863344349

`∑[n]+A195859(n)/2`
-/

namespace A168124.P11637548451863344349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A195859 n : ℚ) / 2

end

end A168124.P11637548451863344349

namespace A168124

/-- `∑[n]+A195859(n)/2` -/
def P11637548451863344349.Spec : Prop :=
  ∀ n, P11637548451863344349.a n = (A168124 n : ℚ)

end A168124

/-! ## A168124.P15962943115786789074

`A168067(n)+A161680(n)`
-/

namespace A168124.P15962943115786789074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + A161680 n

end

end A168124.P15962943115786789074

namespace A168124

/-- `A168067(n)+A161680(n)` -/
def P15962943115786789074.Spec : Prop :=
  ∀ n, P15962943115786789074.a n = A168124 n

end A168124

/-! ## A168124.P917991133050580647

`A168187(n)/A028310(n)`
-/

namespace A168124.P917991133050580647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168187 n : ℚ) / (A028310 n : ℚ)

end

end A168124.P917991133050580647

namespace A168124

/-- `A168187(n)/A028310(n)` -/
def P917991133050580647.Spec : Prop :=
  ∀ n, P917991133050580647.a n = (A168124 n : ℚ)

end A168124

/-! ## A168124.P15197569645761535054

`A168220(n)/A253909(n)`
-/

namespace A168124.P15197569645761535054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168220 n : ℚ) / (A253909 n : ℚ)

end

end A168124.P15197569645761535054

namespace A168124

/-- `A168220(n)/A253909(n)` -/
def P15197569645761535054.Spec : Prop :=
  ∀ n, P15197569645761535054.a n = (A168124 n : ℚ)

end A168124

/-! ## A168124.P9886045454434554344

`A170775(n)%A102909(n)`
-/

namespace A168124.P9886045454434554344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170775 n) (A102909 n)

end

end A168124.P9886045454434554344

namespace A168124

/-- `A170775(n)%A102909(n)` -/
def P9886045454434554344.Spec : Prop :=
  ∀ n, P9886045454434554344.a n = A168124 n

end A168124

/-! ## A168124.P15922056689299306009

`lcm(A037270(n), A060886(n))`
-/

namespace A168124.P15922056689299306009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037270 n) (A060886 n)

end

end A168124.P15922056689299306009

namespace A168124

/-- `lcm(A037270(n), A060886(n))` -/
def P15922056689299306009.Spec : Prop :=
  ∀ n, (P15922056689299306009.a n : ℤ) = A168124 n

end A168124

/-! ## A168124.P12479288620742789648

`lcm(A129194(n), A168029(n))`
-/

namespace A168124.P12479288620742789648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129194 n) (A168029 n)

end

end A168124.P12479288620742789648

namespace A168124

/-- `lcm(A129194(n), A168029(n))` -/
def P12479288620742789648.Spec : Prop :=
  ∀ n, (P12479288620742789648.a n : ℤ) = A168124 n

end A168124

/-! ## A168124.P8240178840098195336

`2*A027441(n)²-A000584(n)`
-/

namespace A168124.P8240178840098195336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027441 n ^ 2 - A000584 n

end

end A168124.P8240178840098195336

namespace A168124

/-- `2*A027441(n)²-A000584(n)` -/
def P8240178840098195336.Spec : Prop :=
  ∀ n, P8240178840098195336.a n = A168124 n

end A168124

/-! ## A168124.P17396792839238550681

`A027441(n²)`
-/

namespace A168124.P17396792839238550681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 (n ^ 2)

end

end A168124.P17396792839238550681

namespace A168124

/-- `A027441(n²)` -/
def P17396792839238550681.Spec : Prop :=
  ∀ n, P17396792839238550681.a n = A168124 n

end A168124

/-! ## A168124.P4835527914272153099

`A091940(A002522(n))/2`
-/

namespace A168124.P4835527914272153099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091940 (A002522 n).toNat : ℚ) / 2

end

end A168124.P4835527914272153099

namespace A168124

/-- `A091940(A002522(n))/2` -/
def P4835527914272153099.Spec : Prop :=
  ∀ n, P4835527914272153099.a n = (A168124 n : ℚ)

end A168124

/-! ## A168124.P7287569779319107853

`A037270(n²)-A161680(n²)`
-/

namespace A168124.P7287569779319107853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 (n ^ 2) - A161680 (n ^ 2)

end

end A168124.P7287569779319107853

namespace A168124

/-- `A037270(n²)-A161680(n²)` -/
def P7287569779319107853.Spec : Prop :=
  ∀ n, P7287569779319107853.a n = A168124 n

end A168124

/-!
# A168125: a(n) = n^2*(n^7+1)/2.

The programs for A168125, the canonical program `A168125.P2592964371881151134` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168125 has offset 0).

The definition of A168125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168125.P2592964371881151134

`n²*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168125

/-- `n²*(n^7+1)/2` -/
def P2592964371881151134.Spec : Prop :=
  ∀ n, P2592964371881151134.a n = (A168125 n : ℚ)

end A168125

/-! ## A168125.P14439059507418182073

`∑[n]+A196289(n)/2`
-/

namespace A168125.P14439059507418182073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A196289 n : ℚ) / 2

end

end A168125.P14439059507418182073

namespace A168125

/-- `∑[n]+A196289(n)/2` -/
def P14439059507418182073.Spec : Prop :=
  ∀ n, P14439059507418182073.a n = (A168125 n : ℚ)

end A168125

/-! ## A168125.P3868490085460929542

`∑[n]+A168116(n)-n`
-/

namespace A168125.P3868490085460929542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A168116 n - (n : ℤ))

end

end A168125.P3868490085460929542

namespace A168125

/-- `∑[n]+A168116(n)-n` -/
def P3868490085460929542.Spec : Prop :=
  ∀ n, P3868490085460929542.a n = A168125 n

end A168125

/-! ## A168125.P12330944607530989441

`A168116(n)+A161680(n)`
-/

namespace A168125.P12330944607530989441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168116 n + A161680 n

end

end A168125.P12330944607530989441

namespace A168125

/-- `A168116(n)+A161680(n)` -/
def P12330944607530989441.Spec : Prop :=
  ∀ n, P12330944607530989441.a n = A168125 n

end A168125

/-! ## A168125.P2062489543758711490

`A168188(n)/A028310(n)`
-/

namespace A168125.P2062489543758711490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168188 n : ℚ) / (A028310 n : ℚ)

end

end A168125.P2062489543758711490

namespace A168125

/-- `A168188(n)/A028310(n)` -/
def P2062489543758711490.Spec : Prop :=
  ∀ n, P2062489543758711490.a n = (A168125 n : ℚ)

end A168125

/-! ## A168125.P7675871278223643044

`A168225(n)/A253909(n)`
-/

namespace A168125.P7675871278223643044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168225 n : ℚ) / (A253909 n : ℚ)

end

end A168125.P7675871278223643044

namespace A168125

/-- `A168225(n)/A253909(n)` -/
def P7675871278223643044.Spec : Prop :=
  ∀ n, P7675871278223643044.a n = (A168125 n : ℚ)

end A168125

/-! ## A168125.P6400406655868282360

`lcm(A002411(n), A168067(n))`
-/

namespace A168125.P6400406655868282360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002411 n) (A168067 n)

end

end A168125.P6400406655868282360

namespace A168125

/-- `lcm(A002411(n), A168067(n))` -/
def P6400406655868282360.Spec : Prop :=
  ∀ n, (P6400406655868282360.a n : ℤ) = A168125 n

end A168125

/-!
# A168126: a(n) = n^2*(n^8+1)/2.

The programs for A168126, the canonical program `A168126.P6419090404332285102` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168126 has offset 0).

The definition of A168126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168126.P6419090404332285102

`n²*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168126

/-- `n²*(n^8+1)/2` -/
def P6419090404332285102.Spec : Prop :=
  ∀ n, P6419090404332285102.a n = (A168126 n : ℚ)

end A168126

/-! ## A168126.P115470833601427444

`n*A196290(n)/2`
-/

namespace A168126.P115470833601427444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A196290 n : ℚ) / 2

end

end A168126.P115470833601427444

namespace A168126

/-- `n*A196290(n)/2` -/
def P115470833601427444.Spec : Prop :=
  ∀ n, P115470833601427444.a n = (A168126 n : ℚ)

end A168126

/-! ## A168126.P14025558218502941895

`∑[n]+A196291(n)/2`
-/

namespace A168126.P14025558218502941895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A196291 n : ℚ) / 2

end

end A168126.P14025558218502941895

namespace A168126

/-- `∑[n]+A196291(n)/2` -/
def P14025558218502941895.Spec : Prop :=
  ∀ n, P14025558218502941895.a n = (A168126 n : ℚ)

end A168126

/-! ## A168126.P2146946601790850046

`A168118(n)+A161680(n)`
-/

namespace A168126.P2146946601790850046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168118 n + A161680 n

end

end A168126.P2146946601790850046

namespace A168126

/-- `A168118(n)+A161680(n)` -/
def P2146946601790850046.Spec : Prop :=
  ∀ n, P2146946601790850046.a n = A168126 n

end A168126

/-! ## A168126.P8611129362136012917

`A168189(n)/A028310(n)`
-/

namespace A168126.P8611129362136012917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168189 n : ℚ) / (A028310 n : ℚ)

end

end A168126.P8611129362136012917

namespace A168126

/-- `A168189(n)/A028310(n)` -/
def P8611129362136012917.Spec : Prop :=
  ∀ n, P8611129362136012917.a n = (A168126 n : ℚ)

end A168126

/-! ## A168126.P16694182681310523414

`lcm(A129194(n), A168116(n))`
-/

namespace A168126.P16694182681310523414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129194 n) (A168116 n)

end

end A168126.P16694182681310523414

namespace A168126

/-- `lcm(A129194(n), A168116(n))` -/
def P16694182681310523414.Spec : Prop :=
  ∀ n, (P16694182681310523414.a n : ℤ) = A168126 n

end A168126

/-! ## A168126.P11573730796417360601

`2*A021003(n)²-A001014(n)`
-/

namespace A168126.P11573730796417360601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021003 n ^ 2 - A001014 n

end

end A168126.P11573730796417360601

namespace A168126

/-- `2*A021003(n)²-A001014(n)` -/
def P11573730796417360601.Spec : Prop :=
  ∀ n, P11573730796417360601.a n = A168126 n

end A168126

/-! ## A168126.P16335936482429578033

`A021003(n²)`
-/

namespace A168126.P16335936482429578033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n ^ 2)

end

end A168126.P16335936482429578033

namespace A168126

/-- `A021003(n²)` -/
def P16335936482429578033.Spec : Prop :=
  ∀ n, P16335936482429578033.a n = A168126 n

end A168126

/-! ## A168126.P15784588553822782242

`A131471(n²)/2`
-/

namespace A168126.P15784588553822782242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131471 (n ^ 2) : ℚ) / 2

end

end A168126.P15784588553822782242

namespace A168126

/-- `A131471(n²)/2` -/
def P15784588553822782242.Spec : Prop :=
  ∀ n, P15784588553822782242.a n = (A168126 n : ℚ)

end A168126

/-!
# A168128: Numbers Sum_(j=1..k) sigma(j) / sigma(k) when this expression is an integer.

The programs for A168128, there is no canonical definition to state claims against.
-/

/-! ## A168128.P5863954778617298571

`A168130(n+1)/∑{d}[A168127(n+1), #]`
-/

namespace A168128.P5863954778617298571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168127 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168130 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ)

end

end A168128.P5863954778617298571

/-! ## A168128.P9341495339429853449

`A168130(n+1)/A000203(A168127(n+1))`
-/

namespace A168128.P9341495339429853449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168130 (n + 1) : ℚ) / (A000203 (A168127 (n + 1)).toNat : ℚ)

end

end A168128.P9341495339429853449

/-!
# A168129: Numbers sigma(k) when Sum_(j=1..k) sigma(j) / sigma(k) is an integer.

The programs for A168129, there is no canonical definition to state claims against.
-/

/-! ## A168129.P10852468625181196484

`∑{d}[A168127(A183108(n+1)), #]`
-/

namespace A168129.P10852468625181196484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168127 (A183108 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A168129.P10852468625181196484

/-! ## A168129.P13330895577546565859

`∑{d}[A168127(A255641(n+1)), #]`
-/

namespace A168129.P13330895577546565859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168127 (A255641 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A168129.P13330895577546565859

/-!
# A168130: Numbers Sum_(j=1..k) sigma(j) when Sum_(j=1..k) sigma(j) / sigma(k) is an integer.

The programs for A168130, there is no canonical definition to state claims against.
-/

/-! ## A168130.P3574803409804827676

`A024916(A168127(n+1))`
-/

namespace A168130.P3574803409804827676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A168127 (n + 1)).toNat

end

end A168130.P3574803409804827676

/-! ## A168130.P14689641459213088671

`∑{d}[A168127(n+1), #*A168128(n+1)]`
-/

namespace A168130.P14689641459213088671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A168128 (n + 1)

end

end A168130.P14689641459213088671

/-! ## A168130.P16087273304431648086

`A000203(A168127(n+1))*A168128(n+1)`
-/

namespace A168130.P16087273304431648086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A168127 (n + 1)).toNat * A168128 (n + 1)

end

end A168130.P16087273304431648086

/-!
# A168131: Number of squares and rectangles that are created at the n-th stage in the corner toothpick structure (see A152980, A153006).

The programs for A168131, there is no canonical definition to state claims against.
-/

/-! ## A168131.P11367683608858813844

`A151860(n)+A151859(abs(1-n))`
-/

namespace A168131.P11367683608858813844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151860 n + A151859 |1 - (n : ℤ)|.toNat

end

end A168131.P11367683608858813844

/-! ## A168131.P1640436950176331093

`(A139251(n)-Δ[A162777(n)])/2`
-/

namespace A168131.P1640436950176331093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A168131.P1640436950176331093

/-! ## A168131.P8995595642146489539

`A001281(A139251(n)-Δ[A162777(n)])`
-/

namespace A168131.P8995595642146489539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A139251 n - (f1 (n + 1) - f1 n)).toNat

end

end A168131.P8995595642146489539

/-! ## A168131.P8273908462220749230

`A004525(A139251(n)-Δ[A162777(n)])`
-/

namespace A168131.P8273908462220749230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A139251 n - (f1 (n + 1) - f1 n)).toNat

end

end A168131.P8273908462220749230

/-! ## A168131.P16106609681617561343

`A004526(A139251(n)-Δ[A162777(n)])`
-/

namespace A168131.P16106609681617561343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A139251 n - (f1 (n + 1) - f1 n)).toNat

end

end A168131.P16106609681617561343

/-! ## A168131.P7490059087681785634

`A006370(A139251(n)-Δ[A162777(n)])`
-/

namespace A168131.P7490059087681785634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A139251 n - (f1 (n + 1) - f1 n)).toNat

end

end A168131.P7490059087681785634

/-! ## A168131.P4181902568160734680

`A014682(A139251(n)-Δ[A162777(n)])`
-/

namespace A168131.P4181902568160734680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A139251 n - (f1 (n + 1) - f1 n)).toNat

end

end A168131.P4181902568160734680

/-! ## A168131.P16328543236350015318

`A025480(A139251(n)-Δ[A162777(n)])`
-/

namespace A168131.P16328543236350015318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A139251 n - (f1 (n + 1) - f1 n)).toNat

end

end A168131.P16328543236350015318

/-! ## A168131.P15576122656027640580

`A029578(A139251(n)-Δ[A162777(n)])`
-/

namespace A168131.P15576122656027640580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A139251 n - (f1 (n + 1) - f1 n)).toNat

end

end A168131.P15576122656027640580

/-! ## A168131.P6632155163834335871

`A002265(2*(A139251(n)-Δ[A162777(n)]))`
-/

namespace A168131.P6632155163834335871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A139251 n - (f1 (n + 1) - f1 n))).toNat

end

end A168131.P6632155163834335871

/-!
# A168132: Numbers m = Sum_{k=1..n} sigma(k)/k such that Sum_{k=1..n} sigma(k)/k is an integer for any k.

The programs for A168132, there is no canonical definition to state claims against.
-/

/-! ## A168132.P17645501868205123614

`A168133(n+1)/A056550(n+1)`
-/

namespace A168132.P17645501868205123614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168133 (n + 1) : ℚ) / (A056550 (n + 1) : ℚ)

end

end A168132.P17645501868205123614

/-! ## A168132.P2968590445843221833

`A168133(n+1)/(eq[0, A294885(n+1)]+1)`
-/

namespace A168132.P2968590445843221833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294885 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168133 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ)

end

end A168132.P2968590445843221833

/-! ## A168132.P5092352414633006496

`A024916(eq[0, A294885(n+1)]+1)/A056550(n+1)`
-/

namespace A168132.P5092352414633006496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294885 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A056550 (n + 1) : ℚ)

end

end A168132.P5092352414633006496

/-! ## A168132.P17236758513190845143

`A168133(n+1)/(eq[1, A000005(A004125(n+1)%(n+1)+1)]+1)`
-/

namespace A168132.P17236758513190845143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A004125 (n + 1)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168133 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ)

end

end A168132.P17236758513190845143

/-! ## A168132.P423973517387695518

`A024916(A056550(n+1))/A056550(A000027(n+1))`
-/

namespace A168132.P423973517387695518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024916 (A056550 (n + 1)).toNat : ℚ) / (A056550 (A000027 (n + 1)).toNat : ℚ)

end

end A168132.P423973517387695518

/-!
# A168133: Numbers m = Sum_{k=1..n} sigma(k) such that Sum_{k=1..n} sigma(k) is divisible by k.

The programs for A168133, there is no canonical definition to state claims against.
-/

/-! ## A168133.P9399650018558334556

`A056550(n+1)*A168132(n+1)`
-/

namespace A168133.P9399650018558334556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056550 (n + 1) * A168132 (n + 1)

end

end A168133.P9399650018558334556

/-! ## A168133.P4816444069318142367

`(eq[0, A294885(n+1)]+1)*A168132(n+1)`
-/

namespace A168133.P4816444069318142367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A168132 (n + 1)

end

end A168133.P4816444069318142367

/-! ## A168133.P4050601208616364517

`A024916(A056550(n+1))`
-/

namespace A168133.P4050601208616364517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A056550 (n + 1)).toNat

end

end A168133.P4050601208616364517

/-! ## A168133.P16568255051881258878

`A024916(eq[0, A294885(n+1)]+1)`
-/

namespace A168133.P16568255051881258878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A168133.P16568255051881258878

/-! ## A168133.P9318097024312717700

`record[gcd(A024916(n+1), A294885(n+1))]`
-/

namespace A168133.P9318097024312717700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024916 (n + 1)) (A294885 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168133.P9318097024312717700

/-!
# A168134: Numbers not of the form 7*k+11*m (with nonnegative k, m).

The programs for A168134, there is no canonical definition to state claims against.
-/

/-! ## A168134.P2696955700447121800

`comp[6*n%11+n]`
-/

namespace A168134.P2696955700447121800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n % 11) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A168134.P2696955700447121800

/-! ## A168134.P16491671119244581215

`eq[0, A168201(n)]`
-/

namespace A168134.P16491671119244581215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168134.P16491671119244581215

/-! ## A168134.P8677821242624185128

`eq[0, ∑[A011642(n)]]`
-/

namespace A168134.P8677821242624185128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168134.P8677821242624185128

/-! ## A168134.P1622352971598150131

`lt[A194524(n+2), 4]`
-/

namespace A168134.P1622352971598150131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194524 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A168134.P1622352971598150131

/-! ## A168134.P18312653306810040745

`lt[A168201(n+1), 1]+1`
-/

namespace A168134.P18312653306810040745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A168134.P18312653306810040745

/-!
# A168135: Numbers expressible as 7*k+11*m (with nonnegative k, m) exactly in one way.

The programs for A168135, there is no canonical definition to state claims against.
-/

/-! ## A168135.P485380374257088020

`eq[ceil(acot(n)), A168201(n)]`
-/

namespace A168135.P485380374257088020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168135.P485380374257088020

/-! ## A168135.P9637733392230249910

`eq[1, A168201(n+1)]+1`
-/

namespace A168135.P9637733392230249910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168135.P9637733392230249910

/-! ## A168135.P612161477482367714

`eq[1, A168201(abs(C(2, n²)-n))]`
-/

namespace A168135.P612161477482367714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 |(Nat.choose 2 (n ^ 2) : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168135.P612161477482367714

/-! ## A168135.P13034120052813817661

`eq[1, A168201(n-a(a(n-1)))]` with `a(0)=0`
-/

namespace A168135.P13034120052813817661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A168201 ((n : ℤ) - f2 (f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168135.P13034120052813817661

/-! ## A168135.P18325996780555037387

`eq[1, A168201(A028310(n))]`
-/

namespace A168135.P18325996780555037387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168135.P18325996780555037387

/-! ## A168135.P8551427737376764208

`eq[A054977(n), A168201(n)]`
-/

namespace A168135.P8551427737376764208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168135.P8551427737376764208

/-! ## A168135.P16412281553535370074

`eq[A057427(n), A168201(n)]`
-/

namespace A168135.P16412281553535370074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168135.P16412281553535370074

/-! ## A168135.P1081676333810555270

`eq[A141044(n), A168201(n)]`
-/

namespace A168135.P1081676333810555270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168135.P1081676333810555270

/-! ## A168135.P7840651715631458347

`eq[A158388(n), A168201(n)]`
-/

namespace A168135.P7840651715631458347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168135.P7840651715631458347

/-! ## A168135.P3043410765023212272

`eq[A168201(n), A178334(n)]`
-/

namespace A168135.P3043410765023212272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168135.P3043410765023212272

/-!
# A168136: a(n) = Bernoulli(2n)*(2n+1)!/n!.

The programs for A168136, there is no canonical definition to state claims against.
-/

/-! ## A168136.P2616809471698693082

`A000108(n)*A263445(n)`
-/

namespace A168136.P2616809471698693082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A263445 n

end

end A168136.P2616809471698693082

/-! ## A168136.P13551357779732947180

`A001332(n)/n!`
-/

namespace A168136.P13551357779732947180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001332 n : ℚ) / (Nat.factorial n : ℚ)

end

end A168136.P13551357779732947180

/-! ## A168136.P17029818982666097136

`A048998(C(Δ[n²], 2))/n!`
-/

namespace A168136.P17029818982666097136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048998 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2) : ℚ) / (Nat.factorial n : ℚ)

end

end A168136.P17029818982666097136

/-! ## A168136.P2741379715658271387

`A048998(n*Δ[n²])/n!`
-/

namespace A168136.P2741379715658271387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048998 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A168136.P2741379715658271387

/-! ## A168136.P4081322360441104728

`A080779(n*Δ[n²])/n!`
-/

namespace A168136.P4081322360441104728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080779 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A168136.P4081322360441104728

/-!
# A168138: a(n) = Fibonacci(n+1)^tau(n).

The programs for A168138, the canonical program `A168138.P8220877735913659820` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168138 has offset 1).

The definition of A168138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168138.P8220877735913659820

`A000045(n+2)^A000005(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A168138

/-- `A000045(n+2)^A000005(n+1)` -/
def P8220877735913659820.Spec : Prop :=
  ∀ n, P8220877735913659820.a n = (A168138 (n + 1) : ℚ)

end A168138

/-! ## A168138.P13715671033889600799

`∏{d}[n+1, A000045(gcd(n, #)+n+1)]`
-/

namespace A168138.P13715671033889600799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000045 (Nat.gcd n d + (n + 1))

end

end A168138.P13715671033889600799

namespace A168138

/-- `∏{d}[n+1, A000045(gcd(n, #)+n+1)]` -/
def P13715671033889600799.Spec : Prop :=
  ∀ n, P13715671033889600799.a n = A168138 (n + 1)

end A168138

/-! ## A168138.P13468715924108635870

`A035506(∑[n])^A000005(n+1)`
-/

namespace A168138.P13468715924108635870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035506 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A168138.P13468715924108635870

namespace A168138

/-- `A035506(∑[n])^A000005(n+1)` -/
def P13468715924108635870.Spec : Prop :=
  ∀ n, P13468715924108635870.a n = (A168138 (n + 1) : ℚ)

end A168138

/-! ## A168138.P2568283862911916187

`Δ[A001911(n)]^A000005(n+1)`
-/

namespace A168138.P2568283862911916187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A168138.P2568283862911916187

namespace A168138

/-- `Δ[A001911(n)]^A000005(n+1)` -/
def P2568283862911916187.Spec : Prop :=
  ∀ n, P2568283862911916187.a n = (A168138 (n + 1) : ℚ)

end A168138

/-! ## A168138.P8652117715711320721

`Δ[A018910(n)]^A000005(n+1)`
-/

namespace A168138.P8652117715711320721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A168138.P8652117715711320721

namespace A168138

/-- `Δ[A018910(n)]^A000005(n+1)` -/
def P8652117715711320721.Spec : Prop :=
  ∀ n, P8652117715711320721.a n = (A168138 (n + 1) : ℚ)

end A168138

/-! ## A168138.P15814297308937462436

`A000045(n+2)^A114896(∑[n])`
-/

namespace A168138.P15814297308937462436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) ^ (A114896 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A168138.P15814297308937462436

namespace A168138

/-- `A000045(n+2)^A114896(∑[n])` -/
def P15814297308937462436.Spec : Prop :=
  ∀ n, P15814297308937462436.a n = (A168138 (n + 1) : ℚ)

end A168138

/-! ## A168138.P1183857962146875835

`A000045(n+2)^Δ[A006218(n)]`
-/

namespace A168138.P1183857962146875835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A168138.P1183857962146875835

namespace A168138

/-- `A000045(n+2)^Δ[A006218(n)]` -/
def P1183857962146875835.Spec : Prop :=
  ∀ n, P1183857962146875835.a n = (A168138 (n + 1) : ℚ)

end A168138

/-! ## A168138.P18101937535102553415

`A000045(n+2)^(∑{d}[n+1, A020639(2*#)]/2)`
-/

namespace A168138.P18101937535102553415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℝ) ^ (((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2 : ℝ)

end

end A168138.P18101937535102553415

namespace A168138

/-- `A000045(n+2)^(∑{d}[n+1, A020639(2*#)]/2)` -/
def P18101937535102553415.Spec : Prop :=
  ∀ n, P18101937535102553415.a n = (A168138 (n + 1) : ℝ)

end A168138

/-!
# A168139: Squares whose sum and number of digits are also squares.

The programs for A168139, there is no canonical definition to state claims against.
-/

/-! ## A168139.P10407024007629536891

`∩[A053057(n+1), A179935(n+1)]`
-/

namespace A168139.P10407024007629536891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168139.P10407024007629536891

/-! ## A168139.P7405186173348007547

`A053057(∑[A186430(n)^4])`
-/

namespace A168139.P7405186173348007547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186430 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168139.P7405186173348007547

/-! ## A168139.P17186742020523835997

`A053057(∑[A186430(n)²²])`
-/

namespace A168139.P17186742020523835997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186430 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168139.P17186742020523835997

/-!
# A168140: Sum of n-th numerator and n-th denominator in triangle formed from Bernoulli numbers.

The programs for A168140, there is no canonical definition to state claims against.
-/

/-! ## A168140.P3743437779230927829

`A085737(n)+A085738(n)`
-/

namespace A168140.P3743437779230927829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085737 n + A085738 n

end

end A168140.P3743437779230927829

/-! ## A168140.P12179490924651792321

`2*A085738(n)-A168464(n)`
-/

namespace A168140.P12179490924651792321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085738 n - A168464 n

end

end A168140.P12179490924651792321

/-! ## A168140.P8754043466437860312

`A085737(n)+A168464(n)+A085737(n)`
-/

namespace A168140.P8754043466437860312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085737 n + (A168464 n + A085737 n)

end

end A168140.P8754043466437860312

/-! ## A168140.P8324082578973729614

`A168464(n)+2*A085737(n)`
-/

namespace A168140.P8324082578973729614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168464 n + 2 * A085737 n

end

end A168140.P8324082578973729614

/-! ## A168140.P7930868422127449872

`A004277(A085738(n))-A168464(n)`
-/

namespace A168140.P7930868422127449872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A085738 n).toNat - A168464 n

end

end A168140.P7930868422127449872

/-!
# A168141: a(n) = pi(n + 1) - pi(n - 2), where pi is the prime counting function.

The programs for A168141, the canonical program `A168141.P17618216875258990548` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168141 has offset 1).

The definition of A168141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168141.P17618216875258990548

`A090406(abs(2-n)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A168141

/-- `A090406(abs(2-n)+1)` -/
def P17618216875258990548.Spec : Prop :=
  ∀ n, P17618216875258990548.a n = A168141 (n + 1)

theorem P17618216875258990548.correct : P17618216875258990548.Spec := by
  intro n
  simp only [A168141, Nat.add_sub_cancel]

end A168141

/-! ## A168141.P2514957693854196977

`A000720(n+2)-A230980(abs(1-n))`
-/

namespace A168141.P2514957693854196977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) - A230980 |1 - (n : ℤ)|.toNat

end

end A168141.P2514957693854196977

namespace A168141

/-- `A000720(n+2)-A230980(abs(1-n))` -/
def P2514957693854196977.Spec : Prop :=
  ∀ n, P2514957693854196977.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P8221776851753129162

`A000720(n+2)-∑[char[A008864(n+1)]]`
-/

namespace A168141.P8221776851753129162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A168141.P8221776851753129162

namespace A168141

/-- `A000720(n+2)-∑[char[A008864(n+1)]]` -/
def P8221776851753129162.Spec : Prop :=
  ∀ n, P8221776851753129162.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P1199139697384226415

`A001222(A110560(n))+char[A351078(n)]`
-/

namespace A168141.P1199139697384226415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A110560 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A168141.P1199139697384226415

namespace A168141

/-- `A001222(A110560(n))+char[A351078(n)]` -/
def P1199139697384226415.Spec : Prop :=
  ∀ n, P1199139697384226415.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P2305202353087748687

`A000720(n+2)-A000720(A007918(n)-1)`
-/

namespace A168141.P2305202353087748687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) - A000720 (A007918 n - 1).toNat

end

end A168141.P2305202353087748687

namespace A168141

/-- `A000720(n+2)-A000720(A007918(n)-1)` -/
def P2305202353087748687.Spec : Prop :=
  ∀ n, P2305202353087748687.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P5708908983981615320

`A014683(n+1)-(A113638(n)+A005171(n+2))`
-/

namespace A168141.P5708908983981615320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - (A113638 n + A005171 (n + 2))

end

end A168141.P5708908983981615320

namespace A168141

/-- `A014683(n+1)-(A113638(n)+A005171(n+2))` -/
def P5708908983981615320.Spec : Prop :=
  ∀ n, P5708908983981615320.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P9945481760253862220

`A090113(n+2)/A000720(n+2)`
-/

namespace A168141.P9945481760253862220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090113 (n + 2) : ℚ) / (A000720 (n + 2) : ℚ)

end

end A168141.P9945481760253862220

namespace A168141

/-- `A090113(n+2)/A000720(n+2)` -/
def P9945481760253862220.Spec : Prop :=
  ∀ n, P9945481760253862220.a n = (A168141 (n + 1) : ℚ)

end A168141

/-! ## A168141.P12875323509042994166

`A036234(n+2)-A000720(A007918(n))`
-/

namespace A168141.P12875323509042994166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 2) - A000720 (A007918 n).toNat

end

end A168141.P12875323509042994166

namespace A168141

/-- `A036234(n+2)-A000720(A007918(n))` -/
def P12875323509042994166.Spec : Prop :=
  ∀ n, P12875323509042994166.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P11803585152603895884

`A113637(n+2)-(A113638(n)+A005171(n+1))`
-/

namespace A168141.P11803585152603895884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 2) - (A113638 n + A005171 (n + 1))

end

end A168141.P11803585152603895884

namespace A168141

/-- `A113637(n+2)-(A113638(n)+A005171(n+1))` -/
def P11803585152603895884.Spec : Prop :=
  ∀ n, P11803585152603895884.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P10298025093233970179

`A000720(n+2)-A033270(A007918(n))`
-/

namespace A168141.P10298025093233970179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) - A033270 (A007918 n).toNat

end

end A168141.P10298025093233970179

namespace A168141

/-- `A000720(n+2)-A033270(A007918(n))` -/
def P10298025093233970179.Spec : Prop :=
  ∀ n, P10298025093233970179.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P5753478269832154821

`A230980(n+2)-A033270(A007918(n))`
-/

namespace A168141.P5753478269832154821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 2) - A033270 (A007918 n).toNat

end

end A168141.P5753478269832154821

namespace A168141

/-- `A230980(n+2)-A033270(A007918(n))` -/
def P5753478269832154821.Spec : Prop :=
  ∀ n, P5753478269832154821.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P8703564159943381948

`Δ[A046992(n+1)]-A033270(A007918(n))`
-/

namespace A168141.P8703564159943381948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033270 (A007918 n).toNat

end

end A168141.P8703564159943381948

namespace A168141

/-- `Δ[A046992(n+1)]-A033270(A007918(n))` -/
def P8703564159943381948.Spec : Prop :=
  ∀ n, P8703564159943381948.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P6317631086608786479

`A000720(n+2)-A242096(A004273(n))`
-/

namespace A168141.P6317631086608786479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) - A242096 (A004273 n).toNat

end

end A168141.P6317631086608786479

namespace A168141

/-- `A000720(n+2)-A242096(A004273(n))` -/
def P6317631086608786479.Spec : Prop :=
  ∀ n, P6317631086608786479.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P11569204312098453617

`A105700(A110560(n))+A010052(A104725(n))`
-/

namespace A168141.P11569204312098453617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A110560 n).toNat + A010052 (A104725 n).toNat

end

end A168141.P11569204312098453617

namespace A168141

/-- `A105700(A110560(n))+A010052(A104725(n))` -/
def P11569204312098453617.Spec : Prop :=
  ∀ n, P11569204312098453617.a n = A168141 (n + 1)

end A168141

/-! ## A168141.P17996727215232172849

`A297173(A007918(n+3)*A007918(n))`
-/

namespace A168141.P17996727215232172849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A007918 (n + 3) * A007918 n).toNat

end

end A168141.P17996727215232172849

namespace A168141

/-- `A297173(A007918(n+3)*A007918(n))` -/
def P17996727215232172849.Spec : Prop :=
  ∀ n, P17996727215232172849.a n = A168141 (n + 1)

end A168141

/-!
# A168142: Count downwards from 2, then from 8, then from 18, then from ... 2*k^2, k>=1.

The programs for A168142, there is no canonical definition to state claims against.
-/

/-! ## A168142.P11916522786408294756

`A006331(∑[char[A006331(n)]])-n`
-/

namespace A168142.P11916522786408294756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A168142.P11916522786408294756

/-! ## A168142.P9959818343498777859

`eq[1, A278111(A008619(n))]-2*n`
-/

namespace A168142.P9959818343498777859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A168142.P9959818343498777859

/-! ## A168142.P15269284197968399465

`eq[1, A278111(A065033(n))]-Δ[n²]`
-/

namespace A168142.P15269284197968399465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A065033 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A168142.P15269284197968399465

/-! ## A168142.P2692072285698815160

`eq[1, A278111(A080513(n))]+1-2*n`
-/

namespace A168142.P2692072285698815160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - (2 * n : ℤ)

end

end A168142.P2692072285698815160

/-! ## A168142.P14153093675181397047

`eq[1, A278111(floor(n/2)+1)]+1-A005408(n)`
-/

namespace A168142.P14153093675181397047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A005408 n

end

end A168142.P14153093675181397047

/-! ## A168142.P3020244224946767774

`eq[1, A278111(floor(n/2)+1)]+1-A004273(n+1)`
-/

namespace A168142.P3020244224946767774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A004273 (n + 1)

end

end A168142.P3020244224946767774

/-! ## A168142.P9714147092465001610

`eq[1, A278111(A080513(n))]-A060747(n)`
-/

namespace A168142.P9714147092465001610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A060747 n

end

end A168142.P9714147092465001610

/-! ## A168142.P12859275939383966841

`A165747(n+1)+eq[1, A278111(A065033(n))]`
-/

namespace A168142.P12859275939383966841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A168142.P12859275939383966841

/-! ## A168142.P12885923325049980424

`A001489(2*n)+eq[1, A278111(A008619(n))]`
-/

namespace A168142.P12885923325049980424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A168142.P12885923325049980424

/-! ## A168142.P17904607921798803430

`A038608(2*n+1)+eq[1, A278111(A065033(n))]`
-/

namespace A168142.P17904607921798803430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (2 * n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A168142.P17904607921798803430

/-!
# A168143: a(17)=37; for n>=17, a(n)=3n-14 if gcd(n,a(n-1))>1 and all prime divisors of n more than 17; a(n)=a(n-1)+1, otherwise.

The programs for A168143, there is no canonical definition to state claims against.
-/

/-! ## A168143.P8587051931764686238

`A185456(n+4)+A185438(A185447(2*(n+1)))`
-/

namespace A168143.P8587051931764686238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185456 (n + 4) + A185438 (A185447 (2 * (n + 1))).toNat

end

end A168143.P8587051931764686238

/-!
# A168145: Numbers n such that to abs(phi(n) - pi(n)) = 1.

The programs for A168145, there is no canonical definition to state claims against.
-/

/-! ## A168145.P9139487678102212613

`eq[1, A037228(n+1)²]+1`
-/

namespace A168145.P9139487678102212613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168145.P9139487678102212613

/-! ## A168145.P16678600454626246092

`record[Δ[A295559(A266794(n))]]`
-/

namespace A168145.P16678600454626246092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295559 (A266794 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168145.P16678600454626246092

/-! ## A168145.P4853419779456349911

`∪[A011974(3*n+2), record[A029682(n)]]`
-/

namespace A168145.P4853419779456349911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168145.P4853419779456349911

/-! ## A168145.P13983561039123809826

`A085415(A085423(n+1))+A067201(n+1)`
-/

namespace A168145.P13983561039123809826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085415 (A085423 (n + 1)).toNat + A067201 (n + 1)

end

end A168145.P13983561039123809826

/-! ## A168145.P3013115016094383777

`A374624(A337486(n+1))+A067201(n+1)`
-/

namespace A168145.P3013115016094383777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374624 (A337486 (n + 1)).toNat + A067201 (n + 1)

end

end A168145.P3013115016094383777

/-!
# A168146: Numbers n such that phi(n) > pi(n).

The programs for A168146, there is no canonical definition to state claims against.
-/

/-! ## A168146.P10175862363288909564

`comp[A037229(a(floor(n/2))+n%2)]` with `a(0)=0, a(1)=0`
-/

namespace A168146.P10175862363288909564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A037229 (f1 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A168146.P10175862363288909564

/-!
# A168147: Primes of the form 10*n^3 + 1.

The programs for A168147, there is no canonical definition to state claims against.
-/

/-! ## A168147.P3059661068027550596

`A030692(A168219(n+1))`
-/

namespace A168147.P3059661068027550596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030692 (A168219 (n + 1)).toNat

end

end A168147.P3059661068027550596

/-! ## A168147.P2668995596286946964

`A244729(A168219(C(n+1, n)))+1`
-/

namespace A168147.P2668995596286946964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 (A168219 (Nat.choose (n + 1) n)).toNat + 1

end

end A168147.P2668995596286946964

/-! ## A168147.P9677988405135822189

`A244729(A168219(n+1))+A057427(n+1)`
-/

namespace A168147.P9677988405135822189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 (A168219 (n + 1)).toNat + A057427 (n + 1)

end

end A168147.P9677988405135822189

/-! ## A168147.P12264506374991377379

`A244729(A168219(n+1))-A057428(3*(n+1))`
-/

namespace A168147.P12264506374991377379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 (A168219 (n + 1)).toNat - A057428 (3 * (n + 1))

end

end A168147.P12264506374991377379

/-! ## A168147.P17195566910836712762

`A244729(A168219(n+1))+1/A000034(2*n)`
-/

namespace A168147.P17195566910836712762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244729 (A168219 (n + 1)).toNat : ℚ) + 1 / (A000034 (2 * n) : ℚ)

end

end A168147.P17195566910836712762

/-! ## A168147.P1246440588607103652

`A244729(A168219(n+1))-or(-1, A020639(n+1))`
-/

namespace A168147.P1246440588607103652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 (A168219 (n + 1)).toNat - Int.lor (-1) (A020639 (n + 1))

end

end A168147.P1246440588607103652

/-!
# A168149: Numbers n such that n^8+(n-1)^8 is a prime.

The programs for A168149, there is no canonical definition to state claims against.
-/

/-! ## A168149.P15286431638534347363

`A153504(n+1)+1`
-/

namespace A168149.P15286431638534347363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153504 (n + 1) + 1

end

end A168149.P15286431638534347363

/-! ## A168149.P14473497546953807518

`eq[n+2, A244932(n+1)]+2`
-/

namespace A168149.P14473497546953807518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A168149.P14473497546953807518

/-! ## A168149.P3447031429397439869

`A020725(A153504(n+1))`
-/

namespace A168149.P3447031429397439869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A153504 (n + 1)).toNat

end

end A168149.P3447031429397439869

/-! ## A168149.P807424013362645037

`lt[A244932(A028310(n)), n+2]+1`
-/

namespace A168149.P807424013362645037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A168149.P807424013362645037

/-! ## A168149.P1410079615852602562

`eq[n, A244932(A004275(n)+1-n)]`
-/

namespace A168149.P1410079615852602562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (A004275 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168149.P1410079615852602562

/-! ## A168149.P1668975652534547627

`lt[A244932(n+1), A020725(A020725(n+1))]+2`
-/

namespace A168149.P1668975652534547627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A020725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A168149.P1668975652534547627

/-!
# A168150: Inverse binomial transform of A026741.

The programs for A168150, the canonical program `A168150.P8394489790451924269` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168150 has offset 0).

The definition of A168150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168150.P8394489790451924269

`ceil(n*(-2)^(n-3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168150

/-- `ceil(n*(-2)^(n-3))` -/
def P8394489790451924269.Spec : Prop :=
  ∀ n, P8394489790451924269.a n = A168150 n

theorem P8394489790451924269.correct : P8394489790451924269.Spec := by
  intro n
  simp only [A168150]

end A168150

/-! ## A168150.P16917296255064809942

`ogf((x+3x^2+3x^3)/(1+4x+4x^2))`
-/

namespace A168150.P16917296255064809942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 3] [1, 4, 4] n

end

end A168150.P16917296255064809942

namespace A168150

/-- `ogf((x+3x^2+3x^3)/(1+4x+4x^2))` -/
def P16917296255064809942.Spec : Prop :=
  ∀ n, P16917296255064809942.a n = A168150 n

end A168150

/-! ## A168150.P6096134333888344807

`n*(-2)^((n-3)%(n+1))`
-/

namespace A168150.P6096134333888344807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (-2 : ℚ) ^ (Int.tmod ((n : ℤ) - 3) (n + 1 : ℤ) : ℤ)

end

end A168150.P6096134333888344807

namespace A168150

/-- `n*(-2)^((n-3)%(n+1))` -/
def P6096134333888344807.Spec : Prop :=
  ∀ n, P6096134333888344807.a n = (A168150 n : ℚ)

end A168150

/-! ## A168150.P5024077388842352639

`n*(-2)^(n-3%(2^n))`
-/

namespace A168150.P5024077388842352639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - ((3 % 2 ^ n : ℕ) : ℤ) : ℤ)

end

end A168150.P5024077388842352639

namespace A168150

/-- `n*(-2)^(n-3%(2^n))` -/
def P5024077388842352639.Spec : Prop :=
  ∀ n, P5024077388842352639.a n = (A168150 n : ℚ)

end A168150

/-! ## A168150.P3510785406060356189

`A084633(n)-A081037(n)`
-/

namespace A168150.P3510785406060356189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n - A081037 n

end

end A168150.P3510785406060356189

namespace A168150

/-- `A084633(n)-A081037(n)` -/
def P3510785406060356189.Spec : Prop :=
  ∀ n, P3510785406060356189.a n = A168150 n

end A168150

/-! ## A168150.P6194232572874885027

`n*(-A020639(A000010(n+1)))^(n-3)`
-/

namespace A168150.P6194232572874885027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (-A020639 (A000010 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A168150.P6194232572874885027

namespace A168150

/-- `n*(-A020639(A000010(n+1)))^(n-3)` -/
def P6194232572874885027.Spec : Prop :=
  ∀ n, P6194232572874885027.a n = (A168150 n : ℚ)

end A168150

/-! ## A168150.P18107723764109766241

`A057711(n)/A084100(A004273(n))`
-/

namespace A168150.P18107723764109766241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 n : ℚ) / (A084100 (A004273 n).toNat : ℚ)

end

end A168150.P18107723764109766241

namespace A168150

/-- `A057711(n)/A084100(A004273(n))` -/
def P18107723764109766241.Spec : Prop :=
  ∀ n, P18107723764109766241.a n = (A168150 n : ℚ)

end A168150

/-! ## A168150.P13589976090885650315

`n/A123344(n)*A141531(n)²`
-/

namespace A168150.P13589976090885650315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A123344 n : ℚ) * (A141531 n ^ 2 : ℚ)

end

end A168150.P13589976090885650315

namespace A168150

/-- `n/A123344(n)*A141531(n)²` -/
def P13589976090885650315.Spec : Prop :=
  ∀ n, P13589976090885650315.a n = (A168150 n : ℚ)

end A168150

/-! ## A168150.P16481950756719130532

`A059450(A152947(n+1))*A062157(n)`
-/

namespace A168150.P16481950756719130532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059450 (A152947 (n + 1)).toNat * A062157 n

end

end A168150.P16481950756719130532

namespace A168150

/-- `A059450(A152947(n+1))*A062157(n)` -/
def P16481950756719130532.Spec : Prop :=
  ∀ n, P16481950756719130532.a n = A168150 n

end A168150

/-!
# A168151: Riordan array (1/u,(1-u)/2), u=sqrt(1-4x+4*x^3).

The programs for A168151, there is no canonical definition to state claims against.
-/

/-! ## A168151.P15785509146558681177

`A121468(A261279(n+1)+1)`
-/

namespace A168151.P15785509146558681177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121468 (A261279 (n + 1) + 1).toNat

end

end A168151.P15785509146558681177

/-! ## A168151.P6251633749272582916

`A213221(n)-A014707(A008842(n))`
-/

namespace A168151.P6251633749272582916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 n - A014707 (A008842 n).toNat

end

end A168151.P6251633749272582916

/-! ## A168151.P17195425663018257291

`A213221(n)-A007031(A101275(n))`
-/

namespace A168151.P17195425663018257291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 n - A007031 (A101275 n).toNat

end

end A168151.P17195425663018257291

/-! ## A168151.P6130727180399996220

`A213221(n)-A188291(A036765(n))`
-/

namespace A168151.P6130727180399996220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 n - A188291 (A036765 n).toNat

end

end A168151.P6130727180399996220

/-! ## A168151.P5206116721168005161

`A213221(n)-A100910(A247618(n))`
-/

namespace A168151.P5206116721168005161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213221 n - A100910 (A247618 n).toNat

end

end A168151.P5206116721168005161

/-!
# A168152: a(n) = prime(prime(n)) - prime(n).

The programs for A168152, the canonical program `A168152.P14558718132513138966` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168152 has offset 1).

The definition of A168152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168152.P14558718132513138966

`A006450(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A168152

/-- `A006450(n+1)-A000040(n+1)` -/
def P14558718132513138966.Spec : Prop :=
  ∀ n, P14558718132513138966.a n = A168152 (n + 1)

theorem P14558718132513138966.correct : P14558718132513138966.Spec := by
  intro n
  simp only [A168152, Nat.add_sub_cancel]

end A168152

/-! ## A168152.P1997980336997148838

`A007504(n)-A239731(n+1)`
-/

namespace A168152.P1997980336997148838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A239731 (n + 1)

end

end A168152.P1997980336997148838

namespace A168152

/-- `A007504(n)-A239731(n+1)` -/
def P1997980336997148838.Spec : Prop :=
  ∀ n, P1997980336997148838.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P15482812185720466672

`A006450(n+1)-Δ[A007504(n)]`
-/

namespace A168152.P15482812185720466672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - (f1 (n + 1) - f1 n)

end

end A168152.P15482812185720466672

namespace A168152

/-- `A006450(n+1)-Δ[A007504(n)]` -/
def P15482812185720466672.Spec : Prop :=
  ∀ n, P15482812185720466672.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P12464526518800343068

`A141138(n+1)-A006093(n+1)`
-/

namespace A168152.P12464526518800343068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1) - A006093 (n + 1)

end

end A168152.P12464526518800343068

namespace A168152

/-- `A141138(n+1)-A006093(n+1)` -/
def P12464526518800343068.Spec : Prop :=
  ∀ n, P12464526518800343068.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P18192174954719706154

`A073136(n+1)-A100484(n+1)`
-/

namespace A168152.P18192174954719706154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073136 (n + 1) - A100484 (n + 1)

end

end A168152.P18192174954719706154

namespace A168152

/-- `A073136(n+1)-A100484(n+1)` -/
def P18192174954719706154.Spec : Prop :=
  ∀ n, P18192174954719706154.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P8552211038303022779

`A262021(n+1)-A014689(n+1)`
-/

namespace A168152.P8552211038303022779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) - A014689 (n + 1)

end

end A168152.P8552211038303022779

namespace A168152

/-- `A262021(n+1)-A014689(n+1)` -/
def P8552211038303022779.Spec : Prop :=
  ∀ n, P8552211038303022779.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P9515374933962830067

`A275989(n+1)-A073124(n+1)`
-/

namespace A168152.P9515374933962830067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275989 (n + 1) - A073124 (n + 1)

end

end A168152.P9515374933962830067

namespace A168152

/-- `A275989(n+1)-A073124(n+1)` -/
def P9515374933962830067.Spec : Prop :=
  ∀ n, P9515374933962830067.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P3473948417604793336

`A230285(n+1)%A006450(n+1)`
-/

namespace A168152.P3473948417604793336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230285 (n + 1)) (A006450 (n + 1))

end

end A168152.P3473948417604793336

namespace A168152

/-- `A230285(n+1)%A006450(n+1)` -/
def P3473948417604793336.Spec : Prop :=
  ∀ n, P3473948417604793336.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P2871575827567175044

`A006450(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A168152.P2871575827567175044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A168152.P2871575827567175044

namespace A168152

/-- `A006450(n+1)+A007504(n)-A007504(n+1)` -/
def P2871575827567175044.Spec : Prop :=
  ∀ n, P2871575827567175044.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P4497111215623000669

`A006450(n+1)+A032600(n+1)-A000959(n+1)`
-/

namespace A168152.P4497111215623000669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A032600 (n + 1) - A000959 (n + 1))

end

end A168152.P4497111215623000669

namespace A168152

/-- `A006450(n+1)+A032600(n+1)-A000959(n+1)` -/
def P4497111215623000669.Spec : Prop :=
  ∀ n, P4497111215623000669.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P10682838713745684762

`A006450(n+1)+A230285(n+1)-A080697(n+1)`
-/

namespace A168152.P10682838713745684762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A230285 (n + 1) - A080697 (n + 1))

end

end A168152.P10682838713745684762

namespace A168152

/-- `A006450(n+1)+A230285(n+1)-A080697(n+1)` -/
def P10682838713745684762.Spec : Prop :=
  ∀ n, P10682838713745684762.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P13972119349398020260

`A038580(n+1)-(A378027(n+1)+A000040(n+1))`
-/

namespace A168152.P13972119349398020260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1) - (A378027 (n + 1) + A000040 (n + 1))

end

end A168152.P13972119349398020260

namespace A168152

/-- `A038580(n+1)-(A378027(n+1)+A000040(n+1))` -/
def P13972119349398020260.Spec : Prop :=
  ∀ n, P13972119349398020260.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P15728142433438580424

`A006450(n+1)-A008578(n+2)`
-/

namespace A168152.P15728142433438580424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A008578 (n + 2)

end

end A168152.P15728142433438580424

namespace A168152

/-- `A006450(n+1)-A008578(n+2)` -/
def P15728142433438580424.Spec : Prop :=
  ∀ n, P15728142433438580424.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P11368587893136440141

`A175247(n+2)-A000040(n+1)`
-/

namespace A168152.P11368587893136440141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) - A000040 (n + 1)

end

end A168152.P11368587893136440141

namespace A168152

/-- `A175247(n+2)-A000040(n+1)` -/
def P11368587893136440141.Spec : Prop :=
  ∀ n, P11368587893136440141.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P7713235485760006962

`A175247(n+2)-A008578(n+2)`
-/

namespace A168152.P7713235485760006962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) - A008578 (n + 2)

end

end A168152.P7713235485760006962

namespace A168152

/-- `A175247(n+2)-A008578(n+2)` -/
def P7713235485760006962.Spec : Prop :=
  ∀ n, P7713235485760006962.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P995968717135335370

`A006450(n+1)+A014284(n+1)-A014284(n+2)`
-/

namespace A168152.P995968717135335370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (A014284 (n + 1) - A014284 (n + 2))

end

end A168152.P995968717135335370

namespace A168152

/-- `A006450(n+1)+A014284(n+1)-A014284(n+2)` -/
def P995968717135335370.Spec : Prop :=
  ∀ n, P995968717135335370.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P4771300974062106632

`A006450(n+1)-A158611(n+3)`
-/

namespace A168152.P4771300974062106632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A158611 (n + 3)

end

end A168152.P4771300974062106632

namespace A168152

/-- `A006450(n+1)-A158611(n+3)` -/
def P4771300974062106632.Spec : Prop :=
  ∀ n, P4771300974062106632.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P18022386450253057091

`A006450(n+1)-A109763(2*(n+1))`
-/

namespace A168152.P18022386450253057091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A109763 (2 * (n + 1))

end

end A168152.P18022386450253057091

namespace A168152

/-- `A006450(n+1)-A109763(2*(n+1))` -/
def P18022386450253057091.Spec : Prop :=
  ∀ n, P18022386450253057091.a n = A168152 (n + 1)

end A168152

/-! ## A168152.P185944164799100282

`A006450(n+1)-A134735(2*n+1)`
-/

namespace A168152.P185944164799100282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A134735 (2 * n + 1)

end

end A168152.P185944164799100282

namespace A168152

/-- `A006450(n+1)-A134735(2*n+1)` -/
def P185944164799100282.Spec : Prop :=
  ∀ n, P185944164799100282.a n = A168152 (n + 1)

end A168152

/-!
# A168153: a(n) = n^2*(n^9 + 1)/2.

The programs for A168153, the canonical program `A168153.P16291492006779638049` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168153 has offset 0).

The definition of A168153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168153.P16291492006779638049

`n²*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168153

/-- `n²*(n^9+1)/2` -/
def P16291492006779638049.Spec : Prop :=
  ∀ n, P16291492006779638049.a n = (A168153 n : ℚ)

end A168153

/-! ## A168153.P11503645738731499835

`n*A196292(n)/2`
-/

namespace A168153.P11503645738731499835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A196292 n : ℚ) / 2

end

end A168153.P11503645738731499835

namespace A168153

/-- `n*A196292(n)/2` -/
def P11503645738731499835.Spec : Prop :=
  ∀ n, P11503645738731499835.a n = (A168153 n : ℚ)

end A168153

/-! ## A168153.P14293408874717405752

`∑[n]+A168119(n)-n`
-/

namespace A168153.P14293408874717405752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A168119 n - (n : ℤ))

end

end A168153.P14293408874717405752

namespace A168153

/-- `∑[n]+A168119(n)-n` -/
def P14293408874717405752.Spec : Prop :=
  ∀ n, P14293408874717405752.a n = A168153 n

end A168153

/-! ## A168153.P7874256577209495538

`A168119(n)+A161680(n)`
-/

namespace A168153.P7874256577209495538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168119 n + A161680 n

end

end A168153.P7874256577209495538

namespace A168153

/-- `A168119(n)+A161680(n)` -/
def P7874256577209495538.Spec : Prop :=
  ∀ n, P7874256577209495538.a n = A168153 n

end A168153

/-! ## A168153.P1589911177362056888

`lcm(A002411(n), A168118(n))`
-/

namespace A168153.P1589911177362056888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002411 n) (A168118 n)

end

end A168153.P1589911177362056888

namespace A168153

/-- `lcm(A002411(n), A168118(n))` -/
def P1589911177362056888.Spec : Prop :=
  ∀ n, (P1589911177362056888.a n : ℤ) = A168153 n

end A168153

/-! ## A168153.P5968874807042216587

`n²+A161680(n)*A228293(n)`
-/

namespace A168153.P5968874807042216587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A161680 n * A228293 n

end

end A168153.P5968874807042216587

namespace A168153

/-- `n²+A161680(n)*A228293(n)` -/
def P5968874807042216587.Spec : Prop :=
  ∀ n, P5968874807042216587.a n = A168153 n

end A168153

/-!
# A168154: Numbers n such that the sum of binary digits in prime(1), ..., prime(n) is prime.

The programs for A168154, the canonical program `A168154.P7656744219214524331` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168154 has offset 1).

The definition of A168154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168154.P7656744219214524331

`eq[1, A001222(A095375(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A168154

/-- `eq[1, A001222(A095375(n+1))]+1` -/
def P7656744219214524331.Spec : Prop :=
  ∀ n, (P7656744219214524331.a n : ℤ) = A168154 (n + 1)

theorem P7656744219214524331.correct : P7656744219214524331.Spec := by
  intro n
  simp only [A168154, Nat.add_sub_cancel]

end A168154

/-! ## A168154.P3103208565242050580

`eq[A000007(n), A304455(A095375(n+1))]+1`
-/

namespace A168154.P3103208565242050580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A095375 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A168154.P3103208565242050580

namespace A168154

/-- `eq[A000007(n), A304455(A095375(n+1))]+1` -/
def P3103208565242050580.Spec : Prop :=
  ∀ n, (P3103208565242050580.a n : ℤ) = A168154 (n + 1)

end A168154

/-! ## A168154.P11378693433409116304

`A124767(A293743(n))+sqrt(A373559(n+1))`
-/

namespace A168154.P11378693433409116304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A124767 (A293743 n).toNat : ℝ) + Real.sqrt (A373559 (n + 1) : ℝ)

end

end A168154.P11378693433409116304

namespace A168154

/-- `A124767(A293743(n))+sqrt(A373559(n+1))` -/
def P11378693433409116304.Spec : Prop :=
  ∀ n, P11378693433409116304.a n = (A168154 (n + 1) : ℝ)

end A168154

/-!
# A168155: Sum of binary digits of all primes < 2^n, i.e., with at most n binary digits.

The programs for A168155, there is no canonical definition to state claims against.
-/

/-! ## A168155.P17737484781938803294

`∑[A168156(n+1)]`
-/

namespace A168155.P17737484781938803294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168155.P17737484781938803294

/-! ## A168155.P8154162579115546269

`∑[record[A168156(A051340(n))]]`
-/

namespace A168155.P8154162579115546269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168156 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168155.P8154162579115546269

/-! ## A168155.P214045811876358401

`∑[record[A168156(A065648(n))]]`
-/

namespace A168155.P214045811876358401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168156 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168155.P214045811876358401

/-! ## A168155.P1617781605753974413

`∑[record[A168156(A082854(n))]]`
-/

namespace A168155.P1617781605753974413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168156 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168155.P1617781605753974413

/-! ## A168155.P13559223690225172468

`∑[record[A168156(A117910(n))]]`
-/

namespace A168155.P13559223690225172468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168156 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168155.P13559223690225172468

/-!
# A168156: Sum of the binary digits of all primes between 2^(n-1) and 2^n-1, i.e., with exactly n binary digits.

The programs for A168156, there is no canonical definition to state claims against.
-/

/-! ## A168156.P4959773206294948932

`Δ[A168155(n^floor(atan(n)))]`
-/

namespace A168156.P4959773206294948932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168155 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168156.P4959773206294948932

/-! ## A168156.P6967733939823923871

`Δ[A168155(round(sqrt(n²+1)))]`
-/

namespace A168156.P6967733939823923871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168155 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168156.P6967733939823923871

/-! ## A168156.P7658826263248312332

`abs(Δ[A168155(A028310(n))])`
-/

namespace A168156.P7658826263248312332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168155 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168156.P7658826263248312332

/-! ## A168156.P6440987593613977293

`record[Δ[A168155(A082854(n))]]`
-/

namespace A168156.P6440987593613977293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168155 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168156.P6440987593613977293

/-! ## A168156.P15524017365562422975

`record[Δ[A168155(A317686(n+1))]]`
-/

namespace A168156.P15524017365562422975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168155 (A317686 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168156.P15524017365562422975

/-!
# A168157: Number of 0's in the matrix whose lines are the binary expansion of the first n primes.

The programs for A168157, the canonical program `A168157.P3803105065153823946` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168157 has offset 1).

The definition of A168157 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, A095375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168157.P3803105065153823946

`(n+1)*A035100(n+1)-A095375(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A168157

/-- `(n+1)*A035100(n+1)-A095375(n+1)` -/
def P3803105065153823946.Spec : Prop :=
  ∀ n, P3803105065153823946.a n = A168157 (n + 1)

theorem P3803105065153823946.correct : P3803105065153823946.Spec := by
  intro n
  simp only [A168157, Nat.add_sub_cancel]

end A168157

/-! ## A168157.P12868085193338896437

`(floor(log2(A082542(n+1)))+1)*(n+1)-A095375(n+1)`
-/

namespace A168157.P12868085193338896437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.log 2 (A082542 (n + 1)).toNat + 1) * (n + 1) : ℤ) - A095375 (n + 1)

end

end A168157.P12868085193338896437

namespace A168157

/-- `(floor(log2(A082542(n+1)))+1)*(n+1)-A095375(n+1)` -/
def P12868085193338896437.Spec : Prop :=
  ∀ n, P12868085193338896437.a n = A168157 (n + 1)

end A168157

/-!
# A168158: Indices n for which A168157(n) is prime.

The programs for A168158, there is no canonical definition to state claims against.
-/

/-! ## A168158.P9247297672559110604

`eq[1, A001222(A168157(n+1))]+1`
-/

namespace A168158.P9247297672559110604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168157 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168158.P9247297672559110604

/-!
# A168159: Distance of the least reversible n-digit prime from 10^(n-1).

The programs for A168159, there is no canonical definition to state claims against.
-/

/-! ## A168159.P9011086610062190459

`A114018(n+1)-10^n`
-/

namespace A168159.P9011086610062190459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114018 (n + 1) - (10 ^ n : ℤ)

end

end A168159.P9011086610062190459

/-! ## A168159.P11422080397361901969

`A122490(A233583(n+1))%A293315(n)`
-/

namespace A168159.P11422080397361901969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122490 (A233583 (n + 1)).toNat) (A293315 n)

end

end A168159.P11422080397361901969

/-!
# A168160: Number of 0's in the matrix whose lines are the binary expansion of the numbers 1,...,n.

The programs for A168160, the canonical program `A168160.P1475307849848817311` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168160 has offset 1).

The definition of A168160 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168160.P1475307849848817311

`A380230(n+1)-A000788(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168160

/-- `A380230(n+1)-A000788(n+1)` -/
def P1475307849848817311.Spec : Prop :=
  ∀ n, P1475307849848817311.a n = A168160 (n + 1)

theorem P1475307849848817311.correct : P1475307849848817311.Spec := by
  intro n
  simp only [A168160, Nat.add_sub_cancel]

end A168160

/-! ## A168160.P12031403772806792923

`(n+1)*A070939(n+1)-A000788(n+1)`
-/

namespace A168160.P12031403772806792923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070939 (n + 1) - A000788 (n + 1)

end

end A168160.P12031403772806792923

namespace A168160

/-- `(n+1)*A070939(n+1)-A000788(n+1)` -/
def P12031403772806792923.Spec : Prop :=
  ∀ n, P12031403772806792923.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P13850986884851121792

`A340301(n+1)-∑[n-∑[val(n+1, 2)]]`
-/

namespace A168160.P13850986884851121792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340301 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168160.P13850986884851121792

namespace A168160

/-- `A340301(n+1)-∑[n-∑[val(n+1, 2)]]` -/
def P13850986884851121792.Spec : Prop :=
  ∀ n, P13850986884851121792.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P7111925932560293873

`A340301(n+1)-A078903(n+1)`
-/

namespace A168160.P7111925932560293873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340301 (n + 1) - A078903 (n + 1)

end

end A168160.P7111925932560293873

namespace A168160

/-- `A340301(n+1)-A078903(n+1)` -/
def P7111925932560293873.Spec : Prop :=
  ∀ n, P7111925932560293873.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P11367775840918094222

`∑[A023416(n+1)+n*A036987(n)]`
-/

namespace A168160.P11367775840918094222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) + (n : ℤ) * A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168160.P11367775840918094222

namespace A168160

/-- `∑[A023416(n+1)+n*A036987(n)]` -/
def P11367775840918094222.Spec : Prop :=
  ∀ n, P11367775840918094222.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P1212253385390273348

`∑[A023416(n+1)+n*A209229(n+1)]`
-/

namespace A168160.P1212253385390273348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) + (n : ℤ) * A209229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168160.P1212253385390273348

namespace A168160

/-- `∑[A023416(n+1)+n*A209229(n+1)]` -/
def P1212253385390273348.Spec : Prop :=
  ∀ n, P1212253385390273348.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P7598984009388484452

`(n+1)*∑[A036987(n)]-A000788(n+1)`
-/

namespace A168160.P7598984009388484452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A000788 (n + 1)

end

end A168160.P7598984009388484452

namespace A168160

/-- `(n+1)*∑[A036987(n)]-A000788(n+1)` -/
def P7598984009388484452.Spec : Prop :=
  ∀ n, P7598984009388484452.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P17606149094986085815

`(n+1)*Δ[A083652(n)]-A000788(n+1)`
-/

namespace A168160.P17606149094986085815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A000788 (n + 1)

end

end A168160.P17606149094986085815

namespace A168160

/-- `(n+1)*Δ[A083652(n)]-A000788(n+1)` -/
def P17606149094986085815.Spec : Prop :=
  ∀ n, P17606149094986085815.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P16221274593384746424

`(n+1)*∑[A036987(n)]-∑[A000120(n+1)]`
-/

namespace A168160.P16221274593384746424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A168160.P16221274593384746424

namespace A168160

/-- `(n+1)*∑[A036987(n)]-∑[A000120(n+1)]` -/
def P16221274593384746424.Spec : Prop :=
  ∀ n, P16221274593384746424.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P15750761311509229695

`(n+1)*Δ[A001855(n+1)]-A000788(n+1)`
-/

namespace A168160.P15750761311509229695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - A000788 (n + 1)

end

end A168160.P15750761311509229695

namespace A168160

/-- `(n+1)*Δ[A001855(n+1)]-A000788(n+1)` -/
def P15750761311509229695.Spec : Prop :=
  ∀ n, P15750761311509229695.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P4065794858342014522

`A390551(n+1)-(A390551(n)+A000788(n+1))`
-/

namespace A168160.P4065794858342014522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390551 (n + 1) - (A390551 n + A000788 (n + 1))

end

end A168160.P4065794858342014522

namespace A168160

/-- `A390551(n+1)-(A390551(n)+A000788(n+1))` -/
def P4065794858342014522.Spec : Prop :=
  ∀ n, P4065794858342014522.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P5940845740670307258

`A380230(n+1)-(A301336(n+1)+A059015(n+1))`
-/

namespace A168160.P5940845740670307258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 (n + 1) - (A301336 (n + 1) + A059015 (n + 1))

end

end A168160.P5940845740670307258

namespace A168160

/-- `A380230(n+1)-(A301336(n+1)+A059015(n+1))` -/
def P5940845740670307258.Spec : Prop :=
  ∀ n, P5940845740670307258.a n = A168160 (n + 1)

end A168160

/-! ## A168160.P1653453470492846776

`∑[A000120(A336962(n))+1]-A006257(n+1)`
-/

namespace A168160.P1653453470492846776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A336962 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006257 (n + 1)

end

end A168160.P1653453470492846776

namespace A168160

/-- `∑[A000120(A336962(n))+1]-A006257(n+1)` -/
def P1653453470492846776.Spec : Prop :=
  ∀ n, P1653453470492846776.a n = A168160 (n + 1)

end A168160

/-!
# A168162: Numbers n which do not exceed the sum of the binary digits in all primes <= n.

The programs for A168162, there is no canonical definition to state claims against.
-/

/-! ## A168162.P2196430635428401567

`lt[A123541(n), ∑{e}[n+1, #]]`
-/

namespace A168162.P2196430635428401567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A168162.P2196430635428401567

/-! ## A168162.P10208003941325549768

`lt[A123541(n), A001222(n+1)]`
-/

namespace A168162.P10208003941325549768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168162.P10208003941325549768

/-! ## A168162.P17786977449853672820

`lt[A123541(n), A038548(n+1)]`
-/

namespace A168162.P17786977449853672820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168162.P17786977449853672820

/-! ## A168162.P4790718632938660714

`lt[A123541(n), A109129(n+1)]`
-/

namespace A168162.P4790718632938660714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168162.P4790718632938660714

/-! ## A168162.P1872009998906665798

`lt[A123541(n), log(A067824(n+1))]`
-/

namespace A168162.P1872009998906665798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A067824 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A168162.P1872009998906665798

/-!
# A168163: Sophie Germain primes p such that the concatenation of p and 2p+1 is again prime.

The programs for A168163, there is no canonical definition to state claims against.
-/

/-! ## A168163.P15811480276189728896

`∩[A005384(n+1), A168164(n+1)]`
-/

namespace A168163.P15811480276189728896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168163.P15811480276189728896

/-! ## A168163.P5610723723989473877

`∩[A168164(n+1), A227240(n+1)]`
-/

namespace A168163.P5610723723989473877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168163.P5610723723989473877

/-! ## A168163.P11954071538057085003

`∩[A168164(n+1), A246857(n+1)]`
-/

namespace A168163.P11954071538057085003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168163.P11954071538057085003

/-! ## A168163.P2094074248091315383

`∩[A168164(n+1), A348511(n+1)]`
-/

namespace A168163.P2094074248091315383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168163.P2094074248091315383

/-! ## A168163.P10591692916727433352

`∩[A168164(n+1), A364926(n+1)]`
-/

namespace A168163.P10591692916727433352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168163.P10591692916727433352

/-! ## A168163.P1069725059175036954

`filter[A168164(n+1), A101264(#)]`
-/

namespace A168163.P1069725059175036954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A168163.P1069725059175036954

/-! ## A168163.P12738060322021113570

`∩[A168164(n+1), A215751(n+1)]`
-/

namespace A168163.P12738060322021113570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168163.P12738060322021113570

/-! ## A168163.P7700062835422530605

`∩[A168164(n+1), A259973(n+1)]`
-/

namespace A168163.P7700062835422530605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168163.P7700062835422530605

/-!
# A168165: Primes which are the concatenation of a Sophie Germain prime p and 2p+1.

The programs for A168165, there is no canonical definition to state claims against.
-/

/-! ## A168165.P9187552775933023341

`A309809(A168163(n+1))`
-/

namespace A168165.P9187552775933023341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (A168163 (n + 1)).toNat

end

end A168165.P9187552775933023341

/-! ## A168165.P3488427149442956269

`A019550(p?[A168163(n+1)])+1`
-/

namespace A168165.P3488427149442956269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A168165.P3488427149442956269

/-! ## A168165.P7393540747291596232

`A309809(∩[A005384(n+1), A168164(n+1)])`
-/

namespace A168165.P7393540747291596232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168165.P7393540747291596232

/-! ## A168165.P1154566410695343818

`A309809(∩[A168164(n+1), A215751(n+1)])`
-/

namespace A168165.P1154566410695343818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168165.P1154566410695343818

/-! ## A168165.P483789681493550074

`A309809(∩[A168164(n+1), A227240(n+1)])`
-/

namespace A168165.P483789681493550074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227240 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A168165.P483789681493550074

/-!
# A168166: Primes which are the concatenation of a prime p and 2p+1.

The programs for A168166, there is no canonical definition to state claims against.
-/

/-! ## A168166.P291120093228879941

`A309809(A168164(n+1))`
-/

namespace A168166.P291120093228879941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (A168164 (n + 1)).toNat

end

end A168166.P291120093228879941

/-! ## A168166.P14769303735240277131

`A019550(p?[A168164(n+1)])+1`
-/

namespace A168166.P14769303735240277131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A168166.P14769303735240277131

/-! ## A168166.P9342718139131285760

`A019550(A168164(n+1))+A007318(∑[n])`
-/

namespace A168166.P9342718139131285760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (A168164 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168166.P9342718139131285760

/-! ## A168166.P5679587731386383890

`∩[A309809(A000040(n+1)), A309808(n+1)]`
-/

namespace A168166.P5679587731386383890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309809 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168166.P5679587731386383890

/-! ## A168166.P5747088919955828481

`A019550(A168164(n+1))+A000108(C(2, n+2))`
-/

namespace A168166.P5747088919955828481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (A168164 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A168166.P5747088919955828481

/-!
# A168167: Numbers with d digits (d>0) which have at least 2d distinct primes as substrings.

The programs for A168167, there is no canonical definition to state claims against.
-/

/-! ## A168167.P12804979722350046162

`A000015(A179915(n+1))`
-/

namespace A168167.P12804979722350046162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A179915 (n + 1)).toNat

end

end A168167.P12804979722350046162

/-!
# A168171: Least prime p = 1 (mod n) which divides Fibonacci((p-1)/n).

The programs for A168171, there is no canonical definition to state claims against.
-/

/-! ## A168171.P9047882424702232342

`(n+1)*A247091(n+1)+1`
-/

namespace A168171.P9047882424702232342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A247091 (n + 1) + 1

end

end A168171.P9047882424702232342

/-! ## A168171.P7817816050545970398

`A151800((n+1)*A247091(n+1))`
-/

namespace A168171.P7817816050545970398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A247091 (n + 1)).toNat

end

end A168171.P7817816050545970398

/-! ## A168171.P16117177530184810803

`A004442((n+1)*A247091(n+1))`
-/

namespace A168171.P16117177530184810803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n + 1 : ℤ) * A247091 (n + 1)).toNat

end

end A168171.P16117177530184810803

/-! ## A168171.P979837401697324039

`A007918((n+1)*A247091(n+1))`
-/

namespace A168171.P979837401697324039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1 : ℤ) * A247091 (n + 1)).toNat

end

end A168171.P979837401697324039

/-! ## A168171.P17181094861900093330

`A049283((n+1)*A247091(n+1))`
-/

namespace A168171.P17181094861900093330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 ((n + 1 : ℤ) * A247091 (n + 1)).toNat

end

end A168171.P17181094861900093330

/-!
# A168175: Expansion of 1/(1 - 4*x + 7*x^2).

The programs for A168175, the canonical program `A168175.P3853181633756883504` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168175 has offset 0).

The definition of A168175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+7x^2))` (program `A168175.P3853181633756883504`, by `A168175.P3853181633756883504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168175.P3853181633756883504

`ogf(1/(1-4x+7x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168175

/-- `ogf(1/(1-4x+7x^2))` -/
def P3853181633756883504.Spec : Prop :=
  ∀ n, P3853181633756883504.a n = A168175 n

theorem P3853181633756883504.correct : P3853181633756883504.Spec := by
  intro n
  simp only [A168175]

end A168175

/-! ## A168175.P12180425800087030504

`4*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A168175.P12180425800087030504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - 7 * a (n - 2)

end

end A168175.P12180425800087030504

namespace A168175

/-- `4*a(n-1)-7*a(n-2)` -/
def P12180425800087030504.Spec : Prop :=
  ∀ n, P12180425800087030504.a n = A168175 n

end A168175

/-! ## A168175.P17298292805769572381

`A213421(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A168175.P17298292805769572381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213421 n + 2 * a (n - 1)

end

end A168175.P17298292805769572381

namespace A168175

/-- `A213421(n)+2*a(n-1)` -/
def P17298292805769572381.Spec : Prop :=
  ∀ n, P17298292805769572381.a n = A168175 n

end A168175

/-! ## A168175.P829465673559922043

`A271972(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A168175.P829465673559922043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271972 n - 3 * a (n - 1)

end

end A168175.P829465673559922043

namespace A168175

/-- `A271972(n)-3*a(n-1)` -/
def P829465673559922043.Spec : Prop :=
  ∀ n, P829465673559922043.a n = A168175 n

end A168175

/-! ## A168175.P2542459686535771189

`∑[A271972(n+1)/7]`
-/

namespace A168175.P2542459686535771189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271972 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168175.P2542459686535771189

namespace A168175

/-- `∑[A271972(n+1)/7]` -/
def P2542459686535771189.Spec : Prop :=
  ∀ n, P2542459686535771189.a n = (A168175 n : ℚ)

end A168175

/-!
# A168176: a(n) = n^2*(n^10 + 1)/2.

The programs for A168176, the canonical program `A168176.P8362923034290317678` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168176 has offset 0).

The definition of A168176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168176.P8362923034290317678

`n²*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168176

/-- `n²*(n^10+1)/2` -/
def P8362923034290317678.Spec : Prop :=
  ∀ n, P8362923034290317678.a n = (A168176 n : ℚ)

end A168176

/-! ## A168176.P5063179262866085045

`lcm(A037270(n), A168119(n))`
-/

namespace A168176.P5063179262866085045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037270 n) (A168119 n)

end

end A168176.P5063179262866085045

namespace A168176

/-- `lcm(A037270(n), A168119(n))` -/
def P5063179262866085045.Spec : Prop :=
  ∀ n, (P5063179262866085045.a n : ℤ) = A168176 n

end A168176

/-! ## A168176.P7245919958906952063

`A167963(n²)`
-/

namespace A168176.P7245919958906952063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 (n ^ 2)

end

end A168176.P7245919958906952063

namespace A168176

/-- `A167963(n²)` -/
def P7245919958906952063.Spec : Prop :=
  ∀ n, P7245919958906952063.a n = A168176 n

end A168176

/-! ## A168176.P14411024420684513903

`A131472(n²)/2`
-/

namespace A168176.P14411024420684513903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131472 (n ^ 2) : ℚ) / 2

end

end A168176.P14411024420684513903

namespace A168176

/-- `A131472(n²)/2` -/
def P14411024420684513903.Spec : Prop :=
  ∀ n, P14411024420684513903.a n = (A168176 n : ℚ)

end A168176

/-! ## A168176.P6713413359680525234

`A168122(n²)-C(n², 2)`
-/

namespace A168176.P6713413359680525234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 (n ^ 2) - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168176.P6713413359680525234

namespace A168176

/-- `A168122(n²)-C(n², 2)` -/
def P6713413359680525234.Spec : Prop :=
  ∀ n, P6713413359680525234.a n = A168176 n

end A168176

/-!
# A168177: Number of prime factors of n! + 2^n - 1, counted with multiplicity.

The programs for A168177, there is no canonical definition to state claims against.
-/

/-! ## A168177.P786165803355651402

`A200370(∑{d}[n+1, ceil(root(2, #))]^A322391(n+1))`
-/

namespace A168177.P786165803355651402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), ⌈(2 : ℝ) ^ (1 / (d : ℝ))⌉ : ℤ) : ℚ) ^ (A322391 (n + 1) : ℤ))).toNat

end

end A168177.P786165803355651402

/-! ## A168177.P9933415954857297275

`A200272(A062011(n+1)^A322391(n+1))`
-/

namespace A168177.P9933415954857297275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (SequenceMachineLib.roundAway ((A062011 (n + 1) : ℚ) ^ (A322391 (n + 1) : ℤ))).toNat

end

end A168177.P9933415954857297275

/-! ## A168177.P5625190162099983250

`A200370(A062011(n+1)^A322391(n+1))`
-/

namespace A168177.P5625190162099983250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (SequenceMachineLib.roundAway ((A062011 (n + 1) : ℚ) ^ (A322391 (n + 1) : ℤ))).toNat

end

end A168177.P5625190162099983250

/-! ## A168177.P2305853796376303412

`A200272(A131089(n+1)^A322391(n+1))`
-/

namespace A168177.P2305853796376303412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200272 (SequenceMachineLib.roundAway ((A131089 (n + 1) : ℚ) ^ (A322391 (n + 1) : ℤ))).toNat

end

end A168177.P2305853796376303412

/-! ## A168177.P15993305435125459614

`A200370(A131089(n+1)^A322391(n+1))`
-/

namespace A168177.P15993305435125459614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (SequenceMachineLib.roundAway ((A131089 (n + 1) : ℚ) ^ (A322391 (n + 1) : ℤ))).toNat

end

end A168177.P15993305435125459614

/-!
# A168178: a(n) = n^3*(n^2 + 1)/2.

The programs for A168178, the canonical program `A168178.P3657978889398611903` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168178 has offset 0).

The definition of A168178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168178.P3657978889398611903

`(n^5+n^3)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168178

/-- `(n^5+n^3)/2` -/
def P3657978889398611903.Spec : Prop :=
  ∀ n, P3657978889398611903.a n = (A168178 n : ℚ)

end A168178

/-! ## A168178.P14499296120309849697

`n^3*(n²+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168178.P14499296120309849697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) * ((n ^ 2 + 1 : ℚ) / 2)

end

end A168178.P14499296120309849697

namespace A168178

/-- `n^3*(n²+1)/2` -/
def P14499296120309849697.Spec : Prop :=
  ∀ n, P14499296120309849697.a n = (A168178 n : ℚ)

end A168178

/-! ## A168178.P16441547567667081721

`A321672(n)+n^3`
-/

namespace A168178.P16441547567667081721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + (n ^ 3 : ℤ)

end

end A168178.P16441547567667081721

namespace A168178

/-- `A321672(n)+n^3` -/
def P16441547567667081721.Spec : Prop :=
  ∀ n, P16441547567667081721.a n = A168178 n

end A168178

/-! ## A168178.P15425199316146923604

`(n+1)*A393441(n)-1`
-/

namespace A168178.P15425199316146923604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A393441 n - 1

end

end A168178.P15425199316146923604

namespace A168178

/-- `(n+1)*A393441(n)-1` -/
def P15425199316146923604.Spec : Prop :=
  ∀ n, P15425199316146923604.a n = A168178 n

end A168178

/-! ## A168178.P4086828909070307959

`A101377(n)+A045991(n)`
-/

namespace A168178.P4086828909070307959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101377 n + A045991 n

end

end A168178.P4086828909070307959

namespace A168178

/-- `A101377(n)+A045991(n)` -/
def P4086828909070307959.Spec : Prop :=
  ∀ n, P4086828909070307959.a n = A168178 n

end A168178

/-! ## A168178.P13033744016368021650

`A135503(n)+A021003(n)`
-/

namespace A168178.P13033744016368021650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A021003 n

end

end A168178.P13033744016368021650

namespace A168178

/-- `A135503(n)+A021003(n)` -/
def P13033744016368021650.Spec : Prop :=
  ∀ n, P13033744016368021650.a n = A168178 n

end A168178

/-! ## A168178.P4438063837943133374

`A168351(n)-A085744(n)`
-/

namespace A168178.P4438063837943133374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n - A085744 n

end

end A168178.P4438063837943133374

namespace A168178

/-- `A168351(n)-A085744(n)` -/
def P4438063837943133374.Spec : Prop :=
  ∀ n, P4438063837943133374.a n = A168178 n

end A168178

/-! ## A168178.P9329459059437153880

`A000584(n)-A321672(n)`
-/

namespace A168178.P9329459059437153880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - A321672 n

end

end A168178.P9329459059437153880

namespace A168178

/-- `A000584(n)-A321672(n)` -/
def P9329459059437153880.Spec : Prop :=
  ∀ n, P9329459059437153880.a n = A168178 n

end A168178

/-!
# A168179: a(n) = n^3*(n^4 + 1)/2.

The programs for A168179, the canonical program `A168179.P13684554434851708817` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168179 has offset 0).

The definition of A168179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168179.P13684554434851708817

`n^3*(n^4+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168179

/-- `n^3*(n^4+1)/2` -/
def P13684554434851708817.Spec : Prop :=
  ∀ n, P13684554434851708817.a n = (A168179 n : ℚ)

end A168179

/-! ## A168179.P10470187545247687410

`A168029(n)+A135503(n)`
-/

namespace A168179.P10470187545247687410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + A135503 n

end

end A168179.P10470187545247687410

namespace A168179

/-- `A168029(n)+A135503(n)` -/
def P10470187545247687410.Spec : Prop :=
  ∀ n, P10470187545247687410.a n = A168179 n

end A168179

/-! ## A168179.P6226975579852787436

`A168526(n)-A085744(n)`
-/

namespace A168179.P6226975579852787436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168526 n - A085744 n

end

end A168179.P6226975579852787436

namespace A168179

/-- `A168526(n)-A085744(n)` -/
def P6226975579852787436.Spec : Prop :=
  ∀ n, P6226975579852787436.a n = A168179 n

end A168179

/-! ## A168179.P12791561113984266925

`A168364(n)-A321672(n)`
-/

namespace A168179.P12791561113984266925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 n - A321672 n

end

end A168179.P12791561113984266925

namespace A168179

/-- `A168364(n)-A321672(n)` -/
def P12791561113984266925.Spec : Prop :=
  ∀ n, P12791561113984266925.a n = A168179 n

end A168179

/-! ## A168179.P13143205017320441535

`A071231(n)/A028310(n)`
-/

namespace A168179.P13143205017320441535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071231 n : ℚ) / (A028310 n : ℚ)

end

end A168179.P13143205017320441535

namespace A168179

/-- `A071231(n)/A028310(n)` -/
def P13143205017320441535.Spec : Prop :=
  ∀ n, P13143205017320441535.a n = (A168179 n : ℚ)

end A168179

/-! ## A168179.P9071855383301408297

`A168372(n)/A253909(n)`
-/

namespace A168179.P9071855383301408297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168372 n : ℚ) / (A253909 n : ℚ)

end

end A168179.P9071855383301408297

namespace A168179

/-- `A168372(n)/A253909(n)` -/
def P9071855383301408297.Spec : Prop :=
  ∀ n, P9071855383301408297.a n = (A168179 n : ℚ)

end A168179

/-! ## A168179.P6837834777069836232

`A168661(n)%A053717(n)`
-/

namespace A168179.P6837834777069836232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168661 n) (A053717 n)

end

end A168179.P6837834777069836232

namespace A168179

/-- `A168661(n)%A053717(n)` -/
def P6837834777069836232.Spec : Prop :=
  ∀ n, P6837834777069836232.a n = A168179 n

end A168179

/-! ## A168179.P5605514758932380681

`lcm(A021003(n), A129204(n))`
-/

namespace A168179.P5605514758932380681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A021003 n) (A129204 n)

end

end A168179.P5605514758932380681

namespace A168179

/-- `lcm(A021003(n), A129204(n))` -/
def P5605514758932380681.Spec : Prop :=
  ∀ n, (P5605514758932380681.a n : ℤ) = A168179 n

end A168179

/-! ## A168179.P4014526724007618900

`A168123(n)+n*A161680(n)`
-/

namespace A168179.P4014526724007618900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168123 n + (n : ℤ) * A161680 n

end

end A168179.P4014526724007618900

namespace A168179

/-- `A168123(n)+n*A161680(n)` -/
def P4014526724007618900.Spec : Prop :=
  ∀ n, P4014526724007618900.a n = A168179 n

end A168179

/-! ## A168179.P17274968296138071894

`n*A168351(n)-A085744(n)`
-/

namespace A168179.P17274968296138071894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168351 n - A085744 n

end

end A168179.P17274968296138071894

namespace A168179

/-- `n*A168351(n)-A085744(n)` -/
def P17274968296138071894.Spec : Prop :=
  ∀ n, P17274968296138071894.a n = A168179 n

end A168179

/-! ## A168179.P5943688045269688771

`A006003(n)+A168526(n)-A167963(n)`
-/

namespace A168179.P5943688045269688771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (A168526 n - A167963 n)

end

end A168179.P5943688045269688771

namespace A168179

/-- `A006003(n)+A168526(n)-A167963(n)` -/
def P5943688045269688771.Spec : Prop :=
  ∀ n, P5943688045269688771.a n = A168179 n

end A168179

/-!
# A168180: a(n) = n^3*(n^5 + 1)/2.

The programs for A168180, the canonical program `A168180.P6862208521500948004` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168180 has offset 0).

The definition of A168180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168180.P6862208521500948004

`n^3*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168180

/-- `n^3*(n^5+1)/2` -/
def P6862208521500948004.Spec : Prop :=
  ∀ n, P6862208521500948004.a n = (A168180 n : ℚ)

end A168180

/-! ## A168180.P3962444596569378658

`A168067(n)+A135503(n)`
-/

namespace A168180.P3962444596569378658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 n + A135503 n

end

end A168180.P3962444596569378658

namespace A168180

/-- `A168067(n)+A135503(n)` -/
def P3962444596569378658.Spec : Prop :=
  ∀ n, P3962444596569378658.a n = A168180 n

end A168180

/-! ## A168180.P123896992131524296

`A168527(n)-A085744(n)`
-/

namespace A168180.P123896992131524296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168527 n - A085744 n

end

end A168180.P123896992131524296

namespace A168180

/-- `A168527(n)-A085744(n)` -/
def P123896992131524296.Spec : Prop :=
  ∀ n, P123896992131524296.a n = A168180 n

end A168180

/-! ## A168180.P17823020162793239805

`A168371(n)-A321672(n)`
-/

namespace A168180.P17823020162793239805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168371 n - A321672 n

end

end A168180.P17823020162793239805

namespace A168180

/-- `A168371(n)-A321672(n)` -/
def P17823020162793239805.Spec : Prop :=
  ∀ n, P17823020162793239805.a n = A168180 n

end A168180

/-! ## A168180.P12989761195126415736

`A168196(n)/A028310(n)`
-/

namespace A168180.P12989761195126415736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168196 n : ℚ) / (A028310 n : ℚ)

end

end A168180.P12989761195126415736

namespace A168180

/-- `A168196(n)/A028310(n)` -/
def P12989761195126415736.Spec : Prop :=
  ∀ n, P12989761195126415736.a n = (A168180 n : ℚ)

end A168180

/-! ## A168180.P9140300880052658191

`A071236(n)/A253909(n)`
-/

namespace A168180.P9140300880052658191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071236 n : ℚ) / (A253909 n : ℚ)

end

end A168180.P9140300880052658191

namespace A168180

/-- `A071236(n)/A253909(n)` -/
def P9140300880052658191.Spec : Prop :=
  ∀ n, P9140300880052658191.a n = (A168180 n : ℚ)

end A168180

/-! ## A168180.P10197781298994463094

`lcm(A129204(n), A167963(n))`
-/

namespace A168180.P10197781298994463094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129204 n) (A167963 n)

end

end A168180.P10197781298994463094

namespace A168180

/-- `lcm(A129204(n), A167963(n))` -/
def P10197781298994463094.Spec : Prop :=
  ∀ n, (P10197781298994463094.a n : ℤ) = A168180 n

end A168180

/-! ## A168180.P11038391046204077359

`A168124(n)+n*A161680(n)`
-/

namespace A168180.P11038391046204077359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168124 n + (n : ℤ) * A161680 n

end

end A168180.P11038391046204077359

namespace A168180

/-- `A168124(n)+n*A161680(n)` -/
def P11038391046204077359.Spec : Prop :=
  ∀ n, P11038391046204077359.a n = A168180 n

end A168180

/-! ## A168180.P7698228879780588255

`A168178(n)+n²*A085744(n)`
-/

namespace A168180.P7698228879780588255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n + (n ^ 2 : ℤ) * A085744 n

end

end A168180.P7698228879780588255

namespace A168180

/-- `A168178(n)+n²*A085744(n)` -/
def P7698228879780588255.Spec : Prop :=
  ∀ n, P7698228879780588255.a n = A168180 n

end A168180

/-!
# A168181: Characteristic function of numbers that are not multiples of 8.

The programs for A168181, the canonical program `A168181.P9292927315098625345` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168181 has offset 0).

The definition of A168181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168181.P9292927315098625345

`1-A253513(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A168181

/-- `1-A253513(n)` -/
def P9292927315098625345.Spec : Prop :=
  ∀ n, P9292927315098625345.a n = A168181 n

theorem P9292927315098625345.correct : P9292927315098625345.Spec := by
  intro n
  simp only [A168181]

end A168181

/-!
# A168182: Characteristic function of numbers that are not multiples of 9.

The programs for A168182, there is no canonical definition to state claims against.
-/

/-! ## A168182.P3356772029904606277

`1-A267142(n)`
-/

namespace A168182.P3356772029904606277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267142 n

end

end A168182.P3356772029904606277

/-!
# A168183: Numbers that are not multiples of 9.

The programs for A168183, the canonical program `A168183.P695440070591132250` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168183 has offset 1).

The definition of A168183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168183.P695440070591132250

`n+1+floor(n/8)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168183

/-- `n+1+floor(n/8)` -/
def P695440070591132250.Spec : Prop :=
  ∀ n, P695440070591132250.a n = A168183 (n + 1)

theorem P695440070591132250.correct : P695440070591132250.Spec := by
  intro n
  simp only [A168183, Nat.add_sub_cancel]

end A168183

/-! ## A168183.P18242718161709653021

`lt[n, lcm(9, n)]`
-/

namespace A168183.P18242718161709653021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168183.P18242718161709653021

namespace A168183

/-- `lt[n, lcm(9, n)]` -/
def P18242718161709653021.Spec : Prop :=
  ∀ n, (P18242718161709653021.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P7839765863041505754

`lt[0, n*n%9]`
-/

namespace A168183.P7839765863041505754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168183.P7839765863041505754

namespace A168183

/-- `lt[0, n*n%9]` -/
def P7839765863041505754.Spec : Prop :=
  ∀ n, (P7839765863041505754.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P13978811612534124975

`ceil(9/(8*acot(n)))`
-/

namespace A168183.P13978811612534124975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 / (8 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A168183.P13978811612534124975

namespace A168183

/-- `ceil(9/(8*acot(n)))` -/
def P13978811612534124975.Spec : Prop :=
  ∀ n, P13978811612534124975.a n = A168183 (n + 1)

end A168183

/-! ## A168183.P15092663934337423978

`lt[n, n*dr(n+1)]`
-/

namespace A168183.P15092663934337423978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168183.P15092663934337423978

namespace A168183

/-- `lt[n, n*dr(n+1)]` -/
def P15092663934337423978.Spec : Prop :=
  ∀ n, (P15092663934337423978.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P14005461454530943116

`lt[n/dr(n+1), n]`
-/

namespace A168183.P14005461454530943116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A168183.P14005461454530943116

namespace A168183

/-- `lt[n/dr(n+1), n]` -/
def P14005461454530943116.Spec : Prop :=
  ∀ n, (P14005461454530943116.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P2888298927937696931

`lt[cosh(cos(n)), dr(n+1)]`
-/

namespace A168183.P2888298927937696931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.cos (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A168183.P2888298927937696931

namespace A168183

/-- `lt[cosh(cos(n)), dr(n+1)]` -/
def P2888298927937696931.Spec : Prop :=
  ∀ n, (P2888298927937696931.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P12477233390919580414

`lt[cosh(sin(n)), dr(n+1)]`
-/

namespace A168183.P12477233390919580414
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.sin (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A168183.P12477233390919580414

namespace A168183

/-- `lt[cosh(sin(n)), dr(n+1)]` -/
def P12477233390919580414.Spec : Prop :=
  ∀ n, (P12477233390919580414.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P11827266671495309044

`ceil((lcm(3, 9*n)+1)/8)`
-/

namespace A168183.P11827266671495309044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 3 (9 * n) + 1 : ℚ) / 8⌉

end

end A168183.P11827266671495309044

namespace A168183

/-- `ceil((lcm(3, 9*n)+1)/8)` -/
def P11827266671495309044.Spec : Prop :=
  ∀ n, P11827266671495309044.a n = A168183 (n + 1)

end A168183

/-! ## A168183.P17029659966611590609

`lt[1, root(dr(n+1), n+1)]`
-/

namespace A168183.P17029659966611590609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ) ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A168183.P17029659966611590609

namespace A168183

/-- `lt[1, root(dr(n+1), n+1)]` -/
def P17029659966611590609.Spec : Prop :=
  ∀ n, (P17029659966611590609.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P15055131248536114233

`lt[n+1, dr(n+1)+n]`
-/

namespace A168183.P15055131248536114233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168183.P15055131248536114233

namespace A168183

/-- `lt[n+1, dr(n+1)+n]` -/
def P15055131248536114233.Spec : Prop :=
  ∀ n, (P15055131248536114233.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P17629120577386168271

`floor(∑[5/(4*a(n-1))])` with `a(0)=1, a(1)=1`
-/

namespace A168183.P17629120577386168271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  5 / (4 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A168183.P17629120577386168271

namespace A168183

/-- `floor(∑[5/(4*a(n-1))])` -/
def P17629120577386168271.Spec : Prop :=
  ∀ n, P17629120577386168271.a n = A168183 (n + 1)

end A168183

/-! ## A168183.P12035755278296777943

`floor(∑[5/a(n-1)]/2)` with `a(0)=2, a(1)=2`
-/

namespace A168183.P12035755278296777943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌋

end

end A168183.P12035755278296777943

namespace A168183

/-- `floor(∑[5/a(n-1)]/2)` -/
def P12035755278296777943.Spec : Prop :=
  ∀ n, P12035755278296777943.a n = A168183 (n + 1)

end A168183

/-! ## A168183.P12305622950753640722

`eq[n+3, gcd((n+3)², lcm(n+3, 2*n))]`
-/

namespace A168183.P12305622950753640722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 3) ^ 2) (Nat.lcm (n + 3) (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168183.P12305622950753640722

namespace A168183

/-- `eq[n+3, gcd((n+3)², lcm(n+3, 2*n))]` -/
def P12305622950753640722.Spec : Prop :=
  ∀ n, (P12305622950753640722.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P8741237426481411943

`eq[0, A114099(n)]`
-/

namespace A168183.P8741237426481411943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A168183.P8741237426481411943

namespace A168183

/-- `eq[0, A114099(n)]` -/
def P8741237426481411943.Spec : Prop :=
  ∀ n, (P8741237426481411943.a n : ℤ) = A168183 (n + 1)

end A168183

/-! ## A168183.P15184540578337137421

`∑[A257179(n)!]`
-/

namespace A168183.P15184540578337137421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A257179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168183.P15184540578337137421

namespace A168183

/-- `∑[A257179(n)!]` -/
def P15184540578337137421.Spec : Prop :=
  ∀ n, (P15184540578337137421.a n : ℤ) = A168183 (n + 1)

end A168183

/-!
# A168184: Characteristic function of numbers that are not multiples of 10.

The programs for A168184, the canonical program `A168184.P10218844753834826981` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168184 has offset 0).

The definition of A168184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168184.P10218844753834826981

`char[comp[10*n]]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168184

/-- `char[comp[10*n]]` -/
def P10218844753834826981.Spec : Prop :=
  ∀ n, (P10218844753834826981.a n : ℤ) = A168184 n

theorem P10218844753834826981.correct : P10218844753834826981.Spec := by
  intro n
  simp only [A168184]

end A168184

/-!
# A168185: Characteristic function of numbers that are not multiples of 12.

The programs for A168185, the canonical program `A168185.P12654769425538207761` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168185 has offset 0).

The definition of A168185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168185.P12654769425538207761

`char[comp[12*n]]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168185

/-- `char[comp[12*n]]` -/
def P12654769425538207761.Spec : Prop :=
  ∀ n, (P12654769425538207761.a n : ℤ) = A168185 n

theorem P12654769425538207761.correct : P12654769425538207761.Spec := by
  intro n
  simp only [A168185]

end A168185

/-!
# A168186: Positive numbers that are not multiples of 12.

The programs for A168186, the canonical program `A168186.P4283849990667535562` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168186 has offset 1).

The definition of A168186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168186.P8608722726463828703

`comp[12*n]`
-/

namespace A168186.P8608722726463828703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A168186.P8608722726463828703

namespace A168186

/-- `comp[12*n]` -/
def P8608722726463828703.Spec : Prop :=
  ∀ n, (P8608722726463828703.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P4283849990667535562

`lt[n, lcm(12, n)]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168186

/-- `lt[n, lcm(12, n)]` -/
def P4283849990667535562.Spec : Prop :=
  ∀ n, (P4283849990667535562.a n : ℤ) = A168186 (n + 1)

theorem P4283849990667535562.correct : P4283849990667535562.Spec := by
  intro n
  simp only [A168186, Nat.add_sub_cancel]

end A168186

/-! ## A168186.P15944479789971519475

`∑[dr(gcd(11, n))]-1`
-/

namespace A168186.P15944479789971519475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.gcd 11 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A168186.P15944479789971519475

namespace A168186

/-- `∑[dr(gcd(11, n))]-1` -/
def P15944479789971519475.Spec : Prop :=
  ∀ n, P15944479789971519475.a n = A168186 (n + 1)

end A168186

/-! ## A168186.P6432031878315408194

`record[1-val(n+1, 12)+n]`
-/

namespace A168186.P6432031878315408194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 12 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168186.P6432031878315408194

namespace A168186

/-- `record[1-val(n+1, 12)+n]` -/
def P6432031878315408194.Spec : Prop :=
  ∀ n, P6432031878315408194.a n = A168186 (n + 1)

end A168186

/-! ## A168186.P2468024821092809743

`ceil(C(n+1, n)/11)+n`
-/

namespace A168186.P2468024821092809743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℚ) / 11⌉ + (n : ℤ)

end

end A168186.P2468024821092809743

namespace A168186

/-- `ceil(C(n+1, n)/11)+n` -/
def P2468024821092809743.Spec : Prop :=
  ∀ n, P2468024821092809743.a n = A168186 (n + 1)

end A168186

/-! ## A168186.P13062318253164200423

`comp[A017653(n)]+1`
-/

namespace A168186.P13062318253164200423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A168186.P13062318253164200423

namespace A168186

/-- `comp[A017653(n)]+1` -/
def P13062318253164200423.Spec : Prop :=
  ∀ n, (P13062318253164200423.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P1733901039816715347

`∑[gcd(2, A040217(n))]`
-/

namespace A168186.P1733901039816715347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A040217 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168186.P1733901039816715347

namespace A168186

/-- `∑[gcd(2, A040217(n))]` -/
def P1733901039816715347.Spec : Prop :=
  ∀ n, (P1733901039816715347.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P4517706106569258608

`A344420(n)+1+n`
-/

namespace A168186.P4517706106569258608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 n + 1 + (n : ℤ)

end

end A168186.P4517706106569258608

namespace A168186

/-- `A344420(n)+1+n` -/
def P4517706106569258608.Spec : Prop :=
  ∀ n, P4517706106569258608.a n = A168186 (n + 1)

end A168186

/-! ## A168186.P4737525206851643855

`∑[∑[A014020(n)]]+n`
-/

namespace A168186.P4737525206851643855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A168186.P4737525206851643855

namespace A168186

/-- `∑[∑[A014020(n)]]+n` -/
def P4737525206851643855.Spec : Prop :=
  ∀ n, P4737525206851643855.a n = A168186 (n + 1)

end A168186

/-! ## A168186.P9610783156723397544

`∑[char[A008593(n)]]+n`
-/

namespace A168186.P9610783156723397544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A168186.P9610783156723397544

namespace A168186

/-- `∑[char[A008593(n)]]+n` -/
def P9610783156723397544.Spec : Prop :=
  ∀ n, (P9610783156723397544.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P330814834101939700

`2*n+1-∑[A145568(n)]`
-/

namespace A168186.P330814834101939700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168186.P330814834101939700

namespace A168186

/-- `2*n+1-∑[A145568(n)]` -/
def P330814834101939700.Spec : Prop :=
  ∀ n, P330814834101939700.a n = A168186 (n + 1)

end A168186

/-! ## A168186.P6977316657736083607

`Δ[n²-A033443(n)]`
-/

namespace A168186.P6977316657736083607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A033443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168186.P6977316657736083607

namespace A168186

/-- `Δ[n²-A033443(n)]` -/
def P6977316657736083607.Spec : Prop :=
  ∀ n, P6977316657736083607.a n = A168186 (n + 1)

end A168186

/-! ## A168186.P7459125696495629180

`filter[n+1, A168185(#)]`
-/

namespace A168186.P7459125696495629180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j) = 1) n)

end

end A168186.P7459125696495629180

namespace A168186

/-- `filter[n+1, A168185(#)]` -/
def P7459125696495629180.Spec : Prop :=
  ∀ n, (P7459125696495629180.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P11195419685043381696

`lt[0, n*A007887(n)]`
-/

namespace A168186.P11195419685043381696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A168186.P11195419685043381696

namespace A168186

/-- `lt[0, n*A007887(n)]` -/
def P11195419685043381696.Spec : Prop :=
  ∀ n, (P11195419685043381696.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P17450813541870894419

`lt[char[3*n], A255051(n+1)]`
-/

namespace A168186.P17450813541870894419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A168186.P17450813541870894419

namespace A168186

/-- `lt[char[3*n], A255051(n+1)]` -/
def P17450813541870894419.Spec : Prop :=
  ∀ n, (P17450813541870894419.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P8544867573286752552

`lt[tanh(A007895(n)), A007887(n)]`
-/

namespace A168186.P8544867573286752552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A007895 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A168186.P8544867573286752552

namespace A168186

/-- `lt[tanh(A007895(n)), A007887(n)]` -/
def P8544867573286752552.Spec : Prop :=
  ∀ n, (P8544867573286752552.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P9923540280791713310

`lt[tanh(A007862(n+1)), A007887(n)]`
-/

namespace A168186.P9923540280791713310
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A007862 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A168186.P9923540280791713310

namespace A168186

/-- `lt[tanh(A007862(n+1)), A007887(n)]` -/
def P9923540280791713310.Spec : Prop :=
  ∀ n, (P9923540280791713310.a n : ℤ) = A168186 (n + 1)

end A168186

/-! ## A168186.P3665837282336945122

`lt[tanh(A007875(n+1)), A007887(n)]`
-/

namespace A168186.P3665837282336945122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A007875 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A168186.P3665837282336945122

namespace A168186

/-- `lt[tanh(A007875(n+1)), A007887(n)]` -/
def P3665837282336945122.Spec : Prop :=
  ∀ n, (P3665837282336945122.a n : ℤ) = A168186 (n + 1)

end A168186

/-!
# A168187: a(n) = n^3*(n^6 + 1)/2.

The programs for A168187, the canonical program `A168187.P6934182240519831868` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168187 has offset 0).

The definition of A168187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168187.P6934182240519831868

`n^3*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168187

/-- `n^3*(n^6+1)/2` -/
def P6934182240519831868.Spec : Prop :=
  ∀ n, P6934182240519831868.a n = (A168187 n : ℚ)

end A168187

/-! ## A168187.P10490512405452718018

`A168116(n)+A135503(n)`
-/

namespace A168187.P10490512405452718018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168116 n + A135503 n

end

end A168187.P10490512405452718018

namespace A168187

/-- `A168116(n)+A135503(n)` -/
def P10490512405452718018.Spec : Prop :=
  ∀ n, P10490512405452718018.a n = A168187 n

end A168187

/-! ## A168187.P12692783278840890053

`A168555(n)-A085744(n)`
-/

namespace A168187.P12692783278840890053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168555 n - A085744 n

end

end A168187.P12692783278840890053

namespace A168187

/-- `A168555(n)-A085744(n)` -/
def P12692783278840890053.Spec : Prop :=
  ∀ n, P12692783278840890053.a n = A168187 n

end A168187

/-! ## A168187.P3933657430433241479

`A168372(n)-A321672(n)`
-/

namespace A168187.P3933657430433241479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168372 n - A321672 n

end

end A168187.P3933657430433241479

namespace A168187

/-- `A168372(n)-A321672(n)` -/
def P3933657430433241479.Spec : Prop :=
  ∀ n, P3933657430433241479.a n = A168187 n

end A168187

/-! ## A168187.P5418304683203232319

`A168220(n)/A028310(n)`
-/

namespace A168187.P5418304683203232319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168220 n : ℚ) / (A028310 n : ℚ)

end

end A168187.P5418304683203232319

namespace A168187

/-- `A168220(n)/A028310(n)` -/
def P5418304683203232319.Spec : Prop :=
  ∀ n, P5418304683203232319.a n = (A168187 n : ℚ)

end A168187

/-! ## A168187.P10545379281630910755

`A168412(n)/A253909(n)`
-/

namespace A168187.P10545379281630910755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168412 n : ℚ) / (A253909 n : ℚ)

end

end A168187.P10545379281630910755

namespace A168187

/-- `A168412(n)/A253909(n)` -/
def P10545379281630910755.Spec : Prop :=
  ∀ n, P10545379281630910755.a n = (A168187 n : ℚ)

end A168187

/-! ## A168187.P6645011150332424357

`lcm(A060886(n), A168178(n))`
-/

namespace A168187.P6645011150332424357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060886 n) (A168178 n)

end

end A168187.P6645011150332424357

namespace A168187

/-- `lcm(A060886(n), A168178(n))` -/
def P6645011150332424357.Spec : Prop :=
  ∀ n, (P6645011150332424357.a n : ℤ) = A168187 n

end A168187

/-! ## A168187.P9102671949773669917

`lcm(A129204(n), A168029(n))`
-/

namespace A168187.P9102671949773669917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129204 n) (A168029 n)

end

end A168187.P9102671949773669917

namespace A168187

/-- `lcm(A129204(n), A168029(n))` -/
def P9102671949773669917.Spec : Prop :=
  ∀ n, (P9102671949773669917.a n : ℤ) = A168187 n

end A168187

/-! ## A168187.P11006558099868167752

`2*A282613(n)-A168178(n)`
-/

namespace A168187.P11006558099868167752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282613 n - A168178 n

end

end A168187.P11006558099868167752

namespace A168187

/-- `2*A282613(n)-A168178(n)` -/
def P11006558099868167752.Spec : Prop :=
  ∀ n, P11006558099868167752.a n = A168187 n

end A168187

/-! ## A168187.P6972543182401526806

`A168125(n)+n*A161680(n)`
-/

namespace A168187.P6972543182401526806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168125 n + (n : ℤ) * A161680 n

end

end A168187.P6972543182401526806

namespace A168187

/-- `A168125(n)+n*A161680(n)` -/
def P6972543182401526806.Spec : Prop :=
  ∀ n, P6972543182401526806.a n = A168187 n

end A168187

/-! ## A168187.P10671404428696435106

`n²*A168179(n)-A321672(n)`
-/

namespace A168187.P10671404428696435106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168179 n - A321672 n

end

end A168187.P10671404428696435106

namespace A168187

/-- `n²*A168179(n)-A321672(n)` -/
def P10671404428696435106.Spec : Prop :=
  ∀ n, P10671404428696435106.a n = A168187 n

end A168187

/-! ## A168187.P11293753067943137788

`A006003(n)+A170783(n)-A168118(n)`
-/

namespace A168187.P11293753067943137788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (A170783 n - A168118 n)

end

end A168187.P11293753067943137788

namespace A168187

/-- `A006003(n)+A170783(n)-A168118(n)` -/
def P11293753067943137788.Spec : Prop :=
  ∀ n, P11293753067943137788.a n = A168187 n

end A168187

/-! ## A168187.P11145060498900881905

`A168555(n)+A282613(n)-A282614(n)`
-/

namespace A168187.P11145060498900881905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168555 n + (A282613 n - A282614 n)

end

end A168187.P11145060498900881905

namespace A168187

/-- `A168555(n)+A282613(n)-A282614(n)` -/
def P11145060498900881905.Spec : Prop :=
  ∀ n, P11145060498900881905.a n = A168187 n

end A168187

/-! ## A168187.P12508234765784001820

`A071232(n)+A000578(n)*A085744(n)`
-/

namespace A168187.P12508234765784001820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n + A000578 n * A085744 n

end

end A168187.P12508234765784001820

namespace A168187

/-- `A071232(n)+A000578(n)*A085744(n)` -/
def P12508234765784001820.Spec : Prop :=
  ∀ n, P12508234765784001820.a n = A168187 n

end A168187

/-!
# A168188: a(n) = n^3*(n^7 + 1)/2.

The programs for A168188, the canonical program `A168188.P7353352709651892968` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168188 has offset 0).

The definition of A168188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168188.P7353352709651892968

`n^3*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168188

/-- `n^3*(n^7+1)/2` -/
def P7353352709651892968.Spec : Prop :=
  ∀ n, P7353352709651892968.a n = (A168188 n : ℚ)

end A168188

/-! ## A168188.P10058394329271689120

`A168118(n)+A135503(n)`
-/

namespace A168188.P10058394329271689120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168118 n + A135503 n

end

end A168188.P10058394329271689120

namespace A168188

/-- `A168118(n)+A135503(n)` -/
def P10058394329271689120.Spec : Prop :=
  ∀ n, P10058394329271689120.a n = A168188 n

end A168188

/-! ## A168188.P13267344890266445493

`A168564(n)-A085744(n)`
-/

namespace A168188.P13267344890266445493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168564 n - A085744 n

end

end A168188.P13267344890266445493

namespace A168188

/-- `A168564(n)-A085744(n)` -/
def P13267344890266445493.Spec : Prop :=
  ∀ n, P13267344890266445493.a n = A168188 n

end A168188

/-! ## A168188.P6389676854295004746

`A071236(n)-A321672(n)`
-/

namespace A168188.P6389676854295004746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071236 n - A321672 n

end

end A168188.P6389676854295004746

namespace A168188

/-- `A071236(n)-A321672(n)` -/
def P6389676854295004746.Spec : Prop :=
  ∀ n, P6389676854295004746.a n = A168188 n

end A168188

/-! ## A168188.P2322346321407478497

`A168225(n)/A028310(n)`
-/

namespace A168188.P2322346321407478497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168225 n : ℚ) / (A028310 n : ℚ)

end

end A168188.P2322346321407478497

namespace A168188

/-- `A168225(n)/A028310(n)` -/
def P2322346321407478497.Spec : Prop :=
  ∀ n, P2322346321407478497.a n = (A168188 n : ℚ)

end A168188

/-! ## A168188.P11275247357409266789

`lcm(A129204(n), A168067(n))`
-/

namespace A168188.P11275247357409266789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129204 n) (A168067 n)

end

end A168188.P11275247357409266789

namespace A168188

/-- `lcm(A129204(n), A168067(n))` -/
def P11275247357409266789.Spec : Prop :=
  ∀ n, (P11275247357409266789.a n : ℤ) = A168188 n

end A168188

/-! ## A168188.P7634239926395693981

`A168126(n)+n*A161680(n)`
-/

namespace A168188.P7634239926395693981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168126 n + (n : ℤ) * A161680 n

end

end A168188.P7634239926395693981

namespace A168188

/-- `A168126(n)+n*A161680(n)` -/
def P7634239926395693981.Spec : Prop :=
  ∀ n, P7634239926395693981.a n = A168188 n

end A168188

/-! ## A168188.P4041400230006132360

`n²*A168180(n)-A321672(n)`
-/

namespace A168188.P4041400230006132360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168180 n - A321672 n

end

end A168188.P4041400230006132360

namespace A168188

/-- `n²*A168180(n)-A321672(n)` -/
def P4041400230006132360.Spec : Prop :=
  ∀ n, P4041400230006132360.a n = A168188 n

end A168188

/-! ## A168188.P14286421793342035831

`A006003(n)+A170793(n)-A168119(n)`
-/

namespace A168188.P14286421793342035831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (A170793 n - A168119 n)

end

end A168188.P14286421793342035831

namespace A168188

/-- `A006003(n)+A170793(n)-A168119(n)` -/
def P14286421793342035831.Spec : Prop :=
  ∀ n, P14286421793342035831.a n = A168188 n

end A168188

/-!
# A168189: a(n) = n^3*(n^8 + 1)/2.

The programs for A168189, the canonical program `A168189.P2122400584421054534` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168189 has offset 0).

The definition of A168189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168189.P2122400584421054534

`n^3*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168189

/-- `n^3*(n^8+1)/2` -/
def P2122400584421054534.Spec : Prop :=
  ∀ n, P2122400584421054534.a n = (A168189 n : ℚ)

end A168189

/-! ## A168189.P14227675143657074074

`A168627(n)-C(floor(sqrt(n^6+1)), 2)`
-/

namespace A168189.P14227675143657074074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168627 n - (Nat.choose (Nat.sqrt (n ^ 6 + 1)) 2 : ℤ)

end

end A168189.P14227675143657074074

namespace A168189

/-- `A168627(n)-C(floor(sqrt(n^6+1)), 2)` -/
def P14227675143657074074.Spec : Prop :=
  ∀ n, P14227675143657074074.a n = A168189 n

end A168189

/-! ## A168189.P5677456680219645224

`A168119(n)+A135503(n)`
-/

namespace A168189.P5677456680219645224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168119 n + A135503 n

end

end A168189.P5677456680219645224

namespace A168189

/-- `A168119(n)+A135503(n)` -/
def P5677456680219645224.Spec : Prop :=
  ∀ n, P5677456680219645224.a n = A168189 n

end A168189

/-! ## A168189.P4958548062218179416

`A168627(n)-A085744(n)`
-/

namespace A168189.P4958548062218179416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168627 n - A085744 n

end

end A168189.P4958548062218179416

namespace A168189

/-- `A168627(n)-A085744(n)` -/
def P4958548062218179416.Spec : Prop :=
  ∀ n, P4958548062218179416.a n = A168189 n

end A168189

/-! ## A168189.P5901036886758984787

`A168412(n)-A321672(n)`
-/

namespace A168189.P5901036886758984787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168412 n - A321672 n

end

end A168189.P5901036886758984787

namespace A168189

/-- `A168412(n)-A321672(n)` -/
def P5901036886758984787.Spec : Prop :=
  ∀ n, P5901036886758984787.a n = A168189 n

end A168189

/-! ## A168189.P2783048915764417130

`lcm(A129204(n), A168116(n))`
-/

namespace A168189.P2783048915764417130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129204 n) (A168116 n)

end

end A168189.P2783048915764417130

namespace A168189

/-- `lcm(A129204(n), A168116(n))` -/
def P2783048915764417130.Spec : Prop :=
  ∀ n, (P2783048915764417130.a n : ℤ) = A168189 n

end A168189

/-! ## A168189.P7249335643464353055

`A168153(n)+n*A161680(n)`
-/

namespace A168189.P7249335643464353055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n + (n : ℤ) * A161680 n

end

end A168189.P7249335643464353055

namespace A168189

/-- `A168153(n)+n*A161680(n)` -/
def P7249335643464353055.Spec : Prop :=
  ∀ n, P7249335643464353055.a n = A168189 n

end A168189

/-! ## A168189.P13299403626510160852

`n²*A168187(n)-A321672(n)`
-/

namespace A168189.P13299403626510160852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168187 n - A321672 n

end

end A168189.P13299403626510160852

namespace A168189

/-- `n²*A168187(n)-A321672(n)` -/
def P13299403626510160852.Spec : Prop :=
  ∀ n, P13299403626510160852.a n = A168189 n

end A168189

/-!
# A168190: a(n) = n^3*(n^9 + 1)/2.

The programs for A168190, the canonical program `A168190.P9224738756666168237` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168190 has offset 0).

The definition of A168190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168190.P9224738756666168237

`n^3*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168190

/-- `n^3*(n^9+1)/2` -/
def P9224738756666168237.Spec : Prop :=
  ∀ n, P9224738756666168237.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P8546644607984230064

`lcm(n, (n^3+n^12)/2)`
-/

namespace A168190.P8546644607984230064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n ^ 3 + n ^ 12 : ℚ) / 2))

end

end A168190.P8546644607984230064

namespace A168190

/-- `lcm(n, (n^3+n^12)/2)` -/
def P8546644607984230064.Spec : Prop :=
  ∀ n, (P8546644607984230064.a n : ℤ) = A168190 n

end A168190

/-! ## A168190.P17042491998297959796

`n²*A196292(n)/2`
-/

namespace A168190.P17042491998297959796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A196292 n : ℚ) / 2

end

end A168190.P17042491998297959796

namespace A168190

/-- `n²*A196292(n)/2` -/
def P17042491998297959796.Spec : Prop :=
  ∀ n, P17042491998297959796.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P11964337677708623490

`sqrt(n²*A168153(n)²)`
-/

namespace A168190.P11964337677708623490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A168153 n ^ 2 : ℝ)

end

end A168190.P11964337677708623490

namespace A168190

/-- `sqrt(n²*A168153(n)²)` -/
def P11964337677708623490.Spec : Prop :=
  ∀ n, P11964337677708623490.a n = (A168190 n : ℝ)

end A168190

/-! ## A168190.P13601123721602921081

`A168345(n)/A028310(n)`
-/

namespace A168190.P13601123721602921081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168345 n : ℚ) / (A028310 n : ℚ)

end

end A168190.P13601123721602921081

namespace A168190

/-- `A168345(n)/A028310(n)` -/
def P13601123721602921081.Spec : Prop :=
  ∀ n, P13601123721602921081.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P2310259187177509001

`A168471(n)/A028310(n)²`
-/

namespace A168190.P2310259187177509001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168471 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A168190.P2310259187177509001

namespace A168190

/-- `A168471(n)/A028310(n)²` -/
def P2310259187177509001.Spec : Prop :=
  ∀ n, P2310259187177509001.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P16823641757967159623

`(A008456(n)+A000578(n))/2`
-/

namespace A168190.P16823641757967159623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008456 n + A000578 n : ℚ) / 2

end

end A168190.P16823641757967159623

namespace A168190

/-- `(A008456(n)+A000578(n))/2` -/
def P16823641757967159623.Spec : Prop :=
  ∀ n, P16823641757967159623.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P6302250961569868106

`(A000578(n)+A001014(n)²)/2`
-/

namespace A168190.P6302250961569868106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n + A001014 n ^ 2 : ℚ) / 2

end

end A168190.P6302250961569868106

namespace A168190

/-- `(A000578(n)+A001014(n)²)/2` -/
def P6302250961569868106.Spec : Prop :=
  ∀ n, P6302250961569868106.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P14850993640176351130

`n²*A168188(n)-A321672(n)`
-/

namespace A168190.P14850993640176351130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168188 n - A321672 n

end

end A168190.P14850993640176351130

namespace A168190

/-- `n²*A168188(n)-A321672(n)` -/
def P14850993640176351130.Spec : Prop :=
  ∀ n, P14850993640176351130.a n = A168190 n

end A168190

/-! ## A168190.P8419174177221417986

`n²*A168153(n)/A028310(n)`
-/

namespace A168190.P8419174177221417986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A168153 n : ℚ) / (A028310 n : ℚ)

end

end A168190.P8419174177221417986

namespace A168190

/-- `n²*A168153(n)/A028310(n)` -/
def P8419174177221417986.Spec : Prop :=
  ∀ n, P8419174177221417986.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P16582102072184696936

`A071232(n)+A071232(n)*A136006(n)`
-/

namespace A168190.P16582102072184696936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 n + A071232 n * A136006 n

end

end A168190.P16582102072184696936

namespace A168190

/-- `A071232(n)+A071232(n)*A136006(n)` -/
def P16582102072184696936.Spec : Prop :=
  ∀ n, P16582102072184696936.a n = A168190 n

end A168190

/-! ## A168190.P5760528056306342837

`A085744(n²)+A071232(n)`
-/

namespace A168190.P5760528056306342837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 (n ^ 2) + A071232 n

end

end A168190.P5760528056306342837

namespace A168190

/-- `A085744(n²)+A071232(n)` -/
def P5760528056306342837.Spec : Prop :=
  ∀ n, P5760528056306342837.a n = A168190 n

end A168190

/-! ## A168190.P16683770128882140719

`A168471(n)/A028310(n*A028310(n))`
-/

namespace A168190.P16683770128882140719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168471 n : ℚ) / (A028310 ((n : ℤ) * A028310 n).toNat : ℚ)

end

end A168190.P16683770128882140719

namespace A168190

/-- `A168471(n)/A028310(n*A028310(n))` -/
def P16683770128882140719.Spec : Prop :=
  ∀ n, P16683770128882140719.a n = (A168190 n : ℚ)

end A168190

/-! ## A168190.P12893209403016105345

`A071232(n²)-A085744(n)`
-/

namespace A168190.P12893209403016105345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 (n ^ 2) - A085744 n

end

end A168190.P12893209403016105345

namespace A168190

/-- `A071232(n²)-A085744(n)` -/
def P12893209403016105345.Spec : Prop :=
  ∀ n, P12893209403016105345.a n = A168190 n

end A168190

/-!
# A168191: a(n) = n^3*(n^10 + 1)/2.

The programs for A168191, the canonical program `A168191.P14850579979389113099` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168191 has offset 0).

The definition of A168191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168191.P14850579979389113099

`n^3*(n^10+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168191

/-- `n^3*(n^10+1)/2` -/
def P14850579979389113099.Spec : Prop :=
  ∀ n, P14850579979389113099.a n = (A168191 n : ℚ)

end A168191

/-! ## A168191.P11219430232627958863

`lcm(n, n*A168176(n))`
-/

namespace A168191.P11219430232627958863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A168176 n)

end

end A168191.P11219430232627958863

namespace A168191

/-- `lcm(n, n*A168176(n))` -/
def P11219430232627958863.Spec : Prop :=
  ∀ n, (P11219430232627958863.a n : ℤ) = A168191 n

end A168191

/-! ## A168191.P1678123488589061478

`A168346(n)/A028310(n)`
-/

namespace A168191.P1678123488589061478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168346 n : ℚ) / (A028310 n : ℚ)

end

end A168191.P1678123488589061478

namespace A168191

/-- `A168346(n)/A028310(n)` -/
def P1678123488589061478.Spec : Prop :=
  ∀ n, P1678123488589061478.a n = (A168191 n : ℚ)

end A168191

/-! ## A168191.P13004390803714938497

`lcm(A129204(n), A168119(n))`
-/

namespace A168191.P13004390803714938497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129204 n) (A168119 n)

end

end A168191.P13004390803714938497

namespace A168191

/-- `lcm(A129204(n), A168119(n))` -/
def P13004390803714938497.Spec : Prop :=
  ∀ n, (P13004390803714938497.a n : ℤ) = A168191 n

end A168191

/-! ## A168191.P9391558992213560170

`lcm(A168176(n), A168178(n))`
-/

namespace A168191.P9391558992213560170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168176 n) (A168178 n)

end

end A168191.P9391558992213560170

namespace A168191

/-- `lcm(A168176(n), A168178(n))` -/
def P9391558992213560170.Spec : Prop :=
  ∀ n, (P9391558992213560170.a n : ℤ) = A168191 n

end A168191

/-! ## A168191.P2682107337340295676

`abs(A001489(n)*A168176(n))`
-/

namespace A168191.P2682107337340295676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A168176 n|

end

end A168191.P2682107337340295676

namespace A168191

/-- `abs(A001489(n)*A168176(n))` -/
def P2682107337340295676.Spec : Prop :=
  ∀ n, P2682107337340295676.a n = A168191 n

end A168191

/-! ## A168191.P7825865478882379078

`(A010801(n)+A000578(n))/2`
-/

namespace A168191.P7825865478882379078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010801 n + A000578 n : ℚ) / 2

end

end A168191.P7825865478882379078

namespace A168191

/-- `(A010801(n)+A000578(n))/2` -/
def P7825865478882379078.Spec : Prop :=
  ∀ n, P7825865478882379078.a n = (A168191 n : ℚ)

end A168191

/-! ## A168191.P11778567862541246217

`n²*A168189(n)-A321672(n)`
-/

namespace A168191.P11778567862541246217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168189 n - A321672 n

end

end A168191.P11778567862541246217

namespace A168191

/-- `n²*A168189(n)-A321672(n)` -/
def P11778567862541246217.Spec : Prop :=
  ∀ n, P11778567862541246217.a n = A168191 n

end A168191

/-! ## A168191.P12934426108121773156

`A002522(n)*A168119(n)-A168119(n)`
-/

namespace A168191.P12934426108121773156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A168119 n - A168119 n

end

end A168191.P12934426108121773156

namespace A168191

/-- `A002522(n)*A168119(n)-A168119(n)` -/
def P12934426108121773156.Spec : Prop :=
  ∀ n, P12934426108121773156.a n = A168191 n

end A168191

/-! ## A168191.P6221406605523358370

`A168346(n)/A123108(2*n)`
-/

namespace A168191.P6221406605523358370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168346 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A168191.P6221406605523358370

namespace A168191

/-- `A168346(n)/A123108(2*n)` -/
def P6221406605523358370.Spec : Prop :=
  ∀ n, P6221406605523358370.a n = (A168191 n : ℚ)

end A168191

/-! ## A168191.P12917276575833593040

`A168346(n)/(log2(A011782(n))+1)`
-/

namespace A168191.P12917276575833593040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A168346 n : ℝ) / (Real.logb 2 (A011782 n : ℝ) + 1)

end

end A168191.P12917276575833593040

namespace A168191

/-- `A168346(n)/(log2(A011782(n))+1)` -/
def P12917276575833593040.Spec : Prop :=
  ∀ n, P12917276575833593040.a n = (A168191 n : ℝ)

end A168191

/-! ## A168191.P12690899911980821891

`record[A037213(n)*A167963(n)]`
-/

namespace A168191.P12690899911980821891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n * A167963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168191.P12690899911980821891

namespace A168191

/-- `record[A037213(n)*A167963(n)]` -/
def P12690899911980821891.Spec : Prop :=
  ∀ n, P12690899911980821891.a n = A168191 n

end A168191

/-! ## A168191.P6961821834402065741

`A168123(n²)/A028310(n)`
-/

namespace A168191.P6961821834402065741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168123 (n ^ 2) : ℚ) / (A028310 n : ℚ)

end

end A168191.P6961821834402065741

namespace A168191

/-- `A168123(n²)/A028310(n)` -/
def P6961821834402065741.Spec : Prop :=
  ∀ n, P6961821834402065741.a n = (A168191 n : ℚ)

end A168191

/-! ## A168191.P12345966340667358502

`n*A168123(n²)/A253909(n)`
-/

namespace A168191.P12345966340667358502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A168123 (n ^ 2) : ℚ) / (A253909 n : ℚ)

end

end A168191.P12345966340667358502

namespace A168191

/-- `n*A168123(n²)/A253909(n)` -/
def P12345966340667358502.Spec : Prop :=
  ∀ n, P12345966340667358502.a n = (A168191 n : ℚ)

end A168191

/-!
# A168192: a(n) = n^4*(n^2 + 1)/2.

The programs for A168192, the canonical program `A168192.P2962670294833762186` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168192 has offset 0).

The definition of A168192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168192.P2962670294833762186

`n^4*(n²+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168192

/-- `n^4*(n²+1)/2` -/
def P2962670294833762186.Spec : Prop :=
  ∀ n, P2962670294833762186.a n = (A168192 n : ℚ)

end A168192

/-! ## A168192.P7954976416103714759

`A168122(n)+C(n², 2)`
-/

namespace A168192.P7954976416103714759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 n + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168192.P7954976416103714759

namespace A168192

/-- `A168122(n)+C(n², 2)` -/
def P7954976416103714759.Spec : Prop :=
  ∀ n, P7954976416103714759.a n = A168192 n

end A168192

/-! ## A168192.P8368835977144047804

`A100855(n)+A085742(n)`
-/

namespace A168192.P8368835977144047804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n + A085742 n

end

end A168192.P8368835977144047804

namespace A168192

/-- `A100855(n)+A085742(n)` -/
def P8368835977144047804.Spec : Prop :=
  ∀ n, P8368835977144047804.a n = A168192 n

end A168192

/-! ## A168192.P5048618452747587434

`A163274(n)-A000584(n)`
-/

namespace A168192.P5048618452747587434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163274 n - A000584 n

end

end A168192.P5048618452747587434

namespace A168192

/-- `A163274(n)-A000584(n)` -/
def P5048618452747587434.Spec : Prop :=
  ∀ n, P5048618452747587434.a n = A168192 n

end A168192

/-! ## A168192.P5523256932277119866

`A168364(n)/A028310(n)`
-/

namespace A168192.P5523256932277119866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168364 n : ℚ) / (A028310 n : ℚ)

end

end A168192.P5523256932277119866

namespace A168192

/-- `A168364(n)/A028310(n)` -/
def P5523256932277119866.Spec : Prop :=
  ∀ n, P5523256932277119866.a n = (A168192 n : ℚ)

end A168192

/-! ## A168192.P15241821988480532716

`A168220(n)/A060886(n)`
-/

namespace A168192.P15241821988480532716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168220 n : ℚ) / (A060886 n : ℚ)

end

end A168192.P15241821988480532716

namespace A168192

/-- `A168220(n)/A060886(n)` -/
def P15241821988480532716.Spec : Prop :=
  ∀ n, P15241821988480532716.a n = (A168192 n : ℚ)

end A168192

/-! ## A168192.P5910133977513732514

`A168527(n)/A253909(n)`
-/

namespace A168192.P5910133977513732514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168527 n : ℚ) / (A253909 n : ℚ)

end

end A168192.P5910133977513732514

namespace A168192

/-- `A168527(n)/A253909(n)` -/
def P5910133977513732514.Spec : Prop :=
  ∀ n, P5910133977513732514.a n = (A168192 n : ℚ)

end A168192

/-! ## A168192.P11805906135614377379

`gcd(A168220(n), A168364(n))`
-/

namespace A168192.P11805906135614377379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168220 n) (A168364 n)

end

end A168192.P11805906135614377379

namespace A168192

/-- `gcd(A168220(n), A168364(n))` -/
def P11805906135614377379.Spec : Prop :=
  ∀ n, (P11805906135614377379.a n : ℤ) = A168192 n

end A168192

/-! ## A168192.P1116525635196240832

`A085744(n)+n*A002411(n)`
-/

namespace A168192.P1116525635196240832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 n + (n : ℤ) * A002411 n

end

end A168192.P1116525635196240832

namespace A168192

/-- `A085744(n)+n*A002411(n)` -/
def P1116525635196240832.Spec : Prop :=
  ∀ n, P1116525635196240832.a n = A168192 n

end A168192

/-! ## A168192.P16987703160519886024

`A321672(n)+n*A101376(n)`
-/

namespace A168192.P16987703160519886024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + (n : ℤ) * A101376 n

end

end A168192.P16987703160519886024

namespace A168192

/-- `A321672(n)+n*A101376(n)` -/
def P16987703160519886024.Spec : Prop :=
  ∀ n, P16987703160519886024.a n = A168192 n

end A168192

/-! ## A168192.P12217063459836965298

`A002411(n²)`
-/

namespace A168192.P12217063459836965298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n ^ 2)

end

end A168192.P12217063459836965298

namespace A168192

/-- `A002411(n²)` -/
def P12217063459836965298.Spec : Prop :=
  ∀ n, P12217063459836965298.a n = A168192 n

end A168192

/-! ## A168192.P10151006079791555407

`A100119(n²)-1`
-/

namespace A168192.P10151006079791555407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 (n ^ 2) - 1

end

end A168192.P10151006079791555407

namespace A168192

/-- `A100119(n²)-1` -/
def P10151006079791555407.Spec : Prop :=
  ∀ n, P10151006079791555407.a n = A168192 n

end A168192

/-! ## A168192.P15299843848164528370

`A011379(n²)/2`
-/

namespace A168192.P15299843848164528370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011379 (n ^ 2) : ℚ) / 2

end

end A168192.P15299843848164528370

namespace A168192

/-- `A011379(n²)/2` -/
def P15299843848164528370.Spec : Prop :=
  ∀ n, P15299843848164528370.a n = (A168192 n : ℚ)

end A168192

/-!
# A168193: a(n) = a(n-1) + a(n-2) + 4, with a(0)=0, a(1)=2.

The programs for A168193, the canonical program `A168193.P10033512296613066054` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168193 has offset 0).

The definition of A168193 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+4` (program `A168193.P10033512296613066054`, by `A168193.P10033512296613066054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168193.P10033512296613066054

`a(n-1)+a(n-2)+4` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168193

/-- `a(n-1)+a(n-2)+4` -/
def P10033512296613066054.Spec : Prop :=
  ∀ n, (P10033512296613066054.a n : ℤ) = A168193 n

theorem P10033512296613066054.correct : P10033512296613066054.Spec := by
  intro n
  simp only [A168193]

end A168193

/-! ## A168193.P5028310180349857363

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=6`
-/

namespace A168193.P5028310180349857363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A168193.P5028310180349857363

namespace A168193

/-- `2*a(n-1)-a(n-3)` -/
def P5028310180349857363.Spec : Prop :=
  ∀ n, P5028310180349857363.a n = A168193 n

end A168193

/-! ## A168193.P5435267111599135324

`2*A001911(n)`
-/

namespace A168193.P5435267111599135324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001911 n

end

end A168193.P5435267111599135324

namespace A168193

/-- `2*A001911(n)` -/
def P5435267111599135324.Spec : Prop :=
  ∀ n, P5435267111599135324.a n = A168193 n

end A168193

/-! ## A168193.P3144270197202472568

`A019274(n+1)+A019274(n+2)`
-/

namespace A168193.P3144270197202472568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + A019274 (n + 2)

end

end A168193.P3144270197202472568

namespace A168193

/-- `A019274(n+1)+A019274(n+2)` -/
def P3144270197202472568.Spec : Prop :=
  ∀ n, P3144270197202472568.a n = A168193 n

end A168193

/-! ## A168193.P12374931279285923604

`ogf((2x+2x^2)/(1-2x+x^3))`
-/

namespace A168193.P12374931279285923604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -2, 0, 1] n

end

end A168193.P12374931279285923604

namespace A168193

/-- `ogf((2x+2x^2)/(1-2x+x^3))` -/
def P12374931279285923604.Spec : Prop :=
  ∀ n, P12374931279285923604.a n = A168193 n

end A168193

/-! ## A168193.P4464219337562279550

`ceil(ϕ*a(n-1))+2` with `a(0)=0`
-/

namespace A168193.P4464219337562279550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ + 2

end

end A168193.P4464219337562279550

namespace A168193

/-- `ceil(ϕ*a(n-1))+2` -/
def P4464219337562279550.Spec : Prop :=
  ∀ n, P4464219337562279550.a n = A168193 n

end A168193

/-! ## A168193.P18049519587551235727

`floor(ϕ*(a(n-1)+2))` with `a(0)=0, a(1)=2`
-/

namespace A168193.P18049519587551235727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 2 : ℝ)⌋

end

end A168193.P18049519587551235727

namespace A168193

/-- `floor(ϕ*(a(n-1)+2))` -/
def P18049519587551235727.Spec : Prop :=
  ∀ n, P18049519587551235727.a n = A168193 n

end A168193

/-! ## A168193.P4184203043844887696

`round(ϕ*(a(n-1)+ϕ))` with `a(0)=0, a(1)=2`
-/

namespace A168193.P4184203043844887696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * ((a (n - 1) : ℝ) + Real.goldenRatio))

end

end A168193.P4184203043844887696

namespace A168193

/-- `round(ϕ*(a(n-1)+ϕ))` -/
def P4184203043844887696.Spec : Prop :=
  ∀ n, P4184203043844887696.a n = A168193 n

end A168193

/-! ## A168193.P16503292171492825718

`2-floor(-ϕ*a(n-1))` with `a(0)=0`
-/

namespace A168193.P16503292171492825718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ⌊-(Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A168193.P16503292171492825718

namespace A168193

/-- `2-floor(-ϕ*a(n-1))` -/
def P16503292171492825718.Spec : Prop :=
  ∀ n, P16503292171492825718.a n = A168193 n

end A168193

/-! ## A168193.P11229228822829558598

`2-floor(a(n-1)/(1-ϕ))` with `a(0)=0`
-/

namespace A168193.P11229228822829558598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - ⌊(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌋

end

end A168193.P11229228822829558598

namespace A168193

/-- `2-floor(a(n-1)/(1-ϕ))` -/
def P11229228822829558598.Spec : Prop :=
  ∀ n, P11229228822829558598.a n = A168193 n

end A168193

/-! ## A168193.P7463165659755806728

`5-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A168193.P7463165659755806728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  5 - (1 - a (n - 1) - a (n - 2))

end

end A168193.P7463165659755806728

namespace A168193

/-- `5-floor(1-a(n-1)-a(n-2))` -/
def P7463165659755806728.Spec : Prop :=
  ∀ n, P7463165659755806728.a n = A168193 n

end A168193

/-! ## A168193.P9477156183936533202

`4-(a(n-1)%2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A168193.P9477156183936533202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 - (Int.tmod (a (n - 1)) 2 - a (n - 1) - a (n - 2))

end

end A168193.P9477156183936533202

namespace A168193

/-- `4-(a(n-1)%2-a(n-1)-a(n-2))` -/
def P9477156183936533202.Spec : Prop :=
  ∀ n, P9477156183936533202.a n = A168193 n

end A168193

/-! ## A168193.P7657345310321051522

`A154691(n)-1`
-/

namespace A168193.P7657345310321051522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n - 1

end

end A168193.P7657345310321051522

namespace A168193

/-- `A154691(n)-1` -/
def P7657345310321051522.Spec : Prop :=
  ∀ n, P7657345310321051522.a n = A168193 n

end A168193

/-! ## A168193.P7611089921361672217

`A192760(n)+n`
-/

namespace A168193.P7611089921361672217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + (n : ℤ)

end

end A168193.P7611089921361672217

namespace A168193

/-- `A192760(n)+n` -/
def P7611089921361672217.Spec : Prop :=
  ∀ n, P7611089921361672217.a n = A168193 n

end A168193

/-! ## A168193.P13703496378564314401

`∑[A288603(n)-2]`
-/

namespace A168193.P13703496378564314401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168193.P13703496378564314401

namespace A168193

/-- `∑[A288603(n)-2]` -/
def P13703496378564314401.Spec : Prop :=
  ∀ n, P13703496378564314401.a n = A168193 n

end A168193

/-! ## A168193.P7370887417409089002

`A001595(n+2)-3`
-/

namespace A168193.P7370887417409089002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 2) - 3

end

end A168193.P7370887417409089002

namespace A168193

/-- `A001595(n+2)-3` -/
def P7370887417409089002.Spec : Prop :=
  ∀ n, P7370887417409089002.a n = A168193 n

end A168193

/-! ## A168193.P12592431523186248814

`A019274(n+3)-2`
-/

namespace A168193.P12592431523186248814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 3) - 2

end

end A168193.P12592431523186248814

namespace A168193

/-- `A019274(n+3)-2` -/
def P12592431523186248814.Spec : Prop :=
  ∀ n, P12592431523186248814.a n = A168193 n

end A168193

/-! ## A168193.P12430274306867666247

`A078642(n+1)-4`
-/

namespace A168193.P12430274306867666247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - 4

end

end A168193.P12430274306867666247

namespace A168193

/-- `A078642(n+1)-4` -/
def P12430274306867666247.Spec : Prop :=
  ∀ n, P12430274306867666247.a n = A168193 n

end A168193

/-! ## A168193.P11337341660726802995

`2*(A020695(n)-2)`
-/

namespace A168193.P11337341660726802995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020695 n - 2)

end

end A168193.P11337341660726802995

namespace A168193

/-- `2*(A020695(n)-2)` -/
def P11337341660726802995.Spec : Prop :=
  ∀ n, P11337341660726802995.a n = A168193 n

end A168193

/-! ## A168193.P4334316205272254327

`A068922(n+2)-4`
-/

namespace A168193.P4334316205272254327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 2) - 4

end

end A168193.P4334316205272254327

namespace A168193

/-- `A068922(n+2)-4` -/
def P4334316205272254327.Spec : Prop :=
  ∀ n, P4334316205272254327.a n = A168193 n

end A168193

/-!
# A168194: a(n) = n^4*(n^3 + 1)/2.

The programs for A168194, the canonical program `A168194.P13933221409142909685` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168194 has offset 0).

The definition of A168194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168194.P13933221409142909685

`(n^7+n^4)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168194

/-- `(n^7+n^4)/2` -/
def P13933221409142909685.Spec : Prop :=
  ∀ n, P13933221409142909685.a n = (A168194 n : ℚ)

end A168194

/-! ## A168194.P7088453517339998494

`n^4*(n^3+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168194.P7088453517339998494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℚ) * ((n ^ 3 + 1 : ℚ) / 2)

end

end A168194.P7088453517339998494

namespace A168194

/-- `n^4*(n^3+1)/2` -/
def P7088453517339998494.Spec : Prop :=
  ∀ n, P7088453517339998494.a n = (A168194 n : ℚ)

end A168194

/-! ## A168194.P12245219511492537405

`n²²+n*A085744(n)`
-/

namespace A168194.P12245219511492537405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) + (n : ℤ) * A085744 n

end

end A168194.P12245219511492537405

namespace A168194

/-- `n²²+n*A085744(n)` -/
def P12245219511492537405.Spec : Prop :=
  ∀ n, P12245219511492537405.a n = A168194 n

end A168194

/-! ## A168194.P1369989796696997744

`gcd(A168345(n), A168371(n))`
-/

namespace A168194.P1369989796696997744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168345 n) (A168371 n)

end

end A168194.P1369989796696997744

namespace A168194

/-- `gcd(A168345(n), A168371(n))` -/
def P1369989796696997744.Spec : Prop :=
  ∀ n, (P1369989796696997744.a n : ℤ) = A168194 n

end A168194

/-! ## A168194.P415342184949120698

`A027441(n)+A168526(n)-A167963(n)`
-/

namespace A168194.P415342184949120698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n + (A168526 n - A167963 n)

end

end A168194.P415342184949120698

namespace A168194

/-- `A027441(n)+A168526(n)-A167963(n)` -/
def P415342184949120698.Spec : Prop :=
  ∀ n, P415342184949120698.a n = A168194 n

end A168194

/-!
# A168195: a(n) = 2*n - a(n-1) + 1 with n>1, a(1)=5.

The programs for A168195, the canonical program `A168195.P17904341381922752033` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168195 has offset 1).

The definition of A168195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-a(n-1)+1` (program `A168195.P17904341381922752033`, by `A168195.P17904341381922752033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168195.P17904341381922752033

`2*(n+1)-a(n-1)+1` with `a(0)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168195

/-- `2*(n+1)-a(n-1)+1` -/
def P17904341381922752033.Spec : Prop :=
  ∀ n, P17904341381922752033.a n = A168195 (n + 1)

theorem P17904341381922752033.correct : P17904341381922752033.Spec := by
  intro n
  simp only [A168195, Nat.add_sub_cancel]

end A168195

/-! ## A168195.P4790493873448814491

`or(4, (-1)^n)+n`
-/

namespace A168195.P4790493873448814491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 ((-1) ^ n) + (n : ℤ)

end

end A168195.P4790493873448814491

namespace A168195

/-- `or(4, (-1)^n)+n` -/
def P4790493873448814491.Spec : Prop :=
  ∀ n, P4790493873448814491.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P4542960006078240791

`a(n-2)+2` with `a(0)=5, a(1)=0`
-/

namespace A168195.P4542960006078240791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 0] fun n a =>
  a (n - 2) + 2

end

end A168195.P4542960006078240791

namespace A168195

/-- `a(n-2)+2` -/
def P4542960006078240791.Spec : Prop :=
  ∀ n, (P4542960006078240791.a n : ℤ) = A168195 (n + 1)

end A168195

/-! ## A168195.P5405632726684782412

`n-(-5)^∑[(-1)^n]`
-/

namespace A168195.P5405632726684782412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (-5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A168195.P5405632726684782412

namespace A168195

/-- `n-(-5)^∑[(-1)^n]` -/
def P5405632726684782412.Spec : Prop :=
  ∀ n, P5405632726684782412.a n = (A168195 (n + 1) : ℚ)

end A168195

/-! ## A168195.P13775087751535174422

`∑[or(2, -a(n-1))]` with `a(0)=5`
-/

namespace A168195.P13775087751535174422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  Int.lor 2 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168195.P13775087751535174422

namespace A168195

/-- `∑[or(2, -a(n-1))]` -/
def P13775087751535174422.Spec : Prop :=
  ∀ n, P13775087751535174422.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P4227348506121236348

`∑[2-a(n-1)]` with `a(0)=5, a(1)=-5`
-/

namespace A168195.P4227348506121236348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, -5] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168195.P4227348506121236348

namespace A168195

/-- `∑[2-a(n-1)]` -/
def P4227348506121236348.Spec : Prop :=
  ∀ n, P4227348506121236348.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P10106506877860072429

`∑[∑[ogf((5-5x+2x^2)/(1+x))]]`
-/

namespace A168195.P10106506877860072429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -5, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168195.P10106506877860072429

namespace A168195

/-- `∑[∑[ogf((5-5x+2x^2)/(1+x))]]` -/
def P10106506877860072429.Spec : Prop :=
  ∀ n, P10106506877860072429.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P1941032740077702101

`ogf((5-5x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168195.P1941032740077702101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -5, 2] [1, -1, -1, 1] n

end

end A168195.P1941032740077702101

namespace A168195

/-- `ogf((5-5x+2x^2)/(1-x-x^2+x^3))` -/
def P1941032740077702101.Spec : Prop :=
  ∀ n, P1941032740077702101.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P5085602071233074083

`xor(1, 2*xor(1, n)-(n-2))`
-/

namespace A168195.P5085602071233074083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 * Nat.xor 1 n : ℤ) - ((n : ℤ) - 2))

end

end A168195.P5085602071233074083

namespace A168195

/-- `xor(1, 2*xor(1, n)-(n-2))` -/
def P5085602071233074083.Spec : Prop :=
  ∀ n, P5085602071233074083.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P7407726557052848911

`ceil(a(n-2)-(ϕ-3))` with `a(0)=5, a(1)=0`
-/

namespace A168195.P7407726557052848911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n a =>
  ⌈(a (n - 2) : ℝ) - (Real.goldenRatio - 3)⌉

end

end A168195.P7407726557052848911

namespace A168195

/-- `ceil(a(n-2)-(ϕ-3))` -/
def P7407726557052848911.Spec : Prop :=
  ∀ n, P7407726557052848911.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P14420664369612599846

`floor(a(n-2)-(ϕ-4))` with `a(0)=5, a(1)=0`
-/

namespace A168195.P14420664369612599846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n a =>
  ⌊(a (n - 2) : ℝ) - (Real.goldenRatio - 4)⌋

end

end A168195.P14420664369612599846

namespace A168195

/-- `floor(a(n-2)-(ϕ-4))` -/
def P14420664369612599846.Spec : Prop :=
  ∀ n, P14420664369612599846.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P17818116997580232167

`round(a(n-2)-(ϕ-4))` with `a(0)=5, a(1)=0`
-/

namespace A168195.P17818116997580232167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) - (Real.goldenRatio - 4))

end

end A168195.P17818116997580232167

namespace A168195

/-- `round(a(n-2)-(ϕ-4))` -/
def P17818116997580232167.Spec : Prop :=
  ∀ n, P17818116997580232167.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P127647984348422789

`xor(xor(1, n)+3, xor(n, n+1))`
-/

namespace A168195.P127647984348422789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor 1 n + 3) (Nat.xor n (n + 1))

end

end A168195.P127647984348422789

namespace A168195

/-- `xor(xor(1, n)+3, xor(n, n+1))` -/
def P127647984348422789.Spec : Prop :=
  ∀ n, (P127647984348422789.a n : ℤ) = A168195 (n + 1)

end A168195

/-! ## A168195.P7457238174155677140

`Δ[C(n+2, 2)-gcd(2, n)²]`
-/

namespace A168195.P7457238174155677140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - (Nat.gcd 2 n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168195.P7457238174155677140

namespace A168195

/-- `Δ[C(n+2, 2)-gcd(2, n)²]` -/
def P7457238174155677140.Spec : Prop :=
  ∀ n, P7457238174155677140.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P7010505796934309702

`abs(2*n-(a(n-1)-3))` with `a(0)=5`
-/

namespace A168195.P7010505796934309702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |(2 * n : ℤ) - (a (n - 1) - 3)|

end

end A168195.P7010505796934309702

namespace A168195

/-- `abs(2*n-(a(n-1)-3))` -/
def P7010505796934309702.Spec : Prop :=
  ∀ n, P7010505796934309702.a n = A168195 (n + 1)

end A168195

/-! ## A168195.P11059077293098749431

`floor(2*n-(a(n-1)-3))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A168195.P11059077293098749431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - 3)

end

end A168195.P11059077293098749431

namespace A168195

/-- `floor(2*n-(a(n-1)-3))` -/
def P11059077293098749431.Spec : Prop :=
  ∀ n, P11059077293098749431.a n = A168195 (n + 1)

theorem P11059077293098749431.correct : P11059077293098749431.Spec := by
  intro n
  simp only [A168195, Nat.add_sub_cancel, A168195.P11059077293098749431.a, A168195.P17904341381922752033.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168195

/-! ## A168195.P14724452274552679152

`ceil(2*n-(a(n-1)-3))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A168195.P14724452274552679152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - 3)

end

end A168195.P14724452274552679152

namespace A168195

/-- `ceil(2*n-(a(n-1)-3))` -/
def P14724452274552679152.Spec : Prop :=
  ∀ n, P14724452274552679152.a n = A168195 (n + 1)

theorem P14724452274552679152.correct : P14724452274552679152.Spec := by
  intro n
  simp only [A168195, Nat.add_sub_cancel, A168195.P14724452274552679152.a, A168195.P17904341381922752033.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168195

/-! ## A168195.P5986458367194992663

`round(2*n-(a(n-1)-3))` with `a(0)=5`

`round` is left out, it is the identity on integers.
-/

namespace A168195.P5986458367194992663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - 3)

end

end A168195.P5986458367194992663

namespace A168195

/-- `round(2*n-(a(n-1)-3))` -/
def P5986458367194992663.Spec : Prop :=
  ∀ n, P5986458367194992663.a n = A168195 (n + 1)

theorem P5986458367194992663.correct : P5986458367194992663.Spec := by
  intro n
  simp only [A168195, Nat.add_sub_cancel, A168195.P5986458367194992663.a, A168195.P17904341381922752033.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168195

/-! ## A168195.P7897380608067313522

`floor(n-(a(n-1)-3-n))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A168195.P7897380608067313522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) - (a (n - 1) - 3 - (n : ℤ))

end

end A168195.P7897380608067313522

namespace A168195

/-- `floor(n-(a(n-1)-3-n))` -/
def P7897380608067313522.Spec : Prop :=
  ∀ n, P7897380608067313522.a n = A168195 (n + 1)

theorem P7897380608067313522.correct : P7897380608067313522.Spec := by
  intro n
  simp only [A168195, Nat.add_sub_cancel, A168195.P7897380608067313522.a, A168195.P17904341381922752033.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168195

/-! ## A168195.P463395408487637088

`2*(n-(a(n-1)-3)/2)` with `a(0)=5`
-/

namespace A168195.P463395408487637088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  2 * ((n : ℚ) - (a (n - 1) - 3) / 2)

end

end A168195.P463395408487637088

namespace A168195

/-- `2*(n-(a(n-1)-3)/2)` -/
def P463395408487637088.Spec : Prop :=
  ∀ n, P463395408487637088.a n = (A168195 (n + 1) : ℚ)

end A168195

/-!
# A168196: a(n) = n^4*(n^5 + 1)/2.

The programs for A168196, the canonical program `A168196.P11637489606883159804` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168196 has offset 0).

The definition of A168196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168196.P11637489606883159804

`n^4*(n^5+1)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168196

/-- `n^4*(n^5+1)/2` -/
def P11637489606883159804.Spec : Prop :=
  ∀ n, P11637489606883159804.a n = (A168196 n : ℚ)

end A168196

/-! ## A168196.P15105568030248069320

`round(sqrt(C((n*n²²+1)*n²², 2)/2))`
-/

namespace A168196.P15105568030248069320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose ((n * (n ^ 2) ^ 2 + 1) * (n ^ 2) ^ 2) 2 : ℚ) / 2 : ℝ))

end

end A168196.P15105568030248069320

namespace A168196

/-- `round(sqrt(C((n*n²²+1)*n²², 2)/2))` -/
def P15105568030248069320.Spec : Prop :=
  ∀ n, P15105568030248069320.a n = A168196 n

end A168196

/-! ## A168196.P522467757864280750

`A071236(n)/A028310(n)`
-/

namespace A168196.P522467757864280750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071236 n : ℚ) / (A028310 n : ℚ)

end

end A168196.P522467757864280750

namespace A168196

/-- `A071236(n)/A028310(n)` -/
def P522467757864280750.Spec : Prop :=
  ∀ n, P522467757864280750.a n = (A168196 n : ℚ)

end A168196

/-! ## A168196.P10361208913527914183

`A168627(n)/A253909(n)`
-/

namespace A168196.P10361208913527914183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168627 n : ℚ) / (A253909 n : ℚ)

end

end A168196.P10361208913527914183

namespace A168196

/-- `A168627(n)/A253909(n)` -/
def P10361208913527914183.Spec : Prop :=
  ∀ n, P10361208913527914183.a n = (A168196 n : ℚ)

end A168196

/-! ## A168196.P3160500847517674932

`A168125(n)+A161680(n²)`
-/

namespace A168196.P3160500847517674932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168125 n + A161680 (n ^ 2)

end

end A168196.P3160500847517674932

namespace A168196

/-- `A168125(n)+A161680(n²)` -/
def P3160500847517674932.Spec : Prop :=
  ∀ n, P3160500847517674932.a n = A168196 n

end A168196

/-! ## A168196.P8990516295659798668

`record[n*A168123(A037213(n))]`
-/

namespace A168196.P8990516295659798668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168123 (A037213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168196.P8990516295659798668

namespace A168196

/-- `record[n*A168123(A037213(n))]` -/
def P8990516295659798668.Spec : Prop :=
  ∀ n, P8990516295659798668.a n = A168196 n

end A168196

/-!
# A168197: a(n) = 3*n - a(n-1) + 1 with n > 1, a(1)=0.

The programs for A168197, the canonical program `A168197.P7493453683210505497` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168197 has offset 1).

The definition of A168197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)-a(n-1)+1` (program `A168197.P7493453683210505497`, by `A168197.P7493453683210505497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168197.P7493453683210505497

`3*(n+1)-a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168197

/-- `3*(n+1)-a(n-1)+1` -/
def P7493453683210505497.Spec : Prop :=
  ∀ n, P7493453683210505497.a n = A168197 (n + 1)

theorem P7493453683210505497.correct : P7493453683210505497.Spec := by
  intro n
  simp only [A168197, Nat.add_sub_cancel]

end A168197

/-! ## A168197.P9392096122731273393

`(6*(n+1)+5+11*(-1)^(n+1))/4`
-/

namespace A168197.P9392096122731273393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) + (5 + 11 * (-1) ^ (n + 1)) : ℚ) / 4

end

end A168197.P9392096122731273393

namespace A168197

/-- `(6*(n+1)+5+11*(-1)^(n+1))/4` -/
def P9392096122731273393.Spec : Prop :=
  ∀ n, P9392096122731273393.a n = (A168197 (n + 1) : ℚ)

theorem P9392096122731273393.correct : P9392096122731273393.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168197, Nat.add_sub_cancel, A168197.P9392096122731273393.a, A168197.P7493453683210505497.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168197, Nat.add_sub_cancel, A168197.P9392096122731273393.a, A168197.P7493453683210505497.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168197

/-! ## A168197.P4109287963667027873

`a(n-2)+3` with `a(0)=0, a(1)=7`
-/

namespace A168197.P4109287963667027873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 2) + 3

end

end A168197.P4109287963667027873

namespace A168197

/-- `a(n-2)+3` -/
def P4109287963667027873.Spec : Prop :=
  ∀ n, (P4109287963667027873.a n : ℤ) = A168197 (n + 1)

end A168197

/-! ## A168197.P5739333757889946605

`∑[3-a(n-1)]` with `a(0)=0, a(1)=7`
-/

namespace A168197.P5739333757889946605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168197.P5739333757889946605

namespace A168197

/-- `∑[3-a(n-1)]` -/
def P5739333757889946605.Spec : Prop :=
  ∀ n, P5739333757889946605.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P16386067937374275174

`∑[∑[ogf((7x-4x^2)/(1+x))]]`
-/

namespace A168197.P16386067937374275174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168197.P16386067937374275174

namespace A168197

/-- `∑[∑[ogf((7x-4x^2)/(1+x))]]` -/
def P16386067937374275174.Spec : Prop :=
  ∀ n, P16386067937374275174.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P15720731913504117856

`ogf((7x-4x^2)/(1-x-x^2+x^3))`
-/

namespace A168197.P15720731913504117856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -4] [1, -1, -1, 1] n

end

end A168197.P15720731913504117856

namespace A168197

/-- `ogf((7x-4x^2)/(1-x-x^2+x^3))` -/
def P15720731913504117856.Spec : Prop :=
  ∀ n, P15720731913504117856.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P16610872235240534633

`3-floor(-a(n-2))` with `a(0)=0, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A168197.P16610872235240534633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  3 - (-a (n - 2))

end

end A168197.P16610872235240534633

namespace A168197

/-- `3-floor(-a(n-2))` -/
def P16610872235240534633.Spec : Prop :=
  ∀ n, P16610872235240534633.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P3354785709777415911

`3-ceil(-a(n-2))` with `a(0)=0, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A168197.P3354785709777415911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  3 - (-a (n - 2))

end

end A168197.P3354785709777415911

namespace A168197

/-- `3-ceil(-a(n-2))` -/
def P3354785709777415911.Spec : Prop :=
  ∀ n, P3354785709777415911.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P3976671352805361749

`3-round(-a(n-2))` with `a(0)=0, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A168197.P3976671352805361749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  3 - (-a (n - 2))

end

end A168197.P3976671352805361749

namespace A168197

/-- `3-round(-a(n-2))` -/
def P3976671352805361749.Spec : Prop :=
  ∀ n, P3976671352805361749.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P44568122596157511

`3*n-(a(n-1)-4)` with `a(0)=0`
-/

namespace A168197.P44568122596157511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 * n : ℤ) - (a (n - 1) - 4)

end

end A168197.P44568122596157511

namespace A168197

/-- `3*n-(a(n-1)-4)` -/
def P44568122596157511.Spec : Prop :=
  ∀ n, P44568122596157511.a n = A168197 (n + 1)

theorem P44568122596157511.correct : P44568122596157511.Spec := by
  intro n
  simp only [A168197, Nat.add_sub_cancel, A168197.P44568122596157511.a, A168197.P7493453683210505497.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168197

/-! ## A168197.P9090456608018382996

`5-(4/2-a(n-2))` with `a(0)=0, a(1)=7`
-/

namespace A168197.P9090456608018382996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 7] fun n a =>
  5 - ((4 : ℚ) / 2 - a (n - 2))

end

end A168197.P9090456608018382996

namespace A168197

/-- `5-(4/2-a(n-2))` -/
def P9090456608018382996.Spec : Prop :=
  ∀ n, P9090456608018382996.a n = (A168197 (n + 1) : ℚ)

end A168197

/-! ## A168197.P2205607628970484000

`4-(a(n-1)-n-n-n)` with `a(0)=0`
-/

namespace A168197.P2205607628970484000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - (a (n - 1) - (n : ℤ) - (n : ℤ) - (n : ℤ))

end

end A168197.P2205607628970484000

namespace A168197

/-- `4-(a(n-1)-n-n-n)` -/
def P2205607628970484000.Spec : Prop :=
  ∀ n, P2205607628970484000.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P11686622756185919664

`A166520(n+1)-(n+1)`
-/

namespace A168197.P11686622756185919664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1) - (n + 1 : ℤ)

end

end A168197.P11686622756185919664

namespace A168197

/-- `A166520(n+1)-(n+1)` -/
def P11686622756185919664.Spec : Prop :=
  ∀ n, P11686622756185919664.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P18364769868659300529

`A175887(n+1)-(6*n+1)`
-/

namespace A168197.P18364769868659300529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) - (6 * n + 1 : ℤ)

end

end A168197.P18364769868659300529

namespace A168197

/-- `A175887(n+1)-(6*n+1)` -/
def P18364769868659300529.Spec : Prop :=
  ∀ n, P18364769868659300529.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P3221294786585713828

`∑[Δ[xor(1, n)]²]-A047356(n+1)`
-/

namespace A168197.P3221294786585713828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047356 (n + 1)

end

end A168197.P3221294786585713828

namespace A168197

/-- `∑[Δ[xor(1, n)]²]-A047356(n+1)` -/
def P3221294786585713828.Spec : Prop :=
  ∀ n, P3221294786585713828.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P15095746171261670719

`A010676(n)+A007494(n)`
-/

namespace A168197.P15095746171261670719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n + A007494 n

end

end A168197.P15095746171261670719

namespace A168197

/-- `A010676(n)+A007494(n)` -/
def P15095746171261670719.Spec : Prop :=
  ∀ n, P15095746171261670719.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P285912332793702869

`A032766(n)+A010677(n)`
-/

namespace A168197.P285912332793702869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + A010677 n

end

end A168197.P285912332793702869

namespace A168197

/-- `A032766(n)+A010677(n)` -/
def P285912332793702869.Spec : Prop :=
  ∀ n, P285912332793702869.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P8246835102211978321

`A168237(n)+A010678(n)`
-/

namespace A168197.P8246835102211978321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n + A010678 n

end

end A168197.P8246835102211978321

namespace A168197

/-- `A168237(n)+A010678(n)` -/
def P8246835102211978321.Spec : Prop :=
  ∀ n, P8246835102211978321.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P8707307220844209027

`A197916(A080412(n))+n`
-/

namespace A168197.P8707307220844209027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197916 (A080412 n).toNat + (n : ℤ)

end

end A168197.P8707307220844209027

namespace A168197

/-- `A197916(A080412(n))+n` -/
def P8707307220844209027.Spec : Prop :=
  ∀ n, P8707307220844209027.a n = A168197 (n + 1)

end A168197

/-! ## A168197.P8528913751868763530

`A008590(n)-A112653(n)`
-/

namespace A168197.P8528913751868763530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n - A112653 n

end

end A168197.P8528913751868763530

namespace A168197

/-- `A008590(n)-A112653(n)` -/
def P8528913751868763530.Spec : Prop :=
  ∀ n, P8528913751868763530.a n = A168197 (n + 1)

end A168197

/-!
# A168198: a(n) = 3*n - a(n-1) + 1 with n > 1, a(1)=1.

The programs for A168198, the canonical program `A168198.P16334709488987974757` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168198 has offset 1).

The definition of A168198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)-a(n-1)+1` (program `A168198.P16334709488987974757`, by `A168198.P16334709488987974757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168198.P16334709488987974757

`3*(n+1)-a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168198

/-- `3*(n+1)-a(n-1)+1` -/
def P16334709488987974757.Spec : Prop :=
  ∀ n, P16334709488987974757.a n = A168198 (n + 1)

theorem P16334709488987974757.correct : P16334709488987974757.Spec := by
  intro n
  simp only [A168198, Nat.add_sub_cancel]

end A168198

/-! ## A168198.P13901861844941730293

`(6*(n+1)+5+7*(-1)^(n+1))/4`
-/

namespace A168198.P13901861844941730293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) + (5 + 7 * (-1) ^ (n + 1)) : ℚ) / 4

end

end A168198.P13901861844941730293

namespace A168198

/-- `(6*(n+1)+5+7*(-1)^(n+1))/4` -/
def P13901861844941730293.Spec : Prop :=
  ∀ n, P13901861844941730293.a n = (A168198 (n + 1) : ℚ)

theorem P13901861844941730293.correct : P13901861844941730293.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168198, Nat.add_sub_cancel, A168198.P13901861844941730293.a, A168198.P16334709488987974757.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168198, Nat.add_sub_cancel, A168198.P13901861844941730293.a, A168198.P16334709488987974757.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168198

/-! ## A168198.P15721250795803973805

`a(n-2)+3` with `a(0)=1, a(1)=6`
-/

namespace A168198.P15721250795803973805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + 3

end

end A168198.P15721250795803973805

namespace A168198

/-- `a(n-2)+3` -/
def P15721250795803973805.Spec : Prop :=
  ∀ n, (P15721250795803973805.a n : ℤ) = A168198 (n + 1)

end A168198

/-! ## A168198.P7555594359785611806

`∑[3-a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A168198.P7555594359785611806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168198.P7555594359785611806

namespace A168198

/-- `∑[3-a(n-1)]` -/
def P7555594359785611806.Spec : Prop :=
  ∀ n, P7555594359785611806.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P14677644119660543724

`∑[∑[ogf((1+5x-3x^2)/(1+x))]]`
-/

namespace A168198.P14677644119660543724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168198.P14677644119660543724

namespace A168198

/-- `∑[∑[ogf((1+5x-3x^2)/(1+x))]]` -/
def P14677644119660543724.Spec : Prop :=
  ∀ n, P14677644119660543724.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P9766009085103583050

`ogf((1+5x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168198.P9766009085103583050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -3] [1, -1, -1, 1] n

end

end A168198.P9766009085103583050

namespace A168198

/-- `ogf((1+5x-3x^2)/(1-x-x^2+x^3))` -/
def P9766009085103583050.Spec : Prop :=
  ∀ n, P9766009085103583050.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P7168327455152962204

`3-floor(-a(n-2))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A168198.P7168327455152962204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 - (-a (n - 2))

end

end A168198.P7168327455152962204

namespace A168198

/-- `3-floor(-a(n-2))` -/
def P7168327455152962204.Spec : Prop :=
  ∀ n, P7168327455152962204.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P6204605046272747083

`3-ceil(-a(n-2))` with `a(0)=1, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A168198.P6204605046272747083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 - (-a (n - 2))

end

end A168198.P6204605046272747083

namespace A168198

/-- `3-ceil(-a(n-2))` -/
def P6204605046272747083.Spec : Prop :=
  ∀ n, P6204605046272747083.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P4198353046988482574

`3-round(-a(n-2))` with `a(0)=1, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A168198.P4198353046988482574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 - (-a (n - 2))

end

end A168198.P4198353046988482574

namespace A168198

/-- `3-round(-a(n-2))` -/
def P4198353046988482574.Spec : Prop :=
  ∀ n, P4198353046988482574.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P6826955267798114035

`3*n-(a(n-1)-4)` with `a(0)=1`
-/

namespace A168198.P6826955267798114035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) - (a (n - 1) - 4)

end

end A168198.P6826955267798114035

namespace A168198

/-- `3*n-(a(n-1)-4)` -/
def P6826955267798114035.Spec : Prop :=
  ∀ n, P6826955267798114035.a n = A168198 (n + 1)

theorem P6826955267798114035.correct : P6826955267798114035.Spec := by
  intro n
  simp only [A168198, Nat.add_sub_cancel, A168198.P6826955267798114035.a, A168198.P16334709488987974757.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168198

/-! ## A168198.P12591944592183013693

`5-(4/2-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A168198.P12591944592183013693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 - ((4 : ℚ) / 2 - a (n - 2))

end

end A168198.P12591944592183013693

namespace A168198

/-- `5-(4/2-a(n-2))` -/
def P12591944592183013693.Spec : Prop :=
  ∀ n, P12591944592183013693.a n = (A168198 (n + 1) : ℚ)

end A168198

/-! ## A168198.P8351995702557113348

`∑[gcd(2, n+1)^3-3]+3`
-/

namespace A168198.P8351995702557113348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) ^ 3 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168198.P8351995702557113348

namespace A168198

/-- `∑[gcd(2, n+1)^3-3]+3` -/
def P8351995702557113348.Spec : Prop :=
  ∀ n, P8351995702557113348.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P7576663788215887926

`4-(a(n-1)-n-n-n)` with `a(0)=1`
-/

namespace A168198.P7576663788215887926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (a (n - 1) - (n : ℤ) - (n : ℤ) - (n : ℤ))

end

end A168198.P7576663788215887926

namespace A168198

/-- `4-(a(n-1)-n-n-n)` -/
def P7576663788215887926.Spec : Prop :=
  ∀ n, P7576663788215887926.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P17608457443289560878

`A168230(n+1)+1+n`
-/

namespace A168198.P17608457443289560878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (n + 1) + 1 + (n : ℤ)

end

end A168198.P17608457443289560878

namespace A168198

/-- `A168230(n+1)+1+n` -/
def P17608457443289560878.Spec : Prop :=
  ∀ n, P17608457443289560878.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P242179326612126619

`A166539(n+1)-(n+1)`
-/

namespace A168198.P242179326612126619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1) - (n + 1 : ℤ)

end

end A168198.P242179326612126619

namespace A168198

/-- `A166539(n+1)-(n+1)` -/
def P242179326612126619.Spec : Prop :=
  ∀ n, P242179326612126619.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P12486085157554542083

`A168337(n+1)-2*n`
-/

namespace A168198.P12486085157554542083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) - (2 * n : ℤ)

end

end A168198.P12486085157554542083

namespace A168198

/-- `A168337(n+1)-2*n` -/
def P12486085157554542083.Spec : Prop :=
  ∀ n, P12486085157554542083.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P2945814724261332191

`A175885(n+1)-4*n`
-/

namespace A168198.P2945814724261332191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1) - (4 * n : ℤ)

end

end A168198.P2945814724261332191

namespace A168198

/-- `A175885(n+1)-4*n` -/
def P2945814724261332191.Spec : Prop :=
  ∀ n, P2945814724261332191.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P13949448870674276155

`A106389(n+1)-5*n`
-/

namespace A168198.P13949448870674276155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106389 (n + 1) - (5 * n : ℤ)

end

end A168198.P13949448870674276155

namespace A168198

/-- `A106389(n+1)-5*n` -/
def P13949448870674276155.Spec : Prop :=
  ∀ n, P13949448870674276155.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P13619713504245707689

`A168278(n+1)-or(1, n)`
-/

namespace A168198.P13619713504245707689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168278 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A168198.P13619713504245707689

namespace A168198

/-- `A168278(n+1)-or(1, n)` -/
def P13619713504245707689.Spec : Prop :=
  ∀ n, P13619713504245707689.a n = A168198 (n + 1)

end A168198

/-! ## A168198.P8246810688699506916

`A168333(n+1)-Δ[n²]`
-/

namespace A168198.P8246810688699506916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A168198.P8246810688699506916

namespace A168198

/-- `A168333(n+1)-Δ[n²]` -/
def P8246810688699506916.Spec : Prop :=
  ∀ n, P8246810688699506916.a n = A168198 (n + 1)

end A168198

/-!
# A168199: a(n) = 3*n - a(n-1) + 1 with n > 1, a(1)=2.

The programs for A168199, the canonical program `A168199.P10947129303898864519` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168199 has offset 1).

The definition of A168199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)-a(n-1)+1` (program `A168199.P10947129303898864519`, by `A168199.P10947129303898864519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168199.P10947129303898864519

`3*(n+1)-a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A168199

/-- `3*(n+1)-a(n-1)+1` -/
def P10947129303898864519.Spec : Prop :=
  ∀ n, P10947129303898864519.a n = A168199 (n + 1)

theorem P10947129303898864519.correct : P10947129303898864519.Spec := by
  intro n
  simp only [A168199, Nat.add_sub_cancel]

end A168199

/-! ## A168199.P15095923808936354733

`(6*(n+1)+5+3*(-1)^(n+1))/4`
-/

namespace A168199.P15095923808936354733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) + (5 + 3 * (-1) ^ (n + 1)) : ℚ) / 4

end

end A168199.P15095923808936354733

namespace A168199

/-- `(6*(n+1)+5+3*(-1)^(n+1))/4` -/
def P15095923808936354733.Spec : Prop :=
  ∀ n, P15095923808936354733.a n = (A168199 (n + 1) : ℚ)

theorem P15095923808936354733.correct : P15095923808936354733.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168199, Nat.add_sub_cancel, A168199.P15095923808936354733.a, A168199.P10947129303898864519.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168199, Nat.add_sub_cancel, A168199.P15095923808936354733.a, A168199.P10947129303898864519.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168199

/-! ## A168199.P15295177826002922605

`3+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A168199.P15295177826002922605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  3 + a (n - 2)

end

end A168199.P15295177826002922605

namespace A168199

/-- `3+a(n-2)` -/
def P15295177826002922605.Spec : Prop :=
  ∀ n, (P15295177826002922605.a n : ℤ) = A168199 (n + 1)

end A168199

/-! ## A168199.P5054671086076185231

`∑[3-a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A168199.P5054671086076185231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168199.P5054671086076185231

namespace A168199

/-- `∑[3-a(n-1)]` -/
def P5054671086076185231.Spec : Prop :=
  ∀ n, P5054671086076185231.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P15280891579601313247

`∑[∑[ogf((2+3x-2x^2)/(1+x))]]`
-/

namespace A168199.P15280891579601313247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168199.P15280891579601313247

namespace A168199

/-- `∑[∑[ogf((2+3x-2x^2)/(1+x))]]` -/
def P15280891579601313247.Spec : Prop :=
  ∀ n, P15280891579601313247.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P15588056092044702958

`ogf((2+3x-2x^2)/(1-x-x^2+x^3))`
-/

namespace A168199.P15588056092044702958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -2] [1, -1, -1, 1] n

end

end A168199.P15588056092044702958

namespace A168199

/-- `ogf((2+3x-2x^2)/(1-x-x^2+x^3))` -/
def P15588056092044702958.Spec : Prop :=
  ∀ n, P15588056092044702958.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P5417628450560092290

`round(3*or(1, n+1)/2)`
-/

namespace A168199.P5417628450560092290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.lor 1 (n + 1) : ℚ) / 2))

end

end A168199.P5417628450560092290

namespace A168199

/-- `round(3*or(1, n+1)/2)` -/
def P5417628450560092290.Spec : Prop :=
  ∀ n, P5417628450560092290.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P14971057589896179193

`∑[((n-1)%2+3)%4]`
-/

namespace A168199.P14971057589896179193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((n : ℤ) - 1) 2 + 3) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168199.P14971057589896179193

namespace A168199

/-- `∑[((n-1)%2+3)%4]` -/
def P14971057589896179193.Spec : Prop :=
  ∀ n, P14971057589896179193.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P17451587585943517872

`∑[(3-(1-n)%2)%4]`
-/

namespace A168199.P17451587585943517872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - Int.tmod (1 - (n : ℤ)) 2) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168199.P17451587585943517872

namespace A168199

/-- `∑[(3-(1-n)%2)%4]` -/
def P17451587585943517872.Spec : Prop :=
  ∀ n, P17451587585943517872.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P1227615022541701697

`floor(xor(1, n+3)+n/2)`
-/

namespace A168199.P1227615022541701697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 3) : ℚ) + (n : ℚ) / 2⌋

end

end A168199.P1227615022541701697

namespace A168199

/-- `floor(xor(1, n+3)+n/2)` -/
def P1227615022541701697.Spec : Prop :=
  ∀ n, P1227615022541701697.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P5249617537702106153

`ceil(a(n-2)-(ϕ-4))` with `a(0)=2, a(1)=5`
-/

namespace A168199.P5249617537702106153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌈(a (n - 2) : ℝ) - (Real.goldenRatio - 4)⌉

end

end A168199.P5249617537702106153

namespace A168199

/-- `ceil(a(n-2)-(ϕ-4))` -/
def P5249617537702106153.Spec : Prop :=
  ∀ n, P5249617537702106153.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P13397340770697418195

`floor(a(n-2)-(ϕ-5))` with `a(0)=2, a(1)=5`
-/

namespace A168199.P13397340770697418195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊(a (n - 2) : ℝ) - (Real.goldenRatio - 5)⌋

end

end A168199.P13397340770697418195

namespace A168199

/-- `floor(a(n-2)-(ϕ-5))` -/
def P13397340770697418195.Spec : Prop :=
  ∀ n, P13397340770697418195.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P17798361314001194565

`round(a(n-2)-(ϕ-5))` with `a(0)=2, a(1)=5`
-/

namespace A168199.P17798361314001194565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) - (Real.goldenRatio - 5))

end

end A168199.P17798361314001194565

namespace A168199

/-- `round(a(n-2)-(ϕ-5))` -/
def P17798361314001194565.Spec : Prop :=
  ∀ n, P17798361314001194565.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P10657663910848863291

`ceil(or(1, n+1)+(n+2)/2)`
-/

namespace A168199.P10657663910848863291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n + 1) : ℚ) + (n + 2 : ℚ) / 2⌉

end

end A168199.P10657663910848863291

namespace A168199

/-- `ceil(or(1, n+1)+(n+2)/2)` -/
def P10657663910848863291.Spec : Prop :=
  ∀ n, P10657663910848863291.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P2428002717363488530

`floor(or(1, n+1)+(n+3)/2)`
-/

namespace A168199.P2428002717363488530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 1) : ℚ) + (n + 3 : ℚ) / 2⌋

end

end A168199.P2428002717363488530

namespace A168199

/-- `floor(or(1, n+1)+(n+3)/2)` -/
def P2428002717363488530.Spec : Prop :=
  ∀ n, P2428002717363488530.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P1658842343384094407

`round(or(1, n+1)+(n+2)/2)`
-/

namespace A168199.P1658842343384094407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) : ℚ) + (n + 2 : ℚ) / 2)

end

end A168199.P1658842343384094407

namespace A168199

/-- `round(or(1, n+1)+(n+2)/2)` -/
def P1658842343384094407.Spec : Prop :=
  ∀ n, P1658842343384094407.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P8458166542026396314

`ceil(xor(1, n+1)/2+n+2)`
-/

namespace A168199.P8458166542026396314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 1) : ℚ) / 2 + (n + 2 : ℚ)⌉

end

end A168199.P8458166542026396314

namespace A168199

/-- `ceil(xor(1, n+1)/2+n+2)` -/
def P8458166542026396314.Spec : Prop :=
  ∀ n, P8458166542026396314.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P18014654469132727070

`round(xor(1, n+1)/2+n+2)`
-/

namespace A168199.P18014654469132727070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 1) : ℚ) / 2 + (n + 2 : ℚ))

end

end A168199.P18014654469132727070

namespace A168199

/-- `round(xor(1, n+1)/2+n+2)` -/
def P18014654469132727070.Spec : Prop :=
  ∀ n, P18014654469132727070.a n = A168199 (n + 1)

end A168199

/-! ## A168199.P12788099352156872219

`floor(3*n-(a(n-1)-4))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A168199.P12788099352156872219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (3 * n : ℤ) - (a (n - 1) - 4)

end

end A168199.P12788099352156872219

namespace A168199

/-- `floor(3*n-(a(n-1)-4))` -/
def P12788099352156872219.Spec : Prop :=
  ∀ n, P12788099352156872219.a n = A168199 (n + 1)

theorem P12788099352156872219.correct : P12788099352156872219.Spec := by
  intro n
  simp only [A168199, Nat.add_sub_cancel, A168199.P12788099352156872219.a, A168199.P10947129303898864519.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168199

