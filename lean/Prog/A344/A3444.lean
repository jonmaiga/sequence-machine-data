import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A344400: a(n) = [x^n] 6*(8*x^3 + 3*x + 1) / (1 - 4*x)^(7/2).

The programs for A344400, the canonical program `A344400.P15714405239848086013` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344400 has offset 0).

The definition of A344400 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344228, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344400.P15714405239848086013

`A344228(n+1)*(n+1)*(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344400

/-- `A344228(n+1)*(n+1)*(n+2)` -/
def P15714405239848086013.Spec : Prop :=
  ∀ n, P15714405239848086013.a n = A344400 n

theorem P15714405239848086013.correct : P15714405239848086013.Spec := by
  intro n
  simp only [A344400]

end A344400

/-! ## A344400.P10773352756321248871

`2*∑[n+1]*A344228(n+1)`
-/

namespace A344400.P10773352756321248871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A344228 (n + 1))

end

end A344400.P10773352756321248871

namespace A344400

/-- `2*∑[n+1]*A344228(n+1)` -/
def P10773352756321248871.Spec : Prop :=
  ∀ n, P10773352756321248871.a n = A344400 n

end A344400

/-! ## A344400.P15144585002185223352

`A002378(n+1)*A344228(n+1)`
-/

namespace A344400.P15144585002185223352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) * A344228 (n + 1)

end

end A344400.P15144585002185223352

namespace A344400

/-- `A002378(n+1)*A344228(n+1)` -/
def P15144585002185223352.Spec : Prop :=
  ∀ n, P15144585002185223352.a n = A344400 n

end A344400

/-! ## A344400.P9865858889280708809

`A103505(n+2)*A344228(n+1)`
-/

namespace A344400.P9865858889280708809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (n + 2) * A344228 (n + 1)

end

end A344400.P9865858889280708809

namespace A344400

/-- `A103505(n+2)*A344228(n+1)` -/
def P9865858889280708809.Spec : Prop :=
  ∀ n, P9865858889280708809.a n = A344400 n

end A344400

/-! ## A344400.P8103739942445393037

`A000037((n+1)²)*A344228(n+1)`
-/

namespace A344400.P8103739942445393037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 ((n + 1) ^ 2) * A344228 (n + 1)

end

end A344400.P8103739942445393037

namespace A344400

/-- `A000037((n+1)²)*A344228(n+1)` -/
def P8103739942445393037.Spec : Prop :=
  ∀ n, P8103739942445393037.a n = A344400 n

end A344400

/-!
# A344401: a(n) = [x^n] 24*(-40*x^4 + 49*x^3 - 15*x^2 + 13*x + 2) / (1 - 4*x)^(9/2).

The programs for A344401, there is no canonical definition to state claims against.
-/

/-! ## A344401.P2617519894651429655

`A007531(n+3)*A344321(n+2)`
-/

namespace A344401.P2617519894651429655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 3) * A344321 (n + 2)

end

end A344401.P2617519894651429655

/-!
# A344402: a(n) = denominator(R(n,3)), where R(n,d) = (Product_{j prime to d} Pochhammer(j/d, n)) / n!.

The programs for A344402, there is no canonical definition to state claims against.
-/

/-! ## A344402.P6198132907509333607

`3^(val(n!, 3)+2*n)`
-/

namespace A344402.P6198132907509333607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (SequenceMachineLib.valuation (Nat.factorial n) 3 + 2 * n)

end

end A344402.P6198132907509333607

/-! ## A344402.P3317938606854879769

`∏[9*gcd(n, a(n-1))]` with `a(0)=1`
-/

namespace A344402.P3317938606854879769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * Nat.gcd n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A344402.P3317938606854879769

/-! ## A344402.P10989318828940183353

`3^n*∏[gcd(3*n, 3^n)]`
-/

namespace A344402.P10989318828940183353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n) (3 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A344402.P10989318828940183353

/-! ## A344402.P4415424662028744889

`3^(A004128(n)+n)`
-/

namespace A344402.P4415424662028744889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004128 n + (n : ℤ) : ℤ)

end

end A344402.P4415424662028744889

/-! ## A344402.P12556257649538738386

`∏[gcd(9^n, A086576(n))]`
-/

namespace A344402.P12556257649538738386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 ^ n : ℤ) (A086576 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A344402.P12556257649538738386

/-!
# A344403: a(n) = Sum_{d|n} d * floor(n/d^2).

The programs for A344403, the canonical program `A344403.P10046321088537773580` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344403 has offset 1).

The definition of A344403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344403.P10046321088537773580

`∑{d}[n+1, #-((n+1)/#)%#]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344403

/-- `∑{d}[n+1, #-((n+1)/#)%#]` -/
def P10046321088537773580.Spec : Prop :=
  ∀ n, P10046321088537773580.a n = A344403 (n + 1)

theorem P10046321088537773580.correct : P10046321088537773580.Spec := by
  intro n
  simp only [A344403, Nat.add_sub_cancel]

end A344403

/-! ## A344403.P17332001135798191525

`∑{d}[n+1, #*floor((n+1)/#²)]`
-/

namespace A344403.P17332001135798191525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ⌊(n + 1 : ℚ) / (d ^ 2 : ℚ)⌋

end

end A344403.P17332001135798191525

namespace A344403

/-- `∑{d}[n+1, #*floor((n+1)/#²)]` -/
def P17332001135798191525.Spec : Prop :=
  ∀ n, P17332001135798191525.a n = A344403 (n + 1)

end A344403

/-! ## A344403.P3633904774685773881

`∑{d}[n+1, #]-A353776(n+1)`
-/

namespace A344403.P3633904774685773881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A353776 (n + 1)

end

end A344403.P3633904774685773881

namespace A344403

/-- `∑{d}[n+1, #]-A353776(n+1)` -/
def P3633904774685773881.Spec : Prop :=
  ∀ n, P3633904774685773881.a n = A344403 (n + 1)

end A344403

/-! ## A344403.P13366235294293777771

`Δ[A160664(n)]-A353776(n+1)`
-/

namespace A344403.P13366235294293777771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353776 (n + 1)

end

end A344403.P13366235294293777771

namespace A344403

/-- `Δ[A160664(n)]-A353776(n+1)` -/
def P13366235294293777771.Spec : Prop :=
  ∀ n, P13366235294293777771.a n = A344403 (n + 1)

end A344403

/-! ## A344403.P4251584148588082916

`A000203(n+1)-A353776(n+1)`
-/

namespace A344403.P4251584148588082916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A353776 (n + 1)

end

end A344403.P4251584148588082916

namespace A344403

/-- `A000203(n+1)-A353776(n+1)` -/
def P4251584148588082916.Spec : Prop :=
  ∀ n, P4251584148588082916.a n = A344403 (n + 1)

end A344403

/-! ## A344403.P4649483958411008209

`∑[A340793(n+1)]-A353776(n+1)`
-/

namespace A344403.P4649483958411008209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A353776 (n + 1)

end

end A344403.P4649483958411008209

namespace A344403

/-- `∑[A340793(n+1)]-A353776(n+1)` -/
def P4649483958411008209.Spec : Prop :=
  ∀ n, P4649483958411008209.a n = A344403 (n + 1)

end A344403

/-! ## A344403.P12528641859945902745

`A074400(n+1)/2-A353776(n+1)`
-/

namespace A344403.P12528641859945902745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A353776 (n + 1) : ℚ)

end

end A344403.P12528641859945902745

namespace A344403

/-- `A074400(n+1)/2-A353776(n+1)` -/
def P12528641859945902745.Spec : Prop :=
  ∀ n, P12528641859945902745.a n = (A344403 (n + 1) : ℚ)

end A344403

/-! ## A344403.P7854114152777963161

`A353783(n+1)*A353784(n+1)-A353776(n+1)`
-/

namespace A344403.P7854114152777963161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (n + 1) * A353784 (n + 1) - A353776 (n + 1)

end

end A344403.P7854114152777963161

namespace A344403

/-- `A353783(n+1)*A353784(n+1)-A353776(n+1)` -/
def P7854114152777963161.Spec : Prop :=
  ∀ n, P7854114152777963161.a n = A344403 (n + 1)

end A344403

/-! ## A344403.P18061458047729310183

`A001281(A074400(n+1))-A353776(n+1)`
-/

namespace A344403.P18061458047729310183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A074400 (n + 1)).toNat - A353776 (n + 1)

end

end A344403.P18061458047729310183

namespace A344403

/-- `A001281(A074400(n+1))-A353776(n+1)` -/
def P18061458047729310183.Spec : Prop :=
  ∀ n, P18061458047729310183.a n = A344403 (n + 1)

end A344403

/-!
# A344404: a(n) = Sum_{d|n} floor(n/d^2).

The programs for A344404, the canonical program `A344404.P16390812523787631962` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344404 has offset 1).

The definition of A344404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344404.P16390812523787631962

`∑{d}[n+1, floor((n+1)/#²)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344404

/-- `∑{d}[n+1, floor((n+1)/#²)]` -/
def P16390812523787631962.Spec : Prop :=
  ∀ n, P16390812523787631962.a n = A344404 (n + 1)

theorem P16390812523787631962.correct : P16390812523787631962.Spec := by
  intro n
  simp only [A344404, Nat.add_sub_cancel]

end A344404

/-! ## A344404.P7093147664188178701

`A038548(2^A322390(n+1))+n`
-/

namespace A344404.P7093147664188178701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322390 (n + 1) : ℤ))).toNat + (n : ℤ)

end

end A344404.P7093147664188178701

namespace A344404

/-- `A038548(2^A322390(n+1))+n` -/
def P7093147664188178701.Spec : Prop :=
  ∀ n, P7093147664188178701.a n = A344404 (n + 1)

end A344404

/-! ## A344404.P1950860779280646863

`A110591(2^A322390(n+1))+n`
-/

namespace A344404.P1950860779280646863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322390 (n + 1) : ℤ))).toNat + (n : ℤ)

end

end A344404.P1950860779280646863

namespace A344404

/-- `A110591(2^A322390(n+1))+n` -/
def P1950860779280646863.Spec : Prop :=
  ∀ n, P1950860779280646863.a n = A344404 (n + 1)

end A344404

/-! ## A344404.P15372677278571280252

`A226939(2^A322390(n+1))+n`
-/

namespace A344404.P15372677278571280252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322390 (n + 1) : ℤ))).toNat + (n : ℤ)

end

end A344404.P15372677278571280252

namespace A344404

/-- `A226939(2^A322390(n+1))+n` -/
def P15372677278571280252.Spec : Prop :=
  ∀ n, P15372677278571280252.a n = A344404 (n + 1)

end A344404

/-!
# A344405: a(n) = Sum_{d|n} (n/d) * floor(n/d^2).

The programs for A344405, the canonical program `A344405.P15925401109492320037` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344405 has offset 1).

The definition of A344405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344405.P15925401109492320037

`∑{d}[n+1, #*floor(#²/(n+1))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344405

/-- `∑{d}[n+1, #*floor(#²/(n+1))]` -/
def P15925401109492320037.Spec : Prop :=
  ∀ n, P15925401109492320037.a n = A344405 (n + 1)

theorem P15925401109492320037.correct : P15925401109492320037.Spec := by
  intro n
  simp only [A344405, Nat.add_sub_cancel]

end A344405

/-! ## A344405.P14327530679257133125

`A000194(A057660(n+1)*A064987(n+1))`
-/

namespace A344405.P14327530679257133125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A057660 (n + 1) * A064987 (n + 1)).toNat

end

end A344405.P14327530679257133125

namespace A344405

/-- `A000194(A057660(n+1)*A064987(n+1))` -/
def P14327530679257133125.Spec : Prop :=
  ∀ n, P14327530679257133125.a n = A344405 (n + 1)

end A344405

/-! ## A344405.P8788081150593655063

`A000194(∑[A292302(n+1)]*A064987(n+1))`
-/

namespace A344405.P8788081150593655063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) * A064987 (n + 1)).toNat

end

end A344405.P8788081150593655063

namespace A344405

/-- `A000194(∑[A292302(n+1)]*A064987(n+1))` -/
def P8788081150593655063.Spec : Prop :=
  ∀ n, P8788081150593655063.a n = A344405 (n + 1)

end A344405

/-! ## A344405.P12502289092568063021

`A000194(∑{d}[n+1, A002618(#)]*A064987(n+1))`
-/

namespace A344405.P12502289092568063021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ d ∈ Nat.divisors (f1 n), A002618 d) * A064987 (n + 1)).toNat

end

end A344405.P12502289092568063021

namespace A344405

/-- `A000194(∑{d}[n+1, A002618(#)]*A064987(n+1))` -/
def P12502289092568063021.Spec : Prop :=
  ∀ n, P12502289092568063021.a n = A344405 (n + 1)

end A344405

/-! ## A344405.P13378775826590738217

`A000194(∑{d}[n+1, #*A000010(#)]*A064987(n+1))`
-/

namespace A344405.P13378775826590738217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 d) * A064987 (n + 1)).toNat

end

end A344405.P13378775826590738217

namespace A344405

/-- `A000194(∑{d}[n+1, #*A000010(#)]*A064987(n+1))` -/
def P13378775826590738217.Spec : Prop :=
  ∀ n, P13378775826590738217.a n = A344405 (n + 1)

end A344405

/-!
# A344407: Discriminant of the (2n)-th cyclotomic field Q(zeta_(2n)). Equivalently, discriminant of the (2n)-th cyclotomic polynomial.

The programs for A344407, there is no canonical definition to state claims against.
-/

/-! ## A344407.P7107182280255311080

`A004124(2*(n+1))`
-/

namespace A344407.P7107182280255311080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004124 (2 * (n + 1))

end

end A344407.P7107182280255311080

/-! ## A344407.P14073418458749777270

`or(2, A004124(A103517(n)))-2`
-/

namespace A344407.P14073418458749777270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A004124 (A103517 n).toNat) - 2

end

end A344407.P14073418458749777270

/-! ## A344407.P12292976754153911278

`or(A000007(n), A004124(A103517(n)))`
-/

namespace A344407.P12292976754153911278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A004124 (A103517 n).toNat)

end

end A344407.P12292976754153911278

/-! ## A344407.P5682092248746019816

`A004124(A103517(n))+A000007(n+1)`
-/

namespace A344407.P5682092248746019816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004124 (A103517 n).toNat + A000007 (n + 1)

end

end A344407.P5682092248746019816

/-! ## A344407.P1045834538213393165

`or(A004124(A103517(n)), A154272(n+1))`
-/

namespace A344407.P1045834538213393165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004124 (A103517 n).toNat) (A154272 (n + 1))

end

end A344407.P1045834538213393165

/-!
# A344408: Positive discriminants of orders of quadratic fields with class number 2.

The programs for A344408, there is no canonical definition to state claims against.
-/

/-! ## A344408.P6893074769446732944

`A062374(eq[2, A174422(n+1)])`
-/

namespace A344408.P6893074769446732944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062374 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344408.P6893074769446732944

/-! ## A344408.P1797724544670595818

`A062374(lt[A174422(n+1), 3])`
-/

namespace A344408.P1797724544670595818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174422 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062374 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A344408.P1797724544670595818

/-!
# A344409: Positive discriminants of orders of quadratic fields with class number 3.

The programs for A344409, there is no canonical definition to state claims against.
-/

/-! ## A344409.P11837651660975030567

`A006832(A013928(2*n+5))%A091083(3*n+5)`
-/

namespace A344409.P11837651660975030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006832 (A013928 (2 * n + 5)).toNat) (A091083 (3 * n + 5))

end

end A344409.P11837651660975030567

/-! ## A344409.P6993627069658277818

`A006832(lt[A349811(3*n+4), A043319(3*n+1)])`
-/

namespace A344409.P6993627069658277818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349811 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043319 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006832 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344409.P6993627069658277818

/-! ## A344409.P11097450460755856126

`A106311(lt[A349811(3*n+4), A043319(3*n+1)])`
-/

namespace A344409.P11097450460755856126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349811 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043319 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106311 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344409.P11097450460755856126

/-!
# A344410: a(n) = (3*n^2 - 1) * (3*n^2 - 2) * (3*n^3 - 3*n + 1)/2.

The programs for A344410, the canonical program `A344410.P17752273820401964801` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344410 has offset 0).

The definition of A344410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344410.P17752273820401964801

`(3*n²-1)*(3*n²-2)*(3*n^3-3*n+1)/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344410

/-- `(3*n²-1)*(3*n²-2)*(3*n^3-3*n+1)/2` -/
def P17752273820401964801.Spec : Prop :=
  ∀ n, P17752273820401964801.a n = (A344410 n : ℚ)

end A344410

/-!
# A344411: Sum of the prime numbers in the interval (2n, 3n].

The programs for A344411, the canonical program `A344411.P13447493578011651501` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344411 has offset 1).

The definition of A344411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344411.P13447493578011651501

`A007504(A000720(3*(n+1)))-A007504(A000720(2*(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A344411

/-- `A007504(A000720(3*(n+1)))-A007504(A000720(2*(n+1)))` -/
def P13447493578011651501.Spec : Prop :=
  ∀ n, P13447493578011651501.a n = A344411 (n + 1)

theorem P13447493578011651501.correct : P13447493578011651501.Spec := by
  intro n
  simp only [A344411, Nat.add_sub_cancel]

end A344411

/-! ## A344411.P4621440041147014062

`A034387(3*(n+1))-A034387(2*(n+1))`
-/

namespace A344411.P4621440041147014062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (3 * (n + 1)) - A034387 (2 * (n + 1))

end

end A344411.P4621440041147014062

namespace A344411

/-- `A034387(3*(n+1))-A034387(2*(n+1))` -/
def P4621440041147014062.Spec : Prop :=
  ∀ n, P4621440041147014062.a n = A344411 (n + 1)

end A344411

/-! ## A344411.P15976895206359125449

`A158662(3*(n+1))-A158662(2*(n+1))`
-/

namespace A344411.P15976895206359125449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (3 * (n + 1)) - A158662 (2 * (n + 1))

end

end A344411.P15976895206359125449

namespace A344411

/-- `A158662(3*(n+1))-A158662(2*(n+1))` -/
def P15976895206359125449.Spec : Prop :=
  ∀ n, P15976895206359125449.a n = A344411 (n + 1)

end A344411

/-! ## A344411.P769367922921947865

`A063960(6*(n+1))-A063960(4*(n+1))`
-/

namespace A344411.P769367922921947865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (6 * (n + 1)) - A063960 (4 * (n + 1))

end

end A344411.P769367922921947865

namespace A344411

/-- `A063960(6*(n+1))-A063960(4*(n+1))` -/
def P769367922921947865.Spec : Prop :=
  ∀ n, P769367922921947865.a n = A344411 (n + 1)

end A344411

/-! ## A344411.P11056953231931232568

`∑{p}[A068113(n+1), #]`
-/

namespace A344411.P11056953231931232568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A344411.P11056953231931232568

namespace A344411

/-- `∑{p}[A068113(n+1), #]` -/
def P11056953231931232568.Spec : Prop :=
  ∀ n, (P11056953231931232568.a n : ℤ) = A344411 (n + 1)

end A344411

/-!
# A344413: Numbers n whose sum of prime indices A056239(n) is even and is at least twice the number of prime factors A001222(n).

The programs for A344413, there is no canonical definition to state claims against.
-/

/-! ## A344413.P5804809250706359119

`∩[A300061(n+1), A344291(n+1)]`
-/

namespace A344413.P5804809250706359119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344413.P5804809250706359119

/-! ## A344413.P7436621609851307970

`A300061(lt[A335902(3*(n+1)), A029591(n)])`
-/

namespace A344413.P7436621609851307970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335902 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344413.P7436621609851307970

/-! ## A344413.P15999038153158771672

`A004525(eq[A262079(n+1), A345388(n+1)])`
-/

namespace A344413.P15999038153158771672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A344413.P15999038153158771672

/-! ## A344413.P13070317739745549337

`lt[A156875(A027642(n)), A134028(n)]`
-/

namespace A344413.P13070317739745549337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A027642 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344413.P13070317739745549337

/-!
# A344414: Heinz numbers of integer partitions whose sum is at most twice their greatest part.

The programs for A344414, there is no canonical definition to state claims against.
-/

/-! ## A344414.P4501316303640021556

`lt[round(sqrt(n/2)), A006530(n+2)]+2`
-/

namespace A344414.P4501316303640021556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) / 2 : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A344414.P4501316303640021556

/-! ## A344414.P4654117153734550077

`lt[gcd(3, n+1)+n/2, A006530(n+1)²]+1`
-/

namespace A344414.P4654117153734550077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (n + 1) : ℚ) + (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A344414.P4654117153734550077

/-! ## A344414.P7525389066541198607

`lt[A000384(n), A351193(n+1)]+1`
-/

namespace A344414.P7525389066541198607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344414.P7525389066541198607

/-! ## A344414.P7227240333762999157

`lt[A000578(n), A351195(n+1)]+1`
-/

namespace A344414.P7227240333762999157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344414.P7227240333762999157

/-! ## A344414.P9904242224561005850

`lt[A007504(n), A351193(n+1)]+1`
-/

namespace A344414.P9904242224561005850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344414.P9904242224561005850

/-! ## A344414.P14712379841212572004

`lt[A014105(n), A351193(n+1)]+1`
-/

namespace A344414.P14712379841212572004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344414.P14712379841212572004

/-! ## A344414.P17735191850705195168

`record[A006530(n+2)*A257977(n+2)]`
-/

namespace A344414.P17735191850705195168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A257977 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344414.P17735191850705195168

/-! ## A344414.P14440080257041311258

`lt[A071693(n), A006530(n+1)²]+1`
-/

namespace A344414.P14440080257041311258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344414.P14440080257041311258

/-! ## A344414.P6786458447740496004

`lt[A302255(n), A006530(n+2)²]+2`
-/

namespace A344414.P6786458447740496004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A344414.P6786458447740496004

/-! ## A344414.P783191956515450633

`lt[A004001(n+1), A006530(n+1)²]+1`
-/

namespace A344414.P783191956515450633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A344414.P783191956515450633

/-!
# A344415: Numbers whose greatest prime index is half their sum of prime indices.

The programs for A344415, there is no canonical definition to state claims against.
-/

/-! ## A344415.P18101379497498440173

`∩[A048098(n+1), A366318(n+1)]`
-/

namespace A344415.P18101379497498440173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344415.P18101379497498440173

/-! ## A344415.P2140075667574703301

`∩[A292226(n+1), A366318(n+1)]`
-/

namespace A344415.P2140075667574703301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344415.P2140075667574703301

/-! ## A344415.P18380787078112072228

`∩[A322109(n+1), A366318(n+1)]`
-/

namespace A344415.P18380787078112072228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344415.P18380787078112072228

/-! ## A344415.P2892090745642671296

`∩[A357976(n+1), A366318(n+1)]`
-/

namespace A344415.P2892090745642671296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344415.P2892090745642671296

/-!
# A344416: Heinz numbers of integer partitions whose sum is even and is at most twice the greatest part.

The programs for A344416, there is no canonical definition to state claims against.
-/

/-! ## A344416.P12910339684687064062

`∪[A339620(n+1), A344415(n+1)]`
-/

namespace A344416.P12910339684687064062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344416.P12910339684687064062

/-! ## A344416.P1251343186126340447

`∩[A300061(n+1), A344414(n+1)]`
-/

namespace A344416.P1251343186126340447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344416.P1251343186126340447

/-! ## A344416.P11561982739578952552

`A300061(lt[A368276(3*n+1), A004728(2*n)])`
-/

namespace A344416.P11561982739578952552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368276 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344416.P11561982739578952552

/-! ## A344416.P9562089660283737547

`A300061(lt[A170889(3*n+4), A236562(3*(n+1))])`
-/

namespace A344416.P9562089660283737547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236562 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344416.P9562089660283737547

/-! ## A344416.P16177150895298208312

`∪[A342496(A220815(n+2)), A339618(n+2)]`
-/

namespace A344416.P16177150895298208312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 (A220815 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339618 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344416.P16177150895298208312

/-!
# A344417: Number of palindromic factorizations of n.

The programs for A344417, there is no canonical definition to state claims against.
-/

/-! ## A344417.P6667529106598128079

`∑{d}[n+1, A347438(#)]`
-/

namespace A344417.P6667529106598128079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347438 d

end

end A344417.P6667529106598128079

/-! ## A344417.P12476384790901695279

`∑{digits}[A329674(∑{e}[n+1, val(#!, 2)]), #]`
-/

namespace A344417.P12476384790901695279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329674 (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A344417.P12476384790901695279

/-! ## A344417.P14636903599561351059

`A003893(2^∑{e}[n+1, val(#!, 2)]+1)`
-/

namespace A344417.P14636903599561351059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2) + 1)

end

end A344417.P14636903599561351059

/-! ## A344417.P6949026146115220555

`A084784(2^∑{e}[n+1, val(#!, 2)])%10`
-/

namespace A344417.P6949026146115220555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084784 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2))) 10

end

end A344417.P6949026146115220555

/-! ## A344417.P11549793273346686382

`A271654(2^∑{e}[n+1, val(#!, 2)])%10`
-/

namespace A344417.P11549793273346686382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271654 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2))) 10

end

end A344417.P11549793273346686382

/-! ## A344417.P18403022558244935184

`A057567(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A344417.P18403022558244935184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A344417.P18403022558244935184

/-! ## A344417.P630691548706747944

`A069264(∏{p}[n+1, #^val(n+1, #²)])+1`
-/

namespace A344417.P630691548706747944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) + 1

end

end A344417.P630691548706747944

/-! ## A344417.P8371510073801342512

`A001055(5*∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A344417.P8371510073801342512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (5 * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)))

end

end A344417.P8371510073801342512

/-! ## A344417.P17162592789357194725

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A001222(#)]+1`
-/

namespace A344417.P17162592789357194725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 d + 1

end

end A344417.P17162592789357194725

/-! ## A344417.P4484345469491857273

`A057567(A000188(n+1))`
-/

namespace A344417.P4484345469491857273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (A000188 (n + 1)).toNat

end

end A344417.P4484345469491857273

/-!
# A344418: a(n) = n*a(n-1) + n^(1+n mod 2), a(0) = 0.

The programs for A344418, there is no canonical definition to state claims against.
-/

/-! ## A344418.P4137584849064373242

`A344317(n)-n!`
-/

namespace A344418.P4137584849064373242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344317 n - (Nat.factorial n : ℤ)

end

end A344418.P4137584849064373242

/-! ## A344418.P1279683214847175298

`A344317(n)-A000142(n)`
-/

namespace A344418.P1279683214847175298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344317 n - A000142 n

end

end A344418.P1279683214847175298

/-! ## A344418.P14217673329910330167

`gcd(n, n%2)+n*a(n-1)` with `a(0)=0`
-/

namespace A344418.P14217673329910330167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd n (n % 2) + n * a (n - 1)

end

end A344418.P14217673329910330167

/-! ## A344418.P16767890660929089969

`n^((n+1)%2)+n*a(n-1)` with `a(0)=0`
-/

namespace A344418.P16767890660929089969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ ((n + 1) % 2) + n * a (n - 1)

end

end A344418.P16767890660929089969

/-! ## A344418.P16244114945948754869

`A000522(n)-or(1, A000166(n))`
-/

namespace A344418.P16244114945948754869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - Int.lor 1 (A000166 n)

end

end A344418.P16244114945948754869

/-! ## A344418.P15378547784151328019

`or(1, A007526(n))-A000166(n)`
-/

namespace A344418.P15378547784151328019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007526 n) - A000166 n

end

end A344418.P15378547784151328019

/-!
# A344419: a(n) = n*a(n-1) + n^(n mod 2), a(0) = 0.

The programs for A344419, there is no canonical definition to state claims against.
-/

/-! ## A344419.P9822264634150278496

`A344262(n)-n!`
-/

namespace A344419.P9822264634150278496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344262 n - (Nat.factorial n : ℤ)

end

end A344419.P9822264634150278496

/-! ## A344419.P12902405229632318017

`A344262(n)-A000142(n)`
-/

namespace A344419.P12902405229632318017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344262 n - A000142 n

end

end A344419.P12902405229632318017

/-! ## A344419.P15718709657743144203

`n^(n%2)+n*a(n-1)` with `a(0)=0`
-/

namespace A344419.P15718709657743144203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ (n % 2) + n * a (n - 1)

end

end A344419.P15718709657743144203

/-! ## A344419.P4006660194628283391

`n^and(1, n)+n*a(n-1)` with `a(0)=0`
-/

namespace A344419.P4006660194628283391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ Nat.land 1 n + n * a (n - 1)

end

end A344419.P4006660194628283391

/-! ## A344419.P14971535286600920914

`gcd(n, (n+1)%2)+n*a(n-1)` with `a(0)=0`
-/

namespace A344419.P14971535286600920914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd n ((n + 1) % 2) + n * a (n - 1)

end

end A344419.P14971535286600920914

/-! ## A344419.P1114876458362604767

`A093178(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A344419.P1114876458362604767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A093178 n + (n : ℤ) * a (n - 1)

end

end A344419.P1114876458362604767

/-! ## A344419.P17483636178220087165

`A344262(n)-∏[A101279(2*n+1)]`
-/

namespace A344419.P17483636178220087165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344262 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A344419.P17483636178220087165

/-!
# A344420: a(n) = floor(n/11).

The programs for A344420, the canonical program `A344420.P8642871358831456252` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344420 has offset 0).

The definition of A344420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/11)` (program `A344420.P8642871358831456252`, by `A344420.P8642871358831456252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344420.P8642871358831456252

`floor(n/11)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344420

/-- `floor(n/11)` -/
def P8642871358831456252.Spec : Prop :=
  ∀ n, P8642871358831456252.a n = A344420 n

theorem P8642871358831456252.correct : P8642871358831456252.Spec := by
  intro n
  simp only [A344420]

end A344420

/-! ## A344420.P4164494632250971102

`∑[∑{p}[n, val(#, 11)]]`
-/

namespace A344420.P4164494632250971102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P4164494632250971102

namespace A344420

/-- `∑[∑{p}[n, val(#, 11)]]` -/
def P4164494632250971102.Spec : Prop :=
  ∀ n, (P4164494632250971102.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P4937681132752265061

`∑[val(∏{p}[n, #], 11)]`
-/

namespace A344420.P4937681132752265061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P4937681132752265061

namespace A344420

/-- `∑[val(∏{p}[n, #], 11)]` -/
def P4937681132752265061.Spec : Prop :=
  ∀ n, (P4937681132752265061.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P9099065503783621900

`(n-n%11)/11`
-/

namespace A344420.P9099065503783621900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 11 : ℕ) : ℤ) : ℚ) / 11

end

end A344420.P9099065503783621900

namespace A344420

/-- `(n-n%11)/11` -/
def P9099065503783621900.Spec : Prop :=
  ∀ n, P9099065503783621900.a n = (A344420 n : ℚ)

end A344420

/-! ## A344420.P10055898481537910736

`∑[char[lcm(11, n+1)]]`
-/

namespace A344420.P10055898481537910736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 11 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P10055898481537910736

namespace A344420

/-- `∑[char[lcm(11, n+1)]]` -/
def P10055898481537910736.Spec : Prop :=
  ∀ n, (P10055898481537910736.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P17407110517551353602

`comp[12*n]%(n+1)`
-/

namespace A344420.P17407110517551353602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A344420.P17407110517551353602

namespace A344420

/-- `comp[12*n]%(n+1)` -/
def P17407110517551353602.Spec : Prop :=
  ∀ n, (P17407110517551353602.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P7215446336051452896

`n-∑[(n^10)%11]`
-/

namespace A344420.P7215446336051452896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 10 % 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344420.P7215446336051452896

namespace A344420

/-- `n-∑[(n^10)%11]` -/
def P7215446336051452896.Spec : Prop :=
  ∀ n, P7215446336051452896.a n = A344420 n

end A344420

/-! ## A344420.P5992739227536877527

`n-∑[A145568(n)]`
-/

namespace A344420.P5992739227536877527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P5992739227536877527

namespace A344420

/-- `n-∑[A145568(n)]` -/
def P5992739227536877527.Spec : Prop :=
  ∀ n, P5992739227536877527.a n = A344420 n

end A344420

/-! ## A344420.P10321691148856563441

`comp[A017653(n)]-n`
-/

namespace A344420.P10321691148856563441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A344420.P10321691148856563441

namespace A344420

/-- `comp[A017653(n)]-n` -/
def P10321691148856563441.Spec : Prop :=
  ∀ n, P10321691148856563441.a n = A344420 n

end A344420

/-! ## A344420.P6290806031676837245

`Δ[A218530(abs(1-n))]`
-/

namespace A344420.P6290806031676837245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344420.P6290806031676837245

namespace A344420

/-- `Δ[A218530(abs(1-n))]` -/
def P6290806031676837245.Spec : Prop :=
  ∀ n, P6290806031676837245.a n = A344420 n

end A344420

/-! ## A344420.P10735206039368462156

`∑[∑[A014020(n)]]-1`
-/

namespace A344420.P10735206039368462156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A344420.P10735206039368462156

namespace A344420

/-- `∑[∑[A014020(n)]]-1` -/
def P10735206039368462156.Spec : Prop :=
  ∀ n, P10735206039368462156.a n = A344420 n

end A344420

/-! ## A344420.P8504952013442778436

`∑[char[A008593(n+1)]]`
-/

namespace A344420.P8504952013442778436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P8504952013442778436

namespace A344420

/-- `∑[char[A008593(n+1)]]` -/
def P8504952013442778436.Spec : Prop :=
  ∀ n, (P8504952013442778436.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P16424703290349090051

`∑[char[A017509(n)+1]]`
-/

namespace A344420.P16424703290349090051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P16424703290349090051

namespace A344420

/-- `∑[char[A017509(n)+1]]` -/
def P16424703290349090051.Spec : Prop :=
  ∀ n, (P16424703290349090051.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P12777847147819254660

`∑[char[A048841(n+1)]]`
-/

namespace A344420.P12777847147819254660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048841 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P12777847147819254660

namespace A344420

/-- `∑[char[A048841(n+1)]]` -/
def P12777847147819254660.Spec : Prop :=
  ∀ n, (P12777847147819254660.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P5984109339403194163

`∑[char[A008593(n)]]-1`
-/

namespace A344420.P5984109339403194163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A344420.P5984109339403194163

namespace A344420

/-- `∑[char[A008593(n)]]-1` -/
def P5984109339403194163.Spec : Prop :=
  ∀ n, P5984109339403194163.a n = A344420 n

end A344420

/-! ## A344420.P17257113321534206715

`n-∑[A011582(n)²]`
-/

namespace A344420.P17257113321534206715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P17257113321534206715

namespace A344420

/-- `n-∑[A011582(n)²]` -/
def P17257113321534206715.Spec : Prop :=
  ∀ n, P17257113321534206715.a n = A344420 n

end A344420

/-! ## A344420.P1411899682838385876

`comp[A008594(n)]-(n+1)`
-/

namespace A344420.P1411899682838385876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A344420.P1411899682838385876

namespace A344420

/-- `comp[A008594(n)]-(n+1)` -/
def P1411899682838385876.Spec : Prop :=
  ∀ n, P1411899682838385876.a n = A344420 n

end A344420

/-! ## A344420.P17153686446555816407

`A168186(n+1)-(n+1)`
-/

namespace A344420.P17153686446555816407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1) - (n + 1 : ℤ)

end

end A344420.P17153686446555816407

namespace A344420

/-- `A168186(n+1)-(n+1)` -/
def P17153686446555816407.Spec : Prop :=
  ∀ n, P17153686446555816407.a n = A344420 n

end A344420

/-! ## A344420.P3036607282070730419

`∑[char[A017281(n+1)+n]]`
-/

namespace A344420.P3036607282070730419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344420.P3036607282070730419

namespace A344420

/-- `∑[char[A017281(n+1)+n]]` -/
def P3036607282070730419.Spec : Prop :=
  ∀ n, (P3036607282070730419.a n : ℤ) = A344420 n

end A344420

/-! ## A344420.P7842404338911702388

`comp[2*A016969(n)+1]-n`
-/

namespace A344420.P7842404338911702388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016969 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A344420.P7842404338911702388

namespace A344420

/-- `comp[2*A016969(n)+1]-n` -/
def P7842404338911702388.Spec : Prop :=
  ∀ n, P7842404338911702388.a n = A344420 n

end A344420

/-!
# A344421: Number of lattice points (x,y) in the region bounded by 0 < y < n*sin(x*Pi/n) for 0 < x < n.

The programs for A344421, there is no canonical definition to state claims against.
-/

/-! ## A344421.P13029477046429605879

`record[A288992(n+1)-A222057(n+1)]`
-/

namespace A344421.P13029477046429605879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288992 (n + 1) - A222057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344421.P13029477046429605879

/-! ## A344421.P11988649075271176588

`A117332(A024918(n+1))-A085501(A051755(n+2))`
-/

namespace A344421.P11988649075271176588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A024918 (n + 1)).toNat - A085501 (A051755 (n + 2)).toNat

end

end A344421.P11988649075271176588

/-! ## A344421.P7872557925915793778

`∑[∑[A303230(n+1)%3]]`
-/

namespace A344421.P7872557925915793778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303230 (n + 1)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344421.P7872557925915793778

/-! ## A344421.P1559616411103258518

`∑[∑{e}[A216689(n), 2-#]+n]`
-/

namespace A344421.P1559616411103258518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344421.P1559616411103258518

/-! ## A344421.P15181627475809251595

`A232748(xor(1, A081689(n)))`
-/

namespace A344421.P15181627475809251595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (Int.xor 1 (A081689 n)).toNat

end

end A344421.P15181627475809251595

/-!
# A344422: Palindromes having more divisors than all smaller palindromes.

The programs for A344422, there is no canonical definition to state claims against.
-/

/-! ## A344422.P15207406907390411244

`A083753(A345250(n+1))`
-/

namespace A344422.P15207406907390411244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083753 (A345250 (n + 1)).toNat

end

end A344422.P15207406907390411244

/-! ## A344422.P14367553630440800910

`A167485(A345260(n+1))`
-/

namespace A344422.P14367553630440800910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167485 (A345260 (n + 1)).toNat

end

end A344422.P14367553630440800910

/-! ## A344422.P6187334902860493800

`A083753(record[A076888(n+1)])`
-/

namespace A344422.P6187334902860493800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083753 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344422.P6187334902860493800

/-!
# A344423: a(n) = 10^(2*n+2) + 111*10^n + 1.

The programs for A344423, the canonical program `A344423.P4283340817297646365` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344423 has offset 0).

The definition of A344423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*n+2)+111*10^n+1` (program `A344423.P4283340817297646365`, by `A344423.P4283340817297646365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344423.P4283340817297646365

`10^(2*n+2)+111*10^n+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344423

/-- `10^(2*n+2)+111*10^n+1` -/
def P4283340817297646365.Spec : Prop :=
  ∀ n, (P4283340817297646365.a n : ℤ) = A344423 n

theorem P4283340817297646365.correct : P4283340817297646365.Spec := by
  intro n
  simp only [A344423]

end A344423

/-! ## A344423.P1067133573620566934

`A057135(A343098(2*(n+1))+5)`
-/

namespace A344423.P1067133573620566934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057135 (A343098 (2 * (n + 1)) + 5).toNat

end

end A344423.P1067133573620566934

namespace A344423

/-- `A057135(A343098(2*(n+1))+5)` -/
def P1067133573620566934.Spec : Prop :=
  ∀ n, P1067133573620566934.a n = A344423 n

end A344423

/-! ## A344423.P16324254332010875633

`A002778(A263617(2*(n+1))+5)`
-/

namespace A344423.P16324254332010875633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (A263617 (2 * (n + 1)) + 5).toNat

end

end A344423.P16324254332010875633

namespace A344423

/-- `A002778(A263617(2*(n+1))+5)` -/
def P16324254332010875633.Spec : Prop :=
  ∀ n, P16324254332010875633.a n = A344423 n

end A344423

/-!
# A344429: a(n) = Sum_{k=1..n} mu(k) * k^n.

The programs for A344429, there is no canonical definition to state claims against.
-/

/-! ## A344429.P3002357283572123565

`2-A262255(record[A343882(n)])`
-/

namespace A344429.P3002357283572123565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A262255 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344429.P3002357283572123565

/-!
# A344430: a(n) = Sum_{k=1..n} mu(k) * k^k.

The programs for A344430, there is no canonical definition to state claims against.
-/

/-! ## A344430.P2864850763254871831

`∑[(n+1)^n*A055615(n+1)]`
-/

namespace A344430.P2864850763254871831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344430.P2864850763254871831

/-! ## A344430.P11862528296393731235

`∑[(n+1)^(n+1)*A008683(n+1)]`
-/

namespace A344430.P11862528296393731235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) * A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344430.P11862528296393731235

/-! ## A344430.P6691609213523654143

`∑[A008683(n+1)*Δ[A062970(n)]]`
-/

namespace A344430.P6691609213523654143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344430.P6691609213523654143

/-! ## A344430.P16808982756321168422

`∑[A008683(n+1)*A000312(n+1)]`
-/

namespace A344430.P16808982756321168422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A000312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344430.P16808982756321168422

/-! ## A344430.P11689090944182281842

`∑[A008683(n+1)*A176031(n+1)]`
-/

namespace A344430.P11689090944182281842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A176031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344430.P11689090944182281842

/-!
# A344431: a(n) = Sum_{k=1..n} mu(k) * n^(k - 1).

The programs for A344431, there is no canonical definition to state claims against.
-/

/-! ## A344431.P11662909819188112126

`A008459(n)-A086800(A056545(n))`
-/

namespace A344431.P11662909819188112126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n - A086800 (A056545 n).toNat

end

end A344431.P11662909819188112126

/-!
# A344432: a(n) = Sum_{k=1..n} mu(k) * 2^(n - k).

The programs for A344432, the canonical program `A344432.P2045104292832396636` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344432 has offset 0).

The definition of A344432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344432.P2045104292832396636

`∏{e}[n, -floor(1/#)]+2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344432

/-- `∏{e}[n, -floor(1/#)]+2*a(n-1)` -/
def P2045104292832396636.Spec : Prop :=
  ∀ n, P2045104292832396636.a n = A344432 n

theorem P2045104292832396636.correct : P2045104292832396636.Spec := by
  intro n
  simp only [A344432]

end A344432

/-! ## A344432.P15701930003688024104

`2*a(n-1)+A008683(n)` with `a(0)=0`
-/

namespace A344432.P15701930003688024104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A008683 n

end

end A344432.P15701930003688024104

namespace A344432

/-- `2*a(n-1)+A008683(n)` -/
def P15701930003688024104.Spec : Prop :=
  ∀ n, P15701930003688024104.a n = A344432 n

end A344432

/-! ## A344432.P7432387495626353669

`A162512(n)%2+2*a(n-1)` with `a(0)=0`
-/

namespace A344432.P7432387495626353669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A162512 n) 2 + 2 * a (n - 1)

end

end A344432.P7432387495626353669

namespace A344432

/-- `A162512(n)%2+2*a(n-1)` -/
def P7432387495626353669.Spec : Prop :=
  ∀ n, P7432387495626353669.a n = A344432 n

end A344432

/-! ## A344432.P3995184314906942677

`A008683(n)+2*a(A023443(n))` with `a(0)=0`
-/

namespace A344432.P3995184314906942677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008683 n + 2 * a (A023443 n).toNat

end

end A344432.P3995184314906942677

namespace A344432

/-- `A008683(n)+2*a(A023443(n))` -/
def P3995184314906942677.Spec : Prop :=
  ∀ n, P3995184314906942677.a n = A344432 n

end A344432

/-! ## A344432.P16906154966841756867

`a(n-1)+A008683(A028310(n))+a(n-1)` with `a(0)=0`
-/

namespace A344432.P16906154966841756867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A008683 (A028310 n).toNat + a (n - 1))

end

end A344432.P16906154966841756867

namespace A344432

/-- `a(n-1)+A008683(A028310(n))+a(n-1)` -/
def P16906154966841756867.Spec : Prop :=
  ∀ n, P16906154966841756867.a n = A344432 n

end A344432

/-!
# A344433: a(n) = Sum_{k=1..n} mu(k) * k^(n - k).

The programs for A344433, there is no canonical definition to state claims against.
-/

/-! ## A344433.P8637424261405254497

`2-A209638(2^n-1)`
-/

namespace A344433.P8637424261405254497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A209638 (2 ^ n - 1)

end

end A344433.P8637424261405254497

/-! ## A344433.P14749786928416611007

`2-∑[A193739(A193778(n))]`
-/

namespace A344433.P14749786928416611007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A193778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344433.P14749786928416611007

/-! ## A344433.P1165515994343011479

`2-A220658(A316892(n+1))`
-/

namespace A344433.P1165515994343011479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A220658 (A316892 (n + 1)).toNat

end

end A344433.P1165515994343011479

/-!
# A344434: a(n) = Sum_{d|n} sigma_d(d), where sigma_k(n) is the sum of the k-th powers of the divisors of n.

The programs for A344434, there is no canonical definition to state claims against.
-/

/-! ## A344434.P18342220057857562305

`∑{d}[n+1, A023887(#)]`
-/

namespace A344434.P18342220057857562305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023887 d

end

end A344434.P18342220057857562305

/-! ## A344434.P14110898362250573724

`record[∑{d}[A008611(n), A023887(#)]]`
-/

namespace A344434.P14110898362250573724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A023887 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344434.P14110898362250573724

/-! ## A344434.P4670719161264597904

`record[∑{d}[A158821(n), A023887(#)]]`
-/

namespace A344434.P4670719161264597904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A023887 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344434.P4670719161264597904

/-! ## A344434.P9294588806493880172

`record[∑{d}[1-n-A000038(n), A023887(#)]]`
-/

namespace A344434.P9294588806493880172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - A000038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A023887 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344434.P9294588806493880172

/-! ## A344434.P4180210750175757238

`record[∑{d}[n-1-A055086(n), A023887(#)]]`
-/

namespace A344434.P4180210750175757238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - A055086 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A023887 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344434.P4180210750175757238

/-!
# A344437: Regular triangle read by rows, T(n,k) is the number of derangements of [n] with exactly k right-to-left minima, for n >= 2 and 1 <= k <= n-1.

The programs for A344437, there is no canonical definition to state claims against.
-/

/-! ## A344437.P3450092250302471652

`A101435(A328297(n)+1)`
-/

namespace A344437.P3450092250302471652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A328297 n + 1).toNat

end

end A344437.P3450092250302471652

/-! ## A344437.P17916591366639367373

`A101435(or(1, A328297(n)))`
-/

namespace A344437.P17916591366639367373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (Int.lor 1 (A328297 n)).toNat

end

end A344437.P17916591366639367373

/-!
# A344438: a(n) = 1 if n can be written as a product of factorials (A000142), 0 otherwise; Characteristic function of Jordan-Polya numbers (A001013).

The programs for A344438, the canonical program `A344438.P15929750037164641707` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344438 has offset 1).

The definition of A344438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344438.P15929750037164641707

`char[A323505(n)-1]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344438

/-- `char[A323505(n)-1]` -/
def P15929750037164641707.Spec : Prop :=
  ∀ n, (P15929750037164641707.a n : ℤ) = A344438 (n + 1)

theorem P15929750037164641707.correct : P15929750037164641707.Spec := by
  intro n
  simp only [A344438, Nat.add_sub_cancel]

end A344438

/-! ## A344438.P11906516399582063053

`floor(sqrt(A322583(n+1)))`
-/

namespace A344438.P11906516399582063053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A322583 (n + 1))

end

end A344438.P11906516399582063053

namespace A344438

/-- `floor(sqrt(A322583(n+1)))` -/
def P11906516399582063053.Spec : Prop :=
  ∀ n, P11906516399582063053.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P17218781479039370317

`char[A001013(n+1)-1]`
-/

namespace A344438.P17218781479039370317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A344438.P17218781479039370317

namespace A344438

/-- `char[A001013(n+1)-1]` -/
def P17218781479039370317.Spec : Prop :=
  ∀ n, (P17218781479039370317.a n : ℤ) = A344438 (n + 1)

end A344438

/-! ## A344438.P17367146203835539079

`char[A023443(A001013(n+1))]`
-/

namespace A344438.P17367146203835539079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001013 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A344438.P17367146203835539079

namespace A344438

/-- `char[A023443(A001013(n+1))]` -/
def P17367146203835539079.Spec : Prop :=
  ∀ n, (P17367146203835539079.a n : ℤ) = A344438 (n + 1)

end A344438

/-! ## A344438.P17400185626273326806

`ceil(A322583(n+1)/A001055(n+1))`
-/

namespace A344438.P17400185626273326806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322583 (n + 1) : ℚ) / (A001055 (n + 1) : ℚ)⌉

end

end A344438.P17400185626273326806

namespace A344438

/-- `ceil(A322583(n+1)/A001055(n+1))` -/
def P17400185626273326806.Spec : Prop :=
  ∀ n, P17400185626273326806.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P6740751539701532128

`ceil(A322583(n+1)/A317791(n+1))`
-/

namespace A344438.P6740751539701532128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322583 (n + 1) : ℚ) / (A317791 (n + 1) : ℚ)⌉

end

end A344438.P6740751539701532128

namespace A344438

/-- `ceil(A322583(n+1)/A317791(n+1))` -/
def P6740751539701532128.Spec : Prop :=
  ∀ n, P6740751539701532128.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P6516426929008843894

`A285037(C(n, A322583(n+1)+n)+1)`
-/

namespace A344438.P6516426929008843894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285037 (Nat.choose n (A322583 (n + 1) + (n : ℤ)).toNat + 1)

end

end A344438.P6516426929008843894

namespace A344438

/-- `A285037(C(n, A322583(n+1)+n)+1)` -/
def P6516426929008843894.Spec : Prop :=
  ∀ n, P6516426929008843894.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P4063484300849211082

`A322583(C(n, n^A322583(n+1))+1)`
-/

namespace A344438.P4063484300849211082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) ^ (A322583 (n + 1) : ℤ))).toNat + 1)

end

end A344438.P4063484300849211082

namespace A344438

/-- `A322583(C(n, n^A322583(n+1))+1)` -/
def P4063484300849211082.Spec : Prop :=
  ∀ n, P4063484300849211082.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P8257238567495653662

`A322583(C(n, C(n, A322583(n+1)))+1)`
-/

namespace A344438.P8257238567495653662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (Nat.choose n (Nat.choose n (A322583 (n + 1)).toNat) + 1)

end

end A344438.P8257238567495653662

namespace A344438

/-- `A322583(C(n, C(n, A322583(n+1)))+1)` -/
def P8257238567495653662.Spec : Prop :=
  ∀ n, P8257238567495653662.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P12873599610490016218

`char[lt[A322583(2*n+5), A322583(n+1)]]`
-/

namespace A344438.P12873599610490016218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (2 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A344438.P12873599610490016218

namespace A344438

/-- `char[lt[A322583(2*n+5), A322583(n+1)]]` -/
def P12873599610490016218.Spec : Prop :=
  ∀ n, (P12873599610490016218.a n : ℤ) = A344438 (n + 1)

end A344438

/-! ## A344438.P6615378895916519835

`A297993((a(n-1)+1)*A322583(n+1)+1)` with `a(0)=1`
-/

namespace A344438.P6615378895916519835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A297993 ((a (n - 1) + 1) * A322583 (n + 1) + 1).toNat

end

end A344438.P6615378895916519835

namespace A344438

/-- `A297993((a(n-1)+1)*A322583(n+1)+1)` -/
def P6615378895916519835.Spec : Prop :=
  ∀ n, P6615378895916519835.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P6858499973512293763

`A322585(n+1)*A322585(A057335(n))`
-/

namespace A344438.P6858499973512293763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (n + 1) * A322585 (A057335 n).toNat

end

end A344438.P6858499973512293763

namespace A344438

/-- `A322585(n+1)*A322585(A057335(n))` -/
def P6858499973512293763.Spec : Prop :=
  ∀ n, P6858499973512293763.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P12570722692154665402

`A322585(A322585(n+1)+A057335(n)-1)`
-/

namespace A344438.P12570722692154665402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A322585 (n + 1) + (A057335 n - 1)).toNat

end

end A344438.P12570722692154665402

namespace A344438

/-- `A322585(A322585(n+1)+A057335(n)-1)` -/
def P12570722692154665402.Spec : Prop :=
  ∀ n, P12570722692154665402.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P12633374751963114891

`A351956(A164931(n+1))`
-/

namespace A344438.P12633374751963114891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351956 (A164931 (n + 1)).toNat

end

end A344438.P12633374751963114891

namespace A344438

/-- `A351956(A164931(n+1))` -/
def P12633374751963114891.Spec : Prop :=
  ∀ n, P12633374751963114891.a n = A344438 (n + 1)

end A344438

/-! ## A344438.P16408584413383777486

`A351956((n+1)*A008578(n+1))`
-/

namespace A344438.P16408584413383777486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351956 ((n + 1 : ℤ) * A008578 (n + 1)).toNat

end

end A344438.P16408584413383777486

namespace A344438

/-- `A351956((n+1)*A008578(n+1))` -/
def P16408584413383777486.Spec : Prop :=
  ∀ n, P16408584413383777486.a n = A344438 (n + 1)

end A344438

/-!
# A344439: a(n) = n - A206369(n).

The programs for A344439, the canonical program `A344439.P7395622316859986501` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344439 has offset 1).

The definition of A344439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344439.P12429564078501164209

`A344440(n+1)-A344441(n+1)`
-/

namespace A344439.P12429564078501164209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344440 (n + 1) - A344441 (n + 1)

end

end A344439.P12429564078501164209

namespace A344439

/-- `A344440(n+1)-A344441(n+1)` -/
def P12429564078501164209.Spec : Prop :=
  ∀ n, P12429564078501164209.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P7395622316859986501

`1-A206369(n+1)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344439

/-- `1-A206369(n+1)+n` -/
def P7395622316859986501.Spec : Prop :=
  ∀ n, P7395622316859986501.a n = A344439 (n + 1)

theorem P7395622316859986501.correct : P7395622316859986501.Spec := by
  intro n
  simp only [A344439, Nat.add_sub_cancel]

end A344439

/-! ## A344439.P6486736955609151109

`1-abs(A061020(n+1))+n`
-/

namespace A344439.P6486736955609151109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A061020 (n + 1)| + (n : ℤ)

end

end A344439.P6486736955609151109

namespace A344439

/-- `1-abs(A061020(n+1))+n` -/
def P6486736955609151109.Spec : Prop :=
  ∀ n, P6486736955609151109.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P9429940626041150557

`a(n-1)+1-A206475(n)` with `a(0)=0`
-/

namespace A344439.P9429940626041150557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A206475 n)

end

end A344439.P9429940626041150557

namespace A344439

/-- `a(n-1)+1-A206475(n)` -/
def P9429940626041150557.Spec : Prop :=
  ∀ n, P9429940626041150557.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P8191817599382954934

`1-∑{d}[n+1, #*A008836((n+1)/#)]+n`
-/

namespace A344439.P8191817599382954934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + (n : ℤ)

end

end A344439.P8191817599382954934

namespace A344439

/-- `1-∑{d}[n+1, #*A008836((n+1)/#)]+n` -/
def P8191817599382954934.Spec : Prop :=
  ∀ n, P8191817599382954934.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P4877831955614216621

`n-A023443(A206369(n+1))`
-/

namespace A344439.P4877831955614216621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A206369 (n + 1)).toNat

end

end A344439.P4877831955614216621

namespace A344439

/-- `n-A023443(A206369(n+1))` -/
def P4877831955614216621.Spec : Prop :=
  ∀ n, P4877831955614216621.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P2480544965971800020

`A155085(n+1)%A378542(n+1)`
-/

namespace A344439.P2480544965971800020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1)) (A378542 (n + 1))

end

end A344439.P2480544965971800020

namespace A344439

/-- `A155085(n+1)%A378542(n+1)` -/
def P2480544965971800020.Spec : Prop :=
  ∀ n, P2480544965971800020.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P1923086008672376320

`∑{d}[n+1, A000010(#)*A049240((n+1)/#)]`
-/

namespace A344439.P1923086008672376320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A049240 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344439.P1923086008672376320

namespace A344439

/-- `∑{d}[n+1, A000010(#)*A049240((n+1)/#)]` -/
def P1923086008672376320.Spec : Prop :=
  ∀ n, P1923086008672376320.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P4833448229643262442

`∑{d}[n+1, A007431(#)*A056595((n+1)/#)]`
-/

namespace A344439.P4833448229643262442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A056595 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344439.P4833448229643262442

namespace A344439

/-- `∑{d}[n+1, A007431(#)*A056595((n+1)/#)]` -/
def P4833448229643262442.Spec : Prop :=
  ∀ n, P4833448229643262442.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P14941442084041074342

`∑{d}[n+1, A000010(#)*A267635((n+1)/#)]`
-/

namespace A344439.P14941442084041074342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A267635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344439.P14941442084041074342

namespace A344439

/-- `∑{d}[n+1, A000010(#)*A267635((n+1)/#)]` -/
def P14941442084041074342.Spec : Prop :=
  ∀ n, P14941442084041074342.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P8540775363697148436

`∑{d}[n+1, A008836(#)*A306927((n+1)/#)]`
-/

namespace A344439.P8540775363697148436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A306927 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344439.P8540775363697148436

namespace A344439

/-- `∑{d}[n+1, A008836(#)*A306927((n+1)/#)]` -/
def P8540775363697148436.Spec : Prop :=
  ∀ n, P8540775363697148436.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P7203746966840910898

`∑{d}[n+1, A074722(#)*A309307((n+1)/#)]`
-/

namespace A344439.P7203746966840910898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A309307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344439.P7203746966840910898

namespace A344439

/-- `∑{d}[n+1, A074722(#)*A309307((n+1)/#)]` -/
def P7203746966840910898.Spec : Prop :=
  ∀ n, P7203746966840910898.a n = A344439 (n + 1)

end A344439

/-! ## A344439.P9712124333904198444

`(A061019(n+1)-A061020(n+1))*A008836(n+1)`
-/

namespace A344439.P9712124333904198444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061019 (n + 1) - A061020 (n + 1)) * A008836 (n + 1)

end

end A344439.P9712124333904198444

namespace A344439

/-- `(A061019(n+1)-A061020(n+1))*A008836(n+1)` -/
def P9712124333904198444.Spec : Prop :=
  ∀ n, P9712124333904198444.a n = A344439 (n + 1)

end A344439

/-!
# A344440: a(n) = n + A061020(n).

The programs for A344440, the canonical program `A344440.P2911178003362217531` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344440 has offset 1).

The definition of A344440 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344439, A344441, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344440.P2911178003362217531

`A344439(n+1)+A344441(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344440

/-- `A344439(n+1)+A344441(n+1)` -/
def P2911178003362217531.Spec : Prop :=
  ∀ n, P2911178003362217531.a n = A344440 (n + 1)

theorem P2911178003362217531.correct : P2911178003362217531.Spec := by
  intro n
  simp only [A344440, Nat.add_sub_cancel]

end A344440

/-! ## A344440.P7247134031641384973

`A061020(n+1)+1+n`
-/

namespace A344440.P7247134031641384973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + 1 + (n : ℤ)

end

end A344440.P7247134031641384973

namespace A344440

/-- `A061020(n+1)+1+n` -/
def P7247134031641384973.Spec : Prop :=
  ∀ n, P7247134031641384973.a n = A344440 (n + 1)

end A344440

/-! ## A344440.P4352942312406982820

`∑{d}[n+1, A061019(#)]+1+n`
-/

namespace A344440.P4352942312406982820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d + 1 + (n : ℤ)

end

end A344440.P4352942312406982820

namespace A344440

/-- `∑{d}[n+1, A061019(#)]+1+n` -/
def P4352942312406982820.Spec : Prop :=
  ∀ n, P4352942312406982820.a n = A344440 (n + 1)

end A344440

/-! ## A344440.P5243529734007054812

`∑{d}[n+1, #*A008836(#)]+1+n`
-/

namespace A344440.P5243529734007054812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008836 d + 1 + (n : ℤ)

end

end A344440.P5243529734007054812

namespace A344440

/-- `∑{d}[n+1, #*A008836(#)]+1+n` -/
def P5243529734007054812.Spec : Prop :=
  ∀ n, P5243529734007054812.a n = A344440 (n + 1)

end A344440

/-! ## A344440.P3011817715173064479

`abs(A206369(n+1)+A061019(n+1))`
-/

namespace A344440.P3011817715173064479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A206369 (n + 1) + A061019 (n + 1)|

end

end A344440.P3011817715173064479

namespace A344440

/-- `abs(A206369(n+1)+A061019(n+1))` -/
def P3011817715173064479.Spec : Prop :=
  ∀ n, P3011817715173064479.a n = A344440 (n + 1)

end A344440

/-! ## A344440.P4753372783273728025

`A318676(n+1)+n+1-A318677(n+1)`
-/

namespace A344440.P4753372783273728025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (n + 1) + ((n + 1 : ℤ) - A318677 (n + 1))

end

end A344440.P4753372783273728025

namespace A344440

/-- `A318676(n+1)+n+1-A318677(n+1)` -/
def P4753372783273728025.Spec : Prop :=
  ∀ n, P4753372783273728025.a n = A344440 (n + 1)

end A344440

/-! ## A344440.P12879329416327272654

`A008836(n+1)*A206369(n+1)+n+1`
-/

namespace A344440.P12879329416327272654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A206369 (n + 1) + (n + 1 : ℤ)

end

end A344440.P12879329416327272654

namespace A344440

/-- `A008836(n+1)*A206369(n+1)+n+1` -/
def P12879329416327272654.Spec : Prop :=
  ∀ n, P12879329416327272654.a n = A344440 (n + 1)

end A344440

/-!
# A344441: a(n) = A061020(n) + abs(A061020(n)).

The programs for A344441, the canonical program `A344441.P7816305199856624766` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344441 has offset 1).

The definition of A344441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, A206369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344441.P7816305199856624766

`A061020(n+1)+A206369(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344441

/-- `A061020(n+1)+A206369(n+1)` -/
def P7816305199856624766.Spec : Prop :=
  ∀ n, P7816305199856624766.a n = A344441 (n + 1)

theorem P7816305199856624766.correct : P7816305199856624766.Spec := by
  intro n
  simp only [A344441, Nat.add_sub_cancel]

end A344441

/-! ## A344441.P11446397632341425242

`A344440(n+1)-A344439(n+1)`
-/

namespace A344441.P11446397632341425242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344440 (n + 1) - A344439 (n + 1)

end

end A344441.P11446397632341425242

namespace A344441

/-- `A344440(n+1)-A344439(n+1)` -/
def P11446397632341425242.Spec : Prop :=
  ∀ n, P11446397632341425242.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P15833347883005016465

`(A008836(n+1)+1)*A061020(n+1)`
-/

namespace A344441.P15833347883005016465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) + 1) * A061020 (n + 1)

end

end A344441.P15833347883005016465

namespace A344441

/-- `(A008836(n+1)+1)*A061020(n+1)` -/
def P15833347883005016465.Spec : Prop :=
  ∀ n, P15833347883005016465.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P10928916637737946420

`(A008836(n+1)+1)*A206369(n+1)`
-/

namespace A344441.P10928916637737946420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) + 1) * A206369 (n + 1)

end

end A344441.P10928916637737946420

namespace A344441

/-- `(A008836(n+1)+1)*A206369(n+1)` -/
def P10928916637737946420.Spec : Prop :=
  ∀ n, P10928916637737946420.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P2615436867267659589

`A061020(n+1)+1-A344439(n+1)+n`
-/

namespace A344441.P2615436867267659589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + (1 - A344439 (n + 1) + (n : ℤ))

end

end A344441.P2615436867267659589

namespace A344441

/-- `A061020(n+1)+1-A344439(n+1)+n` -/
def P2615436867267659589.Spec : Prop :=
  ∀ n, P2615436867267659589.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P8498465016988021392

`(A008683(A007913(n+1))+1)*A061020(n+1)`
-/

namespace A344441.P8498465016988021392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (A007913 (n + 1)).toNat + 1) * A061020 (n + 1)

end

end A344441.P8498465016988021392

namespace A344441

/-- `(A008683(A007913(n+1))+1)*A061020(n+1)` -/
def P8498465016988021392.Spec : Prop :=
  ∀ n, P8498465016988021392.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P14614792370177044950

`(A008683(A007913(n+1))+1)*A206369(n+1)`
-/

namespace A344441.P14614792370177044950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (A007913 (n + 1)).toNat + 1) * A206369 (n + 1)

end

end A344441.P14614792370177044950

namespace A344441

/-- `(A008683(A007913(n+1))+1)*A206369(n+1)` -/
def P14614792370177044950.Spec : Prop :=
  ∀ n, P14614792370177044950.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P6785552035411859053

`A061020(n+1)+gcd(A000038(n), A061020(n+1))`
-/

namespace A344441.P6785552035411859053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + (Int.gcd (A000038 n) (A061020 (n + 1)) : ℤ)

end

end A344441.P6785552035411859053

namespace A344441

/-- `A061020(n+1)+gcd(A000038(n), A061020(n+1))` -/
def P6785552035411859053.Spec : Prop :=
  ∀ n, P6785552035411859053.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P8186700601127857622

`A061020(n+1)+lcm(A014709(n), A061020(n+1))`
-/

namespace A344441.P8186700601127857622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + (Int.lcm (A014709 n) (A061020 (n + 1)) : ℤ)

end

end A344441.P8186700601127857622

namespace A344441

/-- `A061020(n+1)+lcm(A014709(n), A061020(n+1))` -/
def P8186700601127857622.Spec : Prop :=
  ∀ n, P8186700601127857622.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P17508503559658154442

`A061020(n+1)+A000188(A061020(n+1)²)`
-/

namespace A344441.P17508503559658154442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + A000188 (A061020 (n + 1) ^ 2).toNat

end

end A344441.P17508503559658154442

namespace A344441

/-- `A061020(n+1)+A000188(A061020(n+1)²)` -/
def P17508503559658154442.Spec : Prop :=
  ∀ n, P17508503559658154442.a n = A344441 (n + 1)

end A344441

/-! ## A344441.P1999539942498052505

`A061020(n+1)+A019554(A061020(n+1)²)`
-/

namespace A344441.P1999539942498052505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + A019554 (A061020 (n + 1) ^ 2).toNat

end

end A344441.P1999539942498052505

namespace A344441

/-- `A061020(n+1)+A019554(A061020(n+1)²)` -/
def P1999539942498052505.Spec : Prop :=
  ∀ n, P1999539942498052505.a n = A344441 (n + 1)

end A344441

/-!
# A344442: a(n) = A332844(n) - n.

The programs for A344442, the canonical program `A344442.P16917334550170264371` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344442 has offset 1).

The definition of A344442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344442.P16917334550170264371

`A332844(n+1)-(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344442

/-- `A332844(n+1)-(n+1)` -/
def P16917334550170264371.Spec : Prop :=
  ∀ n, P16917334550170264371.a n = A344442 (n + 1)

theorem P16917334550170264371.correct : P16917334550170264371.Spec := by
  intro n
  simp only [A344442, Nat.add_sub_cancel]

end A344442

/-! ## A344442.P13267856585424393691

`∑{d}[n+1, A076752(#)]-(n+1)`
-/

namespace A344442.P13267856585424393691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d - (n + 1 : ℤ)

end

end A344442.P13267856585424393691

namespace A344442

/-- `∑{d}[n+1, A076752(#)]-(n+1)` -/
def P13267856585424393691.Spec : Prop :=
  ∀ n, P13267856585424393691.a n = A344442 (n + 1)

end A344442

/-! ## A344442.P14767021592029572109

`∑{d}[n+1, #*A046951((n+1)/#)]-(n+1)`
-/

namespace A344442.P14767021592029572109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - (n + 1 : ℤ)

end

end A344442.P14767021592029572109

namespace A344442

/-- `∑{d}[n+1, #*A046951((n+1)/#)]-(n+1)` -/
def P14767021592029572109.Spec : Prop :=
  ∀ n, P14767021592029572109.a n = A344442 (n + 1)

end A344442

/-! ## A344442.P8980032036462805038

`A347091(n+1)-(A347090(n+1)+n+1)`
-/

namespace A344442.P8980032036462805038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347091 (n + 1) - (A347090 (n + 1) + (n + 1 : ℤ))

end

end A344442.P8980032036462805038

namespace A344442

/-- `A347091(n+1)-(A347090(n+1)+n+1)` -/
def P8980032036462805038.Spec : Prop :=
  ∀ n, P8980032036462805038.a n = A344442 (n + 1)

end A344442

/-! ## A344442.P17912768124715273888

`A023443(A332844(n+1)-n)`
-/

namespace A344442.P17912768124715273888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332844 (n + 1) - (n : ℤ)).toNat

end

end A344442.P17912768124715273888

namespace A344442

/-- `A023443(A332844(n+1)-n)` -/
def P17912768124715273888.Spec : Prop :=
  ∀ n, P17912768124715273888.a n = A344442 (n + 1)

end A344442

/-!
# A344443: Completely additive with a(2)=5; for odd prime p, a(p) = ceiling((a(p-1) + a(p+1))/2).

The programs for A344443, there is no canonical definition to state claims against.
-/

/-! ## A344443.P16123446130677551660

`ceil(log(A089246(2*n+1)+(n+1)^7+n^7))`
-/

namespace A344443.P16123446130677551660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A089246 (2 * n + 1) + ((n + 1) ^ 7 + n ^ 7 : ℤ) : ℝ)⌉

end

end A344443.P16123446130677551660

/-! ## A344443.P18218103577474158755

`floor(log2(∑[A344857(3*(n+1))]))`
-/

namespace A344443.P18218103577474158755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344443.P18218103577474158755

/-! ## A344443.P3205451612896796579

`A130245(C(A052905(n), 2))`
-/

namespace A344443.P3205451612896796579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (Nat.choose (A052905 n).toNat 2)

end

end A344443.P3205451612896796579

/-! ## A344443.P5527764375636332853

`ceil(log(A189414(n+2)))`
-/

namespace A344443.P5527764375636332853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A189414 (n + 2) : ℝ)⌉

end

end A344443.P5527764375636332853

/-! ## A344443.P1517839570779885906

`A130234(A380332(n+1))`
-/

namespace A344443.P1517839570779885906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (A380332 (n + 1)).toNat

end

end A344443.P1517839570779885906

/-!
# A344444: Completely additive with a(2) = 12, a(3) = 19; for prime p > 3, a(p) = ceiling((a(p-1) + a(p+1))/2).

The programs for A344444, there is no canonical definition to state claims against.
-/

/-! ## A344444.P15591799533049061540

`ceil(19/log(3)*log(n+1))`
-/

namespace A344444.P15591799533049061540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈19 / Real.log (3 : ℝ) * Real.log (n + 1 : ℝ)⌉

end

end A344444.P15591799533049061540

/-! ## A344444.P1080373639319127134

`floor(log2(A133351(2*n)))`
-/

namespace A344444.P1080373639319127134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A133351 (2 * n)).toNat

end

end A344444.P1080373639319127134

/-! ## A344444.P12926880613934114921

`round(3*log2(A344523(n+1)))`
-/

namespace A344444.P12926880613934114921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * Real.logb 2 (A344523 (n + 1) : ℝ))

end

end A344444.P12926880613934114921

/-! ## A344444.P18327999856075561051

`round(log2(∑[A022528(n)/3]))+2`
-/

namespace A344444.P18327999856075561051
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022528 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)) + 2

end

end A344444.P18327999856075561051

/-! ## A344444.P14634621881529322796

`round((round(A004225(n+1)/5)+1)/5)`
-/

namespace A344444.P14634621881529322796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A004225 (n + 1) : ℚ) / 5) + 1 : ℚ) / 5)

end

end A344444.P14634621881529322796

/-! ## A344444.P8621943542179697059

`floor(log2(A001014(n+1)*A008516(n)))`
-/

namespace A344444.P8621943542179697059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001014 (n + 1) * A008516 n).toNat

end

end A344444.P8621943542179697059

/-!
# A344445: Number of cycle-up-down permutations of [2n] having n cycles.

The programs for A344445, there is no canonical definition to state claims against.
-/

/-! ## A344445.P3500365094788376759

`A186366(A004277(n²))`
-/

namespace A344445.P3500365094788376759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A004277 (n ^ 2)).toNat

end

end A344445.P3500365094788376759

/-! ## A344445.P12412166257754305804

`A186366(A065033((2*n)²))`
-/

namespace A344445.P12412166257754305804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A065033 ((2 * n) ^ 2)).toNat

end

end A344445.P12412166257754305804

/-! ## A344445.P11389689771951186547

`A186366(A001105(A000007(n)+n))`
-/

namespace A344445.P11389689771951186547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A001105 (A000007 n + (n : ℤ)).toNat).toNat

end

end A344445.P11389689771951186547

/-! ## A344445.P4861720657065819182

`A186366(A001105(n)+A000038(n))`
-/

namespace A344445.P4861720657065819182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A001105 n + A000038 n).toNat

end

end A344445.P4861720657065819182

/-! ## A344445.P17965307797567696532

`A186366(A058331(n)-A178334(n))`
-/

namespace A344445.P17965307797567696532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186366 (A058331 n - A178334 n).toNat

end

end A344445.P17965307797567696532

/-!
# A344446: Number of partitions of n into 3 semiprimes.

The programs for A344446, there is no canonical definition to state claims against.
-/

/-! ## A344446.P18220991296821193642

`A056980(xor(10, A251762(n)))`
-/

namespace A344446.P18220991296821193642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (Int.xor 10 (A251762 n)).toNat

end

end A344446.P18220991296821193642

/-! ## A344446.P10252976729771552680

`A025458(A029225(n)*A195041(n))`
-/

namespace A344446.P10252976729771552680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A029225 n * A195041 n).toNat

end

end A344446.P10252976729771552680

/-! ## A344446.P2139317999280047567

`∑{e}[A042959(A000041(A042961(n))), #]`
-/

namespace A344446.P2139317999280047567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042959 (A000041 (A042961 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344446.P2139317999280047567

/-! ## A344446.P14480566429989125990

`A084413(n)%A055642(A147000(n+1))`
-/

namespace A344446.P14480566429989125990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084413 n) (A055642 (A147000 (n + 1)).toNat)

end

end A344446.P14480566429989125990

/-! ## A344446.P17301309769356548626

`A282290(A029177(n)%A282277(n+1))`
-/

namespace A344446.P17301309769356548626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282290 (Int.tmod (A029177 n) (A282277 (n + 1))).toNat

end

end A344446.P17301309769356548626

/-!
# A344447: Number T(n,k) of partitions of n into k semiprimes; triangle T(n,k), n>=0, read by rows.

The programs for A344447, there is no canonical definition to state claims against.
-/

/-! ## A344447.P15599217214708980984

`A092248(A353849(3*(n+1))+A097955(n+5))`
-/

namespace A344447.P15599217214708980984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (A353849 (3 * (n + 1)) + A097955 (n + 5)).toNat

end

end A344447.P15599217214708980984

/-! ## A344447.P4588835808799245031

`A109708(and(A109658(n+1), A109712(n+5)))`
-/

namespace A344447.P4588835808799245031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (Int.land (A109658 (n + 1)) (A109712 (n + 5))).toNat

end

end A344447.P4588835808799245031

/-! ## A344447.P11333378013770918065

`A030315(xor(A134324(2*n+1), A187286(n+2)))`
-/

namespace A344447.P11333378013770918065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (Int.xor (A134324 (2 * n + 1)) (A187286 (n + 2))).toNat

end

end A344447.P11333378013770918065

/-! ## A344447.P4659774122758844141

`A230412(A062326(n+3)*A178595(n+2))`
-/

namespace A344447.P4659774122758844141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230412 (A062326 (n + 3) * A178595 (n + 2)).toNat

end

end A344447.P4659774122758844141

/-! ## A344447.P18071065600123413924

`A285949(A285929(n+3)-A000930(n))`
-/

namespace A344447.P18071065600123413924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285949 (A285929 (n + 3) - A000930 n).toNat

end

end A344447.P18071065600123413924

/-!
# A344450: Lexicographically earliest sequence S of distinct nonnegative terms such that the n-th even digit of S is present in a(n).

The programs for A344450, there is no canonical definition to state claims against.
-/

/-! ## A344450.P18116654257587676498

`record[2*gcd(n, A174210(n))]`
-/

namespace A344450.P18116654257587676498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n : ℤ) (A174210 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344450.P18116654257587676498

/-! ## A344450.P15542232905056159818

`2*lt[A269133(n+1), 7]`
-/

namespace A344450.P15542232905056159818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269133 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344450.P15542232905056159818

/-! ## A344450.P5933784944772769136

`∑{e}[3^n, A264979(n)+#]`
-/

namespace A344450.P5933784944772769136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A264979 n + (Nat.factorization (f1 n) p : ℤ))

end

end A344450.P5933784944772769136

/-! ## A344450.P17305918335855350778

`eq[∑{digits}[n, floor(atan(#))]!, A089312(2*n+1)]`
-/

namespace A344450.P17305918335855350778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊Real.arctan (x : ℝ)⌋).sum.toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089312 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A344450.P17305918335855350778

/-! ## A344450.P10399473929792011921

`2*A117707(A260708(n))`
-/

namespace A344450.P10399473929792011921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117707 (A260708 n).toNat

end

end A344450.P10399473929792011921

/-!
# A344455: Total number of right-to-left minima in all derangement permutations of [n].

The programs for A344455, there is no canonical definition to state claims against.
-/

/-! ## A344455.P11973176987544563415

`A027870(A086871(n)+12)`
-/

namespace A344455.P11973176987544563415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A086871 n + 12).toNat

end

end A344455.P11973176987544563415

/-! ## A344455.P8467227499653460508

`abs(xor(A053120(2*n), A099952(n+1)))`
-/

namespace A344455.P8467227499653460508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A053120 (2 * n)) (A099952 (n + 1))|

end

end A344455.P8467227499653460508

/-! ## A344455.P16719300949538182434

`A002264(A364594(n)+A351152(n))`
-/

namespace A344455.P16719300949538182434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A364594 n + A351152 n).toNat

end

end A344455.P16719300949538182434

/-!
# A344457: a(n) = Sum_{d|n} d * Omega(d).

The programs for A344457, there is no canonical definition to state claims against.
-/

/-! ## A344457.P6001099862754157167

`∑{d}[n+1, A066959(#)]`
-/

namespace A344457.P6001099862754157167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066959 d

end

end A344457.P6001099862754157167

/-! ## A344457.P13169137231464407404

`∑{d}[n+1, #*A001222(#)]`
-/

namespace A344457.P13169137231464407404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001222 d

end

end A344457.P13169137231464407404

/-! ## A344457.P12515857855540836862

`∑{d}[n+1, #*A347395(#²)]`
-/

namespace A344457.P12515857855540836862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A347395 (d ^ 2)

end

end A344457.P12515857855540836862

/-! ## A344457.P15996605095843180083

`∑{d}[n+1, #*A023889((n+1)/#)]`
-/

namespace A344457.P15996605095843180083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023889 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344457.P15996605095843180083

/-!
# A344458: a(n) = Sum_{d|n} d^omega(d).

The programs for A344458, the canonical program `A344458.P1195650620663336302` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344458 has offset 1).

The definition of A344458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344458.P1195650620663336302

`∑{d}[n+1, A062509(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344458

/-- `∑{d}[n+1, A062509(#)]` -/
def P1195650620663336302.Spec : Prop :=
  ∀ n, P1195650620663336302.a n = A344458 (n + 1)

theorem P1195650620663336302.correct : P1195650620663336302.Spec := by
  intro n
  simp only [A344458, Nat.add_sub_cancel]

end A344458

/-! ## A344458.P6179053500434135385

`∑{d}[n+1, #*A304404(#)]`
-/

namespace A344458.P6179053500434135385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A304404 d

end

end A344458.P6179053500434135385

namespace A344458

/-- `∑{d}[n+1, #*A304404(#)]` -/
def P6179053500434135385.Spec : Prop :=
  ∀ n, P6179053500434135385.a n = A344458 (n + 1)

end A344458

/-! ## A344458.P16073103893345459532

`∑{d}[n+1, #^A001221(#)]`
-/

namespace A344458.P16073103893345459532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A001221 d : ℤ)

end

end A344458.P16073103893345459532

namespace A344458

/-- `∑{d}[n+1, #^A001221(#)]` -/
def P16073103893345459532.Spec : Prop :=
  ∀ n, P16073103893345459532.a n = (A344458 (n + 1) : ℚ)

end A344458

/-! ## A344458.P4803198010914078050

`∑{d}[A077168(n), A061537(#)]`
-/

namespace A344458.P4803198010914078050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061537 d

end

end A344458.P4803198010914078050

namespace A344458

/-- `∑{d}[A077168(n), A061537(#)]` -/
def P4803198010914078050.Spec : Prop :=
  ∀ n, P4803198010914078050.a n = A344458 (n + 1)

end A344458

/-!
# A344459: a(n) = Sum_{d|n} d^Omega(d).

The programs for A344459, the canonical program `A344459.P14730306849284895143` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344459 has offset 1).

The definition of A344459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344459.P14730306849284895143

`∑{d}[n+1, A176029(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344459

/-- `∑{d}[n+1, A176029(#)]` -/
def P14730306849284895143.Spec : Prop :=
  ∀ n, P14730306849284895143.a n = A344459 (n + 1)

theorem P14730306849284895143.correct : P14730306849284895143.Spec := by
  intro n
  simp only [A344459, Nat.add_sub_cancel]

end A344459

/-! ## A344459.P1517831471925008254

`∑{d}[n+1, #*A072195(#)]`
-/

namespace A344459.P1517831471925008254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A072195 d

end

end A344459.P1517831471925008254

namespace A344459

/-- `∑{d}[n+1, #*A072195(#)]` -/
def P1517831471925008254.Spec : Prop :=
  ∀ n, P1517831471925008254.a n = A344459 (n + 1)

end A344459

/-! ## A344459.P9199496490641177622

`∑{d}[n+1, #^A001222(#)]`
-/

namespace A344459.P9199496490641177622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A001222 d : ℤ)

end

end A344459.P9199496490641177622

namespace A344459

/-- `∑{d}[n+1, #^A001222(#)]` -/
def P9199496490641177622.Spec : Prop :=
  ∀ n, P9199496490641177622.a n = (A344459 (n + 1) : ℚ)

end A344459

/-! ## A344459.P15080762551892930136

`∑{d}[n+1, #^A347395(#²)]`
-/

namespace A344459.P15080762551892930136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A347395 (d ^ 2) : ℤ)

end

end A344459.P15080762551892930136

namespace A344459

/-- `∑{d}[n+1, #^A347395(#²)]` -/
def P15080762551892930136.Spec : Prop :=
  ∀ n, P15080762551892930136.a n = (A344459 (n + 1) : ℚ)

end A344459

/-! ## A344459.P54403723523986901

`∑{d}[A124107(n+1), A218323(#)]`
-/

namespace A344459.P54403723523986901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A218323 d

end

end A344459.P54403723523986901

namespace A344459

/-- `∑{d}[A124107(n+1), A218323(#)]` -/
def P54403723523986901.Spec : Prop :=
  ∀ n, P54403723523986901.a n = A344459 (n + 1)

end A344459

/-!
# A344460: a(n) = Sum_{d|n} d * floor(sqrt(d)).

The programs for A344460, the canonical program `A344460.P6907649787414502556` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344460 has offset 1).

The definition of A344460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344460.P6907649787414502556

`∑{d}[n+1, #*floor(sqrt(#))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344460

/-- `∑{d}[n+1, #*floor(sqrt(#))]` -/
def P6907649787414502556.Spec : Prop :=
  ∀ n, (P6907649787414502556.a n : ℤ) = A344460 (n + 1)

theorem P6907649787414502556.correct : P6907649787414502556.Spec := by
  intro n
  simp only [A344460, Nat.add_sub_cancel]

end A344460

/-!
# A344461: a(n) = Sum_{d|n} d^gcd(d,n/d).

The programs for A344461, the canonical program `A344461.P8136018757482845940` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344461 has offset 1).

The definition of A344461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344461.P8136018757482845940

`∑{d}[n+1, #^gcd(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344461

/-- `∑{d}[n+1, #^gcd(#, (n+1)/#)]` -/
def P8136018757482845940.Spec : Prop :=
  ∀ n, (P8136018757482845940.a n : ℤ) = A344461 (n + 1)

theorem P8136018757482845940.correct : P8136018757482845940.Spec := by
  intro n
  simp only [A344461, Nat.add_sub_cancel]

end A344461

/-! ## A344461.P9525280210857407314

`A108362(A309861(n))+A003959(n+1)`
-/

namespace A344461.P9525280210857407314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (A309861 n).toNat + A003959 (n + 1)

end

end A344461.P9525280210857407314

namespace A344461

/-- `A108362(A309861(n))+A003959(n+1)` -/
def P9525280210857407314.Spec : Prop :=
  ∀ n, P9525280210857407314.a n = A344461 (n + 1)

end A344461

/-! ## A344461.P16086161694765293551

`A003959(n+1)-A144169(A029804(n+1))`
-/

namespace A344461.P16086161694765293551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A144169 (A029804 (n + 1)).toNat

end

end A344461.P16086161694765293551

namespace A344461

/-- `A003959(n+1)-A144169(A029804(n+1))` -/
def P16086161694765293551.Spec : Prop :=
  ∀ n, P16086161694765293551.a n = A344461 (n + 1)

end A344461

/-!
# A344462: Number of pairs (d1,d2) of divisors of n such that d1 < d2 and d2^2 + d1*(n - d2)^2 = n^2.

The programs for A344462, there is no canonical definition to state claims against.
-/

/-! ## A344462.P10450029319380267124

`A071325(A034699(n+1)*A061537(n+1))`
-/

namespace A344462.P10450029319380267124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A034699 (n + 1) * A061537 (n + 1)).toNat

end

end A344462.P10450029319380267124

/-! ## A344462.P13020245066244844883

`A305611(n+1)+A241541(A347157(n+1)²)`
-/

namespace A344462.P13020245066244844883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (n + 1) + A241541 (A347157 (n + 1) ^ 2).toNat

end

end A344462.P13020245066244844883

/-! ## A344462.P4249361206811502651

`A325770(n+1)+A241541(A347157(n+1)²)`
-/

namespace A344462.P4249361206811502651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1) + A241541 (A347157 (n + 1) ^ 2).toNat

end

end A344462.P4249361206811502651

/-! ## A344462.P7470809970459790381

`∏{e}[n+1, #+1]-A020985(A033630(n+1)^A326850(n)²)`
-/

namespace A344462.P7470809970459790381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A020985 (SequenceMachineLib.roundAway ((A033630 (n + 1) : ℚ) ^ (A326850 n ^ 2 : ℤ))).toNat

end

end A344462.P7470809970459790381

/-! ## A344462.P8155402028461093991

`A349152(A000005(n+1)%A349152(3*n+5))`
-/

namespace A344462.P8155402028461093991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349152 (Int.tmod (A000005 (n + 1)) (A349152 (3 * n + 5))).toNat

end

end A344462.P8155402028461093991

/-!
# A344464: a(n) = Sum_{d|n} d^p(d), where p is the number of partitions of n.

The programs for A344464, there is no canonical definition to state claims against.
-/

/-! ## A344464.P5951489857324037048

`∑{d}[n+1, A133032(#)]`
-/

namespace A344464.P5951489857324037048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133032 d

end

end A344464.P5951489857324037048

/-! ## A344464.P10982922265583165209

`∑{d}[n+1, #^A000041(#)]`
-/

namespace A344464.P10982922265583165209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000041 d : ℤ)

end

end A344464.P10982922265583165209

/-!
# A344465: a(n) = Sum_{d|n} d^(mu(d)^2).

The programs for A344465, there is no canonical definition to state claims against.
-/

/-! ## A344465.P8617440835044204917

`∑{d}[n+1, A385212(#)]`
-/

namespace A344465.P8617440835044204917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A385212 d

end

end A344465.P8617440835044204917

/-! ## A344465.P5955481160676192347

`∑{d}[n+1, A349630(#²)]`
-/

namespace A344465.P5955481160676192347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349630 (d ^ 2)

end

end A344465.P5955481160676192347

/-! ## A344465.P3851570307009414967

`∑{d}[n+1, #^abs(A008683(#))]`
-/

namespace A344465.P3851570307009414967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (|A008683 d| : ℤ)

end

end A344465.P3851570307009414967

/-! ## A344465.P1053763935987503809

`A048105(n+1)+∏{p}[n+1, #+1]`
-/

namespace A344465.P1053763935987503809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ)

end

end A344465.P1053763935987503809

/-! ## A344465.P723743145011155721

`A065608(∏{p}[n+1, #])+∏{e}[n+1, #+1]`
-/

namespace A344465.P723743145011155721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (∏ p ∈ Nat.primeFactors (f1 n), p) + ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A344465.P723743145011155721

/-! ## A344465.P5411589309591663043

`A048250(n+1)+A048105(n+1)`
-/

namespace A344465.P5411589309591663043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + A048105 (n + 1)

end

end A344465.P5411589309591663043

/-! ## A344465.P11189649645410330335

`A394481(n+1)-A389162(n+1)`
-/

namespace A344465.P11189649645410330335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394481 (n + 1) - A389162 (n + 1)

end

end A344465.P11189649645410330335

/-! ## A344465.P6498765520833119458

`∑{d}[n+1, #^gcd(A008683(n+1), A008683(#))]`
-/

namespace A344465.P6498765520833119458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ Int.gcd (A008683 (n + 1)) (A008683 d)

end

end A344465.P6498765520833119458

/-! ## A344465.P3404386349328891841

`A000005(n+1)+A048250(n+1)-A034444(n+1)`
-/

namespace A344465.P3404386349328891841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A048250 (n + 1) - A034444 (n + 1))

end

end A344465.P3404386349328891841

/-! ## A344465.P14288406957652102974

`A048250(n+1)+A351520(n+1)-A013928(n+2)`
-/

namespace A344465.P14288406957652102974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A351520 (n + 1) - A013928 (n + 2))

end

end A344465.P14288406957652102974

/-!
# A344466: Primes that occur as p + (digit product of p) for p in A092518.

The programs for A344466, there is no canonical definition to state claims against.
-/

/-! ## A344466.P571877667207127947

`A225303(A037845(Δ[(1-2^n)²]+1)+n+1)`
-/

namespace A344466.P571877667207127947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225303 (A037845 (f1 (n + 1) - f1 n + 1).toNat + (n + 1 : ℤ)).toNat

end

end A344466.P571877667207127947

/-!
# A344469: Triangle read by rows: T(n, k) (0 <= k <= n) = [x^k] x^n * n! * [t^n] x*(1 + t)/(x*exp(-t) - t).

The programs for A344469, there is no canonical definition to state claims against.
-/

/-! ## A344469.P13377555397366457369

`(C(comp[∑[n]]-n, 2)-(n+1))!*A059300(n)`
-/

namespace A344469.P13377555397366457369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A059300 n

end

end A344469.P13377555397366457369

/-! ## A344469.P12957959984552379885

`A059300(n)*A119502(n)`
-/

namespace A344469.P12957959984552379885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 n * A119502 n

end

end A344469.P12957959984552379885

/-! ## A344469.P7124370553173752514

`A025581(n)!*A059300(n)`
-/

namespace A344469.P7124370553173752514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A059300 n

end

end A344469.P7124370553173752514

/-! ## A344469.P3124276785260080286

`abs(A238363(n+1))*A009999(n)`
-/

namespace A344469.P3124276785260080286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238363 (n + 1)| * A009999 n

end

end A344469.P3124276785260080286

/-! ## A344469.P6970768131764962452

`A059298(A061579(n))*A119502(n)`
-/

namespace A344469.P6970768131764962452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059298 (A061579 n).toNat * A119502 n

end

end A344469.P6970768131764962452

/-!
# A344470: Record values in A002654.

The programs for A344470, there is no canonical definition to state claims against.
-/

/-! ## A344470.P3626548138315684255

`A071385(n+2)/4`
-/

namespace A344470.P3626548138315684255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071385 (n + 2) : ℚ) / 4

end

end A344470.P3626548138315684255

/-! ## A344470.P16024872133965159881

`a(n-1)*ratio[A071385(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A344470.P16024872133965159881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071385 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A344470.P16024872133965159881

/-! ## A344470.P6901171568396281238

`∑[A054576(Δ[A071385(n+1)])]`
-/

namespace A344470.P6901171568396281238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344470.P6901171568396281238

/-! ## A344470.P5900253513143757479

`∑[A110651(Δ[A071385(n+1)])]`
-/

namespace A344470.P5900253513143757479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344470.P5900253513143757479

/-! ## A344470.P17648399799955105453

`∑[A110652(Δ[A071385(n+1)])]`
-/

namespace A344470.P17648399799955105453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344470.P17648399799955105453

/-! ## A344470.P8255832800757073265

`A110962(A071385(n+2))`
-/

namespace A344470.P8255832800757073265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A071385 (n + 2)).toNat

end

end A344470.P8255832800757073265

/-!
# A344471: Number of points in the hexagonal lattice A_2 on the circle centered at the origin with squared radius A230655(n).

The programs for A344471, there is no canonical definition to state claims against.
-/

/-! ## A344471.P9893448954023761078

`record[A174869(15*A008706(n))]`
-/

namespace A344471.P9893448954023761078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (15 * A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344471.P9893448954023761078

/-! ## A344471.P6788924220551876819

`record[gcd((n+1)*3^(n%2), A008486(A063507(n+1)))]`
-/

namespace A344471.P6788924220551876819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) * 3 ^ (n % 2) : ℤ) (A008486 (A063507 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344471.P6788924220551876819

/-! ## A344471.P8562094028806992150

`A187778(lt[A319336(n+1), A299069(3*n+2)])`
-/

namespace A344471.P8562094028806992150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299069 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A344471.P8562094028806992150

/-! ## A344471.P16189799755293724453

`record[A125768(n+3)*A364255(n)]`
-/

namespace A344471.P16189799755293724453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125768 (n + 3) * A364255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344471.P16189799755293724453

/-! ## A344471.P11873639577652511128

`∩[A035033(n+1), A187778(n+1)]`
-/

namespace A344471.P11873639577652511128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344471.P11873639577652511128

/-!
# A344472: Record values in A002324.

The programs for A344472, there is no canonical definition to state claims against.
-/

/-! ## A344472.P554394333494367895

`A344471(n+2)/6`
-/

namespace A344472.P554394333494367895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344471 (n + 2) : ℚ) / 6

end

end A344472.P554394333494367895

/-! ## A344472.P7777733062048810063

`a(n-1)*ratio[A344471(n+1)]` with `a(0)=1`
-/

namespace A344472.P7777733062048810063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344471 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A344472.P7777733062048810063

/-! ## A344472.P14636540650229311263

`∑[A008615(Δ[A344471(n+1)])]`
-/

namespace A344472.P14636540650229311263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344471 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344472.P14636540650229311263

/-! ## A344472.P9614908741996516112

`A255591(A344471(n+2))`
-/

namespace A344472.P9614908741996516112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A344471 (n + 2)).toNat

end

end A344472.P9614908741996516112

/-! ## A344472.P7267636674999222953

`A008615(A344471(n+1)+Δ[A344471(n+1)])`
-/

namespace A344472.P7267636674999222953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A344471 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A344472.P7267636674999222953

/-!
# A344473: Numbers of the form (q1^b1)(q2^b2)(q3^b3)(q4^b4)(q5^b5)... where q1=7, q2=13, q3=19, q4=31, q5=37, ... (A002476) and b1>=b2>=b3>=b4>=b5...

The programs for A344473, there is no canonical definition to state claims against.
-/

/-! ## A344473.P16070138258743900367

`record[A344329(∑[A019565(n)])]`
-/

namespace A344473.P16070138258743900367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344329 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344473.P16070138258743900367

/-! ## A344473.P2743338639157548096

`record[A344329(∑[A350844(n)])]`
-/

namespace A344473.P2743338639157548096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344329 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344473.P2743338639157548096

/-! ## A344473.P5463836669201099461

`A344329(lcm(A013624(n), A024175(n)))`
-/

namespace A344473.P5463836669201099461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344329 (Int.lcm (A013624 n) (A024175 n))

end

end A344473.P5463836669201099461

/-!
# A344477: Primes that occur as p - (digit product of p) for p in A228139.

The programs for A344477, there is no canonical definition to state claims against.
-/

/-! ## A344477.P12190228411136243365

`∩[A030475(n+1), A225677(n+1)]`
-/

namespace A344477.P12190228411136243365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344477.P12190228411136243365

/-! ## A344477.P7720940644816925581

`∩[A038618(n+1), A225677(n+1)]`
-/

namespace A344477.P7720940644816925581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344477.P7720940644816925581

/-! ## A344477.P12842469939506854564

`∩[A225677(n+1), A386326(n+1)]`
-/

namespace A344477.P12842469939506854564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344477.P12842469939506854564

/-! ## A344477.P14979050031454479553

`∩[p?[A052382(n+1)], A225677(n+1)]`
-/

namespace A344477.P14979050031454479553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A344477.P14979050031454479553

/-! ## A344477.P15269265821220635701

`∩[p?[A061116(n+1)], A225677(n+1)]`
-/

namespace A344477.P15269265821220635701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A344477.P15269265821220635701

/-!
# A344478: Number of unitary prime divisors p of n such that n/p is squarefree.

The programs for A344478, the canonical program `A344478.P5505533987527580041` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344478 has offset 1).

The definition of A344478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344478.P5505533987527580041

`∑{e}[C(∏{p}[n+1, #], n), #]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344478

/-- `∑{e}[C(∏{p}[n+1, #], n), #]` -/
def P5505533987527580041.Spec : Prop :=
  ∀ n, (P5505533987527580041.a n : ℤ) = A344478 (n + 1)

theorem P5505533987527580041.correct : P5505533987527580041.Spec := by
  intro n
  simp only [A344478, Nat.add_sub_cancel]

end A344478

/-! ## A344478.P12884143439676593026

`∑{e}[∏{e}[n+1, C(2, #²)], #]`
-/

namespace A344478.P12884143439676593026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 (Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A344478.P12884143439676593026

namespace A344478

/-- `∑{e}[∏{e}[n+1, C(2, #²)], #]` -/
def P12884143439676593026.Spec : Prop :=
  ∀ n, (P12884143439676593026.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P12610421397861703358

`∑{p}[C(∏{p}[n+1, #], n), gcd(n, #)]`
-/

namespace A344478.P12610421397861703358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p

end

end A344478.P12610421397861703358

namespace A344478

/-- `∑{p}[C(∏{p}[n+1, #], n), gcd(n, #)]` -/
def P12610421397861703358.Spec : Prop :=
  ∀ n, (P12610421397861703358.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P6100252786853252421

`char[∏{p}[n, #]-1]*∑{e}[n+1, #]`
-/

namespace A344478.P6100252786853252421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

end

end A344478.P6100252786853252421

namespace A344478

/-- `char[∏{p}[n, #]-1]*∑{e}[n+1, #]` -/
def P6100252786853252421.Spec : Prop :=
  ∀ n, (P6100252786853252421.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P2815713844712604776

`C(∑{e}[n+1, #], ∏{e}[n+1, #^4])`
-/

namespace A344478.P2815713844712604776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 4)

end

end A344478.P2815713844712604776

namespace A344478

/-- `C(∑{e}[n+1, #], ∏{e}[n+1, #^4])` -/
def P2815713844712604776.Spec : Prop :=
  ∀ n, (P2815713844712604776.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P10612511478884492160

`and(-char[∏{p}[n, #]-1], ∑{e}[n+1, #])`
-/

namespace A344478.P10612511478884492160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ)

end

end A344478.P10612511478884492160

namespace A344478

/-- `and(-char[∏{p}[n, #]-1], ∑{e}[n+1, #])` -/
def P10612511478884492160.Spec : Prop :=
  ∀ n, P10612511478884492160.a n = A344478 (n + 1)

end A344478

/-! ## A344478.P10533862402159760429

`log2(∏{e}[n+1, #+1])*char[∏{p}[n, #]-1]`
-/

namespace A344478.P10533862402159760429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

end

end A344478.P10533862402159760429

namespace A344478

/-- `log2(∏{e}[n+1, #+1])*char[∏{p}[n, #]-1]` -/
def P10533862402159760429.Spec : Prop :=
  ∀ n, P10533862402159760429.a n = (A344478 (n + 1) : ℝ)

end A344478

/-! ## A344478.P7795528248414110466

`lcm(round(-∏{p}[n+1, -#]/(n+3)), ∑{e}[n+1, #])`
-/

namespace A344478.P7795528248414110466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ)))) ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A344478.P7795528248414110466

namespace A344478

/-- `lcm(round(-∏{p}[n+1, -#]/(n+3)), ∑{e}[n+1, #])` -/
def P7795528248414110466.Spec : Prop :=
  ∀ n, (P7795528248414110466.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P13362510630035742238

`∑{e}[A055615(n+1), #]`
-/

namespace A344478.P13362510630035742238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344478.P13362510630035742238

namespace A344478

/-- `∑{e}[A055615(n+1), #]` -/
def P13362510630035742238.Spec : Prop :=
  ∀ n, (P13362510630035742238.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P86013973451566623

`∑{e}[A074823(n+1), #]`
-/

namespace A344478.P86013973451566623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344478.P86013973451566623

namespace A344478

/-- `∑{e}[A074823(n+1), #]` -/
def P86013973451566623.Spec : Prop :=
  ∀ n, (P86013973451566623.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P12125376087235265552

`∑{e}[A140700(n+1), #]`
-/

namespace A344478.P12125376087235265552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344478.P12125376087235265552

namespace A344478

/-- `∑{e}[A140700(n+1), #]` -/
def P12125376087235265552.Spec : Prop :=
  ∀ n, (P12125376087235265552.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P3787249894831420938

`∑{e}[A226177(n+1), #]`
-/

namespace A344478.P3787249894831420938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344478.P3787249894831420938

namespace A344478

/-- `∑{e}[A226177(n+1), #]` -/
def P3787249894831420938.Spec : Prop :=
  ∀ n, (P3787249894831420938.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P5195168919354780663

`∑{e}[A346234(n+1), #]`
-/

namespace A344478.P5195168919354780663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344478.P5195168919354780663

namespace A344478

/-- `∑{e}[A346234(n+1), #]` -/
def P5195168919354780663.Spec : Prop :=
  ∀ n, (P5195168919354780663.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P1770443254945049865

`∑{e}[A347149(n+1), #]`
-/

namespace A344478.P1770443254945049865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344478.P1770443254945049865

namespace A344478

/-- `∑{e}[A347149(n+1), #]` -/
def P1770443254945049865.Spec : Prop :=
  ∀ n, (P1770443254945049865.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P11586248719285916685

`∑{e}[A385212(n+1), #]`
-/

namespace A344478.P11586248719285916685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A344478.P11586248719285916685

namespace A344478

/-- `∑{e}[A385212(n+1), #]` -/
def P11586248719285916685.Spec : Prop :=
  ∀ n, (P11586248719285916685.a n : ℤ) = A344478 (n + 1)

end A344478

/-! ## A344478.P6432324560564460472

`A100995(A007425(n+1))`
-/

namespace A344478.P6432324560564460472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A007425 (n + 1)).toNat

end

end A344478.P6432324560564460472

namespace A344478

/-- `A100995(A007425(n+1))` -/
def P6432324560564460472.Spec : Prop :=
  ∀ n, P6432324560564460472.a n = A344478 (n + 1)

end A344478

/-! ## A344478.P12004600013531505877

`A100995(A061200(n+1))`
-/

namespace A344478.P12004600013531505877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A061200 (n + 1)).toNat

end

end A344478.P12004600013531505877

namespace A344478

/-- `A100995(A061200(n+1))` -/
def P12004600013531505877.Spec : Prop :=
  ∀ n, P12004600013531505877.a n = A344478 (n + 1)

end A344478

/-! ## A344478.P6671083624481779581

`A100995(A061391(n+1))`
-/

namespace A344478.P6671083624481779581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A061391 (n + 1)).toNat

end

end A344478.P6671083624481779581

namespace A344478

/-- `A100995(A061391(n+1))` -/
def P6671083624481779581.Spec : Prop :=
  ∀ n, P6671083624481779581.a n = A344478 (n + 1)

end A344478

/-! ## A344478.P11993254319094476922

`A100995(A062367(n+1))`
-/

namespace A344478.P11993254319094476922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A062367 (n + 1)).toNat

end

end A344478.P11993254319094476922

namespace A344478

/-- `A100995(A062367(n+1))` -/
def P11993254319094476922.Spec : Prop :=
  ∀ n, P11993254319094476922.a n = A344478 (n + 1)

end A344478

/-! ## A344478.P16251407378209331211

`A049084(A238745(n+1))`
-/

namespace A344478.P16251407378209331211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A238745 (n + 1)).toNat

end

end A344478.P16251407378209331211

namespace A344478

/-- `A049084(A238745(n+1))` -/
def P16251407378209331211.Spec : Prop :=
  ∀ n, P16251407378209331211.a n = A344478 (n + 1)

end A344478

/-!
# A344479: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = Sum_{1 <= x_1, x_2, ..., x_k <= n} gcd(x_1, x_2, ..., x_k).

The programs for A344479, there is no canonical definition to state claims against.
-/

/-! ## A344479.P11053604074367272758

`A007953(A022175(n))+A000096(A002262(n))`
-/

namespace A344479.P11053604074367272758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A022175 n).toNat + A000096 (A002262 n).toNat

end

end A344479.P11053604074367272758

/-! ## A344479.P12072276924482283878

`A139601(n)+A103298(A139601(n)+A035348(n+1))`
-/

namespace A344479.P12072276924482283878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n + A103298 (A139601 n + A035348 (n + 1)).toNat

end

end A344479.P12072276924482283878

/-!
# A344480: a(n) = Sum_{d|n} d * sigma_d(d), where sigma_k(n) is the sum of the k-th powers of the divisors of n.

The programs for A344480, there is no canonical definition to state claims against.
-/

/-! ## A344480.P15450673698005075203

`∑{d}[n+1, A321295(#)]`
-/

namespace A344480.P15450673698005075203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321295 d

end

end A344480.P15450673698005075203

/-! ## A344480.P16403702297449919105

`record[∑{d}[A123108(n), A321295(#)]]`
-/

namespace A344480.P16403702297449919105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A321295 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344480.P16403702297449919105

/-! ## A344480.P11241210478639488001

`record[∑{d}[A158821(n), A321295(#)]]`
-/

namespace A344480.P11241210478639488001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A321295 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344480.P11241210478639488001

/-! ## A344480.P8416697544298228945

`record[∑{d}[A193592(n), A321295(#)]]`
-/

namespace A344480.P8416697544298228945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A321295 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344480.P8416697544298228945

/-! ## A344480.P5246692288596824665

`record[∑{d}[A278045(n), A321295(#)]]`
-/

namespace A344480.P5246692288596824665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A321295 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344480.P5246692288596824665

/-!
# A344481: Isolated single primes enclosed by four composites on square spiral board of odd numbers.

The programs for A344481, there is no canonical definition to state claims against.
-/

/-! ## A344481.P15001614091064834843

`A216578(A108030(n+2))`
-/

namespace A344481.P15001614091064834843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216578 (A108030 (n + 2)).toNat

end

end A344481.P15001614091064834843

/-!
# A344482: Primes, each occurring twice, such that a(C(n)) = a(4*n-C(n)) = prime(n), where C is the Connell sequence (A001614).

The programs for A344482, there is no canonical definition to state claims against.
-/

/-! ## A344482.P4884100304441075806

`A000040(A117384(n+1))`
-/

namespace A344482.P4884100304441075806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A117384 (n + 1)).toNat

end

end A344482.P4884100304441075806

/-! ## A344482.P7003577982793591623

`A134735(or(1, A127366(n)))`
-/

namespace A344482.P7003577982793591623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (Int.lor 1 (A127366 n)).toNat

end

end A344482.P7003577982793591623

/-! ## A344482.P3616433661152430278

`A008578(A117384(n+1)+1)`
-/

namespace A344482.P3616433661152430278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A117384 (n + 1) + 1).toNat

end

end A344482.P3616433661152430278

/-! ## A344482.P8828642706829009598

`A182986(A117384(n+1)+1)`
-/

namespace A344482.P8828642706829009598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A117384 (n + 1) + 1).toNat

end

end A344482.P8828642706829009598

/-! ## A344482.P13778751561037862890

`A158611(A117384(n+1)+2)`
-/

namespace A344482.P13778751561037862890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A117384 (n + 1) + 2).toNat

end

end A344482.P13778751561037862890

/-! ## A344482.P3733645210220304863

`A000040(floor(A127366(n)/2)+1)`
-/

namespace A344482.P3733645210220304863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌊(A127366 n : ℚ) / 2⌋ + 1).toNat

end

end A344482.P3733645210220304863

/-! ## A344482.P9316254831008523065

`A000040(ceil((A127366(n)+1)/2))`
-/

namespace A344482.P9316254831008523065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(A127366 n + 1 : ℚ) / 2⌉.toNat

end

end A344482.P9316254831008523065

/-! ## A344482.P6354401368197122880

`A000040(round((A127366(n)+1)/2))`
-/

namespace A344482.P6354401368197122880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A127366 n + 1 : ℚ) / 2)).toNat

end

end A344482.P6354401368197122880

/-! ## A344482.P3874775910389396828

`A000040(round(or(1, A127366(n))/2))`
-/

namespace A344482.P3874775910389396828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((Int.lor 1 (A127366 n) : ℚ) / 2)).toNat

end

end A344482.P3874775910389396828

/-! ## A344482.P16844039284161243060

`A000040((or(1, A127366(n))+1)/2)`
-/

namespace A344482.P16844039284161243060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((Int.lor 1 (A127366 n) + 1 : ℚ) / 2)).toNat

end

end A344482.P16844039284161243060

/-!
# A344483: a(n) = n^2 + sigma(n) - n*d(n).

The programs for A344483, the canonical program `A344483.P1447167489090122924` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344483 has offset 1).

The definition of A344483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344483.P1447167489090122924

`∑{d}[n+1, #-(n+1)]+(n+1)²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344483

/-- `∑{d}[n+1, #-(n+1)]+(n+1)²` -/
def P1447167489090122924.Spec : Prop :=
  ∀ n, P1447167489090122924.a n = A344483 (n + 1)

theorem P1447167489090122924.correct : P1447167489090122924.Spec := by
  intro n
  simp only [A344483, Nat.add_sub_cancel]

end A344483

/-! ## A344483.P17209768469732764061

`∑[comp[2*n]]-∑{d}[n+1, 1-#+n]`
-/

namespace A344483.P17209768469732764061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f3 n), (1 - (d : ℤ) + (n : ℤ))

end

end A344483.P17209768469732764061

namespace A344483

/-- `∑[comp[2*n]]-∑{d}[n+1, 1-#+n]` -/
def P17209768469732764061.Spec : Prop :=
  ∀ n, P17209768469732764061.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P17916893681156809757

`∑[n+1]+∑{d}[n+1, #-(n+1)]+∑[n]`
-/

namespace A344483.P17916893681156809757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - (n + 1 : ℤ)) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ))

end

end A344483.P17916893681156809757

namespace A344483

/-- `∑[n+1]+∑{d}[n+1, #-(n+1)]+∑[n]` -/
def P17916893681156809757.Spec : Prop :=
  ∀ n, P17916893681156809757.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P15837632536841638603

`(n+1)²-A094471(n+1)`
-/

namespace A344483.P15837632536841638603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A094471 (n + 1)

end

end A344483.P15837632536841638603

namespace A344483

/-- `(n+1)²-A094471(n+1)` -/
def P15837632536841638603.Spec : Prop :=
  ∀ n, P15837632536841638603.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P13501639749536043921

`A362625(n+1)+∑[n+1]`
-/

namespace A344483.P13501639749536043921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362625 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344483.P13501639749536043921

namespace A344483

/-- `A362625(n+1)+∑[n+1]` -/
def P13501639749536043921.Spec : Prop :=
  ∀ n, P13501639749536043921.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P8880586552471466096

`A005563(n)-∑{d}[n+1, 1-#+n]+1`
-/

namespace A344483.P8880586552471466096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - ∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ)) + 1

end

end A344483.P8880586552471466096

namespace A344483

/-- `A005563(n)-∑{d}[n+1, 1-#+n]+1` -/
def P8880586552471466096.Spec : Prop :=
  ∀ n, P8880586552471466096.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P14871084822493717472

`∑{d}[n+1, (n+1)*(A000010(#)-1)+#]`
-/

namespace A344483.P14871084822493717472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) * (A000010 d - 1) + (d : ℤ))

end

end A344483.P14871084822493717472

namespace A344483

/-- `∑{d}[n+1, (n+1)*(A000010(#)-1)+#]` -/
def P14871084822493717472.Spec : Prop :=
  ∀ n, P14871084822493717472.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P1546989508476299942

`A069553(n+1)+A001065(n+1)`
-/

namespace A344483.P1546989508476299942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069553 (n + 1) + A001065 (n + 1)

end

end A344483.P1546989508476299942

namespace A344483

/-- `A069553(n+1)+A001065(n+1)` -/
def P1546989508476299942.Spec : Prop :=
  ∀ n, P1546989508476299942.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P7101439838200163002

`A258434(n+1)-A094472(n+1)`
-/

namespace A344483.P7101439838200163002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258434 (n + 1) - A094472 (n + 1)

end

end A344483.P7101439838200163002

namespace A344483

/-- `A258434(n+1)-A094472(n+1)` -/
def P7101439838200163002.Spec : Prop :=
  ∀ n, P7101439838200163002.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P15501561370344585156

`A000203(n+1)+(n+1)*A049820(n+1)`
-/

namespace A344483.P15501561370344585156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (n + 1 : ℤ) * A049820 (n + 1)

end

end A344483.P15501561370344585156

namespace A344483

/-- `A000203(n+1)+(n+1)*A049820(n+1)` -/
def P15501561370344585156.Spec : Prop :=
  ∀ n, P15501561370344585156.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P298767650901763618

`A000203(n+1)+(n+1)²-A038040(n+1)`
-/

namespace A344483.P298767650901763618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (((n + 1) ^ 2 : ℤ) - A038040 (n + 1))

end

end A344483.P298767650901763618

namespace A344483

/-- `A000203(n+1)+(n+1)²-A038040(n+1)` -/
def P298767650901763618.Spec : Prop :=
  ∀ n, P298767650901763618.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P2697024121011037198

`A000217(n+1)+A000217(n)-A094471(n+1)`
-/

namespace A344483.P2697024121011037198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A094471 (n + 1))

end

end A344483.P2697024121011037198

namespace A344483

/-- `A000217(n+1)+A000217(n)-A094471(n+1)` -/
def P2697024121011037198.Spec : Prop :=
  ∀ n, P2697024121011037198.a n = A344483 (n + 1)

end A344483

/-! ## A344483.P7646952054045136228

`A000203(n+1)+A362625(n+1)+A024816(n+1)`
-/

namespace A344483.P7646952054045136228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A362625 (n + 1) + A024816 (n + 1))

end

end A344483.P7646952054045136228

namespace A344483

/-- `A000203(n+1)+A362625(n+1)+A024816(n+1)` -/
def P7646952054045136228.Spec : Prop :=
  ∀ n, P7646952054045136228.a n = A344483 (n + 1)

end A344483

/-!
# A344484: a(n) = Sum_{d|n} d^phi(n/d).

The programs for A344484, the canonical program `A344484.P17175931869047417338` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344484 has offset 1).

The definition of A344484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344484.P17175931869047417338

`∑{d}[n+1, ((n+1)/#)^A000010(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344484

/-- `∑{d}[n+1, ((n+1)/#)^A000010(#)]` -/
def P17175931869047417338.Spec : Prop :=
  ∀ n, P17175931869047417338.a n = (A344484 (n + 1) : ℚ)

end A344484

/-!
# A344485: a(n) = Sum_{d|n} (n-d) * phi(n/d).

The programs for A344485, the canonical program `A344485.P11580457126215604994` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344485 has offset 1).

The definition of A344485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344485.P15959254883107180869

`n²-A268631(n+1)`
-/

namespace A344485.P15959254883107180869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A268631 (n + 1)

end

end A344485.P15959254883107180869

namespace A344485

/-- `n²-A268631(n+1)` -/
def P15959254883107180869.Spec : Prop :=
  ∀ n, P15959254883107180869.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P11580457126215604994

`(n+1)²-A018804(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344485

/-- `(n+1)²-A018804(n+1)` -/
def P11580457126215604994.Spec : Prop :=
  ∀ n, P11580457126215604994.a n = A344485 (n + 1)

theorem P11580457126215604994.correct : P11580457126215604994.Spec := by
  intro n
  simp only [A344485, Nat.add_sub_cancel]

end A344485

/-! ## A344485.P2186273447439016636

`A382069(n+1)-∑[n+1]`
-/

namespace A344485.P2186273447439016636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A344485.P2186273447439016636

namespace A344485

/-- `A382069(n+1)-∑[n+1]` -/
def P2186273447439016636.Spec : Prop :=
  ∀ n, P2186273447439016636.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P2130605124864564646

`∑[2*n]-A006579(n+1)`
-/

namespace A344485.P2130605124864564646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006579 (n + 1)

end

end A344485.P2130605124864564646

namespace A344485

/-- `∑[2*n]-A006579(n+1)` -/
def P2130605124864564646.Spec : Prop :=
  ∀ n, P2130605124864564646.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P5326463744795717670

`2/(n+1)*A160255(n+1)`
-/

namespace A344485.P5326463744795717670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A160255 (n + 1) : ℚ)

end

end A344485.P5326463744795717670

namespace A344485

/-- `2/(n+1)*A160255(n+1)` -/
def P5326463744795717670.Spec : Prop :=
  ∀ n, P5326463744795717670.a n = (A344485 (n + 1) : ℚ)

end A344485

/-! ## A344485.P4330442411748716777

`(n+1)²-Δ[A209981(n)/32]`
-/

namespace A344485.P4330442411748716777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (f1 (n + 1) - f1 n)

end

end A344485.P4330442411748716777

namespace A344485

/-- `(n+1)²-Δ[A209981(n)/32]` -/
def P4330442411748716777.Spec : Prop :=
  ∀ n, P4330442411748716777.a n = (A344485 (n + 1) : ℚ)

end A344485

/-! ## A344485.P15726351447137575179

`(n+1)*(n+2)-A209295(n+1)`
-/

namespace A344485.P15726351447137575179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A209295 (n + 1)

end

end A344485.P15726351447137575179

namespace A344485

/-- `(n+1)*(n+2)-A209295(n+1)` -/
def P15726351447137575179.Spec : Prop :=
  ∀ n, P15726351447137575179.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P17835831569784441502

`∑{d}[n+1, #*A062955((n+1)/#)]`
-/

namespace A344485.P17835831569784441502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A062955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344485.P17835831569784441502

namespace A344485

/-- `∑{d}[n+1, #*A062955((n+1)/#)]` -/
def P17835831569784441502.Spec : Prop :=
  ∀ n, P17835831569784441502.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P13056835117597244379

`(n+1)²-∑{d}[n+1, (n+1)/#*A000010(#)]`
-/

namespace A344485.P13056835117597244379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A000010 d : ℚ)

end

end A344485.P13056835117597244379

namespace A344485

/-- `(n+1)²-∑{d}[n+1, (n+1)/#*A000010(#)]` -/
def P13056835117597244379.Spec : Prop :=
  ∀ n, P13056835117597244379.a n = (A344485 (n + 1) : ℚ)

end A344485

/-! ## A344485.P3692471870341017776

`∑{d}[n+1, A008683(#)*A189835((n+1)/#)]`
-/

namespace A344485.P3692471870341017776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A189835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344485.P3692471870341017776

namespace A344485

/-- `∑{d}[n+1, A008683(#)*A189835((n+1)/#)]` -/
def P3692471870341017776.Spec : Prop :=
  ∀ n, P3692471870341017776.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P3224009894805360762

`A000217(n+1)+A000217(n)-A018804(n+1)`
-/

namespace A344485.P3224009894805360762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A018804 (n + 1))

end

end A344485.P3224009894805360762

namespace A344485

/-- `A000217(n+1)+A000217(n)-A018804(n+1)` -/
def P3224009894805360762.Spec : Prop :=
  ∀ n, P3224009894805360762.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P12823251999603895448

`A000217(n+1)+A000217(n+1)-A209295(n+1)`
-/

namespace A344485.P12823251999603895448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A209295 (n + 1))

end

end A344485.P12823251999603895448

namespace A344485

/-- `A000217(n+1)+A000217(n+1)-A209295(n+1)` -/
def P12823251999603895448.Spec : Prop :=
  ∀ n, P12823251999603895448.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P4963471418465578211

`A064276(n)-A272718(n+1)`
-/

namespace A344485.P4963471418465578211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064276 n - A272718 (n + 1)

end

end A344485.P4963471418465578211

namespace A344485

/-- `A064276(n)-A272718(n+1)` -/
def P4963471418465578211.Spec : Prop :=
  ∀ n, P4963471418465578211.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P13283052034099364825

`(n+1)²-A127626(∑[n+1])`
-/

namespace A344485.P13283052034099364825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A127626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344485.P13283052034099364825

namespace A344485

/-- `(n+1)²-A127626(∑[n+1])` -/
def P13283052034099364825.Spec : Prop :=
  ∀ n, P13283052034099364825.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P8863024080145384475

`(n+1)²-A127627(∑[n+1])`
-/

namespace A344485.P8863024080145384475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A127627 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344485.P8863024080145384475

namespace A344485

/-- `(n+1)²-A127627(∑[n+1])` -/
def P8863024080145384475.Spec : Prop :=
  ∀ n, P8863024080145384475.a n = A344485 (n + 1)

end A344485

/-! ## A344485.P11386190207568899308

`(n+1)²-A343516(∑[n+1])`
-/

namespace A344485.P11386190207568899308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A343516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344485.P11386190207568899308

namespace A344485

/-- `(n+1)²-A343516(∑[n+1])` -/
def P11386190207568899308.Spec : Prop :=
  ∀ n, P11386190207568899308.a n = A344485 (n + 1)

end A344485

/-!
# A344486: a(n) is the least k such that the sum of digits of k is a substring of n and the sum of digits of n is a substring of k.

The programs for A344486, there is no canonical definition to state claims against.
-/

/-! ## A344486.P258424976164535271

`A051885(n)%A156253(A276086(3*n+1))`
-/

namespace A344486.P258424976164535271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051885 n) (A156253 (A276086 (3 * n + 1)).toNat)

end

end A344486.P258424976164535271

/-! ## A344486.P5637161825389826098

`gcd(A051885(n), A326459(A167265(3*n+1)))`
-/

namespace A344486.P5637161825389826098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051885 n) (A326459 (A167265 (3 * n + 1)).toNat)

end

end A344486.P5637161825389826098

/-! ## A344486.P12131503427725474051

`gcd(A051885(n), A227189(A212147(n+1)))`
-/

namespace A344486.P12131503427725474051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051885 n) (A227189 (A212147 (n + 1)).toNat)

end

end A344486.P12131503427725474051

/-! ## A344486.P11656026397796595320

`A051885(n)%A003963(A007629(n+1))`
-/

namespace A344486.P11656026397796595320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051885 n) (A003963 (A007629 (n + 1)).toNat)

end

end A344486.P11656026397796595320

/-! ## A344486.P13396376641706904860

`gcd((n%9+1)*10^floor(n/9)-1, A100910(A154558(3*n+4)))`
-/

namespace A344486.P13396376641706904860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n % 9 + 1 : ℕ) : ℚ) * (10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ) - 1)) (A100910 (A154558 (3 * n + 4)).toNat)

end

end A344486.P13396376641706904860

/-!
# A344488: Numbers that start a product crescendo of record length.

The programs for A344488, there is no canonical definition to state claims against.
-/

/-! ## A344488.P10932956717703772828

`A130922(A087208(n))+A027193(A027193(n))`
-/

namespace A344488.P10932956717703772828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A087208 n).toNat + A027193 (A027193 n).toNat

end

end A344488.P10932956717703772828

/-! ## A344488.P11515353065669756697

`A002487(floor(7*n/2)^round(2*n/3))`
-/

namespace A344488.P11515353065669756697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((⌊7 * ((n : ℚ) / 2)⌋ : ℚ) ^ (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) : ℤ))).toNat

end

end A344488.P11515353065669756697

/-!
# A344489: a(n) = 1 + Sum_{k=0..n-2} binomial(n-1,k) * a(k).

The programs for A344489, there is no canonical definition to state claims against.
-/

/-! ## A344489.P18321548124941589866

`3*A106436(∑[n]+1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A344489.P18321548124941589866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * A106436 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A344489.P18321548124941589866

/-! ## A344489.P11006769288122458736

`A346771(n)+A000296(round(sqrt(n²+1)))`
-/

namespace A344489.P11006769288122458736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346771 n + A000296 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A344489.P11006769288122458736

/-! ## A344489.P14355543705290171413

`A346771(n)+A000296(n)%A000110(n)`
-/

namespace A344489.P14355543705290171413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346771 n + Int.tmod (A000296 n) (A000110 n)

end

end A344489.P14355543705290171413

/-! ## A344489.P13946663933536246441

`A000296(n)+A346771(n)%A186021(n)`
-/

namespace A344489.P13946663933536246441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n + Int.tmod (A346771 n) (A186021 n)

end

end A344489.P13946663933536246441

/-!
# A344490: a(n) = 1 + Sum_{k=0..n-3} binomial(n-2,k) * a(k).

The programs for A344490, there is no canonical definition to state claims against.
-/

/-! ## A344490.P13900177624888597898

`A249728(∏[∑[A008612(n)]])`
-/

namespace A344490.P13900177624888597898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344490.P13900177624888597898

/-! ## A344490.P10976998525186354781

`A249728(∏[∑[A025828(n)]])`
-/

namespace A344490.P10976998525186354781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344490.P10976998525186354781

/-! ## A344490.P11328605447237009527

`A026834(A222379(n)+A125094(n))`
-/

namespace A344490.P11328605447237009527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A222379 n + A125094 n).toNat

end

end A344490.P11328605447237009527

/-! ## A344490.P10888395543252718754

`A305197(n)+A085975(A000244(n))`
-/

namespace A344490.P10888395543252718754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305197 n + A085975 (A000244 n).toNat

end

end A344490.P10888395543252718754

/-! ## A344490.P6449839084053551612

`A024417(A215062(n)+A192680(n))`
-/

namespace A344490.P6449839084053551612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A215062 n + A192680 n).toNat

end

end A344490.P6449839084053551612

/-!
# A344491: a(n) = 1 + Sum_{k=0..n-4} binomial(n-3,k) * a(k).

The programs for A344491, there is no canonical definition to state claims against.
-/

/-! ## A344491.P8650207491345077296

`A325394(A023432(n))`
-/

namespace A344491.P8650207491345077296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325394 (A023432 n).toNat

end

end A344491.P8650207491345077296

/-! ## A344491.P14292980161823869708

`A307824(A157134(n))`
-/

namespace A344491.P14292980161823869708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (A157134 n).toNat

end

end A344491.P14292980161823869708

/-! ## A344491.P12502602434734632161

`A347454(A360890(n))`
-/

namespace A344491.P12502602434734632161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (A360890 n).toNat

end

end A344491.P12502602434734632161

/-! ## A344491.P7409756061032074557

`A307824(A357932(n+1))`
-/

namespace A344491.P7409756061032074557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (A357932 (n + 1)).toNat

end

end A344491.P7409756061032074557

/-! ## A344491.P2765395949172012292

`A081524(A006981(n))`
-/

namespace A344491.P2765395949172012292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081524 (A006981 n).toNat

end

end A344491.P2765395949172012292

/-!
# A344492: a(n) = 1 + Sum_{k=0..n-5} binomial(n-4,k) * a(k).

The programs for A344492, there is no canonical definition to state claims against.
-/

/-! ## A344492.P15016610755523645624

`ceil(A305595(n+1)/35)`
-/

namespace A344492.P15016610755523645624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305595 (n + 1) : ℚ) / 35⌉

end

end A344492.P15016610755523645624

/-! ## A344492.P6620680959266142852

`A274933(A000602(n))`
-/

namespace A344492.P6620680959266142852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A000602 n).toNat

end

end A344492.P6620680959266142852

/-! ## A344492.P11376284580206097585

`A232753(∏[A018048(n)])`
-/

namespace A344492.P11376284580206097585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344492.P11376284580206097585

/-! ## A344492.P13359078159328772806

`A102514(A336010(n+1))`
-/

namespace A344492.P13359078159328772806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102514 (A336010 (n + 1)).toNat

end

end A344492.P13359078159328772806

/-! ## A344492.P9750624606720231944

`A102514(A308032(n+2))`
-/

namespace A344492.P9750624606720231944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102514 (A308032 (n + 2)).toNat

end

end A344492.P9750624606720231944

/-!
# A344493: a(n) = 1 + Sum_{k=0..n-6} binomial(n-5,k) * a(k).

The programs for A344493, there is no canonical definition to state claims against.
-/

/-! ## A344493.P168533767781612997

`A186734(A023427(n))+A023422(n)`
-/

namespace A344493.P168533767781612997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186734 (A023427 n).toNat + A023422 n

end

end A344493.P168533767781612997

/-! ## A344493.P5721962011546970735

`A241462(A324749(n))+A023422(n)`
-/

namespace A344493.P5721962011546970735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241462 (A324749 n).toNat + A023422 n

end

end A344493.P5721962011546970735

/-! ## A344493.P16645252002314218648

`A034336(A034368(n+1))+A023422(n)`
-/

namespace A344493.P16645252002314218648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034336 (A034368 (n + 1)).toNat + A023422 n

end

end A344493.P16645252002314218648

/-! ## A344493.P13762052150026833112

`A241462(A263293(n+1))+A023422(n)`
-/

namespace A344493.P13762052150026833112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241462 (A263293 (n + 1)).toNat + A023422 n

end

end A344493.P13762052150026833112

/-! ## A344493.P5794546933098808388

`A241462(A324749(n))+A210543(n+1)`
-/

namespace A344493.P5794546933098808388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241462 (A324749 n).toNat + A210543 (n + 1)

end

end A344493.P5794546933098808388

/-!
# A344495: a(0)=1; for n>0 a(n)=(a(n-1) + n) * n if n is odd, a(n-1)*n + n otherwise.

The programs for A344495, there is no canonical definition to state claims against.
-/

/-! ## A344495.P6108201883198156619

`n*(a(n-1)+n^(n%2))` with `a(0)=1`
-/

namespace A344495.P6108201883198156619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) + n ^ (n % 2))

end

end A344495.P6108201883198156619

/-! ## A344495.P534570865361705646

`(a(n-1)+n^and(1, n))*n` with `a(0)=1`
-/

namespace A344495.P534570865361705646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n ^ Nat.land 1 n) * n

end

end A344495.P534570865361705646

/-! ## A344495.P1972234521989641258

`n^gcd(2, n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A344495.P1972234521989641258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ Nat.gcd 2 (n + 1) + n * a (n - 1)

end

end A344495.P1972234521989641258

/-! ## A344495.P9721877408867357736

`n*(a(n-1)+gcd(n, (n+1)%2))` with `a(0)=1`
-/

namespace A344495.P9721877408867357736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) + Nat.gcd n ((n + 1) % 2))

end

end A344495.P9721877408867357736

/-!
# A344496: a(0)=0; for n > 0, a(n) = a(n-1)*n + n if n is odd, (a(n-1) + n)*n otherwise.

The programs for A344496, there is no canonical definition to state claims against.
-/

/-! ## A344496.P1830344216978957390

`n^gcd(2, n)+n*a(n-1)` with `a(0)=0`
-/

namespace A344496.P1830344216978957390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ Nat.gcd 2 n + n * a (n - 1)

end

end A344496.P1830344216978957390

/-! ## A344496.P14021908933998852471

`n*(a(n-1)+n^((n+1)%2))` with `a(0)=0`
-/

namespace A344496.P14021908933998852471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + n ^ ((n + 1) % 2))

end

end A344496.P14021908933998852471

/-! ## A344496.P4849000513403942853

`A065679(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A344496.P4849000513403942853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A065679 n + (n : ℤ) * a (n - 1)

end

end A344496.P4849000513403942853

/-! ## A344496.P7164589257705064832

`A028310(n^Δ[A007494(n)])+n*a(n-1)` with `a(0)=0`
-/

namespace A344496.P7164589257705064832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat + (n : ℤ) * a (n - 1)

end

end A344496.P7164589257705064832

/-!
# A344497: Matching number of the divisor graph of {1,...,n}.

The programs for A344497, there is no canonical definition to state claims against.
-/

/-! ## A344497.P1159763523640795690

`∑[∏{d}[A048993(A316656(n+1)), #-1]]`
-/

namespace A344497.P1159763523640795690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A316656 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344497.P1159763523640795690

/-! ## A344497.P6673597812803440242

`A034463(∑[A004525(A171435(n+1))])`
-/

namespace A344497.P6673597812803440242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A171435 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344497.P6673597812803440242

/-! ## A344497.P8898056768107204234

`∑[A000007(A048993(A316656(n+1)))]`
-/

namespace A344497.P8898056768107204234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048993 (A316656 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344497.P8898056768107204234

/-! ## A344497.P14068434827835790967

`∑[A185037(n)^A048993(A316656(n+1))]`
-/

namespace A344497.P14068434827835790967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185037 n : ℚ) ^ (A048993 (A316656 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344497.P14068434827835790967

/-!
# A344498: a(n) = |Stirling1(n, floor(n/2))| * floor(n/2)!.

The programs for A344498, there is no canonical definition to state claims against.
-/

/-! ## A344498.P5671089572965444781

`A225479(∑[n]+floor(n/2))`
-/

namespace A344498.P5671089572965444781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A344498.P5671089572965444781

/-!
# A344499: T(n, k) = F(n - k, k), where F(n, x) is the Fubini polynomial. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A344499, there is no canonical definition to state claims against.
-/

/-! ## A344499.P15926856000584908946

`A114219(n)*A257565(n)`
-/

namespace A344499.P15926856000584908946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A257565 n

end

end A344499.P15926856000584908946

/-! ## A344499.P10885089516442300645

`lcm(A114219(n), A257565(A028310(n)))`
-/

namespace A344499.P10885089516442300645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114219 n) (A257565 (A028310 n).toNat)

end

end A344499.P10885089516442300645

/-! ## A344499.P775266679490176122

`lcm(A023443(A002262(n+1)), A257565(n))`
-/

namespace A344499.P775266679490176122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023443 (A002262 (n + 1)).toNat) (A257565 n)

end

end A344499.P775266679490176122

/-! ## A344499.P15473415513623673839

`gcd(A002262(n), A004248(n))*A257565(n)`
-/

namespace A344499.P15473415513623673839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002262 n) (A004248 n) : ℤ) * A257565 n

end

end A344499.P15473415513623673839

/-! ## A344499.P16432270376291294855

`or(A001222(A347811(n)), A253286(n))`
-/

namespace A344499.P16432270376291294855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A347811 n).toNat) (A253286 n)

end

end A344499.P16432270376291294855

