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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A194500: Number of lower triangles of an n X n 0..3 array with each element unequal to the sum mod 4 of its horizontal and vertical neighbors.

The programs for A194500, there is no canonical definition to state claims against.
-/

/-! ## A194500.P1606800816251714872

`A194505(∑[n+3]+1)`
-/

namespace A194500.P1606800816251714872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194500.P1606800816251714872

/-!
# A194501: Number of lower triangles of an n X n 0..4 array with each element unequal to the sum mod 5 of its horizontal and vertical neighbors.

The programs for A194501, there is no canonical definition to state claims against.
-/

/-! ## A194501.P8031530876699785002

`A194505(A141214(n+1))`
-/

namespace A194501.P8031530876699785002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (A141214 (n + 1)).toNat

end

end A194501.P8031530876699785002

/-!
# A194502: Number of lower triangles of an n X n 0..5 array with each element unequal to the sum mod 6 of its horizontal and vertical neighbors.

The programs for A194502, there is no canonical definition to state claims against.
-/

/-! ## A194502.P12402032614028354189

`A194505(Δ[A023545(n+1)])`
-/

namespace A194502.P12402032614028354189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (f1 (n + 1) - f1 n).toNat

end

end A194502.P12402032614028354189

/-!
# A194503: Number of lower triangles of an n X n 0..6 array with each element unequal to the sum mod 7 of its horizontal and vertical neighbors.

The programs for A194503, there is no canonical definition to state claims against.
-/

/-! ## A194503.P16898278229893831821

`A194505(A000124(n+6)-6)`
-/

namespace A194503.P16898278229893831821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (A000124 (n + 6) - 6).toNat

end

end A194503.P16898278229893831821

/-!
# A194506: Denominator of the third row of the inverse Akiyama-Tanigawa algorithm from 1/n.

The programs for A194506, there is no canonical definition to state claims against.
-/

/-! ## A194506.P6692631585317405581

`A000142(n+3)/A000120(A136733(3*(n+1)))`
-/

namespace A194506.P6692631585317405581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) : ℚ) / (A000120 (A136733 (3 * (n + 1))).toNat : ℚ)

end

end A194506.P6692631585317405581

/-! ## A194506.P4077645241689864964

`A000142(n+3)/A372471(A145271(3*(n+1)))`
-/

namespace A194506.P4077645241689864964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) : ℚ) / (A372471 (A145271 (3 * (n + 1))).toNat : ℚ)

end

end A194506.P4077645241689864964

/-!
# A194507: a(n) = y is the unique solution to y*phi(y) = A082473(n).

The programs for A194507, there is no canonical definition to state claims against.
-/

/-! ## A194507.P15506595352025531329

`A327172(A082473(n+1))`
-/

namespace A194507.P15506595352025531329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327172 (A082473 (n + 1)).toNat

end

end A194507.P15506595352025531329

/-! ## A194507.P1373150883605482533

`A275823(A082473(n+1))`
-/

namespace A194507.P1373150883605482533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (A082473 (n + 1)).toNat

end

end A194507.P1373150883605482533

/-!
# A194508: First coordinate of the (2,3)-Lagrange pair for n.

The programs for A194508, the canonical program `A194508.P11919848679355331817` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194508 has offset 1).

The definition of A194508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194508.P8087256398788801692

`ogf((-1+2x-x^2+2x^3-x^4)/(1-x-x^5+x^6))`
-/

namespace A194508.P8087256398788801692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, -1, 2, -1] [1, -1, 0, 0, 0, -1, 1] n

end

end A194508.P8087256398788801692

namespace A194508

/-- `ogf((-1+2x-x^2+2x^3-x^4)/(1-x-x^5+x^6))` -/
def P8087256398788801692.Spec : Prop :=
  ∀ n, P8087256398788801692.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P11919848679355331817

`2*(n+1)-3*floor((3*(n+1)+2)/5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194508

/-- `2*(n+1)-3*floor((3*(n+1)+2)/5)` -/
def P11919848679355331817.Spec : Prop :=
  ∀ n, P11919848679355331817.a n = A194508 (n + 1)

theorem P11919848679355331817.correct : P11919848679355331817.Spec := by
  intro n
  simp only [A194508, Nat.add_sub_cancel]

end A194508

/-! ## A194508.P3741123867979093864

`∑[3-gcd(2, n%5)²]`
-/

namespace A194508.P3741123867979093864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 2 (n % 5) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P3741123867979093864

namespace A194508

/-- `∑[3-gcd(2, n%5)²]` -/
def P3741123867979093864.Spec : Prop :=
  ∀ n, P3741123867979093864.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P17223501837330697994

`∑[(∑[n]+1)²%5-2]`
-/

namespace A194508.P17223501837330697994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j + 1) ^ 2 % 5 : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P17223501837330697994

namespace A194508

/-- `∑[(∑[n]+1)²%5-2]` -/
def P17223501837330697994.Spec : Prop :=
  ∀ n, P17223501837330697994.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P17231495863760995008

`a(n-5)+1` with `a(0)=-1, a(1)=1, a(2)=0, a(3)=2, a(4)=1`
-/

namespace A194508.P17231495863760995008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 0, 2, 1] fun n a =>
  a (n - 5) + 1

end

end A194508.P17231495863760995008

namespace A194508

/-- `a(n-5)+1` -/
def P17231495863760995008.Spec : Prop :=
  ∀ n, P17231495863760995008.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P6576918120994869055

`∑[floor(a(n-5))]` with `a(0)=-1, a(1)=2, a(2)=-1, a(3)=2, a(4)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A194508.P6576918120994869055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, -1, 2, -1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P6576918120994869055

namespace A194508

/-- `∑[floor(a(n-5))]` -/
def P6576918120994869055.Spec : Prop :=
  ∀ n, P6576918120994869055.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P494355621374020971

`∑[a(n-5)²-2]` with `a(0)=-1, a(1)=2, a(2)=-1, a(3)=2, a(4)=-1`
-/

namespace A194508.P494355621374020971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, -1, 2, -1] fun n f1 =>
  f1 (n - 5) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P494355621374020971

namespace A194508

/-- `∑[a(n-5)²-2]` -/
def P494355621374020971.Spec : Prop :=
  ∀ n, P494355621374020971.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P14332626122991342242

`∑[4-A244892(n)]`
-/

namespace A194508.P14332626122991342242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A244892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P14332626122991342242

namespace A194508

/-- `∑[4-A244892(n)]` -/
def P14332626122991342242.Spec : Prop :=
  ∀ n, P14332626122991342242.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P13702337918036889088

`∑[gcd(4, A265078(n))-2]`
-/

namespace A194508.P13702337918036889088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A265078 n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P13702337918036889088

namespace A194508

/-- `∑[gcd(4, A265078(n))-2]` -/
def P13702337918036889088.Spec : Prop :=
  ∀ n, P13702337918036889088.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P12749983561328209834

`∑[A175922(n+2)²-2]`
-/

namespace A194508.P12749983561328209834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175922 (n + 2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P12749983561328209834

namespace A194508

/-- `∑[A175922(n+2)²-2]` -/
def P12749983561328209834.Spec : Prop :=
  ∀ n, P12749983561328209834.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P14921124439149439587

`∑[or(2, A065187(n+1)-A065187(n+2))]`
-/

namespace A194508.P14921124439149439587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A065187 (n + 1) - A065187 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P14921124439149439587

namespace A194508

/-- `∑[or(2, A065187(n+1)-A065187(n+2))]` -/
def P14921124439149439587.Spec : Prop :=
  ∀ n, P14921124439149439587.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P266917918559793186

`∑[A175884(Δ[A175884(n+2)]+1)-5]`
-/

namespace A194508.P266917918559793186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (f2 (n + 1) - f2 n + 1).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194508.P266917918559793186

namespace A194508

/-- `∑[A175884(Δ[A175884(n+2)]+1)-5]` -/
def P266917918559793186.Spec : Prop :=
  ∀ n, P266917918559793186.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P1380121303992491411

`A194514(A047299(n+2))`
-/

namespace A194508.P1380121303992491411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194514 (A047299 (n + 2)).toNat

end

end A194508.P1380121303992491411

namespace A194508

/-- `A194514(A047299(n+2))` -/
def P1380121303992491411.Spec : Prop :=
  ∀ n, P1380121303992491411.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P4792858026574642650

`A194516(A047448(n+2))`
-/

namespace A194508.P4792858026574642650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194516 (A047448 (n + 2)).toNat

end

end A194508.P4792858026574642650

namespace A194508

/-- `A194516(A047448(n+2))` -/
def P4792858026574642650.Spec : Prop :=
  ∀ n, P4792858026574642650.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P14881642728926742118

`A194517(A047534(n+2))`
-/

namespace A194508.P14881642728926742118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A047534 (n + 2)).toNat

end

end A194508.P14881642728926742118

namespace A194508

/-- `A194517(A047534(n+2))` -/
def P14881642728926742118.Spec : Prop :=
  ∀ n, P14881642728926742118.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P12689980603269094569

`A194517(A047555(n+2))`
-/

namespace A194508.P12689980603269094569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A047555 (n + 2)).toNat

end

end A194508.P12689980603269094569

namespace A194508

/-- `A194517(A047555(n+2))` -/
def P12689980603269094569.Spec : Prop :=
  ∀ n, P12689980603269094569.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P16501496470306987996

`A194517(A047567(n+2))`
-/

namespace A194508.P16501496470306987996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A047567 (n + 2)).toNat

end

end A194508.P16501496470306987996

namespace A194508

/-- `A194517(A047567(n+2))` -/
def P16501496470306987996.Spec : Prop :=
  ∀ n, P16501496470306987996.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P9576695262069561071

`A194517(A047577(n+2))`
-/

namespace A194508.P9576695262069561071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A047577 (n + 2)).toNat

end

end A194508.P9576695262069561071

namespace A194508

/-- `A194517(A047577(n+2))` -/
def P9576695262069561071.Spec : Prop :=
  ∀ n, P9576695262069561071.a n = A194508 (n + 1)

end A194508

/-! ## A194508.P15910269517857898148

`A194517(A047562(n+1)+1)`
-/

namespace A194508.P15910269517857898148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A047562 (n + 1) + 1).toNat

end

end A194508.P15910269517857898148

namespace A194508

/-- `A194517(A047562(n+1)+1)` -/
def P15910269517857898148.Spec : Prop :=
  ∀ n, P15910269517857898148.a n = A194508 (n + 1)

end A194508

/-!
# A194509: Second coordinate of (2,3)-Lagrange pair for n.

The programs for A194509, the canonical program `A194509.P12278159415477421377` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194509 has offset 1).

The definition of A194509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194509.P12148633945073921354

`a(n-1)+(-1)^(n%5)` with `a(0)=1`
-/

namespace A194509.P12148633945073921354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-1) ^ (n % 5)

end

end A194509.P12148633945073921354

namespace A194509

/-- `a(n-1)+(-1)^(n%5)` -/
def P12148633945073921354.Spec : Prop :=
  ∀ n, P12148633945073921354.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P1971325485185289595

`ogf((1-x+x^2-x^3+x^4)/(1-x-x^5+x^6))`
-/

namespace A194509.P1971325485185289595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -1, 1] [1, -1, 0, 0, 0, -1, 1] n

end

end A194509.P1971325485185289595

namespace A194509

/-- `ogf((1-x+x^2-x^3+x^4)/(1-x-x^5+x^6))` -/
def P1971325485185289595.Spec : Prop :=
  ∀ n, P1971325485185289595.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P12278159415477421377

`n+1-2*floor((2*(n+1)+2)/5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194509

/-- `n+1-2*floor((2*(n+1)+2)/5)` -/
def P12278159415477421377.Spec : Prop :=
  ∀ n, P12278159415477421377.a n = A194509 (n + 1)

theorem P12278159415477421377.correct : P12278159415477421377.Spec := by
  intro n
  simp only [A194509, Nat.add_sub_cancel]

end A194509

/-! ## A194509.P9759950448062340435

`∑[(-1)^(n%5)]`
-/

namespace A194509.P9759950448062340435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P9759950448062340435

namespace A194509

/-- `∑[(-1)^(n%5)]` -/
def P9759950448062340435.Spec : Prop :=
  ∀ n, P9759950448062340435.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P12419958444057004762

`∑[or(1, (-n%5)%2)]`
-/

namespace A194509.P12419958444057004762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod (Int.tmod (-(n : ℤ)) 5) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P12419958444057004762

namespace A194509

/-- `∑[or(1, (-n%5)%2)]` -/
def P12419958444057004762.Spec : Prop :=
  ∀ n, P12419958444057004762.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P13881239138493283756

`∑[gcd(3, ∑[n]%5)-2]`
-/

namespace A194509.P13881239138493283756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 ((∑ j ∈ Finset.range (n + 1), f2 j) % 5) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P13881239138493283756

namespace A194509

/-- `∑[gcd(3, ∑[n]%5)-2]` -/
def P13881239138493283756.Spec : Prop :=
  ∀ n, P13881239138493283756.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P16740778789860167525

`∑[2/(gcd(5, ∑[n²])-3)]`
-/

namespace A194509.P16740778789860167525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((Nat.gcd 5 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P16740778789860167525

namespace A194509

/-- `∑[2/(gcd(5, ∑[n²])-3)]` -/
def P16740778789860167525.Spec : Prop :=
  ∀ n, P16740778789860167525.a n = (A194509 (n + 1) : ℚ)

end A194509

/-! ## A194509.P11200677501363606232

`a(n-5)+1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A194509.P11200677501363606232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  a (n - 5) + 1

end

end A194509.P11200677501363606232

namespace A194509

/-- `a(n-5)+1` -/
def P11200677501363606232.Spec : Prop :=
  ∀ n, (P11200677501363606232.a n : ℤ) = A194509 (n + 1)

end A194509

/-! ## A194509.P1967906017379728968

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A194509.P1967906017379728968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P1967906017379728968

namespace A194509

/-- `∑[floor(a(n-5))]` -/
def P1967906017379728968.Spec : Prop :=
  ∀ n, P1967906017379728968.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P13079301966333424253

`∑[1/a(n-5)]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`
-/

namespace A194509.P13079301966333424253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 1, -1, 1] fun n f1 =>
  1 / f1 (n - 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P13079301966333424253

namespace A194509

/-- `∑[1/a(n-5)]` -/
def P13079301966333424253.Spec : Prop :=
  ∀ n, P13079301966333424253.a n = (A194509 (n + 1) : ℚ)

end A194509

/-! ## A194509.P7910229258361635573

`∑[a(n-5)^3]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`
-/

namespace A194509.P7910229258361635573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -1, 1] fun n f1 =>
  f1 (n - 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P7910229258361635573

namespace A194509

/-- `∑[a(n-5)^3]` -/
def P7910229258361635573.Spec : Prop :=
  ∀ n, P7910229258361635573.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P9555616408576578932

`∑[a(n-1)²*a(n-5)]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`
-/

namespace A194509.P9555616408576578932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -1, 1] fun n f1 =>
  f1 (n - 1) ^ 2 * f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P9555616408576578932

namespace A194509

/-- `∑[a(n-1)²*a(n-5)]` -/
def P9555616408576578932.Spec : Prop :=
  ∀ n, P9555616408576578932.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P8266396741612720638

`∑[or(1, A105368(n))]`
-/

namespace A194509.P8266396741612720638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A105368 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P8266396741612720638

namespace A194509

/-- `∑[or(1, A105368(n))]` -/
def P8266396741612720638.Spec : Prop :=
  ∀ n, P8266396741612720638.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P9556426079879251010

`∑[A163818(∑[A244895(n)])]`
-/

namespace A194509.P9556426079879251010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163818 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P9556426079879251010

namespace A194509

/-- `∑[A163818(∑[A244895(n)])]` -/
def P9556426079879251010.Spec : Prop :=
  ∀ n, P9556426079879251010.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P4743505322275727386

`∑[A163818(∑[A330025(n)])]`
-/

namespace A194509.P4743505322275727386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163818 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P4743505322275727386

namespace A194509

/-- `∑[A163818(∑[A330025(n)])]` -/
def P4743505322275727386.Spec : Prop :=
  ∀ n, P4743505322275727386.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P10272255429048331218

`∑[A131554(A131554(n)+n)]`
-/

namespace A194509.P10272255429048331218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131554 (A131554 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P10272255429048331218

namespace A194509

/-- `∑[A131554(A131554(n)+n)]` -/
def P10272255429048331218.Spec : Prop :=
  ∀ n, P10272255429048331218.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P2073215187290785618

`∑[A105368(n)^A138019(n)]`
-/

namespace A194509.P2073215187290785618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105368 n : ℚ) ^ (A138019 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P2073215187290785618

namespace A194509

/-- `∑[A105368(n)^A138019(n)]` -/
def P2073215187290785618.Spec : Prop :=
  ∀ n, P2073215187290785618.a n = (A194509 (n + 1) : ℚ)

end A194509

/-! ## A194509.P3713667515507585489

`∑[A163818(∑[A163818(n)]+1)]`
-/

namespace A194509.P3713667515507585489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163818 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163818 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P3713667515507585489

namespace A194509

/-- `∑[A163818(∑[A163818(n)]+1)]` -/
def P3713667515507585489.Spec : Prop :=
  ∀ n, P3713667515507585489.a n = A194509 (n + 1)

end A194509

/-! ## A194509.P4156629602984279260

`∑[A280569(∑[A280569(n)]+1)]`
-/

namespace A194509.P4156629602984279260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280569 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280569 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194509.P4156629602984279260

namespace A194509

/-- `∑[A280569(∑[A280569(n)]+1)]` -/
def P4156629602984279260.Spec : Prop :=
  ∀ n, P4156629602984279260.a n = A194509 (n + 1)

end A194509

/-!
# A194510: First coordinate of (2,5)-Lagrange pair for n.

The programs for A194510, the canonical program `A194510.P6776337832940696163` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194510 has offset 1).

The definition of A194510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194510.P6776337832940696163

`3*(n+1)-5*floor((4*(n+1)+2)/7)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194510

/-- `3*(n+1)-5*floor((4*(n+1)+2)/7)` -/
def P6776337832940696163.Spec : Prop :=
  ∀ n, P6776337832940696163.a n = A194510 (n + 1)

theorem P6776337832940696163.correct : P6776337832940696163.Spec := by
  intro n
  simp only [A194510, Nat.add_sub_cancel]

end A194510

/-! ## A194510.P5747029912844743104

`ogf((3-2x-2x^2+3x^3-2x^4+3x^5-2x^6)/(1-x-x^7+x^8))`
-/

namespace A194510.P5747029912844743104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2, 3, -2, 3, -2] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A194510.P5747029912844743104

namespace A194510

/-- `ogf((3-2x-2x^2+3x^3-2x^4+3x^5-2x^6)/(1-x-x^7+x^8))` -/
def P5747029912844743104.Spec : Prop :=
  ∀ n, P5747029912844743104.a n = A194510 (n + 1)

end A194510

/-!
# A194511: Second coordinate of (2,5)-Lagrange pair for n.

The programs for A194511, the canonical program `A194511.P6822908612490276346` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194511 has offset 1).

The definition of A194511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194511.P6822908612490276346

`n+1-2*floor((3*(n+1)+4)/7)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194511

/-- `n+1-2*floor((3*(n+1)+4)/7)` -/
def P6822908612490276346.Spec : Prop :=
  ∀ n, P6822908612490276346.a n = A194511 (n + 1)

theorem P6822908612490276346.correct : P6822908612490276346.Spec := by
  intro n
  simp only [A194511, Nat.add_sub_cancel]

end A194511

/-! ## A194511.P13828373797950154073

`ogf((-1+x+x^2-x^3+x^4-x^5+x^6)/(1-x-x^7+x^8))`
-/

namespace A194511.P13828373797950154073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, 1, -1, 1, -1, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A194511.P13828373797950154073

namespace A194511

/-- `ogf((-1+x+x^2-x^3+x^4-x^5+x^6)/(1-x-x^7+x^8))` -/
def P13828373797950154073.Spec : Prop :=
  ∀ n, P13828373797950154073.a n = A194511 (n + 1)

end A194511

/-! ## A194511.P13061199146339306792

`A023443(n-A005843(A057357(n)))`
-/

namespace A194511.P13061199146339306792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n : ℤ) - A005843 (A057357 n).toNat).toNat

end

end A194511.P13061199146339306792

namespace A194511

/-- `A023443(n-A005843(A057357(n)))` -/
def P13061199146339306792.Spec : Prop :=
  ∀ n, P13061199146339306792.a n = A194511 (n + 1)

end A194511

/-! ## A194511.P6443031149780875161

`A194517(A194510(n+1)+1+n)`
-/

namespace A194511.P6443031149780875161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A194510 (n + 1) + 1 + (n : ℤ)).toNat

end

end A194511.P6443031149780875161

namespace A194511

/-- `A194517(A194510(n+1)+1+n)` -/
def P6443031149780875161.Spec : Prop :=
  ∀ n, P6443031149780875161.a n = A194511 (n + 1)

end A194511

/-! ## A194511.P13147220294864656487

`∑[(-1)^A057358(2*n+3)]`
-/

namespace A194511.P13147220294864656487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A057358 (2 * n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194511.P13147220294864656487

namespace A194511

/-- `∑[(-1)^A057358(2*n+3)]` -/
def P13147220294864656487.Spec : Prop :=
  ∀ n, P13147220294864656487.a n = (A194511 (n + 1) : ℚ)

end A194511

/-! ## A194511.P17378902587575664307

`∑[(-1)^record[A222236(n+1)]]`
-/

namespace A194511.P17378902587575664307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194511.P17378902587575664307

namespace A194511

/-- `∑[(-1)^record[A222236(n+1)]]` -/
def P17378902587575664307.Spec : Prop :=
  ∀ n, P17378902587575664307.a n = (A194511 (n + 1) : ℚ)

end A194511

/-! ## A194511.P1894141032265080973

`A194517(A194510(8*(n+1)))`
-/

namespace A194511.P1894141032265080973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A194510 (8 * (n + 1))).toNat

end

end A194511.P1894141032265080973

namespace A194511

/-- `A194517(A194510(8*(n+1)))` -/
def P1894141032265080973.Spec : Prop :=
  ∀ n, P1894141032265080973.a n = A194511 (n + 1)

end A194511

/-! ## A194511.P13932111967153248822

`∑[A009001(A060464(A017101(n)))]`
-/

namespace A194511.P13932111967153248822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A060464 (A017101 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194511.P13932111967153248822

namespace A194511

/-- `∑[A009001(A060464(A017101(n)))]` -/
def P13932111967153248822.Spec : Prop :=
  ∀ n, P13932111967153248822.a n = A194511 (n + 1)

end A194511

/-! ## A194511.P5946116403598576550

`∑[ratio[A210247(A016813(n))]]`
-/

namespace A194511.P5946116403598576550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210247 (A016813 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194511.P5946116403598576550

namespace A194511

/-- `∑[ratio[A210247(A016813(n))]]` -/
def P5946116403598576550.Spec : Prop :=
  ∀ n, P5946116403598576550.a n = (A194511 (n + 1) : ℚ)

end A194511

/-!
# A194512: First coordinate of (2,7)-Lagrange pair for n.

The programs for A194512, the canonical program `A194512.P14007444045228623435` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194512 has offset 1).

The definition of A194512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194512.P14007444045228623435

`4*(n+1)-7*floor((5*(n+1)+2)/9)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194512

/-- `4*(n+1)-7*floor((5*(n+1)+2)/9)` -/
def P14007444045228623435.Spec : Prop :=
  ∀ n, P14007444045228623435.a n = A194512 (n + 1)

theorem P14007444045228623435.correct : P14007444045228623435.Spec := by
  intro n
  simp only [A194512, Nat.add_sub_cancel]

end A194512

/-! ## A194512.P4690512987555085166

`ogf((4-3x+4x^2-3x^3-3x^4+4x^5-3x^6+4x^7-3x^8)/(1-x-x^9+x^10))`
-/

namespace A194512.P4690512987555085166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, 4, -3, -3, 4, -3, 4, -3] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194512.P4690512987555085166

namespace A194512

/-- `ogf((4-3x+4x^2-3x^3-3x^4+4x^5-3x^6+4x^7-3x^8)/(1-x-x^9+x^10))` -/
def P4690512987555085166.Spec : Prop :=
  ∀ n, P4690512987555085166.a n = A194512 (n + 1)

end A194512

/-! ## A194512.P12042247948054525309

`∑[A168309(A005408(n)-A052406(n+1))]`
-/

namespace A194512.P12042247948054525309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168309 (A005408 n - A052406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194512.P12042247948054525309

namespace A194512

/-- `∑[A168309(A005408(n)-A052406(n+1))]` -/
def P12042247948054525309.Spec : Prop :=
  ∀ n, P12042247948054525309.a n = A194512 (n + 1)

end A194512

/-! ## A194512.P4496822539300558706

`∑[A168309(A052406(n+1)+1)]`
-/

namespace A194512.P4496822539300558706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168309 (A052406 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194512.P4496822539300558706

namespace A194512

/-- `∑[A168309(A052406(n+1)+1)]` -/
def P4496822539300558706.Spec : Prop :=
  ∀ n, P4496822539300558706.a n = A194512 (n + 1)

end A194512

/-! ## A194512.P13418247326845617024

`∑[A168309(A045891(n)+n)]`
-/

namespace A194512.P13418247326845617024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168309 (A045891 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194512.P13418247326845617024

namespace A194512

/-- `∑[A168309(A045891(n)+n)]` -/
def P13418247326845617024.Spec : Prop :=
  ∀ n, P13418247326845617024.a n = A194512 (n + 1)

end A194512

/-!
# A194513: Second coordinate of (2,7)-Lagrange pair for n.

The programs for A194513, the canonical program `A194513.P17218151918499416754` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194513 has offset 1).

The definition of A194513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194513.P17218151918499416754

`n+1-2*floor((4*(n+1)+6)/9)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194513

/-- `n+1-2*floor((4*(n+1)+6)/9)` -/
def P17218151918499416754.Spec : Prop :=
  ∀ n, P17218151918499416754.a n = A194513 (n + 1)

theorem P17218151918499416754.correct : P17218151918499416754.Spec := by
  intro n
  simp only [A194513, Nat.add_sub_cancel]

end A194513

/-! ## A194513.P12901939677836170330

`ogf((-1+x-x^2+x^3+x^4-x^5+x^6-x^7+x^8)/(1-x-x^9+x^10))`
-/

namespace A194513.P12901939677836170330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, -1, 1, 1, -1, 1, -1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194513.P12901939677836170330

namespace A194513

/-- `ogf((-1+x-x^2+x^3+x^4-x^5+x^6-x^7+x^8)/(1-x-x^9+x^10))` -/
def P12901939677836170330.Spec : Prop :=
  ∀ n, P12901939677836170330.a n = A194513 (n + 1)

end A194513

/-! ## A194513.P16911449152832880224

`∑[(-1)^(dr(n+1)%5)]`
-/

namespace A194513.P16911449152832880224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (SequenceMachineLib.digitalRoot (n + 1 : ℤ) % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194513.P16911449152832880224

namespace A194513

/-- `∑[(-1)^(dr(n+1)%5)]` -/
def P16911449152832880224.Spec : Prop :=
  ∀ n, P16911449152832880224.a n = A194513 (n + 1)

end A194513

/-! ## A194513.P1184221583025360807

`∑[1-and(2, dr(2*(n+1)))]`
-/

namespace A194513.P1184221583025360807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (SequenceMachineLib.digitalRoot (2 * (n + 1) : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194513.P1184221583025360807

namespace A194513

/-- `∑[1-and(2, dr(2*(n+1)))]` -/
def P1184221583025360807.Spec : Prop :=
  ∀ n, P1184221583025360807.a n = A194513 (n + 1)

end A194513

/-! ## A194513.P1700328297631261901

`A194519(A194512(n+1)+1+n)`
-/

namespace A194513.P1700328297631261901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194519 (A194512 (n + 1) + 1 + (n : ℤ)).toNat

end

end A194513.P1700328297631261901

namespace A194513

/-- `A194519(A194512(n+1)+1+n)` -/
def P1700328297631261901.Spec : Prop :=
  ∀ n, P1700328297631261901.a n = A194513 (n + 1)

end A194513

/-! ## A194513.P4540421197773250286

`∑[A062157(A052413(n+2)+1)]`
-/

namespace A194513.P4540421197773250286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A052413 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194513.P4540421197773250286

namespace A194513

/-- `∑[A062157(A052413(n+2)+1)]` -/
def P4540421197773250286.Spec : Prop :=
  ∀ n, P4540421197773250286.a n = A194513 (n + 1)

end A194513

/-! ## A194513.P14991296144179185034

`A194519(A194512(10*(n+1)))`
-/

namespace A194513.P14991296144179185034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194519 (A194512 (10 * (n + 1))).toNat

end

end A194513.P14991296144179185034

namespace A194513

/-- `A194519(A194512(10*(n+1)))` -/
def P14991296144179185034.Spec : Prop :=
  ∀ n, P14991296144179185034.a n = A194513 (n + 1)

end A194513

/-! ## A194513.P6071700307531822196

`∑[A034947(A052406(A017209(n)))]`
-/

namespace A194513.P6071700307531822196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A052406 (A017209 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194513.P6071700307531822196

namespace A194513

/-- `∑[A034947(A052406(A017209(n)))]` -/
def P6071700307531822196.Spec : Prop :=
  ∀ n, P6071700307531822196.a n = A194513 (n + 1)

end A194513

/-! ## A194513.P1765425313416736400

`∑[∏[A284793(A027693(n))]]`
-/

namespace A194513.P1765425313416736400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A027693 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194513.P1765425313416736400

namespace A194513

/-- `∑[∏[A284793(A027693(n))]]` -/
def P1765425313416736400.Spec : Prop :=
  ∀ n, P1765425313416736400.a n = A194513 (n + 1)

end A194513

/-!
# A194514: First coordinate of (3,4)-Lagrange pair for n.

The programs for A194514, the canonical program `A194514.P2540446891708813332` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194514 has offset 1).

The definition of A194514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194514.P2540446891708813332

`3*(n+1)-4*floor((5*(n+1)+3)/7)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194514

/-- `3*(n+1)-4*floor((5*(n+1)+3)/7)` -/
def P2540446891708813332.Spec : Prop :=
  ∀ n, P2540446891708813332.a n = A194514 (n + 1)

theorem P2540446891708813332.correct : P2540446891708813332.Spec := by
  intro n
  simp only [A194514, Nat.add_sub_cancel]

end A194514

/-! ## A194514.P470854115480527114

`ogf((-1+3x-x^2-x^3-x^4+3x^5-x^6)/(1-x-x^7+x^8))`
-/

namespace A194514.P470854115480527114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, -1, -1, -1, 3, -1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A194514.P470854115480527114

namespace A194514

/-- `ogf((-1+3x-x^2-x^3-x^4+3x^5-x^6)/(1-x-x^7+x^8))` -/
def P470854115480527114.Spec : Prop :=
  ∀ n, P470854115480527114.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P6350790813858075216

`∑[round(cot(∑[n]%7-7))]`
-/

namespace A194514.P6350790813858075216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((((∑ j ∈ Finset.range (n + 1), f2 j) % 7 : ℕ) : ℤ) - 7 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P6350790813858075216

namespace A194514

/-- `∑[round(cot(∑[n]%7-7))]` -/
def P6350790813858075216.Spec : Prop :=
  ∀ n, P6350790813858075216.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P2963119760695100708

`∑[and(4, ((n+1)%7)²)-1]`
-/

namespace A194514.P2963119760695100708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (((n + 1) % 7) ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P2963119760695100708

namespace A194514

/-- `∑[and(4, ((n+1)%7)²)-1]` -/
def P2963119760695100708.Spec : Prop :=
  ∀ n, P2963119760695100708.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P3171439557311276794

`∑[A164942(Δ[A083033(n+1)])]`
-/

namespace A194514.P3171439557311276794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164942 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P3171439557311276794

namespace A194514

/-- `∑[A164942(Δ[A083033(n+1)])]` -/
def P3171439557311276794.Spec : Prop :=
  ∀ n, P3171439557311276794.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P2744510410756511520

`∑[3-A083032(Δ[A083033(n+1)])]`
-/

namespace A194514.P2744510410756511520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A083032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P2744510410756511520

namespace A194514

/-- `∑[3-A083032(Δ[A083033(n+1)])]` -/
def P2744510410756511520.Spec : Prop :=
  ∀ n, P2744510410756511520.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P5851552931438600501

`∑[A260780(Δ[A060107(n+4)])]`
-/

namespace A194514.P5851552931438600501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260780 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P5851552931438600501

namespace A194514

/-- `∑[A260780(Δ[A060107(n+4)])]` -/
def P5851552931438600501.Spec : Prop :=
  ∀ n, P5851552931438600501.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P12158392011327805459

`A194516(A194515(n+1)+1+n)`
-/

namespace A194514.P12158392011327805459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194516 (A194515 (n + 1) + 1 + (n : ℤ)).toNat

end

end A194514.P12158392011327805459

namespace A194514

/-- `A194516(A194515(n+1)+1+n)` -/
def P12158392011327805459.Spec : Prop :=
  ∀ n, P12158392011327805459.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P14295835749752124670

`∑[A001607(Δ[A060464(2*n+1)])]`
-/

namespace A194514.P14295835749752124670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P14295835749752124670

namespace A194514

/-- `∑[A001607(Δ[A060464(2*n+1)])]` -/
def P14295835749752124670.Spec : Prop :=
  ∀ n, P14295835749752124670.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P1957084337468549112

`∑[A098554(Δ[A060464(2*n+1)])]`
-/

namespace A194514.P1957084337468549112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098554 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P1957084337468549112

namespace A194514

/-- `∑[A098554(Δ[A060464(2*n+1)])]` -/
def P1957084337468549112.Spec : Prop :=
  ∀ n, P1957084337468549112.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P5992575939264370257

`A194516(A194515(8*(n+1)))`
-/

namespace A194514.P5992575939264370257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194516 (A194515 (8 * (n + 1))).toNat

end

end A194514.P5992575939264370257

namespace A194514

/-- `A194516(A194515(8*(n+1)))` -/
def P5992575939264370257.Spec : Prop :=
  ∀ n, P5992575939264370257.a n = A194514 (n + 1)

end A194514

/-! ## A194514.P16954622302648868920

`∑[A010151(A133263(n))-2]`
-/

namespace A194514.P16954622302648868920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010151 (A133263 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194514.P16954622302648868920

namespace A194514

/-- `∑[A010151(A133263(n))-2]` -/
def P16954622302648868920.Spec : Prop :=
  ∀ n, P16954622302648868920.a n = A194514 (n + 1)

end A194514

/-!
# A194515: Second coordinate of (3,4)-Lagrange pair for n.

The programs for A194515, the canonical program `A194515.P8228232103485500766` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194515 has offset 1).

The definition of A194515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194515.P8228232103485500766

`n+1-3*floor((2*(n+1)+3)/7)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194515

/-- `n+1-3*floor((2*(n+1)+3)/7)` -/
def P8228232103485500766.Spec : Prop :=
  ∀ n, P8228232103485500766.a n = A194515 (n + 1)

theorem P8228232103485500766.correct : P8228232103485500766.Spec := by
  intro n
  simp only [A194515, Nat.add_sub_cancel]

end A194515

/-! ## A194515.P9584885974588891014

`ogf((1-2x+x^2+x^3+x^4-2x^5+x^6)/(1-x-x^7+x^8))`
-/

namespace A194515.P9584885974588891014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1, 1, -2, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A194515.P9584885974588891014

namespace A194515

/-- `ogf((1-2x+x^2+x^3+x^4-2x^5+x^6)/(1-x-x^7+x^8))` -/
def P9584885974588891014.Spec : Prop :=
  ∀ n, P9584885974588891014.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P3878682609402024805

`∑[A057079(2*A059127(n))]`
-/

namespace A194515.P3878682609402024805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * A059127 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P3878682609402024805

namespace A194515

/-- `∑[A057079(2*A059127(n))]` -/
def P3878682609402024805.Spec : Prop :=
  ∀ n, P3878682609402024805.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P499545947960363654

`∑[A057079(A005843(A059127(n)))]`
-/

namespace A194515.P499545947960363654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A005843 (A059127 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P499545947960363654

namespace A194515

/-- `∑[A057079(A005843(A059127(n)))]` -/
def P499545947960363654.Spec : Prop :=
  ∀ n, P499545947960363654.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P13697064683452233697

`∑[A291454(n+2)²-3]`
-/

namespace A194515.P13697064683452233697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 (n + 2) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P13697064683452233697

namespace A194515

/-- `∑[A291454(n+2)²-3]` -/
def P13697064683452233697.Spec : Prop :=
  ∀ n, P13697064683452233697.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P2273862084173949477

`∑[A131713(Δ[A231000(n)])]`
-/

namespace A194515.P2273862084173949477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P2273862084173949477

namespace A194515

/-- `∑[A131713(Δ[A231000(n)])]` -/
def P2273862084173949477.Spec : Prop :=
  ∀ n, P2273862084173949477.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P12113412712593388594

`∑[A053122(Δ[A083033(n+1)])]`
-/

namespace A194515.P12113412712593388594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053122 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P12113412712593388594

namespace A194515

/-- `∑[A053122(Δ[A083033(n+1)])]` -/
def P12113412712593388594.Spec : Prop :=
  ∀ n, P12113412712593388594.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P5094550356215482462

`∑[A083074(Δ[A083033(n+1)])]`
-/

namespace A194515.P5094550356215482462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083074 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P5094550356215482462

namespace A194515

/-- `∑[A083074(Δ[A083033(n+1)])]` -/
def P5094550356215482462.Spec : Prop :=
  ∀ n, P5094550356215482462.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P5927865252636444581

`∑[A084612(A085058(A037474(n)))]`
-/

namespace A194515.P5927865252636444581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084612 (A085058 (A037474 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P5927865252636444581

namespace A194515

/-- `∑[A084612(A085058(A037474(n)))]` -/
def P5927865252636444581.Spec : Prop :=
  ∀ n, P5927865252636444581.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P6779326844491340198

`A194517(a(n-1)+n+2)` with `a(0)=1`
-/

namespace A194515.P6779326844491340198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194517 (a (n - 1) + (n + 2 : ℤ)).toNat

end

end A194515.P6779326844491340198

namespace A194515

/-- `A194517(a(n-1)+n+2)` -/
def P6779326844491340198.Spec : Prop :=
  ∀ n, P6779326844491340198.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P9328358244102698712

`A194529(2*(n+1)-A194514(n+1))`
-/

namespace A194515.P9328358244102698712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194529 ((2 * (n + 1) : ℤ) - A194514 (n + 1)).toNat

end

end A194515.P9328358244102698712

namespace A194515

/-- `A194529(2*(n+1)-A194514(n+1))` -/
def P9328358244102698712.Spec : Prop :=
  ∀ n, P9328358244102698712.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P10389305967968371829

`∑[A131713(A057357(2*n+1))]`
-/

namespace A194515.P10389305967968371829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A057357 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P10389305967968371829

namespace A194515

/-- `∑[A131713(A057357(2*n+1))]` -/
def P10389305967968371829.Spec : Prop :=
  ∀ n, P10389305967968371829.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P11932571387393385758

`∑[A007427(A059127(A008590(n)))]`
-/

namespace A194515.P11932571387393385758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A059127 (A008590 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194515.P11932571387393385758

namespace A194515

/-- `∑[A007427(A059127(A008590(n)))]` -/
def P11932571387393385758.Spec : Prop :=
  ∀ n, P11932571387393385758.a n = A194515 (n + 1)

end A194515

/-! ## A194515.P14171489664001812549

`Δ[A242062(∑[n])]`
-/

namespace A194515.P14171489664001812549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194515.P14171489664001812549

namespace A194515

/-- `Δ[A242062(∑[n])]` -/
def P14171489664001812549.Spec : Prop :=
  ∀ n, P14171489664001812549.a n = A194515 (n + 1)

end A194515

/-!
# A194516: First coordinate of (3,5)-Lagrange pair for n.

The programs for A194516, the canonical program `A194516.P4380775326703339804` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194516 has offset 1).

The definition of A194516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194516.P4380775326703339804

`2*(n+1)-5*floor((3*(n+1)+3)/8)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194516

/-- `2*(n+1)-5*floor((3*(n+1)+3)/8)` -/
def P4380775326703339804.Spec : Prop :=
  ∀ n, P4380775326703339804.a n = A194516 (n + 1)

theorem P4380775326703339804.correct : P4380775326703339804.Spec := by
  intro n
  simp only [A194516, Nat.add_sub_cancel]

end A194516

/-! ## A194516.P10166707197205788405

`ogf((2-3x+2x^2+2x^3-3x^4+2x^5-3x^6+2x^7)/(1-x-x^8+x^9))`
-/

namespace A194516.P10166707197205788405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 2, 2, -3, 2, -3, 2] [1, -1, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194516.P10166707197205788405

namespace A194516

/-- `ogf((2-3x+2x^2+2x^3-3x^4+2x^5-3x^6+2x^7)/(1-x-x^8+x^9))` -/
def P10166707197205788405.Spec : Prop :=
  ∀ n, P10166707197205788405.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P14645011138314466199

`A097065(A084964(A084964(n+1)))`
-/

namespace A194516.P14645011138314466199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A084964 (A084964 (n + 1)).toNat).toNat

end

end A194516.P14645011138314466199

namespace A194516

/-- `A097065(A084964(A084964(n+1)))` -/
def P14645011138314466199.Spec : Prop :=
  ∀ n, P14645011138314466199.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P15638594842851563692

`A097065(A097065(n+3-A097065(n)))`
-/

namespace A194516.P15638594842851563692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A097065 ((n + 3 : ℤ) - A097065 n).toNat).toNat

end

end A194516.P15638594842851563692

namespace A194516

/-- `A097065(A097065(n+3-A097065(n)))` -/
def P15638594842851563692.Spec : Prop :=
  ∀ n, P15638594842851563692.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P9490302876785774289

`∑[A122861(Δ[A000202(n+1)])]`
-/

namespace A194516.P9490302876785774289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194516.P9490302876785774289

namespace A194516

/-- `∑[A122861(Δ[A000202(n+1)])]` -/
def P9490302876785774289.Spec : Prop :=
  ∀ n, P9490302876785774289.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P12504491409153353669

`∑[A131732(Δ[A000202(n+1)])]`
-/

namespace A194516.P12504491409153353669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194516.P12504491409153353669

namespace A194516

/-- `∑[A131732(Δ[A000202(n+1)])]` -/
def P12504491409153353669.Spec : Prop :=
  ∀ n, P12504491409153353669.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P14314674148036496349

`∑[A152017(Δ[A000202(n+1)])]`
-/

namespace A194516.P14314674148036496349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152017 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194516.P14314674148036496349

namespace A194516

/-- `∑[A152017(Δ[A000202(n+1)])]` -/
def P14314674148036496349.Spec : Prop :=
  ∀ n, P14314674148036496349.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P10332186572399325927

`A097065(A097065(Δ[A209350(n+4)]))`
-/

namespace A194516.P10332186572399325927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209350 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A097065 (f1 (n + 1) - f1 n).toNat).toNat

end

end A194516.P10332186572399325927

namespace A194516

/-- `A097065(A097065(Δ[A209350(n+4)]))` -/
def P10332186572399325927.Spec : Prop :=
  ∀ n, P10332186572399325927.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P13465380729893128103

`A097065(A097065(A097065(n+7)))`
-/

namespace A194516.P13465380729893128103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A097065 (A097065 (n + 7)).toNat).toNat

end

end A194516.P13465380729893128103

namespace A194516

/-- `A097065(A097065(A097065(n+7)))` -/
def P13465380729893128103.Spec : Prop :=
  ∀ n, P13465380729893128103.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P6418426771280122072

`A194522(a(n-1)+n+3)` with `a(0)=2`
-/

namespace A194516.P6418426771280122072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A194522 (a (n - 1) + (n + 3 : ℤ)).toNat

end

end A194516.P6418426771280122072

namespace A194516

/-- `A194522(a(n-1)+n+3)` -/
def P6418426771280122072.Spec : Prop :=
  ∀ n, P6418426771280122072.a n = A194516 (n + 1)

end A194516

/-! ## A194516.P13381490800898760251

`A097065(A084964(A267182(A084964(2*n))))`
-/

namespace A194516.P13381490800898760251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A084964 (A267182 (A084964 (2 * n)).toNat).toNat).toNat

end

end A194516.P13381490800898760251

namespace A194516

/-- `A097065(A084964(A267182(A084964(2*n))))` -/
def P13381490800898760251.Spec : Prop :=
  ∀ n, P13381490800898760251.a n = A194516 (n + 1)

end A194516

/-!
# A194517: Second coordinate of (3,5)-Lagrange pair for n.

The programs for A194517, the canonical program `A194517.P7179532651101429828` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194517 has offset 1).

The definition of A194517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194517.P7179532651101429828

`2*(n+1)-3*floor((5*(n+1)+4)/8)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194517

/-- `2*(n+1)-3*floor((5*(n+1)+4)/8)` -/
def P7179532651101429828.Spec : Prop :=
  ∀ n, P7179532651101429828.a n = A194517 (n + 1)

theorem P7179532651101429828.correct : P7179532651101429828.Spec := by
  intro n
  simp only [A194517, Nat.add_sub_cancel]

end A194517

/-! ## A194517.P2427615118098451738

`ogf((-1+2x-x^2-x^3+2x^4-x^5+2x^6-x^7)/(1-x-x^8+x^9))`
-/

namespace A194517.P2427615118098451738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, -1, -1, 2, -1, 2, -1] [1, -1, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194517.P2427615118098451738

namespace A194517

/-- `ogf((-1+2x-x^2-x^3+2x^4-x^5+2x^6-x^7)/(1-x-x^8+x^9))` -/
def P2427615118098451738.Spec : Prop :=
  ∀ n, P2427615118098451738.a n = A194517 (n + 1)

end A194517

/-! ## A194517.P11285877547713187888

`A097065(xor(1, A110657(n)))`
-/

namespace A194517.P11285877547713187888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (Int.xor 1 (A110657 n)).toNat

end

end A194517.P11285877547713187888

namespace A194517

/-- `A097065(xor(1, A110657(n)))` -/
def P11285877547713187888.Spec : Prop :=
  ∀ n, P11285877547713187888.a n = A194517 (n + 1)

end A194517

/-! ## A194517.P11408952846094168232

`A023443(A110658(n+4))`
-/

namespace A194517.P11408952846094168232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A110658 (n + 4)).toNat

end

end A194517.P11408952846094168232

namespace A194517

/-- `A023443(A110658(n+4))` -/
def P11408952846094168232.Spec : Prop :=
  ∀ n, P11408952846094168232.a n = A194517 (n + 1)

end A194517

/-! ## A194517.P10798639361207468691

`A194519(A271324(n+1))`
-/

namespace A194517.P10798639361207468691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194519 (A271324 (n + 1)).toNat

end

end A194517.P10798639361207468691

namespace A194517

/-- `A194519(A271324(n+1))` -/
def P10798639361207468691.Spec : Prop :=
  ∀ n, P10798639361207468691.a n = A194517 (n + 1)

end A194517

/-!
# A194518: First coordinate of (3,7)-Lagrange pair for n.

The programs for A194518, the canonical program `A194518.P4221892583203582665` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194518 has offset 1).

The definition of A194518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194518.P4221892583203582665

`5*(n+1)-7*floor((7*(n+1)+3)/10)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194518

/-- `5*(n+1)-7*floor((7*(n+1)+3)/10)` -/
def P4221892583203582665.Spec : Prop :=
  ∀ n, P4221892583203582665.a n = A194518 (n + 1)

theorem P4221892583203582665.correct : P4221892583203582665.Spec := by
  intro n
  simp only [A194518, Nat.add_sub_cancel]

end A194518

/-! ## A194518.P16914341025692991097

`ogf((-2+5x-2x^2-2x^3+5x^4-2x^5-2x^6+5x^7-2x^8-2x^9)/(1-x-x^10+x^11))`
-/

namespace A194518.P16914341025692991097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 5, -2, -2, 5, -2, -2, 5, -2, -2] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194518.P16914341025692991097

namespace A194518

/-- `ogf((-2+5x-2x^2-2x^3+5x^4-2x^5-2x^6+5x^7-2x^8-2x^9)/(1-x-x^10+x^11))` -/
def P16914341025692991097.Spec : Prop :=
  ∀ n, P16914341025692991097.a n = A194518 (n + 1)

end A194518

/-! ## A194518.P13915669413033364925

`A194520(A196279(n)+2+n)`
-/

namespace A194518.P13915669413033364925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194520 (A196279 n + 2 + (n : ℤ)).toNat

end

end A194518.P13915669413033364925

namespace A194518

/-- `A194520(A196279(n)+2+n)` -/
def P13915669413033364925.Spec : Prop :=
  ∀ n, P13915669413033364925.a n = A194518 (n + 1)

end A194518

/-! ## A194518.P11806619596459364759

`A194520(A194519(n+11)+n)`
-/

namespace A194518.P11806619596459364759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194520 (A194519 (n + 11) + (n : ℤ)).toNat

end

end A194518.P11806619596459364759

namespace A194518

/-- `A194520(A194519(n+11)+n)` -/
def P11806619596459364759.Spec : Prop :=
  ∀ n, P11806619596459364759.a n = A194518 (n + 1)

end A194518

/-! ## A194518.P845868252334061851

`A194520(∑[2-gcd(2, A042492(n))²]+n+1)`
-/

namespace A194518.P845868252334061851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A042492 n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194520 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)).toNat

end

end A194518.P845868252334061851

namespace A194518

/-- `A194520(∑[2-gcd(2, A042492(n))²]+n+1)` -/
def P845868252334061851.Spec : Prop :=
  ∀ n, P845868252334061851.a n = A194518 (n + 1)

end A194518

/-!
# A194519: Second coordinate of (3,7)-Lagrange pair for n.

The programs for A194519, the canonical program `A194519.P3767201507195735482` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194519 has offset 1).

The definition of A194519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194519.P3767201507195735482

`n+1-3*floor((3*(n+1)+6)/10)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194519

/-- `n+1-3*floor((3*(n+1)+6)/10)` -/
def P3767201507195735482.Spec : Prop :=
  ∀ n, P3767201507195735482.a n = A194519 (n + 1)

theorem P3767201507195735482.correct : P3767201507195735482.Spec := by
  intro n
  simp only [A194519, Nat.add_sub_cancel]

end A194519

/-! ## A194519.P3641724406164253402

`ogf((1-2x+x^2+x^3-2x^4+x^5+x^6-2x^7+x^8+x^9)/(1-x-x^10+x^11))`
-/

namespace A194519.P3641724406164253402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1, -2, 1, 1, -2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194519.P3641724406164253402

namespace A194519

/-- `ogf((1-2x+x^2+x^3-2x^4+x^5+x^6-2x^7+x^8+x^9)/(1-x-x^10+x^11))` -/
def P3641724406164253402.Spec : Prop :=
  ∀ n, P3641724406164253402.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P1448628097829276710

`∑[A131713(A028898(n))]`
-/

namespace A194519.P1448628097829276710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A028898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P1448628097829276710

namespace A194519

/-- `∑[A131713(A028898(n))]` -/
def P1448628097829276710.Spec : Prop :=
  ∀ n, P1448628097829276710.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P11190354211098778104

`∑[A131713(A081597(n))]`
-/

namespace A194519.P11190354211098778104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A081597 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P11190354211098778104

namespace A194519

/-- `∑[A131713(A081597(n))]` -/
def P11190354211098778104.Spec : Prop :=
  ∀ n, P11190354211098778104.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P9042886436208410855

`∑[A061347(A028904(n)+2)]`
-/

namespace A194519.P9042886436208410855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A028904 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P9042886436208410855

namespace A194519

/-- `∑[A061347(A028904(n)+2)]` -/
def P9042886436208410855.Spec : Prop :=
  ∀ n, P9042886436208410855.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P10068473725312966953

`∑[A327767(A059126(A081600(n)))]`
-/

namespace A194519.P10068473725312966953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (A059126 (A081600 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P10068473725312966953

namespace A194519

/-- `∑[A327767(A059126(A081600(n)))]` -/
def P10068473725312966953.Spec : Prop :=
  ∀ n, P10068473725312966953.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P18253110866403898717

`A196279(A020723(n+1))`
-/

namespace A194519.P18253110866403898717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196279 (A020723 (n + 1)).toNat

end

end A194519.P18253110866403898717

namespace A194519

/-- `A196279(A020723(n+1))` -/
def P18253110866403898717.Spec : Prop :=
  ∀ n, P18253110866403898717.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P700965681248745138

`A196279(A171891(n+2))`
-/

namespace A194519.P700965681248745138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196279 (A171891 (n + 2)).toNat

end

end A194519.P700965681248745138

namespace A194519

/-- `A196279(A171891(n+2))` -/
def P700965681248745138.Spec : Prop :=
  ∀ n, P700965681248745138.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P4970615749289384998

`∑[A117188(A081594(n)+n)]`
-/

namespace A194519.P4970615749289384998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (A081594 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P4970615749289384998

namespace A194519

/-- `∑[A117188(A081594(n)+n)]` -/
def P4970615749289384998.Spec : Prop :=
  ∀ n, P4970615749289384998.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P9198098898331623582

`∑[2-gcd(2, A042492(n))²]`
-/

namespace A194519.P9198098898331623582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A042492 n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P9198098898331623582

namespace A194519

/-- `∑[2-gcd(2, A042492(n))²]` -/
def P9198098898331623582.Spec : Prop :=
  ∀ n, P9198098898331623582.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P12041292922335903498

`∑[A089812(A000217(A028904(n)))]`
-/

namespace A194519.P12041292922335903498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 (A000217 (A028904 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P12041292922335903498

namespace A194519

/-- `∑[A089812(A000217(A028904(n)))]` -/
def P12041292922335903498.Spec : Prop :=
  ∀ n, P12041292922335903498.a n = A194519 (n + 1)

end A194519

/-! ## A194519.P6691276335691947509

`∑[2-A177704(∑[comp[6*n]])²]`
-/

namespace A194519.P6691276335691947509
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A177704 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194519.P6691276335691947509

namespace A194519

/-- `∑[2-A177704(∑[comp[6*n]])²]` -/
def P6691276335691947509.Spec : Prop :=
  ∀ n, P6691276335691947509.a n = A194519 (n + 1)

end A194519

/-!
# A194520: First coordinate of (3,8)-Lagrange pair for n.

The programs for A194520, the canonical program `A194520.P711950418871251526` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194520 has offset 1).

The definition of A194520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194520.P14740250117341360294

`ogf((3-5x+3x^2+3x^3-5x^4+3x^5+3x^6-5x^7+3x^8+x^9-3x^10)/(1-x-x^11+x^12))`
-/

namespace A194520.P14740250117341360294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5, 3, 3, -5, 3, 3, -5, 3, 1, -3] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194520.P14740250117341360294

namespace A194520

/-- `ogf((3-5x+3x^2+3x^3-5x^4+3x^5+3x^6-5x^7+3x^8+x^9-3x^10)/(1-x-x^11+x^12))` -/
def P14740250117341360294.Spec : Prop :=
  ∀ n, P14740250117341360294.a n = A194520 (n + 1)

end A194520

/-! ## A194520.P711950418871251526

`3*(n+1)-6*floor((4*(n+1)+3)/11)-2*floor((4*(n+1)+4)/11)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194520

/-- `3*(n+1)-6*floor((4*(n+1)+3)/11)-2*floor((4*(n+1)+4)/11)` -/
def P711950418871251526.Spec : Prop :=
  ∀ n, P711950418871251526.a n = A194520 (n + 1)

theorem P711950418871251526.correct : P711950418871251526.Spec := by
  intro n
  simp only [A194520, Nat.add_sub_cancel]

end A194520

/-!
# A194521: Second coordinate of (3,8)-Lagrange pair for n.

The programs for A194521, the canonical program `A194521.P10671145887767129141` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194521 has offset 1).

The definition of A194521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194521.P10671145887767129141

`ogf((-1+2x-x^2-x^3+2x^4-x^5+3x^6-2x^7-x^8-x^9+2x^10)/(1-x-x^11+x^12))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194521

/-- `ogf((-1+2x-x^2-x^3+2x^4-x^5+3x^6-2x^7-x^8-x^9+2x^10)/(1-x-x^11+x^12))` -/
def P10671145887767129141.Spec : Prop :=
  ∀ n, P10671145887767129141.a n = A194521 (n + 1)

theorem P10671145887767129141.correct : P10671145887767129141.Spec := by
  intro n
  simp only [A194521, Nat.add_sub_cancel]

end A194521

/-!
# A194522: First coordinate of (4,5)-Lagrange pair for n.

The programs for A194522, the canonical program `A194522.P17205699318491492934` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194522 has offset 1).

The definition of A194522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194522.P17205699318491492934

`4*(n+1)-5*floor((7*(n+1)+4)/9)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194522

/-- `4*(n+1)-5*floor((7*(n+1)+4)/9)` -/
def P17205699318491492934.Spec : Prop :=
  ∀ n, P17205699318491492934.a n = A194522 (n + 1)

theorem P17205699318491492934.correct : P17205699318491492934.Spec := by
  intro n
  simp only [A194522, Nat.add_sub_cancel]

end A194522

/-! ## A194522.P2719304559191208670

`ogf((-1-x+4x^2-x^3-x^4-x^5+4x^6-x^7-x^8)/(1-x-x^9+x^10))`
-/

namespace A194522.P2719304559191208670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -1, 4, -1, -1, -1, 4, -1, -1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194522.P2719304559191208670

namespace A194522

/-- `ogf((-1-x+4x^2-x^3-x^4-x^5+4x^6-x^7-x^8)/(1-x-x^9+x^10))` -/
def P2719304559191208670.Spec : Prop :=
  ∀ n, P2719304559191208670.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P3173636601538980179

`∑[A015238(Δ[A265187(n+1)])]`
-/

namespace A194522.P3173636601538980179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194522.P3173636601538980179

namespace A194522

/-- `∑[A015238(Δ[A265187(n+1)])]` -/
def P3173636601538980179.Spec : Prop :=
  ∀ n, P3173636601538980179.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P1081048175153256222

`∑[A051494(Δ[A265187(n+1)])]`
-/

namespace A194522.P1081048175153256222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194522.P1081048175153256222

namespace A194522

/-- `∑[A051494(Δ[A265187(n+1)])]` -/
def P1081048175153256222.Spec : Prop :=
  ∀ n, P1081048175153256222.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P18163259757535521943

`∑[A077921(Δ[A265187(n+1)])]`
-/

namespace A194522.P18163259757535521943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194522.P18163259757535521943

namespace A194522

/-- `∑[A077921(Δ[A265187(n+1)])]` -/
def P18163259757535521943.Spec : Prop :=
  ∀ n, P18163259757535521943.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P7414054497041412623

`∑[A128641(Δ[A265187(n+1)])]`
-/

namespace A194522.P7414054497041412623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128641 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194522.P7414054497041412623

namespace A194522

/-- `∑[A128641(Δ[A265187(n+1)])]` -/
def P7414054497041412623.Spec : Prop :=
  ∀ n, P7414054497041412623.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P5342043195536687293

`∑[A225263(Δ[A265187(n+1)])]`
-/

namespace A194522.P5342043195536687293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225263 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194522.P5342043195536687293

namespace A194522

/-- `∑[A225263(Δ[A265187(n+1)])]` -/
def P5342043195536687293.Spec : Prop :=
  ∀ n, P5342043195536687293.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P7851978399085404448

`A023444(A171088(A171088(n+7)))`
-/

namespace A194522.P7851978399085404448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A171088 (A171088 (n + 7)).toNat).toNat

end

end A194522.P7851978399085404448

namespace A194522

/-- `A023444(A171088(A171088(n+7)))` -/
def P7851978399085404448.Spec : Prop :=
  ∀ n, P7851978399085404448.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P15867632080982232404

`Δ[A171088(∑[A171088(n)]-n)]`
-/

namespace A194522.P15867632080982232404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194522.P15867632080982232404

namespace A194522

/-- `Δ[A171088(∑[A171088(n)]-n)]` -/
def P15867632080982232404.Spec : Prop :=
  ∀ n, P15867632080982232404.a n = A194522 (n + 1)

end A194522

/-! ## A194522.P17234727742174255062

`Δ[A171088(A171088(∑[n]))]`
-/

namespace A194522.P17234727742174255062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 (A171088 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194522.P17234727742174255062

namespace A194522

/-- `Δ[A171088(A171088(∑[n]))]` -/
def P17234727742174255062.Spec : Prop :=
  ∀ n, P17234727742174255062.a n = A194522 (n + 1)

end A194522

/-!
# A194523: Second coordinate of (4,5)-Lagrange pair for n.

The programs for A194523, the canonical program `A194523.P11229765806579795248` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194523 has offset 1).

The definition of A194523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194523.P12389921509121461279

`ogf((1+x-x^2-x^3+x^4+x^5-3x^6+x^7+x^8)/(1-x-x^9+x^10))`
-/

namespace A194523.P12389921509121461279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1, 1, 1, -3, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194523.P12389921509121461279

namespace A194523

/-- `ogf((1+x-x^2-x^3+x^4+x^5-3x^6+x^7+x^8)/(1-x-x^9+x^10))` -/
def P12389921509121461279.Spec : Prop :=
  ∀ n, P12389921509121461279.a n = A194523 (n + 1)

end A194523

/-! ## A194523.P11229765806579795248

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=0, a(4)=1, a(5)=2, a(6)=-1, a(7)=0, a(8)=1, a(9)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194523

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P11229765806579795248.Spec : Prop :=
  ∀ n, P11229765806579795248.a n = A194523 (n + 1)

theorem P11229765806579795248.correct : P11229765806579795248.Spec := by
  intro n
  simp only [A194523, Nat.add_sub_cancel]

end A194523

/-! ## A194523.P14197202111538933984

`n+1-4*floor((n+3)/9)-2*floor((n+6)/9)-2*floor((n+7)/9)`
-/

namespace A194523.P14197202111538933984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 4 * ⌊(n + 3 : ℚ) / 9⌋ - 2 * ⌊(n + 6 : ℚ) / 9⌋ - 2 * ⌊(n + 7 : ℚ) / 9⌋

end

end A194523.P14197202111538933984

namespace A194523

/-- `n+1-4*floor((n+3)/9)-2*floor((n+6)/9)-2*floor((n+7)/9)` -/
def P14197202111538933984.Spec : Prop :=
  ∀ n, P14197202111538933984.a n = A194523 (n + 1)

end A194523

/-!
# A194524: First coordinate of (4,7)-Lagrange pair for n.

The programs for A194524, the canonical program `A194524.P10316036285603551855` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194524 has offset 1).

The definition of A194524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194524.P10316036285603551855

`2*(n+1)-7*floor((3*(n+1)+4)/11)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194524

/-- `2*(n+1)-7*floor((3*(n+1)+4)/11)` -/
def P10316036285603551855.Spec : Prop :=
  ∀ n, P10316036285603551855.a n = A194524 (n + 1)

theorem P10316036285603551855.correct : P10316036285603551855.Spec := by
  intro n
  simp only [A194524, Nat.add_sub_cancel]

end A194524

/-! ## A194524.P12926000959631045371

`ogf((2+2x-5x^2+2x^3+2x^4-5x^5+2x^6+2x^7+2x^8-5x^9+2x^10)/(1-x-x^11+x^12))`
-/

namespace A194524.P12926000959631045371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -5, 2, 2, -5, 2, 2, 2, -5, 2] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194524.P12926000959631045371

namespace A194524

/-- `ogf((2+2x-5x^2+2x^3+2x^4-5x^5+2x^6+2x^7+2x^8-5x^9+2x^10)/(1-x-x^11+x^12))` -/
def P12926000959631045371.Spec : Prop :=
  ∀ n, P12926000959631045371.a n = A194524 (n + 1)

end A194524

/-!
# A194525: Second coordinate of (4,7)-Lagrange pair for n.

The programs for A194525, the canonical program `A194525.P3362206321877472868` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194525 has offset 1).

The definition of A194525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194525.P3362206321877472868

`3*(n+1)-4*floor((8*(n+1)+6)/11)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194525

/-- `3*(n+1)-4*floor((8*(n+1)+6)/11)` -/
def P3362206321877472868.Spec : Prop :=
  ∀ n, P3362206321877472868.a n = A194525 (n + 1)

theorem P3362206321877472868.correct : P3362206321877472868.Spec := by
  intro n
  simp only [A194525, Nat.add_sub_cancel]

end A194525

/-! ## A194525.P12030297346916419171

`ogf((-1-x+3x^2-x^3-x^4+3x^5-x^6-x^7-x^8+3x^9-x^10)/(1-x-x^11+x^12))`
-/

namespace A194525.P12030297346916419171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -1, 3, -1, -1, 3, -1, -1, -1, 3, -1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194525.P12030297346916419171

namespace A194525

/-- `ogf((-1-x+3x^2-x^3-x^4+3x^5-x^6-x^7-x^8+3x^9-x^10)/(1-x-x^11+x^12))` -/
def P12030297346916419171.Spec : Prop :=
  ∀ n, P12030297346916419171.a n = A194525 (n + 1)

end A194525

/-!
# A194526: First coordinate of (5,6)-Lagrange pair for n.

The programs for A194526, the canonical program `A194526.P2096366983814873621` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194526 has offset 1).

The definition of A194526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194526.P2096366983814873621

`ogf((-1-x+5x^2-x^3-x^4-x^5-x^6-x^7+5x^8-x^9-3x^10+2x^11)/(1-x-x^11+x^12))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194526

/-- `ogf((-1-x+5x^2-x^3-x^4-x^5-x^6-x^7+5x^8-x^9-3x^10+2x^11)/(1-x-x^11+x^12))` -/
def P2096366983814873621.Spec : Prop :=
  ∀ n, P2096366983814873621.a n = A194526 (n + 1)

theorem P2096366983814873621.correct : P2096366983814873621.Spec := by
  intro n
  simp only [A194526, Nat.add_sub_cancel]

end A194526

/-!
# A194527: Second coordinate of (5,6)-Lagrange pair for n.

The programs for A194527, the canonical program `A194527.P10209665219462216416` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194527 has offset 1).

The definition of A194527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194527.P3681075368322834308

`ogf((1+x-4x^2+x^3+x^4+x^5+x^6+x^7-4x^8+x^9+2x^10-x^11)/(1-x-x^11+x^12))`
-/

namespace A194527.P3681075368322834308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4, 1, 1, 1, 1, 1, -4, 1, 2, -1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194527.P3681075368322834308

namespace A194527

/-- `ogf((1+x-4x^2+x^3+x^4+x^5+x^6+x^7-4x^8+x^9+2x^10-x^11)/(1-x-x^11+x^12))` -/
def P3681075368322834308.Spec : Prop :=
  ∀ n, P3681075368322834308.a n = A194527 (n + 1)

end A194527

/-! ## A194527.P10209665219462216416

`n+2+floor(2*(n+1)/11)-5*floor((2*(n+1)+5)/11)-floor((2*(n+1)+10)/11)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194527

/-- `n+2+floor(2*(n+1)/11)-5*floor((2*(n+1)+5)/11)-floor((2*(n+1)+10)/11)` -/
def P10209665219462216416.Spec : Prop :=
  ∀ n, P10209665219462216416.a n = A194527 (n + 1)

theorem P10209665219462216416.correct : P10209665219462216416.Spec := by
  intro n
  simp only [A194527, Nat.add_sub_cancel]

end A194527

/-!
# A194528: First coordinate of (5,8)-Lagrange pair for n.

The programs for A194528, the canonical program `A194528.P13583856099528419391` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194528 has offset 1).

The definition of A194528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194528.P5063323517103509046

`ogf((-3+5x-3x^2+5x^3-3x^4-3x^5+5x^6-3x^7-3x^8+5x^9-3x^10-3x^11+5x^12)/(1-x-x^13+x^14))`
-/

namespace A194528.P5063323517103509046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 5, -3, 5, -3, -3, 5, -3, -3, 5, -3, -3, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194528.P5063323517103509046

namespace A194528

/-- `ogf((-3+5x-3x^2+5x^3-3x^4-3x^5+5x^6-3x^7-3x^8+5x^9-3x^10-3x^11+5x^12)/(1-x-x^13+x^14))` -/
def P5063323517103509046.Spec : Prop :=
  ∀ n, P5063323517103509046.a n = A194528 (n + 1)

end A194528

/-! ## A194528.P13583856099528419391

`5*(n+1)-8*floor((4*(n+1)+4)/13)-8*floor((4*(n+1)+9)/13)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194528

/-- `5*(n+1)-8*floor((4*(n+1)+4)/13)-8*floor((4*(n+1)+9)/13)` -/
def P13583856099528419391.Spec : Prop :=
  ∀ n, P13583856099528419391.a n = A194528 (n + 1)

theorem P13583856099528419391.correct : P13583856099528419391.Spec := by
  intro n
  simp only [A194528, Nat.add_sub_cancel]

end A194528

/-! ## A194528.P2776496965633495219

`Δ[A022267(A157265(n+1))%8]`
-/

namespace A194528.P2776496965633495219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022267 (A157265 (n + 1)).toNat) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194528.P2776496965633495219

namespace A194528

/-- `Δ[A022267(A157265(n+1))%8]` -/
def P2776496965633495219.Spec : Prop :=
  ∀ n, P2776496965633495219.a n = A194528 (n + 1)

end A194528

/-! ## A194528.P14203214517414844601

`Δ[A033816(A107929(n+1))%8]`
-/

namespace A194528.P14203214517414844601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033816 (A107929 (n + 1)).toNat) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194528.P14203214517414844601

namespace A194528

/-- `Δ[A033816(A107929(n+1))%8]` -/
def P14203214517414844601.Spec : Prop :=
  ∀ n, P14203214517414844601.a n = A194528 (n + 1)

end A194528

/-!
# A194529: Second coordinate of (5,8)-Lagrange pair for n.

The programs for A194529, the canonical program `A194529.P2202456097641223767` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194529 has offset 1).

The definition of A194529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194529.P14166589275100916418

`ogf((2-3x+2x^2-3x^3+2x^4+2x^5-3x^6+2x^7+2x^8-3x^9+2x^10+2x^11-3x^12)/(1-x-x^13+x^14))`
-/

namespace A194529.P14166589275100916418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 2, -3, 2, 2, -3, 2, 2, -3, 2, 2, -3] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A194529.P14166589275100916418

namespace A194529

/-- `ogf((2-3x+2x^2-3x^3+2x^4+2x^5-3x^6+2x^7+2x^8-3x^9+2x^10+2x^11-3x^12)/(1-x-x^13+x^14))` -/
def P14166589275100916418.Spec : Prop :=
  ∀ n, P14166589275100916418.a n = A194529 (n + 1)

end A194529

/-! ## A194529.P2202456097641223767

`7*(n+1)-5*floor((9*(n+1)+3)/13)-5*floor((9*(n+1)+8)/13)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194529

/-- `7*(n+1)-5*floor((9*(n+1)+3)/13)-5*floor((9*(n+1)+8)/13)` -/
def P2202456097641223767.Spec : Prop :=
  ∀ n, P2202456097641223767.a n = A194529 (n + 1)

theorem P2202456097641223767.correct : P2202456097641223767.Spec := by
  intro n
  simp only [A194529, Nat.add_sub_cancel]

end A194529

/-!
# A194530: Number of unlabeled rigid interval posets with n non-maximal and 2 maximal elements.

The programs for A194530, there is no canonical definition to state claims against.
-/

/-! ## A194530.P4139334940427750768

`A218757(∑[n+2]+3)`
-/

namespace A194530.P4139334940427750768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218757 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A194530.P4139334940427750768

/-! ## A194530.P4071243591184734696

`A193344(A000124(n))-A000007(n)`
-/

namespace A194530.P4071243591184734696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193344 (A000124 n).toNat - A000007 n

end

end A194530.P4071243591184734696

/-! ## A194530.P11883610493430667855

`A057427(n)*A193344(A000124(n))`
-/

namespace A194530.P11883610493430667855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A193344 (A000124 n).toNat

end

end A194530.P11883610493430667855

/-! ## A194530.P5903311809596855088

`A193344(A000124(n))%A289312(n)`
-/

namespace A194530.P5903311809596855088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193344 (A000124 n).toNat) (A289312 n)

end

end A194530.P5903311809596855088

/-! ## A194530.P15007947709045207191

`and(A057428(n), A193344(A000124(n)))`
-/

namespace A194530.P15007947709045207191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A193344 (A000124 n).toNat)

end

end A194530.P15007947709045207191

/-!
# A194531: Numerator of row 4 in A051714(n) or row 3 in A176672(n).

The programs for A194531, there is no canonical definition to state claims against.
-/

/-! ## A194531.P774868643793847783

`lcm(6, n+1)/6*lcm(24, n)/24`
-/

namespace A194531.P774868643793847783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (n + 1) : ℚ) / 6 * ((Nat.lcm 24 n : ℚ) / 24)

end

end A194531.P774868643793847783

/-! ## A194531.P16084966563522320847

`A051724(lcm(2*(n+1), ∑[n]))`
-/

namespace A194531.P16084966563522320847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Nat.lcm (2 * (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A194531.P16084966563522320847

/-! ## A194531.P3351504778184043264

`A051724(4/gcd(4, n)*∑[n])`
-/

namespace A194531.P3351504778184043264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway (4 / (Nat.gcd 4 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))).toNat

end

end A194531.P3351504778184043264

/-! ## A194531.P4968206148211564878

`lcm(24, n)/24*A060789(n+1)`
-/

namespace A194531.P4968206148211564878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 24 n : ℚ) / 24 * (A060789 (n + 1) : ℚ)

end

end A194531.P4968206148211564878

/-! ## A194531.P2771999689860143495

`lcm(lcm(6, n+1)/6, A051724(∑[n]))`
-/

namespace A194531.P2771999689860143495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((Nat.lcm 6 (n + 1) : ℚ) / 6)) (A051724 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A194531.P2771999689860143495

/-! ## A194531.P10202267129620925392

`A051714(A167614(n+2))`
-/

namespace A194531.P10202267129620925392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A167614 (n + 2)).toNat

end

end A194531.P10202267129620925392

/-! ## A194531.P11549857404567979221

`A051714(A055999(n)+9)`
-/

namespace A194531.P11549857404567979221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A055999 n + 9).toNat

end

end A194531.P11549857404567979221

/-! ## A194531.P9800985118620798

`A051724(∑[n]*A010685(n))`
-/

namespace A194531.P9800985118620798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010685 n).toNat

end

end A194531.P9800985118620798

/-! ## A194531.P15574473673991856275

`A051724((n+1)*A064680(n))`
-/

namespace A194531.P15574473673991856275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 ((n + 1 : ℤ) * A064680 n).toNat

end

end A194531.P15574473673991856275

/-! ## A194531.P11191131550911079025

`A051724((n+1)*A225975(n))`
-/

namespace A194531.P11191131550911079025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 ((n + 1 : ℤ) * A225975 n).toNat

end

end A194531.P11191131550911079025

/-!
# A194532: Jordan function ratio J_6(n)/J_2(n).

The programs for A194532, the canonical program `A194532.P2568676926494303915` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194532 has offset 1).

The definition of A194532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194532.P2568676926494303915

`A069091(n+1)/A007434(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194532

/-- `A069091(n+1)/A007434(n+1)` -/
def P2568676926494303915.Spec : Prop :=
  ∀ n, P2568676926494303915.a n = (A194532 (n + 1) : ℚ)

end A194532

/-! ## A194532.P16292489656754065279

`A160895(n+1)/A001615(n+1)`
-/

namespace A194532.P16292489656754065279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160895 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A194532.P16292489656754065279

namespace A194532

/-- `A160895(n+1)/A001615(n+1)` -/
def P16292489656754065279.Spec : Prop :=
  ∀ n, P16292489656754065279.a n = (A194532 (n + 1) : ℚ)

end A194532

/-! ## A194532.P3081983757981055933

`A069091(n+1)/(A000010(n+1)*A001615(n+1))`
-/

namespace A194532.P3081983757981055933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A000010 (n + 1) * A001615 (n + 1) : ℚ)

end

end A194532.P3081983757981055933

namespace A194532

/-- `A069091(n+1)/(A000010(n+1)*A001615(n+1))` -/
def P3081983757981055933.Spec : Prop :=
  ∀ n, P3081983757981055933.a n = (A194532 (n + 1) : ℚ)

end A194532

/-! ## A194532.P5471960249739948829

`A059376(n+1)/A007434(n+1)*A065959(n+1)`
-/

namespace A194532.P5471960249739948829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059376 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) * (A065959 (n + 1) : ℚ)

end

end A194532.P5471960249739948829

namespace A194532

/-- `A059376(n+1)/A007434(n+1)*A065959(n+1)` -/
def P5471960249739948829.Spec : Prop :=
  ∀ n, P5471960249739948829.a n = (A194532 (n + 1) : ℚ)

end A194532

/-! ## A194532.P9690675809369008725

`∑{d}[∏{p}[n+1, #²], ((n+1)²/#)²]`
-/

namespace A194532.P9690675809369008725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((n + 1) ^ 2 : ℚ) / (d : ℚ)) ^ 2

end

end A194532.P9690675809369008725

namespace A194532

/-- `∑{d}[∏{p}[n+1, #²], ((n+1)²/#)²]` -/
def P9690675809369008725.Spec : Prop :=
  ∀ n, P9690675809369008725.a n = (A194532 (n + 1) : ℚ)

end A194532

/-!
# A194533: Jordan function ratio J_8(n)/J_2(n).

The programs for A194533, the canonical program `A194533.P12707079005043601207` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194533 has offset 1).

The definition of A194533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194533.P12707079005043601207

`A065960(n+1)*A065958(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A194533

/-- `A065960(n+1)*A065958(n+1)` -/
def P12707079005043601207.Spec : Prop :=
  ∀ n, P12707079005043601207.a n = A194533 (n + 1)

theorem P12707079005043601207.correct : P12707079005043601207.Spec := by
  intro n
  simp only [A194533, Nat.add_sub_cancel]

end A194533

/-! ## A194533.P8819859604179709313

`A069093(n+1)/A007434(n+1)`
-/

namespace A194533.P8819859604179709313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ)

end

end A194533.P8819859604179709313

namespace A194533

/-- `A069093(n+1)/A007434(n+1)` -/
def P8819859604179709313.Spec : Prop :=
  ∀ n, P8819859604179709313.a n = (A194533 (n + 1) : ℚ)

end A194533

/-! ## A194533.P7995780917199551855

`A069093(n+1)/Δ[A321879(n)]`
-/

namespace A194533.P7995780917199551855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069093 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A194533.P7995780917199551855

namespace A194533

/-- `A069093(n+1)/Δ[A321879(n)]` -/
def P7995780917199551855.Spec : Prop :=
  ∀ n, P7995780917199551855.a n = (A194533 (n + 1) : ℚ)

end A194533

/-! ## A194533.P7463602850203073594

`A065958(n+1)*A065960(n+1)`
-/

namespace A194533.P7463602850203073594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (n + 1) * A065960 (n + 1)

end

end A194533.P7463602850203073594

namespace A194533

/-- `A065958(n+1)*A065960(n+1)` -/
def P7463602850203073594.Spec : Prop :=
  ∀ n, P7463602850203073594.a n = A194533 (n + 1)

theorem P7463602850203073594.correct : P7463602850203073594.Spec := by
  intro n
  simp only [A194533, Nat.add_sub_cancel, A194533.P7463602850203073594.a, A194533.P12707079005043601207.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A194533

/-! ## A194533.P5397370704638979324

`A160908(n+1)/A001615(n+1)`
-/

namespace A194533.P5397370704638979324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160908 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A194533.P5397370704638979324

namespace A194533

/-- `A160908(n+1)/A001615(n+1)` -/
def P5397370704638979324.Spec : Prop :=
  ∀ n, P5397370704638979324.a n = (A194533 (n + 1) : ℚ)

end A194533

/-! ## A194533.P8923692875045810248

`A059377(n+1)/A007434(n+1)*A065960(n+1)`
-/

namespace A194533.P8923692875045810248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ) * (A065960 (n + 1) : ℚ)

end

end A194533.P8923692875045810248

namespace A194533

/-- `A059377(n+1)/A007434(n+1)*A065960(n+1)` -/
def P8923692875045810248.Spec : Prop :=
  ∀ n, P8923692875045810248.a n = (A194533 (n + 1) : ℚ)

end A194533

/-! ## A194533.P5738128391332275318

`Δ[A321973(n)]*A065960(n+1)`
-/

namespace A194533.P5738128391332275318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065960 (n + 1)

end

end A194533.P5738128391332275318

namespace A194533

/-- `Δ[A321973(n)]*A065960(n+1)` -/
def P5738128391332275318.Spec : Prop :=
  ∀ n, P5738128391332275318.a n = A194533 (n + 1)

end A194533

/-! ## A194533.P11539200009392486122

`(A321973(n+1)-A321973(n))*A065960(n+1)`
-/

namespace A194533.P11539200009392486122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321973 (n + 1) - A321973 n) * A065960 (n + 1)

end

end A194533.P11539200009392486122

namespace A194533

/-- `(A321973(n+1)-A321973(n))*A065960(n+1)` -/
def P11539200009392486122.Spec : Prop :=
  ∀ n, P11539200009392486122.a n = A194533 (n + 1)

end A194533

/-!
# A194534: Number of lower triangles of an n X n 0..2 array with new values introduced in row major order 0..2 and no element equal to more than one horizontal or vertical neighbor.

The programs for A194534, there is no canonical definition to state claims against.
-/

/-! ## A194534.P11632030177248259360

`A194540(∑[n+2])`
-/

namespace A194534.P11632030177248259360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194534.P11632030177248259360

/-! ## A194534.P2550312202664581906

`record[A194540(gcd(n, A185700(n+1)))]`
-/

namespace A194534.P2550312202664581906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (Int.gcd (n : ℤ) (A185700 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194534.P2550312202664581906

/-! ## A194534.P8261822269519654

`A299905(n)+A194540(A000096(n+1))`
-/

namespace A194534.P8261822269519654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A194540 (A000096 (n + 1)).toNat

end

end A194534.P8261822269519654

/-! ## A194534.P5320966135742971118

`lcm(A194540(A000096(n+1)), A337266(n))`
-/

namespace A194534.P5320966135742971118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A194540 (A000096 (n + 1)).toNat) (A337266 n)

end

end A194534.P5320966135742971118

/-! ## A194534.P3805161394990671462

`record[gcd(A194540(n+1), A319203(n))]`
-/

namespace A194534.P3805161394990671462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194540 (n + 1)) (A319203 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194534.P3805161394990671462

/-!
# A194535: Number of lower triangles of an n X n 0..3 array with new values introduced in row major order 0..3 and no element equal to more than one horizontal or vertical neighbor.

The programs for A194535, there is no canonical definition to state claims against.
-/

/-! ## A194535.P14241409378484052537

`A194540(∑[n+3]+1)`
-/

namespace A194535.P14241409378484052537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194535.P14241409378484052537

/-! ## A194535.P2512449549688731288

`or(A000007(n), A194540(A034856(n+2)))`
-/

namespace A194535.P2512449549688731288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194540 (A034856 (n + 2)).toNat)

end

end A194535.P2512449549688731288

/-! ## A194535.P9794048368615285662

`record[A194540(n+1)^A033999(A008284(n+1))]`
-/

namespace A194535.P9794048368615285662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194540 (n + 1) : ℚ) ^ (A033999 (A008284 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194535.P9794048368615285662

/-! ## A194535.P2236501154206874617

`A194540(A034856(n+2))+A014017(2*n+1)`
-/

namespace A194535.P2236501154206874617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (A034856 (n + 2)).toNat + A014017 (2 * n + 1)

end

end A194535.P2236501154206874617

/-! ## A194535.P10134591260724102295

`A007318(A000217(n))*A194540(A034856(n+2))`
-/

namespace A194535.P10134591260724102295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A194540 (A034856 (n + 2)).toNat

end

end A194535.P10134591260724102295

/-!
# A194536: Number of lower triangles of an n X n 0..4 array with new values introduced in row major order 0..4 and no element equal to more than one horizontal or vertical neighbor.

The programs for A194536, there is no canonical definition to state claims against.
-/

/-! ## A194536.P2103020317709627121

`A194540(A141214(n+1))`
-/

namespace A194536.P2103020317709627121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (A141214 (n + 1)).toNat

end

end A194536.P2103020317709627121

/-! ## A194536.P17213487396750789156

`A194540(A027379(n+2))`
-/

namespace A194536.P17213487396750789156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (A027379 (n + 2)).toNat

end

end A194536.P17213487396750789156

/-! ## A194536.P4021380362946374549

`A194540(eq[3, A193592(n)])`
-/

namespace A194536.P4021380362946374549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194536.P4021380362946374549

/-! ## A194536.P16552213428309645384

`A194540(eq[4, A166065(n)])`
-/

namespace A194536.P16552213428309645384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194536.P16552213428309645384

/-!
# A194537: Number of lower triangles of an n X n 0..5 array with new values introduced in row major order 0..5 and no element equal to more than one horizontal or vertical neighbor.

The programs for A194537, there is no canonical definition to state claims against.
-/

/-! ## A194537.P8466991789701126649

`A194540(A046691(n+3))`
-/

namespace A194537.P8466991789701126649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (A046691 (n + 3)).toNat

end

end A194537.P8466991789701126649

/-! ## A194537.P15714293050875408324

`A194540(eq[4, A193592(n)])`
-/

namespace A194537.P15714293050875408324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194537.P15714293050875408324

/-!
# A194538: Number of lower triangles of an n X n 0..6 array with new values introduced in row major order 0..6 and no element equal to more than one horizontal or vertical neighbor.

The programs for A194538, there is no canonical definition to state claims against.
-/

/-! ## A194538.P14298747901032029742

`A194540(eq[3, A219347(n)])`
-/

namespace A194538.P14298747901032029742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194538.P14298747901032029742

/-! ## A194538.P6143076125572684495

`A194540(eq[5, A193592(n)])`
-/

namespace A194538.P6143076125572684495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194538.P6143076125572684495

/-! ## A194538.P9720679657948049488

`A194540(eq[16, A166065(n)])`
-/

namespace A194538.P9720679657948049488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194538.P9720679657948049488

/-! ## A194538.P8529847536305845572

`A194540(eq[8, A185782(n+1)])`
-/

namespace A194538.P8529847536305845572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194538.P8529847536305845572

/-!
# A194539: Number of lower triangles of an n X n 0..7 array with new values introduced in row major order 0..7 and no element equal to more than one horizontal or vertical neighbor.

The programs for A194539, there is no canonical definition to state claims against.
-/

/-! ## A194539.P7368623865176969509

`A194540(eq[4, A219347(n)])`
-/

namespace A194539.P7368623865176969509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194539.P7368623865176969509

/-! ## A194539.P15194055537526796863

`A194540(eq[6, A193592(n)])`
-/

namespace A194539.P15194055537526796863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194539.P15194055537526796863

/-!
# A194540: T(n,k) is the number of lower triangles of an n X n 0..k array with new values introduced in row major order 0..k and no element equal to more than one horizontal or vertical neighbor.

The programs for A194540, there is no canonical definition to state claims against.
-/

/-! ## A194540.P9881079153351012401

`A286622(A278074(n)*A325984(n))`
-/

namespace A194540.P9881079153351012401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A278074 n * A325984 n).toNat

end

end A194540.P9881079153351012401

/-! ## A194540.P6659264656300186778

`xor(A054907(A261962(n)), A209518(n))`
-/

namespace A194540.P6659264656300186778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054907 (A261962 n).toNat) (A209518 n)

end

end A194540.P6659264656300186778

/-!
# A194541: Partial sums of A004080.

The programs for A194541, there is no canonical definition to state claims against.
-/

/-! ## A194541.P15945709292393887676

`∑[round(exp(n+1-γ))]-1`
-/

namespace A194541.P15945709292393887676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((n + 1 : ℝ) - Real.eulerMascheroniConstant))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194541.P15945709292393887676

/-! ## A194541.P9013475917984396504

`∑[∑[A339061(n)]]`
-/

namespace A194541.P9013475917984396504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194541.P9013475917984396504

/-! ## A194541.P9014995147840698478

`∑[A004080(n+1)]`
-/

namespace A194541.P9014995147840698478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194541.P9014995147840698478

/-! ## A194541.P14375803705781026096

`∑[A115515(n+1)+1]`
-/

namespace A194541.P14375803705781026096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115515 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194541.P14375803705781026096

/-! ## A194541.P3710887715663753355

`∑[record[A004080(abs(1-n))]]`
-/

namespace A194541.P3710887715663753355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004080 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194541.P3710887715663753355

/-!
# A194543: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the number of partitions of n into parts p_i such that |p_i - p_j| >= k for i != j.

The programs for A194543, there is no canonical definition to state claims against.
-/

/-! ## A194543.P17096450716123033502

`A194711(n+1)+A001221(A052509(n))`
-/

namespace A194543.P17096450716123033502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194711 (n + 1) + A001221 (A052509 n).toNat

end

end A194543.P17096450716123033502

/-! ## A194543.P1865426481481600806

`A000196(A060451(n+1)-A002262(n))`
-/

namespace A194543.P1865426481481600806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A060451 (n + 1) - A002262 n).toNat

end

end A194543.P1865426481481600806

/-! ## A194543.P15403195428417094628

`A117707(A089606(n+1))`
-/

namespace A194543.P15403195428417094628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A089606 (n + 1)).toNat

end

end A194543.P15403195428417094628

/-! ## A194543.P4068751391516723001

`A172263(A089606(n+1)+1)`
-/

namespace A194543.P4068751391516723001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A089606 (n + 1) + 1).toNat

end

end A194543.P4068751391516723001

/-! ## A194543.P11012223206561834620

`A176839(A140740(n+1)+1)`
-/

namespace A194543.P11012223206561834620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A140740 (n + 1) + 1).toNat

end

end A194543.P11012223206561834620

/-!
# A194544: Total sum of repeated parts in all partitions of n.

The programs for A194544, there is no canonical definition to state claims against.
-/

/-! ## A194544.P17675595476117544515

`A066186(n)-A103628(n)`
-/

namespace A194544.P17675595476117544515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A103628 n

end

end A194544.P17675595476117544515

/-! ## A194544.P16097360892775498961

`n*A000041(n)-A103628(n)`
-/

namespace A194544.P16097360892775498961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A103628 n

end

end A194544.P16097360892775498961

/-! ## A194544.P16321821996451496117

`n*∑[A002865(n)]-A103628(n)`
-/

namespace A194544.P16321821996451496117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A103628 n

end

end A194544.P16321821996451496117

/-! ## A194544.P4248671284503256599

`A220909(n)/2-A103628(n)`
-/

namespace A194544.P4248671284503256599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 n : ℚ) / 2 - (A103628 n : ℚ)

end

end A194544.P4248671284503256599

/-! ## A194544.P563790359278820379

`A066186(n)-(A276425(n)+A276423(n))`
-/

namespace A194544.P563790359278820379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - (A276425 n + A276423 n)

end

end A194544.P563790359278820379

/-! ## A194544.P8550682326166623516

`A182094(n)-(A188814(n)+A103628(n))`
-/

namespace A194544.P8550682326166623516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182094 n - (A188814 n + A103628 n)

end

end A194544.P8550682326166623516

/-! ## A194544.P9564199449746234006

`A066186(n)-A222730(∑[n]+1)`
-/

namespace A194544.P9564199449746234006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A222730 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194544.P9564199449746234006

/-!
# A194545: Total sum of nonprime parts in all partitions of n.

The programs for A194545, there is no canonical definition to state claims against.
-/

/-! ## A194545.P16139427118240513681

`A066186(n)-A073118(n^floor(atan(n)))`
-/

namespace A194545.P16139427118240513681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A073118 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A194545.P16139427118240513681

/-! ## A194545.P5713667846648253306

`A066186(n)-A073118(round(sqrt(n²+1)))`
-/

namespace A194545.P5713667846648253306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A073118 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A194545.P5713667846648253306

/-! ## A194545.P8419260144371886864

`n*A000041(n)-A073118(A028310(n))`
-/

namespace A194545.P8419260144371886864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A073118 (A028310 n).toNat

end

end A194545.P8419260144371886864

/-! ## A194545.P1412108047173228625

`n/4*A299474(n)-A073118(A028310(n))`
-/

namespace A194545.P1412108047173228625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A299474 n : ℚ) - (A073118 (A028310 n).toNat : ℚ)

end

end A194545.P1412108047173228625

/-! ## A194545.P3850498345591673790

`A000070(n)+A326982(n)-A000041(n)`
-/

namespace A194545.P3850498345591673790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A326982 n - A000041 n)

end

end A194545.P3850498345591673790

/-! ## A194545.P2379842291491049134

`n*A035363(2*n)-A073118(round(sqrt(n²+1)))`
-/

namespace A194545.P2379842291491049134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035363 (2 * n) - A073118 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A194545.P2379842291491049134

/-! ## A194545.P3966660249160007212

`A326982(n)+A161224(A000124(n))`
-/

namespace A194545.P3966660249160007212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326982 n + A161224 (A000124 n).toNat

end

end A194545.P3966660249160007212

/-!
# A194546: Triangle read by rows: T(n,k) is the largest part of the k-th partition of n, with partitions in colexicographic order.

The programs for A194546, there is no canonical definition to state claims against.
-/

/-! ## A194546.P15025092834212350278

`A061395(A334437(n))`
-/

namespace A194546.P15025092834212350278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A334437 n).toNat

end

end A194546.P15025092834212350278

/-! ## A194546.P4337976069251004546

`A354582(lt[A261959(n), A354582(3*(n+1))])`
-/

namespace A194546.P4337976069251004546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194546.P4337976069251004546

/-! ## A194546.P14350307901922545394

`A316556(A161146(n+1))`
-/

namespace A194546.P14350307901922545394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A161146 (n + 1)).toNat

end

end A194546.P14350307901922545394

/-! ## A194546.P9455990831275849691

`A000120(lt[A005898(n), A269325(n+1)])`
-/

namespace A194546.P9455990831275849691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194546.P9455990831275849691

/-! ## A194546.P1896842402220637611

`A001221(A214522(n+5)%A330950(3*n+5))`
-/

namespace A194546.P1896842402220637611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A214522 (n + 5)) (A330950 (3 * n + 5))).toNat

end

end A194546.P1896842402220637611

/-!
# A194547: Triangle read by rows: T(n,k) = Dyson's rank of the k-th partition of n, with partitions in lexicographic order.

The programs for A194547, there is no canonical definition to state claims against.
-/

/-! ## A194547.P10225701905347469169

`A194546(n+1)-A193173(n+1)`
-/

namespace A194547.P10225701905347469169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194546 (n + 1) - A193173 (n + 1)

end

end A194547.P10225701905347469169

/-! ## A194547.P17839257146211043305

`A026791(∑[A193173(n+1)])-A193173(n+1)`
-/

namespace A194547.P17839257146211043305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A193173 (n + 1)

end

end A194547.P17839257146211043305

/-! ## A194547.P2931900040786419829

`A194546(n+1)-A001222(A334437(n+1))`
-/

namespace A194547.P2931900040786419829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194546 (n + 1) - A001222 (A334437 (n + 1)).toNat

end

end A194547.P2931900040786419829

/-! ## A194547.P6387007539056988206

`A257541(A334437(n+1))`
-/

namespace A194547.P6387007539056988206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A334437 (n + 1)).toNat

end

end A194547.P6387007539056988206

/-! ## A194547.P16094128088929468492

`A244966(n+1)+A196931(n+1)-A193173(n+1)`
-/

namespace A194547.P16094128088929468492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244966 (n + 1) + A196931 (n + 1) - A193173 (n + 1)

end

end A194547.P16094128088929468492

/-!
# A194548: Triangle read by rows: T(n,k) = number of parts in the k-th partition of n that does not contain 1 as a part, with partitions in lexicographic order.

The programs for A194548, there is no canonical definition to state claims against.
-/

/-! ## A194548.P15521940466799375052

`val(A194602(n)+1, 2)+1-A194549(n+1)`
-/

namespace A194548.P15521940466799375052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1 : ℤ) - A194549 (n + 1)

end

end A194548.P15521940466799375052

/-! ## A194548.P8290774930433725515

`A141285(n+1)-A194549(n+1)`
-/

namespace A194548.P8290774930433725515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A194549 (n + 1)

end

end A194548.P8290774930433725515

/-! ## A194548.P11963849274688067624

`A186114(∑[n+1])-A194549(n+1)`
-/

namespace A194548.P11963849274688067624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j) - A194549 (n + 1)

end

end A194548.P11963849274688067624

/-! ## A194548.P17199597232940903861

`A193870(∑[n]+1)-A194549(n+1)`
-/

namespace A194548.P17199597232940903861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A194549 (n + 1)

end

end A194548.P17199597232940903861

/-! ## A194548.P524676045250295950

`A193870(A000124(n))%21-A194549(n+1)`
-/

namespace A194548.P524676045250295950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193870 (A000124 n).toNat) 21 - A194549 (n + 1)

end

end A194548.P524676045250295950

/-! ## A194548.P3750837085089717933

`A069010(A194602(n))`
-/

namespace A194548.P3750837085089717933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A194602 n).toNat

end

end A194548.P3750837085089717933

/-! ## A194548.P3401777901086727146

`A023416(xor(1, A194602(n)))`
-/

namespace A194548.P3401777901086727146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.xor 1 (A194602 n)).toNat

end

end A194548.P3401777901086727146

/-! ## A194548.P14891495539215285344

`A080791(A194602(n))+A057427(n)`
-/

namespace A194548.P14891495539215285344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A194602 n).toNat + A057427 n

end

end A194548.P14891495539215285344

/-! ## A194548.P12394064082488816053

`A080791(2*A194602(n))`
-/

namespace A194548.P12394064082488816053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A194602 n).toNat

end

end A194548.P12394064082488816053

/-! ## A194548.P8136851009307857761

`A080791(lcm(2, A194602(n)))`
-/

namespace A194548.P8136851009307857761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.lcm 2 (A194602 n))

end

end A194548.P8136851009307857761

/-!
# A194549: Triangle read by rows: T(n,k) = Dyson's rank of the k-th partition of n that does not contain 1 as a part, with partitions in lexicographic order.

The programs for A194549, there is no canonical definition to state claims against.
-/

/-! ## A194549.P8393599848604175444

`A141285(n+1)-A194548(n+1)`
-/

namespace A194549.P8393599848604175444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A194548 (n + 1)

end

end A194549.P8393599848604175444

/-! ## A194549.P7225915456563921713

`val(A194602(n)+1, 2)+1-A194548(n+1)`
-/

namespace A194549.P7225915456563921713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1 : ℤ) - A194548 (n + 1)

end

end A194549.P7225915456563921713

/-! ## A194549.P16004297660708946175

`A186114(∑[n+1])-A194548(n+1)`
-/

namespace A194549.P16004297660708946175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j) - A194548 (n + 1)

end

end A194549.P16004297660708946175

/-! ## A194549.P2713009036397478791

`A193870(∑[n]+1)-A194548(n+1)`
-/

namespace A194549.P2713009036397478791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A194548 (n + 1)

end

end A194549.P2713009036397478791

/-! ## A194549.P3043166990779832323

`A193870(A000124(n))%21-A194548(n+1)`
-/

namespace A194549.P3043166990779832323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193870 (A000124 n).toNat) 21 - A194548 (n + 1)

end

end A194549.P3043166990779832323

/-! ## A194549.P3808414042358548514

`A141285(n+1)-A069010(A194602(n))`
-/

namespace A194549.P3808414042358548514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A069010 (A194602 n).toNat

end

end A194549.P3808414042358548514

/-! ## A194549.P9194653413615745758

`A007814(A194602(n)+1)+1-A194548(n+1)`
-/

namespace A194549.P9194653413615745758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194602 n + 1).toNat + 1 - A194548 (n + 1)

end

end A194549.P9194653413615745758

/-! ## A194549.P16182255517238440955

`A244967(n+1)+1-A194548(n+1)`
-/

namespace A194549.P16182255517238440955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244967 (n + 1) + (1 - A194548 (n + 1))

end

end A194549.P16182255517238440955

/-! ## A194549.P6603463060287186648

`A005496(A244967(n+1))-A194548(n+1)`
-/

namespace A194549.P6603463060287186648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A244967 (n + 1)).toNat - A194548 (n + 1)

end

end A194549.P6603463060287186648

/-! ## A194549.P13885150927926340910

`A001511(A228354(n+1))-A194548(n+1)`
-/

namespace A194549.P13885150927926340910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A228354 (n + 1)).toNat - A194548 (n + 1)

end

end A194549.P13885150927926340910

/-!
# A194550: Parts that are visible in one of the three views of the version "Tree" of the modular table of partitions.

The programs for A194550, there is no canonical definition to state claims against.
-/

/-! ## A194550.P9682809568826874899

`A220517(C(or(1, n), n))`
-/

namespace A194550.P9682809568826874899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (Nat.choose (Nat.lor 1 n) n)

end

end A194550.P9682809568826874899

/-! ## A194550.P68741336439630899

`gcd(n%2, Δ[A229946(n)])`
-/

namespace A194550.P68741336439630899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (f1 (n + 1) - f1 n)

end

end A194550.P68741336439630899

/-! ## A194550.P17665150106940504723

`gcd(and(1, n), A220517(n+1))`
-/

namespace A194550.P17665150106940504723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 1 n : ℤ) (A220517 (n + 1))

end

end A194550.P17665150106940504723

/-! ## A194550.P10882568307242311632

`A220517(gcd(n+1, or(1, n)))`
-/

namespace A194550.P10882568307242311632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (Nat.gcd (n + 1) (Nat.lor 1 n))

end

end A194550.P10882568307242311632

/-! ## A194550.P4769440033684569372

`A220517(abs(or(n, (-1)^n)))`
-/

namespace A194550.P4769440033684569372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 |Int.lor (n : ℤ) ((-1) ^ n)|.toNat

end

end A194550.P4769440033684569372

/-! ## A194550.P8186129249587178808

`A220517((n+1)^log2(gcd(2, n)))`
-/

namespace A194550.P8186129249587178808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ)))).toNat

end

end A194550.P8186129249587178808

/-! ## A194550.P13926487243604179645

`A141285(ceil(C(or(1, n), n)/2))`
-/

namespace A194550.P13926487243604179645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

end

end A194550.P13926487243604179645

/-! ## A194550.P5755223641134565387

`A220517(2*n+1-lcm(2, n))`
-/

namespace A194550.P5755223641134565387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (2 * n + 1 - Nat.lcm 2 n)

end

end A194550.P5755223641134565387

/-! ## A194550.P5866095186426362346

`A141285(A158416(n))`
-/

namespace A194550.P5866095186426362346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A158416 n).toNat

end

end A194550.P5866095186426362346

/-! ## A194550.P5222484937279192979

`A220517(A141310(n))`
-/

namespace A194550.P5222484937279192979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (A141310 n).toNat

end

end A194550.P5222484937279192979

/-!
# A194552: Sum of all parts > 1 of all partitions of n.

The programs for A194552, there is no canonical definition to state claims against.
-/

/-! ## A194552.P11374444756534496410

`A066186(n+1)-A000070(n)`
-/

namespace A194552.P11374444756534496410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A000070 n

end

end A194552.P11374444756534496410

/-! ## A194552.P1741649225456874112

`(n+1)*A000041(n+1)-A000070(n)`
-/

namespace A194552.P1741649225456874112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A000070 n

end

end A194552.P1741649225456874112

/-! ## A194552.P2135832827250634857

`∑[A138880(n+1)]`
-/

namespace A194552.P2135832827250634857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194552.P2135832827250634857

/-! ## A194552.P391493672606112813

`∑[(n+1)*Δ[A000041(n)]]`
-/

namespace A194552.P391493672606112813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194552.P391493672606112813

/-! ## A194552.P14226842417801525674

`∑[(n+1)*A002865(n+1)]`
-/

namespace A194552.P14226842417801525674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194552.P14226842417801525674

/-! ## A194552.P12143162088152908175

`A066186(n+1)-∑[A000041(n)]`
-/

namespace A194552.P12143162088152908175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194552.P12143162088152908175

/-! ## A194552.P7790708387682696124

`∑[A138879(n+1)-A000041(n)]`
-/

namespace A194552.P7790708387682696124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194552.P7790708387682696124

/-! ## A194552.P7347838279058114297

`A228816(n+2)-A000070(n+1)`
-/

namespace A194552.P7347838279058114297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228816 (n + 2) - A000070 (n + 1)

end

end A194552.P7347838279058114297

/-! ## A194552.P179989331836327107

`∑[Δ[A066186(n)]-A139582(n)/2]`
-/

namespace A194552.P179989331836327107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) - (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194552.P179989331836327107

/-! ## A194552.P13475936193872199206

`n*A000041(n+1)-A058884(n+1)`
-/

namespace A194552.P13475936193872199206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 (n + 1) - A058884 (n + 1)

end

end A194552.P13475936193872199206

/-! ## A194552.P16649077870400378963

`∑[(n+1)*(A000041(n+1)-A000041(n))]`
-/

namespace A194552.P16649077870400378963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000041 (n + 1) - A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194552.P16649077870400378963

/-! ## A194552.P9432096328730919403

`A073118(n+1)+A194545(n+1)-A000070(n)`
-/

namespace A194552.P9432096328730919403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073118 (n + 1) + (A194545 (n + 1) - A000070 n)

end

end A194552.P9432096328730919403

/-! ## A194552.P11150690399336888149

`A066186(n+1)+A096541(n+1)-A006128(n+1)`
-/

namespace A194552.P11150690399336888149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A096541 (n + 1) - A006128 (n + 1))

end

end A194552.P11150690399336888149

/-! ## A194552.P4757699463218287937

`A326982(n+1)+A073118(n+1)`
-/

namespace A194552.P4757699463218287937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326982 (n + 1) + A073118 (n + 1)

end

end A194552.P4757699463218287937

/-! ## A194552.P155519707483935192

`A066186(n+1)+A326982(n+1)-A194545(n+1)`
-/

namespace A194552.P155519707483935192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A326982 (n + 1) - A194545 (n + 1))

end

end A194552.P155519707483935192

/-! ## A194552.P4240389324702526980

`A182738(n+1)-A141156(n)`
-/

namespace A194552.P4240389324702526980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182738 (n + 1) - A141156 n

end

end A194552.P4240389324702526980

/-! ## A194552.P18009154029391027230

`A182704(n+1)-(n+2)*A000070(n)`
-/

namespace A194552.P18009154029391027230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182704 (n + 1) - (n + 2 : ℤ) * A000070 n

end

end A194552.P18009154029391027230

/-! ## A194552.P13419356812051760005

`A141156(n+1)-(A141156(n)+A000070(n+1))`
-/

namespace A194552.P13419356812051760005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141156 (n + 1) - (A141156 n + A000070 (n + 1))

end

end A194552.P13419356812051760005

/-! ## A194552.P15131618587814877408

`A182704(n+1)-(A182705(n+1)+A000070(n))`
-/

namespace A194552.P15131618587814877408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182704 (n + 1) - (A182705 (n + 1) + A000070 n)

end

end A194552.P15131618587814877408

/-! ## A194552.P15472438049111878087

`A182704(n+1)+A228816(n+2)-A182705(n+2)`
-/

namespace A194552.P15472438049111878087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182704 (n + 1) + (A228816 (n + 2) - A182705 (n + 2))

end

end A194552.P15472438049111878087

/-!
# A194553: 

The programs for A194553, there is no canonical definition to state claims against.
-/

/-! ## A194553.P16014396733839718813

`(n+1)^25+n^25`
-/

namespace A194553.P16014396733839718813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 25 + n ^ 25

end

end A194553.P16014396733839718813

/-! ## A194553.P3728647724731165397

`record[Δ[A001057(n)^25]]`
-/

namespace A194553.P3728647724731165397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 25

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194553.P3728647724731165397

/-!
# A194558: G.f.: A(x) = exp( Sum_{n>=1} G_n(x)^n/n ) where G_n(x) = x + x*G_n(x)^n and A(x) = Sum_{n>=1} a(n)*x^n/floor(n/2)!.

The programs for A194558, there is no canonical definition to state claims against.
-/

/-! ## A194558.P5981246921486237579

`floor(n/2)!/n!*A194559(n)`
-/

namespace A194558.P5981246921486237579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (Nat.factorial n : ℚ) * (A194559 n : ℚ)

end

end A194558.P5981246921486237579

/-! ## A194558.P273401808202021113

`A194559(n)/A081125(n)`
-/

namespace A194558.P273401808202021113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194559 n : ℚ) / (A081125 n : ℚ)

end

end A194558.P273401808202021113

/-!
# A194559: E.g.f.: exp( Sum_{n>=1} G_n(x)^n/n ) where G_n(x) = x + x*G_n(x)^n.

The programs for A194559, there is no canonical definition to state claims against.
-/

/-! ## A194559.P475249515673235801

`n!/floor(n/2)!*A194558(n)`
-/

namespace A194559.P475249515673235801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ) * (A194558 n : ℚ)

end

end A194559.P475249515673235801

/-! ## A194559.P2006366680860955740

`A081125(n)*A194558(n)`
-/

namespace A194559.P2006366680860955740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 n * A194558 n

end

end A194559.P2006366680860955740

/-!
# A194560: G.f.: Sum_{n>=1} G_n(x)^n where G_n(x) = x + x*G_n(x)^n.

The programs for A194560, the canonical program `A194560.P1867289599413521297` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194560 has offset 1).

The definition of A194560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194560.P1867289599413521297

`∑{d}[n+1, C(n+1, #)/(n+1-#+1)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194560

/-- `∑{d}[n+1, C(n+1, #)/(n+1-#+1)]` -/
def P1867289599413521297.Spec : Prop :=
  ∀ n, P1867289599413521297.a n = (A194560 (n + 1) : ℚ)

end A194560

/-! ## A194560.P7294759151131536440

`∑{d}[n+1, A267632(A000217(n+1)+#)]`
-/

namespace A194560.P7294759151131536440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267632 (A000217 (n + 1) + (d : ℤ)).toNat

end

end A194560.P7294759151131536440

namespace A194560

/-- `∑{d}[n+1, A267632(A000217(n+1)+#)]` -/
def P7294759151131536440.Spec : Prop :=
  ∀ n, P7294759151131536440.a n = A194560 (n + 1)

end A194560

/-! ## A194560.P15327568880406833599

`∑{d}[n+1, A037306(A000217(n+1)+#)]`
-/

namespace A194560.P15327568880406833599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037306 (A000217 (n + 1) + (d : ℤ)).toNat

end

end A194560.P15327568880406833599

namespace A194560

/-- `∑{d}[n+1, A037306(A000217(n+1)+#)]` -/
def P15327568880406833599.Spec : Prop :=
  ∀ n, P15327568880406833599.a n = A194560 (n + 1)

end A194560

/-!
# A194561: 

The programs for A194561, there is no canonical definition to state claims against.
-/

/-! ## A194561.P3191348303243996823

`(n+1)^27+n^27`
-/

namespace A194561.P3191348303243996823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 27 + n ^ 27

end

end A194561.P3191348303243996823

/-! ## A194561.P11063378404274088666

`record[Δ[A001057(n)^27]]`
-/

namespace A194561.P11063378404274088666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 27

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194561.P11063378404274088666

/-!
# A194563: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n*A_{n-1}(x)^n where A_{n}(x) = A_{n-1}(x) + x^n*A_{n-1}(x)^n for n>0 with A_0(x)=1.

The programs for A194563, there is no canonical definition to state claims against.
-/

/-! ## A194563.P13718445332579585455

`A326534(A000213(n))-A237817(n+5)`
-/

namespace A194563.P13718445332579585455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326534 (A000213 n).toNat - A237817 (n + 5)

end

end A194563.P13718445332579585455

/-!
# A194564: Triangle read by rows: number of reflection-invariant dissections of an n-gon with k noncrossing diagonals.

The programs for A194564, there is no canonical definition to state claims against.
-/

/-! ## A194564.P17650180501316904300

`A318451(A140202(4*n+5)+A008794(n))`
-/

namespace A194564.P17650180501316904300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A140202 (4 * n + 5) + A008794 n).toNat

end

end A194564.P17650180501316904300

/-! ## A194564.P7626673950535237769

`A317756(A049911(n+1))-A317748(n+1)`
-/

namespace A194564.P7626673950535237769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317756 (A049911 (n + 1)).toNat - A317748 (n + 1)

end

end A194564.P7626673950535237769

/-! ## A194564.P11532969639428536533

`A249351(2*n+3)+A175402(A143395(n))`
-/

namespace A194564.P11532969639428536533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (2 * n + 3) + A175402 (A143395 n).toNat

end

end A194564.P11532969639428536533

/-! ## A194564.P5391151044927563266

`A109066(or(A007401(n+1), A208054(n+1)))`
-/

namespace A194564.P5391151044927563266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (Int.lor (A007401 (n + 1)) (A208054 (n + 1))).toNat

end

end A194564.P5391151044927563266

/-!
# A194565: Numbers n such that n^2 + n + 41 is composite and n is not a lattice point on the parabolas p1 = x^2 + 40 or p2 = (x^2+x)/2 + 81.

The programs for A194565, there is no canonical definition to state claims against.
-/

/-! ## A194565.P12962557737808804018

`A134496(A257083(n)+13)`
-/

namespace A194565.P12962557737808804018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134496 (A257083 n + 13).toNat

end

end A194565.P12962557737808804018

/-! ## A194565.P18095372627981258769

`A077030(A008834(n+1))+A001082(n+1)`
-/

namespace A194565.P18095372627981258769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077030 (A008834 (n + 1)).toNat + A001082 (n + 1)

end

end A194565.P18095372627981258769

/-! ## A194565.P997379585422691459

`A271713(n+1)+A005820(A199356(n+1))`
-/

namespace A194565.P997379585422691459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271713 (n + 1) + A005820 (A199356 (n + 1)).toNat

end

end A194565.P997379585422691459

/-!
# A194569: Number of lower triangles of an n X n 0..1 array with new values introduced in row major order 0..1 and no element equal to more than two horizontal or vertical neighbors.

The programs for A194569, there is no canonical definition to state claims against.
-/

/-! ## A194569.P3451768329991849631

`A194576(∑[n+1])`
-/

namespace A194569.P3451768329991849631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194569.P3451768329991849631

/-! ## A194569.P1896480609400226149

`record[A194576(∑[A057979(n)])]`
-/

namespace A194569.P1896480609400226149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194569.P1896480609400226149

/-! ## A194569.P16958014170588180101

`record[A167374(n)*A194576(n+1)]`
-/

namespace A194569.P16958014170588180101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A194576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194569.P16958014170588180101

/-! ## A194569.P14988514865842807288

`record[root(A194576(n+1), A008459(n))]`
-/

namespace A194569.P14988514865842807288
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A194576 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194569.P14988514865842807288

/-! ## A194569.P10696108694600118508

`record[gcd(A025581(n), A194576(n+1))]`
-/

namespace A194569.P10696108694600118508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A194576 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194569.P10696108694600118508

/-!
# A194570: Number of lower triangles of an n X n 0..2 array with new values introduced in row major order 0..2 and no element equal to more than two horizontal or vertical neighbors.

The programs for A194570, there is no canonical definition to state claims against.
-/

/-! ## A194570.P4345592334076823982

`A194576(∑[n+2])`
-/

namespace A194570.P4345592334076823982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194570.P4345592334076823982

/-! ## A194570.P4651714906638443655

`record[A194576(A200370(n+3)+n)]`
-/

namespace A194570.P4651714906638443655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (A200370 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194570.P4651714906638443655

/-! ## A194570.P12419886020909409461

`record[gcd(A155839(n), A194576(n+1))]`
-/

namespace A194570.P12419886020909409461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155839 n) (A194576 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194570.P12419886020909409461

/-! ## A194570.P721463219003055674

`record[gcd(A055138(n), A194576(n+2))]`
-/

namespace A194570.P721463219003055674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A194576 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194570.P721463219003055674

/-! ## A194570.P13594075925023965383

`record[and(A167374(n), A194576(n+1))]`
-/

namespace A194570.P13594075925023965383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A194576 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194570.P13594075925023965383

/-!
# A194571: Number of lower triangles of an n X n 0..3 array with new values introduced in row major order 0..3 and no element equal to more than two horizontal or vertical neighbors.

The programs for A194571, there is no canonical definition to state claims against.
-/

/-! ## A194571.P2914593265551274775

`A194576(∑[n+3]+1)`
-/

namespace A194571.P2914593265551274775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194571.P2914593265551274775

/-! ## A194571.P7739146696734575595

`record[A194576(A026999(n+1))]`
-/

namespace A194571.P7739146696734575595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (A026999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194571.P7739146696734575595

/-! ## A194571.P5825233744260533391

`record[A194576(eq[2, A003983(n+1)])]`
-/

namespace A194571.P5825233744260533391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194571.P5825233744260533391

/-! ## A194571.P3845354436995837513

`record[A194576(A200370(n+4)+n)]`
-/

namespace A194571.P3845354436995837513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (A200370 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194571.P3845354436995837513

/-! ## A194571.P1951179227303235493

`record[A194576(gcd(n, A025581(n+1)))]`
-/

namespace A194571.P1951179227303235493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (Int.gcd (n : ℤ) (A025581 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194571.P1951179227303235493

/-!
# A194572: Number of lower triangles of an n X n 0..4 array with new values introduced in row major order 0..4 and no element equal to more than two horizontal or vertical neighbors.

The programs for A194572, there is no canonical definition to state claims against.
-/

/-! ## A194572.P9544894971081910854

`A194576(A141214(n+1))`
-/

namespace A194572.P9544894971081910854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (A141214 (n + 1)).toNat

end

end A194572.P9544894971081910854

/-! ## A194572.P2336309947273491032

`A194576(eq[2, A200370(n+1)-2])`
-/

namespace A194572.P2336309947273491032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194572.P2336309947273491032

/-!
# A194573: Number of lower triangles of an n X n 0..5 array with new values introduced in row major order 0..5 and no element equal to more than two horizontal or vertical neighbors.

The programs for A194573, there is no canonical definition to state claims against.
-/

/-! ## A194573.P10040519197463260317

`A194576(eq[8, A143956(n+1)])`
-/

namespace A194573.P10040519197463260317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194573.P10040519197463260317

/-!
# A194574: Number of lower triangles of an n X n 0..6 array with new values introduced in row major order 0..6 and no element equal to more than two horizontal or vertical neighbors.

The programs for A194574, there is no canonical definition to state claims against.
-/

/-! ## A194574.P7076234206774676346

`A194576(eq[3, A219347(n)])`
-/

namespace A194574.P7076234206774676346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194574.P7076234206774676346

/-! ## A194574.P5443049906322791262

`A194576(eq[6, A200370(n+1)])`
-/

namespace A194574.P5443049906322791262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194574.P5443049906322791262

/-!
# A194575: Number of lower triangles of an n X n 0..7 array with new values introduced in row major order 0..7 and no element equal to more than two horizontal or vertical neighbors.

The programs for A194575, there is no canonical definition to state claims against.
-/

/-! ## A194575.P4588775300088944120

`A194576(eq[4, A219347(n)])`
-/

namespace A194575.P4588775300088944120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194575.P4588775300088944120

/-!
# A194579: Numbers whose sum of the their nonprime divisors is prime.

The programs for A194579, the canonical program `A194579.P6279070803059388328` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194579 has offset 1).

The definition of A194579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194579.P6279070803059388328

`eq[1, A010051(A023890(n+1))]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194579

/-- `eq[1, A010051(A023890(n+1))]+1` -/
def P6279070803059388328.Spec : Prop :=
  ∀ n, (P6279070803059388328.a n : ℤ) = A194579 (n + 1)

theorem P6279070803059388328.correct : P6279070803059388328.Spec := by
  intro n
  simp only [A194579, Nat.add_sub_cancel]

end A194579

/-! ## A194579.P390808394955833011

`eq[1, A323153(A023891(n+1)+1)]+1`
-/

namespace A194579.P390808394955833011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323153 (A023891 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P390808394955833011

namespace A194579

/-- `eq[1, A323153(A023891(n+1)+1)]+1` -/
def P390808394955833011.Spec : Prop :=
  ∀ n, (P390808394955833011.a n : ℤ) = A194579 (n + 1)

end A194579

/-! ## A194579.P6638920489180275794

`eq[2, A000005(A023891(n+1)+1)]+1`
-/

namespace A194579.P6638920489180275794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A023891 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P6638920489180275794

namespace A194579

/-- `eq[2, A000005(A023891(n+1)+1)]+1` -/
def P6638920489180275794.Spec : Prop :=
  ∀ n, (P6638920489180275794.a n : ℤ) = A194579 (n + 1)

end A194579

/-! ## A194579.P14868972398933518866

`eq[1, A001222(A000203(n+1)-∑{p}[n+1, #])]+1`
-/

namespace A194579.P14868972398933518866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1) - ((∑ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P14868972398933518866

namespace A194579

/-- `eq[1, A001222(A000203(n+1)-∑{p}[n+1, #])]+1` -/
def P14868972398933518866.Spec : Prop :=
  ∀ n, (P14868972398933518866.a n : ℤ) = A194579 (n + 1)

end A194579

/-! ## A194579.P13810393198058772845

`eq[1, A325969(A023891(n+1)+1)]+1`
-/

namespace A194579.P13810393198058772845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325969 (A023891 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P13810393198058772845

namespace A194579

/-- `eq[1, A325969(A023891(n+1)+1)]+1` -/
def P13810393198058772845.Spec : Prop :=
  ∀ n, (P13810393198058772845.a n : ℤ) = A194579 (n + 1)

end A194579

/-! ## A194579.P9488276713377938333

`eq[1, A007920(A023891(n+1))]+1`
-/

namespace A194579.P9488276713377938333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A023891 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194579.P9488276713377938333

namespace A194579

/-- `eq[1, A007920(A023891(n+1))]+1` -/
def P9488276713377938333.Spec : Prop :=
  ∀ n, (P9488276713377938333.a n : ℤ) = A194579 (n + 1)

end A194579

/-! ## A194579.P1722372134138068634

`eq[1, A007920(A023891(A233583(n+1)))]`
-/

namespace A194579.P1722372134138068634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A023891 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194579.P1722372134138068634

namespace A194579

/-- `eq[1, A007920(A023891(A233583(n+1)))]` -/
def P1722372134138068634.Spec : Prop :=
  ∀ n, (P1722372134138068634.a n : ℤ) = A194579 (n + 1)

end A194579

/-!
# A194580: Nonprime numbers with a sum of nonprime divisors which is a perfect square.

The programs for A194580, there is no canonical definition to state claims against.
-/

/-! ## A194580.P4983920661608136045

`or(A061358(A005494(n)), A074480(n+1))`
-/

namespace A194580.P4983920661608136045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061358 (A005494 n).toNat) (A074480 (n + 1))

end

end A194580.P4983920661608136045

/-! ## A194580.P9389936495310013795

`A194186(A174132(n+1))+A074480(n+1)`
-/

namespace A194580.P9389936495310013795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (A174132 (n + 1)).toNat + A074480 (n + 1)

end

end A194580.P9389936495310013795

/-!
# A194581: Primes prime(k) of the form (2*prime(k-1) + prime(k+1))/3.

The programs for A194581, the canonical program `A194581.P13119146017149971246` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194581 has offset 1).

The definition of A194581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 747 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194581.P8701374143815600907

`A065091(A257762(n+1))`
-/

namespace A194581.P8701374143815600907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A257762 (n + 1)).toNat

end

end A194581.P8701374143815600907

namespace A194581

/-- `A065091(A257762(n+1))` -/
def P8701374143815600907.Spec : Prop :=
  ∀ n, P8701374143815600907.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P17271860528498188520

`A000040(A257762(n+1)+1)`
-/

namespace A194581.P17271860528498188520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A257762 (n + 1) + 1).toNat

end

end A194581.P17271860528498188520

namespace A194581

/-- `A000040(A257762(n+1)+1)` -/
def P17271860528498188520.Spec : Prop :=
  ∀ n, P17271860528498188520.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P13119146017149971246

`p?[A024675(n+1)-A001223(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194581

/-- `p?[A024675(n+1)-A001223(n+1)]` -/
def P13119146017149971246.Spec : Prop :=
  ∀ n, P13119146017149971246.a n = A194581 (n + 1)

theorem P13119146017149971246.correct : P13119146017149971246.Spec := by
  intro n
  simp only [A194581, Nat.add_sub_cancel]

end A194581

/-! ## A194581.P12258524068267298988

`p?[A028334(n+2)+A000040(n+1)]`
-/

namespace A194581.P12258524068267298988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P12258524068267298988

namespace A194581

/-- `p?[A028334(n+2)+A000040(n+1)]` -/
def P12258524068267298988.Spec : Prop :=
  ∀ n, P12258524068267298988.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P11706795090617837305

`p?[A028334(n+2)+A008578(n+2)]`
-/

namespace A194581.P11706795090617837305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P11706795090617837305

namespace A194581

/-- `p?[A028334(n+2)+A008578(n+2)]` -/
def P11706795090617837305.Spec : Prop :=
  ∀ n, P11706795090617837305.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P3478426951588115885

`p?[A093667(n+1)-A028334(n+2)]`
-/

namespace A194581.P3478426951588115885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P3478426951588115885

namespace A194581

/-- `p?[A093667(n+1)-A028334(n+2)]` -/
def P3478426951588115885.Spec : Prop :=
  ∀ n, P3478426951588115885.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P3279279142903116726

`p?[A000040(n+1)+Δ[A005097(n+1)]]`
-/

namespace A194581.P3279279142903116726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P3279279142903116726

namespace A194581

/-- `p?[A000040(n+1)+Δ[A005097(n+1)]]` -/
def P3279279142903116726.Spec : Prop :=
  ∀ n, P3279279142903116726.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P16046069081287709628

`p?[A008864(n+1)+A028334(n+2)-1]`
-/

namespace A194581.P16046069081287709628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A028334 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194581.P16046069081287709628

namespace A194581

/-- `p?[A008864(n+1)+A028334(n+2)-1]` -/
def P16046069081287709628.Spec : Prop :=
  ∀ n, P16046069081287709628.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P3492491427634546461

`A000040(eq[A001223(n+1), A028334(n+2)]+2)`
-/

namespace A194581.P3492491427634546461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A194581.P3492491427634546461

namespace A194581

/-- `A000040(eq[A001223(n+1), A028334(n+2)]+2)` -/
def P3492491427634546461.Spec : Prop :=
  ∀ n, P3492491427634546461.a n = A194581 (n + 1)

end A194581

/-! ## A194581.P5964049518468824739

`record[A006530(A028334(n+2)+A000040(n+1))]`
-/

namespace A194581.P5964049518468824739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028334 (n + 2) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194581.P5964049518468824739

namespace A194581

/-- `record[A006530(A028334(n+2)+A000040(n+1))]` -/
def P5964049518468824739.Spec : Prop :=
  ∀ n, P5964049518468824739.a n = A194581 (n + 1)

end A194581

/-!
# A194582: Triangle T(n,k), read by rows, given by (0, 3, -7/3, -2/21, 3/7, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A194582, there is no canonical definition to state claims against.
-/

/-! ## A194582.P13656101958611687382

`A122016(n)-A037833(A306347(n))`
-/

namespace A194582.P13656101958611687382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 n - A037833 (A306347 n).toNat

end

end A194582.P13656101958611687382

/-! ## A194582.P13503954451911311512

`A053824(A338037(n)^A243081(n))`
-/

namespace A194582.P13503954451911311512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (SequenceMachineLib.roundAway ((A338037 n : ℚ) ^ (A243081 n : ℤ))).toNat

end

end A194582.P13503954451911311512

/-! ## A194582.P4947714956085879267

`A152304(A289546(n+1))`
-/

namespace A194582.P4947714956085879267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152304 (A289546 (n + 1)).toNat

end

end A194582.P4947714956085879267

/-! ## A194582.P4944806039008872054

`A330958(9*A207327(n))`
-/

namespace A194582.P4944806039008872054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330958 (9 * A207327 n).toNat

end

end A194582.P4944806039008872054

/-! ## A194582.P9046149470736143139

`∑{e}[A288651(A256130(n)), #]`
-/

namespace A194582.P9046149470736143139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288651 (A256130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A194582.P9046149470736143139

/-!
# A194584: Differences of A035336.

The programs for A194584, the canonical program `A194584.P12034886436282009719` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194584 has offset 1).

The definition of A194584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194584.P12378526169424422873

`Δ[2*floor(ϕ*(n+1))]+1`
-/

namespace A194584.P12378526169424422873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A194584.P12378526169424422873

namespace A194584

/-- `Δ[2*floor(ϕ*(n+1))]+1` -/
def P12378526169424422873.Spec : Prop :=
  ∀ n, P12378526169424422873.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P12034886436282009719

`Δ[A134859(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194584

/-- `Δ[A134859(n+1)]` -/
def P12034886436282009719.Spec : Prop :=
  ∀ n, P12034886436282009719.a n = A194584 (n + 1)

theorem P12034886436282009719.correct : P12034886436282009719.Spec := by
  intro n
  simp only [A194584, Nat.add_sub_cancel]

end A194584

/-! ## A194584.P407529353946230151

`A010703(A035612(n+1))`
-/

namespace A194584.P407529353946230151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 (A035612 (n + 1)).toNat

end

end A194584.P407529353946230151

namespace A194584

/-- `A010703(A035612(n+1))` -/
def P407529353946230151.Spec : Prop :=
  ∀ n, P407529353946230151.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P3439435601700938884

`A010703(A083368(n+1))`
-/

namespace A194584.P3439435601700938884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 (A083368 (n + 1)).toNat

end

end A194584.P3439435601700938884

namespace A194584

/-- `A010703(A083368(n+1))` -/
def P3439435601700938884.Spec : Prop :=
  ∀ n, P3439435601700938884.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P3283583318672042785

`A010703(A104325(n+1))`
-/

namespace A194584.P3283583318672042785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 (A104325 (n + 1)).toNat

end

end A194584.P3283583318672042785

namespace A194584

/-- `A010703(A104325(n+1))` -/
def P3283583318672042785.Spec : Prop :=
  ∀ n, P3283583318672042785.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P8607320858062426070

`A020959(Δ[A005206(n)]+2)`
-/

namespace A194584.P8607320858062426070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020959 (f1 (n + 1) - f1 n + 2).toNat

end

end A194584.P8607320858062426070

namespace A194584

/-- `A020959(Δ[A005206(n)]+2)` -/
def P8607320858062426070.Spec : Prop :=
  ∀ n, P8607320858062426070.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P9845263682720799766

`A268034(A287659(n+1)-2*n)`
-/

namespace A194584.P9845263682720799766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268034 (A287659 (n + 1) - (2 * n : ℤ)).toNat

end

end A194584.P9845263682720799766

namespace A194584

/-- `A268034(A287659(n+1)-2*n)` -/
def P9845263682720799766.Spec : Prop :=
  ∀ n, P9845263682720799766.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P11831135757933435851

`A005206(A035337(n+1)-A035337(n))`
-/

namespace A194584.P11831135757933435851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A035337 (n + 1) - A035337 n).toNat

end

end A194584.P11831135757933435851

namespace A194584

/-- `A005206(A035337(n+1)-A035337(n))` -/
def P11831135757933435851.Spec : Prop :=
  ∀ n, P11831135757933435851.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P3012206046267801058

`A276757(A035338(n+1)-A035338(n))`
-/

namespace A194584.P3012206046267801058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276757 (A035338 (n + 1) - A035338 n).toNat

end

end A194584.P3012206046267801058

namespace A194584

/-- `A276757(A035338(n+1)-A035338(n))` -/
def P3012206046267801058.Spec : Prop :=
  ∀ n, P3012206046267801058.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P3239425892491641968

`A276757(A035340(n+1)-A035340(n))`
-/

namespace A194584.P3239425892491641968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276757 (A035340 (n + 1) - A035340 n).toNat

end

end A194584.P3239425892491641968

namespace A194584

/-- `A276757(A035340(n+1)-A035340(n))` -/
def P3239425892491641968.Spec : Prop :=
  ∀ n, P3239425892491641968.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P10729703278806436919

`A026274(A026274(n+1)-A003622(n+1))`
-/

namespace A194584.P10729703278806436919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (A026274 (n + 1) - A003622 (n + 1)).toNat

end

end A194584.P10729703278806436919

namespace A194584

/-- `A026274(A026274(n+1)-A003622(n+1))` -/
def P10729703278806436919.Spec : Prop :=
  ∀ n, P10729703278806436919.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P14230576664047631236

`Δ[A003623(n+1)]`
-/

namespace A194584.P14230576664047631236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P14230576664047631236

namespace A194584

/-- `Δ[A003623(n+1)]` -/
def P14230576664047631236.Spec : Prop :=
  ∀ n, P14230576664047631236.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P7899783340507020039

`Δ[A035336(n+1)]`
-/

namespace A194584.P7899783340507020039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P7899783340507020039

namespace A194584

/-- `Δ[A035336(n+1)]` -/
def P7899783340507020039.Spec : Prop :=
  ∀ n, P7899783340507020039.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P2733911474829539181

`Δ[A089910(n+1)]`
-/

namespace A194584.P2733911474829539181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P2733911474829539181

namespace A194584

/-- `Δ[A089910(n+1)]` -/
def P2733911474829539181.Spec : Prop :=
  ∀ n, P2733911474829539181.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P7293962074529052407

`Δ[A101868(n+1)]`
-/

namespace A194584.P7293962074529052407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P7293962074529052407

namespace A194584

/-- `Δ[A101868(n+1)]` -/
def P7293962074529052407.Spec : Prop :=
  ∀ n, P7293962074529052407.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P3203721556235401227

`or(1, A276867(n+2))`
-/

namespace A194584.P3203721556235401227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276867 (n + 2))

end

end A194584.P3203721556235401227

namespace A194584

/-- `or(1, A276867(n+2))` -/
def P3203721556235401227.Spec : Prop :=
  ∀ n, P3203721556235401227.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P5981040693805560859

`Δ[A047924(n+1)]`
-/

namespace A194584.P5981040693805560859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P5981040693805560859

namespace A194584

/-- `Δ[A047924(n+1)]` -/
def P5981040693805560859.Spec : Prop :=
  ∀ n, P5981040693805560859.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P8019859109775302326

`Δ[A188434(n+2)]`
-/

namespace A194584.P8019859109775302326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P8019859109775302326

namespace A194584

/-- `Δ[A188434(n+2)]` -/
def P8019859109775302326.Spec : Prop :=
  ∀ n, P8019859109775302326.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P15217776785043648157

`Δ[A276885(n+2)]`
-/

namespace A194584.P15217776785043648157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194584.P15217776785043648157

namespace A194584

/-- `Δ[A276885(n+2)]` -/
def P15217776785043648157.Spec : Prop :=
  ∀ n, P15217776785043648157.a n = A194584 (n + 1)

end A194584

/-! ## A194584.P14939272362907637470

`A010703(A072062(n+1))`
-/

namespace A194584.P14939272362907637470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 (A072062 (n + 1)).toNat

end

end A194584.P14939272362907637470

namespace A194584

/-- `A010703(A072062(n+1))` -/
def P14939272362907637470.Spec : Prop :=
  ∀ n, P14939272362907637470.a n = A194584 (n + 1)

end A194584

/-!
# A194585: Starting points of stapled intervals of length 17.

The programs for A194585, there is no canonical definition to state claims against.
-/

/-! ## A194585.P7373243313767195260

`A130171(lt[A302427(2*n+1), A246376(3*n+1)])`
-/

namespace A194585.P7373243313767195260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246376 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130171 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194585.P7373243313767195260

/-! ## A194585.P5196332695087854352

`A130171(A349144(n+1)^A350071(n+1))`
-/

namespace A194585.P5196332695087854352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130171 (SequenceMachineLib.roundAway ((A349144 (n + 1) : ℚ) ^ (A350071 (n + 1) : ℤ))).toNat

end

end A194585.P5196332695087854352

/-! ## A194585.P16629591777964750076

`A130171(A350071(n+1)²²*A349144(n+1))`
-/

namespace A194585.P16629591777964750076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130171 ((A350071 (n + 1) ^ 2) ^ 2 * A349144 (n + 1)).toNat

end

end A194585.P16629591777964750076

/-!
# A194586: Triangle read by rows, T(n,k) the coefficients of the polynomials Sum_{k=0..n} binomial(n,k)*A056040(k)*(k mod 2)*q^k.

The programs for A194586, there is no canonical definition to state claims against.
-/

/-! ## A194586.P5365427003482058456

`abs(A060510(n)*A163649(n))`
-/

namespace A194586.P5365427003482058456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060510 n * A163649 n|

end

end A194586.P5365427003482058456

/-! ## A194586.P2631114137685650874

`lcm(A138364(A002262(n)), A163649(n))`
-/

namespace A194586.P2631114137685650874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138364 (A002262 n).toNat) (A163649 n)

end

end A194586.P2631114137685650874

/-! ## A194586.P8634048814295506747

`A142150(A002260(n+1))*A189913(n)`
-/

namespace A194586.P8634048814295506747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A002260 (n + 1)).toNat * A189913 n

end

end A194586.P8634048814295506747

/-! ## A194586.P13881476163991515947

`gcd(A000038(n), A163649(n))*A060510(n)`
-/

namespace A194586.P13881476163991515947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A163649 n) : ℤ) * A060510 n

end

end A194586.P13881476163991515947

/-! ## A194586.P1486751232178866072

`lcm(A060510(n)*A163649(n), A007318(n))`
-/

namespace A194586.P1486751232178866072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060510 n * A163649 n) (A007318 n)

end

end A194586.P1486751232178866072

/-! ## A194586.P197049910744863656

`∑{d}[A060510(n)*A163649(n), A000010(#)]`
-/

namespace A194586.P197049910744863656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 n * A163649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194586.P197049910744863656

/-! ## A194586.P15247119678762803036

`lcm(-(A060510(n)*A163649(n)), A033999(n))`
-/

namespace A194586.P15247119678762803036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-(A060510 n * A163649 n)) (A033999 n)

end

end A194586.P15247119678762803036

/-! ## A194586.P8086440193403659459

`gcd(A060510(n)*A163649(n), A008683(4*(n+1)))`
-/

namespace A194586.P8086440193403659459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060510 n * A163649 n) (A008683 (4 * (n + 1)))

end

end A194586.P8086440193403659459

/-! ## A194586.P10059200991364705183

`sqrt((A060510(n)*A163649(n))^A020639(2*(n+1)))`
-/

namespace A194586.P10059200991364705183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A060510 n * A163649 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A194586.P10059200991364705183

/-!
# A194588: a(n) = A189912(n-1)-a(n-1) for n>0, a(0) = 1; extended Riordan numbers.

The programs for A194588, the canonical program `A194588.P2938280453957278802` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194588 has offset 0).

The definition of A194588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194588.P2938280453957278802

`A189912(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194588

/-- `A189912(n-1)-a(n-1)` -/
def P2938280453957278802.Spec : Prop :=
  ∀ n, P2938280453957278802.a n = A194588 n

theorem P2938280453957278802.correct : P2938280453957278802.Spec := by
  intro n
  simp only [A194588]

end A194588

/-! ## A194588.P9291950309650417755

`A217540(n*(n+3)+3)`
-/

namespace A194588.P9291950309650417755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217540 (n * (n + 3) + 3)

end

end A194588.P9291950309650417755

namespace A194588

/-- `A217540(n*(n+3)+3)` -/
def P9291950309650417755.Spec : Prop :=
  ∀ n, P9291950309650417755.a n = A194588 n

end A194588

/-! ## A194588.P5056285134548867948

`A194589(n)+A005043(n)`
-/

namespace A194588.P5056285134548867948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194589 n + A005043 n

end

end A194588.P5056285134548867948

namespace A194588

/-- `A194589(n)+A005043(n)` -/
def P5056285134548867948.Spec : Prop :=
  ∀ n, P5056285134548867948.a n = A194588 n

theorem P5056285134548867948.correct : P5056285134548867948.Spec := by
  intro n
  simp only [A194588, Nat.add_sub_cancel, A194588.P5056285134548867948.a, A194588.P2938280453957278802.a, A005043, A005043.P11838040305800302990.a, A189912, A189912.P39794157552694298.f1, A189912.P39794157552694298.a, A194589, A194589.P3556960266445437551.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A194588

/-! ## A194588.P2588486339255985227

`A194589(n)+A091867(∑[n])`
-/

namespace A194588.P2588486339255985227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194589 n + A091867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194588.P2588486339255985227

namespace A194588

/-- `A194589(n)+A091867(∑[n])` -/
def P2588486339255985227.Spec : Prop :=
  ∀ n, P2588486339255985227.a n = A194588 n

end A194588

/-! ## A194588.P13543923430628810401

`A372342(n)+A309303(n+1)`
-/

namespace A194588.P13543923430628810401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372342 n + A309303 (n + 1)

end

end A194588.P13543923430628810401

namespace A194588

/-- `A372342(n)+A309303(n+1)` -/
def P13543923430628810401.Spec : Prop :=
  ∀ n, P13543923430628810401.a n = A194588 n

end A194588

/-!
# A194589: a(n) = A194588(n) - A005043(n); complementary Riordan numbers.

The programs for A194589, the canonical program `A194589.P3556960266445437551` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194589 has offset 0).

The definition of A194589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194589.P513081634548808943

`∑{#}[n, C(n, #)*A194590(#)]`
-/

namespace A194589.P513081634548808943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A194590 k

end

end A194589.P513081634548808943

namespace A194589

/-- `∑{#}[n, C(n, #)*A194590(#)]` -/
def P513081634548808943.Spec : Prop :=
  ∀ n, P513081634548808943.a n = A194589 n

end A194589

/-! ## A194589.P3556960266445437551

`A194588(n)-A005043(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A194589

/-- `A194588(n)-A005043(n)` -/
def P3556960266445437551.Spec : Prop :=
  ∀ n, P3556960266445437551.a n = A194589 n

theorem P3556960266445437551.correct : P3556960266445437551.Spec := by
  intro n
  simp only [A194589]

end A194589

/-! ## A194589.P9299639941746476432

`A025178(n)/2-a(n-1)` with `a(0)=0`
-/

namespace A194589.P9299639941746476432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A025178 n : ℚ) / 2 - a (n - 1)

end

end A194589.P9299639941746476432

namespace A194589

/-- `A025178(n)/2-a(n-1)` -/
def P9299639941746476432.Spec : Prop :=
  ∀ n, P9299639941746476432.a n = (A194589 n : ℚ)

end A194589

/-! ## A194589.P6917063186366108227

`(n-1)*A086246(n)-a(n-1)` with `a(0)=0`
-/

namespace A194589.P6917063186366108227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) * A086246 n - a (n - 1)

end

end A194589.P6917063186366108227

namespace A194589

/-- `(n-1)*A086246(n)-a(n-1)` -/
def P6917063186366108227.Spec : Prop :=
  ∀ n, P6917063186366108227.a n = A194589 n

end A194589

/-! ## A194589.P7631622068832751997

`(1-n)*A292440(n)-a(n-1)` with `a(0)=0`
-/

namespace A194589.P7631622068832751997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (n : ℤ)) * A292440 n - a (n - 1)

end

end A194589.P7631622068832751997

namespace A194589

/-- `(1-n)*A292440(n)-a(n-1)` -/
def P7631622068832751997.Spec : Prop :=
  ∀ n, P7631622068832751997.a n = A194589 n

end A194589

/-! ## A194589.P2178589190166992619

`(n-1)*A007971(n)/2-a(n-1)` with `a(0)=0`
-/

namespace A194589.P2178589190166992619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1 : ℚ) * ((A007971 n : ℚ) / 2) - a (n - 1)

end

end A194589.P2178589190166992619

namespace A194589

/-- `(n-1)*A007971(n)/2-a(n-1)` -/
def P2178589190166992619.Spec : Prop :=
  ∀ n, P2178589190166992619.a n = (A194589 n : ℚ)

end A194589

/-! ## A194589.P16754289754008334496

`(n-1)*A126068(n)/2-a(n-1)` with `a(0)=0`
-/

namespace A194589.P16754289754008334496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1 : ℚ) * ((A126068 n : ℚ) / 2) - a (n - 1)

end

end A194589.P16754289754008334496

namespace A194589

/-- `(n-1)*A126068(n)/2-a(n-1)` -/
def P16754289754008334496.Spec : Prop :=
  ∀ n, P16754289754008334496.a n = (A194589 n : ℚ)

end A194589

/-! ## A194589.P5673924587497871716

`A372342(n)-A309303(n)`
-/

namespace A194589.P5673924587497871716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372342 n - A309303 n

end

end A194589.P5673924587497871716

namespace A194589

/-- `A372342(n)-A309303(n)` -/
def P5673924587497871716.Spec : Prop :=
  ∀ n, P5673924587497871716.a n = A194589 n

end A194589

/-!
# A194590: a(n) = (-1)^n*(A056040(n+1)*A152271(n)-2^n)/2.

The programs for A194590, the canonical program `A194590.P4318496502991050826` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194590 has offset 0).

The definition of A194590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194590.P4318496502991050826

`(-1)^n*(A056040(n+1)*A152271(n)-2^n)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194590

/-- `(-1)^n*(A056040(n+1)*A152271(n)-2^n)/2` -/
def P4318496502991050826.Spec : Prop :=
  ∀ n, P4318496502991050826.a n = (A194590 n : ℚ)

end A194590

/-! ## A194590.P8914931839200599961

`(-1)^n*A107373(n+1)`
-/

namespace A194590.P8914931839200599961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A107373 (n + 1)

end

end A194590.P8914931839200599961

namespace A194590

/-- `(-1)^n*A107373(n+1)` -/
def P8914931839200599961.Spec : Prop :=
  ∀ n, P8914931839200599961.a n = A194590 n

end A194590

/-! ## A194590.P7426830330231708564

`A107373(n+1)/A033999(n)`
-/

namespace A194590.P7426830330231708564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107373 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A194590.P7426830330231708564

namespace A194590

/-- `A107373(n+1)/A033999(n)` -/
def P7426830330231708564.Spec : Prop :=
  ∀ n, P7426830330231708564.a n = (A194590 n : ℚ)

end A194590

/-! ## A194590.P4878765479828696387

`A107373(n+1)*A158496(2*n)`
-/

namespace A194590.P4878765479828696387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) * A158496 (2 * n)

end

end A194590.P4878765479828696387

namespace A194590

/-- `A107373(n+1)*A158496(2*n)` -/
def P4878765479828696387.Spec : Prop :=
  ∀ n, P4878765479828696387.a n = A194590 n

end A194590

/-! ## A194590.P18441742190044390407

`A107373(n+1)-A340568(A133265(n))`
-/

namespace A194590.P18441742190044390407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) - A340568 (A133265 n).toNat

end

end A194590.P18441742190044390407

namespace A194590

/-- `A107373(n+1)-A340568(A133265(n))` -/
def P18441742190044390407.Spec : Prop :=
  ∀ n, P18441742190044390407.a n = A194590 n

end A194590

/-! ## A194590.P12865205009179254615

`A107373(n+1)-A340568(A275365(n))`
-/

namespace A194590.P12865205009179254615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) - A340568 (A275365 n).toNat

end

end A194590.P12865205009179254615

namespace A194590

/-- `A107373(n+1)-A340568(A275365(n))` -/
def P12865205009179254615.Spec : Prop :=
  ∀ n, P12865205009179254615.a n = A194590 n

end A194590

/-! ## A194590.P15742972258184894436

`A107373(A133265(n+1))-A107373(n+1)`
-/

namespace A194590.P15742972258184894436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (A133265 (n + 1)).toNat - A107373 (n + 1)

end

end A194590.P15742972258184894436

namespace A194590

/-- `A107373(A133265(n+1))-A107373(n+1)` -/
def P15742972258184894436.Spec : Prop :=
  ∀ n, P15742972258184894436.a n = A194590 n

end A194590

/-! ## A194590.P5236505407339515494

`A107373(A275365(n+1))-A107373(n+1)`
-/

namespace A194590.P5236505407339515494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (A275365 (n + 1)).toNat - A107373 (n + 1)

end

end A194590.P5236505407339515494

namespace A194590

/-- `A107373(A275365(n+1))-A107373(n+1)` -/
def P5236505407339515494.Spec : Prop :=
  ∀ n, P5236505407339515494.a n = A194590 n

end A194590

/-! ## A194590.P18333394493605514794

`A107373(n+1)/A001405(n)*A126930(n)`
-/

namespace A194590.P18333394493605514794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107373 (n + 1) : ℚ) / (A001405 n : ℚ) * (A126930 n : ℚ)

end

end A194590.P18333394493605514794

namespace A194590

/-- `A107373(n+1)/A001405(n)*A126930(n)` -/
def P18333394493605514794.Spec : Prop :=
  ∀ n, P18333394493605514794.a n = (A194590 n : ℚ)

end A194590

/-! ## A194590.P9104196910918312828

`A107373(n+1)/A210736(n+1)*A126930(n)`
-/

namespace A194590.P9104196910918312828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107373 (n + 1) : ℚ) / (A210736 (n + 1) : ℚ) * (A126930 n : ℚ)

end

end A194590.P9104196910918312828

namespace A194590

/-- `A107373(n+1)/A210736(n+1)*A126930(n)` -/
def P9104196910918312828.Spec : Prop :=
  ∀ n, P9104196910918312828.a n = (A194590 n : ℚ)

end A194590

/-!
# A194591: Least k >= 0 such that n*2^k - 1 or n*2^k + 1 is prime, or -1 if no such value exists.

The programs for A194591, there is no canonical definition to state claims against.
-/

/-! ## A194591.P10952929079260286151

`A029837(ceil(A194603(n+1)/(n+2)))`
-/

namespace A194591.P10952929079260286151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 ⌈(A194603 (n + 1) : ℚ) / (n + 2 : ℚ)⌉.toNat

end

end A194591.P10952929079260286151

/-! ## A194591.P7178763186426321087

`A029837(round(A194603(n+1)/(n+2)))`
-/

namespace A194591.P7178763186426321087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((A194603 (n + 1) : ℚ) / (n + 2 : ℚ))).toNat

end

end A194591.P7178763186426321087

/-! ## A194591.P6019737967007789475

`A113177(ceil(A194603(n+1)/(n+2)))`
-/

namespace A194591.P6019737967007789475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 ⌈(A194603 (n + 1) : ℚ) / (n + 2 : ℚ)⌉.toNat

end

end A194591.P6019737967007789475

/-! ## A194591.P365623388088743562

`A088434(A029710(n+1)*A103689(n+1))`
-/

namespace A194591.P365623388088743562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (A029710 (n + 1) * A103689 (n + 1)).toNat

end

end A194591.P365623388088743562

/-! ## A194591.P16247921132328529760

`A088434(A031371(n+1)*A103689(n+1))`
-/

namespace A194591.P16247921132328529760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (A031371 (n + 1) * A103689 (n + 1)).toNat

end

end A194591.P16247921132328529760

/-! ## A194591.P18163107560680438227

`A088434(A082539(n+1)*A103689(n+1))`
-/

namespace A194591.P18163107560680438227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (A082539 (n + 1) * A103689 (n + 1)).toNat

end

end A194591.P18163107560680438227

/-! ## A194591.P18309614176982737915

`A088434(A103689(n+1)*A194603(n+1))`
-/

namespace A194591.P18309614176982737915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (A103689 (n + 1) * A194603 (n + 1)).toNat

end

end A194591.P18309614176982737915

/-! ## A194591.P2340416690133787547

`A051953(A103689(n+1))%A296561(n+1)`
-/

namespace A194591.P2340416690133787547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051953 (A103689 (n + 1)).toNat) (A296561 (n + 1))

end

end A194591.P2340416690133787547

/-! ## A194591.P8015056980023797187

`A249037(A103689(n+1))%A239020(n+1)`
-/

namespace A194591.P8015056980023797187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249037 (A103689 (n + 1)).toNat) (A239020 (n + 1))

end

end A194591.P8015056980023797187

/-! ## A194591.P18012140187507933474

`A001221(A038699(n+1))*A004523(A103689(n+1))`
-/

namespace A194591.P18012140187507933474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038699 (n + 1)).toNat * A004523 (A103689 (n + 1)).toNat

end

end A194591.P18012140187507933474

/-!
# A194593: Semiprimes s such that phi(s)/2 is prime.

The programs for A194593, the canonical program `A194593.P1917004072533663259` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194593 has offset 1).

The definition of A194593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194593.P16036770223874470154

`2*A005385(A028310(n))-floor(acot(n))`
-/

namespace A194593.P16036770223874470154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005385 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A194593.P16036770223874470154

namespace A194593

/-- `2*A005385(A028310(n))-floor(acot(n))` -/
def P16036770223874470154.Spec : Prop :=
  ∀ n, P16036770223874470154.a n = A194593 (n + 1)

end A194593

/-! ## A194593.P1917004072533663259

`2*A005385(A028310(n))-C(A047994(n+1), n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A194593

/-- `2*A005385(A028310(n))-C(A047994(n+1), n+1)` -/
def P1917004072533663259.Spec : Prop :=
  ∀ n, P1917004072533663259.a n = A194593 (n + 1)

theorem P1917004072533663259.correct : P1917004072533663259.Spec := by
  intro n
  simp only [A194593, Nat.add_sub_cancel]

end A194593

/-! ## A194593.P10947304224596058647

`2*A005385(A028310(n))-C(A102210(n+1), 3*n)`
-/

namespace A194593.P10947304224596058647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005385 (A028310 n).toNat - (Nat.choose (A102210 (n + 1)).toNat (3 * n) : ℤ)

end

end A194593.P10947304224596058647

namespace A194593

/-- `2*A005385(A028310(n))-C(A102210(n+1), 3*n)` -/
def P10947304224596058647.Spec : Prop :=
  ∀ n, P10947304224596058647.a n = A194593 (n + 1)

end A194593

/-! ## A194593.P13455566392350281836

`∩[A065966(n+1), A066887(n+1)]`
-/

namespace A194593.P13455566392350281836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P13455566392350281836

namespace A194593

/-- `∩[A065966(n+1), A066887(n+1)]` -/
def P13455566392350281836.Spec : Prop :=
  ∀ n, (P13455566392350281836.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P694940771473263434

`p?[A001747(n+1)+1]*A094284(n+3)`
-/

namespace A194593.P694940771473263434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A094284 (n + 3)

end

end A194593.P694940771473263434

namespace A194593

/-- `p?[A001747(n+1)+1]*A094284(n+3)` -/
def P694940771473263434.Spec : Prop :=
  ∀ n, P694940771473263434.a n = A194593 (n + 1)

end A194593

/-! ## A194593.P3598292163206283743

`∩[A054395(n+1), A065966(n+1)]`
-/

namespace A194593.P3598292163206283743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P3598292163206283743

namespace A194593

/-- `∩[A054395(n+1), A065966(n+1)]` -/
def P3598292163206283743.Spec : Prop :=
  ∀ n, (P3598292163206283743.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P4618146818819939516

`∩[A054395(n+1), A066887(n+1)]`
-/

namespace A194593.P4618146818819939516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P4618146818819939516

namespace A194593

/-- `∩[A054395(n+1), A066887(n+1)]` -/
def P4618146818819939516.Spec : Prop :=
  ∀ n, (P4618146818819939516.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P13603569674790500210

`∩[A066887(n+1), A074845(n+1)]`
-/

namespace A194593.P13603569674790500210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P13603569674790500210

namespace A194593

/-- `∩[A066887(n+1), A074845(n+1)]` -/
def P13603569674790500210.Spec : Prop :=
  ∀ n, (P13603569674790500210.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P2411212410974939176

`∩[A074845(n+1), A395563(n+1)]`
-/

namespace A194593.P2411212410974939176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P2411212410974939176

namespace A194593

/-- `∩[A074845(n+1), A395563(n+1)]` -/
def P2411212410974939176.Spec : Prop :=
  ∀ n, (P2411212410974939176.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P16221299412223552982

`∩[A065966(n+1), A157931(n+1)]`
-/

namespace A194593.P16221299412223552982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P16221299412223552982

namespace A194593

/-- `∩[A065966(n+1), A157931(n+1)]` -/
def P16221299412223552982.Spec : Prop :=
  ∀ n, (P16221299412223552982.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P1846039643318551693

`∩[A066887(n+1), A157931(n+1)]`
-/

namespace A194593.P1846039643318551693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P1846039643318551693

namespace A194593

/-- `∩[A066887(n+1), A157931(n+1)]` -/
def P1846039643318551693.Spec : Prop :=
  ∀ n, (P1846039643318551693.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P2008662201676912707

`∩[A065966(n+1), A253106(n+1)]`
-/

namespace A194593.P2008662201676912707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P2008662201676912707

namespace A194593

/-- `∩[A065966(n+1), A253106(n+1)]` -/
def P2008662201676912707.Spec : Prop :=
  ∀ n, (P2008662201676912707.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P11498878118641147060

`∩[A066887(n+1), A253106(n+1)]`
-/

namespace A194593.P11498878118641147060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P11498878118641147060

namespace A194593

/-- `∩[A066887(n+1), A253106(n+1)]` -/
def P11498878118641147060.Spec : Prop :=
  ∀ n, (P11498878118641147060.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P8319333504729539956

`∩[A065966(n+1), A318990(n+1)]`
-/

namespace A194593.P8319333504729539956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P8319333504729539956

namespace A194593

/-- `∩[A065966(n+1), A318990(n+1)]` -/
def P8319333504729539956.Spec : Prop :=
  ∀ n, (P8319333504729539956.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P1077836912668810787

`∩[A066887(n+1), A318990(n+1)]`
-/

namespace A194593.P1077836912668810787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P1077836912668810787

namespace A194593

/-- `∩[A066887(n+1), A318990(n+1)]` -/
def P1077836912668810787.Spec : Prop :=
  ∀ n, (P1077836912668810787.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P13971293182681607737

`A001222(a(n-1))*A005385(n)` with `a(0)=9`
-/

namespace A194593.P13971293182681607737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A001222 (a (n - 1)).toNat * A005385 n

end

end A194593.P13971293182681607737

namespace A194593

/-- `A001222(a(n-1))*A005385(n)` -/
def P13971293182681607737.Spec : Prop :=
  ∀ n, P13971293182681607737.a n = A194593 (n + 1)

end A194593

/-! ## A194593.P11493424733713207833

`∩[A066887(n+1), A075862(n+1)]`
-/

namespace A194593.P11493424733713207833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P11493424733713207833

namespace A194593

/-- `∩[A066887(n+1), A075862(n+1)]` -/
def P11493424733713207833.Spec : Prop :=
  ∀ n, (P11493424733713207833.a n : ℤ) = A194593 (n + 1)

end A194593

/-! ## A194593.P2228989036865007079

`filter[A065966(n+1), A359370(#)]`
-/

namespace A194593.P2228989036865007079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A194593.P2228989036865007079

namespace A194593

/-- `filter[A065966(n+1), A359370(#)]` -/
def P2228989036865007079.Spec : Prop :=
  ∀ n, P2228989036865007079.a n = A194593 (n + 1)

end A194593

/-! ## A194593.P5339523220795174891

`filter[A065966(n+1), A359764(#)]`
-/

namespace A194593.P5339523220795174891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A194593.P5339523220795174891

namespace A194593

/-- `filter[A065966(n+1), A359764(#)]` -/
def P5339523220795174891.Spec : Prop :=
  ∀ n, P5339523220795174891.a n = A194593 (n + 1)

end A194593

/-! ## A194593.P12881728070449308177

`∩[A001358(n+1), A065966(n+1)]`
-/

namespace A194593.P12881728070449308177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194593.P12881728070449308177

namespace A194593

/-- `∩[A001358(n+1), A065966(n+1)]` -/
def P12881728070449308177.Spec : Prop :=
  ∀ n, (P12881728070449308177.a n : ℤ) = A194593 (n + 1)

end A194593

/-!
# A194594: Numbers such that the sum of the their nonprime divisors and the sum of their prime divisors are both primes.

The programs for A194594, the canonical program `A194594.P725981934005079011` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194594 has offset 1).

The definition of A194594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194594.P725981934005079011

`∩[A114522(n+1), A194579(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194594

/-- `∩[A114522(n+1), A194579(n+1)]` -/
def P725981934005079011.Spec : Prop :=
  ∀ n, (P725981934005079011.a n : ℤ) = A194594 (n + 1)

theorem P725981934005079011.correct : P725981934005079011.Spec := by
  intro n
  simp only [A194594, Nat.add_sub_cancel]

end A194594

/-! ## A194594.P14978291378379422592

`A194579(lt[A194583(n), A194601(3*n+1)])`
-/

namespace A194594.P14978291378379422592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194601 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194579 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194594.P14978291378379422592

namespace A194594

/-- `A194579(lt[A194583(n), A194601(3*n+1)])` -/
def P14978291378379422592.Spec : Prop :=
  ∀ n, P14978291378379422592.a n = A194594 (n + 1)

end A194594

/-! ## A194594.P6252345339537089486

`A194579(lt[A270701(n+1), A128397(n+1)])`
-/

namespace A194594.P6252345339537089486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194579 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194594.P6252345339537089486

namespace A194594

/-- `A194579(lt[A270701(n+1), A128397(n+1)])` -/
def P6252345339537089486.Spec : Prop :=
  ∀ n, P6252345339537089486.a n = A194594 (n + 1)

end A194594

/-! ## A194594.P10826055245581656549

`∑[∑{e}[A160050(A303923(n)), #]+2]+2`
-/

namespace A194594.P10826055245581656549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (A303923 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A194594.P10826055245581656549

namespace A194594

/-- `∑[∑{e}[A160050(A303923(n)), #]+2]+2` -/
def P10826055245581656549.Spec : Prop :=
  ∀ n, (P10826055245581656549.a n : ℤ) = A194594 (n + 1)

end A194594

/-!
# A194595: Triangle by rows T(n,k), showing the number of meanders with length (n+1)*3 and containing (k+1)*3 L's and (n-k)*3 R's, where L's and R's denote arcs of equal length and a central angle of 120 degrees which are positively or negatively oriented.

The programs for A194595, the canonical program `A194595.P5598326238077145847` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194595 has offset 0).

The definition of A194595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194595.P12871061130058507132

`C(row(n), col(n))^3+C(row(n), col(n))*C(row(n), col(n)+1)*C(row(n)+1, col(n)+1)`
-/

namespace A194595.P12871061130058507132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 3 + Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1)

end

end A194595.P12871061130058507132

namespace A194595

/-- `C(row(n), col(n))^3+C(row(n), col(n))*C(row(n), col(n)+1)*C(row(n)+1, col(n)+1)` -/
def P12871061130058507132.Spec : Prop :=
  ∀ n, (P12871061130058507132.a n : ℤ) = A194595 n

end A194595

/-! ## A194595.P5598326238077145847

`A215630(n+1)/A133819(n+1)*A181543(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A194595

/-- `A215630(n+1)/A133819(n+1)*A181543(n)` -/
def P5598326238077145847.Spec : Prop :=
  ∀ n, P5598326238077145847.a n = (A194595 n : ℚ)

end A194595

/-!
# A194596: Number of free polyplets with n cells that are not polyominoes.

The programs for A194596, there is no canonical definition to state claims against.
-/

/-! ## A194596.P16524765085086953681

`A030222(n+1)-A000105(n+1)`
-/

namespace A194596.P16524765085086953681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030222 (n + 1) - A000105 (n + 1)

end

end A194596.P16524765085086953681

/-! ## A194596.P7454831033436615523

`A030222(n+1)-Δ[A173271(n)]`
-/

namespace A194596.P7454831033436615523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030222 (n + 1) - (f1 (n + 1) - f1 n)

end

end A194596.P7454831033436615523

/-! ## A194596.P6570693516836722229

`A030222(n+1)-(A006765(n+1)+1)`
-/

namespace A194596.P6570693516836722229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030222 (n + 1) - (A006765 (n + 1) + 1)

end

end A194596.P6570693516836722229

/-! ## A194596.P10407770853262486171

`A030233(n+1)-(A030235(n+1)+Δ[A173271(n)])`
-/

namespace A194596.P10407770853262486171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030233 (n + 1) - (A030235 (n + 1) + (f1 (n + 1) - f1 n))

end

end A194596.P10407770853262486171

/-! ## A194596.P1131392226742732703

`A030234(n+1)+A030235(n+1)-Δ[A173271(n)]`
-/

namespace A194596.P1131392226742732703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030234 (n + 1) + (A030235 (n + 1) - (f1 (n + 1) - f1 n))

end

end A194596.P1131392226742732703

/-!
# A194597: Digital roots of the nonzero hexagonal numbers.

The programs for A194597, the canonical program `A194597.P15241531491310478044` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194597 has offset 1).

The definition of A194597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194597.P15241531491310478044

`a(n-9)` with `a(0)=1, a(1)=6, a(2)=6, a(3)=1, a(4)=9, a(5)=3, a(6)=1, a(7)=3, a(8)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194597

/-- `a(n-9)` -/
def P15241531491310478044.Spec : Prop :=
  ∀ n, (P15241531491310478044.a n : ℤ) = A194597 (n + 1)

theorem P15241531491310478044.correct : P15241531491310478044.Spec := by
  intro n
  simp only [A194597, Nat.add_sub_cancel]

end A194597

/-!
# A194598: Union of A080359 and A164294.

The programs for A194598, the canonical program `A194598.P14763622104787464947` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194598 has offset 1).

The definition of A194598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194598.P14763622104787464947

`p?[A085118(A298861(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A194598

/-- `p?[A085118(A298861(n+1))]` -/
def P14763622104787464947.Spec : Prop :=
  ∀ n, P14763622104787464947.a n = A194598 (n + 1)

theorem P14763622104787464947.correct : P14763622104787464947.Spec := by
  intro n
  simp only [A194598, Nat.add_sub_cancel]

end A194598

/-! ## A194598.P760205299252356946

`∪[A080359(n+1), A164294(n+1)]`
-/

namespace A194598.P760205299252356946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194598.P760205299252356946

namespace A194598

/-- `∪[A080359(n+1), A164294(n+1)]` -/
def P760205299252356946.Spec : Prop :=
  ∀ n, (P760205299252356946.a n : ℤ) = A194598 (n + 1)

end A194598

/-! ## A194598.P17042499707777672263

`p?[A085118(2*n+1-A107347(n+1))]`
-/

namespace A194598.P17042499707777672263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 ((2 * n + 1 : ℤ) - A107347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194598.P17042499707777672263

namespace A194598

/-- `p?[A085118(2*n+1-A107347(n+1))]` -/
def P17042499707777672263.Spec : Prop :=
  ∀ n, P17042499707777672263.a n = A194598 (n + 1)

end A194598

/-! ## A194598.P7078392092147988638

`p?[A001222(A001751(n+1))*A085118(n+1)]`
-/

namespace A194598.P7078392092147988638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001751 (n + 1)).toNat * A085118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194598.P7078392092147988638

namespace A194598

/-- `p?[A001222(A001751(n+1))*A085118(n+1)]` -/
def P7078392092147988638.Spec : Prop :=
  ∀ n, P7078392092147988638.a n = A194598 (n + 1)

end A194598

/-! ## A194598.P1179860285895526329

`p?[A014963(A016726(A006254(n+1)))]`
-/

namespace A194598.P1179860285895526329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016726 (A006254 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194598.P1179860285895526329

namespace A194598

/-- `p?[A014963(A016726(A006254(n+1)))]` -/
def P1179860285895526329.Spec : Prop :=
  ∀ n, P1179860285895526329.a n = A194598 (n + 1)

end A194598

/-! ## A194598.P12543288032905043903

`p?[A014963(A016726(n+1))*A101264(n)]`
-/

namespace A194598.P12543288032905043903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016726 (n + 1)).toNat * A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194598.P12543288032905043903

namespace A194598

/-- `p?[A014963(A016726(n+1))*A101264(n)]` -/
def P12543288032905043903.Spec : Prop :=
  ∀ n, P12543288032905043903.a n = A194598 (n + 1)

end A194598

/-! ## A194598.P1863768092665033309

`∪[A080359(n+1), A193507(n+1)]`
-/

namespace A194598.P1863768092665033309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194598.P1863768092665033309

namespace A194598

/-- `∪[A080359(n+1), A193507(n+1)]` -/
def P1863768092665033309.Spec : Prop :=
  ∀ n, (P1863768092665033309.a n : ℤ) = A194598 (n + 1)

end A194598

/-! ## A194598.P4616744707142569461

`∪[A182365(n+1), A193507(n+1)]`
-/

namespace A194598.P4616744707142569461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194598.P4616744707142569461

namespace A194598

/-- `∪[A182365(n+1), A193507(n+1)]` -/
def P4616744707142569461.Spec : Prop :=
  ∀ n, (P4616744707142569461.a n : ℤ) = A194598 (n + 1)

end A194598

/-! ## A194598.P6614175430393468275

`∪[A038537(n+1), A164333(n+1)]`
-/

namespace A194598.P6614175430393468275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194598.P6614175430393468275

namespace A194598

/-- `∪[A038537(n+1), A164333(n+1)]` -/
def P6614175430393468275.Spec : Prop :=
  ∀ n, (P6614175430393468275.a n : ℤ) = A194598 (n + 1)

end A194598

/-! ## A194598.P17358637106138625001

`∪[A076155(n+1), A164333(n+1)]`
-/

namespace A194598.P17358637106138625001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194598.P17358637106138625001

namespace A194598

/-- `∪[A076155(n+1), A164333(n+1)]` -/
def P17358637106138625001.Spec : Prop :=
  ∀ n, (P17358637106138625001.a n : ℤ) = A194598 (n + 1)

end A194598

/-!
# A194599: Units' digits of the nonzero hexagonal numbers.

The programs for A194599, the canonical program `A194599.P5276419155973693665` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194599 has offset 1).

The definition of A194599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194599.P5276419155973693665

`((n+1)*(2*(n+1)-1))%10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A194599

/-- `((n+1)*(2*(n+1)-1))%10` -/
def P5276419155973693665.Spec : Prop :=
  ∀ n, P5276419155973693665.a n = A194599 (n + 1)

theorem P5276419155973693665.correct : P5276419155973693665.Spec := by
  intro n
  simp only [A194599, Nat.add_sub_cancel]

end A194599

