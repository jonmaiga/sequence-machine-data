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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A060602: Number of tilings of the d-dimensional zonotope constructed from d+3 vectors.

The programs for A060602, the canonical program `A060602.P16987508513754279043` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060602 has offset 0).

The definition of A060602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060602.P16987508513754279043

`2*A133546(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060602

/-- `2*A133546(n+2)` -/
def P16987508513754279043.Spec : Prop :=
  ∀ n, P16987508513754279043.a n = A060602 n

theorem P16987508513754279043.correct : P16987508513754279043.Spec := by
  intro n
  simp only [A060602]

end A060602

/-! ## A060602.P6750626666933297611

`∑[xor(2, 2^n+2*a(n-1))]` with `a(0)=8`
-/

namespace A060602.P6750626666933297611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  Nat.xor 2 (2 ^ n + 2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060602.P6750626666933297611

namespace A060602

/-- `∑[xor(2, 2^n+2*a(n-1))]` -/
def P6750626666933297611.Spec : Prop :=
  ∀ n, (P6750626666933297611.a n : ℤ) = A060602 n

end A060602

/-! ## A060602.P4450311948640339264

`-xor((n+7)*∑[2^n]-n, -1)`
-/

namespace A060602.P4450311948640339264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((((n + 7) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)) (-1)

end

end A060602.P4450311948640339264

namespace A060602

/-- `-xor((n+7)*∑[2^n]-n, -1)` -/
def P4450311948640339264.Spec : Prop :=
  ∀ n, P4450311948640339264.a n = A060602 n

end A060602

/-! ## A060602.P16341950340350400750

`2*(Δ[A027993(n)]-(n+1))`
-/

namespace A060602.P16341950340350400750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - (n + 1 : ℤ))

end

end A060602.P16341950340350400750

namespace A060602

/-- `2*(Δ[A027993(n)]-(n+1))` -/
def P16341950340350400750.Spec : Prop :=
  ∀ n, P16341950340350400750.a n = A060602 n

end A060602

/-! ## A060602.P2697024731629200440

`2*(A047860(n+1)-(n+1))`
-/

namespace A060602.P2697024731629200440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047860 (n + 1) - (n + 1 : ℤ))

end

end A060602.P2697024731629200440

namespace A060602

/-- `2*(A047860(n+1)-(n+1))` -/
def P2697024731629200440.Spec : Prop :=
  ∀ n, P2697024731629200440.a n = A060602 n

end A060602

/-! ## A060602.P13594313197285404834

`A027993(n+1)+2^(n+1)`
-/

namespace A060602.P13594313197285404834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027993 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A060602.P13594313197285404834

namespace A060602

/-- `A027993(n+1)+2^(n+1)` -/
def P13594313197285404834.Spec : Prop :=
  ∀ n, P13594313197285404834.a n = A060602 n

end A060602

/-! ## A060602.P5081353719062787546

`ogf((8-24x+22x^2-8x^3)/(1-6x+13x^2-12x^3+4x^4))`
-/

namespace A060602.P5081353719062787546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -24, 22, -8] [1, -6, 13, -12, 4] n

end

end A060602.P5081353719062787546

namespace A060602

/-- `ogf((8-24x+22x^2-8x^3)/(1-6x+13x^2-12x^3+4x^4))` -/
def P5081353719062787546.Spec : Prop :=
  ∀ n, P5081353719062787546.a n = A060602 n

end A060602

/-! ## A060602.P16511661365999697087

`Δ[(n+5)*(2^(n+1)-n)]`
-/

namespace A060602.P16511661365999697087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * ((2 ^ (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060602.P16511661365999697087

namespace A060602

/-- `Δ[(n+5)*(2^(n+1)-n)]` -/
def P16511661365999697087.Spec : Prop :=
  ∀ n, P16511661365999697087.a n = A060602 n

end A060602

/-!
# A060603: Number of ways of expressing an n-cycle in the symmetric group S_n as a product of n+1 transpositions.

The programs for A060603, the canonical program `A060603.P17147901780628367878` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060603 has offset 1).

The definition of A060603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060603.P17147901780628367878

`1/24*((n+1)²-1)*(n+1)^(n+2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060603

/-- `1/24*((n+1)²-1)*(n+1)^(n+2)` -/
def P17147901780628367878.Spec : Prop :=
  ∀ n, P17147901780628367878.a n = (A060603 (n + 1) : ℚ)

end A060603

/-!
# A060604: a(n) = binomial(prime(n), n) where prime(n) = n-th prime.

The programs for A060604, the canonical program `A060604.P2520145414761891817` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060604 has offset 1).

The definition of A060604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+1), n+1)` (program `A060604.P2520145414761891817`, by `A060604.P2520145414761891817.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060604.P2520145414761891817

`C(A000040(n+1), n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060604

/-- `C(A000040(n+1), n+1)` -/
def P2520145414761891817.Spec : Prop :=
  ∀ n, (P2520145414761891817.a n : ℤ) = A060604 (n + 1)

theorem P2520145414761891817.correct : P2520145414761891817.Spec := by
  intro n
  simp only [A060604, Nat.add_sub_cancel]

end A060604

/-! ## A060604.P8684930364752028946

`A037031(record[A051698(n)])`
-/

namespace A060604.P8684930364752028946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060604.P8684930364752028946

namespace A060604

/-- `A037031(record[A051698(n)])` -/
def P8684930364752028946.Spec : Prop :=
  ∀ n, P8684930364752028946.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P6269036024018389800

`A037031(A000040(n+1))`
-/

namespace A060604.P6269036024018389800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A000040 (n + 1)).toNat

end

end A060604.P6269036024018389800

namespace A060604

/-- `A037031(A000040(n+1))` -/
def P6269036024018389800.Spec : Prop :=
  ∀ n, P6269036024018389800.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P5050520198883846695

`A037031(A008578(n+2))`
-/

namespace A060604.P5050520198883846695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A008578 (n + 2)).toNat

end

end A060604.P5050520198883846695

namespace A060604

/-- `A037031(A008578(n+2))` -/
def P5050520198883846695.Spec : Prop :=
  ∀ n, P5050520198883846695.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P4906289329184151460

`A037031(eq[1, A003415(n)])`
-/

namespace A060604.P4906289329184151460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060604.P4906289329184151460

namespace A060604

/-- `A037031(eq[1, A003415(n)])` -/
def P4906289329184151460.Spec : Prop :=
  ∀ n, P4906289329184151460.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P9114345298575059261

`A037031(record[A006530(n+2)])`
-/

namespace A060604.P9114345298575059261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060604.P9114345298575059261

namespace A060604

/-- `A037031(record[A006530(n+2)])` -/
def P9114345298575059261.Spec : Prop :=
  ∀ n, P9114345298575059261.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P6556932240696812281

`A037031(record[A014963(n+2)])`
-/

namespace A060604.P6556932240696812281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060604.P6556932240696812281

namespace A060604

/-- `A037031(record[A014963(n+2)])` -/
def P6556932240696812281.Spec : Prop :=
  ∀ n, P6556932240696812281.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P15039273995281538308

`A037031(record[A020639(n+2)])`
-/

namespace A060604.P15039273995281538308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060604.P15039273995281538308

namespace A060604

/-- `A037031(record[A020639(n+2)])` -/
def P15039273995281538308.Spec : Prop :=
  ∀ n, P15039273995281538308.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P17645819256388569252

`A037031(A006093(n+1)+1)`
-/

namespace A060604.P17645819256388569252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (A006093 (n + 1) + 1).toNat

end

end A060604.P17645819256388569252

namespace A060604

/-- `A037031(A006093(n+1)+1)` -/
def P17645819256388569252.Spec : Prop :=
  ∀ n, P17645819256388569252.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P4238407347154234104

`A037031(record[A000010(n+1)+1])`
-/

namespace A060604.P4238407347154234104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060604.P4238407347154234104

namespace A060604

/-- `A037031(record[A000010(n+1)+1])` -/
def P4238407347154234104.Spec : Prop :=
  ∀ n, P4238407347154234104.a n = A060604 (n + 1)

end A060604

/-! ## A060604.P1106729361792291798

`C(p?[comp[n²]], n+1)`
-/

namespace A060604.P1106729361792291798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (n + 1)

end

end A060604.P1106729361792291798

namespace A060604

/-- `C(p?[comp[n²]], n+1)` -/
def P1106729361792291798.Spec : Prop :=
  ∀ n, (P1106729361792291798.a n : ℤ) = A060604 (n + 1)

end A060604

/-!
# A060605: a(n) = sum of lengths of the iteration sequences of Euler totient function from 1 to n.

The programs for A060605, the canonical program `A060605.P5019509305243332605` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060605 has offset 1).

The definition of A060605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060605.P5019509305243332605

`∑[a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060605

/-- `∑[a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1]` -/
def P5019509305243332605.Spec : Prop :=
  ∀ n, (P5019509305243332605.a n : ℤ) = A060605 (n + 1)

theorem P5019509305243332605.correct : P5019509305243332605.Spec := by
  intro n
  simp only [A060605, Nat.add_sub_cancel]

end A060605

/-! ## A060605.P611165801179101434

`∑[A049108(n+1)]`
-/

namespace A060605.P611165801179101434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P611165801179101434

namespace A060605

/-- `∑[A049108(n+1)]` -/
def P611165801179101434.Spec : Prop :=
  ∀ n, P611165801179101434.a n = A060605 (n + 1)

end A060605

/-! ## A060605.P12320210239712589021

`A060606(n)+1+n`
-/

namespace A060605.P12320210239712589021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060606 n + 1 + (n : ℤ)

end

end A060605.P12320210239712589021

namespace A060605

/-- `A060606(n)+1+n` -/
def P12320210239712589021.Spec : Prop :=
  ∀ n, P12320210239712589021.a n = A060605 (n + 1)

theorem P12320210239712589021.correct : P12320210239712589021.Spec := by
  intro n
  simp only [A060605, Nat.add_sub_cancel, A060605.P12320210239712589021.a, A060605.P5019509305243332605.f2, A060605.P5019509305243332605.f3, A060605.P5019509305243332605.f1, A060605.P5019509305243332605.a, A060606, A060606.P8446617235737320077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060605

/-! ## A060605.P8650323054630538023

`∑[1+A003434(1+n)]`
-/

namespace A060605.P8650323054630538023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003434 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P8650323054630538023

namespace A060605

/-- `∑[1+A003434(1+n)]` -/
def P8650323054630538023.Spec : Prop :=
  ∀ n, P8650323054630538023.a n = A060605 (n + 1)

end A060605

/-! ## A060605.P3497024724661719663

`∑[∑[A334196(n+1)]+1]`
-/

namespace A060605.P3497024724661719663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P3497024724661719663

namespace A060605

/-- `∑[∑[A334196(n+1)]+1]` -/
def P3497024724661719663.Spec : Prop :=
  ∀ n, P3497024724661719663.a n = A060605 (n + 1)

end A060605

/-! ## A060605.P15589069078367745185

`∑[a(A109606(n+1))+1]` with `a(0)=1`
-/

namespace A060605.P15589069078367745185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A109606 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P15589069078367745185

namespace A060605

/-- `∑[a(A109606(n+1))+1]` -/
def P15589069078367745185.Spec : Prop :=
  ∀ n, (P15589069078367745185.a n : ℤ) = A060605 (n + 1)

end A060605

/-! ## A060605.P4240747505448175903

`∑[a(A000010(n+1)-1)+1]` with `a(0)=1`
-/

namespace A060605.P4240747505448175903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A000010 (n + 1) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P4240747505448175903

namespace A060605

/-- `∑[a(A000010(n+1)-1)+1]` -/
def P4240747505448175903.Spec : Prop :=
  ∀ n, (P4240747505448175903.a n : ℤ) = A060605 (n + 1)

end A060605

/-! ## A060605.P15082382229120400705

`∑[a(A039649(n+1)-2)+1]` with `a(0)=1`
-/

namespace A060605.P15082382229120400705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A039649 (n + 1) - 2).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P15082382229120400705

namespace A060605

/-- `∑[a(A039649(n+1)-2)+1]` -/
def P15082382229120400705.Spec : Prop :=
  ∀ n, (P15082382229120400705.a n : ℤ) = A060605 (n + 1)

end A060605

/-! ## A060605.P8337772947686071757

`∑[A005496(A003434(n+1))]`
-/

namespace A060605.P8337772947686071757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A003434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P8337772947686071757

namespace A060605

/-- `∑[A005496(A003434(n+1))]` -/
def P8337772947686071757.Spec : Prop :=
  ∀ n, P8337772947686071757.a n = A060605 (n + 1)

end A060605

/-! ## A060605.P4365210319579252521

`A053044(n+1)+A001651(n+1)`
-/

namespace A060605.P4365210319579252521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) + A001651 (n + 1)

end

end A060605.P4365210319579252521

namespace A060605

/-- `A053044(n+1)+A001651(n+1)` -/
def P4365210319579252521.Spec : Prop :=
  ∀ n, P4365210319579252521.a n = A060605 (n + 1)

end A060605

/-! ## A060605.P9659131148409782708

`∑[A049115(n+1)+A049113(n+1)]`
-/

namespace A060605.P9659131148409782708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A049113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P9659131148409782708

namespace A060605

/-- `∑[A049115(n+1)+A049113(n+1)]` -/
def P9659131148409782708.Spec : Prop :=
  ∀ n, P9659131148409782708.a n = A060605 (n + 1)

end A060605

/-! ## A060605.P5907918907532374154

`∑[A049115(n+1)+A001222(A049116(n+1))+1]`
-/

namespace A060605.P5907918907532374154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A001222 (A049116 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060605.P5907918907532374154

namespace A060605

/-- `∑[A049115(n+1)+A001222(A049116(n+1))+1]` -/
def P5907918907532374154.Spec : Prop :=
  ∀ n, P5907918907532374154.a n = A060605 (n + 1)

end A060605

/-!
# A060606: The n-th term is the sum of lengths of iteration chains to get fixed points (=1) for the Euler totient function from 1 to n.

The programs for A060606, the canonical program `A060606.P8446617235737320077` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060606 has offset 0).

The definition of A060606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060606.P12708953131436970943

`∑[a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1]` with `a(0)=0`
-/

namespace A060606.P12708953131436970943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P12708953131436970943

namespace A060606

/-- `∑[a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1]` -/
def P12708953131436970943.Spec : Prop :=
  ∀ n, (P12708953131436970943.a n : ℤ) = A060606 n

end A060606

/-! ## A060606.P2667124697105743551

`∑[A003434(n+1)]`
-/

namespace A060606.P2667124697105743551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P2667124697105743551

namespace A060606

/-- `∑[A003434(n+1)]` -/
def P2667124697105743551.Spec : Prop :=
  ∀ n, P2667124697105743551.a n = A060606 n

end A060606

/-! ## A060606.P923265537666653144

`∑[∑[A334196(n+1)]]`
-/

namespace A060606.P923265537666653144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P923265537666653144

namespace A060606

/-- `∑[∑[A334196(n+1)]]` -/
def P923265537666653144.Spec : Prop :=
  ∀ n, P923265537666653144.a n = A060606 n

end A060606

/-! ## A060606.P13054842503681223984

`∑[A049108(n+1)-1]`
-/

namespace A060606.P13054842503681223984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P13054842503681223984

namespace A060606

/-- `∑[A049108(n+1)-1]` -/
def P13054842503681223984.Spec : Prop :=
  ∀ n, P13054842503681223984.a n = A060606 n

end A060606

/-! ## A060606.P8446617235737320077

`A060605(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060606

/-- `A060605(n+1)-(n+1)` -/
def P8446617235737320077.Spec : Prop :=
  ∀ n, P8446617235737320077.a n = A060606 n

theorem P8446617235737320077.correct : P8446617235737320077.Spec := by
  intro n
  simp only [A060606]

end A060606

/-! ## A060606.P2952575378147305579

`∑[a(A109606(n+1))+1]` with `a(0)=0`
-/

namespace A060606.P2952575378147305579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A109606 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P2952575378147305579

namespace A060606

/-- `∑[a(A109606(n+1))+1]` -/
def P2952575378147305579.Spec : Prop :=
  ∀ n, (P2952575378147305579.a n : ℤ) = A060606 n

end A060606

/-! ## A060606.P5536859000483222185

`floor(A053044(n+1)+n/2)`
-/

namespace A060606.P5536859000483222185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053044 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A060606.P5536859000483222185

namespace A060606

/-- `floor(A053044(n+1)+n/2)` -/
def P5536859000483222185.Spec : Prop :=
  ∀ n, P5536859000483222185.a n = A060606 n

end A060606

/-! ## A060606.P6311841138840278541

`∑[a(A000010(n+1)-1)+1]` with `a(0)=0`
-/

namespace A060606.P6311841138840278541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A000010 (n + 1) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P6311841138840278541

namespace A060606

/-- `∑[a(A000010(n+1)-1)+1]` -/
def P6311841138840278541.Spec : Prop :=
  ∀ n, (P6311841138840278541.a n : ℤ) = A060606 n

end A060606

/-! ## A060606.P18040078290120095029

`∑[A054725(n+1)]+floor(n/2)-1`
-/

namespace A060606.P18040078290120095029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (⌊(n : ℚ) / 2⌋ - 1)

end

end A060606.P18040078290120095029

namespace A060606

/-- `∑[A054725(n+1)]+floor(n/2)-1` -/
def P18040078290120095029.Spec : Prop :=
  ∀ n, P18040078290120095029.a n = A060606 n

end A060606

/-! ## A060606.P12965147557255012330

`A053044(n+1)+A004526(n)`
-/

namespace A060606.P12965147557255012330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) + A004526 n

end

end A060606.P12965147557255012330

namespace A060606

/-- `A053044(n+1)+A004526(n)` -/
def P12965147557255012330.Spec : Prop :=
  ∀ n, P12965147557255012330.a n = A060606 n

theorem P12965147557255012330.correct : P12965147557255012330.Spec := by
  intro n
  simp only [A060606, Nat.add_sub_cancel, A060606.P12965147557255012330.a, A060606.P8446617235737320077.a, A004526, A004526.P10084182425416171735.a, A053044, A053044.P12715760243015014670.a, A060605, A060605.P5019509305243332605.f2, A060605.P5019509305243332605.f3, A060605.P5019509305243332605.f1, A060605.P5019509305243332605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060606

/-! ## A060606.P11436383515733840859

`∑[A001222(2^A003434(Δ[n²]-n))]`
-/

namespace A060606.P11436383515733840859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003434 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P11436383515733840859

namespace A060606

/-- `∑[A001222(2^A003434(Δ[n²]-n))]` -/
def P11436383515733840859.Spec : Prop :=
  ∀ n, P11436383515733840859.a n = A060606 n

end A060606

/-! ## A060606.P2362190777844790669

`∑[A049113(n+1)+A049115(n+1)-1]`
-/

namespace A060606.P2362190777844790669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049113 (n + 1) + (A049115 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P2362190777844790669

namespace A060606

/-- `∑[A049113(n+1)+A049115(n+1)-1]` -/
def P2362190777844790669.Spec : Prop :=
  ∀ n, P2362190777844790669.a n = A060606 n

end A060606

/-! ## A060606.P10947157354987000501

`∑[A032358(n+2)]-A032358(n+2)+n`
-/

namespace A060606.P10947157354987000501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A032358 (n + 2) + (n : ℤ)

end

end A060606.P10947157354987000501

namespace A060606

/-- `∑[A032358(n+2)]-A032358(n+2)+n` -/
def P10947157354987000501.Spec : Prop :=
  ∀ n, P10947157354987000501.a n = A060606 n

end A060606

/-! ## A060606.P3147920538122636820

`∑[A049115(n+1)+A001222(A049116(n+1))]`
-/

namespace A060606.P3147920538122636820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A001222 (A049116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060606.P3147920538122636820

namespace A060606

/-- `∑[A049115(n+1)+A001222(A049116(n+1))]` -/
def P3147920538122636820.Spec : Prop :=
  ∀ n, P3147920538122636820.a n = A060606 n

end A060606

/-!
# A060607: Number of iterations of phi(x) at prime(n) needed to reach 1.

The programs for A060607, the canonical program `A060607.P3756822233066968907` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060607 has offset 1).

The definition of A060607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060607.P2468095985228522065

`A003434(A000040(n+1))`
-/

namespace A060607.P2468095985228522065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A000040 (n + 1)).toNat

end

end A060607.P2468095985228522065

namespace A060607

/-- `A003434(A000040(n+1))` -/
def P2468095985228522065.Spec : Prop :=
  ∀ n, P2468095985228522065.a n = A060607 (n + 1)

theorem P2468095985228522065.correct : P2468095985228522065.Spec := by
  intro n
  simp only [A060607, Nat.add_sub_cancel, A060607.P2468095985228522065.a, A060607.P3756822233066968907.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003434, A003434.P4346144669055339103.a, A006093, A006093.P2906174024863549003.a, A049108, A049108.P3374025278854896554.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060607

/-! ## A060607.P3756822233066968907

`A003434(A006093(n+1)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060607

/-- `A003434(A006093(n+1)+1)` -/
def P3756822233066968907.Spec : Prop :=
  ∀ n, P3756822233066968907.a n = A060607 (n + 1)

theorem P3756822233066968907.correct : P3756822233066968907.Spec := by
  intro n
  simp only [A060607, Nat.add_sub_cancel]

end A060607

/-! ## A060607.P3318517126245439546

`A060610(n+1)+A001222(A060609(n+1))`
-/

namespace A060607.P3318517126245439546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060610 (n + 1) + A001222 (A060609 (n + 1)).toNat

end

end A060607.P3318517126245439546

namespace A060607

/-- `A060610(n+1)+A001222(A060609(n+1))` -/
def P3318517126245439546.Spec : Prop :=
  ∀ n, P3318517126245439546.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P9042320435521936834

`A073407(p?[comp[n²]])`
-/

namespace A060607.P9042320435521936834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073407 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A060607.P9042320435521936834

namespace A060607

/-- `A073407(p?[comp[n²]])` -/
def P9042320435521936834.Spec : Prop :=
  ∀ n, P9042320435521936834.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P14669053974235073704

`A003434(Δ[A007504(n)])`
-/

namespace A060607.P14669053974235073704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f1 (n + 1) - f1 n).toNat

end

end A060607.P14669053974235073704

namespace A060607

/-- `A003434(Δ[A007504(n)])` -/
def P14669053974235073704.Spec : Prop :=
  ∀ n, P14669053974235073704.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P8804661246754882028

`A049108(A006093(n+1))`
-/

namespace A060607.P8804661246754882028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A006093 (n + 1)).toNat

end

end A060607.P8804661246754882028

namespace A060607

/-- `A049108(A006093(n+1))` -/
def P8804661246754882028.Spec : Prop :=
  ∀ n, P8804661246754882028.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P3414258462486162871

`A073407(A006005(n+1))`
-/

namespace A060607.P3414258462486162871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073407 (A006005 (n + 1)).toNat

end

end A060607.P3414258462486162871

namespace A060607

/-- `A073407(A006005(n+1))` -/
def P3414258462486162871.Spec : Prop :=
  ∀ n, P3414258462486162871.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P1703127157438633596

`A003434(A008578(n+2))`
-/

namespace A060607.P1703127157438633596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A008578 (n + 2)).toNat

end

end A060607.P1703127157438633596

namespace A060607

/-- `A003434(A008578(n+2))` -/
def P1703127157438633596.Spec : Prop :=
  ∀ n, P1703127157438633596.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P15673290495002555128

`A073407(A075643(n+2))`
-/

namespace A060607.P15673290495002555128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073407 (A075643 (n + 2)).toNat

end

end A060607.P15673290495002555128

namespace A060607

/-- `A073407(A075643(n+2))` -/
def P15673290495002555128.Spec : Prop :=
  ∀ n, P15673290495002555128.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P14130713436149400490

`A049108(record[A000010(n+1)])`
-/

namespace A060607.P14130713436149400490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060607.P14130713436149400490

namespace A060607

/-- `A049108(record[A000010(n+1)])` -/
def P14130713436149400490.Spec : Prop :=
  ∀ n, P14130713436149400490.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P5039984537246023072

`A003434(record[A006530(n+2)])`
-/

namespace A060607.P5039984537246023072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060607.P5039984537246023072

namespace A060607

/-- `A003434(record[A006530(n+2)])` -/
def P5039984537246023072.Spec : Prop :=
  ∀ n, P5039984537246023072.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P10669520931728533934

`A003434(record[A014963(n+2)])`
-/

namespace A060607.P10669520931728533934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060607.P10669520931728533934

namespace A060607

/-- `A003434(record[A014963(n+2)])` -/
def P10669520931728533934.Spec : Prop :=
  ∀ n, P10669520931728533934.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P5494545902448005780

`A003434(record[A020639(n+2)])`
-/

namespace A060607.P5494545902448005780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060607.P5494545902448005780

namespace A060607

/-- `A003434(record[A020639(n+2)])` -/
def P5494545902448005780.Spec : Prop :=
  ∀ n, P5494545902448005780.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P12556595974615096038

`A073407(record[A006530(n+2)])`
-/

namespace A060607.P12556595974615096038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073407 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060607.P12556595974615096038

namespace A060607

/-- `A073407(record[A006530(n+2)])` -/
def P12556595974615096038.Spec : Prop :=
  ∀ n, P12556595974615096038.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P13514914927079587219

`A073407(record[A014963(n+2)])`
-/

namespace A060607.P13514914927079587219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073407 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060607.P13514914927079587219

namespace A060607

/-- `A073407(record[A014963(n+2)])` -/
def P13514914927079587219.Spec : Prop :=
  ∀ n, P13514914927079587219.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P9072559077266002775

`A073407(record[A020639(n+2)])`
-/

namespace A060607.P9072559077266002775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073407 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060607.P9072559077266002775

namespace A060607

/-- `A073407(record[A020639(n+2)])` -/
def P9072559077266002775.Spec : Prop :=
  ∀ n, P9072559077266002775.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P7422371914144795037

`A049108(A040976(n+1)+1)`
-/

namespace A060607.P7422371914144795037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A040976 (n + 1) + 1).toNat

end

end A060607.P7422371914144795037

namespace A060607

/-- `A049108(A040976(n+1)+1)` -/
def P7422371914144795037.Spec : Prop :=
  ∀ n, P7422371914144795037.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P17131372146011472501

`A049108(A000040(n+1)-1)`
-/

namespace A060607.P17131372146011472501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A000040 (n + 1) - 1).toNat

end

end A060607.P17131372146011472501

namespace A060607

/-- `A049108(A000040(n+1)-1)` -/
def P17131372146011472501.Spec : Prop :=
  ∀ n, P17131372146011472501.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P6156592762262849431

`A049108(eq[2, A000005(n+1)])`
-/

namespace A060607.P6156592762262849431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060607.P6156592762262849431

namespace A060607

/-- `A049108(eq[2, A000005(n+1)])` -/
def P6156592762262849431.Spec : Prop :=
  ∀ n, P6156592762262849431.a n = A060607 (n + 1)

end A060607

/-! ## A060607.P14651671832263412132

`A049108(eq[3, A053475(n+1)])`
-/

namespace A060607.P14651671832263412132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060607.P14651671832263412132

namespace A060607

/-- `A049108(eq[3, A053475(n+1)])` -/
def P14651671832263412132.Spec : Prop :=
  ∀ n, P14651671832263412132.a n = A060607 (n + 1)

end A060607

/-!
# A060608: Number of flips between the d-dimensional tilings of the unary zonotope Z(D,d). Here d=3 and D varies.

The programs for A060608, there is no canonical definition to state claims against.
-/

/-! ## A060608.P7443926027644289119

`n*A268195((n-1)^n)`
-/

namespace A060608.P7443926027644289119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A268195 (((n : ℤ) - 1) ^ n).toNat

end

end A060608.P7443926027644289119

/-!
# A060609: Repeatedly apply Euler phi to n-th prime; a(n) = highest power of 2 that is seen.

The programs for A060609, the canonical program `A060609.P9088735267525131921` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060609 has offset 1).

The definition of A060609 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049116, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060609.P9088735267525131921

`A049116(A000040(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060609

/-- `A049116(A000040(n+1))` -/
def P9088735267525131921.Spec : Prop :=
  ∀ n, P9088735267525131921.a n = A060609 (n + 1)

theorem P9088735267525131921.correct : P9088735267525131921.Spec := by
  intro n
  simp only [A060609, Nat.add_sub_cancel]

end A060609

/-! ## A060609.P4736594676953391779

`A049116(A039915(n+1))`
-/

namespace A060609.P4736594676953391779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A039915 (n + 1)).toNat

end

end A060609.P4736594676953391779

namespace A060609

/-- `A049116(A039915(n+1))` -/
def P4736594676953391779.Spec : Prop :=
  ∀ n, P4736594676953391779.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P7168486266164291924

`A049116(A008578(n+2))`
-/

namespace A060609.P7168486266164291924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A008578 (n + 2)).toNat

end

end A060609.P7168486266164291924

namespace A060609

/-- `A049116(A008578(n+2))` -/
def P7168486266164291924.Spec : Prop :=
  ∀ n, P7168486266164291924.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P14583234112550219143

`A049116(A068499(n+2))`
-/

namespace A060609.P14583234112550219143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A068499 (n + 2)).toNat

end

end A060609.P14583234112550219143

namespace A060609

/-- `A049116(A068499(n+2))` -/
def P14583234112550219143.Spec : Prop :=
  ∀ n, P14583234112550219143.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P2481025580116024517

`A049116(A182986(n+2))`
-/

namespace A060609.P2481025580116024517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A182986 (n + 2)).toNat

end

end A060609.P2481025580116024517

namespace A060609

/-- `A049116(A182986(n+2))` -/
def P2481025580116024517.Spec : Prop :=
  ∀ n, P2481025580116024517.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P8414720373310928261

`A049116(record[A006530(n+2)])`
-/

namespace A060609.P8414720373310928261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060609.P8414720373310928261

namespace A060609

/-- `A049116(record[A006530(n+2)])` -/
def P8414720373310928261.Spec : Prop :=
  ∀ n, P8414720373310928261.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P17083643418800091418

`A049116(record[A014963(n+2)])`
-/

namespace A060609.P17083643418800091418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060609.P17083643418800091418

namespace A060609

/-- `A049116(record[A014963(n+2)])` -/
def P17083643418800091418.Spec : Prop :=
  ∀ n, P17083643418800091418.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P18372102407659911686

`A049116(record[A020639(n+2)])`
-/

namespace A060609.P18372102407659911686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060609.P18372102407659911686

namespace A060609

/-- `A049116(record[A020639(n+2)])` -/
def P18372102407659911686.Spec : Prop :=
  ∀ n, P18372102407659911686.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P4748522331793457626

`A049116(record[A000010(n+1)+1])`
-/

namespace A060609.P4748522331793457626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060609.P4748522331793457626

namespace A060609

/-- `A049116(record[A000010(n+1)+1])` -/
def P4748522331793457626.Spec : Prop :=
  ∀ n, P4748522331793457626.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P2041412653501393338

`A049116(eq[n+1, A318884(n+1)]+1)`
-/

namespace A060609.P2041412653501393338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060609.P2041412653501393338

namespace A060609

/-- `A049116(eq[n+1, A318884(n+1)]+1)` -/
def P2041412653501393338.Spec : Prop :=
  ∀ n, P2041412653501393338.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P16859616743082834874

`A049116(A104192(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A060609.P16859616743082834874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (SequenceMachineLib.roundAway ((A104192 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A060609.P16859616743082834874

namespace A060609

/-- `A049116(A104192(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P16859616743082834874.Spec : Prop :=
  ∀ n, P16859616743082834874.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P10530572190870511469

`A049116(A104192(n+1)+Δ[A002088(n)])`
-/

namespace A060609.P10530572190870511469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A104192 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A060609.P10530572190870511469

namespace A060609

/-- `A049116(A104192(n+1)+Δ[A002088(n)])` -/
def P10530572190870511469.Spec : Prop :=
  ∀ n, P10530572190870511469.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P1904881349023632218

`A049116(A104192(n+1)+Δ[A005728(n)])`
-/

namespace A060609.P1904881349023632218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A104192 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A060609.P1904881349023632218

namespace A060609

/-- `A049116(A104192(n+1)+Δ[A005728(n)])` -/
def P1904881349023632218.Spec : Prop :=
  ∀ n, P1904881349023632218.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P2992847458112090133

`A049116(A104192(n+1)+A000010(n+1))`
-/

namespace A060609.P2992847458112090133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A104192 (n + 1) + A000010 (n + 1)).toNat

end

end A060609.P2992847458112090133

namespace A060609

/-- `A049116(A104192(n+1)+A000010(n+1))` -/
def P2992847458112090133.Spec : Prop :=
  ∀ n, P2992847458112090133.a n = A060609 (n + 1)

theorem P2992847458112090133.correct : P2992847458112090133.Spec := by
  intro n
  simp only [A060609, Nat.add_sub_cancel, A060609.P2992847458112090133.a, A060609.P9088735267525131921.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049116, A049116.P4118642355827191209.a, A104192, A104192.P13256349872724568781.a, A003557, A003557.P6364735403900941810.a, A006519, A006519.P10435570611646570274.a, A109606, A109606.P2415810041766612210.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060609

/-! ## A060609.P10117351371140766080

`A049116(A077017(n+2))`
-/

namespace A060609.P10117351371140766080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A077017 (n + 2)).toNat

end

end A060609.P10117351371140766080

namespace A060609

/-- `A049116(A077017(n+2))` -/
def P10117351371140766080.Spec : Prop :=
  ∀ n, P10117351371140766080.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P1940313246642729066

`A049116(p?[record[A049077(n+1)]])`
-/

namespace A060609.P1940313246642729066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A060609.P1940313246642729066

namespace A060609

/-- `A049116(p?[record[A049077(n+1)]])` -/
def P1940313246642729066.Spec : Prop :=
  ∀ n, P1940313246642729066.a n = A060609 (n + 1)

end A060609

/-! ## A060609.P17292613644441093555

`A049116(A066080(n+1))`
-/

namespace A060609.P17292613644441093555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (A066080 (n + 1)).toNat

end

end A060609.P17292613644441093555

namespace A060609

/-- `A049116(A066080(n+1))` -/
def P17292613644441093555.Spec : Prop :=
  ∀ n, P17292613644441093555.a n = A060609 (n + 1)

end A060609

/-!
# A060610: Repeatedly apply Euler phi to the n-th prime; a(n) is the number of terms in the resulting iteration chain which are not powers of 2 (number of initial iterations until reaching the first power of 2).

The programs for A060610, the canonical program `A060610.P6093436061805835629` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060610 has offset 1).

The definition of A060610 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049115, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060610.P6093436061805835629

`A049115(A000040(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A060610

/-- `A049115(A000040(n+1))` -/
def P6093436061805835629.Spec : Prop :=
  ∀ n, P6093436061805835629.a n = A060610 (n + 1)

theorem P6093436061805835629.correct : P6093436061805835629.Spec := by
  intro n
  simp only [A060610, Nat.add_sub_cancel]

end A060610

/-! ## A060610.P6454298010004575337

`A060607(n+1)-log2(A060609(n+1))`
-/

namespace A060610.P6454298010004575337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A060607 (n + 1) : ℝ) - Real.logb 2 (A060609 (n + 1) : ℝ)

end

end A060610.P6454298010004575337

namespace A060610

/-- `A060607(n+1)-log2(A060609(n+1))` -/
def P6454298010004575337.Spec : Prop :=
  ∀ n, P6454298010004575337.a n = (A060610 (n + 1) : ℝ)

end A060610

/-! ## A060610.P13997279502955561420

`A049115(A006005(n+1))`
-/

namespace A060610.P13997279502955561420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A006005 (n + 1)).toNat

end

end A060610.P13997279502955561420

namespace A060610

/-- `A049115(A006005(n+1))` -/
def P13997279502955561420.Spec : Prop :=
  ∀ n, P13997279502955561420.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P10405408816110505924

`A049115(A063884(n+1))`
-/

namespace A060610.P10405408816110505924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A063884 (n + 1)).toNat

end

end A060610.P10405408816110505924

namespace A060610

/-- `A049115(A063884(n+1))` -/
def P10405408816110505924.Spec : Prop :=
  ∀ n, P10405408816110505924.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P15519222362066445562

`A049115(A008578(n+2))`
-/

namespace A060610.P15519222362066445562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A008578 (n + 2)).toNat

end

end A060610.P15519222362066445562

namespace A060610

/-- `A049115(A008578(n+2))` -/
def P15519222362066445562.Spec : Prop :=
  ∀ n, P15519222362066445562.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P10620671175289746368

`A049115(record[A006530(n+2)])`
-/

namespace A060610.P10620671175289746368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060610.P10620671175289746368

namespace A060610

/-- `A049115(record[A006530(n+2)])` -/
def P10620671175289746368.Spec : Prop :=
  ∀ n, P10620671175289746368.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P11893824877568472007

`A049115(record[A014963(n+2)])`
-/

namespace A060610.P11893824877568472007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060610.P11893824877568472007

namespace A060610

/-- `A049115(record[A014963(n+2)])` -/
def P11893824877568472007.Spec : Prop :=
  ∀ n, P11893824877568472007.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P15873453484234752421

`A049115(record[A020639(n+2)])`
-/

namespace A060610.P15873453484234752421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060610.P15873453484234752421

namespace A060610

/-- `A049115(record[A020639(n+2)])` -/
def P15873453484234752421.Spec : Prop :=
  ∀ n, P15873453484234752421.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P16259654922634537183

`A049115(A100484(n+1)/2)`
-/

namespace A060610.P16259654922634537183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A060610.P16259654922634537183

namespace A060610

/-- `A049115(A100484(n+1)/2)` -/
def P16259654922634537183.Spec : Prop :=
  ∀ n, P16259654922634537183.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P11101304791823275065

`A049115(A001747(n+2)/2)`
-/

namespace A060610.P11101304791823275065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A060610.P11101304791823275065

namespace A060610

/-- `A049115(A001747(n+2)/2)` -/
def P11101304791823275065.Spec : Prop :=
  ∀ n, P11101304791823275065.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P12153642006831128621

`A049115(record[A000010(n+1)+1])`
-/

namespace A060610.P12153642006831128621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060610.P12153642006831128621

namespace A060610

/-- `A049115(record[A000010(n+1)+1])` -/
def P12153642006831128621.Spec : Prop :=
  ∀ n, P12153642006831128621.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P12533015572149104149

`A227944(record[A006530(2*n+1)])`
-/

namespace A060610.P12533015572149104149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060610.P12533015572149104149

namespace A060610

/-- `A227944(record[A006530(2*n+1)])` -/
def P12533015572149104149.Spec : Prop :=
  ∀ n, P12533015572149104149.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P10465178290634289542

`A227944(record[A014963(2*n+1)])`
-/

namespace A060610.P10465178290634289542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060610.P10465178290634289542

namespace A060610

/-- `A227944(record[A014963(2*n+1)])` -/
def P10465178290634289542.Spec : Prop :=
  ∀ n, P10465178290634289542.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P10396212157596680255

`A227944(record[A020639(2*n+1)])`
-/

namespace A060610.P10396212157596680255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060610.P10396212157596680255

namespace A060610

/-- `A227944(record[A020639(2*n+1)])` -/
def P10396212157596680255.Spec : Prop :=
  ∀ n, P10396212157596680255.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P6864260070357111567

`A049115(A104192(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A060610.P6864260070357111567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (SequenceMachineLib.roundAway ((A104192 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A060610.P6864260070357111567

namespace A060610

/-- `A049115(A104192(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P6864260070357111567.Spec : Prop :=
  ∀ n, P6864260070357111567.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P11290128813614758533

`A049115(A104192(n+1)+Δ[A002088(n)])`
-/

namespace A060610.P11290128813614758533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A104192 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A060610.P11290128813614758533

namespace A060610

/-- `A049115(A104192(n+1)+Δ[A002088(n)])` -/
def P11290128813614758533.Spec : Prop :=
  ∀ n, P11290128813614758533.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P178628229500784650

`A049115(A104192(n+1)+A000010(n+1))`
-/

namespace A060610.P178628229500784650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A104192 (n + 1) + A000010 (n + 1)).toNat

end

end A060610.P178628229500784650

namespace A060610

/-- `A049115(A104192(n+1)+A000010(n+1))` -/
def P178628229500784650.Spec : Prop :=
  ∀ n, P178628229500784650.a n = A060610 (n + 1)

theorem P178628229500784650.correct : P178628229500784650.Spec := by
  intro n
  simp only [A060610, Nat.add_sub_cancel, A060610.P178628229500784650.a, A060610.P6093436061805835629.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049115, A049115.P2000805014081711622.a, A104192, A104192.P13256349872724568781.a, A003557, A003557.P6364735403900941810.a, A064415, A064415.P3438679109517359530.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A259103, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A309243, A309243.P2615360336711731693.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060610

/-! ## A060610.P8501263914508751236

`A049115(A100484(n+1))`
-/

namespace A060610.P8501263914508751236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A100484 (n + 1)).toNat

end

end A060610.P8501263914508751236

namespace A060610

/-- `A049115(A100484(n+1))` -/
def P8501263914508751236.Spec : Prop :=
  ∀ n, P8501263914508751236.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P5660129774901500566

`A049115(A251618(n+1))`
-/

namespace A060610.P5660129774901500566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A251618 (n + 1)).toNat

end

end A060610.P5660129774901500566

namespace A060610

/-- `A049115(A251618(n+1))` -/
def P5660129774901500566.Spec : Prop :=
  ∀ n, P5660129774901500566.a n = A060610 (n + 1)

end A060610

/-! ## A060610.P3947922736292131730

`A049115(A001747(n+2))`
-/

namespace A060610.P3947922736292131730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A001747 (n + 2)).toNat

end

end A060610.P3947922736292131730

namespace A060610

/-- `A049115(A001747(n+2))` -/
def P3947922736292131730.Spec : Prop :=
  ∀ n, P3947922736292131730.a n = A060610 (n + 1)

end A060610

/-!
# A060611: Smallest prime p such that n = A049108(p) = length of chain of iterates of Euler Phi starting with p.

The programs for A060611, there is no canonical definition to state claims against.
-/

/-! ## A060611.P197395055834659049

`A058812(∑[A058811(n)])`
-/

namespace A060611.P197395055834659049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058812 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060611.P197395055834659049

/-! ## A060611.P6784093063788913644

`A050367(A007755(n+2))`
-/

namespace A060611.P6784093063788913644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A007755 (n + 2)).toNat

end

end A060611.P6784093063788913644

/-! ## A060611.P11481578244084215580

`A007755(A062399(n)+2)`
-/

namespace A060611.P11481578244084215580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (A062399 n + 2).toNat

end

end A060611.P11481578244084215580

/-! ## A060611.P3862568231697251850

`record[A007755(A361789(n+3))]`
-/

namespace A060611.P3862568231697251850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (A361789 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060611.P3862568231697251850

/-! ## A060611.P11103503031883611198

`A007755(A061497(n+1)+1)`
-/

namespace A060611.P11103503031883611198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (A061497 (n + 1) + 1).toNat

end

end A060611.P11103503031883611198

/-!
# A060613: Number of n X n {-1,0,1} matrices with no zero rows.

The programs for A060613, the canonical program `A060613.P289559407968424685` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060613 has offset 1).

The definition of A060613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060613.P289559407968424685

`(3^(n+1)-1)^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060613

/-- `(3^(n+1)-1)^(n+1)` -/
def P289559407968424685.Spec : Prop :=
  ∀ n, P289559407968424685.a n = A060613 (n + 1)

theorem P289559407968424685.correct : P289559407968424685.Spec := by
  intro n
  simp only [A060613, Nat.add_sub_cancel]

end A060613

/-!
# A060615: Number of conjugacy classes in the group GL_2(K) when K is a finite field with q = p^m for a prime p and m >= 1.

The programs for A060615, the canonical program `A060615.P13306185114690502045` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060615 has offset 0).

The definition of A060615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060615.P13306185114690502045

`A000961(n+2)²-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A060615

/-- `A000961(n+2)²-1` -/
def P13306185114690502045.Spec : Prop :=
  ∀ n, P13306185114690502045.a n = A060615 n

theorem P13306185114690502045.correct : P13306185114690502045.Spec := by
  intro n
  simp only [A060615]

end A060615

/-! ## A060615.P17564992248146440950

`A246655(n+1)²-1`
-/

namespace A060615.P17564992248146440950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) ^ 2 - 1

end

end A060615.P17564992248146440950

namespace A060615

/-- `A246655(n+1)²-1` -/
def P17564992248146440950.Spec : Prop :=
  ∀ n, P17564992248146440950.a n = A060615 n

end A060615

/-! ## A060615.P18363056707179215786

`∑[A275120(n+1)]²-1`
-/

namespace A060615.P18363056707179215786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A060615.P18363056707179215786

namespace A060615

/-- `∑[A275120(n+1)]²-1` -/
def P18363056707179215786.Spec : Prop :=
  ∀ n, P18363056707179215786.a n = A060615 n

end A060615

/-! ## A060615.P7191085516815626318

`ceil(root(A329119(n+1), 3))²-1`
-/

namespace A060615.P7191085516815626318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A329119 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 2 - 1

end

end A060615.P7191085516815626318

namespace A060615

/-- `ceil(root(A329119(n+1), 3))²-1` -/
def P7191085516815626318.Spec : Prop :=
  ∀ n, P7191085516815626318.a n = A060615 n

end A060615

/-! ## A060615.P2990533727255920797

`A329119(n+1)/A246655(n+1)`
-/

namespace A060615.P2990533727255920797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ)

end

end A060615.P2990533727255920797

namespace A060615

/-- `A329119(n+1)/A246655(n+1)` -/
def P2990533727255920797.Spec : Prop :=
  ∀ n, P2990533727255920797.a n = (A060615 n : ℚ)

end A060615

/-! ## A060615.P3976736974392450982

`sqrt(A003841(n+1))/A246655(n+1)`
-/

namespace A060615.P3976736974392450982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003841 (n + 1) : ℝ) / (A246655 (n + 1) : ℝ)

end

end A060615.P3976736974392450982

namespace A060615

/-- `sqrt(A003841(n+1))/A246655(n+1)` -/
def P3976736974392450982.Spec : Prop :=
  ∀ n, P3976736974392450982.a n = (A060615 n : ℝ)

end A060615

/-! ## A060615.P14719457623619780222

`A367014(n+1)/A246655(n+1)-A246655(n+1)`
-/

namespace A060615.P14719457623619780222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367014 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ) - (A246655 (n + 1) : ℚ)

end

end A060615.P14719457623619780222

namespace A060615

/-- `A367014(n+1)/A246655(n+1)-A246655(n+1)` -/
def P14719457623619780222.Spec : Prop :=
  ∀ n, P14719457623619780222.a n = (A060615 n : ℚ)

end A060615

/-! ## A060615.P3776297668136600308

`A056798(2+n)-1`
-/

namespace A060615.P3776297668136600308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056798 (2 + n) - 1

end

end A060615.P3776297668136600308

namespace A060615

/-- `A056798(2+n)-1` -/
def P3776297668136600308.Spec : Prop :=
  ∀ n, P3776297668136600308.a n = A060615 n

end A060615

/-! ## A060615.P17765093848988512196

`Δ[A024918(n+1)]²-1`
-/

namespace A060615.P17765093848988512196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A060615.P17765093848988512196

namespace A060615

/-- `Δ[A024918(n+1)]²-1` -/
def P17765093848988512196.Spec : Prop :=
  ∀ n, P17765093848988512196.a n = A060615 n

end A060615

/-! ## A060615.P3178167166670977654

`A329119(n+1)/A000961(n+2)`
-/

namespace A060615.P3178167166670977654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) / (A000961 (n + 2) : ℚ)

end

end A060615.P3178167166670977654

namespace A060615

/-- `A329119(n+1)/A000961(n+2)` -/
def P3178167166670977654.Spec : Prop :=
  ∀ n, P3178167166670977654.a n = (A060615 n : ℚ)

end A060615

/-! ## A060615.P2694431854567511946

`A153881(n+2)+A000961(n+2)²`
-/

namespace A060615.P2694431854567511946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A000961 (n + 2) ^ 2

end

end A060615.P2694431854567511946

namespace A060615

/-- `A153881(n+2)+A000961(n+2)²` -/
def P2694431854567511946.Spec : Prop :=
  ∀ n, P2694431854567511946.a n = A060615 n

end A060615

/-! ## A060615.P10679198536668458426

`A329119(n+1)/Δ[A024918(n+1)]`
-/

namespace A060615.P10679198536668458426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329119 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A060615.P10679198536668458426

namespace A060615

/-- `A329119(n+1)/Δ[A024918(n+1)]` -/
def P10679198536668458426.Spec : Prop :=
  ∀ n, P10679198536668458426.a n = (A060615 n : ℚ)

end A060615

/-! ## A060615.P15605320276162171450

`A181062(n+2)+A181062(n+2)*A246655(n+1)`
-/

namespace A060615.P15605320276162171450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2) + A181062 (n + 2) * A246655 (n + 1)

end

end A060615.P15605320276162171450

namespace A060615

/-- `A181062(n+2)+A181062(n+2)*A246655(n+1)` -/
def P15605320276162171450.Spec : Prop :=
  ∀ n, P15605320276162171450.a n = A060615 n

theorem P15605320276162171450.correct : P15605320276162171450.Spec := by
  intro n
  simp only [A060615, Nat.add_sub_cancel, A060615.P15605320276162171450.a, A060615.P13306185114690502045.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060615

/-! ## A060615.P111690737431728062

`A000961(n+2)*A000961(n+2)-A054977(n+1)`
-/

namespace A060615.P111690737431728062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) * A000961 (n + 2) - A054977 (n + 1)

end

end A060615.P111690737431728062

namespace A060615

/-- `A000961(n+2)*A000961(n+2)-A054977(n+1)` -/
def P111690737431728062.Spec : Prop :=
  ∀ n, P111690737431728062.a n = A060615 n

end A060615

/-! ## A060615.P2396935813060602997

`A000961(n+2)*A000961(n+2)-A057427(n+1)`
-/

namespace A060615.P2396935813060602997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2) * A000961 (n + 2) - A057427 (n + 1)

end

end A060615.P2396935813060602997

namespace A060615

/-- `A000961(n+2)*A000961(n+2)-A057427(n+1)` -/
def P2396935813060602997.Spec : Prop :=
  ∀ n, P2396935813060602997.a n = A060615 n

end A060615

/-! ## A060615.P18324862383191344403

`A181062(n+2)+A000961(n+2)*A181062(n+2)`
-/

namespace A060615.P18324862383191344403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2) + A000961 (n + 2) * A181062 (n + 2)

end

end A060615.P18324862383191344403

namespace A060615

/-- `A181062(n+2)+A000961(n+2)*A181062(n+2)` -/
def P18324862383191344403.Spec : Prop :=
  ∀ n, P18324862383191344403.a n = A060615 n

theorem P18324862383191344403.correct : P18324862383191344403.Spec := by
  intro n
  simp only [A060615, Nat.add_sub_cancel, A060615.P18324862383191344403.a, A060615.P13306185114690502045.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060615

/-! ## A060615.P10229287594082133498

`A352807(n+1)/(A025474(n+2)*A246655(n+1))`
-/

namespace A060615.P10229287594082133498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352807 (n + 1) : ℚ) / (A025474 (n + 2) * A246655 (n + 1) : ℚ)

end

end A060615.P10229287594082133498

namespace A060615

/-- `A352807(n+1)/(A025474(n+2)*A246655(n+1))` -/
def P10229287594082133498.Spec : Prop :=
  ∀ n, P10229287594082133498.a n = (A060615 n : ℚ)

end A060615

/-! ## A060615.P9785805727419781907

`record[A008475(n+2)²-1]`
-/

namespace A060615.P9785805727419781907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 2) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060615.P9785805727419781907

namespace A060615

/-- `record[A008475(n+2)²-1]` -/
def P9785805727419781907.Spec : Prop :=
  ∀ n, P9785805727419781907.a n = A060615 n

end A060615

/-! ## A060615.P2981559914634231070

`record[((n+2)/A001221(n+2))²-1]`
-/

namespace A060615.P2981559914634231070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / (A001221 (n + 2) : ℚ)) ^ 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060615.P2981559914634231070

namespace A060615

/-- `record[((n+2)/A001221(n+2))²-1]` -/
def P2981559914634231070.Spec : Prop :=
  ∀ n, P2981559914634231070.a n = (A060615 n : ℚ)

end A060615

/-! ## A060615.P6079656830812388703

`A397368(Δ[n²])-1`
-/

namespace A060615.P6079656830812388703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397368 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A060615.P6079656830812388703

namespace A060615

/-- `A397368(Δ[n²])-1` -/
def P6079656830812388703.Spec : Prop :=
  ∀ n, P6079656830812388703.a n = A060615 n

end A060615

/-!
# A060620: Average of the first n primes rounded down.

The programs for A060620, the canonical program `A060620.P18002916357615302440` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060620 has offset 1).

The definition of A060620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060620.P18002916357615302440

`floor(A007504(n+1)/(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060620

/-- `floor(A007504(n+1)/(n+1))` -/
def P18002916357615302440.Spec : Prop :=
  ∀ n, P18002916357615302440.a n = A060620 (n + 1)

theorem P18002916357615302440.correct : P18002916357615302440.Spec := by
  intro n
  simp only [A060620, Nat.add_sub_cancel]

end A060620

/-! ## A060620.P6450036128253992703

`floor(∑[A000040(n+1)]/(n+1))`
-/

namespace A060620.P6450036128253992703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P6450036128253992703

namespace A060620

/-- `floor(∑[A000040(n+1)]/(n+1))` -/
def P6450036128253992703.Spec : Prop :=
  ∀ n, P6450036128253992703.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P7776561871604526406

`floor(∑[A006093(n+1)+1]/(n+1))`
-/

namespace A060620.P7776561871604526406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P7776561871604526406

namespace A060620

/-- `floor(∑[A006093(n+1)+1]/(n+1))` -/
def P7776561871604526406.Spec : Prop :=
  ∀ n, P7776561871604526406.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P3680814311639276259

`floor(∑[A040976(n+1)]/(n+1))+2`
-/

namespace A060620.P3680814311639276259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋ + 2

end

end A060620.P3680814311639276259

namespace A060620

/-- `floor(∑[A040976(n+1)]/(n+1))+2` -/
def P3680814311639276259.Spec : Prop :=
  ∀ n, P3680814311639276259.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P2552339598147967435

`floor(A301273(n+1)/A301274(n+1))`
-/

namespace A060620.P2552339598147967435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301273 (n + 1) : ℚ) / (A301274 (n + 1) : ℚ)⌋

end

end A060620.P2552339598147967435

namespace A060620

/-- `floor(A301273(n+1)/A301274(n+1))` -/
def P2552339598147967435.Spec : Prop :=
  ∀ n, P2552339598147967435.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P5557415587803305761

`floor(∑[A008578(n+2)]/(n+1))`
-/

namespace A060620.P5557415587803305761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P5557415587803305761

namespace A060620

/-- `floor(∑[A008578(n+2)]/(n+1))` -/
def P5557415587803305761.Spec : Prop :=
  ∀ n, P5557415587803305761.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P1113082896378838730

`ceil((∑[record[A006530(n+2)]]+n-2*n)/(n+1))`
-/

namespace A060620.P1113082896378838730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (2 * n : ℤ) : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A060620.P1113082896378838730

namespace A060620

/-- `ceil((∑[record[A006530(n+2)]]+n-2*n)/(n+1))` -/
def P1113082896378838730.Spec : Prop :=
  ∀ n, P1113082896378838730.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P18289268370234143389

`A225804(n+1)-A267084(n+1)`
-/

namespace A060620.P18289268370234143389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225804 (n + 1) - A267084 (n + 1)

end

end A060620.P18289268370234143389

namespace A060620

/-- `A225804(n+1)-A267084(n+1)` -/
def P18289268370234143389.Spec : Prop :=
  ∀ n, P18289268370234143389.a n = A060620 (n + 1)

theorem P18289268370234143389.correct : P18289268370234143389.Spec := by
  intro n
  simp only [A060620, Nat.add_sub_cancel, A060620.P18289268370234143389.a, A060620.P18002916357615302440.a, A007504, A007504.P14310834286015847203.a, A225804, A225804.P13090922353215695081.a, A267084, A267084.P13753241132986256046.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060620

/-! ## A060620.P1802529688601557724

`A267087(n+1)-A225804(n+1)`
-/

namespace A060620.P1802529688601557724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267087 (n + 1) - A225804 (n + 1)

end

end A060620.P1802529688601557724

namespace A060620

/-- `A267087(n+1)-A225804(n+1)` -/
def P1802529688601557724.Spec : Prop :=
  ∀ n, P1802529688601557724.a n = A060620 (n + 1)

theorem P1802529688601557724.correct : P1802529688601557724.Spec := by
  intro n
  simp only [A060620, Nat.add_sub_cancel, A060620.P1802529688601557724.a, A060620.P18002916357615302440.a, A007504, A007504.P14310834286015847203.a, A225804, A225804.P13090922353215695081.a, A267087, A267087.P15838477372030421436.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060620

/-! ## A060620.P18918769055714913

`floor(record[A160793(n+2)]/(n+1))`
-/

namespace A060620.P18918769055714913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P18918769055714913

namespace A060620

/-- `floor(record[A160793(n+2)]/(n+1))` -/
def P18918769055714913.Spec : Prop :=
  ∀ n, P18918769055714913.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P7072276686397645489

`floor(A160793(2*(n+1))/(n+1))`
-/

namespace A060620.P7072276686397645489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160793 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P7072276686397645489

namespace A060620

/-- `floor(A160793(2*(n+1))/(n+1))` -/
def P7072276686397645489.Spec : Prop :=
  ∀ n, P7072276686397645489.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P3759789362679855210

`floor(∑[p?[A067340(n+1)]]/(n+1))`
-/

namespace A060620.P3759789362679855210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A060620.P3759789362679855210

namespace A060620

/-- `floor(∑[p?[A067340(n+1)]]/(n+1))` -/
def P3759789362679855210.Spec : Prop :=
  ∀ n, P3759789362679855210.a n = A060620 (n + 1)

end A060620

/-! ## A060620.P660923126910148965

`A004524(A267087(n+1))`
-/

namespace A060620.P660923126910148965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A267087 (n + 1)).toNat

end

end A060620.P660923126910148965

namespace A060620

/-- `A004524(A267087(n+1))` -/
def P660923126910148965.Spec : Prop :=
  ∀ n, P660923126910148965.a n = A060620 (n + 1)

end A060620

/-!
# A060621: Number of flips between the d-dimensional tilings of the unary zonotope Z(D,d). Here the codimension D-d is equal to 3 and d varies.

The programs for A060621, the canonical program `A060621.P6240892516925639117` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060621 has offset 0).

The definition of A060621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060621.P6240892516925639117

`2^n*(n²+11*n+24)/2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060621

/-- `2^n*(n²+11*n+24)/2` -/
def P6240892516925639117.Spec : Prop :=
  ∀ n, P6240892516925639117.a n = (A060621 n : ℚ)

end A060621

/-! ## A060621.P12892983303768079276

`4*Δ[A084851(n)]`
-/

namespace A060621.P12892983303768079276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A060621.P12892983303768079276

namespace A060621

/-- `4*Δ[A084851(n)]` -/
def P12892983303768079276.Spec : Prop :=
  ∀ n, P12892983303768079276.a n = A060621 n

end A060621

/-! ## A060621.P13348675804599370681

`4*A058396(n+1)`
-/

namespace A060621.P13348675804599370681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A058396 (n + 1)

end

end A060621.P13348675804599370681

namespace A060621

/-- `4*A058396(n+1)` -/
def P13348675804599370681.Spec : Prop :=
  ∀ n, P13348675804599370681.a n = A060621 n

end A060621

/-! ## A060621.P12777899777862421923

`4*Δ[A049611(n+1)]`
-/

namespace A060621.P12777899777862421923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A060621.P12777899777862421923

namespace A060621

/-- `4*Δ[A049611(n+1)]` -/
def P12777899777862421923.Spec : Prop :=
  ∀ n, P12777899777862421923.a n = A060621 n

end A060621

/-! ## A060621.P1153349723303250361

`(n+3)*A109975(n+2)`
-/

namespace A060621.P1153349723303250361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A109975 (n + 2)

end

end A060621.P1153349723303250361

namespace A060621

/-- `(n+3)*A109975(n+2)` -/
def P1153349723303250361.Spec : Prop :=
  ∀ n, P1153349723303250361.a n = A060621 n

end A060621

/-! ## A060621.P11137011548879004145

`(n+3)*A034007(n+3)`
-/

namespace A060621.P11137011548879004145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A034007 (n + 3)

end

end A060621.P11137011548879004145

namespace A060621

/-- `(n+3)*A034007(n+3)` -/
def P11137011548879004145.Spec : Prop :=
  ∀ n, P11137011548879004145.a n = A060621 n

end A060621

/-! ## A060621.P1580144040224935723

`A084851(n+2)-A000079(n)`
-/

namespace A060621.P1580144040224935723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 (n + 2) - A000079 n

end

end A060621.P1580144040224935723

namespace A060621

/-- `A084851(n+2)-A000079(n)` -/
def P1580144040224935723.Spec : Prop :=
  ∀ n, P1580144040224935723.a n = A060621 n

end A060621

/-! ## A060621.P3589295573236978660

`A084266(n+2)+A011782(n+1)`
-/

namespace A060621.P3589295573236978660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 (n + 2) + A011782 (n + 1)

end

end A060621.P3589295573236978660

namespace A060621

/-- `A084266(n+2)+A011782(n+1)` -/
def P3589295573236978660.Spec : Prop :=
  ∀ n, P3589295573236978660.a n = A060621 n

end A060621

/-! ## A060621.P6712656600044710540

`A084266(n+1)+A058396(n+2)`
-/

namespace A060621.P6712656600044710540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 (n + 1) + A058396 (n + 2)

end

end A060621.P6712656600044710540

namespace A060621

/-- `A084266(n+1)+A058396(n+2)` -/
def P6712656600044710540.Spec : Prop :=
  ∀ n, P6712656600044710540.a n = A060621 n

end A060621

/-! ## A060621.P1075345835536165795

`A131577(n+1)+A084266(n+2)`
-/

namespace A060621.P1075345835536165795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A084266 (n + 2)

end

end A060621.P1075345835536165795

namespace A060621

/-- `A131577(n+1)+A084266(n+2)` -/
def P1075345835536165795.Spec : Prop :=
  ∀ n, P1075345835536165795.a n = A060621 n

end A060621

/-! ## A060621.P16871958959227570054

`A084851(n+2)-A034008(n+2)`
-/

namespace A060621.P16871958959227570054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 (n + 2) - A034008 (n + 2)

end

end A060621.P16871958959227570054

namespace A060621

/-- `A084851(n+2)-A034008(n+2)` -/
def P16871958959227570054.Spec : Prop :=
  ∀ n, P16871958959227570054.a n = A060621 n

end A060621

/-! ## A060621.P15297741357703152634

`ogf((12-36x+28x^2)/(1-6x+12x^2-8x^3))`
-/

namespace A060621.P15297741357703152634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -36, 28] [1, -6, 12, -8] n

end

end A060621.P15297741357703152634

namespace A060621

/-- `ogf((12-36x+28x^2)/(1-6x+12x^2-8x^3))` -/
def P15297741357703152634.Spec : Prop :=
  ∀ n, P15297741357703152634.a n = A060621 n

end A060621

/-! ## A060621.P17741676922485911146

`A098385(n)-A100312(n)`
-/

namespace A060621.P17741676922485911146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098385 n - A100312 n

end

end A060621.P17741676922485911146

namespace A060621

/-- `A098385(n)-A100312(n)` -/
def P17741676922485911146.Spec : Prop :=
  ∀ n, P17741676922485911146.a n = A060621 n

end A060621

/-! ## A060621.P11302117281175727791

`A007466(n+3)-A087431(n+1)`
-/

namespace A060621.P11302117281175727791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 3) - A087431 (n + 1)

end

end A060621.P11302117281175727791

namespace A060621

/-- `A007466(n+3)-A087431(n+1)` -/
def P11302117281175727791.Spec : Prop :=
  ∀ n, P11302117281175727791.a n = A060621 n

end A060621

/-! ## A060621.P1788419504668121748

`Δ[A107392(n)/2]`
-/

namespace A060621.P1788419504668121748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107392 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060621.P1788419504668121748

namespace A060621

/-- `Δ[A107392(n)/2]` -/
def P1788419504668121748.Spec : Prop :=
  ∀ n, P1788419504668121748.a n = (A060621 n : ℚ)

end A060621

/-! ## A060621.P7494244946500297022

`Δ[A100312(n+1)/2]`
-/

namespace A060621.P7494244946500297022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100312 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060621.P7494244946500297022

namespace A060621

/-- `Δ[A100312(n+1)/2]` -/
def P7494244946500297022.Spec : Prop :=
  ∀ n, P7494244946500297022.a n = (A060621 n : ℚ)

end A060621

/-! ## A060621.P13476091301844017104

`∑{#}[n+1, C(n+1, #)*A214345(#)]`
-/

namespace A060621.P13476091301844017104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A214345 k

end

end A060621.P13476091301844017104

namespace A060621

/-- `∑{#}[n+1, C(n+1, #)*A214345(#)]` -/
def P13476091301844017104.Spec : Prop :=
  ∀ n, P13476091301844017104.a n = A060621 n

end A060621

/-! ## A060621.P1627975166116335373

`Δ[A059474(∑[n+3])]`
-/

namespace A060621.P1627975166116335373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059474 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060621.P1627975166116335373

namespace A060621

/-- `Δ[A059474(∑[n+3])]` -/
def P1627975166116335373.Spec : Prop :=
  ∀ n, P1627975166116335373.a n = A060621 n

end A060621

/-!
# A060626: Number of right triangles of a given area required to form successively larger squares.

The programs for A060626, the canonical program `A060626.P7741157105463878735` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060626 has offset 0).

The definition of A060626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060626.P7741157105463878735

`4*(n+1)²-2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060626

/-- `4*(n+1)²-2` -/
def P7741157105463878735.Spec : Prop :=
  ∀ n, P7741157105463878735.a n = A060626 n

theorem P7741157105463878735.correct : P7741157105463878735.Spec := by
  intro n
  simp only [A060626]

end A060626

/-! ## A060626.P687486664742954415

`ogf((2+8x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A060626.P687486664742954415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -2] [1, -3, 3, -1] n

end

end A060626.P687486664742954415

namespace A060626

/-- `ogf((2+8x-2x^2)/(1-3x+3x^2-x^3))` -/
def P687486664742954415.Spec : Prop :=
  ∀ n, P687486664742954415.a n = A060626 n

end A060626

/-! ## A060626.P11243155537098091159

`2*A056220(n+1)`
-/

namespace A060626.P11243155537098091159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056220 (n + 1)

end

end A060626.P11243155537098091159

namespace A060626

/-- `2*A056220(n+1)` -/
def P11243155537098091159.Spec : Prop :=
  ∀ n, P11243155537098091159.a n = A060626 n

theorem P11243155537098091159.correct : P11243155537098091159.Spec := by
  intro n
  simp only [A060626, Nat.add_sub_cancel, A060626.P11243155537098091159.a, A060626.P7741157105463878735.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060626

/-! ## A060626.P6812244581898770663

`record[xor(n, -2)²-2]`
-/

namespace A060626.P6812244581898770663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060626.P6812244581898770663

namespace A060626

/-- `record[xor(n, -2)²-2]` -/
def P6812244581898770663.Spec : Prop :=
  ∀ n, P6812244581898770663.a n = A060626 n

end A060626

/-! ## A060626.P10437032056706281440

`∑[a(n-1)+8]` with `a(0)=2, a(1)=12`
-/

namespace A060626.P10437032056706281440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 12] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060626.P10437032056706281440

namespace A060626

/-- `∑[a(n-1)+8]` -/
def P10437032056706281440.Spec : Prop :=
  ∀ n, (P10437032056706281440.a n : ℤ) = A060626 n

end A060626

/-! ## A060626.P2016203517922281077

`or(2, 4*n*(n+2))`
-/

namespace A060626.P2016203517922281077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * (n * (n + 2)))

end

end A060626.P2016203517922281077

namespace A060626

/-- `or(2, 4*n*(n+2))` -/
def P2016203517922281077.Spec : Prop :=
  ∀ n, (P2016203517922281077.a n : ℤ) = A060626 n

end A060626

/-! ## A060626.P16106746972397828371

`xor(2, 4*n*(n+2))`
-/

namespace A060626.P16106746972397828371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (4 * (n * (n + 2)))

end

end A060626.P16106746972397828371

namespace A060626

/-- `xor(2, 4*n*(n+2))` -/
def P16106746972397828371.Spec : Prop :=
  ∀ n, (P16106746972397828371.a n : ℤ) = A060626 n

end A060626

/-! ## A060626.P3096548956040174642

`record[(2*(1-n))²-2]`
-/

namespace A060626.P3096548956040174642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (1 - (n : ℤ))) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060626.P3096548956040174642

namespace A060626

/-- `record[(2*(1-n))²-2]` -/
def P3096548956040174642.Spec : Prop :=
  ∀ n, P3096548956040174642.a n = A060626 n

end A060626

/-! ## A060626.P11863342435009976661

`∑[ogf((2+8x-2x^2)/(1-2x+x^2))]`
-/

namespace A060626.P11863342435009976661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060626.P11863342435009976661

namespace A060626

/-- `∑[ogf((2+8x-2x^2)/(1-2x+x^2))]` -/
def P11863342435009976661.Spec : Prop :=
  ∀ n, P11863342435009976661.a n = A060626 n

end A060626

/-! ## A060626.P9417043207845821262

`lcm(2, 2-(n+2+n)²)`
-/

namespace A060626.P9417043207845821262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 - ((n + 2 + n) ^ 2 : ℤ))

end

end A060626.P9417043207845821262

namespace A060626

/-- `lcm(2, 2-(n+2+n)²)` -/
def P9417043207845821262.Spec : Prop :=
  ∀ n, (P9417043207845821262.a n : ℤ) = A060626 n

end A060626

/-! ## A060626.P13568919398656739190

`abs(2-xor(2*n, -2)²)`
-/

namespace A060626.P13568919398656739190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - Int.xor (2 * n : ℤ) (-2) ^ 2|

end

end A060626.P13568919398656739190

namespace A060626

/-- `abs(2-xor(2*n, -2)²)` -/
def P13568919398656739190.Spec : Prop :=
  ∀ n, P13568919398656739190.a n = A060626 n

end A060626

/-! ## A060626.P9196125270784987371

`filter[(n+2)²-2, val(#, 2)]`
-/

namespace A060626.P9196125270784987371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j).toNat 2 = 1) n)

end

end A060626.P9196125270784987371

namespace A060626

/-- `filter[(n+2)²-2, val(#, 2)]` -/
def P9196125270784987371.Spec : Prop :=
  ∀ n, P9196125270784987371.a n = A060626 n

end A060626

/-! ## A060626.P10946270895102563729

`ceil((2/tan(1/(n+1)))²)`
-/

namespace A060626.P10946270895102563729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 / Real.tan (1 / (n + 1 : ℚ) : ℝ)) ^ 2⌉

end

end A060626.P10946270895102563729

namespace A060626

/-- `ceil((2/tan(1/(n+1)))²)` -/
def P10946270895102563729.Spec : Prop :=
  ∀ n, P10946270895102563729.a n = A060626 n

end A060626

/-! ## A060626.P12444030186067769946

`floor((2/sinh(1/(n+1)))²)`
-/

namespace A060626.P12444030186067769946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / Real.sinh (1 / (n + 1 : ℚ) : ℝ)) ^ 2⌋

end

end A060626.P12444030186067769946

namespace A060626

/-- `floor((2/sinh(1/(n+1)))²)` -/
def P12444030186067769946.Spec : Prop :=
  ∀ n, P12444030186067769946.a n = A060626 n

end A060626

/-! ## A060626.P741244009312624847

`ceil((2*cot(1/(n+1)))²)`
-/

namespace A060626.P741244009312624847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Real.cot (1 / (n + 1 : ℚ) : ℝ)) ^ 2⌉

end

end A060626.P741244009312624847

namespace A060626

/-- `ceil((2*cot(1/(n+1)))²)` -/
def P741244009312624847.Spec : Prop :=
  ∀ n, P741244009312624847.a n = A060626 n

end A060626

/-! ## A060626.P8628218789713802322

`abs(or(2, -(n+2+n)²))`
-/

namespace A060626.P8628218789713802322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-((n + 2 + n) ^ 2 : ℤ))|

end

end A060626.P8628218789713802322

namespace A060626

/-- `abs(or(2, -(n+2+n)²))` -/
def P8628218789713802322.Spec : Prop :=
  ∀ n, P8628218789713802322.a n = A060626 n

end A060626

/-! ## A060626.P9707608229253497085

`-or(2, -(n+2+n)²)`
-/

namespace A060626.P9707608229253497085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-((n + 2 + n) ^ 2 : ℤ))

end

end A060626.P9707608229253497085

namespace A060626

/-- `-or(2, -(n+2+n)²)` -/
def P9707608229253497085.Spec : Prop :=
  ∀ n, P9707608229253497085.a n = A060626 n

end A060626

/-! ## A060626.P17744342849082634949

`abs(xor(2, -(n+2+n)²))`
-/

namespace A060626.P17744342849082634949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (-((n + 2 + n) ^ 2 : ℤ))|

end

end A060626.P17744342849082634949

namespace A060626

/-- `abs(xor(2, -(n+2+n)²))` -/
def P17744342849082634949.Spec : Prop :=
  ∀ n, P17744342849082634949.a n = A060626 n

end A060626

/-! ## A060626.P5368975984181538975

`-xor(2, -(n+2+n)²)`
-/

namespace A060626.P5368975984181538975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-((n + 2 + n) ^ 2 : ℤ))

end

end A060626.P5368975984181538975

namespace A060626

/-- `-xor(2, -(n+2+n)²)` -/
def P5368975984181538975.Spec : Prop :=
  ∀ n, P5368975984181538975.a n = A060626 n

end A060626

/-! ## A060626.P11306848012668597993

`abs(2-record[(n-2+n)²])`
-/

namespace A060626.P11306848012668597993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A060626.P11306848012668597993

namespace A060626

/-- `abs(2-record[(n-2+n)²])` -/
def P11306848012668597993.Spec : Prop :=
  ∀ n, P11306848012668597993.a n = A060626 n

end A060626

/-!
# A060628: Triangle of coefficients in expansion of elliptic function sn(u) in powers of u and k.

The programs for A060628, there is no canonical definition to state claims against.
-/

/-! ## A060628.P6585436897367370812

`A004059(A022173(n))`
-/

namespace A060628.P6585436897367370812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004059 (A022173 n).toNat

end

end A060628.P6585436897367370812

/-! ## A060628.P11170518032276921709

`A054861(3*A022173(n))`
-/

namespace A060628.P11170518032276921709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (3 * A022173 n).toNat

end

end A060628.P11170518032276921709

/-! ## A060628.P8712524027235568158

`A054861(lcm(3, A022173(n)))`
-/

namespace A060628.P8712524027235568158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Int.lcm 3 (A022173 n))

end

end A060628.P8712524027235568158

/-! ## A060628.P14789780468098439666

`A008621(3*A167884(n+1))`
-/

namespace A060628.P14789780468098439666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (3 * A167884 (n + 1)).toNat

end

end A060628.P14789780468098439666

/-! ## A060628.P15529967622544453663

`A004128(2*A022173(n))/2`
-/

namespace A060628.P15529967622544453663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004128 (2 * A022173 n).toNat : ℚ) / 2

end

end A060628.P15529967622544453663

/-!
# A060629: 1/2+Sum_{n >= 1} a(n)*x^(2*n)/(4^n*(2*n)!) = 1/Pi*EllipticK(x).

The programs for A060629, the canonical program `A060629.P17405335260391260491` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060629 has offset 1).

The definition of A060629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060629.P17405335260391260491

`C(2*(n+1), n+1)*C(2*(n+1)-1, n+1)*(2*(n+1))!/4^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060629

/-- `C(2*(n+1), n+1)*C(2*(n+1)-1, n+1)*(2*(n+1))!/4^(n+1)` -/
def P17405335260391260491.Spec : Prop :=
  ∀ n, P17405335260391260491.a n = (A060629 (n + 1) : ℚ)

end A060629

/-! ## A060629.P12974778930488291182

`C(2*n+1, n)*∏[(2*n+1)²]`
-/

namespace A060629.P12974778930488291182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A060629.P12974778930488291182

namespace A060629

/-- `C(2*n+1, n)*∏[(2*n+1)²]` -/
def P12974778930488291182.Spec : Prop :=
  ∀ n, (P12974778930488291182.a n : ℤ) = A060629 (n + 1)

end A060629

/-! ## A060629.P15512927418716491987

`A283678(n+1)/2`
-/

namespace A060629.P15512927418716491987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283678 (n + 1) : ℚ) / 2

end

end A060629.P15512927418716491987

namespace A060629

/-- `A283678(n+1)/2` -/
def P15512927418716491987.Spec : Prop :=
  ∀ n, P15512927418716491987.a n = (A060629 (n + 1) : ℚ)

end A060629

/-! ## A060629.P5117101504894460942

`Δ[n²]*A001757(Δ[n²])`
-/

namespace A060629.P5117101504894460942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A060629.P5117101504894460942

namespace A060629

/-- `Δ[n²]*A001757(Δ[n²])` -/
def P5117101504894460942.Spec : Prop :=
  ∀ n, P5117101504894460942.a n = A060629 (n + 1)

end A060629

/-! ## A060629.P5973020392814729421

`∏[(2*n+1)²]*A001700(n)`
-/

namespace A060629.P5973020392814729421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001700 n

end

end A060629.P5973020392814729421

namespace A060629

/-- `∏[(2*n+1)²]*A001700(n)` -/
def P5973020392814729421.Spec : Prop :=
  ∀ n, P5973020392814729421.a n = A060629 (n + 1)

end A060629

/-!
# A060630: a(n) gives smallest number requiring n iterations of the map i -> A053392(i) to reach zero.

The programs for A060630, there is no canonical definition to state claims against.
-/

/-! ## A060630.P17473741475495359295

`eq[A050327(n+1), A391736(n+1)]`
-/

namespace A060630.P17473741475495359295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060630.P17473741475495359295

/-!
# A060631: Number of independent sets in an n-dimensional hypercube modulo symmetries of the hypercube.

The programs for A060631, there is no canonical definition to state claims against.
-/

/-! ## A060631.P2352702684712986621

`A376774(A000108(n)+1)`
-/

namespace A060631.P2352702684712986621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376774 (A000108 n + 1).toNat

end

end A060631.P2352702684712986621

/-! ## A060631.P16921086039255226683

`A364918(A002966(n+1)+4)`
-/

namespace A060631.P16921086039255226683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364918 (A002966 (n + 1) + 4).toNat

end

end A060631.P16921086039255226683

/-!
# A060632: a(n) = 2^wt(floor(n/2)) (i.e., 2^A000120(floor(n/2)), or A001316(floor(n/2))).

The programs for A060632, the canonical program `A060632.P4006644986864804916` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060632 has offset 0).

The definition of A060632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001316(floor(n/2))` (program `A060632.P4006644986864804916`, by `A060632.P4006644986864804916.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060632.P4006644986864804916

`A001316(floor(n/2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060632

/-- `A001316(floor(n/2))` -/
def P4006644986864804916.Spec : Prop :=
  ∀ n, P4006644986864804916.a n = A060632 n

theorem P4006644986864804916.correct : P4006644986864804916.Spec := by
  intro n
  simp only [A060632]

end A060632

/-! ## A060632.P3068185961679455378

`2^A000120(floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060632.P3068185961679455378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A060632.P3068185961679455378

namespace A060632

/-- `2^A000120(floor(n/2))` -/
def P3068185961679455378.Spec : Prop :=
  ∀ n, P3068185961679455378.a n = (A060632 n : ℚ)

end A060632

/-! ## A060632.P6543557200533719169

`gcd(A056040(n), 2^n)`
-/

namespace A060632.P6543557200533719169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056040 n) (2 ^ n : ℤ)

end

end A060632.P6543557200533719169

namespace A060632

/-- `gcd(A056040(n), 2^n)` -/
def P6543557200533719169.Spec : Prop :=
  ∀ n, (P6543557200533719169.a n : ℤ) = A060632 n

end A060632

/-! ## A060632.P6874790329575115058

`2*a(and(n, n-2))` with `a(0)=1, a(1)=1`
-/

namespace A060632.P6874790329575115058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

end

end A060632.P6874790329575115058

namespace A060632

/-- `2*a(and(n, n-2))` -/
def P6874790329575115058.Spec : Prop :=
  ∀ n, (P6874790329575115058.a n : ℤ) = A060632 n

end A060632

/-! ## A060632.P12286918288650160934

`2*a(n-2^floor(log2(n)))` with `a(0)=1, a(1)=1`
-/

namespace A060632.P12286918288650160934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2 ^ Nat.log 2 n)

end

end A060632.P12286918288650160934

namespace A060632

/-- `2*a(n-2^floor(log2(n)))` -/
def P12286918288650160934.Spec : Prop :=
  ∀ n, (P12286918288650160934.a n : ℤ) = A060632 n

end A060632

/-! ## A060632.P5875798108618514103

`2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))/gcd(2, n+1)`
-/

namespace A060632.P5875798108618514103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A060632.P5875798108618514103

namespace A060632

/-- `2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))/gcd(2, n+1)` -/
def P5875798108618514103.Spec : Prop :=
  ∀ n, P5875798108618514103.a n = (A060632 n : ℚ)

end A060632

/-! ## A060632.P1681926907528769360

`Δ[A151566(n)]`
-/

namespace A060632.P1681926907528769360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060632.P1681926907528769360

namespace A060632

/-- `Δ[A151566(n)]` -/
def P1681926907528769360.Spec : Prop :=
  ∀ n, P1681926907528769360.a n = A060632 n

end A060632

/-! ## A060632.P1083821900874202123

`A361145(or(1, n))`
-/

namespace A060632.P1083821900874202123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361145 (Nat.lor 1 n)

end

end A060632.P1083821900874202123

namespace A060632

/-- `A361145(or(1, n))` -/
def P1083821900874202123.Spec : Prop :=
  ∀ n, P1083821900874202123.a n = A060632 n

end A060632

/-! ## A060632.P16611094810737756334

`A071044(and(n, -2))`
-/

namespace A060632.P16611094810737756334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Int.land (n : ℤ) (-2)).toNat

end

end A060632.P16611094810737756334

namespace A060632

/-- `A071044(and(n, -2))` -/
def P16611094810737756334.Spec : Prop :=
  ∀ n, P16611094810737756334.a n = A060632 n

end A060632

/-! ## A060632.P16073074871255966071

`A160745(n+1)/3`
-/

namespace A060632.P16073074871255966071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160745 (n + 1) : ℚ) / 3

end

end A060632.P16073074871255966071

namespace A060632

/-- `A160745(n+1)/3` -/
def P16073074871255966071.Spec : Prop :=
  ∀ n, P16073074871255966071.a n = (A060632 n : ℚ)

theorem P16073074871255966071.correct : P16073074871255966071.Spec := by
  intro n
  simp only [A060632, Nat.add_sub_cancel, A060632.P16073074871255966071.a, A060632.P4006644986864804916.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, A160745, A160745.P15092458154072212321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060632

/-! ## A060632.P14363731125402945143

`A088512(or(1, n))+1`
-/

namespace A060632.P14363731125402945143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 (Nat.lor 1 n) + 1

end

end A060632.P14363731125402945143

namespace A060632

/-- `A088512(or(1, n))+1` -/
def P14363731125402945143.Spec : Prop :=
  ∀ n, P14363731125402945143.a n = A060632 n

end A060632

/-! ## A060632.P2267210888487467307

`A048896(or(1, n)-1)`
-/

namespace A060632.P2267210888487467307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (Nat.lor 1 n - 1)

end

end A060632.P2267210888487467307

namespace A060632

/-- `A048896(or(1, n)-1)` -/
def P2267210888487467307.Spec : Prop :=
  ∀ n, P2267210888487467307.a n = A060632 n

end A060632

/-! ## A060632.P969059597389909325

`A071044(or(1, n)-1)`
-/

namespace A060632.P969059597389909325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Nat.lor 1 n - 1)

end

end A060632.P969059597389909325

namespace A060632

/-- `A071044(or(1, n)-1)` -/
def P969059597389909325.Spec : Prop :=
  ∀ n, P969059597389909325.a n = A060632 n

end A060632

/-! ## A060632.P11086532647931359413

`A233775(or(1, n))/2`
-/

namespace A060632.P11086532647931359413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233775 (Nat.lor 1 n) : ℚ) / 2

end

end A060632.P11086532647931359413

namespace A060632

/-- `A233775(or(1, n))/2` -/
def P11086532647931359413.Spec : Prop :=
  ∀ n, P11086532647931359413.a n = (A060632 n : ℚ)

end A060632

/-! ## A060632.P10080051576998314104

`1-A309255(n)+n`
-/

namespace A060632.P10080051576998314104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A309255 n + (n : ℤ)

end

end A060632.P10080051576998314104

namespace A060632

/-- `1-A309255(n)+n` -/
def P10080051576998314104.Spec : Prop :=
  ∀ n, P10080051576998314104.a n = A060632 n

end A060632

/-! ## A060632.P1438732477693731180

`A048896(n-and(1, n))`
-/

namespace A060632.P1438732477693731180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (n - Nat.land 1 n)

end

end A060632.P1438732477693731180

namespace A060632

/-- `A048896(n-and(1, n))` -/
def P1438732477693731180.Spec : Prop :=
  ∀ n, P1438732477693731180.a n = A060632 n

end A060632

/-! ## A060632.P16835679213468666252

`A071044(n-and(1, n))`
-/

namespace A060632.P16835679213468666252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (n - Nat.land 1 n)

end

end A060632.P16835679213468666252

namespace A060632

/-- `A071044(n-and(1, n))` -/
def P16835679213468666252.Spec : Prop :=
  ∀ n, P16835679213468666252.a n = A060632 n

end A060632

/-! ## A060632.P12105347606021798865

`A151930(n-and(1, n))`
-/

namespace A060632.P12105347606021798865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (n - Nat.land 1 n)

end

end A060632.P12105347606021798865

namespace A060632

/-- `A151930(n-and(1, n))` -/
def P12105347606021798865.Spec : Prop :=
  ∀ n, P12105347606021798865.a n = A060632 n

end A060632

/-! ## A060632.P4725175996767660256

`sqrt(A102376(floor(n/2)))`
-/

namespace A060632.P4725175996767660256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A060632.P4725175996767660256

namespace A060632

/-- `sqrt(A102376(floor(n/2)))` -/
def P4725175996767660256.Spec : Prop :=
  ∀ n, P4725175996767660256.a n = (A060632 n : ℝ)

end A060632

/-! ## A060632.P11992916813968510925

`A114212(n)-a(n-1)` with `a(0)=1`
-/

namespace A060632.P11992916813968510925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114212 n - a (n - 1)

end

end A060632.P11992916813968510925

namespace A060632

/-- `A114212(n)-a(n-1)` -/
def P11992916813968510925.Spec : Prop :=
  ∀ n, P11992916813968510925.a n = A060632 n

end A060632

/-!
# A060633: Surround numbers of an n X 1 rectangle.

The programs for A060633, the canonical program `A060633.P11112508526449948238` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060633 has offset 1).

The definition of A060633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060633.P6797260705081082971

`ogf((16+43x-94x^2+43x^3-2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A060633.P6797260705081082971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 43, -94, 43, -2] [1, -5, 10, -10, 5, -1] n

end

end A060633.P6797260705081082971

namespace A060633

/-- `ogf((16+43x-94x^2+43x^3-2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6797260705081082971.Spec : Prop :=
  ∀ n, P6797260705081082971.a n = A060633 (n + 1)

end A060633

/-! ## A060633.P11112508526449948238

`((n+1)^4+22*(n+1)^3+105*(n+1)²-56*(n+1)-8)/4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060633

/-- `((n+1)^4+22*(n+1)^3+105*(n+1)²-56*(n+1)-8)/4` -/
def P11112508526449948238.Spec : Prop :=
  ∀ n, P11112508526449948238.a n = (A060633 (n + 1) : ℚ)

end A060633

/-!
# A060634: Union of Fibonacci numbers and prime numbers.

The programs for A060634, the canonical program `A060634.P1496846286509724012` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060634 has offset 1).

The definition of A060634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060634.P9389662843955782354

`∪[round(ϕ*a(n-1)), A000040(n+1)]` with `a(0)=1`
-/

namespace A060634.P9389662843955782354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P9389662843955782354

namespace A060634

/-- `∪[round(ϕ*a(n-1)), A000040(n+1)]` -/
def P9389662843955782354.Spec : Prop :=
  ∀ n, (P9389662843955782354.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P1547068866640423477

`∪[round(ϕ*a(n-1)), A006005(n+1)]` with `a(0)=1`
-/

namespace A060634.P1547068866640423477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P1547068866640423477

namespace A060634

/-- `∪[round(ϕ*a(n-1)), A006005(n+1)]` -/
def P1547068866640423477.Spec : Prop :=
  ∀ n, (P1547068866640423477.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P14554025558374443084

`∪[A008864(n+1)-1, round(ϕ*a(n-1))]` with `a(0)=1`
-/

namespace A060634.P14554025558374443084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P14554025558374443084

namespace A060634

/-- `∪[A008864(n+1)-1, round(ϕ*a(n-1))]` -/
def P14554025558374443084.Spec : Prop :=
  ∀ n, (P14554025558374443084.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P4234256383232732254

`∪[A014692(n+1)+n, round(ϕ*a(n-1))]` with `a(0)=1`
-/

namespace A060634.P4234256383232732254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P4234256383232732254

namespace A060634

/-- `∪[A014692(n+1)+n, round(ϕ*a(n-1))]` -/
def P4234256383232732254.Spec : Prop :=
  ∀ n, (P4234256383232732254.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P8780272609278731993

`∪[A014688(n+1)-(n+1), round(ϕ*a(n-1))]` with `a(0)=1`
-/

namespace A060634.P8780272609278731993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P8780272609278731993

namespace A060634

/-- `∪[A014688(n+1)-(n+1), round(ϕ*a(n-1))]` -/
def P8780272609278731993.Spec : Prop :=
  ∀ n, (P8780272609278731993.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P1496846286509724012

`∪[A006005(n+1), A020695(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060634

/-- `∪[A006005(n+1), A020695(n)]` -/
def P1496846286509724012.Spec : Prop :=
  ∀ n, (P1496846286509724012.a n : ℤ) = A060634 (n + 1)

theorem P1496846286509724012.correct : P1496846286509724012.Spec := by
  intro n
  simp only [A060634, Nat.add_sub_cancel]

end A060634

/-! ## A060634.P11057910909730391508

`∪[A008578(n+1), A020695(n)]`
-/

namespace A060634.P11057910909730391508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P11057910909730391508

namespace A060634

/-- `∪[A008578(n+1), A020695(n)]` -/
def P11057910909730391508.Spec : Prop :=
  ∀ n, (P11057910909730391508.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P14154668723084023610

`∪[A008578(n+1), A020701(n)]`
-/

namespace A060634.P14154668723084023610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P14154668723084023610

namespace A060634

/-- `∪[A008578(n+1), A020701(n)]` -/
def P14154668723084023610.Spec : Prop :=
  ∀ n, (P14154668723084023610.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P7495950404905517012

`∪[A008578(n+1), A020712(n)]`
-/

namespace A060634.P7495950404905517012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P7495950404905517012

namespace A060634

/-- `∪[A008578(n+1), A020712(n)]` -/
def P7495950404905517012.Spec : Prop :=
  ∀ n, (P7495950404905517012.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P2208542581015454228

`∪[A020695(n), A140475(n+1)]`
-/

namespace A060634.P2208542581015454228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P2208542581015454228

namespace A060634

/-- `∪[A020695(n), A140475(n+1)]` -/
def P2208542581015454228.Spec : Prop :=
  ∀ n, (P2208542581015454228.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P773277824806433047

`eq[A007895(n)*A007920(n), A007920(n)]`
-/

namespace A060634.P773277824806433047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n * A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060634.P773277824806433047

namespace A060634

/-- `eq[A007895(n)*A007920(n), A007920(n)]` -/
def P773277824806433047.Spec : Prop :=
  ∀ n, (P773277824806433047.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P7308104990376975230

`eq[A066628(A014963(n+1)), A066628(n+1)]+1`
-/

namespace A060634.P7308104990376975230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060634.P7308104990376975230

namespace A060634

/-- `eq[A066628(A014963(n+1)), A066628(n+1)]+1` -/
def P7308104990376975230.Spec : Prop :=
  ∀ n, (P7308104990376975230.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P14695523831026199533

`eq[A249783(A014963(n+1)), A249783(n+1)]+1`
-/

namespace A060634.P14695523831026199533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249783 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060634.P14695523831026199533

namespace A060634

/-- `eq[A249783(A014963(n+1)), A249783(n+1)]+1` -/
def P14695523831026199533.Spec : Prop :=
  ∀ n, (P14695523831026199533.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P2140786001199035017

`eq[A286326(A014963(n+1)), A286326(n+1)]+1`
-/

namespace A060634.P2140786001199035017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060634.P2140786001199035017

namespace A060634

/-- `eq[A286326(A014963(n+1)), A286326(n+1)]+1` -/
def P2140786001199035017.Spec : Prop :=
  ∀ n, (P2140786001199035017.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P1744929729822209573

`eq[A286327(A014963(n+1)), A286327(n+1)]+1`
-/

namespace A060634.P1744929729822209573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060634.P1744929729822209573

namespace A060634

/-- `eq[A286327(A014963(n+1)), A286327(n+1)]+1` -/
def P1744929729822209573.Spec : Prop :=
  ∀ n, (P1744929729822209573.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P9737264724438259575

`eq[A007895(n)*A295335(n), A295335(n)]`
-/

namespace A060634.P9737264724438259575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n * A295335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060634.P9737264724438259575

namespace A060634

/-- `eq[A007895(n)*A295335(n), A295335(n)]` -/
def P9737264724438259575.Spec : Prop :=
  ∀ n, (P9737264724438259575.a n : ℤ) = A060634 (n + 1)

end A060634

/-! ## A060634.P7588754464660716293

`eq[A243613(A014963(n+1)), A243613(n+1)]+1`
-/

namespace A060634.P7588754464660716293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243613 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060634.P7588754464660716293

namespace A060634

/-- `eq[A243613(A014963(n+1)), A243613(n+1)]+1` -/
def P7588754464660716293.Spec : Prop :=
  ∀ n, (P7588754464660716293.a n : ℤ) = A060634 (n + 1)

end A060634

/-!
# A060635: a(n) is the number of 2 X 1 domino tilings of the set S in the plane R^2 consisting of the union of the following two rectangles: rectangle1: |x| <= n, |y| <= 1, rectangle2: |x| <= 1, |y| <= n.

The programs for A060635, the canonical program `A060635.P900422356418885628` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060635 has offset 1).

The definition of A060635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060635.P506982123596188160

`ogf((2-2x+2x^2)/(1-5x-15x^2+15x^3+5x^4-x^5))`
-/

namespace A060635.P506982123596188160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 2] [1, -5, -15, 15, 5, -1] n

end

end A060635.P506982123596188160

namespace A060635

/-- `ogf((2-2x+2x^2)/(1-5x-15x^2+15x^3+5x^4-x^5))` -/
def P506982123596188160.Spec : Prop :=
  ∀ n, P506982123596188160.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P900422356418885628

`2*A001654(n+1)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060635

/-- `2*A001654(n+1)²` -/
def P900422356418885628.Spec : Prop :=
  ∀ n, P900422356418885628.a n = A060635 (n + 1)

theorem P900422356418885628.correct : P900422356418885628.Spec := by
  intro n
  simp only [A060635, Nat.add_sub_cancel]

end A060635

/-! ## A060635.P15471938619625194076

`2*A000045(n+1)²*A000045(n+2)²`
-/

namespace A060635.P15471938619625194076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1) ^ 2 * A000045 (n + 2) ^ 2

end

end A060635.P15471938619625194076

namespace A060635

/-- `2*A000045(n+1)²*A000045(n+2)²` -/
def P15471938619625194076.Spec : Prop :=
  ∀ n, P15471938619625194076.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P16632520074039494146

`2*Δ[A064831(n)]²`
-/

namespace A060635.P16632520074039494146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A060635.P16632520074039494146

namespace A060635

/-- `2*Δ[A064831(n)]²` -/
def P16632520074039494146.Spec : Prop :=
  ∀ n, P16632520074039494146.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P8290957801956903539

`2*A189145(Δ[n²])`
-/

namespace A060635.P8290957801956903539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189145 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060635.P8290957801956903539

namespace A060635

/-- `2*A189145(Δ[n²])` -/
def P8290957801956903539.Spec : Prop :=
  ∀ n, P8290957801956903539.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P10091506273511725967

`A079472(n+2)²/2`
-/

namespace A060635.P10091506273511725967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079472 (n + 2) ^ 2 : ℚ) / 2

end

end A060635.P10091506273511725967

namespace A060635

/-- `A079472(n+2)²/2` -/
def P10091506273511725967.Spec : Prop :=
  ∀ n, P10091506273511725967.a n = (A060635 (n + 1) : ℚ)

theorem P10091506273511725967.correct : P10091506273511725967.Spec := by
  intro n
  simp only [A060635, Nat.add_sub_cancel, A060635.P10091506273511725967.a, A060635.P900422356418885628.a, A001654, A001654.P2587154079132953885.a, A079472, A079472.P15749559243718195313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060635

/-! ## A060635.P3046882991139584400

`2*A070550(2*n)²`
-/

namespace A060635.P3046882991139584400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070550 (2 * n) ^ 2

end

end A060635.P3046882991139584400

namespace A060635

/-- `2*A070550(2*n)²` -/
def P3046882991139584400.Spec : Prop :=
  ∀ n, P3046882991139584400.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P10088066550782008639

`A293411(Δ[n²])²/2`
-/

namespace A060635.P10088066550782008639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293411 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 : ℚ) / 2

end

end A060635.P10088066550782008639

namespace A060635

/-- `A293411(Δ[n²])²/2` -/
def P10088066550782008639.Spec : Prop :=
  ∀ n, P10088066550782008639.a n = (A060635 (n + 1) : ℚ)

end A060635

/-! ## A060635.P1568325700588083664

`Δ[2*∑[A001654(n)²]]`
-/

namespace A060635.P1568325700588083664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060635.P1568325700588083664

namespace A060635

/-- `Δ[2*∑[A001654(n)²]]` -/
def P1568325700588083664.Spec : Prop :=
  ∀ n, P1568325700588083664.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P11382293762548847461

`Δ[Δ[A110035(n)]]²/2`
-/

namespace A060635.P11382293762548847461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A060635.P11382293762548847461

namespace A060635

/-- `Δ[Δ[A110035(n)]]²/2` -/
def P11382293762548847461.Spec : Prop :=
  ∀ n, P11382293762548847461.a n = (A060635 (n + 1) : ℚ)

end A060635

/-! ## A060635.P12001731763772779209

`2*∑[A007598(n+1)]²`
-/

namespace A060635.P12001731763772779209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060635.P12001731763772779209

namespace A060635

/-- `2*∑[A007598(n+1)]²` -/
def P12001731763772779209.Spec : Prop :=
  ∀ n, P12001731763772779209.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P12703787801328133243

`2*A180663(∑[n+1])²`
-/

namespace A060635.P12703787801328133243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180663 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060635.P12703787801328133243

namespace A060635

/-- `2*A180663(∑[n+1])²` -/
def P12703787801328133243.Spec : Prop :=
  ∀ n, P12703787801328133243.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P16861682165155738937

`2*Δ[A166516(n+1)]²`
-/

namespace A060635.P16861682165155738937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A060635.P16861682165155738937

namespace A060635

/-- `2*Δ[A166516(n+1)]²` -/
def P16861682165155738937.Spec : Prop :=
  ∀ n, P16861682165155738937.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P12642181581343264825

`∑[A175395(n+1)]²/2`
-/

namespace A060635.P12642181581343264825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A060635.P12642181581343264825

namespace A060635

/-- `∑[A175395(n+1)]²/2` -/
def P12642181581343264825.Spec : Prop :=
  ∀ n, P12642181581343264825.a n = (A060635 (n + 1) : ℚ)

end A060635

/-! ## A060635.P5287079811505543892

`2*A180662(∑[n+2])²`
-/

namespace A060635.P5287079811505543892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180662 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060635.P5287079811505543892

namespace A060635

/-- `2*A180662(∑[n+2])²` -/
def P5287079811505543892.Spec : Prop :=
  ∀ n, P5287079811505543892.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P16513057710636513593

`2*A230448(∑[n+3])²`
-/

namespace A060635.P16513057710636513593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230448 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060635.P16513057710636513593

namespace A060635

/-- `2*A230448(∑[n+3])²` -/
def P16513057710636513593.Spec : Prop :=
  ∀ n, P16513057710636513593.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P8507792688601624959

`2*∑[A006498(2*n)]²`
-/

namespace A060635.P8507792688601624959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A060635.P8507792688601624959

namespace A060635

/-- `2*∑[A006498(2*n)]²` -/
def P8507792688601624959.Spec : Prop :=
  ∀ n, P8507792688601624959.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P17360764451615975044

`record[2*A180663(n+1)²]`
-/

namespace A060635.P17360764451615975044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180663 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060635.P17360764451615975044

namespace A060635

/-- `record[2*A180663(n+1)²]` -/
def P17360764451615975044.Spec : Prop :=
  ∀ n, P17360764451615975044.a n = A060635 (n + 1)

end A060635

/-! ## A060635.P17899590283225178110

`2*A006498(2*n+1)²`
-/

namespace A060635.P17899590283225178110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006498 (2 * n + 1) ^ 2

end

end A060635.P17899590283225178110

namespace A060635

/-- `2*A006498(2*n+1)²` -/
def P17899590283225178110.Spec : Prop :=
  ∀ n, P17899590283225178110.a n = A060635 (n + 1)

end A060635

/-!
# A060637: Triangle T(n,k) (0 <= k <= n) giving number of tilings of the k-dimensional zonotope constructed from n vectors.

The programs for A060637, there is no canonical definition to state claims against.
-/

/-! ## A060637.P3610314882881563495

`A306671(A066119(n+2))`
-/

namespace A060637.P3610314882881563495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (A066119 (n + 2)).toNat

end

end A060637.P3610314882881563495

/-! ## A060637.P3757369734992888615

`A130321(n)+A000196(A140960(A055807(n)))`
-/

namespace A060637.P3757369734992888615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A000196 (A140960 (A055807 n).toNat).toNat

end

end A060637.P3757369734992888615

/-! ## A060637.P16226055593071377110

`A130321(n)+A025442(A210344(n))`
-/

namespace A060637.P16226055593071377110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A025442 (A210344 n).toNat

end

end A060637.P16226055593071377110

/-! ## A060637.P15695073863957501128

`or(A086973(A118180(n)), A130321(n))`
-/

namespace A060637.P15695073863957501128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086973 (A118180 n).toNat) (A130321 n)

end

end A060637.P15695073863957501128

/-! ## A060637.P1466135867745852588

`A319075(n)-A001221(A203262(n+1))`
-/

namespace A060637.P1466135867745852588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319075 n - A001221 (A203262 (n + 1)).toNat

end

end A060637.P1466135867745852588

/-!
# A060638: Triangle T(n,k) (0 <= k <= n) giving number of edges in the "flip graph" whose nodes are tilings of the k-dimensional zonotope constructed from n vectors.

The programs for A060638, there is no canonical definition to state claims against.
-/

/-! ## A060638.P16389177106364445573

`A048494(n)-A188433(A048487(n))`
-/

namespace A060638.P16389177106364445573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 n - A188433 (A048487 n).toNat

end

end A060638.P16389177106364445573

/-! ## A060638.P8991336911429090683

`A048494(n)-A267810(A267856(n+1))`
-/

namespace A060638.P8991336911429090683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048494 n - A267810 (A267856 (n + 1)).toNat

end

end A060638.P8991336911429090683

/-! ## A060638.P7289125654821558920

`A000120(A286331(n+2))*A122200(n)`
-/

namespace A060638.P7289125654821558920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A286331 (n + 2)).toNat * A122200 n

end

end A060638.P7289125654821558920

/-!
# A060639: Number of pairs of partitions of [n] whose join is the partition {{1,2,...,n}}.

The programs for A060639, there is no canonical definition to state claims against.
-/

/-! ## A060639.P11731990887212865579

`A318392(C(n, 2)+1)`
-/

namespace A060639.P11731990887212865579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318392 (Nat.choose n 2 + 1)

end

end A060639.P11731990887212865579

/-! ## A060639.P187222135798386496

`A318392(∑[abs(1-n)])`
-/

namespace A060639.P187222135798386496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060639.P187222135798386496

/-! ## A060639.P13341797040084859140

`A004273(A001188(∏{digits}[n, gcd(#, #!²)]))`
-/

namespace A060639.P13341797040084859140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A001188 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod).toNat

end

end A060639.P13341797040084859140

/-!
# A060640: If n = Product p_i^e_i then a(n) = Product (1 + 2*p_i + 3*p_i^2 + ... + (e_i+1)*p_i^e_i).

The programs for A060640, the canonical program `A060640.P5524646078330777328` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060640 has offset 1).

The definition of A060640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060640.P10832214123481084900

`∑{d}[n+1, #*A000005(#)]`
-/

namespace A060640.P10832214123481084900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d

end

end A060640.P10832214123481084900

namespace A060640

/-- `∑{d}[n+1, #*A000005(#)]` -/
def P10832214123481084900.Spec : Prop :=
  ∀ n, P10832214123481084900.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P5524646078330777328

`∑{d}[n+1, #*A000203((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060640

/-- `∑{d}[n+1, #*A000203((n+1)/#)]` -/
def P5524646078330777328.Spec : Prop :=
  ∀ n, P5524646078330777328.a n = A060640 (n + 1)

theorem P5524646078330777328.correct : P5524646078330777328.Spec := by
  intro n
  simp only [A060640, Nat.add_sub_cancel]

end A060640

/-! ## A060640.P16830805179407302264

`∑{d}[n+1, A038040(#)]`
-/

namespace A060640.P16830805179407302264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d

end

end A060640.P16830805179407302264

namespace A060640

/-- `∑{d}[n+1, A038040(#)]` -/
def P16830805179407302264.Spec : Prop :=
  ∀ n, P16830805179407302264.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P14106854262787369010

`∑{d}[n+1, A000203((n+1)/#)*#]`
-/

namespace A060640.P14106854262787369010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A060640.P14106854262787369010

namespace A060640

/-- `∑{d}[n+1, A000203((n+1)/#)*#]` -/
def P14106854262787369010.Spec : Prop :=
  ∀ n, P14106854262787369010.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P9631831450503331005

`A069914(n+1)+A007429(n+1)`
-/

namespace A060640.P9631831450503331005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069914 (n + 1) + A007429 (n + 1)

end

end A060640.P9631831450503331005

namespace A060640

/-- `A069914(n+1)+A007429(n+1)` -/
def P9631831450503331005.Spec : Prop :=
  ∀ n, P9631831450503331005.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P17279474998868686554

`A245211(n+1)+A038040(n+1)`
-/

namespace A060640.P17279474998868686554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245211 (n + 1) + A038040 (n + 1)

end

end A060640.P17279474998868686554

namespace A060640

/-- `A245211(n+1)+A038040(n+1)` -/
def P17279474998868686554.Spec : Prop :=
  ∀ n, P17279474998868686554.a n = A060640 (n + 1)

theorem P17279474998868686554.correct : P17279474998868686554.Spec := by
  intro n
  simp only [A060640, Nat.add_sub_cancel, A060640.P17279474998868686554.a, A060640.P5524646078330777328.f1, A060640.P5524646078330777328.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A245211, A245211.P9459255729961917414.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060640

/-! ## A060640.P14233469843264060766

`2*A038040(n+1)-A245212(n+1)`
-/

namespace A060640.P14233469843264060766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038040 (n + 1) - A245212 (n + 1)

end

end A060640.P14233469843264060766

namespace A060640

/-- `2*A038040(n+1)-A245212(n+1)` -/
def P14233469843264060766.Spec : Prop :=
  ∀ n, P14233469843264060766.a n = A060640 (n + 1)

theorem P14233469843264060766.correct : P14233469843264060766.Spec := by
  intro n
  simp only [A060640, Nat.add_sub_cancel, A060640.P14233469843264060766.a, A060640.P5524646078330777328.f1, A060640.P5524646078330777328.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A245212, A245212.P13496061215896948389.a, A000005, A000005.P16091521709108585461.a, A245211, A245211.P9459255729961917414.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060640

/-! ## A060640.P12144444367427247023

`∑{d}[n+1, A000010(#)*A007429((n+1)/#)]`
-/

namespace A060640.P12144444367427247023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P12144444367427247023

namespace A060640

/-- `∑{d}[n+1, A000010(#)*A007429((n+1)/#)]` -/
def P12144444367427247023.Spec : Prop :=
  ∀ n, P12144444367427247023.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P4210326819928191439

`∑{d}[n+1, A007425(#)*A029935((n+1)/#)]`
-/

namespace A060640.P4210326819928191439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P4210326819928191439

namespace A060640

/-- `∑{d}[n+1, A007425(#)*A029935((n+1)/#)]` -/
def P4210326819928191439.Spec : Prop :=
  ∀ n, P4210326819928191439.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P18204495374281309539

`∑{d}[n+1, A008683(#)*A034761((n+1)/#)]`
-/

namespace A060640.P18204495374281309539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034761 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P18204495374281309539

namespace A060640

/-- `∑{d}[n+1, A008683(#)*A034761((n+1)/#)]` -/
def P18204495374281309539.Spec : Prop :=
  ∀ n, P18204495374281309539.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P6631200053510032462

`∑{d}[n+1, A023900(#)*A034718((n+1)/#)]`
-/

namespace A060640.P6631200053510032462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P6631200053510032462

namespace A060640

/-- `∑{d}[n+1, A023900(#)*A034718((n+1)/#)]` -/
def P6631200053510032462.Spec : Prop :=
  ∀ n, P6631200053510032462.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P3562815660361441694

`∑{d}[n+1, A001615(#)*A076752((n+1)/#)]`
-/

namespace A060640.P3562815660361441694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P3562815660361441694

namespace A060640

/-- `∑{d}[n+1, A001615(#)*A076752((n+1)/#)]` -/
def P3562815660361441694.Spec : Prop :=
  ∀ n, P3562815660361441694.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P7653381976646313281

`∑{d}[n+1, A000593(#)*A091512((n+1)/#)]`
-/

namespace A060640.P7653381976646313281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A091512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P7653381976646313281

namespace A060640

/-- `∑{d}[n+1, A000593(#)*A091512((n+1)/#)]` -/
def P7653381976646313281.Spec : Prop :=
  ∀ n, P7653381976646313281.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P5887655897956670440

`∑{d}[n+1, A055210(#)*A057670((n+1)/#)]`
-/

namespace A060640.P5887655897956670440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055210 d * A057670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P5887655897956670440

namespace A060640

/-- `∑{d}[n+1, A055210(#)*A057670((n+1)/#)]` -/
def P5887655897956670440.Spec : Prop :=
  ∀ n, P5887655897956670440.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P10789768201545619898

`∑{d}[n+1, A061019(#)*A064950((n+1)/#)]`
-/

namespace A060640.P10789768201545619898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A064950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P10789768201545619898

namespace A060640

/-- `∑{d}[n+1, A061019(#)*A064950((n+1)/#)]` -/
def P10789768201545619898.Spec : Prop :=
  ∀ n, P10789768201545619898.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P3449758809874554568

`∑{d}[n+1, A060724(#)*A074722((n+1)/#)]`
-/

namespace A060640.P3449758809874554568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P3449758809874554568

namespace A060640

/-- `∑{d}[n+1, A060724(#)*A074722((n+1)/#)]` -/
def P3449758809874554568.Spec : Prop :=
  ∀ n, P3449758809874554568.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P12483540348094196119

`∑{d}[n+1, A007426(#)*A143275((n+1)/#)]`
-/

namespace A060640.P12483540348094196119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P12483540348094196119

namespace A060640

/-- `∑{d}[n+1, A007426(#)*A143275((n+1)/#)]` -/
def P12483540348094196119.Spec : Prop :=
  ∀ n, P12483540348094196119.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P13095015304368987434

`∑{d}[n+1, A033879(#)*A191161((n+1)/#)]`
-/

namespace A060640.P13095015304368987434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A191161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P13095015304368987434

namespace A060640

/-- `∑{d}[n+1, A033879(#)*A191161((n+1)/#)]` -/
def P13095015304368987434.Spec : Prop :=
  ∀ n, P13095015304368987434.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P15635301018430519535

`∑{d}[n+1, A055615(#)*A174466((n+1)/#)]`
-/

namespace A060640.P15635301018430519535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P15635301018430519535

namespace A060640

/-- `∑{d}[n+1, A055615(#)*A174466((n+1)/#)]` -/
def P15635301018430519535.Spec : Prop :=
  ∀ n, P15635301018430519535.a n = A060640 (n + 1)

end A060640

/-! ## A060640.P12775670339060692821

`∑{d}[n+1, A060648(#)*A206369((n+1)/#)]`
-/

namespace A060640.P12775670339060692821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P12775670339060692821

namespace A060640

/-- `∑{d}[n+1, A060648(#)*A206369((n+1)/#)]` -/
def P12775670339060692821.Spec : Prop :=
  ∀ n, P12775670339060692821.a n = A060640 (n + 1)

end A060640

/-!
# A060641: Surround numbers of a length 2n zig-zag.

The programs for A060641, the canonical program `A060641.P2951048219659939668` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060641 has offset 2).

The definition of A060641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060641.P2951048219659939668

`10*(n+2)²+46*(n+2)+29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060641

/-- `10*(n+2)²+46*(n+2)+29` -/
def P2951048219659939668.Spec : Prop :=
  ∀ n, (P2951048219659939668.a n : ℤ) = A060641 (n + 2)

theorem P2951048219659939668.correct : P2951048219659939668.Spec := by
  intro n
  simp only [A060641, Nat.add_sub_cancel]

end A060641

/-!
# A060642: Triangle read by rows: row n lists number of ordered partitions into k parts of partitions of n.

The programs for A060642, there is no canonical definition to state claims against.
-/

/-! ## A060642.P13476146895622741539

`A154929(n)+A016389(A135899(n))`
-/

namespace A060642.P13476146895622741539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154929 n + A016389 (A135899 n).toNat

end

end A060642.P13476146895622741539

/-! ## A060642.P585388525598419112

`A154929(n)-A025469(A320733(n))`
-/

namespace A060642.P585388525598419112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154929 n - A025469 (A320733 n).toNat

end

end A060642.P585388525598419112

/-! ## A060642.P17169030571626360418

`A154929(n)-A350898(A119502(n))`
-/

namespace A060642.P17169030571626360418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154929 n - A350898 (A119502 n).toNat

end

end A060642.P17169030571626360418

/-! ## A060642.P12797873431905382970

`A381489(A331278(n+2))+A078812(n)`
-/

namespace A060642.P12797873431905382970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381489 (A331278 (n + 2)).toNat + A078812 n

end

end A060642.P12797873431905382970

/-! ## A060642.P15821125588223479990

`A154929(n)-A058276(A275870(2*n+1))`
-/

namespace A060642.P15821125588223479990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154929 n - A058276 (A275870 (2 * n + 1)).toNat

end

end A060642.P15821125588223479990

/-!
# A060643: Number of conjugacy classes in the symmetric group S_n that have even number of elements.

The programs for A060643, there is no canonical definition to state claims against.
-/

/-! ## A060643.P13536857834271050985

`A000041(n+1)-A060632(n+1)`
-/

namespace A060643.P13536857834271050985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A060632 (n + 1)

end

end A060643.P13536857834271050985

/-! ## A060643.P7849021040346165600

`A000041(n+1)-Δ[A151566(n+1)]`
-/

namespace A060643.P7849021040346165600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (f1 (n + 1) - f1 n)

end

end A060643.P7849021040346165600

/-! ## A060643.P17372534206708030579

`A000041(n+1)-A001316(∑[and(1, n)])`
-/

namespace A060643.P17372534206708030579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A001316 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060643.P17372534206708030579

/-! ## A060643.P5362133873636711535

`A000041(n+1)-A001316(A110654(n))`
-/

namespace A060643.P5362133873636711535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A001316 (A110654 n).toNat

end

end A060643.P5362133873636711535

/-! ## A060643.P6578808477173478237

`A000041(n+1)-A001316(A004526(n+1))`
-/

namespace A060643.P6578808477173478237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A001316 (A004526 (n + 1)).toNat

end

end A060643.P6578808477173478237

/-! ## A060643.P3473231955932433963

`Δ[A000070(n)-A151566(n+1)]`
-/

namespace A060643.P3473231955932433963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A151566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060643.P3473231955932433963

/-!
# A060644: a(n) = floor((n+1)^(n+1)/n^n).

The programs for A060644, the canonical program `A060644.P6236291808866376183` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060644 has offset 0).

The definition of A060644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^(n+1)/n^n)` (program `A060644.P6236291808866376183`, by `A060644.P6236291808866376183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060644.P16227017802247305891

`floor(e*(n+1/2))`
-/

namespace A060644.P16227017802247305891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * ((n : ℚ) + (1 : ℚ) / 2 : ℝ)⌋

end

end A060644.P16227017802247305891

namespace A060644

/-- `floor(e*(n+1/2))` -/
def P16227017802247305891.Spec : Prop :=
  ∀ n, P16227017802247305891.a n = A060644 n

end A060644

/-! ## A060644.P6236291808866376183

`floor((n+1)^(n+1)/n^n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060644

/-- `floor((n+1)^(n+1)/n^n)` -/
def P6236291808866376183.Spec : Prop :=
  ∀ n, P6236291808866376183.a n = A060644 n

theorem P6236291808866376183.correct : P6236291808866376183.Spec := by
  intro n
  simp only [A060644]

end A060644

/-! ## A060644.P8503098006062947267

`∑[runs[round((1+n)/e)]]`
-/

namespace A060644.P8503098006062947267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 + n : ℝ) / Real.exp 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060644.P8503098006062947267

namespace A060644

/-- `∑[runs[round((1+n)/e)]]` -/
def P8503098006062947267.Spec : Prop :=
  ∀ n, (P8503098006062947267.a n : ℤ) = A060644 n

end A060644

/-! ## A060644.P9968417341552972430

`A184745(n+1)-(n+1)`
-/

namespace A060644.P9968417341552972430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184745 (n + 1) - (n + 1 : ℤ)

end

end A060644.P9968417341552972430

namespace A060644

/-- `A184745(n+1)-(n+1)` -/
def P9968417341552972430.Spec : Prop :=
  ∀ n, P9968417341552972430.a n = A060644 n

theorem P9968417341552972430.correct : P9968417341552972430.Spec := by
  intro n
  simp only [A060644, Nat.add_sub_cancel, A060644.P9968417341552972430.a, A060644.P6236291808866376183.a, A184745, A184745.P10700627852116729869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060644

/-! ## A060644.P3160777843304235191

`A279607(Δ[n²])`
-/

namespace A060644.P3160777843304235191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060644.P3160777843304235191

namespace A060644

/-- `A279607(Δ[n²])` -/
def P3160777843304235191.Spec : Prop :=
  ∀ n, P3160777843304235191.a n = A060644 n

end A060644

/-! ## A060644.P4989822398379562370

`ceil(A184589(2*n+1)/2)`
-/

namespace A060644.P4989822398379562370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184589 (2 * n + 1) : ℚ) / 2⌉

end

end A060644.P4989822398379562370

namespace A060644

/-- `ceil(A184589(2*n+1)/2)` -/
def P4989822398379562370.Spec : Prop :=
  ∀ n, P4989822398379562370.a n = A060644 n

end A060644

/-! ## A060644.P7291116833351813969

`record[A279607(and(n, n+1)+1)]`
-/

namespace A060644.P7291116833351813969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060644.P7291116833351813969

namespace A060644

/-- `record[A279607(and(n, n+1)+1)]` -/
def P7291116833351813969.Spec : Prop :=
  ∀ n, P7291116833351813969.a n = A060644 n

end A060644

/-! ## A060644.P17981325665280620740

`ceil((A022843(2*n+1)-1)/2)`
-/

namespace A060644.P17981325665280620740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022843 (2 * n + 1) - 1 : ℚ) / 2⌉

end

end A060644.P17981325665280620740

namespace A060644

/-- `ceil((A022843(2*n+1)-1)/2)` -/
def P17981325665280620740.Spec : Prop :=
  ∀ n, P17981325665280620740.a n = A060644 n

end A060644

/-! ## A060644.P15428047884172572205

`∩[A054385(n+1), A279607(n+1)]`
-/

namespace A060644.P15428047884172572205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060644.P15428047884172572205

namespace A060644

/-- `∩[A054385(n+1), A279607(n+1)]` -/
def P15428047884172572205.Spec : Prop :=
  ∀ n, (P15428047884172572205.a n : ℤ) = A060644 n

end A060644

/-! ## A060644.P1569527000878523251

`A065033(A184589(2*n+1))`
-/

namespace A060644.P1569527000878523251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184589 (2 * n + 1)).toNat

end

end A060644.P1569527000878523251

namespace A060644

/-- `A065033(A184589(2*n+1))` -/
def P1569527000878523251.Spec : Prop :=
  ∀ n, P1569527000878523251.a n = A060644 n

end A060644

/-! ## A060644.P9635124966576541819

`A110654(A022843(2*n+1)-1)`
-/

namespace A060644.P9635124966576541819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A022843 (2 * n + 1) - 1).toNat

end

end A060644.P9635124966576541819

namespace A060644

/-- `A110654(A022843(2*n+1)-1)` -/
def P9635124966576541819.Spec : Prop :=
  ∀ n, P9635124966576541819.a n = A060644 n

end A060644

/-! ## A060644.P3076501794565227423

`A008619(A022843(2*n+1)-2)`
-/

namespace A060644.P3076501794565227423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022843 (2 * n + 1) - 2).toNat

end

end A060644.P3076501794565227423

namespace A060644

/-- `A008619(A022843(2*n+1)-2)` -/
def P3076501794565227423.Spec : Prop :=
  ∀ n, P3076501794565227423.a n = A060644 n

end A060644

/-! ## A060644.P15578196528163743206

`A004526(A022843(2*n+1))`
-/

namespace A060644.P15578196528163743206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022843 (2 * n + 1)).toNat

end

end A060644.P15578196528163743206

namespace A060644

/-- `A004526(A022843(2*n+1))` -/
def P15578196528163743206.Spec : Prop :=
  ∀ n, P15578196528163743206.a n = A060644 n

end A060644

/-! ## A060644.P15433264385248558966

`A004526(A121384(2*n+1)-1)`
-/

namespace A060644.P15433264385248558966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A121384 (2 * n + 1) - 1).toNat

end

end A060644.P15433264385248558966

namespace A060644

/-- `A004526(A121384(2*n+1)-1)` -/
def P15433264385248558966.Spec : Prop :=
  ∀ n, P15433264385248558966.a n = A060644 n

end A060644

/-! ## A060644.P5061324880810562036

`A110654(A000210(2*n+1))+n`
-/

namespace A060644.P5061324880810562036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000210 (2 * n + 1)).toNat + (n : ℤ)

end

end A060644.P5061324880810562036

namespace A060644

/-- `A110654(A000210(2*n+1))+n` -/
def P5061324880810562036.Spec : Prop :=
  ∀ n, P5061324880810562036.a n = A060644 n

end A060644

/-! ## A060644.P10081678207420032278

`A004526(A000210(2*n+1)+2*n+1)`
-/

namespace A060644.P10081678207420032278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000210 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A060644.P10081678207420032278

namespace A060644

/-- `A004526(A000210(2*n+1)+2*n+1)` -/
def P10081678207420032278.Spec : Prop :=
  ∀ n, P10081678207420032278.a n = A060644 n

end A060644

/-! ## A060644.P1087648802628931380

`A065033(A000572(2*n+1))-(n+1)`
-/

namespace A060644.P1087648802628931380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000572 (2 * n + 1)).toNat - (n + 1 : ℤ)

end

end A060644.P1087648802628931380

namespace A060644

/-- `A065033(A000572(2*n+1))-(n+1)` -/
def P1087648802628931380.Spec : Prop :=
  ∀ n, P1087648802628931380.a n = A060644 n

end A060644

/-! ## A060644.P4144947234174287363

`A110654(A000572(2*n+1))-A110654(2*n+1)`
-/

namespace A060644.P4144947234174287363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000572 (2 * n + 1)).toNat - A110654 (2 * n + 1)

end

end A060644.P4144947234174287363

namespace A060644

/-- `A110654(A000572(2*n+1))-A110654(2*n+1)` -/
def P4144947234174287363.Spec : Prop :=
  ∀ n, P4144947234174287363.a n = A060644 n

end A060644

/-! ## A060644.P12703917188818873498

`A002264(A121384(2*n+1)+A121384(n))`
-/

namespace A060644.P12703917188818873498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A121384 (2 * n + 1) + A121384 n).toNat

end

end A060644.P12703917188818873498

namespace A060644

/-- `A002264(A121384(2*n+1)+A121384(n))` -/
def P12703917188818873498.Spec : Prop :=
  ∀ n, P12703917188818873498.a n = A060644 n

end A060644

/-! ## A060644.P12313681973009530793

`A069322(∑[n+1]+1)`
-/

namespace A060644.P12313681973009530793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069322 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060644.P12313681973009530793

namespace A060644

/-- `A069322(∑[n+1]+1)` -/
def P12313681973009530793.Spec : Prop :=
  ∀ n, P12313681973009530793.a n = A060644 n

end A060644

/-!
# A060645: a(0) = 0, a(1) = 4, then a(n) = 18*a(n-1) - a(n-2).

The programs for A060645, the canonical program `A060645.P4934202469655894999` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060645 has offset 0).

The definition of A060645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-a(n-2)` (program `A060645.P4934202469655894999`, by `A060645.P4934202469655894999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060645.P16251958955532279337

`ogf(4x/(1-18x+x^2))`
-/

namespace A060645.P16251958955532279337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -18, 1] n

end

end A060645.P16251958955532279337

namespace A060645

/-- `ogf(4x/(1-18x+x^2))` -/
def P16251958955532279337.Spec : Prop :=
  ∀ n, P16251958955532279337.a n = A060645 n

end A060645

/-! ## A060645.P4934202469655894999

`18*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060645

/-- `18*a(n-1)-a(n-2)` -/
def P4934202469655894999.Spec : Prop :=
  ∀ n, P4934202469655894999.a n = A060645 n

theorem P4934202469655894999.correct : P4934202469655894999.Spec := by
  intro n
  simp only [A060645]

end A060645

/-! ## A060645.P4187909299347108602

`4*A049660(n)`
-/

namespace A060645.P4187909299347108602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049660 n

end

end A060645.P4187909299347108602

namespace A060645

/-- `4*A049660(n)` -/
def P4187909299347108602.Spec : Prop :=
  ∀ n, P4187909299347108602.a n = A060645 n

end A060645

/-! ## A060645.P775139030211913659

`A000045(6*n)/2`
-/

namespace A060645.P775139030211913659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n) : ℚ) / 2

end

end A060645.P775139030211913659

namespace A060645

/-- `A000045(6*n)/2` -/
def P775139030211913659.Spec : Prop :=
  ∀ n, P775139030211913659.a n = (A060645 n : ℚ)

end A060645

/-! ## A060645.P4955019279310459370

`A001076(2*n)`
-/

namespace A060645.P4955019279310459370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (2 * n)

end

end A060645.P4955019279310459370

namespace A060645

/-- `A001076(2*n)` -/
def P4955019279310459370.Spec : Prop :=
  ∀ n, P4955019279310459370.a n = A060645 n

end A060645

/-! ## A060645.P17702299334843685325

`2*A207832(n)`
-/

namespace A060645.P17702299334843685325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207832 n

end

end A060645.P17702299334843685325

namespace A060645

/-- `2*A207832(n)` -/
def P17702299334843685325.Spec : Prop :=
  ∀ n, P17702299334843685325.a n = A060645 n

end A060645

/-! ## A060645.P17130047586994211236

`A134492(n)/2`
-/

namespace A060645.P17130047586994211236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134492 n : ℚ) / 2

end

end A060645.P17130047586994211236

namespace A060645

/-- `A134492(n)/2` -/
def P17130047586994211236.Spec : Prop :=
  ∀ n, P17130047586994211236.a n = (A060645 n : ℚ)

end A060645

/-! ## A060645.P10696998543112812214

`A059973(4*n)`
-/

namespace A060645.P10696998543112812214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (4 * n)

end

end A060645.P10696998543112812214

namespace A060645

/-- `A059973(4*n)` -/
def P10696998543112812214.Spec : Prop :=
  ∀ n, P10696998543112812214.a n = A060645 n

end A060645

/-! ## A060645.P14373391452165791346

`A004695(6*n)`
-/

namespace A060645.P14373391452165791346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (6 * n)

end

end A060645.P14373391452165791346

namespace A060645

/-- `A004695(6*n)` -/
def P14373391452165791346.Spec : Prop :=
  ∀ n, P14373391452165791346.a n = A060645 n

end A060645

/-! ## A060645.P9216169671802434152

`A167808(6*n)`
-/

namespace A060645.P9216169671802434152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (6 * n)

end

end A060645.P9216169671802434152

namespace A060645

/-- `A167808(6*n)` -/
def P9216169671802434152.Spec : Prop :=
  ∀ n, P9216169671802434152.a n = A060645 n

end A060645

/-!
# A060646: Bonse sequence: a(n) = minimal j such that n-j+1 < prime(j).

The programs for A060646, the canonical program `A060646.P4391028413269326424` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060646 has offset 1).

The definition of A060646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060646.P5377925974627102552

`A036234(A112231(n+1))`
-/

namespace A060646.P5377925974627102552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A112231 (n + 1)).toNat

end

end A060646.P5377925974627102552

namespace A060646

/-- `A036234(A112231(n+1))` -/
def P5377925974627102552.Spec : Prop :=
  ∀ n, P5377925974627102552.a n = A060646 (n + 1)

end A060646

/-! ## A060646.P6898013058177045547

`n+3-A112231(n+2)`
-/

namespace A060646.P6898013058177045547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A112231 (n + 2)

end

end A060646.P6898013058177045547

namespace A060646

/-- `n+3-A112231(n+2)` -/
def P6898013058177045547.Spec : Prop :=
  ∀ n, P6898013058177045547.a n = A060646 (n + 1)

end A060646

/-! ## A060646.P10953507228446782118

`∑[char[∑[A076368(n+1)]]]+1`
-/

namespace A060646.P10953507228446782118
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P10953507228446782118

namespace A060646

/-- `∑[char[∑[A076368(n+1)]]]+1` -/
def P10953507228446782118.Spec : Prop :=
  ∀ n, (P10953507228446782118.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P13519134836135027269

`A036234(2-a(n-1)+n)` with `a(0)=1`
-/

namespace A060646.P13519134836135027269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036234 (2 - a (n - 1) + (n : ℤ)).toNat

end

end A060646.P13519134836135027269

namespace A060646

/-- `A036234(2-a(n-1)+n)` -/
def P13519134836135027269.Spec : Prop :=
  ∀ n, P13519134836135027269.a n = A060646 (n + 1)

end A060646

/-! ## A060646.P7479753513523039352

`A036234(2-(a(n-1)-n))` with `a(0)=1`
-/

namespace A060646.P7479753513523039352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036234 (2 - (a (n - 1) - (n : ℤ))).toNat

end

end A060646.P7479753513523039352

namespace A060646

/-- `A036234(2-(a(n-1)-n))` -/
def P7479753513523039352.Spec : Prop :=
  ∀ n, P7479753513523039352.a n = A060646 (n + 1)

end A060646

/-! ## A060646.P1695169089630116141

`∑[char[A095116(n+1)-1]]+1`
-/

namespace A060646.P1695169089630116141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P1695169089630116141

namespace A060646

/-- `∑[char[A095116(n+1)-1]]+1` -/
def P1695169089630116141.Spec : Prop :=
  ∀ n, (P1695169089630116141.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P14995208623143453048

`∑[char[A014688(n+1)-2]]+1`
-/

namespace A060646.P14995208623143453048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P14995208623143453048

namespace A060646

/-- `∑[char[A014688(n+1)-2]]+1` -/
def P14995208623143453048.Spec : Prop :=
  ∀ n, (P14995208623143453048.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P15145163915902485968

`∑[char[A006093(n+1)+n]]+1`
-/

namespace A060646.P15145163915902485968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P15145163915902485968

namespace A060646

/-- `∑[char[A006093(n+1)+n]]+1` -/
def P15145163915902485968.Spec : Prop :=
  ∀ n, (P15145163915902485968.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P8921953200580445446

`∑[char[record[A000010(n+1)]+n]]+1`
-/

namespace A060646.P8921953200580445446
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P8921953200580445446

namespace A060646

/-- `∑[char[record[A000010(n+1)]+n]]+1` -/
def P8921953200580445446.Spec : Prop :=
  ∀ n, (P8921953200580445446.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P13221018200189363045

`∑[char[record[A285699(n+1)]+n]]+1`
-/

namespace A060646.P13221018200189363045
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P13221018200189363045

namespace A060646

/-- `∑[char[record[A285699(n+1)]+n]]+1` -/
def P13221018200189363045.Spec : Prop :=
  ∀ n, (P13221018200189363045.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P13338233248756026793

`∑[char[A040976(n+1)+1+n]]+1`
-/

namespace A060646.P13338233248756026793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P13338233248756026793

namespace A060646

/-- `∑[char[A040976(n+1)+1+n]]+1` -/
def P13338233248756026793.Spec : Prop :=
  ∀ n, (P13338233248756026793.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P6403198002026578366

`∑[char[A000040(n+1)-1+n]]+1`
-/

namespace A060646.P6403198002026578366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P6403198002026578366

namespace A060646

/-- `∑[char[A000040(n+1)-1+n]]+1` -/
def P6403198002026578366.Spec : Prop :=
  ∀ n, (P6403198002026578366.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P2418356358575666608

`∑[char[record[A014963(n+2)]+n-1]]+1`
-/

namespace A060646.P2418356358575666608
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A060646.P2418356358575666608

namespace A060646

/-- `∑[char[record[A014963(n+2)]+n-1]]+1` -/
def P2418356358575666608.Spec : Prop :=
  ∀ n, (P2418356358575666608.a n : ℤ) = A060646 (n + 1)

end A060646

/-! ## A060646.P4391028413269326424

`a(n-1)+C(n+2, A000040(a(n-1))+a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060646

/-- `a(n-1)+C(n+2, A000040(a(n-1))+a(n-1))` -/
def P4391028413269326424.Spec : Prop :=
  ∀ n, (P4391028413269326424.a n : ℤ) = A060646 (n + 1)

theorem P4391028413269326424.correct : P4391028413269326424.Spec := by
  intro n
  simp only [A060646, Nat.add_sub_cancel]

end A060646

/-! ## A060646.P15742116851301400271

`A000720(A076367(n+1))`
-/

namespace A060646.P15742116851301400271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076367 (n + 1)).toNat

end

end A060646.P15742116851301400271

namespace A060646

/-- `A000720(A076367(n+1))` -/
def P15742116851301400271.Spec : Prop :=
  ∀ n, P15742116851301400271.a n = A060646 (n + 1)

end A060646

/-! ## A060646.P15587369531239409508

`A036234(A076367(n+1)-1)`
-/

namespace A060646.P15587369531239409508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A076367 (n + 1) - 1).toNat

end

end A060646.P15587369531239409508

namespace A060646

/-- `A036234(A076367(n+1)-1)` -/
def P15587369531239409508.Spec : Prop :=
  ∀ n, P15587369531239409508.a n = A060646 (n + 1)

end A060646

/-! ## A060646.P9105431692361172694

`A000720(∑[char[A095117(n)]])+1`
-/

namespace A060646.P9105431692361172694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A060646.P9105431692361172694

namespace A060646

/-- `A000720(∑[char[A095117(n)]])+1` -/
def P9105431692361172694.Spec : Prop :=
  ∀ n, P9105431692361172694.a n = A060646 (n + 1)

end A060646

/-! ## A060646.P18111096505734042433

`A230774((a(n-1)-(n+3))²)` with `a(0)=1`
-/

namespace A060646.P18111096505734042433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230774 ((a (n - 1) - (n + 3 : ℤ)) ^ 2).toNat

end

end A060646.P18111096505734042433

namespace A060646

/-- `A230774((a(n-1)-(n+3))²)` -/
def P18111096505734042433.Spec : Prop :=
  ∀ n, P18111096505734042433.a n = A060646 (n + 1)

end A060646

/-!
# A060647: Number of alpha-beta evaluations in a tree of depth n and branching factor b=3.

The programs for A060647, the canonical program `A060647.P3350534032327216351` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060647 has offset 0).

The definition of A060647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060647.P3350534032327216351

`3*a(n-2)+2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060647

/-- `3*a(n-2)+2` -/
def P3350534032327216351.Spec : Prop :=
  ∀ n, (P3350534032327216351.a n : ℤ) = A060647 n

theorem P3350534032327216351.correct : P3350534032327216351.Spec := by
  intro n
  simp only [A060647]

end A060647

/-! ## A060647.P15559737743697168632

`A068911(n+1)-1`
-/

namespace A060647.P15559737743697168632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) - 1

end

end A060647.P15559737743697168632

namespace A060647

/-- `A068911(n+1)-1` -/
def P15559737743697168632.Spec : Prop :=
  ∀ n, P15559737743697168632.a n = A060647 n

end A060647

/-! ## A060647.P7038170000188411696

`∑[ogf((1+2x-x^2)/(1-3x^2))]`
-/

namespace A060647.P7038170000188411696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060647.P7038170000188411696

namespace A060647

/-- `∑[ogf((1+2x-x^2)/(1-3x^2))]` -/
def P7038170000188411696.Spec : Prop :=
  ∀ n, P7038170000188411696.a n = A060647 n

end A060647

/-! ## A060647.P9912059076351982389

`ogf((1+2x-x^2)/(1-x-3x^2+3x^3))`
-/

namespace A060647.P9912059076351982389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -1, -3, 3] n

end

end A060647.P9912059076351982389

namespace A060647

/-- `ogf((1+2x-x^2)/(1-x-3x^2+3x^3))` -/
def P9912059076351982389.Spec : Prop :=
  ∀ n, P9912059076351982389.a n = A060647 n

end A060647

/-! ## A060647.P17682910911599076879

`2+3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A060647.P17682910911599076879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 + 3 * a (n - 2)

end

end A060647.P17682910911599076879

namespace A060647

/-- `2+3*a(n-2)` -/
def P17682910911599076879.Spec : Prop :=
  ∀ n, (P17682910911599076879.a n : ℤ) = A060647 n

theorem P17682910911599076879.correct : P17682910911599076879.Spec := by
  intro n
  simp only [A060647, Nat.add_sub_cancel, A060647.P17682910911599076879.a, A060647.P3350534032327216351.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060647

/-! ## A060647.P17189956679044628404

`∑[3*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A060647.P17189956679044628404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060647.P17189956679044628404

namespace A060647

/-- `∑[3*a(n-2)]` -/
def P17189956679044628404.Spec : Prop :=
  ∀ n, (P17189956679044628404.a n : ℤ) = A060647 n

end A060647

/-! ## A060647.P7548977659960376715

`∏[3/a(n-1)]-1` with `a(0)=2, a(1)=2`
-/

namespace A060647.P7548977659960376715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060647.P7548977659960376715

namespace A060647

/-- `∏[3/a(n-1)]-1` -/
def P7548977659960376715.Spec : Prop :=
  ∀ n, P7548977659960376715.a n = (A060647 n : ℚ)

end A060647

/-! ## A060647.P13944101259458109456

`5-3*(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A060647.P13944101259458109456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 - 3 * (1 - a (n - 2))

end

end A060647.P13944101259458109456

namespace A060647

/-- `5-3*(1-a(n-2))` -/
def P13944101259458109456.Spec : Prop :=
  ∀ n, P13944101259458109456.a n = A060647 n

end A060647

/-! ## A060647.P7483324518273210607

`a(n-2)/(1-2/3)+2` with `a(0)=1, a(1)=3`
-/

namespace A060647.P7483324518273210607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) + 2

end

end A060647.P7483324518273210607

namespace A060647

/-- `a(n-2)/(1-2/3)+2` -/
def P7483324518273210607.Spec : Prop :=
  ∀ n, P7483324518273210607.a n = (A060647 n : ℚ)

end A060647

/-! ## A060647.P7880606652844826068

`2-a(n-2)/(2/3-1)` with `a(0)=1, a(1)=3`
-/

namespace A060647.P7880606652844826068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A060647.P7880606652844826068

namespace A060647

/-- `2-a(n-2)/(2/3-1)` -/
def P7880606652844826068.Spec : Prop :=
  ∀ n, P7880606652844826068.a n = (A060647 n : ℚ)

end A060647

/-! ## A060647.P17626662024187248770

`∑[∏[abs(3-a(n-1))+1]]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A060647.P17626662024187248770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  |3 - f2 (n - 1)| + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060647.P17626662024187248770

namespace A060647

/-- `∑[∏[abs(3-a(n-1))+1]]` -/
def P17626662024187248770.Spec : Prop :=
  ∀ n, P17626662024187248770.a n = A060647 n

end A060647

/-! ## A060647.P3300154947839904251

`∑[2*ceil(3^(ceil(n/2)-1))]-1`
-/

namespace A060647.P3300154947839904251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A060647.P3300154947839904251

namespace A060647

/-- `∑[2*ceil(3^(ceil(n/2)-1))]-1` -/
def P3300154947839904251.Spec : Prop :=
  ∀ n, P3300154947839904251.a n = A060647 n

end A060647

/-! ## A060647.P13687771298589108928

`xor(1, A117862(n))`
-/

namespace A060647.P13687771298589108928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A117862 n)

end

end A060647.P13687771298589108928

namespace A060647

/-- `xor(1, A117862(n))` -/
def P13687771298589108928.Spec : Prop :=
  ∀ n, P13687771298589108928.a n = A060647 n

end A060647

/-! ## A060647.P6356980268557468865

`∑[abs(Δ[A068911(n)])]`
-/

namespace A060647.P6356980268557468865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060647.P6356980268557468865

namespace A060647

/-- `∑[abs(Δ[A068911(n)])]` -/
def P6356980268557468865.Spec : Prop :=
  ∀ n, P6356980268557468865.a n = A060647 n

end A060647

/-! ## A060647.P851841480645472977

`∑[A025192(A004526(n+1))]`
-/

namespace A060647.P851841480645472977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060647.P851841480645472977

namespace A060647

/-- `∑[A025192(A004526(n+1))]` -/
def P851841480645472977.Spec : Prop :=
  ∀ n, P851841480645472977.a n = A060647 n

end A060647

/-! ## A060647.P18088365434429891107

`∑[A025192(n-A004526(n))]`
-/

namespace A060647.P18088365434429891107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 ((n : ℤ) - A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060647.P18088365434429891107

namespace A060647

/-- `∑[A025192(n-A004526(n))]` -/
def P18088365434429891107.Spec : Prop :=
  ∀ n, P18088365434429891107.a n = A060647 n

end A060647

/-! ## A060647.P551761465063939338

`Δ[3*a(n-2)]-1` with `a(0)=3, a(1)=5`
-/

namespace A060647.P551761465063939338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A060647.P551761465063939338

namespace A060647

/-- `Δ[3*a(n-2)]-1` -/
def P551761465063939338.Spec : Prop :=
  ∀ n, P551761465063939338.a n = A060647 n

end A060647

/-! ## A060647.P17976006059822143860

`∪[A048473(n), A171498(n)]`
-/

namespace A060647.P17976006059822143860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060647.P17976006059822143860

namespace A060647

/-- `∪[A048473(n), A171498(n)]` -/
def P17976006059822143860.Spec : Prop :=
  ∀ n, (P17976006059822143860.a n : ℤ) = A060647 n

end A060647

/-! ## A060647.P16309089998998801260

`A090993(n+1)%(Δ[A090993(n+1)]+1)`
-/

namespace A060647.P16309089998998801260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090993 (n + 1)) (f1 (n + 1) - f1 n + 1)

end

end A060647.P16309089998998801260

namespace A060647

/-- `A090993(n+1)%(Δ[A090993(n+1)]+1)` -/
def P16309089998998801260.Spec : Prop :=
  ∀ n, P16309089998998801260.a n = A060647 n

end A060647

/-! ## A060647.P2736509527809518223

`A230445(A165157(n+1))`
-/

namespace A060647.P2736509527809518223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 (A165157 (n + 1)).toNat

end

end A060647.P2736509527809518223

namespace A060647

/-- `A230445(A165157(n+1))` -/
def P2736509527809518223.Spec : Prop :=
  ∀ n, P2736509527809518223.a n = A060647 n

end A060647

/-!
# A060648: Number of cyclic subgroups of the group C_n X C_n (where C_n is the cyclic group of order n).

The programs for A060648, the canonical program `A060648.P5925196399307736954` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060648 has offset 1).

The definition of A060648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060648.P5925196399307736954

`∑{d}[n+1, 2^A001221(#)*(n+1)/#]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060648

/-- `∑{d}[n+1, 2^A001221(#)*(n+1)/#]` -/
def P5925196399307736954.Spec : Prop :=
  ∀ n, P5925196399307736954.a n = (A060648 (n + 1) : ℚ)

end A060648

/-! ## A060648.P9407763752072137547

`1/(n+1)*∑{d}[n+1, A000203(#)²*A008683((n+1)/#)]`
-/

namespace A060648.P9407763752072137547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A000203 d ^ 2 * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ)

end

end A060648.P9407763752072137547

namespace A060648

/-- `1/(n+1)*∑{d}[n+1, A000203(#)²*A008683((n+1)/#)]` -/
def P9407763752072137547.Spec : Prop :=
  ∀ n, P9407763752072137547.a n = (A060648 (n + 1) : ℚ)

end A060648

/-! ## A060648.P11114147393547516813

`∑{#}[n, A000005(gcd(n+1, #+1)²)]`
-/

namespace A060648.P11114147393547516813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (Nat.gcd (n + 1) (k + 1) ^ 2)

end

end A060648.P11114147393547516813

namespace A060648

/-- `∑{#}[n, A000005(gcd(n+1, #+1)²)]` -/
def P11114147393547516813.Spec : Prop :=
  ∀ n, P11114147393547516813.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P4296814483363262365

`∑{d}[n+1, A000010((n+1)/#)*A000005(#²)]`
-/

namespace A060648.P4296814483363262365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 (d ^ 2)

end

end A060648.P4296814483363262365

namespace A060648

/-- `∑{d}[n+1, A000010((n+1)/#)*A000005(#²)]` -/
def P4296814483363262365.Spec : Prop :=
  ∀ n, P4296814483363262365.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P10888591480867603204

`∑{d}[n+1, A001615(#)]`
-/

namespace A060648.P10888591480867603204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d

end

end A060648.P10888591480867603204

namespace A060648

/-- `∑{d}[n+1, A001615(#)]` -/
def P10888591480867603204.Spec : Prop :=
  ∀ n, P10888591480867603204.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P4683344117276042133

`∑{d}[n+1, #*A034444((n+1)/#)]`
-/

namespace A060648.P4683344117276042133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P4683344117276042133

namespace A060648

/-- `∑{d}[n+1, #*A034444((n+1)/#)]` -/
def P4683344117276042133.Spec : Prop :=
  ∀ n, P4683344117276042133.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P15769289380387355306

`A348011(n+1)/A000010(n+1)`
-/

namespace A060648.P15769289380387355306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348011 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A060648.P15769289380387355306

namespace A060648

/-- `A348011(n+1)/A000010(n+1)` -/
def P15769289380387355306.Spec : Prop :=
  ∀ n, P15769289380387355306.a n = (A060648 (n + 1) : ℚ)

end A060648

/-! ## A060648.P17999603659212180079

`∑{d}[n+1, A000203(#)*A008966((n+1)/#)]`
-/

namespace A060648.P17999603659212180079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P17999603659212180079

namespace A060648

/-- `∑{d}[n+1, A000203(#)*A008966((n+1)/#)]` -/
def P17999603659212180079.Spec : Prop :=
  ∀ n, P17999603659212180079.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P10522817904741570031

`∑{d}[n+1, A000188(#)*A034448((n+1)/#)]`
-/

namespace A060648.P10522817904741570031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P10522817904741570031

namespace A060648

/-- `∑{d}[n+1, A000188(#)*A034448((n+1)/#)]` -/
def P10522817904741570031.Spec : Prop :=
  ∀ n, P10522817904741570031.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P17212384261043057768

`∑{d}[n+1, A000010(#)*A048691((n+1)/#)]`
-/

namespace A060648.P17212384261043057768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P17212384261043057768

namespace A060648

/-- `∑{d}[n+1, A000010(#)*A048691((n+1)/#)]` -/
def P17212384261043057768.Spec : Prop :=
  ∀ n, P17212384261043057768.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P489100711526796591

`∑{d}[n+1, A008833(#)*A048250((n+1)/#)]`
-/

namespace A060648.P489100711526796591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P489100711526796591

namespace A060648

/-- `∑{d}[n+1, A008833(#)*A048250((n+1)/#)]` -/
def P489100711526796591.Spec : Prop :=
  ∀ n, P489100711526796591.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P18221905758878174962

`∑{d}[n+1, A000005(#)*A063659((n+1)/#)]`
-/

namespace A060648.P18221905758878174962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P18221905758878174962

namespace A060648

/-- `∑{d}[n+1, A000005(#)*A063659((n+1)/#)]` -/
def P18221905758878174962.Spec : Prop :=
  ∀ n, P18221905758878174962.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P17938147180157728089

`∑{d}[n+1, A008683(#)*A060724((n+1)/#)]`
-/

namespace A060648.P17938147180157728089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A060724 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P17938147180157728089

namespace A060648

/-- `∑{d}[n+1, A008683(#)*A060724((n+1)/#)]` -/
def P17938147180157728089.Spec : Prop :=
  ∀ n, P17938147180157728089.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P3509886171865898796

`∑{d}[n+1, A007427(#)*A062369((n+1)/#)]`
-/

namespace A060648.P3509886171865898796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P3509886171865898796

namespace A060648

/-- `∑{d}[n+1, A007427(#)*A062369((n+1)/#)]` -/
def P3509886171865898796.Spec : Prop :=
  ∀ n, P3509886171865898796.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P14045307468802834346

`∑{d}[n+1, A007432(#)*A062367((n+1)/#)]`
-/

namespace A060648.P14045307468802834346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A062367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P14045307468802834346

namespace A060648

/-- `∑{d}[n+1, A007432(#)*A062367((n+1)/#)]` -/
def P14045307468802834346.Spec : Prop :=
  ∀ n, P14045307468802834346.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P3276953720604853639

`∑{d}[n+1, A002131(#)*A078461((n+1)/#)]`
-/

namespace A060648.P3276953720604853639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A078461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P3276953720604853639

namespace A060648

/-- `∑{d}[n+1, A002131(#)*A078461((n+1)/#)]` -/
def P3276953720604853639.Spec : Prop :=
  ∀ n, P3276953720604853639.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P5779736331065505204

`∑{d}[n+1, A007425(#)*A130107((n+1)/#)]`
-/

namespace A060648.P5779736331065505204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P5779736331065505204

namespace A060648

/-- `∑{d}[n+1, A007425(#)*A130107((n+1)/#)]` -/
def P5779736331065505204.Spec : Prop :=
  ∀ n, P5779736331065505204.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P11259397343513084038

`∑{d}[n+1, A068068(#)*A080512((n+1)/#)]`
-/

namespace A060648.P11259397343513084038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A080512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P11259397343513084038

namespace A060648

/-- `∑{d}[n+1, A068068(#)*A080512((n+1)/#)]` -/
def P11259397343513084038.Spec : Prop :=
  ∀ n, P11259397343513084038.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P2065496269134449770

`∑{d}[n+1, A078644(#)*A126246((n+1)/#)]`
-/

namespace A060648.P2065496269134449770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A126246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P2065496269134449770

namespace A060648

/-- `∑{d}[n+1, A078644(#)*A126246((n+1)/#)]` -/
def P2065496269134449770.Spec : Prop :=
  ∀ n, P2065496269134449770.a n = A060648 (n + 1)

end A060648

/-! ## A060648.P11307844958437253619

`∑{d}[n+1, A007429(#)*A271102((n+1)/#)]`
-/

namespace A060648.P11307844958437253619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060648.P11307844958437253619

namespace A060648

/-- `∑{d}[n+1, A007429(#)*A271102((n+1)/#)]` -/
def P11307844958437253619.Spec : Prop :=
  ∀ n, P11307844958437253619.a n = A060648 (n + 1)

end A060648

/-!
# A060649: Smallest squarefree number k == 3 (mod 4) such that Q(sqrt(-k)) has class number n, or 0 if no such k exists.

The programs for A060649, there is no canonical definition to state claims against.
-/

/-! ## A060649.P14353303798910227918

`A344073(A061497(n+1))`
-/

namespace A060649.P14353303798910227918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344073 (A061497 (n + 1)).toNat

end

end A060649.P14353303798910227918

/-! ## A060649.P14295702967846844583

`A344073(A062399(n)+1)`
-/

namespace A060649.P14295702967846844583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344073 (A062399 n + 1).toNat

end

end A060649.P14295702967846844583

/-! ## A060649.P16620627447135409084

`A344073(A077741(n+1))`
-/

namespace A060649.P16620627447135409084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344073 (A077741 (n + 1)).toNat

end

end A060649.P16620627447135409084

/-! ## A060649.P3611435792318435366

`A344073(A120126(n)+1)`
-/

namespace A060649.P3611435792318435366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344073 (A120126 n + 1).toNat

end

end A060649.P3611435792318435366

/-! ## A060649.P7649030239843695256

`A344073(A351870(n)+1)`
-/

namespace A060649.P7649030239843695256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344073 (A351870 n + 1).toNat

end

end A060649.P7649030239843695256

/-!
# A060650: Numbers n such that there exist exactly one non-Abelian group of order n, i.e., such that A060689(n) = 1.

The programs for A060650, there is no canonical definition to state claims against.
-/

/-! ## A060650.P7103627851905462122

`eq[1, A060689(n+1)]+1`
-/

namespace A060650.P7103627851905462122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060650.P7103627851905462122

/-! ## A060650.P13027680020951894099

`filter[A007916(n+1), A060689(#)]`
-/

namespace A060650.P13027680020951894099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060689 (f1 j).toNat = 1) n)

end

end A060650.P13027680020951894099

/-! ## A060650.P11267499002977405736

`filter[A028983(n+1), A060689(#)]`
-/

namespace A060650.P11267499002977405736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060689 (f1 j).toNat = 1) n)

end

end A060650.P11267499002977405736

/-! ## A060650.P2462721825448589038

`filter[A060652(n+1), A060689(#)]`
-/

namespace A060650.P2462721825448589038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060689 (f1 j).toNat = 1) n)

end

end A060650.P2462721825448589038

/-! ## A060650.P9638335267521666656

`eq[1, A060689(A000007(n)+n)]`
-/

namespace A060650.P9638335267521666656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060650.P9638335267521666656

/-! ## A060650.P3445136603068195457

`eq[A000001(n), A006530(A145154(n))]`
-/

namespace A060650.P3445136603068195457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060650.P3445136603068195457

/-! ## A060650.P3085228337448786826

`eq[A000688(A028310(n))+1, A000001(n)]`
-/

namespace A060650.P3085228337448786826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060650.P3085228337448786826

/-! ## A060650.P14676995538650238235

`eq[A000001(n+1), A126102(A000688(n+1)+1)]+1`
-/

namespace A060650.P14676995538650238235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126102 (A000688 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060650.P14676995538650238235

/-! ## A060650.P2685310765301653949

`eq[1, A238877(2*(n+1))]+1`
-/

namespace A060650.P2685310765301653949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060650.P2685310765301653949

/-! ## A060650.P10512499417474855902

`A008619(eq[n%2, A238877(n+1)])`
-/

namespace A060650.P10512499417474855902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060650.P10512499417474855902

/-! ## A060650.P17528990298563262126

`eq[1, A083280(n+1)]+1`
-/

namespace A060650.P17528990298563262126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060650.P17528990298563262126

/-!
# A060651: Smallest odd prime p such that Q(sqrt(-p)) has class number 2n+1.

The programs for A060651, there is no canonical definition to state claims against.
-/

/-! ## A060651.P833626656028376823

`A060649(Δ[n²])`
-/

namespace A060651.P833626656028376823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060651.P833626656028376823

/-! ## A060651.P1336304791401891324

`p?[A060649(n+1)]`
-/

namespace A060651.P1336304791401891324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060651.P1336304791401891324

/-! ## A060651.P9370820772512141601

`or(2, A081319(Δ[n²]))`
-/

namespace A060651.P9370820772512141601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A081319 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A060651.P9370820772512141601

/-! ## A060651.P2549023223078514933

`or(1, A060649(2*n+1))`
-/

namespace A060651.P2549023223078514933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060649 (2 * n + 1))

end

end A060651.P2549023223078514933

/-! ## A060651.P6638669729740469960

`or(1, or(2, A081319(2*n+1)))`
-/

namespace A060651.P6638669729740469960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor 2 (A081319 (2 * n + 1)))

end

end A060651.P6638669729740469960

/-! ## A060651.P15215195365917470238

`A002146(n)%A001545(n)`
-/

namespace A060651.P15215195365917470238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A001545 n)

end

end A060651.P15215195365917470238

/-! ## A060651.P10314364012779748328

`A002146(n)-A000038(n)²`
-/

namespace A060651.P10314364012779748328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002146 n - A000038 n ^ 2

end

end A060651.P10314364012779748328

/-! ## A060651.P7346623387590541018

`A060649(2*n+1)+A000038(n+1)`
-/

namespace A060651.P7346623387590541018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (2 * n + 1) + A000038 (n + 1)

end

end A060651.P7346623387590541018

/-! ## A060651.P5285081938341223690

`and(1, A005408(n+1))*A060649(2*n+1)`
-/

namespace A060651.P5285081938341223690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005408 (n + 1)) * A060649 (2 * n + 1)

end

end A060651.P5285081938341223690

/-! ## A060651.P6208723896699923652

`and(1, A060649(n+2))*A060649(2*n+1)`
-/

namespace A060651.P6208723896699923652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A060649 (n + 2)) * A060649 (2 * n + 1)

end

end A060651.P6208723896699923652

/-! ## A060651.P642362566907840082

`A280193(2*n+1)²*A060649(2*n+1)`
-/

namespace A060651.P642362566907840082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) ^ 2 * A060649 (2 * n + 1)

end

end A060651.P642362566907840082

/-! ## A060651.P18408105705687959773

`A060649(A005408(n))/and(1, A005408(n))`
-/

namespace A060651.P18408105705687959773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060649 (A005408 n).toNat : ℚ) / (Int.land 1 (A005408 n) : ℚ)

end

end A060651.P18408105705687959773

/-! ## A060651.P17665593480986793677

`and(A060649(2*n+1), A060649(A005408(n)))`
-/

namespace A060651.P17665593480986793677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060649 (2 * n + 1)) (A060649 (A005408 n).toNat)

end

end A060651.P17665593480986793677

/-! ## A060651.P12933621612569597020

`A006530(A060649(2*n+1))`
-/

namespace A060651.P12933621612569597020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060649 (2 * n + 1)).toNat

end

end A060651.P12933621612569597020

/-! ## A060651.P3587071703200509065

`filter[A060649(n+1), A010051(#)]`
-/

namespace A060651.P3587071703200509065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A060651.P3587071703200509065

/-! ## A060651.P13907430656276378751

`filter[A060649(n+1), A069513(#)]`
-/

namespace A060651.P13907430656276378751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A060651.P13907430656276378751

/-! ## A060651.P15522000977630053033

`filter[A060649(n+1), A324290(#)]`
-/

namespace A060651.P15522000977630053033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A060651.P15522000977630053033

/-! ## A060651.P3553359240077413345

`filter[A060649(n+1), A091862(#)]`
-/

namespace A060651.P3553359240077413345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A060651.P3553359240077413345

/-! ## A060651.P12434552579745553330

`filter[A060649(n+1), A174897(#)]`
-/

namespace A060651.P12434552579745553330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A060651.P12434552579745553330

/-! ## A060651.P18215770847459236252

`filter[A060649(n+1), A211487(#)]`
-/

namespace A060651.P18215770847459236252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A060651.P18215770847459236252

/-!
# A060652: Orders of non-Abelian groups: n such that some group of order n is non-Abelian.

The programs for A060652, there is no canonical definition to state claims against.
-/

/-! ## A060652.P3300506011065823172

`comp[A051532(n+1)-1]+1`
-/

namespace A060652.P3300506011065823172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A060652.P3300506011065823172

/-! ## A060652.P3453224605966306196

`∪[A046099(n+1), A056868(n+1)]`
-/

namespace A060652.P3453224605966306196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060652.P3453224605966306196

/-! ## A060652.P9690428103139313751

`eq[char[A051532(n+1)], A000007(n)]`
-/

namespace A060652.P9690428103139313751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A060652.P9690428103139313751

/-! ## A060652.P1739970541966370765

`eq[char[A051532(n+1)], A000038(n)]`
-/

namespace A060652.P1739970541966370765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A060652.P1739970541966370765

/-! ## A060652.P17507119535231233079

`lt[∏{e}[n, #], A000001(n)]`
-/

namespace A060652.P17507119535231233079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A060652.P17507119535231233079

/-! ## A060652.P7497591809271339308

`lt[1, A060689(n+1)+1]+1`
-/

namespace A060652.P7497591809271339308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060652.P7497591809271339308

/-! ## A060652.P1439928197247661540

`A061767(lt[1, A060689(n+1)+1])`
-/

namespace A060652.P1439928197247661540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060652.P1439928197247661540

/-! ## A060652.P4533727883946118193

`lt[1, A059807(n+1)]+1`
-/

namespace A060652.P4533727883946118193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060652.P4533727883946118193

/-! ## A060652.P8984294718212302460

`lt[A059806(n+1), n]+1`
-/

namespace A060652.P8984294718212302460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A060652.P8984294718212302460

/-! ## A060652.P11254889572235791882

`lt[1, A059807(A028310(n))]`
-/

namespace A060652.P11254889572235791882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060652.P11254889572235791882

/-! ## A060652.P9491707239718022397

`lt[1, A241276(n+1)]+1`
-/

namespace A060652.P9491707239718022397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060652.P9491707239718022397

/-! ## A060652.P6007494009274353673

`lt[A060653(n+1), n]+1`
-/

namespace A060652.P6007494009274353673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A060652.P6007494009274353673

/-! ## A060652.P2844570874289091819

`lt[0, A083280(A233583(n+1))]`
-/

namespace A060652.P2844570874289091819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083280 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A060652.P2844570874289091819

/-! ## A060652.P16372131430621966463

`lt[0, A083573(n+1)]+1`
-/

namespace A060652.P16372131430621966463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060652.P16372131430621966463

/-! ## A060652.P9623022316978150009

`A065475(lt[0, A083573(n+1)])`
-/

namespace A060652.P9623022316978150009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A060652.P9623022316978150009

/-! ## A060652.P5840666296643645591

`lt[A255231(A028310(n)), A000001(n)]`
-/

namespace A060652.P5840666296643645591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255231 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060652.P5840666296643645591

/-! ## A060652.P12321127766442389320

`∪[A056868(n+1), A345193(n+1)]`
-/

namespace A060652.P12321127766442389320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060652.P12321127766442389320

/-! ## A060652.P8992797435084815017

`∪[A056868(n+1), A333195(n+1)]`
-/

namespace A060652.P8992797435084815017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060652.P8992797435084815017

/-! ## A060652.P163270864837983375

`∪[A056868(n+1), A325261(n+1)]`
-/

namespace A060652.P163270864837983375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060652.P163270864837983375

/-!
# A060654: a(n) = gcd(n, A060766(n)).

The programs for A060654, there is no canonical definition to state claims against.
-/

/-! ## A060654.P7617523193878078289

`gcd(n+2, A060766(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060654.P7617523193878078289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A060766 (n + 2))

end

end A060654.P7617523193878078289

/-! ## A060654.P900097586654183360

`A054576(2*(n+2))*A054576(A342017(A132813(n+2)))`
-/

namespace A060654.P900097586654183360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 2)) * A054576 (A342017 (A132813 (n + 2)).toNat).toNat

end

end A060654.P900097586654183360

/-! ## A060654.P4423714078454995888

`A032742(n+2)*A275062(A090349(n+1))`
-/

namespace A060654.P4423714078454995888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 2) * A275062 (A090349 (n + 1)).toNat

end

end A060654.P4423714078454995888

/-! ## A060654.P3697910324407740517

`A020639(A058348(n+2)!)*A032742(n+2)`
-/

namespace A060654.P3697910324407740517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A058348 (n + 2)).toNat) * A032742 (n + 2)

end

end A060654.P3697910324407740517

/-! ## A060654.P56814147456821533

`A103586(A137323(n+2))`
-/

namespace A060654.P56814147456821533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (A137323 (n + 2)).toNat

end

end A060654.P56814147456821533

/-!
# A060655: Pack n integer-sided rectangles into the smallest possible square so that no sides of the rectangle are the same. Sequence gives the side of the smallest square.

The programs for A060655, there is no canonical definition to state claims against.
-/

/-! ## A060655.P17298090969539836485

`ceil(∑[sqrt(A305117(3*(n+1)))])`
-/

namespace A060655.P17298090969539836485
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A305117 (3 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A060655.P17298090969539836485

/-! ## A060655.P12726336596629668183

`A071377(A002821(n+1))`
-/

namespace A060655.P12726336596629668183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071377 (A002821 (n + 1)).toNat

end

end A060655.P12726336596629668183

/-! ## A060655.P8803492122966656910

`A248610(A000093(n+3)-1)`
-/

namespace A060655.P8803492122966656910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A000093 (n + 3) - 1).toNat

end

end A060655.P8803492122966656910

/-! ## A060655.P9086199640295915368

`∑[A050501(2*n+5)-A279596(n+3)]`
-/

namespace A060655.P9086199640295915368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (2 * n + 5) - A279596 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060655.P9086199640295915368

/-! ## A060655.P15444814379696560249

`A321346(A007095(n))+ceil(sqrt((n+1)^3)/2+n)`
-/

namespace A060655.P15444814379696560249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 (A007095 n).toNat + ⌈Real.sqrt ((n + 1) ^ 3 : ℝ) / 2 + (n : ℝ)⌉

end

end A060655.P15444814379696560249

/-!
# A060656: a(n) = 2*a(n-1)*a(n-2)/a(n-3), with a(0)=a(1)=1.

The programs for A060656, the canonical program `A060656.P1443644318275447566` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060656 has offset 0).

The definition of A060656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060656.P1443644318275447566

`2^floor(n²/4)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060656

/-- `2^floor(n²/4)` -/
def P1443644318275447566.Spec : Prop :=
  ∀ n, P1443644318275447566.a n = (A060656 n : ℚ)

end A060656

/-! ## A060656.P8608354507445576809

`a(n-2)*2^(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A060656.P8608354507445576809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A060656.P8608354507445576809

namespace A060656

/-- `a(n-2)*2^(n-1)` -/
def P8608354507445576809.Spec : Prop :=
  ∀ n, P8608354507445576809.a n = (A060656 n : ℚ)

end A060656

/-! ## A060656.P17990355559798690304

`2*a(n-1)*a(n-2)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060656.P17990355559798690304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 1) * a (n - 2) / a (n - 3)

end

end A060656.P17990355559798690304

namespace A060656

/-- `2*a(n-1)*a(n-2)/a(n-3)` -/
def P17990355559798690304.Spec : Prop :=
  ∀ n, P17990355559798690304.a n = (A060656 n : ℚ)

end A060656

/-! ## A060656.P11706599334275540783

`∏[∏[gcd(2, n)]/2]`
-/

namespace A060656.P11706599334275540783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060656.P11706599334275540783

namespace A060656

/-- `∏[∏[gcd(2, n)]/2]` -/
def P11706599334275540783.Spec : Prop :=
  ∀ n, P11706599334275540783.a n = (A060656 n : ℚ)

end A060656

/-!
# A060657: Odd values of the sum-of-divisors function sigma (A000203) (without repetitions).

The programs for A060657, there is no canonical definition to state claims against.
-/

/-! ## A060657.P11668646821913685221

`record[A331036(A328399(n))]`
-/

namespace A060657.P11668646821913685221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331036 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P11668646821913685221

/-! ## A060657.P9503687119546372068

`A331036(∑[runs[A331036(n+1)]])`
-/

namespace A060657.P9503687119546372068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331036 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060657.P9503687119546372068

/-! ## A060657.P7895965665425884701

`record[A331036(n+1)%A331036(n+2)]`
-/

namespace A060657.P7895965665425884701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331036 (n + 1)) (A331036 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P7895965665425884701

/-! ## A060657.P13234297383187253026

`record[A331036(A278539(n+1))]`
-/

namespace A060657.P13234297383187253026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331036 (A278539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P13234297383187253026

/-! ## A060657.P16556852151573295873

`record[A331036(A058933(n+1))]`
-/

namespace A060657.P16556852151573295873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331036 (A058933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P16556852151573295873

/-! ## A060657.P9518028294396485406

`record[A331036(1-A054861(n)+n)]`
-/

namespace A060657.P9518028294396485406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331036 (1 - A054861 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P9518028294396485406

/-! ## A060657.P1518441836333945198

`record[A331036(A249738(n+1)+1)]`
-/

namespace A060657.P1518441836333945198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331036 (A249738 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P1518441836333945198

/-! ## A060657.P4951411205935207510

`filter[2*n+1, A175192(#)]`
-/

namespace A060657.P4951411205935207510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j) = 1) n)

end

end A060657.P4951411205935207510

/-! ## A060657.P15915880241966006164

`record[(2*n+1)*A175192(2*n+1)]`
-/

namespace A060657.P15915880241966006164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A175192 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P15915880241966006164

/-! ## A060657.P3656555760223018870

`record[A331036(n+1)%A016825(A033638(n))]`
-/

namespace A060657.P3656555760223018870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331036 (n + 1)) (A016825 (A033638 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060657.P3656555760223018870

/-! ## A060657.P16203287790315983517

`∩[2*n+1, A002191(n+1)]`
-/

namespace A060657.P16203287790315983517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060657.P16203287790315983517

/-! ## A060657.P17285341291317642029

`A002191(eq[1, A002191(n+1)%2]+1)`
-/

namespace A060657.P17285341291317642029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002191 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060657.P17285341291317642029

/-! ## A060657.P4852995387380933777

`A002191(eq[1, gcd(2, A002191(n+1))]+1)`
-/

namespace A060657.P4852995387380933777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002191 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A060657.P4852995387380933777

/-! ## A060657.P12236026879959999427

`A002191(eq[1, and(1, A002191(n+1))]+1)`
-/

namespace A060657.P12236026879959999427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002191 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060657.P12236026879959999427

/-! ## A060657.P8682110305703464060

`∩[A002191(n+1), A004273(n)]`
-/

namespace A060657.P8682110305703464060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060657.P8682110305703464060

/-! ## A060657.P16474481839015271568

`∩[A002191(n+1), A004274(n)]`
-/

namespace A060657.P16474481839015271568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060657.P16474481839015271568

/-! ## A060657.P5136923390243994633

`∩[A002191(n+1), A060747(n)]`
-/

namespace A060657.P5136923390243994633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060657.P5136923390243994633

/-! ## A060657.P5795439298767225608

`∩[A002191(n+1), A004280(n+1)]`
-/

namespace A060657.P5795439298767225608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060657.P5795439298767225608

/-! ## A060657.P7597960895903812409

`∩[A002191(n+1), A005843(n)+1]`
-/

namespace A060657.P7597960895903812409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060657.P7597960895903812409

/-! ## A060657.P454343741066932686

`filter[A002191(n+1), A000035(#)]`
-/

namespace A060657.P454343741066932686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A060657.P454343741066932686

/-!
# A060658: Even numbers n such that sigma(x) = n has no solution.

The programs for A060658, the canonical program `A060658.P10391522768157546059` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060658 has offset 1).

The definition of A060658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060658.P10391522768157546059

`∩[2*n, A007369(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060658

/-- `∩[2*n, A007369(n+1)]` -/
def P10391522768157546059.Spec : Prop :=
  ∀ n, (P10391522768157546059.a n : ℤ) = A060658 (n + 1)

theorem P10391522768157546059.correct : P10391522768157546059.Spec := by
  intro n
  simp only [A060658, Nat.add_sub_cancel]

end A060658

/-! ## A060658.P13068870341817002998

`∩[A007369(n+1), A004271(n)]`
-/

namespace A060658.P13068870341817002998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P13068870341817002998

namespace A060658

/-- `∩[A007369(n+1), A004271(n)]` -/
def P13068870341817002998.Spec : Prop :=
  ∀ n, (P13068870341817002998.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P15516382542659529524

`∩[A007369(n+1), A004275(n)]`
-/

namespace A060658.P15516382542659529524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P15516382542659529524

namespace A060658

/-- `∩[A007369(n+1), A004275(n)]` -/
def P15516382542659529524.Spec : Prop :=
  ∀ n, (P15516382542659529524.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P10937040214200440701

`∩[A007369(n+1), A004277(n)]`
-/

namespace A060658.P10937040214200440701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P10937040214200440701

namespace A060658

/-- `∩[A007369(n+1), A004277(n)]` -/
def P10937040214200440701.Spec : Prop :=
  ∀ n, (P10937040214200440701.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P6349651307063158719

`∩[A007369(n+1), A005843(n)]`
-/

namespace A060658.P6349651307063158719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P6349651307063158719

namespace A060658

/-- `∩[A007369(n+1), A005843(n)]` -/
def P6349651307063158719.Spec : Prop :=
  ∀ n, (P6349651307063158719.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P12676726242582052808

`∩[A007369(n+1), A316571(n+1)]`
-/

namespace A060658.P12676726242582052808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P12676726242582052808

namespace A060658

/-- `∩[A007369(n+1), A316571(n+1)]` -/
def P12676726242582052808.Spec : Prop :=
  ∀ n, (P12676726242582052808.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P13785273650741643496

`∩[A007369(n+1), A317440(n+1)]`
-/

namespace A060658.P13785273650741643496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P13785273650741643496

namespace A060658

/-- `∩[A007369(n+1), A317440(n+1)]` -/
def P13785273650741643496.Spec : Prop :=
  ∀ n, (P13785273650741643496.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P12401184416182155704

`eq[n%2, A051444(n+2)]+2`
-/

namespace A060658.P12401184416182155704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A060658.P12401184416182155704

namespace A060658

/-- `eq[n%2, A051444(n+2)]+2` -/
def P12401184416182155704.Spec : Prop :=
  ∀ n, (P12401184416182155704.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P2161001186956064795

`eq[and(1, n), A257669(n+1)]+1`
-/

namespace A060658.P2161001186956064795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060658.P2161001186956064795

namespace A060658

/-- `eq[and(1, n), A257669(n+1)]+1` -/
def P2161001186956064795.Spec : Prop :=
  ∀ n, (P2161001186956064795.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P12284753613732619062

`eq[and(1, n), A057637(n+2)]+2`
-/

namespace A060658.P12284753613732619062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A060658.P12284753613732619062

namespace A060658

/-- `eq[and(1, n), A057637(n+2)]+2` -/
def P12284753613732619062.Spec : Prop :=
  ∀ n, (P12284753613732619062.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P3646295134158588512

`2*(lt[A341879(2*(n+1)), 1]+1)`
-/

namespace A060658.P3646295134158588512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341879 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A060658.P3646295134158588512

namespace A060658

/-- `2*(lt[A341879(2*(n+1)), 1]+1)` -/
def P3646295134158588512.Spec : Prop :=
  ∀ n, (P3646295134158588512.a n : ℤ) = A060658 (n + 1)

end A060658

/-! ## A060658.P2702193441593637582

`filter[A004277(n), A175253(#)]`
-/

namespace A060658.P2702193441593637582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175253 (f1 j).toNat = 1) n)

end

end A060658.P2702193441593637582

namespace A060658

/-- `filter[A004277(n), A175253(#)]` -/
def P2702193441593637582.Spec : Prop :=
  ∀ n, P2702193441593637582.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P13517672598616570881

`filter[A057543(n), A175253(#)]`
-/

namespace A060658.P13517672598616570881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175253 (f1 j).toNat = 1) n)

end

end A060658.P13517672598616570881

namespace A060658

/-- `filter[A057543(n), A175253(#)]` -/
def P13517672598616570881.Spec : Prop :=
  ∀ n, P13517672598616570881.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P17246766556416750469

`filter[A007369(n+1), A059841(#)]`
-/

namespace A060658.P17246766556416750469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A060658.P17246766556416750469

namespace A060658

/-- `filter[A007369(n+1), A059841(#)]` -/
def P17246766556416750469.Spec : Prop :=
  ∀ n, P17246766556416750469.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P2546638938851726076

`filter[A007369(n+1), A135528(#)]`
-/

namespace A060658.P2546638938851726076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A060658.P2546638938851726076

namespace A060658

/-- `filter[A007369(n+1), A135528(#)]` -/
def P2546638938851726076.Spec : Prop :=
  ∀ n, P2546638938851726076.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P11319885033405364196

`filter[A004271(n+1), A175253(#)]`
-/

namespace A060658.P11319885033405364196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175253 (f1 j).toNat = 1) n)

end

end A060658.P11319885033405364196

namespace A060658

/-- `filter[A004271(n+1), A175253(#)]` -/
def P11319885033405364196.Spec : Prop :=
  ∀ n, P11319885033405364196.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P3507790303299720780

`filter[A004275(n+1), A175253(#)]`
-/

namespace A060658.P3507790303299720780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175253 (f1 j).toNat = 1) n)

end

end A060658.P3507790303299720780

namespace A060658

/-- `filter[A004275(n+1), A175253(#)]` -/
def P3507790303299720780.Spec : Prop :=
  ∀ n, P3507790303299720780.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P5192082469607285898

`filter[A004278(n+1), A175253(#)]`
-/

namespace A060658.P5192082469607285898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175253 (f1 j).toNat = 1) n)

end

end A060658.P5192082469607285898

namespace A060658

/-- `filter[A004278(n+1), A175253(#)]` -/
def P5192082469607285898.Spec : Prop :=
  ∀ n, P5192082469607285898.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P10887395211755122865

`filter[A005843(n+1), A175253(#)]`
-/

namespace A060658.P10887395211755122865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175253 (f1 j).toNat = 1) n)

end

end A060658.P10887395211755122865

namespace A060658

/-- `filter[A005843(n+1), A175253(#)]` -/
def P10887395211755122865.Spec : Prop :=
  ∀ n, P10887395211755122865.a n = A060658 (n + 1)

end A060658

/-! ## A060658.P2262183688893857642

`filter[A007369(n+1), A266591(#)]`
-/

namespace A060658.P2262183688893857642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A060658.P2262183688893857642

namespace A060658

/-- `filter[A007369(n+1), A266591(#)]` -/
def P2262183688893857642.Spec : Prop :=
  ∀ n, P2262183688893857642.a n = A060658 (n + 1)

end A060658

/-!
# A060659: a(n) = smallest number of squares on a checkerboard that has exactly n domino tilings.

The programs for A060659, there is no canonical definition to state claims against.
-/

/-! ## A060659.P14135670142335957042

`A001222(4^(A266082(n+1)+1))`
-/

namespace A060659.P14135670142335957042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A266082 (n + 1) + 1 : ℤ))).toNat

end

end A060659.P14135670142335957042

/-! ## A060659.P9313332671833682538

`A003313(4^(A266082(n+1)+1))`
-/

namespace A060659.P9313332671833682538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A266082 (n + 1) + 1 : ℤ))).toNat

end

end A060659.P9313332671833682538

/-! ## A060659.P17117889455313980950

`2*(A178047(or(A045634(n), A281873(n+1)))+1)`
-/

namespace A060659.P17117889455313980950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A178047 (Int.lor (A045634 n) (A281873 (n + 1))).toNat + 1)

end

end A060659.P17117889455313980950

/-!
# A060660: Numbers k such that sigma(x) = k has exactly 4 solutions.

The programs for A060660, the canonical program `A060660.P16692280581307155305` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060660 has offset 1).

The definition of A060660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060660.P16692280581307155305

`A103517(eq[2, A283486(n+1)-2])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060660

/-- `A103517(eq[2, A283486(n+1)-2])` -/
def P16692280581307155305.Spec : Prop :=
  ∀ n, P16692280581307155305.a n = A060660 (n + 1)

theorem P16692280581307155305.correct : P16692280581307155305.Spec := by
  intro n
  simp only [A060660, Nat.add_sub_cancel]

end A060660

/-! ## A060660.P11949673216211021436

`A103517(eq[2, A283486(n+1)/2])`
-/

namespace A060660.P11949673216211021436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283486 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A060660.P11949673216211021436

namespace A060660

/-- `A103517(eq[2, A283486(n+1)/2])` -/
def P11949673216211021436.Spec : Prop :=
  ∀ n, P11949673216211021436.a n = A060660 (n + 1)

end A060660

/-! ## A060660.P17445409352521923268

`eq[4, A054973(A028310(n))]`
-/

namespace A060660.P17445409352521923268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060660.P17445409352521923268

namespace A060660

/-- `eq[4, A054973(A028310(n))]` -/
def P17445409352521923268.Spec : Prop :=
  ∀ n, (P17445409352521923268.a n : ℤ) = A060660 (n + 1)

end A060660

/-! ## A060660.P16925131382696682500

`A011760(eq[4, A054973(n+1)])`
-/

namespace A060660.P16925131382696682500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060660.P16925131382696682500

namespace A060660

/-- `A011760(eq[4, A054973(n+1)])` -/
def P16925131382696682500.Spec : Prop :=
  ∀ n, P16925131382696682500.a n = A060660 (n + 1)

end A060660

/-! ## A060660.P14599292489668487424

`A014681(eq[4, A054973(n+1)])`
-/

namespace A060660.P14599292489668487424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060660.P14599292489668487424

namespace A060660

/-- `A014681(eq[4, A054973(n+1)])` -/
def P14599292489668487424.Spec : Prop :=
  ∀ n, P14599292489668487424.a n = A060660 (n + 1)

end A060660

/-! ## A060660.P225762875852814580

`A020725(eq[4, A054973(n+1)])`
-/

namespace A060660.P225762875852814580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060660.P225762875852814580

namespace A060660

/-- `A020725(eq[4, A054973(n+1)])` -/
def P225762875852814580.Spec : Prop :=
  ∀ n, P225762875852814580.a n = A060660 (n + 1)

end A060660

/-! ## A060660.P14458337680085863709

`A114637(eq[4, A054973(n+1)])`
-/

namespace A060660.P14458337680085863709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060660.P14458337680085863709

namespace A060660

/-- `A114637(eq[4, A054973(n+1)])` -/
def P14458337680085863709.Spec : Prop :=
  ∀ n, P14458337680085863709.a n = A060660 (n + 1)

end A060660

/-!
# A060661: Numbers k such that sigma(x) = k has exactly 5 solutions.

The programs for A060661, the canonical program `A060661.P14735911820516920844` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060661 has offset 1).

The definition of A060661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060661.P14735911820516920844

`A103517(eq[5, A283486(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060661

/-- `A103517(eq[5, A283486(n+1)])` -/
def P14735911820516920844.Spec : Prop :=
  ∀ n, P14735911820516920844.a n = A060661 (n + 1)

theorem P14735911820516920844.correct : P14735911820516920844.Spec := by
  intro n
  simp only [A060661, Nat.add_sub_cancel]

end A060661

/-! ## A060661.P4694101979553534828

`eq[5, A054973(round(acot(n)+n))]`
-/

namespace A060661.P4694101979553534828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060661.P4694101979553534828

namespace A060661

/-- `eq[5, A054973(round(acot(n)+n))]` -/
def P4694101979553534828.Spec : Prop :=
  ∀ n, (P4694101979553534828.a n : ℤ) = A060661 (n + 1)

end A060661

/-! ## A060661.P14299052607640637692

`eq[5, A054973(A028310(n))]`
-/

namespace A060661.P14299052607640637692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060661.P14299052607640637692

namespace A060661

/-- `eq[5, A054973(A028310(n))]` -/
def P14299052607640637692.Spec : Prop :=
  ∀ n, (P14299052607640637692.a n : ℤ) = A060661 (n + 1)

end A060661

/-! ## A060661.P18134820179318853970

`A020725(eq[5, A054973(n+1)])`
-/

namespace A060661.P18134820179318853970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060661.P18134820179318853970

namespace A060661

/-- `A020725(eq[5, A054973(n+1)])` -/
def P18134820179318853970.Spec : Prop :=
  ∀ n, P18134820179318853970.a n = A060661 (n + 1)

end A060661

/-! ## A060661.P1675469926938472010

`A065475(eq[5, A054973(n+1)])`
-/

namespace A060661.P1675469926938472010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060661.P1675469926938472010

namespace A060661

/-- `A065475(eq[5, A054973(n+1)])` -/
def P1675469926938472010.Spec : Prop :=
  ∀ n, P1675469926938472010.a n = A060661 (n + 1)

end A060661

/-! ## A060661.P4457949774887360138

`A114637(eq[5, A054973(n+1)])`
-/

namespace A060661.P4457949774887360138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060661.P4457949774887360138

namespace A060661

/-- `A114637(eq[5, A054973(n+1)])` -/
def P4457949774887360138.Spec : Prop :=
  ∀ n, P4457949774887360138.a n = A060661 (n + 1)

end A060661

/-! ## A060661.P10144896158518193723

`A020725(eq[5, A074753(n+2)-A074753(n+1)])`
-/

namespace A060661.P10144896158518193723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 2) - A074753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060661.P10144896158518193723

namespace A060661

/-- `A020725(eq[5, A074753(n+2)-A074753(n+1)])` -/
def P10144896158518193723.Spec : Prop :=
  ∀ n, P10144896158518193723.a n = A060661 (n + 1)

end A060661

/-! ## A060661.P10225717769480368740

`A065475(eq[5, A074753(n+2)-A074753(n+1)])`
-/

namespace A060661.P10225717769480368740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 2) - A074753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060661.P10225717769480368740

namespace A060661

/-- `A065475(eq[5, A074753(n+2)-A074753(n+1)])` -/
def P10225717769480368740.Spec : Prop :=
  ∀ n, P10225717769480368740.a n = A060661 (n + 1)

end A060661

/-!
# A060662: Numbers k such that sigma(x) = k has exactly 6 solutions.

The programs for A060662, there is no canonical definition to state claims against.
-/

/-! ## A060662.P10936624844603650070

`A103517(eq[6, A283486(n+1)])`
-/

namespace A060662.P10936624844603650070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060662.P10936624844603650070

/-! ## A060662.P2502290327635975906

`eq[6, A054973(round(acot(n)+n))]`
-/

namespace A060662.P2502290327635975906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060662.P2502290327635975906

/-! ## A060662.P8747375077997516085

`eq[6, A054973(A028310(n))]`
-/

namespace A060662.P8747375077997516085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060662.P8747375077997516085

/-! ## A060662.P8890715895653859320

`A011760(eq[6, A054973(n+1)])`
-/

namespace A060662.P8890715895653859320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060662.P8890715895653859320

/-! ## A060662.P3544148904583353845

`A014681(eq[6, A054973(n+1)])`
-/

namespace A060662.P3544148904583353845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060662.P3544148904583353845

/-!
# A060663: Numbers k such that sigma(x) = k has exactly 7 solutions.

The programs for A060663, there is no canonical definition to state claims against.
-/

/-! ## A060663.P15210959026464717638

`A103517(eq[7, A283486(n+1)])`
-/

namespace A060663.P15210959026464717638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060663.P15210959026464717638

/-! ## A060663.P7087105783638998120

`eq[7, A054973(round(acot(n)+n))]`
-/

namespace A060663.P7087105783638998120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060663.P7087105783638998120

/-! ## A060663.P18021447984634385293

`eq[7, A054973(A028310(n))]`
-/

namespace A060663.P18021447984634385293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060663.P18021447984634385293

/-! ## A060663.P18343531527392161750

`A020725(eq[7, A054973(n+1)])`
-/

namespace A060663.P18343531527392161750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060663.P18343531527392161750

/-! ## A060663.P13552904504085840881

`eq[7, A054973(A065190(n+1))]`
-/

namespace A060663.P13552904504085840881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060663.P13552904504085840881

/-!
# A060664: Numbers k such that sigma(x) = k has exactly 8 solutions.

The programs for A060664, there is no canonical definition to state claims against.
-/

/-! ## A060664.P13256330727847861847

`A103517(eq[8, A283486(n+1)])`
-/

namespace A060664.P13256330727847861847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060664.P13256330727847861847

/-!
# A060665: Numbers k such that sigma(x) = k has exactly 9 solutions.

The programs for A060665, there is no canonical definition to state claims against.
-/

/-! ## A060665.P11878207646577765119

`A103517(eq[9, A283486(n+1)])`
-/

namespace A060665.P11878207646577765119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060665.P11878207646577765119

/-!
# A060666: Numbers k such that sigma(x) = k has exactly 10 solutions.

The programs for A060666, there is no canonical definition to state claims against.
-/

/-! ## A060666.P3921569041080365161

`A103517(eq[10, A283486(n+1)])`
-/

namespace A060666.P3921569041080365161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060666.P3921569041080365161

/-! ## A060666.P4425430434324099802

`eq[10, A054973(round(acot(n)+n))]`
-/

namespace A060666.P4425430434324099802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060666.P4425430434324099802

/-! ## A060666.P4373347832326280595

`eq[10, A054973(A028310(n))]`
-/

namespace A060666.P4373347832326280595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060666.P4373347832326280595

/-! ## A060666.P4870165443864764083

`A020725(eq[10, A054973(n+1)])`
-/

namespace A060666.P4870165443864764083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060666.P4870165443864764083

/-! ## A060666.P12137885426982872032

`eq[10, A054973(A065190(n+1))]`
-/

namespace A060666.P12137885426982872032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060666.P12137885426982872032

/-!
# A060667: Numbers k such that phi(x) = k has exactly 4 solutions.

The programs for A060667, there is no canonical definition to state claims against.
-/

/-! ## A060667.P12722803547367528494

`A103517(eq[4, A032446(n+1)])`
-/

namespace A060667.P12722803547367528494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060667.P12722803547367528494

/-! ## A060667.P9558792924019592113

`eq[4, sqrt(A307853(n+1))]`
-/

namespace A060667.P9558792924019592113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A307853 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A060667.P9558792924019592113

/-! ## A060667.P8574964038652109366

`eq[4, A014197(A028310(n))]`
-/

namespace A060667.P8574964038652109366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060667.P8574964038652109366

/-! ## A060667.P3955728215231719590

`eq[A040056(n), A307853(n+1)]`
-/

namespace A060667.P3955728215231719590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060667.P3955728215231719590

/-! ## A060667.P7814605554871483538

`eq[A040057(n), A307853(n+1)]`
-/

namespace A060667.P7814605554871483538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060667.P7814605554871483538

/-! ## A060667.P8760183620834969664

`eq[A040063(n), A307853(n+1)]`
-/

namespace A060667.P8760183620834969664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060667.P8760183620834969664

/-! ## A060667.P14082347469875043485

`eq[A040071(n), A307853(n+1)]`
-/

namespace A060667.P14082347469875043485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060667.P14082347469875043485

/-! ## A060667.P2357714854888653413

`eq[A059164(n), A307853(n+1)]`
-/

namespace A060667.P2357714854888653413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060667.P2357714854888653413

/-! ## A060667.P12337058568422573074

`eq[A171418(n), A307853(n+1)]`
-/

namespace A060667.P12337058568422573074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060667.P12337058568422573074

/-! ## A060667.P13155317953919171779

`A014681(eq[2, A014197(n+1)-2])`
-/

namespace A060667.P13155317953919171779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060667.P13155317953919171779

/-! ## A060667.P16677189141094646745

`A020725(eq[2, A014197(n+1)-2])`
-/

namespace A060667.P16677189141094646745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060667.P16677189141094646745

/-! ## A060667.P2053965095897350884

`A092486(eq[2, A014197(n+1)-2])`
-/

namespace A060667.P2053965095897350884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060667.P2053965095897350884

/-! ## A060667.P1062931749552178236

`A103889(eq[2, A014197(n+1)-2])`
-/

namespace A060667.P1062931749552178236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060667.P1062931749552178236

/-! ## A060667.P9935476784329874120

`A114637(eq[2, A014197(n+1)-2])`
-/

namespace A060667.P9935476784329874120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060667.P9935476784329874120

/-! ## A060667.P6609292512616145199

`A133265(eq[2, A014197(n+1)-2])`
-/

namespace A060667.P6609292512616145199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060667.P6609292512616145199

/-! ## A060667.P12442698465650803002

`A014681(eq[2, A014197(n+1)/2])`
-/

namespace A060667.P12442698465650803002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014197 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A060667.P12442698465650803002

/-! ## A060667.P15513145713184626492

`A020725(eq[2, A014197(n+1)/2])`
-/

namespace A060667.P15513145713184626492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014197 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A060667.P15513145713184626492

/-! ## A060667.P9369957531449782835

`A092486(eq[2, A014197(n+1)/2])`
-/

namespace A060667.P9369957531449782835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014197 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A060667.P9369957531449782835

/-! ## A060667.P4058349937129092138

`A103889(eq[2, A014197(n+1)/2])`
-/

namespace A060667.P4058349937129092138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014197 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A060667.P4058349937129092138

/-! ## A060667.P1143285043548077907

`A114637(eq[2, A014197(n+1)/2])`
-/

namespace A060667.P1143285043548077907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014197 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A060667.P1143285043548077907

/-!
# A060668: Numbers k such that phi(x) = k has exactly 5 solutions.

The programs for A060668, there is no canonical definition to state claims against.
-/

/-! ## A060668.P7205639533905167589

`A103517(eq[5, A032446(n+1)])`
-/

namespace A060668.P7205639533905167589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060668.P7205639533905167589

/-! ## A060668.P11669145496659298844

`eq[20, A307853(n+1)]`
-/

namespace A060668.P11669145496659298844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060668.P11669145496659298844

/-! ## A060668.P6103679896842805629

`eq[5, A014197(A028310(n))]`
-/

namespace A060668.P6103679896842805629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060668.P6103679896842805629

/-! ## A060668.P4315291510313041800

`A014681(eq[5, A014197(n+1)])`
-/

namespace A060668.P4315291510313041800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060668.P4315291510313041800

/-! ## A060668.P3964689128629991274

`A020725(eq[5, A014197(n+1)])`
-/

namespace A060668.P3964689128629991274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060668.P3964689128629991274

/-! ## A060668.P5757511838794129171

`A092486(eq[5, A014197(n+1)])`
-/

namespace A060668.P5757511838794129171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060668.P5757511838794129171

/-! ## A060668.P15506677761732023736

`A098181(eq[5, A014197(n+1)])`
-/

namespace A060668.P15506677761732023736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060668.P15506677761732023736

/-! ## A060668.P4621325987823963641

`A103889(eq[5, A014197(n+1)])`
-/

namespace A060668.P4621325987823963641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060668.P4621325987823963641

/-! ## A060668.P10543840026114813249

`A133265(eq[5, A014197(n+1)])`
-/

namespace A060668.P10543840026114813249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060668.P10543840026114813249

/-! ## A060668.P5510181741368322957

`eq[5, A014197(A060000(n+1))]`
-/

namespace A060668.P5510181741368322957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060668.P5510181741368322957

/-!
# A060669: Numbers k such that phi(x) = k has exactly 6 solutions.

The programs for A060669, there is no canonical definition to state claims against.
-/

/-! ## A060669.P1260980672573494207

`A103517(eq[6, A032446(n+1)])`
-/

namespace A060669.P1260980672573494207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060669.P1260980672573494207

/-! ## A060669.P17825545737346647356

`eq[6, A014197(n+1)]+1`
-/

namespace A060669.P17825545737346647356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060669.P17825545737346647356

/-! ## A060669.P13333171128138616376

`eq[6, A014197(A028310(n))]`
-/

namespace A060669.P13333171128138616376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060669.P13333171128138616376

/-! ## A060669.P17261716365578810091

`A020725(eq[6, A014197(n+1)])`
-/

namespace A060669.P17261716365578810091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060669.P17261716365578810091

/-! ## A060669.P8564200232108078740

`A056699(eq[6, A014197(n+1)])`
-/

namespace A060669.P8564200232108078740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060669.P8564200232108078740

/-! ## A060669.P7114751228008035206

`A114637(eq[6, A014197(n+1)])`
-/

namespace A060669.P7114751228008035206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060669.P7114751228008035206

/-! ## A060669.P2439715975948318396

`A201629(eq[6, A014197(n+1)])`
-/

namespace A060669.P2439715975948318396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060669.P2439715975948318396

/-! ## A060669.P7825315170233519640

`eq[A010215(n), A307853(n+1)]`
-/

namespace A060669.P7825315170233519640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060669.P7825315170233519640

/-! ## A060669.P15576223747361394526

`eq[3*A040013(n), A307853(n+1)]`
-/

namespace A060669.P15576223747361394526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060669.P15576223747361394526

/-! ## A060669.P12430523581260799544

`eq[A040056(n)+A040013(n), A307853(n+1)]`
-/

namespace A060669.P12430523581260799544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n + A040013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060669.P12430523581260799544

/-! ## A060669.P10707114428231471306

`eq[A040057(n)+A040013(n), A307853(n+1)]`
-/

namespace A060669.P10707114428231471306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n + A040013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060669.P10707114428231471306

/-! ## A060669.P6820539176325832241

`eq[A040063(n)+A040013(n), A307853(n+1)]`
-/

namespace A060669.P6820539176325832241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040063 n + A040013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060669.P6820539176325832241

/-!
# A060670: Numbers k such that phi(x) = k has exactly 7 solutions.

The programs for A060670, there is no canonical definition to state claims against.
-/

/-! ## A060670.P17602460283833290747

`A103517(eq[7, A032446(n+1)])`
-/

namespace A060670.P17602460283833290747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060670.P17602460283833290747

/-! ## A060670.P10196321148301629781

`eq[7, A014197(A028310(n))]`
-/

namespace A060670.P10196321148301629781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060670.P10196321148301629781

/-! ## A060670.P12611832611073089119

`A014681(eq[7, A014197(n+1)])`
-/

namespace A060670.P12611832611073089119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060670.P12611832611073089119

/-! ## A060670.P7486558165717840656

`A020725(eq[7, A014197(n+1)])`
-/

namespace A060670.P7486558165717840656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060670.P7486558165717840656

/-! ## A060670.P9518909422568655444

`A092486(eq[7, A014197(n+1)])`
-/

namespace A060670.P9518909422568655444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060670.P9518909422568655444

/-! ## A060670.P14514983682526776827

`A098181(eq[7, A014197(n+1)])`
-/

namespace A060670.P14514983682526776827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060670.P14514983682526776827

/-! ## A060670.P7604337287061023985

`A103889(eq[7, A014197(n+1)])`
-/

namespace A060670.P7604337287061023985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060670.P7604337287061023985

/-!
# A060671: Numbers k such that phi(x) = k has exactly 8 solutions.

The programs for A060671, there is no canonical definition to state claims against.
-/

/-! ## A060671.P6925556696718432199

`A103517(eq[8, A032446(n+1)])`
-/

namespace A060671.P6925556696718432199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060671.P6925556696718432199

/-! ## A060671.P6688161226637687430

`eq[32, A307853(n+1)]`
-/

namespace A060671.P6688161226637687430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060671.P6688161226637687430

/-! ## A060671.P8553062421530954658

`eq[8, A014197(A028310(n))]`
-/

namespace A060671.P8553062421530954658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060671.P8553062421530954658

/-! ## A060671.P12554063029222477003

`A014681(eq[8, A014197(n+1)])`
-/

namespace A060671.P12554063029222477003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060671.P12554063029222477003

/-! ## A060671.P4440752679577219349

`A020725(eq[8, A014197(n+1)])`
-/

namespace A060671.P4440752679577219349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060671.P4440752679577219349

/-! ## A060671.P5222696506488989593

`A098181(eq[8, A014197(n+1)])`
-/

namespace A060671.P5222696506488989593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060671.P5222696506488989593

/-! ## A060671.P16269983403421226595

`A133265(eq[8, A014197(n+1)])`
-/

namespace A060671.P16269983403421226595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060671.P16269983403421226595

/-! ## A060671.P747453725379243016

`eq[8, A014197(A060000(n+1))]`
-/

namespace A060671.P747453725379243016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060671.P747453725379243016

/-!
# A060672: Numbers k such that phi(x) = k has exactly 9 solutions.

The programs for A060672, there is no canonical definition to state claims against.
-/

/-! ## A060672.P6670066916153371308

`2*(eq[9, A032446(n+1)]+1)`
-/

namespace A060672.P6670066916153371308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060672.P6670066916153371308

/-! ## A060672.P18132356503750484543

`A103517(eq[9, A032446(n+1)])`
-/

namespace A060672.P18132356503750484543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060672.P18132356503750484543

/-! ## A060672.P8625300896049739096

`eq[36, A307853(n+1)]`
-/

namespace A060672.P8625300896049739096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060672.P8625300896049739096

/-! ## A060672.P9622325795803370763

`eq[9, A014197(A028310(n))]`
-/

namespace A060672.P9622325795803370763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060672.P9622325795803370763

/-! ## A060672.P4497077975219690364

`A014681(eq[9, A014197(n+1)])`
-/

namespace A060672.P4497077975219690364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060672.P4497077975219690364

/-! ## A060672.P4447246728145727833

`A020725(eq[9, A014197(n+1)])`
-/

namespace A060672.P4447246728145727833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060672.P4447246728145727833

/-! ## A060672.P16998616163151849576

`A092486(eq[9, A014197(n+1)])`
-/

namespace A060672.P16998616163151849576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060672.P16998616163151849576

/-!
# A060673: Numbers k such that phi(x) = k has exactly 10 solutions.

The programs for A060673, there is no canonical definition to state claims against.
-/

/-! ## A060673.P15691144143446172854

`A103517(eq[10, A032446(n+1)])`
-/

namespace A060673.P15691144143446172854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060673.P15691144143446172854

/-! ## A060673.P15069738536300735326

`eq[10, A014197(A028310(n))]`
-/

namespace A060673.P15069738536300735326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060673.P15069738536300735326

/-! ## A060673.P16167920580990428097

`A014681(eq[10, A014197(n+1)])`
-/

namespace A060673.P16167920580990428097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060673.P16167920580990428097

/-! ## A060673.P10106041784069021717

`A020725(eq[10, A014197(n+1)])`
-/

namespace A060673.P10106041784069021717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060673.P10106041784069021717

/-! ## A060673.P16280603328093633709

`A092486(eq[10, A014197(n+1)])`
-/

namespace A060673.P16280603328093633709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060673.P16280603328093633709

/-!
# A060674: Numbers k such that phi(x) = k has exactly 11 solutions.

The programs for A060674, there is no canonical definition to state claims against.
-/

/-! ## A060674.P8700054880290979726

`A103517(eq[11, A032446(n+1)])`
-/

namespace A060674.P8700054880290979726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060674.P8700054880290979726

/-!
# A060675: Numbers k such that phi(x) = k has exactly 12 solutions.

The programs for A060675, there is no canonical definition to state claims against.
-/

/-! ## A060675.P3984221213379094110

`A103517(eq[12, A032446(n+1)])`
-/

namespace A060675.P3984221213379094110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060675.P3984221213379094110

/-! ## A060675.P4713222270864427180

`eq[48, A307853(n+1)]`
-/

namespace A060675.P4713222270864427180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060675.P4713222270864427180

/-! ## A060675.P3896898322242342870

`eq[12, A014197(round(acot(n)+n))]`
-/

namespace A060675.P3896898322242342870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060675.P3896898322242342870

/-! ## A060675.P1329572839115312502

`eq[12, A014197(A028310(n))]`
-/

namespace A060675.P1329572839115312502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060675.P1329572839115312502

/-! ## A060675.P15873747102050765527

`A014681(eq[12, A014197(n+1)])`
-/

namespace A060675.P15873747102050765527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060675.P15873747102050765527

/-!
# A060677: Number of linear n-celled polyominoes, those with the property that a line can be drawn that intersects the interior of every cell.

The programs for A060677, there is no canonical definition to state claims against.
-/

/-! ## A060677.P9827481376271807596

`A046657(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A060677.P9827481376271807596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A046657 n + a (n - 2)

end

end A060677.P9827481376271807596

/-! ## A060677.P17025685782674513278

`A049703(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A060677.P17025685782674513278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049703 n + (1 - a (n - 1))

end

end A060677.P17025685782674513278

/-! ## A060677.P16842890691518124769

`a(n-2)+A002088(n)/2` with `a(0)=1, a(1)=1`
-/

namespace A060677.P16842890691518124769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (A002088 n : ℚ) / 2

end

end A060677.P16842890691518124769

/-! ## A060677.P4361163759005717428

`a(n-2)+floor(A005728(n)/2)` with `a(0)=1, a(1)=1`
-/

namespace A060677.P4361163759005717428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ⌊(A005728 n : ℚ) / 2⌋

end

end A060677.P4361163759005717428

/-! ## A060677.P11690597616661785930

`A008619(∑[A106481(n)])`
-/

namespace A060677.P11690597616661785930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060677.P11690597616661785930

/-! ## A060677.P10857824859107542542

`A065033(∑[A106481(n)]+1)`
-/

namespace A060677.P10857824859107542542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A060677.P10857824859107542542

/-!
# A060679: Orders of non-cyclic groups.

The programs for A060679, the canonical program `A060679.P4127723815483162910` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060679 has offset 1).

The definition of A060679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060679.P4127723815483162910

`lt[0, A331176(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060679

/-- `lt[0, A331176(n+1)]+1` -/
def P4127723815483162910.Spec : Prop :=
  ∀ n, (P4127723815483162910.a n : ℤ) = A060679 (n + 1)

theorem P4127723815483162910.correct : P4127723815483162910.Spec := by
  intro n
  simp only [A060679, Nat.add_sub_cancel]

end A060679

/-! ## A060679.P8699858055268365102

`lt[1, A073811(n+1)]+1`
-/

namespace A060679.P8699858055268365102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060679.P8699858055268365102

namespace A060679

/-- `lt[1, A073811(n+1)]+1` -/
def P8699858055268365102.Spec : Prop :=
  ∀ n, (P8699858055268365102.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P10212246328840198743

`lt[1, A082067(n+1)]+1`
-/

namespace A060679.P10212246328840198743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060679.P10212246328840198743

namespace A060679

/-- `lt[1, A082067(n+1)]+1` -/
def P10212246328840198743.Spec : Prop :=
  ∀ n, (P10212246328840198743.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P4189027694911497602

`lt[1, A270120(n+1)]+1`
-/

namespace A060679.P4189027694911497602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060679.P4189027694911497602

namespace A060679

/-- `lt[1, A270120(n+1)]+1` -/
def P4189027694911497602.Spec : Prop :=
  ∀ n, (P4189027694911497602.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P13789000403055183006

`lt[1, gcd(n+1, A000010(n+1))]+1`
-/

namespace A060679.P13789000403055183006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A060679.P13789000403055183006

namespace A060679

/-- `lt[1, gcd(n+1, A000010(n+1))]+1` -/
def P13789000403055183006.Spec : Prop :=
  ∀ n, (P13789000403055183006.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P11109876167326245921

`∪[A013929(n+1), A056868(n+1)]`
-/

namespace A060679.P11109876167326245921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P11109876167326245921

namespace A060679

/-- `∪[A013929(n+1), A056868(n+1)]` -/
def P11109876167326245921.Spec : Prop :=
  ∀ n, (P11109876167326245921.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P4944356751055273345

`∪[A013929(n+1), A060652(n+1)]`
-/

namespace A060679.P4944356751055273345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P4944356751055273345

namespace A060679

/-- `∪[A013929(n+1), A060652(n+1)]` -/
def P4944356751055273345.Spec : Prop :=
  ∀ n, (P4944356751055273345.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P13409722993419709272

`∪[A013929(n+1), A068919(n+1)]`
-/

namespace A060679.P13409722993419709272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P13409722993419709272

namespace A060679

/-- `∪[A013929(n+1), A068919(n+1)]` -/
def P13409722993419709272.Spec : Prop :=
  ∀ n, (P13409722993419709272.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P12180027030138584673

`∪[A013929(n+1), A069209(n+1)]`
-/

namespace A060679.P12180027030138584673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P12180027030138584673

namespace A060679

/-- `∪[A013929(n+1), A069209(n+1)]` -/
def P12180027030138584673.Spec : Prop :=
  ∀ n, (P12180027030138584673.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P7213796014050398094

`∪[A038109(n+1), A060652(n+1)]`
-/

namespace A060679.P7213796014050398094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P7213796014050398094

namespace A060679

/-- `∪[A038109(n+1), A060652(n+1)]` -/
def P7213796014050398094.Spec : Prop :=
  ∀ n, (P7213796014050398094.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P747556456712369547

`∪[A059269(n+1), A060652(n+1)]`
-/

namespace A060679.P747556456712369547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P747556456712369547

namespace A060679

/-- `∪[A059269(n+1), A060652(n+1)]` -/
def P747556456712369547.Spec : Prop :=
  ∀ n, (P747556456712369547.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P14027617915080803385

`∪[A060652(n+1), A067259(n+1)]`
-/

namespace A060679.P14027617915080803385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P14027617915080803385

namespace A060679

/-- `∪[A060652(n+1), A067259(n+1)]` -/
def P14027617915080803385.Spec : Prop :=
  ∀ n, (P14027617915080803385.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P15871834399956426627

`∪[A060652(n+1), A069168(n+1)]`
-/

namespace A060679.P15871834399956426627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P15871834399956426627

namespace A060679

/-- `∪[A060652(n+1), A069168(n+1)]` -/
def P15871834399956426627.Spec : Prop :=
  ∀ n, (P15871834399956426627.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P14871823568735562260

`∪[A060652(n+1), A072587(n+1)]`
-/

namespace A060679.P14871823568735562260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P14871823568735562260

namespace A060679

/-- `∪[A060652(n+1), A072587(n+1)]` -/
def P14871823568735562260.Spec : Prop :=
  ∀ n, (P14871823568735562260.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P7678038069341156489

`∪[A072903(n+1), A060652(n+1)]`
-/

namespace A060679.P7678038069341156489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060679.P7678038069341156489

namespace A060679

/-- `∪[A072903(n+1), A060652(n+1)]` -/
def P7678038069341156489.Spec : Prop :=
  ∀ n, (P7678038069341156489.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P3244740400678549127

`eq[0, A297086(n+1)]+1`
-/

namespace A060679.P3244740400678549127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060679.P3244740400678549127

namespace A060679

/-- `eq[0, A297086(n+1)]+1` -/
def P3244740400678549127.Spec : Prop :=
  ∀ n, (P3244740400678549127.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P6540480271583580442

`lt[1, A009195(n+1)]+1`
-/

namespace A060679.P6540480271583580442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060679.P6540480271583580442

namespace A060679

/-- `lt[1, A009195(n+1)]+1` -/
def P6540480271583580442.Spec : Prop :=
  ∀ n, (P6540480271583580442.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P7686013684104574748

`lt[1, A072994(n+1)]+1`
-/

namespace A060679.P7686013684104574748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A060679.P7686013684104574748

namespace A060679

/-- `lt[1, A072994(n+1)]+1` -/
def P7686013684104574748.Spec : Prop :=
  ∀ n, (P7686013684104574748.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P17389004177179844045

`lt[A050399(n+1), n²]+1`
-/

namespace A060679.P17389004177179844045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A060679.P17389004177179844045

namespace A060679

/-- `lt[A050399(n+1), n²]+1` -/
def P17389004177179844045.Spec : Prop :=
  ∀ n, (P17389004177179844045.a n : ℤ) = A060679 (n + 1)

end A060679

/-! ## A060679.P12728473553448057452

`comp[C(A109395(n+1), n)]`
-/

namespace A060679.P12728473553448057452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109395 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A060679.P12728473553448057452

namespace A060679

/-- `comp[C(A109395(n+1), n)]` -/
def P12728473553448057452.Spec : Prop :=
  ∀ n, (P12728473553448057452.a n : ℤ) = A060679 (n + 1)

end A060679

/-!
# A060680: Smallest difference between consecutive divisors of n.

The programs for A060680, there is no canonical definition to state claims against.
-/

/-! ## A060680.P2306633632585134229

`A060684(A152271(n))/gcd(2, n)`
-/

namespace A060680.P2306633632585134229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060684 (A152271 n).toNat : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A060680.P2306633632585134229

/-! ## A060680.P8008348370107622902

`gcd(A056594(n), A060684(A008619(n)))`
-/

namespace A060680.P8008348370107622902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n) (A060684 (A008619 n).toNat)

end

end A060680.P8008348370107622902

/-! ## A060680.P343159777005491534

`gcd(A056594(n)², A060684(A065033(n)))`
-/

namespace A060680.P343159777005491534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n ^ 2) (A060684 (A065033 n).toNat)

end

end A060680.P343159777005491534

/-! ## A060680.P10725178979842998074

`A060684(A152271(n))-∑[A033999(n)]`
-/

namespace A060680.P10725178979842998074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (A152271 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060680.P10725178979842998074

/-! ## A060680.P13476534812872038549

`A060684(A065033(n))^Δ[A008619(n)]`
-/

namespace A060680.P13476534812872038549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060684 (A065033 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060680.P13476534812872038549

/-! ## A060680.P13118753025852201843

`gcd(A060684(A152271(n)), A318517(n+1))`
-/

namespace A060680.P13118753025852201843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060684 (A152271 n).toNat) (A318517 (n + 1))

end

end A060680.P13118753025852201843

/-! ## A060680.P11455124435633824692

`A060684(A152271(n))^Δ[A004526(n)]`
-/

namespace A060680.P11455124435633824692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060684 (A152271 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060680.P11455124435633824692

/-! ## A060680.P2137667969360671657

`A060684(A065033(n))^Δ[A065033(n+1)]`
-/

namespace A060680.P2137667969360671657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060684 (A065033 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A060680.P2137667969360671657

/-! ## A060680.P5378287765249062008

`gcd(A056594(n²), A060684(A065033(n)))`
-/

namespace A060680.P5378287765249062008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 (n ^ 2)) (A060684 (A065033 n).toNat)

end

end A060680.P5378287765249062008

/-! ## A060680.P7045698232118758935

`A049559(A053590((n+2)²))`
-/

namespace A060680.P7045698232118758935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A053590 ((n + 2) ^ 2)).toNat

end

end A060680.P7045698232118758935

/-!
# A060681: Largest difference between consecutive divisors of n (ordered by size).

The programs for A060681, there is no canonical definition to state claims against.
-/

/-! ## A060681.P11747361826650309872

`n+1-A032742(n+1)`
-/

namespace A060681.P11747361826650309872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A032742 (n + 1)

end

end A060681.P11747361826650309872

/-! ## A060681.P2971657229861379227

`n+1-(n+1)/A020639(n+1)`
-/

namespace A060681.P2971657229861379227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)

end

end A060681.P2971657229861379227

/-! ## A060681.P1411337575564416711

`∑{d}[n+1, A300721(#)]`
-/

namespace A060681.P1411337575564416711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300721 d

end

end A060681.P1411337575564416711

/-! ## A060681.P11349238692240989835

`1-A032742(n+1)+n`
-/

namespace A060681.P11349238692240989835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A032742 (n + 1) + (n : ℤ)

end

end A060681.P11349238692240989835

/-! ## A060681.P13089969756236178544

`A242560(n+1)%(n+1)`
-/

namespace A060681.P13089969756236178544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242560 (n + 1)) (n + 1 : ℤ)

end

end A060681.P13089969756236178544

/-! ## A060681.P6214836857497917504

`n-floor(n/A020639(n+1))`
-/

namespace A060681.P6214836857497917504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋

end

end A060681.P6214836857497917504

/-! ## A060681.P8077073791183856090

`ceil(n-n/A074828(n+1))`
-/

namespace A060681.P8077073791183856090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (n : ℚ) / (A074828 (n + 1) : ℚ)⌉

end

end A060681.P8077073791183856090

/-! ## A060681.P63421797284585914

`n+1-gcd(n+1, A220096(n+1))`
-/

namespace A060681.P63421797284585914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (n + 1 : ℤ) (A220096 (n + 1)) : ℤ)

end

end A060681.P63421797284585914

/-! ## A060681.P1980125917007947094

`n-A089196(A028310(n))`
-/

namespace A060681.P1980125917007947094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089196 (A028310 n).toNat

end

end A060681.P1980125917007947094

/-! ## A060681.P2876894443488218438

`A024000(A032742(n+1))+n`
-/

namespace A060681.P2876894443488218438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A032742 (n + 1)).toNat + (n : ℤ)

end

end A060681.P2876894443488218438

/-! ## A060681.P4478665001823431169

`A242560(n+1)-A000038(n)`
-/

namespace A060681.P4478665001823431169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242560 (n + 1) - A000038 n

end

end A060681.P4478665001823431169

/-! ## A060681.P5745049151765851268

`n-A140106(A286472(n+1))`
-/

namespace A060681.P5745049151765851268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A140106 (A286472 (n + 1)).toNat

end

end A060681.P5745049151765851268

/-! ## A060681.P9403546264549505419

`A057427(n)*A242560(n+1)`
-/

namespace A060681.P9403546264549505419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A242560 (n + 1)

end

end A060681.P9403546264549505419

/-! ## A060681.P13589379674568992648

`and(A003817(n), A242560(n+1))`
-/

namespace A060681.P13589379674568992648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A242560 (n + 1))

end

end A060681.P13589379674568992648

/-! ## A060681.P558916691079662476

`and(A057428(n), A242560(n+1))`
-/

namespace A060681.P558916691079662476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A242560 (n + 1))

end

end A060681.P558916691079662476

/-! ## A060681.P13316152019020097655

`and(A134824(n), A242560(n+1))`
-/

namespace A060681.P13316152019020097655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A242560 (n + 1))

end

end A060681.P13316152019020097655

/-! ## A060681.P137425411679782397

`and(A242560(n+1), A260196(n))`
-/

namespace A060681.P137425411679782397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A242560 (n + 1)) (A260196 n)

end

end A060681.P137425411679782397

/-! ## A060681.P8537202572470960651

`n-A089196(A000007(n)+n)`
-/

namespace A060681.P8537202572470960651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089196 (A000007 n + (n : ℤ)).toNat

end

end A060681.P8537202572470960651

/-!
# A060682: Number of distinct differences between consecutive divisors of n (ordered by size).

The programs for A060682, there is no canonical definition to state claims against.
-/

/-! ## A060682.P12757600300048587121

`A000005(n+2)+A060763(n+2)-A060764(n+2)`
-/

namespace A060682.P12757600300048587121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + (A060763 (n + 2) - A060764 (n + 2))

end

end A060682.P12757600300048587121

/-! ## A060682.P29736323219437138

`∑{p}[A328023(n+2), A001221(#)]`
-/

namespace A060682.P29736323219437138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A060682.P29736323219437138

/-! ## A060682.P15739871957266705113

`∑{p}[A328023(n+2), A001222(#)]`
-/

namespace A060682.P15739871957266705113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A060682.P15739871957266705113

/-! ## A060682.P2642315169452986935

`∑{p}[A328023(n+2), A339913(#)]`
-/

namespace A060682.P2642315169452986935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A339913 p

end

end A060682.P2642315169452986935

/-! ## A060682.P16566562322041091096

`∑{e}[A328023(n+2), A000196(#)]`
-/

namespace A060682.P16566562322041091096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000196 (Nat.factorization (f1 n).natAbs p)

end

end A060682.P16566562322041091096

/-!
# A060683: Numbers for which the differences between consecutive divisors (ordered by size) are distinct.

The programs for A060683, there is no canonical definition to state claims against.
-/

/-! ## A060683.P14981774836260983822

`eq[char[A259366(n+1)], A000007(n)]`
-/

namespace A060683.P14981774836260983822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259366 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A060683.P14981774836260983822

/-! ## A060683.P6752425196754361460

`eq[char[A259366(n+1)], A000038(n)]`
-/

namespace A060683.P6752425196754361460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259366 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A060683.P6752425196754361460

/-! ## A060683.P15928215905538689851

`eq[char[A259366(n+1)], A209229(2*n+1)]`
-/

namespace A060683.P15928215905538689851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259366 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A060683.P15928215905538689851

/-! ## A060683.P2890075855882893978

`record[(n+1)/(A060764(n+1)-A060763(n+1))]`
-/

namespace A060683.P2890075855882893978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A060764 (n + 1) - A060763 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060683.P2890075855882893978

/-! ## A060683.P8214935099585882371

`eq[char[A259366(n+1)], A151933(n)]`
-/

namespace A060683.P8214935099585882371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259366 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A060683.P8214935099585882371

/-!
# A060684: Smallest difference between consecutive divisors (ordered by size) of 2n+1.

The programs for A060684, there is no canonical definition to state claims against.
-/

/-! ## A060684.P15525487077619065029

`A060680(2*(n+1)+1)`
-/

namespace A060684.P15525487077619065029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (2 * (n + 1) + 1)

end

end A060684.P15525487077619065029

/-! ## A060684.P17259202380681240326

`lcm(2, A060680(Δ[(n+1)²]))`
-/

namespace A060684.P17259202380681240326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A060680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A060684.P17259202380681240326

/-! ## A060684.P2096867834734296180

`A000027(A060680(2*n+3))`
-/

namespace A060684.P2096867834734296180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A060680 (2 * n + 3)).toNat

end

end A060684.P2096867834734296180

/-! ## A060684.P7940472224448474113

`filter[A060680(n+2), A043545(#)]`
-/

namespace A060684.P7940472224448474113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A060684.P7940472224448474113

/-! ## A060684.P10408004631005501566

`filter[A060680(n+2), A059841(#)]`
-/

namespace A060684.P10408004631005501566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A060684.P10408004631005501566

/-! ## A060684.P3639819361634002218

`filter[A060680(n+2), A072608(#)]`
-/

namespace A060684.P3639819361634002218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A060684.P3639819361634002218

/-! ## A060684.P18390150273173447411

`filter[A060680(n+2), A178226(#)]`
-/

namespace A060684.P18390150273173447411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A060684.P18390150273173447411

/-! ## A060684.P4370330356560050196

`filter[A060680(n+2), A254377(#)]`
-/

namespace A060684.P4370330356560050196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254377 (f1 j).toNat = 1) n)

end

end A060684.P4370330356560050196

/-! ## A060684.P16282927272640846654

`filter[A060680(n+2), A267442(#)]`
-/

namespace A060684.P16282927272640846654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A060684.P16282927272640846654

/-! ## A060684.P838541253403323649

`filter[A060680(n+2), A267704(#)]`
-/

namespace A060684.P838541253403323649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267704 (f1 j).toNat = 1) n)

end

end A060684.P838541253403323649

/-! ## A060684.P11448226413921238026

`filter[A060680(n+2), A267814(#)]`
-/

namespace A060684.P11448226413921238026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267814 (f1 j).toNat = 1) n)

end

end A060684.P11448226413921238026

/-! ## A060684.P15568804884964474382

`filter[A060680(n+2), A284893(#)]`
-/

namespace A060684.P15568804884964474382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284893 (f1 j).toNat = 1) n)

end

end A060684.P15568804884964474382

/-! ## A060684.P3906754705688495033

`filter[A060680(n+2), A284939(#)]`
-/

namespace A060684.P3906754705688495033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284939 (f1 j).toNat = 1) n)

end

end A060684.P3906754705688495033

/-! ## A060684.P14774696080784819064

`filter[A060680(n+2), A285383(#)]`
-/

namespace A060684.P14774696080784819064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285383 (f1 j).toNat = 1) n)

end

end A060684.P14774696080784819064

/-! ## A060684.P14046058738544255982

`filter[A060680(n+2), A285515(#)]`
-/

namespace A060684.P14046058738544255982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285515 (f1 j).toNat = 1) n)

end

end A060684.P14046058738544255982

/-! ## A060684.P9015464481472697356

`filter[A060680(n+2), A285596(#)]`
-/

namespace A060684.P9015464481472697356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285596 (f1 j).toNat = 1) n)

end

end A060684.P9015464481472697356

/-! ## A060684.P14049529478530841993

`filter[A060680(n+2), A327532(#)]`
-/

namespace A060684.P14049529478530841993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A060684.P14049529478530841993

/-! ## A060684.P12126178748692500534

`filter[A060680(n+2), A358224(#)]`
-/

namespace A060684.P12126178748692500534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j).toNat = 1) n)

end

end A060684.P12126178748692500534

/-! ## A060684.P1473555383942614932

`filter[A060680(n+2), A381735(#)]`
-/

namespace A060684.P1473555383942614932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A060684.P1473555383942614932

/-! ## A060684.P629848431349156095

`A060680(Δ[(n+1)²])%A016900(n)`
-/

namespace A060684.P629848431349156095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A016900 n)

end

end A060684.P629848431349156095

/-!
# A060685: Largest difference between consecutive divisors (ordered by size) of 2n+1.

The programs for A060685, there is no canonical definition to state claims against.
-/

/-! ## A060685.P742915557630195102

`A060681(2*(n+1)+1)`
-/

namespace A060685.P742915557630195102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (2 * (n + 1) + 1)

end

end A060685.P742915557630195102

/-! ## A060685.P113743993826061311

`A300722(2*n+3)+A300721(2*n+3)`
-/

namespace A060685.P113743993826061311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300722 (2 * n + 3) + A300721 (2 * n + 3)

end

end A060685.P113743993826061311

/-! ## A060685.P6941080171823896123

`2*n+3-(2*n+3)/A090368(n+2)`
-/

namespace A060685.P6941080171823896123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) - (2 * n + 3 : ℚ) / (A090368 (n + 2) : ℚ)

end

end A060685.P6941080171823896123

/-! ## A060685.P10325121202022957187

`n+3-A184726(n+3)+n`
-/

namespace A060685.P10325121202022957187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A184726 (n + 3) + (n : ℤ)

end

end A060685.P10325121202022957187

/-! ## A060685.P5780057927576423049

`2*n+2-A089196(2*(n+1))`
-/

namespace A060685.P5780057927576423049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 - A089196 (2 * (n + 1)))

end

end A060685.P5780057927576423049

/-! ## A060685.P10182971989121357935

`2*(n+1)+2*n+3-A166250(2*n+3)`
-/

namespace A060685.P10182971989121357935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + ((2 * n + 3 : ℤ) - A166250 (2 * n + 3))

end

end A060685.P10182971989121357935

/-! ## A060685.P7118033314346882042

`2*n+3-A070935(2*n+3)/(2*n+3)`
-/

namespace A060685.P7118033314346882042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) - (A070935 (2 * n + 3) : ℚ) / (2 * n + 3 : ℚ)

end

end A060685.P7118033314346882042

/-! ## A060685.P10814465057107188234

`A004277(n+1)-A089196(2*(n+1))`
-/

namespace A060685.P10814465057107188234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) - A089196 (2 * (n + 1))

end

end A060685.P10814465057107188234

/-! ## A060685.P14535244335827571078

`A008619(A075861(2*n+3))+n+1`
-/

namespace A060685.P14535244335827571078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A075861 (2 * n + 3)).toNat + (n + 1 : ℤ)

end

end A060685.P14535244335827571078

/-! ## A060685.P8265987480004894090

`A065033(2*n+1)+A065033(A075861(2*n+3))`
-/

namespace A060685.P8265987480004894090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) + A065033 (A075861 (2 * n + 3)).toNat

end

end A060685.P8265987480004894090

/-! ## A060685.P18203498802167895696

`A108514(2*n+3)`
-/

namespace A060685.P18203498802167895696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108514 (2 * n + 3)

end

end A060685.P18203498802167895696

/-! ## A060685.P7249412612298753332

`A242560(2*n+3)`
-/

namespace A060685.P7249412612298753332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242560 (2 * n + 3)

end

end A060685.P7249412612298753332

/-! ## A060685.P17577860741163165577

`∑[2-Δ[A032742(2*n+1)]]`
-/

namespace A060685.P17577860741163165577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060685.P17577860741163165577

/-! ## A060685.P15933335394456091118

`∑[2-Δ[A108738(2*n+1)]]`
-/

namespace A060685.P15933335394456091118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060685.P15933335394456091118

/-! ## A060685.P14490549880439929475

`2*n+3-A032742(2*n+3)`
-/

namespace A060685.P14490549880439929475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A032742 (2 * n + 3)

end

end A060685.P14490549880439929475

/-! ## A060685.P3339297593482098988

`2*n+3-A093803(2*n+3)`
-/

namespace A060685.P3339297593482098988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A093803 (2 * n + 3)

end

end A060685.P3339297593482098988

/-! ## A060685.P7595538212627183527

`2*n+3-A108738(2*n+3)`
-/

namespace A060685.P7595538212627183527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A108738 (2 * n + 3)

end

end A060685.P7595538212627183527

/-! ## A060685.P15197299488485504673

`A060681(Δ[n²]+2)%((n+2)²+1)`
-/

namespace A060685.P15197299488485504673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat) ((n + 2) ^ 2 + 1 : ℤ)

end

end A060685.P15197299488485504673

/-! ## A060685.P16424163167433754355

`A020639(2*(n+1))*A362739(2*n+3)`
-/

namespace A060685.P16424163167433754355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A362739 (2 * n + 3)

end

end A060685.P16424163167433754355

/-! ## A060685.P2611875179762286429

`A032742(2*n+3)*A057237(2*n+3)`
-/

namespace A060685.P2611875179762286429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * n + 3) * A057237 (2 * n + 3)

end

end A060685.P2611875179762286429

/-!
# A060687: Numbers k such that there exist exactly 2 Abelian groups of order k, i.e., A000688(k) = 2.

The programs for A060687, the canonical program `A060687.P13266842757816177506` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060687 has offset 1).

The definition of A060687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060687.P18221832336927529128

`sqrt(A320965(n+1))`
-/

namespace A060687.P18221832336927529128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A320965 (n + 1) : ℝ)

end

end A060687.P18221832336927529128

namespace A060687

/-- `sqrt(A320965(n+1))` -/
def P18221832336927529128.Spec : Prop :=
  ∀ n, P18221832336927529128.a n = (A060687 (n + 1) : ℝ)

end A060687

/-! ## A060687.P3514845650952761626

`eq[1, A359474(n+1)]+1`
-/

namespace A060687.P3514845650952761626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359474 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P3514845650952761626

namespace A060687

/-- `eq[1, A359474(n+1)]+1` -/
def P3514845650952761626.Spec : Prop :=
  ∀ n, (P3514845650952761626.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P10891696511967002044

`eq[1, A379967(n+1)]+1`
-/

namespace A060687.P10891696511967002044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P10891696511967002044

namespace A060687

/-- `eq[1, A379967(n+1)]+1` -/
def P10891696511967002044.Spec : Prop :=
  ∀ n, (P10891696511967002044.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P13266842757816177506

`eq[2, A005361(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060687

/-- `eq[2, A005361(n+1)]+1` -/
def P13266842757816177506.Spec : Prop :=
  ∀ n, (P13266842757816177506.a n : ℤ) = A060687 (n + 1)

theorem P13266842757816177506.correct : P13266842757816177506.Spec := by
  intro n
  simp only [A060687, Nat.add_sub_cancel]

end A060687

/-! ## A060687.P8820066711547351465

`eq[2, A292582(n+1)]+1`
-/

namespace A060687.P8820066711547351465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P8820066711547351465

namespace A060687

/-- `eq[2, A292582(n+1)]+1` -/
def P8820066711547351465.Spec : Prop :=
  ∀ n, (P8820066711547351465.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P14094170772571073993

`eq[2, A293515(n+1)]+1`
-/

namespace A060687.P14094170772571073993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P14094170772571073993

namespace A060687

/-- `eq[2, A293515(n+1)]+1` -/
def P14094170772571073993.Spec : Prop :=
  ∀ n, (P14094170772571073993.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P1780892139498532632

`eq[2, A294875(n+1)]+1`
-/

namespace A060687.P1780892139498532632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P1780892139498532632

namespace A060687

/-- `eq[2, A294875(n+1)]+1` -/
def P1780892139498532632.Spec : Prop :=
  ∀ n, (P1780892139498532632.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P5815836223162346502

`eq[2, A295879(n+1)]+1`
-/

namespace A060687.P5815836223162346502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P5815836223162346502

namespace A060687

/-- `eq[2, A295879(n+1)]+1` -/
def P5815836223162346502.Spec : Prop :=
  ∀ n, (P5815836223162346502.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P15287988834984106174

`lt[abs(2-A005361(abs(1-n)+1)), 1]`
-/

namespace A060687.P15287988834984106174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A005361 (|1 - (n : ℤ)| + 1).toNat)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A060687.P15287988834984106174

namespace A060687

/-- `lt[abs(2-A005361(abs(1-n)+1)), 1]` -/
def P15287988834984106174.Spec : Prop :=
  ∀ n, (P15287988834984106174.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P17573100316089799631

`filter[A344180(n), A359474(#)]`
-/

namespace A060687.P17573100316089799631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A060687.P17573100316089799631

namespace A060687

/-- `filter[A344180(n), A359474(#)]` -/
def P17573100316089799631.Spec : Prop :=
  ∀ n, P17573100316089799631.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P7753399332973964929

`∪[A072357(n+1), A001248(n+1)]`
-/

namespace A060687.P7753399332973964929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060687.P7753399332973964929

namespace A060687

/-- `∪[A072357(n+1), A001248(n+1)]` -/
def P7753399332973964929.Spec : Prop :=
  ∀ n, (P7753399332973964929.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P10886454545760546251

`eq[A001222(A007947(n+1))+1, A001222(n+1)]+1`
-/

namespace A060687.P10886454545760546251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A060687.P10886454545760546251

namespace A060687

/-- `eq[A001222(A007947(n+1))+1, A001222(n+1)]+1` -/
def P10886454545760546251.Spec : Prop :=
  ∀ n, (P10886454545760546251.a n : ℤ) = A060687 (n + 1)

end A060687

/-! ## A060687.P11082875932388636749

`filter[A067259(n+1), A359466(#)]`
-/

namespace A060687.P11082875932388636749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A060687.P11082875932388636749

namespace A060687

/-- `filter[A067259(n+1), A359466(#)]` -/
def P11082875932388636749.Spec : Prop :=
  ∀ n, P11082875932388636749.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P10517436813773003506

`filter[A067259(n+1), A359471(#)]`
-/

namespace A060687.P10517436813773003506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A060687.P10517436813773003506

namespace A060687

/-- `filter[A067259(n+1), A359471(#)]` -/
def P10517436813773003506.Spec : Prop :=
  ∀ n, P10517436813773003506.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P16586245162685578665

`filter[A067259(n+1), A359474(#)]`
-/

namespace A060687.P16586245162685578665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A060687.P16586245162685578665

namespace A060687

/-- `filter[A067259(n+1), A359474(#)]` -/
def P16586245162685578665.Spec : Prop :=
  ∀ n, P16586245162685578665.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P13568613329659500457

`filter[A386796(n+1), A212793(#)]`
-/

namespace A060687.P13568613329659500457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A060687.P13568613329659500457

namespace A060687

/-- `filter[A386796(n+1), A212793(#)]` -/
def P13568613329659500457.Spec : Prop :=
  ∀ n, P13568613329659500457.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P4300234929430661807

`filter[A386796(n+1), A359429(#)]`
-/

namespace A060687.P4300234929430661807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A060687.P4300234929430661807

namespace A060687

/-- `filter[A386796(n+1), A359429(#)]` -/
def P4300234929430661807.Spec : Prop :=
  ∀ n, P4300234929430661807.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P14316208168413268117

`filter[A386796(n+1), A359466(#)]`
-/

namespace A060687.P14316208168413268117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A060687.P14316208168413268117

namespace A060687

/-- `filter[A386796(n+1), A359466(#)]` -/
def P14316208168413268117.Spec : Prop :=
  ∀ n, P14316208168413268117.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P895438173297651865

`filter[A386796(n+1), A359471(#)]`
-/

namespace A060687.P895438173297651865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A060687.P895438173297651865

namespace A060687

/-- `filter[A386796(n+1), A359471(#)]` -/
def P895438173297651865.Spec : Prop :=
  ∀ n, P895438173297651865.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P12194169624273956414

`filter[A386796(n+1), A359474(#)]`
-/

namespace A060687.P12194169624273956414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A060687.P12194169624273956414

namespace A060687

/-- `filter[A386796(n+1), A359474(#)]` -/
def P12194169624273956414.Spec : Prop :=
  ∀ n, P12194169624273956414.a n = A060687 (n + 1)

end A060687

/-! ## A060687.P3122940790601105693

`eq[2, ∏{e}[n, #]]`
-/

namespace A060687.P3122940790601105693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A060687.P3122940790601105693

namespace A060687

/-- `eq[2, ∏{e}[n, #]]` -/
def P3122940790601105693.Spec : Prop :=
  ∀ n, (P3122940790601105693.a n : ℤ) = A060687 (n + 1)

end A060687

/-!
# A060688: Number of dissimilar ternary squarefree words of length n+1.

The programs for A060688, there is no canonical definition to state claims against.
-/

/-! ## A060688.P5729978905081888383

`A006156(n+2)/6`
-/

namespace A060688.P5729978905081888383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006156 (n + 2) : ℚ) / 6

end

end A060688.P5729978905081888383

/-! ## A060688.P12844894845856818952

`Δ[A177736(n+1)/6]`
-/

namespace A060688.P12844894845856818952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177736 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060688.P12844894845856818952

/-! ## A060688.P8958940193149206670

`record[A006156(n)/A122553(n)!]`
-/

namespace A060688.P8958940193149206670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006156 n : ℚ) / (Nat.factorial (A122553 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060688.P8958940193149206670

/-! ## A060688.P2400924205957793347

`A088953(n+2)/4`
-/

namespace A060688.P2400924205957793347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088953 (n + 2) : ℚ) / 4

end

end A060688.P2400924205957793347

/-! ## A060688.P4926957014312571589

`record[abs(A246425(A088953(n)))]`
-/

namespace A060688.P4926957014312571589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246425 (A088953 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060688.P4926957014312571589

/-!
# A060689: Number of nonabelian groups of order n.

The programs for A060689, there is no canonical definition to state claims against.
-/

/-! ## A060689.P9719162291158022735

`A000001(n+1)-A000688(n+1)`
-/

namespace A060689.P9719162291158022735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) - A000688 (n + 1)

end

end A060689.P9719162291158022735

/-! ## A060689.P4139231878047668302

`A000688(n+1)-A066295(n+1)`
-/

namespace A060689.P4139231878047668302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A066295 (n + 1)

end

end A060689.P4139231878047668302

/-! ## A060689.P12290583746858156784

`∏{e}[n+1, A000041(#)]-A066295(n+1)`
-/

namespace A060689.P12290583746858156784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p) - A066295 (n + 1)

end

end A060689.P12290583746858156784

/-! ## A060689.P14766039450307563765

`∏{e}[n+1, A242699(#)]-A066295(n+1)`
-/

namespace A060689.P14766039450307563765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64) - A066295 (n + 1)

end

end A060689.P14766039450307563765

/-! ## A060689.P6641639513833056118

`∏{e}[n+1, A332746(#)]-A066295(n+1)`
-/

namespace A060689.P6641639513833056118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p) - A066295 (n + 1)

end

end A060689.P6641639513833056118

/-! ## A060689.P7018416141150320615

`A050360(A101296(n+1))-A066295(n+1)`
-/

namespace A060689.P7018416141150320615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A101296 (n + 1)).toNat - A066295 (n + 1)

end

end A060689.P7018416141150320615

/-! ## A060689.P10351301338508919331

`A000001(n+1)+A088806(n+1)-A066060(n+1)`
-/

namespace A060689.P10351301338508919331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1) + (A088806 (n + 1) - A066060 (n + 1))

end

end A060689.P10351301338508919331

/-! ## A060689.P6837537271147635005

`A066060(n+1)-(A088806(n+1)+A066295(n+1))`
-/

namespace A060689.P6837537271147635005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - (A088806 (n + 1) + A066295 (n + 1))

end

end A060689.P6837537271147635005

/-! ## A060689.P1239418571455255347

`A238877(2*(n+1))`
-/

namespace A060689.P1239418571455255347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * (n + 1))

end

end A060689.P1239418571455255347

/-! ## A060689.P3390526284562971232

`A238877(Δ[n²])-A066295(n+1)`
-/

namespace A060689.P3390526284562971232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A066295 (n + 1)

end

end A060689.P3390526284562971232

/-! ## A060689.P8976555425450252094

`A238877(A103517(n))-A000007(n)`
-/

namespace A060689.P8976555425450252094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A103517 n).toNat - A000007 n

end

end A060689.P8976555425450252094

/-! ## A060689.P946616901173116784

`A101872(A003961(n+1))-A066295(n+1)`
-/

namespace A060689.P946616901173116784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A003961 (n + 1)).toNat - A066295 (n + 1)

end

end A060689.P946616901173116784

/-! ## A060689.P15825966505203176117

`A066389(n+1)+A068385(n+1)-A000688(n+1)`
-/

namespace A060689.P15825966505203176117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (n + 1) + (A068385 (n + 1) - A000688 (n + 1))

end

end A060689.P15825966505203176117

/-! ## A060689.P13349289199738137646

`A104404(A045965(n+1))-A066295(n+1)`
-/

namespace A060689.P13349289199738137646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A045965 (n + 1)).toNat - A066295 (n + 1)

end

end A060689.P13349289199738137646

/-! ## A060689.P9485267795334453723

`A238877(A005843(n+1))/A014963(∑[n+1])`
-/

namespace A060689.P9485267795334453723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238877 (A005843 (n + 1)).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A060689.P9485267795334453723

/-!
# A060690: a(n) = binomial(2^n + n - 1, n).

The programs for A060690, the canonical program `A060690.P7591581551387478846` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060690 has offset 0).

The definition of A060690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^n+n-1, n)` (program `A060690.P7591581551387478846`, by `A060690.P7591581551387478846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060690.P7591581551387478846

`C(2^n+n-1, n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060690

/-- `C(2^n+n-1, n)` -/
def P7591581551387478846.Spec : Prop :=
  ∀ n, (P7591581551387478846.a n : ℤ) = A060690 n

theorem P7591581551387478846.correct : P7591581551387478846.Spec := by
  intro n
  simp only [A060690]

end A060690

/-! ## A060690.P9738587138365564248

`A163767(2^n)`
-/

namespace A060690.P9738587138365564248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163767 (2 ^ n)

end

end A060690.P9738587138365564248

namespace A060690

/-- `A163767(2^n)` -/
def P9738587138365564248.Spec : Prop :=
  ∀ n, P9738587138365564248.a n = A060690 n

end A060690

/-! ## A060690.P1198687597840421726

`A137153(∑[4*n])`
-/

namespace A060690.P1198687597840421726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060690.P1198687597840421726

namespace A060690

/-- `A137153(∑[4*n])` -/
def P1198687597840421726.Spec : Prop :=
  ∀ n, P1198687597840421726.a n = A060690 n

end A060690

/-! ## A060690.P17413503909854778317

`record[A003982(n)*A137153(n)]`
-/

namespace A060690.P17413503909854778317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A137153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060690.P17413503909854778317

namespace A060690

/-- `record[A003982(n)*A137153(n)]` -/
def P17413503909854778317.Spec : Prop :=
  ∀ n, P17413503909854778317.a n = A060690 n

end A060690

/-! ## A060690.P13606464718171791750

`record[A137153(gcd(n, A114327(n)))]`
-/

namespace A060690.P13606464718171791750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137153 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060690.P13606464718171791750

namespace A060690

/-- `record[A137153(gcd(n, A114327(n)))]` -/
def P13606464718171791750.Spec : Prop :=
  ∀ n, P13606464718171791750.a n = A060690 n

end A060690

/-!
# A060691: Expansion of AGM(1,1-8x) (where AGM denotes the arithmetic-geometric mean).

The programs for A060691, there is no canonical definition to state claims against.
-/

/-! ## A060691.P5905292646465418439

`∑{#}[n, A300100(#)*A300100(n-#)]`
-/

namespace A060691.P5905292646465418439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A300100 k * A300100 (n - k)

end

end A060691.P5905292646465418439

/-! ## A060691.P10019437267091144831

`A323385(n)/2^n`
-/

namespace A060691.P10019437267091144831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323385 n : ℚ) / (2 ^ n : ℚ)

end

end A060691.P10019437267091144831

/-! ## A060691.P6630486160537828439

`floor(A323385(n)/A000079(n))`
-/

namespace A060691.P6630486160537828439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323385 n : ℚ) / (A000079 n : ℚ)⌋

end

end A060691.P6630486160537828439

/-! ## A060691.P11736057519706708598

`floor(A323385(n)/Δ[A000918(n)])`
-/

namespace A060691.P11736057519706708598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323385 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A060691.P11736057519706708598

/-! ## A060691.P5345279894124096806

`floor(acot(n)²-A075225(n))`
-/

namespace A060691.P5345279894124096806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2 - (A075225 n : ℝ)⌋

end

end A060691.P5345279894124096806

/-! ## A060691.P746702205559630146

`A000038(n)-A075225(n)`
-/

namespace A060691.P746702205559630146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A075225 n

end

end A060691.P746702205559630146

/-! ## A060691.P9205602279864287229

`A062157(A073659(n+1))*A075225(n)`
-/

namespace A060691.P9205602279864287229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A073659 (n + 1)).toNat * A075225 n

end

end A060691.P9205602279864287229

/-!
# A060692: Number of parts if 3^n is partitioned into parts of size 2^n as far as possible and into parts of size 1^n.

The programs for A060692, the canonical program `A060692.P7779810104552752769` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060692 has offset 1).

The definition of A060692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060692.P7779810104552752769

`A002379(n+1)+A002380(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060692

/-- `A002379(n+1)+A002380(n+1)` -/
def P7779810104552752769.Spec : Prop :=
  ∀ n, P7779810104552752769.a n = A060692 (n + 1)

theorem P7779810104552752769.correct : P7779810104552752769.Spec := by
  intro n
  simp only [A060692, Nat.add_sub_cancel]

end A060692

/-! ## A060692.P14181740257170531240

`floor(3^(n+1)/2^(n+1))+(3^(n+1))%(2^(n+1))`
-/

namespace A060692.P14181740257170531240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)⌋ + ((3 ^ (n + 1) % 2 ^ (n + 1) : ℕ) : ℤ)

end

end A060692.P14181740257170531240

namespace A060692

/-- `floor(3^(n+1)/2^(n+1))+(3^(n+1))%(2^(n+1))` -/
def P14181740257170531240.Spec : Prop :=
  ∀ n, P14181740257170531240.a n = A060692 (n + 1)

end A060692

/-! ## A060692.P16586005771776979001

`A297446(n+1)+1`
-/

namespace A060692.P16586005771776979001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297446 (n + 1) + 1

end

end A060692.P16586005771776979001

namespace A060692

/-- `A297446(n+1)+1` -/
def P16586005771776979001.Spec : Prop :=
  ∀ n, P16586005771776979001.a n = A060692 (n + 1)

theorem P16586005771776979001.correct : P16586005771776979001.Spec := by
  intro n
  simp only [A060692, Nat.add_sub_cancel, A060692.P16586005771776979001.a, A060692.P7779810104552752769.a, A002379, A002379.P9705169431772742673.a, A002380, A002380.P11275883330084259764.a, A297446, A297446.P8708024790327824958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060692

/-! ## A060692.P13234529008262658580

`A002380(n+1)+A242738(n+1)-A242734(n+1)`
-/

namespace A060692.P13234529008262658580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + 1) + (A242738 (n + 1) - A242734 (n + 1))

end

end A060692.P13234529008262658580

namespace A060692

/-- `A002380(n+1)+A242738(n+1)-A242734(n+1)` -/
def P13234529008262658580.Spec : Prop :=
  ∀ n, P13234529008262658580.a n = A060692 (n + 1)

theorem P13234529008262658580.correct : P13234529008262658580.Spec := by
  intro n
  simp only [A060692, Nat.add_sub_cancel, A060692.P13234529008262658580.a, A060692.P7779810104552752769.a, A002379, A002379.P9705169431772742673.a, A002380, A002380.P11275883330084259764.a, A242734, A242734.P15280531202859122219.a, A242738, A242738.P6755084381788697046.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060692

/-! ## A060692.P7728954281092420826

`∑[A027649(n)]%(A095121(n)+1)+1`
-/

namespace A060692.P7728954281092420826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A095121 n + 1) + 1

end

end A060692.P7728954281092420826

namespace A060692

/-- `∑[A027649(n)]%(A095121(n)+1)+1` -/
def P7728954281092420826.Spec : Prop :=
  ∀ n, P7728954281092420826.a n = A060692 (n + 1)

end A060692

/-! ## A060692.P17442146133103293640

`A058481(n+1)%A000225(n+1)+2`
-/

namespace A060692.P17442146133103293640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058481 (n + 1)) (A000225 (n + 1)) + 2

end

end A060692.P17442146133103293640

namespace A060692

/-- `A058481(n+1)%A000225(n+1)+2` -/
def P17442146133103293640.Spec : Prop :=
  ∀ n, P17442146133103293640.a n = A060692 (n + 1)

end A060692

/-!
# A060693: Triangle (0 <= k <= n) read by rows: T(n, k) is the number of Schröder paths from (0,0) to (2n,0) having k peaks.

The programs for A060693, the canonical program `A060693.P18333780020877050703` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060693 has offset 0).

The definition of A060693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060693.P18333780020877050703

`C(2*row(n)-col(n), row(n))*C(row(n), col(n))/(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060693

/-- `C(2*row(n)-col(n), row(n))*C(row(n), col(n))/(row(n)-col(n)+1)` -/
def P18333780020877050703.Spec : Prop :=
  ∀ n, P18333780020877050703.a n = (A060693 n : ℚ)

end A060693

/-! ## A060693.P4598304073247241931

`A104684(C(row(n)+1, 2)+col(n))/(row(n)-col(n)+1)`
-/

namespace A060693.P4598304073247241931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)

end

end A060693.P4598304073247241931

namespace A060693

/-- `A104684(C(row(n)+1, 2)+col(n))/(row(n)-col(n)+1)` -/
def P4598304073247241931.Spec : Prop :=
  ∀ n, P4598304073247241931.a n = (A060693 n : ℚ)

end A060693

/-! ## A060693.P10828110940058912455

`A001263(n+1)/A007318(n)*A033184(n+1)`
-/

namespace A060693.P10828110940058912455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A033184 (n + 1) : ℚ)

end

end A060693.P10828110940058912455

namespace A060693

/-- `A001263(n+1)/A007318(n)*A033184(n+1)` -/
def P10828110940058912455.Spec : Prop :=
  ∀ n, P10828110940058912455.a n = (A060693 n : ℚ)

end A060693

/-! ## A060693.P14993462692795619551

`A088617(A061579(n))`
-/

namespace A060693.P14993462692795619551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A061579 n).toNat

end

end A060693.P14993462692795619551

namespace A060693

/-- `A088617(A061579(n))` -/
def P14993462692795619551.Spec : Prop :=
  ∀ n, P14993462692795619551.a n = A060693 n

end A060693

/-! ## A060693.P11494698935762357030

`A088617(A114327(n)+n)`
-/

namespace A060693.P11494698935762357030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A114327 n + (n : ℤ)).toNat

end

end A060693.P11494698935762357030

namespace A060693

/-- `A088617(A114327(n)+n)` -/
def P11494698935762357030.Spec : Prop :=
  ∀ n, P11494698935762357030.a n = A060693 n

end A060693

/-! ## A060693.P8268453678025988365

`A088617(A038722(n+1)-1)`
-/

namespace A060693.P8268453678025988365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A038722 (n + 1) - 1).toNat

end

end A060693.P8268453678025988365

namespace A060693

/-- `A088617(A038722(n+1)-1)` -/
def P8268453678025988365.Spec : Prop :=
  ∀ n, P8268453678025988365.a n = A060693 n

end A060693

/-! ## A060693.P11601070029640400706

`A088617(A093995(n+1)-(n+1))`
-/

namespace A060693.P11601070029640400706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A060693.P11601070029640400706

namespace A060693

/-- `A088617(A093995(n+1)-(n+1))` -/
def P11601070029640400706.Spec : Prop :=
  ∀ n, P11601070029640400706.a n = A060693 n

end A060693

/-! ## A060693.P17650521415881912585

`A088617(A038722(n+2))`
-/

namespace A060693.P17650521415881912585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A038722 (n + 2)).toNat

end

end A060693.P17650521415881912585

namespace A060693

/-- `A088617(A038722(n+2))` -/
def P17650521415881912585.Spec : Prop :=
  ∀ n, P17650521415881912585.a n = A060693 n

end A060693

/-! ## A060693.P6713103765972319336

`A104684(n)/(row(n)+1-col(n))`
-/

namespace A060693.P6713103765972319336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ)

end

end A060693.P6713103765972319336

namespace A060693

/-- `A104684(n)/(row(n)+1-col(n))` -/
def P6713103765972319336.Spec : Prop :=
  ∀ n, P6713103765972319336.a n = (A060693 n : ℚ)

end A060693

/-! ## A060693.P5182292666028119219

`A104684(n)/A004736(n+1)`
-/

namespace A060693.P5182292666028119219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A060693.P5182292666028119219

namespace A060693

/-- `A104684(n)/A004736(n+1)` -/
def P5182292666028119219.Spec : Prop :=
  ∀ n, P5182292666028119219.a n = (A060693 n : ℚ)

end A060693

/-! ## A060693.P17052661278584016876

`A104684(n)/(A127739(n+1)-n)`
-/

namespace A060693.P17052661278584016876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / (A127739 (n + 1) - (n : ℤ) : ℚ)

end

end A060693.P17052661278584016876

namespace A060693

/-- `A104684(n)/(A127739(n+1)-n)` -/
def P17052661278584016876.Spec : Prop :=
  ∀ n, P17052661278584016876.a n = (A060693 n : ℚ)

end A060693

/-! ## A060693.P5409760684665393552

`A001263(n+1)*A033184(n+1)/A007318(n)`
-/

namespace A060693.P5409760684665393552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) * A033184 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A060693.P5409760684665393552

namespace A060693

/-- `A001263(n+1)*A033184(n+1)/A007318(n)` -/
def P5409760684665393552.Spec : Prop :=
  ∀ n, P5409760684665393552.a n = (A060693 n : ℚ)

end A060693

/-!
# A060695: a(n) = gcd(2n, A060766(2n)).

The programs for A060695, there is no canonical definition to state claims against.
-/

/-! ## A060695.P6921675909348418731

`gcd(2*(n+1), A060766(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060695.P6921675909348418731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A060766 (2 * (n + 1)))

end

end A060695.P6921675909348418731

/-! ## A060695.P16946165257814959877

`A060654(2*(n+1))`
-/

namespace A060695.P16946165257814959877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060654 (2 * (n + 1))

end

end A060695.P16946165257814959877

/-! ## A060695.P4538372748800874377

`or(char[2], A060654(A317440(n+1)))`
-/

namespace A060695.P4538372748800874377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A060654 (A317440 (n + 1)).toNat)

end

end A060695.P4538372748800874377

/-! ## A060695.P5755707432724913448

`lcm(n+1, A060654(A051755(n+2)))`
-/

namespace A060695.P5755707432724913448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A060654 (A051755 (n + 2)).toNat)

end

end A060695.P5755707432724913448

/-! ## A060695.P7086072265038648129

`A060654(A317440(n+1))%A006222(n)`
-/

namespace A060695.P7086072265038648129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060654 (A317440 (n + 1)).toNat) (A006222 n)

end

end A060695.P7086072265038648129

/-! ## A060695.P9778745207576550801

`A060654(A051755(n+2))/A000010(-or(n, -2))`
-/

namespace A060695.P9778745207576550801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060654 (A051755 (n + 2)).toNat : ℚ) / (A000010 (-Int.lor (n : ℤ) (-2)).toNat : ℚ)

end

end A060695.P9778745207576550801

/-! ## A060695.P9244760532326985862

`A174725(A000040(n+1))+A060654(A051755(n+2))`
-/

namespace A060695.P9244760532326985862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (A000040 (n + 1)).toNat + A060654 (A051755 (n + 2)).toNat

end

end A060695.P9244760532326985862

/-!
# A060696: Number of permutations in S_n avoiding the strings 123, 321 and 231.

The programs for A060696, the canonical program `A060696.P13331116421375298473` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060696 has offset 0).

The definition of A060696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060696.P13331116421375298473

`abs(Δ[(n-2)*a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060696

/-- `abs(Δ[(n-2)*a(n-2)])` -/
def P13331116421375298473.Spec : Prop :=
  ∀ n, P13331116421375298473.a n = A060696 n

theorem P13331116421375298473.correct : P13331116421375298473.Spec := by
  intro n
  simp only [A060696]

end A060696

/-! ## A060696.P6872493666677056918

`∏{e}[ceil(2^(n-1)), A076051(#)]`
-/

namespace A060696.P6872493666677056918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A076051 (Nat.factorization (f1 n).natAbs p)

end

end A060696.P6872493666677056918

namespace A060696

/-- `∏{e}[ceil(2^(n-1)), A076051(#)]` -/
def P6872493666677056918.Spec : Prop :=
  ∀ n, P6872493666677056918.a n = A060696 n

end A060696

/-! ## A060696.P7614173325333329124

`A076051(A130259(a(n-1)/n^(-1)))` with `a(0)=1, a(1)=1`
-/

namespace A060696.P7614173325333329124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A076051 (A130259 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat).toNat

end

end A060696.P7614173325333329124

namespace A060696

/-- `A076051(A130259(a(n-1)/n^(-1)))` -/
def P7614173325333329124.Spec : Prop :=
  ∀ n, P7614173325333329124.a n = A060696 n

end A060696

/-! ## A060696.P12743660643400647627

`A076051(A130259(n*a((2*n)%(n+1))))` with `a(0)=1, a(1)=1`
-/

namespace A060696.P12743660643400647627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A076051 (A130259 ((n : ℤ) * a (2 * n % (n + 1))).toNat).toNat

end

end A060696.P12743660643400647627

namespace A060696

/-- `A076051(A130259(n*a((2*n)%(n+1))))` -/
def P12743660643400647627.Spec : Prop :=
  ∀ n, P12743660643400647627.a n = A060696 n

end A060696

/-! ## A060696.P7338881458216752385

`a(n-2)+(n-3)!!` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=11, a(6)=23, a(7)=63, a(8)=153`
-/

namespace A060696.P7338881458216752385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 11, 23, 63, 153] fun n a =>
  a (n - 2) + Nat.factorial (Nat.factorial ((n : ℤ) - 3).toNat)

end

end A060696.P7338881458216752385

namespace A060696

/-- `a(n-2)+(n-3)!!` -/
def P7338881458216752385.Spec : Prop :=
  ∀ n, (P7338881458216752385.a n : ℤ) = A060696 n

end A060696

/-!
# A060697: The sum of the first a(n) composite numbers plus 1 is a prime.

The programs for A060697, there is no canonical definition to state claims against.
-/

/-! ## A060697.P8658272929560124744

`eq[1, A088125(n+1)]+1`
-/

namespace A060697.P8658272929560124744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060697.P8658272929560124744

/-! ## A060697.P6363430732677238877

`eq[1, A001222(A051349(n+1))]`
-/

namespace A060697.P6363430732677238877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051349 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060697.P6363430732677238877

/-! ## A060697.P12070912262231182160

`eq[1, A001222(A053767(n)+1)]`
-/

namespace A060697.P12070912262231182160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053767 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060697.P12070912262231182160

/-! ## A060697.P3430135822272311909

`eq[2, A000005(A053767(n)+1)]`
-/

namespace A060697.P3430135822272311909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053767 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060697.P3430135822272311909

/-! ## A060697.P13572965934345477217

`eq[1, A001222(∑[A018252(n+1)])]`
-/

namespace A060697.P13572965934345477217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060697.P13572965934345477217

/-!
# A060698: The sum of the first n composite numbers minus 1 is a prime.

The programs for A060698, there is no canonical definition to state claims against.
-/

/-! ## A060698.P3761422990438218412

`eq[1, A001222(A053767(n+1)-1)]+1`
-/

namespace A060698.P3761422990438218412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053767 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060698.P3761422990438218412

/-! ## A060698.P18042924513963613219

`eq[1, A330241(A053767(n))]`
-/

namespace A060698.P18042924513963613219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (A053767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060698.P18042924513963613219

/-! ## A060698.P993477394877152008

`eq[1, A061358(A051349(n+1))]`
-/

namespace A060698.P993477394877152008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A051349 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060698.P993477394877152008

/-! ## A060698.P5918023188876902315

`eq[1, A061358(A051349(n))]-1`
-/

namespace A060698.P5918023188876902315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A051349 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A060698.P5918023188876902315

/-!
# A060699: a(n) = floor(A^(C^n)), where A = 2.084551112207285611..., C = 1.221.

The programs for A060699, there is no canonical definition to state claims against.
-/

/-! ## A060699.P13006384641046491158

`A006530(A243358(n+2))`
-/

namespace A060699.P13006384641046491158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243358 (n + 2)).toNat

end

end A060699.P13006384641046491158

/-! ## A060699.P1400460450576978886

`A243358(A060695(n+2))`
-/

namespace A060699.P1400460450576978886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243358 (A060695 (n + 2)).toNat

end

end A060699.P1400460450576978886

/-! ## A060699.P17749959420047177371

`A151799(A243358(n+2)+1)`
-/

namespace A060699.P17749959420047177371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A243358 (n + 2) + 1).toNat

end

end A060699.P17749959420047177371

/-! ## A060699.P11661954113337840855

`A243358((n+2)*A294775(n))`
-/

namespace A060699.P11661954113337840855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243358 ((n + 2 : ℤ) * A294775 n).toNat

end

end A060699.P11661954113337840855

/-! ## A060699.P12163267523906566554

`A243358((n+2)*A341850(n))`
-/

namespace A060699.P12163267523906566554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243358 ((n + 2 : ℤ) * A341850 n).toNat

end

end A060699.P12163267523906566554

