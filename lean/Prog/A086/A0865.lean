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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A086500: Group the natural numbers such that the n-th group sum is divisible by the n-th triangular number: (1), (2, 3, 4), (5, 6, 7), (8, 9, 10, 11, 12), (13, 14, 15, 16, 17), (18, 19, 20, 21, 22, 23, 24), ... Sequence contains the group sum.

The programs for A086500, the canonical program `A086500.P18287603341731169927` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086500 has offset 1).

The definition of A086500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086500.P18287603341731169927

`(n+1)*(n+2)*(2*(n+1)+1+(-1)^(n+1))/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086500

/-- `(n+1)*(n+2)*(2*(n+1)+1+(-1)^(n+1))/4` -/
def P18287603341731169927.Spec : Prop :=
  ∀ n, P18287603341731169927.a n = (A086500 (n + 1) : ℚ)

end A086500

/-! ## A086500.P9474659179075814684

`or(1, n+1)*∑[n+1]`
-/

namespace A086500.P9474659179075814684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086500.P9474659179075814684

namespace A086500

/-- `or(1, n+1)*∑[n+1]` -/
def P9474659179075814684.Spec : Prop :=
  ∀ n, (P9474659179075814684.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P6501800244895421694

`Δ[C(ceil((n+1)²/2), 2)]`
-/

namespace A086500.P6501800244895421694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈((n + 1) ^ 2 : ℚ) / 2⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086500.P6501800244895421694

namespace A086500

/-- `Δ[C(ceil((n+1)²/2), 2)]` -/
def P6501800244895421694.Spec : Prop :=
  ∀ n, P6501800244895421694.a n = A086500 (n + 1)

end A086500

/-! ## A086500.P8890268113503445612

`C(n+2, 2)*or(1, n+1)`
-/

namespace A086500.P8890268113503445612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 * Nat.lor 1 (n + 1)

end

end A086500.P8890268113503445612

namespace A086500

/-- `C(n+2, 2)*or(1, n+1)` -/
def P8890268113503445612.Spec : Prop :=
  ∀ n, (P8890268113503445612.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P1126371776993477064

`∑[(n%2+1)*(n+1)²]`
-/

namespace A086500.P1126371776993477064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P1126371776993477064

namespace A086500

/-- `∑[(n%2+1)*(n+1)²]` -/
def P1126371776993477064.Spec : Prop :=
  ∀ n, (P1126371776993477064.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P9741888663485220732

`∑[(n+1)²*gcd(2, n+1)]`
-/

namespace A086500.P9741888663485220732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P9741888663485220732

namespace A086500

/-- `∑[(n+1)²*gcd(2, n+1)]` -/
def P9741888663485220732.Spec : Prop :=
  ∀ n, (P9741888663485220732.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P11154845590906240071

`∑[(and(1, n)+1)*(n+1)²]`
-/

namespace A086500.P11154845590906240071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P11154845590906240071

namespace A086500

/-- `∑[(and(1, n)+1)*(n+1)²]` -/
def P11154845590906240071.Spec : Prop :=
  ∀ n, (P11154845590906240071.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P17066938089575591117

`lcm(or(1, n+1)², ∑[n+1])`
-/

namespace A086500.P17066938089575591117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.lor 1 (n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086500.P17066938089575591117

namespace A086500

/-- `lcm(or(1, n+1)², ∑[n+1])` -/
def P17066938089575591117.Spec : Prop :=
  ∀ n, (P17066938089575591117.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P8268256813815578525

`(and(1, n)+n+1)*∑[n+1]`
-/

namespace A086500.P8268256813815578525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086500.P8268256813815578525

namespace A086500

/-- `(and(1, n)+n+1)*∑[n+1]` -/
def P8268256813815578525.Spec : Prop :=
  ∀ n, (P8268256813815578525.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P10061885519728691236

`∑[8/a(n-1)*∑[n]²]` with `a(0)=1`
-/

namespace A086500.P10061885519728691236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  8 / f1 (n - 1) * (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P10061885519728691236

namespace A086500

/-- `∑[8/a(n-1)*∑[n]²]` -/
def P10061885519728691236.Spec : Prop :=
  ∀ n, P10061885519728691236.a n = (A086500 (n + 1) : ℚ)

end A086500

/-! ## A086500.P7119047594747735742

`∑[∑[(2*n)^3]/a(n-1)]` with `a(0)=1`
-/

namespace A086500.P7119047594747735742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P7119047594747735742

namespace A086500

/-- `∑[∑[(2*n)^3]/a(n-1)]` -/
def P7119047594747735742.Spec : Prop :=
  ∀ n, P7119047594747735742.a n = (A086500 (n + 1) : ℚ)

end A086500

/-! ## A086500.P533327286484525753

`∑[2-a(n-1)]*∑[n+1]` with `a(0)=1, a(1)=2`
-/

namespace A086500.P533327286484525753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A086500.P533327286484525753

namespace A086500

/-- `∑[2-a(n-1)]*∑[n+1]` -/
def P533327286484525753.Spec : Prop :=
  ∀ n, P533327286484525753.a n = A086500 (n + 1)

end A086500

/-! ## A086500.P11589301597433671395

`(gcd(n-1, 2*n)+n)*∑[n+1]`
-/

namespace A086500.P11589301597433671395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) + n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086500.P11589301597433671395

namespace A086500

/-- `(gcd(n-1, 2*n)+n)*∑[n+1]` -/
def P11589301597433671395.Spec : Prop :=
  ∀ n, (P11589301597433671395.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P3502626911977353753

`(n+2-and(1, n+1))*C(n+2, 2)`
-/

namespace A086500.P3502626911977353753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (Nat.land 1 (n + 1) : ℤ)) * (Nat.choose (n + 2) 2 : ℤ)

end

end A086500.P3502626911977353753

namespace A086500

/-- `(n+2-and(1, n+1))*C(n+2, 2)` -/
def P3502626911977353753.Spec : Prop :=
  ∀ n, P3502626911977353753.a n = A086500 (n + 1)

end A086500

/-! ## A086500.P17969438845979983315

`(n+3-gcd(n, n+2))*C(n+2, 2)`
-/

namespace A086500.P17969438845979983315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (Nat.gcd n (n + 2) : ℤ)) * (Nat.choose (n + 2) 2 : ℤ)

end

end A086500.P17969438845979983315

namespace A086500

/-- `(n+3-gcd(n, n+2))*C(n+2, 2)` -/
def P17969438845979983315.Spec : Prop :=
  ∀ n, P17969438845979983315.a n = A086500 (n + 1)

end A086500

/-! ## A086500.P12637440956215941649

`∑[lcm(2, n+2)/(n+2)*(n+1)²]`
-/

namespace A086500.P12637440956215941649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℚ) / (n + 2 : ℚ) * ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P12637440956215941649

namespace A086500

/-- `∑[lcm(2, n+2)/(n+2)*(n+1)²]` -/
def P12637440956215941649.Spec : Prop :=
  ∀ n, P12637440956215941649.a n = (A086500 (n + 1) : ℚ)

end A086500

/-! ## A086500.P13320241046527160754

`floor(∑[n+1]²/∑[1-a(n-1)])` with `a(0)=1`
-/

namespace A086500.P13320241046527160754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)⌋

end

end A086500.P13320241046527160754

namespace A086500

/-- `floor(∑[n+1]²/∑[1-a(n-1)])` -/
def P13320241046527160754.Spec : Prop :=
  ∀ n, P13320241046527160754.a n = A086500 (n + 1)

end A086500

/-! ## A086500.P1768863363819889483

`(n+2)*((n+1)²-a(n-1)/n)` with `a(0)=1`
-/

namespace A086500.P1768863363819889483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℚ) * (((n + 1) ^ 2 : ℚ) - a (n - 1) / (n : ℚ))

end

end A086500.P1768863363819889483

namespace A086500

/-- `(n+2)*((n+1)²-a(n-1)/n)` -/
def P1768863363819889483.Spec : Prop :=
  ∀ n, P1768863363819889483.a n = (A086500 (n + 1) : ℚ)

end A086500

/-! ## A086500.P12537171934619494174

`∑[gcd(n+3, 2*(n+2))*∑[2*n+1]]`
-/

namespace A086500.P12537171934619494174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (2 * (n + 2)) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P12537171934619494174

namespace A086500

/-- `∑[gcd(n+3, 2*(n+2))*∑[2*n+1]]` -/
def P12537171934619494174.Spec : Prop :=
  ∀ n, (P12537171934619494174.a n : ℤ) = A086500 (n + 1)

end A086500

/-! ## A086500.P7077679482245518992

`∑[A181900(n+1)]`
-/

namespace A086500.P7077679482245518992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086500.P7077679482245518992

namespace A086500

/-- `∑[A181900(n+1)]` -/
def P7077679482245518992.Spec : Prop :=
  ∀ n, P7077679482245518992.a n = A086500 (n + 1)

end A086500

/-!
# A086501: Number of non-commuting permutations: number of ordered pairs g, h in Symm(n) such that gh <> hg, i.e., the subgroup <g,h> is non-Abelian.

The programs for A086501, there is no canonical definition to state claims against.
-/

/-! ## A086501.P3247631310195752088

`(n+1)!²-A053529(n+1)`
-/

namespace A086501.P3247631310195752088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 : ℤ) - A053529 (n + 1)

end

end A086501.P3247631310195752088

/-! ## A086501.P3177133364715126654

`((n+1)!-A000041(n+1))*(n+1)!`
-/

namespace A086501.P3177133364715126654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) - A000041 (n + 1)) * (Nat.factorial (n + 1) : ℤ)

end

end A086501.P3177133364715126654

/-! ## A086501.P13427934172698983973

`A001044(n+1)-A053529(n+1)`
-/

namespace A086501.P13427934172698983973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (n + 1) - A053529 (n + 1)

end

end A086501.P13427934172698983973

/-! ## A086501.P13242871783933994278

`A000142(n+1)²-A053529(n+1)`
-/

namespace A086501.P13242871783933994278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) ^ 2 - A053529 (n + 1)

end

end A086501.P13242871783933994278

/-! ## A086501.P16685633142701950746

`((n+1)!-A299200(A001749(n+1)))*(n+1)!`
-/

namespace A086501.P16685633142701950746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) - A299200 (A001749 (n + 1)).toNat) * (Nat.factorial (n + 1) : ℤ)

end

end A086501.P16685633142701950746

/-!
# A086502: Number of ordered pairs (a,b) of elements of the symmetric group S_n such that the pair a,b generates a proper subgroup of S_n.

The programs for A086502, there is no canonical definition to state claims against.
-/

/-! ## A086502.P2378527919190004596

`(n+1)!²-A071605(n+1)`
-/

namespace A086502.P2378527919190004596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 : ℤ) - A071605 (n + 1)

end

end A086502.P2378527919190004596

/-! ## A086502.P3364627546786349525

`A001044(n+1)-A071605(n+1)`
-/

namespace A086502.P3364627546786349525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (n + 1) - A071605 (n + 1)

end

end A086502.P3364627546786349525

/-! ## A086502.P2211495415150715065

`A000142(n+1)²-A071605(n+1)`
-/

namespace A086502.P2211495415150715065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) ^ 2 - A071605 (n + 1)

end

end A086502.P2211495415150715065

/-! ## A086502.P15679942478512644205

`A001044(n+1)-n!*A135474(n+1)`
-/

namespace A086502.P15679942478512644205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 (n + 1) - (Nat.factorial n : ℤ) * A135474 (n + 1)

end

end A086502.P15679942478512644205

/-! ## A086502.P13066711114460171913

`A000142(n+1)²-n!*A135474(n+1)`
-/

namespace A086502.P13066711114460171913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) ^ 2 - (Nat.factorial n : ℤ) * A135474 (n + 1)

end

end A086502.P13066711114460171913

/-!
# A086505: a(n) is the n-th smallest prime p such that p+2n is also prime.

The programs for A086505, there is no canonical definition to state claims against.
-/

/-! ## A086505.P3244146585268197091

`A231608(∑[4*n]+1)`
-/

namespace A086505.P3244146585268197091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086505.P3244146585268197091

/-! ## A086505.P6556692769153684436

`p?[(A038722(n+1)-n)*A231608(n+1)]`
-/

namespace A086505.P6556692769153684436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038722 (n + 1) - (n : ℤ)) * A231608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086505.P6556692769153684436

/-! ## A086505.P17960454326533066406

`A007318(C(2, n))*A231608(A001844(n))`
-/

namespace A086505.P17960454326533066406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A231608 (A001844 n).toNat

end

end A086505.P17960454326533066406

/-! ## A086505.P17563728761687794157

`A231608(∑[A008574(n)])+A000007(n+1)`
-/

namespace A086505.P17563728761687794157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000007 (n + 1)

end

end A086505.P17563728761687794157

/-! ## A086505.P5530562569788201060

`A231608(∑[A008574(n)])+A000038(n+1)`
-/

namespace A086505.P5530562569788201060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000038 (n + 1)

end

end A086505.P5530562569788201060

/-! ## A086505.P3739078280317276581

`A231608(∑[A008574(n)])-A000035(2*n)`
-/

namespace A086505.P3739078280317276581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 (2 * n)

end

end A086505.P3739078280317276581

/-!
# A086506: a(1) = 2, a(2n) = smallest prime of the type r*a(2n-1) +1, a(2n+1) = smallest prime of the type s*a(2n) -1.

The programs for A086506, there is no canonical definition to state claims against.
-/

/-! ## A086506.P4553262657359981758

`A129990(record[A292804(n)])`
-/

namespace A086506.P4553262657359981758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086506.P4553262657359981758

/-! ## A086506.P7170015763963442912

`p?[Δ[A081600(A003945(n))]]`
-/

namespace A086506.P7170015763963442912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A003945 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086506.P7170015763963442912

/-! ## A086506.P16833312220005157857

`p?[A092569(Δ[A019300(n)])]`
-/

namespace A086506.P16833312220005157857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086506.P16833312220005157857

/-!
# A086507: If n is even, a(n) = smallest prime == 1 (mod n), If n is odd, a(n) = smallest prime == -1 (mod n).

The programs for A086507, there is no canonical definition to state claims against.
-/

/-! ## A086507.P1022484269532079605

`A034694(n+1)+A038700(n+1)-A086508(n+1)`
-/

namespace A086507.P1022484269532079605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1) + (A038700 (n + 1) - A086508 (n + 1))

end

end A086507.P1022484269532079605

/-!
# A086508: If n is even, a(n) = smallest prime == -1 (mod n), If n is odd, a(n) = smallest prime == 1 (mod n).

The programs for A086508, there is no canonical definition to state claims against.
-/

/-! ## A086508.P5091889369335438091

`A034694(n+1)+A038700(n+1)-A086507(n+1)`
-/

namespace A086508.P5091889369335438091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1) + (A038700 (n + 1) - A086507 (n + 1))

end

end A086508.P5091889369335438091

/-! ## A086508.P5908778752202956435

`A038700(n+1)+A060940(A005728(n))-A086507(n+1)`
-/

namespace A086508.P5908778752202956435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1) + (A060940 (A005728 n).toNat - A086507 (n + 1))

end

end A086508.P5908778752202956435

/-!
# A086510: Number of n X n real (0,1)-matrices with all eigenvalues >= 0.

The programs for A086510, there is no canonical definition to state claims against.
-/

/-! ## A086510.P15961379805110458908

`A046711(∑[A069729(n)²])`
-/

namespace A086510.P15961379805110458908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069729 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086510.P15961379805110458908

/-!
# A086511: a(n) is the smallest integer k > 1 such that k > n * pi(k), where pi() denotes the prime counting function.

The programs for A086511, there is no canonical definition to state claims against.
-/

/-! ## A086511.P11811764416290111712

`A307730(A099669(n+1))`
-/

namespace A086511.P11811764416290111712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (A099669 (n + 1)).toNat

end

end A086511.P11811764416290111712

/-!
# A086512: Rearrangement of natural numbers such that every (2n-1)-th partial sum is prime. Every 2n-th term is the smallest number not included earlier.

The programs for A086512, there is no canonical definition to state claims against.
-/

/-! ## A086512.P1646454331398456822

`∑[A061498(A061481(2*(n+1)))-a(n-1)]` with `a(0)=2`
-/

namespace A086512.P1646454331398456822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A061498 (A061481 (2 * (n + 1))).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086512.P1646454331398456822

/-!
# A086513: Primes arising in A086512: a(n)= (2n-1)-th partial sum of A086512.

The programs for A086513, there is no canonical definition to state claims against.
-/

/-! ## A086513.P16835940703811366368

`p?[∑[(-1)^n]*∑[A086512(n+1)]]`
-/

namespace A086513.P16835940703811366368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086513.P16835940703811366368

/-! ## A086513.P1975871419972791857

`p?[∑[A086512(n+1)]*A010684(n)]`
-/

namespace A086513.P1975871419972791857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086513.P1975871419972791857

/-! ## A086513.P14655080132690090736

`p?[∑[A086512(n+1)]*A010685(n)]`
-/

namespace A086513.P14655080132690090736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086513.P14655080132690090736

/-! ## A086513.P14511302061596493400

`p?[∑[A086512(n+1)]*A033999(n)]`
-/

namespace A086513.P14511302061596493400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086513.P14511302061596493400

/-! ## A086513.P6768096983915576986

`p?[∑[A086512(n+1)]*A059841(n)]`
-/

namespace A086513.P6768096983915576986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086513.P6768096983915576986

/-!
# A086514: Difference between the arithmetic mean of the neighbors of the terms and the term itself follows the pattern 0,1,2,3,4,5,...

The programs for A086514, the canonical program `A086514.P1195065844824538051` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086514 has offset 1).

The definition of A086514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086514.P1195065844824538051

`(n+1)*((n-5)*(n+1)+14)/3-2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086514

/-- `(n+1)*((n-5)*(n+1)+14)/3-2` -/
def P1195065844824538051.Spec : Prop :=
  ∀ n, P1195065844824538051.a n = (A086514 (n + 1) : ℚ)

end A086514

/-! ## A086514.P651724202924194517

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A086514.P651724202924194517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P651724202924194517

namespace A086514

/-- `∑[∑[a(n-1)+2]]` -/
def P651724202924194517.Spec : Prop :=
  ∀ n, (P651724202924194517.a n : ℤ) = A086514 (n + 1)

end A086514

/-! ## A086514.P7644347901066363536

`∑[∑[ogf((1-2x+x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A086514.P7644347901066363536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P7644347901066363536

namespace A086514

/-- `∑[∑[ogf((1-2x+x^2+2x^3)/(1-2x+x^2))]]` -/
def P7644347901066363536.Spec : Prop :=
  ∀ n, P7644347901066363536.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P18086545011317708572

`∑[1-∑[a(n-1)-2]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A086514.P18086545011317708572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P18086545011317708572

namespace A086514

/-- `∑[1-∑[a(n-1)-2]]` -/
def P18086545011317708572.Spec : Prop :=
  ∀ n, P18086545011317708572.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P7061724192892181637

`∑[gcd(n-2-(1-n)², C(2, n))]`
-/

namespace A086514.P7061724192892181637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2 - (1 - (n : ℤ)) ^ 2) (Nat.choose 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P7061724192892181637

namespace A086514

/-- `∑[gcd(n-2-(1-n)², C(2, n))]` -/
def P7061724192892181637.Spec : Prop :=
  ∀ n, (P7061724192892181637.a n : ℤ) = A086514 (n + 1)

end A086514

/-! ## A086514.P4805135680472763716

`floor(a(n-1)+n*(n-3)+3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A086514.P4805135680472763716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) * ((n : ℤ) - 3) + 3)

end

end A086514.P4805135680472763716

namespace A086514

/-- `floor(a(n-1)+n*(n-3)+3)` -/
def P4805135680472763716.Spec : Prop :=
  ∀ n, P4805135680472763716.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P16148526194377425121

`abs(n-2-(a(n-1)+(1-n)²))` with `a(0)=1`
-/

namespace A086514.P16148526194377425121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(n : ℤ) - 2 - (a (n - 1) + (1 - (n : ℤ)) ^ 2)|

end

end A086514.P16148526194377425121

namespace A086514

/-- `abs(n-2-(a(n-1)+(1-n)²))` -/
def P16148526194377425121.Spec : Prop :=
  ∀ n, P16148526194377425121.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P1267720773681672537

`abs(a(n-1)-(n-2-(1-n)²))` with `a(0)=1`
-/

namespace A086514.P1267720773681672537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - ((n : ℤ) - 2 - (1 - (n : ℤ)) ^ 2)|

end

end A086514.P1267720773681672537

namespace A086514

/-- `abs(a(n-1)-(n-2-(1-n)²))` -/
def P1267720773681672537.Spec : Prop :=
  ∀ n, P1267720773681672537.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P11798991519481172974

`ceil(a(n-1)-(n-2-(1-n)²))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A086514.P11798991519481172974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - 2 - (1 - (n : ℤ)) ^ 2)

end

end A086514.P11798991519481172974

namespace A086514

/-- `ceil(a(n-1)-(n-2-(1-n)²))` -/
def P11798991519481172974.Spec : Prop :=
  ∀ n, P11798991519481172974.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P10503584158507711845

`round(a(n-1)-(n-2-(1-n)²))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A086514.P10503584158507711845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - 2 - (1 - (n : ℤ)) ^ 2)

end

end A086514.P10503584158507711845

namespace A086514

/-- `round(a(n-1)-(n-2-(1-n)²))` -/
def P10503584158507711845.Spec : Prop :=
  ∀ n, P10503584158507711845.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P850847939310236386

`floor(n+1-(ϕ-∑[lcm(n-1, n-2)]))`
-/

namespace A086514.P850847939310236386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - (Real.goldenRatio - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A086514.P850847939310236386

namespace A086514

/-- `floor(n+1-(ϕ-∑[lcm(n-1, n-2)]))` -/
def P850847939310236386.Spec : Prop :=
  ∀ n, P850847939310236386.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P835369011692285183

`∑[A002061(abs(1-n))]`
-/

namespace A086514.P835369011692285183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P835369011692285183

namespace A086514

/-- `∑[A002061(abs(1-n))]` -/
def P835369011692285183.Spec : Prop :=
  ∀ n, P835369011692285183.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P11120576444710661003

`∑[A161703(n)]/(n+1)`
-/

namespace A086514.P11120576444710661003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A086514.P11120576444710661003

namespace A086514

/-- `∑[A161703(n)]/(n+1)` -/
def P11120576444710661003.Spec : Prop :=
  ∀ n, P11120576444710661003.a n = (A086514 (n + 1) : ℚ)

end A086514

/-! ## A086514.P17416111480176436560

`(A242659(n)+3+n)/3`
-/

namespace A086514.P17416111480176436560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242659 n + 3 + (n : ℤ) : ℚ) / 3

end

end A086514.P17416111480176436560

namespace A086514

/-- `(A242659(n)+3+n)/3` -/
def P17416111480176436560.Spec : Prop :=
  ∀ n, P17416111480176436560.a n = (A086514 (n + 1) : ℚ)

end A086514

/-! ## A086514.P10540466782044263810

`∑[A116735(n+1)-n²]`
-/

namespace A086514.P10540466782044263810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P10540466782044263810

namespace A086514

/-- `∑[A116735(n+1)-n²]` -/
def P10540466782044263810.Spec : Prop :=
  ∀ n, P10540466782044263810.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P13762767404590925605

`∑[A118403(n+1)-2*n]`
-/

namespace A086514.P13762767404590925605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118403 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P13762767404590925605

namespace A086514

/-- `∑[A118403(n+1)-2*n]` -/
def P13762767404590925605.Spec : Prop :=
  ∀ n, P13762767404590925605.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P17065971851909537948

`A156126(n)%A322595(n)`
-/

namespace A086514.P17065971851909537948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156126 n) (A322595 n)

end

end A086514.P17065971851909537948

namespace A086514

/-- `A156126(n)%A322595(n)` -/
def P17065971851909537948.Spec : Prop :=
  ∀ n, P17065971851909537948.a n = A086514 (n + 1)

end A086514

/-! ## A086514.P3789401396803613566

`∑[∑[A097141(A099570(2*n))]]`
-/

namespace A086514.P3789401396803613566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 (A099570 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086514.P3789401396803613566

namespace A086514

/-- `∑[∑[A097141(A099570(2*n))]]` -/
def P3789401396803613566.Spec : Prop :=
  ∀ n, P3789401396803613566.a n = A086514 (n + 1)

end A086514

/-!
# A086517: a(1) = 1 and then the smallest odd number not included earlier such that the arithmetic mean of a pair of successive terms is prime.

The programs for A086517, there is no canonical definition to state claims against.
-/

/-! ## A086517.P14500240526842170392

`2*A086518(abs(1-n)+1)-a(n-1)` with `a(0)=1`
-/

namespace A086517.P14500240526842170392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A086518 (|1 - (n : ℤ)| + 1).toNat - a (n - 1)

end

end A086517.P14500240526842170392

/-! ## A086517.P13512343990647358141

`2*(A086518(n+1)-A074368(n+1))-1`
-/

namespace A086517.P13512343990647358141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086518 (n + 1) - A074368 (n + 1)) - 1

end

end A086517.P13512343990647358141

/-! ## A086517.P7951681158511039398

`A004273(A086518(n+1)-A074368(n+1))`
-/

namespace A086517.P7951681158511039398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A086518 (n + 1) - A074368 (n + 1)).toNat

end

end A086517.P7951681158511039398

/-!
# A086518: Primes arising as the arithmetic mean of a pair of successive terms of A086517.

The programs for A086518, there is no canonical definition to state claims against.
-/

/-! ## A086518.P10842260638435682344

`(A086517(n+1)+A086517(n+2))/2`
-/

namespace A086518.P10842260638435682344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086517 (n + 1) + A086517 (n + 2) : ℚ) / 2

end

end A086518.P10842260638435682344

/-! ## A086518.P13016315824632342921

`A006530(A086517(n+1)+A086517(n+2))`
-/

namespace A086518.P13016315824632342921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086517 (n + 1) + A086517 (n + 2)).toNat

end

end A086518.P13016315824632342921

/-! ## A086518.P8407178117818683511

`A026741(A086517(n+1)+A086517(n+2))`
-/

namespace A086518.P8407178117818683511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A086517 (n + 1) + A086517 (n + 2)).toNat

end

end A086518.P8407178117818683511

/-! ## A086518.P16090034365974282449

`A029578(A086517(n+2)+A086517(n+1))`
-/

namespace A086518.P16090034365974282449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A086517 (n + 2) + A086517 (n + 1)).toNat

end

end A086518.P16090034365974282449

/-! ## A086518.P317772511317580882

`A110654(A086517(n+2)+A086517(n+1))`
-/

namespace A086518.P317772511317580882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A086517 (n + 2) + A086517 (n + 1)).toNat

end

end A086518.P317772511317580882

/-! ## A086518.P15465381888195162190

`A123108(A086517(n+1)+A086517(n+2))`
-/

namespace A086518.P15465381888195162190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A086517 (n + 1) + A086517 (n + 2)).toNat

end

end A086518.P15465381888195162190

/-! ## A086518.P4751803286527412464

`A308217(A086517(n+2)+A086517(n+1))-1`
-/

namespace A086518.P4751803286527412464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (A086517 (n + 2) + A086517 (n + 1)).toNat - 1

end

end A086518.P4751803286527412464

/-!
# A086519: a(n) is the least prime not already used such that (a(n)+a(n-1))/2 is prime.

The programs for A086519, there is no canonical definition to state claims against.
-/

/-! ## A086519.P11754900635861853440

`A163646(A060046(n+10))`
-/

namespace A086519.P11754900635861853440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163646 (A060046 (n + 10)).toNat

end

end A086519.P11754900635861853440

/-! ## A086519.P14101008251386418246

`A163646(A015128(n+1))`
-/

namespace A086519.P14101008251386418246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163646 (A015128 (n + 1)).toNat

end

end A086519.P14101008251386418246

/-!
# A086520: Number of integers strictly greater than (n-sqrt(n))/2 and strictly less than (n+sqrt(n))/2.

The programs for A086520, the canonical program `A086520.P14259130660733053499` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086520 has offset 0).

The definition of A086520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086520.P14259130660733053499

`a(n-(a(n-1)+a(n-2)))+1` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086520

/-- `a(n-(a(n-1)+a(n-2)))+1` -/
def P14259130660733053499.Spec : Prop :=
  ∀ n, (P14259130660733053499.a n : ℤ) = A086520 n

theorem P14259130660733053499.correct : P14259130660733053499.Spec := by
  intro n
  simp only [A086520]

end A086520

/-! ## A086520.P4569800299506834514

`a(n-1)-(1-(n-a(n-1)*a(n-1)))%2` with `a(0)=0`
-/

namespace A086520.P4569800299506834514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - Int.tmod (1 - ((n : ℤ) - a (n - 1) * a (n - 1))) 2

end

end A086520.P4569800299506834514

namespace A086520

/-- `a(n-1)-(1-(n-a(n-1)*a(n-1)))%2` -/
def P4569800299506834514.Spec : Prop :=
  ∀ n, P4569800299506834514.a n = A086520 n

end A086520

/-! ## A086520.P7893732171784675155

`A000122(n-2)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A086520.P7893732171784675155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000122 (n - 2) + a (n - 2)

end

end A086520.P7893732171784675155

namespace A086520

/-- `A000122(n-2)+a(n-2)` -/
def P7893732171784675155.Spec : Prop :=
  ∀ n, P7893732171784675155.a n = A086520 n

end A086520

/-! ## A086520.P438299956070307887

`∑[A000122(xor(2, n))-a(n-1)]` with `a(0)=0`
-/

namespace A086520.P438299956070307887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000122 (Nat.xor 2 n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086520.P438299956070307887

namespace A086520

/-- `∑[A000122(xor(2, n))-a(n-1)]` -/
def P438299956070307887.Spec : Prop :=
  ∀ n, P438299956070307887.a n = A086520 n

end A086520

/-! ## A086520.P12285140212196806444

`A088226(abs(1-n)+1)+A088226(n+1)`
-/

namespace A086520.P12285140212196806444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (|1 - (n : ℤ)| + 1).toNat + A088226 (n + 1)

end

end A086520.P12285140212196806444

namespace A086520

/-- `A088226(abs(1-n)+1)+A088226(n+1)` -/
def P12285140212196806444.Spec : Prop :=
  ∀ n, P12285140212196806444.a n = A086520 n

end A086520

/-! ## A086520.P15463687092903353282

`A257564(n)+1-A000122(n)`
-/

namespace A086520.P15463687092903353282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 n + (1 - A000122 n)

end

end A086520.P15463687092903353282

namespace A086520

/-- `A257564(n)+1-A000122(n)` -/
def P15463687092903353282.Spec : Prop :=
  ∀ n, P15463687092903353282.a n = A086520 n

end A086520

/-! ## A086520.P6129110913787784194

`A257564(lt[n, A090452(n+1)])`
-/

namespace A086520.P6129110913787784194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086520.P6129110913787784194

namespace A086520

/-- `A257564(lt[n, A090452(n+1)])` -/
def P6129110913787784194.Spec : Prop :=
  ∀ n, P6129110913787784194.a n = A086520 n

end A086520

/-!
# A086521: Number of tandem duplication trees on n duplicated gene segments.

The programs for A086521, there is no canonical definition to state claims against.
-/

/-! ## A086521.P7573410410060616703

`ceil(A264868(n+2)/2)`
-/

namespace A086521.P7573410410060616703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A264868 (n + 2) : ℚ) / 2⌉

end

end A086521.P7573410410060616703

/-! ## A086521.P13097460315049942216

`A264868(round(sqrt(n²+1))+2)/2`
-/

namespace A086521.P13097460315049942216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264868 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat : ℚ) / 2

end

end A086521.P13097460315049942216

/-! ## A086521.P11361358021320364235

`round(A264868(n+2)/A020639(2*(n+1)))`
-/

namespace A086521.P11361358021320364235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A264868 (n + 2) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A086521.P11361358021320364235

/-! ## A086521.P9136970959514377671

`A264870(∑[n+2])`
-/

namespace A086521.P9136970959514377671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086521.P9136970959514377671

/-! ## A086521.P1418880640570132425

`ceil(A264869(∑[n+2]+1)/2)`
-/

namespace A086521.P1418880640570132425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A264869 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2⌉

end

end A086521.P1418880640570132425

/-!
# A086522: Primes arising as the arithmetic mean of a pair of successive terms of A086519.

The programs for A086522, there is no canonical definition to state claims against.
-/

/-! ## A086522.P16326850983295369327

`(A086519(n)+A086519(n+1))/2`
-/

namespace A086522.P16326850983295369327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086519 n + A086519 (n + 1) : ℚ) / 2

end

end A086522.P16326850983295369327

/-! ## A086522.P16752070543484249677

`A086519(n)+Δ[A003602(A086519(n))]`
-/

namespace A086522.P16752070543484249677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A086519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086519 n + (f1 (n + 1) - f1 n)

end

end A086522.P16752070543484249677

/-! ## A086522.P6371582913335644257

`A000265(A086519(n+1)+A086519(n))`
-/

namespace A086522.P6371582913335644257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A086519 (n + 1) + A086519 n).toNat

end

end A086522.P6371582913335644257

/-! ## A086522.P5400611917569071224

`A002034(A086519(n+1)+A086519(n))`
-/

namespace A086522.P5400611917569071224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A086519 (n + 1) + A086519 n).toNat

end

end A086522.P5400611917569071224

/-! ## A086522.P7119345245763299885

`A004525(A086519(n+1)+A086519(n))`
-/

namespace A086522.P7119345245763299885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A086519 (n + 1) + A086519 n).toNat

end

end A086522.P7119345245763299885

/-! ## A086522.P6181457712042855329

`A006530(A086519(n+1)+A086519(n))`
-/

namespace A086522.P6181457712042855329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086519 (n + 1) + A086519 n).toNat

end

end A086522.P6181457712042855329

/-! ## A086522.P11880544210322900520

`A014682(A086519(n+1)+A086519(n))`
-/

namespace A086522.P11880544210322900520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A086519 (n + 1) + A086519 n).toNat

end

end A086522.P11880544210322900520

/-! ## A086522.P10550166560640816527

`A000010(A086519(n+1)+A086519(n))+1`
-/

namespace A086522.P10550166560640816527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A086519 (n + 1) + A086519 n).toNat + 1

end

end A086522.P10550166560640816527

/-!
# A086523: Beginning with 5, distinct odd primes such that the arithmetic mean of every pair of successive terms is prime.

The programs for A086523, there is no canonical definition to state claims against.
-/

/-! ## A086523.P8639882834136358772

`A130101(A130141(n)+floor((cot(1)+1)*(n+1)))`
-/

namespace A086523.P8639882834136358772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130101 (A130141 n + ⌊(Real.cot (1 : ℝ) + 1) * (n + 1 : ℝ)⌋).toNat

end

end A086523.P8639882834136358772

/-! ## A086523.P7313190876956951754

`A164927(A343563(2*n+1)+A204899(n+1))`
-/

namespace A086523.P7313190876956951754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164927 (A343563 (2 * n + 1) + A204899 (n + 1)).toNat

end

end A086523.P7313190876956951754

/-!
# A086524: Primes arising as the arithmetic mean of a pair of successive terms of A086523.

The programs for A086524, there is no canonical definition to state claims against.
-/

/-! ## A086524.P3235680137971611538

`(A086523(n+1)+A086523(n+2))/2`
-/

namespace A086524.P3235680137971611538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086523 (n + 1) + A086523 (n + 2) : ℚ) / 2

end

end A086524.P3235680137971611538

/-! ## A086524.P3443574480928731753

`A000265(A086523(n+1)+A086523(n+2))`
-/

namespace A086524.P3443574480928731753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A086523 (n + 1) + A086523 (n + 2)).toNat

end

end A086524.P3443574480928731753

/-! ## A086524.P4577687592902849917

`A004525(A086523(n+1)+A086523(n+2))`
-/

namespace A086524.P4577687592902849917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A086523 (n + 1) + A086523 (n + 2)).toNat

end

end A086524.P4577687592902849917

/-! ## A086524.P563318171849195887

`A004526(A086523(n+1)+A086523(n+2))`
-/

namespace A086524.P563318171849195887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086523 (n + 1) + A086523 (n + 2)).toNat

end

end A086524.P563318171849195887

/-! ## A086524.P15309312296409081830

`A006530(A086523(n+1)+A086523(n+2))`
-/

namespace A086524.P15309312296409081830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086523 (n + 1) + A086523 (n + 2)).toNat

end

end A086524.P15309312296409081830

/-!
# A086525: a(n) = a(( a(n-2))*(1-mod(n,2))+a(n-1)*(mod(n,2))) + a((n - a(n-2))*(1-mod(n,2))+(n-a(n-1))*(mod(n,2))).

The programs for A086525, there is no canonical definition to state claims against.
-/

/-! ## A086525.P4631265106693414020

`∑[char[comp[A284930(n+1)]]]`
-/

namespace A086525.P4631265106693414020
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086525.P4631265106693414020

/-! ## A086525.P15241609976325116768

`A284929(n)+a(n-1)` with `a(0)=1`
-/

namespace A086525.P15241609976325116768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284929 n + a (n - 1)

end

end A086525.P15241609976325116768

/-! ## A086525.P18423430583992884081

`∑[A284929(abs(1-n)+1)]`
-/

namespace A086525.P18423430583992884081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086525.P18423430583992884081

/-! ## A086525.P10833411865171769134

`∑[char[A284931(n+1)]]+1`
-/

namespace A086525.P10833411865171769134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284931 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A086525.P10833411865171769134

/-! ## A086525.P10003076309312475469

`∑[char[A284929(n+1)+n]]`
-/

namespace A086525.P10003076309312475469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086525.P10003076309312475469

/-! ## A086525.P2167013195714501496

`∑[char[char[A285360(n+1)]+n]]`
-/

namespace A086525.P2167013195714501496
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086525.P2167013195714501496

/-! ## A086525.P5716951337900783732

`A285358(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A086525.P5716951337900783732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A285358 (n - 1) + a (n - 1)

end

end A086525.P5716951337900783732

/-! ## A086525.P1839702276947183283

`a(n-1)-A285360(a(n-1))+n` with `a(0)=1`
-/

namespace A086525.P1839702276947183283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A285360 (a (n - 1)).toNat + (n : ℤ)

end

end A086525.P1839702276947183283

/-! ## A086525.P15901043998922727705

`∑[char[Δ[A284895(n+1)+n]+n-1]]+1`
-/

namespace A086525.P15901043998922727705
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A086525.P15901043998922727705

/-! ## A086525.P1273953526710940033

`∑[char[(n+2)*A285358(n+1)]]`
-/

namespace A086525.P1273953526710940033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A285358 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086525.P1273953526710940033

/-!
# A086526: Beginning with 2, the smallest even number not included earlier such that the arithmetic mean of a pair of successive terms is a prime.

The programs for A086526, there is no canonical definition to state claims against.
-/

/-! ## A086526.P866559508523074820

`2*A055265(n+1)`
-/

namespace A086526.P866559508523074820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055265 (n + 1)

end

end A086526.P866559508523074820

/-! ## A086526.P16563114875536966540

`2*(A282695(n+1)+1+n)`
-/

namespace A086526.P16563114875536966540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A282695 (n + 1) + 1 + (n : ℤ))

end

end A086526.P16563114875536966540

/-! ## A086526.P5777717940674388309

`A055265(n+1)+A282695(n+1)+1+n`
-/

namespace A086526.P5777717940674388309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) + (A282695 (n + 1) + 1 + (n : ℤ))

end

end A086526.P5777717940674388309

/-! ## A086526.P5660732602854110080

`A055265(A000027(n+1))+A055265(n+1)`
-/

namespace A086526.P5660732602854110080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A000027 (n + 1)).toNat + A055265 (n + 1)

end

end A086526.P5660732602854110080

/-! ## A086526.P11732291433124990092

`2*(A128280(n+1)-(-1)^n)`
-/

namespace A086526.P11732291433124990092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A128280 (n + 1) - (-1) ^ n)

end

end A086526.P11732291433124990092

/-! ## A086526.P8750634370041537219

`abs(2*(A128280(Δ[n²]-n)-(-1)^n))`
-/

namespace A086526.P8750634370041537219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A128280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (-1) ^ n)|

end

end A086526.P8750634370041537219

/-! ## A086526.P12439820608256750423

`A055265(n+1)+A086527(n+1)-A055265(n+2)`
-/

namespace A086526.P12439820608256750423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) + (A086527 (n + 1) - A055265 (n + 2))

end

end A086526.P12439820608256750423

/-! ## A086526.P13344770356207374867

`A004277(A055265(n+1))`
-/

namespace A086526.P13344770356207374867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055265 (n + 1)).toNat

end

end A086526.P13344770356207374867

/-! ## A086526.P16531329565520181833

`A004275(A055265(n+1)+1)`
-/

namespace A086526.P16531329565520181833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A055265 (n + 1) + 1).toNat

end

end A086526.P16531329565520181833

/-! ## A086526.P3039676944384747155

`2*A014681(A128280(n+1))`
-/

namespace A086526.P3039676944384747155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014681 (A128280 (n + 1)).toNat

end

end A086526.P3039676944384747155

/-!
# A086527: Primes arising in A055265.

The programs for A086527, there is no canonical definition to state claims against.
-/

/-! ## A086527.P13799896107961763880

`A055265(n+1)+A055265(n+2)`
-/

namespace A086527.P13799896107961763880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) + A055265 (n + 2)

end

end A086527.P13799896107961763880

/-! ## A086527.P379141354265320183

`(A086526(n+1)+A086526(n+2))/2`
-/

namespace A086527.P379141354265320183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086526 (n + 1) + A086526 (n + 2) : ℚ) / 2

end

end A086527.P379141354265320183

/-! ## A086527.P17311013219379637045

`A128280(n+1)+A128280(n+2)`
-/

namespace A086527.P17311013219379637045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (n + 1) + A128280 (n + 2)

end

end A086527.P17311013219379637045

/-! ## A086527.P4458681285329354653

`abs(Δ[A038608(A055265(n+1))])`
-/

namespace A086527.P4458681285329354653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A055265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A086527.P4458681285329354653

/-! ## A086527.P11877082920396973221

`abs(Δ[A038608(A128280(n+1))])`
-/

namespace A086527.P11877082920396973221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A128280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A086527.P11877082920396973221

/-! ## A086527.P17919389109515708188

`A004526(A086526(n+1)+A086526(n+2))`
-/

namespace A086527.P17919389109515708188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086526 (n + 1) + A086526 (n + 2)).toNat

end

end A086527.P17919389109515708188

/-! ## A086527.P9500139456000496545

`A004525(A086526(n+2)+A086526(n+1))`
-/

namespace A086527.P9500139456000496545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A086526 (n + 2) + A086526 (n + 1)).toNat

end

end A086527.P9500139456000496545

/-! ## A086527.P2654491643558726606

`A006530(abs(Δ[A055265(n+1)²]))`
-/

namespace A086527.P2654491643558726606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |f1 (n + 1) - f1 n|.toNat

end

end A086527.P2654491643558726606

/-! ## A086527.P14044311290620627943

`A006530(abs(Δ[A086526(n+1)²]))`
-/

namespace A086527.P14044311290620627943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086526 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |f1 (n + 1) - f1 n|.toNat

end

end A086527.P14044311290620627943

/-! ## A086527.P4153745621485603753

`A117922(A117923(n+1))+A117922(A117923(n+2))`
-/

namespace A086527.P4153745621485603753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (A117923 (n + 1)).toNat + A117922 (A117923 (n + 2)).toNat

end

end A086527.P4153745621485603753

/-!
# A086529: Beginning with 2, distinct even numbers such that the arithmetic mean of successive pairs of terms gives odd primes in their natural order. {a(n) + a(n+1)}/2 = prime(n+1).

The programs for A086529, there is no canonical definition to state claims against.
-/

/-! ## A086529.P16494769664038949548

`2*p?[abs(xor(n, -2))]-a(n-1)` with `a(0)=2`
-/

namespace A086529.P16494769664038949548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - a (n - 1)

end

end A086529.P16494769664038949548

/-! ## A086529.P11531065068812870685

`2*p?[xor(1, n)+1]-a(n-1)` with `a(0)=2`
-/

namespace A086529.P11531065068812870685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - a (n - 1)

end

end A086529.P11531065068812870685

/-! ## A086529.P11020933471826372940

`2*p?[n%3+n]-a(n-1)` with `a(0)=2`
-/

namespace A086529.P11020933471826372940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - a (n - 1)

end

end A086529.P11020933471826372940

/-! ## A086529.P13842731891074955641

`Δ[2*A073738(n)]`
-/

namespace A086529.P13842731891074955641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086529.P13842731891074955641

/-! ## A086529.P7236805920988682323

`2*A036467(n+1)`
-/

namespace A086529.P7236805920988682323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036467 (n + 1)

end

end A086529.P7236805920988682323

/-! ## A086529.P10817407172142040182

`2*A073739(Δ[n²])`
-/

namespace A086529.P10817407172142040182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A086529.P10817407172142040182

/-! ## A086529.P2921046824554858123

`Δ[2*∑[A036467(n)]]`
-/

namespace A086529.P2921046824554858123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086529.P2921046824554858123

/-! ## A086529.P6536893504383135147

`A100484(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A086529.P6536893504383135147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100484 (n + 1) - a (n - 1)

end

end A086529.P6536893504383135147

/-! ## A086529.P14552372218746505036

`A001747(n+2)-a(n-1)` with `a(0)=2`
-/

namespace A086529.P14552372218746505036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001747 (n + 2) - a (n - 1)

end

end A086529.P14552372218746505036

/-! ## A086529.P3309516654986969876

`A073582(n+1)-a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A086529.P3309516654986969876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A073582 (n + 1) - a (n - 1)

end

end A086529.P3309516654986969876

/-!
# A086530: Beginning with 1, odd numbers such that the arithmetic mean of successive pairs of terms gives primes in their natural order. {a(n) + a(n+1)}/2 = prime(n).

The programs for A086530, the canonical program `A086530.P13313051766598429473` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086530 has offset 1).

The definition of A086530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086530.P13313051766598429473

`2*A000040(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086530

/-- `2*A000040(n)-a(n-1)` -/
def P13313051766598429473.Spec : Prop :=
  ∀ n, P13313051766598429473.a n = A086530 (n + 1)

theorem P13313051766598429473.correct : P13313051766598429473.Spec := by
  intro n
  simp only [A086530, Nat.add_sub_cancel]

end A086530

/-! ## A086530.P9605783473465697235

`A100484(n)-a(n-1)` with `a(0)=1`
-/

namespace A086530.P9605783473465697235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100484 n - a (n - 1)

end

end A086530.P9605783473465697235

namespace A086530

/-- `A100484(n)-a(n-1)` -/
def P9605783473465697235.Spec : Prop :=
  ∀ n, P9605783473465697235.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P11264448518573363417

`A001747(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A086530.P11264448518573363417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001747 (n + 1) - a (n - 1)

end

end A086530.P11264448518573363417

namespace A086530

/-- `A001747(n+1)-a(n-1)` -/
def P11264448518573363417.Spec : Prop :=
  ∀ n, P11264448518573363417.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P5908905194618137032

`A077017(n+1)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A086530.P5908905194618137032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A077017 (n + 1) - a (n - 1)

end

end A086530.P5908905194618137032

namespace A086530

/-- `A077017(n+1)-a(n-1)` -/
def P5908905194618137032.Spec : Prop :=
  ∀ n, P5908905194618137032.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P17979947385174647428

`2*A008578(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A086530.P17979947385174647428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A008578 (n + 1) - a (n - 1)

end

end A086530.P17979947385174647428

namespace A086530

/-- `2*A008578(n+1)-a(n-1)` -/
def P17979947385174647428.Spec : Prop :=
  ∀ n, P17979947385174647428.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P9982516422599282362

`A036467(n)+A008347(n)`
-/

namespace A086530.P9982516422599282362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n + A008347 n

end

end A086530.P9982516422599282362

namespace A086530

/-- `A036467(n)+A008347(n)` -/
def P9982516422599282362.Spec : Prop :=
  ∀ n, P9982516422599282362.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P13082966907326228476

`A033999(n)+2*A008347(n)`
-/

namespace A086530.P13082966907326228476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A008347 n

end

end A086530.P13082966907326228476

namespace A086530

/-- `A033999(n)+2*A008347(n)` -/
def P13082966907326228476.Spec : Prop :=
  ∀ n, P13082966907326228476.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P11682709352242509217

`2*A036467(n)-A033999(n)`
-/

namespace A086530.P11682709352242509217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036467 n - A033999 n

end

end A086530.P11682709352242509217

namespace A086530

/-- `2*A036467(n)-A033999(n)` -/
def P11682709352242509217.Spec : Prop :=
  ∀ n, P11682709352242509217.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P120843099412846649

`2*A083236(n)-A174971(n)`
-/

namespace A086530.P120843099412846649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083236 n - A174971 n

end

end A086530.P120843099412846649

namespace A086530

/-- `2*A083236(n)-A174971(n)` -/
def P120843099412846649.Spec : Prop :=
  ∀ n, P120843099412846649.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P7431958669689329912

`A001043(n)-a(n-1)-A054541(n+1)` with `a(0)=1`
-/

namespace A086530.P7431958669689329912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001043 n - a (n - 1) - A054541 (n + 1)

end

end A086530.P7431958669689329912

namespace A086530

/-- `A001043(n)-a(n-1)-A054541(n+1)` -/
def P7431958669689329912.Spec : Prop :=
  ∀ n, P7431958669689329912.a n = A086530 (n + 1)

end A086530

/-! ## A086530.P15122208620594193059

`A005843(A338467(n+1))-(2*n+1)`
-/

namespace A086530.P15122208620594193059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A338467 (n + 1)).toNat - (2 * n + 1 : ℤ)

end

end A086530.P15122208620594193059

namespace A086530

/-- `A005843(A338467(n+1))-(2*n+1)` -/
def P15122208620594193059.Spec : Prop :=
  ∀ n, P15122208620594193059.a n = A086530 (n + 1)

end A086530

/-!
# A086532: Primes arising in A086531. a(n)= {A086531(n) + A086531(n+1)}/2.

The programs for A086532, there is no canonical definition to state claims against.
-/

/-! ## A086532.P4414995403348467750

`A006530(abs(Δ[A086531(n+1)²]))`
-/

namespace A086532.P4414995403348467750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086531 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |f1 (n + 1) - f1 n|.toNat

end

end A086532.P4414995403348467750

/-! ## A086532.P2213742652607720220

`A006530(lcm(2, Δ[A086531(n+1)²]))`
-/

namespace A086532.P2213742652607720220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086531 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A086532.P2213742652607720220

/-! ## A086532.P4912250435863072598

`A088387(abs(Δ[A086531(n+1)²])/2)`
-/

namespace A086532.P4912250435863072598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086531 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (SequenceMachineLib.roundAway ((|f1 (n + 1) - f1 n| : ℚ) / 2)).toNat

end

end A086532.P4912250435863072598

/-! ## A086532.P1715093317358718157

`A000265(A086531(n+1)+A086531(n+2))`
-/

namespace A086532.P1715093317358718157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A086531 (n + 1) + A086531 (n + 2)).toNat

end

end A086532.P1715093317358718157

/-! ## A086532.P2252224251745564222

`A006370(A086531(n+1)+A086531(n+2))`
-/

namespace A086532.P2252224251745564222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A086531 (n + 1) + A086531 (n + 2)).toNat

end

end A086532.P2252224251745564222

/-! ## A086532.P7181850517251207245

`A006530(A086531(n+1)+A086531(n+2))`
-/

namespace A086532.P7181850517251207245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086531 (n + 1) + A086531 (n + 2)).toNat

end

end A086532.P7181850517251207245

/-! ## A086532.P2044210213460032250

`A014682(A086531(n+1)+A086531(n+2))`
-/

namespace A086532.P2044210213460032250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A086531 (n + 1) + A086531 (n + 2)).toNat

end

end A086532.P2044210213460032250

/-! ## A086532.P2233210631781691968

`A060819(A086531(n+1)+A086531(n+2))`
-/

namespace A086532.P2233210631781691968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A086531 (n + 1) + A086531 (n + 2)).toNat

end

end A086532.P2233210631781691968

/-! ## A086532.P12680485715661023275

`A110654(A086531(n+1)+A086531(n+2))`
-/

namespace A086532.P12680485715661023275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A086531 (n + 1) + A086531 (n + 2)).toNat

end

end A086532.P12680485715661023275

/-! ## A086532.P9770865652802820073

`A000010(A086531(n+1)+A086531(n+2))+1`
-/

namespace A086532.P9770865652802820073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A086531 (n + 1) + A086531 (n + 2)).toNat + 1

end

end A086532.P9770865652802820073

/-!
# A086533: Numbers in A014092 splittable into a sum of a single number pair (both distinct from 1) having a product that belongs to A086473.

The programs for A086533, there is no canonical definition to state claims against.
-/

/-! ## A086533.P15828414204752963108

`A047522(lt[A066636(n+4), A340102(2*n+3)])`
-/

namespace A086533.P15828414204752963108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086533.P15828414204752963108

/-!
# A086535: Product of numbers obtained by adding one to the odd divisors of n and subtracting 1 from the even divisors.

The programs for A086535, the canonical program `A086535.P6080262657584757092` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086535 has offset 1).

The definition of A086535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086535.P6080262657584757092

`∏{d}[n+1, abs(xor(1, -#))]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086535

/-- `∏{d}[n+1, abs(xor(1, -#))]` -/
def P6080262657584757092.Spec : Prop :=
  ∀ n, P6080262657584757092.a n = A086535 (n + 1)

theorem P6080262657584757092.correct : P6080262657584757092.Spec := by
  intro n
  simp only [A086535, Nat.add_sub_cancel]

end A086535

/-! ## A086535.P10325095237932008916

`∏{d}[n+1, -xor(1, -#)]`
-/

namespace A086535.P10325095237932008916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (-Int.xor 1 (-(d : ℤ)))

end

end A086535.P10325095237932008916

namespace A086535

/-- `∏{d}[n+1, -xor(1, -#)]` -/
def P10325095237932008916.Spec : Prop :=
  ∀ n, P10325095237932008916.a n = A086535 (n + 1)

end A086535

/-! ## A086535.P18085319785035485241

`∏{d}[n+1, #-(-1)^#]`
-/

namespace A086535.P18085319785035485241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (-1) ^ d)

end

end A086535.P18085319785035485241

namespace A086535

/-- `∏{d}[n+1, #-(-1)^#]` -/
def P18085319785035485241.Spec : Prop :=
  ∀ n, P18085319785035485241.a n = A086535 (n + 1)

end A086535

/-! ## A086535.P9364270862107004669

`lcm(2, ∏{d}[n+1, A014681(#)])`
-/

namespace A086535.P9364270862107004669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ d ∈ Nat.divisors (f1 n), A014681 d)

end

end A086535.P9364270862107004669

namespace A086535

/-- `lcm(2, ∏{d}[n+1, A014681(#)])` -/
def P9364270862107004669.Spec : Prop :=
  ∀ n, (P9364270862107004669.a n : ℤ) = A086535 (n + 1)

end A086535

/-! ## A086535.P17017398501431637017

`∏{d}[n+1, A014681(#)]/A007318(C(3, n))`
-/

namespace A086535.P17017398501431637017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A014681 d : ℤ) : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A086535.P17017398501431637017

namespace A086535

/-- `∏{d}[n+1, A014681(#)]/A007318(C(3, n))` -/
def P17017398501431637017.Spec : Prop :=
  ∀ n, P17017398501431637017.a n = (A086535 (n + 1) : ℚ)

end A086535

/-!
# A086537: Beginning with 1, the smallest number not yet seen such that every partial sum has a distinct prime signature.

The programs for A086537, there is no canonical definition to state claims against.
-/

/-! ## A086537.P12421697297099439191

`A000007(n)+Δ[A086538(A028310(n))]`
-/

namespace A086537.P12421697297099439191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086538 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A086537.P12421697297099439191

/-! ## A086537.P9410440172251781114

`Δ[A086538(A028310(n))+A057427(n)]`
-/

namespace A086537.P9410440172251781114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086538 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086537.P9410440172251781114

/-! ## A086537.P9309956655024152392

`Δ[A086538(A028310(n))-A054977(n)]`
-/

namespace A086537.P9309956655024152392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086538 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086537.P9309956655024152392

/-! ## A086537.P11265733735099335250

`Δ[A086538(A028310(n))+A000040(n+1)%2]`
-/

namespace A086537.P11265733735099335250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086538 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086537.P11265733735099335250

/-! ## A086537.P11120823010800923970

`Δ[A086538(A028310(n))]+A000010(n+2)%2`
-/

namespace A086537.P11120823010800923970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086538 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000010 (n + 2)) 2

end

end A086537.P11120823010800923970

/-! ## A086537.P490908634299175656

`Δ[A086538(A028310(n))]+A000005(n²+1)%2`
-/

namespace A086537.P490908634299175656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086538 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A086537.P490908634299175656

/-!
# A086538: n-th partial sum of A086537.

The programs for A086538, there is no canonical definition to state claims against.
-/

/-! ## A086538.P12998252436849814328

`∑[A086537(n+1)]`
-/

namespace A086538.P12998252436849814328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086538.P12998252436849814328

/-! ## A086538.P2136988955299405331

`record[A325440(n+1)/A157402(n+1)]`
-/

namespace A086538.P2136988955299405331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325440 (n + 1) : ℚ) / (A157402 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086538.P2136988955299405331

/-! ## A086538.P12061407894407426481

`A325440(A000124(n)^A058663(n+1))`
-/

namespace A086538.P12061407894407426481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (SequenceMachineLib.roundAway ((A000124 n : ℚ) ^ (A058663 (n + 1) : ℤ))).toNat

end

end A086538.P12061407894407426481

/-! ## A086538.P3918305650873641709

`A325440(A000124(n)^A147401(n+1))`
-/

namespace A086538.P3918305650873641709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325440 (SequenceMachineLib.roundAway ((A000124 n : ℚ) ^ (A147401 (n + 1) : ℤ))).toNat

end

end A086538.P3918305650873641709

/-!
# A086539: Beginning with 1, a(n) = smallest number > a(n-1) and coprime to the k previous terms, where k = floor(n/2).

The programs for A086539, there is no canonical definition to state claims against.
-/

/-! ## A086539.P5048084575150210192

`∑[A001876(A111712(A000124(n)))]`
-/

namespace A086539.P5048084575150210192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A111712 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086539.P5048084575150210192

/-! ## A086539.P14653405653952741908

`lt[A205479(n+1), A115642(3*n+1)]+1`
-/

namespace A086539.P14653405653952741908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115642 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A086539.P14653405653952741908

/-!
# A086540: Numbers n such that n and n+1 both are members of A074997; i.e., on the one hand n-1 and n+1 have the same prime signature, on the other hand n and n+2 have the same prime signature.

The programs for A086540, there is no canonical definition to state claims against.
-/

/-! ## A086540.P6407832486740089180

`A300059(n+1)+1`
-/

namespace A086540.P6407832486740089180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300059 (n + 1) + 1

end

end A086540.P6407832486740089180

/-! ## A086540.P16594150381362309855

`∩[A074997(n+1), A279767(n+1)]`
-/

namespace A086540.P16594150381362309855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086540.P16594150381362309855

/-! ## A086540.P5528401519538882982

`∩[A279767(n+1)+1, A279767(n+2)]`
-/

namespace A086540.P5528401519538882982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086540.P5528401519538882982

/-! ## A086540.P9342498952300341780

`∩[A074997(n+2)-1, A074997(n+2)]`
-/

namespace A086540.P9342498952300341780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086540.P9342498952300341780

/-! ## A086540.P3605392009049508725

`A011760(A300059(n+1))`
-/

namespace A086540.P3605392009049508725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A300059 (n + 1)).toNat

end

end A086540.P3605392009049508725

/-! ## A086540.P2246175041262794352

`∩[A074997(n+1), A023443(A074997(n+3))]`
-/

namespace A086540.P2246175041262794352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074997 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086540.P2246175041262794352

/-!
# A086541: a(1) = 1, a(2) = 4; a(n) = smallest square of the form k*a(n-1) + a(n-2), k > 0.

The programs for A086541, there is no canonical definition to state claims against.
-/

/-! ## A086541.P7928567312868568666

`A086542(n+1)²`
-/

namespace A086541.P7928567312868568666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086542 (n + 1) ^ 2

end

end A086541.P7928567312868568666

/-! ## A086541.P16689976080261959038

`record[A086542(A152271(n))²]`
-/

namespace A086541.P16689976080261959038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086542 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086541.P16689976080261959038

/-! ## A086541.P6138997560962946934

`record[A086542(A321126(n))²]`
-/

namespace A086541.P6138997560962946934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086542 (A321126 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086541.P6138997560962946934

/-! ## A086541.P13015386085360039749

`A086542(n+1)^(A007318(∑[n])+1)`
-/

namespace A086541.P13015386085360039749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086542 (n + 1) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ)

end

end A086541.P13015386085360039749

/-! ## A086541.P14198242295189056296

`A086542(n+1)^A000040(A175782(n))`
-/

namespace A086541.P14198242295189056296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086542 (n + 1) : ℚ) ^ (A000040 (A175782 n).toNat : ℤ)

end

end A086541.P14198242295189056296

/-!
# A086542: a(n) = A086541(n)^(1/2).

The programs for A086542, there is no canonical definition to state claims against.
-/

/-! ## A086542.P12658473204496961229

`A086541(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086542.P12658473204496961229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A086541 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A086542.P12658473204496961229

/-! ## A086542.P2451146626544922958

`sqrt(A086541(n+1))`
-/

namespace A086542.P2451146626544922958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A086541 (n + 1) : ℝ)

end

end A086542.P2451146626544922958

/-! ## A086542.P6987471709948719845

`root(A086541(n+1), p?[A008617(n)])`
-/

namespace A086542.P6987471709948719845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A086541 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A086542.P6987471709948719845

/-! ## A086542.P11090482031809870018

`root(A086541(n+1), p?[A178334(n)])`
-/

namespace A086542.P11090482031809870018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A086541 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A086542.P11090482031809870018

/-! ## A086542.P10438218812067702417

`root(A086541(n+1), p?[A276729(n)])`
-/

namespace A086542.P10438218812067702417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A086541 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A086542.P10438218812067702417

/-!
# A086543: Number of partitions of n with at least one odd part.

The programs for A086543, there is no canonical definition to state claims against.
-/

/-! ## A086543.P9330289354042631553

`A282892(n)+A047967(n)`
-/

namespace A086543.P9330289354042631553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 n + A047967 n

end

end A086543.P9330289354042631553

/-! ## A086543.P10305896759537295863

`A000041(n)-A035363(n)`
-/

namespace A086543.P10305896759537295863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A035363 n

end

end A086543.P10305896759537295863

/-! ## A086543.P8546897125200433102

`∑[A002865(n)]-A035363(n)`
-/

namespace A086543.P8546897125200433102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035363 n

end

end A086543.P8546897125200433102

/-! ## A086543.P16047197305616370513

`A000065(n)+1-A035363(n)`
-/

namespace A086543.P16047197305616370513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A035363 n)

end

end A086543.P16047197305616370513

/-! ## A086543.P1799175663821956231

`A133041(n)-(A035363(n)+n)`
-/

namespace A086543.P1799175663821956231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A035363 n + (n : ℤ))

end

end A086543.P1799175663821956231

/-! ## A086543.P2655744339869507554

`∑[A085811(n+3)]-A035363(n)`
-/

namespace A086543.P2655744339869507554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035363 n

end

end A086543.P2655744339869507554

/-! ## A086543.P17243526098154465095

`∑[A232697(n)]-(A035363(n)+n)`
-/

namespace A086543.P17243526098154465095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A035363 n + (n : ℤ))

end

end A086543.P17243526098154465095

/-! ## A086543.P3555205041045232410

`A000041(n)-A000041(floor(n/2))*and(1, n+1)`
-/

namespace A086543.P3555205041045232410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000041 ⌊(n : ℚ) / 2⌋.toNat * (Nat.land 1 (n + 1) : ℤ)

end

end A086543.P3555205041045232410

/-! ## A086543.P5209646839064103093

`A000837(n)+A018783(n)-A035363(n)`
-/

namespace A086543.P5209646839064103093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A035363 n)

end

end A086543.P5209646839064103093

/-! ## A086543.P6632740646514352693

`A000009(n)+A047967(n)-A035363(n)`
-/

namespace A086543.P6632740646514352693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A035363 n)

end

end A086543.P6632740646514352693

/-! ## A086543.P16789277327368673533

`A027187(n)+A027193(n)-A035363(n)`
-/

namespace A086543.P16789277327368673533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A035363 n)

end

end A086543.P16789277327368673533

/-! ## A086543.P2975983475936175762

`A004526(n)+A058984(n)-A035363(n)`
-/

namespace A086543.P2975983475936175762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A058984 n - A035363 n)

end

end A086543.P2975983475936175762

/-! ## A086543.P11586358065162161439

`A000041(n)+A282892(n)-A000009(n)`
-/

namespace A086543.P11586358065162161439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A282892 n - A000009 n)

end

end A086543.P11586358065162161439

/-! ## A086543.P13971554387328229619

`A000726(n)+A295341(n)-A035363(n)`
-/

namespace A086543.P13971554387328229619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A035363 n)

end

end A086543.P13971554387328229619

/-! ## A086543.P13732787155641435234

`A140106(n+2)+A058984(n)-A035363(n)`
-/

namespace A086543.P13732787155641435234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 2) + (A058984 n - A035363 n)

end

end A086543.P13732787155641435234

/-! ## A086543.P4707900694562096578

`A139582(n)/2-A035363(n)`
-/

namespace A086543.P4707900694562096578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A035363 n : ℚ)

end

end A086543.P4707900694562096578

/-! ## A086543.P5230601126254432696

`A035294(n)-(A282893(n)+A035363(n))`
-/

namespace A086543.P5230601126254432696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 n - (A282893 n + A035363 n)

end

end A086543.P5230601126254432696

/-! ## A086543.P17378688914644407423

`A000041(n)-A035444(2*n)`
-/

namespace A086543.P17378688914644407423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A035444 (2 * n)

end

end A086543.P17378688914644407423

/-! ## A086543.P11821195882865606536

`A035363(2*n)-A035363(n)`
-/

namespace A086543.P11821195882865606536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A035363 n

end

end A086543.P11821195882865606536

/-! ## A086543.P730288594725069652

`A035444(4*n)-A035444(2*n)`
-/

namespace A086543.P730288594725069652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n) - A035444 (2 * n)

end

end A086543.P730288594725069652

/-!
# A086546: (1/p)*(F(2p)-F(p)) where p runs through the primes and F(k) denotes the k-th Fibonacci number.

The programs for A086546, there is no canonical definition to state claims against.
-/

/-! ## A086546.P13185007880697779816

`A000045(A000040(n+1))*A064723(n+1)`
-/

namespace A086546.P13185007880697779816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000040 (n + 1)).toNat * A064723 (n + 1)

end

end A086546.P13185007880697779816

/-!
# A086550: Smallest k such that tau(k) - tau(k-1) = n, where tau(k) = number of divisors of k, or 0 if no such number exists.

The programs for A086550, there is no canonical definition to state claims against.
-/

/-! ## A086550.P3832048920256248397

`A343018(n)+1`
-/

namespace A086550.P3832048920256248397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343018 n + 1

end

end A086550.P3832048920256248397

/-! ## A086550.P17204032627333073631

`A008619(2*n)-(n-A343018(n))`
-/

namespace A086550.P17204032627333073631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - A343018 n)

end

end A086550.P17204032627333073631

/-! ## A086550.P15366392212552114719

`A016813(n)-(4*n-A343018(n))`
-/

namespace A086550.P15366392212552114719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - ((4 * n : ℤ) - A343018 n)

end

end A086550.P15366392212552114719

/-! ## A086550.P9514768835031079748

`A008620(n)-(A002264(n)-A343018(n))`
-/

namespace A086550.P9514768835031079748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n - (A002264 n - A343018 n)

end

end A086550.P9514768835031079748

/-! ## A086550.P9322505092642570723

`A016825(n)-(A016813(n)-A343018(n))`
-/

namespace A086550.P9322505092642570723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - (A016813 n - A343018 n)

end

end A086550.P9322505092642570723

/-!
# A086551: a(n) = smallest k such that tau(k) = n*tau(k-1) where tau(k) = number of divisors of k, or 0 if no such number exists.

The programs for A086551, there is no canonical definition to state claims against.
-/

/-! ## A086551.P11956138739049076581

`A080371(n+1)+1`
-/

namespace A086551.P11956138739049076581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080371 (n + 1) + 1

end

end A086551.P11956138739049076581

/-! ## A086551.P14812951912941881124

`A020639(A340799(n+1)+char[1])-(A216284(n+1)-1)`
-/

namespace A086551.P14812951912941881124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A340799 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat - (A216284 (n + 1) - 1)

end

end A086551.P14812951912941881124

/-! ## A086551.P2100963851327793508

`gcd(A340799(n+1)+1, A080367(A000079(n)))`
-/

namespace A086551.P2100963851327793508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340799 (n + 1) + 1) (A080367 (A000079 n).toNat)

end

end A086551.P2100963851327793508

/-! ## A086551.P10439050132778795709

`A020725(A080371(n+1))`
-/

namespace A086551.P10439050132778795709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A080371 (n + 1)).toNat

end

end A086551.P10439050132778795709

/-! ## A086551.P14873632767280249180

`A060791(A340799(n+1))+1`
-/

namespace A086551.P14873632767280249180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A340799 (n + 1)).toNat + 1

end

end A086551.P14873632767280249180

/-!
# A086552: Numbers x such that tau(x)/tau(x-1) is an integer, where tau() is the number of divisors function.

The programs for A086552, the canonical program `A086552.P11972272164469090646` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086552 has offset 1).

The definition of A086552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086552.P11972272164469090646

`A057922(n)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086552

/-- `A057922(n)+1` -/
def P11972272164469090646.Spec : Prop :=
  ∀ n, P11972272164469090646.a n = A086552 (n + 1)

theorem P11972272164469090646.correct : P11972272164469090646.Spec := by
  intro n
  simp only [A086552, Nat.add_sub_cancel]

end A086552

/-! ## A086552.P4910885044390380855

`eq[1, A361022(n+1)]+2`
-/

namespace A086552.P4910885044390380855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A086552.P4910885044390380855

namespace A086552

/-- `eq[1, A361022(n+1)]+2` -/
def P4910885044390380855.Spec : Prop :=
  ∀ n, (P4910885044390380855.a n : ℤ) = A086552 (n + 1)

end A086552

/-! ## A086552.P13906582127778364032

`eq[1, A275479(n+1)]+2`
-/

namespace A086552.P13906582127778364032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A086552.P13906582127778364032

namespace A086552

/-- `eq[1, A275479(n+1)]+2` -/
def P13906582127778364032.Spec : Prop :=
  ∀ n, (P13906582127778364032.a n : ℤ) = A086552 (n + 1)

end A086552

/-! ## A086552.P6079815420853998983

`record[A069805(n+1)%(n+3)]`
-/

namespace A086552.P6079815420853998983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069805 (n + 1)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086552.P6079815420853998983

namespace A086552

/-- `record[A069805(n+1)%(n+3)]` -/
def P6079815420853998983.Spec : Prop :=
  ∀ n, P6079815420853998983.a n = A086552 (n + 1)

end A086552

/-! ## A086552.P11949033310277445668

`A020725(A057922(n))`
-/

namespace A086552.P11949033310277445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A057922 n).toNat

end

end A086552.P11949033310277445668

namespace A086552

/-- `A020725(A057922(n))` -/
def P11949033310277445668.Spec : Prop :=
  ∀ n, P11949033310277445668.a n = A086552 (n + 1)

end A086552

/-! ## A086552.P13863900202993858041

`eq[A000005(n+1), A060778(n+1)]+2`
-/

namespace A086552.P13863900202993858041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A086552.P13863900202993858041

namespace A086552

/-- `eq[A000005(n+1), A060778(n+1)]+2` -/
def P13863900202993858041.Spec : Prop :=
  ∀ n, (P13863900202993858041.a n : ℤ) = A086552 (n + 1)

end A086552

/-! ## A086552.P15650479409252727818

`A069805(record[(n+1)/(A069805(n+1)-(n+1))])`
-/

namespace A086552.P15650479409252727818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A069805 (n + 1) - (n + 1 : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069805 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A086552.P15650479409252727818

namespace A086552

/-- `A069805(record[(n+1)/(A069805(n+1)-(n+1))])` -/
def P15650479409252727818.Spec : Prop :=
  ∀ n, P15650479409252727818.a n = A086552 (n + 1)

end A086552

/-! ## A086552.P6085239700457210395

`2-(A071921(∑[n])-A057922(n))`
-/

namespace A086552.P6085239700457210395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A071921 (∑ j ∈ Finset.range (n + 1), f1 j) - A057922 n)

end

end A086552.P6085239700457210395

namespace A086552

/-- `2-(A071921(∑[n])-A057922(n))` -/
def P6085239700457210395.Spec : Prop :=
  ∀ n, P6085239700457210395.a n = A086552 (n + 1)

end A086552

/-!
# A086554: a(1) = 1; for n>1, a(n) = smallest number not included earlier such that each P+1 is prime, where P is the product of an (n-1)-set from the previous n terms.

The programs for A086554, there is no canonical definition to state claims against.
-/

/-! ## A086554.P15016513021709261208

`A020658(A020639(n+1)*A270664(n))`
-/

namespace A086554.P15016513021709261208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A020639 (n + 1) * A270664 n).toNat

end

end A086554.P15016513021709261208

/-!
# A086555: E.g.f. satisfies F(x) = 1/2 * (F(-log(1-x)) + x).

The programs for A086555, there is no canonical definition to state claims against.
-/

/-! ## A086555.P16511919990716922217

`abs(A246040(n+1))`
-/

namespace A086555.P16511919990716922217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246040 (n + 1)|

end

end A086555.P16511919990716922217

/-! ## A086555.P10959921696278520433

`gcd(A000038(n), A246040(n+1))`
-/

namespace A086555.P10959921696278520433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246040 (n + 1))

end

end A086555.P10959921696278520433

/-! ## A086555.P3708029324048371807

`lcm(A246016(n), A246040(n+1))`
-/

namespace A086555.P3708029324048371807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A246016 n) (A246040 (n + 1))

end

end A086555.P3708029324048371807

/-! ## A086555.P989818782890064727

`lcm(-A246040(n+1), A000034(2*(n+1)))`
-/

namespace A086555.P989818782890064727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A246040 (n + 1)) (A000034 (2 * (n + 1)))

end

end A086555.P989818782890064727

/-! ## A086555.P17178443668671468272

`gcd(-A246040(n+1), A007814(2*n+3))`
-/

namespace A086555.P17178443668671468272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A246040 (n + 1)) (A007814 (2 * n + 3))

end

end A086555.P17178443668671468272

/-!
# A086556: Lexicographically earliest sequence of pairwise coprime numbers such that tau(a(n)) = n, where tau(k) = number of divisors of k.

The programs for A086556, there is no canonical definition to state claims against.
-/

/-! ## A086556.P1993117015545443136

`A175210(A090884(n+1))*A175231(n+1)`
-/

namespace A086556.P1993117015545443136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175210 (A090884 (n + 1)).toNat * A175231 (n + 1)

end

end A086556.P1993117015545443136

/-!
# A086563: Smallest number of the form 10^k +1 with n distinct prime divisors.

The programs for A086563, there is no canonical definition to state claims against.
-/

/-! ## A086563.P17601627040088270903

`A062397(A086564(n+1))`
-/

namespace A086563.P17601627040088270903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 (A086564 (n + 1)).toNat

end

end A086563.P17601627040088270903

/-!
# A086566: a(1)=2; for n>1, a(n) is the largest prime number m such that a(n-1)^(1/(n-1)) > m^(1/n).

The programs for A086566, there is no canonical definition to state claims against.
-/

/-! ## A086566.P7014555920023559678

`A005145(A342764(n)+2*n)`
-/

namespace A086566.P7014555920023559678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A342764 n + (2 * n : ℤ)).toNat

end

end A086566.P7014555920023559678

/-! ## A086566.P2970019027223575426

`A005145(A342764(n)+n+n)`
-/

namespace A086566.P2970019027223575426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A342764 n + (n : ℤ) + (n : ℤ)).toNat

end

end A086566.P2970019027223575426

/-! ## A086566.P17441543721210423614

`A005145(A351389(n+3)+A001045(n))`
-/

namespace A086566.P17441543721210423614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A351389 (n + 3) + A001045 n).toNat

end

end A086566.P17441543721210423614

/-! ## A086566.P6827627748454690668

`p?[∑[A025610(A015754(n))]]`
-/

namespace A086566.P6827627748454690668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025610 (A015754 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086566.P6827627748454690668

/-! ## A086566.P10622181909953533365

`p?[∑[A273513(A050157(n))]]`
-/

namespace A086566.P10622181909953533365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A050157 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086566.P10622181909953533365

/-!
# A086568: Smallest number having as many distinct prime factors as n has prime factors, when counted with multiplicity.

The programs for A086568, the canonical program `A086568.P2444942067190828085` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086568 has offset 1).

The definition of A086568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086568.P2444942067190828085

`A002110(A001222(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086568

/-- `A002110(A001222(n+1))` -/
def P2444942067190828085.Spec : Prop :=
  ∀ n, P2444942067190828085.a n = A086568 (n + 1)

theorem P2444942067190828085.correct : P2444942067190828085.Spec := by
  intro n
  simp only [A086568, Nat.add_sub_cancel]

end A086568

/-! ## A086568.P11319866997138899492

`A002110(∑{e}[n+1, #])`
-/

namespace A086568.P11319866997138899492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A086568.P11319866997138899492

namespace A086568

/-- `A002110(∑{e}[n+1, #])` -/
def P11319866997138899492.Spec : Prop :=
  ∀ n, P11319866997138899492.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P4144011898865394485

`A006862(∑{e}[n+1, #])-1`
-/

namespace A086568.P4144011898865394485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) - 1

end

end A086568.P4144011898865394485

namespace A086568

/-- `A006862(∑{e}[n+1, #])-1` -/
def P4144011898865394485.Spec : Prop :=
  ∀ n, P4144011898865394485.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P6837024738323645865

`A002110(Δ[A022559(n)])`
-/

namespace A086568.P6837024738323645865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (f1 (n + 1) - f1 n).toNat

end

end A086568.P6837024738323645865

namespace A086568

/-- `A002110(Δ[A022559(n)])` -/
def P6837024738323645865.Spec : Prop :=
  ∀ n, P6837024738323645865.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P10021035253815939857

`A076734(A046523(n+1))`
-/

namespace A086568.P10021035253815939857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076734 (A046523 (n + 1)).toNat

end

end A086568.P10021035253815939857

namespace A086568

/-- `A076734(A046523(n+1))` -/
def P10021035253815939857.Spec : Prop :=
  ∀ n, P10021035253815939857.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P3766239209510041619

`A076734(A061142(n+1))`
-/

namespace A086568.P3766239209510041619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076734 (A061142 (n + 1)).toNat

end

end A086568.P3766239209510041619

namespace A086568

/-- `A076734(A061142(n+1))` -/
def P3766239209510041619.Spec : Prop :=
  ∀ n, P3766239209510041619.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P6514190398561824297

`A034386(A105560(n+1))`
-/

namespace A086568.P6514190398561824297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A105560 (n + 1)).toNat

end

end A086568.P6514190398561824297

namespace A086568

/-- `A034386(A105560(n+1))` -/
def P6514190398561824297.Spec : Prop :=
  ∀ n, P6514190398561824297.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P11596400018636226183

`A076734(A071364(n+1))`
-/

namespace A086568.P11596400018636226183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076734 (A071364 (n + 1)).toNat

end

end A086568.P11596400018636226183

namespace A086568

/-- `A076734(A071364(n+1))` -/
def P11596400018636226183.Spec : Prop :=
  ∀ n, P11596400018636226183.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P1896255866894484

`A124859(A068794(n+1))`
-/

namespace A086568.P1896255866894484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A068794 (n + 1)).toNat

end

end A086568.P1896255866894484

namespace A086568

/-- `A124859(A068794(n+1))` -/
def P1896255866894484.Spec : Prop :=
  ∀ n, P1896255866894484.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P10928294196786436307

`A076734(A278525(n+1))`
-/

namespace A086568.P10928294196786436307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076734 (A278525 (n + 1)).toNat

end

end A086568.P10928294196786436307

namespace A086568

/-- `A076734(A278525(n+1))` -/
def P10928294196786436307.Spec : Prop :=
  ∀ n, P10928294196786436307.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P4852415827755213432

`A002110(A073093(n+1)-1)`
-/

namespace A086568.P4852415827755213432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A073093 (n + 1) - 1).toNat

end

end A086568.P4852415827755213432

namespace A086568

/-- `A002110(A073093(n+1)-1)` -/
def P4852415827755213432.Spec : Prop :=
  ∀ n, P4852415827755213432.a n = A086568 (n + 1)

theorem P4852415827755213432.correct : P4852415827755213432.Spec := by
  intro n
  simp only [A086568, Nat.add_sub_cancel, A086568.P4852415827755213432.a, A086568.P2444942067190828085.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002110, A002110.P13704446489392701398.a, A073093, A073093.P258081957281391684.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086568

/-! ## A086568.P16706217861332565195

`A019565(A061142(n+1)-1)`
-/

namespace A086568.P16706217861332565195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A061142 (n + 1) - 1).toNat

end

end A086568.P16706217861332565195

namespace A086568

/-- `A019565(A061142(n+1)-1)` -/
def P16706217861332565195.Spec : Prop :=
  ∀ n, P16706217861332565195.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P302312866855422717

`A057335(A061142(n+1)-1)`
-/

namespace A086568.P302312866855422717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A061142 (n + 1) - 1).toNat

end

end A086568.P302312866855422717

namespace A086568

/-- `A057335(A061142(n+1)-1)` -/
def P302312866855422717.Spec : Prop :=
  ∀ n, P302312866855422717.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P15479073071037254392

`A277330(A061142(n+1)-1)`
-/

namespace A086568.P15479073071037254392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (A061142 (n + 1) - 1).toNat

end

end A086568.P15479073071037254392

namespace A086568

/-- `A277330(A061142(n+1)-1)` -/
def P15479073071037254392.Spec : Prop :=
  ∀ n, P15479073071037254392.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P9412940233159706757

`A300951(2*A105560(n+1))`
-/

namespace A086568.P9412940233159706757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * A105560 (n + 1)).toNat

end

end A086568.P9412940233159706757

namespace A086568

/-- `A300951(2*A105560(n+1))` -/
def P9412940233159706757.Spec : Prop :=
  ∀ n, P9412940233159706757.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P732538935940847385

`A002110(A255201(n+1)/2)`
-/

namespace A086568.P732538935940847385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.roundAway ((A255201 (n + 1) : ℚ) / 2)).toNat

end

end A086568.P732538935940847385

namespace A086568

/-- `A002110(A255201(n+1)/2)` -/
def P732538935940847385.Spec : Prop :=
  ∀ n, P732538935940847385.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P7724078115781403443

`A006862(val(A165825(n+1), 4))-1`
-/

namespace A086568.P7724078115781403443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4) - 1

end

end A086568.P7724078115781403443

namespace A086568

/-- `A006862(val(A165825(n+1), 4))-1` -/
def P7724078115781403443.Spec : Prop :=
  ∀ n, P7724078115781403443.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P18084803708447437402

`A002110(A066959(n+1)/(n+1))`
-/

namespace A086568.P18084803708447437402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.roundAway ((A066959 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A086568.P18084803708447437402

namespace A086568

/-- `A002110(A066959(n+1)/(n+1))` -/
def P18084803708447437402.Spec : Prop :=
  ∀ n, P18084803708447437402.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P14185863026444738842

`A002110(A056239(A181819(n+1)))`
-/

namespace A086568.P14185863026444738842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A056239 (A181819 (n + 1)).toNat).toNat

end

end A086568.P14185863026444738842

namespace A086568

/-- `A002110(A056239(A181819(n+1)))` -/
def P14185863026444738842.Spec : Prop :=
  ∀ n, P14185863026444738842.a n = A086568 (n + 1)

end A086568

/-! ## A086568.P8303081431877004168

`A002110(A329348(n+1)-A331289(n+1))`
-/

namespace A086568.P8303081431877004168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A329348 (n + 1) - A331289 (n + 1)).toNat

end

end A086568.P8303081431877004168

namespace A086568

/-- `A002110(A329348(n+1)-A331289(n+1))` -/
def P8303081431877004168.Spec : Prop :=
  ∀ n, P8303081431877004168.a n = A086568 (n + 1)

theorem P8303081431877004168.correct : P8303081431877004168.Spec := by
  intro n
  simp only [A086568, Nat.add_sub_cancel, A086568.P8303081431877004168.a, A086568.P2444942067190828085.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002110, A002110.P13704446489392701398.a, A329348, A329348.P7234823264148255162.a, A331289, A331289.P2190627046310691994.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A117366, A117366.P12979558578758758009.a, A331188, A331188.P3991603324780884029.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A108951, A108951.P1294613322156543690.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A064989, A064989.P13349672914146769936.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086568

/-!
# A086570: Expansion of (1 + 3x + 5x^2 + 7x^3 + ...) / (1 - 2x + 3x^2 - 4x^3 + ...).

The programs for A086570, the canonical program `A086570.P14973466032238590184` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086570 has offset 0).

The definition of A086570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086570.P14973466032238590184

`a(n-1)+8` with `a(0)=1, a(1)=5, a(2)=12`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086570

/-- `a(n-1)+8` -/
def P14973466032238590184.Spec : Prop :=
  ∀ n, (P14973466032238590184.a n : ℤ) = A086570 n

theorem P14973466032238590184.correct : P14973466032238590184.Spec := by
  intro n
  simp only [A086570]

end A086570

/-!
# A086571: a(1)=1, for n>1: a(n) = smallest divisor of n occurring earlier at most once.

The programs for A086571, there is no canonical definition to state claims against.
-/

/-! ## A086571.P6074323484171718570

`gcd(A019554(A064549(n+1)), A086572(n+1))`
-/

namespace A086571.P6074323484171718570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019554 (A064549 (n + 1)).toNat) (A086572 (n + 1))

end

end A086571.P6074323484171718570

/-! ## A086571.P428829025314793544

`A327389(A077342(n+1)/A055881(n+1))`
-/

namespace A086571.P428829025314793544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (SequenceMachineLib.roundAway ((A077342 (n + 1) : ℚ) / (A055881 (n + 1) : ℚ))).toNat

end

end A086571.P428829025314793544

/-! ## A086571.P15795938223623205173

`A327389(A242474(n+1)/A055881(n+1))`
-/

namespace A086571.P15795938223623205173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (SequenceMachineLib.roundAway ((A242474 (n + 1) : ℚ) / (A055881 (n + 1) : ℚ))).toNat

end

end A086571.P15795938223623205173

/-! ## A086571.P15274968772611692558

`gcd(A023545(n+1)*A249576(n), A000005(2^n))`
-/

namespace A086571.P15274968772611692558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023545 (n + 1) * A249576 n) (A000005 (2 ^ n))

end

end A086571.P15274968772611692558

/-! ## A086571.P4408425994430658016

`A055229(A154496(n+1))*A060789(n+1)`
-/

namespace A086571.P4408425994430658016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A154496 (n + 1)).toNat * A060789 (n + 1)

end

end A086571.P4408425994430658016

/-!
# A086573: a(n) = 2*(10^n - 1).

The programs for A086573, the canonical program `A086573.P12459450006111940125` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086573 has offset 0).

The definition of A086573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(10^n-1)` (program `A086573.P12459450006111940125`, by `A086573.P12459450006111940125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086573.P12459450006111940125

`2*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086573

/-- `2*(10^n-1)` -/
def P12459450006111940125.Spec : Prop :=
  ∀ n, P12459450006111940125.a n = A086573 n

theorem P12459450006111940125.correct : P12459450006111940125.Spec := by
  intro n
  simp only [A086573]

end A086573

/-! ## A086573.P13018067497070866914

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=18`
-/

namespace A086573.P13018067497070866914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086573.P13018067497070866914

namespace A086573

/-- `11*a(n-1)-10*a(n-2)` -/
def P13018067497070866914.Spec : Prop :=
  ∀ n, P13018067497070866914.a n = A086573 n

theorem P13018067497070866914.correct : P13018067497070866914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086573, Nat.add_sub_cancel, A086573.P13018067497070866914.a, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086573, Nat.add_sub_cancel, A086573.P13018067497070866914.a, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086573

/-! ## A086573.P7182519031405402814

`lcm(2, 1-10^n)`
-/

namespace A086573.P7182519031405402814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (10 ^ n : ℤ))

end

end A086573.P7182519031405402814

namespace A086573

/-- `lcm(2, 1-10^n)` -/
def P7182519031405402814.Spec : Prop :=
  ∀ n, (P7182519031405402814.a n : ℤ) = A086573 n

end A086573

/-! ## A086573.P12780312301074955501

`ogf(18x/(1-11x+10x^2))`
-/

namespace A086573.P12780312301074955501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 18] [1, -11, 10] n

end

end A086573.P12780312301074955501

namespace A086573

/-- `ogf(18x/(1-11x+10x^2))` -/
def P12780312301074955501.Spec : Prop :=
  ∀ n, P12780312301074955501.a n = A086573 n

end A086573

/-! ## A086573.P16550037028699419046

`10*a(n-1)+18` with `a(0)=0`
-/

namespace A086573.P16550037028699419046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 18

end

end A086573.P16550037028699419046

namespace A086573

/-- `10*a(n-1)+18` -/
def P16550037028699419046.Spec : Prop :=
  ∀ n, (P16550037028699419046.a n : ℤ) = A086573 n

theorem P16550037028699419046.correct : P16550037028699419046.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086573, Nat.add_sub_cancel, A086573.P16550037028699419046.a, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086573, Nat.add_sub_cancel, A086573.P16550037028699419046.a, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086573

/-! ## A086573.P15050061957270675920

`∑[10*a(n-1)]` with `a(0)=0, a(1)=18`
-/

namespace A086573.P15050061957270675920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 18] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086573.P15050061957270675920

namespace A086573

/-- `∑[10*a(n-1)]` -/
def P15050061957270675920.Spec : Prop :=
  ∀ n, (P15050061957270675920.a n : ℤ) = A086573 n

end A086573

/-! ## A086573.P8277580914007471138

`round(record[10^abs(1-n)-9]/5)`
-/

namespace A086573.P8277580914007471138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 5)

end

end A086573.P8277580914007471138

namespace A086573

/-- `round(record[10^abs(1-n)-9]/5)` -/
def P8277580914007471138.Spec : Prop :=
  ∀ n, P8277580914007471138.a n = A086573 n

end A086573

/-! ## A086573.P1159931898730341286

`∑[and(-2, 10^n)]+floor(8/9*10^n)`
-/

namespace A086573.P1159931898730341286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(8 : ℚ) / 9 * (10 ^ n : ℚ)⌋

end

end A086573.P1159931898730341286

namespace A086573

/-- `∑[and(-2, 10^n)]+floor(8/9*10^n)` -/
def P1159931898730341286.Spec : Prop :=
  ∀ n, P1159931898730341286.a n = A086573 n

end A086573

/-! ## A086573.P7778508223438157832

`(10^n-1)/gcd(n, n+1)+10^n-1`
-/

namespace A086573.P7778508223438157832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) / (Nat.gcd n (n + 1) : ℚ) + ((10 ^ n : ℤ) - 1 : ℚ)

end

end A086573.P7778508223438157832

namespace A086573

/-- `(10^n-1)/gcd(n, n+1)+10^n-1` -/
def P7778508223438157832.Spec : Prop :=
  ∀ n, P7778508223438157832.a n = (A086573 n : ℚ)

theorem P7778508223438157832.correct : P7778508223438157832.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P7778508223438157832.a, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A086573

/-! ## A086573.P16798133030924782014

`A199682(n)-3`
-/

namespace A086573.P16798133030924782014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199682 n - 3

end

end A086573.P16798133030924782014

namespace A086573

/-- `A199682(n)-3` -/
def P16798133030924782014.Spec : Prop :=
  ∀ n, P16798133030924782014.a n = A086573 n

theorem P16798133030924782014.correct : P16798133030924782014.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P16798133030924782014.a, A086573.P12459450006111940125.a, A199682, A199682.P5052991062542411670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086573

/-! ## A086573.P2780564778149069390

`A086575(n)/2`
-/

namespace A086573.P2780564778149069390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086575 n : ℚ) / 2

end

end A086573.P2780564778149069390

namespace A086573

/-- `A086575(n)/2` -/
def P2780564778149069390.Spec : Prop :=
  ∀ n, P2780564778149069390.a n = (A086573 n : ℚ)

theorem P2780564778149069390.correct : P2780564778149069390.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P2780564778149069390.a, A086573.P12459450006111940125.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086573

/-! ## A086573.P1439403050050500893

`A086577(n)/3`
-/

namespace A086573.P1439403050050500893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086577 n : ℚ) / 3

end

end A086573.P1439403050050500893

namespace A086573

/-- `A086577(n)/3` -/
def P1439403050050500893.Spec : Prop :=
  ∀ n, P1439403050050500893.a n = (A086573 n : ℚ)

theorem P1439403050050500893.correct : P1439403050050500893.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P1439403050050500893.a, A086573.P12459450006111940125.a, A086577, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086573

/-! ## A086573.P425246239425288210

`A173041(n)-5`
-/

namespace A086573.P425246239425288210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173041 n - 5

end

end A086573.P425246239425288210

namespace A086573

/-- `A173041(n)-5` -/
def P425246239425288210.Spec : Prop :=
  ∀ n, P425246239425288210.a n = A086573 n

theorem P425246239425288210.correct : P425246239425288210.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P425246239425288210.a, A086573.P12459450006111940125.a, A173041, A173041.P2098755369761441248.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086573

/-! ## A086573.P14589072617065665591

`A086579(n)/4`
-/

namespace A086573.P14589072617065665591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086579 n : ℚ) / 4

end

end A086573.P14589072617065665591

namespace A086573

/-- `A086579(n)/4` -/
def P14589072617065665591.Spec : Prop :=
  ∀ n, P14589072617065665591.a n = (A086573 n : ℚ)

theorem P14589072617065665591.correct : P14589072617065665591.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P14589072617065665591.a, A086573.P12459450006111940125.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086573

/-! ## A086573.P6267554305111748723

`A124167(n)/5`
-/

namespace A086573.P6267554305111748723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124167 n : ℚ) / 5

end

end A086573.P6267554305111748723

namespace A086573

/-- `A124167(n)/5` -/
def P6267554305111748723.Spec : Prop :=
  ∀ n, P6267554305111748723.a n = (A086573 n : ℚ)

theorem P6267554305111748723.correct : P6267554305111748723.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P6267554305111748723.a, A086573.P12459450006111940125.a, A124167, A124167.P13896893363234218032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086573

/-! ## A086573.P14900272470116429979

`A152966(9*n)`
-/

namespace A086573.P14900272470116429979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152966 (9 * n)

end

end A086573.P14900272470116429979

namespace A086573

/-- `A152966(9*n)` -/
def P14900272470116429979.Spec : Prop :=
  ∀ n, P14900272470116429979.a n = A086573 n

end A086573

/-! ## A086573.P1019894796050597120

`Δ[A002276(n)]-2`
-/

namespace A086573.P1019894796050597120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A086573.P1019894796050597120

namespace A086573

/-- `Δ[A002276(n)]-2` -/
def P1019894796050597120.Spec : Prop :=
  ∀ n, P1019894796050597120.a n = A086573 n

end A086573

/-! ## A086573.P15335999008036624792

`Δ[A093135(n)]-2`
-/

namespace A086573.P15335999008036624792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A086573.P15335999008036624792

namespace A086573

/-- `Δ[A093135(n)]-2` -/
def P15335999008036624792.Spec : Prop :=
  ∀ n, P15335999008036624792.a n = A086573 n

end A086573

/-! ## A086573.P18184756878758479993

`A067272(n+1)-1`
-/

namespace A086573.P18184756878758479993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067272 (n + 1) - 1

end

end A086573.P18184756878758479993

namespace A086573

/-- `A067272(n+1)-1` -/
def P18184756878758479993.Spec : Prop :=
  ∀ n, P18184756878758479993.a n = A086573 n

theorem P18184756878758479993.correct : P18184756878758479993.Spec := by
  intro n
  simp only [A086573, Nat.add_sub_cancel, A086573.P18184756878758479993.a, A086573.P12459450006111940125.a, A067272, A067272.P7660226144984630586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086573

/-! ## A086573.P13839943773785843081

`A093136(n+1)-2`
-/

namespace A086573.P13839943773785843081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 (n + 1) - 2

end

end A086573.P13839943773785843081

namespace A086573

/-- `A093136(n+1)-2` -/
def P13839943773785843081.Spec : Prop :=
  ∀ n, P13839943773785843081.a n = A086573 n

end A086573

/-!
# A086574: a(n) = 3*(10^n - 1).

The programs for A086574, the canonical program `A086574.P5714779003490660337` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086574 has offset 0).

The definition of A086574 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(10^n-1)` (program `A086574.P5714779003490660337`, by `A086574.P5714779003490660337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086574.P5714779003490660337

`3*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086574

/-- `3*(10^n-1)` -/
def P5714779003490660337.Spec : Prop :=
  ∀ n, P5714779003490660337.a n = A086574 n

theorem P5714779003490660337.correct : P5714779003490660337.Spec := by
  intro n
  simp only [A086574]

end A086574

/-! ## A086574.P7267226798698084342

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=27`
-/

namespace A086574.P7267226798698084342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 27] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086574.P7267226798698084342

namespace A086574

/-- `11*a(n-1)-10*a(n-2)` -/
def P7267226798698084342.Spec : Prop :=
  ∀ n, P7267226798698084342.a n = A086574 n

theorem P7267226798698084342.correct : P7267226798698084342.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086574, Nat.add_sub_cancel, A086574.P7267226798698084342.a, A086574.P5714779003490660337.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086574, Nat.add_sub_cancel, A086574.P7267226798698084342.a, A086574.P5714779003490660337.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086574

/-! ## A086574.P5831777484821000452

`lcm(3, 10^n)-3`
-/

namespace A086574.P5831777484821000452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (10 ^ n) : ℤ) - 3

end

end A086574.P5831777484821000452

namespace A086574

/-- `lcm(3, 10^n)-3` -/
def P5831777484821000452.Spec : Prop :=
  ∀ n, P5831777484821000452.a n = A086574 n

end A086574

/-! ## A086574.P5151304297433554063

`10*a(n-1)+27` with `a(0)=0`
-/

namespace A086574.P5151304297433554063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 27

end

end A086574.P5151304297433554063

namespace A086574

/-- `10*a(n-1)+27` -/
def P5151304297433554063.Spec : Prop :=
  ∀ n, (P5151304297433554063.a n : ℤ) = A086574 n

theorem P5151304297433554063.correct : P5151304297433554063.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086574, Nat.add_sub_cancel, A086574.P5151304297433554063.a, A086574.P5714779003490660337.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086574, Nat.add_sub_cancel, A086574.P5151304297433554063.a, A086574.P5714779003490660337.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086574

/-! ## A086574.P1689797353101222844

`∑[10*a(n-1)]` with `a(0)=0, a(1)=27`
-/

namespace A086574.P1689797353101222844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 27] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086574.P1689797353101222844

namespace A086574

/-- `∑[10*a(n-1)]` -/
def P1689797353101222844.Spec : Prop :=
  ∀ n, (P1689797353101222844.a n : ℤ) = A086574 n

end A086574

/-! ## A086574.P10306404406989128026

`A198698(n)-2`
-/

namespace A086574.P10306404406989128026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198698 n - 2

end

end A086574.P10306404406989128026

namespace A086574

/-- `A198698(n)-2` -/
def P10306404406989128026.Spec : Prop :=
  ∀ n, P10306404406989128026.a n = A086574 n

theorem P10306404406989128026.correct : P10306404406989128026.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P10306404406989128026.a, A086574.P5714779003490660337.a, A198698, A198698.P9919228672787771968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P12913327261686659684

`A086577(n)/2`
-/

namespace A086574.P12913327261686659684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086577 n : ℚ) / 2

end

end A086574.P12913327261686659684

namespace A086574

/-- `A086577(n)/2` -/
def P12913327261686659684.Spec : Prop :=
  ∀ n, P12913327261686659684.a n = (A086574 n : ℚ)

theorem P12913327261686659684.correct : P12913327261686659684.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P12913327261686659684.a, A086574.P5714779003490660337.a, A086577, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P6745136045431355039

`A199683(n)-4`
-/

namespace A086574.P6745136045431355039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199683 n - 4

end

end A086574.P6745136045431355039

namespace A086574

/-- `A199683(n)-4` -/
def P6745136045431355039.Spec : Prop :=
  ∀ n, P6745136045431355039.a n = A086574 n

theorem P6745136045431355039.correct : P6745136045431355039.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P6745136045431355039.a, A086574.P5714779003490660337.a, A199683, A199683.P13133772088393179455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P5426845228750664426

`A086580(n)/3`
-/

namespace A086574.P5426845228750664426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086580 n : ℚ) / 3

end

end A086574.P5426845228750664426

namespace A086574

/-- `A086580(n)/3` -/
def P5426845228750664426.Spec : Prop :=
  ∀ n, P5426845228750664426.a n = (A086574 n : ℚ)

theorem P5426845228750664426.correct : P5426845228750664426.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P5426845228750664426.a, A086574.P5714779003490660337.a, A086580, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P713228177228755663

`A093138(n+1)-3`
-/

namespace A086574.P713228177228755663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 (n + 1) - 3

end

end A086574.P713228177228755663

namespace A086574

/-- `A093138(n+1)-3` -/
def P713228177228755663.Spec : Prop :=
  ∀ n, P713228177228755663.a n = A086574 n

end A086574

/-! ## A086574.P4546471162119099190

`A004663(Δ[n²])-3`
-/

namespace A086574.P4546471162119099190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A086574.P4546471162119099190

namespace A086574

/-- `A004663(Δ[n²])-3` -/
def P4546471162119099190.Spec : Prop :=
  ∀ n, P4546471162119099190.a n = A086574 n

end A086574

/-! ## A086574.P1152709904195365625

`A125521(Δ[n²])-3`
-/

namespace A086574.P1152709904195365625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125521 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A086574.P1152709904195365625

namespace A086574

/-- `A125521(Δ[n²])-3` -/
def P1152709904195365625.Spec : Prop :=
  ∀ n, P1152709904195365625.a n = A086574 n

end A086574

/-! ## A086574.P14971982556219041598

`A052268(n+1)/3-3`
-/

namespace A086574.P14971982556219041598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052268 (n + 1) : ℚ) / 3 - 3

end

end A086574.P14971982556219041598

namespace A086574

/-- `A052268(n+1)/3-3` -/
def P14971982556219041598.Spec : Prop :=
  ∀ n, P14971982556219041598.a n = (A086574 n : ℚ)

theorem P14971982556219041598.correct : P14971982556219041598.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P14971982556219041598.a, A086574.P5714779003490660337.a, A052268, A052268.P1431609730251872514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P630782717688547966

`A136853(2*n+3)-3`
-/

namespace A086574.P630782717688547966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136853 (2 * n + 3) - 3

end

end A086574.P630782717688547966

namespace A086574

/-- `A136853(2*n+3)-3` -/
def P630782717688547966.Spec : Prop :=
  ∀ n, P630782717688547966.a n = A086574 n

end A086574

/-! ## A086574.P6469998116284302075

`(A099151(n+1)-5)/2`
-/

namespace A086574.P6469998116284302075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099151 (n + 1) - 5 : ℚ) / 2

end

end A086574.P6469998116284302075

namespace A086574

/-- `(A099151(n+1)-5)/2` -/
def P6469998116284302075.Spec : Prop :=
  ∀ n, P6469998116284302075.a n = (A086574 n : ℚ)

theorem P6469998116284302075.correct : P6469998116284302075.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P6469998116284302075.a, A086574.P5714779003490660337.a, A099151, A099151.P15911777622680170341.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P5136347262918469418

`A086573(n)+A002283(n)`
-/

namespace A086574.P5136347262918469418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086573 n + A002283 n

end

end A086574.P5136347262918469418

namespace A086574

/-- `A086573(n)+A002283(n)` -/
def P5136347262918469418.Spec : Prop :=
  ∀ n, P5136347262918469418.a n = A086574 n

theorem P5136347262918469418.correct : P5136347262918469418.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P5136347262918469418.a, A086574.P5714779003490660337.a, A002283, A002283.P2252111154706607536.a, A086573, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P14867212723107585682

`A086575(n)-A002283(n)`
-/

namespace A086574.P14867212723107585682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 n - A002283 n

end

end A086574.P14867212723107585682

namespace A086574

/-- `A086575(n)-A002283(n)` -/
def P14867212723107585682.Spec : Prop :=
  ∀ n, P14867212723107585682.a n = A086574 n

theorem P14867212723107585682.correct : P14867212723107585682.Spec := by
  intro n
  simp only [A086574, Nat.add_sub_cancel, A086574.P14867212723107585682.a, A086574.P5714779003490660337.a, A002283, A002283.P2252111154706607536.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086574

/-! ## A086574.P5961216696576238450

`A002281(n)+2*A105279(n)`
-/

namespace A086574.P5961216696576238450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n + 2 * A105279 n

end

end A086574.P5961216696576238450

namespace A086574

/-- `A002281(n)+2*A105279(n)` -/
def P5961216696576238450.Spec : Prop :=
  ∀ n, P5961216696576238450.a n = A086574 n

end A086574

/-! ## A086574.P12186112514360326966

`A174971(2*n+1)+A093138(n+1)`
-/

namespace A086574.P12186112514360326966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (2 * n + 1) + A093138 (n + 1)

end

end A086574.P12186112514360326966

namespace A086574

/-- `A174971(2*n+1)+A093138(n+1)` -/
def P12186112514360326966.Spec : Prop :=
  ∀ n, P12186112514360326966.a n = A086574 n

end A086574

/-! ## A086574.P14570397588475406145

`A002283(n)+A002283(n)*A130130(n+1)`
-/

namespace A086574.P14570397588475406145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + A002283 n * A130130 (n + 1)

end

end A086574.P14570397588475406145

namespace A086574

/-- `A002283(n)+A002283(n)*A130130(n+1)` -/
def P14570397588475406145.Spec : Prop :=
  ∀ n, P14570397588475406145.a n = A086574 n

end A086574

/-!
# A086575: a(n) = 4*(10^n - 1).

The programs for A086575, the canonical program `A086575.P2017417620639071348` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086575 has offset 0).

The definition of A086575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(10^n-1)` (program `A086575.P2017417620639071348`, by `A086575.P2017417620639071348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086575.P2017417620639071348

`4*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086575

/-- `4*(10^n-1)` -/
def P2017417620639071348.Spec : Prop :=
  ∀ n, P2017417620639071348.a n = A086575 n

theorem P2017417620639071348.correct : P2017417620639071348.Spec := by
  intro n
  simp only [A086575]

end A086575

/-! ## A086575.P1714002978341569732

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=36`
-/

namespace A086575.P1714002978341569732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 36] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086575.P1714002978341569732

namespace A086575

/-- `11*a(n-1)-10*a(n-2)` -/
def P1714002978341569732.Spec : Prop :=
  ∀ n, P1714002978341569732.a n = A086575 n

theorem P1714002978341569732.correct : P1714002978341569732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086575, Nat.add_sub_cancel, A086575.P1714002978341569732.a, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086575, Nat.add_sub_cancel, A086575.P1714002978341569732.a, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086575

/-! ## A086575.P9032465374280575704

`lcm(4, 1-10^n)`
-/

namespace A086575.P9032465374280575704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (10 ^ n : ℤ))

end

end A086575.P9032465374280575704

namespace A086575

/-- `lcm(4, 1-10^n)` -/
def P9032465374280575704.Spec : Prop :=
  ∀ n, (P9032465374280575704.a n : ℤ) = A086575 n

end A086575

/-! ## A086575.P6069682585864619646

`10*a(n-1)+36` with `a(0)=0`
-/

namespace A086575.P6069682585864619646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 36

end

end A086575.P6069682585864619646

namespace A086575

/-- `10*a(n-1)+36` -/
def P6069682585864619646.Spec : Prop :=
  ∀ n, (P6069682585864619646.a n : ℤ) = A086575 n

theorem P6069682585864619646.correct : P6069682585864619646.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086575, Nat.add_sub_cancel, A086575.P6069682585864619646.a, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086575, Nat.add_sub_cancel, A086575.P6069682585864619646.a, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086575

/-! ## A086575.P10086316327319854749

`∑[10*a(n-1)]` with `a(0)=0, a(1)=36`
-/

namespace A086575.P10086316327319854749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086575.P10086316327319854749

namespace A086575

/-- `∑[10*a(n-1)]` -/
def P10086316327319854749.Spec : Prop :=
  ∀ n, (P10086316327319854749.a n : ℤ) = A086575 n

end A086575

/-! ## A086575.P6246496503364838627

`xor(3, lcm(3, floor(4/3*10^n)))`
-/

namespace A086575.P6246496503364838627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Int.lcm 3 ⌊(4 : ℚ) / 3 * (10 ^ n : ℚ)⌋)

end

end A086575.P6246496503364838627

namespace A086575

/-- `xor(3, lcm(3, floor(4/3*10^n)))` -/
def P6246496503364838627.Spec : Prop :=
  ∀ n, (P6246496503364838627.a n : ℤ) = A086575 n

end A086575

/-! ## A086575.P7573886541489701935

`A198970(n)-3`
-/

namespace A086575.P7573886541489701935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198970 n - 3

end

end A086575.P7573886541489701935

namespace A086575

/-- `A198970(n)-3` -/
def P7573886541489701935.Spec : Prop :=
  ∀ n, P7573886541489701935.a n = A086575 n

theorem P7573886541489701935.correct : P7573886541489701935.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P7573886541489701935.a, A086575.P2017417620639071348.a, A198970, A198970.P3896718093538154325.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P100430046770922401

`A086579(n)/2`
-/

namespace A086575.P100430046770922401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086579 n : ℚ) / 2

end

end A086575.P100430046770922401

namespace A086575

/-- `A086579(n)/2` -/
def P100430046770922401.Spec : Prop :=
  ∀ n, P100430046770922401.a n = (A086575 n : ℚ)

theorem P100430046770922401.correct : P100430046770922401.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P100430046770922401.a, A086575.P2017417620639071348.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P491612677966502473

`A199684(n)-5`
-/

namespace A086575.P491612677966502473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199684 n - 5

end

end A086575.P491612677966502473

namespace A086575

/-- `A199684(n)-5` -/
def P491612677966502473.Spec : Prop :=
  ∀ n, P491612677966502473.a n = A086575 n

theorem P491612677966502473.correct : P491612677966502473.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P491612677966502473.a, A086575.P2017417620639071348.a, A199684, A199684.P9033483143699247496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P17903945977149812432

`A083818(n+1)-1`
-/

namespace A086575.P17903945977149812432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083818 (n + 1) - 1

end

end A086575.P17903945977149812432

namespace A086575

/-- `A083818(n+1)-1` -/
def P17903945977149812432.Spec : Prop :=
  ∀ n, P17903945977149812432.a n = A086575 n

theorem P17903945977149812432.correct : P17903945977149812432.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P17903945977149812432.a, A086575.P2017417620639071348.a, A083818, A083818.P1973650666487385807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P8795266385252197074

`A093141(n+1)-4`
-/

namespace A086575.P8795266385252197074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093141 (n + 1) - 4

end

end A086575.P8795266385252197074

namespace A086575

/-- `A093141(n+1)-4` -/
def P8795266385252197074.Spec : Prop :=
  ∀ n, P8795266385252197074.a n = A086575 n

end A086575

/-! ## A086575.P3521333572985468710

`(A100412(n)-1)/2`
-/

namespace A086575.P3521333572985468710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100412 n - 1 : ℚ) / 2

end

end A086575.P3521333572985468710

namespace A086575

/-- `(A100412(n)-1)/2` -/
def P3521333572985468710.Spec : Prop :=
  ∀ n, P3521333572985468710.a n = (A086575 n : ℚ)

theorem P3521333572985468710.correct : P3521333572985468710.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P3521333572985468710.a, A086575.P2017417620639071348.a, A100412, A100412.P15674556546461358470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P10984778251559678086

`A097112(2*n+1)-4`
-/

namespace A086575.P10984778251559678086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097112 (2 * n + 1) - 4

end

end A086575.P10984778251559678086

namespace A086575

/-- `A097112(2*n+1)-4` -/
def P10984778251559678086.Spec : Prop :=
  ∀ n, P10984778251559678086.a n = A086575 n

end A086575

/-! ## A086575.P8747909321024363892

`A331786(A017185(n))-2`
-/

namespace A086575.P8747909321024363892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331786 (A017185 n).toNat - 2

end

end A086575.P8747909321024363892

namespace A086575

/-- `A331786(A017185(n))-2` -/
def P8747909321024363892.Spec : Prop :=
  ∀ n, P8747909321024363892.a n = A086575 n

end A086575

/-! ## A086575.P912848018028443262

`A331786(A017197(n))-2`
-/

namespace A086575.P912848018028443262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331786 (A017197 n).toNat - 2

end

end A086575.P912848018028443262

namespace A086575

/-- `A331786(A017197(n))-2` -/
def P912848018028443262.Spec : Prop :=
  ∀ n, P912848018028443262.a n = A086575 n

end A086575

/-! ## A086575.P8850251893226428183

`A086574(n)+A002283(n)`
-/

namespace A086575.P8850251893226428183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086574 n + A002283 n

end

end A086575.P8850251893226428183

namespace A086575

/-- `A086574(n)+A002283(n)` -/
def P8850251893226428183.Spec : Prop :=
  ∀ n, P8850251893226428183.a n = A086575 n

theorem P8850251893226428183.correct : P8850251893226428183.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P8850251893226428183.a, A086575.P2017417620639071348.a, A002283, A002283.P2252111154706607536.a, A086574, A086574.P5714779003490660337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P13230920863393186904

`A086573(n)+A086573(n)`
-/

namespace A086575.P13230920863393186904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086573 n + A086573 n

end

end A086575.P13230920863393186904

namespace A086575

/-- `A086573(n)+A086573(n)` -/
def P13230920863393186904.Spec : Prop :=
  ∀ n, P13230920863393186904.a n = A086575 n

theorem P13230920863393186904.correct : P13230920863393186904.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P13230920863393186904.a, A086575.P2017417620639071348.a, A086573, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P8086310724653124709

`A086576(n)-A002283(n)`
-/

namespace A086575.P8086310724653124709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086576 n - A002283 n

end

end A086575.P8086310724653124709

namespace A086575

/-- `A086576(n)-A002283(n)` -/
def P8086310724653124709.Spec : Prop :=
  ∀ n, P8086310724653124709.a n = A086575 n

theorem P8086310724653124709.correct : P8086310724653124709.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P8086310724653124709.a, A086575.P2017417620639071348.a, A002283, A002283.P2252111154706607536.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P1676753549396442609

`A199685(n)-A133472(n)`
-/

namespace A086575.P1676753549396442609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199685 n - A133472 n

end

end A086575.P1676753549396442609

namespace A086575

/-- `A199685(n)-A133472(n)` -/
def P1676753549396442609.Spec : Prop :=
  ∀ n, P1676753549396442609.a n = A086575 n

theorem P1676753549396442609.correct : P1676753549396442609.Spec := by
  intro n
  simp only [A086575, Nat.add_sub_cancel, A086575.P1676753549396442609.a, A086575.P2017417620639071348.a, A133472, A133472.P12575081462914944271.a, A199685, A199685.P3198493407434743827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086575

/-! ## A086575.P3308424541289632402

`A323639(n)+A323639(n+1)+A323639(n)`
-/

namespace A086575.P3308424541289632402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 n + (A323639 (n + 1) + A323639 n)

end

end A086575.P3308424541289632402

namespace A086575

/-- `A323639(n)+A323639(n+1)+A323639(n)` -/
def P3308424541289632402.Spec : Prop :=
  ∀ n, P3308424541289632402.a n = A086575 n

end A086575

/-!
# A086576: a(n) = 5*(10^n - 1).

The programs for A086576, the canonical program `A086576.P5175639682884898916` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086576 has offset 0).

The definition of A086576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(10^n-1)` (program `A086576.P5175639682884898916`, by `A086576.P5175639682884898916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086576.P5175639682884898916

`5*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086576

/-- `5*(10^n-1)` -/
def P5175639682884898916.Spec : Prop :=
  ∀ n, P5175639682884898916.a n = A086576 n

theorem P5175639682884898916.correct : P5175639682884898916.Spec := by
  intro n
  simp only [A086576]

end A086576

/-! ## A086576.P15215796527810885104

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=45`
-/

namespace A086576.P15215796527810885104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 45] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086576.P15215796527810885104

namespace A086576

/-- `11*a(n-1)-10*a(n-2)` -/
def P15215796527810885104.Spec : Prop :=
  ∀ n, P15215796527810885104.a n = A086576 n

theorem P15215796527810885104.correct : P15215796527810885104.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086576, Nat.add_sub_cancel, A086576.P15215796527810885104.a, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086576, Nat.add_sub_cancel, A086576.P15215796527810885104.a, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086576

/-! ## A086576.P14091858239530500292

`lcm(5, 1-10^n)`
-/

namespace A086576.P14091858239530500292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (1 - (10 ^ n : ℤ))

end

end A086576.P14091858239530500292

namespace A086576

/-- `lcm(5, 1-10^n)` -/
def P14091858239530500292.Spec : Prop :=
  ∀ n, (P14091858239530500292.a n : ℤ) = A086576 n

end A086576

/-! ## A086576.P17314204696950874748

`10*a(n-1)+45` with `a(0)=0`
-/

namespace A086576.P17314204696950874748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 45

end

end A086576.P17314204696950874748

namespace A086576

/-- `10*a(n-1)+45` -/
def P17314204696950874748.Spec : Prop :=
  ∀ n, (P17314204696950874748.a n : ℤ) = A086576 n

theorem P17314204696950874748.correct : P17314204696950874748.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086576, Nat.add_sub_cancel, A086576.P17314204696950874748.a, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086576, Nat.add_sub_cancel, A086576.P17314204696950874748.a, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086576

/-! ## A086576.P3171372727550494760

`∑[10*a(n-1)]` with `a(0)=0, a(1)=45`
-/

namespace A086576.P3171372727550494760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 45] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086576.P3171372727550494760

namespace A086576

/-- `∑[10*a(n-1)]` -/
def P3171372727550494760.Spec : Prop :=
  ∀ n, (P3171372727550494760.a n : ℤ) = A086576 n

end A086576

/-! ## A086576.P11677478702868473628

`∑[9*and(-2, 10^n)/2]`
-/

namespace A086576.P11677478702868473628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((Int.land (-2) (10 ^ n : ℤ) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086576.P11677478702868473628

namespace A086576

/-- `∑[9*and(-2, 10^n)/2]` -/
def P11677478702868473628.Spec : Prop :=
  ∀ n, P11677478702868473628.a n = (A086576 n : ℚ)

end A086576

/-! ## A086576.P5590224272945870095

`A124167(n)/2`
-/

namespace A086576.P5590224272945870095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124167 n : ℚ) / 2

end

end A086576.P5590224272945870095

namespace A086576

/-- `A124167(n)/2` -/
def P5590224272945870095.Spec : Prop :=
  ∀ n, P5590224272945870095.a n = (A086576 n : ℚ)

theorem P5590224272945870095.correct : P5590224272945870095.Spec := by
  intro n
  simp only [A086576, Nat.add_sub_cancel, A086576.P5590224272945870095.a, A086576.P5175639682884898916.a, A124167, A124167.P13896893363234218032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086576

/-! ## A086576.P17089396356370978366

`A198971(n)-4`
-/

namespace A086576.P17089396356370978366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n - 4

end

end A086576.P17089396356370978366

namespace A086576

/-- `A198971(n)-4` -/
def P17089396356370978366.Spec : Prop :=
  ∀ n, P17089396356370978366.a n = A086576 n

theorem P17089396356370978366.correct : P17089396356370978366.Spec := by
  intro n
  simp only [A086576, Nat.add_sub_cancel, A086576.P17089396356370978366.a, A086576.P5175639682884898916.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086576

/-! ## A086576.P17648690734135996426

`A199685(n)-6`
-/

namespace A086576.P17648690734135996426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199685 n - 6

end

end A086576.P17648690734135996426

namespace A086576

/-- `A199685(n)-6` -/
def P17648690734135996426.Spec : Prop :=
  ∀ n, P17648690734135996426.a n = A086576 n

theorem P17648690734135996426.correct : P17648690734135996426.Spec := by
  intro n
  simp only [A086576, Nat.add_sub_cancel, A086576.P17648690734135996426.a, A086576.P5175639682884898916.a, A199685, A199685.P3198493407434743827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086576

/-! ## A086576.P8067841130975254453

`Δ[A002279(n)]-5`
-/

namespace A086576.P8067841130975254453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 5

end

end A086576.P8067841130975254453

namespace A086576

/-- `Δ[A002279(n)]-5` -/
def P8067841130975254453.Spec : Prop :=
  ∀ n, P8067841130975254453.a n = A086576 n

end A086576

/-! ## A086576.P14876319696549269279

`A276509(n+1)-2`
-/

namespace A086576.P14876319696549269279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276509 (n + 1) - 2

end

end A086576.P14876319696549269279

namespace A086576

/-- `A276509(n+1)-2` -/
def P14876319696549269279.Spec : Prop :=
  ∀ n, P14876319696549269279.a n = A086576 n

theorem P14876319696549269279.correct : P14876319696549269279.Spec := by
  intro n
  simp only [A086576, Nat.add_sub_cancel, A086576.P14876319696549269279.a, A086576.P5175639682884898916.a, A276509, A276509.P2691038979915185785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086576

/-! ## A086576.P7265755047228104891

`A093143(n+1)-5`
-/

namespace A086576.P7265755047228104891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 1) - 5

end

end A086576.P7265755047228104891

namespace A086576

/-- `A093143(n+1)-5` -/
def P7265755047228104891.Spec : Prop :=
  ∀ n, P7265755047228104891.a n = A086576 n

end A086576

/-! ## A086576.P4545064494233015068

`A268099(2*n)-4`
-/

namespace A086576.P4545064494233015068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268099 (2 * n) - 4

end

end A086576.P4545064494233015068

namespace A086576

/-- `A268099(2*n)-4` -/
def P4545064494233015068.Spec : Prop :=
  ∀ n, P4545064494233015068.a n = A086576 n

end A086576

/-! ## A086576.P5193569568926979506

`5*A086573(n)/2`
-/

namespace A086576.P5193569568926979506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A086573 n : ℚ) / 2

end

end A086576.P5193569568926979506

namespace A086576

/-- `5*A086573(n)/2` -/
def P5193569568926979506.Spec : Prop :=
  ∀ n, P5193569568926979506.a n = (A086576 n : ℚ)

theorem P5193569568926979506.correct : P5193569568926979506.Spec := by
  intro n
  simp only [A086576, Nat.add_sub_cancel, A086576.P5193569568926979506.a, A086576.P5175639682884898916.a, A086573, A086573.P12459450006111940125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086576

/-! ## A086576.P4100560163157495540

`∑[(A085952(n)-1)/2]`
-/

namespace A086576.P4100560163157495540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085952 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086576.P4100560163157495540

namespace A086576

/-- `∑[(A085952(n)-1)/2]` -/
def P4100560163157495540.Spec : Prop :=
  ∀ n, P4100560163157495540.a n = (A086576 n : ℚ)

end A086576

/-! ## A086576.P10407390658461244315

`(A170955(n+1)-1)/2`
-/

namespace A086576.P10407390658461244315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170955 (n + 1) - 1 : ℚ) / 2

end

end A086576.P10407390658461244315

namespace A086576

/-- `(A170955(n+1)-1)/2` -/
def P10407390658461244315.Spec : Prop :=
  ∀ n, P10407390658461244315.a n = (A086576 n : ℚ)

theorem P10407390658461244315.correct : P10407390658461244315.Spec := by
  intro n
  simp only [A086576, Nat.add_sub_cancel, A086576.P10407390658461244315.a, A086576.P5175639682884898916.a, A170955, A170955.P2957400710442398076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086576

/-! ## A086576.P2029096934751829630

`A173712(2*(n+1))-4`
-/

namespace A086576.P2029096934751829630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173712 (2 * (n + 1)) - 4

end

end A086576.P2029096934751829630

namespace A086576

/-- `A173712(2*(n+1))-4` -/
def P2029096934751829630.Spec : Prop :=
  ∀ n, P2029096934751829630.a n = A086576 n

end A086576

/-! ## A086576.P10894310025563156338

`A099150(n+1)/2-4`
-/

namespace A086576.P10894310025563156338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099150 (n + 1) : ℚ) / 2 - 4

end

end A086576.P10894310025563156338

namespace A086576

/-- `A099150(n+1)/2-4` -/
def P10894310025563156338.Spec : Prop :=
  ∀ n, P10894310025563156338.a n = (A086576 n : ℚ)

theorem P10894310025563156338.correct : P10894310025563156338.Spec := by
  intro n
  simp only [A086576, Nat.add_sub_cancel, A086576.P10894310025563156338.a, A086576.P5175639682884898916.a, A099150, A099150.P16539555369360394122.a, A198971, A198971.P6851054874129121240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086576

/-! ## A086576.P17191383582563028951

`A101654(2*n+1)-5`
-/

namespace A086576.P17191383582563028951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101654 (2 * n + 1) - 5

end

end A086576.P17191383582563028951

namespace A086576

/-- `A101654(2*n+1)-5` -/
def P17191383582563028951.Spec : Prop :=
  ∀ n, P17191383582563028951.a n = A086576 n

end A086576

/-! ## A086576.P12562608407019011277

`A268100(2*n+1)-5`
-/

namespace A086576.P12562608407019011277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 (2 * n + 1) - 5

end

end A086576.P12562608407019011277

namespace A086576

/-- `A268100(2*n+1)-5` -/
def P12562608407019011277.Spec : Prop :=
  ∀ n, P12562608407019011277.a n = A086576 n

end A086576

/-!
# A086577: a(n) = 6*(10^n - 1).

The programs for A086577, the canonical program `A086577.P14556633817939270986` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086577 has offset 0).

The definition of A086577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(10^n-1)` (program `A086577.P14556633817939270986`, by `A086577.P14556633817939270986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086577.P14556633817939270986

`6*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086577

/-- `6*(10^n-1)` -/
def P14556633817939270986.Spec : Prop :=
  ∀ n, P14556633817939270986.a n = A086577 n

theorem P14556633817939270986.correct : P14556633817939270986.Spec := by
  intro n
  simp only [A086577]

end A086577

/-! ## A086577.P2755170258683969890

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=54`
-/

namespace A086577.P2755170258683969890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 54] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086577.P2755170258683969890

namespace A086577

/-- `11*a(n-1)-10*a(n-2)` -/
def P2755170258683969890.Spec : Prop :=
  ∀ n, P2755170258683969890.a n = A086577 n

theorem P2755170258683969890.correct : P2755170258683969890.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086577, Nat.add_sub_cancel, A086577.P2755170258683969890.a, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086577, Nat.add_sub_cancel, A086577.P2755170258683969890.a, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086577

/-! ## A086577.P1018697553303562776

`10*a(n-1)+54` with `a(0)=0`
-/

namespace A086577.P1018697553303562776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 54

end

end A086577.P1018697553303562776

namespace A086577

/-- `10*a(n-1)+54` -/
def P1018697553303562776.Spec : Prop :=
  ∀ n, (P1018697553303562776.a n : ℤ) = A086577 n

theorem P1018697553303562776.correct : P1018697553303562776.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086577, Nat.add_sub_cancel, A086577.P1018697553303562776.a, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086577, Nat.add_sub_cancel, A086577.P1018697553303562776.a, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086577

/-! ## A086577.P136395501954210929

`abs(6*(∑[10*a(n-1)]-1))` with `a(0)=1, a(1)=9`
-/

namespace A086577.P136395501954210929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)|

end

end A086577.P136395501954210929

namespace A086577

/-- `abs(6*(∑[10*a(n-1)]-1))` -/
def P136395501954210929.Spec : Prop :=
  ∀ n, P136395501954210929.a n = A086577 n

end A086577

/-! ## A086577.P776250653982027040

`round(6*(∑[10*a(n-1)]-1))` with `a(0)=1, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A086577.P776250653982027040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A086577.P776250653982027040

namespace A086577

/-- `round(6*(∑[10*a(n-1)]-1))` -/
def P776250653982027040.Spec : Prop :=
  ∀ n, P776250653982027040.a n = A086577 n

end A086577

/-! ## A086577.P5421854154225526039

`A199686(n)-7`
-/

namespace A086577.P5421854154225526039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199686 n - 7

end

end A086577.P5421854154225526039

namespace A086577

/-- `A199686(n)-7` -/
def P5421854154225526039.Spec : Prop :=
  ∀ n, P5421854154225526039.a n = A086577 n

theorem P5421854154225526039.correct : P5421854154225526039.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P5421854154225526039.a, A086577.P14556633817939270986.a, A199686, A199686.P17827546866807194332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P11375358199408912182

`lcm(2, A086574(n))`
-/

namespace A086577.P11375358199408912182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A086574 n)

end

end A086577.P11375358199408912182

namespace A086577

/-- `lcm(2, A086574(n))` -/
def P11375358199408912182.Spec : Prop :=
  ∀ n, (P11375358199408912182.a n : ℤ) = A086577 n

end A086577

/-! ## A086577.P3032167785947993566

`Δ[A002280(n)]-6`
-/

namespace A086577.P3032167785947993566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 6

end

end A086577.P3032167785947993566

namespace A086577

/-- `Δ[A002280(n)]-6` -/
def P3032167785947993566.Spec : Prop :=
  ∀ n, P3032167785947993566.a n = A086577 n

end A086577

/-! ## A086577.P5184474716335933663

`A099151(n+1)-5`
-/

namespace A086577.P5184474716335933663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099151 (n + 1) - 5

end

end A086577.P5184474716335933663

namespace A086577

/-- `A099151(n+1)-5` -/
def P5184474716335933663.Spec : Prop :=
  ∀ n, P5184474716335933663.a n = A086577 n

theorem P5184474716335933663.correct : P5184474716335933663.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P5184474716335933663.a, A086577.P14556633817939270986.a, A099151, A099151.P15911777622680170341.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P6410371541859321078

`A090019(n+1)-6`
-/

namespace A086577.P6410371541859321078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 (n + 1) - 6

end

end A086577.P6410371541859321078

namespace A086577

/-- `A090019(n+1)-6` -/
def P6410371541859321078.Spec : Prop :=
  ∀ n, P6410371541859321078.a n = A086577 n

end A086577

/-! ## A086577.P5252691349049077573

`Δ[2*A002277(n)]-6`
-/

namespace A086577.P5252691349049077573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 6

end

end A086577.P5252691349049077573

namespace A086577

/-- `Δ[2*A002277(n)]-6` -/
def P5252691349049077573.Spec : Prop :=
  ∀ n, P5252691349049077573.a n = A086577 n

end A086577

/-! ## A086577.P4450431015451451360

`A086576(n)+A002283(n)`
-/

namespace A086577.P4450431015451451360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086576 n + A002283 n

end

end A086577.P4450431015451451360

namespace A086577

/-- `A086576(n)+A002283(n)` -/
def P4450431015451451360.Spec : Prop :=
  ∀ n, P4450431015451451360.a n = A086577 n

theorem P4450431015451451360.correct : P4450431015451451360.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P4450431015451451360.a, A086577.P14556633817939270986.a, A002283, A002283.P2252111154706607536.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P17085761685281102242

`A086575(n)+A086573(n)`
-/

namespace A086577.P17085761685281102242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 n + A086573 n

end

end A086577.P17085761685281102242

namespace A086577

/-- `A086575(n)+A086573(n)` -/
def P17085761685281102242.Spec : Prop :=
  ∀ n, P17085761685281102242.a n = A086577 n

theorem P17085761685281102242.correct : P17085761685281102242.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P17085761685281102242.a, A086577.P14556633817939270986.a, A086573, A086573.P12459450006111940125.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P118003439829073868

`A086578(n)-A002283(n)`
-/

namespace A086577.P118003439829073868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086578 n - A002283 n

end

end A086577.P118003439829073868

namespace A086577

/-- `A086578(n)-A002283(n)` -/
def P118003439829073868.Spec : Prop :=
  ∀ n, P118003439829073868.a n = A086577 n

theorem P118003439829073868.correct : P118003439829073868.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P118003439829073868.a, A086577.P14556633817939270986.a, A002283, A002283.P2252111154706607536.a, A086578, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P9639194787528617519

`A086579(n)-A086573(n)`
-/

namespace A086577.P9639194787528617519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 n - A086573 n

end

end A086577.P9639194787528617519

namespace A086577

/-- `A086579(n)-A086573(n)` -/
def P9639194787528617519.Spec : Prop :=
  ∀ n, P9639194787528617519.a n = A086577 n

theorem P9639194787528617519.correct : P9639194787528617519.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P9639194787528617519.a, A086577.P14556633817939270986.a, A086573, A086573.P12459450006111940125.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P505983879977765816

`A086580(n)-A086574(n)`
-/

namespace A086577.P505983879977765816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086580 n - A086574 n

end

end A086577.P505983879977765816

namespace A086577

/-- `A086580(n)-A086574(n)` -/
def P505983879977765816.Spec : Prop :=
  ∀ n, P505983879977765816.a n = A086577 n

theorem P505983879977765816.correct : P505983879977765816.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P505983879977765816.a, A086577.P14556633817939270986.a, A086574, A086574.P5714779003490660337.a, A086580, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P3733634759512334587

`A002283(n)+A124167(n)/2`
-/

namespace A086577.P3733634759512334587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002283 n : ℚ) + (A124167 n : ℚ) / 2

end

end A086577.P3733634759512334587

namespace A086577

/-- `A002283(n)+A124167(n)/2` -/
def P3733634759512334587.Spec : Prop :=
  ∀ n, P3733634759512334587.a n = (A086577 n : ℚ)

theorem P3733634759512334587.correct : P3733634759512334587.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P3733634759512334587.a, A086577.P14556633817939270986.a, A002283, A002283.P2252111154706607536.a, A124167, A124167.P13896893363234218032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P10172179268335457243

`A086578(n)-A086573(n)/2`
-/

namespace A086577.P10172179268335457243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086578 n : ℚ) - (A086573 n : ℚ) / 2

end

end A086577.P10172179268335457243

namespace A086577

/-- `A086578(n)-A086573(n)/2` -/
def P10172179268335457243.Spec : Prop :=
  ∀ n, P10172179268335457243.a n = (A086577 n : ℚ)

theorem P10172179268335457243.correct : P10172179268335457243.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P10172179268335457243.a, A086577.P14556633817939270986.a, A086573, A086573.P12459450006111940125.a, A086578, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P8675259399432284098

`A002283(n)+A086575(n)+A002283(n)`
-/

namespace A086577.P8675259399432284098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A086575 n + A002283 n)

end

end A086577.P8675259399432284098

namespace A086577

/-- `A002283(n)+A086575(n)+A002283(n)` -/
def P8675259399432284098.Spec : Prop :=
  ∀ n, P8675259399432284098.a n = A086577 n

theorem P8675259399432284098.correct : P8675259399432284098.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P8675259399432284098.a, A086577.P14556633817939270986.a, A002283, A002283.P2252111154706607536.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-! ## A086577.P12712088069650074405

`A086579(n)-A002283(n)-A002283(n)`
-/

namespace A086577.P12712088069650074405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 n - A002283 n - A002283 n

end

end A086577.P12712088069650074405

namespace A086577

/-- `A086579(n)-A002283(n)-A002283(n)` -/
def P12712088069650074405.Spec : Prop :=
  ∀ n, P12712088069650074405.a n = A086577 n

theorem P12712088069650074405.correct : P12712088069650074405.Spec := by
  intro n
  simp only [A086577, Nat.add_sub_cancel, A086577.P12712088069650074405.a, A086577.P14556633817939270986.a, A002283, A002283.P2252111154706607536.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086577

/-!
# A086578: a(n) = 7*(10^n - 1).

The programs for A086578, the canonical program `A086578.P221630398466308766` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086578 has offset 0).

The definition of A086578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(10^n-1)` (program `A086578.P221630398466308766`, by `A086578.P221630398466308766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086578.P221630398466308766

`7*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086578

/-- `7*(10^n-1)` -/
def P221630398466308766.Spec : Prop :=
  ∀ n, P221630398466308766.a n = A086578 n

theorem P221630398466308766.correct : P221630398466308766.Spec := by
  intro n
  simp only [A086578]

end A086578

/-! ## A086578.P16590012158852168406

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=63`
-/

namespace A086578.P16590012158852168406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 63] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086578.P16590012158852168406

namespace A086578

/-- `11*a(n-1)-10*a(n-2)` -/
def P16590012158852168406.Spec : Prop :=
  ∀ n, P16590012158852168406.a n = A086578 n

theorem P16590012158852168406.correct : P16590012158852168406.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086578, Nat.add_sub_cancel, A086578.P16590012158852168406.a, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086578, Nat.add_sub_cancel, A086578.P16590012158852168406.a, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086578

/-! ## A086578.P15583439427573128522

`lcm(7, 10^n)-7`
-/

namespace A086578.P15583439427573128522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 7 (10 ^ n) : ℤ) - 7

end

end A086578.P15583439427573128522

namespace A086578

/-- `lcm(7, 10^n)-7` -/
def P15583439427573128522.Spec : Prop :=
  ∀ n, P15583439427573128522.a n = A086578 n

end A086578

/-! ## A086578.P1916256437659993223

`10*a(n-1)+63` with `a(0)=0`
-/

namespace A086578.P1916256437659993223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 63

end

end A086578.P1916256437659993223

namespace A086578

/-- `10*a(n-1)+63` -/
def P1916256437659993223.Spec : Prop :=
  ∀ n, (P1916256437659993223.a n : ℤ) = A086578 n

theorem P1916256437659993223.correct : P1916256437659993223.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086578, Nat.add_sub_cancel, A086578.P1916256437659993223.a, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086578, Nat.add_sub_cancel, A086578.P1916256437659993223.a, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086578

/-! ## A086578.P9018918814133051530

`A198699(n)-6`
-/

namespace A086578.P9018918814133051530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198699 n - 6

end

end A086578.P9018918814133051530

namespace A086578

/-- `A198699(n)-6` -/
def P9018918814133051530.Spec : Prop :=
  ∀ n, P9018918814133051530.a n = A086578 n

theorem P9018918814133051530.correct : P9018918814133051530.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P9018918814133051530.a, A086578.P221630398466308766.a, A198699, A198699.P17172566918151767651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P8565717202182097281

`A199687(n)-8`
-/

namespace A086578.P8565717202182097281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199687 n - 8

end

end A086578.P8565717202182097281

namespace A086578

/-- `A199687(n)-8` -/
def P8565717202182097281.Spec : Prop :=
  ∀ n, P8565717202182097281.a n = A086578 n

theorem P8565717202182097281.correct : P8565717202182097281.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P8565717202182097281.a, A086578.P221630398466308766.a, A199687, A199687.P1808707116727653367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P17689056093873376401

`Δ[A002281(n)]-7`
-/

namespace A086578.P17689056093873376401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 7

end

end A086578.P17689056093873376401

namespace A086578

/-- `Δ[A002281(n)]-7` -/
def P17689056093873376401.Spec : Prop :=
  ∀ n, P17689056093873376401.a n = A086578 n

end A086578

/-! ## A086578.P10818079230961287721

`A196662(n+1)-7`
-/

namespace A086578.P10818079230961287721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 (n + 1) - 7

end

end A086578.P10818079230961287721

namespace A086578

/-- `A196662(n+1)-7` -/
def P10818079230961287721.Spec : Prop :=
  ∀ n, P10818079230961287721.a n = A086578 n

end A086578

/-! ## A086578.P8912256474598600560

`A086577(n)+A002283(n)`
-/

namespace A086578.P8912256474598600560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086577 n + A002283 n

end

end A086578.P8912256474598600560

namespace A086578

/-- `A086577(n)+A002283(n)` -/
def P8912256474598600560.Spec : Prop :=
  ∀ n, P8912256474598600560.a n = A086578 n

theorem P8912256474598600560.correct : P8912256474598600560.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P8912256474598600560.a, A086578.P221630398466308766.a, A002283, A002283.P2252111154706607536.a, A086577, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P13908163823368392740

`A086575(n)+A086574(n)`
-/

namespace A086578.P13908163823368392740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 n + A086574 n

end

end A086578.P13908163823368392740

namespace A086578

/-- `A086575(n)+A086574(n)` -/
def P13908163823368392740.Spec : Prop :=
  ∀ n, P13908163823368392740.a n = A086578 n

theorem P13908163823368392740.correct : P13908163823368392740.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P13908163823368392740.a, A086578.P221630398466308766.a, A086574, A086574.P5714779003490660337.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P15424459445862352082

`A086576(n)+A086573(n)`
-/

namespace A086578.P15424459445862352082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086576 n + A086573 n

end

end A086578.P15424459445862352082

namespace A086578

/-- `A086576(n)+A086573(n)` -/
def P15424459445862352082.Spec : Prop :=
  ∀ n, P15424459445862352082.a n = A086578 n

theorem P15424459445862352082.correct : P15424459445862352082.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P15424459445862352082.a, A086578.P221630398466308766.a, A086573, A086573.P12459450006111940125.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P2590390800548832409

`A086579(n)-A002283(n)`
-/

namespace A086578.P2590390800548832409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 n - A002283 n

end

end A086578.P2590390800548832409

namespace A086578

/-- `A086579(n)-A002283(n)` -/
def P2590390800548832409.Spec : Prop :=
  ∀ n, P2590390800548832409.a n = A086578 n

theorem P2590390800548832409.correct : P2590390800548832409.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P2590390800548832409.a, A086578.P221630398466308766.a, A002283, A002283.P2252111154706607536.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P15366481022326797979

`A086580(n)-A086573(n)`
-/

namespace A086578.P15366481022326797979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086580 n - A086573 n

end

end A086578.P15366481022326797979

namespace A086578

/-- `A086580(n)-A086573(n)` -/
def P15366481022326797979.Spec : Prop :=
  ∀ n, P15366481022326797979.a n = A086578 n

theorem P15366481022326797979.correct : P15366481022326797979.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P15366481022326797979.a, A086578.P221630398466308766.a, A086573, A086573.P12459450006111940125.a, A086580, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P7760857860958497911

`A086574(n)+2*A086573(n)`
-/

namespace A086578.P7760857860958497911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086574 n + 2 * A086573 n

end

end A086578.P7760857860958497911

namespace A086578

/-- `A086574(n)+2*A086573(n)` -/
def P7760857860958497911.Spec : Prop :=
  ∀ n, P7760857860958497911.a n = A086578 n

theorem P7760857860958497911.correct : P7760857860958497911.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P7760857860958497911.a, A086578.P221630398466308766.a, A086573, A086573.P12459450006111940125.a, A086574, A086574.P5714779003490660337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P5376001818549263672

`A086575(n)+3*A002283(n)`
-/

namespace A086578.P5376001818549263672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 n + 3 * A002283 n

end

end A086578.P5376001818549263672

namespace A086578

/-- `A086575(n)+3*A002283(n)` -/
def P5376001818549263672.Spec : Prop :=
  ∀ n, P5376001818549263672.a n = A086578 n

theorem P5376001818549263672.correct : P5376001818549263672.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P5376001818549263672.a, A086578.P221630398466308766.a, A002283, A002283.P2252111154706607536.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P2629108618160929895

`2*A086576(n)-A086574(n)`
-/

namespace A086578.P2629108618160929895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086576 n - A086574 n

end

end A086578.P2629108618160929895

namespace A086578

/-- `2*A086576(n)-A086574(n)` -/
def P2629108618160929895.Spec : Prop :=
  ∀ n, P2629108618160929895.a n = A086578 n

theorem P2629108618160929895.correct : P2629108618160929895.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P2629108618160929895.a, A086578.P221630398466308766.a, A086574, A086574.P5714779003490660337.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P2426620468064383581

`A086574(n)+A086579(n)/2`
-/

namespace A086578.P2426620468064383581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086574 n : ℚ) + (A086579 n : ℚ) / 2

end

end A086578.P2426620468064383581

namespace A086578

/-- `A086574(n)+A086579(n)/2` -/
def P2426620468064383581.Spec : Prop :=
  ∀ n, P2426620468064383581.a n = (A086578 n : ℚ)

theorem P2426620468064383581.correct : P2426620468064383581.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P2426620468064383581.a, A086578.P221630398466308766.a, A086574, A086574.P5714779003490660337.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P15644992705615424013

`A086577(n)+A086573(n)/2`
-/

namespace A086578.P15644992705615424013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086577 n : ℚ) + (A086573 n : ℚ) / 2

end

end A086578.P15644992705615424013

namespace A086578

/-- `A086577(n)+A086573(n)/2` -/
def P15644992705615424013.Spec : Prop :=
  ∀ n, P15644992705615424013.a n = (A086578 n : ℚ)

theorem P15644992705615424013.correct : P15644992705615424013.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P15644992705615424013.a, A086578.P221630398466308766.a, A086573, A086573.P12459450006111940125.a, A086577, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-! ## A086578.P18147755752191314637

`2*A199684(n)-A253213(n)`
-/

namespace A086578.P18147755752191314637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199684 n - A253213 n

end

end A086578.P18147755752191314637

namespace A086578

/-- `2*A199684(n)-A253213(n)` -/
def P18147755752191314637.Spec : Prop :=
  ∀ n, P18147755752191314637.a n = A086578 n

theorem P18147755752191314637.correct : P18147755752191314637.Spec := by
  intro n
  simp only [A086578, Nat.add_sub_cancel, A086578.P18147755752191314637.a, A086578.P221630398466308766.a, A199684, A199684.P9033483143699247496.a, A253213, A253213.P2298809245132178670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086578

/-!
# A086579: a(n) = 8*(10^n - 1).

The programs for A086579, the canonical program `A086579.P2736226190414845957` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086579 has offset 0).

The definition of A086579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(10^n-1)` (program `A086579.P2736226190414845957`, by `A086579.P2736226190414845957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086579.P2736226190414845957

`8*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086579

/-- `8*(10^n-1)` -/
def P2736226190414845957.Spec : Prop :=
  ∀ n, P2736226190414845957.a n = A086579 n

theorem P2736226190414845957.correct : P2736226190414845957.Spec := by
  intro n
  simp only [A086579]

end A086579

/-! ## A086579.P16675342727490440771

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=72`
-/

namespace A086579.P16675342727490440771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 72] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086579.P16675342727490440771

namespace A086579

/-- `11*a(n-1)-10*a(n-2)` -/
def P16675342727490440771.Spec : Prop :=
  ∀ n, P16675342727490440771.a n = A086579 n

theorem P16675342727490440771.correct : P16675342727490440771.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086579, Nat.add_sub_cancel, A086579.P16675342727490440771.a, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086579, Nat.add_sub_cancel, A086579.P16675342727490440771.a, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086579

/-! ## A086579.P14475130426836215516

`lcm(8, 1-10^n)`
-/

namespace A086579.P14475130426836215516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (1 - (10 ^ n : ℤ))

end

end A086579.P14475130426836215516

namespace A086579

/-- `lcm(8, 1-10^n)` -/
def P14475130426836215516.Spec : Prop :=
  ∀ n, (P14475130426836215516.a n : ℤ) = A086579 n

end A086579

/-! ## A086579.P1498115734387357798

`10*a(n-1)+72` with `a(0)=0`
-/

namespace A086579.P1498115734387357798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 72

end

end A086579.P1498115734387357798

namespace A086579

/-- `10*a(n-1)+72` -/
def P1498115734387357798.Spec : Prop :=
  ∀ n, (P1498115734387357798.a n : ℤ) = A086579 n

theorem P1498115734387357798.correct : P1498115734387357798.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086579, Nat.add_sub_cancel, A086579.P1498115734387357798.a, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086579, Nat.add_sub_cancel, A086579.P1498115734387357798.a, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086579

/-! ## A086579.P8023104595668732302

`∑[10*a(n-1)]` with `a(0)=0, a(1)=72`
-/

namespace A086579.P8023104595668732302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 72] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086579.P8023104595668732302

namespace A086579

/-- `∑[10*a(n-1)]` -/
def P8023104595668732302.Spec : Prop :=
  ∀ n, (P8023104595668732302.a n : ℤ) = A086579 n

end A086579

/-! ## A086579.P475119124535414308

`A100412(n)-1`
-/

namespace A086579.P475119124535414308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100412 n - 1

end

end A086579.P475119124535414308

namespace A086579

/-- `A100412(n)-1` -/
def P475119124535414308.Spec : Prop :=
  ∀ n, P475119124535414308.a n = A086579 n

theorem P475119124535414308.correct : P475119124535414308.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P475119124535414308.a, A086579.P2736226190414845957.a, A100412, A100412.P15674556546461358470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P13163983414769379668

`A198973(n)-7`
-/

namespace A086579.P13163983414769379668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198973 n - 7

end

end A086579.P13163983414769379668

namespace A086579

/-- `A198973(n)-7` -/
def P13163983414769379668.Spec : Prop :=
  ∀ n, P13163983414769379668.a n = A086579 n

theorem P13163983414769379668.correct : P13163983414769379668.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P13163983414769379668.a, A086579.P2736226190414845957.a, A198973, A198973.P11116975079667283746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P15852758331434391455

`A199689(n)-9`
-/

namespace A086579.P15852758331434391455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199689 n - 9

end

end A086579.P15852758331434391455

namespace A086579

/-- `A199689(n)-9` -/
def P15852758331434391455.Spec : Prop :=
  ∀ n, P15852758331434391455.a n = A086579 n

theorem P15852758331434391455.correct : P15852758331434391455.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P15852758331434391455.a, A086579.P2736226190414845957.a, A199689, A199689.P13104816400412271063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P15453257813562431044

`Δ[A002282(n)]-8`
-/

namespace A086579.P15453257813562431044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 8

end

end A086579.P15453257813562431044

namespace A086579

/-- `Δ[A002282(n)]-8` -/
def P15453257813562431044.Spec : Prop :=
  ∀ n, P15453257813562431044.a n = A086579 n

end A086579

/-! ## A086579.P11804116205125399233

`A346178(n+1)-8`
-/

namespace A086579.P11804116205125399233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 (n + 1) - 8

end

end A086579.P11804116205125399233

namespace A086579

/-- `A346178(n+1)-8` -/
def P11804116205125399233.Spec : Prop :=
  ∀ n, P11804116205125399233.a n = A086579 n

end A086579

/-! ## A086579.P3327225614929900781

`A086578(n)+A002283(n)`
-/

namespace A086579.P3327225614929900781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086578 n + A002283 n

end

end A086579.P3327225614929900781

namespace A086579

/-- `A086578(n)+A002283(n)` -/
def P3327225614929900781.Spec : Prop :=
  ∀ n, P3327225614929900781.a n = A086579 n

theorem P3327225614929900781.correct : P3327225614929900781.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P3327225614929900781.a, A086579.P2736226190414845957.a, A002283, A002283.P2252111154706607536.a, A086578, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P3485352732852620726

`A086575(n)+A086575(n)`
-/

namespace A086579.P3485352732852620726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 n + A086575 n

end

end A086579.P3485352732852620726

namespace A086579

/-- `A086575(n)+A086575(n)` -/
def P3485352732852620726.Spec : Prop :=
  ∀ n, P3485352732852620726.a n = A086579 n

theorem P3485352732852620726.correct : P3485352732852620726.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P3485352732852620726.a, A086579.P2736226190414845957.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P14254976411505236210

`A086576(n)+A086574(n)`
-/

namespace A086579.P14254976411505236210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086576 n + A086574 n

end

end A086579.P14254976411505236210

namespace A086579

/-- `A086576(n)+A086574(n)` -/
def P14254976411505236210.Spec : Prop :=
  ∀ n, P14254976411505236210.a n = A086579 n

theorem P14254976411505236210.correct : P14254976411505236210.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P14254976411505236210.a, A086579.P2736226190414845957.a, A086574, A086574.P5714779003490660337.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P16751791654711732064

`A086577(n)+A086573(n)`
-/

namespace A086579.P16751791654711732064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086577 n + A086573 n

end

end A086579.P16751791654711732064

namespace A086579

/-- `A086577(n)+A086573(n)` -/
def P16751791654711732064.Spec : Prop :=
  ∀ n, P16751791654711732064.a n = A086579 n

theorem P16751791654711732064.correct : P16751791654711732064.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P16751791654711732064.a, A086579.P2736226190414845957.a, A086573, A086573.P12459450006111940125.a, A086577, A086577.P14556633817939270986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P3128040397157988875

`A086580(n)-A002283(n)`
-/

namespace A086579.P3128040397157988875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086580 n - A002283 n

end

end A086579.P3128040397157988875

namespace A086579

/-- `A086580(n)-A002283(n)` -/
def P3128040397157988875.Spec : Prop :=
  ∀ n, P3128040397157988875.a n = A086579 n

theorem P3128040397157988875.correct : P3128040397157988875.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P3128040397157988875.a, A086579.P2736226190414845957.a, A002283, A002283.P2252111154706607536.a, A086580, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P5062638376208856928

`2*A086576(n)-A086573(n)`
-/

namespace A086579.P5062638376208856928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086576 n - A086573 n

end

end A086579.P5062638376208856928

namespace A086579

/-- `2*A086576(n)-A086573(n)` -/
def P5062638376208856928.Spec : Prop :=
  ∀ n, P5062638376208856928.a n = A086579 n

theorem P5062638376208856928.correct : P5062638376208856928.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P5062638376208856928.a, A086579.P2736226190414845957.a, A086573, A086573.P12459450006111940125.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P13221607417743213769

`A086578(n)+A086573(n)/2`
-/

namespace A086579.P13221607417743213769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086578 n : ℚ) + (A086573 n : ℚ) / 2

end

end A086579.P13221607417743213769

namespace A086579

/-- `A086578(n)+A086573(n)/2` -/
def P13221607417743213769.Spec : Prop :=
  ∀ n, P13221607417743213769.a n = (A086579 n : ℚ)

theorem P13221607417743213769.correct : P13221607417743213769.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P13221607417743213769.a, A086579.P2736226190414845957.a, A086573, A086573.P12459450006111940125.a, A086578, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-! ## A086579.P8340101407921169627

`A086580(n)-A086573(n)/2`
-/

namespace A086579.P8340101407921169627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086580 n : ℚ) - (A086573 n : ℚ) / 2

end

end A086579.P8340101407921169627

namespace A086579

/-- `A086580(n)-A086573(n)/2` -/
def P8340101407921169627.Spec : Prop :=
  ∀ n, P8340101407921169627.a n = (A086579 n : ℚ)

theorem P8340101407921169627.correct : P8340101407921169627.Spec := by
  intro n
  simp only [A086579, Nat.add_sub_cancel, A086579.P8340101407921169627.a, A086579.P2736226190414845957.a, A086573, A086573.P12459450006111940125.a, A086580, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086579

/-!
# A086580: a(n) = 9*(10^n - 1).

The programs for A086580, the canonical program `A086580.P13951762902793127493` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086580 has offset 0).

The definition of A086580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(10^n-1)` (program `A086580.P13951762902793127493`, by `A086580.P13951762902793127493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086580.P13951762902793127493

`9*(10^n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086580

/-- `9*(10^n-1)` -/
def P13951762902793127493.Spec : Prop :=
  ∀ n, P13951762902793127493.a n = A086580 n

theorem P13951762902793127493.correct : P13951762902793127493.Spec := by
  intro n
  simp only [A086580]

end A086580

/-! ## A086580.P14737030130239658348

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=81`
-/

namespace A086580.P14737030130239658348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 81] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A086580.P14737030130239658348

namespace A086580

/-- `11*a(n-1)-10*a(n-2)` -/
def P14737030130239658348.Spec : Prop :=
  ∀ n, P14737030130239658348.a n = A086580 n

theorem P14737030130239658348.correct : P14737030130239658348.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086580, Nat.add_sub_cancel, A086580.P14737030130239658348.a, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086580, Nat.add_sub_cancel, A086580.P14737030130239658348.a, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086580

/-! ## A086580.P3534727387112963443

`lcm(9, 10^n)-9`
-/

namespace A086580.P3534727387112963443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (10 ^ n) : ℤ) - 9

end

end A086580.P3534727387112963443

namespace A086580

/-- `lcm(9, 10^n)-9` -/
def P3534727387112963443.Spec : Prop :=
  ∀ n, P3534727387112963443.a n = A086580 n

end A086580

/-! ## A086580.P15914135550972421121

`10*a(n-1)+81` with `a(0)=0`
-/

namespace A086580.P15914135550972421121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 81

end

end A086580.P15914135550972421121

namespace A086580

/-- `10*a(n-1)+81` -/
def P15914135550972421121.Spec : Prop :=
  ∀ n, (P15914135550972421121.a n : ℤ) = A086580 n

theorem P15914135550972421121.correct : P15914135550972421121.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086580, Nat.add_sub_cancel, A086580.P15914135550972421121.a, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086580, Nat.add_sub_cancel, A086580.P15914135550972421121.a, A086580.P13951762902793127493.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086580

/-! ## A086580.P688589841639699683

`A052268(n+1)-9`
-/

namespace A086580.P688589841639699683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052268 (n + 1) - 9

end

end A086580.P688589841639699683

namespace A086580

/-- `A052268(n+1)-9` -/
def P688589841639699683.Spec : Prop :=
  ∀ n, P688589841639699683.a n = A086580 n

theorem P688589841639699683.correct : P688589841639699683.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P688589841639699683.a, A086580.P13951762902793127493.a, A052268, A052268.P1431609730251872514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P8801907591789808125

`Δ[A004643(2*n)]-9`
-/

namespace A086580.P8801907591789808125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 9

end

end A086580.P8801907591789808125

namespace A086580

/-- `Δ[A004643(2*n)]-9` -/
def P8801907591789808125.Spec : Prop :=
  ∀ n, P8801907591789808125.a n = A086580 n

end A086580

/-! ## A086580.P2255551893102546867

`∑[record[Δ[A050683(n+1)]]]`
-/

namespace A086580.P2255551893102546867
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086580.P2255551893102546867

namespace A086580

/-- `∑[record[Δ[A050683(n+1)]]]` -/
def P2255551893102546867.Spec : Prop :=
  ∀ n, P2255551893102546867.a n = A086580 n

end A086580

/-! ## A086580.P9283954386741097311

`A050683(2*n+1)-9`
-/

namespace A086580.P9283954386741097311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (2 * n + 1) - 9

end

end A086580.P9283954386741097311

namespace A086580

/-- `A050683(2*n+1)-9` -/
def P9283954386741097311.Spec : Prop :=
  ∀ n, P9283954386741097311.a n = A086580 n

end A086580

/-! ## A086580.P12681852303729597666

`A086579(n)+A002283(n)`
-/

namespace A086580.P12681852303729597666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 n + A002283 n

end

end A086580.P12681852303729597666

namespace A086580

/-- `A086579(n)+A002283(n)` -/
def P12681852303729597666.Spec : Prop :=
  ∀ n, P12681852303729597666.a n = A086580 n

theorem P12681852303729597666.correct : P12681852303729597666.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P12681852303729597666.a, A086580.P13951762902793127493.a, A002283, A002283.P2252111154706607536.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P9014679274854044141

`A086576(n)+A086575(n)`
-/

namespace A086580.P9014679274854044141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086576 n + A086575 n

end

end A086580.P9014679274854044141

namespace A086580

/-- `A086576(n)+A086575(n)` -/
def P9014679274854044141.Spec : Prop :=
  ∀ n, P9014679274854044141.a n = A086580 n

theorem P9014679274854044141.correct : P9014679274854044141.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P9014679274854044141.a, A086580.P13951762902793127493.a, A086575, A086575.P2017417620639071348.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P10697014050477393350

`A124167(n)-A002283(n)`
-/

namespace A086580.P10697014050477393350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124167 n - A002283 n

end

end A086580.P10697014050477393350

namespace A086580

/-- `A124167(n)-A002283(n)` -/
def P10697014050477393350.Spec : Prop :=
  ∀ n, P10697014050477393350.a n = A086580 n

theorem P10697014050477393350.correct : P10697014050477393350.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P10697014050477393350.a, A086580.P13951762902793127493.a, A002283, A002283.P2252111154706607536.a, A124167, A124167.P13896893363234218032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P728752817971061997

`A086576(n)+4*A002283(n)`
-/

namespace A086580.P728752817971061997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086576 n + 4 * A002283 n

end

end A086580.P728752817971061997

namespace A086580

/-- `A086576(n)+4*A002283(n)` -/
def P728752817971061997.Spec : Prop :=
  ∀ n, P728752817971061997.a n = A086580 n

theorem P728752817971061997.correct : P728752817971061997.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P728752817971061997.a, A086580.P13951762902793127493.a, A002283, A002283.P2252111154706607536.a, A086576, A086576.P5175639682884898916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P576438614920764339

`A086575(n)+5*A002283(n)`
-/

namespace A086580.P576438614920764339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 n + 5 * A002283 n

end

end A086580.P576438614920764339

namespace A086580

/-- `A086575(n)+5*A002283(n)` -/
def P576438614920764339.Spec : Prop :=
  ∀ n, P576438614920764339.a n = A086580 n

theorem P576438614920764339.correct : P576438614920764339.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P576438614920764339.a, A086580.P13951762902793127493.a, A002283, A002283.P2252111154706607536.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P18382463176122902363

`A011557(n+1)-(A011557(n)+9)`
-/

namespace A086580.P18382463176122902363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - (A011557 n + 9)

end

end A086580.P18382463176122902363

namespace A086580

/-- `A011557(n+1)-(A011557(n)+9)` -/
def P18382463176122902363.Spec : Prop :=
  ∀ n, P18382463176122902363.a n = A086580 n

theorem P18382463176122902363.correct : P18382463176122902363.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P18382463176122902363.a, A086580.P13951762902793127493.a, A011557, A011557.P11220211478167790856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P13420645647651685162

`A070252(2*(n+1))-A269222(2*(n+1))`
-/

namespace A086580.P13420645647651685162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070252 (2 * (n + 1)) - A269222 (2 * (n + 1))

end

end A086580.P13420645647651685162

namespace A086580

/-- `A070252(2*(n+1))-A269222(2*(n+1))` -/
def P13420645647651685162.Spec : Prop :=
  ∀ n, P13420645647651685162.a n = A086580 n

end A086580

/-! ## A086580.P1316363668778219796

`A002283(n)+A086578(n)+A002283(n)`
-/

namespace A086580.P1316363668778219796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A086578 n + A002283 n)

end

end A086580.P1316363668778219796

namespace A086580

/-- `A002283(n)+A086578(n)+A002283(n)` -/
def P1316363668778219796.Spec : Prop :=
  ∀ n, P1316363668778219796.a n = A086580 n

theorem P1316363668778219796.correct : P1316363668778219796.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P1316363668778219796.a, A086580.P13951762902793127493.a, A002283, A002283.P2252111154706607536.a, A086578, A086578.P221630398466308766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P4986721710231194433

`A086579(n)-(A086578(n)-A086579(n))`
-/

namespace A086580.P4986721710231194433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086579 n - (A086578 n - A086579 n)

end

end A086580.P4986721710231194433

namespace A086580

/-- `A086579(n)-(A086578(n)-A086579(n))` -/
def P4986721710231194433.Spec : Prop :=
  ∀ n, P4986721710231194433.a n = A086580 n

theorem P4986721710231194433.correct : P4986721710231194433.Spec := by
  intro n
  simp only [A086580, Nat.add_sub_cancel, A086580.P4986721710231194433.a, A086580.P13951762902793127493.a, A086578, A086578.P221630398466308766.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086580

/-! ## A086580.P6989118647959937604

`A011557(n)*A180599(n)-A180599(n)`
-/

namespace A086580.P6989118647959937604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A180599 n - A180599 n

end

end A086580.P6989118647959937604

namespace A086580

/-- `A011557(n)*A180599(n)-A180599(n)` -/
def P6989118647959937604.Spec : Prop :=
  ∀ n, P6989118647959937604.a n = A086580 n

end A086580

/-!
# A086581: Number of Dyck paths of semilength n with no DDUU.

The programs for A086581, there is no canonical definition to state claims against.
-/

/-! ## A086581.P18140107024100547370

`A082582(n+1)`
-/

namespace A086581.P18140107024100547370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 1)

end

end A086581.P18140107024100547370

/-! ## A086581.P8457371336931073386

`A025242(n+2)`
-/

namespace A086581.P8457371336931073386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 2)

end

end A086581.P8457371336931073386

/-! ## A086581.P8583732597742217760

`A188464(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A086581.P8583732597742217760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A188464 (n - 2) + a (n - 1)

end

end A086581.P8583732597742217760

/-! ## A086581.P4526696251930525648

`ratio[A082582(n)]*A082582(n)`
-/

namespace A086581.P4526696251930525648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A082582 n : ℚ)

end

end A086581.P4526696251930525648

/-! ## A086581.P11387488141911889259

`A098978(∑[n+1-a(n-1)])` with `a(0)=1`
-/

namespace A086581.P11387488141911889259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086581.P11387488141911889259

/-! ## A086581.P1874198640800135822

`A098978(∑[A008619(n)])`
-/

namespace A086581.P1874198640800135822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086581.P1874198640800135822

/-! ## A086581.P13980481603181334542

`A098978(A087811(n+1))`
-/

namespace A086581.P13980481603181334542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1)).toNat

end

end A086581.P13980481603181334542

/-! ## A086581.P8886820012825404307

`A098978(A002620(n+2))`
-/

namespace A086581.P8886820012825404307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A002620 (n + 2)).toNat

end

end A086581.P8886820012825404307

/-! ## A086581.P14000371413323002095

`A098978(A076921(n+2))`
-/

namespace A086581.P14000371413323002095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A076921 (n + 2)).toNat

end

end A086581.P14000371413323002095

/-! ## A086581.P12204787096517815620

`A098978(A182531(n+2))`
-/

namespace A086581.P12204787096517815620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A182531 (n + 2)).toNat

end

end A086581.P12204787096517815620

/-! ## A086581.P13136473064344825381

`A098978(∑[A004526(n)+1])`
-/

namespace A086581.P13136473064344825381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086581.P13136473064344825381

/-! ## A086581.P16967949908130083254

`A098978(Δ[A266464(n+1)]-1)`
-/

namespace A086581.P16967949908130083254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (f1 (n + 1) - f1 n - 1).toNat

end

end A086581.P16967949908130083254

/-! ## A086581.P4440293106604018699

`A098978(A008619(n+1)*A008619(n))`
-/

namespace A086581.P4440293106604018699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A008619 (n + 1) * A008619 n).toNat

end

end A086581.P4440293106604018699

/-! ## A086581.P4990330464367451133

`A273342(∑[n]+2)`
-/

namespace A086581.P4990330464367451133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A086581.P4990330464367451133

/-!
# A086582: First 2^n terms of the self-convolution generates the next 2^n terms of this sequence after the 2^n-th term, for all n>=0, where a(0)=1.

The programs for A086582, there is no canonical definition to state claims against.
-/

/-! ## A086582.P2500860981682390857

`A086583(n-A053644(n))`
-/

namespace A086582.P2500860981682390857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086583 ((n : ℤ) - A053644 n).toNat

end

end A086582.P2500860981682390857

/-! ## A086582.P14698433755406165822

`A086583(xor(n, A053644(n)))`
-/

namespace A086582.P14698433755406165822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086583 (Int.xor (n : ℤ) (A053644 n)).toNat

end

end A086582.P14698433755406165822

/-! ## A086582.P7010927820560198265

`A048766(A000217(A107946(n+1))²)`
-/

namespace A086582.P7010927820560198265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000217 (A107946 (n + 1)).toNat ^ 2).toNat

end

end A086582.P7010927820560198265

/-! ## A086582.P2646793708827227072

`A359755(A008835(n+1)*A107946(n+1))`
-/

namespace A086582.P2646793708827227072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359755 (A008835 (n + 1) * A107946 (n + 1)).toNat

end

end A086582.P2646793708827227072

/-! ## A086582.P6621250950383806930

`A299230(A262078(n))`
-/

namespace A086582.P6621250950383806930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (A262078 n).toNat

end

end A086582.P6621250950383806930

/-!
# A086583: Self-convolution of A086582; the first 2^n terms of this sequence gives the 2^n terms that follow the 2^n-th term of A086582.

The programs for A086583, there is no canonical definition to state claims against.
-/

/-! ## A086583.P5521875060468230579

`A086582(record[A004457(n)])`
-/

namespace A086583.P5521875060468230579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086583.P5521875060468230579

/-! ## A086583.P8581535629135472785

`A086582(A115420(n+1))`
-/

namespace A086583.P8581535629135472785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 (A115420 (n + 1)).toNat

end

end A086583.P8581535629135472785

/-! ## A086583.P9857625825359130735

`A086582(A115421(n+1))`
-/

namespace A086583.P9857625825359130735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 (A115421 (n + 1)).toNat

end

end A086583.P9857625825359130735

/-! ## A086583.P14511237826539223286

`A086582(A004760(n+2))`
-/

namespace A086583.P14511237826539223286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 (A004760 (n + 2)).toNat

end

end A086583.P14511237826539223286

/-! ## A086583.P7482783859138425132

`A086582(A062383(n)+n)`
-/

namespace A086583.P7482783859138425132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 (A062383 n + (n : ℤ)).toNat

end

end A086583.P7482783859138425132

/-!
# A086584: a(n) = A086582(2^n-1) for n>=0.

The programs for A086584, there is no canonical definition to state claims against.
-/

/-! ## A086584.P9644751086197056356

`A086582(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086584.P9644751086197056356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086582 (2 ^ n - 1)

end

end A086584.P9644751086197056356

/-! ## A086584.P6773879126815087848

`A086583(ceil(2^(n-1))-1)`
-/

namespace A086584.P6773879126815087848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086583 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1).toNat

end

end A086584.P6773879126815087848

/-! ## A086584.P16550719103991631575

`A086582(A000225(n))%(2*4^n)`
-/

namespace A086584.P16550719103991631575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086582 (A000225 n).toNat) (2 * 4 ^ n : ℤ)

end

end A086584.P16550719103991631575

/-!
# A086585: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutations A085169/A085170.

The programs for A086585, there is no canonical definition to state claims against.
-/

/-! ## A086585.P4762143076236436297

`A182892(A004914(n+1))+A162777(n)`
-/

namespace A086585.P4762143076236436297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182892 (A004914 (n + 1)).toNat + A162777 n

end

end A086585.P4762143076236436297

/-! ## A086585.P16341042482740318708

`A130446(A000051(n)-A003476(n+1))`
-/

namespace A086585.P16341042482740318708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A000051 n - A003476 (n + 1)).toNat

end

end A086585.P16341042482740318708

/-!
# A086586: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutations A074681/A074682 and A074683/A074684.

The programs for A086586, there is no canonical definition to state claims against.
-/

/-! ## A086586.P5797577211086029792

`A228429(A008232(n)+A007878(n+1))`
-/

namespace A086586.P5797577211086029792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228429 (A008232 n + A007878 (n + 1)).toNat

end

end A086586.P5797577211086029792

/-!
# A086587: Least common multiple of cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutations A085169/A085170.

The programs for A086587, there is no canonical definition to state claims against.
-/

/-! ## A086587.P15478776102866446027

`∏[A176835(∏[ceil(2^(n-1))])]`
-/

namespace A086587.P15478776102866446027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086587.P15478776102866446027

/-! ## A086587.P13100079315632668863

`∏[∏{e}[A000010(2^C(n, 2)), #]]`
-/

namespace A086587.P13100079315632668863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ Nat.choose n 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086587.P13100079315632668863

/-! ## A086587.P8689132929086381685

`∏[∏{e}[A000010(2^(∑[n]-n)), #]]`
-/

namespace A086587.P8689132929086381685
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ) : ℤ))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086587.P8689132929086381685

/-!
# A086588: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutations A072088/A072089.

The programs for A086588, there is no canonical definition to state claims against.
-/

/-! ## A086588.P4027642340352893101

`A054404(A349973(n)+2)`
-/

namespace A086588.P4027642340352893101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A349973 n + 2).toNat

end

end A086588.P4027642340352893101

/-! ## A086588.P2502491045991644771

`floor(A318563(n+2)/A330948(2*n+1))`
-/

namespace A086588.P2502491045991644771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318563 (n + 2) : ℚ) / (A330948 (2 * n + 1) : ℚ)⌋

end

end A086588.P2502491045991644771

/-! ## A086588.P2310213835881599254

`A046155(A149488(n)+A084152(n))`
-/

namespace A086588.P2310213835881599254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A149488 n + A084152 n).toNat

end

end A086588.P2310213835881599254

/-! ## A086588.P13550613457423644509

`A145267(n)+A133501(A014514(n))`
-/

namespace A086588.P13550613457423644509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145267 n + A133501 (A014514 n).toNat

end

end A086588.P13550613457423644509

/-!
# A086589: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutations A072088/A072089.

The programs for A086589, there is no canonical definition to state claims against.
-/

/-! ## A086589.P9936290335093746700

`A000006(A000116(n+1))-n`
-/

namespace A086589.P9936290335093746700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000116 (n + 1)).toNat - (n : ℤ)

end

end A086589.P9936290335093746700

/-! ## A086589.P10023451009329914599

`A000006(A000013(2*(n+1)))-n`
-/

namespace A086589.P10023451009329914599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000013 (2 * (n + 1))).toNat - (n : ℤ)

end

end A086589.P10023451009329914599

/-! ## A086589.P13174028114865771796

`A179006(n)+A000006(A088218(n))`
-/

namespace A086589.P13174028114865771796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 n + A000006 (A088218 n).toNat

end

end A086589.P13174028114865771796

/-! ## A086589.P15554042365835713945

`A267045(n)-lt[A267049(n), A267046(3*n+4)]`
-/

namespace A086589.P15554042365835713945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267046 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267045 n - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A086589.P15554042365835713945

/-!
# A086590: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutations A072088/A072089.

The programs for A086590, there is no canonical definition to state claims against.
-/

/-! ## A086590.P18298726494962224325

`A195108(A221547(n))`
-/

namespace A086590.P18298726494962224325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195108 (A221547 n).toNat

end

end A086590.P18298726494962224325

/-! ## A086590.P7621997261553348738

`A179977(A191389(n)+1)`
-/

namespace A086590.P7621997261553348738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179977 (A191389 n + 1).toNat

end

end A086590.P7621997261553348738

/-! ## A086590.P4585444264855737583

`A329200(A065497(n))+1`
-/

namespace A086590.P4585444264855737583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A065497 n).toNat + 1

end

end A086590.P4585444264855737583

/-! ## A086590.P5623076560126839316

`A392709(A145761(n+1))`
-/

namespace A086590.P5623076560126839316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392709 (A145761 (n + 1)).toNat

end

end A086590.P5623076560126839316

/-! ## A086590.P10109061158347055047

`A194057(A000031(n)-n)`
-/

namespace A086590.P10109061158347055047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194057 (A000031 n - (n : ℤ)).toNat

end

end A086590.P10109061158347055047

/-!
# A086591: Least common multiple of cycle sizes in range [A014137(n-1)..A014138(n-1)] of permutations A072088/A072089.

The programs for A086591, there is no canonical definition to state claims against.
-/

/-! ## A086591.P11713879797994072567

`A048996(or(7, n!))`
-/

namespace A086591.P11713879797994072567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 (Nat.lor 7 (Nat.factorial n))

end

end A086591.P11713879797994072567

/-! ## A086591.P16760864319384635077

`A319638(n+3)!/∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A086591.P16760864319384635077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A319638 (n + 3)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

end

end A086591.P16760864319384635077

/-! ## A086591.P8302214791224064521

`A327630(A007827(n))`
-/

namespace A086591.P8302214791224064521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327630 (A007827 n).toNat

end

end A086591.P8302214791224064521

/-! ## A086591.P7039578961523242918

`A178011(A232398(n!))`
-/

namespace A086591.P7039578961523242918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178011 (A232398 (Nat.factorial n)).toNat

end

end A086591.P7039578961523242918

/-!
# A086592: Denominators in left-hand half of Kepler's tree of fractions.

The programs for A086592, the canonical program `A086592.P9537863791654607074` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086592 has offset 1).

The definition of A086592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020650, A020651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086592.P9537863791654607074

`A020650(n+1)+A020651(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A086592

/-- `A020650(n+1)+A020651(n+1)` -/
def P9537863791654607074.Spec : Prop :=
  ∀ n, P9537863791654607074.a n = A086592 (n + 1)

theorem P9537863791654607074.correct : P9537863791654607074.Spec := by
  intro n
  simp only [A086592, Nat.add_sub_cancel]

end A086592

/-! ## A086592.P6312609046892647417

`A071585(A059893(n+1))`
-/

namespace A086592.P6312609046892647417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A059893 (n + 1)).toNat

end

end A086592.P6312609046892647417

namespace A086592

/-- `A071585(A059893(n+1))` -/
def P6312609046892647417.Spec : Prop :=
  ∀ n, P6312609046892647417.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P9845154323503861632

`A020650(2*(n+1))`
-/

namespace A086592.P9845154323503861632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (2 * (n + 1))

end

end A086592.P9845154323503861632

namespace A086592

/-- `A020650(2*(n+1))` -/
def P9845154323503861632.Spec : Prop :=
  ∀ n, P9845154323503861632.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P8087316228971865211

`A086593(ceil(n/2)+1)`
-/

namespace A086592.P8087316228971865211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (⌈(n : ℚ) / 2⌉ + 1).toNat

end

end A086592.P8087316228971865211

namespace A086592

/-- `A086593(ceil(n/2)+1)` -/
def P8087316228971865211.Spec : Prop :=
  ∀ n, P8087316228971865211.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P7870709161200927291

`A268087(A284459(n+1))`
-/

namespace A086592.P7870709161200927291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A284459 (n + 1)).toNat

end

end A086592.P7870709161200927291

namespace A086592

/-- `A268087(A284459(n+1))` -/
def P7870709161200927291.Spec : Prop :=
  ∀ n, P7870709161200927291.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P8938345400858919860

`A294442(n+1)+A020650(n+1)`
-/

namespace A086592.P8938345400858919860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (n + 1) + A020650 (n + 1)

end

end A086592.P8938345400858919860

namespace A086592

/-- `A294442(n+1)+A020650(n+1)` -/
def P8938345400858919860.Spec : Prop :=
  ∀ n, P8938345400858919860.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P6001670173544190037

`A245327(A054429(n+1))+A020651(n+1)`
-/

namespace A086592.P6001670173544190037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A054429 (n + 1)).toNat + A020651 (n + 1)

end

end A086592.P6001670173544190037

namespace A086592

/-- `A245327(A054429(n+1))+A020651(n+1)` -/
def P6001670173544190037.Spec : Prop :=
  ∀ n, P6001670173544190037.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P14214259346540109586

`A086593(n+2)-A020651(n+1)`
-/

namespace A086592.P14214259346540109586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 2) - A020651 (n + 1)

end

end A086592.P14214259346540109586

namespace A086592

/-- `A086593(n+2)-A020651(n+1)` -/
def P14214259346540109586.Spec : Prop :=
  ∀ n, P14214259346540109586.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P17553726623855882449

`A086593(n+2)-A294442(n+1)`
-/

namespace A086592.P17553726623855882449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 2) - A294442 (n + 1)

end

end A086592.P17553726623855882449

namespace A086592

/-- `A086593(n+2)-A294442(n+1)` -/
def P17553726623855882449.Spec : Prop :=
  ∀ n, P17553726623855882449.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P13791572158013392252

`A020650(n+1)+A020650(A065190(n+1))`
-/

namespace A086592.P13791572158013392252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (n + 1) + A020650 (A065190 (n + 1)).toNat

end

end A086592.P13791572158013392252

namespace A086592

/-- `A020650(n+1)+A020650(A065190(n+1))` -/
def P13791572158013392252.Spec : Prop :=
  ∀ n, P13791572158013392252.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P170116388924406122

`A020651(n+1)+A020651(A065190(n+1))`
-/

namespace A086592.P170116388924406122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (n + 1) + A020651 (A065190 (n + 1)).toNat

end

end A086592.P170116388924406122

namespace A086592

/-- `A020651(n+1)+A020651(A065190(n+1))` -/
def P170116388924406122.Spec : Prop :=
  ∀ n, P170116388924406122.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P10649432180636107601

`A071585(A080542(n+1))`
-/

namespace A086592.P10649432180636107601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A080542 (n + 1)).toNat

end

end A086592.P10649432180636107601

namespace A086592

/-- `A071585(A080542(n+1))` -/
def P10649432180636107601.Spec : Prop :=
  ∀ n, P10649432180636107601.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P13843345819387677710

`A268087(A258746(A231551(n+1)))`
-/

namespace A086592.P13843345819387677710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A258746 (A231551 (n + 1)).toNat).toNat

end

end A086592.P13843345819387677710

namespace A086592

/-- `A268087(A258746(A231551(n+1)))` -/
def P13843345819387677710.Spec : Prop :=
  ∀ n, P13843345819387677710.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P2612288607824864052

`A294442(2*n+3)`
-/

namespace A086592.P2612288607824864052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (2 * n + 3)

end

end A086592.P2612288607824864052

namespace A086592

/-- `A294442(2*n+3)` -/
def P2612288607824864052.Spec : Prop :=
  ∀ n, P2612288607824864052.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P10611135726627942298

`A273494(A059894(n+1))`
-/

namespace A086592.P10611135726627942298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (A059894 (n + 1)).toNat

end

end A086592.P10611135726627942298

namespace A086592

/-- `A273494(A059894(n+1))` -/
def P10611135726627942298.Spec : Prop :=
  ∀ n, P10611135726627942298.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P14219776647265801709

`A245328(2*A054429(n+1))`
-/

namespace A086592.P14219776647265801709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (2 * A054429 (n + 1)).toNat

end

end A086592.P14219776647265801709

namespace A086592

/-- `A245328(2*A054429(n+1))` -/
def P14219776647265801709.Spec : Prop :=
  ∀ n, P14219776647265801709.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P11491222534844512764

`A245328(2*A092569(n+1))`
-/

namespace A086592.P11491222534844512764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (2 * A092569 (n + 1)).toNat

end

end A086592.P11491222534844512764

namespace A086592

/-- `A245328(2*A092569(n+1))` -/
def P11491222534844512764.Spec : Prop :=
  ∀ n, P11491222534844512764.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P13741576740901292538

`A093875(2^floor(log2(n+1))+n+1)`
-/

namespace A086592.P13741576740901292538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 ^ Nat.log 2 (n + 1) + (n + 1))

end

end A086592.P13741576740901292538

namespace A086592

/-- `A093875(2^floor(log2(n+1))+n+1)` -/
def P13741576740901292538.Spec : Prop :=
  ∀ n, P13741576740901292538.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P17547175292689026385

`A114214(A038558(n+1))`
-/

namespace A086592.P17547175292689026385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A038558 (n + 1)).toNat

end

end A086592.P17547175292689026385

namespace A086592

/-- `A114214(A038558(n+1))` -/
def P17547175292689026385.Spec : Prop :=
  ∀ n, P17547175292689026385.a n = A086592 (n + 1)

end A086592

/-! ## A086592.P9875682789277867887

`A245327(A054429(2*(n+1)))`
-/

namespace A086592.P9875682789277867887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A054429 (2 * (n + 1))).toNat

end

end A086592.P9875682789277867887

namespace A086592

/-- `A245327(A054429(2*(n+1)))` -/
def P9875682789277867887.Spec : Prop :=
  ∀ n, P9875682789277867887.a n = A086592 (n + 1)

end A086592

/-!
# A086593: Bisection of A086592, denominators of the left-hand half of Kepler's tree of fractions.

The programs for A086593, the canonical program `A086593.P15080225113442346150` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086593 has offset 1).

The definition of A086593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071585, A071766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086593.P15080225113442346150

`A071585(n)+A071766(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A086593

/-- `A071585(n)+A071766(n)` -/
def P15080225113442346150.Spec : Prop :=
  ∀ n, P15080225113442346150.a n = A086593 (n + 1)

theorem P15080225113442346150.correct : P15080225113442346150.Spec := by
  intro n
  simp only [A086593, Nat.add_sub_cancel]

end A086593

/-! ## A086593.P10490213780669888466

`A086592(2*n+1)`
-/

namespace A086593.P10490213780669888466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (2 * n + 1)

end

end A086593.P10490213780669888466

namespace A086593

/-- `A086592(2*n+1)` -/
def P10490213780669888466.Spec : Prop :=
  ∀ n, P10490213780669888466.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P18427685319089739494

`A020651(4*(n+1)-1)`
-/

namespace A086593.P18427685319089739494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (4 * (n + 1) - 1)

end

end A086593.P18427685319089739494

namespace A086593

/-- `A020651(4*(n+1)-1)` -/
def P18427685319089739494.Spec : Prop :=
  ∀ n, P18427685319089739494.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P7907406270564699424

`A020650(4*(n+1)-2)`
-/

namespace A086593.P7907406270564699424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (4 * (n + 1) - 2)

end

end A086593.P7907406270564699424

namespace A086593

/-- `A020650(4*(n+1)-2)` -/
def P7907406270564699424.Spec : Prop :=
  ∀ n, P7907406270564699424.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P1534762315379602500

`A268087(A284459(2*n+1))`
-/

namespace A086593.P1534762315379602500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268087 (A284459 (2 * n + 1)).toNat

end

end A086593.P1534762315379602500

namespace A086593

/-- `A268087(A284459(2*n+1))` -/
def P1534762315379602500.Spec : Prop :=
  ∀ n, P1534762315379602500.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P5194411847926628122

`A294442(Δ[n²])+A294442(n)`
-/

namespace A086593.P5194411847926628122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A294442 n

end

end A086593.P5194411847926628122

namespace A086593

/-- `A294442(Δ[n²])+A294442(n)` -/
def P5194411847926628122.Spec : Prop :=
  ∀ n, P5194411847926628122.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P626394838086110177

`A071585(lt[2*n+1, xor(n, 2*n)]-1)`
-/

namespace A086593.P626394838086110177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1)

end

end A086593.P626394838086110177

namespace A086593

/-- `A071585(lt[2*n+1, xor(n, 2*n)]-1)` -/
def P626394838086110177.Spec : Prop :=
  ∀ n, P626394838086110177.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P17985062462943318457

`A071585(A092754(n+1))`
-/

namespace A086593.P17985062462943318457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A092754 (n + 1)).toNat

end

end A086593.P17985062462943318457

namespace A086593

/-- `A071585(A092754(n+1))` -/
def P17985062462943318457.Spec : Prop :=
  ∀ n, P17985062462943318457.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P7899525278008876989

`A071585(A004761(n+2))`
-/

namespace A086593.P7899525278008876989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A004761 (n + 2)).toNat

end

end A086593.P7899525278008876989

namespace A086593

/-- `A071585(A004761(n+2))` -/
def P7899525278008876989.Spec : Prop :=
  ∀ n, P7899525278008876989.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P3353639101529413218

`A071585(A053644(n+1)+n)`
-/

namespace A086593.P3353639101529413218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A053644 (n + 1) + (n : ℤ)).toNat

end

end A086593.P3353639101529413218

namespace A086593

/-- `A071585(A053644(n+1)+n)` -/
def P3353639101529413218.Spec : Prop :=
  ∀ n, P3353639101529413218.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P9870651556715102812

`A093875(2*n+1)+A071766(n)`
-/

namespace A086593.P9870651556715102812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (2 * n + 1) + A071766 n

end

end A086593.P9870651556715102812

namespace A086593

/-- `A093875(2*n+1)+A071766(n)` -/
def P9870651556715102812.Spec : Prop :=
  ∀ n, P9870651556715102812.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P16775556413455635860

`A294442(n)+A020651(2*n+1)`
-/

namespace A086593.P16775556413455635860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 n + A020651 (2 * n + 1)

end

end A086593.P16775556413455635860

namespace A086593

/-- `A294442(n)+A020651(2*n+1)` -/
def P16775556413455635860.Spec : Prop :=
  ∀ n, P16775556413455635860.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P14737387333277331216

`A020651(2*n+1)+A020650(2*n+1)`
-/

namespace A086593.P14737387333277331216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (2 * n + 1) + A020650 (2 * n + 1)

end

end A086593.P14737387333277331216

namespace A086593

/-- `A020651(2*n+1)+A020650(2*n+1)` -/
def P14737387333277331216.Spec : Prop :=
  ∀ n, P14737387333277331216.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P178466042048834299

`A071585(record[A063946(n)+1])`
-/

namespace A086593.P178466042048834299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086593.P178466042048834299

namespace A086593

/-- `A071585(record[A063946(n)+1])` -/
def P178466042048834299.Spec : Prop :=
  ∀ n, P178466042048834299.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P8141445296491707377

`A071585(A004760(n+1)+1)`
-/

namespace A086593.P8141445296491707377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A004760 (n + 1) + 1).toNat

end

end A086593.P8141445296491707377

namespace A086593

/-- `A071585(A004760(n+1)+1)` -/
def P8141445296491707377.Spec : Prop :=
  ∀ n, P8141445296491707377.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P15729902812499009820

`A071585(A063946(A059893(2*n+1)))`
-/

namespace A086593.P15729902812499009820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A063946 (A059893 (2 * n + 1)).toNat).toNat

end

end A086593.P15729902812499009820

namespace A086593

/-- `A071585(A063946(A059893(2*n+1)))` -/
def P15729902812499009820.Spec : Prop :=
  ∀ n, P15729902812499009820.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P14665809027918581884

`A294442(3*(n+1)+n)`
-/

namespace A086593.P14665809027918581884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (3 * (n + 1) + n)

end

end A086593.P14665809027918581884

namespace A086593

/-- `A294442(3*(n+1)+n)` -/
def P14665809027918581884.Spec : Prop :=
  ∀ n, P14665809027918581884.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P5400105524173687248

`A071585(A059893(2*n+1))`
-/

namespace A086593.P5400105524173687248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A059893 (2 * n + 1)).toNat

end

end A086593.P5400105524173687248

namespace A086593

/-- `A071585(A059893(2*n+1))` -/
def P5400105524173687248.Spec : Prop :=
  ∀ n, P5400105524173687248.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P16567629766420841670

`A245328(2*A054429(2*n+1))`
-/

namespace A086593.P16567629766420841670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (2 * A054429 (2 * n + 1)).toNat

end

end A086593.P16567629766420841670

namespace A086593

/-- `A245328(2*A054429(2*n+1))` -/
def P16567629766420841670.Spec : Prop :=
  ∀ n, P16567629766420841670.a n = A086593 (n + 1)

end A086593

/-! ## A086593.P5078490528552114927

`A245327(A054429(2*(2*n+1)))`
-/

namespace A086593.P5078490528552114927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A054429 (2 * (2 * n + 1))).toNat

end

end A086593.P5078490528552114927

namespace A086593

/-- `A245327(A054429(2*(2*n+1)))` -/
def P5078490528552114927.Spec : Prop :=
  ∀ n, P5078490528552114927.a n = A086593 (n + 1)

end A086593

/-!
# A086594: a(n) = 8*a(n-1) + a(n-2), starting with a(0)=2 and a(1)=8.

The programs for A086594, the canonical program `A086594.P4369032578959765259` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086594 has offset 0).

The definition of A086594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+a(n-2)` (program `A086594.P4369032578959765259`, by `A086594.P4369032578959765259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086594.P4369032578959765259

`8*a(n-1)+a(n-2)` with `a(0)=2, a(1)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086594

/-- `8*a(n-1)+a(n-2)` -/
def P4369032578959765259.Spec : Prop :=
  ∀ n, (P4369032578959765259.a n : ℤ) = A086594 n

theorem P4369032578959765259.correct : P4369032578959765259.Spec := by
  intro n
  simp only [A086594]

end A086594

/-! ## A086594.P18393443172260241075

`2*A088317(n)`
-/

namespace A086594.P18393443172260241075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088317 n

end

end A086594.P18393443172260241075

namespace A086594

/-- `2*A088317(n)` -/
def P18393443172260241075.Spec : Prop :=
  ∀ n, P18393443172260241075.a n = A086594 n

end A086594

/-! ## A086594.P16666848742307535828

`ogf((-2+8x)/(-1+8x+x^2))`
-/

namespace A086594.P16666848742307535828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -8, -1] n

end

end A086594.P16666848742307535828

namespace A086594

/-- `ogf((-2+8x)/(-1+8x+x^2))` -/
def P16666848742307535828.Spec : Prop :=
  ∀ n, P16666848742307535828.a n = A086594 n

end A086594

/-! ## A086594.P7848392585992467176

`(4+sqrt(17))^n+(4-sqrt(17))^n`
-/

namespace A086594.P7848392585992467176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 + Real.sqrt (17 : ℝ)) ^ n + (4 - Real.sqrt (17 : ℝ)) ^ n

end

end A086594.P7848392585992467176

namespace A086594

/-- `(4+sqrt(17))^n+(4-sqrt(17))^n` -/
def P7848392585992467176.Spec : Prop :=
  ∀ n, P7848392585992467176.a n = (A086594 n : ℝ)

theorem P7848392585992467176.correct : P7848392585992467176.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A086594, Nat.add_sub_cancel, A086594.P7848392585992467176.a, A086594.P4369032578959765259.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A086594, Nat.add_sub_cancel, A086594.P7848392585992467176.a, A086594.P4369032578959765259.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A086594

/-! ## A086594.P12083112950128785026

`floor(3*3*a(n-1)-(a(n-1)-a(n-2)))` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A086594.P12083112950128785026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  3 * (3 * a (n - 1)) - (a (n - 1) - a (n - 2))

end

end A086594.P12083112950128785026

namespace A086594

/-- `floor(3*3*a(n-1)-(a(n-1)-a(n-2)))` -/
def P12083112950128785026.Spec : Prop :=
  ∀ n, P12083112950128785026.a n = A086594 n

end A086594

/-! ## A086594.P7809751030990442001

`record[A174508(n)+1]`
-/

namespace A086594.P7809751030990442001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174508 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086594.P7809751030990442001

namespace A086594

/-- `record[A174508(n)+1]` -/
def P7809751030990442001.Spec : Prop :=
  ∀ n, P7809751030990442001.a n = A086594 n

end A086594

/-! ## A086594.P18017089559237884792

`lcm(A000689(A016921(n)), A088317(n))`
-/

namespace A086594.P18017089559237884792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000689 (A016921 n).toNat) (A088317 n)

end

end A086594.P18017089559237884792

namespace A086594

/-- `lcm(A000689(A016921(n)), A088317(n))` -/
def P18017089559237884792.Spec : Prop :=
  ∀ n, (P18017089559237884792.a n : ℤ) = A086594 n

end A086594

/-!
# A086595: Number of ways to arrange the numbers 1..n in a circle (up to direction) such that every two adjacent numbers are relatively prime.

The programs for A086595, there is no canonical definition to state claims against.
-/

/-! ## A086595.P15382054202083222647

`A102381(n+1)/(n+1)`
-/

namespace A086595.P15382054202083222647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102381 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A086595.P15382054202083222647

/-! ## A086595.P3914403897529175528

`A020639(A152763(n))*A242529(n+1)`
-/

namespace A086595.P3914403897529175528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A152763 n).toNat * A242529 (n + 1)

end

end A086595.P3914403897529175528

/-! ## A086595.P10430386460264900580

`A040001(A173522(n))*A242529(n+1)`
-/

namespace A086595.P10430386460264900580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A173522 n).toNat * A242529 (n + 1)

end

end A086595.P10430386460264900580

/-! ## A086595.P13071800374725801990

`A020639(A219654(n))*A242529(n+1)`
-/

namespace A086595.P13071800374725801990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A219654 n).toNat * A242529 (n + 1)

end

end A086595.P13071800374725801990

/-! ## A086595.P168400688185851318

`A014963(A016116(n))*A242529(n+1)`
-/

namespace A086595.P168400688185851318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016116 n).toNat * A242529 (n + 1)

end

end A086595.P168400688185851318

/-!
# A086597: Number of primitive prime factors in Fibonacci(n).

The programs for A086597, there is no canonical definition to state claims against.
-/

/-! ## A086597.P3065023479301980058

`∑{d}[n+1, A008683(#)*A022307((n+1)/#)]`
-/

namespace A086597.P3065023479301980058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A022307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086597.P3065023479301980058

/-! ## A086597.P6230297896002130970

`A022307(n+1)-A001221(A105602(n+1))`
-/

namespace A086597.P6230297896002130970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (n + 1) - A001221 (A105602 (n + 1)).toNat

end

end A086597.P6230297896002130970

/-! ## A086597.P16594137709286170767

`∑{e}[A178763(n+1), #]`
-/

namespace A086597.P16594137709286170767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086597.P16594137709286170767

/-! ## A086597.P5814516376678780589

`∑{p}[A178763(n+1), gcd(#, A038503(n))]`
-/

namespace A086597.P5814516376678780589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.gcd (p : ℤ) (A038503 n)

end

end A086597.P5814516376678780589

/-! ## A086597.P8078299236558181666

`∑{p}[A061446(n+1), val(A178763(n+1), #)]`
-/

namespace A086597.P8078299236558181666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A178763 (n + 1)).toNat p

end

end A086597.P8078299236558181666

/-!
# A086598: Number of distinct prime factors in Lucas(n).

The programs for A086598, there is no canonical definition to state claims against.
-/

/-! ## A086598.P8709238530566683288

`∑{e}[∏{p}[A000032(n), #], #]`
-/

namespace A086598.P8709238530566683288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A086598.P8709238530566683288

/-! ## A086598.P5321879718195015682

`∑{p}[A000032(n), A001221(#)]`
-/

namespace A086598.P5321879718195015682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A086598.P5321879718195015682

/-! ## A086598.P13236335511866054573

`∑{p}[A000032(n), A001222(#)]`
-/

namespace A086598.P13236335511866054573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A086598.P13236335511866054573

/-! ## A086598.P15252067955619807437

`∑{p}[A000032(n), A005361(#)]`
-/

namespace A086598.P15252067955619807437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005361 p

end

end A086598.P15252067955619807437

/-! ## A086598.P10999504228875575097

`∑{p}[A000032(n), A008833(#)]`
-/

namespace A086598.P10999504228875575097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008833 p

end

end A086598.P10999504228875575097

/-!
# A086599: Number of prime factors in Lucas(n), counting multiplicity.

The programs for A086599, there is no canonical definition to state claims against.
-/

/-! ## A086599.P3233130626956841999

`A095407(A003278(A272377(n)²))`
-/

namespace A086599.P3233130626956841999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A003278 (A272377 n ^ 2).toNat).toNat

end

end A086599.P3233130626956841999

/-! ## A086599.P9530395424528098464

`∑{e}[A000032(A280692(A325309(n+2)+1)+n), #]`
-/

namespace A086599.P9530395424528098464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A280692 (A325309 (n + 2) + 1).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086599.P9530395424528098464

/-! ## A086599.P16815294266688593709

`∑{e}[floor((-ϕ)^n)+1, #]`
-/

namespace A086599.P16815294266688593709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-Real.goldenRatio) ^ n⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086599.P16815294266688593709

/-! ## A086599.P7103447751311056122

`dr(∑{e}[A000032(n), #])`
-/

namespace A086599.P7103447751311056122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A086599.P7103447751311056122

/-! ## A086599.P3872420974243908335

`log2(∏{e}[A303427(2*n), 2^#])`
-/

namespace A086599.P3872420974243908335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p : ℕ) : ℝ)

end

end A086599.P3872420974243908335

