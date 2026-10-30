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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C048
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
import Seq.B005.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A208301: T(n,k)=Number of n X k nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208301, there is no canonical definition to state claims against.
-/

/-! ## A208301.P14247113346216907680

`∑[A008281(n)*A362312(A007173(n+1))]`
-/

namespace A208301.P14247113346216907680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 n * A362312 (A007173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208301.P14247113346216907680

/-! ## A208301.P18004802279378040156

`A215904(A320340(n+1)+A257554(n+2))`
-/

namespace A208301.P18004802279378040156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A320340 (n + 1) + A257554 (n + 2)).toNat

end

end A208301.P18004802279378040156

/-!
# A208302: Number of 2Xn nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208302, there is no canonical definition to state claims against.
-/

/-! ## A208302.P14121185182948734603

`A216025(2*(n+1))`
-/

namespace A208302.P14121185182948734603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216025 (2 * (n + 1))

end

end A208302.P14121185182948734603

/-! ## A208302.P1428105526000681553

`A208301(∑[n+1]+2)`
-/

namespace A208302.P1428105526000681553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208301 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208302.P1428105526000681553

/-! ## A208302.P15266807278202172832

`A215924(A055999(n)+10)`
-/

namespace A208302.P15266807278202172832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A055999 n + 10).toNat

end

end A208302.P15266807278202172832

/-! ## A208302.P9156213877033151795

`A215924(A167614(n+2)+1)`
-/

namespace A208302.P9156213877033151795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A167614 (n + 2) + 1).toNat

end

end A208302.P9156213877033151795

/-! ## A208302.P2363361648245780779

`A215904(A374004(n+1))`
-/

namespace A208302.P2363361648245780779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A374004 (n + 1)).toNat

end

end A208302.P2363361648245780779

/-!
# A208303: Number of 3 X n nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208303, there is no canonical definition to state claims against.
-/

/-! ## A208303.P12819440191942674639

`A208301(eq[2, A057059(n+1)])`
-/

namespace A208303.P12819440191942674639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208303.P12819440191942674639

/-! ## A208303.P16991965321380598581

`record[gcd(A208301(n+1), A303913(n))]`
-/

namespace A208303.P16991965321380598581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208301 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208303.P16991965321380598581

/-! ## A208303.P12324104742997922620

`A215902(n*a(A037814(n+1)))` with `a(0)=1`
-/

namespace A208303.P12324104742997922620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215902 ((n : ℤ) * a (A037814 (n + 1)).toNat).toNat

end

end A208303.P12324104742997922620

/-!
# A208305: Number of 5 X n nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any horizontal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A208305, there is no canonical definition to state claims against.
-/

/-! ## A208305.P6334985582268403649

`A215924(eq[6, A118745(n+2)])`
-/

namespace A208305.P6334985582268403649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118745 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208305.P6334985582268403649

/-!
# A208308: Number of n X n 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208308, there is no canonical definition to state claims against.
-/

/-! ## A208308.P2155693806257901483

`A208314(∑[4*n]+1)`
-/

namespace A208308.P2155693806257901483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208308.P2155693806257901483

/-! ## A208308.P15860518281105876438

`record[A003982(n)*A208314(n+1)]`
-/

namespace A208308.P15860518281105876438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208308.P15860518281105876438

/-! ## A208308.P11513910376743079503

`A007318(∑[n])*A208314(A001844(n))`
-/

namespace A208308.P11513910376743079503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A208314 (A001844 n).toNat

end

end A208308.P11513910376743079503

/-! ## A208308.P1329121072808581386

`A014963(6*(n+1))*A208314(A001844(n))`
-/

namespace A208308.P1329121072808581386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A208314 (A001844 n).toNat

end

end A208308.P1329121072808581386

/-! ## A208308.P5226903925581146436

`abs((-1)^A000040(n+2)*A208314(A001844(n)))`
-/

namespace A208308.P5226903925581146436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-1 : ℚ) ^ (A000040 (n + 2) : ℤ) * (A208314 (A001844 n).toNat : ℚ)|

end

end A208308.P5226903925581146436

/-!
# A208309: Number of n X 3 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208309, the canonical program `A208309.P12918701591403919631` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208309 has offset 1).

The definition of A208309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208309.P814618384296628281

`ogf((4-2x)/(1-5x+3x^2))`
-/

namespace A208309.P814618384296628281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2] [1, -5, 3] n

end

end A208309.P814618384296628281

namespace A208309

/-- `ogf((4-2x)/(1-5x+3x^2))` -/
def P814618384296628281.Spec : Prop :=
  ∀ n, P814618384296628281.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P12918701591403919631

`5*a(n-1)-3*a(n-2)` with `a(0)=4, a(1)=18`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208309

/-- `5*a(n-1)-3*a(n-2)` -/
def P12918701591403919631.Spec : Prop :=
  ∀ n, P12918701591403919631.a n = A208309 (n + 1)

theorem P12918701591403919631.correct : P12918701591403919631.Spec := by
  intro n
  simp only [A208309, Nat.add_sub_cancel]

end A208309

/-! ## A208309.P8674597933617568426

`Δ[2*A081704(n)]`
-/

namespace A208309.P8674597933617568426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208309.P8674597933617568426

namespace A208309

/-- `Δ[2*A081704(n)]` -/
def P8674597933617568426.Spec : Prop :=
  ∀ n, P8674597933617568426.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P15036157842586622703

`2*A095939(n+1)`
-/

namespace A208309.P15036157842586622703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095939 (n + 1)

end

end A208309.P15036157842586622703

namespace A208309

/-- `2*A095939(n+1)` -/
def P15036157842586622703.Spec : Prop :=
  ∀ n, P15036157842586622703.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P6960515109193992264

`A228791(n+2)/2`
-/

namespace A208309.P6960515109193992264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228791 (n + 2) : ℚ) / 2

end

end A208309.P6960515109193992264

namespace A208309

/-- `A228791(n+2)/2` -/
def P6960515109193992264.Spec : Prop :=
  ∀ n, P6960515109193992264.a n = (A208309 (n + 1) : ℚ)

end A208309

/-! ## A208309.P10922659890263915373

`2/3*A109114(n+1)`
-/

namespace A208309.P10922659890263915373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A109114 (n + 1) : ℚ)

end

end A208309.P10922659890263915373

namespace A208309

/-- `2/3*A109114(n+1)` -/
def P10922659890263915373.Spec : Prop :=
  ∀ n, P10922659890263915373.a n = (A208309 (n + 1) : ℚ)

end A208309

/-! ## A208309.P11282137045993517376

`A116415(n)+A010903(n)`
-/

namespace A208309.P11282137045993517376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 n + A010903 n

end

end A208309.P11282137045993517376

namespace A208309

/-- `A116415(n)+A010903(n)` -/
def P11282137045993517376.Spec : Prop :=
  ∀ n, P11282137045993517376.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P11685474110091598600

`A109114(n)+A081704(n+1)`
-/

namespace A208309.P11685474110091598600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 n + A081704 (n + 1)

end

end A208309.P11685474110091598600

namespace A208309

/-- `A109114(n)+A081704(n+1)` -/
def P11685474110091598600.Spec : Prop :=
  ∀ n, P11685474110091598600.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P3721928519746738756

`A116415(n)+A095934(n+1)`
-/

namespace A208309.P3721928519746738756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 n + A095934 (n + 1)

end

end A208309.P3721928519746738756

namespace A208309

/-- `A116415(n)+A095934(n+1)` -/
def P3721928519746738756.Spec : Prop :=
  ∀ n, P3721928519746738756.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P12117565615240964611

`A116415(n+1)-A018902(n)`
-/

namespace A208309.P12117565615240964611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 (n + 1) - A018902 n

end

end A208309.P12117565615240964611

namespace A208309

/-- `A116415(n+1)-A018902(n)` -/
def P12117565615240964611.Spec : Prop :=
  ∀ n, P12117565615240964611.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P11101813927849019927

`A081704(n)-A106732(n+1)`
-/

namespace A208309.P11101813927849019927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n - A106732 (n + 1)

end

end A208309.P11101813927849019927

namespace A208309

/-- `A081704(n)-A106732(n+1)` -/
def P11101813927849019927.Spec : Prop :=
  ∀ n, P11101813927849019927.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P11221584153145699731

`A188707(n+1)-A081704(n)`
-/

namespace A208309.P11221584153145699731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188707 (n + 1) - A081704 n

end

end A208309.P11221584153145699731

namespace A208309

/-- `A188707(n+1)-A081704(n)` -/
def P11221584153145699731.Spec : Prop :=
  ∀ n, P11221584153145699731.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P7184887509043080245

`2*(A116415(n)+A018902(n))`
-/

namespace A208309.P7184887509043080245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116415 n + A018902 n)

end

end A208309.P7184887509043080245

namespace A208309

/-- `2*(A116415(n)+A018902(n))` -/
def P7184887509043080245.Spec : Prop :=
  ∀ n, P7184887509043080245.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P11537469267852894120

`2*(A010903(n)-A018902(n))`
-/

namespace A208309.P11537469267852894120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010903 n - A018902 n)

end

end A208309.P11537469267852894120

namespace A208309

/-- `2*(A010903(n)-A018902(n))` -/
def P11537469267852894120.Spec : Prop :=
  ∀ n, P11537469267852894120.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P790078513611238799

`A018902(n+1)+∑[A095940(n)]`
-/

namespace A208309.P790078513611238799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208309.P790078513611238799

namespace A208309

/-- `A018902(n+1)+∑[A095940(n)]` -/
def P790078513611238799.Spec : Prop :=
  ∀ n, P790078513611238799.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P452294569687976027

`A081704(n)+∑[A081704(n+1)]`
-/

namespace A208309.P452294569687976027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208309.P452294569687976027

namespace A208309

/-- `A081704(n)+∑[A081704(n+1)]` -/
def P452294569687976027.Spec : Prop :=
  ∀ n, P452294569687976027.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P12304163001816770496

`A109114(n+1)-A095939(n+1)`
-/

namespace A208309.P12304163001816770496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 (n + 1) - A095939 (n + 1)

end

end A208309.P12304163001816770496

namespace A208309

/-- `A109114(n+1)-A095939(n+1)` -/
def P12304163001816770496.Spec : Prop :=
  ∀ n, P12304163001816770496.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P15277391697245665213

`A116415(n+1)-A095940(n+1)`
-/

namespace A208309.P15277391697245665213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 (n + 1) - A095940 (n + 1)

end

end A208309.P15277391697245665213

namespace A208309

/-- `A116415(n+1)-A095940(n+1)` -/
def P15277391697245665213.Spec : Prop :=
  ∀ n, P15277391697245665213.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P7549499370923747861

`A095934(n+1)+∑[A095940(n+1)]`
-/

namespace A208309.P7549499370923747861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208309.P7549499370923747861

namespace A208309

/-- `A095934(n+1)+∑[A095940(n+1)]` -/
def P7549499370923747861.Spec : Prop :=
  ∀ n, P7549499370923747861.a n = A208309 (n + 1)

end A208309

/-! ## A208309.P6519900725627804598

`2*A109114(n+1)-A228791(n+2)`
-/

namespace A208309.P6519900725627804598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109114 (n + 1) - A228791 (n + 2)

end

end A208309.P6519900725627804598

namespace A208309

/-- `2*A109114(n+1)-A228791(n+2)` -/
def P6519900725627804598.Spec : Prop :=
  ∀ n, P6519900725627804598.a n = A208309 (n + 1)

end A208309

/-!
# A208310: Number of n X 4 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208310, the canonical program `A208310.P8609861178035606777` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208310 has offset 1).

The definition of A208310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208310.P8609861178035606777

`ogf((8-18x+18x^2-6x^3)/(1-9x+21x^2-21x^3+9x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208310

/-- `ogf((8-18x+18x^2-6x^3)/(1-9x+21x^2-21x^3+9x^4))` -/
def P8609861178035606777.Spec : Prop :=
  ∀ n, P8609861178035606777.a n = A208310 (n + 1)

theorem P8609861178035606777.correct : P8609861178035606777.Spec := by
  intro n
  simp only [A208310, Nat.add_sub_cancel]

end A208310

/-! ## A208310.P14132431522879939912

`A208314(A374004(n+1))`
-/

namespace A208310.P14132431522879939912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A374004 (n + 1)).toNat

end

end A208310.P14132431522879939912

namespace A208310

/-- `A208314(A374004(n+1))` -/
def P14132431522879939912.Spec : Prop :=
  ∀ n, P14132431522879939912.a n = A208310 (n + 1)

end A208310

/-! ## A208310.P5697048454314878348

`A208314(A141214(n)+7)`
-/

namespace A208310.P5697048454314878348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A141214 n + 7).toNat

end

end A208310.P5697048454314878348

namespace A208310

/-- `A208314(A141214(n)+7)` -/
def P5697048454314878348.Spec : Prop :=
  ∀ n, P5697048454314878348.a n = A208310 (n + 1)

end A208310

/-! ## A208310.P454938279662829341

`A208314(A052905(n)+9)`
-/

namespace A208310.P454938279662829341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A052905 n + 9).toNat

end

end A208310.P454938279662829341

namespace A208310

/-- `A208314(A052905(n)+9)` -/
def P454938279662829341.Spec : Prop :=
  ∀ n, P454938279662829341.a n = A208310 (n + 1)

end A208310

/-! ## A208310.P4845126906740459726

`A208314(A055999(n)+10)`
-/

namespace A208310.P4845126906740459726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A055999 n + 10).toNat

end

end A208310.P4845126906740459726

namespace A208310

/-- `A208314(A055999(n)+10)` -/
def P4845126906740459726.Spec : Prop :=
  ∀ n, P4845126906740459726.a n = A208310 (n + 1)

end A208310

/-!
# A208311: Number of n X 5 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208311, there is no canonical definition to state claims against.
-/

/-! ## A208311.P10234665593914501553

`A208314(A374005(n+1))`
-/

namespace A208311.P10234665593914501553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A374005 (n + 1)).toNat

end

end A208311.P10234665593914501553

/-! ## A208311.P14027796406858457712

`A208314(A056000(n)+15)`
-/

namespace A208311.P14027796406858457712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A056000 n + 15).toNat

end

end A208311.P14027796406858457712

/-! ## A208311.P200749724895809619

`A208314(eq[6, A131818(n+1)])`
-/

namespace A208311.P200749724895809619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208311.P200749724895809619

/-! ## A208311.P10711410497988488911

`A208314(eq[2, A092921(n)])`
-/

namespace A208311.P10711410497988488911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208311.P10711410497988488911

/-! ## A208311.P1631179740640862758

`A208314(eq[4, A193592(n)])`
-/

namespace A208311.P1631179740640862758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208311.P1631179740640862758

/-!
# A208312: Number of n X 6 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208312, there is no canonical definition to state claims against.
-/

/-! ## A208312.P18407699086258103432

`A208314(A374007(n+1))`
-/

namespace A208312.P18407699086258103432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A374007 (n + 1)).toNat

end

end A208312.P18407699086258103432

/-! ## A208312.P9022360494240297049

`A208314(eq[7, A131818(n+1)])`
-/

namespace A208312.P9022360494240297049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208312.P9022360494240297049

/-! ## A208312.P1245096664039674950

`A208314(A052905(n+3))`
-/

namespace A208312.P1245096664039674950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A052905 (n + 3)).toNat

end

end A208312.P1245096664039674950

/-! ## A208312.P6903445919135863816

`A208314(A056119(n)+16)`
-/

namespace A208312.P6903445919135863816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A056119 n + 16).toNat

end

end A208312.P6903445919135863816

/-! ## A208312.P5381446794952801057

`A208314(eq[3, A219347(n)])`
-/

namespace A208312.P5381446794952801057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208312.P5381446794952801057

/-!
# A208313: Number of nX7 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208313, there is no canonical definition to state claims against.
-/

/-! ## A208313.P307452184137488632

`A208314(A374008(n+1))`
-/

namespace A208313.P307452184137488632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A374008 (n + 1)).toNat

end

end A208313.P307452184137488632

/-! ## A208313.P1681428496347526765

`A208314(A056119(n)+28)`
-/

namespace A208313.P1681428496347526765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A056119 n + 28).toNat

end

end A208313.P1681428496347526765

/-! ## A208313.P4268947041428969668

`A208314(eq[8, A131818(n+1)])`
-/

namespace A208313.P4268947041428969668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208313.P4268947041428969668

/-! ## A208313.P16878465017035769852

`A208314(A055999(n+4))`
-/

namespace A208313.P16878465017035769852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (A055999 (n + 4)).toNat

end

end A208313.P16878465017035769852

/-! ## A208313.P17509997546873851126

`A208314(eq[4, A219347(n)])`
-/

namespace A208313.P17509997546873851126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208313.P17509997546873851126

/-!
# A208314: T(n,k)=Number of nXk 0..1 arrays with new values 0..1 introduced in row major order and no element equal to more than one of its immediate leftward or upward neighbors.

The programs for A208314, there is no canonical definition to state claims against.
-/

/-! ## A208314.P12196023957766456078

`A078099(n+1)-A324802(A046741(n+1))`
-/

namespace A208314.P12196023957766456078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (n + 1) - A324802 (A046741 (n + 1)).toNat

end

end A208314.P12196023957766456078

/-! ## A208314.P1245555418676316936

`A078099(n+1)-A048105(A128936(n))`
-/

namespace A208314.P1245555418676316936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (n + 1) - A048105 (A128936 n).toNat

end

end A208314.P1245555418676316936

/-! ## A208314.P2540140630875040713

`A078099(n+1)-A024362(A100157(n+1))`
-/

namespace A208314.P2540140630875040713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (n + 1) - A024362 (A100157 (n + 1)).toNat

end

end A208314.P2540140630875040713

/-! ## A208314.P4794640419361500500

`A078099(n+1)-A162234(A351241(n+2))`
-/

namespace A208314.P4794640419361500500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (n + 1) - A162234 (A351241 (n + 2)).toNat

end

end A208314.P4794640419361500500

/-!
# A208315: Number of n X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208315, there is no canonical definition to state claims against.
-/

/-! ## A208315.P13266382176814445472

`A208322((n+1)²+n²)`
-/

namespace A208315.P13266382176814445472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 ((n + 1) ^ 2 + n ^ 2)

end

end A208315.P13266382176814445472

/-!
# A208316: Number of n X 2 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208316, the canonical program `A208316.P15051996343652585837` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208316 has offset 1).

The definition of A208316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208316.P3716577572138465440

`ogf((-2+3x+3x^2)/(-1+8x+6x^2))`
-/

namespace A208316.P3716577572138465440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -3] [1, -8, -6] n

end

end A208316.P3716577572138465440

namespace A208316

/-- `ogf((-2+3x+3x^2)/(-1+8x+6x^2))` -/
def P3716577572138465440.Spec : Prop :=
  ∀ n, P3716577572138465440.a n = A208316 (n + 1)

end A208316

/-! ## A208316.P15051996343652585837

`8*a(n-1)+6*a(n-2)` with `a(0)=2, a(1)=13, a(2)=113`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208316

/-- `8*a(n-1)+6*a(n-2)` -/
def P15051996343652585837.Spec : Prop :=
  ∀ n, (P15051996343652585837.a n : ℤ) = A208316 (n + 1)

theorem P15051996343652585837.correct : P15051996343652585837.Spec := by
  intro n
  simp only [A208316, Nat.add_sub_cancel]

end A208316

/-! ## A208316.P17992760051816317515

`ceil(A254657(n+1)/6)`
-/

namespace A208316.P17992760051816317515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254657 (n + 1) : ℚ) / 6⌉

end

end A208316.P17992760051816317515

namespace A208316

/-- `ceil(A254657(n+1)/6)` -/
def P17992760051816317515.Spec : Prop :=
  ∀ n, P17992760051816317515.a n = A208316 (n + 1)

end A208316

/-! ## A208316.P6855143331231262538

`round(A000035(2*n)+A254657(n+1)/6)`
-/

namespace A208316.P6855143331231262538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000035 (2 * n) : ℚ) + (A254657 (n + 1) : ℚ) / 6)

end

end A208316.P6855143331231262538

namespace A208316

/-- `round(A000035(2*n)+A254657(n+1)/6)` -/
def P6855143331231262538.Spec : Prop :=
  ∀ n, P6855143331231262538.a n = A208316 (n + 1)

end A208316

/-! ## A208316.P14024924784052486839

`round(A254657(n+1)/6*A172453(n-A002262(n)))`
-/

namespace A208316.P14024924784052486839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A254657 (n + 1) : ℚ) / 6 * (A172453 ((n : ℤ) - A002262 n).toNat : ℚ))

end

end A208316.P14024924784052486839

namespace A208316

/-- `round(A254657(n+1)/6*A172453(n-A002262(n)))` -/
def P14024924784052486839.Spec : Prop :=
  ∀ n, P14024924784052486839.a n = A208316 (n + 1)

end A208316

/-!
# A208317: Number of n X 3 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208317, there is no canonical definition to state claims against.
-/

/-! ## A208317.P8863577312521625346

`ogf((5-7x-20x^2+12x^3)/(1-24x-32x^2+24x^3))`
-/

namespace A208317.P8863577312521625346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7, -20, 12] [1, -24, -32, 24] n

end

end A208317.P8863577312521625346

/-! ## A208317.P11226159471895095201

`A208322(∑[n+2]+4)`
-/

namespace A208317.P11226159471895095201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208317.P11226159471895095201

/-! ## A208317.P15640087879583026264

`A208322(A167614(n+1))%A238355(n)`
-/

namespace A208317.P15640087879583026264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208322 (A167614 (n + 1)).toNat) (A238355 (n + 10))

end

end A208317.P15640087879583026264

/-! ## A208317.P9530035215317918390

`lcm(A033999(n), A208322(A167614(n+1)))`
-/

namespace A208317.P9530035215317918390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208322 (A167614 (n + 1)).toNat)

end

end A208317.P9530035215317918390

/-! ## A208317.P6200569448106022513

`A208322(A167614(n+1))+A034537(n+1)`
-/

namespace A208317.P6200569448106022513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A167614 (n + 1)).toNat + A034537 (n + 1)

end

end A208317.P6200569448106022513

/-!
# A208318: Number of n X 4 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208318, there is no canonical definition to state claims against.
-/

/-! ## A208318.P9038904058788551164

`A208322(A374004(n+1))`
-/

namespace A208318.P9038904058788551164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A374004 (n + 1)).toNat

end

end A208318.P9038904058788551164

/-! ## A208318.P8786253022448125647

`A208322(A141214(n)+7)`
-/

namespace A208318.P8786253022448125647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A141214 n + 7).toNat

end

end A208318.P8786253022448125647

/-! ## A208318.P9352992453166834462

`A208322(A052905(n)+9)`
-/

namespace A208318.P9352992453166834462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A052905 n + 9).toNat

end

end A208318.P9352992453166834462

/-! ## A208318.P13893614633502230707

`A208322(A055999(n)+10)`
-/

namespace A208318.P13893614633502230707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A055999 n + 10).toNat

end

end A208318.P13893614633502230707

/-! ## A208318.P3482438570954741750

`A208322(A167614(n+2)+1)`
-/

namespace A208318.P3482438570954741750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A167614 (n + 2) + 1).toNat

end

end A208318.P3482438570954741750

/-!
# A208319: Number of nX5 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208319, there is no canonical definition to state claims against.
-/

/-! ## A208319.P6135807682391912034

`A208322(A374005(n+1))`
-/

namespace A208319.P6135807682391912034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A374005 (n + 1)).toNat

end

end A208319.P6135807682391912034

/-! ## A208319.P10371903209457501281

`A208322(A000217(n+4)+5)`
-/

namespace A208319.P10371903209457501281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A000217 (n + 4) + 5).toNat

end

end A208319.P10371903209457501281

/-! ## A208319.P14086827464391961809

`A208322(eq[6, A131818(n+1)])`
-/

namespace A208319.P14086827464391961809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208319.P14086827464391961809

/-! ## A208319.P2395904589017272728

`A208322(eq[4, A193592(n)])`
-/

namespace A208319.P2395904589017272728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208319.P2395904589017272728

/-! ## A208319.P13628542942610069359

`A208322(Δ[A023545(n+1)])`
-/

namespace A208319.P13628542942610069359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (f1 (n + 1) - f1 n).toNat

end

end A208319.P13628542942610069359

/-!
# A208320: Number of nX6 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208320, there is no canonical definition to state claims against.
-/

/-! ## A208320.P18429098290948264119

`A208322(A374007(n+1))`
-/

namespace A208320.P18429098290948264119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A374007 (n + 1)).toNat

end

end A208320.P18429098290948264119

/-! ## A208320.P12237481597517058617

`A208322(A052905(n+3))`
-/

namespace A208320.P12237481597517058617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (A052905 (n + 3)).toNat

end

end A208320.P12237481597517058617

/-! ## A208320.P4699508416771905303

`A208322(Δ[A023545(n+2)]-1)`
-/

namespace A208320.P4699508416771905303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (f1 (n + 1) - f1 n - 1).toNat

end

end A208320.P4699508416771905303

/-!
# A208321: Number of nX7 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208321, there is no canonical definition to state claims against.
-/

/-! ## A208321.P13971729309655784132

`A208322(eq[6, A193592(n)])`
-/

namespace A208321.P13971729309655784132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208321.P13971729309655784132

/-! ## A208321.P2896067443189280529

`A208322(eq[7, A200370(n+1)])`
-/

namespace A208321.P2896067443189280529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208321.P2896067443189280529

/-!
# A208322: T(n,k)=Number of nXk 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208322, there is no canonical definition to state claims against.
-/

/-! ## A208322.P12721894703224866451

`A346837(A157212(n))+A199655(n+1)`
-/

namespace A208322.P12721894703224866451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346837 (A157212 n).toNat + A199655 (n + 1)

end

end A208322.P12721894703224866451

/-! ## A208322.P11757421350567649578

`A346837(A157212(n))+A241114(n+1)`
-/

namespace A208322.P11757421350567649578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346837 (A157212 n).toNat + A241114 (n + 1)

end

end A208322.P11757421350567649578

/-! ## A208322.P12014371559452763797

`A199655(n+1)-A003982(A028859(n))`
-/

namespace A208322.P12014371559452763797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (n + 1) - A003982 (A028859 n).toNat

end

end A208322.P12014371559452763797

/-! ## A208322.P16844545806654475201

`A241114(n+1)-A003982(A028859(n))`
-/

namespace A208322.P16844545806654475201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241114 (n + 1) - A003982 (A028859 n).toNat

end

end A208322.P16844545806654475201

/-! ## A208322.P1168433784441389375

`A199655(n+1)-A156659(A120588(n))`
-/

namespace A208322.P1168433784441389375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199655 (n + 1) - A156659 (A120588 n).toNat

end

end A208322.P1168433784441389375

/-!
# A208323: "Natural" rectangular pyramidal numbers.

The programs for A208323, there is no canonical definition to state claims against.
-/

/-! ## A208323.P9695092308788500151

`or(A001878(A052921(n)), A209187(n+1))`
-/

namespace A208323.P9695092308788500151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001878 (A052921 n).toNat) (A209187 (n + 1))

end

end A208323.P9695092308788500151

/-! ## A208323.P7869831917472907036

`A106826(A067756(n+1))+A062855(n+1)`
-/

namespace A208323.P7869831917472907036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106826 (A067756 (n + 1)).toNat + A062855 (n + 1)

end

end A208323.P7869831917472907036

/-!
# A208324: Triangle T(n,k), read by rows, given by (2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (4, -2, 0, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A208324, the canonical program `A208324.P10683578502426325249` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208324 has offset 0).

The definition of A208324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208324.P10683578502426325249

`2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208324

/-- `2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` -/
def P10683578502426325249.Spec : Prop :=
  ∀ n, P10683578502426325249.a n = A208324 n

theorem P10683578502426325249.correct : P10683578502426325249.Spec := by
  intro n
  simp only [A208324]

end A208324

/-! ## A208324.P5562649891701857175

`A013609(n)+A193862(n)-A010054(n)`
-/

namespace A208324.P5562649891701857175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (A193862 n - A010054 n)

end

end A208324.P5562649891701857175

namespace A208324

/-- `A013609(n)+A193862(n)-A010054(n)` -/
def P5562649891701857175.Spec : Prop :=
  ∀ n, P5562649891701857175.a n = A208324 n

end A208324

/-! ## A208324.P12423308479582500594

`A193862(n)+A134058(n)*A140531(n)`
-/

namespace A208324.P12423308479582500594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 n + A134058 n * A140531 n

end

end A208324.P12423308479582500594

namespace A208324

/-- `A193862(n)+A134058(n)*A140531(n)` -/
def P12423308479582500594.Spec : Prop :=
  ∀ n, P12423308479582500594.a n = A208324 n

end A208324

/-! ## A208324.P5122473819464123694

`A193862(n)+A013609(n)%A013611(n)`
-/

namespace A208324.P5122473819464123694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193862 n + Int.tmod (A013609 n) (A013611 n)

end

end A208324.P5122473819464123694

namespace A208324

/-- `A193862(n)+A013609(n)%A013611(n)` -/
def P5122473819464123694.Spec : Prop :=
  ∀ n, P5122473819464123694.a n = A208324 n

end A208324

/-! ## A208324.P16894487046578231357

`A209158(n+1)+A209159(n+1)%A209161(n+1)`
-/

namespace A208324.P16894487046578231357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) + Int.tmod (A209159 (n + 1)) (A209161 (n + 1))

end

end A208324.P16894487046578231357

namespace A208324

/-- `A209158(n+1)+A209159(n+1)%A209161(n+1)` -/
def P16894487046578231357.Spec : Prop :=
  ∀ n, P16894487046578231357.a n = A208324 n

end A208324

/-! ## A208324.P13371618582133673110

`A207627(n+2)-char[∑[n]]`
-/

namespace A208324.P13371618582133673110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208324.P13371618582133673110

namespace A208324

/-- `A207627(n+2)-char[∑[n]]` -/
def P13371618582133673110.Spec : Prop :=
  ∀ n, P13371618582133673110.a n = A208324 n

end A208324

/-! ## A208324.P6883786572548747038

`abs(A207627(n+2)-A010054(n))`
-/

namespace A208324.P6883786572548747038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A207627 (n + 2) - A010054 n|

end

end A208324.P6883786572548747038

namespace A208324

/-- `abs(A207627(n+2)-A010054(n))` -/
def P6883786572548747038.Spec : Prop :=
  ∀ n, P6883786572548747038.a n = A208324 n

end A208324

/-! ## A208324.P11952134458589777641

`A209705(A014132(n+1)+1)-A010054(n)`
-/

namespace A208324.P11952134458589777641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (A014132 (n + 1) + 1).toNat - A010054 n

end

end A208324.P11952134458589777641

namespace A208324

/-- `A209705(A014132(n+1)+1)-A010054(n)` -/
def P11952134458589777641.Spec : Prop :=
  ∀ n, P11952134458589777641.a n = A208324 n

end A208324

/-!
# A208325: Primes p such that all p-k!! are composite for 1<=k!!<p.

The programs for A208325, there is no canonical definition to state claims against.
-/

/-! ## A208325.P1924091212665699385

`A235148(n+1)+A157416(A006720(n))`
-/

namespace A208325.P1924091212665699385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235148 (n + 1) + A157416 (A006720 n).toNat

end

end A208325.P1924091212665699385

/-! ## A208325.P10583284932331753070

`A016789(lt[A092867(n+1), A127818(n+2)])`
-/

namespace A208325.P10583284932331753070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A208325.P10583284932331753070

/-! ## A208325.P2708502670983789662

`A016789(lt[A218326(n+1), A127818(n+2)])`
-/

namespace A208325.P2708502670983789662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A208325.P2708502670983789662

/-!
# A208326: n + [nr/t] + [ns/t], where []=floor, r=5, s=(1+sqrt(5))/2, t=1/s.

The programs for A208326, the canonical program `A208326.P11922390768727645525` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208326 has offset 1).

The definition of A208326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208326.P11922390768727645525

`A005206(n)+A004920(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208326

/-- `A005206(n)+A004920(n+1)` -/
def P11922390768727645525.Spec : Prop :=
  ∀ n, P11922390768727645525.a n = A208326 (n + 1)

theorem P11922390768727645525.correct : P11922390768727645525.Spec := by
  intro n
  simp only [A208326, Nat.add_sub_cancel]

end A208326

/-! ## A208326.P15066732811443581166

`A060143(n+1)+A004920(n+1)`
-/

namespace A208326.P15066732811443581166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1) + A004920 (n + 1)

end

end A208326.P15066732811443581166

namespace A208326

/-- `A060143(n+1)+A004920(n+1)` -/
def P15066732811443581166.Spec : Prop :=
  ∀ n, P15066732811443581166.a n = A208326 (n + 1)

end A208326

/-! ## A208326.P14836939317199550080

`A003622(5*(n+1))-∑[A001468(A002251(n))]`
-/

namespace A208326.P14836939317199550080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A002251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (5 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208326.P14836939317199550080

namespace A208326

/-- `A003622(5*(n+1))-∑[A001468(A002251(n))]` -/
def P14836939317199550080.Spec : Prop :=
  ∀ n, P14836939317199550080.a n = A208326 (n + 1)

end A208326

/-! ## A208326.P15667228124199036991

`A207673(n+1)+A005408(A003231(n+1))`
-/

namespace A208326.P15667228124199036991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207673 (n + 1) + A005408 (A003231 (n + 1)).toNat

end

end A208326.P15667228124199036991

namespace A208326

/-- `A207673(n+1)+A005408(A003231(n+1))` -/
def P15667228124199036991.Spec : Prop :=
  ∀ n, P15667228124199036991.a n = A208326 (n + 1)

end A208326

/-! ## A208326.P15077809280356707594

`A003231(n+1)+A000201(5*(n+1))`
-/

namespace A208326.P15077809280356707594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) + A000201 (5 * (n + 1))

end

end A208326.P15077809280356707594

namespace A208326

/-- `A003231(n+1)+A000201(5*(n+1))` -/
def P15077809280356707594.Spec : Prop :=
  ∀ n, P15077809280356707594.a n = A208326 (n + 1)

end A208326

/-! ## A208326.P7956711464964645702

`A001950(5*(n+1))-∑[A001468(A022413(n))]`
-/

namespace A208326.P7956711464964645702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A022413 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (5 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208326.P7956711464964645702

namespace A208326

/-- `A001950(5*(n+1))-∑[A001468(A022413(n))]` -/
def P7956711464964645702.Spec : Prop :=
  ∀ n, P7956711464964645702.a n = A208326 (n + 1)

end A208326

/-! ## A208326.P15839054541724389129

`A003623(5*(n+1))+A003231(n+1)-A001950(5*(n+1))`
-/

namespace A208326.P15839054541724389129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (5 * (n + 1)) + (A003231 (n + 1) - A001950 (5 * (n + 1)))

end

end A208326.P15839054541724389129

namespace A208326

/-- `A003623(5*(n+1))+A003231(n+1)-A001950(5*(n+1))` -/
def P15839054541724389129.Spec : Prop :=
  ∀ n, P15839054541724389129.a n = A208326 (n + 1)

end A208326

/-! ## A208326.P7814723675138348399

`A005206(A003622(5*(n+1)))+A003231(n+1)`
-/

namespace A208326.P7814723675138348399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003622 (5 * (n + 1))).toNat + A003231 (n + 1)

end

end A208326.P7814723675138348399

namespace A208326

/-- `A005206(A003622(5*(n+1)))+A003231(n+1)` -/
def P7814723675138348399.Spec : Prop :=
  ∀ n, P7814723675138348399.a n = A208326 (n + 1)

end A208326

/-! ## A208326.P3086033227499045424

`A003231(n+1)+A002251(A001950(5*(n+1)))`
-/

namespace A208326.P3086033227499045424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) + A002251 (A001950 (5 * (n + 1))).toNat

end

end A208326.P3086033227499045424

namespace A208326

/-- `A003231(n+1)+A002251(A001950(5*(n+1)))` -/
def P3086033227499045424.Spec : Prop :=
  ∀ n, P3086033227499045424.a n = A208326 (n + 1)

end A208326

/-!
# A208327: Position of f(n) when the numbers f(j) and g(k) are jointly ranked, where f(j)=j + |cos j | and g(k)=k + |sin k|.

The programs for A208327, the canonical program `A208327.P4465603911308166971` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208327 has offset 1).

The definition of A208327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208327.P4114309469336112508

`ceil(2*(cos(n+1)²+n))`
-/

namespace A208327.P4114309469336112508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.cos (n + 1 : ℝ) ^ 2 + (n : ℝ))⌉

end

end A208327.P4114309469336112508

namespace A208327

/-- `ceil(2*(cos(n+1)²+n))` -/
def P4114309469336112508.Spec : Prop :=
  ∀ n, P4114309469336112508.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P18231253595472865690

`round(cos(n+1)²+2*n+1)`
-/

namespace A208327.P18231253595472865690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (n + 1 : ℝ) ^ 2 + (2 * n + 1 : ℝ))

end

end A208327.P18231253595472865690

namespace A208327

/-- `round(cos(n+1)²+2*n+1)` -/
def P18231253595472865690.Spec : Prop :=
  ∀ n, P18231253595472865690.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P11517114777966321531

`ceil(2*(n+1-sin(n+1)²))`
-/

namespace A208327.P11517114777966321531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n + 1 : ℝ) - Real.sin (n + 1 : ℝ) ^ 2)⌉

end

end A208327.P11517114777966321531

namespace A208327

/-- `ceil(2*(n+1-sin(n+1)²))` -/
def P11517114777966321531.Spec : Prop :=
  ∀ n, P11517114777966321531.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P6030275657136515279

`round(2*(n+1)-sin(n+1)²)`
-/

namespace A208327.P6030275657136515279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (n + 1) : ℝ) - Real.sin (n + 1 : ℝ) ^ 2)

end

end A208327.P6030275657136515279

namespace A208327

/-- `round(2*(n+1)-sin(n+1)²)` -/
def P6030275657136515279.Spec : Prop :=
  ∀ n, P6030275657136515279.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P14420067837424930649

`round(n+1+cos(n+1)²+n)`
-/

namespace A208327.P14420067837424930649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) + (Real.cos (n + 1 : ℝ) ^ 2 + (n : ℝ)))

end

end A208327.P14420067837424930649

namespace A208327

/-- `round(n+1+cos(n+1)²+n)` -/
def P14420067837424930649.Spec : Prop :=
  ∀ n, P14420067837424930649.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P4766859211232674622

`floor(2*(n+1)+cos(2*(n+1)))`
-/

namespace A208327.P4766859211232674622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℝ) + Real.cos (2 * (n + 1) : ℝ)⌋

end

end A208327.P4766859211232674622

namespace A208327

/-- `floor(2*(n+1)+cos(2*(n+1)))` -/
def P4766859211232674622.Spec : Prop :=
  ∀ n, P4766859211232674622.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P8910916884891523298

`ceil(cos(2*(n+1))+2*n+1)`
-/

namespace A208327.P8910916884891523298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 * (n + 1) : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A208327.P8910916884891523298

namespace A208327

/-- `ceil(cos(2*(n+1))+2*n+1)` -/
def P8910916884891523298.Spec : Prop :=
  ∀ n, P8910916884891523298.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P4026331053295684387

`round(n+1-sin(n+1)²)+n+1`
-/

namespace A208327.P4026331053295684387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.sin (n + 1 : ℝ) ^ 2) + (n + 1 : ℤ)

end

end A208327.P4026331053295684387

namespace A208327

/-- `round(n+1-sin(n+1)²)+n+1` -/
def P4026331053295684387.Spec : Prop :=
  ∀ n, P4026331053295684387.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P4012944216834086119

`2*(n+1)-A372456(n+1)`
-/

namespace A208327.P4012944216834086119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A372456 (n + 1)

end

end A208327.P4012944216834086119

namespace A208327

/-- `2*(n+1)-A372456(n+1)` -/
def P4012944216834086119.Spec : Prop :=
  ∀ n, P4012944216834086119.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P4465603911308166971

`A014681(A185392(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208327

/-- `A014681(A185392(n+1))` -/
def P4465603911308166971.Spec : Prop :=
  ∀ n, P4465603911308166971.a n = A208327 (n + 1)

theorem P4465603911308166971.correct : P4465603911308166971.Spec := by
  intro n
  simp only [A208327, Nat.add_sub_cancel]

end A208327

/-! ## A208327.P5910204127890349787

`A004767(n)-A185392(n+1)`
-/

namespace A208327.P5910204127890349787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A185392 (n + 1)

end

end A208327.P5910204127890349787

namespace A208327

/-- `A004767(n)-A185392(n+1)` -/
def P5910204127890349787.Spec : Prop :=
  ∀ n, P5910204127890349787.a n = A208327 (n + 1)

end A208327

/-! ## A208327.P4889599237260648136

`xor(A088837(n+1), A185392(n+1))`
-/

namespace A208327.P4889599237260648136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A185392 (n + 1))

end

end A208327.P4889599237260648136

namespace A208327

/-- `xor(A088837(n+1), A185392(n+1))` -/
def P4889599237260648136.Spec : Prop :=
  ∀ n, P4889599237260648136.a n = A208327 (n + 1)

end A208327

/-!
# A208328: Triangle of coefficients of polynomials u(n,x) jointly generated with A208329; see the Formula section.

The programs for A208328, the canonical program `A208328.P4969006876003085105` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208328 has offset 1).

The definition of A208328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208328.P4969006876003085105

`T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208328

/-- `T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P4969006876003085105.Spec : Prop :=
  ∀ n, P4969006876003085105.a n = A208328 (n + 1)

theorem P4969006876003085105.correct : P4969006876003085105.Spec := by
  intro n
  simp only [A208328, Nat.add_sub_cancel]

end A208328

/-! ## A208328.P11399055652064399149

`A125690(and(1, A099627(n))*A061579(n))`
-/

namespace A208328.P11399055652064399149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (Int.land 1 (A099627 n) * A061579 n).toNat

end

end A208328.P11399055652064399149

namespace A208328

/-- `A125690(and(1, A099627(n))*A061579(n))` -/
def P11399055652064399149.Spec : Prop :=
  ∀ n, P11399055652064399149.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P7493380142638100547

`A125690(A061579(n)^and(1, A099627(n)))`
-/

namespace A208328.P7493380142638100547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (Int.land 1 (A099627 n) : ℤ))).toNat

end

end A208328.P7493380142638100547

namespace A208328

/-- `A125690(A061579(n)^and(1, A099627(n)))` -/
def P7493380142638100547.Spec : Prop :=
  ∀ n, P7493380142638100547.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P16071844059776589745

`A125690(row(n)-2*col(n)+n)`
-/

namespace A208328.P16071844059776589745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + (n : ℤ)).toNat

end

end A208328.P16071844059776589745

namespace A208328

/-- `A125690(row(n)-2*col(n)+n)` -/
def P16071844059776589745.Spec : Prop :=
  ∀ n, P16071844059776589745.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P14439764268104015313

`A125690(A061579(n))`
-/

namespace A208328.P14439764268104015313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (A061579 n).toNat

end

end A208328.P14439764268104015313

namespace A208328

/-- `A125690(A061579(n))` -/
def P14439764268104015313.Spec : Prop :=
  ∀ n, P14439764268104015313.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P6759411817645299799

`A125690(A114327(n)+n)`
-/

namespace A208328.P6759411817645299799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (A114327 n + (n : ℤ)).toNat

end

end A208328.P6759411817645299799

namespace A208328

/-- `A125690(A114327(n)+n)` -/
def P6759411817645299799.Spec : Prop :=
  ∀ n, P6759411817645299799.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P11604431076794598004

`A125690(A038722(n+1)-1)`
-/

namespace A208328.P11604431076794598004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (A038722 (n + 1) - 1).toNat

end

end A208328.P11604431076794598004

namespace A208328

/-- `A125690(A038722(n+1)-1)` -/
def P11604431076794598004.Spec : Prop :=
  ∀ n, P11604431076794598004.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P5218808130842392487

`A125690(A002024(n+1)²-(n+1))`
-/

namespace A208328.P5218808130842392487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A208328.P5218808130842392487

namespace A208328

/-- `A125690(A002024(n+1)²-(n+1))` -/
def P5218808130842392487.Spec : Prop :=
  ∀ n, P5218808130842392487.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P5644216476654798013

`A125690(A023443(A038722(n+1)))`
-/

namespace A208328.P5644216476654798013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A208328.P5644216476654798013

namespace A208328

/-- `A125690(A023443(A038722(n+1)))` -/
def P5644216476654798013.Spec : Prop :=
  ∀ n, P5644216476654798013.a n = A208328 (n + 1)

end A208328

/-! ## A208328.P16581844803049394526

`A125690(A057944(n)+A025581(n))`
-/

namespace A208328.P16581844803049394526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (A057944 n + A025581 n).toNat

end

end A208328.P16581844803049394526

namespace A208328

/-- `A125690(A057944(n)+A025581(n))` -/
def P16581844803049394526.Spec : Prop :=
  ∀ n, P16581844803049394526.a n = A208328 (n + 1)

end A208328

/-!
# A208329: Triangle of coefficients of polynomials v(n,x) jointly generated with A208328; see the Formula section.

The programs for A208329, the canonical program `A208329.P17936995023935869565` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208329 has offset 1).

The definition of A208329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208329.P17936995023935869565

`T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208329

/-- `T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P17936995023935869565.Spec : Prop :=
  ∀ n, P17936995023935869565.a n = A208329 (n + 1)

theorem P17936995023935869565.correct : P17936995023935869565.Spec := by
  intro n
  simp only [A208329, Nat.add_sub_cancel]

end A208329

/-!
# A208330: Triangle of coefficients of polynomials u(n,x) jointly generated with A208331; see the Formula section.

The programs for A208330, the canonical program `A208330.P7218192348604956473` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208330 has offset 1).

The definition of A208330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208330.P7371641170832271206

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A208330.P7371641170832271206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n + 2 * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A208330.P7371641170832271206

namespace A208330

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P7371641170832271206.Spec : Prop :=
  ∀ n, P7371641170832271206.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P7218192348604956473

`A001045(col(n)+1)*C(row(n), col(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208330

/-- `A001045(col(n)+1)*C(row(n), col(n))` -/
def P7218192348604956473.Spec : Prop :=
  ∀ n, P7218192348604956473.a n = A208330 (n + 1)

theorem P7218192348604956473.correct : P7218192348604956473.Spec := by
  intro n
  simp only [A208330, Nat.add_sub_cancel]

end A208330

/-! ## A208330.P9983890223454130909

`A001045(col(n)+1)*A007318(n)`
-/

namespace A208330.P9983890223454130909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.triCol n + 1) * A007318 n

end

end A208330.P9983890223454130909

namespace A208330

/-- `A001045(col(n)+1)*A007318(n)` -/
def P9983890223454130909.Spec : Prop :=
  ∀ n, P9983890223454130909.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P13404258337089435429

`A001045(A002260(n+1))*A007318(n)`
-/

namespace A208330.P13404258337089435429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002260 (n + 1)).toNat * A007318 n

end

end A208330.P13404258337089435429

namespace A208330

/-- `A001045(A002260(n+1))*A007318(n)` -/
def P13404258337089435429.Spec : Prop :=
  ∀ n, P13404258337089435429.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P16956947730599243131

`A001045(A002262(n)+1)*A007318(n)`
-/

namespace A208330.P16956947730599243131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002262 n + 1).toNat * A007318 n

end

end A208330.P16956947730599243131

namespace A208330

/-- `A001045(A002262(n)+1)*A007318(n)` -/
def P16956947730599243131.Spec : Prop :=
  ∀ n, P16956947730599243131.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P3893048353326545103

`abs(A001045(A002260(n+1))*A130595(n))`
-/

namespace A208330.P3893048353326545103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001045 (A002260 (n + 1)).toNat * A130595 n|

end

end A208330.P3893048353326545103

namespace A208330

/-- `abs(A001045(A002260(n+1))*A130595(n))` -/
def P3893048353326545103.Spec : Prop :=
  ∀ n, P3893048353326545103.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P4203360251599242251

`Δ[A102363(n)]*A152046(A002260(n+1))`
-/

namespace A208330.P4203360251599242251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A152046 (A002260 (n + 1)).toNat

end

end A208330.P4203360251599242251

namespace A208330

/-- `Δ[A102363(n)]*A152046(A002260(n+1))` -/
def P4203360251599242251.Spec : Prop :=
  ∀ n, P4203360251599242251.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P4823784077366446920

`(A014473(n)+1)*A001045(A002260(n+1))`
-/

namespace A208330.P4823784077366446920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A001045 (A002260 (n + 1)).toNat

end

end A208330.P4823784077366446920

namespace A208330

/-- `(A014473(n)+1)*A001045(A002260(n+1))` -/
def P4823784077366446920.Spec : Prop :=
  ∀ n, P4823784077366446920.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P12549024051992891141

`A001045(A002260(n+1))/2*A028326(n)`
-/

namespace A208330.P12549024051992891141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (A002260 (n + 1)).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A208330.P12549024051992891141

namespace A208330

/-- `A001045(A002260(n+1))/2*A028326(n)` -/
def P12549024051992891141.Spec : Prop :=
  ∀ n, P12549024051992891141.a n = (A208330 (n + 1) : ℚ)

end A208330

/-! ## A208330.P5469266383127644690

`A001045(A097285(2*n+1))*A007318(n)`
-/

namespace A208330.P5469266383127644690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A097285 (2 * n + 1)).toNat * A007318 n

end

end A208330.P5469266383127644690

namespace A208330

/-- `A001045(A097285(2*n+1))*A007318(n)` -/
def P5469266383127644690.Spec : Prop :=
  ∀ n, P5469266383127644690.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P2140297244629012203

`Δ[A102363(n)]*A001045(A097285(2*n+1))`
-/

namespace A208330.P2140297244629012203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 (A097285 (2 * n + 1)).toNat

end

end A208330.P2140297244629012203

namespace A208330

/-- `Δ[A102363(n)]*A001045(A097285(2*n+1))` -/
def P2140297244629012203.Spec : Prop :=
  ∀ n, P2140297244629012203.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P10983220923916184313

`A007318(n)*A020946(A104763(n+1))`
-/

namespace A208330.P10983220923916184313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A020946 (A104763 (n + 1)).toNat

end

end A208330.P10983220923916184313

namespace A208330

/-- `A007318(n)*A020946(A104763(n+1))` -/
def P10983220923916184313.Spec : Prop :=
  ∀ n, P10983220923916184313.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P15785254810074249695

`A007318(n)*A145394(A059268(n))`
-/

namespace A208330.P15785254810074249695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A145394 (A059268 n).toNat

end

end A208330.P15785254810074249695

namespace A208330

/-- `A007318(n)*A145394(A059268(n))` -/
def P15785254810074249695.Spec : Prop :=
  ∀ n, P15785254810074249695.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P13892363503570194569

`A001045(A002260(n+1))*A004525(A124927(n))`
-/

namespace A208330.P13892363503570194569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002260 (n + 1)).toNat * A004525 (A124927 n).toNat

end

end A208330.P13892363503570194569

namespace A208330

/-- `A001045(A002260(n+1))*A004525(A124927(n))` -/
def P13892363503570194569.Spec : Prop :=
  ∀ n, P13892363503570194569.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P1597025314302190593

`A001045(A097285(2*n+1))*A110654(A028326(n))`
-/

namespace A208330.P1597025314302190593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A097285 (2 * n + 1)).toNat * A110654 (A028326 n).toNat

end

end A208330.P1597025314302190593

namespace A208330

/-- `A001045(A097285(2*n+1))*A110654(A028326(n))` -/
def P1597025314302190593.Spec : Prop :=
  ∀ n, P1597025314302190593.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P6366701931730386375

`abs(A004396(A059268(n))*A108086(n))`
-/

namespace A208330.P6366701931730386375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004396 (A059268 n).toNat * A108086 n|

end

end A208330.P6366701931730386375

namespace A208330

/-- `abs(A004396(A059268(n))*A108086(n))` -/
def P6366701931730386375.Spec : Prop :=
  ∀ n, P6366701931730386375.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P5326338703329061706

`abs(A004396(A059268(n))*A117440(n))`
-/

namespace A208330.P5326338703329061706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004396 (A059268 n).toNat * A117440 n|

end

end A208330.P5326338703329061706

namespace A208330

/-- `abs(A004396(A059268(n))*A117440(n))` -/
def P5326338703329061706.Spec : Prop :=
  ∀ n, P5326338703329061706.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P12737448669917503482

`abs(A004396(A059268(n))*A130595(n))`
-/

namespace A208330.P12737448669917503482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004396 (A059268 n).toNat * A130595 n|

end

end A208330.P12737448669917503482

namespace A208330

/-- `abs(A004396(A059268(n))*A130595(n))` -/
def P12737448669917503482.Spec : Prop :=
  ∀ n, P12737448669917503482.a n = A208330 (n + 1)

end A208330

/-! ## A208330.P6822960589541159742

`sqrt(A008459(n))*A004396(A059268(n))`
-/

namespace A208330.P6822960589541159742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A004396 (A059268 n).toNat : ℝ)

end

end A208330.P6822960589541159742

namespace A208330

/-- `sqrt(A008459(n))*A004396(A059268(n))` -/
def P6822960589541159742.Spec : Prop :=
  ∀ n, P6822960589541159742.a n = (A208330 (n + 1) : ℝ)

end A208330

/-! ## A208330.P9974926426037926527

`A028326(n)/2*A004396(A059268(n))`
-/

namespace A208330.P9974926426037926527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A004396 (A059268 n).toNat : ℚ)

end

end A208330.P9974926426037926527

namespace A208330

/-- `A028326(n)/2*A004396(A059268(n))` -/
def P9974926426037926527.Spec : Prop :=
  ∀ n, P9974926426037926527.a n = (A208330 (n + 1) : ℚ)

end A208330

/-!
# A208331: Triangle of coefficients of polynomials v(n,x) jointly generated with A208330; see the Formula section.

The programs for A208331, the canonical program `A208331.P11963942277638299517` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208331 has offset 1).

The definition of A208331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208331.P11963942277638299517

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208331

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)-T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P11963942277638299517.Spec : Prop :=
  ∀ n, P11963942277638299517.a n = A208331 (n + 1)

theorem P11963942277638299517.correct : P11963942277638299517.Spec := by
  intro n
  simp only [A208331, Nat.add_sub_cancel]

end A208331

/-! ## A208331.P5104895342494388947

`A001045(col(n)+2)*C(row(n), col(n))`
-/

namespace A208331.P5104895342494388947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.triCol n + 2) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A208331.P5104895342494388947

namespace A208331

/-- `A001045(col(n)+2)*C(row(n), col(n))` -/
def P5104895342494388947.Spec : Prop :=
  ∀ n, P5104895342494388947.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P5338589986649235062

`A007318(n)*A283642(A002262(n))`
-/

namespace A208331.P5338589986649235062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A283642 (A002262 n).toNat

end

end A208331.P5338589986649235062

namespace A208331

/-- `A007318(n)*A283642(A002262(n))` -/
def P5338589986649235062.Spec : Prop :=
  ∀ n, P5338589986649235062.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P16598236648833086922

`abs(A108086(n)*A283642(A002262(n)))`
-/

namespace A208331.P16598236648833086922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A283642 (A002262 n).toNat|

end

end A208331.P16598236648833086922

namespace A208331

/-- `abs(A108086(n)*A283642(A002262(n)))` -/
def P16598236648833086922.Spec : Prop :=
  ∀ n, P16598236648833086922.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P1297670373209922042

`abs(A130595(n)*A283642(A002262(n)))`
-/

namespace A208331.P1297670373209922042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A283642 (A002262 n).toNat|

end

end A208331.P1297670373209922042

namespace A208331

/-- `abs(A130595(n)*A283642(A002262(n)))` -/
def P1297670373209922042.Spec : Prop :=
  ∀ n, P1297670373209922042.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P12706086434435067917

`A007318(n)*A283642(log2(A059268(n)))`
-/

namespace A208331.P12706086434435067917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A283642 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A208331.P12706086434435067917

namespace A208331

/-- `A007318(n)*A283642(log2(A059268(n)))` -/
def P12706086434435067917.Spec : Prop :=
  ∀ n, P12706086434435067917.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P1933450177481345960

`A001045(A002262(n)+2)*A007318(n)`
-/

namespace A208331.P1933450177481345960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002262 n + 2).toNat * A007318 n

end

end A208331.P1933450177481345960

namespace A208331

/-- `A001045(A002262(n)+2)*A007318(n)` -/
def P1933450177481345960.Spec : Prop :=
  ∀ n, P1933450177481345960.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P8718887822460498622

`A001045(A002260(n+1)+1)*A007318(n)`
-/

namespace A208331.P8718887822460498622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A002260 (n + 1) + 1).toNat * A007318 n

end

end A208331.P8718887822460498622

namespace A208331

/-- `A001045(A002260(n+1)+1)*A007318(n)` -/
def P8718887822460498622.Spec : Prop :=
  ∀ n, P8718887822460498622.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P17223118865965838142

`A007318(n)*A167167(A002260(n+1)+1)`
-/

namespace A208331.P17223118865965838142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A167167 (A002260 (n + 1) + 1).toNat

end

end A208331.P17223118865965838142

namespace A208331

/-- `A007318(n)*A167167(A002260(n+1)+1)` -/
def P17223118865965838142.Spec : Prop :=
  ∀ n, P17223118865965838142.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P9871366664248341034

`(A014473(n)+1)*A001045(A002260(n+1)+1)`
-/

namespace A208331.P9871366664248341034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A001045 (A002260 (n + 1) + 1).toNat

end

end A208331.P9871366664248341034

namespace A208331

/-- `(A014473(n)+1)*A001045(A002260(n+1)+1)` -/
def P9871366664248341034.Spec : Prop :=
  ∀ n, P9871366664248341034.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P8135205366849225171

`A007318(n)*A020946(A193588(n))`
-/

namespace A208331.P8135205366849225171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A020946 (A193588 n).toNat

end

end A208331.P8135205366849225171

namespace A208331

/-- `A007318(n)*A020946(A193588(n))` -/
def P8135205366849225171.Spec : Prop :=
  ∀ n, P8135205366849225171.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P9235202251268199875

`A007318(n)*A006369(A059268(n))`
-/

namespace A208331.P9235202251268199875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A006369 (A059268 n).toNat

end

end A208331.P9235202251268199875

namespace A208331

/-- `A007318(n)*A006369(A059268(n))` -/
def P9235202251268199875.Spec : Prop :=
  ∀ n, P9235202251268199875.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P16482800585134197431

`abs(A006369(A059268(n))*A108086(n))`
-/

namespace A208331.P16482800585134197431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006369 (A059268 n).toNat * A108086 n|

end

end A208331.P16482800585134197431

namespace A208331

/-- `abs(A006369(A059268(n))*A108086(n))` -/
def P16482800585134197431.Spec : Prop :=
  ∀ n, P16482800585134197431.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P3367500048523657317

`Δ[A102363(n)]*A006369(A059268(n))`
-/

namespace A208331.P3367500048523657317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006369 (A059268 n).toNat

end

end A208331.P3367500048523657317

namespace A208331

/-- `Δ[A102363(n)]*A006369(A059268(n))` -/
def P3367500048523657317.Spec : Prop :=
  ∀ n, P3367500048523657317.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P5316349497193424594

`A007318(n)*A145394(2*A059268(n))`
-/

namespace A208331.P5316349497193424594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A145394 (2 * A059268 n).toNat

end

end A208331.P5316349497193424594

namespace A208331

/-- `A007318(n)*A145394(2*A059268(n))` -/
def P5316349497193424594.Spec : Prop :=
  ∀ n, P5316349497193424594.a n = A208331 (n + 1)

end A208331

/-! ## A208331.P4108051619671914574

`A004396(2*A059268(n))*A007318(n)`
-/

namespace A208331.P4108051619671914574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A059268 n).toNat * A007318 n

end

end A208331.P4108051619671914574

namespace A208331

/-- `A004396(2*A059268(n))*A007318(n)` -/
def P4108051619671914574.Spec : Prop :=
  ∀ n, P4108051619671914574.a n = A208331 (n + 1)

end A208331

/-!
# A208332: Triangle of coefficients of polynomials u(n,x) jointly generated with A208333; see the Formula section.

The programs for A208332, the canonical program `A208332.P11389968046648145107` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208332 has offset 1).

The definition of A208332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208332.P11389968046648145107

`T(n-1,k)+2*T(n-1,k-1)-2*T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208332

/-- `T(n-1,k)+2*T(n-1,k-1)-2*T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P11389968046648145107.Spec : Prop :=
  ∀ n, P11389968046648145107.a n = A208332 (n + 1)

theorem P11389968046648145107.correct : P11389968046648145107.Spec := by
  intro n
  simp only [A208332, Nat.add_sub_cancel]

end A208332

/-! ## A208332.P12110812738550257743

`2*A208757(n+1)-A208910(n+1)`
-/

namespace A208332.P12110812738550257743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208757 (n + 1) - A208910 (n + 1)

end

end A208332.P12110812738550257743

namespace A208332

/-- `2*A208757(n+1)-A208910(n+1)` -/
def P12110812738550257743.Spec : Prop :=
  ∀ n, P12110812738550257743.a n = A208332 (n + 1)

end A208332

/-! ## A208332.P14238173432994524245

`A208757(n+1)+A208758(n+1)-A208333(n+1)`
-/

namespace A208332.P14238173432994524245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) + (A208758 (n + 1) - A208333 (n + 1))

end

end A208332.P14238173432994524245

namespace A208332

/-- `A208757(n+1)+A208758(n+1)-A208333(n+1)` -/
def P14238173432994524245.Spec : Prop :=
  ∀ n, P14238173432994524245.a n = A208332 (n + 1)

end A208332

/-! ## A208332.P8514928645275202963

`A208757(n+1)+A208910(n+1)-A208527(n+1)`
-/

namespace A208332.P8514928645275202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) + (A208910 (n + 1) - A208527 (n + 1))

end

end A208332.P8514928645275202963

namespace A208332

/-- `A208757(n+1)+A208910(n+1)-A208527(n+1)` -/
def P8514928645275202963.Spec : Prop :=
  ∀ n, P8514928645275202963.a n = A208332 (n + 1)

end A208332

/-! ## A208332.P1034509627823820

`A208910(n+1)-A005843(A208527(n+1)-A208910(n+1))`
-/

namespace A208332.P1034509627823820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) - A005843 (A208527 (n + 1) - A208910 (n + 1)).toNat

end

end A208332.P1034509627823820

namespace A208332

/-- `A208910(n+1)-A005843(A208527(n+1)-A208910(n+1))` -/
def P1034509627823820.Spec : Prop :=
  ∀ n, P1034509627823820.a n = A208332 (n + 1)

end A208332

/-! ## A208332.P14092193312814007132

`A208910(n+1)-A005843(A208910(n+1)-A208757(n+1))`
-/

namespace A208332.P14092193312814007132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 1) - A005843 (A208910 (n + 1) - A208757 (n + 1)).toNat

end

end A208332.P14092193312814007132

namespace A208332

/-- `A208910(n+1)-A005843(A208910(n+1)-A208757(n+1))` -/
def P14092193312814007132.Spec : Prop :=
  ∀ n, P14092193312814007132.a n = A208332 (n + 1)

end A208332

/-! ## A208332.P4631604098145610631

`A005843(A208757(n+1))-A208910(n+1)`
-/

namespace A208332.P4631604098145610631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208757 (n + 1)).toNat - A208910 (n + 1)

end

end A208332.P4631604098145610631

namespace A208332

/-- `A005843(A208757(n+1))-A208910(n+1)` -/
def P4631604098145610631.Spec : Prop :=
  ∀ n, P4631604098145610631.a n = A208332 (n + 1)

end A208332

/-!
# A208333: Triangle of coefficients of polynomials v(n,x) jointly generated with A208332; see the Formula section.

The programs for A208333, the canonical program `A208333.P4585329400563986752` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208333 has offset 1).

The definition of A208333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208333.P4585329400563986752

`T(n-1,k)+2*T(n-1,k-1)-2*T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208333

/-- `T(n-1,k)+2*T(n-1,k-1)-2*T(n-2,k-1)+2*T(row(n)-2, col(n)-2)` -/
def P4585329400563986752.Spec : Prop :=
  ∀ n, P4585329400563986752.a n = A208333 (n + 1)

theorem P4585329400563986752.correct : P4585329400563986752.Spec := by
  intro n
  simp only [A208333, Nat.add_sub_cancel]

end A208333

/-! ## A208333.P319730794704937352

`A208527(n)+A208758(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A208333.P319730794704937352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208527 n + (A208758 (n + 1) - a (n - 1))

end

end A208333.P319730794704937352

namespace A208333

/-- `A208527(n)+A208758(n+1)-a(n-1)` -/
def P319730794704937352.Spec : Prop :=
  ∀ n, P319730794704937352.a n = A208333 (n + 1)

end A208333

/-! ## A208333.P14736426391600222901

`A208757(n+1)+A208758(n+1)-A208332(n+1)`
-/

namespace A208333.P14736426391600222901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) + (A208758 (n + 1) - A208332 (n + 1))

end

end A208333.P14736426391600222901

namespace A208333

/-- `A208757(n+1)+A208758(n+1)-A208332(n+1)` -/
def P14736426391600222901.Spec : Prop :=
  ∀ n, P14736426391600222901.a n = A208333 (n + 1)

end A208333

/-! ## A208333.P16705056217166938762

`A208527(n+1)+A208758(n+1)-A208910(n+1)`
-/

namespace A208333.P16705056217166938762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208527 (n + 1) + (A208758 (n + 1) - A208910 (n + 1))

end

end A208333.P16705056217166938762

namespace A208333

/-- `A208527(n+1)+A208758(n+1)-A208910(n+1)` -/
def P16705056217166938762.Spec : Prop :=
  ∀ n, P16705056217166938762.a n = A208333 (n + 1)

end A208333

/-! ## A208333.P11020671491765038235

`A208758(n+1)+A208910(n+1)-A208757(n+1)`
-/

namespace A208333.P11020671491765038235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208758 (n + 1) + (A208910 (n + 1) - A208757 (n + 1))

end

end A208333.P11020671491765038235

namespace A208333

/-- `A208758(n+1)+A208910(n+1)-A208757(n+1)` -/
def P11020671491765038235.Spec : Prop :=
  ∀ n, P11020671491765038235.a n = A208333 (n + 1)

end A208333

/-! ## A208333.P1781752419398723831

`A208910(n+2)-Δ[A208527(n+1)]`
-/

namespace A208333.P1781752419398723831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208910 (n + 2) - (f1 (n + 1) - f1 n)

end

end A208333.P1781752419398723831

namespace A208333

/-- `A208910(n+2)-Δ[A208527(n+1)]` -/
def P1781752419398723831.Spec : Prop :=
  ∀ n, P1781752419398723831.a n = A208333 (n + 1)

end A208333

/-!
# A208334: Triangle of coefficients of polynomials u(n,x) jointly generated with A208335; see the Formula section.

The programs for A208334, the canonical program `A208334.P11090046264221017129` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208334 has offset 1).

The definition of A208334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208334.P11090046264221017129

`2*T(n-1,k)-T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208334

/-- `2*T(n-1,k)-T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P11090046264221017129.Spec : Prop :=
  ∀ n, P11090046264221017129.a n = A208334 (n + 1)

theorem P11090046264221017129.correct : P11090046264221017129.Spec := by
  intro n
  simp only [A208334, Nat.add_sub_cancel]

end A208334

/-! ## A208334.P11621205318341245199

`A209415(A007401(n+1)-A056944(n))`
-/

namespace A208334.P11621205318341245199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209415 (A007401 (n + 1) - A056944 n).toNat

end

end A208334.P11621205318341245199

namespace A208334

/-- `A209415(A007401(n+1)-A056944(n))` -/
def P11621205318341245199.Spec : Prop :=
  ∀ n, P11621205318341245199.a n = A208334 (n + 1)

end A208334

/-! ## A208334.P2039438976669183465

`A209415(A038722(1+n))`
-/

namespace A208334.P2039438976669183465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209415 (A038722 (1 + n)).toNat

end

end A208334.P2039438976669183465

namespace A208334

/-- `A209415(A038722(1+n))` -/
def P2039438976669183465.Spec : Prop :=
  ∀ n, P2039438976669183465.a n = A208334 (n + 1)

end A208334

/-! ## A208334.P5736264908288241040

`A209415(A061579(n)+1)`
-/

namespace A208334.P5736264908288241040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209415 (A061579 n + 1).toNat

end

end A208334.P5736264908288241040

namespace A208334

/-- `A209415(A061579(n)+1)` -/
def P5736264908288241040.Spec : Prop :=
  ∀ n, P5736264908288241040.a n = A208334 (n + 1)

end A208334

/-! ## A208334.P9352330856918633542

`A209415(A114327(n)+1+n)`
-/

namespace A208334.P9352330856918633542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209415 (A114327 n + 1 + (n : ℤ)).toNat

end

end A208334.P9352330856918633542

namespace A208334

/-- `A209415(A114327(n)+1+n)` -/
def P9352330856918633542.Spec : Prop :=
  ∀ n, P9352330856918633542.a n = A208334 (n + 1)

end A208334

/-! ## A208334.P1212976184599396132

`A209415(A093995(n+1)-n)`
-/

namespace A208334.P1212976184599396132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209415 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A208334.P1212976184599396132

namespace A208334

/-- `A209415(A093995(n+1)-n)` -/
def P1212976184599396132.Spec : Prop :=
  ∀ n, P1212976184599396132.a n = A208334 (n + 1)

end A208334

/-! ## A208334.P7459274979165262928

`A209415(A002024(n+1)²-n)`
-/

namespace A208334.P7459274979165262928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209415 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A208334.P7459274979165262928

namespace A208334

/-- `A209415(A002024(n+1)²-n)` -/
def P7459274979165262928.Spec : Prop :=
  ∀ n, P7459274979165262928.a n = A208334 (n + 1)

end A208334

/-!
# A208335: Triangle of coefficients of polynomials v(n,x) jointly generated with A208834; see the Formula section.

The programs for A208335, the canonical program `A208335.P16803878153891047374` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208335 has offset 1).

The definition of A208335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208335.P16803878153891047374

`2*T(n-1,k)-T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208335

/-- `2*T(n-1,k)-T(n-2,k)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P16803878153891047374.Spec : Prop :=
  ∀ n, P16803878153891047374.a n = A208335 (n + 1)

theorem P16803878153891047374.correct : P16803878153891047374.Spec := by
  intro n
  simp only [A208335, Nat.add_sub_cancel]

end A208335

/-! ## A208335.P4300883511935431147

`A209416(row(n)*(row(n)+3)/2-col(n)+1)`
-/

namespace A208335.P4300883511935431147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209416 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ) + 1)).toNat

end

end A208335.P4300883511935431147

namespace A208335

/-- `A209416(row(n)*(row(n)+3)/2-col(n)+1)` -/
def P4300883511935431147.Spec : Prop :=
  ∀ n, P4300883511935431147.a n = A208335 (n + 1)

end A208335

/-! ## A208335.P2921483787152104717

`A209416(A038722(n+1))`
-/

namespace A208335.P2921483787152104717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209416 (A038722 (n + 1)).toNat

end

end A208335.P2921483787152104717

namespace A208335

/-- `A209416(A038722(n+1))` -/
def P2921483787152104717.Spec : Prop :=
  ∀ n, P2921483787152104717.a n = A208335 (n + 1)

end A208335

/-! ## A208335.P13928691986539732360

`A209416(A061579(n)+1)`
-/

namespace A208335.P13928691986539732360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209416 (A061579 n + 1).toNat

end

end A208335.P13928691986539732360

namespace A208335

/-- `A209416(A061579(n)+1)` -/
def P13928691986539732360.Spec : Prop :=
  ∀ n, P13928691986539732360.a n = A208335 (n + 1)

end A208335

/-! ## A208335.P17975946150120144170

`A209416(A114327(n)+1+n)`
-/

namespace A208335.P17975946150120144170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209416 (A114327 n + 1 + (n : ℤ)).toNat

end

end A208335.P17975946150120144170

namespace A208335

/-- `A209416(A114327(n)+1+n)` -/
def P17975946150120144170.Spec : Prop :=
  ∀ n, P17975946150120144170.a n = A208335 (n + 1)

end A208335

/-! ## A208335.P10423499998093128188

`A209416(A093995(n+1)-n)`
-/

namespace A208335.P10423499998093128188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209416 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A208335.P10423499998093128188

namespace A208335

/-- `A209416(A093995(n+1)-n)` -/
def P10423499998093128188.Spec : Prop :=
  ∀ n, P10423499998093128188.a n = A208335 (n + 1)

end A208335

/-! ## A208335.P5617318004028251459

`A209416(A002024(n+1)²-n)`
-/

namespace A208335.P5617318004028251459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209416 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A208335.P5617318004028251459

namespace A208335

/-- `A209416(A002024(n+1)²-n)` -/
def P5617318004028251459.Spec : Prop :=
  ∀ n, P5617318004028251459.a n = A208335 (n + 1)

end A208335

/-!
# A208337: Triangle of coefficients of polynomials v(n,x) jointly generated with A208836; see the Formula section.

The programs for A208337, the canonical program `A208337.P4191870487629229909` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208337 has offset 1).

The definition of A208337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208337.P4191870487629229909

`T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208337

/-- `T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)` -/
def P4191870487629229909.Spec : Prop :=
  ∀ n, (P4191870487629229909.a n : ℤ) = A208337 (n + 1)

theorem P4191870487629229909.correct : P4191870487629229909.Spec := by
  intro n
  simp only [A208337, Nat.add_sub_cancel]

end A208337

/-! ## A208337.P385875035912213884

`T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A208337.P385875035912213884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A208337.P385875035912213884

namespace A208337

/-- `T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)` -/
def P385875035912213884.Spec : Prop :=
  ∀ n, (P385875035912213884.a n : ℤ) = A208337 (n + 1)

end A208337

/-! ## A208337.P789683669082898699

`A122075(A061579(n))`
-/

namespace A208337.P789683669082898699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A061579 n).toNat

end

end A208337.P789683669082898699

namespace A208337

/-- `A122075(A061579(n))` -/
def P789683669082898699.Spec : Prop :=
  ∀ n, P789683669082898699.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P5899964742019672902

`A122075(A114327(n)+n)`
-/

namespace A208337.P5899964742019672902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A114327 n + (n : ℤ)).toNat

end

end A208337.P5899964742019672902

namespace A208337

/-- `A122075(A114327(n)+n)` -/
def P5899964742019672902.Spec : Prop :=
  ∀ n, P5899964742019672902.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P15639274187021056356

`A122075(∑[A198954(n)-1])`
-/

namespace A208337.P15639274187021056356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208337.P15639274187021056356

namespace A208337

/-- `A122075(∑[A198954(n)-1])` -/
def P15639274187021056356.Spec : Prop :=
  ∀ n, P15639274187021056356.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P7515162136805940616

`A122075(A038722(n+1)-1)`
-/

namespace A208337.P7515162136805940616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A038722 (n + 1) - 1).toNat

end

end A208337.P7515162136805940616

namespace A208337

/-- `A122075(A038722(n+1)-1)` -/
def P7515162136805940616.Spec : Prop :=
  ∀ n, P7515162136805940616.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P4557065797700888147

`A122075(A093995(n+1)-(n+1))`
-/

namespace A208337.P4557065797700888147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122075 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A208337.P4557065797700888147

namespace A208337

/-- `A122075(A093995(n+1)-(n+1))` -/
def P4557065797700888147.Spec : Prop :=
  ∀ n, P4557065797700888147.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P6968991070690024498

`A155161(A038722(n+1))+A038137(n)`
-/

namespace A208337.P6968991070690024498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A038722 (n + 1)).toNat + A038137 n

end

end A208337.P6968991070690024498

namespace A208337

/-- `A155161(A038722(n+1))+A038137(n)` -/
def P6968991070690024498.Spec : Prop :=
  ∀ n, P6968991070690024498.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P10792131849957128549

`A155161(A061579(n)+1)+A038137(n)`
-/

namespace A208337.P10792131849957128549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A061579 n + 1).toNat + A038137 n

end

end A208337.P10792131849957128549

namespace A208337

/-- `A155161(A061579(n)+1)+A038137(n)` -/
def P10792131849957128549.Spec : Prop :=
  ∀ n, P10792131849957128549.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P16772010217403580412

`A055830(A099375(n)+n)`
-/

namespace A208337.P16772010217403580412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A099375 n + (n : ℤ)).toNat

end

end A208337.P16772010217403580412

namespace A208337

/-- `A055830(A099375(n)+n)` -/
def P16772010217403580412.Spec : Prop :=
  ∀ n, P16772010217403580412.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P16547919004085830932

`A055830(A007401(A038722(n+1)))`
-/

namespace A208337.P16547919004085830932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A007401 (A038722 (n + 1)).toNat).toNat

end

end A208337.P16547919004085830932

namespace A208337

/-- `A055830(A007401(A038722(n+1)))` -/
def P16547919004085830932.Spec : Prop :=
  ∀ n, P16547919004085830932.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P13607039694282043035

`A055830(A061579(A014132(n+1)))`
-/

namespace A208337.P13607039694282043035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A061579 (A014132 (n + 1)).toNat).toNat

end

end A208337.P13607039694282043035

namespace A208337

/-- `A055830(A061579(A014132(n+1)))` -/
def P13607039694282043035.Spec : Prop :=
  ∀ n, P13607039694282043035.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P16595539427793993674

`A055830(A038722(n+1)+A003056(n))`
-/

namespace A208337.P16595539427793993674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A038722 (n + 1) + A003056 n).toNat

end

end A208337.P16595539427793993674

namespace A208337

/-- `A055830(A038722(n+1)+A003056(n))` -/
def P16595539427793993674.Spec : Prop :=
  ∀ n, P16595539427793993674.a n = A208337 (n + 1)

end A208337

/-! ## A208337.P1120558146604932571

`A055830(A061579(n)+A002024(n+1))`
-/

namespace A208337.P1120558146604932571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A061579 n + A002024 (n + 1)).toNat

end

end A208337.P1120558146604932571

namespace A208337

/-- `A055830(A061579(n)+A002024(n+1))` -/
def P1120558146604932571.Spec : Prop :=
  ∀ n, P1120558146604932571.a n = A208337 (n + 1)

end A208337

/-!
# A208338: Triangle of coefficients of polynomials u(n,x) jointly generated with A208339; see the Formula section.

The programs for A208338, the canonical program `A208338.P17353886201709775330` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208338 has offset 1).

The definition of A208338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208338.P17353886201709775330

`T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208338

/-- `T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P17353886201709775330.Spec : Prop :=
  ∀ n, P17353886201709775330.a n = A208338 (n + 1)

theorem P17353886201709775330.correct : P17353886201709775330.Spec := by
  intro n
  simp only [A208338, Nat.add_sub_cancel]

end A208338

/-! ## A208338.P12947044258076395512

`2*A210557(n+1)-A208339(n+1)`
-/

namespace A208338.P12947044258076395512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210557 (n + 1) - A208339 (n + 1)

end

end A208338.P12947044258076395512

namespace A208338

/-- `2*A210557(n+1)-A208339(n+1)` -/
def P12947044258076395512.Spec : Prop :=
  ∀ n, P12947044258076395512.a n = A208338 (n + 1)

end A208338

/-! ## A208338.P8964995847326664750

`A210558(A271439(n)+A010054(n))`
-/

namespace A208338.P8964995847326664750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210558 (A271439 n + A010054 n).toNat

end

end A208338.P8964995847326664750

namespace A208338

/-- `A210558(A271439(n)+A010054(n))` -/
def P8964995847326664750.Spec : Prop :=
  ∀ n, P8964995847326664750.a n = A208338 (n + 1)

end A208338

/-! ## A208338.P1879386037569026810

`A210558(or(A010054(n), A271439(n)))`
-/

namespace A208338.P1879386037569026810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210558 (Int.lor (A010054 n) (A271439 n)).toNat

end

end A208338.P1879386037569026810

namespace A208338

/-- `A210558(or(A010054(n), A271439(n)))` -/
def P1879386037569026810.Spec : Prop :=
  ∀ n, P1879386037569026810.a n = A208338 (n + 1)

end A208338

/-! ## A208338.P9804477794141879834

`A210558(xor(A010054(n), A271439(n)))`
-/

namespace A208338.P9804477794141879834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210558 (Int.xor (A010054 n) (A271439 n)).toNat

end

end A208338.P9804477794141879834

namespace A208338

/-- `A210558(xor(A010054(n), A271439(n)))` -/
def P9804477794141879834.Spec : Prop :=
  ∀ n, P9804477794141879834.a n = A208338 (n + 1)

end A208338

/-! ## A208338.P3292901818092621715

`A208339(n+1)+A209152(n+1)-A210558(n+1)`
-/

namespace A208338.P3292901818092621715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208339 (n + 1) + (A209152 (n + 1) - A210558 (n + 1))

end

end A208338.P3292901818092621715

namespace A208338

/-- `A208339(n+1)+A209152(n+1)-A210558(n+1)` -/
def P3292901818092621715.Spec : Prop :=
  ∀ n, P3292901818092621715.a n = A208338 (n + 1)

theorem P3292901818092621715.correct : P3292901818092621715.Spec := by
  intro n
  simp only [A208338, Nat.add_sub_cancel, A208338.P3292901818092621715.a, A208338.P17353886201709775330.a, A208339, A208339.P11994109951258822282.a, A209152, A209152.P4089763024179772782.a, A210558, A210558.P4704576739762523871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208338

/-! ## A208338.P11107886630974426104

`round(sqrt((a(n-1)-A209152(n))²+1))` with `a(0)=1`
-/

namespace A208338.P11107886630974426104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((a (n - 1) - A209152 n) ^ 2 + 1 : ℝ))

end

end A208338.P11107886630974426104

namespace A208338

/-- `round(sqrt((a(n-1)-A209152(n))²+1))` -/
def P11107886630974426104.Spec : Prop :=
  ∀ n, P11107886630974426104.a n = A208338 (n + 1)

end A208338

/-! ## A208338.P15029097392896896390

`A004277(A210557(n+1))-A208339(n+1)`
-/

namespace A208338.P15029097392896896390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210557 (n + 1)).toNat - A208339 (n + 1)

end

end A208338.P15029097392896896390

namespace A208338

/-- `A004277(A210557(n+1))-A208339(n+1)` -/
def P15029097392896896390.Spec : Prop :=
  ∀ n, P15029097392896896390.a n = A208338 (n + 1)

end A208338

/-!
# A208339: Triangle of coefficients of polynomials v(n,x) jointly generated with A208838; see the Formula section.

The programs for A208339, the canonical program `A208339.P11994109951258822282` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208339 has offset 1).

The definition of A208339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208339.P11994109951258822282

`T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208339

/-- `T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P11994109951258822282.Spec : Prop :=
  ∀ n, P11994109951258822282.a n = A208339 (n + 1)

theorem P11994109951258822282.correct : P11994109951258822282.Spec := by
  intro n
  simp only [A208339, Nat.add_sub_cancel]

end A208339

/-! ## A208339.P1564541346384519319

`(A209129(n+1)+A208611(n+1))/2`
-/

namespace A208339.P1564541346384519319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209129 (n + 1) + A208611 (n + 1) : ℚ) / 2

end

end A208339.P1564541346384519319

namespace A208339

/-- `(A209129(n+1)+A208611(n+1))/2` -/
def P1564541346384519319.Spec : Prop :=
  ∀ n, P1564541346384519319.a n = (A208339 (n + 1) : ℚ)

theorem P1564541346384519319.correct : P1564541346384519319.Spec := by
  intro n
  simp only [A208339, Nat.add_sub_cancel, A208339.P1564541346384519319.a, A208339.P11994109951258822282.a, A208611, A208611.P15995575520268450885.a, A209129, A209129.P5779824986213914757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208339

/-! ## A208339.P13465839228736457494

`2*A210557(n+1)-A208338(n+1)`
-/

namespace A208339.P13465839228736457494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210557 (n + 1) - A208338 (n + 1)

end

end A208339.P13465839228736457494

namespace A208339

/-- `2*A210557(n+1)-A208338(n+1)` -/
def P13465839228736457494.Spec : Prop :=
  ∀ n, P13465839228736457494.a n = A208339 (n + 1)

end A208339

/-! ## A208339.P3437797666534420272

`A208338(n+1)+A210558(n+1)-A209152(n+1)`
-/

namespace A208339.P3437797666534420272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208338 (n + 1) + (A210558 (n + 1) - A209152 (n + 1))

end

end A208339.P3437797666534420272

namespace A208339

/-- `A208338(n+1)+A210558(n+1)-A209152(n+1)` -/
def P3437797666534420272.Spec : Prop :=
  ∀ n, P3437797666534420272.a n = A208339 (n + 1)

theorem P3437797666534420272.correct : P3437797666534420272.Spec := by
  intro n
  simp only [A208339, Nat.add_sub_cancel, A208339.P3437797666534420272.a, A208339.P11994109951258822282.a, A208338, A208338.P17353886201709775330.a, A209152, A209152.P4089763024179772782.a, A210558, A210558.P4704576739762523871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208339

/-! ## A208339.P1542866631069490661

`(A208611(n+1)+A209128(n+2)-Δ[A208611(n+1)])/2`
-/

namespace A208339.P1542866631069490661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208611 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208611 (n + 1) + (A209128 (n + 2) - (f1 (n + 1) - f1 n)) : ℚ) / 2

end

end A208339.P1542866631069490661

namespace A208339

/-- `(A208611(n+1)+A209128(n+2)-Δ[A208611(n+1)])/2` -/
def P1542866631069490661.Spec : Prop :=
  ∀ n, P1542866631069490661.a n = (A208339 (n + 1) : ℚ)

end A208339

/-! ## A208339.P5071116101797950310

`A004277(A210557(n+1))-A208338(n+1)`
-/

namespace A208339.P5071116101797950310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210557 (n + 1)).toNat - A208338 (n + 1)

end

end A208339.P5071116101797950310

namespace A208339

/-- `A004277(A210557(n+1))-A208338(n+1)` -/
def P5071116101797950310.Spec : Prop :=
  ∀ n, P5071116101797950310.a n = A208339 (n + 1)

end A208339

/-!
# A208340: Triangle of coefficients of polynomials v(n,x) jointly generated with A202390; see the Formula section.

The programs for A208340, the canonical program `A208340.P5281325841899943993` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208340 has offset 1).

The definition of A208340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208340.P5281325841899943993

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208340

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(row(n)-2, col(n)-2)` -/
def P5281325841899943993.Spec : Prop :=
  ∀ n, P5281325841899943993.a n = A208340 (n + 1)

theorem P5281325841899943993.correct : P5281325841899943993.Spec := by
  intro n
  simp only [A208340, Nat.add_sub_cancel]

end A208340

/-! ## A208340.P6732292553444624559

`A209420(A038722(n+1))`
-/

namespace A208340.P6732292553444624559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (A038722 (n + 1)).toNat

end

end A208340.P6732292553444624559

namespace A208340

/-- `A209420(A038722(n+1))` -/
def P6732292553444624559.Spec : Prop :=
  ∀ n, P6732292553444624559.a n = A208340 (n + 1)

end A208340

/-! ## A208340.P1995331918395999861

`A209420(A061579(n)+1)`
-/

namespace A208340.P1995331918395999861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (A061579 n + 1).toNat

end

end A208340.P1995331918395999861

namespace A208340

/-- `A209420(A061579(n)+1)` -/
def P1995331918395999861.Spec : Prop :=
  ∀ n, P1995331918395999861.a n = A208340 (n + 1)

end A208340

/-! ## A208340.P7341052086944387407

`A209420(A114327(n)+1+n)`
-/

namespace A208340.P7341052086944387407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (A114327 n + 1 + (n : ℤ)).toNat

end

end A208340.P7341052086944387407

namespace A208340

/-- `A209420(A114327(n)+1+n)` -/
def P7341052086944387407.Spec : Prop :=
  ∀ n, P7341052086944387407.a n = A208340 (n + 1)

end A208340

/-! ## A208340.P18050685160446851342

`A209420(A093995(n+1)-n)`
-/

namespace A208340.P18050685160446851342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A208340.P18050685160446851342

namespace A208340

/-- `A209420(A093995(n+1)-n)` -/
def P18050685160446851342.Spec : Prop :=
  ∀ n, P18050685160446851342.a n = A208340 (n + 1)

end A208340

/-! ## A208340.P14351362649035187548

`A209420(A002024(n+1)²-n)`
-/

namespace A208340.P14351362649035187548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A208340.P14351362649035187548

namespace A208340

/-- `A209420(A002024(n+1)²-n)` -/
def P14351362649035187548.Spec : Prop :=
  ∀ n, P14351362649035187548.a n = A208340 (n + 1)

end A208340

/-!
# A208341: Triangle read by rows, T(n,k) = hypergeometric_2F1([n-k+1, -k], [1], -1) for n>=0 and k>=0.

The programs for A208341, the canonical program `A208341.P16541214995392684149` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208341 has offset 0).

The definition of A208341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208341.P16541214995392684149

`T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208341

/-- `T(n-1,k)+2*T(n-1,k-1)-T(n-2,k-1)` -/
def P16541214995392684149.Spec : Prop :=
  ∀ n, P16541214995392684149.a n = A208341 n

theorem P16541214995392684149.correct : P16541214995392684149.Spec := by
  intro n
  simp only [A208341]

end A208341

/-! ## A208341.P6743452482687162652

`2*T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A208341.P6743452482687162652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n

end

end A208341.P6743452482687162652

namespace A208341

/-- `2*T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` -/
def P6743452482687162652.Spec : Prop :=
  ∀ n, P6743452482687162652.a n = A208341 n

end A208341

/-! ## A208341.P12957373340442599316

`T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A208341.P12957373340442599316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A208341.P12957373340442599316

namespace A208341

/-- `T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P12957373340442599316.Spec : Prop :=
  ∀ n, P12957373340442599316.a n = A208341 n

end A208341

/-! ## A208341.P6542449686365291826

`T(n-2,k-1)+T(n-2,k)+2*T(n-1,k-1)-T(row(n)-3, col(n)-1)` with `a(0)=1, a(1)=1`
-/

namespace A208341.P6542449686365291826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp2 a n + 2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 3) ((SequenceMachineLib.triCol n : ℤ) - 1)

end

end A208341.P6542449686365291826

namespace A208341

/-- `T(n-2,k-1)+T(n-2,k)+2*T(n-1,k-1)-T(row(n)-3, col(n)-1)` -/
def P6542449686365291826.Spec : Prop :=
  ∀ n, P6542449686365291826.a n = A208341 n

end A208341

/-! ## A208341.P8653305738086609632

`A121462(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A208341.P8653305738086609632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121462 (n + 1) + SequenceMachineLib.triUp a n

end

end A208341.P8653305738086609632

namespace A208341

/-- `A121462(n+1)+T(n-1,k)` -/
def P8653305738086609632.Spec : Prop :=
  ∀ n, P8653305738086609632.a n = A208341 n

end A208341

/-! ## A208341.P2712687856020136373

`A160232(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A208341.P2712687856020136373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160232 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A208341.P2712687856020136373

namespace A208341

/-- `A160232(n+1)+T(n-1,k-1)` -/
def P2712687856020136373.Spec : Prop :=
  ∀ n, P2712687856020136373.a n = A208341 n

end A208341

/-! ## A208341.P10378542737578281003

`A207619(n+1)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A208341.P10378542737578281003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A207619 (n + 1) - SequenceMachineLib.triUpLeft a n

end

end A208341.P10378542737578281003

namespace A208341

/-- `A207619(n+1)-T(n-1,k-1)` -/
def P10378542737578281003.Spec : Prop :=
  ∀ n, P10378542737578281003.a n = A208341 n

end A208341

/-! ## A208341.P2470531422761427646

`A059474(n)/A130321(n)`
-/

namespace A208341.P2470531422761427646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059474 n : ℚ) / (A130321 n : ℚ)

end

end A208341.P2470531422761427646

namespace A208341

/-- `A059474(n)/A130321(n)` -/
def P2470531422761427646.Spec : Prop :=
  ∀ n, P2470531422761427646.a n = (A208341 n : ℚ)

end A208341

/-! ## A208341.P3825028342973498831

`A160232(n+1)+A049600(n)`
-/

namespace A208341.P3825028342973498831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + A049600 n

end

end A208341.P3825028342973498831

namespace A208341

/-- `A160232(n+1)+A049600(n)` -/
def P3825028342973498831.Spec : Prop :=
  ∀ n, P3825028342973498831.a n = A208341 n

end A208341

/-! ## A208341.P12681825597348598856

`A207619(n+1)-A049600(n)`
-/

namespace A208341.P12681825597348598856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (n + 1) - A049600 n

end

end A208341.P12681825597348598856

namespace A208341

/-- `A207619(n+1)-A049600(n)` -/
def P12681825597348598856.Spec : Prop :=
  ∀ n, P12681825597348598856.a n = A208341 n

end A208341

/-! ## A208341.P12333358729181989660

`(A207619(n+1)+A160232(n+1))/2`
-/

namespace A208341.P12333358729181989660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207619 (n + 1) + A160232 (n + 1) : ℚ) / 2

end

end A208341.P12333358729181989660

namespace A208341

/-- `(A207619(n+1)+A160232(n+1))/2` -/
def P12333358729181989660.Spec : Prop :=
  ∀ n, P12333358729181989660.a n = (A208341 n : ℚ)

end A208341

/-! ## A208341.P10432518505097404796

`A105306(A038722(n+1))+A049600(n)`
-/

namespace A208341.P10432518505097404796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A038722 (n + 1)).toNat + A049600 n

end

end A208341.P10432518505097404796

namespace A208341

/-- `A105306(A038722(n+1))+A049600(n)` -/
def P10432518505097404796.Spec : Prop :=
  ∀ n, P10432518505097404796.a n = A208341 n

end A208341

/-! ## A208341.P17228206036597476110

`A105306(A061579(n)+1)+A049600(n)`
-/

namespace A208341.P17228206036597476110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A061579 n + 1).toNat + A049600 n

end

end A208341.P17228206036597476110

namespace A208341

/-- `A105306(A061579(n)+1)+A049600(n)` -/
def P17228206036597476110.Spec : Prop :=
  ∀ n, P17228206036597476110.a n = A208341 n

end A208341

/-! ## A208341.P6476003495038486186

`2*A160232(n+1)-A062110(A061579(n))`
-/

namespace A208341.P6476003495038486186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160232 (n + 1) - A062110 (A061579 n).toNat

end

end A208341.P6476003495038486186

namespace A208341

/-- `2*A160232(n+1)-A062110(A061579(n))` -/
def P6476003495038486186.Spec : Prop :=
  ∀ n, P6476003495038486186.a n = A208341 n

end A208341

/-! ## A208341.P6467536354865352878

`A121462(n+1)+A049600(n+1)`
-/

namespace A208341.P6467536354865352878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (n + 1) + A049600 (n + 1)

end

end A208341.P6467536354865352878

namespace A208341

/-- `A121462(n+1)+A049600(n+1)` -/
def P6467536354865352878.Spec : Prop :=
  ∀ n, P6467536354865352878.a n = A208341 n

end A208341

/-! ## A208341.P13014645547254557663

`A106195(A061579(n))`
-/

namespace A208341.P13014645547254557663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A061579 n).toNat

end

end A208341.P13014645547254557663

namespace A208341

/-- `A106195(A061579(n))` -/
def P13014645547254557663.Spec : Prop :=
  ∀ n, P13014645547254557663.a n = A208341 n

end A208341

/-! ## A208341.P13673040008239324611

`A106195(A038722(n+1)-1)`
-/

namespace A208341.P13673040008239324611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A038722 (n + 1) - 1).toNat

end

end A208341.P13673040008239324611

namespace A208341

/-- `A106195(A038722(n+1)-1)` -/
def P13673040008239324611.Spec : Prop :=
  ∀ n, P13673040008239324611.a n = A208341 n

end A208341

/-! ## A208341.P3814887436081991979

`A106195(A002024(n+1)²-(n+1))`
-/

namespace A208341.P3814887436081991979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A208341.P3814887436081991979

namespace A208341

/-- `A106195(A002024(n+1)²-(n+1))` -/
def P3814887436081991979.Spec : Prop :=
  ∀ n, P3814887436081991979.a n = A208341 n

end A208341

/-! ## A208341.P12841274292079701801

`A106195(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A208341.P12841274292079701801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A208341.P12841274292079701801

namespace A208341

/-- `A106195(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P12841274292079701801.Spec : Prop :=
  ∀ n, P12841274292079701801.a n = A208341 n

end A208341

/-! ## A208341.P4930877196144885826

`A049600(comp[∑[n]])`
-/

namespace A208341.P4930877196144885826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A208341.P4930877196144885826

namespace A208341

/-- `A049600(comp[∑[n]])` -/
def P4930877196144885826.Spec : Prop :=
  ∀ n, P4930877196144885826.a n = A208341 n

end A208341

/-!
# A208342: Triangle of coefficients of polynomials u(n,x) jointly generated with A208343; see the Formula section.

The programs for A208342, the canonical program `A208342.P13333914387866376983` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208342 has offset 1).

The definition of A208342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208342.P13333914387866376983

`T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208342

/-- `T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P13333914387866376983.Spec : Prop :=
  ∀ n, P13333914387866376983.a n = A208342 (n + 1)

theorem P13333914387866376983.correct : P13333914387866376983.Spec := by
  intro n
  simp only [A208342, Nat.add_sub_cancel]

end A208342

/-! ## A208342.P8015291956929740567

`A208747(C(row(n)+1, 2)+col(n)+1)/2^col(n)`
-/

namespace A208342.P8015291956929740567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208747 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) : ℚ) / (2 ^ SequenceMachineLib.triCol n : ℚ)

end

end A208342.P8015291956929740567

namespace A208342

/-- `A208747(C(row(n)+1, 2)+col(n)+1)/2^col(n)` -/
def P8015291956929740567.Spec : Prop :=
  ∀ n, P8015291956929740567.a n = (A208342 (n + 1) : ℚ)

end A208342

/-! ## A208342.P6979002339162381948

`T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` with `a(0)=1`
-/

namespace A208342.P6979002339162381948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n

end

end A208342.P6979002339162381948

namespace A208342

/-- `T(row(n)-2, col(n)-2)+T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` -/
def P6979002339162381948.Spec : Prop :=
  ∀ n, P6979002339162381948.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P14721574194746815470

`A053538(A061579(n))`
-/

namespace A208342.P14721574194746815470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A061579 n).toNat

end

end A208342.P14721574194746815470

namespace A208342

/-- `A053538(A061579(n))` -/
def P14721574194746815470.Spec : Prop :=
  ∀ n, P14721574194746815470.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P3651367010542366588

`A053538(A114327(n)+n)`
-/

namespace A208342.P3651367010542366588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A114327 n + (n : ℤ)).toNat

end

end A208342.P3651367010542366588

namespace A208342

/-- `A053538(A114327(n)+n)` -/
def P3651367010542366588.Spec : Prop :=
  ∀ n, P3651367010542366588.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P7549949375056146570

`A053538(∑[A198954(n)-1])`
-/

namespace A208342.P7549949375056146570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208342.P7549949375056146570

namespace A208342

/-- `A053538(∑[A198954(n)-1])` -/
def P7549949375056146570.Spec : Prop :=
  ∀ n, P7549949375056146570.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P14232808316234408768

`A053538(A038722(n+1)-1)`
-/

namespace A208342.P14232808316234408768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A038722 (n + 1) - 1).toNat

end

end A208342.P14232808316234408768

namespace A208342

/-- `A053538(A038722(n+1)-1)` -/
def P14232808316234408768.Spec : Prop :=
  ∀ n, P14232808316234408768.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P3970937887674248088

`A208747(n+1)/A059268(n)`
-/

namespace A208342.P3970937887674248088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208747 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A208342.P3970937887674248088

namespace A208342

/-- `A208747(n+1)/A059268(n)` -/
def P3970937887674248088.Spec : Prop :=
  ∀ n, P3970937887674248088.a n = (A208342 (n + 1) : ℚ)

end A208342

/-! ## A208342.P6092960623654453007

`A053538(A093995(n+1)-(n+1))`
-/

namespace A208342.P6092960623654453007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A208342.P6092960623654453007

namespace A208342

/-- `A053538(A093995(n+1)-(n+1))` -/
def P6092960623654453007.Spec : Prop :=
  ∀ n, P6092960623654453007.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P14078896172047180329

`A053538((n²+n)%A014132(n+1))`
-/

namespace A208342.P14078896172047180329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (Int.tmod (n ^ 2 + n : ℤ) (A014132 (n + 1))).toNat

end

end A208342.P14078896172047180329

namespace A208342

/-- `A053538((n²+n)%A014132(n+1))` -/
def P14078896172047180329.Spec : Prop :=
  ∀ n, P14078896172047180329.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P10671993689522158281

`A053538(A002378(n)%A080036(n))`
-/

namespace A208342.P10671993689522158281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A208342.P10671993689522158281

namespace A208342

/-- `A053538(A002378(n)%A080036(n))` -/
def P10671993689522158281.Spec : Prop :=
  ∀ n, P10671993689522158281.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P11882832023821068730

`A053538(A057428(n)+A038722(n+1))`
-/

namespace A208342.P11882832023821068730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (A057428 n + A038722 (n + 1)).toNat

end

end A208342.P11882832023821068730

namespace A208342

/-- `A053538(A057428(n)+A038722(n+1))` -/
def P11882832023821068730.Spec : Prop :=
  ∀ n, P11882832023821068730.a n = A208342 (n + 1)

end A208342

/-! ## A208342.P2532257846869507734

`A210596(A061579(n)+1)/A130321(n)`
-/

namespace A208342.P2532257846869507734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210596 (A061579 n + 1).toNat : ℚ) / (A130321 n : ℚ)

end

end A208342.P2532257846869507734

namespace A208342

/-- `A210596(A061579(n)+1)/A130321(n)` -/
def P2532257846869507734.Spec : Prop :=
  ∀ n, P2532257846869507734.a n = (A208342 (n + 1) : ℚ)

end A208342

/-!
# A208343: Triangle of coefficients of polynomials v(n,x) jointly generated with A208342; see the Formula section.

The programs for A208343, the canonical program `A208343.P700867918563880161` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208343 has offset 1).

The definition of A208343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208343.P700867918563880161

`T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)-T(n-2,k-1)` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208343

/-- `T(n-1,k)+T(n-1,k-1)+T(row(n)-2, col(n)-2)-T(n-2,k-1)` -/
def P700867918563880161.Spec : Prop :=
  ∀ n, P700867918563880161.a n = A208343 (n + 1)

theorem P700867918563880161.correct : P700867918563880161.Spec := by
  intro n
  simp only [A208343, Nat.add_sub_cancel]

end A208343

/-! ## A208343.P5405769088515227081

`A208748(C(row(n)+1, 2)+col(n)+1)/2^col(n)`
-/

namespace A208343.P5405769088515227081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208748 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) : ℚ) / (2 ^ SequenceMachineLib.triCol n : ℚ)

end

end A208343.P5405769088515227081

namespace A208343

/-- `A208748(C(row(n)+1, 2)+col(n)+1)/2^col(n)` -/
def P5405769088515227081.Spec : Prop :=
  ∀ n, P5405769088515227081.a n = (A208343 (n + 1) : ℚ)

end A208343

/-! ## A208343.P4970229824405910525

`A208748(n+1)/A059268(n)`
-/

namespace A208343.P4970229824405910525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208748 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A208343.P4970229824405910525

namespace A208343

/-- `A208748(n+1)/A059268(n)` -/
def P4970229824405910525.Spec : Prop :=
  ∀ n, P4970229824405910525.a n = (A208343 (n + 1) : ℚ)

end A208343

/-! ## A208343.P14658045934750838987

`A208748(n+1)/A000079(A002262(n))`
-/

namespace A208343.P14658045934750838987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208748 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A208343.P14658045934750838987

namespace A208343

/-- `A208748(n+1)/A000079(A002262(n))` -/
def P14658045934750838987.Spec : Prop :=
  ∀ n, P14658045934750838987.a n = (A208343 (n + 1) : ℚ)

end A208343

/-! ## A208343.P4799289721598265495

`A076791(A038722(n+1))-A208342(n+1)`
-/

namespace A208343.P4799289721598265495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076791 (A038722 (n + 1)).toNat - A208342 (n + 1)

end

end A208343.P4799289721598265495

namespace A208343

/-- `A076791(A038722(n+1))-A208342(n+1)` -/
def P4799289721598265495.Spec : Prop :=
  ∀ n, P4799289721598265495.a n = A208343 (n + 1)

end A208343

/-! ## A208343.P2272999054624489043

`A208748(n+1)/A011782(A002260(n+1))`
-/

namespace A208343.P2272999054624489043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208748 (n + 1) : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A208343.P2272999054624489043

namespace A208343

/-- `A208748(n+1)/A011782(A002260(n+1))` -/
def P2272999054624489043.Spec : Prop :=
  ∀ n, P2272999054624489043.a n = (A208343 (n + 1) : ℚ)

end A208343

/-! ## A208343.P17690960599273746186

`A208342(n+1)/A208747(n+1)*A208748(n+1)`
-/

namespace A208343.P17690960599273746186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208342 (n + 1) : ℚ) / (A208747 (n + 1) : ℚ) * (A208748 (n + 1) : ℚ)

end

end A208343.P17690960599273746186

namespace A208343

/-- `A208342(n+1)/A208747(n+1)*A208748(n+1)` -/
def P17690960599273746186.Spec : Prop :=
  ∀ n, P17690960599273746186.a n = (A208343 (n + 1) : ℚ)

end A208343

/-! ## A208343.P15437204922434138551

`A208748(n+1)/A130321(A061579(n))`
-/

namespace A208343.P15437204922434138551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208748 (n + 1) : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A208343.P15437204922434138551

namespace A208343

/-- `A208748(n+1)/A130321(A061579(n))` -/
def P15437204922434138551.Spec : Prop :=
  ∀ n, P15437204922434138551.a n = (A208343 (n + 1) : ℚ)

end A208343

/-! ## A208343.P16934087123440588948

`A208748(n+1)/A130321(A286147(n))`
-/

namespace A208343.P16934087123440588948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208748 (n + 1) : ℚ) / (A130321 (A286147 n).toNat : ℚ)

end

end A208343.P16934087123440588948

namespace A208343

/-- `A208748(n+1)/A130321(A286147(n))` -/
def P16934087123440588948.Spec : Prop :=
  ∀ n, P16934087123440588948.a n = (A208343 (n + 1) : ℚ)

end A208343

/-!
# A208344: Triangle of coefficients of polynomials u(n,x) jointly generated with A208345; see the Formula section.

The programs for A208344, the canonical program `A208344.P17314162549335146408` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208344 has offset 1).

The definition of A208344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208344.P17314162549335146408

`T(n-1,k)+2*T(n-1,k-1)-2*T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208344

/-- `T(n-1,k)+2*T(n-1,k-1)-2*T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P17314162549335146408.Spec : Prop :=
  ∀ n, P17314162549335146408.a n = A208344 (n + 1)

theorem P17314162549335146408.correct : P17314162549335146408.Spec := by
  intro n
  simp only [A208344, Nat.add_sub_cancel]

end A208344

/-! ## A208344.P11640833130475976028

`A389975(A208747(n+1))`
-/

namespace A208344.P11640833130475976028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389975 (A208747 (n + 1)).toNat

end

end A208344.P11640833130475976028

namespace A208344

/-- `A389975(A208747(n+1))` -/
def P11640833130475976028.Spec : Prop :=
  ∀ n, P11640833130475976028.a n = A208344 (n + 1)

end A208344

/-! ## A208344.P739108017534287417

`A048766(A008305(n+1)*A208757(n+1))`
-/

namespace A208344.P739108017534287417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A008305 (n + 1) * A208757 (n + 1)).toNat

end

end A208344.P739108017534287417

namespace A208344

/-- `A048766(A008305(n+1)*A208757(n+1))` -/
def P739108017534287417.Spec : Prop :=
  ∀ n, P739108017534287417.a n = A208344 (n + 1)

end A208344

/-! ## A208344.P5491627701538479945

`A259899(A008305(n+1))^A007318(A152685(n))`
-/

namespace A208344.P5491627701538479945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259899 (A008305 (n + 1)).toNat : ℚ) ^ (A007318 (A152685 n).toNat : ℤ)

end

end A208344.P5491627701538479945

namespace A208344

/-- `A259899(A008305(n+1))^A007318(A152685(n))` -/
def P5491627701538479945.Spec : Prop :=
  ∀ n, P5491627701538479945.a n = (A208344 (n + 1) : ℚ)

end A208344

/-! ## A208344.P1825710435620011842

`A084097(lt[A271269(n+5), A371081(n+2)])`
-/

namespace A208344.P1825710435620011842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A208344.P1825710435620011842

namespace A208344

/-- `A084097(lt[A271269(n+5), A371081(n+2)])` -/
def P1825710435620011842.Spec : Prop :=
  ∀ n, P1825710435620011842.a n = A208344 (n + 1)

end A208344

/-!
# A208345: Triangle of coefficients of polynomials v(n,x) jointly generated with A208344; see the Formula section.

The programs for A208345, the canonical program `A208345.P6985628669652230031` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208345 has offset 1).

The definition of A208345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208345.P6985628669652230031

`T(n-1,k)+2*T(n-1,k-1)+T(row(n)-2, col(n)-2)-2*T(n-2,k-1)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208345

/-- `T(n-1,k)+2*T(n-1,k-1)+T(row(n)-2, col(n)-2)-2*T(n-2,k-1)` -/
def P6985628669652230031.Spec : Prop :=
  ∀ n, P6985628669652230031.a n = A208345 (n + 1)

theorem P6985628669652230031.correct : P6985628669652230031.Spec := by
  intro n
  simp only [A208345, Nat.add_sub_cancel]

end A208345

/-! ## A208345.P8266231837278317566

`floor(A080664(n+1)/A140303(n))`
-/

namespace A208345.P8266231837278317566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080664 (n + 1) : ℚ) / (A140303 n : ℚ)⌋

end

end A208345.P8266231837278317566

namespace A208345

/-- `floor(A080664(n+1)/A140303(n))` -/
def P8266231837278317566.Spec : Prop :=
  ∀ n, P8266231837278317566.a n = A208345 (n + 1)

end A208345

/-! ## A208345.P18101321012790106764

`floor(A080664(n+1)/A094504(n+1))`
-/

namespace A208345.P18101321012790106764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080664 (n + 1) : ℚ) / (A094504 (n + 1) : ℚ)⌋

end

end A208345.P18101321012790106764

namespace A208345

/-- `floor(A080664(n+1)/A094504(n+1))` -/
def P18101321012790106764.Spec : Prop :=
  ∀ n, P18101321012790106764.a n = A208345 (n + 1)

end A208345

/-! ## A208345.P13348902164923143703

`A325267(A161535(n+1)^A325268(n))`
-/

namespace A208345.P13348902164923143703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325267 (SequenceMachineLib.roundAway ((A161535 (n + 1) : ℚ) ^ (A325268 n : ℤ))).toNat

end

end A208345.P13348902164923143703

namespace A208345

/-- `A325267(A161535(n+1)^A325268(n))` -/
def P13348902164923143703.Spec : Prop :=
  ∀ n, P13348902164923143703.a n = A208345 (n + 1)

end A208345

/-! ## A208345.P4586936802397553736

`A325267(A325268(n)²²*A161535(n+1))`
-/

namespace A208345.P4586936802397553736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325267 ((A325268 n ^ 2) ^ 2 * A161535 (n + 1)).toNat

end

end A208345.P4586936802397553736

namespace A208345

/-- `A325267(A325268(n)²²*A161535(n+1))` -/
def P4586936802397553736.Spec : Prop :=
  ∀ n, P4586936802397553736.a n = A208345 (n + 1)

end A208345

/-!
# A208346: Number of n X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208346, there is no canonical definition to state claims against.
-/

/-! ## A208346.P2443046067434635248

`A208353(∑[4*n]+1)`
-/

namespace A208346.P2443046067434635248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208346.P2443046067434635248

/-!
# A208347: Number of nX2 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208347, the canonical program `A208347.P2115090520345899973` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208347 has offset 1).

The definition of A208347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208347.P10892421751247022268

`10*a(n-1)-9*a(n-2)` with `a(0)=2, a(1)=15, a(2)=100, a(3)=868`
-/

namespace A208347.P10892421751247022268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 15, 100, 868] fun n a =>
  10 * a (n - 1) - 9 * a (n - 2)

end

end A208347.P10892421751247022268

namespace A208347

/-- `10*a(n-1)-9*a(n-2)` -/
def P10892421751247022268.Spec : Prop :=
  ∀ n, P10892421751247022268.a n = A208347 (n + 1)

end A208347

/-! ## A208347.P2115090520345899973

`Δ[A326339(2*n)+A130824(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A208347

/-- `Δ[A326339(2*n)+A130824(n)]` -/
def P2115090520345899973.Spec : Prop :=
  ∀ n, P2115090520345899973.a n = A208347 (n + 1)

theorem P2115090520345899973.correct : P2115090520345899973.Spec := by
  intro n
  simp only [A208347, Nat.add_sub_cancel]

end A208347

/-! ## A208347.P5897732460562308317

`Δ[A130824(n)+A052156(A004273(n))]`
-/

namespace A208347.P5897732460562308317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A052156 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208347.P5897732460562308317

namespace A208347

/-- `Δ[A130824(n)+A052156(A004273(n))]` -/
def P5897732460562308317.Spec : Prop :=
  ∀ n, P5897732460562308317.a n = A208347 (n + 1)

end A208347

/-! ## A208347.P1202173747819599564

`A257970(2*(n+1))+A123932(n)-A257970(2*n+1)`
-/

namespace A208347.P1202173747819599564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (2 * (n + 1)) + (A123932 n - A257970 (2 * n + 1))

end

end A208347.P1202173747819599564

namespace A208347

/-- `A257970(2*(n+1))+A123932(n)-A257970(2*n+1)` -/
def P1202173747819599564.Spec : Prop :=
  ∀ n, P1202173747819599564.a n = A208347 (n + 1)

end A208347

/-! ## A208347.P8675234372448702439

`A208353(∑[n+1]+2)`
-/

namespace A208347.P8675234372448702439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208347.P8675234372448702439

namespace A208347

/-- `A208353(∑[n+1]+2)` -/
def P8675234372448702439.Spec : Prop :=
  ∀ n, P8675234372448702439.a n = A208347 (n + 1)

end A208347

/-!
# A208348: Number of nX3 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208348, there is no canonical definition to state claims against.
-/

/-! ## A208348.P5452102717262850541

`A208353(∑[n+2]+4)`
-/

namespace A208348.P5452102717262850541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208348.P5452102717262850541

/-! ## A208348.P12119747209052162484

`record[A208353(A198455(n+1)+4)]`
-/

namespace A208348.P12119747209052162484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (A198455 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208348.P12119747209052162484

/-! ## A208348.P2913562072953239586

`record[gcd(A025581(n), A208353(n+4))]`
-/

namespace A208348.P2913562072953239586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A208353 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208348.P2913562072953239586

/-! ## A208348.P17002318310989538400

`A208353(A167614(n+1))+A011745(n)`
-/

namespace A208348.P17002318310989538400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (A167614 (n + 1)).toNat + A011745 n

end

end A208348.P17002318310989538400

/-! ## A208348.P2724219251881848113

`A208353(A167614(n+1))+A025444(n)`
-/

namespace A208348.P2724219251881848113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (A167614 (n + 1)).toNat + A025444 n

end

end A208348.P2724219251881848113

/-!
# A208349: Number of n X 4 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208349, there is no canonical definition to state claims against.
-/

/-! ## A208349.P9833497377229900165

`A208353(∑[n+3]+7)`
-/

namespace A208349.P9833497377229900165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A208349.P9833497377229900165

/-!
# A208350: Number of nX5 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208350, there is no canonical definition to state claims against.
-/

/-! ## A208350.P1608371776627604007

`A208353(∑[n+4]+11)`
-/

namespace A208350.P1608371776627604007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A208350.P1608371776627604007

/-!
# A208351: Number of nX6 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208351, there is no canonical definition to state claims against.
-/

/-! ## A208351.P17954506709273192270

`A208353(∑[n+5]+16)`
-/

namespace A208351.P17954506709273192270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A208351.P17954506709273192270

/-! ## A208351.P17758935788239066523

`A208353(A374007(n+1))*A219347(n)`
-/

namespace A208351.P17758935788239066523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (A374007 (n + 1)).toNat * A219347 n

end

end A208351.P17758935788239066523

/-! ## A208351.P8957299078935310937

`A089759(n)*A208353(A000217(n+6)-5)`
-/

namespace A208351.P8957299078935310937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 n * A208353 (A000217 (n + 6) - 5).toNat

end

end A208351.P8957299078935310937

/-!
# A208352: Number of nX7 0..3 arrays with new values 0..3 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208352, there is no canonical definition to state claims against.
-/

/-! ## A208352.P15985038099556296474

`A208353(A374008(n+1))`
-/

namespace A208352.P15985038099556296474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208353 (A374008 (n + 1)).toNat

end

end A208352.P15985038099556296474

/-!
# A208354: Number of compositions of n with at most one even part.

The programs for A208354, the canonical program `A208354.P5959759392319825009` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208354 has offset 0).

The definition of A208354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208354.P5959759392319825009

`ogf((1-x-x^2+x^3)/(1-2x-x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A208354

/-- `ogf((1-x-x^2+x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P5959759392319825009.Spec : Prop :=
  ∀ n, P5959759392319825009.a n = A208354 n

theorem P5959759392319825009.correct : P5959759392319825009.Spec := by
  intro n
  simp only [A208354]

end A208354

/-! ## A208354.P5103473195773313782

`a(n-1)+a(n-2)+A000045(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A208354.P5103473195773313782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n - 2)

end

end A208354.P5103473195773313782

namespace A208354

/-- `a(n-1)+a(n-2)+A000045(n-2)` -/
def P5103473195773313782.Spec : Prop :=
  ∀ n, P5103473195773313782.a n = A208354 n

end A208354

/-! ## A208354.P3939606242303118178

`A212804(n)+A010049(n)`
-/

namespace A208354.P3939606242303118178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A010049 n

end

end A208354.P3939606242303118178

namespace A208354

/-- `A212804(n)+A010049(n)` -/
def P3939606242303118178.Spec : Prop :=
  ∀ n, P3939606242303118178.a n = A208354 n

end A208354

/-! ## A208354.P313019663120916578

`A010049(n)+Δ[A000045(n)]`
-/

namespace A208354.P313019663120916578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (f1 (n + 1) - f1 n)

end

end A208354.P313019663120916578

namespace A208354

/-- `A010049(n)+Δ[A000045(n)]` -/
def P313019663120916578.Spec : Prop :=
  ∀ n, P313019663120916578.a n = A208354 n

end A208354

/-! ## A208354.P17975919998287160909

`A010049(n)+Δ[A001611(n)]`
-/

namespace A208354.P17975919998287160909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (f1 (n + 1) - f1 n)

end

end A208354.P17975919998287160909

namespace A208354

/-- `A010049(n)+Δ[A001611(n)]` -/
def P17975919998287160909.Spec : Prop :=
  ∀ n, P17975919998287160909.a n = A208354 n

end A208354

/-! ## A208354.P6743019673170567730

`A010049(n)-A152163(n+1)`
-/

namespace A208354.P6743019673170567730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - A152163 (n + 1)

end

end A208354.P6743019673170567730

namespace A208354

/-- `A010049(n)-A152163(n+1)` -/
def P6743019673170567730.Spec : Prop :=
  ∀ n, P6743019673170567730.a n = A208354 n

end A208354

/-! ## A208354.P16045613889447869439

`A000032(n)-A240847(n+2)`
-/

namespace A208354.P16045613889447869439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A240847 (n + 2)

end

end A208354.P16045613889447869439

namespace A208354

/-- `A000032(n)-A240847(n+2)` -/
def P16045613889447869439.Spec : Prop :=
  ∀ n, P16045613889447869439.a n = A208354 n

end A208354

/-! ## A208354.P9965853148010323829

`Δ[A002062(n)]+A010049(n)-1`
-/

namespace A208354.P9965853148010323829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A010049 n - 1)

end

end A208354.P9965853148010323829

namespace A208354

/-- `Δ[A002062(n)]+A010049(n)-1` -/
def P9965853148010323829.Spec : Prop :=
  ∀ n, P9965853148010323829.a n = A208354 n

end A208354

/-! ## A208354.P3531148161625431679

`A006367(n+1)-Δ[A212804(n)]`
-/

namespace A208354.P3531148161625431679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1) - (f1 (n + 1) - f1 n)

end

end A208354.P3531148161625431679

namespace A208354

/-- `A006367(n+1)-Δ[A212804(n)]` -/
def P3531148161625431679.Spec : Prop :=
  ∀ n, P3531148161625431679.a n = A208354 n

end A208354

/-! ## A208354.P1879447210212347273

`A010049(n)+Δ[∑{d}[n, A007436(#)]]`
-/

namespace A208354.P1879447210212347273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007436 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (f1 (n + 1) - f1 n)

end

end A208354.P1879447210212347273

namespace A208354

/-- `A010049(n)+Δ[∑{d}[n, A007436(#)]]` -/
def P1879447210212347273.Spec : Prop :=
  ∀ n, P1879447210212347273.a n = A208354 n

end A208354

/-! ## A208354.P5203293026045647888

`A000045(n)+A152163(n)+A010049(n)`
-/

namespace A208354.P5203293026045647888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A152163 n + A010049 n)

end

end A208354.P5203293026045647888

namespace A208354

/-- `A000045(n)+A152163(n)+A010049(n)` -/
def P5203293026045647888.Spec : Prop :=
  ∀ n, P5203293026045647888.a n = A208354 n

end A208354

/-! ## A208354.P8188197985439641572

`A000045(n+1)+A010049(n)-A000045(n)`
-/

namespace A208354.P8188197985439641572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A010049 n - A000045 n)

end

end A208354.P8188197985439641572

namespace A208354

/-- `A000045(n+1)+A010049(n)-A000045(n)` -/
def P8188197985439641572.Spec : Prop :=
  ∀ n, P8188197985439641572.a n = A208354 n

end A208354

/-! ## A208354.P3298304197381472323

`A006367(n+1)+A212804(n)-A212804(n+1)`
-/

namespace A208354.P3298304197381472323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1) + (A212804 n - A212804 (n + 1))

end

end A208354.P3298304197381472323

namespace A208354

/-- `A006367(n+1)+A212804(n)-A212804(n+1)` -/
def P3298304197381472323.Spec : Prop :=
  ∀ n, P3298304197381472323.a n = A208354 n

end A208354

/-! ## A208354.P6727477345036289898

`A010049(n)+Δ[A104221(n)+1-A000217(n+1)%3]`
-/

namespace A208354.P6727477345036289898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 n + 1 - Int.tmod (A000217 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + (f1 (n + 1) - f1 n)

end

end A208354.P6727477345036289898

namespace A208354

/-- `A010049(n)+Δ[A104221(n)+1-A000217(n+1)%3]` -/
def P6727477345036289898.Spec : Prop :=
  ∀ n, P6727477345036289898.a n = A208354 n

end A208354

/-! ## A208354.P13868434954244623308

`A239342(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A208354.P13868434954244623308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239342 (n + 1) - a (n - 1)

end

end A208354.P13868434954244623308

namespace A208354

/-- `A239342(n+1)-a(n-1)` -/
def P13868434954244623308.Spec : Prop :=
  ∀ n, P13868434954244623308.a n = A208354 n

end A208354

/-! ## A208354.P17358986184282976214

`∑[A006367(n)]+A212804(n)-A006367(n)`
-/

namespace A208354.P17358986184282976214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A212804 n - A006367 n)

end

end A208354.P17358986184282976214

namespace A208354

/-- `∑[A006367(n)]+A212804(n)-A006367(n)` -/
def P17358986184282976214.Spec : Prop :=
  ∀ n, P17358986184282976214.a n = A208354 n

end A208354

/-! ## A208354.P11601105112706630554

`A010049(n+1)-A010049(A289207(n+1))`
-/

namespace A208354.P11601105112706630554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - A010049 (A289207 (n + 1)).toNat

end

end A208354.P11601105112706630554

namespace A208354

/-- `A010049(n+1)-A010049(A289207(n+1))` -/
def P11601105112706630554.Spec : Prop :=
  ∀ n, P11601105112706630554.a n = A208354 n

end A208354

/-! ## A208354.P5526867622012594525

`A240847(n+1)+A152163(n)+A029907(n)`
-/

namespace A208354.P5526867622012594525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 (n + 1) + (A152163 n + A029907 n)

end

end A208354.P5526867622012594525

namespace A208354

/-- `A240847(n+1)+A152163(n)+A029907(n)` -/
def P5526867622012594525.Spec : Prop :=
  ∀ n, P5526867622012594525.a n = A208354 n

end A208354

/-! ## A208354.P16481333864812600312

`Δ[A029907(n)]`
-/

namespace A208354.P16481333864812600312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208354.P16481333864812600312

namespace A208354

/-- `Δ[A029907(n)]` -/
def P16481333864812600312.Spec : Prop :=
  ∀ n, P16481333864812600312.a n = A208354 n

end A208354

/-! ## A208354.P3451210049830716983

`Δ[A172050(n)]-3`
-/

namespace A208354.P3451210049830716983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A208354.P3451210049830716983

namespace A208354

/-- `Δ[A172050(n)]-3` -/
def P3451210049830716983.Spec : Prop :=
  ∀ n, P3451210049830716983.a n = A208354 n

end A208354

/-!
# A208355: Right edge of the triangle in A208101.

The programs for A208355, the canonical program `A208355.P6360215552861429744` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208355 has offset 0).

The definition of A208355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208355.P6360215552861429744

`A000108(floor((n+1)/2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208355

/-- `A000108(floor((n+1)/2))` -/
def P6360215552861429744.Spec : Prop :=
  ∀ n, P6360215552861429744.a n = A208355 n

theorem P6360215552861429744.correct : P6360215552861429744.Spec := by
  intro n
  simp only [A208355]

end A208355

/-! ## A208355.P6330275429106496889

`abs(A099363(n))`
-/

namespace A208355.P6330275429106496889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099363 n|

end

end A208355.P6330275429106496889

namespace A208355

/-- `abs(A099363(n))` -/
def P6330275429106496889.Spec : Prop :=
  ∀ n, P6330275429106496889.a n = A208355 n

end A208355

/-! ## A208355.P16100111589529728059

`A208101(C(n+1, 2)+n)`
-/

namespace A208355.P16100111589529728059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208101 (Nat.choose (n + 1) 2 + n)

end

end A208355.P16100111589529728059

namespace A208355

/-- `A208101(C(n+1, 2)+n)` -/
def P16100111589529728059.Spec : Prop :=
  ∀ n, P16100111589529728059.a n = A208355 n

end A208355

/-! ## A208355.P4387326072206991818

`∑{#}[n, (-2)^(n-#)*C(n, #)*A000245(#+1)]`
-/

namespace A208355.P4387326072206991818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000245 (k + 1) : ℚ)

end

end A208355.P4387326072206991818

namespace A208355

/-- `∑{#}[n, (-2)^(n-#)*C(n, #)*A000245(#+1)]` -/
def P4387326072206991818.Spec : Prop :=
  ∀ n, P4387326072206991818.a n = (A208355 n : ℚ)

end A208355

/-! ## A208355.P12483467301167461230

`abs(Δ[A126120(n)])`
-/

namespace A208355.P12483467301167461230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A208355.P12483467301167461230

namespace A208355

/-- `abs(Δ[A126120(n)])` -/
def P12483467301167461230.Spec : Prop :=
  ∀ n, P12483467301167461230.a n = A208355 n

end A208355

/-! ## A208355.P10797720991716381880

`A089408(or(1, n+1))`
-/

namespace A208355.P10797720991716381880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (Nat.lor 1 (n + 1))

end

end A208355.P10797720991716381880

namespace A208355

/-- `A089408(or(1, n+1))` -/
def P10797720991716381880.Spec : Prop :=
  ∀ n, P10797720991716381880.a n = A208355 n

end A208355

/-! ## A208355.P6940270542307977616

`A097331(or(1, n+1))`
-/

namespace A208355.P6940270542307977616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (Nat.lor 1 (n + 1))

end

end A208355.P6940270542307977616

namespace A208355

/-- `A097331(or(1, n+1))` -/
def P6940270542307977616.Spec : Prop :=
  ∀ n, P6940270542307977616.a n = A208355 n

end A208355

/-! ## A208355.P16385970495565343769

`A028304(n%2+n)`
-/

namespace A208355.P16385970495565343769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (n % 2 + n)

end

end A208355.P16385970495565343769

namespace A208355

/-- `A028304(n%2+n)` -/
def P16385970495565343769.Spec : Prop :=
  ∀ n, P16385970495565343769.a n = A208355 n

end A208355

/-! ## A208355.P9014823682088813816

`A028303(and(1, n)+n)`
-/

namespace A208355.P9014823682088813816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (Nat.land 1 n + n)

end

end A208355.P9014823682088813816

namespace A208355

/-- `A028303(and(1, n)+n)` -/
def P9014823682088813816.Spec : Prop :=
  ∀ n, P9014823682088813816.a n = A208355 n

end A208355

/-! ## A208355.P813882163579499857

`A028304(and(1, n)+n)`
-/

namespace A208355.P813882163579499857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (Nat.land 1 n + n)

end

end A208355.P813882163579499857

namespace A208355

/-- `A028304(and(1, n)+n)` -/
def P813882163579499857.Spec : Prop :=
  ∀ n, P813882163579499857.a n = A208355 n

end A208355

/-! ## A208355.P13801688631915205324

`A126120(and(1, n)+n)`
-/

namespace A208355.P13801688631915205324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (Nat.land 1 n + n)

end

end A208355.P13801688631915205324

namespace A208355

/-- `A126120(and(1, n)+n)` -/
def P13801688631915205324.Spec : Prop :=
  ∀ n, P13801688631915205324.a n = A208355 n

end A208355

/-! ## A208355.P8160864465114672420

`abs(A168491(ceil(n/2)))`
-/

namespace A208355.P8160864465114672420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 ⌈(n : ℚ) / 2⌉.toNat|

end

end A208355.P8160864465114672420

namespace A208355

/-- `abs(A168491(ceil(n/2)))` -/
def P8160864465114672420.Spec : Prop :=
  ∀ n, P8160864465114672420.a n = A208355 n

end A208355

/-! ## A208355.P9442925538328275599

`abs(Δ[A090192(n+1)])`
-/

namespace A208355.P9442925538328275599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A208355.P9442925538328275599

namespace A208355

/-- `abs(Δ[A090192(n+1)])` -/
def P9442925538328275599.Spec : Prop :=
  ∀ n, P9442925538328275599.a n = A208355 n

end A208355

/-! ## A208355.P14414615846913541273

`abs(Δ[A097331(n+1)])`
-/

namespace A208355.P14414615846913541273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A208355.P14414615846913541273

namespace A208355

/-- `abs(Δ[A097331(n+1)])` -/
def P14414615846913541273.Spec : Prop :=
  ∀ n, P14414615846913541273.a n = A208355 n

end A208355

/-! ## A208355.P5098468830744626757

`abs(Δ[A105523(n+1)])`
-/

namespace A208355.P5098468830744626757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A208355.P5098468830744626757

namespace A208355

/-- `abs(Δ[A105523(n+1)])` -/
def P5098468830744626757.Spec : Prop :=
  ∀ n, P5098468830744626757.a n = A208355 n

end A208355

/-! ## A208355.P12825649531210110209

`abs(Δ[A210628(n+1)])`
-/

namespace A208355.P12825649531210110209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A208355.P12825649531210110209

namespace A208355

/-- `abs(Δ[A210628(n+1)])` -/
def P12825649531210110209.Spec : Prop :=
  ∀ n, P12825649531210110209.a n = A208355 n

end A208355

/-! ## A208355.P13751369316454826394

`A028304(2*ceil(n/2))`
-/

namespace A208355.P13751369316454826394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * ⌈(n : ℚ) / 2⌉).toNat

end

end A208355.P13751369316454826394

namespace A208355

/-- `A028304(2*ceil(n/2))` -/
def P13751369316454826394.Spec : Prop :=
  ∀ n, P13751369316454826394.a n = A208355 n

end A208355

/-! ## A208355.P17834794914069822097

`abs(Δ[abs(A182492(2*n+3))])`
-/

namespace A208355.P17834794914069822097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182492 (2 * n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A208355.P17834794914069822097

namespace A208355

/-- `abs(Δ[abs(A182492(2*n+3))])` -/
def P17834794914069822097.Spec : Prop :=
  ∀ n, P17834794914069822097.a n = A208355 n

end A208355

/-! ## A208355.P16143433822112740296

`A094876(A016789(n))`
-/

namespace A208355.P16143433822112740296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094876 (A016789 n).toNat

end

end A208355.P16143433822112740296

namespace A208355

/-- `A094876(A016789(n))` -/
def P16143433822112740296.Spec : Prop :=
  ∀ n, P16143433822112740296.a n = A208355 n

end A208355

/-! ## A208355.P4791823026603363451

`A120588(A080513(n))`
-/

namespace A208355.P4791823026603363451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A080513 n).toNat

end

end A208355.P4791823026603363451

namespace A208355

/-- `A120588(A080513(n))` -/
def P4791823026603363451.Spec : Prop :=
  ∀ n, P4791823026603363451.a n = A208355 n

end A208355

/-! ## A208355.P3254014530351246327

`C(2*floor((n+1)/2), floor((n+1)/2))/(floor((n+1)/2)+1)`
-/

namespace A208355.P3254014530351246327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * ⌊(n + 1 : ℚ) / 2⌋).toNat ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ + 1 : ℚ)

end

end A208355.P3254014530351246327

namespace A208355

/-- `C(2*floor((n+1)/2), floor((n+1)/2))/(floor((n+1)/2)+1)` -/
def P3254014530351246327.Spec : Prop :=
  ∀ n, P3254014530351246327.a n = (A208355 n : ℚ)

end A208355

/-!
# A208356: Number of labeled star-like graphs on n vertices.

The programs for A208356, there is no canonical definition to state claims against.
-/

/-! ## A208356.P3443824679310545957

`A091018(A121351(n))+1`
-/

namespace A208356.P3443824679310545957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 (A121351 n).toNat + 1

end

end A208356.P3443824679310545957

/-!
# A208357: Number of meanders of order 2n+1 (4*n+2 crossings of the infinite line) with central 1-1 cut.

The programs for A208357, there is no canonical definition to state claims against.
-/

/-! ## A208357.P7970525134730414097

`A005315(n+2)²`
-/

namespace A208357.P7970525134730414097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005315 (n + 2) ^ 2

end

end A208357.P7970525134730414097

/-! ## A208357.P5935704130559010290

`A005316(2*(n+1)+1)²`
-/

namespace A208357.P5935704130559010290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005316 (2 * (n + 1) + 1) ^ 2

end

end A208357.P5935704130559010290

/-! ## A208357.P6821266996216220408

`(2*A078591(n+2))²`
-/

namespace A208357.P6821266996216220408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A078591 (n + 2)) ^ 2

end

end A208357.P6821266996216220408

/-! ## A208357.P1371330987534015894

`A077014(2*n+3)²`
-/

namespace A208357.P1371330987534015894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077014 (2 * n + 3) ^ 2

end

end A208357.P1371330987534015894

/-! ## A208357.P7709520285694787302

`A005316(2*n+3)^2`
-/

namespace A208357.P7709520285694787302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005316 (2 * n + 3) ^ 2

end

end A208357.P7709520285694787302

/-!
# A208358: Number of meanders of order n without 1-1 cuts.

The programs for A208358, there is no canonical definition to state claims against.
-/

/-! ## A208358.P11065102308053268460

`A008828(A000124(n))-A192927(n+1)`
-/

namespace A208358.P11065102308053268460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A000124 n).toNat - A192927 (n + 1)

end

end A208358.P11065102308053268460

/-! ## A208358.P1909637541079097182

`A077641(A108246(n+2))-A308991(3*(n+1))`
-/

namespace A208358.P1909637541079097182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077641 (A108246 (n + 2)).toNat - A308991 (3 * (n + 1))

end

end A208358.P1909637541079097182

/-!
# A208360: Numbered stops on the Lexington Avenue Express (#5) Subway in New York City.

The programs for A208360, there is no canonical definition to state claims against.
-/

/-! ## A208360.P9126141125497744453

`A208359(C(n, floor(n/7))*A002376(n+1))`
-/

namespace A208360.P9126141125497744453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208359 ((Nat.choose n ⌊(n : ℚ) / 7⌋.toNat : ℤ) * A002376 (n + 1)).toNat

end

end A208360.P9126141125497744453

/-! ## A208360.P15235250234419299526

`A208359(A056143(n+2)-A225816(n))`
-/

namespace A208360.P15235250234419299526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208359 (A056143 (n + 2) - A225816 n).toNat

end

end A208360.P15235250234419299526

/-! ## A208360.P10921364793109382229

`A208359(lcm(xor(n, -1), ∏{e}[n+1, #]))`
-/

namespace A208360.P10921364793109382229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208359 (Int.lcm (Int.xor (n : ℤ) (-1)) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ))

end

end A208360.P10921364793109382229

/-!
# A208361: "1-ply" palindromic primes; see Comments.

The programs for A208361, there is no canonical definition to state claims against.
-/

/-! ## A208361.P6745744165831427850

`A222116(A075807(n+1)^A191525(n))`
-/

namespace A208361.P6745744165831427850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222116 (SequenceMachineLib.roundAway ((A075807 (n + 1) : ℚ) ^ (A191525 n : ℤ))).toNat

end

end A208361.P6745744165831427850

/-!
# A208362: "2-ply" palindromic primes.

The programs for A208362, the canonical program `A208362.P16890886380470508085` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208362 has offset 1).

The definition of A208362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208362.P1521801301819089446

`A002385(5+n)`
-/

namespace A208362.P1521801301819089446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (5 + n)

end

end A208362.P1521801301819089446

namespace A208362

/-- `A002385(5+n)` -/
def P1521801301819089446.Spec : Prop :=
  ∀ n, P1521801301819089446.a n = A208362 (n + 1)

end A208362

/-! ## A208362.P8427745855817585848

`A083139(n+5)`
-/

namespace A208362.P8427745855817585848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083139 (n + 5)

end

end A208362.P8427745855817585848

namespace A208362

/-- `A083139(n+5)` -/
def P8427745855817585848.Spec : Prop :=
  ∀ n, P8427745855817585848.a n = A208362 (n + 1)

end A208362

/-! ## A208362.P5339017529051810074

`A069217(n+6)`
-/

namespace A208362.P5339017529051810074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 6)

end

end A208362.P5339017529051810074

namespace A208362

/-- `A069217(n+6)` -/
def P5339017529051810074.Spec : Prop :=
  ∀ n, P5339017529051810074.a n = A208362 (n + 1)

end A208362

/-! ## A208362.P173511330238444066

`Δ[A046485(n+4)]`
-/

namespace A208362.P173511330238444066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046485 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208362.P173511330238444066

namespace A208362

/-- `Δ[A046485(n+4)]` -/
def P173511330238444066.Spec : Prop :=
  ∀ n, P173511330238444066.a n = A208362 (n + 1)

end A208362

/-! ## A208362.P672143881569476963

`∑[A037010(n+4)]+7`
-/

namespace A208362.P672143881569476963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037010 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A208362.P672143881569476963

namespace A208362

/-- `∑[A037010(n+4)]+7` -/
def P672143881569476963.Spec : Prop :=
  ∀ n, P672143881569476963.a n = A208362 (n + 1)

end A208362

/-! ## A208362.P4154137360721892288

`∩[A350836(n+1), A356750(n+4)]`
-/

namespace A208362.P4154137360721892288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356750 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P4154137360721892288

namespace A208362

/-- `∩[A350836(n+1), A356750(n+4)]` -/
def P4154137360721892288.Spec : Prop :=
  ∀ n, (P4154137360721892288.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P7283834180757881464

`∩[A002113(n+1), A120533(n+1)]`
-/

namespace A208362.P7283834180757881464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P7283834180757881464

namespace A208362

/-- `∩[A002113(n+1), A120533(n+1)]` -/
def P7283834180757881464.Spec : Prop :=
  ∀ n, (P7283834180757881464.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P18272500782942509043

`∩[A029950(n+1), A120533(n+1)]`
-/

namespace A208362.P18272500782942509043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P18272500782942509043

namespace A208362

/-- `∩[A029950(n+1), A120533(n+1)]` -/
def P18272500782942509043.Spec : Prop :=
  ∀ n, (P18272500782942509043.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P12523948000230369630

`∩[A062687(n+1), A120533(n+1)]`
-/

namespace A208362.P12523948000230369630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P12523948000230369630

namespace A208362

/-- `∩[A062687(n+1), A120533(n+1)]` -/
def P12523948000230369630.Spec : Prop :=
  ∀ n, (P12523948000230369630.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P7441408858125607699

`∩[A071251(n+1), A120533(n+1)]`
-/

namespace A208362.P7441408858125607699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P7441408858125607699

namespace A208362

/-- `∩[A071251(n+1), A120533(n+1)]` -/
def P7441408858125607699.Spec : Prop :=
  ∀ n, (P7441408858125607699.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P9301029764884095922

`∩[A072299(n+1), A120533(n+1)]`
-/

namespace A208362.P9301029764884095922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P9301029764884095922

namespace A208362

/-- `∩[A072299(n+1), A120533(n+1)]` -/
def P9301029764884095922.Spec : Prop :=
  ∀ n, (P9301029764884095922.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P13044554630612806869

`∩[A075800(n+1), A120533(n+1)]`
-/

namespace A208362.P13044554630612806869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P13044554630612806869

namespace A208362

/-- `∩[A075800(n+1), A120533(n+1)]` -/
def P13044554630612806869.Spec : Prop :=
  ∀ n, (P13044554630612806869.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P14189208993001963211

`∩[A080716(n+1), A120533(n+1)]`
-/

namespace A208362.P14189208993001963211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P14189208993001963211

namespace A208362

/-- `∩[A080716(n+1), A120533(n+1)]` -/
def P14189208993001963211.Spec : Prop :=
  ∀ n, (P14189208993001963211.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P5277192739693330483

`∩[A083136(n+1), A120533(n+1)]`
-/

namespace A208362.P5277192739693330483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P5277192739693330483

namespace A208362

/-- `∩[A083136(n+1), A120533(n+1)]` -/
def P5277192739693330483.Spec : Prop :=
  ∀ n, (P5277192739693330483.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P5687219206331006742

`∩[A083137(n+1), A120533(n+1)]`
-/

namespace A208362.P5687219206331006742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P5687219206331006742

namespace A208362

/-- `∩[A083137(n+1), A120533(n+1)]` -/
def P5687219206331006742.Spec : Prop :=
  ∀ n, (P5687219206331006742.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P690552791939642493

`∩[A084092(n+1), A120533(n+1)]`
-/

namespace A208362.P690552791939642493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P690552791939642493

namespace A208362

/-- `∩[A084092(n+1), A120533(n+1)]` -/
def P690552791939642493.Spec : Prop :=
  ∀ n, (P690552791939642493.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P11827558278982332939

`∩[A098897(n+1), A120533(n+1)]`
-/

namespace A208362.P11827558278982332939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P11827558278982332939

namespace A208362

/-- `∩[A098897(n+1), A120533(n+1)]` -/
def P11827558278982332939.Spec : Prop :=
  ∀ n, (P11827558278982332939.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P16890886380470508085

`∩[A120533(n+1), A169829(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A208362

/-- `∩[A120533(n+1), A169829(n+1)]` -/
def P16890886380470508085.Spec : Prop :=
  ∀ n, (P16890886380470508085.a n : ℤ) = A208362 (n + 1)

theorem P16890886380470508085.correct : P16890886380470508085.Spec := by
  intro n
  simp only [A208362, Nat.add_sub_cancel]

end A208362

/-! ## A208362.P4393911210232489505

`∩[A120533(n+1), A188650(n+1)]`
-/

namespace A208362.P4393911210232489505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P4393911210232489505

namespace A208362

/-- `∩[A120533(n+1), A188650(n+1)]` -/
def P4393911210232489505.Spec : Prop :=
  ∀ n, (P4393911210232489505.a n : ℤ) = A208362 (n + 1)

end A208362

/-! ## A208362.P5476362559771749291

`∩[A120533(n+1), A192139(n+1)]`
-/

namespace A208362.P5476362559771749291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208362.P5476362559771749291

namespace A208362

/-- `∩[A120533(n+1), A192139(n+1)]` -/
def P5476362559771749291.Spec : Prop :=
  ∀ n, (P5476362559771749291.a n : ℤ) = A208362 (n + 1)

end A208362

/-!
# A208364: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208364, there is no canonical definition to state claims against.
-/

/-! ## A208364.P12340375716348451975

`A208369((n+1)²+n²)`
-/

namespace A208364.P12340375716348451975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 ((n + 1) ^ 2 + n ^ 2)

end

end A208364.P12340375716348451975

/-! ## A208364.P17827609028595445805

`record[A003982(n)*A208369(n+1)]`
-/

namespace A208364.P17827609028595445805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208364.P17827609028595445805

/-! ## A208364.P16536245633090623466

`record[A208369(n+1)*A214505(n)]`
-/

namespace A208364.P16536245633090623466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208364.P16536245633090623466

/-! ## A208364.P13312897780394969748

`record[gcd(A003987(n), A208369(n+1))]`
-/

namespace A208364.P13312897780394969748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A208369 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208364.P13312897780394969748

/-! ## A208364.P7966855638549155534

`A208369(A001844(n))+A025439(n)`
-/

namespace A208364.P7966855638549155534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A001844 n).toNat + A025439 n

end

end A208364.P7966855638549155534

/-!
# A208365: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208365, there is no canonical definition to state claims against.
-/

/-! ## A208365.P2454333356724289138

`A207421(n+1)/A207422(n+1)*A207423(n+1)`
-/

namespace A208365.P2454333356724289138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A207422 (n + 1) : ℚ) * (A207423 (n + 1) : ℚ)

end

end A208365.P2454333356724289138

/-! ## A208365.P16572719739311265876

`sqrt(A207069(n+1))*sqrt(A207424(n+1))`
-/

namespace A208365.P16572719739311265876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) : ℝ) * Real.sqrt (A207424 (n + 1) : ℝ)

end

end A208365.P16572719739311265876

/-! ## A208365.P14963827018621195926

`A207421(n+1)/A207423(n+1)*A207424(n+1)`
-/

namespace A208365.P14963827018621195926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A207423 (n + 1) : ℚ) * (A207424 (n + 1) : ℚ)

end

end A208365.P14963827018621195926

/-! ## A208365.P1339341514608570048

`sqrt(A207069(n+1)*A207424(n+1))`
-/

namespace A208365.P1339341514608570048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) * A207424 (n + 1) : ℝ)

end

end A208365.P1339341514608570048

/-! ## A208365.P9150631053732038256

`A208369(A055998(n+2))`
-/

namespace A208365.P9150631053732038256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A055998 (n + 2)).toNat

end

end A208365.P9150631053732038256

/-!
# A208366: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208366, there is no canonical definition to state claims against.
-/

/-! ## A208366.P14245931363115536681

`A207421(n+1)/A207423(n+1)*A207425(n+1)`
-/

namespace A208366.P14245931363115536681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207421 (n + 1) : ℚ) / (A207423 (n + 1) : ℚ) * (A207425 (n + 1) : ℚ)

end

end A208366.P14245931363115536681

/-! ## A208366.P15432269550260390934

`A208369(Δ[A023545(n+1)])`
-/

namespace A208366.P15432269550260390934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (f1 (n + 1) - f1 n).toNat

end

end A208366.P15432269550260390934

/-! ## A208366.P16762821658496904314

`A208369(A052905(n+2)+1)`
-/

namespace A208366.P16762821658496904314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A052905 (n + 2) + 1).toNat

end

end A208366.P16762821658496904314

/-! ## A208366.P7215215736247729537

`A208369(A055999(n+2)+2)`
-/

namespace A208366.P7215215736247729537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A055999 (n + 2) + 2).toNat

end

end A208366.P7215215736247729537

/-! ## A208366.P7874049444781128050

`A208369(A000124(n+5)-5)`
-/

namespace A208366.P7874049444781128050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A000124 (n + 5) - 5).toNat

end

end A208366.P7874049444781128050

/-!
# A208367: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208367, there is no canonical definition to state claims against.
-/

/-! ## A208367.P17003697729531386850

`A208369(A052905(n+3))`
-/

namespace A208367.P17003697729531386850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A052905 (n + 3)).toNat

end

end A208367.P17003697729531386850

/-! ## A208367.P10081950177665790186

`A208369(A056119(n)+16)`
-/

namespace A208367.P10081950177665790186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A056119 n + 16).toNat

end

end A208367.P10081950177665790186

/-! ## A208367.P11329038020791276554

`A208369(eq[3, A219347(n)])`
-/

namespace A208367.P11329038020791276554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208367.P11329038020791276554

/-! ## A208367.P1216108222274203119

`A208369(eq[5, A193592(n)])`
-/

namespace A208367.P1216108222274203119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208367.P1216108222274203119

/-! ## A208367.P1234098637086697850

`A208369(eq[8, A258709(n)])`
-/

namespace A208367.P1234098637086697850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208367.P1234098637086697850

/-!
# A208368: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208368, there is no canonical definition to state claims against.
-/

/-! ## A208368.P4284236134443657799

`A208369(A055999(n+4))`
-/

namespace A208368.P4284236134443657799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A055999 (n + 4)).toNat

end

end A208368.P4284236134443657799

/-! ## A208368.P1442762189920507694

`A208369(eq[4, A219347(n)])`
-/

namespace A208368.P1442762189920507694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208368.P1442762189920507694

/-! ## A208368.P2496805355207065760

`A208369(eq[6, A193592(n)])`
-/

namespace A208368.P2496805355207065760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208368.P2496805355207065760

/-! ## A208368.P9681584253001727978

`A208369(A052905(n+4)-1)`
-/

namespace A208368.P9681584253001727978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A052905 (n + 4) - 1).toNat

end

end A208368.P9681584253001727978

/-! ## A208368.P2561917489760896946

`A208369(eq[10, A185782(n+1)])`
-/

namespace A208368.P2561917489760896946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208368.P2561917489760896946

/-!
# A208370: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208370, there is no canonical definition to state claims against.
-/

/-! ## A208370.P13546263644195310872

`A208369(A052905(n)+9)`
-/

namespace A208370.P13546263644195310872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A052905 n + 9).toNat

end

end A208370.P13546263644195310872

/-! ## A208370.P15962315485066859136

`A208369(A055999(n)+10)`
-/

namespace A208370.P15962315485066859136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A055999 n + 10).toNat

end

end A208370.P15962315485066859136

/-! ## A208370.P257827496561944944

`A208369(A167614(n+2)+1)`
-/

namespace A208370.P257827496561944944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A167614 (n + 2) + 1).toNat

end

end A208370.P257827496561944944

/-! ## A208370.P15966314706332257225

`A208369(A167499(n+2)-1)`
-/

namespace A208370.P15966314706332257225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A167499 (n + 2) - 1).toNat

end

end A208370.P15966314706332257225

/-! ## A208370.P14135705796314611058

`A208369(A000217(n+3)+4)`
-/

namespace A208370.P14135705796314611058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A000217 (n + 3) + 4).toNat

end

end A208370.P14135705796314611058

/-!
# A208371: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208371, there is no canonical definition to state claims against.
-/

/-! ## A208371.P11079729966934230877

`A208369(∑[n+4]+11)`
-/

namespace A208371.P11079729966934230877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A208371.P11079729966934230877

/-! ## A208371.P1993971878691476896

`lcm(2, A208369(A167499(n+3)))`
-/

namespace A208371.P1993971878691476896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208369 (A167499 (n + 3)).toNat)

end

end A208371.P1993971878691476896

/-! ## A208371.P9529503047398746296

`A208369(A167499(n+3))+A025469(n)`
-/

namespace A208371.P9529503047398746296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A167499 (n + 3)).toNat + A025469 n

end

end A208371.P9529503047398746296

/-! ## A208371.P16752675645346030297

`or(A000038(n), A208369(A167499(n+3)))`
-/

namespace A208371.P16752675645346030297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A208369 (A167499 (n + 3)).toNat)

end

end A208371.P16752675645346030297

/-! ## A208371.P14271398274502649751

`A208369(A056000(n)+15)%A208367(n+1)`
-/

namespace A208371.P14271398274502649751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208369 (A056000 n + 15).toNat) (A208367 (n + 1))

end

end A208371.P14271398274502649751

/-!
# A208372: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208372, there is no canonical definition to state claims against.
-/

/-! ## A208372.P9878866319833217799

`A208369(A056115(n)+21)`
-/

namespace A208372.P9878866319833217799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A056115 n + 21).toNat

end

end A208372.P9878866319833217799

/-! ## A208372.P17453090731798946716

`A208369(A052905(n+2)+11)`
-/

namespace A208372.P17453090731798946716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A052905 (n + 2) + 11).toNat

end

end A208372.P17453090731798946716

/-! ## A208372.P940901197562896384

`A208369(eq[5, A002262(n)]+1)`
-/

namespace A208372.P940901197562896384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208372.P940901197562896384

/-! ## A208372.P16560108029983003691

`A208369(eq[7, A131818(n+1)])`
-/

namespace A208372.P16560108029983003691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208372.P16560108029983003691

/-! ## A208372.P11611703121263800825

`A208369(eq[4, A144328(n+1)]+n+7)`
-/

namespace A208372.P11611703121263800825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A208372.P11611703121263800825

/-!
# A208373: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A208373, there is no canonical definition to state claims against.
-/

/-! ## A208373.P807248842497194068

`A208369(eq[11, A066657(n)])`
-/

namespace A208373.P807248842497194068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208373.P807248842497194068

/-! ## A208373.P12568884265039033061

`A208369(A167499(n+5)+2)`
-/

namespace A208373.P12568884265039033061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A167499 (n + 5) + 2).toNat

end

end A208373.P12568884265039033061

/-! ## A208373.P10595968947853222187

`A208369(A000217(n+6)+7)`
-/

namespace A208373.P10595968947853222187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A000217 (n + 6) + 7).toNat

end

end A208373.P10595968947853222187

/-! ## A208373.P2154966132288013414

`A208369(A052905(n+3)+12)`
-/

namespace A208373.P2154966132288013414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (A052905 (n + 3) + 12).toNat

end

end A208373.P2154966132288013414

/-! ## A208373.P10180326576536092376

`A208369(eq[8, A131818(n+1)])`
-/

namespace A208373.P10180326576536092376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208373.P10180326576536092376

/-!
# A208374: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208374, there is no canonical definition to state claims against.
-/

/-! ## A208374.P10285186538829590447

`A208379((n+1)²+n²)`
-/

namespace A208374.P10285186538829590447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 ((n + 1) ^ 2 + n ^ 2)

end

end A208374.P10285186538829590447

/-! ## A208374.P706362264512148017

`A208379(A001844(n))+char[28]`
-/

namespace A208374.P706362264512148017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208374.P706362264512148017

/-! ## A208374.P11543594286145102087

`record[A003982(n)*A208379(n+1)]`
-/

namespace A208374.P11543594286145102087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208374.P11543594286145102087

/-! ## A208374.P232930417813751953

`record[gcd(A114327(n), A208379(n+1))]`
-/

namespace A208374.P232930417813751953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208379 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208374.P232930417813751953

/-! ## A208374.P10352422879468836067

`A001222(A140566(n+1))*A208379(A001844(n))`
-/

namespace A208374.P10352422879468836067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140566 (n + 1)).toNat * A208379 (A001844 n).toNat

end

end A208374.P10352422879468836067

/-!
# A208375: Number of n X 4 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208375, the canonical program `A208375.P8810107549542680136` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208375 has offset 1).

The definition of A208375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208375.P7318923006782802278

`ogf((10+70x-30x^2-10x^3)/(1-3x+3x^2-x^3))`
-/

namespace A208375.P7318923006782802278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 70, -30, -10] [1, -3, 3, -1] n

end

end A208375.P7318923006782802278

namespace A208375

/-- `ogf((10+70x-30x^2-10x^3)/(1-3x+3x^2-x^3))` -/
def P7318923006782802278.Spec : Prop :=
  ∀ n, P7318923006782802278.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P5220190091195703099

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=10, a(1)=100, a(2)=240, a(3)=420`
-/

namespace A208375.P5220190091195703099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 100, 240, 420] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A208375.P5220190091195703099

namespace A208375

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5220190091195703099.Spec : Prop :=
  ∀ n, P5220190091195703099.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P6749811366469825537

`10*(A008458(n)+∑[4*n])`
-/

namespace A208375.P6749811366469825537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A008458 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A208375.P6749811366469825537

namespace A208375

/-- `10*(A008458(n)+∑[4*n])` -/
def P6749811366469825537.Spec : Prop :=
  ∀ n, P6749811366469825537.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P15086278718499724735

`10*(A014106(n)+A008706(n))`
-/

namespace A208375.P15086278718499724735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A014106 n + A008706 n)

end

end A208375.P15086278718499724735

namespace A208375

/-- `10*(A014106(n)+A008706(n))` -/
def P15086278718499724735.Spec : Prop :=
  ∀ n, P15086278718499724735.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P11599623575497048367

`10*(A022144(n)+A001105(n))`
-/

namespace A208375.P11599623575497048367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A022144 n + A001105 n)

end

end A208375.P11599623575497048367

namespace A208375

/-- `10*(A022144(n)+A001105(n))` -/
def P11599623575497048367.Spec : Prop :=
  ∀ n, P11599623575497048367.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P8810107549542680136

`10*(A033537(n)+A008486(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208375

/-- `10*(A033537(n)+A008486(n))` -/
def P8810107549542680136.Spec : Prop :=
  ∀ n, P8810107549542680136.a n = A208375 (n + 1)

theorem P8810107549542680136.correct : P8810107549542680136.Spec := by
  intro n
  simp only [A208375, Nat.add_sub_cancel]

end A208375

/-! ## A208375.P13177104116064579024

`10*(A046092(n)+A008458(n))`
-/

namespace A208375.P13177104116064579024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A046092 n + A008458 n)

end

end A208375.P13177104116064579024

namespace A208375

/-- `10*(A046092(n)+A008458(n))` -/
def P13177104116064579024.Spec : Prop :=
  ∀ n, P13177104116064579024.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P3378039445319029265

`10*(A059993(n)+A004273(n))`
-/

namespace A208375.P3378039445319029265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A059993 n + A004273 n)

end

end A208375.P3378039445319029265

namespace A208375

/-- `10*(A059993(n)+A004273(n))` -/
def P3378039445319029265.Spec : Prop :=
  ∀ n, P3378039445319029265.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P6639861981862991057

`A195322(n)+10*A022144(n)`
-/

namespace A208375.P6639861981862991057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195322 n + 10 * A022144 n

end

end A208375.P6639861981862991057

namespace A208375

/-- `A195322(n)+10*A022144(n)` -/
def P6639861981862991057.Spec : Prop :=
  ∀ n, P6639861981862991057.a n = A208375 (n + 1)

end A208375

/-! ## A208375.P17535260419607462502

`10*(A055998(2*n)+A008486(n))`
-/

namespace A208375.P17535260419607462502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A055998 (2 * n) + A008486 n)

end

end A208375.P17535260419607462502

namespace A208375

/-- `10*(A055998(2*n)+A008486(n))` -/
def P17535260419607462502.Spec : Prop :=
  ∀ n, P17535260419607462502.a n = A208375 (n + 1)

end A208375

/-!
# A208376: Number of n X 5 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208376, the canonical program `A208376.P1036309167228574095` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208376 has offset 1).

The definition of A208376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208376.P4238702677960999702

`ogf((16+208x-16x^2-16x^3)/(1-3x+3x^2-x^3))`
-/

namespace A208376.P4238702677960999702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 208, -16, -16] [1, -3, 3, -1] n

end

end A208376.P4238702677960999702

namespace A208376

/-- `ogf((16+208x-16x^2-16x^3)/(1-3x+3x^2-x^3))` -/
def P4238702677960999702.Spec : Prop :=
  ∀ n, P4238702677960999702.a n = A208376 (n + 1)

end A208376

/-! ## A208376.P1036309167228574095

`16*(A033580(n)+A022144(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208376

/-- `16*(A033580(n)+A022144(n))` -/
def P1036309167228574095.Spec : Prop :=
  ∀ n, P1036309167228574095.a n = A208376 (n + 1)

theorem P1036309167228574095.correct : P1036309167228574095.Spec := by
  intro n
  simp only [A208376, Nat.add_sub_cancel]

end A208376

/-! ## A208376.P17323015313368291960

`16*(A202804(n)+A008458(n))`
-/

namespace A208376.P17323015313368291960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A202804 n + A008458 n)

end

end A208376.P17323015313368291960

namespace A208376

/-- `16*(A202804(n)+A008458(n))` -/
def P17323015313368291960.Spec : Prop :=
  ∀ n, P17323015313368291960.a n = A208376 (n + 1)

end A208376

/-! ## A208376.P8806043463672644434

`record[A006370(n+4)*A008590(n+1)]`
-/

namespace A208376.P8806043463672644434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (n + 4) * A008590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208376.P8806043463672644434

namespace A208376

/-- `record[A006370(n+4)*A008590(n+1)]` -/
def P8806043463672644434.Spec : Prop :=
  ∀ n, P8806043463672644434.a n = A208376 (n + 1)

end A208376

/-! ## A208376.P8900919747157848722

`record[A006370(n+4)*A022144(n+1)]`
-/

namespace A208376.P8900919747157848722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (n + 4) * A022144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208376.P8900919747157848722

namespace A208376

/-- `record[A006370(n+4)*A022144(n+1)]` -/
def P8900919747157848722.Spec : Prop :=
  ∀ n, P8900919747157848722.a n = A208376 (n + 1)

end A208376

/-! ## A208376.P8540894693943746843

`A008574(n)*A017569(record[A247617(n)])`
-/

namespace A208376.P8540894693943746843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n * A017569 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208376.P8540894693943746843

namespace A208376

/-- `A008574(n)*A017569(record[A247617(n)])` -/
def P8540894693943746843.Spec : Prop :=
  ∀ n, P8540894693943746843.a n = A208376 (n + 1)

end A208376

/-! ## A208376.P10572189647755593247

`record[A017569(A247617(n))*A103517(n)]`
-/

namespace A208376.P10572189647755593247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (A247617 n).toNat * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208376.P10572189647755593247

namespace A208376

/-- `record[A017569(A247617(n))*A103517(n)]` -/
def P10572189647755593247.Spec : Prop :=
  ∀ n, P10572189647755593247.a n = A208376 (n + 1)

end A208376

/-! ## A208376.P10113902151440802572

`A008574(A008574(n))*A033627(A005818(n+1))`
-/

namespace A208376.P10113902151440802572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008574 n).toNat * A033627 (A005818 (n + 1)).toNat

end

end A208376.P10113902151440802572

namespace A208376

/-- `A008574(A008574(n))*A033627(A005818(n+1))` -/
def P10113902151440802572.Spec : Prop :=
  ∀ n, P10113902151440802572.a n = A208376 (n + 1)

end A208376

/-! ## A208376.P15348100454878546253

`16*A019425(A144390(n+1))`
-/

namespace A208376.P15348100454878546253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A019425 (A144390 (n + 1)).toNat

end

end A208376.P15348100454878546253

namespace A208376

/-- `16*A019425(A144390(n+1))` -/
def P15348100454878546253.Spec : Prop :=
  ∀ n, P15348100454878546253.a n = A208376 (n + 1)

end A208376

/-!
# A208377: Number of n X 6 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208377, the canonical program `A208377.P8421643164173758022` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208377 has offset 1).

The definition of A208377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208377.P2574936265606005463

`ogf((26+598x+130x^2-26x^3)/(1-3x+3x^2-x^3))`
-/

namespace A208377.P2574936265606005463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [26, 598, 130, -26] [1, -3, 3, -1] n

end

end A208377.P2574936265606005463

namespace A208377

/-- `ogf((26+598x+130x^2-26x^3)/(1-3x+3x^2-x^3))` -/
def P2574936265606005463.Spec : Prop :=
  ∀ n, P2574936265606005463.a n = A208377 (n + 1)

end A208377

/-! ## A208377.P8421643164173758022

`26*(record[xor(1, n)*xor(2, n)]-A005893(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208377

/-- `26*(record[xor(1, n)*xor(2, n)]-A005893(n))` -/
def P8421643164173758022.Spec : Prop :=
  ∀ n, P8421643164173758022.a n = A208377 (n + 1)

theorem P8421643164173758022.correct : P8421643164173758022.Spec := by
  intro n
  simp only [A208377, Nat.add_sub_cancel]

end A208377

/-! ## A208377.P8597322991023773647

`A208379(A052905(n+3))`
-/

namespace A208377.P8597322991023773647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A052905 (n + 3)).toNat

end

end A208377.P8597322991023773647

namespace A208377

/-- `A208379(A052905(n+3))` -/
def P8597322991023773647.Spec : Prop :=
  ∀ n, P8597322991023773647.a n = A208377 (n + 1)

end A208377

/-! ## A208377.P4833423956052633849

`A208379(A034856(n+5)-3)`
-/

namespace A208377.P4833423956052633849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A034856 (n + 5) - 3).toNat

end

end A208377.P4833423956052633849

namespace A208377

/-- `A208379(A034856(n+5)-3)` -/
def P4833423956052633849.Spec : Prop :=
  ∀ n, P4833423956052633849.a n = A208377 (n + 1)

end A208377

/-! ## A208377.P13140403620005177821

`A208379(A000096(n+5)-4)`
-/

namespace A208377.P13140403620005177821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000096 (n + 5) - 4).toNat

end

end A208377.P13140403620005177821

namespace A208377

/-- `A208379(A000096(n+5)-4)` -/
def P13140403620005177821.Spec : Prop :=
  ∀ n, P13140403620005177821.a n = A208377 (n + 1)

end A208377

/-!
# A208378: Number of n X 7 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208378, there is no canonical definition to state claims against.
-/

/-! ## A208378.P6228575940643422083

`A208379(A055999(n+4))`
-/

namespace A208378.P6228575940643422083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A055999 (n + 4)).toNat

end

end A208378.P6228575940643422083

/-! ## A208378.P5553333835795475569

`A208379(A052905(n+4)-1)`
-/

namespace A208378.P5553333835795475569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A052905 (n + 4) - 1).toNat

end

end A208378.P5553333835795475569

/-! ## A208378.P6176063955713377330

`A208379(A000124(n+7)-7)`
-/

namespace A208378.P6176063955713377330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000124 (n + 7) - 7).toNat

end

end A208378.P6176063955713377330

/-! ## A208378.P15312683589378242898

`A208379(eq[7, A004736(n+1)]+1)`
-/

namespace A208378.P15312683589378242898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208378.P15312683589378242898

/-! ## A208378.P11886061682318022980

`A208379(A000096(n+5)+n+2)`
-/

namespace A208378.P11886061682318022980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A208378.P11886061682318022980

/-!
# A208379: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208379, there is no canonical definition to state claims against.
-/

/-! ## A208379.P2453955358409793848

`and(A207845(n+1), A208069(A077168(n)))`
-/

namespace A208379.P2453955358409793848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207845 (n + 1)) (A208069 (A077168 n).toNat)

end

end A208379.P2453955358409793848

/-! ## A208379.P14038431410658615662

`and(A207845(A077168(n)), A208555(n+1))`
-/

namespace A208379.P14038431410658615662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207845 (A077168 n).toNat) (A208555 (n + 1))

end

end A208379.P14038431410658615662

/-! ## A208379.P18007860780039880985

`and(A207845(A077168(n)), A208688(n+1))`
-/

namespace A208379.P18007860780039880985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207845 (A077168 n).toNat) (A208688 (n + 1))

end

end A208379.P18007860780039880985

/-! ## A208379.P12269028937485600053

`and(A207845(A077168(n)), A208840(n+1))`
-/

namespace A208379.P12269028937485600053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207845 (A077168 n).toNat) (A208840 (n + 1))

end

end A208379.P12269028937485600053

/-! ## A208379.P106413874595745250

`and(A207845(n+1), A207928(A114327(n)+A077168(n)))`
-/

namespace A208379.P106413874595745250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A207845 (n + 1)) (A207928 (A114327 n + A077168 n).toNat)

end

end A208379.P106413874595745250

/-!
# A208380: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208380, there is no canonical definition to state claims against.
-/

/-! ## A208380.P5652030347469509461

`A206981(n+1)/A207840(n+1)*A208070(n+1)`
-/

namespace A208380.P5652030347469509461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206981 (n + 1) : ℚ) / (A207840 (n + 1) : ℚ) * (A208070 (n + 1) : ℚ)

end

end A208380.P5652030347469509461

/-! ## A208380.P13156290733517774468

`A207840(n+1)/A207924(n+1)*A208070(n+1)`
-/

namespace A208380.P13156290733517774468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207840 (n + 1) : ℚ) / (A207924 (n + 1) : ℚ) * (A208070 (n + 1) : ℚ)

end

end A208380.P13156290733517774468

/-! ## A208380.P9538353719352552241

`sqrt(A206981(n+1))*sqrt(A208071(n+1))`
-/

namespace A208380.P9538353719352552241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) : ℝ) * Real.sqrt (A208071 (n + 1) : ℝ)

end

end A208380.P9538353719352552241

/-! ## A208380.P4392194471965562146

`sqrt(A206981(n+1)*A208071(n+1))`
-/

namespace A208380.P4392194471965562146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) * A208071 (n + 1) : ℝ)

end

end A208380.P4392194471965562146

/-! ## A208380.P11819761880201023723

`A208379(A052905(n)+9)`
-/

namespace A208380.P11819761880201023723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A052905 n + 9).toNat

end

end A208380.P11819761880201023723

/-! ## A208380.P17409391839022891138

`A208379(A055999(n)+10)`
-/

namespace A208380.P17409391839022891138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A055999 n + 10).toNat

end

end A208380.P17409391839022891138

/-! ## A208380.P17429149210304576

`A208379(A167614(n+2)+1)`
-/

namespace A208380.P17429149210304576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A167614 (n + 2) + 1).toNat

end

end A208380.P17429149210304576

/-! ## A208380.P5456425667944386147

`A208379(A166136(n+2)-2)`
-/

namespace A208380.P5456425667944386147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A166136 (n + 2) - 2).toNat

end

end A208380.P5456425667944386147

/-! ## A208380.P9124663555222332303

`A208379(A167487(n+1)+n)`
-/

namespace A208380.P9124663555222332303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A167487 (n + 1) + (n : ℤ)).toNat

end

end A208380.P9124663555222332303

/-! ## A208380.P15192318936368278256

`A208379(A166136(n+1)+1+n)`
-/

namespace A208380.P15192318936368278256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A208380.P15192318936368278256

/-!
# A208381: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208381, there is no canonical definition to state claims against.
-/

/-! ## A208381.P17413937785780469122

`A208379(A167499(n+3))`
-/

namespace A208381.P17413937785780469122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A167499 (n + 3)).toNat

end

end A208381.P17413937785780469122

/-! ## A208381.P8959770366992465852

`A208379(A000124(n+4)+4)`
-/

namespace A208381.P8959770366992465852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000124 (n + 4) + 4).toNat

end

end A208381.P8959770366992465852

/-! ## A208381.P6830175524395957572

`A208379(A000217(n+4)+5)`
-/

namespace A208381.P6830175524395957572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000217 (n + 4) + 5).toNat

end

end A208381.P6830175524395957572

/-! ## A208381.P14048058970508651736

`A208379(A055998(n+4)-(2*n+3))`
-/

namespace A208381.P14048058970508651736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A055998 (n + 4) - (2 * n + 3 : ℤ)).toNat

end

end A208381.P14048058970508651736

/-! ## A208381.P4964463547452651160

`A208379(A002378(n+4)-A052905(n+1))`
-/

namespace A208381.P4964463547452651160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A002378 (n + 4) - A052905 (n + 1)).toNat

end

end A208381.P4964463547452651160

/-!
# A208382: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208382, there is no canonical definition to state claims against.
-/

/-! ## A208382.P4133519473533961505

`A208379(A167499(n+4)+1)`
-/

namespace A208382.P4133519473533961505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A167499 (n + 4) + 1).toNat

end

end A208382.P4133519473533961505

/-! ## A208382.P18279624071543295555

`A208379(A000217(n+5)+6)`
-/

namespace A208382.P18279624071543295555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000217 (n + 5) + 6).toNat

end

end A208382.P18279624071543295555

/-! ## A208382.P14762733793962851959

`A208379(A038722(A052905(n+3)))`
-/

namespace A208382.P14762733793962851959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A208382.P14762733793962851959

/-! ## A208382.P10306615736767189914

`A208379(A187710(n+8)-A052905(n+8))`
-/

namespace A208382.P10306615736767189914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A187710 (n + 8) - A052905 (n + 8)).toNat

end

end A208382.P10306615736767189914

/-! ## A208382.P15767728395084252563

`A208379(A187710(n+8)%A052905(n+8))`
-/

namespace A208382.P15767728395084252563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (Int.tmod (A187710 (n + 8)) (A052905 (n + 8))).toNat

end

end A208382.P15767728395084252563

/-!
# A208383: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A208383, there is no canonical definition to state claims against.
-/

/-! ## A208383.P18444252172027486921

`A208379(A166136(n+5)+1)`
-/

namespace A208383.P18444252172027486921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A166136 (n + 5) + 1).toNat

end

end A208383.P18444252172027486921

/-! ## A208383.P10699880187147735206

`A208379(A167499(n+5)+2)`
-/

namespace A208383.P10699880187147735206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A167499 (n + 5) + 2).toNat

end

end A208383.P10699880187147735206

/-! ## A208383.P16978821606515672102

`A208379(A000124(n+6)+6)`
-/

namespace A208383.P16978821606515672102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000124 (n + 6) + 6).toNat

end

end A208383.P16978821606515672102

/-! ## A208383.P4193555645368132787

`A208379(A000096(n+5)+8)`
-/

namespace A208383.P4193555645368132787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000096 (n + 5) + 8).toNat

end

end A208383.P4193555645368132787

/-! ## A208383.P3662843685294624186

`A208379(A000217(n+6)+7)`
-/

namespace A208383.P3662843685294624186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208379 (A000217 (n + 6) + 7).toNat

end

end A208383.P3662843685294624186

/-!
# A208384: Expansion of c(q) * b(q^2) * c(q^2) / 9 in powers of q where b(), c() are cubic AGM theta functions.

The programs for A208384, there is no canonical definition to state claims against.
-/

/-! ## A208384.P519644245905163255

`A208385(n+1)/A131713(n)`
-/

namespace A208384.P519644245905163255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208385 (n + 1) : ℚ) / (A131713 n : ℚ)

end

end A208384.P519644245905163255

/-! ## A208384.P17533674179643548524

`A208385(n+1)/Δ[A004482(n)]`
-/

namespace A208384.P17533674179643548524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208385 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A208384.P17533674179643548524

/-! ## A208384.P8301337524043351112

`A208385(n+1)/Δ[A117966(n)]`
-/

namespace A208384.P8301337524043351112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208385 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A208384.P8301337524043351112

/-! ## A208384.P12639702461958736333

`A208385(2*(n+1))/2-A208385(2*(n+1))`
-/

namespace A208384.P12639702461958736333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208385 (2 * (n + 1)) : ℚ) / 2 - (A208385 (2 * (n + 1)) : ℚ)

end

end A208384.P12639702461958736333

/-! ## A208384.P10656740176709421048

`A208385(n+1)/A208385(A059126(4*n))`
-/

namespace A208384.P10656740176709421048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208385 (n + 1) : ℚ) / (A208385 (A059126 (4 * n)).toNat : ℚ)

end

end A208384.P10656740176709421048

/-!
# A208385: Expansion of b(q) * c(q) * c(q^2) / 9 in powers of q where b(), c() are cubic AGM theta functions.

The programs for A208385, there is no canonical definition to state claims against.
-/

/-! ## A208385.P13485464122079074376

`A131713(n)*A208384(n+1)`
-/

namespace A208385.P13485464122079074376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A208384 (n + 1)

end

end A208385.P13485464122079074376

/-! ## A208385.P17809542110860546226

`A208384(2*(n+1))`
-/

namespace A208385.P17809542110860546226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (2 * (n + 1))

end

end A208385.P17809542110860546226

/-! ## A208385.P7840847442588883769

`A208384(A103517(n))/(1-4/2)²`
-/

namespace A208385.P7840847442588883769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208384 (A103517 n).toNat : ℚ) / (1 - (4 : ℚ) / 2) ^ 2

end

end A208385.P7840847442588883769

/-! ## A208385.P1228221233348892708

`A208384(A317440(n+1))%(n+2)²²`
-/

namespace A208385.P1228221233348892708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208384 (A317440 (n + 1)).toNat) (((n + 2) ^ 2) ^ 2 : ℤ)

end

end A208385.P1228221233348892708

/-! ## A208385.P12347887252667906944

`A208384(A103517(n))%A004771(n)`
-/

namespace A208385.P12347887252667906944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208384 (A103517 n).toNat) (A004771 n)

end

end A208385.P12347887252667906944

/-! ## A208385.P15098850447252608638

`A208384(A103517(n))^A057428(n)²`
-/

namespace A208385.P15098850447252608638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208384 (A103517 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A208385.P15098850447252608638

/-! ## A208385.P17278735006678902956

`Δ[A004773(n)]*A208384(A103517(n))`
-/

namespace A208385.P17278735006678902956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208384 (A103517 n).toNat

end

end A208385.P17278735006678902956

/-! ## A208385.P9330188824803240721

`Δ[A007095(n)]*A208384(A103517(n))`
-/

namespace A208385.P9330188824803240721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208384 (A103517 n).toNat

end

end A208385.P9330188824803240721

/-! ## A208385.P6875901498249562021

`A093178(2*n)*A208384(A103517(n))`
-/

namespace A208385.P6875901498249562021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A208384 (A103517 n).toNat

end

end A208385.P6875901498249562021

/-! ## A208385.P11238714534408937001

`A010153(A005408(n))*A208384(A103517(n))`
-/

namespace A208385.P11238714534408937001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 (A005408 n).toNat * A208384 (A103517 n).toNat

end

end A208385.P11238714534408937001

/-!
# A208386: Number of n X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208386, there is no canonical definition to state claims against.
-/

/-! ## A208386.P620355188665703455

`A208392((n+1)²+n²)`
-/

namespace A208386.P620355188665703455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 ((n + 1) ^ 2 + n ^ 2)

end

end A208386.P620355188665703455

/-! ## A208386.P14017748341272748691

`record[gcd(A112467(n), A208392(n+1))]`
-/

namespace A208386.P14017748341272748691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A208392 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208386.P14017748341272748691

/-!
# A208387: Number of nX3 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208387, there is no canonical definition to state claims against.
-/

/-! ## A208387.P4578731543880682703

`ogf((5-13x)/(1-26x))`
-/

namespace A208387.P4578731543880682703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -13] [1, -26] n

end

end A208387.P4578731543880682703

/-! ## A208387.P14282897064703178184

`26*a(n-1)` with `a(0)=5, a(1)=117`
-/

namespace A208387.P14282897064703178184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 117] fun n a =>
  26 * a (n - 1)

end

end A208387.P14282897064703178184

/-! ## A208387.P662517040940571733

`13^n*A116453(n+1)`
-/

namespace A208387.P662517040940571733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 ^ n : ℤ) * A116453 (n + 1)

end

end A208387.P662517040940571733

/-! ## A208387.P6418317642319805869

`A208392(∑[n+3]+1)`
-/

namespace A208387.P6418317642319805869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208387.P6418317642319805869

/-! ## A208387.P5098687464290763486

`or(char[1], A208392(A034856(n+2)))`
-/

namespace A208387.P5098687464290763486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208392 (A034856 (n + 2)).toNat)

end

end A208387.P5098687464290763486

/-!
# A208388: Number of n X 4 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208388, there is no canonical definition to state claims against.
-/

/-! ## A208388.P3167082737441143222

`ogf((14-47x+18x^2)/(1-76x+36x^2))`
-/

namespace A208388.P3167082737441143222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -47, 18] [1, -76, 36] n

end

end A208388.P3167082737441143222

/-! ## A208388.P14587983389946843727

`A208393(2*(n+1))`
-/

namespace A208388.P14587983389946843727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208393 (2 * (n + 1))

end

end A208388.P14587983389946843727

/-! ## A208388.P14556318733102795008

`A208316(2*n+1)+A208316(2*(n+1))-A254657(2*n)`
-/

namespace A208388.P14556318733102795008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208316 (2 * n + 1) + (A208316 (2 * (n + 1)) - A254657 (2 * n))

end

end A208388.P14556318733102795008

/-! ## A208388.P6088655841181430992

`A208392(A141214(n+1))`
-/

namespace A208388.P6088655841181430992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A141214 (n + 1)).toNat

end

end A208388.P6088655841181430992

/-! ## A208388.P7057102887993354999

`A208392(A056000(n)+7)`
-/

namespace A208388.P7057102887993354999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A056000 n + 7).toNat

end

end A208388.P7057102887993354999

/-!
# A208389: Number of n X 5 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208389, there is no canonical definition to state claims against.
-/

/-! ## A208389.P8003716244759572900

`A208392(Δ[A264443(n)])`
-/

namespace A208389.P8003716244759572900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (f1 (n + 1) - f1 n).toNat

end

end A208389.P8003716244759572900

/-! ## A208389.P9193056713737417844

`A208392(eq[4, A193592(n)])`
-/

namespace A208389.P9193056713737417844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208389.P9193056713737417844

/-! ## A208389.P13648022661967064438

`A208392(Δ[A023545(n+1)])`
-/

namespace A208389.P13648022661967064438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (f1 (n + 1) - f1 n).toNat

end

end A208389.P13648022661967064438

/-! ## A208389.P1992995340093600903

`A208392(A264443(n+1)-A264443(n))`
-/

namespace A208389.P1992995340093600903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A264443 (n + 1) - A264443 n).toNat

end

end A208389.P1992995340093600903

/-! ## A208389.P9754354373413728672

`A208392(eq[5, A200370(n+1)])`
-/

namespace A208389.P9754354373413728672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208389.P9754354373413728672

/-!
# A208390: Number of nX6 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208390, there is no canonical definition to state claims against.
-/

/-! ## A208390.P5040493726996831554

`A208392(A052905(n+3))`
-/

namespace A208390.P5040493726996831554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A052905 (n + 3)).toNat

end

end A208390.P5040493726996831554

/-! ## A208390.P11381478176993376006

`A208392(eq[1, A219347(n)-2])`
-/

namespace A208390.P11381478176993376006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208390.P11381478176993376006

/-! ## A208390.P1022673741620106947

`A208392(eq[5, A025581(n)]+1)`
-/

namespace A208390.P1022673741620106947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208390.P1022673741620106947

/-! ## A208390.P102295894151390346

`A208392(A167499(n+3)+2*n+1)`
-/

namespace A208390.P102295894151390346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A208390.P102295894151390346

/-!
# A208391: Number of nX7 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208391, there is no canonical definition to state claims against.
-/

/-! ## A208391.P14989927333442077428

`A208392(eq[4, A219347(n)])`
-/

namespace A208391.P14989927333442077428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208391.P14989927333442077428

/-! ## A208391.P1898566879708827059

`A208392(eq[6, A025581(n)]+1)`
-/

namespace A208391.P1898566879708827059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208391.P1898566879708827059

/-!
# A208392: T(n,k)=Number of nXk 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208392, there is no canonical definition to state claims against.
-/

/-! ## A208392.P8794729773190735637

`A296664(A326199(n+1)+A160120(n))`
-/

namespace A208392.P8794729773190735637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296664 (A326199 (n + 1) + A160120 n).toNat

end

end A208392.P8794729773190735637

/-! ## A208392.P17932450588204463443

`A341027(A299274(n))+A208960(n+1)`
-/

namespace A208392.P17932450588204463443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A299274 n).toNat + 220) + A208960 (n + 1)

end

end A208392.P17932450588204463443

/-! ## A208392.P16554507234933982390

`or(A000005(A273313(n)), A199655(n+1))`
-/

namespace A208392.P16554507234933982390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A273313 n).toNat) (A199655 (n + 1))

end

end A208392.P16554507234933982390

/-! ## A208392.P12130613347904091129

`or(A000005(A273313(n)), A241114(n+1))`
-/

namespace A208392.P12130613347904091129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A273313 n).toNat) (A241114 (n + 1))

end

end A208392.P12130613347904091129

/-!
# A208393: Number of 2 X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208393, the canonical program `A208393.P11557354444144396826` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208393 has offset 1).

The definition of A208393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208393.P14890469713525322060

`ogf((-2+2x+7x^2+3x^3)/(-1+8x+6x^2))`
-/

namespace A208393.P14890469713525322060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -7, -3] [1, -8, -6] n

end

end A208393.P14890469713525322060

namespace A208393

/-- `ogf((-2+2x+7x^2+3x^3)/(-1+8x+6x^2))` -/
def P14890469713525322060.Spec : Prop :=
  ∀ n, P14890469713525322060.a n = A208393 (n + 1)

end A208393

/-! ## A208393.P11557354444144396826

`ceil(3/2*A254657(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208393

/-- `ceil(3/2*A254657(n))` -/
def P11557354444144396826.Spec : Prop :=
  ∀ n, P11557354444144396826.a n = A208393 (n + 1)

theorem P11557354444144396826.correct : P11557354444144396826.Spec := by
  intro n
  simp only [A208393, Nat.add_sub_cancel]

end A208393

/-! ## A208393.P10556558568083149806

`round(A122553(n+1)/2*A254657(n))`
-/

namespace A208393.P10556558568083149806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A122553 (n + 1) : ℚ) / 2 * (A254657 n : ℚ))

end

end A208393.P10556558568083149806

namespace A208393

/-- `round(A122553(n+1)/2*A254657(n))` -/
def P10556558568083149806.Spec : Prop :=
  ∀ n, P10556558568083149806.a n = A208393 (n + 1)

end A208393

/-! ## A208393.P9883989466290994051

`round((A020639(2*(n+1))+1)/2*A254657(n))`
-/

namespace A208393.P9883989466290994051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020639 (2 * (n + 1)) + 1 : ℚ) / 2 * (A254657 n : ℚ))

end

end A208393.P9883989466290994051

namespace A208393

/-- `round((A020639(2*(n+1))+1)/2*A254657(n))` -/
def P9883989466290994051.Spec : Prop :=
  ∀ n, P9883989466290994051.a n = A208393 (n + 1)

end A208393

/-! ## A208393.P4250923665098138094

`A208392(∑[n+1]+2)`
-/

namespace A208393.P4250923665098138094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208393.P4250923665098138094

namespace A208393

/-- `A208392(∑[n+1]+2)` -/
def P4250923665098138094.Spec : Prop :=
  ∀ n, P4250923665098138094.a n = A208393 (n + 1)

end A208393

/-!
# A208394: Number of 3 X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208394, there is no canonical definition to state claims against.
-/

/-! ## A208394.P16984627077421833844

`ogf((5+12x-42x^2-78x^3+4x^4+24x^5)/(1-22x-80x^2-40x^3+48x^4))`
-/

namespace A208394.P16984627077421833844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 12, -42, -78, 4, 24] [1, -22, -80, -40, 48] n

end

end A208394.P16984627077421833844

/-! ## A208394.P2248359995853303823

`A208392(∑[n+2]+4)`
-/

namespace A208394.P2248359995853303823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208394.P2248359995853303823

/-! ## A208394.P15603974397328992956

`A208392(A167614(n+1))+A011745(n)`
-/

namespace A208394.P15603974397328992956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A167614 (n + 1)).toNat + A011745 n

end

end A208394.P15603974397328992956

/-! ## A208394.P2470873050077719185

`A036225(n)*A208392(A167614(n+1))`
-/

namespace A208394.P2470873050077719185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A208392 (A167614 (n + 1)).toNat

end

end A208394.P2470873050077719185

/-! ## A208394.P10089330548807184761

`or(A151933(n), A208392(A167614(n+1)))`
-/

namespace A208394.P10089330548807184761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A208392 (A167614 (n + 1)).toNat)

end

end A208394.P10089330548807184761

/-!
# A208395: Number of 4 X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208395, there is no canonical definition to state claims against.
-/

/-! ## A208395.P7926231525527404976

`A208392(A141214(n)+7)`
-/

namespace A208395.P7926231525527404976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A141214 n + 7).toNat

end

end A208395.P7926231525527404976

/-! ## A208395.P12846118879340541951

`A208392(A052905(n)+9)`
-/

namespace A208395.P12846118879340541951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A052905 n + 9).toNat

end

end A208395.P12846118879340541951

/-! ## A208395.P15106422009476770991

`A208392(A055999(n)+10)`
-/

namespace A208395.P15106422009476770991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A055999 n + 10).toNat

end

end A208395.P15106422009476770991

/-! ## A208395.P2113846446653494197

`A208392(A167614(n+2)+1)`
-/

namespace A208395.P2113846446653494197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A167614 (n + 2) + 1).toNat

end

end A208395.P2113846446653494197

/-! ## A208395.P14086942901246369693

`A208392(A112355(n+1)+4)`
-/

namespace A208395.P14086942901246369693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A112355 (n + 1) + 4).toNat

end

end A208395.P14086942901246369693

/-!
# A208396: Number of 5Xn 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208396, there is no canonical definition to state claims against.
-/

/-! ## A208396.P8775887182566519292

`A208392(A167499(n+3))`
-/

namespace A208396.P8775887182566519292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A167499 (n + 3)).toNat

end

end A208396.P8775887182566519292

/-! ## A208396.P16388092777506177021

`A208392(A056000(n)+15)`
-/

namespace A208396.P16388092777506177021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A056000 n + 15).toNat

end

end A208396.P16388092777506177021

/-! ## A208396.P469778001612766593

`A208392(eq[7, A066657(n)])`
-/

namespace A208396.P469778001612766593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208396.P469778001612766593

/-! ## A208396.P8646904450193326606

`A208392(eq[6, A131818(n+1)])`
-/

namespace A208396.P8646904450193326606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208396.P8646904450193326606

/-! ## A208396.P17384405513932820197

`A208392(A000124(n+5)-(n+1))`
-/

namespace A208396.P17384405513932820197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A208396.P17384405513932820197

/-!
# A208397: Number of 6Xn 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208397, there is no canonical definition to state claims against.
-/

/-! ## A208397.P11850990746698612480

`A208392(Δ[A264443(n)]+10)`
-/

namespace A208397.P11850990746698612480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208392 (f1 (n + 1) - f1 n + 10).toNat

end

end A208397.P11850990746698612480

/-!
# A208399: Smallest prime factor of (n^n)^2 + 1 having the form k*n+1.

The programs for A208399, there is no canonical definition to state claims against.
-/

/-! ## A208399.P17834370268175998279

`(n+2)*A208400(n+2)+1`
-/

namespace A208399.P17834370268175998279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A208400 (n + 2) + 1

end

end A208399.P17834370268175998279

