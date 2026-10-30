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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A262600: Number of Dyck paths of semilength n and height exactly 4.

The programs for A262600, the canonical program `A262600.P10697025682239794580` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262600 has offset 0).

The definition of A262600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262600.P10697025682239794580

`A124302(n)-A001519(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A262600

/-- `A124302(n)-A001519(n)` -/
def P10697025682239794580.Spec : Prop :=
  ∀ n, P10697025682239794580.a n = A262600 n

theorem P10697025682239794580.correct : P10697025682239794580.Spec := by
  intro n
  simp only [A262600]

end A262600

/-! ## A262600.P13895667432388456705

`ogf(x^4/(1-7x+16x^2-13x^3+3x^4))`
-/

namespace A262600.P13895667432388456705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -7, 16, -13, 3] n

end

end A262600.P13895667432388456705

namespace A262600

/-- `ogf(x^4/(1-7x+16x^2-13x^3+3x^4))` -/
def P13895667432388456705.Spec : Prop :=
  ∀ n, P13895667432388456705.a n = A262600 n

end A262600

/-! ## A262600.P7301857685299413305

`7*a(n-1)-16*a(n-2)+13*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A262600.P7301857685299413305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  7 * a (n - 1) - 16 * a (n - 2) + 13 * a (n - 3) - 3 * a (n - 4)

end

end A262600.P7301857685299413305

namespace A262600

/-- `7*a(n-1)-16*a(n-2)+13*a(n-3)-3*a(n-4)` -/
def P7301857685299413305.Spec : Prop :=
  ∀ n, P7301857685299413305.a n = A262600 n

end A262600

/-! ## A262600.P7954839137731185479

`A124302(n)-A087123(2*n)`
-/

namespace A262600.P7954839137731185479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A087123 (2 * n)

end

end A262600.P7954839137731185479

namespace A262600

/-- `A124302(n)-A087123(2*n)` -/
def P7954839137731185479.Spec : Prop :=
  ∀ n, P7954839137731185479.a n = A262600 n

end A262600

/-! ## A262600.P7278937722849167440

`A124302(n)-A212804(2*n)`
-/

namespace A262600.P7278937722849167440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A212804 (2 * n)

end

end A262600.P7278937722849167440

namespace A262600

/-- `A124302(n)-A212804(2*n)` -/
def P7278937722849167440.Spec : Prop :=
  ∀ n, P7278937722849167440.a n = A262600 n

end A262600

/-! ## A262600.P1319191276669677056

`A152163(2*n+1)+A124302(n)`
-/

namespace A262600.P1319191276669677056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (2 * n + 1) + A124302 n

end

end A262600.P1319191276669677056

namespace A262600

/-- `A152163(2*n+1)+A124302(n)` -/
def P1319191276669677056.Spec : Prop :=
  ∀ n, P1319191276669677056.a n = A262600 n

end A262600

/-! ## A262600.P2562800349054951748

`A056504(abs(1-2*n))-A001519(n)`
-/

namespace A262600.P2562800349054951748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 |1 - (2 * n : ℤ)|.toNat - A001519 n

end

end A262600.P2562800349054951748

namespace A262600

/-- `A056504(abs(1-2*n))-A001519(n)` -/
def P2562800349054951748.Spec : Prop :=
  ∀ n, P2562800349054951748.a n = A262600 n

end A262600

/-! ## A262600.P9255775780466160541

`A007051(log2(A011782(n)))-A001519(n)`
-/

namespace A262600.P9255775780466160541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A001519 n

end

end A262600.P9255775780466160541

namespace A262600

/-- `A007051(log2(A011782(n)))-A001519(n)` -/
def P9255775780466160541.Spec : Prop :=
  ∀ n, P9255775780466160541.a n = A262600 n

end A262600

/-! ## A262600.P15149974927532457834

`A000392(n)+A011782(n)-A001519(n)`
-/

namespace A262600.P15149974927532457834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + (A011782 n - A001519 n)

end

end A262600.P15149974927532457834

namespace A262600

/-- `A000392(n)+A011782(n)-A001519(n)` -/
def P15149974927532457834.Spec : Prop :=
  ∀ n, P15149974927532457834.a n = A262600 n

end A262600

/-! ## A262600.P14631702165481015530

`ceil(A007051(n)/3-A001519(n))`
-/

namespace A262600.P14631702165481015530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007051 n : ℚ) / 3 - (A001519 n : ℚ)⌉

end

end A262600.P14631702165481015530

namespace A262600

/-- `ceil(A007051(n)/3-A001519(n))` -/
def P14631702165481015530.Spec : Prop :=
  ∀ n, P14631702165481015530.a n = A262600 n

end A262600

/-! ## A262600.P5431849669130904217

`A124292(n+1)-(A208737(n)+A001519(n))`
-/

namespace A262600.P5431849669130904217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124292 (n + 1) - (A208737 n + A001519 n)

end

end A262600.P5431849669130904217

namespace A262600

/-- `A124292(n+1)-(A208737(n)+A001519(n))` -/
def P5431849669130904217.Spec : Prop :=
  ∀ n, P5431849669130904217.a n = A262600 n

theorem P5431849669130904217.correct : P5431849669130904217.Spec := by
  intro n
  simp only [A262600, Nat.add_sub_cancel, A262600.P5431849669130904217.a, A262600.P10697025682239794580.a, A001519, A001519.P3024448327137573148.a, A124292, A124292.P3982799112335551492.a, A124302, A124302.P7197067930557024172.a, A208737, A208737.P2602793139901619243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262600

/-!
# A262601: a(n) = n!*(e*Gamma(n,1)*(n-1)+1).

The programs for A262601, the canonical program `A262601.P2774404784725859510` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262601 has offset 1).

The definition of A262601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262601.P2774404784725859510

`(n+1)!*(A000522(n)*n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A262601

/-- `(n+1)!*(A000522(n)*n+1)` -/
def P2774404784725859510.Spec : Prop :=
  ∀ n, P2774404784725859510.a n = A262601 (n + 1)

theorem P2774404784725859510.correct : P2774404784725859510.Spec := by
  intro n
  simp only [A262601, Nat.add_sub_cancel]

end A262601

/-! ## A262601.P8555113587146689816

`(floor(Δ[e*n!])+1)*(n+1)!`
-/

namespace A262601.P8555113587146689816
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊f1 (n + 1) - f1 n⌋ + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A262601.P8555113587146689816

namespace A262601

/-- `(floor(Δ[e*n!])+1)*(n+1)!` -/
def P8555113587146689816.Spec : Prop :=
  ∀ n, P8555113587146689816.a n = A262601 (n + 1)

end A262601

/-! ## A262601.P11627709398618247747

`(n+1)!*A001339(n)`
-/

namespace A262601.P11627709398618247747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A001339 n

end

end A262601.P11627709398618247747

namespace A262601

/-- `(n+1)!*A001339(n)` -/
def P11627709398618247747.Spec : Prop :=
  ∀ n, P11627709398618247747.a n = A262601 (n + 1)

end A262601

/-! ## A262601.P14290706295672032592

`Δ[A000522(n)]*∏[n+1]`
-/

namespace A262601.P14290706295672032592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262601.P14290706295672032592

namespace A262601

/-- `Δ[A000522(n)]*∏[n+1]` -/
def P14290706295672032592.Spec : Prop :=
  ∀ n, P14290706295672032592.a n = A262601 (n + 1)

end A262601

/-! ## A262601.P15039700869295064724

`(floor(Δ[e*n!])+1)*record[A047920(n)]`
-/

namespace A262601.P15039700869295064724
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊f1 (n + 1) - f1 n⌋ + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A262601.P15039700869295064724

namespace A262601

/-- `(floor(Δ[e*n!])+1)*record[A047920(n)]` -/
def P15039700869295064724.Spec : Prop :=
  ∀ n, P15039700869295064724.a n = A262601 (n + 1)

end A262601

/-!
# A262602: a(n) = a(n-7) + a(n-4) + a(n-1) for n>1 and a(n)=1 for n<=1.

The programs for A262602, the canonical program `A262602.P14515559282239586400` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262602 has offset 0).

The definition of A262602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-7)+a(n-4)+a(n-1)` (program `A262602.P14515559282239586400`, by `A262602.P14515559282239586400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262602.P4997429384125956460

`ogf((1+2x^2+2x^3+x^4+x^5+x^6)/(1-x-x^4-x^7))`
-/

namespace A262602.P4997429384125956460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 2, 1, 1, 1] [1, -1, 0, 0, -1, 0, 0, -1] n

end

end A262602.P4997429384125956460

namespace A262602

/-- `ogf((1+2x^2+2x^3+x^4+x^5+x^6)/(1-x-x^4-x^7))` -/
def P4997429384125956460.Spec : Prop :=
  ∀ n, P4997429384125956460.a n = A262602 n

end A262602

/-! ## A262602.P14515559282239586400

`a(n-7)+a(n-4)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=13`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A262602

/-- `a(n-7)+a(n-4)+a(n-1)` -/
def P14515559282239586400.Spec : Prop :=
  ∀ n, (P14515559282239586400.a n : ℤ) = A262602 n

theorem P14515559282239586400.correct : P14515559282239586400.Spec := by
  intro n
  simp only [A262602]

end A262602

/-! ## A262602.P15780527144509702857

`A001650(A132332(n+1))`
-/

namespace A262602.P15780527144509702857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A132332 (n + 1)).toNat

end

end A262602.P15780527144509702857

namespace A262602

/-- `A001650(A132332(n+1))` -/
def P15780527144509702857.Spec : Prop :=
  ∀ n, P15780527144509702857.a n = A262602 n

end A262602

/-! ## A262602.P14083270094589123290

`A001650(ceil(sqrt(A154964(n))))`
-/

namespace A262602.P14083270094589123290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 ⌈Real.sqrt (A154964 n : ℝ)⌉.toNat

end

end A262602.P14083270094589123290

namespace A262602

/-- `A001650(ceil(sqrt(A154964(n))))` -/
def P14083270094589123290.Spec : Prop :=
  ∀ n, P14083270094589123290.a n = A262602 n

end A262602

/-! ## A262602.P6219860019377021029

`A001650(round(sqrt(A154964(n))))`
-/

namespace A262602.P6219860019377021029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (SequenceMachineLib.roundAway (Real.sqrt (A154964 n : ℝ))).toNat

end

end A262602.P6219860019377021029

namespace A262602

/-- `A001650(round(sqrt(A154964(n))))` -/
def P6219860019377021029.Spec : Prop :=
  ∀ n, P6219860019377021029.a n = A262602 n

end A262602

/-!
# A262604: First difference of A252022.

The programs for A262604, there is no canonical definition to state claims against.
-/

/-! ## A262604.P2330737009427088371

`A252022(n+2)-A252022(n+1)`
-/

namespace A262604.P2330737009427088371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252022 (n + 2) - A252022 (n + 1)

end

end A262604.P2330737009427088371

/-! ## A262604.P9232187559812198547

`Δ[A252022(1+n)]`
-/

namespace A262604.P9232187559812198547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252022 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262604.P9232187559812198547

/-!
# A262607: Sum_{k=0..n} ((k+1)*binomial(n+1,k)*binomial(2*n-k,n))/(n+1).

The programs for A262607, the canonical program `A262607.P79846421611720059` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262607 has offset 0).

The definition of A262607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262607.P79846421611720059

`∑{#}[n, (#+1)*C(n+1, #)*C(2*n-#, n)/(n+1)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A262607

/-- `∑{#}[n, (#+1)*C(n+1, #)*C(2*n-#, n)/(n+1)]` -/
def P79846421611720059.Spec : Prop :=
  ∀ n, P79846421611720059.a n = (A262607 n : ℚ)

end A262607

/-! ## A262607.P6077283959960610329

`A006318(n)+A002002(n)`
-/

namespace A262607.P6077283959960610329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + A002002 n

end

end A262607.P6077283959960610329

namespace A262607

/-- `A006318(n)+A002002(n)` -/
def P6077283959960610329.Spec : Prop :=
  ∀ n, P6077283959960610329.a n = A262607 n

end A262607

/-! ## A262607.P10316678547268996057

`A002002(n)+∑[A006319(n)]`
-/

namespace A262607.P10316678547268996057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262607.P10316678547268996057

namespace A262607

/-- `A002002(n)+∑[A006319(n)]` -/
def P10316678547268996057.Spec : Prop :=
  ∀ n, P10316678547268996057.a n = A262607 n

end A262607

/-! ## A262607.P6892742056453999893

`A080247(∑[n])+A002002(n)`
-/

namespace A262607.P6892742056453999893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j) + A002002 n

end

end A262607.P6892742056453999893

namespace A262607

/-- `A080247(∑[n])+A002002(n)` -/
def P6892742056453999893.Spec : Prop :=
  ∀ n, P6892742056453999893.a n = A262607 n

end A262607

/-! ## A262607.P1412352662528498706

`A002002(n)+Δ[A176006(n)]`
-/

namespace A262607.P1412352662528498706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + (f1 (n + 1) - f1 n)

end

end A262607.P1412352662528498706

namespace A262607

/-- `A002002(n)+Δ[A176006(n)]` -/
def P1412352662528498706.Spec : Prop :=
  ∀ n, P1412352662528498706.a n = A262607 n

end A262607

/-! ## A262607.P1052093650629480416

`A002002(n)+record[A080247(n)]`
-/

namespace A262607.P1052093650629480416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262607.P1052093650629480416

namespace A262607

/-- `A002002(n)+record[A080247(n)]` -/
def P1052093650629480416.Spec : Prop :=
  ∀ n, P1052093650629480416.a n = A262607 n

end A262607

/-! ## A262607.P15854324456991282766

`A002002(n)+A035011(n)+1`
-/

namespace A262607.P15854324456991282766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + (A035011 n + 1)

end

end A262607.P15854324456991282766

namespace A262607

/-- `A002002(n)+A035011(n)+1` -/
def P15854324456991282766.Spec : Prop :=
  ∀ n, P15854324456991282766.a n = A262607 n

end A262607

/-! ## A262607.P8867225575115925194

`A155069(n+1)+A002002(n)`
-/

namespace A262607.P8867225575115925194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 1) + A002002 n

end

end A262607.P8867225575115925194

namespace A262607

/-- `A155069(n+1)+A002002(n)` -/
def P8867225575115925194.Spec : Prop :=
  ∀ n, P8867225575115925194.a n = A262607 n

end A262607

/-! ## A262607.P10815567128579158623

`A002002(n)-A086456(n+1)`
-/

namespace A262607.P10815567128579158623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n - A086456 (n + 1)

end

end A262607.P10815567128579158623

namespace A262607

/-- `A002002(n)-A086456(n+1)` -/
def P10815567128579158623.Spec : Prop :=
  ∀ n, P10815567128579158623.a n = A262607 n

end A262607

/-! ## A262607.P18174689466233502536

`A002002(n)+A238111(n)/2`
-/

namespace A262607.P18174689466233502536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002002 n : ℚ) + (A238111 n : ℚ) / 2

end

end A262607.P18174689466233502536

namespace A262607

/-- `A002002(n)+A238111(n)/2` -/
def P18174689466233502536.Spec : Prop :=
  ∀ n, P18174689466233502536.a n = (A262607 n : ℚ)

end A262607

/-! ## A262607.P17602673828898734045

`A002002(n)+abs(A103137(n+1))`
-/

namespace A262607.P17602673828898734045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + |A103137 (n + 1)|

end

end A262607.P17602673828898734045

namespace A262607

/-- `A002002(n)+abs(A103137(n+1))` -/
def P17602673828898734045.Spec : Prop :=
  ∀ n, P17602673828898734045.a n = A262607 n

end A262607

/-! ## A262607.P17400431120614731664

`A033877(∑[n+1])+A002002(n)`
-/

namespace A262607.P17400431120614731664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (∑ j ∈ Finset.range (n + 1), f1 j) + A002002 n

end

end A262607.P17400431120614731664

namespace A262607

/-- `A033877(∑[n+1])+A002002(n)` -/
def P17400431120614731664.Spec : Prop :=
  ∀ n, P17400431120614731664.a n = A262607 n

end A262607

/-! ## A262607.P3278144377213751872

`A002002(n)+Δ[-∑[A086456(n)]]`
-/

namespace A262607.P3278144377213751872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + (f1 (n + 1) - f1 n)

end

end A262607.P3278144377213751872

namespace A262607

/-- `A002002(n)+Δ[-∑[A086456(n)]]` -/
def P3278144377213751872.Spec : Prop :=
  ∀ n, P3278144377213751872.a n = A262607 n

end A262607

/-! ## A262607.P17098420149032012

`A050146(n+1)+A006318(n)-A001850(n)`
-/

namespace A262607.P17098420149032012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) + (A006318 n - A001850 n)

end

end A262607.P17098420149032012

namespace A262607

/-- `A050146(n+1)+A006318(n)-A001850(n)` -/
def P17098420149032012.Spec : Prop :=
  ∀ n, P17098420149032012.a n = A262607 n

end A262607

/-! ## A262607.P8358978350029528758

`2*A050146(n+1)-A002002(n+1)`
-/

namespace A262607.P8358978350029528758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050146 (n + 1) - A002002 (n + 1)

end

end A262607.P8358978350029528758

namespace A262607

/-- `2*A050146(n+1)-A002002(n+1)` -/
def P8358978350029528758.Spec : Prop :=
  ∀ n, P8358978350029528758.a n = A262607 n

end A262607

/-! ## A262607.P6198541798330780792

`2*A110110(2*n)-A002002(n+1)`
-/

namespace A262607.P6198541798330780792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110110 (2 * n) - A002002 (n + 1)

end

end A262607.P6198541798330780792

namespace A262607

/-- `2*A110110(2*n)-A002002(n+1)` -/
def P6198541798330780792.Spec : Prop :=
  ∀ n, P6198541798330780792.a n = A262607 n

end A262607

/-! ## A262607.P778039322550846005

`2*A050146(n+1)-A026003(2*n+1)`
-/

namespace A262607.P778039322550846005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050146 (n + 1) - A026003 (2 * n + 1)

end

end A262607.P778039322550846005

namespace A262607

/-- `2*A050146(n+1)-A026003(2*n+1)` -/
def P778039322550846005.Spec : Prop :=
  ∀ n, P778039322550846005.a n = A262607 n

end A262607

/-! ## A262607.P6694060960216436036

`2*A110110(2*n)-A026003(2*n+1)`
-/

namespace A262607.P6694060960216436036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110110 (2 * n) - A026003 (2 * n + 1)

end

end A262607.P6694060960216436036

namespace A262607

/-- `2*A110110(2*n)-A026003(2*n+1)` -/
def P6694060960216436036.Spec : Prop :=
  ∀ n, P6694060960216436036.a n = A262607 n

end A262607

/-! ## A262607.P17303271916544087222

`∑[A104550(n+1)+A006319(n)]-A104550(n+1)`
-/

namespace A262607.P17303271916544087222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1) + A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104550 (n + 1)

end

end A262607.P17303271916544087222

namespace A262607

/-- `∑[A104550(n+1)+A006319(n)]-A104550(n+1)` -/
def P17303271916544087222.Spec : Prop :=
  ∀ n, P17303271916544087222.a n = A262607 n

end A262607

/-!
# A262608: Primes p such that floor(10*p/Pi) mod 10 = 0.

The programs for A262608, there is no canonical definition to state claims against.
-/

/-! ## A262608.P4181891419550632269

`p?[A293751(n+1)-90]`
-/

namespace A262608.P4181891419550632269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293751 (n + 1) - 90

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262608.P4181891419550632269

/-! ## A262608.P5807674085232834031

`A000040(lt[3, cot(A008578(n+1))])`
-/

namespace A262608.P5807674085232834031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A008578 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A262608.P5807674085232834031

/-! ## A262608.P11416324289223809308

`A045344(lt[3, cot(A006005(n+1))])`
-/

namespace A262608.P11416324289223809308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A006005 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A262608.P11416324289223809308

/-! ## A262608.P15284070517394246664

`A000040(lt[3, cot(A158611(n+2))])`
-/

namespace A262608.P15284070517394246664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (A158611 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A262608.P15284070517394246664

/-!
# A262609: Divisors of 1728.

The programs for A262609, there is no canonical definition to state claims against.
-/

/-! ## A262609.P1496251319715560165

`record[gcd(A017511(n), A117910(n))]`
-/

namespace A262609.P1496251319715560165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017511 n) (A117910 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262609.P1496251319715560165

/-! ## A262609.P9081382255360215679

`record[A112757(eq[2, A112762(n+1)])]`
-/

namespace A262609.P9081382255360215679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112757 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262609.P9081382255360215679

/-! ## A262609.P5478118253475997656

`∩[A057890(n+1), A114334(n+1)]`
-/

namespace A262609.P5478118253475997656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262609.P5478118253475997656

/-! ## A262609.P1319793852712680323

`∩[A062849(n+1), A114334(n+1)]`
-/

namespace A262609.P1319793852712680323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262609.P1319793852712680323

/-! ## A262609.P9470508540360578203

`∩[A114334(n+1), A129304(n+1)]`
-/

namespace A262609.P9470508540360578203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262609.P9470508540360578203

/-!
# A262610: The values of sigma function (A000203) and the positive integers interleaved.

The programs for A262610, the canonical program `A262610.P17210216451198933661` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262610 has offset 1).

The definition of A262610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262610.P15860371499944340984

`A245092(n+1)/(1+n%2)`
-/

namespace A262610.P15860371499944340984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (n + 1) : ℚ) / ((1 + n % 2 : ℕ) : ℚ)

end

end A262610.P15860371499944340984

namespace A262610

/-- `A245092(n+1)/(1+n%2)` -/
def P15860371499944340984.Spec : Prop :=
  ∀ n, P15860371499944340984.a n = (A262610 (n + 1) : ℚ)

end A262610

/-! ## A262610.P7243323393214720199

`A245092(n+1)/A000034(n)`
-/

namespace A262610.P7243323393214720199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A262610.P7243323393214720199

namespace A262610

/-- `A245092(n+1)/A000034(n)` -/
def P7243323393214720199.Spec : Prop :=
  ∀ n, P7243323393214720199.a n = (A262610 (n + 1) : ℚ)

end A262610

/-! ## A262610.P11656371729470193028

`∑{d}[A158416(n), A008619(n)/#]`
-/

namespace A262610.P11656371729470193028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A008619 n : ℚ) / (d : ℚ)

end

end A262610.P11656371729470193028

namespace A262610

/-- `∑{d}[A158416(n), A008619(n)/#]` -/
def P11656371729470193028.Spec : Prop :=
  ∀ n, P11656371729470193028.a n = (A262610 (n + 1) : ℚ)

end A262610

/-! ## A262610.P17210216451198933661

`∑[Δ[A245092(n)]-A001057(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262610

/-- `∑[Δ[A245092(n)]-A001057(n)]` -/
def P17210216451198933661.Spec : Prop :=
  ∀ n, P17210216451198933661.a n = A262610 (n + 1)

theorem P17210216451198933661.correct : P17210216451198933661.Spec := by
  intro n
  simp only [A262610, Nat.add_sub_cancel]

end A262610

/-! ## A262610.P362610437560206256

`A245092(n+1)-∑[A001057(n)]`
-/

namespace A262610.P362610437560206256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262610.P362610437560206256

namespace A262610

/-- `A245092(n+1)-∑[A001057(n)]` -/
def P362610437560206256.Spec : Prop :=
  ∀ n, P362610437560206256.a n = A262610 (n + 1)

end A262610

/-! ## A262610.P2803225149464222552

`A245092(n+1)/(2-A059841(n))`
-/

namespace A262610.P2803225149464222552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (n + 1) : ℚ) / (2 - A059841 n : ℚ)

end

end A262610.P2803225149464222552

namespace A262610

/-- `A245092(n+1)/(2-A059841(n))` -/
def P2803225149464222552.Spec : Prop :=
  ∀ n, P2803225149464222552.a n = (A262610 (n + 1) : ℚ)

end A262610

/-! ## A262610.P690762593654240238

`A008619(n)+A001065(gcd(n+2, A008619(n)))`
-/

namespace A262610.P690762593654240238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A001065 (Int.gcd (n + 2 : ℤ) (A008619 n))

end

end A262610.P690762593654240238

namespace A262610

/-- `A008619(n)+A001065(gcd(n+2, A008619(n)))` -/
def P690762593654240238.Spec : Prop :=
  ∀ n, P690762593654240238.a n = A262610 (n + 1)

end A262610

/-! ## A262610.P10171582524179452111

`A245092(n+1)/(A059841(n+1)+1)`
-/

namespace A262610.P10171582524179452111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (n + 1) : ℚ) / (A059841 (n + 1) + 1 : ℚ)

end

end A262610.P10171582524179452111

namespace A262610

/-- `A245092(n+1)/(A059841(n+1)+1)` -/
def P10171582524179452111.Spec : Prop :=
  ∀ n, P10171582524179452111.a n = (A262610 (n + 1) : ℚ)

end A262610

/-! ## A262610.P3563735195124684698

`A000203(A152271(n+1))*A152271(n)`
-/

namespace A262610.P3563735195124684698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A152271 (n + 1)).toNat * A152271 n

end

end A262610.P3563735195124684698

namespace A262610

/-- `A000203(A152271(n+1))*A152271(n)` -/
def P3563735195124684698.Spec : Prop :=
  ∀ n, P3563735195124684698.a n = A262610 (n + 1)

end A262610

/-! ## A262610.P16030309002837454631

`A245092(n+1)/(A001651(n+2)-A001651(n+1))`
-/

namespace A262610.P16030309002837454631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (n + 1) : ℚ) / (A001651 (n + 2) - A001651 (n + 1) : ℚ)

end

end A262610.P16030309002837454631

namespace A262610

/-- `A245092(n+1)/(A001651(n+2)-A001651(n+1))` -/
def P16030309002837454631.Spec : Prop :=
  ∀ n, P16030309002837454631.a n = (A262610 (n + 1) : ℚ)

end A262610

/-! ## A262610.P6898648090157880949

`A245092(n+1)/A176895(2*n)`
-/

namespace A262610.P6898648090157880949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (n + 1) : ℚ) / (A176895 (2 * n) : ℚ)

end

end A262610.P6898648090157880949

namespace A262610

/-- `A245092(n+1)/A176895(2*n)` -/
def P6898648090157880949.Spec : Prop :=
  ∀ n, P6898648090157880949.a n = (A262610 (n + 1) : ℚ)

end A262610

/-! ## A262610.P15876088056957666311

`A134559(A173254(n))`
-/

namespace A262610.P15876088056957666311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134559 (A173254 n).toNat

end

end A262610.P15876088056957666311

namespace A262610

/-- `A134559(A173254(n))` -/
def P15876088056957666311.Spec : Prop :=
  ∀ n, P15876088056957666311.a n = A262610 (n + 1)

end A262610

/-! ## A262610.P7189493186914314243

`A127099(A055802(n+3))`
-/

namespace A262610.P7189493186914314243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127099 (A055802 (n + 3)).toNat

end

end A262610.P7189493186914314243

namespace A262610

/-- `A127099(A055802(n+3))` -/
def P7189493186914314243.Spec : Prop :=
  ∀ n, P7189493186914314243.a n = A262610 (n + 1)

end A262610

/-! ## A262610.P11628004870392680910

`A322200(A134519(n+1))`
-/

namespace A262610.P11628004870392680910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322200 (A134519 (n + 1)).toNat

end

end A262610.P11628004870392680910

namespace A262610

/-- `A322200(A134519(n+1))` -/
def P11628004870392680910.Spec : Prop :=
  ∀ n, P11628004870392680910.a n = A262610 (n + 1)

end A262610

/-!
# A262611: Triangle read by rows in which row n lists the widths of the symmetric representation of A024916(n): the sum of all divisors of all positive integers <= n.

The programs for A262611, there is no canonical definition to state claims against.
-/

/-! ## A262611.P10745305003686961055

`A043568(7*A272867(n))`
-/

namespace A262611.P10745305003686961055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (7 * A272867 n).toNat

end

end A262611.P10745305003686961055

/-! ## A262611.P7700812309939618988

`A297784(7*A272867(n))`
-/

namespace A262611.P7700812309939618988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297784 (7 * A272867 n).toNat

end

end A262611.P7700812309939618988

/-! ## A262611.P6105565041144535650

`A262438(8*A297191(n))`
-/

namespace A262611.P6105565041144535650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262438 (8 * A297191 n).toNat

end

end A262611.P6105565041144535650

/-! ## A262611.P10492075143244697281

`A043568(9*A297191(n))`
-/

namespace A262611.P10492075143244697281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (9 * A297191 n).toNat

end

end A262611.P10492075143244697281

/-! ## A262611.P8891460963667807510

`A001221(A324224(n+1)²+18)`
-/

namespace A262611.P8891460963667807510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324224 (n + 1) ^ 2 + 18).toNat

end

end A262611.P8891460963667807510

/-!
# A262613: Sum of divisors of n-th generalized pentagonal number.

The programs for A262613, the canonical program `A262613.P17621091741924254604` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262613 has offset 1).

The definition of A262613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262613.P11086417239494003779

`A000203((3*(n+1)²+2*(n+1)+(n+1)%2*(2*(n+1)+1))/8)`
-/

namespace A262613.P11086417239494003779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((3 * (n + 1) ^ 2 + 2 * (n + 1) + (n + 1) % 2 * (2 * (n + 1) + 1) : ℕ) : ℚ) / 8)).toNat

end

end A262613.P11086417239494003779

namespace A262613

/-- `A000203((3*(n+1)²+2*(n+1)+(n+1)%2*(2*(n+1)+1))/8)` -/
def P11086417239494003779.Spec : Prop :=
  ∀ n, P11086417239494003779.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P17621091741924254604

`A000203(A001318(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A262613

/-- `A000203(A001318(n+1))` -/
def P17621091741924254604.Spec : Prop :=
  ∀ n, P17621091741924254604.a n = A262613 (n + 1)

theorem P17621091741924254604.correct : P17621091741924254604.Spec := by
  intro n
  simp only [A262613, Nat.add_sub_cancel]

end A262613

/-! ## A262613.P8325817933994922887

`∑{d}[∑[gcd(n+1, ∑[n])], #]`
-/

namespace A262613.P8325817933994922887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A262613.P8325817933994922887

namespace A262613

/-- `∑{d}[∑[gcd(n+1, ∑[n])], #]` -/
def P8325817933994922887.Spec : Prop :=
  ∀ n, (P8325817933994922887.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P6285836576722042593

`∑{d}[∑[lcm(2, n+1)/2], #]`
-/

namespace A262613.P6285836576722042593
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A262613.P6285836576722042593

namespace A262613

/-- `∑{d}[∑[lcm(2, n+1)/2], #]` -/
def P6285836576722042593.Spec : Prop :=
  ∀ n, (P6285836576722042593.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P15524235714337287028

`∑{d}[∑[∑[n]/a(n-1)], #]` with `a(0)=1`
-/

namespace A262613.P15524235714337287028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A262613.P15524235714337287028

namespace A262613

/-- `∑{d}[∑[∑[n]/a(n-1)], #]` -/
def P15524235714337287028.Spec : Prop :=
  ∀ n, (P15524235714337287028.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P12381391776268988399

`∑{d}[A001318(n+1), #]`
-/

namespace A262613.P12381391776268988399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262613.P12381391776268988399

namespace A262613

/-- `∑{d}[A001318(n+1), #]` -/
def P12381391776268988399.Spec : Prop :=
  ∀ n, (P12381391776268988399.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P9642627136545211681

`∑{d}[∑[A026741(n+1)], #]`
-/

namespace A262613.P9642627136545211681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262613.P9642627136545211681

namespace A262613

/-- `∑{d}[∑[A026741(n+1)], #]` -/
def P9642627136545211681.Spec : Prop :=
  ∀ n, (P9642627136545211681.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P7914737087190103871

`∑{d}[A152749(n+1)/2, #]`
-/

namespace A262613.P7914737087190103871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152749 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A262613.P7914737087190103871

namespace A262613

/-- `∑{d}[A152749(n+1)/2, #]` -/
def P7914737087190103871.Spec : Prop :=
  ∀ n, (P7914737087190103871.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P2760887924908004634

`∑{d}[A308160(2*n+3), #]`
-/

namespace A262613.P2760887924908004634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308160 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262613.P2760887924908004634

namespace A262613

/-- `∑{d}[A308160(2*n+3), #]` -/
def P2760887924908004634.Spec : Prop :=
  ∀ n, (P2760887924908004634.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P17503278739712524393

`∑{d}[∑[A060819(2*(n+1))], #]`
-/

namespace A262613.P17503278739712524393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262613.P17503278739712524393

namespace A262613

/-- `∑{d}[∑[A060819(2*(n+1))], #]` -/
def P17503278739712524393.Spec : Prop :=
  ∀ n, (P17503278739712524393.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P10526093991541288083

`∑{d}[A000217(∑[gcd(2, n)])/3, #]`
-/

namespace A262613.P10526093991541288083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A262613.P10526093991541288083

namespace A262613

/-- `∑{d}[A000217(∑[gcd(2, n)])/3, #]` -/
def P10526093991541288083.Spec : Prop :=
  ∀ n, (P10526093991541288083.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P299772950255302626

`∑{d}[A000292(A001651(n+1))/A001651(n+1), #]`
-/

namespace A262613.P299772950255302626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (A001651 (n + 1)).toNat : ℚ) / (A001651 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A262613.P299772950255302626

namespace A262613

/-- `∑{d}[A000292(A001651(n+1))/A001651(n+1), #]` -/
def P299772950255302626.Spec : Prop :=
  ∀ n, (P299772950255302626.a n : ℤ) = A262613 (n + 1)

end A262613

/-! ## A262613.P15573947369033940113

`A000203(∑[gcd(n+1, ∑[n])])`
-/

namespace A262613.P15573947369033940113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262613.P15573947369033940113

namespace A262613

/-- `A000203(∑[gcd(n+1, ∑[n])])` -/
def P15573947369033940113.Spec : Prop :=
  ∀ n, P15573947369033940113.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P6427163040637848339

`A000203(∑[lcm(2, n+1)/2])`
-/

namespace A262613.P6427163040637848339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A262613.P6427163040637848339

namespace A262613

/-- `A000203(∑[lcm(2, n+1)/2])` -/
def P6427163040637848339.Spec : Prop :=
  ∀ n, P6427163040637848339.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P8680316104265783701

`A000203(∑[∑[n]/a(n-1)])` with `a(0)=1`
-/

namespace A262613.P8680316104265783701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A262613.P8680316104265783701

namespace A262613

/-- `A000203(∑[∑[n]/a(n-1)])` -/
def P8680316104265783701.Spec : Prop :=
  ∀ n, P8680316104265783701.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P4793305953036136921

`A000203(∑[(n+1)/(and(1, n)+1)])`
-/

namespace A262613.P4793305953036136921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A262613.P4793305953036136921

namespace A262613

/-- `A000203(∑[(n+1)/(and(1, n)+1)])` -/
def P4793305953036136921.Spec : Prop :=
  ∀ n, P4793305953036136921.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P5879308216396827820

`A000203(∑[n+1-∑[n]%(n+1)])`
-/

namespace A262613.P5879308216396827820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262613.P5879308216396827820

namespace A262613

/-- `A000203(∑[n+1-∑[n]%(n+1)])` -/
def P5879308216396827820.Spec : Prop :=
  ∀ n, P5879308216396827820.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P8246302493348315881

`A000203(Δ[A109900(n)])`
-/

namespace A262613.P8246302493348315881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A262613.P8246302493348315881

namespace A262613

/-- `A000203(Δ[A109900(n)])` -/
def P8246302493348315881.Spec : Prop :=
  ∀ n, P8246302493348315881.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P18132984997735678092

`A000203(A144065(n)+1)`
-/

namespace A262613.P18132984997735678092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A144065 n + 1).toNat

end

end A262613.P18132984997735678092

namespace A262613

/-- `A000203(A144065(n)+1)` -/
def P18132984997735678092.Spec : Prop :=
  ∀ n, P18132984997735678092.a n = A262613 (n + 1)

end A262613

/-! ## A262613.P2572605011375815781

`A000203(∑[A026741(n+1)])`
-/

namespace A262613.P2572605011375815781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262613.P2572605011375815781

namespace A262613

/-- `A000203(∑[A026741(n+1)])` -/
def P2572605011375815781.Spec : Prop :=
  ∀ n, P2572605011375815781.a n = A262613 (n + 1)

end A262613

/-!
# A262614: Expansion of phi(-x^3) * f(-x, -x^5) / psi(x) in powers of x where phi(), psi(), f(, ) are Ramanujan theta functions.

The programs for A262614, there is no canonical definition to state claims against.
-/

/-! ## A262614.P16855361734233114481

`A053269(3*n+1)`
-/

namespace A262614.P16855361734233114481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053269 (3 * n + 1)

end

end A262614.P16855361734233114481

/-! ## A262614.P2186457734082803558

`A267852(3*n)`
-/

namespace A262614.P2186457734082803558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267852 (3 * n)

end

end A262614.P2186457734082803558

/-! ## A262614.P5097719356771426175

`A267852(A008486(n))+C(n+1, n+6)`
-/

namespace A262614.P5097719356771426175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267852 (A008486 n).toNat + (Nat.choose (n + 1) (n + 6) : ℤ)

end

end A262614.P5097719356771426175

/-! ## A262614.P8294295026388267690

`A033999(n)²*A053269(A016777(n))`
-/

namespace A262614.P8294295026388267690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A053269 (A016777 n).toNat

end

end A262614.P8294295026388267690

/-! ## A262614.P2695199356520517215

`A267852(A008486(n))+A035444(A014963(n+1))`
-/

namespace A262614.P2695199356520517215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267852 (A008486 n).toNat + A035444 (A014963 (n + 1)).toNat

end

end A262614.P2695199356520517215

/-! ## A262614.P17279383015197191732

`A267852(A008486(n))+A034473(A348459(n+1))`
-/

namespace A262614.P17279383015197191732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267852 (A008486 n).toNat + A034473 (A348459 (n + 1)).toNat

end

end A262614.P17279383015197191732

/-! ## A262614.P13892642230850518879

`A267852(A008486(n))/A001222(A045428(n+1))`
-/

namespace A262614.P13892642230850518879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267852 (A008486 n).toNat : ℚ) / (A001222 (A045428 (n + 1)).toNat : ℚ)

end

end A262614.P13892642230850518879

/-! ## A262614.P9527708305916455950

`A267852(A008486(n))^A001221(A006005(n+1))`
-/

namespace A262614.P9527708305916455950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267852 (A008486 n).toNat : ℚ) ^ (A001221 (A006005 (n + 1)).toNat : ℤ)

end

end A262614.P9527708305916455950

/-! ## A262614.P16842201799747004846

`A267852(A008486(n))/A001222(A008578(n+1))!`
-/

namespace A262614.P16842201799747004846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267852 (A008486 n).toNat : ℚ) / (Nat.factorial (A001222 (A008578 (n + 1)).toNat).toNat : ℚ)

end

end A262614.P16842201799747004846

/-! ## A262614.P10058598203335177228

`A267852(A008486(n))+A194663(A008574(n))`
-/

namespace A262614.P10058598203335177228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267852 (A008486 n).toNat + A194663 (A008574 n).toNat

end

end A262614.P10058598203335177228

/-! ## A262614.P17530835738610357307

`A267852(A008486(n))%A253407(n+1)`
-/

namespace A262614.P17530835738610357307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267852 (A008486 n).toNat) (A253407 (n + 1))

end

end A262614.P17530835738610357307

/-! ## A262614.P1275998460731643981

`A267852(A008486(n))%A293325(n)`
-/

namespace A262614.P1275998460731643981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267852 (A008486 n).toNat) (A293325 n)

end

end A262614.P1275998460731643981

/-! ## A262614.P7518652113903432310

`A267852(A008585(n))%A215634(n)`
-/

namespace A262614.P7518652113903432310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267852 (A008585 n).toNat) (A215634 n)

end

end A262614.P7518652113903432310

/-!
# A262615: Amicable digital pairs: A262091 and A262092 interleaved.

The programs for A262615, there is no canonical definition to state claims against.
-/

/-! ## A262615.P5232644990127142738

`A264951(∑[A118965(n+1)!])`
-/

namespace A262615.P5232644990127142738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A118965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262615.P5232644990127142738

/-! ## A262615.P11009377469987794414

`A264951(record[A252648(n)+A122922(n)])`
-/

namespace A262615.P11009377469987794414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n + A122922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262615.P11009377469987794414

/-! ## A262615.P2436534849234188955

`A264951(A004709(n+1)%A095635(n))`
-/

namespace A262615.P2436534849234188955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264951 (Int.tmod (A004709 (n + 1)) (A095635 n)).toNat

end

end A262615.P2436534849234188955

/-! ## A262615.P7968771316835748979

`A264951(∑[A034380(n+1)%A095635(n)])`
-/

namespace A262615.P7968771316835748979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034380 (n + 1)) (A095635 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262615.P7968771316835748979

/-! ## A262615.P1798656845954001870

`filter[A264951(n+1), A374039(#)]`
-/

namespace A262615.P1798656845954001870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A262615.P1798656845954001870

/-!
# A262616: Triangle read by rows: T(n,k) = 4^(n-k), n>=0, 0<=k<=n.

The programs for A262616, the canonical program `A262616.P13588079954426283469` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262616 has offset 0).

The definition of A262616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262616.P13673785971984347981

`4^(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262616.P13673785971984347981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A262616.P13673785971984347981

namespace A262616

/-- `4^(row(n)-col(n))` -/
def P13673785971984347981.Spec : Prop :=
  ∀ n, P13673785971984347981.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P2872296369010560746

`4^(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262616.P2872296369010560746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ)

end

end A262616.P2872296369010560746

namespace A262616

/-- `4^(row(n)+1-(col(n)+1))` -/
def P2872296369010560746.Spec : Prop :=
  ∀ n, P2872296369010560746.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P13588079954426283469

`A000302(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A262616

/-- `A000302(row(n)-col(n))` -/
def P13588079954426283469.Spec : Prop :=
  ∀ n, P13588079954426283469.a n = A262616 n

theorem P13588079954426283469.correct : P13588079954426283469.Spec := by
  intro n
  simp only [A262616]

end A262616

/-! ## A262616.P13049773951108806299

`4*(T(n-1,k)-T(n-2,k-1))+T(n-1,k-1)` with `a(0)=1`
-/

namespace A262616.P13049773951108806299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n) + SequenceMachineLib.triUpLeft a n

end

end A262616.P13049773951108806299

namespace A262616

/-- `4*(T(n-1,k)-T(n-2,k-1))+T(n-1,k-1)` -/
def P13049773951108806299.Spec : Prop :=
  ∀ n, P13049773951108806299.a n = A262616 n

end A262616

/-! ## A262616.P11829995992484574477

`4^row(n)/4^col(n)`
-/

namespace A262616.P11829995992484574477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ SequenceMachineLib.triRow n : ℚ) / (4 ^ SequenceMachineLib.triCol n : ℚ)

end

end A262616.P11829995992484574477

namespace A262616

/-- `4^row(n)/4^col(n)` -/
def P11829995992484574477.Spec : Prop :=
  ∀ n, P11829995992484574477.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P10421793739178428201

`T(n-1,k-1)-2*2*(T(n-2,k-1)-T(n-1,k))` with `a(0)=1`
-/

namespace A262616.P10421793739178428201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * (2 * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUp a n))

end

end A262616.P10421793739178428201

namespace A262616

/-- `T(n-1,k-1)-2*2*(T(n-2,k-1)-T(n-1,k))` -/
def P10421793739178428201.Spec : Prop :=
  ∀ n, P10421793739178428201.a n = A262616 n

end A262616

/-! ## A262616.P17575990070407845491

`T(T(n-1,k+1), T(n-1,k))+2*2*T(n-1,k)` with `a(0)=1`
-/

namespace A262616.P17575990070407845491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) + 2 * (2 * SequenceMachineLib.triUp a n)

end

end A262616.P17575990070407845491

namespace A262616

/-- `T(T(n-1,k+1), T(n-1,k))+2*2*T(n-1,k)` -/
def P17575990070407845491.Spec : Prop :=
  ∀ n, (P17575990070407845491.a n : ℤ) = A262616 n

end A262616

/-! ## A262616.P10157937523763087296

`T(T(n-1,k), T(n-1,k-1)-1)+2*2*T(n-1,k)` with `a(0)=1`
-/

namespace A262616.P10157937523763087296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - 1) + 2 * (2 * SequenceMachineLib.triUp a n)

end

end A262616.P10157937523763087296

namespace A262616

/-- `T(T(n-1,k), T(n-1,k-1)-1)+2*2*T(n-1,k)` -/
def P10157937523763087296.Spec : Prop :=
  ∀ n, (P10157937523763087296.a n : ℤ) = A262616 n

end A262616

/-! ## A262616.P9306885506330883013

`T(T(n-1,k), 2*T(n-1,k))+2*2*T(n-1,k)` with `a(0)=1`
-/

namespace A262616.P9306885506330883013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUp a n : ℤ) + 2 * (2 * SequenceMachineLib.triUp a n)

end

end A262616.P9306885506330883013

namespace A262616

/-- `T(T(n-1,k), 2*T(n-1,k))+2*2*T(n-1,k)` -/
def P9306885506330883013.Spec : Prop :=
  ∀ n, (P9306885506330883013.a n : ℤ) = A262616 n

end A262616

/-! ## A262616.P11947514634401527186

`(2^(C(comp[∑[n]]-n, 2)-(n+1)))²`
-/

namespace A262616.P11947514634401527186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ 2

end

end A262616.P11947514634401527186

namespace A262616

/-- `(2^(C(comp[∑[n]]-n, 2)-(n+1)))²` -/
def P11947514634401527186.Spec : Prop :=
  ∀ n, P11947514634401527186.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P8893903525069008966

`A130321(n)²`
-/

namespace A262616.P8893903525069008966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2

end

end A262616.P8893903525069008966

namespace A262616

/-- `A130321(n)²` -/
def P8893903525069008966.Spec : Prop :=
  ∀ n, P8893903525069008966.a n = A262616 n

end A262616

/-! ## A262616.P16381176053946501444

`4^A025581(n)`
-/

namespace A262616.P16381176053946501444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A025581 n : ℤ)

end

end A262616.P16381176053946501444

namespace A262616

/-- `4^A025581(n)` -/
def P16381176053946501444.Spec : Prop :=
  ∀ n, P16381176053946501444.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P16474910122240277600

`2^(A099375(n)-1)`
-/

namespace A262616.P16474910122240277600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A099375 n - 1 : ℤ)

end

end A262616.P16474910122240277600

namespace A262616

/-- `2^(A099375(n)-1)` -/
def P16474910122240277600.Spec : Prop :=
  ∀ n, P16474910122240277600.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P16560276549470274741

`ceil(A130330(n)/2)²`
-/

namespace A262616.P16560276549470274741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130330 n : ℚ) / 2⌉ ^ 2

end

end A262616.P16560276549470274741

namespace A262616

/-- `ceil(A130330(n)/2)²` -/
def P16560276549470274741.Spec : Prop :=
  ∀ n, P16560276549470274741.a n = A262616 n

end A262616

/-! ## A262616.P3359129350569138283

`(A090988(n+1)/2)²`
-/

namespace A262616.P3359129350569138283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090988 (n + 1) : ℚ) / 2) ^ 2

end

end A262616.P3359129350569138283

namespace A262616

/-- `(A090988(n+1)/2)²` -/
def P3359129350569138283.Spec : Prop :=
  ∀ n, P3359129350569138283.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P5543406963166562967

`4^sqrt(A095831(n+1))`
-/

namespace A262616.P5543406963166562967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (Real.sqrt (A095831 (n + 1) : ℝ))

end

end A262616.P5543406963166562967

namespace A262616

/-- `4^sqrt(A095831(n+1))` -/
def P5543406963166562967.Spec : Prop :=
  ∀ n, P5543406963166562967.a n = (A262616 n : ℝ)

end A262616

/-! ## A262616.P8117440580530385571

`2^(A212012(n+1)-2)`
-/

namespace A262616.P8117440580530385571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A212012 (n + 1) - 2 : ℤ)

end

end A262616.P8117440580530385571

namespace A262616

/-- `2^(A212012(n+1)-2)` -/
def P8117440580530385571.Spec : Prop :=
  ∀ n, P8117440580530385571.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P3351709645951472598

`4^(A004736(n+1)-1)`
-/

namespace A262616.P3351709645951472598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A262616.P3351709645951472598

namespace A262616

/-- `4^(A004736(n+1)-1)` -/
def P3351709645951472598.Spec : Prop :=
  ∀ n, P3351709645951472598.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P14220341008417404186

`4^(A004202(n+1)%(n+1))`
-/

namespace A262616.P14220341008417404186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ) : ℤ)

end

end A262616.P14220341008417404186

namespace A262616

/-- `4^(A004202(n+1)%(n+1))` -/
def P14220341008417404186.Spec : Prop :=
  ∀ n, P14220341008417404186.a n = (A262616 n : ℚ)

end A262616

/-! ## A262616.P8294410535533612315

`4^(A000217(round(sqrt(2*n+1)))-(n+1))`
-/

namespace A262616.P8294410535533612315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ) : ℤ)

end

end A262616.P8294410535533612315

namespace A262616

/-- `4^(A000217(round(sqrt(2*n+1)))-(n+1))` -/
def P8294410535533612315.Spec : Prop :=
  ∀ n, P8294410535533612315.a n = (A262616 n : ℚ)

end A262616

/-!
# A262617: First differences of A256266.

The programs for A262617, the canonical program `A262617.P10379441659377153766` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262617 has offset 0).

The definition of A262617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262617.P6254652680725688933

`6*xor(1, 2^ceil(log2(n+1)))%(n+1)`
-/

namespace A262617.P6254652680725688933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (Int.xor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))) (n + 1 : ℤ)

end

end A262617.P6254652680725688933

namespace A262617

/-- `6*xor(1, 2^ceil(log2(n+1)))%(n+1)` -/
def P6254652680725688933.Spec : Prop :=
  ∀ n, P6254652680725688933.a n = A262617 n

end A262617

/-! ## A262617.P14990870590563751503

`6*(2^ceil(log2(n+1))-round(1/acot(n)))`
-/

namespace A262617.P14990870590563751503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ))

end

end A262617.P14990870590563751503

namespace A262617

/-- `6*(2^ceil(log2(n+1))-round(1/acot(n)))` -/
def P14990870590563751503.Spec : Prop :=
  ∀ n, P14990870590563751503.a n = (A262617 n : ℚ)

end A262617

/-! ## A262617.P10379441659377153766

`6*and(-n, A003817(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A262617

/-- `6*and(-n, A003817(n))` -/
def P10379441659377153766.Spec : Prop :=
  ∀ n, P10379441659377153766.a n = A262617 n

theorem P10379441659377153766.correct : P10379441659377153766.Spec := by
  intro n
  simp only [A262617]

end A262617

/-! ## A262617.P7380580816301020879

`6*(A062383(n)-n^floor(atan(n)))`
-/

namespace A262617.P7380580816301020879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A062383 n : ℚ) - (n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))

end

end A262617.P7380580816301020879

namespace A262617

/-- `6*(A062383(n)-n^floor(atan(n)))` -/
def P7380580816301020879.Spec : Prop :=
  ∀ n, P7380580816301020879.a n = (A262617 n : ℚ)

end A262617

/-! ## A262617.P6106581358206543957

`3*(A010078(n+1)-abs(1-n))`
-/

namespace A262617.P6106581358206543957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A010078 (n + 1) - |1 - (n : ℤ)|)

end

end A262617.P6106581358206543957

namespace A262617

/-- `3*(A010078(n+1)-abs(1-n))` -/
def P6106581358206543957.Spec : Prop :=
  ∀ n, P6106581358206543957.a n = A262617 n

end A262617

/-! ## A262617.P1474419187881404631

`A008588(and(-n, A003817(n)))`
-/

namespace A262617.P1474419187881404631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.land (-(n : ℤ)) (A003817 n)).toNat

end

end A262617.P1474419187881404631

namespace A262617

/-- `A008588(and(-n, A003817(n)))` -/
def P1474419187881404631.Spec : Prop :=
  ∀ n, P1474419187881404631.a n = A262617 n

end A262617

/-! ## A262617.P14573589733832369567

`6*(A053644(2*n)-n)`
-/

namespace A262617.P14573589733832369567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A053644 (2 * n) - (n : ℤ))

end

end A262617.P14573589733832369567

namespace A262617

/-- `6*(A053644(2*n)-n)` -/
def P14573589733832369567.Spec : Prop :=
  ∀ n, P14573589733832369567.a n = A262617 n

end A262617

/-! ## A262617.P10706732330095404822

`A035327(A016813(2*n))-A035327(2*n+1)`
-/

namespace A262617.P10706732330095404822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A016813 (2 * n)).toNat - A035327 (2 * n + 1)

end

end A262617.P10706732330095404822

namespace A262617

/-- `A035327(A016813(2*n))-A035327(2*n+1)` -/
def P10706732330095404822.Spec : Prop :=
  ∀ n, P10706732330095404822.a n = A262617 n

end A262617

/-! ## A262617.P11851307794786625914

`A035327(A035327(2*n+1)+A016813(2*n))`
-/

namespace A262617.P11851307794786625914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 (2 * n + 1) + A016813 (2 * n)).toNat

end

end A262617.P11851307794786625914

namespace A262617

/-- `A035327(A035327(2*n+1)+A016813(2*n))` -/
def P11851307794786625914.Spec : Prop :=
  ∀ n, P11851307794786625914.a n = A262617 n

end A262617

/-! ## A262617.P6484213538062269974

`6*(A132226(n+1)-1)`
-/

namespace A262617.P6484213538062269974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A132226 (n + 1) - 1)

end

end A262617.P6484213538062269974

namespace A262617

/-- `6*(A132226(n+1)-1)` -/
def P6484213538062269974.Spec : Prop :=
  ∀ n, P6484213538062269974.a n = A262617 n

end A262617

/-!
# A262618: Number of parts in the asymmetric representation of sigma(n) in an octant.

The programs for A262618, there is no canonical definition to state claims against.
-/

/-! ## A262618.P1524030949207300957

`ceil(A237271(n+1)/2)`
-/

namespace A262618.P1524030949207300957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A237271 (n + 1) : ℚ) / 2⌉

end

end A262618.P1524030949207300957

/-! ## A262618.P1949232237808317344

`ceil(A262619(n+1)/2)`
-/

namespace A262618.P1949232237808317344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262619 (n + 1) : ℚ) / 2⌉

end

end A262618.P1949232237808317344

/-! ## A262618.P6084639232949954745

`round(A237271(1+n)/2)`
-/

namespace A262618.P6084639232949954745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A237271 (1 + n) : ℚ) / 2)

end

end A262618.P6084639232949954745

/-! ## A262618.P4646734281025920660

`floor((A237271(C(n+1, n))+1)/2)`
-/

namespace A262618.P4646734281025920660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237271 (Nat.choose (n + 1) n) + 1 : ℚ) / 2⌋

end

end A262618.P4646734281025920660

/-! ## A262618.P1605406345832152864

`A065033(A001227(n+1)-A239657(n+1))`
-/

namespace A262618.P1605406345832152864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001227 (n + 1) - A239657 (n + 1)).toNat

end

end A262618.P1605406345832152864

/-! ## A262618.P13651677203755198020

`ceil(A244971(n+1)/7)`
-/

namespace A262618.P13651677203755198020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244971 (n + 1) : ℚ) / 7⌉

end

end A262618.P13651677203755198020

/-! ## A262618.P3357067111827464337

`A082478(A332031(n+1))`
-/

namespace A262618.P3357067111827464337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082478 (A332031 (n + 1)).toNat

end

end A262618.P3357067111827464337

/-! ## A262618.P13312905569939266616

`A239660(A244971(n+1)^4)`
-/

namespace A262618.P13312905569939266616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239660 (A244971 (n + 1) ^ 4).toNat

end

end A262618.P13312905569939266616

/-! ## A262618.P5866141713925381216

`A239660(A244971(n+1)²²)`
-/

namespace A262618.P5866141713925381216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239660 ((A244971 (n + 1) ^ 2) ^ 2).toNat

end

end A262618.P5866141713925381216

/-!
# A262619: Number of parts in the symmetric representation of sigma(n) in two successive octants of two quadrants.

The programs for A262619, there is no canonical definition to state claims against.
-/

/-! ## A262619.P9421724358180486335

`2*A262618(n+1)-1`
-/

namespace A262619.P9421724358180486335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A262618 (n + 1) - 1

end

end A262619.P9421724358180486335

/-! ## A262619.P6093902885080177853

`or(1, A237271(n+1)-1)`
-/

namespace A262619.P6093902885080177853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237271 (n + 1) - 1)

end

end A262619.P6093902885080177853

/-! ## A262619.P10933225392832587504

`A237271(n+1)-A348327(n+1)`
-/

namespace A262619.P10933225392832587504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1) - A348327 (n + 1)

end

end A262619.P10933225392832587504

/-! ## A262619.P10210609690083005363

`A237271(n+1)+A348364(n+1)-2`
-/

namespace A262619.P10210609690083005363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1) + (A348364 (n + 1) - 2)

end

end A262619.P10210609690083005363

/-! ## A262619.P17772215658459282540

`A237271(n+1)-char[A071561(n+1)-1]`
-/

namespace A262619.P17772215658459282540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071561 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262619.P17772215658459282540

/-! ## A262619.P17248237687560302590

`A237271(n+1)-A000007(A071090(n+1))`
-/

namespace A262619.P17248237687560302590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1) - A000007 (A071090 (n + 1)).toNat

end

end A262619.P17248237687560302590

/-! ## A262619.P16254523924650597567

`A347950(n+1)+A002265(A244971(n+1))`
-/

namespace A262619.P16254523924650597567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1) + A002265 (A244971 (n + 1)).toNat

end

end A262619.P16254523924650597567

/-! ## A262619.P3606695096205241240

`A262618(n+1)+A262618(n+1)-A262618(A000040(n+1))`
-/

namespace A262619.P3606695096205241240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262618 (n + 1) + (A262618 (n + 1) - A262618 (A000040 (n + 1)).toNat)

end

end A262619.P3606695096205241240

/-! ## A262619.P15706194290699829867

`gcd(6, A145077(A297420(A244971(n+1))))`
-/

namespace A262619.P15706194290699829867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A145077 (A297420 (A244971 (n + 1)).toNat).toNat)

end

end A262619.P15706194290699829867

/-! ## A262619.P13222669226808091956

`A035531(A278222(A336159(A122111(n+1))))`
-/

namespace A262619.P13222669226808091956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (A278222 (A336159 (A122111 (n + 1)).toNat).toNat).toNat

end

end A262619.P13222669226808091956

/-!
# A262620: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton on the square grid (see Comments lines for definition).

The programs for A262620, there is no canonical definition to state claims against.
-/

/-! ## A262620.P12931116200424009429

`1+4*A261692(n)`
-/

namespace A262620.P12931116200424009429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A261692 n

end

end A262620.P12931116200424009429

/-! ## A262620.P2492539596392231923

`4*(∑[or(2*n, a(n-1))]-n²)+1` with `a(0)=0`
-/

namespace A262620.P2492539596392231923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor (2 * n) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) + 1

end

end A262620.P2492539596392231923

/-! ## A262620.P6236976113171747336

`4*∑[2^ceil(log2(2*n+1))-Δ[n²]]+1`
-/

namespace A262620.P6236976113171747336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (2 * n + 1 : ℝ)⌉ : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A262620.P6236976113171747336

/-! ## A262620.P18391287466135099055

`∑[A262621(n)]`
-/

namespace A262620.P18391287466135099055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262620.P18391287466135099055

/-! ## A262620.P11615227071213932122

`xor(1, ∑[4*A261693(n)])`
-/

namespace A262620.P11615227071213932122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A261693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262620.P11615227071213932122

/-! ## A262620.P15483695841128742935

`∑[abs(A256251(2*n)-8*n)]`
-/

namespace A262620.P15483695841128742935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256251 (2 * n) - (8 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262620.P15483695841128742935

/-! ## A262620.P11719231495817357665

`∑[A035327(record[a(n-1)+8])]` with `a(0)=6, a(1)=3`
-/

namespace A262620.P11719231495817357665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 3] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262620.P11719231495817357665

/-! ## A262620.P15988756222733654463

`A016813(A261692(n))`
-/

namespace A262620.P15988756222733654463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A261692 n).toNat

end

end A262620.P15988756222733654463

/-! ## A262620.P7950387985097139804

`∑[A008574(A261693(n))]`
-/

namespace A262620.P7950387985097139804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A261693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262620.P7950387985097139804

/-! ## A262620.P11726703755972971896

`A004442(4*A261692(n))`
-/

namespace A262620.P11726703755972971896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * A261692 n).toNat

end

end A262620.P11726703755972971896

/-!
# A262621: First differences of A262620.

The programs for A262621, there is no canonical definition to state claims against.
-/

/-! ## A262621.P8938865427568065783

`A080079(Δ[floor(2/acot(n))²])`
-/

namespace A262621.P8938865427568065783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (f1 (n + 1) - f1 n).toNat

end

end A262621.P8938865427568065783

/-! ## A262621.P7761368272262294411

`abs(A256251(2*n)-8*n)`
-/

namespace A262621.P7761368272262294411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256251 (2 * n) - (8 * n : ℤ)|

end

end A262621.P7761368272262294411

/-! ## A262621.P11806456131719230408

`A035327(record[a(n-1)+8])` with `a(0)=6, a(1)=3`
-/

namespace A262621.P11806456131719230408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A262621.P11806456131719230408

/-! ## A262621.P11695713307499426589

`A035327(Δ[floor(2/acot(n))²])+1`
-/

namespace A262621.P11695713307499426589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f1 (n + 1) - f1 n).toNat + 1

end

end A262621.P11695713307499426589

/-! ## A262621.P10409170194879508195

`A035327(Δ[floor(2/acot(n))²]-1)`
-/

namespace A262621.P10409170194879508195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (f1 (n + 1) - f1 n - 1).toNat

end

end A262621.P10409170194879508195

/-! ## A262621.P1959983445929668030

`A035327(floor(sqrt((8*n+4)²-9)))`
-/

namespace A262621.P1959983445929668030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.sqrt (((8 * n + 4) ^ 2 : ℤ) - 9)).toNat

end

end A262621.P1959983445929668030

/-! ## A262621.P1652615217132380895

`A080079(ceil(sqrt((8*n+4)²-9)))`
-/

namespace A262621.P1652615217132380895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 ⌈Real.sqrt (((8 * n + 4) ^ 2 : ℤ) - 9 : ℝ)⌉.toNat

end

end A262621.P1652615217132380895

/-! ## A262621.P4175064680642426987

`ceil(atan(n+1))²*A035327(2*n)`
-/

namespace A262621.P4175064680642426987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ 2 * A035327 (2 * n)

end

end A262621.P4175064680642426987

/-! ## A262621.P10390063661622696499

`A035327(8*n+3)+C(2, n+2)`
-/

namespace A262621.P10390063661622696499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (8 * n + 3) + (Nat.choose 2 (n + 2) : ℤ)

end

end A262621.P10390063661622696499

/-! ## A262621.P11689630718708720444

`A062383(8*n)%lcm(4, 2*n+1)`
-/

namespace A262621.P11689630718708720444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062383 (8 * n)) (Nat.lcm 4 (2 * n + 1) : ℤ)

end

end A262621.P11689630718708720444

/-!
# A262622: Amicable pairs of even numbers.

The programs for A262622, there is no canonical definition to state claims against.
-/

/-! ## A262622.P4881916034810613239

`A259180(eq[2, gcd(2, A259180(n+1))]+1)`
-/

namespace A262622.P4881916034810613239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A259180 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A262622.P4881916034810613239

/-! ## A262622.P17425124147573763718

`filter[A259180(n+1), A120325(#)]`
-/

namespace A262622.P17425124147573763718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A262622.P17425124147573763718

/-! ## A262622.P5217757871314487674

`A262624(A043320(n+1))`
-/

namespace A262622.P5217757871314487674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262624 (A043320 (n + 1)).toNat

end

end A262622.P5217757871314487674

/-! ## A262622.P7352260021015128493

`A262624(A044917(n+1))`
-/

namespace A262622.P7352260021015128493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262624 (A044917 (n + 1)).toNat

end

end A262622.P7352260021015128493

/-! ## A262622.P16788943795106191676

`A074591(A262624(n+1))`
-/

namespace A262622.P16788943795106191676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A262624 (n + 1)).toNat

end

end A262622.P16788943795106191676

/-!
# A262623: Amicable pairs of odd numbers.

The programs for A262623, there is no canonical definition to state claims against.
-/

/-! ## A262623.P6504249740522946229

`A259180(eq[1, A259180(n+1)%2]+1)`
-/

namespace A262623.P6504249740522946229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259180 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A262623.P6504249740522946229

/-! ## A262623.P16925492797164450230

`filter[A259180(n+1), A072629(#)]`
-/

namespace A262623.P16925492797164450230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072629 (f1 j).toNat = 1) n)

end

end A262623.P16925492797164450230

/-!
# A262624: Even amicable numbers.

The programs for A262624, there is no canonical definition to state claims against.
-/

/-! ## A262624.P6789343651479394242

`record[lcm(3, A063990(n+1))/3]`
-/

namespace A262624.P6789343651479394242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A063990 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262624.P6789343651479394242

/-! ## A262624.P11526332389523180012

`A063990(eq[1, gcd(3, A063990(n+1))]+1)`
-/

namespace A262624.P11526332389523180012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A063990 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A262624.P11526332389523180012

/-! ## A262624.P7984425683448430879

`A063990(lt[val(A063990(n+1), 3), 1]+1)`
-/

namespace A262624.P7984425683448430879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063990 (n + 1)).toNat 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A262624.P7984425683448430879

/-! ## A262624.P16159219589070491039

`filter[A063990(n+1), A120325(#)]`
-/

namespace A262624.P16159219589070491039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A262624.P16159219589070491039

/-! ## A262624.P12120212371415766572

`record[A279812(n+1)/A020639(A063990(n+1))]`
-/

namespace A262624.P12120212371415766572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279812 (n + 1) : ℚ) / (A020639 (A063990 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262624.P12120212371415766572

/-!
# A262625: Odd amicable numbers.

The programs for A262625, there is no canonical definition to state claims against.
-/

/-! ## A262625.P16858245810425591451

`A063990(eq[1, A063990(n+1)%2]+1)`
-/

namespace A262625.P16858245810425591451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063990 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A262625.P16858245810425591451

/-! ## A262625.P13629852725718403885

`A063990(eq[1, gcd(2, A063990(n+1))]+1)`
-/

namespace A262625.P13629852725718403885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A063990 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A262625.P13629852725718403885

/-! ## A262625.P1251017684177552253

`A063990(lt[val(A063990(n+1), 2), 1]+1)`
-/

namespace A262625.P1251017684177552253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063990 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A262625.P1251017684177552253

/-! ## A262625.P7004511799733865836

`∩[or(1, A063990(n+1)), A063990(n+2)]`
-/

namespace A262625.P7004511799733865836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A063990 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262625.P7004511799733865836

/-! ## A262625.P9269480689051972930

`∩[or(1, A206708(n+1)), A206708(n+1)]`
-/

namespace A262625.P9269480689051972930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206708 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262625.P9269480689051972930

/-!
# A262629: Minimal nested base-2 palindromic primes with seed 1.

The programs for A262629, there is no canonical definition to state claims against.
-/

/-! ## A262629.P12857676501091247178

`A007088(A262630(n+1))`
-/

namespace A262629.P12857676501091247178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A262630 (n + 1)).toNat

end

end A262629.P12857676501091247178

/-!
# A262630: Base-10 representation of 1 and the primes at A262629.

The programs for A262630, there is no canonical definition to state claims against.
-/

/-! ## A262630.P2354323218022482093

`record[A071189(A161869(n)²)]`
-/

namespace A262630.P2354323218022482093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071189 (A161869 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262630.P2354323218022482093

/-!
# A262637: Minimal nested palindromic base-4 primes with seed 2; see Comments.

The programs for A262637, there is no canonical definition to state claims against.
-/

/-! ## A262637.P12123642658869484482

`A332132(A255852((lcm(2, n)+1)%3+n)+n)`
-/

namespace A262637.P12123642658869484482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332132 (A255852 ((Nat.lcm 2 n + 1) % 3 + n) + (n : ℤ)).toNat

end

end A262637.P12123642658869484482

/-!
# A262638: Base-10 representation of the primes at A262637.

The programs for A262638, there is no canonical definition to state claims against.
-/

/-! ## A262638.P17507375538279737154

`A185950(4^comp[4*n+2])`
-/

namespace A262638.P17507375538279737154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185950 (4 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A262638.P17507375538279737154

/-!
# A262664: Expansion of (1-2*x)/((2-x)*sqrt(5*x^2-6*x+1))+1/(2-x).

The programs for A262664, the canonical program `A262664.P13727299382595381877` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262664 has offset 0).

The definition of A262664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262664.P609921906997183264

`∑[2*A128732(n)]+1`
-/

namespace A262664.P609921906997183264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262664.P609921906997183264

namespace A262664

/-- `∑[2*A128732(n)]+1` -/
def P609921906997183264.Spec : Prop :=
  ∀ n, P609921906997183264.a n = A262664 n

end A262664

/-! ## A262664.P16657350102522074412

`∑{#}[n, C(n, #)*A072547(#+1)]`
-/

namespace A262664.P16657350102522074412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A072547 (k + 1)

end

end A262664.P16657350102522074412

namespace A262664

/-- `∑{#}[n, C(n, #)*A072547(#+1)]` -/
def P16657350102522074412.Spec : Prop :=
  ∀ n, P16657350102522074412.a n = A262664 n

end A262664

/-! ## A262664.P13727299382595381877

`A303952(n)-A138415(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A262664

/-- `A303952(n)-A138415(n)` -/
def P13727299382595381877.Spec : Prop :=
  ∀ n, P13727299382595381877.a n = A262664 n

theorem P13727299382595381877.correct : P13727299382595381877.Spec := by
  intro n
  simp only [A262664]

end A262664

/-! ## A262664.P12799111095127356838

`A033321(n)+∑[A128740(n)]`
-/

namespace A262664.P12799111095127356838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262664.P12799111095127356838

namespace A262664

/-- `A033321(n)+∑[A128740(n)]` -/
def P12799111095127356838.Spec : Prop :=
  ∀ n, P12799111095127356838.a n = A262664 n

end A262664

/-! ## A262664.P135819066642462933

`A128726(n+1)+A033321(n)`
-/

namespace A262664.P135819066642462933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128726 (n + 1) + A033321 n

end

end A262664.P135819066642462933

namespace A262664

/-- `A128726(n+1)+A033321(n)` -/
def P135819066642462933.Spec : Prop :=
  ∀ n, P135819066642462933.a n = A262664 n

end A262664

/-! ## A262664.P1859271275327950690

`A126568(n)-A128730(n+1)`
-/

namespace A262664.P1859271275327950690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n - A128730 (n + 1)

end

end A262664.P1859271275327950690

namespace A262664

/-- `A126568(n)-A128730(n+1)` -/
def P1859271275327950690.Spec : Prop :=
  ∀ n, P1859271275327950690.a n = A262664 n

end A262664

/-! ## A262664.P15365855612990244097

`∑[A128732(A258071(n+1))+A128732(n)]+1`
-/

namespace A262664.P15365855612990244097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128732 (A258071 (n + 1)).toNat + A128732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262664.P15365855612990244097

namespace A262664

/-- `∑[A128732(A258071(n+1))+A128732(n)]+1` -/
def P15365855612990244097.Spec : Prop :=
  ∀ n, P15365855612990244097.a n = A262664 n

end A262664

/-! ## A262664.P16458469275618098051

`2*A126568(n)-A026375(n)`
-/

namespace A262664.P16458469275618098051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126568 n - A026375 n

end

end A262664.P16458469275618098051

namespace A262664

/-- `2*A126568(n)-A026375(n)` -/
def P16458469275618098051.Spec : Prop :=
  ∀ n, P16458469275618098051.a n = A262664 n

end A262664

/-!
# A262665: Fixed points of permutations A075348 and A262663.

The programs for A262665, there is no canonical definition to state claims against.
-/

/-! ## A262665.P11790674074249145073

`eq[n, A075348(abs(1-n)+1)]`
-/

namespace A262665.P11790674074249145073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262665.P11790674074249145073

/-! ## A262665.P12446307410493018661

`eq[n, A262663(C(2, n)²+n)]`
-/

namespace A262665.P12446307410493018661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262663 (Nat.choose 2 n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262665.P12446307410493018661

/-! ## A262665.P17613020548556073201

`eq[n+1, A075348(n+1)]+1`
-/

namespace A262665.P17613020548556073201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262665.P17613020548556073201

/-! ## A262665.P17200702423683526658

`eq[n+1, A262663(n+1)]+1`
-/

namespace A262665.P17200702423683526658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262665.P17200702423683526658

/-! ## A262665.P932746437217026457

`record[gcd(A024000(n+6), A075348(n+5))]`
-/

namespace A262665.P932746437217026457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024000 (n + 6)) (A075348 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262665.P932746437217026457

/-!
# A262667: Expansion of Product_{k>=1} (1+x^k)^k / (1-x^k).

The programs for A262667, there is no canonical definition to state claims against.
-/

/-! ## A262667.P4007240495928149427

`∑[A324760(A002843(n))]`
-/

namespace A262667.P4007240495928149427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (A002843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262667.P4007240495928149427

/-! ## A262667.P5378630411757764726

`∑[A325131(A026007(n))]`
-/

namespace A262667.P5378630411757764726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A026007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262667.P5378630411757764726

/-! ## A262667.P10585041175897774829

`∑[A244579(A208354(n))]`
-/

namespace A262667.P10585041175897774829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (A208354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262667.P10585041175897774829

/-! ## A262667.P5708615185226343739

`∑[A325131(A301596(n))]`
-/

namespace A262667.P5708615185226343739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (A301596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262667.P5708615185226343739

/-!
# A262670: Consider the Farey sequence of order n, F_n, and that the average distance between any two adjacent pairs in F_n is 1/A002088(n). Then a(n) is the number of adjacent pairs whose difference is the average.

The programs for A262670, there is no canonical definition to state claims against.
-/

/-! ## A262670.P14020924064863739622

`and(A107286(2*n), A317266(A055998(n)+6))`
-/

namespace A262670.P14020924064863739622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107286 (2 * n)) (A317266 (A055998 n + 6).toNat)

end

end A262670.P14020924064863739622

/-! ## A262670.P2614868487696890740

`A344617(∑[A320317(3*(n+1))+2]+4)+1`
-/

namespace A262670.P2614868487696890740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320317 (3 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat + 1

end

end A262670.P2614868487696890740

/-! ## A262670.P18408885088135701539

`A063725(A002033(A067774(n+1)²))`
-/

namespace A262670.P18408885088135701539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A002033 (A067774 (n + 1) ^ 2).toNat).toNat

end

end A262670.P18408885088135701539

/-! ## A262670.P2687008416747352167

`A053603(A255386(n)+A249571(n+1))`
-/

namespace A262670.P2687008416747352167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (A255386 n + A249571 (n + 1)).toNat

end

end A262670.P2687008416747352167

/-! ## A262670.P9019885885732425460

`A171903(A332831(3*n+2))%A230864(2*n+3)`
-/

namespace A262670.P9019885885732425460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171903 (A332831 (3 * n + 2)).toNat) (A230864 (2 * n + 3))

end

end A262670.P9019885885732425460

/-!
# A262671: Number of pointed multiset partitions of normal pointed multisets of weight n.

The programs for A262671, there is no canonical definition to state claims against.
-/

/-! ## A262671.P7852651987340154032

`A113699(n+1)+A049472(A113714(n))`
-/

namespace A262671.P7852651987340154032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113699 (n + 1) + A049472 (A113714 n).toNat

end

end A262671.P7852651987340154032

/-!
# A262672: Expansion of (3-x-x^3) / ((x-1)^2*(1+x+x^2+x^3)).

The programs for A262672, the canonical program `A262672.P6349893656413122436` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262672 has offset 0).

The definition of A262672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-x-x^3)/(1-x-x^4+x^5))` (program `A262672.P6349893656413122436`, by `A262672.P6349893656413122436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262672.P6349893656413122436

`ogf((3-x-x^3)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A262672

/-- `ogf((3-x-x^3)/(1-x-x^4+x^5))` -/
def P6349893656413122436.Spec : Prop :=
  ∀ n, P6349893656413122436.a n = A262672 n

theorem P6349893656413122436.correct : P6349893656413122436.Spec := by
  intro n
  simp only [A262672]

end A262672

/-! ## A262672.P17824064733440116545

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=4`
-/

namespace A262672.P17824064733440116545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2, 1, 4] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A262672.P17824064733440116545

namespace A262672

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P17824064733440116545.Spec : Prop :=
  ∀ n, P17824064733440116545.a n = A262672 n

end A262672

/-! ## A262672.P6103749375252988702

`(2*n+13+5*(-1)^n-6*(-1)^((2*n+3+(-1)^n)/4))/8`
-/

namespace A262672.P6103749375252988702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 13 : ℤ) + 5 * (-1) ^ n : ℝ) - 6 * (-1 : ℝ) ^ (((2 * n + 3 : ℤ) + (-1) ^ n : ℚ) / 4 : ℝ)) / 8

end

end A262672.P6103749375252988702

namespace A262672

/-- `(2*n+13+5*(-1)^n-6*(-1)^((2*n+3+(-1)^n)/4))/8` -/
def P6103749375252988702.Spec : Prop :=
  ∀ n, P6103749375252988702.a n = (A262672 n : ℝ)

end A262672

/-! ## A262672.P4426002259058970308

`3*A002265(n+4)-A002265(n+3)-A002265(n+1)`
-/

namespace A262672.P4426002259058970308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002265 (n + 4) - A002265 (n + 3) - A002265 (n + 1)

end

end A262672.P4426002259058970308

namespace A262672

/-- `3*A002265(n+4)-A002265(n+3)-A002265(n+1)` -/
def P4426002259058970308.Spec : Prop :=
  ∀ n, P4426002259058970308.a n = A262672 n

end A262672

/-! ## A262672.P60003804594101149

`a(n-4)+1` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A262672.P60003804594101149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1] fun n a =>
  a (n - 4) + 1

end

end A262672.P60003804594101149

namespace A262672

/-- `a(n-4)+1` -/
def P60003804594101149.Spec : Prop :=
  ∀ n, (P60003804594101149.a n : ℤ) = A262672 n

end A262672

/-! ## A262672.P3030774863375175283

`∑[4%(gcd(4, n)+1)-1]`
-/

namespace A262672.P3030774863375175283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 % (Nat.gcd 4 n + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262672.P3030774863375175283

namespace A262672

/-- `∑[4%(gcd(4, n)+1)-1]` -/
def P3030774863375175283.Spec : Prop :=
  ∀ n, P3030774863375175283.a n = A262672 n

end A262672

/-! ## A262672.P4309436383558639609

`round(n/4)+or(3, n)-n`
-/

namespace A262672.P4309436383558639609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 4) + ((Nat.lor 3 n : ℤ) - (n : ℤ))

end

end A262672.P4309436383558639609

namespace A262672

/-- `round(n/4)+or(3, n)-n` -/
def P4309436383558639609.Spec : Prop :=
  ∀ n, P4309436383558639609.a n = A262672 n

end A262672

/-! ## A262672.P6163767205729634309

`round(n/4)+xor(n, or(3, n))`
-/

namespace A262672.P6163767205729634309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 4) + (Nat.xor n (Nat.lor 3 n) : ℤ)

end

end A262672.P6163767205729634309

namespace A262672

/-- `round(n/4)+xor(n, or(3, n))` -/
def P6163767205729634309.Spec : Prop :=
  ∀ n, P6163767205729634309.a n = A262672 n

end A262672

/-! ## A262672.P8056353201942101688

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=-1, a(2)=0, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A262672.P8056353201942101688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 0, -1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262672.P8056353201942101688

namespace A262672

/-- `∑[floor(a(n-4))]` -/
def P8056353201942101688.Spec : Prop :=
  ∀ n, P8056353201942101688.a n = A262672 n

end A262672

/-! ## A262672.P10303064255984380984

`∑[∑[4/a(n-2)]]` with `a(0)=3, a(1)=-4, a(2)=1`
-/

namespace A262672.P10303064255984380984
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [3, -4, 1] fun n f2 =>
  4 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262672.P10303064255984380984

namespace A262672

/-- `∑[∑[4/a(n-2)]]` -/
def P10303064255984380984.Spec : Prop :=
  ∀ n, P10303064255984380984.a n = (A262672 n : ℚ)

end A262672

/-! ## A262672.P7722606867076375488

`∑[a(n-4)^(-1)^n]` with `a(0)=3, a(1)=-1, a(2)=0, a(3)=-1`
-/

namespace A262672.P7722606867076375488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, -1, 0, -1] fun n f1 =>
  f1 (n - 4) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262672.P7722606867076375488

namespace A262672

/-- `∑[a(n-4)^(-1)^n]` -/
def P7722606867076375488.Spec : Prop :=
  ∀ n, P7722606867076375488.a n = (A262672 n : ℚ)

end A262672

/-! ## A262672.P15156530557954021376

`∑[2*a(n-4)-a(n-4)]` with `a(0)=3, a(1)=-1, a(2)=0, a(3)=-1`
-/

namespace A262672.P15156530557954021376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 0, -1] fun n f1 =>
  2 * f1 (n - 4) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262672.P15156530557954021376

namespace A262672

/-- `∑[2*a(n-4)-a(n-4)]` -/
def P15156530557954021376.Spec : Prop :=
  ∀ n, P15156530557954021376.a n = A262672 n

end A262672

/-! ## A262672.P9741247737492817213

`round(cosh(log(6*(A002265(n)+1)-n-1)))`
-/

namespace A262672.P9741247737492817213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (6 * (A002265 n + 1) - (n : ℤ) - 1 : ℝ)))

end

end A262672.P9741247737492817213

namespace A262672

/-- `round(cosh(log(6*(A002265(n)+1)-n-1)))` -/
def P9741247737492817213.Spec : Prop :=
  ∀ n, P9741247737492817213.a n = A262672 n

end A262672

/-! ## A262672.P17695341406701084632

`A028242(A084964(n))+1`
-/

namespace A262672.P17695341406701084632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A084964 n).toNat + 1

end

end A262672.P17695341406701084632

namespace A262672

/-- `A028242(A084964(n))+1` -/
def P17695341406701084632.Spec : Prop :=
  ∀ n, P17695341406701084632.a n = A262672 n

end A262672

/-! ## A262672.P17993816198299747737

`A030451(A084964(n)+1)`
-/

namespace A262672.P17993816198299747737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A084964 n + 1).toNat

end

end A262672.P17993816198299747737

namespace A262672

/-- `A030451(A084964(n)+1)` -/
def P17993816198299747737.Spec : Prop :=
  ∀ n, P17993816198299747737.a n = A262672 n

end A262672

/-! ## A262672.P16736116072149470361

`A030451(A097065(n)+2)`
-/

namespace A262672.P16736116072149470361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A097065 n + 2).toNat

end

end A262672.P16736116072149470361

namespace A262672

/-- `A030451(A097065(n)+2)` -/
def P16736116072149470361.Spec : Prop :=
  ∀ n, P16736116072149470361.a n = A262672 n

end A262672

/-! ## A262672.P10459407720510046497

`A030451(∑[A168330(n+1)])`
-/

namespace A262672.P10459407720510046497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262672.P10459407720510046497

namespace A262672

/-- `A030451(∑[A168330(n+1)])` -/
def P10459407720510046497.Spec : Prop :=
  ∀ n, P10459407720510046497.a n = A262672 n

end A262672

/-! ## A262672.P11841613139924631598

`A110657(A004442(n)+1)+1`
-/

namespace A262672.P11841613139924631598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A004442 n + 1).toNat + 1

end

end A262672.P11841613139924631598

namespace A262672

/-- `A110657(A004442(n)+1)+1` -/
def P11841613139924631598.Spec : Prop :=
  ∀ n, P11841613139924631598.a n = A262672 n

end A262672

/-! ## A262672.P10277313206402470871

`A052938(A084964(n)+1)-1`
-/

namespace A262672.P10277313206402470871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A084964 n + 1).toNat - 1

end

end A262672.P10277313206402470871

namespace A262672

/-- `A052938(A084964(n)+1)-1` -/
def P10277313206402470871.Spec : Prop :=
  ∀ n, P10277313206402470871.a n = A262672 n

end A262672

/-! ## A262672.P5284759936175388334

`A052938(A097065(n)+2)-1`
-/

namespace A262672.P5284759936175388334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A097065 n + 2).toNat - 1

end

end A262672.P5284759936175388334

namespace A262672

/-- `A052938(A097065(n)+2)-1` -/
def P5284759936175388334.Spec : Prop :=
  ∀ n, P5284759936175388334.a n = A262672 n

end A262672

/-!
# A262674: Decimal expansion of the real root of x^3 - 6x^2 + 4x - 2.

The programs for A262674, there is no canonical definition to state claims against.
-/

/-! ## A262674.P3258417918871572726

`A160332(n)+2*A000007(n)`
-/

namespace A262674.P3258417918871572726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160332 (n + 1) + 2 * A000007 n

end

end A262674.P3258417918871572726

/-! ## A262674.P9866637252062731872

`A160332(n)+val(n+4, A250041(n+1))`
-/

namespace A262674.P9866637252062731872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160332 (n + 1) + (SequenceMachineLib.valuation (n + 4) (A250041 (n + 1)).toNat : ℤ)

end

end A262674.P9866637252062731872

/-! ## A262674.P12654435981763390802

`A160332(n)+val(n+4, A250043(n+1))`
-/

namespace A262674.P12654435981763390802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160332 (n + 1) + (SequenceMachineLib.valuation (n + 4) (A250043 (n + 1)).toNat : ℤ)

end

end A262674.P12654435981763390802

/-! ## A262674.P13522142332022388247

`A160332(n)+val(n+4, A250047(n+1))`
-/

namespace A262674.P13522142332022388247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160332 (n + 1) + (SequenceMachineLib.valuation (n + 4) (A250047 (n + 1)).toNat : ℤ)

end

end A262674.P13522142332022388247

/-! ## A262674.P156992170669482233

`A160332(n)+val(n+4, A250049(n+1))`
-/

namespace A262674.P156992170669482233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160332 (n + 1) + (SequenceMachineLib.valuation (n + 4) (A250049 (n + 1)).toNat : ℤ)

end

end A262674.P156992170669482233

/-! ## A262674.P15250731937101128380

`A160332(n)+val(n+4, 2*A158673(n))`
-/

namespace A262674.P15250731937101128380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160332 (n + 1) + (SequenceMachineLib.valuation (n + 4) (2 * A158673 n).toNat : ℤ)

end

end A262674.P15250731937101128380

/-!
# A262675: Exponentially evil numbers.

The programs for A262675, there is no canonical definition to state claims against.
-/

/-! ## A262675.P12788073668004072319

`sqrt(A367803(n+1))`
-/

namespace A262675.P12788073668004072319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A367803 (n + 1) : ℝ)

end

end A262675.P12788073668004072319

/-! ## A262675.P15933476230001463102

`eq[0, A293439(n+1)]+1`
-/

namespace A262675.P15933476230001463102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262675.P15933476230001463102

/-! ## A262675.P15335580288440187230

`eq[1, A270418(n+1)]+1`
-/

namespace A262675.P15335580288440187230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A262675.P15335580288440187230

/-! ## A262675.P13434006218428829118

`record[A270437(A270419(n+1))]`
-/

namespace A262675.P13434006218428829118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270437 (A270419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262675.P13434006218428829118

/-! ## A262675.P18185798349778302455

`filter[A001694(n+1), A270418(#)]`
-/

namespace A262675.P18185798349778302455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A270418 (f1 j).toNat = 1) n)

end

end A262675.P18185798349778302455

/-!
# A262676: Number of nonzero even numbers encountered when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = (1-A000035(n)) + a(A049820(n)).

The programs for A262676, the canonical program `A262676.P18432955920466000923` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262676 has offset 0).

The definition of A262676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-A000035(n)+a(A049820(n))` (program `A262676.P18432955920466000923`, by `A262676.P18432955920466000923.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262676.P18432955920466000923

`1-A000035(n)+a(A049820(n))` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262676

/-- `1-A000035(n)+a(A049820(n))` -/
def P18432955920466000923.Spec : Prop :=
  ∀ n, P18432955920466000923.a n = A262676 n

theorem P18432955920466000923.correct : P18432955920466000923.Spec := by
  intro n
  simp only [A262676]

end A262676

/-! ## A262676.P17574945624423405804

`a(A049820(n))+(n+1)%2` with `a(0)=0`
-/

namespace A262676.P17574945624423405804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A049820 n).toNat + (n + 1) % 2

end

end A262676.P17574945624423405804

namespace A262676

/-- `a(A049820(n))+(n+1)%2` -/
def P17574945624423405804.Spec : Prop :=
  ∀ n, (P17574945624423405804.a n : ℤ) = A262676 n

end A262676

/-! ## A262676.P5202500871894947061

`A155043(n)-A262677(n)`
-/

namespace A262676.P5202500871894947061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n - A262677 n

end

end A262676.P5202500871894947061

namespace A262676

/-- `A155043(n)-A262677(n)` -/
def P5202500871894947061.Spec : Prop :=
  ∀ n, P5202500871894947061.a n = A262676 n

end A262676

/-! ## A262676.P4985460971663144361

`∑[A264893(abs(1-n))]-A262677(n)`
-/

namespace A262676.P4985460971663144361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A262677 n

end

end A262676.P4985460971663144361

namespace A262676

/-- `∑[A264893(abs(1-n))]-A262677(n)` -/
def P4985460971663144361.Spec : Prop :=
  ∀ n, P4985460971663144361.a n = A262676 n

end A262676

/-! ## A262676.P5272419415300882284

`A010052(2-(-1)^n)+a(A049820(n))` with `a(0)=0`
-/

namespace A262676.P5272419415300882284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010052 (2 - (-1) ^ n).toNat + a (A049820 n).toNat

end

end A262676.P5272419415300882284

namespace A262676

/-- `A010052(2-(-1)^n)+a(A049820(n))` -/
def P5272419415300882284.Spec : Prop :=
  ∀ n, P5272419415300882284.a n = A262676 n

end A262676

/-! ## A262676.P11860641029052461524

`A263270(A263266(n))-A262677(n)`
-/

namespace A262676.P11860641029052461524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 n).toNat - A262677 n

end

end A262676.P11860641029052461524

namespace A262676

/-- `A263270(A263266(n))-A262677(n)` -/
def P11860641029052461524.Spec : Prop :=
  ∀ n, P11860641029052461524.a n = A262676 n

end A262676

/-! ## A262676.P13674045967355748737

`A262904(n)+A263254(n)-A262677(n)`
-/

namespace A262676.P13674045967355748737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 n + (A263254 n - A262677 n)

end

end A262676.P13674045967355748737

namespace A262676

/-- `A262904(n)+A263254(n)-A262677(n)` -/
def P13674045967355748737.Spec : Prop :=
  ∀ n, P13674045967355748737.a n = A262676 n

end A262676

/-! ## A262676.P656995098241956063

`∑[A264893(n)]-A264893(n)-A262677(n)`
-/

namespace A262676.P656995098241956063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A264893 n - A262677 n

end

end A262676.P656995098241956063

namespace A262676

/-- `∑[A264893(n)]-A264893(n)-A262677(n)` -/
def P656995098241956063.Spec : Prop :=
  ∀ n, P656995098241956063.a n = A262676 n

end A262676

/-! ## A262676.P13013158506488251412

`A000035(n+1)+a(A049820(n))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A262676.P13013158506488251412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A000035 (n + 1) + a (A049820 n).toNat

end

end A262676.P13013158506488251412

namespace A262676

/-- `A000035(n+1)+a(A049820(n))` -/
def P13013158506488251412.Spec : Prop :=
  ∀ n, P13013158506488251412.a n = A262676 n

end A262676

/-! ## A262676.P11310976693947220899

`A263270(A263268(n))-A262677(n)`
-/

namespace A262676.P11310976693947220899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263268 n).toNat - A262677 n

end

end A262676.P11310976693947220899

namespace A262676

/-- `A263270(A263268(n))-A262677(n)` -/
def P11310976693947220899.Spec : Prop :=
  ∀ n, P11310976693947220899.a n = A262676 n

end A262676

/-!
# A262677: Number of odd numbers encountered when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = A000035(n) + a(A049820(n)).

The programs for A262677, the canonical program `A262677.P4700777990299745989` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262677 has offset 0).

The definition of A262677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000035(n)+a(A049820(n))` (program `A262677.P4700777990299745989`, by `A262677.P4700777990299745989.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262677.P4700777990299745989

`A000035(n)+a(A049820(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262677

/-- `A000035(n)+a(A049820(n))` -/
def P4700777990299745989.Spec : Prop :=
  ∀ n, P4700777990299745989.a n = A262677 n

theorem P4700777990299745989.correct : P4700777990299745989.Spec := by
  intro n
  simp only [A262677]

end A262677

/-! ## A262677.P234684027956896099

`A155043(n)-A262676(n)`
-/

namespace A262677.P234684027956896099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n - A262676 n

end

end A262677.P234684027956896099

namespace A262677

/-- `A155043(n)-A262676(n)` -/
def P234684027956896099.Spec : Prop :=
  ∀ n, P234684027956896099.a n = A262677 n

end A262677

/-! ## A262677.P13414304300122498052

`A010052(2+(-1)^n)+a(A049820(n))` with `a(0)=0`
-/

namespace A262677.P13414304300122498052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010052 (2 + (-1) ^ n).toNat + a (A049820 n).toNat

end

end A262677.P13414304300122498052

namespace A262677

/-- `A010052(2+(-1)^n)+a(A049820(n))` -/
def P13414304300122498052.Spec : Prop :=
  ∀ n, P13414304300122498052.a n = A262677 n

end A262677

/-! ## A262677.P5484940236681034112

`A263270(A263266(n))-A262676(n)`
-/

namespace A262677.P5484940236681034112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263266 n).toNat - A262676 n

end

end A262677.P5484940236681034112

namespace A262677

/-- `A263270(A263266(n))-A262676(n)` -/
def P5484940236681034112.Spec : Prop :=
  ∀ n, P5484940236681034112.a n = A262677 n

end A262677

/-! ## A262677.P9044848828686193032

`A262904(n)+A263254(n)-A262676(n)`
-/

namespace A262677.P9044848828686193032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 n + (A263254 n - A262676 n)

end

end A262677.P9044848828686193032

namespace A262677

/-- `A262904(n)+A263254(n)-A262676(n)` -/
def P9044848828686193032.Spec : Prop :=
  ∀ n, P9044848828686193032.a n = A262677 n

end A262677

/-! ## A262677.P662898282152588944

`∑[A264893(n)]-A264893(n)-A262676(n)`
-/

namespace A262677.P662898282152588944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A264893 n - A262676 n

end

end A262677.P662898282152588944

namespace A262677

/-- `∑[A264893(n)]-A264893(n)-A262676(n)` -/
def P662898282152588944.Spec : Prop :=
  ∀ n, P662898282152588944.a n = A262677 n

end A262677

/-! ## A262677.P1961972641784335107

`A263270(A263268(n))-A262676(n)`
-/

namespace A262677.P1961972641784335107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A263268 n).toNat - A262676 n

end

end A262677.P1961972641784335107

namespace A262677

/-- `A263270(A263268(n))-A262676(n)` -/
def P1961972641784335107.Spec : Prop :=
  ∀ n, P1961972641784335107.a n = A262677 n

end A262677

/-!
# A262678: a(n) = n - A262690(n), where A262690(n) = largest square k <= n such that A002828(n-k) = A002828(n)-1.

The programs for A262678, there is no canonical definition to state claims against.
-/

/-! ## A262678.P11219892194101568053

`n-A262690(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262678.P11219892194101568053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262690 n

end

end A262678.P11219892194101568053

/-! ## A262678.P10097919201155045601

`n-A262689(n)²`
-/

namespace A262678.P10097919201155045601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262689 n ^ 2

end

end A262678.P10097919201155045601

/-! ## A262678.P11251835648250792671

`n-A262689(n%(n+1))^2`
-/

namespace A262678.P11251835648250792671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262689 (n % (n + 1)) ^ 2

end

end A262678.P11251835648250792671

/-! ## A262678.P6191091279462131148

`n-A002620(2*A262689(n))`
-/

namespace A262678.P6191091279462131148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002620 (2 * A262689 n).toNat

end

end A262678.P6191091279462131148

/-! ## A262678.P13929120579156621034

`n-A262689(char[4]+n)*A262689(n)`
-/

namespace A262678.P13929120579156621034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262689 ((if ∃ j, f1 j = n then 1 else 0) + n) * A262689 n

end

end A262678.P13929120579156621034

/-! ## A262678.P10254139255323621714

`n-A262689(A262689(n)^4)`
-/

namespace A262678.P10254139255323621714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262689 (A262689 n ^ 4).toNat

end

end A262678.P10254139255323621714

/-! ## A262678.P17624784861728698632

`A008836(A180496(n+1))*A262690(n)+n`
-/

namespace A262678.P17624784861728698632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A180496 (n + 1)).toNat * A262690 n + (n : ℤ)

end

end A262678.P17624784861728698632

/-!
# A262679: a(n) = largest k in A259934 which is an ancestor of n in a tree generated by edge-relation A049820(child) = parent. If n is itself in A259934, then a(n) = n.

The programs for A262679, there is no canonical definition to state claims against.
-/

/-! ## A262679.P16403110520758755853

`A259934(A262904(n))`
-/

namespace A262679.P16403110520758755853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (A262904 n).toNat

end

end A262679.P16403110520758755853

/-! ## A262679.P14505007307615476060

`A259934(n-A262906(n))`
-/

namespace A262679.P14505007307615476060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 ((n : ℤ) - A262906 n).toNat

end

end A262679.P14505007307615476060

/-! ## A262679.P1595015776567968113

`A259934((n+1)%(A262906(n)+1))`
-/

namespace A262679.P1595015776567968113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (Int.tmod (n + 1 : ℤ) (A262906 n + 1)).toNat

end

end A262679.P1595015776567968113

/-! ## A262679.P16503798510678055647

`A259934(A155043(n)-A263254(n))`
-/

namespace A262679.P16503798510678055647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (A155043 n - A263254 n).toNat

end

end A262679.P16503798510678055647

/-! ## A262679.P59383199307195353

`A259934(A155043(n)+1-A263275(n))`
-/

namespace A262679.P59383199307195353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (A155043 n + (1 - A263275 n)).toNat

end

end A262679.P59383199307195353

/-! ## A262679.P5265395838519020872

`A259934(1-(A263275(n)-A155043(n)))`
-/

namespace A262679.P5265395838519020872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (1 - (A263275 n - A155043 n)).toNat

end

end A262679.P5265395838519020872

/-! ## A262679.P16657829505572278633

`A263269(A262904(n)%A109825(n+1))`
-/

namespace A262679.P16657829505572278633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263269 (Int.tmod (A262904 n) (A109825 (n + 1))).toNat

end

end A262679.P16657829505572278633

/-!
# A262680: Number of squares encountered before zero is reached when iterating A049820 starting from n: a(0) = 0 and for n >= 1, a(n) = A010052(n) + a(A049820(n)).

The programs for A262680, the canonical program `A262680.P1054294860154401112` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262680 has offset 0).

The definition of A262680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262680.P1054294860154401112

`A010052(n)+a(A049820(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262680

/-- `A010052(n)+a(A049820(n))` -/
def P1054294860154401112.Spec : Prop :=
  ∀ n, P1054294860154401112.a n = A262680 n

theorem P1054294860154401112.correct : P1054294860154401112.Spec := by
  intro n
  simp only [A262680]

end A262680

/-! ## A262680.P8987085342768546025

`char[n²]+a(n-A000005(n))` with `a(0)=0`
-/

namespace A262680.P8987085342768546025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a ((n : ℤ) - A000005 n).toNat

end

end A262680.P8987085342768546025

namespace A262680

/-- `char[n²]+a(n-A000005(n))` -/
def P8987085342768546025.Spec : Prop :=
  ∀ n, (P8987085342768546025.a n : ℤ) = A262680 n

end A262680

/-! ## A262680.P8409826335055532795

`a(A049820(n))+A179942(n)%2` with `a(0)=0, a(1)=1`
-/

namespace A262680.P8409826335055532795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A049820 n).toNat + Int.tmod (A179942 n) 2

end

end A262680.P8409826335055532795

namespace A262680

/-- `a(A049820(n))+A179942(n)%2` -/
def P8409826335055532795.Spec : Prop :=
  ∀ n, P8409826335055532795.a n = A262680 n

end A262680

/-! ## A262680.P18253547137263295500

`and(A034729(A092338(n+1)), A175830(n))`
-/

namespace A262680.P18253547137263295500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (A092338 (n + 1)).toNat) (A175830 n)

end

end A262680.P18253547137263295500

namespace A262680

/-- `and(A034729(A092338(n+1)), A175830(n))` -/
def P18253547137263295500.Spec : Prop :=
  ∀ n, P18253547137263295500.a n = A262680 n

end A262680

/-! ## A262680.P13024367073697802079

`and(A098178(n), A306586(n))`
-/

namespace A262680.P13024367073697802079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098178 n) (A306586 n)

end

end A262680.P13024367073697802079

namespace A262680

/-- `and(A098178(n), A306586(n))` -/
def P13024367073697802079.Spec : Prop :=
  ∀ n, P13024367073697802079.a n = A262680 n

end A262680

/-!
# A262681: Odd bisection of A262680.

The programs for A262681, the canonical program `A262681.P5069097334866241517` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262681 has offset 0).

The definition of A262681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262681.P5069097334866241517

`A262680(2*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A262681

/-- `A262680(2*n+1)` -/
def P5069097334866241517.Spec : Prop :=
  ∀ n, P5069097334866241517.a n = A262681 n

theorem P5069097334866241517.correct : P5069097334866241517.Spec := by
  intro n
  simp only [A262681]

end A262681

/-!
# A262682: Even bisection of A262680.

The programs for A262682, the canonical program `A262682.P796108545495164690` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262682 has offset 0).

The definition of A262682 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A262682.P796108545495164690

`A262680(2*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A262682

/-- `A262680(2*n)` -/
def P796108545495164690.Spec : Prop :=
  ∀ n, P796108545495164690.a n = A262682 n

theorem P796108545495164690.correct : P796108545495164690.Spec := by
  intro n
  simp only [A262682]

end A262682

/-! ## A262682.P16970538430196248734

`A262680(n+n)%6`
-/

namespace A262682.P16970538430196248734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262680 (n + n)) 6

end

end A262682.P16970538430196248734

namespace A262682

/-- `A262680(n+n)%6` -/
def P16970538430196248734.Spec : Prop :=
  ∀ n, P16970538430196248734.a n = A262682 n

end A262682

/-! ## A262682.P6596678371320838171

`p?[A262680(n)+3]-3`
-/

namespace A262682.P6596678371320838171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3

end

end A262682.P6596678371320838171

namespace A262682

/-- `p?[A262680(n)+3]-3` -/
def P6596678371320838171.Spec : Prop :=
  ∀ n, P6596678371320838171.a n = A262682 n

end A262682

/-! ## A262682.P11966880141759745936

`lcm(2, A262680(A005843(n)))`
-/

namespace A262682.P11966880141759745936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A262680 (A005843 n).toNat)

end

end A262682.P11966880141759745936

namespace A262682

/-- `lcm(2, A262680(A005843(n)))` -/
def P11966880141759745936.Spec : Prop :=
  ∀ n, (P11966880141759745936.a n : ℤ) = A262682 n

end A262682

/-! ## A262682.P10420988167287042409

`A007428(A179335(n+1))+p?[A262680(n)+3]`
-/

namespace A262682.P10420988167287042409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (A179335 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262682.P10420988167287042409

namespace A262682

/-- `A007428(A179335(n+1))+p?[A262680(n)+3]` -/
def P10420988167287042409.Spec : Prop :=
  ∀ n, P10420988167287042409.a n = A262682 n

end A262682

/-! ## A262682.P704124431850025441

`A262680(n+n)+A010052(A000040(n+1))`
-/

namespace A262682.P704124431850025441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (n + n) + A010052 (A000040 (n + 1)).toNat

end

end A262682.P704124431850025441

namespace A262682

/-- `A262680(n+n)+A010052(A000040(n+1))` -/
def P704124431850025441.Spec : Prop :=
  ∀ n, P704124431850025441.a n = A262682 n

end A262682

/-! ## A262682.P9848173245692652049

`A322987(A000290(n))+A262680(n+n)`
-/

namespace A262682.P9848173245692652049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322987 (A000290 n).toNat + A262680 (n + n)

end

end A262682.P9848173245692652049

namespace A262682

/-- `A322987(A000290(n))+A262680(n+n)` -/
def P9848173245692652049.Spec : Prop :=
  ∀ n, P9848173245692652049.a n = A262682 n

end A262682

/-! ## A262682.P15934100730539349542

`and(A087288(n), A350227(n))`
-/

namespace A262682.P15934100730539349542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087288 n) (A350227 n)

end

end A262682.P15934100730539349542

namespace A262682

/-- `and(A087288(n), A350227(n))` -/
def P15934100730539349542.Spec : Prop :=
  ∀ n, P15934100730539349542.a n = A262682 n

end A262682

/-! ## A262682.P10561626107466445901

`and(A107279(n), A350227(n))`
-/

namespace A262682.P10561626107466445901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107279 n) (A350227 n)

end

end A262682.P10561626107466445901

namespace A262682

/-- `and(A107279(n), A350227(n))` -/
def P10561626107466445901.Spec : Prop :=
  ∀ n, P10561626107466445901.a n = A262682 n

end A262682

/-! ## A262682.P10407362738290499013

`and(A134451(n), A350227(n))`
-/

namespace A262682.P10407362738290499013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134451 n) (A350227 n)

end

end A262682.P10407362738290499013

namespace A262682

/-- `and(A134451(n), A350227(n))` -/
def P10407362738290499013.Spec : Prop :=
  ∀ n, P10407362738290499013.a n = A262682 n

end A262682

/-!
# A262683: Characteristic function for A182859.

The programs for A262683, the canonical program `A262683.P9302618000557413525` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262683 has offset 1).

The definition of A262683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262683.P9302618000557413525

`1-A262684(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262683

/-- `1-A262684(n+1)` -/
def P9302618000557413525.Spec : Prop :=
  ∀ n, P9302618000557413525.a n = A262683 (n + 1)

theorem P9302618000557413525.correct : P9302618000557413525.Spec := by
  intro n
  simp only [A262683, Nat.add_sub_cancel]

end A262683

/-! ## A262683.P10399658197744916863

`1-a(A325765(n))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P10399658197744916863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (A325765 n).toNat

end

end A262683.P10399658197744916863

namespace A262683

/-- `1-a(A325765(n))` -/
def P10399658197744916863.Spec : Prop :=
  ∀ n, P10399658197744916863.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P3885334510683945035

`log2(gcd(2, A036459(n+1)))`
-/

namespace A262683.P3885334510683945035
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A036459 (n + 1)) : ℝ)

end

end A262683.P3885334510683945035

namespace A262683

/-- `log2(gcd(2, A036459(n+1)))` -/
def P3885334510683945035.Spec : Prop :=
  ∀ n, P3885334510683945035.a n = (A262683 (n + 1) : ℝ)

end A262683

/-! ## A262683.P17442347168582329182

`char[A182859(n+1)-1]`
-/

namespace A262683.P17442347168582329182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A262683.P17442347168582329182

namespace A262683

/-- `char[A182859(n+1)-1]` -/
def P17442347168582329182.Spec : Prop :=
  ∀ n, (P17442347168582329182.a n : ℤ) = A262683 (n + 1)

end A262683

/-! ## A262683.P16687111894363508118

`1-a(A032741(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P16687111894363508118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (A032741 (n + 1)).toNat

end

end A262683.P16687111894363508118

namespace A262683

/-- `1-a(A032741(n+1))` -/
def P16687111894363508118.Spec : Prop :=
  ∀ n, P16687111894363508118.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P8831467730561731346

`1-a(A000005(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A262683.P8831467730561731346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (A000005 (n + 1) - 1).toNat

end

end A262683.P8831467730561731346

namespace A262683

/-- `1-a(A000005(n+1)-1)` -/
def P8831467730561731346.Spec : Prop :=
  ∀ n, P8831467730561731346.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P13246844688915989968

`A129982(a(∏{e}[n+1, #+1]-1))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P13246844688915989968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A129982 (a (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - 1)).toNat

end

end A262683.P13246844688915989968

namespace A262683

/-- `A129982(a(∏{e}[n+1, #+1]-1))` -/
def P13246844688915989968.Spec : Prop :=
  ∀ n, P13246844688915989968.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P13500469487565115683

`A267349(a(∏{e}[n+1, #+1]-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A262683.P13500469487565115683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A267349 (a (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - 1) + 1).toNat

end

end A262683.P13500469487565115683

namespace A262683

/-- `A267349(a(∏{e}[n+1, #+1]-1)+1)` -/
def P13500469487565115683.Spec : Prop :=
  ∀ n, P13500469487565115683.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P119502000475544871

`A007814(∏{p}[a(∏{e}[n+1, #+1]-1)+1, #])` with `a(0)=4, a(1)=2`
-/

namespace A262683.P119502000475544871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  f1 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A262683.P119502000475544871

namespace A262683

/-- `A007814(∏{p}[a(∏{e}[n+1, #+1]-1)+1, #])` -/
def P119502000475544871.Spec : Prop :=
  ∀ n, P119502000475544871.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P6993004161173114220

`A002865(a(A032741(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P6993004161173114220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002865 (a (A032741 (n + 1)).toNat).toNat

end

end A262683.P6993004161173114220

namespace A262683

/-- `A002865(a(A032741(n+1)))` -/
def P6993004161173114220.Spec : Prop :=
  ∀ n, P6993004161173114220.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P17284559954709438761

`A046675(a(A032741(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P17284559954709438761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A046675 (a (A032741 (n + 1)).toNat).toNat

end

end A262683.P17284559954709438761

namespace A262683

/-- `A046675(a(A032741(n+1)))` -/
def P17284559954709438761.Spec : Prop :=
  ∀ n, P17284559954709438761.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P3674706609714847357

`A103221(a(A032741(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P3674706609714847357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A103221 (a (A032741 (n + 1)).toNat).toNat

end

end A262683.P3674706609714847357

namespace A262683

/-- `A103221(a(A032741(n+1)))` -/
def P3674706609714847357.Spec : Prop :=
  ∀ n, P3674706609714847357.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P5526769055769610319

`A112316(a(A032741(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A262683.P5526769055769610319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A112316 (a (A032741 (n + 1)).toNat).toNat

end

end A262683.P5526769055769610319

namespace A262683

/-- `A112316(a(A032741(n+1)))` -/
def P5526769055769610319.Spec : Prop :=
  ∀ n, P5526769055769610319.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P1137077454238589440

`and(1, A036459(n+1)+A001535(n))`
-/

namespace A262683.P1137077454238589440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1) + A001535 n)

end

end A262683.P1137077454238589440

namespace A262683

/-- `and(1, A036459(n+1)+A001535(n))` -/
def P1137077454238589440.Spec : Prop :=
  ∀ n, P1137077454238589440.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P16893166546543564142

`and(1, A036459(n+1)+A001546(n))`
-/

namespace A262683.P16893166546543564142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1) + A001546 n)

end

end A262683.P16893166546543564142

namespace A262683

/-- `and(1, A036459(n+1)+A001546(n))` -/
def P16893166546543564142.Spec : Prop :=
  ∀ n, P16893166546543564142.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P12324053730442726202

`and(1, A036459(n+1)+A001846(n))`
-/

namespace A262683.P12324053730442726202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1) + A001846 n)

end

end A262683.P12324053730442726202

namespace A262683

/-- `and(1, A036459(n+1)+A001846(n))` -/
def P12324053730442726202.Spec : Prop :=
  ∀ n, P12324053730442726202.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P4759536453399481883

`and(1, A036459(n+1)+A004768(n))`
-/

namespace A262683.P4759536453399481883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1) + A004768 n)

end

end A262683.P4759536453399481883

namespace A262683

/-- `and(1, A036459(n+1)+A004768(n))` -/
def P4759536453399481883.Spec : Prop :=
  ∀ n, P4759536453399481883.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P17394768595758603015

`and(1, A036459(n+1)+A007204(n))`
-/

namespace A262683.P17394768595758603015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1) + A007204 n)

end

end A262683.P17394768595758603015

namespace A262683

/-- `and(1, A036459(n+1)+A007204(n))` -/
def P17394768595758603015.Spec : Prop :=
  ∀ n, P17394768595758603015.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P13120180512624556508

`and(1, A036459(n+1)+A008349(n))`
-/

namespace A262683.P13120180512624556508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1) + A008349 n)

end

end A262683.P13120180512624556508

namespace A262683

/-- `and(1, A036459(n+1)+A008349(n))` -/
def P13120180512624556508.Spec : Prop :=
  ∀ n, P13120180512624556508.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P10033503949225157025

`and(1, A036459(n+1)+A008362(n))`
-/

namespace A262683.P10033503949225157025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1) + A008362 n)

end

end A262683.P10033503949225157025

namespace A262683

/-- `and(1, A036459(n+1)+A008362(n))` -/
def P10033503949225157025.Spec : Prop :=
  ∀ n, P10033503949225157025.a n = A262683 (n + 1)

end A262683

/-! ## A262683.P873664571202493050

`1-a(∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-1)` with `a(0)=1, a(1)=1`
-/

namespace A262683.P873664571202493050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) - 1).toNat

end

end A262683.P873664571202493050

namespace A262683

/-- `1-a(∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-1)` -/
def P873664571202493050.Spec : Prop :=
  ∀ n, P873664571202493050.a n = A262683 (n + 1)

end A262683

/-!
# A262684: Characteristic function for A080218.

The programs for A262684, the canonical program `A262684.P11535517176772026227` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262684 has offset 1).

The definition of A262684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262684.P17488021356452668094

`1-A262683(n+1)`
-/

namespace A262684.P17488021356452668094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A262683 (n + 1)

end

end A262684.P17488021356452668094

namespace A262684

/-- `1-A262683(n+1)` -/
def P17488021356452668094.Spec : Prop :=
  ∀ n, P17488021356452668094.a n = A262684 (n + 1)

theorem P17488021356452668094.correct : P17488021356452668094.Spec := by
  intro n
  simp only [A262684, Nat.add_sub_cancel, A262684.P17488021356452668094.a, A262684.P11535517176772026227.a, A000005, A000005.P16091521709108585461.a, A262683, A262683.P9302618000557413525.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262684

/-! ## A262684.P11535517176772026227

`1-a(A000005(n+1)-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262684

/-- `1-a(A000005(n+1)-1)` -/
def P11535517176772026227.Spec : Prop :=
  ∀ n, P11535517176772026227.a n = A262684 (n + 1)

theorem P11535517176772026227.correct : P11535517176772026227.Spec := by
  intro n
  simp only [A262684, Nat.add_sub_cancel]

end A262684

/-! ## A262684.P14120432285473278646

`A036459(1+n)%2`
-/

namespace A262684.P14120432285473278646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036459 (1 + n)) 2

end

end A262684.P14120432285473278646

namespace A262684

/-- `A036459(1+n)%2` -/
def P14120432285473278646.Spec : Prop :=
  ∀ n, P14120432285473278646.a n = A262684 (n + 1)

end A262684

/-! ## A262684.P7357765945965117555

`and(1, A036459(n+1))`
-/

namespace A262684.P7357765945965117555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036459 (n + 1))

end

end A262684.P7357765945965117555

namespace A262684

/-- `and(1, A036459(n+1))` -/
def P7357765945965117555.Spec : Prop :=
  ∀ n, P7357765945965117555.a n = A262684 (n + 1)

end A262684

/-! ## A262684.P8709382894652482545

`char[A080218(n+1)-1]`
-/

namespace A262684.P8709382894652482545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080218 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A262684.P8709382894652482545

namespace A262684

/-- `char[A080218(n+1)-1]` -/
def P8709382894652482545.Spec : Prop :=
  ∀ n, (P8709382894652482545.a n : ℤ) = A262684 (n + 1)

end A262684

/-! ## A262684.P6883401349173775490

`1-a(A032741(n+1))` with `a(0)=0, a(1)=0`
-/

namespace A262684.P6883401349173775490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - a (A032741 (n + 1)).toNat

end

end A262684.P6883401349173775490

namespace A262684

/-- `1-a(A032741(n+1))` -/
def P6883401349173775490.Spec : Prop :=
  ∀ n, P6883401349173775490.a n = A262684 (n + 1)

theorem P6883401349173775490.correct : P6883401349173775490.Spec := by
  intro n
  simp only [A262684, Nat.add_sub_cancel, A262684.P6883401349173775490.a, A262684.P11535517176772026227.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262684

/-! ## A262684.P13658465974373384048

`1-char[A182859(n+1)-1]`
-/

namespace A262684.P13658465974373384048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A262684.P13658465974373384048

namespace A262684

/-- `1-char[A182859(n+1)-1]` -/
def P13658465974373384048.Spec : Prop :=
  ∀ n, P13658465974373384048.a n = A262684 (n + 1)

end A262684

/-! ## A262684.P15161158775995169785

`A007814(∏{p}[a(∏{e}[n+1, #+1]-1)+1, #])` with `a(0)=1, a(1)=1`
-/

namespace A262684.P15161158775995169785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A262684.P15161158775995169785

namespace A262684

/-- `A007814(∏{p}[a(∏{e}[n+1, #+1]-1)+1, #])` -/
def P15161158775995169785.Spec : Prop :=
  ∀ n, P15161158775995169785.a n = A262684 (n + 1)

end A262684

/-! ## A262684.P16358973458011178409

`A262691(n+1)%A040000(n)`
-/

namespace A262684.P16358973458011178409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262691 (n + 1)) (A040000 n)

end

end A262684.P16358973458011178409

namespace A262684

/-- `A262691(n+1)%A040000(n)` -/
def P16358973458011178409.Spec : Prop :=
  ∀ n, P16358973458011178409.a n = A262684 (n + 1)

end A262684

/-!
# A262685: Least monotonic left inverse for A182859.

The programs for A262685, the canonical program `A262685.P16456492644422870268` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262685 has offset 1).

The definition of A262685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262685.P16456492644422870268

`A262683(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A262685

/-- `A262683(n+1)+a(n-1)` -/
def P16456492644422870268.Spec : Prop :=
  ∀ n, P16456492644422870268.a n = A262685 (n + 1)

theorem P16456492644422870268.correct : P16456492644422870268.Spec := by
  intro n
  simp only [A262685, Nat.add_sub_cancel]

end A262685

/-! ## A262685.P7220007775340508625

`∑[A262683(n+1)]`
-/

namespace A262685.P7220007775340508625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262685.P7220007775340508625

namespace A262685

/-- `∑[A262683(n+1)]` -/
def P7220007775340508625.Spec : Prop :=
  ∀ n, P7220007775340508625.a n = A262685 (n + 1)

end A262685

/-! ## A262685.P16533845785832670662

`∑[1-A262684(n+1)]`
-/

namespace A262685.P16533845785832670662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A262684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262685.P16533845785832670662

namespace A262685

/-- `∑[1-A262684(n+1)]` -/
def P16533845785832670662.Spec : Prop :=
  ∀ n, P16533845785832670662.a n = A262685 (n + 1)

end A262685

/-! ## A262685.P6512370385821566498

`∑[gcd(2, A036459(n+1))-1]`
-/

namespace A262685.P6512370385821566498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A036459 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262685.P6512370385821566498

namespace A262685

/-- `∑[gcd(2, A036459(n+1))-1]` -/
def P6512370385821566498.Spec : Prop :=
  ∀ n, P6512370385821566498.a n = A262685 (n + 1)

end A262685

/-! ## A262685.P2936179334841126722

`∑[1-a(A000005(n+1)-1)]` with `a(0)=1, a(1)=1`
-/

namespace A262685.P2936179334841126722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262685.P2936179334841126722

namespace A262685

/-- `∑[1-a(A000005(n+1)-1)]` -/
def P2936179334841126722.Spec : Prop :=
  ∀ n, P2936179334841126722.a n = A262685 (n + 1)

end A262685

/-! ## A262685.P11472205236207243963

`∑[A002865(a(A032741(n+1)))]` with `a(0)=1, a(1)=1`
-/

namespace A262685.P11472205236207243963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A002865 (f1 (A032741 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262685.P11472205236207243963

namespace A262685

/-- `∑[A002865(a(A032741(n+1)))]` -/
def P11472205236207243963.Spec : Prop :=
  ∀ n, P11472205236207243963.a n = A262685 (n + 1)

end A262685

/-! ## A262685.P15852465383024163525

`∑[A046675(a(A032741(n+1)))]` with `a(0)=1, a(1)=1`
-/

namespace A262685.P15852465383024163525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A046675 (f1 (A032741 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262685.P15852465383024163525

namespace A262685

/-- `∑[A046675(a(A032741(n+1)))]` -/
def P15852465383024163525.Spec : Prop :=
  ∀ n, P15852465383024163525.a n = A262685 (n + 1)

end A262685

/-!
# A262686: a(n) = largest number k such that k - d(k) = n, or 0 if no such number exists, where d(n) = the number of divisors of n (A000005).

The programs for A262686, there is no canonical definition to state claims against.
-/

/-! ## A262686.P14808476613742647109

`A263271(∑[n+2]-1)`
-/

namespace A262686.P14808476613742647109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263271 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A262686.P14808476613742647109

/-! ## A262686.P12205413661007966646

`or(char[3], A263271(A034856(n+1)))`
-/

namespace A262686.P12205413661007966646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263271 (A034856 (n + 1)).toNat)

end

end A262686.P12205413661007966646

/-! ## A262686.P1014341187059670026

`Δ[A263271(A034856(n))+a(n-1)]` with `a(0)=0`
-/

namespace A262686.P1014341187059670026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A263271 (A034856 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262686.P1014341187059670026

/-! ## A262686.P14906997043507743951

`A263271(A034856(n+1))%A017475(n)`
-/

namespace A262686.P14906997043507743951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263271 (A034856 (n + 1)).toNat) (A017475 n)

end

end A262686.P14906997043507743951

/-! ## A262686.P1073799987535027874

`gcd(A000038(n), A263271(A034856(n+1)))`
-/

namespace A262686.P1073799987535027874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A263271 (A034856 (n + 1)).toNat)

end

end A262686.P1073799987535027874

/-! ## A262686.P5483927420095075495

`A263271(A034856(n+1))+A000007(n+1)`
-/

namespace A262686.P5483927420095075495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263271 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A262686.P5483927420095075495

/-! ## A262686.P4640479418541656537

`A263271(A034856(n+1))+A000038(n+1)`
-/

namespace A262686.P4640479418541656537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263271 (A034856 (n + 1)).toNat + A000038 (n + 1)

end

end A262686.P4640479418541656537

/-! ## A262686.P16793820613870844682

`A007318(C(2, n))*A263271(A034856(n+1))`
-/

namespace A262686.P16793820613870844682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A263271 (A034856 (n + 1)).toNat

end

end A262686.P16793820613870844682

/-! ## A262686.P5932523333759470358

`A001511(2*n+1)*A263271(A034856(n+1))`
-/

namespace A262686.P5932523333759470358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A263271 (A034856 (n + 1)).toNat

end

end A262686.P5932523333759470358

/-! ## A262686.P3801214133273139824

`A263271(A034856(n+1))+A008683(9*(n+1))`
-/

namespace A262686.P3801214133273139824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263271 (A034856 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A262686.P3801214133273139824

/-! ## A262686.P5053123407331108620

`A014963(10*(n+1))*A263271(A034856(n+1))`
-/

namespace A262686.P5053123407331108620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A263271 (A034856 (n + 1)).toNat

end

end A262686.P5053123407331108620

/-! ## A262686.P14225598811208144818

`A000010(∑[(-1)^n]+1)*A263271(A034856(n+1))`
-/

namespace A262686.P14225598811208144818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat * A263271 (A034856 (n + 1)).toNat

end

end A262686.P14225598811208144818

/-! ## A262686.P11464740356628674727

`A263271(A034856(n+1))+A000122(A088225(n+1))`
-/

namespace A262686.P11464740356628674727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263271 (A034856 (n + 1)).toNat + A000122 (A088225 (n + 1)).toNat

end

end A262686.P11464740356628674727

/-!
# A262687: a(n) = index of first n in A262680; positions of records in A262680.

The programs for A262687, there is no canonical definition to state claims against.
-/

/-! ## A262687.P6516717385086472269

`A262688(n)²`
-/

namespace A262687.P6516717385086472269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262688 n ^ 2

end

end A262687.P6516717385086472269

/-! ## A262687.P1549694584232181246

`A262688(n)^p?[A262680(n)]`
-/

namespace A262687.P1549694584232181246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262688 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A262687.P1549694584232181246

/-! ## A262687.P13753568746810301348

`A262688(A369464(n+1))^2`
-/

namespace A262687.P13753568746810301348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262688 (A369464 (n + 1)).toNat ^ 2

end

end A262687.P13753568746810301348

/-! ## A262687.P2857209616624303831

`A262688(n)^(A214249(n)+1)`
-/

namespace A262687.P2857209616624303831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262688 n : ℚ) ^ (A214249 n + 1 : ℤ)

end

end A262687.P2857209616624303831

/-! ## A262687.P5471351359067663625

`A262688(n)^(A214268(n)+1)`
-/

namespace A262687.P5471351359067663625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262688 n : ℚ) ^ (A214268 n + 1 : ℤ)

end

end A262687.P5471351359067663625

/-!
# A262688: a(n) = square root of the index where A262680 reaches n for the first time.

The programs for A262688, there is no canonical definition to state claims against.
-/

/-! ## A262688.P9115005054912016124

`sqrt(A262687(n))`
-/

namespace A262688.P9115005054912016124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262687 n : ℝ)

end

end A262688.P9115005054912016124

/-! ## A262688.P15381097502665904248

`A262687(n)^(A262681(n)/2)`
-/

namespace A262688.P15381097502665904248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262687 n : ℝ) ^ ((A262681 n : ℚ) / 2 : ℝ)

end

end A262688.P15381097502665904248

/-! ## A262688.P1341475930930187700

`A262687(n)^(A260897(n+1)/2)`
-/

namespace A262688.P1341475930930187700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262687 n : ℝ) ^ ((A260897 (n + 1) : ℚ) / 2 : ℝ)

end

end A262688.P1341475930930187700

/-! ## A262688.P658050379682838767

`A262687(n)^(A033999(2*n)/2)`
-/

namespace A262688.P658050379682838767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262687 n : ℝ) ^ ((A033999 (2 * n) : ℚ) / 2 : ℝ)

end

end A262688.P658050379682838767

/-! ## A262688.P10108782772393583529

`A262687(n)^((n+1)/A000027(2*(n+1)))`
-/

namespace A262688.P10108782772393583529
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262687 n : ℝ) ^ ((n + 1 : ℚ) / (A000027 (2 * (n + 1)) : ℚ) : ℝ)

end

end A262688.P10108782772393583529

/-!
# A262689: a(n) = largest number k <= A000196(n) for which A002828(n-(k^2)) = A002828(n)-1.

The programs for A262689, there is no canonical definition to state claims against.
-/

/-! ## A262689.P4127090630398727923

`A000196(A262690(n))`
-/

namespace A262689.P4127090630398727923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A262690 n).toNat

end

end A262689.P4127090630398727923

/-! ## A262689.P13110991477553741470

`sqrt(A262690(n))`
-/

namespace A262689.P13110991477553741470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262690 n : ℝ)

end

end A262689.P13110991477553741470

/-! ## A262689.P15170770065382892517

`sqrt(n-A262678(n))`
-/

namespace A262689.P15170770065382892517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℤ) - A262678 n : ℝ)

end

end A262689.P15170770065382892517

/-! ## A262689.P8716181355863801264

`A000194(n-A262678(n))`
-/

namespace A262689.P8716181355863801264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n : ℤ) - A262678 n).toNat

end

end A262689.P8716181355863801264

/-! ## A262689.P16376331599906445754

`A000196(n-A262678(n))`
-/

namespace A262689.P16376331599906445754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) - A262678 n).toNat

end

end A262689.P16376331599906445754

/-! ## A262689.P11072935081420622489

`A064876(n-A262678(n))`
-/

namespace A262689.P11072935081420622489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 ((n : ℤ) - A262678 n).toNat

end

end A262689.P11072935081420622489

/-! ## A262689.P1777228145951215180

`A064876(A262690(2*n-n))`
-/

namespace A262689.P1777228145951215180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A262690 (2 * n - n)).toNat

end

end A262689.P1777228145951215180

/-! ## A262689.P14286338717322469716

`A064876(A064876(A262690(n))²)`
-/

namespace A262689.P14286338717322469716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A064876 (A262690 n).toNat ^ 2).toNat

end

end A262689.P14286338717322469716

/-! ## A262689.P8076680339345242779

`A064876(A262690(n)+1-A010052(n))`
-/

namespace A262689.P8076680339345242779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A262690 n + (1 - A010052 n)).toNat

end

end A262689.P8076680339345242779

/-! ## A262689.P10097974571663962786

`A064876(1-(A010052(n)-A262690(n)))`
-/

namespace A262689.P10097974571663962786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (1 - (A010052 n - A262690 n)).toNat

end

end A262689.P10097974571663962786

/-! ## A262689.P6852326423536238063

`A262690(n)/A064876(A262690(n)+1)`
-/

namespace A262689.P6852326423536238063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262690 n : ℚ) / (A064876 (A262690 n + 1).toNat : ℚ)

end

end A262689.P6852326423536238063

/-! ## A262689.P13069503633557261786

`A305615(n+1-A262678(n))`
-/

namespace A262689.P13069503633557261786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 ((n + 1 : ℤ) - A262678 n).toNat

end

end A262689.P13069503633557261786

/-!
# A262690: a(n) = largest square k <= n such that A002828(n-k) = A002828(n)-1.

The programs for A262690, there is no canonical definition to state claims against.
-/

/-! ## A262690.P12184244879373211255

`A000290(A262689(n))`
-/

namespace A262690.P12184244879373211255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A262689 n).toNat

end

end A262690.P12184244879373211255

/-! ## A262690.P2775601385423717494

`A262689(n)²`
-/

namespace A262690.P2775601385423717494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 n ^ 2

end

end A262690.P2775601385423717494

/-! ## A262690.P632681688672610950

`n-A262678(n)`
-/

namespace A262690.P632681688672610950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262678 n

end

end A262690.P632681688672610950

/-! ## A262690.P15102540502545671508

`A262689(n%(4*n+2))^2`
-/

namespace A262690.P15102540502545671508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (n % (4 * n + 2)) ^ 2

end

end A262690.P15102540502545671508

/-! ## A262690.P3423511102476396980

`A002620(2*A262689(n))`
-/

namespace A262690.P3423511102476396980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A262689 n).toNat

end

end A262690.P3423511102476396980

/-! ## A262690.P9775233757192624968

`A262689(A262689(n)^2)^2`
-/

namespace A262690.P9775233757192624968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A262689 n ^ 2).toNat ^ 2

end

end A262690.P9775233757192624968

/-! ## A262690.P8918218232760591683

`A262689(char[4]+n)*A262689(n)`
-/

namespace A262690.P8918218232760591683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((if ∃ j, f1 j = n then 1 else 0) + n) * A262689 n

end

end A262690.P8918218232760591683

/-! ## A262690.P1340010003102153093

`A048760(A262689(n)*A262689(n))`
-/

namespace A262690.P1340010003102153093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A262689 n * A262689 n).toNat

end

end A262690.P1340010003102153093

/-! ## A262690.P5233410556975324302

`(A262689(n)+A000007(n))*A262689(n)`
-/

namespace A262690.P5233410556975324302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262689 n + A000007 n) * A262689 n

end

end A262690.P5233410556975324302

/-! ## A262690.P15229539218187806377

`A057427(n)*A262689(n)*A262689(n)`
-/

namespace A262690.P15229539218187806377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A262689 n * A262689 n

end

end A262690.P15229539218187806377

/-! ## A262690.P10983499704374681

`and(A003817(n), A262689(n))*A262689(n)`
-/

namespace A262690.P10983499704374681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A262689 n) * A262689 n

end

end A262690.P10983499704374681

/-! ## A262690.P5393852087322722482

`A262689(A262689(n)^4)`
-/

namespace A262690.P5393852087322722482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A262689 n ^ 4).toNat

end

end A262690.P5393852087322722482

/-!
# A262693: Characteristic function for A259934.

The programs for A262693, there is no canonical definition to state claims against.
-/

/-! ## A262693.P2165469967459307528

`char[A259934(n)]`
-/

namespace A262693.P2165469967459307528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A262693.P2165469967459307528

/-! ## A262693.P4201799903447402342

`char[A262679(n)]`
-/

namespace A262693.P4201799903447402342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A262693.P4201799903447402342

/-! ## A262693.P2061417713364218222

`C(2, A262522(n))`
-/

namespace A262693.P2061417713364218222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A262522 n).toNat

end

end A262693.P2061417713364218222

/-! ## A262693.P9616752623926825617

`floor(acot(A263254(n)))`
-/

namespace A262693.P9616752623926825617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A263254 n : ℝ)⌋

end

end A262693.P9616752623926825617

/-! ## A262693.P5304516000399100482

`floor(1/A263275(n))`
-/

namespace A262693.P5304516000399100482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A263275 n : ℚ)⌋

end

end A262693.P5304516000399100482

/-! ## A262693.P6164274012141911369

`∏{d}[A262696(n), log(#)]`
-/

namespace A262693.P6164274012141911369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A262693.P6164274012141911369

/-! ## A262693.P4803208529943681223

`∏{d}[A262697(n), log(#)]`
-/

namespace A262693.P4803208529943681223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A262693.P4803208529943681223

/-! ## A262693.P10892663079740985051

`A000007(A262695(n))`
-/

namespace A262693.P10892663079740985051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A262695 n).toNat

end

end A262693.P10892663079740985051

/-! ## A262693.P7240197305685778455

`A000007(A262696(n))`
-/

namespace A262693.P7240197305685778455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A262696 n).toNat

end

end A262693.P7240197305685778455

/-! ## A262693.P10348591816323555863

`A000007(A262697(n))`
-/

namespace A262693.P10348591816323555863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A262697 n).toNat

end

end A262693.P10348591816323555863

/-! ## A262693.P8266793289495314164

`A000007(A263254(n))`
-/

namespace A262693.P8266793289495314164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A263254 n).toNat

end

end A262693.P8266793289495314164

/-! ## A262693.P10929666646174348928

`A082284(A262522(n))`
-/

namespace A262693.P10929666646174348928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A262522 n).toNat

end

end A262693.P10929666646174348928

/-! ## A262693.P13749867421379859825

`A000007(A263275(n)-1)`
-/

namespace A262693.P13749867421379859825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A263275 n - 1).toNat

end

end A262693.P13749867421379859825

/-! ## A262693.P17579802944766901801

`C(A262904(n), A155043(n))`
-/

namespace A262693.P17579802944766901801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262904 n).toNat (A155043 n).toNat

end

end A262693.P17579802944766901801

/-! ## A262693.P8127141882852596752

`char[A262503(n)-A262506(n)]`
-/

namespace A262693.P8127141882852596752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A262506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A262693.P8127141882852596752

/-! ## A262693.P16120189663959859091

`2-A040001(2*A262696(n))`
-/

namespace A262693.P16120189663959859091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A040001 (2 * A262696 n).toNat

end

end A262693.P16120189663959859091

/-! ## A262693.P15424702046862479426

`A000007(A001222(A263275(n)))`
-/

namespace A262693.P15424702046862479426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001222 (A263275 n).toNat).toNat

end

end A262693.P15424702046862479426

/-! ## A262693.P17194889235345101973

`A262696(A266110(A262522(n))²)`
-/

namespace A262693.P17194889235345101973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 (A266110 (A262522 n).toNat ^ 2).toNat

end

end A262693.P17194889235345101973

/-! ## A262693.P10849225617538385982

`A000007(n-A259934(A262694(n)))`
-/

namespace A262693.P10849225617538385982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) - A259934 (A262694 n).toNat).toNat

end

end A262693.P10849225617538385982

/-! ## A262693.P587918655622281448

`C(A177704(n), A016777(A263254(n)))`
-/

namespace A262693.P587918655622281448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A177704 n).toNat (A016777 (A263254 n).toNat).toNat

end

end A262693.P587918655622281448

/-!
# A262694: Least monotonic left inverse for A259934.

The programs for A262694, there is no canonical definition to state claims against.
-/

/-! ## A262694.P5036968807852300365

`∑[A262693(n)]-1`
-/

namespace A262694.P5036968807852300365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A262694.P5036968807852300365

/-! ## A262694.P1384862772463539177

`∑[char[A259934(1+n)]]`
-/

namespace A262694.P1384862772463539177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262694.P1384862772463539177

/-! ## A262694.P16882958485474458681

`∑[char[A259934(n)]]-1`
-/

namespace A262694.P16882958485474458681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A262694.P16882958485474458681

/-! ## A262694.P4959126587568142553

`∑[char[∑[A259935(n+1)]]]`
-/

namespace A262694.P4959126587568142553
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262694.P4959126587568142553

/-! ## A262694.P6779483827160896188

`∑[char[record[A262679(n+2)]]]`
-/

namespace A262694.P6779483827160896188
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262694.P6779483827160896188

/-! ## A262694.P3764979872755756983

`∑[∏{d}[A262696(n), log(#)]]-1`
-/

namespace A262694.P3764979872755756983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, Real.log (d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A262694.P3764979872755756983

/-! ## A262694.P16855976901198387825

`A000007(A263254(n))+a(n-1)` with `a(0)=0`
-/

namespace A262694.P16855976901198387825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000007 (A263254 n).toNat + a (n - 1)

end

end A262694.P16855976901198387825

/-! ## A262694.P11265114523215361407

`∑[char[A262503(n)-A262506(n)]]-1`
-/

namespace A262694.P11265114523215361407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A262506 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A262694.P11265114523215361407

/-! ## A262694.P11247356628798654314

`A262693(n)+a(n-1)%A107600(n+9)` with `a(0)=0`
-/

namespace A262694.P11247356628798654314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A262693 n + Int.tmod (a (n - 1)) (A107600 (n + 9))

end

end A262694.P11247356628798654314

/-! ## A262694.P8510275792269895303

`A263254(A263258(∑[A262693(n)]))`
-/

namespace A262694.P8510275792269895303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 (A263258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A262694.P8510275792269895303

/-!
# A262696: a(n)=0 if n is in A259934, otherwise number of terminal nodes (including n itself if it is a leaf) in that finite subtree whose root is n and whose edge-relation is defined by A049820(child) = parent.

The programs for A262696, there is no canonical definition to state claims against.
-/

/-! ## A262696.P17201687020176790482

`A002264(A262697(n)+A139352(A209724(n+1)))`
-/

namespace A262696.P17201687020176790482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A262697 n + A139352 (A209724 (n + 1)).toNat).toNat

end

end A262696.P17201687020176790482

/-! ## A262696.P14657399263605629798

`floor((A262697(n)+A007302(A094373(n)))/3)`
-/

namespace A262696.P14657399263605629798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262697 n + A007302 (A094373 n).toNat : ℚ) / 3⌋

end

end A262696.P14657399263605629798

/-! ## A262696.P10486294279349848114

`A002264(A262697(n)+A007302(A094373(n)))`
-/

namespace A262696.P10486294279349848114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A262697 n + A007302 (A094373 n).toNat).toNat

end

end A262696.P10486294279349848114

/-!
# A262699: List of currency denominations such that any value x > 0 is represented in exactly x ways as a sum of distinct denominations, where a repeated value represents a bill and a coin which count as distinct denominations.

The programs for A262699, the canonical program `A262699.P10092096456765753942` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262699 has offset 1).

The definition of A262699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262699.P10092096456765753942

`ogf((1+2x-x^3-2x^5)/(1-2x^2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A262699

/-- `ogf((1+2x-x^3-2x^5)/(1-2x^2))` -/
def P10092096456765753942.Spec : Prop :=
  ∀ n, P10092096456765753942.a n = A262699 (n + 1)

theorem P10092096456765753942.correct : P10092096456765753942.Spec := by
  intro n
  simp only [A262699, Nat.add_sub_cancel]

end A262699

/-! ## A262699.P9206851034453242119

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=4, a(5)=4`
-/

namespace A262699.P9206851034453242119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 4, 4] fun n a =>
  2 * a (n - 2)

end

end A262699.P9206851034453242119

namespace A262699

/-- `2*a(n-2)` -/
def P9206851034453242119.Spec : Prop :=
  ∀ n, (P9206851034453242119.a n : ℤ) = A262699 (n + 1)

end A262699

/-! ## A262699.P9582226505026045923

`lcm(2, 1-a(n-2))+2` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A262699.P9582226505026045923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  Int.lcm 2 (1 - (a (n - 2) : ℤ)) + 2

end

end A262699.P9582226505026045923

namespace A262699

/-- `lcm(2, 1-a(n-2))+2` -/
def P9582226505026045923.Spec : Prop :=
  ∀ n, (P9582226505026045923.a n : ℤ) = A262699 (n + 1)

end A262699

/-! ## A262699.P1128012051903433346

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=4, a(5)=4`
-/

namespace A262699.P1128012051903433346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3, 4, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A262699.P1128012051903433346

namespace A262699

/-- `a(n-2)+a(n-2)` -/
def P1128012051903433346.Spec : Prop :=
  ∀ n, (P1128012051903433346.a n : ℤ) = A262699 (n + 1)

end A262699

/-! ## A262699.P16470002755164555688

`1-xor(1-a(n-2), a(n-2))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A262699.P16470002755164555688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  1 - Int.xor (1 - a (n - 2)) (a (n - 2))

end

end A262699.P16470002755164555688

namespace A262699

/-- `1-xor(1-a(n-2), a(n-2))` -/
def P16470002755164555688.Spec : Prop :=
  ∀ n, P16470002755164555688.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P7311895508081428835

`A329670(n)+A131572(n)`
-/

namespace A262699.P7311895508081428835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329670 n + A131572 n

end

end A262699.P7311895508081428835

namespace A262699

/-- `A329670(n)+A131572(n)` -/
def P7311895508081428835.Spec : Prop :=
  ∀ n, P7311895508081428835.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P6915942295849424581

`A267883(n*A267883(n))+A016116(n)`
-/

namespace A262699.P6915942295849424581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 ((n : ℤ) * A267883 n).toNat + A016116 n

end

end A262699.P6915942295849424581

namespace A262699

/-- `A267883(n*A267883(n))+A016116(n)` -/
def P6915942295849424581.Spec : Prop :=
  ∀ n, P6915942295849424581.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P11063695906053016322

`A016116(n)+C(A003056(n), A016116(n))`
-/

namespace A262699.P11063695906053016322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (Nat.choose (A003056 n).toNat (A016116 n).toNat : ℤ)

end

end A262699.P11063695906053016322

namespace A262699

/-- `A016116(n)+C(A003056(n), A016116(n))` -/
def P11063695906053016322.Spec : Prop :=
  ∀ n, P11063695906053016322.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P17881729693558157447

`A016116(n)+C(A003987(n), A016116(n))`
-/

namespace A262699.P17881729693558157447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (Nat.choose (A003987 n).toNat (A016116 n).toNat : ℤ)

end

end A262699.P17881729693558157447

namespace A262699

/-- `A016116(n)+C(A003987(n), A016116(n))` -/
def P17881729693558157447.Spec : Prop :=
  ∀ n, P17881729693558157447.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P14145848108156799573

`floor(sqrt((2^floor(n/2))²+2+n))`
-/

namespace A262699.P14145848108156799573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2 + 2 + (n : ℚ) : ℝ)⌋

end

end A262699.P14145848108156799573

namespace A262699

/-- `floor(sqrt((2^floor(n/2))²+2+n))` -/
def P14145848108156799573.Spec : Prop :=
  ∀ n, P14145848108156799573.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P14414370107468926884

`and(A104459(n+1), A140407(n))`
-/

namespace A262699.P14414370107468926884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104459 (n + 1)) (A140407 n)

end

end A262699.P14414370107468926884

namespace A262699

/-- `and(A104459(n+1), A140407(n))` -/
def P14414370107468926884.Spec : Prop :=
  ∀ n, P14414370107468926884.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P14182106466734616939

`A308663(lt[A308624(n+1), A308622(3*n+2)])`
-/

namespace A262699.P14182106466734616939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308622 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A262699.P14182106466734616939

namespace A262699

/-- `A308663(lt[A308624(n+1), A308622(3*n+2)])` -/
def P14182106466734616939.Spec : Prop :=
  ∀ n, P14182106466734616939.a n = A262699 (n + 1)

end A262699

/-! ## A262699.P13837019203657670901

`A308663(lt[A308680(n)²², n])`
-/

namespace A262699.P13837019203657670901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308680 n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A262699.P13837019203657670901

namespace A262699

/-- `A308663(lt[A308680(n)²², n])` -/
def P13837019203657670901.Spec : Prop :=
  ∀ n, P13837019203657670901.a n = A262699 (n + 1)

end A262699

