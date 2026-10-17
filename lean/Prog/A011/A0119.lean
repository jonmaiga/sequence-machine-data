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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A011900: a(n) = 6*a(n-1) - a(n-2) - 2 with a(0) = 1, a(1) = 3.

The programs for A011900, the canonical program `A011900.P4302392934725593623` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011900 has offset 0).

The definition of A011900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)-2` (program `A011900.P4302392934725593623`, by `A011900.P4302392934725593623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011900.P4302392934725593623

`6*a(n-1)-a(n-2)-2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011900

/-- `6*a(n-1)-a(n-2)-2` -/
def P4302392934725593623.Spec : Prop :=
  ∀ n, P4302392934725593623.a n = A011900 n

theorem P4302392934725593623.correct : P4302392934725593623.Spec := by
  intro n
  simp only [A011900]

end A011900

/-! ## A011900.P15026143076570667459

`A053141(n)+1`
-/

namespace A011900.P15026143076570667459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n + 1

end

end A011900.P15026143076570667459

namespace A011900

/-- `A053141(n)+1` -/
def P15026143076570667459.Spec : Prop :=
  ∀ n, P15026143076570667459.a n = A011900 n

end A011900

/-! ## A011900.P14931757347616010017

`(A001653(n+1)+1)/2`
-/

namespace A011900.P14931757347616010017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001653 (n + 1) + 1 : ℚ) / 2

end

end A011900.P14931757347616010017

namespace A011900

/-- `(A001653(n+1)+1)/2` -/
def P14931757347616010017.Spec : Prop :=
  ∀ n, P14931757347616010017.a n = (A011900 n : ℚ)

end A011900

/-! ## A011900.P1836005578474339857

`floor(a(n-1)/(3-sqrt(8)))-2` with `a(0)=1`
-/

namespace A011900.P1836005578474339857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ - 2

end

end A011900.P1836005578474339857

namespace A011900

/-- `floor(a(n-1)/(3-sqrt(8)))-2` -/
def P1836005578474339857.Spec : Prop :=
  ∀ n, P1836005578474339857.a n = A011900 n

end A011900

/-! ## A011900.P2733346245315405191

`∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=2`
-/

namespace A011900.P2733346245315405191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011900.P2733346245315405191

namespace A011900

/-- `∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P2733346245315405191.Spec : Prop :=
  ∀ n, P2733346245315405191.a n = A011900 n

end A011900

/-! ## A011900.P12469505885498889316

`A113225(2*n)`
-/

namespace A011900.P12469505885498889316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 (2 * n)

end

end A011900.P12469505885498889316

namespace A011900

/-- `A113225(2*n)` -/
def P12469505885498889316.Spec : Prop :=
  ∀ n, P12469505885498889316.a n = A011900 n

end A011900

/-! ## A011900.P8353937830514001965

`or(1, A108475(n))`
-/

namespace A011900.P8353937830514001965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108475 n)

end

end A011900.P8353937830514001965

namespace A011900

/-- `or(1, A108475(n))` -/
def P8353937830514001965.Spec : Prop :=
  ∀ n, P8353937830514001965.a n = A011900 n

end A011900

/-! ## A011900.P6391137492638977387

`∑[A001542(n)]+1`
-/

namespace A011900.P6391137492638977387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011900.P6391137492638977387

namespace A011900

/-- `∑[A001542(n)]+1` -/
def P6391137492638977387.Spec : Prop :=
  ∀ n, P6391137492638977387.a n = A011900 n

end A011900

/-! ## A011900.P4779168228745773508

`∑[A215928(2*n)]`
-/

namespace A011900.P4779168228745773508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011900.P4779168228745773508

namespace A011900

/-- `∑[A215928(2*n)]` -/
def P4779168228745773508.Spec : Prop :=
  ∀ n, P4779168228745773508.a n = A011900 n

end A011900

/-! ## A011900.P7263138089693119201

`∑[A182189(n)]-n`
-/

namespace A011900.P7263138089693119201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A011900.P7263138089693119201

namespace A011900

/-- `∑[A182189(n)]-n` -/
def P7263138089693119201.Spec : Prop :=
  ∀ n, P7263138089693119201.a n = A011900 n

end A011900

/-! ## A011900.P950998244987517502

`2*A053142(n)+1`
-/

namespace A011900.P950998244987517502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053142 n + 1

end

end A011900.P950998244987517502

namespace A011900

/-- `2*A053142(n)+1` -/
def P950998244987517502.Spec : Prop :=
  ∀ n, P950998244987517502.a n = A011900 n

end A011900

/-! ## A011900.P2070916786148127404

`A105635(2*n)+1`
-/

namespace A011900.P2070916786148127404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (2 * n) + 1

end

end A011900.P2070916786148127404

namespace A011900

/-- `A105635(2*n)+1` -/
def P2070916786148127404.Spec : Prop :=
  ∀ n, P2070916786148127404.a n = A011900 n

end A011900

/-! ## A011900.P6412360460534831006

`or(1, A116404(2*n))`
-/

namespace A011900.P6412360460534831006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A116404 (2 * n))

end

end A011900.P6412360460534831006

namespace A011900

/-- `or(1, A116404(2*n))` -/
def P6412360460534831006.Spec : Prop :=
  ∀ n, P6412360460534831006.a n = A011900 n

end A011900

/-! ## A011900.P9264139885836857338

`A307465(2*n)+n`
-/

namespace A011900.P9264139885836857338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 (2 * n) + (n : ℤ)

end

end A011900.P9264139885836857338

namespace A011900

/-- `A307465(2*n)+n` -/
def P9264139885836857338.Spec : Prop :=
  ∀ n, P9264139885836857338.a n = A011900 n

end A011900

/-! ## A011900.P1633792310990142538

`A100131(2*n)-n`
-/

namespace A011900.P1633792310990142538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100131 (2 * n) - (n : ℤ)

end

end A011900.P1633792310990142538

namespace A011900

/-- `A100131(2*n)-n` -/
def P1633792310990142538.Spec : Prop :=
  ∀ n, P1633792310990142538.a n = A011900 n

end A011900

/-! ## A011900.P2544322674880198969

`A113727(2*n)-n`
-/

namespace A011900.P2544322674880198969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113727 (2 * n) - (n : ℤ)

end

end A011900.P2544322674880198969

namespace A011900

/-- `A113727(2*n)-n` -/
def P2544322674880198969.Spec : Prop :=
  ∀ n, P2544322674880198969.a n = A011900 n

end A011900

/-! ## A011900.P7021684568386328337

`∑[1-A182188(n)]+1`
-/

namespace A011900.P7021684568386328337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011900.P7021684568386328337

namespace A011900

/-- `∑[1-A182188(n)]+1` -/
def P7021684568386328337.Spec : Prop :=
  ∀ n, P7021684568386328337.a n = A011900 n

end A011900

/-! ## A011900.P5938469523230399328

`∑[A000129(2*n)]+1`
-/

namespace A011900.P5938469523230399328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011900.P5938469523230399328

namespace A011900

/-- `∑[A000129(2*n)]+1` -/
def P5938469523230399328.Spec : Prop :=
  ∀ n, P5938469523230399328.a n = A011900 n

end A011900

/-!
# A011901: a(n) = floor( n*(n-1)*(n-2)/19 ).

The programs for A011901, the canonical program `A011901.P1969367317486057034` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011901 has offset 0).

The definition of A011901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011901.P1969367317486057034

`floor(6*C(n, 3)/19)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011901

/-- `floor(6*C(n, 3)/19)` -/
def P1969367317486057034.Spec : Prop :=
  ∀ n, P1969367317486057034.a n = A011901 n

theorem P1969367317486057034.correct : P1969367317486057034.Spec := by
  intro n
  simp only [A011901]

end A011901

/-! ## A011901.P6146433723083884038

`floor(A007531(n)/19)`
-/

namespace A011901.P6146433723083884038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007531 n : ℚ) / 19⌋

end

end A011901.P6146433723083884038

namespace A011901

/-- `floor(A007531(n)/19)` -/
def P6146433723083884038.Spec : Prop :=
  ∀ n, P6146433723083884038.a n = A011901 n

end A011901

/-! ## A011901.P7885052002002176610

`floor(A280058(n)/38)`
-/

namespace A011901.P7885052002002176610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280058 n : ℚ) / 38⌋

end

end A011901.P7885052002002176610

namespace A011901

/-- `floor(A280058(n)/38)` -/
def P7885052002002176610.Spec : Prop :=
  ∀ n, P7885052002002176610.a n = A011901 n

end A011901

/-! ## A011901.P4604718272496446787

`floor(A060423(2*n)/19)`
-/

namespace A011901.P4604718272496446787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060423 (2 * n) : ℚ) / 19⌋

end

end A011901.P4604718272496446787

namespace A011901

/-- `floor(A060423(2*n)/19)` -/
def P4604718272496446787.Spec : Prop :=
  ∀ n, P4604718272496446787.a n = A011901 n

end A011901

/-!
# A011902: a(n) = floor( n*(n-1)*(n-2)/20 ).

The programs for A011902, the canonical program `A011902.P14214676439622345951` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011902 has offset 0).

The definition of A011902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011902.P14214676439622345951

`floor(3*C(n, 3)/10)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011902

/-- `floor(3*C(n, 3)/10)` -/
def P14214676439622345951.Spec : Prop :=
  ∀ n, P14214676439622345951.a n = A011902 n

theorem P14214676439622345951.correct : P14214676439622345951.Spec := by
  intro n
  simp only [A011902]

end A011902

/-! ## A011902.P7145993912718531045

`floor(n*(n-1)*(n-2)/20)`
-/

namespace A011902.P7145993912718531045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) : ℚ) / 20⌋

end

end A011902.P7145993912718531045

namespace A011902

/-- `floor(n*(n-1)*(n-2)/20)` -/
def P7145993912718531045.Spec : Prop :=
  ∀ n, P7145993912718531045.a n = A011902 n

end A011902

/-! ## A011902.P1158869029698392528

`A057355(A011894(n))`
-/

namespace A011902.P1158869029698392528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A011894 n).toNat

end

end A011902.P1158869029698392528

namespace A011902

/-- `A057355(A011894(n))` -/
def P1158869029698392528.Spec : Prop :=
  ∀ n, P1158869029698392528.a n = A011902 n

end A011902

/-! ## A011902.P13349483867182580073

`A004526(A011892(n))`
-/

namespace A011902.P13349483867182580073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011892 n).toNat

end

end A011902.P13349483867182580073

namespace A011902

/-- `A004526(A011892(n))` -/
def P13349483867182580073.Spec : Prop :=
  ∀ n, P13349483867182580073.a n = A011902 n

end A011902

/-! ## A011902.P15205887383821080152

`A327440(C(n, 3))`
-/

namespace A011902.P15205887383821080152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327440 (Nat.choose n 3)

end

end A011902.P15205887383821080152

namespace A011902

/-- `A327440(C(n, 3))` -/
def P15205887383821080152.Spec : Prop :=
  ∀ n, P15205887383821080152.a n = A011902 n

end A011902

/-!
# A011903: a(n) = floor(n*(n-1)*(n-2)/21).

The programs for A011903, the canonical program `A011903.P740320816975760370` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011903 has offset 0).

The definition of A011903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011903.P740320816975760370

`floor(2/7*C(n, 3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011903

/-- `floor(2/7*C(n, 3))` -/
def P740320816975760370.Spec : Prop :=
  ∀ n, P740320816975760370.a n = A011903 n

theorem P740320816975760370.correct : P740320816975760370.Spec := by
  intro n
  simp only [A011903]

end A011903

/-! ## A011903.P16304300557616650150

`floor(A011889(n)/3)`
-/

namespace A011903.P16304300557616650150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011889 n : ℚ) / 3⌋

end

end A011903.P16304300557616650150

namespace A011903

/-- `floor(A011889(n)/3)` -/
def P16304300557616650150.Spec : Prop :=
  ∀ n, P16304300557616650150.a n = A011903 n

end A011903

/-! ## A011903.P1809774119464384226

`floor(A007290(n)/7)`
-/

namespace A011903.P1809774119464384226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007290 n : ℚ) / 7⌋

end

end A011903.P1809774119464384226

namespace A011903

/-- `floor(A007290(n)/7)` -/
def P1809774119464384226.Spec : Prop :=
  ∀ n, P1809774119464384226.a n = A011903 n

end A011903

/-! ## A011903.P2939824550128707763

`floor(A007531(n)/21)`
-/

namespace A011903.P2939824550128707763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007531 n : ℚ) / 21⌋

end

end A011903.P2939824550128707763

namespace A011903

/-- `floor(A007531(n)/21)` -/
def P2939824550128707763.Spec : Prop :=
  ∀ n, P2939824550128707763.a n = A011903 n

end A011903

/-! ## A011903.P16033191009945409334

`floor((A000330(n)-A000326(n))/7)`
-/

namespace A011903.P16033191009945409334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000330 n - A000326 n : ℚ) / 7⌋

end

end A011903.P16033191009945409334

namespace A011903

/-- `floor((A000330(n)-A000326(n))/7)` -/
def P16033191009945409334.Spec : Prop :=
  ∀ n, P16033191009945409334.a n = A011903 n

end A011903

/-! ## A011903.P9112254722000818758

`floor(Δ[A034827(n)/7])`
-/

namespace A011903.P9112254722000818758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034827 n : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A011903.P9112254722000818758

namespace A011903

/-- `floor(Δ[A034827(n)/7])` -/
def P9112254722000818758.Spec : Prop :=
  ∀ n, P9112254722000818758.a n = A011903 n

end A011903

/-!
# A011904: a(n) = floor( n*(n-1)*(n-2)/22 ).

The programs for A011904, the canonical program `A011904.P1562165794191130644` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011904 has offset 0).

The definition of A011904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011904.P1562165794191130644

`floor(3*C(n, 3)/11)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011904

/-- `floor(3*C(n, 3)/11)` -/
def P1562165794191130644.Spec : Prop :=
  ∀ n, P1562165794191130644.a n = A011904 n

theorem P1562165794191130644.correct : P1562165794191130644.Spec := by
  intro n
  simp only [A011904]

end A011904

/-! ## A011904.P11348106486951227296

`floor(n*(n-1)*(n-2)/22)`
-/

namespace A011904.P11348106486951227296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) : ℚ) / 22⌋

end

end A011904.P11348106486951227296

namespace A011904

/-- `floor(n*(n-1)*(n-2)/22)` -/
def P11348106486951227296.Spec : Prop :=
  ∀ n, P11348106486951227296.a n = A011904 n

end A011904

/-! ## A011904.P1781737552330820628

`A004526(A011893(n))`
-/

namespace A011904.P1781737552330820628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011893 n).toNat

end

end A011904.P1781737552330820628

namespace A011904

/-- `A004526(A011893(n))` -/
def P1781737552330820628.Spec : Prop :=
  ∀ n, P1781737552330820628.a n = A011904 n

end A011904

/-! ## A011904.P16111979754582259017

`A032766(floor(A007531(n)/11))-A011893(n)`
-/

namespace A011904.P16111979754582259017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ⌊(A007531 n : ℚ) / 11⌋.toNat - A011893 n

end

end A011904.P16111979754582259017

namespace A011904

/-- `A032766(floor(A007531(n)/11))-A011893(n)` -/
def P16111979754582259017.Spec : Prop :=
  ∀ n, P16111979754582259017.a n = A011904 n

end A011904

/-! ## A011904.P17434853885159209438

`A032766(A011893(n))-floor(A280058(n)/22)`
-/

namespace A011904.P17434853885159209438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A011893 n).toNat - ⌊(A280058 n : ℚ) / 22⌋

end

end A011904.P17434853885159209438

namespace A011904

/-- `A032766(A011893(n))-floor(A280058(n)/22)` -/
def P17434853885159209438.Spec : Prop :=
  ∀ n, P17434853885159209438.a n = A011904 n

end A011904

/-!
# A011905: a(n) = floor( n*(n-1)*(n-2)/23 ).

The programs for A011905, the canonical program `A011905.P146250142397509285` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011905 has offset 0).

The definition of A011905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011905.P146250142397509285

`floor(6*C(n, 3)/23)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011905

/-- `floor(6*C(n, 3)/23)` -/
def P146250142397509285.Spec : Prop :=
  ∀ n, P146250142397509285.a n = A011905 n

theorem P146250142397509285.correct : P146250142397509285.Spec := by
  intro n
  simp only [A011905]

end A011905

/-! ## A011905.P3335280657399122685

`floor(n*(n-1)*(n-2)/23)`
-/

namespace A011905.P3335280657399122685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) : ℚ) / 23⌋

end

end A011905.P3335280657399122685

namespace A011905

/-- `floor(n*(n-1)*(n-2)/23)` -/
def P3335280657399122685.Spec : Prop :=
  ∀ n, P3335280657399122685.a n = A011905 n

end A011905

/-! ## A011905.P9461139941594566817

`A301506(floor(A004767(2^n)/10))`
-/

namespace A011905.P9461139941594566817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 ⌊(A004767 (2 ^ n) : ℚ) / 10⌋.toNat

end

end A011905.P9461139941594566817

namespace A011905

/-- `A301506(floor(A004767(2^n)/10))` -/
def P9461139941594566817.Spec : Prop :=
  ∀ n, P9461139941594566817.a n = A011905 n

end A011905

/-! ## A011905.P3749391696894664913

`A301506(A319781(n)+n)`
-/

namespace A011905.P3749391696894664913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (A319781 n + (n : ℤ)).toNat

end

end A011905.P3749391696894664913

namespace A011905

/-- `A301506(A319781(n)+n)` -/
def P3749391696894664913.Spec : Prop :=
  ∀ n, P3749391696894664913.a n = A011905 n

end A011905

/-! ## A011905.P1504319134131960167

`∑[∑[A037800(A284418(n))]]`
-/

namespace A011905.P1504319134131960167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A284418 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011905.P1504319134131960167

namespace A011905

/-- `∑[∑[A037800(A284418(n))]]` -/
def P1504319134131960167.Spec : Prop :=
  ∀ n, P1504319134131960167.a n = A011905 n

end A011905

/-!
# A011906: If b(n) is A011900(n) and c(n) is A001109(n), then a(n) = b(n)*c(n) = b(n) + (b(n)+1) + (b(n)+2) + ... + c(n).

The programs for A011906, there is no canonical definition to state claims against.
-/

/-! ## A011906.P12638459983330558699

`Δ[A053142(n)]*A011900(n)`
-/

namespace A011906.P12638459983330558699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011900 n

end

end A011906.P12638459983330558699

/-! ## A011906.P12748161103311910433

`A001109(n+1)*A011900(n)`
-/

namespace A011906.P12748161103311910433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) * A011900 n

end

end A011906.P12748161103311910433

/-! ## A011906.P8345710500265406481

`∑[A001653(n+1)]*A011900(n)`
-/

namespace A011906.P8345710500265406481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011900 n

end

end A011906.P8345710500265406481

/-! ## A011906.P4985163416288146464

`∑[A182190(n)+1]*A011900(n)`
-/

namespace A011906.P4985163416288146464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011900 n

end

end A011906.P4985163416288146464

/-! ## A011906.P17622426458143375372

`∑[A053141(2*n)+A011900(n)]`
-/

namespace A011906.P17622426458143375372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (2 * n) + A011900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011906.P17622426458143375372

/-! ## A011906.P11493679284367842717

`(A053141(n)+1)*Δ[A053142(n)]`
-/

namespace A011906.P11493679284367842717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053141 n + 1) * (f1 (n + 1) - f1 n)

end

end A011906.P11493679284367842717

/-! ## A011906.P4102176330979266424

`∑[A000129(Δ[n²])]*A011900(n)`
-/

namespace A011906.P4102176330979266424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011900 n

end

end A011906.P4102176330979266424

/-! ## A011906.P10200454256554309770

`∑[A215928(Δ[n²])]*A011900(n)`
-/

namespace A011906.P10200454256554309770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011900 n

end

end A011906.P10200454256554309770

/-! ## A011906.P6210024122401357690

`A001109(n+1)*A113225(2*n)`
-/

namespace A011906.P6210024122401357690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) * A113225 (2 * n)

end

end A011906.P6210024122401357690

/-! ## A011906.P2519644276453483549

`A011900(n)*A105635(2*n+1)`
-/

namespace A011906.P2519644276453483549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n * A105635 (2 * n + 1)

end

end A011906.P2519644276453483549

/-!
# A011907: a(n) = floor( n*(n-1)*(n-2)/25 ).

The programs for A011907, the canonical program `A011907.P6605944273428662417` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011907 has offset 0).

The definition of A011907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011907.P6605944273428662417

`floor(6*C(n, 3)/25)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011907

/-- `floor(6*C(n, 3)/25)` -/
def P6605944273428662417.Spec : Prop :=
  ∀ n, P6605944273428662417.a n = A011907 n

theorem P6605944273428662417.correct : P6605944273428662417.Spec := by
  intro n
  simp only [A011907]

end A011907

/-! ## A011907.P18363971279397293968

`floor(n*(n-1)*(n-2)/25)`
-/

namespace A011907.P18363971279397293968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) : ℚ) / 25⌋

end

end A011907.P18363971279397293968

namespace A011907

/-- `floor(n*(n-1)*(n-2)/25)` -/
def P18363971279397293968.Spec : Prop :=
  ∀ n, P18363971279397293968.a n = A011907 n

end A011907

/-! ## A011907.P1713345353198576009

`A002265(floor(Δ[A052762(n)/25]))`
-/

namespace A011907.P1713345353198576009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌊f1 (n + 1) - f1 n⌋.toNat

end

end A011907.P1713345353198576009

namespace A011907

/-- `A002265(floor(Δ[A052762(n)/25]))` -/
def P1713345353198576009.Spec : Prop :=
  ∀ n, P1713345353198576009.a n = A011907 n

end A011907

/-! ## A011907.P18087929165033559736

`A002266(floor(C(n, 3)/5)+C(n, 3))`
-/

namespace A011907.P18087929165033559736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (⌊(Nat.choose n 3 : ℚ) / 5⌋ + (Nat.choose n 3 : ℤ)).toNat

end

end A011907.P18087929165033559736

namespace A011907

/-- `A002266(floor(C(n, 3)/5)+C(n, 3))` -/
def P18087929165033559736.Spec : Prop :=
  ∀ n, P18087929165033559736.a n = A011907 n

end A011907

/-! ## A011907.P9917765926959487427

`A002266(A011887(n))`
-/

namespace A011907.P9917765926959487427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A011887 n).toNat

end

end A011907.P9917765926959487427

namespace A011907

/-- `A002266(A011887(n))` -/
def P9917765926959487427.Spec : Prop :=
  ∀ n, P9917765926959487427.a n = A011907 n

end A011907

/-!
# A011908: a(n) = floor( n*(n-1)*(n-2)/26 ).

The programs for A011908, the canonical program `A011908.P17740404044240325224` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011908 has offset 0).

The definition of A011908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011908.P17740404044240325224

`floor(3*C(n, 3)/13)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011908

/-- `floor(3*C(n, 3)/13)` -/
def P17740404044240325224.Spec : Prop :=
  ∀ n, P17740404044240325224.a n = A011908 n

theorem P17740404044240325224.correct : P17740404044240325224.Spec := by
  intro n
  simp only [A011908]

end A011908

/-! ## A011908.P5168000864751021309

`floor(A011895(n)/2)`
-/

namespace A011908.P5168000864751021309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011895 n : ℚ) / 2⌋

end

end A011908.P5168000864751021309

namespace A011908

/-- `floor(A011895(n)/2)` -/
def P5168000864751021309.Spec : Prop :=
  ∀ n, P5168000864751021309.a n = A011908 n

end A011908

/-! ## A011908.P17713642943019442381

`floor(A007531(n)/26)`
-/

namespace A011908.P17713642943019442381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007531 n : ℚ) / 26⌋

end

end A011908.P17713642943019442381

namespace A011908

/-- `floor(A007531(n)/26)` -/
def P17713642943019442381.Spec : Prop :=
  ∀ n, P17713642943019442381.a n = A011908 n

end A011908

/-! ## A011908.P5220244481378382265

`floor(A280058(n)/52)`
-/

namespace A011908.P5220244481378382265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280058 n : ℚ) / 52⌋

end

end A011908.P5220244481378382265

namespace A011908

/-- `floor(A280058(n)/52)` -/
def P5220244481378382265.Spec : Prop :=
  ∀ n, P5220244481378382265.a n = A011908 n

end A011908

/-! ## A011908.P11055924166621194434

`floor(A011923(n+1)/(2*(n+1)))`
-/

namespace A011908.P11055924166621194434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011923 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A011908.P11055924166621194434

namespace A011908

/-- `floor(A011923(n+1)/(2*(n+1)))` -/
def P11055924166621194434.Spec : Prop :=
  ∀ n, P11055924166621194434.a n = A011908 n

end A011908

/-! ## A011908.P7344500595606832081

`A004526(A011895(n))`
-/

namespace A011908.P7344500595606832081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011895 n).toNat

end

end A011908.P7344500595606832081

namespace A011908

/-- `A004526(A011895(n))` -/
def P7344500595606832081.Spec : Prop :=
  ∀ n, P7344500595606832081.a n = A011908 n

end A011908

/-!
# A011909: a(n) = floor( n*(n-1)*(n-2)/27 ).

The programs for A011909, the canonical program `A011909.P15686889304470506008` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011909 has offset 0).

The definition of A011909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011909.P15686889304470506008

`floor(2*C(n, 3)/9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011909

/-- `floor(2*C(n, 3)/9)` -/
def P15686889304470506008.Spec : Prop :=
  ∀ n, P15686889304470506008.a n = A011909 n

theorem P15686889304470506008.correct : P15686889304470506008.Spec := by
  intro n
  simp only [A011909]

end A011909

/-! ## A011909.P13059991294595968887

`floor(A011891(n)/3)`
-/

namespace A011909.P13059991294595968887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011891 n : ℚ) / 3⌋

end

end A011909.P13059991294595968887

namespace A011909

/-- `floor(A011891(n)/3)` -/
def P13059991294595968887.Spec : Prop :=
  ∀ n, P13059991294595968887.a n = A011909 n

end A011909

/-! ## A011909.P4670714067518241667

`floor(A007290(n)/9)`
-/

namespace A011909.P4670714067518241667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007290 n : ℚ) / 9⌋

end

end A011909.P4670714067518241667

namespace A011909

/-- `floor(A007290(n)/9)` -/
def P4670714067518241667.Spec : Prop :=
  ∀ n, P4670714067518241667.a n = A011909 n

end A011909

/-! ## A011909.P1914110652030505913

`floor(A007531(n)/27)`
-/

namespace A011909.P1914110652030505913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007531 n : ℚ) / 27⌋

end

end A011909.P1914110652030505913

namespace A011909

/-- `floor(A007531(n)/27)` -/
def P1914110652030505913.Spec : Prop :=
  ∀ n, P1914110652030505913.a n = A011909 n

end A011909

/-! ## A011909.P2561234855454137929

`floor(A011937(n+1)/(n+1))`
-/

namespace A011909.P2561234855454137929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011937 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A011909.P2561234855454137929

namespace A011909

/-- `floor(A011937(n+1)/(n+1))` -/
def P2561234855454137929.Spec : Prop :=
  ∀ n, P2561234855454137929.a n = A011909 n

end A011909

/-!
# A011910: a(n) = floor( n*(n-1)*(n-2)/28 ).

The programs for A011910, the canonical program `A011910.P13070783408748674888` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011910 has offset 0).

The definition of A011910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011910.P13070783408748674888

`floor(n*(n-1)*(n-2)/28)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011910

/-- `floor(n*(n-1)*(n-2)/28)` -/
def P13070783408748674888.Spec : Prop :=
  ∀ n, P13070783408748674888.a n = A011910 n

theorem P13070783408748674888.correct : P13070783408748674888.Spec := by
  intro n
  simp only [A011910]

end A011910

/-! ## A011910.P1865310849461383428

`A004526(A011896(n))`
-/

namespace A011910.P1865310849461383428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011896 n).toNat

end

end A011910.P1865310849461383428

namespace A011910

/-- `A004526(A011896(n))` -/
def P1865310849461383428.Spec : Prop :=
  ∀ n, P1865310849461383428.a n = A011910 n

end A011910

/-! ## A011910.P7901638008219262323

`A029578(A011896(n)-and(1, A011896(n)))`
-/

namespace A011910.P7901638008219262323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A011896 n - Int.land 1 (A011896 n)).toNat

end

end A011910.P7901638008219262323

namespace A011910

/-- `A029578(A011896(n)-and(1, A011896(n)))` -/
def P7901638008219262323.Spec : Prop :=
  ∀ n, P7901638008219262323.a n = A011910 n

end A011910

/-! ## A011910.P10253989960390772903

`A057357(A011894(n))`
-/

namespace A011910.P10253989960390772903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A011894 n).toNat

end

end A011910.P10253989960390772903

namespace A011910

/-- `A057357(A011894(n))` -/
def P10253989960390772903.Spec : Prop :=
  ∀ n, P10253989960390772903.a n = A011910 n

end A011910

/-! ## A011910.P8814148297330349771

`A002265(A011889(n))`
-/

namespace A011910.P8814148297330349771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A011889 n).toNat

end

end A011910.P8814148297330349771

namespace A011910

/-- `A002265(A011889(n))` -/
def P8814148297330349771.Spec : Prop :=
  ∀ n, P8814148297330349771.a n = A011910 n

end A011910

/-!
# A011911: a(n) = floor( n*(n-1)*(n-2)/29 ).

The programs for A011911, the canonical program `A011911.P98730736773018617` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011911 has offset 0).

The definition of A011911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011911.P98730736773018617

`floor(6*C(n, 3)/29)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011911

/-- `floor(6*C(n, 3)/29)` -/
def P98730736773018617.Spec : Prop :=
  ∀ n, P98730736773018617.a n = A011911 n

theorem P98730736773018617.correct : P98730736773018617.Spec := by
  intro n
  simp only [A011911]

end A011911

/-! ## A011911.P1640806662961783749

`floor((2*n-3*n²+n^3)/29)`
-/

namespace A011911.P1640806662961783749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - (3 * n ^ 2 : ℤ) + (n ^ 3 : ℤ) : ℚ) / 29⌋

end

end A011911.P1640806662961783749

namespace A011911

/-- `floor((2*n-3*n²+n^3)/29)` -/
def P1640806662961783749.Spec : Prop :=
  ∀ n, P1640806662961783749.a n = A011911 n

end A011911

/-!
# A011912: a(n) = floor(n*(n-1)*(n-2)/30).

The programs for A011912, the canonical program `A011912.P2907107667632297804` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011912 has offset 0).

The definition of A011912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011912.P2907107667632297804

`floor(C(n, 3)/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011912

/-- `floor(C(n, 3)/5)` -/
def P2907107667632297804.Spec : Prop :=
  ∀ n, P2907107667632297804.a n = A011912 n

theorem P2907107667632297804.correct : P2907107667632297804.Spec := by
  intro n
  simp only [A011912]

end A011912

/-! ## A011912.P2782617365726379233

`floor(n*(n-1)*(n-2)/30)`
-/

namespace A011912.P2782617365726379233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2)) : ℚ) / 30⌋

end

end A011912.P2782617365726379233

namespace A011912

/-- `floor(n*(n-1)*(n-2)/30)` -/
def P2782617365726379233.Spec : Prop :=
  ∀ n, P2782617365726379233.a n = A011912 n

end A011912

/-! ## A011912.P7336889329091060239

`round((C(n, 3)-2)/5)`
-/

namespace A011912.P7336889329091060239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose n 3 : ℤ) - 2 : ℚ) / 5)

end

end A011912.P7336889329091060239

namespace A011912

/-- `round((C(n, 3)-2)/5)` -/
def P7336889329091060239.Spec : Prop :=
  ∀ n, P7336889329091060239.a n = A011912 n

end A011912

/-! ## A011912.P11458033294684935768

`ceil((C(n, 3)-4)/5)`
-/

namespace A011912.P11458033294684935768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose n 3 : ℤ) - 4 : ℚ) / 5⌉

end

end A011912.P11458033294684935768

namespace A011912

/-- `ceil((C(n, 3)-4)/5)` -/
def P11458033294684935768.Spec : Prop :=
  ∀ n, P11458033294684935768.a n = A011912 n

end A011912

/-! ## A011912.P7157416471250061761

`∑[A130520(n)]+comp[6*n]-(n+1)`
-/

namespace A011912.P7157416471250061761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A011912.P7157416471250061761

namespace A011912

/-- `∑[A130520(n)]+comp[6*n]-(n+1)` -/
def P7157416471250061761.Spec : Prop :=
  ∀ n, P7157416471250061761.a n = A011912 n

end A011912

/-! ## A011912.P15845211719886409879

`2*A011897(n)-A011892(n)`
-/

namespace A011912.P15845211719886409879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011897 n - A011892 n

end

end A011912.P15845211719886409879

namespace A011912

/-- `2*A011897(n)-A011892(n)` -/
def P15845211719886409879.Spec : Prop :=
  ∀ n, P15845211719886409879.a n = A011912 n

end A011912

/-! ## A011912.P14396697593337055193

`A002266(n)+∑[∑[A002266(n)]]`
-/

namespace A011912.P14396697593337055193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011912.P14396697593337055193

namespace A011912

/-- `A002266(n)+∑[∑[A002266(n)]]` -/
def P14396697593337055193.Spec : Prop :=
  ∀ n, P14396697593337055193.a n = A011912 n

end A011912

/-! ## A011912.P9256335988878639631

`A059995(2*n)+∑[∑[A059995(2*n)]]`
-/

namespace A011912.P9256335988878639631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011912.P9256335988878639631

namespace A011912

/-- `A059995(2*n)+∑[∑[A059995(2*n)]]` -/
def P9256335988878639631.Spec : Prop :=
  ∀ n, P9256335988878639631.a n = A011912 n

end A011912

/-! ## A011912.P7378280561262930616

`A004526(A011897(n))`
-/

namespace A011912.P7378280561262930616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011897 n).toNat

end

end A011912.P7378280561262930616

namespace A011912

/-- `A004526(A011897(n))` -/
def P7378280561262930616.Spec : Prop :=
  ∀ n, P7378280561262930616.a n = A011912 n

end A011912

/-!
# A011913: a(n) = floor(n*(n - 1)*(n - 2)/31).

The programs for A011913, the canonical program `A011913.P3038018711751185969` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011913 has offset 0).

The definition of A011913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011913.P3038018711751185969

`floor(6*C(n, 3)/31)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011913

/-- `floor(6*C(n, 3)/31)` -/
def P3038018711751185969.Spec : Prop :=
  ∀ n, P3038018711751185969.a n = A011913 n

theorem P3038018711751185969.correct : P3038018711751185969.Spec := by
  intro n
  simp only [A011913]

end A011913

/-! ## A011913.P12520886694701279809

`floor((2-n)*(n-n²)/31)`
-/

namespace A011913.P12520886694701279809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - (n : ℤ)) * ((n : ℤ) - (n ^ 2 : ℤ)) : ℚ) / 31⌋

end

end A011913.P12520886694701279809

namespace A011913

/-- `floor((2-n)*(n-n²)/31)` -/
def P12520886694701279809.Spec : Prop :=
  ∀ n, P12520886694701279809.a n = A011913 n

end A011913

/-! ## A011913.P10154873092747010987

`∑[∑[A031346(A258081(n+1))]]`
-/

namespace A011913.P10154873092747010987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A258081 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011913.P10154873092747010987

namespace A011913

/-- `∑[∑[A031346(A258081(n+1))]]` -/
def P10154873092747010987.Spec : Prop :=
  ∀ n, P10154873092747010987.a n = A011913 n

end A011913

/-! ## A011913.P8283082508925194841

`∑[∑[A257510(A001317(n))]]`
-/

namespace A011913.P8283082508925194841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257510 (A001317 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011913.P8283082508925194841

namespace A011913

/-- `∑[∑[A257510(A001317(n))]]` -/
def P8283082508925194841.Spec : Prop :=
  ∀ n, P8283082508925194841.a n = A011913 n

end A011913

/-! ## A011913.P4495039621256626838

`∑[A255270(∑[7*C(n, 5)])]`
-/

namespace A011913.P4495039621256626838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011913.P4495039621256626838

namespace A011913

/-- `∑[A255270(∑[7*C(n, 5)])]` -/
def P4495039621256626838.Spec : Prop :=
  ∀ n, P4495039621256626838.a n = A011913 n

end A011913

/-!
# A011914: a(n) = floor(n*(n - 1)*(n - 2)/32).

The programs for A011914, the canonical program `A011914.P8643751881459422429` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011914 has offset 0).

The definition of A011914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)/32)` (program `A011914.P8643751881459422429`, by `A011914.P8643751881459422429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011914.P8643751881459422429

`floor(n*(n-1)*(n-2)/32)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011914

/-- `floor(n*(n-1)*(n-2)/32)` -/
def P8643751881459422429.Spec : Prop :=
  ∀ n, P8643751881459422429.a n = A011914 n

theorem P8643751881459422429.correct : P8643751881459422429.Spec := by
  intro n
  simp only [A011914]

end A011914

/-! ## A011914.P10029810591183634544

`(or(1, A011898(n))-1)/2`
-/

namespace A011914.P10029810591183634544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A011898 n) - 1 : ℚ) / 2

end

end A011914.P10029810591183634544

namespace A011914

/-- `(or(1, A011898(n))-1)/2` -/
def P10029810591183634544.Spec : Prop :=
  ∀ n, P10029810591183634544.a n = (A011914 n : ℚ)

end A011914

/-! ## A011914.P15234231648338159108

`ceil(((A011890(n)-1)/2-1)/2)`
-/

namespace A011914.P15234231648338159108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A011890 n - 1 : ℚ) / 2 - 1) / 2⌉

end

end A011914.P15234231648338159108

namespace A011914

/-- `ceil(((A011890(n)-1)/2-1)/2)` -/
def P15234231648338159108.Spec : Prop :=
  ∀ n, P15234231648338159108.a n = A011914 n

end A011914

/-! ## A011914.P5894777578972649914

`A014682(or(1, A011898(n))-1)`
-/

namespace A011914.P5894777578972649914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lor 1 (A011898 n) - 1).toNat

end

end A011914.P5894777578972649914

namespace A011914

/-- `A014682(or(1, A011898(n))-1)` -/
def P5894777578972649914.Spec : Prop :=
  ∀ n, P5894777578972649914.a n = A011914 n

end A011914

/-! ## A011914.P7363985642635856361

`xor(A003188(A011898(n)), A011898(n))`
-/

namespace A011914.P7363985642635856361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 (A011898 n).toNat) (A011898 n)

end

end A011914.P7363985642635856361

namespace A011914

/-- `xor(A003188(A011898(n)), A011898(n))` -/
def P7363985642635856361.Spec : Prop :=
  ∀ n, P7363985642635856361.a n = A011914 n

end A011914

/-! ## A011914.P8308927100284354357

`A004526(A011898(n))`
-/

namespace A011914.P8308927100284354357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A011898 n).toNat

end

end A011914.P8308927100284354357

namespace A011914

/-- `A004526(A011898(n))` -/
def P8308927100284354357.Spec : Prop :=
  ∀ n, P8308927100284354357.a n = A011914 n

end A011914

/-! ## A011914.P1633235307286278478

`A004524(or(1, A011898(n)))`
-/

namespace A011914.P1633235307286278478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A011898 n)).toNat

end

end A011914.P1633235307286278478

namespace A011914

/-- `A004524(or(1, A011898(n)))` -/
def P1633235307286278478.Spec : Prop :=
  ∀ n, P1633235307286278478.a n = A011914 n

end A011914

/-! ## A011914.P7243789180728746774

`A028242(or(1, A011898(n)))`
-/

namespace A011914.P7243789180728746774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A011898 n)).toNat

end

end A011914.P7243789180728746774

namespace A011914

/-- `A028242(or(1, A011898(n)))` -/
def P7243789180728746774.Spec : Prop :=
  ∀ n, P7243789180728746774.a n = A011914 n

end A011914

/-!
# A011915: a(n) = floor(n*(n-1)*(n-2)*(n-3)/5).

The programs for A011915, the canonical program `A011915.P7628816679259656174` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011915 has offset 0).

The definition of A011915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011930, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A011915.P7628816679259656174

`4*A011930(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011915

/-- `4*A011930(n)` -/
def P7628816679259656174.Spec : Prop :=
  ∀ n, P7628816679259656174.a n = A011915 n

theorem P7628816679259656174.correct : P7628816679259656174.Spec := by
  intro n
  simp only [A011915]

end A011915

/-! ## A011915.P4679158043359859205

`floor(24*C(n, 4)/5)`
-/

namespace A011915.P4679158043359859205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 * Nat.choose n 4 : ℚ) / 5⌋

end

end A011915.P4679158043359859205

namespace A011915

/-- `floor(24*C(n, 4)/5)` -/
def P4679158043359859205.Spec : Prop :=
  ∀ n, P4679158043359859205.a n = A011915 n

end A011915

/-! ## A011915.P12769952742590125610

`floor(A052762(n)/5)`
-/

namespace A011915.P12769952742590125610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 5⌋

end

end A011915.P12769952742590125610

namespace A011915

/-- `floor(A052762(n)/5)` -/
def P12769952742590125610.Spec : Prop :=
  ∀ n, P12769952742590125610.a n = A011915 n

end A011915

/-! ## A011915.P8713727653489219102

`floor(24*A000332(n)/5)`
-/

namespace A011915.P8713727653489219102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 * A000332 n : ℚ) / 5⌋

end

end A011915.P8713727653489219102

namespace A011915

/-- `floor(24*A000332(n)/5)` -/
def P8713727653489219102.Spec : Prop :=
  ∀ n, P8713727653489219102.a n = A011915 n

end A011915

/-! ## A011915.P13557498180513666607

`floor((n-3)*A007531(n)/5)`
-/

namespace A011915.P13557498180513666607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 3) * A007531 n : ℚ) / 5⌋

end

end A011915.P13557498180513666607

namespace A011915

/-- `floor((n-3)*A007531(n)/5)` -/
def P13557498180513666607.Spec : Prop :=
  ∀ n, P13557498180513666607.a n = A011915 n

end A011915

/-! ## A011915.P17603653690518124130

`floor(24*∑{d}[n, A346761(#)]/5)`
-/

namespace A011915.P17603653690518124130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((24 * (∑ d ∈ Nat.divisors (f1 n), A346761 d) : ℤ) : ℚ) / 5⌋

end

end A011915.P17603653690518124130

namespace A011915

/-- `floor(24*∑{d}[n, A346761(#)]/5)` -/
def P17603653690518124130.Spec : Prop :=
  ∀ n, P17603653690518124130.a n = A011915 n

end A011915

/-! ## A011915.P16565666659704211737

`4*(A011795(n)+A000332(n))`
-/

namespace A011915.P16565666659704211737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A011795 n + A000332 n)

end

end A011915.P16565666659704211737

namespace A011915

/-- `4*(A011795(n)+A000332(n))` -/
def P16565666659704211737.Spec : Prop :=
  ∀ n, P16565666659704211737.a n = A011915 n

end A011915

/-! ## A011915.P4196694074809243670

`floor(Δ[24*A000389(n)]/5)`
-/

namespace A011915.P4196694074809243670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 5⌋

end

end A011915.P4196694074809243670

namespace A011915

/-- `floor(Δ[24*A000389(n)]/5)` -/
def P4196694074809243670.Spec : Prop :=
  ∀ n, P4196694074809243670.a n = A011915 n

end A011915

/-!
# A011916: a(n) = ((b(n)-1)+sqrt(3*b(n)^2-4*b(n)+1))/2, where b(n) is A011922(n).

The programs for A011916, the canonical program `A011916.P8208383540912210976` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011916 has offset 0).

The definition of A011916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011916.P8208383540912210976

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=44`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011916

/-- `15*a(n-1)-15*a(n-2)+a(n-3)` -/
def P8208383540912210976.Spec : Prop :=
  ∀ n, P8208383540912210976.a n = A011916 n

theorem P8208383540912210976.correct : P8208383540912210976.Spec := by
  intro n
  simp only [A011916]

end A011916

/-! ## A011916.P2309440026369493388

`A109437(2*n)`
-/

namespace A011916.P2309440026369493388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (2 * n)

end

end A011916.P2309440026369493388

namespace A011916

/-- `A109437(2*n)` -/
def P2309440026369493388.Spec : Prop :=
  ∀ n, P2309440026369493388.a n = A011916 n

end A011916

/-! ## A011916.P1856497532697748886

`floor((sqrt(3)+2)²*a(n-1))+3` with `a(0)=0`
-/

namespace A011916.P1856497532697748886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 3

end

end A011916.P1856497532697748886

namespace A011916

/-- `floor((sqrt(3)+2)²*a(n-1))+3` -/
def P1856497532697748886.Spec : Prop :=
  ∀ n, P1856497532697748886.a n = A011916 n

end A011916

/-! ## A011916.P5592262964687705627

`14*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=3`
-/

namespace A011916.P5592262964687705627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  14 * a (n - 1) - a (n - 2) + 2

end

end A011916.P5592262964687705627

namespace A011916

/-- `14*a(n-1)-a(n-2)+2` -/
def P5592262964687705627.Spec : Prop :=
  ∀ n, P5592262964687705627.a n = A011916 n

end A011916

/-! ## A011916.P14667697205666048846

`∑[14*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=3, a(2)=41`
-/

namespace A011916.P14667697205666048846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 41] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011916.P14667697205666048846

namespace A011916

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P14667697205666048846.Spec : Prop :=
  ∀ n, P14667697205666048846.a n = A011916 n

end A011916

/-! ## A011916.P14773965946692743130

`A122770(n)/2`
-/

namespace A011916.P14773965946692743130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122770 n : ℚ) / 2

end

end A011916.P14773965946692743130

namespace A011916

/-- `A122770(n)/2` -/
def P14773965946692743130.Spec : Prop :=
  ∀ n, P14773965946692743130.a n = (A011916 n : ℚ)

end A011916

/-! ## A011916.P5597477319098069955

`A001571(2*n)/3`
-/

namespace A011916.P5597477319098069955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001571 (2 * n) : ℚ) / 3

end

end A011916.P5597477319098069955

namespace A011916

/-- `A001571(2*n)/3` -/
def P5597477319098069955.Spec : Prop :=
  ∀ n, P5597477319098069955.a n = (A011916 n : ℚ)

end A011916

/-! ## A011916.P11667715688428103493

`floor(Δ[A046175(n)/6])`
-/

namespace A011916.P11667715688428103493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046175 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A011916.P11667715688428103493

namespace A011916

/-- `floor(Δ[A046175(n)/6])` -/
def P11667715688428103493.Spec : Prop :=
  ∀ n, P11667715688428103493.a n = A011916 n

end A011916

/-! ## A011916.P16236794152864735566

`floor(A217233(2*n)/2)`
-/

namespace A011916.P16236794152864735566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217233 (2 * n) : ℚ) / 2⌋

end

end A011916.P16236794152864735566

namespace A011916

/-- `floor(A217233(2*n)/2)` -/
def P16236794152864735566.Spec : Prop :=
  ∀ n, P16236794152864735566.a n = A011916 n

end A011916

/-! ## A011916.P1756349287447641872

`floor(A102871(2*n)/3)`
-/

namespace A011916.P1756349287447641872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102871 (2 * n) : ℚ) / 3⌋

end

end A011916.P1756349287447641872

namespace A011916

/-- `floor(A102871(2*n)/3)` -/
def P1756349287447641872.Spec : Prop :=
  ∀ n, P1756349287447641872.a n = A011916 n

end A011916

/-!
# A011917: [ n(n-1)(n-2)(n-3)/7 ].

The programs for A011917, the canonical program `A011917.P2651421316482659478` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011917 has offset 0).

The definition of A011917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011917.P2651421316482659478

`floor(24*C(n, 4)/7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011917

/-- `floor(24*C(n, 4)/7)` -/
def P2651421316482659478.Spec : Prop :=
  ∀ n, P2651421316482659478.a n = A011917 n

theorem P2651421316482659478.correct : P2651421316482659478.Spec := by
  intro n
  simp only [A011917]

end A011917

/-! ## A011917.P3696673986011973909

`round(24*C(n, 4)/7)`
-/

namespace A011917.P3696673986011973909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((24 * Nat.choose n 4 : ℚ) / 7)

end

end A011917.P3696673986011973909

namespace A011917

/-- `round(24*C(n, 4)/7)` -/
def P3696673986011973909.Spec : Prop :=
  ∀ n, P3696673986011973909.a n = A011917 n

end A011917

/-! ## A011917.P2657077435691219234

`floor(((1-n)²-n)²/7)`
-/

namespace A011917.P2657077435691219234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((1 - (n : ℤ)) ^ 2 - (n : ℤ)) ^ 2 : ℚ) / 7⌋

end

end A011917.P2657077435691219234

namespace A011917

/-- `floor(((1-n)²-n)²/7)` -/
def P2657077435691219234.Spec : Prop :=
  ∀ n, P2657077435691219234.a n = A011917 n

end A011917

/-! ## A011917.P16871875400380888145

`round(A052762(n)/7)`
-/

namespace A011917.P16871875400380888145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052762 n : ℚ) / 7)

end

end A011917.P16871875400380888145

namespace A011917

/-- `round(A052762(n)/7)` -/
def P16871875400380888145.Spec : Prop :=
  ∀ n, P16871875400380888145.a n = A011917 n

end A011917

/-! ## A011917.P9621370977975681760

`round(gcd(A052787(n), A334281(n))/7)`
-/

namespace A011917.P9621370977975681760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd (A052787 n) (A334281 n) : ℚ) / 7)

end

end A011917.P9621370977975681760

namespace A011917

/-- `round(gcd(A052787(n), A334281(n))/7)` -/
def P9621370977975681760.Spec : Prop :=
  ∀ n, P9621370977975681760.a n = A011917 n

end A011917

/-! ## A011917.P14645378797906491458

`round(Δ[A001095(n)/35])`
-/

namespace A011917.P14645378797906491458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001095 n : ℚ) / 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A011917.P14645378797906491458

namespace A011917

/-- `round(Δ[A001095(n)/35])` -/
def P14645378797906491458.Spec : Prop :=
  ∀ n, P14645378797906491458.a n = A011917 n

end A011917

/-! ## A011917.P8649041180817032545

`round(Δ[A052787(n)/35])`
-/

namespace A011917.P8649041180817032545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 n : ℚ) / 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A011917.P8649041180817032545

namespace A011917

/-- `round(Δ[A052787(n)/35])` -/
def P8649041180817032545.Spec : Prop :=
  ∀ n, P8649041180817032545.a n = A011917 n

end A011917

/-!
# A011918: a(n) = A011916(n) + A011922(n) - 1.

The programs for A011918, the canonical program `A011918.P1398384328682425928` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011918 has offset 1).

The definition of A011918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011918.P1398384328682425928

`(A007655(n+3)-3*A007655(n+2)-1)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011918

/-- `(A007655(n+3)-3*A007655(n+2)-1)/2` -/
def P1398384328682425928.Spec : Prop :=
  ∀ n, P1398384328682425928.a n = (A011918 (n + 1) : ℚ)

end A011918

/-! ## A011918.P3402235231623758105

`floor((sqrt(3)+2)²*a(n-1))+7` with `a(0)=5`
-/

namespace A011918.P3402235231623758105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 7

end

end A011918.P3402235231623758105

namespace A011918

/-- `floor((sqrt(3)+2)²*a(n-1))+7` -/
def P3402235231623758105.Spec : Prop :=
  ∀ n, P3402235231623758105.a n = A011918 (n + 1)

end A011918

/-! ## A011918.P6437503557638781275

`∑[A001834(Δ[n²])]`
-/

namespace A011918.P6437503557638781275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011918.P6437503557638781275

namespace A011918

/-- `∑[A001834(Δ[n²])]` -/
def P6437503557638781275.Spec : Prop :=
  ∀ n, P6437503557638781275.a n = A011918 (n + 1)

end A011918

/-! ## A011918.P5149084364401120135

`A061278(2*(n+1))`
-/

namespace A011918.P5149084364401120135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 (2 * (n + 1))

end

end A011918.P5149084364401120135

namespace A011918

/-- `A061278(2*(n+1))` -/
def P5149084364401120135.Spec : Prop :=
  ∀ n, P5149084364401120135.a n = A011918 (n + 1)

end A011918

/-! ## A011918.P17177021636686276133

`A251730(n+1)/2`
-/

namespace A011918.P17177021636686276133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251730 (n + 1) : ℚ) / 2

end

end A011918.P17177021636686276133

namespace A011918

/-- `A251730(n+1)/2` -/
def P17177021636686276133.Spec : Prop :=
  ∀ n, P17177021636686276133.a n = (A011918 (n + 1) : ℚ)

end A011918

/-! ## A011918.P3792019745026841076

`A107388(2*(n+2))+1`
-/

namespace A011918.P3792019745026841076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107388 (2 * (n + 2)) + 1

end

end A011918.P3792019745026841076

namespace A011918

/-- `A107388(2*(n+2))+1` -/
def P3792019745026841076.Spec : Prop :=
  ∀ n, P3792019745026841076.a n = A011918 (n + 1)

end A011918

/-! ## A011918.P472149687061455222

`A101265(2*n+3)-1`
-/

namespace A011918.P472149687061455222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (2 * n + 3) - 1

end

end A011918.P472149687061455222

namespace A011918

/-- `A101265(2*n+3)-1` -/
def P472149687061455222.Spec : Prop :=
  ∀ n, P472149687061455222.a n = A011918 (n + 1)

end A011918

/-! ## A011918.P9297262493589469262

`A101879(2*n+3)-1`
-/

namespace A011918.P9297262493589469262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (2 * n + 3) - 1

end

end A011918.P9297262493589469262

namespace A011918

/-- `A101879(2*n+3)-1` -/
def P9297262493589469262.Spec : Prop :=
  ∀ n, P9297262493589469262.a n = A011918 (n + 1)

end A011918

/-!
# A011919: a(n) = floor(n*(n-1)*(n-2)*(n-3)/9).

The programs for A011919, the canonical program `A011919.P12466218990353218943` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011919 has offset 0).

The definition of A011919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011919.P12466218990353218943

`floor(8/3*C(n, 4))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011919

/-- `floor(8/3*C(n, 4))` -/
def P12466218990353218943.Spec : Prop :=
  ∀ n, P12466218990353218943.a n = A011919 n

theorem P12466218990353218943.correct : P12466218990353218943.Spec := by
  intro n
  simp only [A011919]

end A011919

/-! ## A011919.P2840410677418703681

`floor((n-(n²+1)/3)²)`
-/

namespace A011919.P2840410677418703681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) - (n ^ 2 + 1 : ℚ) / 3) ^ 2⌋

end

end A011919.P2840410677418703681

namespace A011919

/-- `floor((n-(n²+1)/3)²)` -/
def P2840410677418703681.Spec : Prop :=
  ∀ n, P2840410677418703681.a n = A011919 n

end A011919

/-! ## A011919.P9762394984851240486

`round((A052762(n)/3-1)/3)`
-/

namespace A011919.P9762394984851240486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A052762 n : ℚ) / 3 - 1) / 3)

end

end A011919.P9762394984851240486

namespace A011919

/-- `round((A052762(n)/3-1)/3)` -/
def P9762394984851240486.Spec : Prop :=
  ∀ n, P9762394984851240486.a n = A011919 n

end A011919

/-! ## A011919.P2891670022996550675

`ceil((abs((A001094(n)-n)/3)-2)/3)`
-/

namespace A011919.P2891670022996550675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(A001094 n - (n : ℤ) : ℚ) / 3| - 2) / 3⌉

end

end A011919.P2891670022996550675

namespace A011919

/-- `ceil((abs((A001094(n)-n)/3)-2)/3)` -/
def P2891670022996550675.Spec : Prop :=
  ∀ n, P2891670022996550675.a n = A011919 n

end A011919

/-! ## A011919.P18101915051521526242

`A034827(n)+floor(A034827(n)/3)`
-/

namespace A011919.P18101915051521526242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 n + ⌊(A034827 n : ℚ) / 3⌋

end

end A011919.P18101915051521526242

namespace A011919

/-- `A034827(n)+floor(A034827(n)/3)` -/
def P18101915051521526242.Spec : Prop :=
  ∀ n, P18101915051521526242.a n = A011919 n

end A011919

/-!
# A011920: a(n) = b(n)*(b(n)+1) = b(n) + ... + c(n), where b(n) = A011916(n), c(n) = A011918(n).

The programs for A011920, there is no canonical definition to state claims against.
-/

/-! ## A011920.P13945513247697642123

`A011922(n+1)*A123480(n+1)`
-/

namespace A011920.P13945513247697642123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011922 (n + 1) * A123480 (n + 1)

end

end A011920.P13945513247697642123

/-! ## A011920.P3833867950603097865

`A046174(n+1)*A046174(n+2)`
-/

namespace A011920.P3833867950603097865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 (n + 1) * A046174 (n + 2)

end

end A011920.P3833867950603097865

/-! ## A011920.P3259358698080326720

`A011916(n+1)+A011916(n+1)²`
-/

namespace A011920.P3259358698080326720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011916 (n + 1) + A011916 (n + 1) ^ 2

end

end A011920.P3259358698080326720

/-! ## A011920.P530205342600026219

`A123480(n+1)*A195499(2*n+1)`
-/

namespace A011920.P530205342600026219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123480 (n + 1) * A195499 (2 * n + 1)

end

end A011920.P530205342600026219

/-! ## A011920.P13629201472675470726

`A011922(n+1)/2*A045899(n+2)`
-/

namespace A011920.P13629201472675470726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011922 (n + 1) : ℚ) / 2 * (A045899 (n + 2) : ℚ)

end

end A011920.P13629201472675470726

/-!
# A011921: [ n(n-1)(n-2)(n-3)/11 ].

The programs for A011921, the canonical program `A011921.P12966015406566274591` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011921 has offset 0).

The definition of A011921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011921.P12966015406566274591

`floor(n*(n-1)*(n-2)*(n-3)/11)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011921

/-- `floor(n*(n-1)*(n-2)*(n-3)/11)` -/
def P12966015406566274591.Spec : Prop :=
  ∀ n, P12966015406566274591.a n = A011921 n

theorem P12966015406566274591.correct : P12966015406566274591.Spec := by
  intro n
  simp only [A011921]

end A011921

/-! ## A011921.P15013986579497212713

`2*round(12*C(n, 4)/11)`
-/

namespace A011921.P15013986579497212713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((12 * Nat.choose n 4 : ℚ) / 11)

end

end A011921.P15013986579497212713

namespace A011921

/-- `2*round(12*C(n, 4)/11)` -/
def P15013986579497212713.Spec : Prop :=
  ∀ n, P15013986579497212713.a n = A011921 n

end A011921

/-! ## A011921.P17024581899616918749

`2*A011932(n)`
-/

namespace A011921.P17024581899616918749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011932 n

end

end A011921.P17024581899616918749

namespace A011921

/-- `2*A011932(n)` -/
def P17024581899616918749.Spec : Prop :=
  ∀ n, P17024581899616918749.a n = A011921 n

end A011921

/-! ## A011921.P13510800933286678360

`A011932(A005843(n)/2)+A011932(n)`
-/

namespace A011921.P13510800933286678360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011932 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A011932 n

end

end A011921.P13510800933286678360

namespace A011921

/-- `A011932(A005843(n)/2)+A011932(n)` -/
def P13510800933286678360.Spec : Prop :=
  ∀ n, P13510800933286678360.a n = A011921 n

end A011921

/-! ## A011921.P8341106819124146822

`A011932(A005843(n)-n)+A011932(n)`
-/

namespace A011921.P8341106819124146822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011932 (A005843 n - (n : ℤ)).toNat + A011932 n

end

end A011921.P8341106819124146822

namespace A011921

/-- `A011932(A005843(n)-n)+A011932(n)` -/
def P8341106819124146822.Spec : Prop :=
  ∀ n, P8341106819124146822.a n = A011921 n

end A011921

/-!
# A011922: a(n) = 15*a(n-1) - 15*a(n-2) + a(n-3) with a(0)=1, a(1)=3, and a(2)=33.

The programs for A011922, the canonical program `A011922.P15150643118138840558` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011922 has offset 0).

The definition of A011922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*a(n-1)-15*a(n-2)+a(n-3)` (program `A011922.P15150643118138840558`, by `A011922.P15150643118138840558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011922.P15150643118138840558

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=33`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011922

/-- `15*a(n-1)-15*a(n-2)+a(n-3)` -/
def P15150643118138840558.Spec : Prop :=
  ∀ n, P15150643118138840558.a n = A011922 n

theorem P15150643118138840558.correct : P15150643118138840558.Spec := by
  intro n
  simp only [A011922]

end A011922

/-! ## A011922.P6309880334330776445

`((7+4*sqrt(3))^n+(7-4*sqrt(3))^n+4)/6`
-/

namespace A011922.P6309880334330776445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 4 * Real.sqrt (3 : ℝ)) ^ n + (7 - 4 * Real.sqrt (3 : ℝ)) ^ n + 4) / 6

end

end A011922.P6309880334330776445

namespace A011922

/-- `((7+4*sqrt(3))^n+(7-4*sqrt(3))^n+4)/6` -/
def P6309880334330776445.Spec : Prop :=
  ∀ n, P6309880334330776445.a n = (A011922 n : ℝ)

end A011922

/-! ## A011922.P1621666980532272960

`14*a(n-1)-(a(n-2)+8)` with `a(0)=1, a(1)=3`
-/

namespace A011922.P1621666980532272960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  14 * a (n - 1) - (a (n - 2) + 8)

end

end A011922.P1621666980532272960

namespace A011922

/-- `14*a(n-1)-(a(n-2)+8)` -/
def P1621666980532272960.Spec : Prop :=
  ∀ n, P1621666980532272960.a n = A011922 n

end A011922

/-! ## A011922.P13509601936404778724

`∑[14*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=30`
-/

namespace A011922.P13509601936404778724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 30] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011922.P13509601936404778724

namespace A011922

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P13509601936404778724.Spec : Prop :=
  ∀ n, P13509601936404778724.a n = A011922 n

end A011922

/-! ## A011922.P5550526833556766040

`A120892(2*n)`
-/

namespace A011922.P5550526833556766040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 (2 * n)

end

end A011922.P5550526833556766040

namespace A011922

/-- `A120892(2*n)` -/
def P5550526833556766040.Spec : Prop :=
  ∀ n, P5550526833556766040.a n = A011922 n

end A011922

/-! ## A011922.P4799456621680668394

`2*A098301(n)+1`
-/

namespace A011922.P4799456621680668394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098301 n + 1

end

end A011922.P4799456621680668394

namespace A011922

/-- `2*A098301(n)+1` -/
def P4799456621680668394.Spec : Prop :=
  ∀ n, P4799456621680668394.a n = A011922 n

end A011922

/-! ## A011922.P4139912013849980762

`abs(A097949(2*n)+1)`
-/

namespace A011922.P4139912013849980762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097949 (2 * n) + 1|

end

end A011922.P4139912013849980762

namespace A011922

/-- `abs(A097949(2*n)+1)` -/
def P4139912013849980762.Spec : Prop :=
  ∀ n, P4139912013849980762.a n = A011922 n

end A011922

/-! ## A011922.P5055926324579550250

`2*A001353(n)²+1`
-/

namespace A011922.P5055926324579550250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001353 n ^ 2 + 1

end

end A011922.P5055926324579550250

namespace A011922

/-- `2*A001353(n)²+1` -/
def P5055926324579550250.Spec : Prop :=
  ∀ n, P5055926324579550250.a n = A011922 n

end A011922

/-! ## A011922.P1408621284496463061

`2*A106707(n)²+1`
-/

namespace A011922.P1408621284496463061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106707 n ^ 2 + 1

end

end A011922.P1408621284496463061

namespace A011922

/-- `2*A106707(n)²+1` -/
def P1408621284496463061.Spec : Prop :=
  ∀ n, P1408621284496463061.a n = A011922 n

end A011922

/-!
# A011923: a(n) = floor(n*(n-1)*(n-2)*(n-3)/13).

The programs for A011923, the canonical program `A011923.P12080114618963175238` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011923 has offset 0).

The definition of A011923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011923.P12080114618963175238

`floor(24*C(n, 4)/13)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011923

/-- `floor(24*C(n, 4)/13)` -/
def P12080114618963175238.Spec : Prop :=
  ∀ n, P12080114618963175238.a n = A011923 n

theorem P12080114618963175238.correct : P12080114618963175238.Spec := by
  intro n
  simp only [A011923]

end A011923

/-! ## A011923.P3268774561129497116

`floor(A052762(n)/13)`
-/

namespace A011923.P3268774561129497116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 13⌋

end

end A011923.P3268774561129497116

namespace A011923

/-- `floor(A052762(n)/13)` -/
def P3268774561129497116.Spec : Prop :=
  ∀ n, P3268774561129497116.a n = A011923 n

end A011923

/-! ## A011923.P10870628451666915365

`floor(12*A034827(n)/13)`
-/

namespace A011923.P10870628451666915365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * A034827 n : ℚ) / 13⌋

end

end A011923.P10870628451666915365

namespace A011923

/-- `floor(12*A034827(n)/13)` -/
def P10870628451666915365.Spec : Prop :=
  ∀ n, P10870628451666915365.a n = A011923 n

end A011923

/-! ## A011923.P16294751517137555629

`floor((A001094(n)-n)/13)`
-/

namespace A011923.P16294751517137555629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001094 n - (n : ℤ) : ℚ) / 13⌋

end

end A011923.P16294751517137555629

namespace A011923

/-- `floor((A001094(n)-n)/13)` -/
def P16294751517137555629.Spec : Prop :=
  ∀ n, P16294751517137555629.a n = A011923 n

end A011923

/-! ## A011923.P10898331126736885239

`floor(gcd(A052787(n), A334281(n))/13)`
-/

namespace A011923.P10898331126736885239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A052787 n) (A334281 n) : ℚ) / 13⌋

end

end A011923.P10898331126736885239

namespace A011923

/-- `floor(gcd(A052787(n), A334281(n))/13)` -/
def P10898331126736885239.Spec : Prop :=
  ∀ n, P10898331126736885239.a n = A011923 n

end A011923

/-!
# A011924: Floor[n(n-1)(n-2)(n-3)/14].

The programs for A011924, the canonical program `A011924.P3550772095241482550` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011924 has offset 0).

The definition of A011924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011924.P3550772095241482550

`floor(n*(n-1)*(n-2)*(n-3)/14)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011924

/-- `floor(n*(n-1)*(n-2)*(n-3)/14)` -/
def P3550772095241482550.Spec : Prop :=
  ∀ n, P3550772095241482550.a n = A011924 n

theorem P3550772095241482550.correct : P3550772095241482550.Spec := by
  intro n
  simp only [A011924]

end A011924

/-! ## A011924.P10666429743163619598

`A082977(A000332(n)+1)`
-/

namespace A011924.P10666429743163619598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (A000332 n + 1).toNat

end

end A011924.P10666429743163619598

namespace A011924

/-- `A082977(A000332(n)+1)` -/
def P10666429743163619598.Spec : Prop :=
  ∀ n, P10666429743163619598.a n = A011924 n

end A011924

/-! ## A011924.P57868565762879549

`A083034(A000332(n)+1)`
-/

namespace A011924.P57868565762879549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083034 (A000332 n + 1).toNat

end

end A011924.P57868565762879549

namespace A011924

/-- `A083034(A000332(n)+1)` -/
def P57868565762879549.Spec : Prop :=
  ∀ n, P57868565762879549.a n = A011924 n

end A011924

/-! ## A011924.P4952701465632231486

`A082977(A014626(n)-n+1)`
-/

namespace A011924.P4952701465632231486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (A014626 n - (n : ℤ) + 1).toNat

end

end A011924.P4952701465632231486

namespace A011924

/-- `A082977(A014626(n)-n+1)` -/
def P4952701465632231486.Spec : Prop :=
  ∀ n, P4952701465632231486.a n = A011924 n

end A011924

/-! ## A011924.P1354999617883584802

`A004524(A011917(n))`
-/

namespace A011924.P1354999617883584802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A011917 n).toNat

end

end A011924.P1354999617883584802

namespace A011924

/-- `A004524(A011917(n))` -/
def P1354999617883584802.Spec : Prop :=
  ∀ n, P1354999617883584802.a n = A011924 n

end A011924

/-!
# A011925: a(n) = floor(n*(n-1)*(n-2)*(n-3)/15).

The programs for A011925, the canonical program `A011925.P16844350694602552610` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011925 has offset 0).

The definition of A011925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011925.P16844350694602552610

`floor(8/5*C(n, 4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011925

/-- `floor(8/5*C(n, 4))` -/
def P16844350694602552610.Spec : Prop :=
  ∀ n, P16844350694602552610.a n = A011925 n

theorem P16844350694602552610.correct : P16844350694602552610.Spec := by
  intro n
  simp only [A011925]

end A011925

/-! ## A011925.P11808870433921062349

`floor(A011915(n)/3)`
-/

namespace A011925.P11808870433921062349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011915 n : ℚ) / 3⌋

end

end A011925.P11808870433921062349

namespace A011925

/-- `floor(A011915(n)/3)` -/
def P11808870433921062349.Spec : Prop :=
  ∀ n, P11808870433921062349.a n = A011925 n

end A011925

/-! ## A011925.P10885360511370136544

`floor(A052762(n)/15)`
-/

namespace A011925.P10885360511370136544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 15⌋

end

end A011925.P10885360511370136544

namespace A011925

/-- `floor(A052762(n)/15)` -/
def P10885360511370136544.Spec : Prop :=
  ∀ n, P10885360511370136544.a n = A011925 n

end A011925

/-! ## A011925.P961535361763188449

`floor(8/5*A000332(n))`
-/

namespace A011925.P961535361763188449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) / 5 * (A000332 n : ℚ)⌋

end

end A011925.P961535361763188449

namespace A011925

/-- `floor(8/5*A000332(n))` -/
def P961535361763188449.Spec : Prop :=
  ∀ n, P961535361763188449.a n = A011925 n

end A011925

/-! ## A011925.P13460036967337772687

`A011930(n)+2*A011795(n)`
-/

namespace A011925.P13460036967337772687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011930 n + 2 * A011795 n

end

end A011925.P13460036967337772687

namespace A011925

/-- `A011930(n)+2*A011795(n)` -/
def P13460036967337772687.Spec : Prop :=
  ∀ n, P13460036967337772687.a n = A011925 n

end A011925

/-!
# A011926: a(n) = floor(n*(n-1)*(n-2)*(n-3)/16).

The programs for A011926, the canonical program `A011926.P6985788235544110927` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011926 has offset 0).

The definition of A011926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)*(n-3)/16)` (program `A011926.P6985788235544110927`, by `A011926.P6985788235544110927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011926.P6985788235544110927

`floor(n*(n-1)*(n-2)*(n-3)/16)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011926

/-- `floor(n*(n-1)*(n-2)*(n-3)/16)` -/
def P6985788235544110927.Spec : Prop :=
  ∀ n, P6985788235544110927.a n = A011926 n

theorem P6985788235544110927.correct : P6985788235544110927.Spec := by
  intro n
  simp only [A011926]

end A011926

/-! ## A011926.P1171085991365987142

`and(3*C(n, 4), -2)/2`
-/

namespace A011926.P1171085991365987142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * Nat.choose n 4 : ℤ) (-2) : ℚ) / 2

end

end A011926.P1171085991365987142

namespace A011926

/-- `and(3*C(n, 4), -2)/2` -/
def P1171085991365987142.Spec : Prop :=
  ∀ n, P1171085991365987142.a n = (A011926 n : ℚ)

end A011926

/-! ## A011926.P4664849715928270321

`floor(C(n, 4)/2)+C(n, 4)`
-/

namespace A011926.P4664849715928270321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 4 : ℚ) / 2⌋ + (Nat.choose n 4 : ℤ)

end

end A011926.P4664849715928270321

namespace A011926

/-- `floor(C(n, 4)/2)+C(n, 4)` -/
def P4664849715928270321.Spec : Prop :=
  ∀ n, P4664849715928270321.a n = A011926 n

end A011926

/-! ## A011926.P16023147103627414713

`ceil((C(C(abs(1-n), 2), 2)-1)/2)`
-/

namespace A011926.P16023147103627414713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (Nat.choose |1 - (n : ℤ)|.toNat 2) 2 : ℤ) - 1 : ℚ) / 2⌉

end

end A011926.P16023147103627414713

namespace A011926

/-- `ceil((C(C(abs(1-n), 2), 2)-1)/2)` -/
def P16023147103627414713.Spec : Prop :=
  ∀ n, P16023147103627414713.a n = A011926 n

end A011926

/-! ## A011926.P10359221965896049602

`ceil((A052762(n)/4-2)/4)`
-/

namespace A011926.P10359221965896049602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A052762 n : ℚ) / 4 - 2) / 4⌉

end

end A011926.P10359221965896049602

namespace A011926

/-- `ceil((A052762(n)/4-2)/4)` -/
def P10359221965896049602.Spec : Prop :=
  ∀ n, P10359221965896049602.a n = A011926 n

end A011926

/-! ## A011926.P15997327854916774360

`A000332(n)+floor(A000332(n)/2)`
-/

namespace A011926.P15997327854916774360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + ⌊(A000332 n : ℚ) / 2⌋

end

end A011926.P15997327854916774360

namespace A011926

/-- `A000332(n)+floor(A000332(n)/2)` -/
def P15997327854916774360.Spec : Prop :=
  ∀ n, P15997327854916774360.a n = A011926 n

end A011926

/-! ## A011926.P14909725215162344831

`A011848(C(abs(1-n), 2))`
-/

namespace A011926.P14909725215162344831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (Nat.choose |1 - (n : ℤ)|.toNat 2)

end

end A011926.P14909725215162344831

namespace A011926

/-- `A011848(C(abs(1-n), 2))` -/
def P14909725215162344831.Spec : Prop :=
  ∀ n, P14909725215162344831.a n = A011926 n

end A011926

/-! ## A011926.P16963165525608249696

`A011848(∑[n-2]+3)`
-/

namespace A011926.P16963165525608249696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A011926.P16963165525608249696

namespace A011926

/-- `A011848(∑[n-2]+3)` -/
def P16963165525608249696.Spec : Prop :=
  ∀ n, P16963165525608249696.a n = A011926 n

end A011926

/-! ## A011926.P3655622312624892758

`A118729((2-n)²+n)`
-/

namespace A011926.P3655622312624892758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 ((2 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A011926.P3655622312624892758

namespace A011926

/-- `A118729((2-n)²+n)` -/
def P3655622312624892758.Spec : Prop :=
  ∀ n, P3655622312624892758.a n = A011926 n

end A011926

/-!
# A011927: a(n) = floor(n*(n-1)*(n-2)*(n-3)/17).

The programs for A011927, the canonical program `A011927.P13248287076487905106` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011927 has offset 0).

The definition of A011927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011927.P13248287076487905106

`floor(24*C(n, 4)/17)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011927

/-- `floor(24*C(n, 4)/17)` -/
def P13248287076487905106.Spec : Prop :=
  ∀ n, P13248287076487905106.a n = A011927 n

theorem P13248287076487905106.correct : P13248287076487905106.Spec := by
  intro n
  simp only [A011927]

end A011927

/-! ## A011927.P8685111181490400098

`floor(((1-n)²-n)²/17)`
-/

namespace A011927.P8685111181490400098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((1 - (n : ℤ)) ^ 2 - (n : ℤ)) ^ 2 : ℚ) / 17⌋

end

end A011927.P8685111181490400098

namespace A011927

/-- `floor(((1-n)²-n)²/17)` -/
def P8685111181490400098.Spec : Prop :=
  ∀ n, P8685111181490400098.a n = A011927 n

end A011927

/-! ## A011927.P1690718184250898418

`ceil((n-A023443(n)²)²/17)-1`
-/

namespace A011927.P1690718184250898418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - A023443 n ^ 2) ^ 2 : ℚ) / 17⌉ - 1

end

end A011927.P1690718184250898418

namespace A011927

/-- `ceil((n-A023443(n)²)²/17)-1` -/
def P1690718184250898418.Spec : Prop :=
  ∀ n, P1690718184250898418.a n = A011927 n

end A011927

/-! ## A011927.P14512737494772058889

`A116939(C(n, 4)²)`
-/

namespace A011927.P14512737494772058889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Nat.choose n 4 ^ 2)

end

end A011927.P14512737494772058889

namespace A011927

/-- `A116939(C(n, 4)²)` -/
def P14512737494772058889.Spec : Prop :=
  ∀ n, P14512737494772058889.a n = A011927 n

end A011927

/-! ## A011927.P13204727602462885898

`A000196(2*C(n, 4)²)`
-/

namespace A011927.P13204727602462885898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * Nat.choose n 4 ^ 2)

end

end A011927.P13204727602462885898

namespace A011927

/-- `A000196(2*C(n, 4)²)` -/
def P13204727602462885898.Spec : Prop :=
  ∀ n, P13204727602462885898.a n = A011927 n

end A011927

/-!
# A011928: a(n) = floor(n(n-1)(n-2)(n-3)/18).

The programs for A011928, the canonical program `A011928.P11770991293682091360` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011928 has offset 0).

The definition of A011928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011928.P11770991293682091360

`floor(4/3*C(n, 4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011928

/-- `floor(4/3*C(n, 4))` -/
def P11770991293682091360.Spec : Prop :=
  ∀ n, P11770991293682091360.a n = A011928 n

theorem P11770991293682091360.correct : P11770991293682091360.Spec := by
  intro n
  simp only [A011928]

end A011928

/-! ## A011928.P7472473132097489419

`floor(C(n, 4)/3)+C(n, 4)`
-/

namespace A011928.P7472473132097489419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 4 : ℚ) / 3⌋ + (Nat.choose n 4 : ℤ)

end

end A011928.P7472473132097489419

namespace A011928

/-- `floor(C(n, 4)/3)+C(n, 4)` -/
def P7472473132097489419.Spec : Prop :=
  ∀ n, P7472473132097489419.a n = A011928 n

end A011928

/-! ## A011928.P5057447681807484421

`floor(((1-n)²-n)²/18)`
-/

namespace A011928.P5057447681807484421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((1 - (n : ℤ)) ^ 2 - (n : ℤ)) ^ 2 : ℚ) / 18⌋

end

end A011928.P5057447681807484421

namespace A011928

/-- `floor(((1-n)²-n)²/18)` -/
def P5057447681807484421.Spec : Prop :=
  ∀ n, P5057447681807484421.a n = A011928 n

end A011928

/-! ## A011928.P8197791547678781060

`ceil(4/3*C(n, 4)-n/(n+1))`
-/

namespace A011928.P8197791547678781060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 3 * (Nat.choose n 4 : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌉

end

end A011928.P8197791547678781060

namespace A011928

/-- `ceil(4/3*C(n, 4)-n/(n+1))` -/
def P8197791547678781060.Spec : Prop :=
  ∀ n, P8197791547678781060.a n = A011928 n

end A011928

/-! ## A011928.P15247945705410460750

`A000332(n)+floor(A000332(n)/3)`
-/

namespace A011928.P15247945705410460750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + ⌊(A000332 n : ℚ) / 3⌋

end

end A011928.P15247945705410460750

namespace A011928

/-- `A000332(n)+floor(A000332(n)/3)` -/
def P15247945705410460750.Spec : Prop :=
  ∀ n, P15247945705410460750.a n = A011928 n

end A011928

/-!
# A011929: a(n) = floor(n(n-1)(n-2)(n-3)/19).

The programs for A011929, the canonical program `A011929.P3134257908391706269` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011929 has offset 0).

The definition of A011929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011929.P3134257908391706269

`floor(24*C(n, 4)/19)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011929

/-- `floor(24*C(n, 4)/19)` -/
def P3134257908391706269.Spec : Prop :=
  ∀ n, P3134257908391706269.a n = A011929 n

theorem P3134257908391706269.correct : P3134257908391706269.Spec := by
  intro n
  simp only [A011929]

end A011929

/-! ## A011929.P1327699837154665232

`floor(A052762(n)/19)`
-/

namespace A011929.P1327699837154665232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 19⌋

end

end A011929.P1327699837154665232

namespace A011929

/-- `floor(A052762(n)/19)` -/
def P1327699837154665232.Spec : Prop :=
  ∀ n, P1327699837154665232.a n = A011929 n

end A011929

/-! ## A011929.P956919566258153568

`floor(12*A034827(n)/19)`
-/

namespace A011929.P956919566258153568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * A034827 n : ℚ) / 19⌋

end

end A011929.P956919566258153568

namespace A011929

/-- `floor(12*A034827(n)/19)` -/
def P956919566258153568.Spec : Prop :=
  ∀ n, P956919566258153568.a n = A011929 n

end A011929

/-! ## A011929.P13772557882228845032

`floor((A001094(n)-n)/19)`
-/

namespace A011929.P13772557882228845032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001094 n - (n : ℤ) : ℚ) / 19⌋

end

end A011929.P13772557882228845032

namespace A011929

/-- `floor((A001094(n)-n)/19)` -/
def P13772557882228845032.Spec : Prop :=
  ∀ n, P13772557882228845032.a n = A011929 n

end A011929

/-! ## A011929.P12078977220323728703

`floor(gcd(A052787(n), A334281(n))/19)`
-/

namespace A011929.P12078977220323728703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A052787 n) (A334281 n) : ℚ) / 19⌋

end

end A011929.P12078977220323728703

namespace A011929

/-- `floor(gcd(A052787(n), A334281(n))/19)` -/
def P12078977220323728703.Spec : Prop :=
  ∀ n, P12078977220323728703.a n = A011929 n

end A011929

/-!
# A011930: a(n) = floor(n(n-1)(n-2)(n-3)/20).

The programs for A011930, the canonical program `A011930.P8849468114221595567` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011930 has offset 0).

The definition of A011930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011930.P8849468114221595567

`floor(6*C(n, 4)/5)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011930

/-- `floor(6*C(n, 4)/5)` -/
def P8849468114221595567.Spec : Prop :=
  ∀ n, P8849468114221595567.a n = A011930 n

theorem P8849468114221595567.correct : P8849468114221595567.Spec := by
  intro n
  simp only [A011930]

end A011930

/-! ## A011930.P4285530718870749866

`round(6/5*C(n, 4))`
-/

namespace A011930.P4285530718870749866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 : ℚ) / 5 * (Nat.choose n 4 : ℚ))

end

end A011930.P4285530718870749866

namespace A011930

/-- `round(6/5*C(n, 4))` -/
def P4285530718870749866.Spec : Prop :=
  ∀ n, P4285530718870749866.a n = A011930 n

end A011930

/-! ## A011930.P8066219425605991600

`floor(C(n, 4)/5)+C(n, 4)`
-/

namespace A011930.P8066219425605991600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 4 : ℚ) / 5⌋ + (Nat.choose n 4 : ℤ)

end

end A011930.P8066219425605991600

namespace A011930

/-- `floor(C(n, 4)/5)+C(n, 4)` -/
def P8066219425605991600.Spec : Prop :=
  ∀ n, P8066219425605991600.a n = A011930 n

end A011930

/-! ## A011930.P13152167938401850846

`A011915(n)/4`
-/

namespace A011930.P13152167938401850846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011915 n : ℚ) / 4

end

end A011930.P13152167938401850846

namespace A011930

/-- `A011915(n)/4` -/
def P13152167938401850846.Spec : Prop :=
  ∀ n, P13152167938401850846.a n = (A011930 n : ℚ)

end A011930

/-! ## A011930.P972877018792796636

`floor(A052762(n)/20)`
-/

namespace A011930.P972877018792796636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 20⌋

end

end A011930.P972877018792796636

namespace A011930

/-- `floor(A052762(n)/20)` -/
def P972877018792796636.Spec : Prop :=
  ∀ n, P972877018792796636.a n = A011930 n

end A011930

/-! ## A011930.P9975580871352286222

`A011795(n)+A000332(n)`
-/

namespace A011930.P9975580871352286222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 n + A000332 n

end

end A011930.P9975580871352286222

namespace A011930

/-- `A011795(n)+A000332(n)` -/
def P9975580871352286222.Spec : Prop :=
  ∀ n, P9975580871352286222.a n = A011930 n

end A011930

/-! ## A011930.P3498051712206196454

`A002266(n)+∑[A011887(n)]-A011887(n)`
-/

namespace A011930.P3498051712206196454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + (∑ j ∈ Finset.range (n + 1), f1 j - A011887 n)

end

end A011930.P3498051712206196454

namespace A011930

/-- `A002266(n)+∑[A011887(n)]-A011887(n)` -/
def P3498051712206196454.Spec : Prop :=
  ∀ n, P3498051712206196454.a n = A011930 n

end A011930

/-! ## A011930.P638189750877053887

`floor(A000332(n)+A000389(n+1)/(n+1))`
-/

namespace A011930.P638189750877053887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000332 n : ℚ) + (A000389 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A011930.P638189750877053887

namespace A011930

/-- `floor(A000332(n)+A000389(n+1)/(n+1))` -/
def P638189750877053887.Spec : Prop :=
  ∀ n, P638189750877053887.a n = A011930 n

end A011930

/-! ## A011930.P6788684263980364103

`A000389(n+1)+A011795(n)-A000389(n)`
-/

namespace A011930.P6788684263980364103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) + (A011795 n - A000389 n)

end

end A011930.P6788684263980364103

namespace A011930

/-- `A000389(n+1)+A011795(n)-A000389(n)` -/
def P6788684263980364103.Spec : Prop :=
  ∀ n, P6788684263980364103.a n = A011930 n

end A011930

/-! ## A011930.P6525494522561956479

`A011858(∑[n-2]+3)`
-/

namespace A011930.P6525494522561956479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A011930.P6525494522561956479

namespace A011930

/-- `A011858(∑[n-2]+3)` -/
def P6525494522561956479.Spec : Prop :=
  ∀ n, P6525494522561956479.a n = A011930 n

end A011930

/-!
# A011931: a(n) = floor(n*(n-1)*(n-2)*(n-3)/21).

The programs for A011931, the canonical program `A011931.P8156587233389383712` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011931 has offset 0).

The definition of A011931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011931.P8156587233389383712

`floor(8/7*C(n, 4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011931

/-- `floor(8/7*C(n, 4))` -/
def P8156587233389383712.Spec : Prop :=
  ∀ n, P8156587233389383712.a n = A011931 n

theorem P8156587233389383712.correct : P8156587233389383712.Spec := by
  intro n
  simp only [A011931]

end A011931

/-! ## A011931.P15327023686208587557

`floor(((1-n)²-n)²/21)`
-/

namespace A011931.P15327023686208587557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((1 - (n : ℤ)) ^ 2 - (n : ℤ)) ^ 2 : ℚ) / 21⌋

end

end A011931.P15327023686208587557

namespace A011931

/-- `floor(((1-n)²-n)²/21)` -/
def P15327023686208587557.Spec : Prop :=
  ∀ n, P15327023686208587557.a n = A011931 n

end A011931

/-! ## A011931.P13893044218149740202

`round((A011917(n)-1)/3)`
-/

namespace A011931.P13893044218149740202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A011917 n - 1 : ℚ) / 3)

end

end A011931.P13893044218149740202

namespace A011931

/-- `round((A011917(n)-1)/3)` -/
def P13893044218149740202.Spec : Prop :=
  ∀ n, P13893044218149740202.a n = A011931 n

end A011931

/-! ## A011931.P8662543913053734975

`A000332(n)+floor(A000332(n)/7)`
-/

namespace A011931.P8662543913053734975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + ⌊(A000332 n : ℚ) / 7⌋

end

end A011931.P8662543913053734975

namespace A011931

/-- `A000332(n)+floor(A000332(n)/7)` -/
def P8662543913053734975.Spec : Prop :=
  ∀ n, P8662543913053734975.a n = A011931 n

end A011931

/-! ## A011931.P11260184121766832706

`A011924(n)-A004396(A011938(n))`
-/

namespace A011931.P11260184121766832706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011924 n - A004396 (A011938 n).toNat

end

end A011931.P11260184121766832706

namespace A011931

/-- `A011924(n)-A004396(A011938(n))` -/
def P11260184121766832706.Spec : Prop :=
  ∀ n, P11260184121766832706.a n = A011931 n

end A011931

/-!
# A011932: a(n) = floor( n*(n-1)*(n-2)*(n-3)/22 ).

The programs for A011932, the canonical program `A011932.P6277804829078755538` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011932 has offset 0).

The definition of A011932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011932.P6277804829078755538

`floor(12*C(n, 4)/11)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011932

/-- `floor(12*C(n, 4)/11)` -/
def P6277804829078755538.Spec : Prop :=
  ∀ n, P6277804829078755538.a n = A011932 n

theorem P6277804829078755538.correct : P6277804829078755538.Spec := by
  intro n
  simp only [A011932]

end A011932

/-! ## A011932.P314522271185250181

`floor(n*(n-1)*(n-2)*(n-3)/22)`
-/

namespace A011932.P314522271185250181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * ((n : ℤ) - 3))) : ℚ) / 22⌋

end

end A011932.P314522271185250181

namespace A011932

/-- `floor(n*(n-1)*(n-2)*(n-3)/22)` -/
def P314522271185250181.Spec : Prop :=
  ∀ n, P314522271185250181.a n = A011932 n

end A011932

/-! ## A011932.P6842182030514075507

`round(12*C(n, 4)/11)`
-/

namespace A011932.P6842182030514075507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((12 * Nat.choose n 4 : ℚ) / 11)

end

end A011932.P6842182030514075507

namespace A011932

/-- `round(12*C(n, 4)/11)` -/
def P6842182030514075507.Spec : Prop :=
  ∀ n, P6842182030514075507.a n = A011932 n

end A011932

/-! ## A011932.P5785918740320153967

`A011921(n)/2`
-/

namespace A011932.P5785918740320153967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011921 n : ℚ) / 2

end

end A011932.P5785918740320153967

namespace A011932

/-- `A011921(n)/2` -/
def P5785918740320153967.Spec : Prop :=
  ∀ n, P5785918740320153967.a n = (A011932 n : ℚ)

end A011932

/-! ## A011932.P13260525005970617691

`round(A052762(n)/22)`
-/

namespace A011932.P13260525005970617691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052762 n : ℚ) / 22)

end

end A011932.P13260525005970617691

namespace A011932

/-- `round(A052762(n)/22)` -/
def P13260525005970617691.Spec : Prop :=
  ∀ n, P13260525005970617691.a n = A011932 n

end A011932

/-!
# A011933: a(n) = floor( n*(n-1)*(n-2)*(n-3)/23 ).

The programs for A011933, the canonical program `A011933.P12464558890824975575` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011933 has offset 0).

The definition of A011933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011933.P12464558890824975575

`floor(24*C(n, 4)/23)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011933

/-- `floor(24*C(n, 4)/23)` -/
def P12464558890824975575.Spec : Prop :=
  ∀ n, P12464558890824975575.a n = A011933 n

theorem P12464558890824975575.correct : P12464558890824975575.Spec := by
  intro n
  simp only [A011933]

end A011933

/-! ## A011933.P7543170420172210854

`floor(n*(n-1)*(n-2)*(n-3)/23)`
-/

namespace A011933.P7543170420172210854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * ((n : ℤ) - 3))) : ℚ) / 23⌋

end

end A011933.P7543170420172210854

namespace A011933

/-- `floor(n*(n-1)*(n-2)*(n-3)/23)` -/
def P7543170420172210854.Spec : Prop :=
  ∀ n, P7543170420172210854.a n = A011933 n

end A011933

/-! ## A011933.P17241310294823802594

`floor(C(n, 4)/23)+C(n, 4)`
-/

namespace A011933.P17241310294823802594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 4 : ℚ) / 23⌋ + (Nat.choose n 4 : ℤ)

end

end A011933.P17241310294823802594

namespace A011933

/-- `floor(C(n, 4)/23)+C(n, 4)` -/
def P17241310294823802594.Spec : Prop :=
  ∀ n, P17241310294823802594.a n = A011933 n

end A011933

/-! ## A011933.P1717867792983165166

`A000332(n)+floor(A000332(n)/23)`
-/

namespace A011933.P1717867792983165166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + ⌊(A000332 n : ℚ) / 23⌋

end

end A011933.P1717867792983165166

namespace A011933

/-- `A000332(n)+floor(A000332(n)/23)` -/
def P1717867792983165166.Spec : Prop :=
  ∀ n, P1717867792983165166.a n = A011933 n

end A011933

/-! ## A011933.P4109141828267331278

`A274399(C(A120126(n), 4))`
-/

namespace A011933.P4109141828267331278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (Nat.choose (A120126 n).toNat 4)

end

end A011933.P4109141828267331278

namespace A011933

/-- `A274399(C(A120126(n), 4))` -/
def P4109141828267331278.Spec : Prop :=
  ∀ n, P4109141828267331278.a n = A011933 n

end A011933

/-!
# A011934: a(n) = |1^3 - 2^3 + 3^3 - 4^3 + ... + (-1)^(n+1)*n^3|.

The programs for A011934, the canonical program `A011934.P12139813371651458028` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011934 has offset 0).

The definition of A011934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011934.P12139813371651458028

`n^3-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011934

/-- `n^3-a(n-1)` -/
def P12139813371651458028.Spec : Prop :=
  ∀ n, P12139813371651458028.a n = A011934 n

theorem P12139813371651458028.correct : P12139813371651458028.Spec := by
  intro n
  simp only [A011934]

end A011934

/-! ## A011934.P3315119509435220590

`ceil((n+1)²*(2*n-1)/4)`
-/

namespace A011934.P3315119509435220590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) * (((2 * n : ℤ) - 1 : ℚ) / 4)⌉

end

end A011934.P3315119509435220590

namespace A011934

/-- `ceil((n+1)²*(2*n-1)/4)` -/
def P3315119509435220590.Spec : Prop :=
  ∀ n, P3315119509435220590.a n = A011934 n

end A011934

/-! ## A011934.P14471292475094279894

`a(n-1)+A032528(n)` with `a(0)=0`
-/

namespace A011934.P14471292475094279894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A032528 n

end

end A011934.P14471292475094279894

namespace A011934

/-- `a(n-1)+A032528(n)` -/
def P14471292475094279894.Spec : Prop :=
  ∀ n, P14471292475094279894.a n = A011934 n

end A011934

/-! ## A011934.P3903315019252790662

`∑[n²]+∑[∑[and(n, -2)]]`
-/

namespace A011934.P3903315019252790662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A011934.P3903315019252790662

namespace A011934

/-- `∑[n²]+∑[∑[and(n, -2)]]` -/
def P3903315019252790662.Spec : Prop :=
  ∀ n, P3903315019252790662.a n = A011934 n

end A011934

/-! ## A011934.P5617603770793513945

`∑[∑[a(n-2)+6]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A011934.P5617603770793513945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011934.P5617603770793513945

namespace A011934

/-- `∑[∑[a(n-2)+6]]` -/
def P5617603770793513945.Spec : Prop :=
  ∀ n, (P5617603770793513945.a n : ℤ) = A011934 n

end A011934

/-! ## A011934.P7208619470795644847

`Δ[C(n, 2)²-a(n-1)]` with `a(0)=0`
-/

namespace A011934.P7208619470795644847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.choose n 2 ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011934.P7208619470795644847

namespace A011934

/-- `Δ[C(n, 2)²-a(n-1)]` -/
def P7208619470795644847.Spec : Prop :=
  ∀ n, P7208619470795644847.a n = A011934 n

end A011934

/-! ## A011934.P17997984997861321395

`abs(a(n-1)-n*n²)` with `a(0)=0`
-/

namespace A011934.P17997984997861321395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - (n * n ^ 2 : ℤ)|

end

end A011934.P17997984997861321395

namespace A011934

/-- `abs(a(n-1)-n*n²)` -/
def P17997984997861321395.Spec : Prop :=
  ∀ n, P17997984997861321395.a n = A011934 n

end A011934

/-! ## A011934.P15872317408689960030

`floor(n*n²-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A011934.P15872317408689960030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * n ^ 2 : ℤ) - a (n - 1)

end

end A011934.P15872317408689960030

namespace A011934

/-- `floor(n*n²-a(n-1))` -/
def P15872317408689960030.Spec : Prop :=
  ∀ n, P15872317408689960030.a n = A011934 n

theorem P15872317408689960030.correct : P15872317408689960030.Spec := by
  intro n
  simp only [A011934, Nat.add_sub_cancel, A011934.P15872317408689960030.a, A011934.P12139813371651458028.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A011934

/-! ## A011934.P15238375094868736668

`n*n²-ceil(a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A011934.P15238375094868736668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * n ^ 2 : ℤ) - a (n - 1)

end

end A011934.P15238375094868736668

namespace A011934

/-- `n*n²-ceil(a(n-1))` -/
def P15238375094868736668.Spec : Prop :=
  ∀ n, P15238375094868736668.a n = A011934 n

theorem P15238375094868736668.correct : P15238375094868736668.Spec := by
  intro n
  simp only [A011934, Nat.add_sub_cancel, A011934.P15238375094868736668.a, A011934.P12139813371651458028.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A011934

/-! ## A011934.P5644844164867836748

`round(n*n²-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A011934.P5644844164867836748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * n ^ 2 : ℤ) - a (n - 1)

end

end A011934.P5644844164867836748

namespace A011934

/-- `round(n*n²-a(n-1))` -/
def P5644844164867836748.Spec : Prop :=
  ∀ n, P5644844164867836748.a n = A011934 n

theorem P5644844164867836748.correct : P5644844164867836748.Spec := by
  intro n
  simp only [A011934, Nat.add_sub_cancel, A011934.P5644844164867836748.a, A011934.P12139813371651458028.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A011934

/-! ## A011934.P5790416091696341902

`n*(n²-a(n-1)/n)` with `a(0)=0`
-/

namespace A011934.P5790416091696341902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((n ^ 2 : ℚ) - a (n - 1) / (n : ℚ))

end

end A011934.P5790416091696341902

namespace A011934

/-- `n*(n²-a(n-1)/n)` -/
def P5790416091696341902.Spec : Prop :=
  ∀ n, P5790416091696341902.a n = (A011934 n : ℚ)

end A011934

/-! ## A011934.P2724912531411209583

`n*n*n-floor(a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A011934.P2724912531411209583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * (n * n) : ℤ) - a (n - 1)

end

end A011934.P2724912531411209583

namespace A011934

/-- `n*n*n-floor(a(n-1))` -/
def P2724912531411209583.Spec : Prop :=
  ∀ n, P2724912531411209583.a n = A011934 n

theorem P2724912531411209583.correct : P2724912531411209583.Spec := by
  intro n
  simp only [A011934, Nat.add_sub_cancel, A011934.P2724912531411209583.a, A011934.P12139813371651458028.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A011934

/-! ## A011934.P1570173324221750744

`floor(record[(2*n+1)*((n-1)/2)²])`
-/

namespace A011934.P1570173324221750744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (((n : ℤ) - 1 : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A011934.P1570173324221750744

namespace A011934

/-- `floor(record[(2*n+1)*((n-1)/2)²])` -/
def P1570173324221750744.Spec : Prop :=
  ∀ n, P1570173324221750744.a n = A011934 n

end A011934

/-! ## A011934.P2180256518993964629

`round(record[(2*n+1)*((n-1)/2)²])`
-/

namespace A011934.P2180256518993964629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (((n : ℤ) - 1 : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A011934.P2180256518993964629

namespace A011934

/-- `round(record[(2*n+1)*((n-1)/2)²])` -/
def P2180256518993964629.Spec : Prop :=
  ∀ n, P2180256518993964629.a n = A011934 n

end A011934

/-! ## A011934.P2743459816747365449

`n*(n²+1)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A011934.P2743459816747365449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * (n ^ 2 + 1) : ℤ) - (a (n - 1) + (n : ℤ))

end

end A011934.P2743459816747365449

namespace A011934

/-- `n*(n²+1)-(a(n-1)+n)` -/
def P2743459816747365449.Spec : Prop :=
  ∀ n, P2743459816747365449.a n = A011934 n

theorem P2743459816747365449.correct : P2743459816747365449.Spec := by
  intro n
  simp only [A011934, Nat.add_sub_cancel, A011934.P2743459816747365449.a, A011934.P12139813371651458028.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A011934

/-! ## A011934.P13700100081771801243

`n-a(n-1)-n*(1-n²)` with `a(0)=0`
-/

namespace A011934.P13700100081771801243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (n - 1) - (n : ℤ) * (1 - (n ^ 2 : ℤ))

end

end A011934.P13700100081771801243

namespace A011934

/-- `n-a(n-1)-n*(1-n²)` -/
def P13700100081771801243.Spec : Prop :=
  ∀ n, P13700100081771801243.a n = A011934 n

theorem P13700100081771801243.correct : P13700100081771801243.Spec := by
  intro n
  simp only [A011934, Nat.add_sub_cancel, A011934.P13700100081771801243.a, A011934.P12139813371651458028.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A011934

/-! ## A011934.P16995519848554855178

`lcm(floor(acot(n))!, ∑[(-1)^n*n^3])`
-/

namespace A011934.P16995519848554855178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (n ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011934.P16995519848554855178

namespace A011934

/-- `lcm(floor(acot(n))!, ∑[(-1)^n*n^3])` -/
def P16995519848554855178.Spec : Prop :=
  ∀ n, (P16995519848554855178.a n : ℤ) = A011934 n

end A011934

/-! ## A011934.P14914568597720835455

`abs(A232599(n))`
-/

namespace A011934.P14914568597720835455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232599 n|

end

end A011934.P14914568597720835455

namespace A011934

/-- `abs(A232599(n))` -/
def P14914568597720835455.Spec : Prop :=
  ∀ n, P14914568597720835455.a n = A011934 n

end A011934

/-! ## A011934.P15939389084677660625

`∑[A032528(n)]`
-/

namespace A011934.P15939389084677660625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011934.P15939389084677660625

namespace A011934

/-- `∑[A032528(n)]` -/
def P15939389084677660625.Spec : Prop :=
  ∀ n, P15939389084677660625.a n = A011934 n

end A011934

/-! ## A011934.P17535037350681366003

`A256328(n)-n^3`
-/

namespace A011934.P17535037350681366003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256328 n - (n ^ 3 : ℤ)

end

end A011934.P17535037350681366003

namespace A011934

/-- `A256328(n)-n^3` -/
def P17535037350681366003.Spec : Prop :=
  ∀ n, P17535037350681366003.a n = A011934 n

end A011934

/-!
# A011935: a(n) = floor( n*(n-1)*(n-2)*(n-3)/25 ).

The programs for A011935, the canonical program `A011935.P7054713943942274274` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011935 has offset 0).

The definition of A011935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011935.P7054713943942274274

`floor(24*C(n, 4)/25)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011935

/-- `floor(24*C(n, 4)/25)` -/
def P7054713943942274274.Spec : Prop :=
  ∀ n, P7054713943942274274.a n = A011935 n

theorem P7054713943942274274.correct : P7054713943942274274.Spec := by
  intro n
  simp only [A011935]

end A011935

/-! ## A011935.P3357438621656078300

`floor(A011915(n)/5)`
-/

namespace A011935.P3357438621656078300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011915 n : ℚ) / 5⌋

end

end A011935.P3357438621656078300

namespace A011935

/-- `floor(A011915(n)/5)` -/
def P3357438621656078300.Spec : Prop :=
  ∀ n, P3357438621656078300.a n = A011935 n

end A011935

/-! ## A011935.P14109147181156058889

`floor(A052762(n)/25)`
-/

namespace A011935.P14109147181156058889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 25⌋

end

end A011935.P14109147181156058889

namespace A011935

/-- `floor(A052762(n)/25)` -/
def P14109147181156058889.Spec : Prop :=
  ∀ n, P14109147181156058889.a n = A011935 n

end A011935

/-! ## A011935.P12657405072010944970

`floor(A052768(n)/25)`
-/

namespace A011935.P12657405072010944970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052768 n : ℚ) / 25⌋

end

end A011935.P12657405072010944970

namespace A011935

/-- `floor(A052768(n)/25)` -/
def P12657405072010944970.Spec : Prop :=
  ∀ n, P12657405072010944970.a n = A011935 n

end A011935

/-! ## A011935.P2450880792046868644

`floor((A001094(n)-n)/25)`
-/

namespace A011935.P2450880792046868644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001094 n - (n : ℤ) : ℚ) / 25⌋

end

end A011935.P2450880792046868644

namespace A011935

/-- `floor((A001094(n)-n)/25)` -/
def P2450880792046868644.Spec : Prop :=
  ∀ n, P2450880792046868644.a n = A011935 n

end A011935

/-! ## A011935.P10150663773063317603

`floor(gcd(A052787(n), A334281(n))/25)`
-/

namespace A011935.P10150663773063317603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A052787 n) (A334281 n) : ℚ) / 25⌋

end

end A011935.P10150663773063317603

namespace A011935

/-- `floor(gcd(A052787(n), A334281(n))/25)` -/
def P10150663773063317603.Spec : Prop :=
  ∀ n, P10150663773063317603.a n = A011935 n

end A011935

/-!
# A011936: a(n) = floor( n*(n-1)*(n-2)*(n-3)/26 ).

The programs for A011936, the canonical program `A011936.P4326688014271395315` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011936 has offset 0).

The definition of A011936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011936.P4326688014271395315

`floor(12*C(n, 4)/13)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011936

/-- `floor(12*C(n, 4)/13)` -/
def P4326688014271395315.Spec : Prop :=
  ∀ n, P4326688014271395315.a n = A011936 n

theorem P4326688014271395315.correct : P4326688014271395315.Spec := by
  intro n
  simp only [A011936]

end A011936

/-! ## A011936.P2466507068959231163

`floor(((1-n)²-n)²/26)`
-/

namespace A011936.P2466507068959231163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((1 - (n : ℤ)) ^ 2 - (n : ℤ)) ^ 2 : ℚ) / 26⌋

end

end A011936.P2466507068959231163

namespace A011936

/-- `floor(((1-n)²-n)²/26)` -/
def P2466507068959231163.Spec : Prop :=
  ∀ n, P2466507068959231163.a n = A011936 n

end A011936

/-! ## A011936.P1552607467085514714

`ceil((A011923(n)-1)/2)`
-/

namespace A011936.P1552607467085514714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011923 n - 1 : ℚ) / 2⌉

end

end A011936.P1552607467085514714

namespace A011936

/-- `ceil((A011923(n)-1)/2)` -/
def P1552607467085514714.Spec : Prop :=
  ∀ n, P1552607467085514714.a n = A011936 n

end A011936

/-! ## A011936.P7733608956575614201

`abs(floor((A001094(n)-n)/26))`
-/

namespace A011936.P7733608956575614201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A001094 n - (n : ℤ) : ℚ) / 26⌋|

end

end A011936.P7733608956575614201

namespace A011936

/-- `abs(floor((A001094(n)-n)/26))` -/
def P7733608956575614201.Spec : Prop :=
  ∀ n, P7733608956575614201.a n = A011936 n

end A011936

/-! ## A011936.P2008968339231276768

`floor((A052762(n)/13+2)/2)-1`
-/

namespace A011936.P2008968339231276768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A052762 n : ℚ) / 13 + 2) / 2⌋ - 1

end

end A011936.P2008968339231276768

namespace A011936

/-- `floor((A052762(n)/13+2)/2)-1` -/
def P2008968339231276768.Spec : Prop :=
  ∀ n, P2008968339231276768.a n = A011936 n

end A011936

/-! ## A011936.P657727023207045345

`A004070(n)^A094497(n)*floor((A001094(n)-n)/26)`
-/

namespace A011936.P657727023207045345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004070 n : ℚ) ^ (A094497 n : ℤ) * (⌊(A001094 n - (n : ℤ) : ℚ) / 26⌋ : ℚ)

end

end A011936.P657727023207045345

namespace A011936

/-- `A004070(n)^A094497(n)*floor((A001094(n)-n)/26)` -/
def P657727023207045345.Spec : Prop :=
  ∀ n, P657727023207045345.a n = (A011936 n : ℚ)

end A011936

/-!
# A011937: a(n) = floor( n*(n-1)*(n-2)*(n-3)/27 ).

The programs for A011937, the canonical program `A011937.P15370715422582676199` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011937 has offset 0).

The definition of A011937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011937.P15370715422582676199

`floor(8*C(n, 4)/9)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011937

/-- `floor(8*C(n, 4)/9)` -/
def P15370715422582676199.Spec : Prop :=
  ∀ n, P15370715422582676199.a n = A011937 n

theorem P15370715422582676199.correct : P15370715422582676199.Spec := by
  intro n
  simp only [A011937]

end A011937

/-! ## A011937.P884383663872245627

`C(n, 4)-ceil(C(n, 4)/9)`
-/

namespace A011937.P884383663872245627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - ⌈(Nat.choose n 4 : ℚ) / 9⌉

end

end A011937.P884383663872245627

namespace A011937

/-- `C(n, 4)-ceil(C(n, 4)/9)` -/
def P884383663872245627.Spec : Prop :=
  ∀ n, P884383663872245627.a n = A011937 n

end A011937

/-! ## A011937.P11046492663668326024

`floor(((1-n)²-n)²/27)`
-/

namespace A011937.P11046492663668326024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((1 - (n : ℤ)) ^ 2 - (n : ℤ)) ^ 2 : ℚ) / 27⌋

end

end A011937.P11046492663668326024

namespace A011937

/-- `floor(((1-n)²-n)²/27)` -/
def P11046492663668326024.Spec : Prop :=
  ∀ n, P11046492663668326024.a n = A011937 n

end A011937

/-! ## A011937.P1512519554365252977

`C(n, 4)-floor((C(n, 4)+8)/9)`
-/

namespace A011937.P1512519554365252977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - ⌊(Nat.choose n 4 + 8 : ℚ) / 9⌋

end

end A011937.P1512519554365252977

namespace A011937

/-- `C(n, 4)-floor((C(n, 4)+8)/9)` -/
def P1512519554365252977.Spec : Prop :=
  ∀ n, P1512519554365252977.a n = A011937 n

end A011937

/-! ## A011937.P127108665146238711

`A000332(n)-ceil(A000332(n)/9)`
-/

namespace A011937.P127108665146238711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n - ⌈(A000332 n : ℚ) / 9⌉

end

end A011937.P127108665146238711

namespace A011937

/-- `A000332(n)-ceil(A000332(n)/9)` -/
def P127108665146238711.Spec : Prop :=
  ∀ n, P127108665146238711.a n = A011937 n

end A011937

/-!
# A011938: a(n) = floor( n*(n-1)*(n-2)*(n-3)/28 ).

The programs for A011938, the canonical program `A011938.P15405803497285264803` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011938 has offset 0).

The definition of A011938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011938.P15405803497285264803

`floor(12/7*C(n, 4)/2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011938

/-- `floor(12/7*C(n, 4)/2)` -/
def P15405803497285264803.Spec : Prop :=
  ∀ n, P15405803497285264803.a n = A011938 n

theorem P15405803497285264803.correct : P15405803497285264803.Spec := by
  intro n
  simp only [A011938]

end A011938

/-! ## A011938.P3785916016328487248

`floor(A011924(n)/2)`
-/

namespace A011938.P3785916016328487248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011924 n : ℚ) / 2⌋

end

end A011938.P3785916016328487248

namespace A011938

/-- `floor(A011924(n)/2)` -/
def P3785916016328487248.Spec : Prop :=
  ∀ n, P3785916016328487248.a n = A011938 n

end A011938

/-! ## A011938.P14310880530782367598

`floor(A011917(n)/4)`
-/

namespace A011938.P14310880530782367598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011917 n : ℚ) / 4⌋

end

end A011938.P14310880530782367598

namespace A011938

/-- `floor(A011917(n)/4)` -/
def P14310880530782367598.Spec : Prop :=
  ∀ n, P14310880530782367598.a n = A011938 n

end A011938

/-! ## A011938.P14509172205888425587

`floor(A052762(n)/28)`
-/

namespace A011938.P14509172205888425587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 28⌋

end

end A011938.P14509172205888425587

namespace A011938

/-- `floor(A052762(n)/28)` -/
def P14509172205888425587.Spec : Prop :=
  ∀ n, P14509172205888425587.a n = A011938 n

end A011938

/-! ## A011938.P2998721679562583076

`floor(6/7*A000332(n))`
-/

namespace A011938.P2998721679562583076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) / 7 * (A000332 n : ℚ)⌋

end

end A011938.P2998721679562583076

namespace A011938

/-- `floor(6/7*A000332(n))` -/
def P2998721679562583076.Spec : Prop :=
  ∀ n, P2998721679562583076.a n = A011938 n

end A011938

/-! ## A011938.P4085874041060027449

`floor(Δ[A001095(n)/70]/2)`
-/

namespace A011938.P4085874041060027449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001095 n : ℚ) / 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) / 2⌋

end

end A011938.P4085874041060027449

namespace A011938

/-- `floor(Δ[A001095(n)/70]/2)` -/
def P4085874041060027449.Spec : Prop :=
  ∀ n, P4085874041060027449.a n = A011938 n

end A011938

/-! ## A011938.P1700221153050589419

`A011860(∑[n-2]+3)`
-/

namespace A011938.P1700221153050589419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A011938.P1700221153050589419

namespace A011938

/-- `A011860(∑[n-2]+3)` -/
def P1700221153050589419.Spec : Prop :=
  ∀ n, P1700221153050589419.a n = A011938 n

end A011938

/-! ## A011938.P7784366837838171809

`2*A011867(∑[A289207(n)])`
-/

namespace A011938.P7784366837838171809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011938.P7784366837838171809

namespace A011938

/-- `2*A011867(∑[A289207(n)])` -/
def P7784366837838171809.Spec : Prop :=
  ∀ n, P7784366837838171809.a n = A011938 n

end A011938

/-!
# A011939: a(n) = floor( n*(n-1)*(n-2)*(n-3)/29 ).

The programs for A011939, the canonical program `A011939.P3889494243034659406` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011939 has offset 0).

The definition of A011939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011939.P3889494243034659406

`floor(24*C(n, 4)/29)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011939

/-- `floor(24*C(n, 4)/29)` -/
def P3889494243034659406.Spec : Prop :=
  ∀ n, P3889494243034659406.a n = A011939 n

theorem P3889494243034659406.correct : P3889494243034659406.Spec := by
  intro n
  simp only [A011939]

end A011939

/-! ## A011939.P5975720137730191171

`floor(A052762(n)/29)`
-/

namespace A011939.P5975720137730191171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 29⌋

end

end A011939.P5975720137730191171

namespace A011939

/-- `floor(A052762(n)/29)` -/
def P5975720137730191171.Spec : Prop :=
  ∀ n, P5975720137730191171.a n = A011939 n

end A011939

/-! ## A011939.P15109574989347515442

`floor(A052768(n)/29)`
-/

namespace A011939.P15109574989347515442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052768 n : ℚ) / 29⌋

end

end A011939.P15109574989347515442

namespace A011939

/-- `floor(A052768(n)/29)` -/
def P15109574989347515442.Spec : Prop :=
  ∀ n, P15109574989347515442.a n = A011939 n

end A011939

/-! ## A011939.P3281157996488086263

`floor((A001094(n)-n)/29)`
-/

namespace A011939.P3281157996488086263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001094 n - (n : ℤ) : ℚ) / 29⌋

end

end A011939.P3281157996488086263

namespace A011939

/-- `floor((A001094(n)-n)/29)` -/
def P3281157996488086263.Spec : Prop :=
  ∀ n, P3281157996488086263.a n = A011939 n

end A011939

/-! ## A011939.P13356343412221828479

`floor(gcd(A052787(n), A334281(n))/29)`
-/

namespace A011939.P13356343412221828479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A052787 n) (A334281 n) : ℚ) / 29⌋

end

end A011939.P13356343412221828479

namespace A011939

/-- `floor(gcd(A052787(n), A334281(n))/29)` -/
def P13356343412221828479.Spec : Prop :=
  ∀ n, P13356343412221828479.a n = A011939 n

end A011939

/-!
# A011940: a(n) = floor(n*(n-1)*(n-2)*(n-3)/30).

The programs for A011940, the canonical program `A011940.P12919393430422700789` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011940 has offset 0).

The definition of A011940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011940.P12919393430422700789

`4*A011795(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011940

/-- `4*A011795(n)` -/
def P12919393430422700789.Spec : Prop :=
  ∀ n, P12919393430422700789.a n = A011940 n

theorem P12919393430422700789.correct : P12919393430422700789.Spec := by
  intro n
  simp only [A011940]

end A011940

/-! ## A011940.P4698040995879714660

`floor(4/5*C(n, 4))`
-/

namespace A011940.P4698040995879714660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 5 * (Nat.choose n 4 : ℚ)⌋

end

end A011940.P4698040995879714660

namespace A011940

/-- `floor(4/5*C(n, 4))` -/
def P4698040995879714660.Spec : Prop :=
  ∀ n, P4698040995879714660.a n = A011940 n

end A011940

/-! ## A011940.P7260403007408745817

`4*round(C(n, 4)/5)`
-/

namespace A011940.P7260403007408745817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((Nat.choose n 4 : ℚ) / 5)

end

end A011940.P7260403007408745817

namespace A011940

/-- `4*round(C(n, 4)/5)` -/
def P7260403007408745817.Spec : Prop :=
  ∀ n, P7260403007408745817.a n = A011940 n

end A011940

/-! ## A011940.P11961868574573146078

`floor(A011925(n)/2)`
-/

namespace A011940.P11961868574573146078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011925 n : ℚ) / 2⌋

end

end A011940.P11961868574573146078

namespace A011940

/-- `floor(A011925(n)/2)` -/
def P11961868574573146078.Spec : Prop :=
  ∀ n, P11961868574573146078.a n = A011940 n

end A011940

/-! ## A011940.P9245576078651654087

`floor(A052762(n)/30)`
-/

namespace A011940.P9245576078651654087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 30⌋

end

end A011940.P9245576078651654087

namespace A011940

/-- `floor(A052762(n)/30)` -/
def P9245576078651654087.Spec : Prop :=
  ∀ n, P9245576078651654087.a n = A011940 n

end A011940

/-! ## A011940.P8238253597302109088

`4*floor(A000332(n)/5)`
-/

namespace A011940.P8238253597302109088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(A000332 n : ℚ) / 5⌋

end

end A011940.P8238253597302109088

namespace A011940

/-- `4*floor(A000332(n)/5)` -/
def P8238253597302109088.Spec : Prop :=
  ∀ n, P8238253597302109088.a n = A011940 n

end A011940

/-! ## A011940.P8035346634257421620

`floor(A210569(n)/(n+1))`
-/

namespace A011940.P8035346634257421620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210569 n : ℚ) / (n + 1 : ℚ)⌋

end

end A011940.P8035346634257421620

namespace A011940

/-- `floor(A210569(n)/(n+1))` -/
def P8035346634257421620.Spec : Prop :=
  ∀ n, P8035346634257421620.a n = A011940 n

end A011940

/-! ## A011940.P17622493111316319044

`A011915(n)-2*A034827(n)`
-/

namespace A011940.P17622493111316319044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011915 n - 2 * A034827 n

end

end A011940.P17622493111316319044

namespace A011940

/-- `A011915(n)-2*A034827(n)` -/
def P17622493111316319044.Spec : Prop :=
  ∀ n, P17622493111316319044.a n = A011940 n

end A011940

/-! ## A011940.P9942064214890963875

`4*(A011930(n)-A000332(n))`
-/

namespace A011940.P9942064214890963875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A011930 n - A000332 n)

end

end A011940.P9942064214890963875

namespace A011940

/-- `4*(A011930(n)-A000332(n))` -/
def P9942064214890963875.Spec : Prop :=
  ∀ n, P9942064214890963875.a n = A011940 n

end A011940

/-! ## A011940.P18066559958683831858

`2*2*A211524(A016028(n+1))`
-/

namespace A011940.P18066559958683831858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A211524 (A016028 (n + 1)).toNat)

end

end A011940.P18066559958683831858

namespace A011940

/-- `2*2*A211524(A016028(n+1))` -/
def P18066559958683831858.Spec : Prop :=
  ∀ n, P18066559958683831858.a n = A011940 n

end A011940

/-! ## A011940.P2529291963526896730

`2*2*A319973(A118403(n))`
-/

namespace A011940.P2529291963526896730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A319973 (A118403 n).toNat)

end

end A011940.P2529291963526896730

namespace A011940

/-- `2*2*A319973(A118403(n))` -/
def P2529291963526896730.Spec : Prop :=
  ∀ n, P2529291963526896730.a n = A011940 n

end A011940

/-!
# A011941: a(n) = floor(n*(n-1)*(n-2)*(n-3)/31).

The programs for A011941, the canonical program `A011941.P9802077081149151235` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011941 has offset 0).

The definition of A011941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011941.P9802077081149151235

`floor(24*C(n, 4)/31)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011941

/-- `floor(24*C(n, 4)/31)` -/
def P9802077081149151235.Spec : Prop :=
  ∀ n, P9802077081149151235.a n = A011941 n

theorem P9802077081149151235.correct : P9802077081149151235.Spec := by
  intro n
  simp only [A011941]

end A011941

/-! ## A011941.P5084481887046018774

`floor(A052762(n)/31)`
-/

namespace A011941.P5084481887046018774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052762 n : ℚ) / 31⌋

end

end A011941.P5084481887046018774

namespace A011941

/-- `floor(A052762(n)/31)` -/
def P5084481887046018774.Spec : Prop :=
  ∀ n, P5084481887046018774.a n = A011941 n

end A011941

/-! ## A011941.P16767333067442156188

`floor(A052768(n)/31)`
-/

namespace A011941.P16767333067442156188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052768 n : ℚ) / 31⌋

end

end A011941.P16767333067442156188

namespace A011941

/-- `floor(A052768(n)/31)` -/
def P16767333067442156188.Spec : Prop :=
  ∀ n, P16767333067442156188.a n = A011941 n

end A011941

/-! ## A011941.P18070340026529763204

`floor((A001094(n)-n)/31)`
-/

namespace A011941.P18070340026529763204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001094 n - (n : ℤ) : ℚ) / 31⌋

end

end A011941.P18070340026529763204

namespace A011941

/-- `floor((A001094(n)-n)/31)` -/
def P18070340026529763204.Spec : Prop :=
  ∀ n, P18070340026529763204.a n = A011941 n

end A011941

/-! ## A011941.P14147900023868122638

`floor(gcd(A052787(n), A334281(n))/31)`
-/

namespace A011941.P14147900023868122638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A052787 n) (A334281 n) : ℚ) / 31⌋

end

end A011941.P14147900023868122638

namespace A011941

/-- `floor(gcd(A052787(n), A334281(n))/31)` -/
def P14147900023868122638.Spec : Prop :=
  ∀ n, P14147900023868122638.a n = A011941 n

end A011941

/-!
# A011942: a(n) = floor( n*(n-1)*(n-2)*(n-3)/32 ).

The programs for A011942, the canonical program `A011942.P11526397492751891268` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011942 has offset 0).

The definition of A011942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n-1)*(n-2)*(n-3)/32)` (program `A011942.P11526397492751891268`, by `A011942.P11526397492751891268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011942.P15777109758728211065

`floor(3*C(n, 4)/4)`
-/

namespace A011942.P15777109758728211065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * Nat.choose n 4 : ℚ) / 4⌋

end

end A011942.P15777109758728211065

namespace A011942

/-- `floor(3*C(n, 4)/4)` -/
def P15777109758728211065.Spec : Prop :=
  ∀ n, P15777109758728211065.a n = A011942 n

end A011942

/-! ## A011942.P11526397492751891268

`floor(n*(n-1)*(n-2)*(n-3)/32)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011942

/-- `floor(n*(n-1)*(n-2)*(n-3)/32)` -/
def P11526397492751891268.Spec : Prop :=
  ∀ n, P11526397492751891268.a n = A011942 n

theorem P11526397492751891268.correct : P11526397492751891268.Spec := by
  intro n
  simp only [A011942]

end A011942

/-! ## A011942.P15477666692379468450

`A011861(∑[n-2]+3)`
-/

namespace A011942.P15477666692379468450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A011942.P15477666692379468450

namespace A011942

/-- `A011861(∑[n-2]+3)` -/
def P15477666692379468450.Spec : Prop :=
  ∀ n, P15477666692379468450.a n = A011942 n

end A011942

/-! ## A011942.P12568161638120210120

`A057353(C(n, 4))`
-/

namespace A011942.P12568161638120210120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Nat.choose n 4)

end

end A011942.P12568161638120210120

namespace A011942

/-- `A057353(C(n, 4))` -/
def P12568161638120210120.Spec : Prop :=
  ∀ n, P12568161638120210120.a n = A011942 n

end A011942

/-! ## A011942.P16696791994717532562

`A057353(A000332(n))`
-/

namespace A011942.P16696791994717532562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A000332 n).toNat

end

end A011942.P16696791994717532562

namespace A011942

/-- `A057353(A000332(n))` -/
def P16696791994717532562.Spec : Prop :=
  ∀ n, P16696791994717532562.a n = A011942 n

end A011942

/-!
# A011943: Numbers k such that any group of k consecutive integers has integral standard deviation (viz. A011944(k)).

The programs for A011943, the canonical program `A011943.P11360859959472127389` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011943 has offset 1).

The definition of A011943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011943.P11360859959472127389

`14*a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011943

/-- `14*a(n-1)-a(n-2)` -/
def P11360859959472127389.Spec : Prop :=
  ∀ n, P11360859959472127389.a n = A011943 (n + 1)

theorem P11360859959472127389.correct : P11360859959472127389.Spec := by
  intro n
  simp only [A011943, Nat.add_sub_cancel]

end A011943

/-! ## A011943.P11871949536058650108

`((7+4*sqrt(3))^n+(7-4*sqrt(3))^n)/2`
-/

namespace A011943.P11871949536058650108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 4 * Real.sqrt (3 : ℝ)) ^ n + (7 - 4 * Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A011943.P11871949536058650108

namespace A011943

/-- `((7+4*sqrt(3))^n+(7-4*sqrt(3))^n)/2` -/
def P11871949536058650108.Spec : Prop :=
  ∀ n, P11871949536058650108.a n = (A011943 (n + 1) : ℝ)

end A011943

/-! ## A011943.P10596187852743371305

`record[round(a(n-1)/(sqrt(3)-2))]` with `a(0)=1, a(1)=7`
-/

namespace A011943.P10596187852743371305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011943.P10596187852743371305

namespace A011943

/-- `record[round(a(n-1)/(sqrt(3)-2))]` -/
def P10596187852743371305.Spec : Prop :=
  ∀ n, P10596187852743371305.a n = A011943 (n + 1)

end A011943

/-! ## A011943.P482188445575071457

`A001075(2*n)`
-/

namespace A011943.P482188445575071457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (2 * n)

end

end A011943.P482188445575071457

namespace A011943

/-- `A001075(2*n)` -/
def P482188445575071457.Spec : Prop :=
  ∀ n, P482188445575071457.a n = A011943 (n + 1)

end A011943

/-! ## A011943.P6381847377720967097

`A144536(2*n)`
-/

namespace A011943.P6381847377720967097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144536 (2 * n)

end

end A011943.P6381847377720967097

namespace A011943

/-- `A144536(2*n)` -/
def P6381847377720967097.Spec : Prop :=
  ∀ n, P6381847377720967097.a n = A011943 (n + 1)

end A011943

/-! ## A011943.P15052197317798495837

`A002531(4*n)`
-/

namespace A011943.P15052197317798495837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (4 * n)

end

end A011943.P15052197317798495837

namespace A011943

/-- `A002531(4*n)` -/
def P15052197317798495837.Spec : Prop :=
  ∀ n, P15052197317798495837.a n = A011943 (n + 1)

end A011943

/-! ## A011943.P18428089929833655187

`A092184(2*n)+1`
-/

namespace A011943.P18428089929833655187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 (2 * n) + 1

end

end A011943.P18428089929833655187

namespace A011943

/-- `A092184(2*n)+1` -/
def P18428089929833655187.Spec : Prop :=
  ∀ n, P18428089929833655187.a n = A011943 (n + 1)

end A011943

/-! ## A011943.P7589619600963857718

`A121401(2*n)-1`
-/

namespace A011943.P7589619600963857718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 (2 * n) - 1

end

end A011943.P7589619600963857718

namespace A011943

/-- `A121401(2*n)-1` -/
def P7589619600963857718.Spec : Prop :=
  ∀ n, P7589619600963857718.a n = A011943 (n + 1)

end A011943

/-! ## A011943.P9596523429053112202

`3*A011922(n)-2`
-/

namespace A011943.P9596523429053112202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011922 n - 2

end

end A011943.P9596523429053112202

namespace A011943

/-- `3*A011922(n)-2` -/
def P9596523429053112202.Spec : Prop :=
  ∀ n, P9596523429053112202.a n = A011943 (n + 1)

end A011943

/-!
# A011944: a(n) = 14*a(n-1) - a(n-2) with a(0) = 0, a(1) = 2.

The programs for A011944, the canonical program `A011944.P10055588029701855530` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011944 has offset 0).

The definition of A011944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A011944.P10055588029701855530`, by `A011944.P10055588029701855530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011944.P10055588029701855530

`14*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011944

/-- `14*a(n-1)-a(n-2)` -/
def P10055588029701855530.Spec : Prop :=
  ∀ n, P10055588029701855530.a n = A011944 n

theorem P10055588029701855530.correct : P10055588029701855530.Spec := by
  intro n
  simp only [A011944]

end A011944

/-! ## A011944.P12398758991733764747

`∑[A094347(n)]-2`
-/

namespace A011944.P12398758991733764747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A011944.P12398758991733764747

namespace A011944

/-- `∑[A094347(n)]-2` -/
def P12398758991733764747.Spec : Prop :=
  ∀ n, P12398758991733764747.a n = A011944 n

end A011944

/-! ## A011944.P15693136944822818613

`2*A007655(n+1)`
-/

namespace A011944.P15693136944822818613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007655 (n + 1)

end

end A011944.P15693136944822818613

namespace A011944

/-- `2*A007655(n+1)` -/
def P15693136944822818613.Spec : Prop :=
  ∀ n, P15693136944822818613.a n = A011944 n

end A011944

/-! ## A011944.P6212487802535677518

`Δ[(A001835(n)/2)²]`
-/

namespace A011944.P6212487802535677518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001835 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011944.P6212487802535677518

namespace A011944

/-- `Δ[(A001835(n)/2)²]` -/
def P6212487802535677518.Spec : Prop :=
  ∀ n, P6212487802535677518.a n = (A011944 n : ℚ)

end A011944

/-! ## A011944.P7032553431844219257

`Δ[(A005246(2*n)/2)²]`
-/

namespace A011944.P7032553431844219257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005246 (2 * n) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011944.P7032553431844219257

namespace A011944

/-- `Δ[(A005246(2*n)/2)²]` -/
def P7032553431844219257.Spec : Prop :=
  ∀ n, P7032553431844219257.a n = (A011944 n : ℚ)

end A011944

/-! ## A011944.P10411872080846149257

`2*(∑[A122571(n+1)]-1)`
-/

namespace A011944.P10411872080846149257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A011944.P10411872080846149257

namespace A011944

/-- `2*(∑[A122571(n+1)]-1)` -/
def P10411872080846149257.Spec : Prop :=
  ∀ n, P10411872080846149257.a n = A011944 n

end A011944

/-! ## A011944.P10075756221401882740

`record[Δ[(A122573(n+1)/2)²]]`
-/

namespace A011944.P10075756221401882740
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A122573 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011944.P10075756221401882740

namespace A011944

/-- `record[Δ[(A122573(n+1)/2)²]]` -/
def P10075756221401882740.Spec : Prop :=
  ∀ n, P10075756221401882740.a n = (A011944 n : ℚ)

end A011944

/-! ## A011944.P4058303871789653606

`∑[A108413(2*n)²+1]-2`
-/

namespace A011944.P4058303871789653606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108413 (2 * n) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A011944.P4058303871789653606

namespace A011944

/-- `∑[A108413(2*n)²+1]-2` -/
def P4058303871789653606.Spec : Prop :=
  ∀ n, P4058303871789653606.a n = A011944 n

end A011944

/-! ## A011944.P11703585691194109433

`Δ[(A122573(2*(n+1))/2)²]`
-/

namespace A011944.P11703585691194109433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A122573 (2 * (n + 1)) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011944.P11703585691194109433

namespace A011944

/-- `Δ[(A122573(2*(n+1))/2)²]` -/
def P11703585691194109433.Spec : Prop :=
  ∀ n, P11703585691194109433.a n = (A011944 n : ℚ)

end A011944

/-!
# A011945: Areas of almost-equilateral Heronian triangles (integral side lengths m-1, m, m+1 and integral area).

The programs for A011945, the canonical program `A011945.P14253576329167256668` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011945 has offset 1).

The definition of A011945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011945.P14253576329167256668

`14*a(n-1)-a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011945

/-- `14*a(n-1)-a(n-2)` -/
def P14253576329167256668.Spec : Prop :=
  ∀ n, P14253576329167256668.a n = A011945 (n + 1)

theorem P14253576329167256668.correct : P14253576329167256668.Spec := by
  intro n
  simp only [A011945, Nat.add_sub_cancel]

end A011945

/-! ## A011945.P12531610397167426906

`A144535(2*n)`
-/

namespace A011945.P12531610397167426906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144535 (2 * n)

end

end A011945.P12531610397167426906

namespace A011945

/-- `A144535(2*n)` -/
def P12531610397167426906.Spec : Prop :=
  ∀ n, P12531610397167426906.a n = A011945 (n + 1)

end A011945

/-! ## A011945.P11291978849097258469

`3*A011944(n)`
-/

namespace A011945.P11291978849097258469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011944 n

end

end A011945.P11291978849097258469

namespace A011945

/-- `3*A011944(n)` -/
def P11291978849097258469.Spec : Prop :=
  ∀ n, P11291978849097258469.a n = A011945 (n + 1)

end A011945

/-! ## A011945.P16227048498036692877

`A232771(3*n+1)`
-/

namespace A011945.P16227048498036692877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232771 (3 * n + 1)

end

end A011945.P16227048498036692877

namespace A011945

/-- `A232771(3*n+1)` -/
def P16227048498036692877.Spec : Prop :=
  ∀ n, P16227048498036692877.a n = A011945 (n + 1)

end A011945

/-! ## A011945.P12035654334390767746

`A005320(2*n)/2`
-/

namespace A011945.P12035654334390767746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005320 (2 * n) : ℚ) / 2

end

end A011945.P12035654334390767746

namespace A011945

/-- `A005320(2*n)/2` -/
def P12035654334390767746.Spec : Prop :=
  ∀ n, P12035654334390767746.a n = (A011945 (n + 1) : ℚ)

end A011945

/-! ## A011945.P11903997601904177709

`6*A007655(n+1)`
-/

namespace A011945.P11903997601904177709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007655 (n + 1)

end

end A011945.P11903997601904177709

namespace A011945

/-- `6*A007655(n+1)` -/
def P11903997601904177709.Spec : Prop :=
  ∀ n, P11903997601904177709.a n = A011945 (n + 1)

end A011945

/-! ## A011945.P7793902304964992334

`3/4*A067900(n)`
-/

namespace A011945.P7793902304964992334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A067900 n : ℚ)

end

end A011945.P7793902304964992334

namespace A011945

/-- `3/4*A067900(n)` -/
def P7793902304964992334.Spec : Prop :=
  ∀ n, P7793902304964992334.a n = (A011945 (n + 1) : ℚ)

end A011945

/-! ## A011945.P2043252559986343915

`3*A001353(2*n)/2`
-/

namespace A011945.P2043252559986343915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A001353 (2 * n) : ℚ) / 2)

end

end A011945.P2043252559986343915

namespace A011945

/-- `3*A001353(2*n)/2` -/
def P2043252559986343915.Spec : Prop :=
  ∀ n, P2043252559986343915.a n = (A011945 (n + 1) : ℚ)

end A011945

/-! ## A011945.P4536151668776251689

`Δ[(A108413(2*n)/2)²]`
-/

namespace A011945.P4536151668776251689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A108413 (2 * n) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011945.P4536151668776251689

namespace A011945

/-- `Δ[(A108413(2*n)/2)²]` -/
def P4536151668776251689.Spec : Prop :=
  ∀ n, P4536151668776251689.a n = (A011945 (n + 1) : ℚ)

end A011945

/-!
# A011946: Number of Barlow packings with group P63/mmc(S) that repeat after 4n layers.

The programs for A011946, the canonical program `A011946.P13849652241662667985` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011946 has offset 1).

The definition of A011946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011946.P3834963182581901088

`A045683(2*(n+1))`
-/

namespace A011946.P3834963182581901088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 (2 * (n + 1))

end

end A011946.P3834963182581901088

namespace A011946

/-- `A045683(2*(n+1))` -/
def P3834963182581901088.Spec : Prop :=
  ∀ n, P3834963182581901088.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P6576994511843739331

`(n+1)*Δ[A173278(n)]`
-/

namespace A011946.P6576994511843739331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A011946.P6576994511843739331

namespace A011946

/-- `(n+1)*Δ[A173278(n)]` -/
def P6576994511843739331.Spec : Prop :=
  ∀ n, P6576994511843739331.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P11309204687073313992

`(n+1)*A000048(n+1)`
-/

namespace A011946.P11309204687073313992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000048 (n + 1)

end

end A011946.P11309204687073313992

namespace A011946

/-- `(n+1)*A000048(n+1)` -/
def P11309204687073313992.Spec : Prop :=
  ∀ n, P11309204687073313992.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P9167917358828221767

`(n+1)/2*A064355(n+1)`
-/

namespace A011946.P9167917358828221767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A064355 (n + 1) : ℚ)

end

end A011946.P9167917358828221767

namespace A011946

/-- `(n+1)/2*A064355(n+1)` -/
def P9167917358828221767.Spec : Prop :=
  ∀ n, P9167917358828221767.a n = (A011946 (n + 1) : ℚ)

end A011946

/-! ## A011946.P13776866556058715550

`record[A045683(A124625(n))]`
-/

namespace A011946.P13776866556058715550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011946.P13776866556058715550

namespace A011946

/-- `record[A045683(A124625(n))]` -/
def P13776866556058715550.Spec : Prop :=
  ∀ n, P13776866556058715550.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P13849652241662667985

`∑{d}[n+1, A001511(#)*A296302((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A011946

/-- `∑{d}[n+1, A001511(#)*A296302((n+1)/#)]` -/
def P13849652241662667985.Spec : Prop :=
  ∀ n, P13849652241662667985.a n = A011946 (n + 1)

theorem P13849652241662667985.correct : P13849652241662667985.Spec := by
  intro n
  simp only [A011946, Nat.add_sub_cancel]

end A011946

/-! ## A011946.P18169914488325736683

`∑{d}[n+1, A034729(#)*A327276((n+1)/#)]`
-/

namespace A011946.P18169914488325736683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P18169914488325736683

namespace A011946

/-- `∑{d}[n+1, A034729(#)*A327276((n+1)/#)]` -/
def P18169914488325736683.Spec : Prop :=
  ∀ n, P18169914488325736683.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P6748700079419894207

`∑{d}[n+1, A055615(#)*A306905((n+1)/#)]`
-/

namespace A011946.P6748700079419894207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A306905 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P6748700079419894207

namespace A011946

/-- `∑{d}[n+1, A055615(#)*A306905((n+1)/#)]` -/
def P6748700079419894207.Spec : Prop :=
  ∀ n, P6748700079419894207.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P16526459142257848093

`∑{d}[n+1, A034738(#)*A349341((n+1)/#)]`
-/

namespace A011946.P16526459142257848093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P16526459142257848093

namespace A011946

/-- `∑{d}[n+1, A034738(#)*A349341((n+1)/#)]` -/
def P16526459142257848093.Spec : Prop :=
  ∀ n, P16526459142257848093.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P13155924394188399148

`∑{d}[n+1, A062570(#)*A349570((n+1)/#)]`
-/

namespace A011946.P13155924394188399148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P13155924394188399148

namespace A011946

/-- `∑{d}[n+1, A062570(#)*A349570((n+1)/#)]` -/
def P13155924394188399148.Spec : Prop :=
  ∀ n, P13155924394188399148.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P16608888132932269220

`∑{d}[n+1, A108700(#)*A349566((n+1)/#)]`
-/

namespace A011946.P16608888132932269220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A108700 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P16608888132932269220

namespace A011946

/-- `∑{d}[n+1, A108700(#)*A349566((n+1)/#)]` -/
def P16608888132932269220.Spec : Prop :=
  ∀ n, P16608888132932269220.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P9619025626976555682

`∑{d}[n+1, A000740(#)*A036987((n+1)/#-1)]`
-/

namespace A011946.P9619025626976555682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A011946.P9619025626976555682

namespace A011946

/-- `∑{d}[n+1, A000740(#)*A036987((n+1)/#-1)]` -/
def P9619025626976555682.Spec : Prop :=
  ∀ n, P9619025626976555682.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P8471794965534635270

`∑{d}[n+1, A000079(#-1)*A087003((n+1)/#)]`
-/

namespace A011946.P8471794965534635270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P8471794965534635270

namespace A011946

/-- `∑{d}[n+1, A000079(#-1)*A087003((n+1)/#)]` -/
def P8471794965534635270.Spec : Prop :=
  ∀ n, P8471794965534635270.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P936179258010503718

`∑{d}[n+1, A008683(#)*A127804((n+1)/#-1)]`
-/

namespace A011946.P936179258010503718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A127804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A011946.P936179258010503718

namespace A011946

/-- `∑{d}[n+1, A008683(#)*A127804((n+1)/#-1)]` -/
def P936179258010503718.Spec : Prop :=
  ∀ n, P936179258010503718.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P6075088126742196167

`∑{d}[n+1, A051437(#-1)*A355689((n+1)/#)]`
-/

namespace A011946.P6075088126742196167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051437 (d - 1) * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P6075088126742196167

namespace A011946

/-- `∑{d}[n+1, A051437(#-1)*A355689((n+1)/#)]` -/
def P6075088126742196167.Spec : Prop :=
  ∀ n, P6075088126742196167.a n = A011946 (n + 1)

end A011946

/-! ## A011946.P9736263727493795958

`A045663(n+1)/2`
-/

namespace A011946.P9736263727493795958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045663 (n + 1) : ℚ) / 2

end

end A011946.P9736263727493795958

namespace A011946

/-- `A045663(n+1)/2` -/
def P9736263727493795958.Spec : Prop :=
  ∀ n, P9736263727493795958.a n = (A011946 (n + 1) : ℚ)

end A011946

/-! ## A011946.P5465020757813343319

`Δ[∑[A045663(n)]/2]`
-/

namespace A011946.P5465020757813343319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011946.P5465020757813343319

namespace A011946

/-- `Δ[∑[A045663(n)]/2]` -/
def P5465020757813343319.Spec : Prop :=
  ∀ n, P5465020757813343319.a n = (A011946 (n + 1) : ℚ)

end A011946

/-! ## A011946.P12096082438118911664

`∑{d}[n+1, A317100(#)*A378224((n+1)/#)]`
-/

namespace A011946.P12096082438118911664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317100 d * A378224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011946.P12096082438118911664

namespace A011946

/-- `∑{d}[n+1, A317100(#)*A378224((n+1)/#)]` -/
def P12096082438118911664.Spec : Prop :=
  ∀ n, P12096082438118911664.a n = A011946 (n + 1)

end A011946

/-!
# A011947: Number of Barlow packings with group P63/mmc(O) that repeat after 4n+2 layers.

The programs for A011947, the canonical program `A011947.P14935983523207937062` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011947 has offset 0).

The definition of A011947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011947.P5292924418557743449

`2^n-A383182(n)`
-/

namespace A011947.P5292924418557743449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A383182 n

end

end A011947.P5292924418557743449

namespace A011947

/-- `2^n-A383182(n)` -/
def P5292924418557743449.Spec : Prop :=
  ∀ n, P5292924418557743449.a n = A011947 n

end A011947

/-! ## A011947.P10229078208248930934

`A045683(Δ[n²])`
-/

namespace A011947.P10229078208248930934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011947.P10229078208248930934

namespace A011947

/-- `A045683(Δ[n²])` -/
def P10229078208248930934.Spec : Prop :=
  ∀ n, P10229078208248930934.a n = A011947 n

end A011947

/-! ## A011947.P18378791519881282918

`A056476(Δ[n²])`
-/

namespace A011947.P18378791519881282918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011947.P18378791519881282918

namespace A011947

/-- `A056476(Δ[n²])` -/
def P18378791519881282918.Spec : Prop :=
  ∀ n, P18378791519881282918.a n = A011947 n

end A011947

/-! ## A011947.P16827548168465550801

`A056513(Δ[n²])`
-/

namespace A011947.P16827548168465550801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056513 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011947.P16827548168465550801

namespace A011947

/-- `A056513(Δ[n²])` -/
def P16827548168465550801.Spec : Prop :=
  ∀ n, P16827548168465550801.a n = A011947 n

end A011947

/-! ## A011947.P14935983523207937062

`A179781(Δ[n²])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A011947

/-- `A179781(Δ[n²])` -/
def P14935983523207937062.Spec : Prop :=
  ∀ n, P14935983523207937062.a n = A011947 n

theorem P14935983523207937062.correct : P14935983523207937062.Spec := by
  intro n
  simp only [A011947]

end A011947

/-! ## A011947.P9872831000608595862

`A056518(A004280(n+2))`
-/

namespace A011947.P9872831000608595862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A004280 (n + 2)).toNat

end

end A011947.P9872831000608595862

namespace A011947

/-- `A056518(A004280(n+2))` -/
def P9872831000608595862.Spec : Prop :=
  ∀ n, P9872831000608595862.a n = A011947 n

end A011947

/-! ## A011947.P18137915876424234757

`A056518(A233583(2*(n+1)))`
-/

namespace A011947.P18137915876424234757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A233583 (2 * (n + 1))).toNat

end

end A011947.P18137915876424234757

namespace A011947

/-- `A056518(A233583(2*(n+1)))` -/
def P18137915876424234757.Spec : Prop :=
  ∀ n, P18137915876424234757.a n = A011947 n

end A011947

/-! ## A011947.P10966564575974586028

`A011954(n)+A011950(n+1)`
-/

namespace A011947.P10966564575974586028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011954 n + A011950 (n + 1)

end

end A011947.P10966564575974586028

namespace A011947

/-- `A011954(n)+A011950(n+1)` -/
def P10966564575974586028.Spec : Prop :=
  ∀ n, P10966564575974586028.a n = A011947 n

end A011947

/-! ## A011947.P18085247825904495389

`A056518(A233583(n+2)+n)`
-/

namespace A011947.P18085247825904495389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A233583 (n + 2) + (n : ℤ)).toNat

end

end A011947.P18085247825904495389

namespace A011947

/-- `A056518(A233583(n+2)+n)` -/
def P18085247825904495389.Spec : Prop :=
  ∀ n, P18085247825904495389.a n = A011947 n

end A011947

/-! ## A011947.P2099248963333958799

`A056481(2*n+1)+A000007(n)`
-/

namespace A011947.P2099248963333958799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 (2 * n + 1) + A000007 n

end

end A011947.P2099248963333958799

namespace A011947

/-- `A056481(2*n+1)+A000007(n)` -/
def P2099248963333958799.Spec : Prop :=
  ∀ n, P2099248963333958799.a n = A011947 n

end A011947

/-! ## A011947.P14125811720714784062

`A056518(2*n+1)+A000007(n)`
-/

namespace A011947.P14125811720714784062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (2 * n + 1) + A000007 n

end

end A011947.P14125811720714784062

namespace A011947

/-- `A056518(2*n+1)+A000007(n)` -/
def P14125811720714784062.Spec : Prop :=
  ∀ n, P14125811720714784062.a n = A011947 n

end A011947

/-! ## A011947.P9386876576969674884

`A056476(2*n+1)+A000007(n+1)`
-/

namespace A011947.P9386876576969674884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (2 * n + 1) + A000007 (n + 1)

end

end A011947.P9386876576969674884

namespace A011947

/-- `A056476(2*n+1)+A000007(n+1)` -/
def P9386876576969674884.Spec : Prop :=
  ∀ n, P9386876576969674884.a n = A011947 n

end A011947

/-! ## A011947.P16795304935557309817

`A056518(A063524(n+1)+2*n+1)`
-/

namespace A011947.P16795304935557309817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A063524 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A011947.P16795304935557309817

namespace A011947

/-- `A056518(A063524(n+1)+2*n+1)` -/
def P16795304935557309817.Spec : Prop :=
  ∀ n, P16795304935557309817.a n = A011947 n

end A011947

/-! ## A011947.P5175462348296410058

`A056481(2*n+1)+A019590(n+2)`
-/

namespace A011947.P5175462348296410058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 (2 * n + 1) + A019590 (n + 2)

end

end A011947.P5175462348296410058

namespace A011947

/-- `A056481(2*n+1)+A019590(n+2)` -/
def P5175462348296410058.Spec : Prop :=
  ∀ n, P5175462348296410058.a n = A011947 n

end A011947

/-! ## A011947.P16400802060445726306

`A063524(n+2)+A056513(2*n+1)`
-/

namespace A011947.P16400802060445726306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) + A056513 (2 * n + 1)

end

end A011947.P16400802060445726306

namespace A011947

/-- `A063524(n+2)+A056513(2*n+1)` -/
def P16400802060445726306.Spec : Prop :=
  ∀ n, P16400802060445726306.a n = A011947 n

end A011947

/-! ## A011947.P47454358989541616

`A056481(2*n+1)-A154955(n+2)`
-/

namespace A011947.P47454358989541616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 (2 * n + 1) - A154955 (n + 2)

end

end A011947.P47454358989541616

namespace A011947

/-- `A056481(2*n+1)-A154955(n+2)` -/
def P47454358989541616.Spec : Prop :=
  ∀ n, P47454358989541616.a n = A011947 n

end A011947

/-! ## A011947.P12396079405161827725

`A056476(2*n+1)+A000035(2*n)`
-/

namespace A011947.P12396079405161827725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (2 * n + 1) + A000035 (2 * n)

end

end A011947.P12396079405161827725

namespace A011947

/-- `A056476(2*n+1)+A000035(2*n)` -/
def P12396079405161827725.Spec : Prop :=
  ∀ n, P12396079405161827725.a n = A011947 n

end A011947

/-! ## A011947.P1521381703567917211

`A154955(2*n+1)+A056481(2*n+1)`
-/

namespace A011947.P1521381703567917211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (2 * n + 1) + A056481 (2 * n + 1)

end

end A011947.P1521381703567917211

namespace A011947

/-- `A154955(2*n+1)+A056481(2*n+1)` -/
def P1521381703567917211.Spec : Prop :=
  ∀ n, P1521381703567917211.a n = A011947 n

end A011947

/-! ## A011947.P4582749328400040183

`A056481(2*n+1)+A000035(A000010(n+2))`
-/

namespace A011947.P4582749328400040183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056481 (2 * n + 1) + A000035 (A000010 (n + 2)).toNat

end

end A011947.P4582749328400040183

namespace A011947

/-- `A056481(2*n+1)+A000035(A000010(n+2))` -/
def P4582749328400040183.Spec : Prop :=
  ∀ n, P4582749328400040183.a n = A011947 n

end A011947

/-! ## A011947.P8546440019561279834

`A056458(Δ[n²])/2`
-/

namespace A011947.P8546440019561279834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A011947.P8546440019561279834

namespace A011947

/-- `A056458(Δ[n²])/2` -/
def P8546440019561279834.Spec : Prop :=
  ∀ n, P8546440019561279834.a n = (A011947 n : ℚ)

end A011947

/-!
# A011948: Number of Barlow packings with group P63mc that repeat after 2n layers.

The programs for A011948, the canonical program `A011948.P7099134240328601283` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011948 has offset 6).

The definition of A011948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011948.P7099134240328601283

`A045686(n+6)/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A011948

/-- `A045686(n+6)/2` -/
def P7099134240328601283.Spec : Prop :=
  ∀ n, P7099134240328601283.a n = (A011948 (n + 6) : ℚ)

end A011948

/-! ## A011948.P15916988662642333433

`A309784(A056115(n)+17)`
-/

namespace A011948.P15916988662642333433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309784 (A056115 n + 17).toNat

end

end A011948.P15916988662642333433

namespace A011948

/-- `A309784(A056115(n)+17)` -/
def P15916988662642333433.Spec : Prop :=
  ∀ n, P15916988662642333433.a n = A011948 (n + 6)

end A011948

/-! ## A011948.P12107835302798938142

`A309784(Δ[A026041(n+6)])`
-/

namespace A011948.P12107835302798938142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026041 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309784 (f1 (n + 1) - f1 n).toNat

end

end A011948.P12107835302798938142

namespace A011948

/-- `A309784(Δ[A026041(n+6)])` -/
def P12107835302798938142.Spec : Prop :=
  ∀ n, P12107835302798938142.a n = A011948 (n + 6)

end A011948

/-! ## A011948.P5606400528629664001

`A309784(A000124(n+5)+1)`
-/

namespace A011948.P5606400528629664001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309784 (A000124 (n + 5) + 1).toNat

end

end A011948.P5606400528629664001

namespace A011948

/-- `A309784(A000124(n+5)+1)` -/
def P5606400528629664001.Spec : Prop :=
  ∀ n, P5606400528629664001.a n = A011948 (n + 6)

end A011948

/-! ## A011948.P1908427157993738729

`A309784(A000096(n+4)+3)`
-/

namespace A011948.P1908427157993738729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309784 (A000096 (n + 4) + 3).toNat

end

end A011948.P1908427157993738729

namespace A011948

/-- `A309784(A000096(n+4)+3)` -/
def P1908427157993738729.Spec : Prop :=
  ∀ n, P1908427157993738729.a n = A011948 (n + 6)

end A011948

/-!
# A011949: Number of Barlow packings with group P6(bar)m2 that repeat after 2n layers.

The programs for A011949, the canonical program `A011949.P6544439330995346585` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011949 has offset 1).

The definition of A011949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011949.P6544439330995346585

`A056336(n+1)-A056518(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A011949

/-- `A056336(n+1)-A056518(n+1)` -/
def P6544439330995346585.Spec : Prop :=
  ∀ n, P6544439330995346585.a n = A011949 (n + 1)

theorem P6544439330995346585.correct : P6544439330995346585.Spec := by
  intro n
  simp only [A011949, Nat.add_sub_cancel]

end A011949

/-! ## A011949.P11737517542889560490

`A045687(n+1)/2`
-/

namespace A011949.P11737517542889560490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045687 (n + 1) : ℚ) / 2

end

end A011949.P11737517542889560490

namespace A011949

/-- `A045687(n+1)/2` -/
def P11737517542889560490.Spec : Prop :=
  ∀ n, P11737517542889560490.a n = (A011949 (n + 1) : ℚ)

end A011949

/-! ## A011949.P15902906744718705833

`A014682(A045687(n+1))`
-/

namespace A011949.P15902906744718705833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A045687 (n + 1)).toNat

end

end A011949.P15902906744718705833

namespace A011949

/-- `A014682(A045687(n+1))` -/
def P15902906744718705833.Spec : Prop :=
  ∀ n, P15902906744718705833.a n = A011949 (n + 1)

end A011949

/-! ## A011949.P8480465242094116698

`A164089(A045687(n+1)+A000051(n))`
-/

namespace A011949.P8480465242094116698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A045687 (n + 1) + A000051 n).toNat

end

end A011949.P8480465242094116698

namespace A011949

/-- `A164089(A045687(n+1)+A000051(n))` -/
def P8480465242094116698.Spec : Prop :=
  ∀ n, P8480465242094116698.a n = A011949 (n + 1)

end A011949

/-! ## A011949.P11774590165122907882

`A060550(3*n+2)-A060582(A181735(3*n+1))`
-/

namespace A011949.P11774590165122907882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060550 (3 * n + 2) - A060582 (A181735 (3 * n + 1)).toNat

end

end A011949.P11774590165122907882

namespace A011949

/-- `A060550(3*n+2)-A060582(A181735(3*n+1))` -/
def P11774590165122907882.Spec : Prop :=
  ∀ n, P11774590165122907882.a n = A011949 (n + 1)

end A011949

/-!
# A011950: Number of Barlow packings with group P3(bar)m1(SO) that repeat after 2n-1 layers.

The programs for A011950, there is no canonical definition to state claims against.
-/

/-! ## A011950.P15202057937141456215

`A011947(n)-A011954(n)`
-/

namespace A011950.P15202057937141456215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011947 n - A011954 n

end

end A011950.P15202057937141456215

/-! ## A011950.P15789354448794869232

`A045683(2*n+1)-A011954(n)`
-/

namespace A011950.P15789354448794869232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 (2 * n + 1) - A011954 n

end

end A011950.P15789354448794869232

/-! ## A011950.P2955324243484558511

`A001045(n)-A086971(A002878(n))`
-/

namespace A011950.P2955324243484558511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A086971 (A002878 n).toNat

end

end A011950.P2955324243484558511

/-! ## A011950.P9768560766692209597

`A001045(n)-A084658(A114522(n+4))`
-/

namespace A011950.P9768560766692209597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A084658 (A114522 (n + 4)).toNat

end

end A011950.P9768560766692209597

/-!
# A011951: Number of Barlow packings with group P3(bar)m1(S) that repeat after 2n layers.

The programs for A011951, there is no canonical definition to state claims against.
-/

/-! ## A011951.P17728696466777206325

`A237817(A148766(n))`
-/

namespace A011951.P17728696466777206325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237817 (A148766 n).toNat

end

end A011951.P17728696466777206325

/-! ## A011951.P11803201075601980459

`A393697(A276724(n))`
-/

namespace A011951.P11803201075601980459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393697 (A276724 n).toNat

end

end A011951.P11803201075601980459

/-! ## A011951.P5835400217358531024

`A393697(A276725(n))`
-/

namespace A011951.P5835400217358531024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393697 (A276725 n).toNat

end

end A011951.P5835400217358531024

/-! ## A011951.P2850529567625295582

`A393697(A276726(n))`
-/

namespace A011951.P2850529567625295582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393697 (A276726 n).toNat

end

end A011951.P2850529567625295582

/-! ## A011951.P1893928854848010618

`A393697(A287279(n))`
-/

namespace A011951.P1893928854848010618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393697 (A287279 n).toNat

end

end A011951.P1893928854848010618

/-!
# A011954: Barlow packings with group R3(bar)m(SO) that repeat after 6n+3 layers.

The programs for A011954, there is no canonical definition to state claims against.
-/

/-! ## A011954.P12135971989245379287

`A011947(n)-A011950(n+1)`
-/

namespace A011954.P12135971989245379287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011947 n - A011950 (n + 1)

end

end A011954.P12135971989245379287

/-! ## A011954.P11841314380733373602

`xor(ceil(2*(2^n-1)/3), A010060(A370970(n+1)))`
-/

namespace A011954.P11841314380733373602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈2 * (((2 ^ n : ℤ) - 1 : ℚ) / 3)⌉ (A010060 (A370970 (n + 1)).toNat)

end

end A011954.P11841314380733373602

/-! ## A011954.P3372159445045984640

`A001045(n+1)-A368914(A319765(n))`
-/

namespace A011954.P3372159445045984640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A368914 (A319765 n).toNat

end

end A011954.P3372159445045984640

/-! ## A011954.P15359164296751750608

`A167030(n+1)+A010060(A000984(n))`
-/

namespace A011954.P15359164296751750608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (n + 1) + A010060 (A000984 n).toNat

end

end A011954.P15359164296751750608

/-! ## A011954.P12353568462206396121

`A001045(n+1)-A381955(A002212(n))`
-/

namespace A011954.P12353568462206396121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A381955 (A002212 n).toNat

end

end A011954.P12353568462206396121

/-!
# A011955: Number of Barlow packings with group R3(bar)m(O) that repeat after 6n layers.

The programs for A011955, there is no canonical definition to state claims against.
-/

/-! ## A011955.P5977343092212772588

`A061392(A291228(n))`
-/

namespace A011955.P5977343092212772588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A291228 n).toNat

end

end A011955.P5977343092212772588

/-! ## A011955.P15800398091933887091

`A343228(A291257(n))`
-/

namespace A011955.P15800398091933887091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A291257 n).toNat

end

end A011955.P15800398091933887091

/-! ## A011955.P12125301078035451299

`A099375(A084175(n))-A241636(n)`
-/

namespace A011955.P12125301078035451299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A084175 n).toNat - A241636 n

end

end A011955.P12125301078035451299

/-! ## A011955.P1826506999339627200

`A301899(A301700(n+1))+A001924(n)`
-/

namespace A011955.P1826506999339627200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (A301700 (n + 1)).toNat + A001924 n

end

end A011955.P1826506999339627200

/-!
# A011956: Number of close-packings with layer-number 3n and space group R3m.

The programs for A011956, there is no canonical definition to state claims against.
-/

/-! ## A011956.P10986062404658903184

`A248170(A320802(n+1))`
-/

namespace A011956.P10986062404658903184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A320802 (n + 1)).toNat

end

end A011956.P10986062404658903184

/-! ## A011956.P805533199041252333

`A276581(∑[A290355(n)])`
-/

namespace A011956.P805533199041252333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011956.P805533199041252333

/-! ## A011956.P4890492903385120150

`A005041(A006134(n)-1)`
-/

namespace A011956.P4890492903385120150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A006134 n - 1).toNat

end

end A011956.P4890492903385120150

/-! ## A011956.P9902521117032428742

`A005041(2*A215493(n))`
-/

namespace A011956.P9902521117032428742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (2 * A215493 n).toNat

end

end A011956.P9902521117032428742

/-!
# A011957: Number of ZnS polytypes that repeat after n layers.

The programs for A011957, there is no canonical definition to state claims against.
-/

/-! ## A011957.P9585427305096738695

`∑{d}[n+1, A008683(#)*A306888((n+1)/#)]`
-/

namespace A011957.P9585427305096738695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A306888 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A011957.P9585427305096738695

/-! ## A011957.P1886864141474047123

`A103221(A008965(n+1)^A294775(n))`
-/

namespace A011957.P1886864141474047123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.roundAway ((A008965 (n + 1) : ℚ) ^ (A294775 n : ℤ))).toNat

end

end A011957.P1886864141474047123

/-! ## A011957.P2867382637393274989

`A103221(A008965(n+1))%A374936(n+6)`
-/

namespace A011957.P2867382637393274989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103221 (A008965 (n + 1)).toNat) (A374936 (n + 6))

end

end A011957.P2867382637393274989

/-! ## A011957.P8581913777411209596

`A103221(A294775(n)²²*A008965(n+1))`
-/

namespace A011957.P8581913777411209596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((A294775 n ^ 2) ^ 2 * A008965 (n + 1)).toNat

end

end A011957.P8581913777411209596

/-! ## A011957.P8570027800690679820

`A140473(A005251(n))`
-/

namespace A011957.P8570027800690679820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A005251 n).toNat

end

end A011957.P8570027800690679820

/-!
# A011958: Number of CdI_2 polytypes that repeat after 2n layers.

The programs for A011958, there is no canonical definition to state claims against.
-/

/-! ## A011958.P14470993406561692962

`A106432(A003480(n))`
-/

namespace A011958.P14470993406561692962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A003480 n).toNat

end

end A011958.P14470993406561692962

/-! ## A011958.P15356039856403278037

`A350969(A387006(n+1))`
-/

namespace A011958.P15356039856403278037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (A387006 (n + 1)).toNat

end

end A011958.P15356039856403278037

/-! ## A011958.P11755857084601808422

`A292652(A000108(n)^A008326(n+2))`
-/

namespace A011958.P11755857084601808422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292652 (SequenceMachineLib.roundAway ((A000108 n : ℚ) ^ (A008326 (n + 2) : ℤ))).toNat

end

end A011958.P11755857084601808422

/-!
# A011960: Number of ferrites M_2Y_n that repeat after 6n+10 layers.

The programs for A011960, the canonical program `A011960.P12599147134811932708` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011960 has offset 1).

The definition of A011960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011960.P12599147134811932708

`ceil(xor(1, n+1)/6)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011960

/-- `ceil(xor(1, n+1)/6)` -/
def P12599147134811932708.Spec : Prop :=
  ∀ n, P12599147134811932708.a n = A011960 (n + 1)

theorem P12599147134811932708.correct : P12599147134811932708.Spec := by
  intro n
  simp only [A011960, Nat.add_sub_cancel]

end A011960

/-! ## A011960.P10124287130333151600

`round(xor(1, n+3)/6)`
-/

namespace A011960.P10124287130333151600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 3) : ℚ) / 6)

end

end A011960.P10124287130333151600

namespace A011960

/-- `round(xor(1, n+3)/6)` -/
def P10124287130333151600.Spec : Prop :=
  ∀ n, P10124287130333151600.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P6850291451646273202

`ceil((n%3+n)/6)`
-/

namespace A011960.P6850291451646273202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n % 3 + n : ℕ) : ℚ) / 6⌉

end

end A011960.P6850291451646273202

namespace A011960

/-- `ceil((n%3+n)/6)` -/
def P6850291451646273202.Spec : Prop :=
  ∀ n, P6850291451646273202.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P15159515470827127884

`Δ[round((n+3)²/12)]`
-/

namespace A011960.P15159515470827127884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011960.P15159515470827127884

namespace A011960

/-- `Δ[round((n+3)²/12)]` -/
def P15159515470827127884.Spec : Prop :=
  ∀ n, P15159515470827127884.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P11365331545796378864

`∑[xor(3, n²)%3]-n`
-/

namespace A011960.P11365331545796378864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n ^ 2) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A011960.P11365331545796378864

namespace A011960

/-- `∑[xor(3, n²)%3]-n` -/
def P11365331545796378864.Spec : Prop :=
  ∀ n, P11365331545796378864.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P9495154485865047897

`a(n-3)+and(1, n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A011960.P9495154485865047897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + Nat.land 1 n

end

end A011960.P9495154485865047897

namespace A011960

/-- `a(n-3)+and(1, n)` -/
def P9495154485865047897.Spec : Prop :=
  ∀ n, (P9495154485865047897.a n : ℤ) = A011960 (n + 1)

end A011960

/-! ## A011960.P6706729017405889813

`floor(n+2-∑[gcd(3, n)/2])`
-/

namespace A011960.P6706729017405889813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A011960.P6706729017405889813

namespace A011960

/-- `floor(n+2-∑[gcd(3, n)/2])` -/
def P6706729017405889813.Spec : Prop :=
  ∀ n, P6706729017405889813.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P1650345666716133687

`ceil((n+2)/3-a(n-1))` with `a(0)=0`
-/

namespace A011960.P1650345666716133687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(n + 2 : ℚ) / 3 - (a (n - 1) : ℚ)⌉

end

end A011960.P1650345666716133687

namespace A011960

/-- `ceil((n+2)/3-a(n-1))` -/
def P1650345666716133687.Spec : Prop :=
  ∀ n, P1650345666716133687.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P16255262571839827359

`round((n+3)/3-a(n-1))` with `a(0)=0`
-/

namespace A011960.P16255262571839827359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) / 3 - (a (n - 1) : ℚ))

end

end A011960.P16255262571839827359

namespace A011960

/-- `round((n+3)/3-a(n-1))` -/
def P16255262571839827359.Spec : Prop :=
  ∀ n, P16255262571839827359.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P2979862627884509117

`-floor(a(n-1)-(n+2)/3)` with `a(0)=0`
-/

namespace A011960.P2979862627884509117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -⌊(a (n - 1) : ℚ) - (n + 2 : ℚ) / 3⌋

end

end A011960.P2979862627884509117

namespace A011960

/-- `-floor(a(n-1)-(n+2)/3)` -/
def P2979862627884509117.Spec : Prop :=
  ∀ n, P2979862627884509117.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P16236040676131453451

`∑[1-a(n-1)]-floor(n/3)` with `a(0)=0`
-/

namespace A011960.P16236040676131453451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℚ) / 3⌋

end

end A011960.P16236040676131453451

namespace A011960

/-- `∑[1-a(n-1)]-floor(n/3)` -/
def P16236040676131453451.Spec : Prop :=
  ∀ n, P16236040676131453451.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P6263943643365260818

`1-floor((1-n)/3)-a(n-1)` with `a(0)=0`
-/

namespace A011960.P6263943643365260818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ⌊(1 - (n : ℤ) : ℚ) / 3⌋ - a (n - 1)

end

end A011960.P6263943643365260818

namespace A011960

/-- `1-floor((1-n)/3)-a(n-1)` -/
def P6263943643365260818.Spec : Prop :=
  ∀ n, P6263943643365260818.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P12645054690269118971

`A103221(n+1)`
-/

namespace A011960.P12645054690269118971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1)

end

end A011960.P12645054690269118971

namespace A011960

/-- `A103221(n+1)` -/
def P12645054690269118971.Spec : Prop :=
  ∀ n, P12645054690269118971.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P5488807347939642102

`abs(Δ[A154958(n)])`
-/

namespace A011960.P5488807347939642102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A011960.P5488807347939642102

namespace A011960

/-- `abs(Δ[A154958(n)])` -/
def P5488807347939642102.Spec : Prop :=
  ∀ n, P5488807347939642102.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P5414688953826273415

`A008624(A130727(n))`
-/

namespace A011960.P5414688953826273415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A130727 n).toNat

end

end A011960.P5414688953826273415

namespace A011960

/-- `A008624(A130727(n))` -/
def P5414688953826273415.Spec : Prop :=
  ∀ n, P5414688953826273415.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P6318059159691436726

`A004526(A016729(n+1))`
-/

namespace A011960.P6318059159691436726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016729 (n + 1)).toNat

end

end A011960.P6318059159691436726

namespace A011960

/-- `A004526(A016729(n+1))` -/
def P6318059159691436726.Spec : Prop :=
  ∀ n, P6318059159691436726.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P6163422068932574981

`A008615(n)+A000035(n)`
-/

namespace A011960.P6163422068932574981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + A000035 n

end

end A011960.P6163422068932574981

namespace A011960

/-- `A008615(n)+A000035(n)` -/
def P6163422068932574981.Spec : Prop :=
  ∀ n, P6163422068932574981.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P10722547222425193807

`A007494(n)-A004773(n)`
-/

namespace A011960.P10722547222425193807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - A004773 n

end

end A011960.P10722547222425193807

namespace A011960

/-- `A007494(n)-A004773(n)` -/
def P10722547222425193807.Spec : Prop :=
  ∀ n, P10722547222425193807.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P16989745616250319903

`A008620(n)-A008612(n)`
-/

namespace A011960.P16989745616250319903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n - A008612 n

end

end A011960.P16989745616250319903

namespace A011960

/-- `A008620(n)-A008612(n)` -/
def P16989745616250319903.Spec : Prop :=
  ∀ n, P16989745616250319903.a n = A011960 (n + 1)

end A011960

/-! ## A011960.P5039883755675404854

`A008621(n)-A008647(n)`
-/

namespace A011960.P5039883755675404854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A008647 n

end

end A011960.P5039883755675404854

namespace A011960

/-- `A008621(n)-A008647(n)` -/
def P5039883755675404854.Spec : Prop :=
  ∀ n, P5039883755675404854.a n = A011960 (n + 1)

end A011960

/-!
# A011961: Number of ferrites M_4Y_n that repeat after 6n+20 layers.

The programs for A011961, the canonical program `A011961.P171061349715616591` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011961 has offset 1).

The definition of A011961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011961.P171061349715616591

`A307985(n+1)+∑[A005044(n+2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011961

/-- `A307985(n+1)+∑[A005044(n+2)]` -/
def P171061349715616591.Spec : Prop :=
  ∀ n, P171061349715616591.a n = A011961 (n + 1)

theorem P171061349715616591.correct : P171061349715616591.Spec := by
  intro n
  simp only [A011961, Nat.add_sub_cancel]

end A011961

/-! ## A011961.P13091355415842115526

`A307985(n+1)+A026810(n+3)`
-/

namespace A011961.P13091355415842115526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (n + 1) + A026810 (n + 3)

end

end A011961.P13091355415842115526

namespace A011961

/-- `A307985(n+1)+A026810(n+3)` -/
def P13091355415842115526.Spec : Prop :=
  ∀ n, P13091355415842115526.a n = A011961 (n + 1)

end A011961

/-! ## A011961.P14518591653295440750

`A024164(n+7)+∑[A005044(n+2)]`
-/

namespace A011961.P14518591653295440750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (n + 7) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011961.P14518591653295440750

namespace A011961

/-- `A024164(n+7)+∑[A005044(n+2)]` -/
def P14518591653295440750.Spec : Prop :=
  ∀ n, P14518591653295440750.a n = A011961 (n + 1)

end A011961

/-! ## A011961.P14621769261916761964

`A026810(A028242(2*(n+2)))+C(n, 2)%3*ceil(n/6)`
-/

namespace A011961.P14621769261916761964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A028242 (2 * (n + 2))).toNat + ((Nat.choose n 2 % 3 : ℕ) : ℤ) * ⌈(n : ℚ) / 6⌉

end

end A011961.P14621769261916761964

namespace A011961

/-- `A026810(A028242(2*(n+2)))+C(n, 2)%3*ceil(n/6)` -/
def P14621769261916761964.Spec : Prop :=
  ∀ n, P14621769261916761964.a n = A011961 (n + 1)

end A011961

/-! ## A011961.P7519480021024270988

`A026810(A028242(2*(n+2)))+round(A175676(n+1)/2)`
-/

namespace A011961.P7519480021024270988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A028242 (2 * (n + 2))).toNat + SequenceMachineLib.roundAway ((A175676 (n + 1) : ℚ) / 2)

end

end A011961.P7519480021024270988

namespace A011961

/-- `A026810(A028242(2*(n+2)))+round(A175676(n+1)/2)` -/
def P7519480021024270988.Spec : Prop :=
  ∀ n, P7519480021024270988.a n = A011961 (n + 1)

end A011961

/-!
# A011962: Number of ferrites M_6Y_n that repeat after 6n+30 layers.

The programs for A011962, there is no canonical definition to state claims against.
-/

/-! ## A011962.P1354981605914299518

`A323733(A251654(n)+A075427(n))`
-/

namespace A011962.P1354981605914299518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (A251654 n + A075427 n).toNat

end

end A011962.P1354981605914299518

/-! ## A011962.P10366809795045011894

`A365918(n+1)+A308064(A045546(2*n+3)+A010350(2*(n+2)))`
-/

namespace A011962.P10366809795045011894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365918 (n + 1) + A308064 (A045546 (2 * n + 3) + A010350 (2 * (n + 2))).toNat

end

end A011962.P10366809795045011894

/-!
# A011963: Number of ferrites M_8Y_n that repeat after 6n+40 layers.

The programs for A011963, there is no canonical definition to state claims against.
-/

/-! ## A011963.P5835857142012497677

`A002219(n+1)-A261100(A006372(n))`
-/

namespace A011963.P5835857142012497677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002219 (n + 1) - A261100 (A006372 n).toNat

end

end A011963.P5835857142012497677

/-!
# A011964: Number of ferrites M_{10}Y_n that repeat after 6n+50 layers.

The programs for A011964, there is no canonical definition to state claims against.
-/

/-! ## A011964.P6408156639221077627

`A157615(A052955(n))-A135010(n+1)`
-/

namespace A011964.P6408156639221077627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157615 (A052955 n).toNat - A135010 (n + 1)

end

end A011964.P6408156639221077627

/-! ## A011964.P15636276553548408215

`A157615(A052955(n))-A143773(2*n+5)`
-/

namespace A011964.P15636276553548408215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157615 (A052955 n).toNat - A143773 (2 * n + 5)

end

end A011964.P15636276553548408215

/-!
# A011965: Second differences of Bell numbers.

The programs for A011965, there is no canonical definition to state claims against.
-/

/-! ## A011965.P7143471203857992895

`Δ[Δ[A000110(n)]]`
-/

namespace A011965.P7143471203857992895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011965.P7143471203857992895

/-! ## A011965.P17144498952612329106

`A106436(∑[n+3])`
-/

namespace A011965.P17144498952612329106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A011965.P17144498952612329106

/-! ## A011965.P7158831872552048881

`record[A154108(n+1)]`
-/

namespace A011965.P7158831872552048881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011965.P7158831872552048881

/-! ## A011965.P13741981815200399026

`Δ[Δ[abs(A292935(n))]]`
-/

namespace A011965.P13741981815200399026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011965.P13741981815200399026

/-! ## A011965.P16941473612777787793

`Δ[Δ[A011971(∑[n])]]`
-/

namespace A011965.P16941473612777787793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011965.P16941473612777787793

/-! ## A011965.P8120804011227116591

`Δ[A108458(∑[n+2])]`
-/

namespace A011965.P8120804011227116591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011965.P8120804011227116591

/-! ## A011965.P14662129146358496585

`Δ[Δ[A188164(2*n)]]`
-/

namespace A011965.P14662129146358496585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011965.P14662129146358496585

/-! ## A011965.P18065374764686394641

`record[A154109(∑[n+1])]`
-/

namespace A011965.P18065374764686394641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154109 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011965.P18065374764686394641

/-! ## A011965.P1124847098074314194

`Δ[Δ[A011972(C(n, 2))]]`
-/

namespace A011965.P1124847098074314194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (Nat.choose n 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011965.P1124847098074314194

/-! ## A011965.P10173668184377363374

`A011971(∑[n+2]-2)`
-/

namespace A011965.P10173668184377363374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A011965.P10173668184377363374

/-!
# A011966: Third differences of Bell numbers.

The programs for A011966, there is no canonical definition to state claims against.
-/

/-! ## A011966.P15470764662682486493

`Δ[A011965(n)]`
-/

namespace A011966.P15470764662682486493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011966.P15470764662682486493

/-! ## A011966.P5816841791289525650

`Δ[Δ[Δ[A000110(n)]]]`
-/

namespace A011966.P5816841791289525650
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011966.P5816841791289525650

/-! ## A011966.P17717485329569264047

`Δ[A106436(∑[n+3])]`
-/

namespace A011966.P17717485329569264047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011966.P17717485329569264047

/-! ## A011966.P12302237802983765952

`Δ[record[A154108(n+1)]]`
-/

namespace A011966.P12302237802983765952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011966.P12302237802983765952

/-! ## A011966.P12688419575472271938

`A011972(∑[n+2]-2)`
-/

namespace A011966.P12688419575472271938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A011966.P12688419575472271938

/-! ## A011966.P17836846248804222452

`Δ[A011971(∑[n+2]-2)]`
-/

namespace A011966.P17836846248804222452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011966.P17836846248804222452

/-! ## A011966.P16009995063272675769

`A106436(∑[n+3]+n+3)`
-/

namespace A011966.P16009995063272675769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A011966.P16009995063272675769

/-! ## A011966.P2882664070209426500

`Δ[A182930(A167614(n+1))]`
-/

namespace A011966.P2882664070209426500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011966.P2882664070209426500

/-! ## A011966.P12477733698096187086

`Δ[A182930(A167499(n)+n)]`
-/

namespace A011966.P12477733698096187086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011966.P12477733698096187086

/-! ## A011966.P1521062748355171382

`A182930(A167614(n+2)+1)`
-/

namespace A011966.P1521062748355171382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A167614 (n + 2) + 1).toNat

end

end A011966.P1521062748355171382

/-!
# A011967: 4th differences of Bell numbers.

The programs for A011967, there is no canonical definition to state claims against.
-/

/-! ## A011967.P15542813657407699764

`Δ[A011966(n)]`
-/

namespace A011967.P15542813657407699764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011967.P15542813657407699764

/-! ## A011967.P11837250862300287992

`Δ[Δ[A011965(n)]]`
-/

namespace A011967.P11837250862300287992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011967.P11837250862300287992

/-! ## A011967.P11654873507027002809

`Δ[Δ[Δ[Δ[A000110(n)]]]]`
-/

namespace A011967.P11654873507027002809
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011967.P11654873507027002809

/-! ## A011967.P12340881303460396157

`Δ[Δ[A106436(∑[n+3])]]`
-/

namespace A011967.P12340881303460396157
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011967.P12340881303460396157

/-! ## A011967.P14745646983923415456

`Δ[A011972(A055998(n))]`
-/

namespace A011967.P14745646983923415456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011967.P14745646983923415456

/-! ## A011967.P6224540854884842377

`A106436(A052905(n+2))`
-/

namespace A011967.P6224540854884842377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A052905 (n + 2)).toNat

end

end A011967.P6224540854884842377

/-! ## A011967.P16770624240123762362

`A182930(A167499(n+3))`
-/

namespace A011967.P16770624240123762362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A167499 (n + 3)).toNat

end

end A011967.P16770624240123762362

/-! ## A011967.P1805049718056442818

`Δ[Δ[A011971(A027379(n))]]`
-/

namespace A011967.P1805049718056442818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A027379 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011967.P1805049718056442818

/-! ## A011967.P14089284641959634412

`A011966(n+1)-A011966(n)`
-/

namespace A011967.P14089284641959634412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011966 (n + 1) - A011966 n

end

end A011967.P14089284641959634412

/-! ## A011967.P17113236941820072497

`Δ[Δ[A182930(A167614(n+1))]]`
-/

namespace A011967.P17113236941820072497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A167614 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011967.P17113236941820072497

/-!
# A011968: Apply (1+Shift) to Bell numbers.

The programs for A011968, there is no canonical definition to state claims against.
-/

/-! ## A011968.P2074250320389121607

`A011971(∑[n]+1)`
-/

namespace A011968.P2074250320389121607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A011968.P2074250320389121607

/-! ## A011968.P12872750232507335884

`A106436(∑[n+1]+2)`
-/

namespace A011968.P12872750232507335884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A011968.P12872750232507335884

/-! ## A011968.P3400566461929171501

`A011969(n)-a(n-1)` with `a(0)=1`
-/

namespace A011968.P3400566461929171501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011969 n - a (n - 1)

end

end A011968.P3400566461929171501

/-! ## A011968.P773394032371150309

`record[A011971(A114091(n+1))]`
-/

namespace A011968.P773394032371150309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011968.P773394032371150309

/-! ## A011968.P6970435661702365619

`A011972(∑[n-A157928(n)])`
-/

namespace A011968.P6970435661702365619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A011968.P6970435661702365619

/-! ## A011968.P7708366387417380127

`record[gcd(A011971(n), A097230(n))]`
-/

namespace A011968.P7708366387417380127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011971 n) (A097230 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011968.P7708366387417380127

/-! ## A011968.P8018055879225000197

`A011972(A133263(n)-(n+1))`
-/

namespace A011968.P8018055879225000197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A133263 n - (n + 1 : ℤ)).toNat

end

end A011968.P8018055879225000197

/-! ## A011968.P12064714342609174339

`A011972(A133263(n)-1-n)`
-/

namespace A011968.P12064714342609174339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A133263 n - 1 - (n : ℤ)).toNat

end

end A011968.P12064714342609174339

/-! ## A011968.P18073382966917200780

`record[A011971(n+1)/A013609(n)]`
-/

namespace A011968.P18073382966917200780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011971 (n + 1) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011968.P18073382966917200780

/-! ## A011968.P6834400459761841920

`record[A182930(n+1)-Δ[A182930(n+1)]]`
-/

namespace A011968.P6834400459761841920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011968.P6834400459761841920

/-!
# A011969: Apply (1+Shift)^2 to Bell numbers.

The programs for A011969, there is no canonical definition to state claims against.
-/

/-! ## A011969.P24455928685173

`A011970(n)-a(n-1)` with `a(0)=1`
-/

namespace A011969.P24455928685173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011970 n - a (n - 1)

end

end A011969.P24455928685173

/-! ## A011969.P12720563561429956346

`A011971(A133263(n)+char[1])`
-/

namespace A011969.P12720563561429956346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A133263 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A011969.P12720563561429956346

/-! ## A011969.P14934810354904850371

`A106436(A133263(n))+A011968(n)`
-/

namespace A011969.P14934810354904850371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A133263 n).toNat + A011968 n

end

end A011969.P14934810354904850371

/-! ## A011969.P9518173010189535789

`A011972(A133263(n)-A028310(n))`
-/

namespace A011969.P9518173010189535789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A133263 n - A028310 n).toNat

end

end A011969.P9518173010189535789

/-! ## A011969.P4352081432013911240

`or(A011971(A133263(n)), A094497(n))`
-/

namespace A011969.P4352081432013911240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011971 (A133263 n).toNat) (A094497 n)

end

end A011969.P4352081432013911240

/-! ## A011969.P347028106964947629

`A011972(A046691(3*n+2)%A046691(2*n+1))`
-/

namespace A011969.P347028106964947629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (Int.tmod (A046691 (3 * n + 2)) (A046691 (2 * n + 1))).toNat

end

end A011969.P347028106964947629

/-! ## A011969.P2520528509948251254

`A011971(A284851(A008578(n+1))+A133263(n))`
-/

namespace A011969.P2520528509948251254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A284851 (A008578 (n + 1)).toNat + A133263 n).toNat

end

end A011969.P2520528509948251254

/-!
# A011970: Apply (1+Shift)^3 to Bell numbers.

The programs for A011970, there is no canonical definition to state claims against.
-/

/-! ## A011970.P1777299898626523488

`A138099(A086091(n))`
-/

namespace A011970.P1777299898626523488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (A086091 n).toNat

end

end A011970.P1777299898626523488

/-! ## A011970.P17893383004600703488

`A123578(A179986(n)+A123617(n))`
-/

namespace A011970.P17893383004600703488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A179986 n + A123617 n).toNat

end

end A011970.P17893383004600703488

/-!
# A011971: Aitken's array: triangle of numbers {a(n,k), n >= 0, 0 <= k <= n} read by rows, defined by a(0,0)=1, a(n,0) = a(n-1,n-1), a(n,k) = a(n,k-1) + a(n-1,k-1).

The programs for A011971, there is no canonical definition to state claims against.
-/

/-! ## A011971.P4661928318569564091

`A106436(comp[∑[n]])`
-/

namespace A011971.P4661928318569564091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A011971.P4661928318569564091

/-! ## A011971.P1921122918895957240

`A011972(A083920(n))`
-/

namespace A011971.P1921122918895957240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A083920 n).toNat

end

end A011971.P1921122918895957240

/-! ## A011971.P11584201244430803222

`A046936(n)+A046934(n)`
-/

namespace A011971.P11584201244430803222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 n + A046934 n

end

end A011971.P11584201244430803222

/-! ## A011971.P15103483314777584140

`A011972(2-A003057(n+2)+n)`
-/

namespace A011971.P15103483314777584140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (2 - A003057 (n + 2) + (n : ℤ)).toNat

end

end A011971.P15103483314777584140

/-! ## A011971.P9077698858719436389

`A046937(n)-A046936(n)`
-/

namespace A011971.P9077698858719436389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 n - A046936 n

end

end A011971.P9077698858719436389

/-! ## A011971.P2205869835652125180

`A095149(comp[∑[n]])`
-/

namespace A011971.P2205869835652125180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A011971.P2205869835652125180

/-! ## A011971.P10798634531956136879

`A123346(A061579(n))`
-/

namespace A011971.P10798634531956136879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A061579 n).toNat

end

end A011971.P10798634531956136879

/-! ## A011971.P5058414933308218682

`(A136791(n)+1)/2`
-/

namespace A011971.P5058414933308218682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136791 n + 1 : ℚ) / 2

end

end A011971.P5058414933308218682

/-! ## A011971.P16880710976133086154

`Δ[A011972(n)]`
-/

namespace A011971.P16880710976133086154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011971.P16880710976133086154

/-! ## A011971.P9225414235236080621

`Δ[record[A106436(n)]]`
-/

namespace A011971.P9225414235236080621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011971.P9225414235236080621

/-! ## A011971.P1927058620025278848

`A011972(n+1)-A011972(n)`
-/

namespace A011971.P1927058620025278848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (n + 1) - A011972 n

end

end A011971.P1927058620025278848

/-! ## A011971.P14889777557753227650

`Δ[record[A182930(A093995(n+1)-n)]]`
-/

namespace A011971.P14889777557753227650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A093995 (n + 1) - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A011971.P14889777557753227650

/-! ## A011971.P13108952370206991519

`A127740(n)/A002024(n+1)`
-/

namespace A011971.P13108952370206991519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127740 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A011971.P13108952370206991519

/-!
# A011972: Sequence formed by reading rows of triangle defined in A011971.

The programs for A011972, there is no canonical definition to state claims against.
-/

/-! ## A011972.P9513022807918013978

`record[A106436(n)]`
-/

namespace A011972.P9513022807918013978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P9513022807918013978

/-! ## A011972.P15958738255581165296

`∑[A011971(abs(1-n))]`
-/

namespace A011972.P15958738255581165296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011972.P15958738255581165296

/-! ## A011972.P1858873692990137016

`A011971(comp[∑[n+1]])`
-/

namespace A011972.P1858873692990137016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A011972.P1858873692990137016

/-! ## A011972.P15521565536731006864

`A011971(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A011972.P15521565536731006864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011971 (n - 1) + a (n - 1)

end

end A011972.P15521565536731006864

/-! ## A011972.P13961358952684047870

`record[A011971(A057979(n))]`
-/

namespace A011972.P13961358952684047870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P13961358952684047870

/-! ## A011972.P3098329263883177532

`A106436(lt[2, A124927(n)])`
-/

namespace A011972.P3098329263883177532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A011972.P3098329263883177532

/-! ## A011972.P4412610543185220966

`A106436(lt[3, A124928(n)])`
-/

namespace A011972.P4412610543185220966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A011972.P4412610543185220966

/-! ## A011972.P4926027330982503080

`record[A011971(∑[A057077(n)^n])]`
-/

namespace A011972.P4926027330982503080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P4926027330982503080

/-! ## A011972.P10582988767408554067

`A011971(comp[∑[n]])-A011971(n)`
-/

namespace A011972.P10582988767408554067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A011971 n

end

end A011972.P10582988767408554067

/-! ## A011972.P5064683450238868027

`record[A182930(A038722(n+1))]`
-/

namespace A011972.P5064683450238868027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P5064683450238868027

/-! ## A011972.P3799834199277742764

`record[A182930(A093995(n+1)-n)]`
-/

namespace A011972.P3799834199277742764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A093995 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P3799834199277742764

/-! ## A011972.P15937138154299249308

`A095149(2*A014132(n+1)-n)`
-/

namespace A011972.P15937138154299249308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A011972.P15937138154299249308

/-! ## A011972.P11926054040099742524

`A095149(A014132(A014132(n+1)))`
-/

namespace A011972.P11926054040099742524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A011972.P11926054040099742524

/-! ## A011972.P6973981733378463934

`record[Δ[A011971(n+1)]]`
-/

namespace A011972.P6973981733378463934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P6973981733378463934

/-! ## A011972.P17209499438407131917

`record[A011971(A219649(n)+1)]`
-/

namespace A011972.P17209499438407131917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A219649 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P17209499438407131917

/-! ## A011972.P410669181552014722

`record[A011971(A219649(n))]`
-/

namespace A011972.P410669181552014722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A219649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P410669181552014722

/-! ## A011972.P6921586486313060603

`record[A011971(A219659(n)+1)]`
-/

namespace A011972.P6921586486313060603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A219659 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P6921586486313060603

/-! ## A011972.P6349281533033387085

`record[A011971(A219659(n))]`
-/

namespace A011972.P6349281533033387085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A219659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A011972.P6349281533033387085

/-!
# A011973: Irregular triangle read by rows: T(n,k) = binomial(n-k, k), n >= 0, 0 <= k <= floor(n/2); or, coefficients of (one version of) Fibonacci polynomials.

The programs for A011973, the canonical program `A011973.P14749578380264178381` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011973 has offset 0).

The definition of A011973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011973.P8069217721340282218

`abs(A115139(n+1))`
-/

namespace A011973.P8069217721340282218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115139 (n + 1)|

end

end A011973.P8069217721340282218

namespace A011973

/-- `abs(A115139(n+1))` -/
def P8069217721340282218.Spec : Prop :=
  ∀ n, P8069217721340282218.a n = A011973 n

end A011973

/-! ## A011973.P9099436725533253274

`A391403(n)/A034868(n)`
-/

namespace A011973.P9099436725533253274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391403 n : ℚ) / (A034868 n : ℚ)

end

end A011973.P9099436725533253274

namespace A011973

/-- `A391403(n)/A034868(n)` -/
def P9099436725533253274.Spec : Prop :=
  ∀ n, P9099436725533253274.a n = (A011973 n : ℚ)

end A011973

/-! ## A011973.P6960152708504988157

`gcd(A000038(n), A115139(n+1))`
-/

namespace A011973.P6960152708504988157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115139 (n + 1))

end

end A011973.P6960152708504988157

namespace A011973

/-- `gcd(A000038(n), A115139(n+1))` -/
def P6960152708504988157.Spec : Prop :=
  ∀ n, (P6960152708504988157.a n : ℤ) = A011973 n

end A011973

/-! ## A011973.P9093691077889681072

`lcm(A020985(n), A115139(n+1))`
-/

namespace A011973.P9093691077889681072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A115139 (n + 1))

end

end A011973.P9093691077889681072

namespace A011973

/-- `lcm(A020985(n), A115139(n+1))` -/
def P9093691077889681072.Spec : Prop :=
  ∀ n, (P9093691077889681072.a n : ℤ) = A011973 n

end A011973

/-! ## A011973.P14749578380264178381

`C(A055086(n)-A055087(n), A055087(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011973

/-- `C(A055086(n)-A055087(n), A055087(n))` -/
def P14749578380264178381.Spec : Prop :=
  ∀ n, (P14749578380264178381.a n : ℤ) = A011973 n

theorem P14749578380264178381.correct : P14749578380264178381.Spec := by
  intro n
  simp only [A011973]

end A011973

/-! ## A011973.P9799931476744469379

`A115139(n+1)/A034807(n)*A213234(n)`
-/

namespace A011973.P9799931476744469379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115139 (n + 1) : ℚ) / (A034807 n : ℚ) * (A213234 n : ℚ)

end

end A011973.P9799931476744469379

namespace A011973

/-- `A115139(n+1)/A034807(n)*A213234(n)` -/
def P9799931476744469379.Spec : Prop :=
  ∀ n, P9799931476744469379.a n = (A011973 n : ℚ)

end A011973

/-! ## A011973.P7274832961914619645

`A128099(n)/A059268(A091018(n))`
-/

namespace A011973.P7274832961914619645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128099 n : ℚ) / (A059268 (A091018 n).toNat : ℚ)

end

end A011973.P7274832961914619645

namespace A011973

/-- `A128099(n)/A059268(A091018(n))` -/
def P7274832961914619645.Spec : Prop :=
  ∀ n, P7274832961914619645.a n = (A011973 n : ℚ)

end A011973

/-! ## A011973.P18099040873602415756

`A103631(comp[n²]+n)`
-/

namespace A011973.P18099040873602415756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A011973.P18099040873602415756

namespace A011973

/-- `A103631(comp[n²]+n)` -/
def P18099040873602415756.Spec : Prop :=
  ∀ n, P18099040873602415756.a n = A011973 n

end A011973

/-! ## A011973.P2459132924963478950

`abs(A108299(n+1+A000194(n)+n))`
-/

namespace A011973.P2459132924963478950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 ((n + 1 : ℤ) + (A000194 n + (n : ℤ))).toNat|

end

end A011973.P2459132924963478950

namespace A011973

/-- `abs(A108299(n+1+A000194(n)+n))` -/
def P2459132924963478950.Spec : Prop :=
  ∀ n, P2459132924963478950.a n = A011973 n

end A011973

/-! ## A011973.P9471887447995794761

`A007318(A091018(n))`
-/

namespace A011973.P9471887447995794761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A091018 n).toNat

end

end A011973.P9471887447995794761

namespace A011973

/-- `A007318(A091018(n))` -/
def P9471887447995794761.Spec : Prop :=
  ∀ n, P9471887447995794761.a n = A011973 n

end A011973

/-! ## A011973.P2493587021980063635

`A007318(A056536(n+1)-1)`
-/

namespace A011973.P2493587021980063635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A056536 (n + 1) - 1).toNat

end

end A011973.P2493587021980063635

namespace A011973

/-- `A007318(A056536(n+1)-1)` -/
def P2493587021980063635.Spec : Prop :=
  ∀ n, P2493587021980063635.a n = A011973 n

end A011973

/-! ## A011973.P5011667003266815581

`A052553(lt[0, A052553(n)])`
-/

namespace A011973.P5011667003266815581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A011973.P5011667003266815581

namespace A011973

/-- `A052553(lt[0, A052553(n)])` -/
def P5011667003266815581.Spec : Prop :=
  ∀ n, P5011667003266815581.a n = A011973 n

end A011973

/-! ## A011973.P4844727975533681925

`C(A003056(A091018(n)), A055087(n))`
-/

namespace A011973.P4844727975533681925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (A091018 n).toNat).toNat (A055087 n).toNat

end

end A011973.P4844727975533681925

namespace A011973

/-- `C(A003056(A091018(n)), A055087(n))` -/
def P4844727975533681925.Spec : Prop :=
  ∀ n, (P4844727975533681925.a n : ℤ) = A011973 n

end A011973

/-! ## A011973.P3848784334562452672

`C(A003056(A091018(n)), A082375(n))`
-/

namespace A011973.P3848784334562452672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 (A091018 n).toNat).toNat (A082375 n).toNat

end

end A011973.P3848784334562452672

namespace A011973

/-- `C(A003056(A091018(n)), A082375(n))` -/
def P3848784334562452672.Spec : Prop :=
  ∀ n, (P3848784334562452672.a n : ℤ) = A011973 n

end A011973

/-! ## A011973.P11950815744282860163

`abs(A053119(A028391(n)+n))`
-/

namespace A011973.P11950815744282860163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053119 (A028391 n + (n : ℤ)).toNat|

end

end A011973.P11950815744282860163

namespace A011973

/-- `abs(A053119(A028391(n)+n))` -/
def P11950815744282860163.Spec : Prop :=
  ∀ n, P11950815744282860163.a n = A011973 n

end A011973

/-! ## A011973.P15249660579195596630

`A065941(comp[n²]+n)`
-/

namespace A011973.P15249660579195596630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A011973.P15249660579195596630

namespace A011973

/-- `A065941(comp[n²]+n)` -/
def P15249660579195596630.Spec : Prop :=
  ∀ n, P15249660579195596630.a n = A011973 n

end A011973

/-! ## A011973.P8641626329071666270

`A162515(lt[0, A162515(n)])`
-/

namespace A011973.P8641626329071666270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A011973.P8641626329071666270

namespace A011973

/-- `A162515(lt[0, A162515(n)])` -/
def P8641626329071666270.Spec : Prop :=
  ∀ n, P8641626329071666270.a n = A011973 n

end A011973

/-! ## A011973.P4306325625520212118

`gcd(A207538(n+1), A304236(n))`
-/

namespace A011973.P4306325625520212118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A207538 (n + 1)) (A304236 n)

end

end A011973.P4306325625520212118

namespace A011973

/-- `gcd(A207538(n+1), A304236(n))` -/
def P4306325625520212118.Spec : Prop :=
  ∀ n, (P4306325625520212118.a n : ℤ) = A011973 n

end A011973

/-! ## A011973.P7810395414510319497

`A304236(n)/A000244(A055087(n))`
-/

namespace A011973.P7810395414510319497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304236 n : ℚ) / (A000244 (A055087 n).toNat : ℚ)

end

end A011973.P7810395414510319497

namespace A011973

/-- `A304236(n)/A000244(A055087(n))` -/
def P7810395414510319497.Spec : Prop :=
  ∀ n, P7810395414510319497.a n = (A011973 n : ℚ)

end A011973

/-! ## A011973.P17230524177803388158

`gcd(A128099(n), A132885(n))`
-/

namespace A011973.P17230524177803388158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128099 n) (A132885 n)

end

end A011973.P17230524177803388158

namespace A011973

/-- `gcd(A128099(n), A132885(n))` -/
def P17230524177803388158.Spec : Prop :=
  ∀ n, (P17230524177803388158.a n : ℤ) = A011973 n

end A011973

/-!
# A011974: 2 followed by the numbers that are the sum of 2 successive primes.

The programs for A011974, the canonical program `A011974.P2665693327137284562` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011974 has offset 1).

The definition of A011974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011974.P1198976199924824873

`ceil(2*sqrt(A023515(n+1)))`
-/

namespace A011974.P1198976199924824873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A023515 (n + 1) : ℝ)⌉

end

end A011974.P1198976199924824873

namespace A011974

/-- `ceil(2*sqrt(A023515(n+1)))` -/
def P1198976199924824873.Spec : Prop :=
  ∀ n, P1198976199924824873.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P2665693327137284562

`A001043(n%a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011974

/-- `A001043(n%a(n-1))` -/
def P2665693327137284562.Spec : Prop :=
  ∀ n, P2665693327137284562.a n = A011974 (n + 1)

theorem P2665693327137284562.correct : P2665693327137284562.Spec := by
  intro n
  simp only [A011974, Nat.add_sub_cancel]

end A011974

/-! ## A011974.P9592179735993871953

`a(n-1)+A046930(n)+2` with `a(0)=2`
-/

namespace A011974.P9592179735993871953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A046930 n + 2)

end

end A011974.P9592179735993871953

namespace A011974

/-- `a(n-1)+A046930(n)+2` -/
def P9592179735993871953.Spec : Prop :=
  ∀ n, P9592179735993871953.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P11287715860238488953

`A182986(n+1)+Δ[A007504(n)]`
-/

namespace A011974.P11287715860238488953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + (f1 (n + 1) - f1 n)

end

end A011974.P11287715860238488953

namespace A011974

/-- `A182986(n+1)+Δ[A007504(n)]` -/
def P11287715860238488953.Spec : Prop :=
  ∀ n, P11287715860238488953.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P16786404037112856599

`A008578(n+1)+A006005(n+1)`
-/

namespace A011974.P16786404037112856599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A006005 (n + 1)

end

end A011974.P16786404037112856599

namespace A011974

/-- `A008578(n+1)+A006005(n+1)` -/
def P16786404037112856599.Spec : Prop :=
  ∀ n, P16786404037112856599.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P3337077414832448088

`A076368(n+1)+A076274(n+1)`
-/

namespace A011974.P3337077414832448088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + A076274 (n + 1)

end

end A011974.P3337077414832448088

namespace A011974

/-- `A076368(n+1)+A076274(n+1)` -/
def P3337077414832448088.Spec : Prop :=
  ∀ n, P3337077414832448088.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P1931044254117490674

`A182986(n+1)+A000040(n+1)`
-/

namespace A011974.P1931044254117490674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A000040 (n + 1)

end

end A011974.P1931044254117490674

namespace A011974

/-- `A182986(n+1)+A000040(n+1)` -/
def P1931044254117490674.Spec : Prop :=
  ∀ n, P1931044254117490674.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P6691056252930185740

`A299763(n+1)+A006093(n+1)`
-/

namespace A011974.P6691056252930185740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + A006093 (n + 1)

end

end A011974.P6691056252930185740

namespace A011974

/-- `A299763(n+1)+A006093(n+1)` -/
def P6691056252930185740.Spec : Prop :=
  ∀ n, P6691056252930185740.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P9871278866921956525

`A048448(n+1)-A001223(n+1)`
-/

namespace A011974.P9871278866921956525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) - A001223 (n + 1)

end

end A011974.P9871278866921956525

namespace A011974

/-- `A048448(n+1)-A001223(n+1)` -/
def P9871278866921956525.Spec : Prop :=
  ∀ n, P9871278866921956525.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P11369090108433560585

`A100484(n+1)-A054541(n+1)`
-/

namespace A011974.P11369090108433560585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A054541 (n + 1)

end

end A011974.P11369090108433560585

namespace A011974

/-- `A100484(n+1)-A054541(n+1)` -/
def P11369090108433560585.Spec : Prop :=
  ∀ n, P11369090108433560585.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P13915502139231225500

`A072055(n+1)-A230847(n+1)`
-/

namespace A011974.P13915502139231225500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A230847 (n + 1)

end

end A011974.P13915502139231225500

namespace A011974

/-- `A072055(n+1)-A230847(n+1)` -/
def P13915502139231225500.Spec : Prop :=
  ∀ n, P13915502139231225500.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P14937226588642896425

`∪[A001043(n+1), A007352(n+1)]`
-/

namespace A011974.P14937226588642896425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A011974.P14937226588642896425

namespace A011974

/-- `∪[A001043(n+1), A007352(n+1)]` -/
def P14937226588642896425.Spec : Prop :=
  ∀ n, (P14937226588642896425.a n : ℤ) = A011974 (n + 1)

end A011974

/-! ## A011974.P8456233444496113524

`A182986(n+1)+abs(A273960(n+1))`
-/

namespace A011974.P8456233444496113524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + |A273960 (n + 1)|

end

end A011974.P8456233444496113524

namespace A011974

/-- `A182986(n+1)+abs(A273960(n+1))` -/
def P8456233444496113524.Spec : Prop :=
  ∀ n, P8456233444496113524.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P6857390661539683206

`A182986(n+1)+∑[A054541(n+1)]`
-/

namespace A011974.P6857390661539683206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011974.P6857390661539683206

namespace A011974

/-- `A182986(n+1)+∑[A054541(n+1)]` -/
def P6857390661539683206.Spec : Prop :=
  ∀ n, P6857390661539683206.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P6322153521969206228

`2*A000040(n+1)-A054541(n+1)`
-/

namespace A011974.P6322153521969206228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A054541 (n + 1)

end

end A011974.P6322153521969206228

namespace A011974

/-- `2*A000040(n+1)-A054541(n+1)` -/
def P6322153521969206228.Spec : Prop :=
  ∀ n, P6322153521969206228.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P11270423992806260838

`∑[A046930(n+1)+2]-A046930(n+1)`
-/

namespace A011974.P11270423992806260838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046930 (n + 1)

end

end A011974.P11270423992806260838

namespace A011974

/-- `∑[A046930(n+1)+2]-A046930(n+1)` -/
def P11270423992806260838.Spec : Prop :=
  ∀ n, P11270423992806260838.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P7128646616882355638

`abs(A000040(n+1)+A000040(n)+a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A011974.P7128646616882355638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |A000040 (n + 1) + (A000040 n + a (n - 1))| - a (n - 1)

end

end A011974.P7128646616882355638

namespace A011974

/-- `abs(A000040(n+1)+A000040(n)+a(n-1))-a(n-1)` -/
def P7128646616882355638.Spec : Prop :=
  ∀ n, P7128646616882355638.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P2013274842901294916

`A048448(n+1)+A100484(n+1)-A001043(n+1)`
-/

namespace A011974.P2013274842901294916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) + (A100484 (n + 1) - A001043 (n + 1))

end

end A011974.P2013274842901294916

namespace A011974

/-- `A048448(n+1)+A100484(n+1)-A001043(n+1)` -/
def P2013274842901294916.Spec : Prop :=
  ∀ n, P2013274842901294916.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P6024255545965503794

`A076273(n+1)+A057427(n)`
-/

namespace A011974.P6024255545965503794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 1) + A057427 n

end

end A011974.P6024255545965503794

namespace A011974

/-- `A076273(n+1)+A057427(n)` -/
def P6024255545965503794.Spec : Prop :=
  ∀ n, P6024255545965503794.a n = A011974 (n + 1)

end A011974

/-! ## A011974.P607310559289530840

`A076273(n+1)-A057428(n)`
-/

namespace A011974.P607310559289530840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 (n + 1) - A057428 n

end

end A011974.P607310559289530840

namespace A011974

/-- `A076273(n+1)-A057428(n)` -/
def P607310559289530840.Spec : Prop :=
  ∀ n, P607310559289530840.a n = A011974 (n + 1)

end A011974

/-!
# A011975: Covering numbers C(n,3,2).

The programs for A011975, the canonical program `A011975.P1498631046022352403` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011975 has offset 3).

The definition of A011975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A011975.P1498631046022352403

`A001399(or(1, n+1))+∑[A008615(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A011975

/-- `A001399(or(1, n+1))+∑[A008615(n)]` -/
def P1498631046022352403.Spec : Prop :=
  ∀ n, P1498631046022352403.a n = A011975 (n + 3)

theorem P1498631046022352403.correct : P1498631046022352403.Spec := by
  intro n
  simp only [A011975, Nat.add_sub_cancel]

end A011975

/-! ## A011975.P2307553989550288574

`A275673(n+1)+A032765(n-A004526(n))`
-/

namespace A011975.P2307553989550288574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275673 (n + 1) + A032765 ((n : ℤ) - A004526 n).toNat

end

end A011975.P2307553989550288574

namespace A011975

/-- `A275673(n+1)+A032765(n-A004526(n))` -/
def P2307553989550288574.Spec : Prop :=
  ∀ n, P2307553989550288574.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P4011336780343685580

`A008796(or(1, n+1))+A001399(n+1)`
-/

namespace A011975.P4011336780343685580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (Nat.lor 1 (n + 1)) + A001399 (n + 1)

end

end A011975.P4011336780343685580

namespace A011975

/-- `A008796(or(1, n+1))+A001399(n+1)` -/
def P4011336780343685580.Spec : Prop :=
  ∀ n, P4011336780343685580.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P18146997000730088553

`A069905(or(1, n+1))+A001399(n+1)`
-/

namespace A011975.P18146997000730088553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (Nat.lor 1 (n + 1)) + A001399 (n + 1)

end

end A011975.P18146997000730088553

namespace A011975

/-- `A069905(or(1, n+1))+A001399(n+1)` -/
def P18146997000730088553.Spec : Prop :=
  ∀ n, P18146997000730088553.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P7419961368259680530

`A275673(n+1)+A032765(A004526(n+1))`
-/

namespace A011975.P7419961368259680530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275673 (n + 1) + A032765 (A004526 (n + 1)).toNat

end

end A011975.P7419961368259680530

namespace A011975

/-- `A275673(n+1)+A032765(A004526(n+1))` -/
def P7419961368259680530.Spec : Prop :=
  ∀ n, P7419961368259680530.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P8747400337525786239

`ceil(A093353(n+2)/3)`
-/

namespace A011975.P8747400337525786239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093353 (n + 2) : ℚ) / 3⌉

end

end A011975.P8747400337525786239

namespace A011975

/-- `ceil(A093353(n+2)/3)` -/
def P8747400337525786239.Spec : Prop :=
  ∀ n, P8747400337525786239.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P6429349424216310388

`round(A001399(A042948(n+1)+1)/2)`
-/

namespace A011975.P6429349424216310388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001399 (A042948 (n + 1) + 1).toNat : ℚ) / 2)

end

end A011975.P6429349424216310388

namespace A011975

/-- `round(A001399(A042948(n+1)+1)/2)` -/
def P6429349424216310388.Spec : Prop :=
  ∀ n, P6429349424216310388.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P7127455098410136703

`A275673(n+1)+A032765(A002265(2*(n+1)))`
-/

namespace A011975.P7127455098410136703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275673 (n + 1) + A032765 (A002265 (2 * (n + 1))).toNat

end

end A011975.P7127455098410136703

namespace A011975

/-- `A275673(n+1)+A032765(A002265(2*(n+1)))` -/
def P7127455098410136703.Spec : Prop :=
  ∀ n, P7127455098410136703.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P15678010232577363734

`A309689(2*A008619(n+1)+n)+A008619(n+1)`
-/

namespace A011975.P15678010232577363734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309689 (2 * A008619 (n + 1) + (n : ℤ)).toNat + A008619 (n + 1)

end

end A011975.P15678010232577363734

namespace A011975

/-- `A309689(2*A008619(n+1)+n)+A008619(n+1)` -/
def P15678010232577363734.Spec : Prop :=
  ∀ n, P15678010232577363734.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P14338884294881146689

`A309687(A100832(n+2))`
-/

namespace A011975.P14338884294881146689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309687 (A100832 (n + 2)).toNat

end

end A011975.P14338884294881146689

namespace A011975

/-- `A309687(A100832(n+2))` -/
def P14338884294881146689.Spec : Prop :=
  ∀ n, P14338884294881146689.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P11527576675649102748

`A036838(∑[n+1]+1)`
-/

namespace A011975.P11527576675649102748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A011975.P11527576675649102748

namespace A011975

/-- `A036838(∑[n+1]+1)` -/
def P11527576675649102748.Spec : Prop :=
  ∀ n, P11527576675649102748.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P4791862580469349746

`A008620(A079326(n+3))`
-/

namespace A011975.P4791862580469349746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A079326 (n + 3)).toNat

end

end A011975.P4791862580469349746

namespace A011975

/-- `A008620(A079326(n+3))` -/
def P4791862580469349746.Spec : Prop :=
  ∀ n, P4791862580469349746.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P9625012528994006232

`A002264(A093353(n+2)+2)`
-/

namespace A011975.P9625012528994006232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A093353 (n + 2) + 2).toNat

end

end A011975.P9625012528994006232

namespace A011975

/-- `A002264(A093353(n+2)+2)` -/
def P9625012528994006232.Spec : Prop :=
  ∀ n, P9625012528994006232.a n = A011975 (n + 3)

end A011975

/-! ## A011975.P14053931763872013534

`A008620((n+1)*A008619(n+3))`
-/

namespace A011975.P14053931763872013534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n + 1 : ℤ) * A008619 (n + 3)).toNat

end

end A011975.P14053931763872013534

namespace A011975

/-- `A008620((n+1)*A008619(n+3))` -/
def P14053931763872013534.Spec : Prop :=
  ∀ n, P14053931763872013534.a n = A011975 (n + 3)

end A011975

/-!
# A011977: Covering numbers C(n,5,2).

The programs for A011977, there is no canonical definition to state claims against.
-/

/-! ## A011977.P3792633311413599999

`A108852(A337090(n+1))`
-/

namespace A011977.P3792633311413599999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A337090 (n + 1)).toNat

end

end A011977.P3792633311413599999

/-! ## A011977.P1168599375128442722

`A061420(A063886(n)+n)`
-/

namespace A011977.P1168599375128442722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A063886 n + (n : ℤ)).toNat

end

end A011977.P1168599375128442722

/-! ## A011977.P4634600715240766114

`A108852(A007477(n)%A002720(n))`
-/

namespace A011977.P4634600715240766114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (Int.tmod (A007477 n) (A002720 n)).toNat

end

end A011977.P4634600715240766114

/-! ## A011977.P4841871321218366347

`A108852(A007477(n))%A034491(n)`
-/

namespace A011977.P4841871321218366347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108852 (A007477 n).toNat) (A034491 n)

end

end A011977.P4841871321218366347

/-! ## A011977.P15935616806364558436

`A108852(A191520(n+1)+A000045(n))`
-/

namespace A011977.P15935616806364558436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (A191520 (n + 1) + A000045 n).toNat

end

end A011977.P15935616806364558436

/-!
# A011979: Covering numbers C(n,4,3).

The programs for A011979, there is no canonical definition to state claims against.
-/

/-! ## A011979.P14630582669737439100

`A036831(n+4)+char[3]`
-/

namespace A011979.P14630582669737439100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036831 (n + 4) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011979.P14630582669737439100

/-! ## A011979.P4689468365622254694

`A036838(∑[n+2]+3)+char[3]`
-/

namespace A011979.P4689468365622254694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A011979.P4689468365622254694

/-! ## A011979.P5499808354341412858

`A045840(n)+A036831(n+4)`
-/

namespace A011979.P5499808354341412858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 n + A036831 (n + 4)

end

end A011979.P5499808354341412858

/-! ## A011979.P8220411914638981581

`A083935(n)+A036831(n+4)`
-/

namespace A011979.P8220411914638981581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083935 n + A036831 (n + 4)

end

end A011979.P8220411914638981581

/-! ## A011979.P3912094984337515245

`A185013(n)+A036831(n+4)`
-/

namespace A011979.P3912094984337515245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A036831 (n + 4)

end

end A011979.P3912094984337515245

/-!
# A011983: Covering numbers C(n,5,4).

The programs for A011983, there is no canonical definition to state claims against.
-/

/-! ## A011983.P500052746168505775

`A078478(n+3)+A008055(n)`
-/

namespace A011983.P500052746168505775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078478 (n + 3) + A008055 n

end

end A011983.P500052746168505775

/-! ## A011983.P7112233214323717233

`A036832(n+5)+A004198(A007522(n+1))`
-/

namespace A011983.P7112233214323717233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036832 (n + 5) + A004198 (A007522 (n + 1)).toNat

end

end A011983.P7112233214323717233

/-! ## A011983.P1910960239365651559

`A159481(A003238(3*n+4))-A367513(n+2)`
-/

namespace A011983.P1910960239365651559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A003238 (3 * n + 4)).toNat - A367513 (n + 2)

end

end A011983.P1910960239365651559

/-!
# A011991: (n,3,1) difference families over Z_n.

The programs for A011991, there is no canonical definition to state claims against.
-/

/-! ## A011991.P9952036320303345016

`A002885(A142150(n+2)+2)`
-/

namespace A011991.P9952036320303345016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002885 (A142150 (n + 2) + 2).toNat

end

end A011991.P9952036320303345016

/-! ## A011991.P11517154248330740174

`A002885(3-A029578(n)+n)`
-/

namespace A011991.P11517154248330740174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002885 (3 - A029578 n + (n : ℤ)).toNat

end

end A011991.P11517154248330740174

/-! ## A011991.P4820170252412077147

`A067029(A276088(n+4)^A225499(n))`
-/

namespace A011991.P4820170252412077147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((A276088 (n + 4) : ℚ) ^ (A225499 n : ℤ))).toNat

end

end A011991.P4820170252412077147

/-! ## A011991.P8477801224188216116

`A002885(Δ[n*floor(n/2)]+3)`
-/

namespace A011991.P8477801224188216116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002885 (f1 (n + 1) - f1 n + 3).toNat

end

end A011991.P8477801224188216116

/-! ## A011991.P5319085464464280940

`and(A000005(A056742(n+2)), A008484(n))`
-/

namespace A011991.P5319085464464280940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A056742 (n + 2)).toNat) (A008484 n)

end

end A011991.P5319085464464280940

/-!
# A011993: (2n+1,3,3) difference families over Z_{2n+1}.

The programs for A011993, there is no canonical definition to state claims against.
-/

/-! ## A011993.P3110107286061276507

`A278104(A180749(n))+n`
-/

namespace A011993.P3110107286061276507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278104 (A180749 n).toNat + (n : ℤ)

end

end A011993.P3110107286061276507

/-! ## A011993.P8783516002647860720

`A156250(A001831(n))+A080425(n)`
-/

namespace A011993.P8783516002647860720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (A001831 n).toNat + A080425 n

end

end A011993.P8783516002647860720

/-!
# A011996: (n,3,6) difference families over Z_n.

The programs for A011996, there is no canonical definition to state claims against.
-/

/-! ## A011996.P247440656506266826

`A051870(A217779(n))%A217975(n+1)`
-/

namespace A011996.P247440656506266826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051870 (A217779 n).toNat) (A217975 (n + 1))

end

end A011996.P247440656506266826

