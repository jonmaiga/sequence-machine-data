import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C014
import Seq.B001.C015
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A400507: Square array A(n,k) = k*(k+2)^(n-1), n >= 1, k >= 1, read by antidiagonals.

The programs for A400507, the canonical program `A400507.P8321498115917005294` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400507 has offset 1).

The definition of A400507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)` (program `A400507.P8321498115917005294`, by `A400507.P8321498115917005294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400507.P8321498115917005294

`(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400507

/-- `(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)` -/
def P8321498115917005294.Spec : Prop :=
  ∀ n, P8321498115917005294.a n = A400507 (n + 1)

theorem P8321498115917005294.correct : P8321498115917005294.Spec := by
  intro n
  simp only [A400507, Nat.add_sub_cancel]

end A400507

/-!
# A400509: a(n) is the number of distinct integer-sided triangles that can be placed with their vertices on three different sides of a square of side n.

The programs for A400509, there is no canonical definition to state claims against.
-/

/-! ## A400509.P2119391500201024561

`A371170(A165189(n+1))`
-/

namespace A400509.P2119391500201024561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (A165189 (n + 1)).toNat

end

end A400509.P2119391500201024561

/-!
# A400512: Expansion of g.f. x*(1-x)/((1-4*x)*(1-5*x-5*x^2)).

The programs for A400512, the canonical program `A400512.P8796722601478653191` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400512 has offset 0).

The definition of A400512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-9x+15x^2+20x^3))` (program `A400512.P8796722601478653191`, by `A400512.P8796722601478653191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400512.P8796722601478653191

`ogf((x-x^2)/(1-9x+15x^2+20x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400512

/-- `ogf((x-x^2)/(1-9x+15x^2+20x^3))` -/
def P8796722601478653191.Spec : Prop :=
  ∀ n, P8796722601478653191.a n = A400512 n

theorem P8796722601478653191.correct : P8796722601478653191.Spec := by
  intro n
  simp only [A400512]

end A400512

/-! ## A400512.P4287677190647225735

`9*a(n-1)-15*a(n-2)-20*a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A400512.P4287677190647225735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  9 * a (n - 1) - 15 * a (n - 2) - 20 * a (n - 3)

end

end A400512.P4287677190647225735

namespace A400512

/-- `9*a(n-1)-15*a(n-2)-20*a(n-3)` -/
def P4287677190647225735.Spec : Prop :=
  ∀ n, P4287677190647225735.a n = A400512 n

end A400512

/-! ## A400512.P13672715214094814680

`∑{#}[n, C(n, #)*A397105(#)]`
-/

namespace A400512.P13672715214094814680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A397105 k

end

end A400512.P13672715214094814680

namespace A400512

/-- `∑{#}[n, C(n, #)*A397105(#)]` -/
def P13672715214094814680.Spec : Prop :=
  ∀ n, P13672715214094814680.a n = A400512 n

end A400512

/-!
# A400515: a(n) = (16^n + 3*4^n - 4*7^n)/12.

The programs for A400515, the canonical program `A400515.P13484862725235951499` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400515 has offset 0).

The definition of A400515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^n+3*4^n-4*7^n)/12` (program `A400515.P7561032127694278361`, by `A400515.P7561032127694278361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400515.P7561032127694278361

`(16^n+3*4^n-4*7^n)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400515.P7561032127694278361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ n + 3 * 4 ^ n : ℤ) - (4 * 7 ^ n : ℤ) : ℚ) / 12

end

end A400515.P7561032127694278361

namespace A400515

/-- `(16^n+3*4^n-4*7^n)/12` -/
def P7561032127694278361.Spec : Prop :=
  ∀ n, P7561032127694278361.a n = (A400515 n : ℚ)

theorem P7561032127694278361.correct : P7561032127694278361.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A400515, Nat.add_sub_cancel, A400515.P7561032127694278361.a, A400515.P13484862725235951499.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A400515, Nat.add_sub_cancel, A400515.P7561032127694278361.a, A400515.P13484862725235951499.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A400515

/-! ## A400515.P13484862725235951499

`27*a(n-1)-204*a(n-2)+448*a(n-3)` with `a(0)=0, a(1)=0, a(2)=9`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400515

/-- `27*a(n-1)-204*a(n-2)+448*a(n-3)` -/
def P13484862725235951499.Spec : Prop :=
  ∀ n, P13484862725235951499.a n = A400515 n

theorem P13484862725235951499.correct : P13484862725235951499.Spec := by
  intro n
  simp only [A400515]

end A400515

/-!
# A400516: Parking Schröder numbers.

The programs for A400516, there is no canonical definition to state claims against.
-/

/-! ## A400516.P7394889874780131885

`A376958(A206226(n))`
-/

namespace A400516.P7394889874780131885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A206226 n).toNat

end

end A400516.P7394889874780131885

/-! ## A400516.P15184278331487337116

`A365654(n+1)-A001899(A001296(3*n))`
-/

namespace A400516.P15184278331487337116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365654 (n + 1) - A001899 (A001296 (3 * n)).toNat

end

end A400516.P15184278331487337116

/-!
# A400517: a(1) = 1; for n > 1, a(n) is the least integer > a(n-1) such that the binary expansion of a(n-1)^2 is a subsequence of the binary expansion of a(n)^2.

The programs for A400517, there is no canonical definition to state claims against.
-/

/-! ## A400517.P12393153111181872677

`∑[∑[∑{p}[66*a(n-2), #%2]]]` with `a(0)=5, a(1)=1, a(2)=-4, a(3)=6, a(4)=-4, a(5)=1`
-/

namespace A400517.P12393153111181872677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, -4, 6, -4, 1] fun n f3 =>
  66 * f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, p % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400517.P12393153111181872677

/-! ## A400517.P17463994205116660431

`A360010(A028859(n))`
-/

namespace A400517.P17463994205116660431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A028859 n).toNat

end

end A400517.P17463994205116660431

/-! ## A400517.P6238816717336925458

`A395087(A369386(n))`
-/

namespace A400517.P6238816717336925458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395087 (A369386 n).toNat

end

end A400517.P6238816717336925458

/-! ## A400517.P3664715912317780944

`A119605(A046935(n+1))`
-/

namespace A400517.P3664715912317780944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A046935 (n + 1)).toNat

end

end A400517.P3664715912317780944

/-! ## A400517.P4199965152808101362

`A119605(A241334(n+1))`
-/

namespace A400517.P4199965152808101362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A241334 (n + 1)).toNat

end

end A400517.P4199965152808101362

/-!
# A400519: Number of equivalence classes of n X n binary matrices under cyclic permutations of rows and columns and complementation of all entries.

The programs for A400519, there is no canonical definition to state claims against.
-/

/-! ## A400519.P7311080340393363319

`A376747(n+1)+1`
-/

namespace A400519.P7311080340393363319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376747 (n + 1) + 1

end

end A400519.P7311080340393363319

/-! ## A400519.P12557576044817737392

`A294791(∑[1+n])+1`
-/

namespace A400519.P12557576044817737392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294791 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A400519.P12557576044817737392

/-! ## A400519.P7084538678635188768

`record[A010054(n+1)*A294791(n+1)]+1`
-/

namespace A400519.P7084538678635188768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A294791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A400519.P7084538678635188768

/-!
# A400521: The exponent of the highest power of 2 dividing the n-th exponentially squarefree number (A209061).

The programs for A400521, the canonical program `A400521.P1868779038590815743` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400521 has offset 1).

The definition of A400521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400521.P1868779038590815743

`A007814(A209061(n+1))`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400521

/-- `A007814(A209061(n+1))` -/
def P1868779038590815743.Spec : Prop :=
  ∀ n, P1868779038590815743.a n = A400521 (n + 1)

theorem P1868779038590815743.correct : P1868779038590815743.Spec := by
  intro n
  simp only [A400521, Nat.add_sub_cancel]

end A400521

/-! ## A400521.P11933982355214656706

`val(A209061(1+n), 2)`
-/

namespace A400521.P11933982355214656706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A209061 (1 + n)).toNat 2

end

end A400521.P11933982355214656706

namespace A400521

/-- `val(A209061(1+n), 2)` -/
def P11933982355214656706.Spec : Prop :=
  ∀ n, (P11933982355214656706.a n : ℤ) = A400521 (n + 1)

end A400521

/-! ## A400521.P5842215880609515001

`val(record[A365683(1+n)], 2)`
-/

namespace A400521.P5842215880609515001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365683 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400521.P5842215880609515001

namespace A400521

/-- `val(record[A365683(1+n)], 2)` -/
def P5842215880609515001.Spec : Prop :=
  ∀ n, (P5842215880609515001.a n : ℤ) = A400521 (n + 1)

end A400521

/-! ## A400521.P13389861200366650438

`val(record[A383761(n+1)], 2)`
-/

namespace A400521.P13389861200366650438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400521.P13389861200366650438

namespace A400521

/-- `val(record[A383761(n+1)], 2)` -/
def P13389861200366650438.Spec : Prop :=
  ∀ n, (P13389861200366650438.a n : ℤ) = A400521 (n + 1)

end A400521

/-! ## A400521.P14245341872548793646

`A007814(record[A365683(1+n)])`
-/

namespace A400521.P14245341872548793646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365683 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400521.P14245341872548793646

namespace A400521

/-- `A007814(record[A365683(1+n)])` -/
def P14245341872548793646.Spec : Prop :=
  ∀ n, P14245341872548793646.a n = A400521 (n + 1)

end A400521

/-! ## A400521.P4113164631747842102

`A007814(record[A383761(n+1)])`
-/

namespace A400521.P4113164631747842102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400521.P4113164631747842102

namespace A400521

/-- `A007814(record[A383761(n+1)])` -/
def P4113164631747842102.Spec : Prop :=
  ∀ n, P4113164631747842102.a n = A400521 (n + 1)

end A400521

/-! ## A400521.P3181411451193793434

`A007814(record[A383764(n+1)])`
-/

namespace A400521.P3181411451193793434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400521.P3181411451193793434

namespace A400521

/-- `A007814(record[A383764(n+1)])` -/
def P3181411451193793434.Spec : Prop :=
  ∀ n, P3181411451193793434.a n = A400521 (n + 1)

end A400521

/-! ## A400521.P15833798480594867084

`A001222(gcd(A000079(n), A209061(n+1)))`
-/

namespace A400521.P15833798480594867084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A209061 (n + 1)))

end

end A400521.P15833798480594867084

namespace A400521

/-- `A001222(gcd(A000079(n), A209061(n+1)))` -/
def P15833798480594867084.Spec : Prop :=
  ∀ n, P15833798480594867084.a n = A400521 (n + 1)

end A400521

/-! ## A400521.P12567200155262948216

`filter[A007814(n+1), A267553(A000142(#))]`
-/

namespace A400521.P12567200155262948216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267553 (A000142 (f1 j).toNat).toNat = 1) n)

end

end A400521.P12567200155262948216

namespace A400521

/-- `filter[A007814(n+1), A267553(A000142(#))]` -/
def P12567200155262948216.Spec : Prop :=
  ∀ n, P12567200155262948216.a n = A400521 (n + 1)

end A400521

/-!
# A400522: The exponent of the highest power of 2 dividing the n-th number whose number of divisors is a power of 2 (A036537).

The programs for A400522, the canonical program `A400522.P3523999780646105483` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400522 has offset 1).

The definition of A400522 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400522.P3523999780646105483

`A007814(A036537(n+1))`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400522

/-- `A007814(A036537(n+1))` -/
def P3523999780646105483.Spec : Prop :=
  ∀ n, P3523999780646105483.a n = A400522 (n + 1)

theorem P3523999780646105483.correct : P3523999780646105483.Spec := by
  intro n
  simp only [A400522, Nat.add_sub_cancel]

end A400522

/-! ## A400522.P13698054974806337110

`val(A036537(n+1), 2)`
-/

namespace A400522.P13698054974806337110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036537 (n + 1)).toNat 2

end

end A400522.P13698054974806337110

namespace A400522

/-- `val(A036537(n+1), 2)` -/
def P13698054974806337110.Spec : Prop :=
  ∀ n, (P13698054974806337110.a n : ℤ) = A400522 (n + 1)

end A400522

/-! ## A400522.P7356684091362059594

`val(eq[1, A359473(n+1)]+1, 2)`
-/

namespace A400522.P7356684091362059594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A400522.P7356684091362059594

namespace A400522

/-- `val(eq[1, A359473(n+1)]+1, 2)` -/
def P7356684091362059594.Spec : Prop :=
  ∀ n, (P7356684091362059594.a n : ℤ) = A400522 (n + 1)

end A400522

/-! ## A400522.P14737029956748645661

`val(filter[A337050(n+1), A359473(#)], 2)`
-/

namespace A400522.P14737029956748645661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)).toNat 2

end

end A400522.P14737029956748645661

namespace A400522

/-- `val(filter[A337050(n+1), A359473(#)], 2)` -/
def P14737029956748645661.Spec : Prop :=
  ∀ n, (P14737029956748645661.a n : ℤ) = A400522 (n + 1)

end A400522

/-! ## A400522.P12461566961833971440

`val(filter[A164514(n+1), A359473(#)], 2)`
-/

namespace A400522.P12461566961833971440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)).toNat 2

end

end A400522.P12461566961833971440

namespace A400522

/-- `val(filter[A164514(n+1), A359473(#)], 2)` -/
def P12461566961833971440.Spec : Prop :=
  ∀ n, (P12461566961833971440.a n : ℤ) = A400522 (n + 1)

end A400522

/-! ## A400522.P545742169193449906

`val(record[A390863(n+1)], 2)`
-/

namespace A400522.P545742169193449906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400522.P545742169193449906

namespace A400522

/-- `val(record[A390863(n+1)], 2)` -/
def P545742169193449906.Spec : Prop :=
  ∀ n, (P545742169193449906.a n : ℤ) = A400522 (n + 1)

end A400522

/-! ## A400522.P3324199851371997295

`val(eq[1, A193349(n+1)]+1, 2)`
-/

namespace A400522.P3324199851371997295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A400522.P3324199851371997295

namespace A400522

/-- `val(eq[1, A193349(n+1)]+1, 2)` -/
def P3324199851371997295.Spec : Prop :=
  ∀ n, (P3324199851371997295.a n : ℤ) = A400522 (n + 1)

end A400522

/-! ## A400522.P14056550923980693621

`val(record[(n+1)/A372328(n+1)], 2)`
-/

namespace A400522.P14056550923980693621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A372328 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat 2

end

end A400522.P14056550923980693621

namespace A400522

/-- `val(record[(n+1)/A372328(n+1)], 2)` -/
def P14056550923980693621.Spec : Prop :=
  ∀ n, (P14056550923980693621.a n : ℤ) = A400522 (n + 1)

end A400522

/-! ## A400522.P3731775045231141676

`A007814(record[A372379(n+1)])`
-/

namespace A400522.P3731775045231141676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400522.P3731775045231141676

namespace A400522

/-- `A007814(record[A372379(n+1)])` -/
def P3731775045231141676.Spec : Prop :=
  ∀ n, P3731775045231141676.a n = A400522 (n + 1)

end A400522

/-! ## A400522.P4059623717575419315

`A007814(record[A401425(n+1)])`
-/

namespace A400522.P4059623717575419315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400522.P4059623717575419315

namespace A400522

/-- `A007814(record[A401425(n+1)])` -/
def P4059623717575419315.Spec : Prop :=
  ∀ n, P4059623717575419315.a n = A400522 (n + 1)

end A400522

/-! ## A400522.P15941447897346621996

`A372503(2*A036537(n+1))`
-/

namespace A400522.P15941447897346621996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372503 (2 * A036537 (n + 1)).toNat

end

end A400522.P15941447897346621996

namespace A400522

/-- `A372503(2*A036537(n+1))` -/
def P15941447897346621996.Spec : Prop :=
  ∀ n, P15941447897346621996.a n = A400522 (n + 1)

end A400522

/-! ## A400522.P14275905429851569548

`A372503(A036537(n+1)+A036537(n+1))`
-/

namespace A400522.P14275905429851569548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372503 (A036537 (n + 1) + A036537 (n + 1)).toNat

end

end A400522.P14275905429851569548

namespace A400522

/-- `A372503(A036537(n+1)+A036537(n+1))` -/
def P14275905429851569548.Spec : Prop :=
  ∀ n, P14275905429851569548.a n = A400522 (n + 1)

end A400522

/-! ## A400522.P11572423375022194937

`A029837(gcd(A000079(n), A036537(n+1)))`
-/

namespace A400522.P11572423375022194937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (Int.gcd (A000079 n) (A036537 (n + 1)))

end

end A400522.P11572423375022194937

namespace A400522

/-- `A029837(gcd(A000079(n), A036537(n+1)))` -/
def P11572423375022194937.Spec : Prop :=
  ∀ n, P11572423375022194937.a n = A400522 (n + 1)

end A400522

/-!
# A400523: The exponent of the highest power of 2 dividing the n-th number whose prime factorization exponents are squares (A197680).

The programs for A400523, the canonical program `A400523.P6739092181508487678` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400523 has offset 1).

The definition of A400523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400523.P6739092181508487678

`A007814(A197680(n+1))`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400523

/-- `A007814(A197680(n+1))` -/
def P6739092181508487678.Spec : Prop :=
  ∀ n, P6739092181508487678.a n = A400523 (n + 1)

theorem P6739092181508487678.correct : P6739092181508487678.Spec := by
  intro n
  simp only [A400523, Nat.add_sub_cancel]

end A400523

/-! ## A400523.P3357053498832167616

`val(A197680(1+n), 2)`
-/

namespace A400523.P3357053498832167616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A197680 (1 + n)).toNat 2

end

end A400523.P3357053498832167616

namespace A400523

/-- `val(A197680(1+n), 2)` -/
def P3357053498832167616.Spec : Prop :=
  ∀ n, (P3357053498832167616.a n : ℤ) = A400523 (n + 1)

end A400523

/-! ## A400523.P13791426802824732229

`val(record[A386469(1+n)], 2)`
-/

namespace A400523.P13791426802824732229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400523.P13791426802824732229

namespace A400523

/-- `val(record[A386469(1+n)], 2)` -/
def P13791426802824732229.Spec : Prop :=
  ∀ n, (P13791426802824732229.a n : ℤ) = A400523 (n + 1)

end A400523

/-! ## A400523.P17696725234359232980

`val(eq[1, A049419(n+1)%2]+1, 2)`
-/

namespace A400523.P17696725234359232980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049419 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A400523.P17696725234359232980

namespace A400523

/-- `val(eq[1, A049419(n+1)%2]+1, 2)` -/
def P17696725234359232980.Spec : Prop :=
  ∀ n, (P17696725234359232980.a n : ℤ) = A400523 (n + 1)

end A400523

/-! ## A400523.P18107257644997045618

`A043044(n+1)%A001511(A197680(n+1))`
-/

namespace A400523.P18107257644997045618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043044 (n + 1)) (A001511 (A197680 (n + 1)).toNat)

end

end A400523.P18107257644997045618

namespace A400523

/-- `A043044(n+1)%A001511(A197680(n+1))` -/
def P18107257644997045618.Spec : Prop :=
  ∀ n, P18107257644997045618.a n = A400523 (n + 1)

end A400523

/-! ## A400523.P15763770949449276943

`A007814(∩[A361177(n+1), A369937(n+1)])`
-/

namespace A400523.P15763770949449276943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369937 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A400523.P15763770949449276943

namespace A400523

/-- `A007814(∩[A361177(n+1), A369937(n+1)])` -/
def P15763770949449276943.Spec : Prop :=
  ∀ n, P15763770949449276943.a n = A400523 (n + 1)

end A400523

/-! ## A400523.P5290034184520182188

`A001511(A197680(n+1))-A001511(2*n+1)`
-/

namespace A400523.P5290034184520182188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A197680 (n + 1)).toNat - A001511 (2 * n + 1)

end

end A400523.P5290034184520182188

namespace A400523

/-- `A001511(A197680(n+1))-A001511(2*n+1)` -/
def P5290034184520182188.Spec : Prop :=
  ∀ n, P5290034184520182188.a n = A400523 (n + 1)

end A400523

/-! ## A400523.P9133420994675989432

`val(A361177(n+1), A020639(A059100(2*(n+2))))`
-/

namespace A400523.P9133420994675989432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A361177 (n + 1)).toNat (A020639 (A059100 (2 * (n + 2))).toNat).toNat

end

end A400523.P9133420994675989432

namespace A400523

/-- `val(A361177(n+1), A020639(A059100(2*(n+2))))` -/
def P9133420994675989432.Spec : Prop :=
  ∀ n, (P9133420994675989432.a n : ℤ) = A400523 (n + 1)

end A400523

/-! ## A400523.P12456395000191826772

`A007814(A283977(3*n+1)*A361177(n+1))`
-/

namespace A400523.P12456395000191826772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A283977 (3 * n + 1) * A361177 (n + 1)).toNat

end

end A400523.P12456395000191826772

namespace A400523

/-- `A007814(A283977(3*n+1)*A361177(n+1))` -/
def P12456395000191826772.Spec : Prop :=
  ∀ n, P12456395000191826772.a n = A400523 (n + 1)

end A400523

/-! ## A400523.P5789842684950659802

`val(A366762(n+1)%A252753(A366762(n+1)²), 2)`
-/

namespace A400523.P5789842684950659802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A366762 (n + 1)) (A252753 (A366762 (n + 1) ^ 2).toNat)).toNat 2

end

end A400523.P5789842684950659802

namespace A400523

/-- `val(A366762(n+1)%A252753(A366762(n+1)²), 2)` -/
def P5789842684950659802.Spec : Prop :=
  ∀ n, (P5789842684950659802.a n : ℤ) = A400523 (n + 1)

end A400523

/-!
# A400524: The exponent of the highest power of 2 dividing the number following the n-th squarefree number.

The programs for A400524, the canonical program `A400524.P13401482131933218640` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400524 has offset 1).

The definition of A400524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400524.P13401482131933218640

`A007814(A005117(n+1)+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400524

/-- `A007814(A005117(n+1)+1)` -/
def P13401482131933218640.Spec : Prop :=
  ∀ n, P13401482131933218640.a n = A400524 (n + 1)

theorem P13401482131933218640.correct : P13401482131933218640.Spec := by
  intro n
  simp only [A400524, Nat.add_sub_cancel]

end A400524

/-! ## A400524.P11154993687535505723

`val(1+comp[A105570(n)], 2)`
-/

namespace A400524.P11154993687535505723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2

end

end A400524.P11154993687535505723

namespace A400524

/-- `val(1+comp[A105570(n)], 2)` -/
def P11154993687535505723.Spec : Prop :=
  ∀ n, (P11154993687535505723.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P14597094516130480797

`val(1+A005117(1+n), 2)`
-/

namespace A400524.P14597094516130480797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + A005117 (1 + n)).toNat 2

end

end A400524.P14597094516130480797

namespace A400524

/-- `val(1+A005117(1+n), 2)` -/
def P14597094516130480797.Spec : Prop :=
  ∀ n, (P14597094516130480797.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P17165563555254073410

`val(A062838(n+1)+1, 2)`
-/

namespace A400524.P17165563555254073410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062838 (n + 1) + 1).toNat 2

end

end A400524.P17165563555254073410

namespace A400524

/-- `val(A062838(n+1)+1, 2)` -/
def P17165563555254073410.Spec : Prop :=
  ∀ n, (P17165563555254073410.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P15010649266815445164

`val(record[A007913(n+1)]+1, 2)`
-/

namespace A400524.P15010649266815445164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat 2

end

end A400524.P15010649266815445164

namespace A400524

/-- `val(record[A007913(n+1)]+1, 2)` -/
def P15010649266815445164.Spec : Prop :=
  ∀ n, (P15010649266815445164.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P11532568469302109854

`val(1+record[A007947(1+n)], 2)`
-/

namespace A400524.P11532568469302109854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400524.P11532568469302109854

namespace A400524

/-- `val(1+record[A007947(1+n)], 2)` -/
def P11532568469302109854.Spec : Prop :=
  ∀ n, (P11532568469302109854.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P1955621181033016756

`A085058(A005117(n+1))-A085058(2*n)`
-/

namespace A400524.P1955621181033016756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A005117 (n + 1)).toNat - A085058 (2 * n)

end

end A400524.P1955621181033016756

namespace A400524

/-- `A085058(A005117(n+1))-A085058(2*n)` -/
def P1955621181033016756.Spec : Prop :=
  ∀ n, P1955621181033016756.a n = A400524 (n + 1)

end A400524

/-! ## A400524.P1699350994952228426

`val(record[∏{p}[comp[(n+1)²], #]]+1, 2)`
-/

namespace A400524.P1699350994952228426
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) 2

end

end A400524.P1699350994952228426

namespace A400524

/-- `val(record[∏{p}[comp[(n+1)²], #]]+1, 2)` -/
def P1699350994952228426.Spec : Prop :=
  ∀ n, (P1699350994952228426.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P15840230399715442350

`val(record[A039696(n+1)], 2)`
-/

namespace A400524.P15840230399715442350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400524.P15840230399715442350

namespace A400524

/-- `val(record[A039696(n+1)], 2)` -/
def P15840230399715442350.Spec : Prop :=
  ∀ n, (P15840230399715442350.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P14558534438880157991

`val(record[A076618(n+1)], 2)`
-/

namespace A400524.P14558534438880157991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400524.P14558534438880157991

namespace A400524

/-- `val(record[A076618(n+1)], 2)` -/
def P14558534438880157991.Spec : Prop :=
  ∀ n, (P14558534438880157991.a n : ℤ) = A400524 (n + 1)

end A400524

/-! ## A400524.P4227492537745126291

`A007814(record[∏{p}[comp[(n+1)²], #]]+1)`
-/

namespace A400524.P4227492537745126291
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A400524.P4227492537745126291

namespace A400524

/-- `A007814(record[∏{p}[comp[(n+1)²], #]]+1)` -/
def P4227492537745126291.Spec : Prop :=
  ∀ n, P4227492537745126291.a n = A400524 (n + 1)

end A400524

/-! ## A400524.P2770787591760937673

`A007814(record[A039696(n+1)])`
-/

namespace A400524.P2770787591760937673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400524.P2770787591760937673

namespace A400524

/-- `A007814(record[A039696(n+1)])` -/
def P2770787591760937673.Spec : Prop :=
  ∀ n, P2770787591760937673.a n = A400524 (n + 1)

end A400524

/-! ## A400524.P1732728386214656984

`A007814(record[A076618(n+1)])`
-/

namespace A400524.P1732728386214656984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400524.P1732728386214656984

namespace A400524

/-- `A007814(record[A076618(n+1)])` -/
def P1732728386214656984.Spec : Prop :=
  ∀ n, P1732728386214656984.a n = A400524 (n + 1)

end A400524

/-! ## A400524.P7535621987872997999

`A007814(1+A005117(n+1))`
-/

namespace A400524.P7535621987872997999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A005117 (n + 1)).toNat

end

end A400524.P7535621987872997999

namespace A400524

/-- `A007814(1+A005117(n+1))` -/
def P7535621987872997999.Spec : Prop :=
  ∀ n, P7535621987872997999.a n = A400524 (n + 1)

theorem P7535621987872997999.correct : P7535621987872997999.Spec := by
  intro n
  simp only [A400524, Nat.add_sub_cancel, A400524.P7535621987872997999.a, A400524.P13401482131933218640.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A400524

/-! ## A400524.P12029793040626474886

`A007814(record[A007913(1+n)]+1)`
-/

namespace A400524.P12029793040626474886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A400524.P12029793040626474886

namespace A400524

/-- `A007814(record[A007913(1+n)]+1)` -/
def P12029793040626474886.Spec : Prop :=
  ∀ n, P12029793040626474886.a n = A400524 (n + 1)

end A400524

/-! ## A400524.P7010935845596817216

`A007814(record[A007947(n+1)+1])`
-/

namespace A400524.P7010935845596817216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400524.P7010935845596817216

namespace A400524

/-- `A007814(record[A007947(n+1)+1])` -/
def P7010935845596817216.Spec : Prop :=
  ∀ n, P7010935845596817216.a n = A400524 (n + 1)

end A400524

/-! ## A400524.P9762652325053910020

`A007814(∪[A002604(n), A144338(n+1)]+1)`
-/

namespace A400524.P9762652325053910020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A400524.P9762652325053910020

namespace A400524

/-- `A007814(∪[A002604(n), A144338(n+1)]+1)` -/
def P9762652325053910020.Spec : Prop :=
  ∀ n, P9762652325053910020.a n = A400524 (n + 1)

end A400524

/-! ## A400524.P10816041943679864735

`A050605(2*A005117(n+1))`
-/

namespace A400524.P10816041943679864735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A005117 (n + 1)).toNat

end

end A400524.P10816041943679864735

namespace A400524

/-- `A050605(2*A005117(n+1))` -/
def P10816041943679864735.Spec : Prop :=
  ∀ n, P10816041943679864735.a n = A400524 (n + 1)

end A400524

/-!
# A400525: The exponent of the highest power of 2 dividing the number preceding the n-th squarefree number.

The programs for A400525, the canonical program `A400525.P4597029500458234892` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400525 has offset 2).

The definition of A400525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400525.P4597029500458234892

`A007814(A005117(n+2)-1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400525

/-- `A007814(A005117(n+2)-1)` -/
def P4597029500458234892.Spec : Prop :=
  ∀ n, P4597029500458234892.a n = A400525 (n + 2)

theorem P4597029500458234892.correct : P4597029500458234892.Spec := by
  intro n
  simp only [A400525, Nat.add_sub_cancel]

end A400525

/-! ## A400525.P16083519069953508492

`val(∑[A076259(1+n)], 2)`
-/

namespace A400525.P16083519069953508492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A400525.P16083519069953508492

namespace A400525

/-- `val(∑[A076259(1+n)], 2)` -/
def P16083519069953508492.Spec : Prop :=
  ∀ n, (P16083519069953508492.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P8751393841849556283

`val(A144338(n+1)-1, 2)`
-/

namespace A400525.P8751393841849556283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A144338 (n + 1) - 1).toNat 2

end

end A400525.P8751393841849556283

namespace A400525

/-- `val(A144338(n+1)-1, 2)` -/
def P8751393841849556283.Spec : Prop :=
  ∀ n, (P8751393841849556283.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P334282326286513507

`val(A005117(n+2)-1, 2)`
-/

namespace A400525.P334282326286513507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005117 (n + 2) - 1).toNat 2

end

end A400525.P334282326286513507

namespace A400525

/-- `val(A005117(n+2)-1, 2)` -/
def P334282326286513507.Spec : Prop :=
  ∀ n, (P334282326286513507.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P14068217071451940293

`val(eq[1, A051903(n+1)], 2)`
-/

namespace A400525.P14068217071451940293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A400525.P14068217071451940293

namespace A400525

/-- `val(eq[1, A051903(n+1)], 2)` -/
def P14068217071451940293.Spec : Prop :=
  ∀ n, (P14068217071451940293.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P13719389548079699064

`val(eq[1, A299090(n+1)], 2)`
-/

namespace A400525.P13719389548079699064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A400525.P13719389548079699064

namespace A400525

/-- `val(eq[1, A299090(n+1)], 2)` -/
def P13719389548079699064.Spec : Prop :=
  ∀ n, (P13719389548079699064.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P12989151935020035873

`val(lt[A347439(1+n), 1], 2)`
-/

namespace A400525.P12989151935020035873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) 2

end

end A400525.P12989151935020035873

namespace A400525

/-- `val(lt[A347439(1+n), 1], 2)` -/
def P12989151935020035873.Spec : Prop :=
  ∀ n, (P12989151935020035873.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P18148219190147115679

`val(1+eq[1, A008833(n+2)], 2)`
-/

namespace A400525.P18148219190147115679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2

end

end A400525.P18148219190147115679

namespace A400525

/-- `val(1+eq[1, A008833(n+2)], 2)` -/
def P18148219190147115679.Spec : Prop :=
  ∀ n, (P18148219190147115679.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P1570627912012927235

`val(lt[n, A007913(n+2)]+1, 2)`
-/

namespace A400525.P1570627912012927235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) 2

end

end A400525.P1570627912012927235

namespace A400525

/-- `val(lt[n, A007913(n+2)]+1, 2)` -/
def P1570627912012927235.Spec : Prop :=
  ∀ n, (P1570627912012927235.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P9508473710492776439

`val(abs(2-A113850(n+1))+1, 2)`
-/

namespace A400525.P9508473710492776439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|2 - A113850 (n + 1)| + 1).toNat 2

end

end A400525.P9508473710492776439

namespace A400525

/-- `val(abs(2-A113850(n+1))+1, 2)` -/
def P9508473710492776439.Spec : Prop :=
  ∀ n, (P9508473710492776439.a n : ℤ) = A400525 (n + 2)

end A400525

/-! ## A400525.P5443371935562011420

`A007814(∑[A076259(n+1)])`
-/

namespace A400525.P5443371935562011420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A400525.P5443371935562011420

namespace A400525

/-- `A007814(∑[A076259(n+1)])` -/
def P5443371935562011420.Spec : Prop :=
  ∀ n, P5443371935562011420.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P6840065474120650965

`A007814(A144338(n+1)-1)`
-/

namespace A400525.P6840065474120650965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A144338 (n + 1) - 1).toNat

end

end A400525.P6840065474120650965

namespace A400525

/-- `A007814(A144338(n+1)-1)` -/
def P6840065474120650965.Spec : Prop :=
  ∀ n, P6840065474120650965.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P7501079951925304496

`A007814(xor(1, A005117(n+2)))`
-/

namespace A400525.P7501079951925304496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.xor 1 (A005117 (n + 2))).toNat

end

end A400525.P7501079951925304496

namespace A400525

/-- `A007814(xor(1, A005117(n+2)))` -/
def P7501079951925304496.Spec : Prop :=
  ∀ n, P7501079951925304496.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P17558779548477887067

`A007814(eq[1, A051903(n+1)])`
-/

namespace A400525.P17558779548477887067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A400525.P17558779548477887067

namespace A400525

/-- `A007814(eq[1, A051903(n+1)])` -/
def P17558779548477887067.Spec : Prop :=
  ∀ n, P17558779548477887067.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P4065247477250773490

`A007814(eq[1, A136565(n+1)])`
-/

namespace A400525.P4065247477250773490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A400525.P4065247477250773490

namespace A400525

/-- `A007814(eq[1, A136565(n+1)])` -/
def P4065247477250773490.Spec : Prop :=
  ∀ n, P4065247477250773490.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P4719361989139322975

`A007814(eq[2, A328400(n+1)])`
-/

namespace A400525.P4719361989139322975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A400525.P4719361989139322975

namespace A400525

/-- `A007814(eq[2, A328400(n+1)])` -/
def P4719361989139322975.Spec : Prop :=
  ∀ n, P4719361989139322975.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P16454722469151293321

`A007814(eq[2, A340675(n+1)])`
-/

namespace A400525.P16454722469151293321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A400525.P16454722469151293321

namespace A400525

/-- `A007814(eq[2, A340675(n+1)])` -/
def P16454722469151293321.Spec : Prop :=
  ∀ n, P16454722469151293321.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P8138569897674579454

`A007814(lt[A008619(n), A007947(n+1)])`
-/

namespace A400525.P8138569897674579454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400525.P8138569897674579454

namespace A400525

/-- `A007814(lt[A008619(n), A007947(n+1)])` -/
def P8138569897674579454.Spec : Prop :=
  ∀ n, P8138569897674579454.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P1143396110341926921

`A007814(lt[A048146(n+1), A342001(n+1)])`
-/

namespace A400525.P1143396110341926921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A400525.P1143396110341926921

namespace A400525

/-- `A007814(lt[A048146(n+1), A342001(n+1)])` -/
def P1143396110341926921.Spec : Prop :=
  ∀ n, P1143396110341926921.a n = A400525 (n + 2)

end A400525

/-! ## A400525.P13403509767973852218

`val(record[A075423(n+2)], 2)`
-/

namespace A400525.P13403509767973852218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A400525.P13403509767973852218

namespace A400525

/-- `val(record[A075423(n+2)], 2)` -/
def P13403509767973852218.Spec : Prop :=
  ∀ n, (P13403509767973852218.a n : ℤ) = A400525 (n + 2)

end A400525

/-!
# A400528: E.g.f. A(x) satisfies A(x) = exp(x*A(x^3)^2).

The programs for A400528, there is no canonical definition to state claims against.
-/

/-! ## A400528.P16579074479588813347

`A000069(A293493(n))`
-/

namespace A400528.P16579074479588813347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A293493 n).toNat

end

end A400528.P16579074479588813347

/-! ## A400528.P13666851870674779505

`A000069(A356629(n))`
-/

namespace A400528.P13666851870674779505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A356629 n).toNat

end

end A400528.P13666851870674779505

/-! ## A400528.P2416783273529626843

`A005843(A293493(n))-A275065(n)`
-/

namespace A400528.P2416783273529626843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A293493 n).toNat - A275065 n

end

end A400528.P2416783273529626843

/-! ## A400528.P13064395225717644527

`A005843(A293493(n))-A291149(n)`
-/

namespace A400528.P13064395225717644527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A293493 n).toNat - A291149 n

end

end A400528.P13064395225717644527

/-!
# A400529: E.g.f. A(x) satisfies A(x) = exp(2*x*A(x^2)).

The programs for A400529, there is no canonical definition to state claims against.
-/

/-! ## A400529.P6297977986664587836

`2^n*A143566(n)`
-/

namespace A400529.P6297977986664587836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A143566 n

end

end A400529.P6297977986664587836

/-! ## A400529.P9005118963069348887

`2^n*A143565(A238531(n))`
-/

namespace A400529.P9005118963069348887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A143565 (A238531 n).toNat

end

end A400529.P9005118963069348887

/-! ## A400529.P1575962554430184807

`2^n*A143565(A065475(∑[n+1]-2*n))`
-/

namespace A400529.P1575962554430184807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A143565 (A065475 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n)).toNat

end

end A400529.P1575962554430184807

/-! ## A400529.P1229116808584447663

`2^n*A143565(A133263(n)-A254667(n))`
-/

namespace A400529.P1229116808584447663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A143565 (A133263 n - A254667 n).toNat

end

end A400529.P1229116808584447663

/-! ## A400529.P10916097423908742863

`A143566(n)*A296188(A000040(n+1))`
-/

namespace A400529.P10916097423908742863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143566 n * A296188 (A000040 (n + 1)).toNat

end

end A400529.P10916097423908742863

/-!
# A400530: E.g.f. A(x) satisfies A(x) = exp(2*x*A(x^3)).

The programs for A400530, there is no canonical definition to state claims against.
-/

/-! ## A400530.P12024223053689416142

`A118934(n)*A375126(2^n)`
-/

namespace A400530.P12024223053689416142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118934 n * A375126 (2 ^ n)

end

end A400530.P12024223053689416142

/-! ## A400530.P4724494690297957973

`A023443(2^n*A262012(n)+1)`
-/

namespace A400530.P4724494690297957973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((2 ^ n : ℤ) * A262012 n + 1).toNat

end

end A400530.P4724494690297957973

/-! ## A400530.P16083370808233837953

`A060747(A320898(n))-A000225(n)`
-/

namespace A400530.P16083370808233837953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A320898 n).toNat - A000225 n

end

end A400530.P16083370808233837953

/-!
# A400531: a(n) = chi_{n,-1}(-1), where chi_{n,-1} is the Dirichlet character modulo n with label -1 in the Conrey labeling system.

The programs for A400531, the canonical program `A400531.P16295305633252977653` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400531 has offset 1).

The definition of A400531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400531.P16295305633252977653

`A008836(A337910(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A400531

/-- `A008836(A337910(n+1))` -/
def P16295305633252977653.Spec : Prop :=
  ∀ n, P16295305633252977653.a n = A400531 (n + 1)

theorem P16295305633252977653.correct : P16295305633252977653.Spec := by
  intro n
  simp only [A400531, Nat.add_sub_cancel]

end A400531

/-! ## A400531.P210612584276441597

`A209615(gcd(∏{p}[n+1, #], A000217(n)))`
-/

namespace A400531.P210612584276441597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A000217 n))

end

end A400531.P210612584276441597

namespace A400531

/-- `A209615(gcd(∏{p}[n+1, #], A000217(n)))` -/
def P210612584276441597.Spec : Prop :=
  ∀ n, P210612584276441597.a n = A400531 (n + 1)

end A400531

/-! ## A400531.P10344507995393266790

`A034947(2*(n+1)-A007947(n+1))`
-/

namespace A400531.P10344507995393266790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 ((2 * (n + 1) : ℤ) - A007947 (n + 1)).toNat

end

end A400531.P10344507995393266790

namespace A400531

/-- `A034947(2*(n+1)-A007947(n+1))` -/
def P10344507995393266790.Spec : Prop :=
  ∀ n, P10344507995393266790.a n = A400531 (n + 1)

end A400531

/-! ## A400531.P9041471251691211827

`A057077(n*(2-n%2)-A055631(n+1))`
-/

namespace A400531.P9041471251691211827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 ((n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) - A055631 (n + 1)).toNat

end

end A400531.P9041471251691211827

namespace A400531

/-- `A057077(n*(2-n%2)-A055631(n+1))` -/
def P9041471251691211827.Spec : Prop :=
  ∀ n, P9041471251691211827.a n = A400531 (n + 1)

end A400531

/-! ## A400531.P5866522278981906465

`A057077(n^(n%2)*A055631(n+1))`
-/

namespace A400531.P5866522278981906465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 ((n ^ (n % 2) : ℤ) * A055631 (n + 1)).toNat

end

end A400531.P5866522278981906465

namespace A400531

/-- `A057077(n^(n%2)*A055631(n+1))` -/
def P5866522278981906465.Spec : Prop :=
  ∀ n, P5866522278981906465.a n = A400531 (n + 1)

end A400531

/-! ## A400531.P894410890067413364

`A057077(floor((n+1)²/2)-A055631(n+1))`
-/

namespace A400531.P894410890067413364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (⌊((n + 1) ^ 2 : ℚ) / 2⌋ - A055631 (n + 1)).toNat

end

end A400531.P894410890067413364

namespace A400531

/-- `A057077(floor((n+1)²/2)-A055631(n+1))` -/
def P894410890067413364.Spec : Prop :=
  ∀ n, P894410890067413364.a n = A400531 (n + 1)

end A400531

/-! ## A400531.P11553232820505674880

`A057077((2*floor(n/2)+1)*A055631(n+1))`
-/

namespace A400531.P11553232820505674880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 ((2 * ⌊(n : ℚ) / 2⌋ + 1) * A055631 (n + 1)).toNat

end

end A400531.P11553232820505674880

namespace A400531

/-- `A057077((2*floor(n/2)+1)*A055631(n+1))` -/
def P11553232820505674880.Spec : Prop :=
  ∀ n, P11553232820505674880.a n = A400531 (n + 1)

end A400531

/-!
# A400533: Expansion of Product_{k>=1} theta_3(q^k)^k, where theta_3() is the Jacobi theta function.

The programs for A400533, there is no canonical definition to state claims against.
-/

/-! ## A400533.P167460921693567250

`A139555(A003059(n+1)*A049311(n+1))`
-/

namespace A400533.P167460921693567250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (A003059 (n + 1) * A049311 (n + 1)).toNat

end

end A400533.P167460921693567250

/-!
# A400534: a(n) is the maximum number of entries in row n of Pascal's triangle divisible by the same prime.

The programs for A400534, there is no canonical definition to state claims against.
-/

/-! ## A400534.P12651975538144480735

`n-A069010(A027375(n))`
-/

namespace A400534.P12651975538144480735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A069010 (A027375 n).toNat

end

end A400534.P12651975538144480735

/-! ## A400534.P2603546751131468466

`A023416(A131577(n))-A321378(n)`
-/

namespace A400534.P2603546751131468466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A131577 n).toNat - A321378 n

end

end A400534.P2603546751131468466

/-!
# A400536: a(n) = A238690(A071364(n)).

The programs for A400536, the canonical program `A400536.P9417854966251774353` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400536 has offset 1).

The definition of A400536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400536.P4955390522577239758

`A238690(A071364(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400536.P4955390522577239758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A071364 (n + 1)).toNat

end

end A400536.P4955390522577239758

namespace A400536

/-- `A238690(A071364(n+1))` -/
def P4955390522577239758.Spec : Prop :=
  ∀ n, P4955390522577239758.a n = A400536 (n + 1)

end A400536

/-! ## A400536.P9417854966251774353

`A238690(A329607(1+n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A400536

/-- `A238690(A329607(1+n))` -/
def P9417854966251774353.Spec : Prop :=
  ∀ n, P9417854966251774353.a n = A400536 (n + 1)

theorem P9417854966251774353.correct : P9417854966251774353.Spec := by
  intro n
  simp only [A400536, Nat.add_sub_cancel]

end A400536

/-! ## A400536.P3609448434899998031

`A238690(A292586(n+1)*A396938(n+1))`
-/

namespace A400536.P3609448434899998031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A292586 (n + 1) * A396938 (n + 1)).toNat

end

end A400536.P3609448434899998031

namespace A400536

/-- `A238690(A292586(n+1)*A396938(n+1))` -/
def P3609448434899998031.Spec : Prop :=
  ∀ n, P3609448434899998031.a n = A400536 (n + 1)

end A400536

/-! ## A400536.P9690477743883934159

`A085082(A329600(1+n))`
-/

namespace A400536.P9690477743883934159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A329600 (1 + n)).toNat

end

end A400536.P9690477743883934159

namespace A400536

/-- `A085082(A329600(1+n))` -/
def P9690477743883934159.Spec : Prop :=
  ∀ n, P9690477743883934159.a n = A400536 (n + 1)

end A400536

/-! ## A400536.P15608328700371610950

`A238690(A396938((n+1)²)/A396938(n+1))`
-/

namespace A400536.P15608328700371610950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway ((A396938 ((n + 1) ^ 2) : ℚ) / (A396938 (n + 1) : ℚ))).toNat

end

end A400536.P15608328700371610950

namespace A400536

/-- `A238690(A396938((n+1)²)/A396938(n+1))` -/
def P15608328700371610950.Spec : Prop :=
  ∀ n, P15608328700371610950.a n = A400536 (n + 1)

end A400536

/-!
# A400537: Number of lattice points of the 24-cell whose vertices are the permutations of (+-n, +-n, 0, 0).

The programs for A400537, the canonical program `A400537.P12261565336202433379` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400537 has offset 0).

The definition of A400537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400537.P12261565336202433379

`ogf((1+28x+102x^2+60x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400537

/-- `ogf((1+28x+102x^2+60x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12261565336202433379.Spec : Prop :=
  ∀ n, P12261565336202433379.a n = A400537 n

theorem P12261565336202433379.correct : P12261565336202433379.Spec := by
  intro n
  simp only [A400537]

end A400537

/-! ## A400537.P11434322332223214451

`8*n*(n+1)*(3*n²+n+2)/3+1`
-/

namespace A400537.P11434322332223214451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n * (n + 1) * (3 * n ^ 2 + n + 2) : ℚ) / 3 + 1

end

end A400537.P11434322332223214451

namespace A400537

/-- `8*n*(n+1)*(3*n²+n+2)/3+1` -/
def P11434322332223214451.Spec : Prop :=
  ∀ n, P11434322332223214451.a n = (A400537 n : ℚ)

end A400537

/-! ## A400537.P8565631744892251255

`∑[A022146(n)]`
-/

namespace A400537.P8565631744892251255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400537.P8565631744892251255

namespace A400537

/-- `∑[A022146(n)]` -/
def P8565631744892251255.Spec : Prop :=
  ∀ n, P8565631744892251255.a n = A400537 n

end A400537

/-! ## A400537.P18156799165478865716

`∑[A117216(n)-A152750(n)]`
-/

namespace A400537.P18156799165478865716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117216 n - A152750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400537.P18156799165478865716

namespace A400537

/-- `∑[A117216(n)-A152750(n)]` -/
def P18156799165478865716.Spec : Prop :=
  ∀ n, P18156799165478865716.a n = A400537 n

end A400537

/-! ## A400537.P14611077615963255486

`∑[2*A007900(n)-A008574(n)²]`
-/

namespace A400537.P14611077615963255486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007900 n - A008574 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400537.P14611077615963255486

namespace A400537

/-- `∑[2*A007900(n)-A008574(n)²]` -/
def P14611077615963255486.Spec : Prop :=
  ∀ n, P14611077615963255486.a n = A400537 n

end A400537

/-! ## A400537.P5783861109439258850

`∑[A108998(eq[4, A025581(n)])]`
-/

namespace A400537.P5783861109439258850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400537.P5783861109439258850

namespace A400537

/-- `∑[A108998(eq[4, A025581(n)])]` -/
def P5783861109439258850.Spec : Prop :=
  ∀ n, P5783861109439258850.a n = A400537 n

end A400537

/-! ## A400537.P8762933664081231697

`∑[A108998(eq[4, A116949(n)])]`
-/

namespace A400537.P8762933664081231697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400537.P8762933664081231697

namespace A400537

/-- `∑[A108998(eq[4, A116949(n)])]` -/
def P8762933664081231697.Spec : Prop :=
  ∀ n, P8762933664081231697.a n = A400537 n

end A400537

/-! ## A400537.P13417971672480266292

`∑[A108998(eq[5, A004736(n+1)])]`
-/

namespace A400537.P13417971672480266292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400537.P13417971672480266292

namespace A400537

/-- `∑[A108998(eq[5, A004736(n+1)])]` -/
def P13417971672480266292.Spec : Prop :=
  ∀ n, P13417971672480266292.a n = A400537 n

end A400537

/-! ## A400537.P12434140452812639410

`∑[A108998(A055999(1+n)+n+6)]`
-/

namespace A400537.P12434140452812639410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 (A055999 (1 + n) + (n + 6 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400537.P12434140452812639410

namespace A400537

/-- `∑[A108998(A055999(1+n)+n+6)]` -/
def P12434140452812639410.Spec : Prop :=
  ∀ n, P12434140452812639410.a n = A400537 n

end A400537

/-!
# A400538: Number of lattice points of the truncated tetrahedron whose vertices are the permutations of (+-n, +-n, +-3n) with an even number of minus signs.

The programs for A400538, the canonical program `A400538.P9723494666094230779` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400538 has offset 0).

The definition of A400538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400538.P9723494666094230779

`ogf((1+95x+231x^2+41x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400538

/-- `ogf((1+95x+231x^2+41x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9723494666094230779.Spec : Prop :=
  ∀ n, P9723494666094230779.a n = A400538 n

theorem P9723494666094230779.correct : P9723494666094230779.Spec := by
  intro n
  simp only [A400538]

end A400538

/-! ## A400538.P17633671700517730800

`2*n*(n*(92*n+42)+13)/3+1`
-/

namespace A400538.P17633671700517730800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * (n * (92 * n + 42) + 13) : ℚ) / 3 + 1

end

end A400538.P17633671700517730800

namespace A400538

/-- `2*n*(n*(92*n+42)+13)/3+1` -/
def P17633671700517730800.Spec : Prop :=
  ∀ n, P17633671700517730800.a n = (A400538 n : ℚ)

end A400538

/-!
# A400539: Number of lattice points of the tetrakis hexahedron whose vertices are (+-3n,0,0), (0,+-3n,0), (0,0,+-3n) and (+-2n,+-2n,+-2n).

The programs for A400539, the canonical program `A400539.P8976220556064503326` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400539 has offset 0).

The definition of A400539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400539.P8976220556064503326

`ogf((1+127x+367x^2+81x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400539

/-- `ogf((1+127x+367x^2+81x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P8976220556064503326.Spec : Prop :=
  ∀ n, P8976220556064503326.a n = A400539 n

theorem P8976220556064503326.correct : P8976220556064503326.Spec := by
  intro n
  simp only [A400539]

end A400539

/-! ## A400539.P17094736895537402118

`96*n^3+24*n²+10*n+1`
-/

namespace A400539.P17094736895537402118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  96 * n ^ 3 + 24 * n ^ 2 + 10 * n + 1

end

end A400539.P17094736895537402118

namespace A400539

/-- `96*n^3+24*n²+10*n+1` -/
def P17094736895537402118.Spec : Prop :=
  ∀ n, (P17094736895537402118.a n : ℤ) = A400539 n

end A400539

/-!
# A400540: a(n) is the least number that is the sum of two balanced numbers in exactly n ways, or -1 if there is no such number.

The programs for A400540, there is no canonical definition to state claims against.
-/

/-! ## A400540.P7153472880849519480

`Δ[A048967(A193520(n))]`
-/

namespace A400540.P7153472880849519480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A193520 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400540.P7153472880849519480

/-!
# A400544: Number of S_3-symmetric unrestricted 3-dimensional vector partitions of (n, n, n).

The programs for A400544, there is no canonical definition to state claims against.
-/

/-! ## A400544.P6418728874401146875

`A229219(A164589(n))`
-/

namespace A400544.P6418728874401146875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A164589 n).toNat

end

end A400544.P6418728874401146875

/-! ## A400544.P8906232491321983367

`A388723(A063887(n))`
-/

namespace A400544.P8906232491321983367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388723 (A063887 n).toNat

end

end A400544.P8906232491321983367

/-! ## A400544.P3534175873833274207

`A319840(A150713(n))`
-/

namespace A400544.P3534175873833274207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319840 (A150713 n).toNat

end

end A400544.P3534175873833274207

/-!
# A400548: E.g.f. A(x) satisfies A(x) = 1/(1 - x*A(x)^x).

The programs for A400548, there is no canonical definition to state claims against.
-/

/-! ## A400548.P17286095346988009912

`A073975(A302044(n+5))+∏{p}[floor((n^n+1)^(n/4))+1, #-1]`
-/

namespace A400548.P17286095346988009912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ n + 1 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073975 (A302044 (n + 5)).toNat + ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A400548.P17286095346988009912

/-! ## A400548.P4670763545329162614

`A179495(n)+A000007(A003095(n))`
-/

namespace A400548.P4670763545329162614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179495 n + A000007 (A003095 n).toNat

end

end A400548.P4670763545329162614

/-!
# A400549: E.g.f. A(x) satisfies A(x) = 1/(1 - x^2*A(x)^x).

The programs for A400549, there is no canonical definition to state claims against.
-/

/-! ## A400549.P17635129444193807216

`A242196(n+1)%2*n!`
-/

namespace A400549.P17635129444193807216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242196 (n + 1)) 2 * (Nat.factorial n : ℤ)

end

end A400549.P17635129444193807216

/-! ## A400549.P1287876028407519532

`and(A007523(n+1)+n, n!)`
-/

namespace A400549.P1287876028407519532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007523 (n + 1) + (n : ℤ)) (Nat.factorial n : ℤ)

end

end A400549.P1287876028407519532

/-! ## A400549.P10640825273621240890

`A194681((n+1)*n!)*n!`
-/

namespace A400549.P10640825273621240890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194681 ((n + 1) * Nat.factorial n) * (Nat.factorial n : ℤ)

end

end A400549.P10640825273621240890

/-!
# A400550: E.g.f. A(x) satisfies A(x) = 1/(1 - x^3*A(x)^x).

The programs for A400550, there is no canonical definition to state claims against.
-/

/-! ## A400550.P8463496227083127896

`(A400883(n+1)+1)%2*n!`
-/

namespace A400550.P8463496227083127896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400883 (n + 1) + 1) 2 * (Nat.factorial n : ℤ)

end

end A400550.P8463496227083127896

/-! ## A400550.P2783434648089866152

`A400555(n^(2-∑{p}[n^3, val(#, 11)]^floor(n/10))²)`
-/

namespace A400550.P2783434648089866152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400555 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 10⌋ : ℤ)) ^ 2 : ℝ))).toNat

end

end A400550.P2783434648089866152

/-! ## A400550.P7256815579205142899

`A369814(n)*A369831(n)`
-/

namespace A400550.P7256815579205142899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 n * A369831 n

end

end A400550.P7256815579205142899

/-! ## A400550.P4918606803522395097

`A400555(n^A055642(n))`
-/

namespace A400550.P4918606803522395097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400555 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A400550.P4918606803522395097

/-! ## A400550.P14381927209123563902

`A400555(n^A369814(n))`
-/

namespace A400550.P14381927209123563902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400555 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A369814 n : ℤ))).toNat

end

end A400550.P14381927209123563902

/-!
# A400551: E.g.f. A(x) satisfies A(x) = 1/(1 - x*A(x)^(x^2)).

The programs for A400551, there is no canonical definition to state claims against.
-/

/-! ## A400551.P3937510213017460077

`A091732(A001147(n)-A027641(n+3))`
-/

namespace A400551.P3937510213017460077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A001147 n - A027641 (n + 3)).toNat

end

end A400551.P3937510213017460077

/-! ## A400551.P1583294242657506618

`A354768(A302916(n+1))`
-/

namespace A400551.P1583294242657506618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354768 (A302916 (n + 1)).toNat

end

end A400551.P1583294242657506618

/-!
# A400552: E.g.f. A(x) satisfies A(x) = 1/(1 - x*A(x)^(x^3)).

The programs for A400552, there is no canonical definition to state claims against.
-/

/-! ## A400552.P13881616643120644082

`A046523(A001710(n))*A353864(n)-A052762(n)`
-/

namespace A400552.P13881616643120644082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001710 n).toNat * A353864 n - A052762 n

end

end A400552.P13881616643120644082

/-! ## A400552.P16499855408599856481

`A168267(A358832(n))`
-/

namespace A400552.P16499855408599856481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (A358832 n).toNat

end

end A400552.P16499855408599856481

/-! ## A400552.P2343340608056676479

`A384723(A291220(n))`
-/

namespace A400552.P2343340608056676479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384723 (A291220 n).toNat

end

end A400552.P2343340608056676479

/-!
# A400553: E.g.f. A(x) satisfies A(x) = 1/( 1 - x*exp( x*( exp(A(x)-1)-1 ) ) ).

The programs for A400553, there is no canonical definition to state claims against.
-/

/-! ## A400553.P13916325737501379550

`∑{#}[floor(n/2), (n-1)^(n-#^floor(n/2)^n)]`
-/

namespace A400553.P13916325737501379550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - 1 : ℝ) ^ ((n : ℚ) - (k : ℚ) ^ (⌊(n : ℚ) / 2⌋ ^ n : ℤ) : ℝ)

end

end A400553.P13916325737501379550

/-! ## A400553.P16957707305435358697

`A028310((n-1)^(n-1)*n)`
-/

namespace A400553.P16957707305435358697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n : ℚ))).toNat

end

end A400553.P16957707305435358697

/-!
# A400556: E.g.f. A(x) satisfies A(x) = 1/( 1 - x*exp( x^2*( exp(A(x)-1)-1 ) ) ).

The programs for A400556, there is no canonical definition to state claims against.
-/

/-! ## A400556.P8790872885305898065

`A119311(2^n)/2^n`
-/

namespace A400556.P8790872885305898065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119311 (2 ^ n) : ℚ) / (2 ^ n : ℚ)

end

end A400556.P8790872885305898065

/-! ## A400556.P8144975556912236327

`A216762(A073192(n))`
-/

namespace A400556.P8144975556912236327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216762 (A073192 n).toNat

end

end A400556.P8144975556912236327

/-!
# A400557: E.g.f. A(x) satisfies A(x) = 1/( 1 - x*exp( x^3*( exp(A(x)-1)-1 ) ) ).

The programs for A400557, there is no canonical definition to state claims against.
-/

/-! ## A400557.P8260108774568808418

`A396982(A400552(n))`
-/

namespace A400557.P8260108774568808418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396982 (A400552 n).toNat

end

end A400557.P8260108774568808418

/-! ## A400557.P15571632402277015617

`A206369(A178684(n+1)+A005130(n))`
-/

namespace A400557.P15571632402277015617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A178684 (n + 1) + A005130 n).toNat

end

end A400557.P15571632402277015617

/-! ## A400557.P1339615452780483745

`A000010(A371286(n+1)+A371269(n))`
-/

namespace A400557.P1339615452780483745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A371286 (n + 1) + A371269 n).toNat

end

end A400557.P1339615452780483745

/-!
# A400558: Table read by antidiagonals: T(n,m) = Zarankiewicz number z(n,m;2,2) (n >= 2, m >= 2).

The programs for A400558, there is no canonical definition to state claims against.
-/

/-! ## A400558.P16135046831221432181

`A376167(n+2)-1`
-/

namespace A400558.P16135046831221432181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376167 (n + 2) - 1

end

end A400558.P16135046831221432181

/-! ## A400558.P7857085532571324017

`A002837(A376167(2+n))`
-/

namespace A400558.P7857085532571324017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A376167 (2 + n)).toNat

end

end A400558.P7857085532571324017

/-! ## A400558.P7054866739940764973

`A023444(A376167(2+n)+1)`
-/

namespace A400558.P7054866739940764973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A376167 (2 + n) + 1).toNat

end

end A400558.P7054866739940764973

/-! ## A400558.P8700283788872351723

`A051125(C(A376167(n+2), 2))`
-/

namespace A400558.P8700283788872351723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (Nat.choose (A376167 (n + 2)).toNat 2)

end

end A400558.P8700283788872351723

/-! ## A400558.P9795394689383561975

`A103823(C(A376167(n+2), 2))`
-/

namespace A400558.P9795394689383561975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103823 (Nat.choose (A376167 (n + 2)).toNat 2)

end

end A400558.P9795394689383561975

/-! ## A400558.P17941586323788913457

`∑{#}[A376167(n+2), A157928(#)]`
-/

namespace A400558.P17941586323788913457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A157928 k

end

end A400558.P17941586323788913457

/-! ## A400558.P11427627782249825828

`A023443(A376167(n+2)%A100930(n+1))`
-/

namespace A400558.P11427627782249825828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A376167 (n + 2)) (A100930 (n + 1))).toNat

end

end A400558.P11427627782249825828

/-! ## A400558.P14270283327429515994

`A023443(A376167(n+2))%A136070(n+1)`
-/

namespace A400558.P14270283327429515994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A376167 (n + 2)).toNat) (A136070 (n + 1))

end

end A400558.P14270283327429515994

/-!
# A400561: a(n) is the maximum numbers of regions (both closed or open) outside a strictly convex n-polygon, delimited by the n edges and the n*(n-3)/2 diagonals of the polygon itself, where all these elements (edges and diagonals) are extended to infinity as straight lines.

The programs for A400561, the canonical program `A400561.P7401441228568277259` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400561 has offset 2).

The definition of A400561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400561.P7401441228568277259

`2*(C(n+2, 2)+C(n+2, 4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400561

/-- `2*(C(n+2, 2)+C(n+2, 4))` -/
def P7401441228568277259.Spec : Prop :=
  ∀ n, (P7401441228568277259.a n : ℤ) = A400561 (n + 2)

theorem P7401441228568277259.correct : P7401441228568277259.Spec := by
  intro n
  simp only [A400561, Nat.add_sub_cancel]

end A400561

/-! ## A400561.P2772709209828780958

`∑[∑[2-n+n²]]`
-/

namespace A400561.P2772709209828780958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ) + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400561.P2772709209828780958

namespace A400561

/-- `∑[∑[2-n+n²]]` -/
def P2772709209828780958.Spec : Prop :=
  ∀ n, P2772709209828780958.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P14181135094529491225

`2*∑[∑{#}[3, C(n, #)]]`
-/

namespace A400561.P14181135094529491225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), Nat.choose n k

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400561.P14181135094529491225

namespace A400561

/-- `2*∑[∑{#}[3, C(n, #)]]` -/
def P14181135094529491225.Spec : Prop :=
  ∀ n, (P14181135094529491225.a n : ℤ) = A400561 (n + 2)

end A400561

/-! ## A400561.P1155342218636764320

`2*∑[∑[1+C(n, 2)]]`
-/

namespace A400561.P1155342218636764320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400561.P1155342218636764320

namespace A400561

/-- `2*∑[∑[1+C(n, 2)]]` -/
def P1155342218636764320.Spec : Prop :=
  ∀ n, (P1155342218636764320.a n : ℤ) = A400561 (n + 2)

end A400561

/-! ## A400561.P16407246831381023043

`lcm(2, ∑[∑[n*(n-1)+2]])`
-/

namespace A400561.P16407246831381023043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400561.P16407246831381023043

namespace A400561

/-- `lcm(2, ∑[∑[n*(n-1)+2]])` -/
def P16407246831381023043.Spec : Prop :=
  ∀ n, (P16407246831381023043.a n : ℤ) = A400561 (n + 2)

end A400561

/-! ## A400561.P10967841554704683527

`∑{#}[3, 2*C(n+1, #+1)]`
-/

namespace A400561.P10967841554704683527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 * Nat.choose (n + 1) (k + 1)

end

end A400561.P10967841554704683527

namespace A400561

/-- `∑{#}[3, 2*C(n+1, #+1)]` -/
def P10967841554704683527.Spec : Prop :=
  ∀ n, (P10967841554704683527.a n : ℤ) = A400561 (n + 2)

end A400561

/-! ## A400561.P10603001051421884384

`floor(∑[∑[∑[a(n-1)+2]]])` with `a(0)=2, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A400561.P10603001051421884384
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400561.P10603001051421884384

namespace A400561

/-- `floor(∑[∑[∑[a(n-1)+2]]])` -/
def P10603001051421884384.Spec : Prop :=
  ∀ n, (P10603001051421884384.a n : ℤ) = A400561 (n + 2)

end A400561

/-! ## A400561.P3025024809334569023

`2*∑[∑[∑[a(n-1)+1]]]` with `a(0)=1, a(1)=0`
-/

namespace A400561.P3025024809334569023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400561.P3025024809334569023

namespace A400561

/-- `2*∑[∑[∑[a(n-1)+1]]]` -/
def P3025024809334569023.Spec : Prop :=
  ∀ n, (P3025024809334569023.a n : ℤ) = A400561 (n + 2)

end A400561

/-! ## A400561.P11417212033752440290

`∑[∑[∑[a(n-1)+4]]]/2` with `a(0)=4, a(1)=0`
-/

namespace A400561.P11417212033752440290
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A400561.P11417212033752440290

namespace A400561

/-- `∑[∑[∑[a(n-1)+4]]]/2` -/
def P11417212033752440290.Spec : Prop :=
  ∀ n, P11417212033752440290.a n = (A400561 (n + 2) : ℚ)

end A400561

/-! ## A400561.P3816164694518947095

`floor(∑[∑[4-∑[a(n-1)-2]]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A400561.P3816164694518947095
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400561.P3816164694518947095

namespace A400561

/-- `floor(∑[∑[4-∑[a(n-1)-2]]])` -/
def P3816164694518947095.Spec : Prop :=
  ∀ n, P3816164694518947095.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P11620056729121865176

`∑[lcm(n, n-1)+2]+a(n-1)` with `a(0)=2`
-/

namespace A400561.P11620056729121865176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A400561.P11620056729121865176

namespace A400561

/-- `∑[lcm(n, n-1)+2]+a(n-1)` -/
def P11620056729121865176.Spec : Prop :=
  ∀ n, (P11620056729121865176.a n : ℤ) = A400561 (n + 2)

end A400561

/-! ## A400561.P6803632425845002466

`∑[4-∑[a(n-1)-2]]+a(n-1)` with `a(0)=2`
-/

namespace A400561.P6803632425845002466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A400561.P6803632425845002466

namespace A400561

/-- `∑[4-∑[a(n-1)-2]]+a(n-1)` -/
def P6803632425845002466.Spec : Prop :=
  ∀ n, P6803632425845002466.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P778837603524049418

`a(n-1)-∑[∑[a(n-1)-2]-4]` with `a(0)=2`
-/

namespace A400561.P778837603524049418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 4

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400561.P778837603524049418

namespace A400561

/-- `a(n-1)-∑[∑[a(n-1)-2]-4]` -/
def P778837603524049418.Spec : Prop :=
  ∀ n, P778837603524049418.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P2033422789068850252

`2*∑[A000125(n)]`
-/

namespace A400561.P2033422789068850252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400561.P2033422789068850252

namespace A400561

/-- `2*∑[A000125(n)]` -/
def P2033422789068850252.Spec : Prop :=
  ∀ n, P2033422789068850252.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P13986161470036504172

`2*(A027927(n+2)+n)`
-/

namespace A400561.P13986161470036504172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027927 (n + 2) + (n : ℤ))

end

end A400561.P13986161470036504172

namespace A400561

/-- `2*(A027927(n+2)+n)` -/
def P13986161470036504172.Spec : Prop :=
  ∀ n, P13986161470036504172.a n = A400561 (n + 2)

theorem P13986161470036504172.correct : P13986161470036504172.Spec := by
  intro n
  simp only [A400561, Nat.add_sub_cancel, A400561.P13986161470036504172.a, A400561.P7401441228568277259.a, A027927, A027927.P8470506974673547009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A400561

/-! ## A400561.P5532452933251824275

`A134393(n+1)+∑[n+1]`
-/

namespace A400561.P5532452933251824275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134393 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A400561.P5532452933251824275

namespace A400561

/-- `A134393(n+1)+∑[n+1]` -/
def P5532452933251824275.Spec : Prop :=
  ∀ n, P5532452933251824275.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P7441782262072212174

`A341209(n)+A079034(n)`
-/

namespace A400561.P7441782262072212174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + A079034 n

end

end A400561.P7441782262072212174

namespace A400561

/-- `A341209(n)+A079034(n)` -/
def P7441782262072212174.Spec : Prop :=
  ∀ n, P7441782262072212174.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P8741086382926926176

`A059173(n+1)+A033547(n)`
-/

namespace A400561.P8741086382926926176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059173 (n + 1) + A033547 n

end

end A400561.P8741086382926926176

namespace A400561

/-- `A059173(n+1)+A033547(n)` -/
def P8741086382926926176.Spec : Prop :=
  ∀ n, P8741086382926926176.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P5316326311478566179

`A180415(n+1)+A136396(n)`
-/

namespace A400561.P5316326311478566179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A136396 n

end

end A400561.P5316326311478566179

namespace A400561

/-- `A180415(n+1)+A136396(n)` -/
def P5316326311478566179.Spec : Prop :=
  ∀ n, P5316326311478566179.a n = A400561 (n + 2)

end A400561

/-! ## A400561.P2062483209085431765

`A299120(n)+A095794(n+1)`
-/

namespace A400561.P2062483209085431765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299120 n + A095794 (n + 1)

end

end A400561.P2062483209085431765

namespace A400561

/-- `A299120(n)+A095794(n+1)` -/
def P2062483209085431765.Spec : Prop :=
  ∀ n, P2062483209085431765.a n = A400561 (n + 2)

end A400561

/-!
# A400568: Number of nonisomorphic dimonoids of order n.

The programs for A400568, there is no canonical definition to state claims against.
-/

/-! ## A400568.P4084630869594833573

`A187224(A300784(n!))`
-/

namespace A400568.P4084630869594833573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (A300784 (Nat.factorial n)).toNat

end

end A400568.P4084630869594833573

/-!
# A400569: Number of nonisomorphic commutative dimonoids of order n.

The programs for A400569, there is no canonical definition to state claims against.
-/

/-! ## A400569.P5319012791879295836

`A332932(∏[n!])`
-/

namespace A400569.P5319012791879295836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332932 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A400569.P5319012791879295836

/-!
# A400570: Number of nonisomorphic rectangular dimonoids of order n.

The programs for A400570, there is no canonical definition to state claims against.
-/

/-! ## A400570.P11062278269702249597

`A115630(A301777(n))`
-/

namespace A400570.P11062278269702249597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115630 (A301777 n).toNat

end

end A400570.P11062278269702249597

/-! ## A400570.P17894959489643209644

`A089586(n+6)-∑[A086771(n+1)]`
-/

namespace A400570.P17894959489643209644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089586 (n + 6) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400570.P17894959489643209644

/-!
# A400571: Array A(n,k) read by antidiagonals, where A(n,k) is the surface area of an n-dimensional hyperrectangle obtained from the unit n-cube by adding k unit layers, one dimension at a time, maximizing the surface area at each step.

The programs for A400571, there is no canonical definition to state claims against.
-/

/-! ## A400571.P13480021745552805540

`A010846(A051416(n+1))*A210489(n)`
-/

namespace A400571.P13480021745552805540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A051416 (n + 1)).toNat * A210489 n

end

end A400571.P13480021745552805540

/-! ## A400571.P12931750942441521613

`2*A210489(n)%A195634(n+1)`
-/

namespace A400571.P12931750942441521613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A210489 n) (A195634 (n + 1))

end

end A400571.P12931750942441521613

/-! ## A400571.P15221132853840948116

`2*A210489(n)%A195500(n+1)`
-/

namespace A400571.P15221132853840948116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A210489 n) (A195500 (n + 1))

end

end A400571.P15221132853840948116

/-! ## A400571.P10393181582899086013

`2*A331256(A123519(n))`
-/

namespace A400571.P10393181582899086013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331256 (A123519 n).toNat

end

end A400571.P10393181582899086013

/-! ## A400571.P834852978176715855

`A210489(n)*A246029(A248776(n+1))`
-/

namespace A400571.P834852978176715855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 n * A246029 (A248776 (n + 1)).toNat

end

end A400571.P834852978176715855

/-!
# A400572: Primes of the form the product of two semiprimes plus 1.

The programs for A400572, the canonical program `A400572.P6899762946665674541` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400572 has offset 1).

The definition of A400572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400572.P12484422651523100059

`record[A006530(A014613(n+1)+1)]`
-/

namespace A400572.P12484422651523100059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014613 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400572.P12484422651523100059

namespace A400572

/-- `record[A006530(A014613(n+1)+1)]` -/
def P12484422651523100059.Spec : Prop :=
  ∀ n, P12484422651523100059.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P13974416405275525485

`record[A020639(1+A014613(1+n))]`
-/

namespace A400572.P13974416405275525485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + A014613 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400572.P13974416405275525485

namespace A400572

/-- `record[A020639(1+A014613(1+n))]` -/
def P13974416405275525485.Spec : Prop :=
  ∀ n, P13974416405275525485.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P7693334455606575431

`filter[A014613(n+1)+1, A010051(#)]`
-/

namespace A400572.P7693334455606575431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A400572.P7693334455606575431

namespace A400572

/-- `filter[A014613(n+1)+1, A010051(#)]` -/
def P7693334455606575431.Spec : Prop :=
  ∀ n, P7693334455606575431.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P6899762946665674541

`∩[A014613(n+1)+1, A000040(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A400572

/-- `∩[A014613(n+1)+1, A000040(n+1)]` -/
def P6899762946665674541.Spec : Prop :=
  ∀ n, (P6899762946665674541.a n : ℤ) = A400572 (n + 1)

theorem P6899762946665674541.correct : P6899762946665674541.Spec := by
  intro n
  simp only [A400572, Nat.add_sub_cancel]

end A400572

/-! ## A400572.P10121859277618619909

`∩[A006093(n+1), A014613(n+1)]+1`
-/

namespace A400572.P10121859277618619909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A400572.P10121859277618619909

namespace A400572

/-- `∩[A006093(n+1), A014613(n+1)]+1` -/
def P10121859277618619909.Spec : Prop :=
  ∀ n, (P10121859277618619909.a n : ℤ) = A400572 (n + 1)

end A400572

/-! ## A400572.P16681178270880630801

`A076565(∩[A005097(n+1), A014612(n+1)])`
-/

namespace A400572.P16681178270880630801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A400572.P16681178270880630801

namespace A400572

/-- `A076565(∩[A005097(n+1), A014612(n+1)])` -/
def P16681178270880630801.Spec : Prop :=
  ∀ n, P16681178270880630801.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P5792128682693179876

`record[A014963(A014613(n+1)+1)]`
-/

namespace A400572.P5792128682693179876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014613 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400572.P5792128682693179876

namespace A400572

/-- `record[A014963(A014613(n+1)+1)]` -/
def P5792128682693179876.Spec : Prop :=
  ∀ n, P5792128682693179876.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P3711783291315883274

`record[A061397(1+A014613(n+1))]`
-/

namespace A400572.P3711783291315883274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (1 + A014613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400572.P3711783291315883274

namespace A400572

/-- `record[A061397(1+A014613(n+1))]` -/
def P3711783291315883274.Spec : Prop :=
  ∀ n, P3711783291315883274.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P3853561269189319031

`record[A064916(A014613(n+1)+1)]`
-/

namespace A400572.P3853561269189319031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064916 (A014613 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400572.P3853561269189319031

namespace A400572

/-- `record[A064916(A014613(n+1)+1)]` -/
def P3853561269189319031.Spec : Prop :=
  ∀ n, P3853561269189319031.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P9611487853078633573

`record[A078701(A014613(n+1)+1)]`
-/

namespace A400572.P9611487853078633573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A014613 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400572.P9611487853078633573

namespace A400572

/-- `record[A078701(A014613(n+1)+1)]` -/
def P9611487853078633573.Spec : Prop :=
  ∀ n, P9611487853078633573.a n = A400572 (n + 1)

end A400572

/-! ## A400572.P8646068797441947900

`record[A106492(A014613(n+1)+1)]`
-/

namespace A400572.P8646068797441947900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106492 (A014613 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400572.P8646068797441947900

namespace A400572

/-- `record[A106492(A014613(n+1)+1)]` -/
def P8646068797441947900.Spec : Prop :=
  ∀ n, P8646068797441947900.a n = A400572 (n + 1)

end A400572

/-!
# A400573: Smallest prime p such that lpf(p*R(p)) is the n-th prime, where R(p) is the digit reversal of p.

The programs for A400573, there is no canonical definition to state claims against.
-/

/-! ## A400573.P5486513290957125365

`A304713(A029963(n+1)+2)`
-/

namespace A400573.P5486513290957125365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (A029963 (n + 1) + 2).toNat

end

end A400573.P5486513290957125365

/-! ## A400573.P12400280354302795582

`record[A166333((n+1)^A008327(n))]`
-/

namespace A400573.P12400280354302795582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A008327 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400573.P12400280354302795582

/-! ## A400573.P13097356923712791703

`record[A166333((n+1)^A133687(n))]`
-/

namespace A400573.P13097356923712791703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A133687 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400573.P13097356923712791703

/-! ## A400573.P16362490739650990965

`record[A166333((n+1)^A333159(n))]`
-/

namespace A400573.P16362490739650990965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A333159 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400573.P16362490739650990965

/-!
# A400575: a(n) = (1/n) * Sum_{k=0..n-1} binomial(n+k-1,k) * binomial(n,n-k-1) * n^k.

The programs for A400575, the canonical program `A400575.P15212467629946375614` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400575 has offset 1).

The definition of A400575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400575.P15212467629946375614

`∑{#}[n, C(n+1+#-1, 2*#)*A000108(#)*(n+1)^#]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400575

/-- `∑{#}[n, C(n+1+#-1, 2*#)*A000108(#)*(n+1)^#]` -/
def P15212467629946375614.Spec : Prop :=
  ∀ n, P15212467629946375614.a n = A400575 (n + 1)

theorem P15212467629946375614.correct : P15212467629946375614.Spec := by
  intro n
  simp only [A400575, Nat.add_sub_cancel]

end A400575

/-! ## A400575.P13440753911112778257

`1/(n+1)*∑{#}[n, C(n+1+#-1, #)*C(n+1, n+1-#-1)*(n+1)^#]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400575.P13440753911112778257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose ((n + 1 + k : ℤ) - 1).toNat k * Nat.choose (n + 1) ((n + 1 : ℤ) - (k : ℤ) - 1).toNat * (n + 1) ^ k : ℕ) : ℚ)

end

end A400575.P13440753911112778257

namespace A400575

/-- `1/(n+1)*∑{#}[n, C(n+1+#-1, #)*C(n+1, n+1-#-1)*(n+1)^#]` -/
def P13440753911112778257.Spec : Prop :=
  ∀ n, P13440753911112778257.a n = (A400575 (n + 1) : ℚ)

end A400575

/-! ## A400575.P15718190830617329721

`A107702(A056220(n+1))`
-/

namespace A400575.P15718190830617329721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A056220 (n + 1)).toNat

end

end A400575.P15718190830617329721

namespace A400575

/-- `A107702(A056220(n+1))` -/
def P15718190830617329721.Spec : Prop :=
  ∀ n, P15718190830617329721.a n = A400575 (n + 1)

end A400575

/-! ## A400575.P6668550351813550520

`A107702(eq[1, A316524(n+1)])`
-/

namespace A400575.P6668550351813550520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A400575.P6668550351813550520

namespace A400575

/-- `A107702(eq[1, A316524(n+1)])` -/
def P6668550351813550520.Spec : Prop :=
  ∀ n, P6668550351813550520.a n = A400575 (n + 1)

end A400575

/-! ## A400575.P18397916220374903527

`A107702(A000384(n+1)+n)`
-/

namespace A400575.P18397916220374903527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A000384 (n + 1) + (n : ℤ)).toNat

end

end A400575.P18397916220374903527

namespace A400575

/-- `A107702(A000384(n+1)+n)` -/
def P18397916220374903527.Spec : Prop :=
  ∀ n, P18397916220374903527.a n = A400575 (n + 1)

end A400575

/-!
# A400576: a(n) = (1/n) * Sum_{k=0..n-1} binomial(n+k-1,k) * binomial(n^2,n-k-1).

The programs for A400576, the canonical program `A400576.P7057297574492566454` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400576 has offset 1).

The definition of A400576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400576.P7057297574492566454

`1/(n+1)*∑{#}[n, C(n+1+#-1, #)*C((n+1)², n+1-#-1)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400576

/-- `1/(n+1)*∑{#}[n, C(n+1+#-1, #)*C((n+1)², n+1-#-1)]` -/
def P7057297574492566454.Spec : Prop :=
  ∀ n, P7057297574492566454.a n = (A400576 (n + 1) : ℚ)

end A400576

/-!
# A400578: Twin primes equal to the sum of the first k twin primes (represented as the list 3, 5, 5, 7, 11, 13, ...) for some k.

The programs for A400578, there is no canonical definition to state claims against.
-/

/-! ## A400578.P11735493175130540757

`∩[∑[A077800(n+1)], A001097(n+1)]`
-/

namespace A400578.P11735493175130540757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A400578.P11735493175130540757

/-! ## A400578.P13320686367546062794

`A105792(A122515(n+1))`
-/

namespace A400578.P13320686367546062794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105792 (A122515 (n + 1)).toNat

end

end A400578.P13320686367546062794

/-! ## A400578.P17383857357646752864

`A006984(A400738(n+1))`
-/

namespace A400578.P17383857357646752864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A400738 (n + 1)).toNat

end

end A400578.P17383857357646752864

/-!
# A400581: Increasingly isolated totient numbers.

The programs for A400581, there is no canonical definition to state claims against.
-/

/-! ## A400581.P12459105575296011481

`A005843(A047778(n+1)-A081403(n+1))`
-/

namespace A400581.P12459105575296011481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047778 (n + 1) - A081403 (n + 1)).toNat

end

end A400581.P12459105575296011481

/-!
# A400582: Convolution of the number of dissections of a convex (n+2)-gon into triangles and quadrilaterals by nonintersecting diagonals (A001002).

The programs for A400582, there is no canonical definition to state claims against.
-/

/-! ## A400582.P16833061550417265452

`A216200(A150193(n))`
-/

namespace A400582.P16833061550417265452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216200 (A150193 n).toNat

end

end A400582.P16833061550417265452

/-! ## A400582.P6815281254301915339

`A084510(A178594(n+1))`
-/

namespace A400582.P6815281254301915339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084510 (A178594 (n + 1)).toNat

end

end A400582.P6815281254301915339

/-! ## A400582.P9243987911769145090

`A076885(A150398(n)+3)`
-/

namespace A400582.P9243987911769145090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150398 n + 3).toNat

end

end A400582.P9243987911769145090

/-!
# A400585: a(n) = Sum_{d|n, n/d odd} binomial(d, 2).

The programs for A400585, the canonical program `A400585.P2189131603130017646` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400585 has offset 1).

The definition of A400585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400585.P2189131603130017646

`∑{d}[n+1, A006519(#)*A359366((n+1)/#-1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A400585

/-- `∑{d}[n+1, A006519(#)*A359366((n+1)/#-1)]` -/
def P2189131603130017646.Spec : Prop :=
  ∀ n, P2189131603130017646.a n = A400585 (n + 1)

theorem P2189131603130017646.correct : P2189131603130017646.Spec := by
  intro n
  simp only [A400585, Nat.add_sub_cancel]

end A400585

/-! ## A400585.P8199772954995124886

`A069153(n+1)-A069153(gcd(floor((n+1)/2), n+1))`
-/

namespace A400585.P8199772954995124886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) - A069153 (Int.gcd ⌊(n + 1 : ℚ) / 2⌋ (n + 1 : ℤ))

end

end A400585.P8199772954995124886

namespace A400585

/-- `A069153(n+1)-A069153(gcd(floor((n+1)/2), n+1))` -/
def P8199772954995124886.Spec : Prop :=
  ∀ n, P8199772954995124886.a n = A400585 (n + 1)

end A400585

/-! ## A400585.P332137613376176840

`∑{d}[n+1, A000217(#-1)*A059841((n+1)/#-1)]`
-/

namespace A400585.P332137613376176840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (d - 1) * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A400585.P332137613376176840

namespace A400585

/-- `∑{d}[n+1, A000217(#-1)*A059841((n+1)/#-1)]` -/
def P332137613376176840.Spec : Prop :=
  ∀ n, P332137613376176840.a n = A400585 (n + 1)

end A400585

/-! ## A400585.P8558176161535178569

`A079249(2*(n+1))-A079249(n+1)`
-/

namespace A400585.P8558176161535178569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079249 (2 * (n + 1)) - A079249 (n + 1)

end

end A400585.P8558176161535178569

namespace A400585

/-- `A079249(2*(n+1))-A079249(n+1)` -/
def P8558176161535178569.Spec : Prop :=
  ∀ n, P8558176161535178569.a n = A400585 (n + 1)

end A400585

/-! ## A400585.P6221901789310602053

`A374214(A381813(3*(n+1)))+∑[n]`
-/

namespace A400585.P6221901789310602053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374214 (A381813 (3 * (n + 1))).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A400585.P6221901789310602053

namespace A400585

/-- `A374214(A381813(3*(n+1)))+∑[n]` -/
def P6221901789310602053.Spec : Prop :=
  ∀ n, P6221901789310602053.a n = A400585 (n + 1)

end A400585

/-!
# A400587: Numbers k such that A400531(k) = 1; k such that chi_{k,-1}(-1) = 1, where chi_{k,-1} is the Dirichlet character modulo k with label -1 in the Conrey labeling system.

The programs for A400587, the canonical program `A400587.P17836166204790379892` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400587 has offset 1).

The definition of A400587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400587.P17836166204790379892

`lt[0, A400531(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A400587

/-- `lt[0, A400531(n+1)]+1` -/
def P17836166204790379892.Spec : Prop :=
  ∀ n, (P17836166204790379892.a n : ℤ) = A400587 (n + 1)

theorem P17836166204790379892.correct : P17836166204790379892.Spec := by
  intro n
  simp only [A400587, Nat.add_sub_cancel]

end A400587

/-! ## A400587.P9970229509534046014

`lt[0, A008836(A337910(n+1))]+1`
-/

namespace A400587.P9970229509534046014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A337910 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400587.P9970229509534046014

namespace A400587

/-- `lt[0, A008836(A337910(n+1))]+1` -/
def P9970229509534046014.Spec : Prop :=
  ∀ n, (P9970229509534046014.a n : ℤ) = A400587 (n + 1)

end A400587

/-! ## A400587.P15830182143604174195

`record[A273943((n+1)*(A400531(n+1)+1))]`
-/

namespace A400587.P15830182143604174195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ((n + 1 : ℤ) * (A400531 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400587.P15830182143604174195

namespace A400587

/-- `record[A273943((n+1)*(A400531(n+1)+1))]` -/
def P15830182143604174195.Spec : Prop :=
  ∀ n, P15830182143604174195.a n = A400587 (n + 1)

end A400587

/-! ## A400587.P5825218208356043602

`eq[1, A057077(n*(2-n%2)-A055631(n+1))]+1`
-/

namespace A400587.P5825218208356043602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 ((n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) - A055631 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400587.P5825218208356043602

namespace A400587

/-- `eq[1, A057077(n*(2-n%2)-A055631(n+1))]+1` -/
def P5825218208356043602.Spec : Prop :=
  ∀ n, (P5825218208356043602.a n : ℤ) = A400587 (n + 1)

end A400587

/-! ## A400587.P17987579298387524315

`record[A008619(2*n+1)*A400531(n+1)]`
-/

namespace A400587.P17987579298387524315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n + 1) * A400531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400587.P17987579298387524315

namespace A400587

/-- `record[A008619(2*n+1)*A400531(n+1)]` -/
def P17987579298387524315.Spec : Prop :=
  ∀ n, P17987579298387524315.a n = A400587 (n + 1)

end A400587

/-! ## A400587.P2951120461385818128

`record[A400531(n+1)/A333647(n)*A333680(n)]`
-/

namespace A400587.P2951120461385818128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400531 (n + 1) : ℚ) / (A333647 n : ℚ) * (A333680 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400587.P2951120461385818128

namespace A400587

/-- `record[A400531(n+1)/A333647(n)*A333680(n)]` -/
def P2951120461385818128.Spec : Prop :=
  ∀ n, P2951120461385818128.a n = (A400587 (n + 1) : ℚ)

end A400587

/-!
# A400588: Numbers k such that A400531(k) = -1; k such that chi_{k,-1}(-1) = -1, where chi_{k,-1} is the Dirichlet character modulo k with label -1 in the Conrey labeling system.

The programs for A400588, the canonical program `A400588.P12254434300597564376` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400588 has offset 1).

The definition of A400588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400588.P12254434300597564376

`comp[A400587(n+1)-2]+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A400588

/-- `comp[A400587(n+1)-2]+2` -/
def P12254434300597564376.Spec : Prop :=
  ∀ n, (P12254434300597564376.a n : ℤ) = A400588 (n + 1)

theorem P12254434300597564376.correct : P12254434300597564376.Spec := by
  intro n
  simp only [A400588, Nat.add_sub_cancel]

end A400588

/-! ## A400588.P11328028423161832273

`lt[A400531(n+1), 0]+1`
-/

namespace A400588.P11328028423161832273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400531 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400588.P11328028423161832273

namespace A400588

/-- `lt[A400531(n+1), 0]+1` -/
def P11328028423161832273.Spec : Prop :=
  ∀ n, (P11328028423161832273.a n : ℤ) = A400588 (n + 1)

end A400588

/-! ## A400588.P3211731497685880549

`lt[A008836(A337910(n+1)), 0]+1`
-/

namespace A400588.P3211731497685880549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A337910 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400588.P3211731497685880549

namespace A400588

/-- `lt[A008836(A337910(n+1)), 0]+1` -/
def P3211731497685880549.Spec : Prop :=
  ∀ n, (P3211731497685880549.a n : ℤ) = A400588 (n + 1)

end A400588

/-!
# A400589: E.g.f. A(x) satisfies A(x) = 1/(1 - x*A(x)^(x*A(x))).

The programs for A400589, there is no canonical definition to state claims against.
-/

/-! ## A400589.P16085428330130682114

`A084728(A204686(n))`
-/

namespace A400589.P16085428330130682114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084728 (A204686 n).toNat

end

end A400589.P16085428330130682114

/-! ## A400589.P5980471734005833663

`A028310(n*A000699(n))`
-/

namespace A400589.P5980471734005833663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A000699 n).toNat

end

end A400589.P5980471734005833663

/-!
# A400590: E.g.f. A(x) satisfies A(x) = 1/(1 - x*A(x)^(x*A(x)^2)).

The programs for A400590, there is no canonical definition to state claims against.
-/

/-! ## A400590.P11409071557106594293

`A013939(A368951(n))+1`
-/

namespace A400590.P11409071557106594293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A368951 n).toNat + 1

end

end A400590.P11409071557106594293

/-! ## A400590.P1982474875361806554

`A002260(A048143(n))*A165522(n)`
-/

namespace A400590.P1982474875361806554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A048143 n).toNat * A165522 n

end

end A400590.P1982474875361806554

/-!
# A400592: E.g.f. A(x) satisfies A(x) = 1/( 1 - x*exp( x*A(x)^2*( exp(A(x)-1)-1 ) ) ).

The programs for A400592, there is no canonical definition to state claims against.
-/

/-! ## A400592.P8825839059343179970

`A003990(ceil(A217900(n)/2))`
-/

namespace A400592.P8825839059343179970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 ⌈(A217900 n : ℚ) / 2⌉.toNat

end

end A400592.P8825839059343179970

/-! ## A400592.P2123072807460703877

`A186101(A057500(n+1)+A001710(n))`
-/

namespace A400592.P2123072807460703877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (A057500 (n + 1) + A001710 n).toNat

end

end A400592.P2123072807460703877

/-!
# A400593: Squares visited by a chess king moving on the square spiral, always moving to an adjacent unvisited square whose number has the greatest prime factor; ties are resolved by choosing the lowest number.

The programs for A400593, there is no canonical definition to state claims against.
-/

/-! ## A400593.P14196249890450349292

`A069894(n)-A347042(record[or(1, 4*(1-n)^4)])`
-/

namespace A400593.P14196249890450349292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * (1 - (n : ℤ)) ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A347042 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400593.P14196249890450349292

/-! ## A400593.P6861003251249616215

`A069894(n)-A347042(record[xor(1, 4*(1-n)^4)])`
-/

namespace A400593.P6861003251249616215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * (1 - (n : ℤ)) ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A347042 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400593.P6861003251249616215

/-! ## A400593.P2281068747120238197

`or(A006137(n), A303945(A015631(n+1)))`
-/

namespace A400593.P2281068747120238197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006137 n) (A303945 (A015631 (n + 1)).toNat)

end

end A400593.P2281068747120238197

/-!
# A400594: Maximum number of items among which exactly two defectives can always be identified in at most n adaptive tests, each returning the number of defectives in a selected subset.

The programs for A400594, there is no canonical definition to state claims against.
-/

/-! ## A400594.P10610582969678639984

`row(round(π^(n+1)/(n+6)))+1`
-/

namespace A400594.P10610582969678639984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.roundAway (Real.pi ^ (n + 1) / (n + 6 : ℝ))).toNat + 1

end

end A400594.P10610582969678639984

/-! ## A400594.P17390592774379286493

`floor((4+sqrt(∑[n*A002026(n+1)]))/2)`
-/

namespace A400594.P17390592774379286493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 + Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)) / 2⌋

end

end A400594.P17390592774379286493

/-! ## A400594.P2699066171768626242

`A086161(A339610(n+1))`
-/

namespace A400594.P2699066171768626242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A339610 (n + 1)).toNat

end

end A400594.P2699066171768626242

/-! ## A400594.P16647874643648957282

`A226721(A228645(n+1))`
-/

namespace A400594.P16647874643648957282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (A228645 (n + 1)).toNat

end

end A400594.P16647874643648957282

/-! ## A400594.P7066489056392819849

`A104103(A369289(n+1))`
-/

namespace A400594.P7066489056392819849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A369289 (n + 1)).toNat

end

end A400594.P7066489056392819849

/-!
# A400595: Largest m such that one defective in each of two disjoint m-item sets can always be identified in at most n adaptive tests, each returning the number of defectives in a selected subset.

The programs for A400595, there is no canonical definition to state claims against.
-/

/-! ## A400595.P6103464112699428381

`round(sqrt(A202900(n)))`
-/

namespace A400595.P6103464112699428381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A202900 n : ℝ))

end

end A400595.P6103464112699428381

/-! ## A400595.P13708869802356915533

`row(Δ[A143013(n)])`
-/

namespace A400595.P13708869802356915533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (f1 (n + 1) - f1 n).toNat

end

end A400595.P13708869802356915533

/-! ## A400595.P1293044354467360552

`row(record[A246437(n)])`
-/

namespace A400595.P1293044354467360552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A400595.P1293044354467360552

/-! ## A400595.P2177451955872701680

`row(A113682(n)+1)`
-/

namespace A400595.P2177451955872701680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A113682 n + 1).toNat

end

end A400595.P2177451955872701680

/-! ## A400595.P10510507655810937077

`row(2*A091190(n))`
-/

namespace A400595.P10510507655810937077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (2 * A091190 n).toNat

end

end A400595.P10510507655810937077

/-!
# A400596: Squares visited by a chess king moving on the square spiral, always moving to an adjacent unvisited square whose number has the fewest distinct prime factors; ties are resolved by choosing the lowest number.

The programs for A400596, there is no canonical definition to state claims against.
-/

/-! ## A400596.P12405630856277879445

`eq[A027907(n), A285175(n+1)]+1`
-/

namespace A400596.P12405630856277879445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A400596.P12405630856277879445

