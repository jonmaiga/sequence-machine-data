import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A394110: a(n) = binomial(3*n, n)*(7*n+3)/((n+1)*(2*n+1)).

The programs for A394110, the canonical program `A394110.P1967582314872625174` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394110 has offset 0).

The definition of A394110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394110.P1967582314872625174

`2*A006013(n)+A001764(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394110

/-- `2*A006013(n)+A001764(n)` -/
def P1967582314872625174.Spec : Prop :=
  ∀ n, P1967582314872625174.a n = A394110 n

theorem P1967582314872625174.correct : P1967582314872625174.Spec := by
  intro n
  simp only [A394110]

end A394110

/-! ## A394110.P867640793014436239

`C(3*n, n)*(7*n+3)/((n+1)*(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394110.P867640793014436239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * (7 * n + 3) : ℚ) / ((n + 1) * (2 * n + 1) : ℚ)

end

end A394110.P867640793014436239

namespace A394110

/-- `C(3*n, n)*(7*n+3)/((n+1)*(2*n+1))` -/
def P867640793014436239.Spec : Prop :=
  ∀ n, P867640793014436239.a n = (A394110 n : ℚ)

end A394110

/-! ## A394110.P2907707484972359177

`A007226(n)+A006013(n)`
-/

namespace A394110.P2907707484972359177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n + A006013 n

end

end A394110.P2907707484972359177

namespace A394110

/-- `A007226(n)+A006013(n)` -/
def P2907707484972359177.Spec : Prop :=
  ∀ n, P2907707484972359177.a n = A394110 n

end A394110

/-! ## A394110.P1951683886819337055

`2*A007226(n)-A001764(n)`
-/

namespace A394110.P1951683886819337055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007226 n - A001764 n

end

end A394110.P1951683886819337055

namespace A394110

/-- `2*A007226(n)-A001764(n)` -/
def P1951683886819337055.Spec : Prop :=
  ∀ n, P1951683886819337055.a n = A394110 n

end A394110

/-! ## A394110.P13793617860642488599

`A007226(n)+record[A092276(n+1)]`
-/

namespace A394110.P13793617860642488599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A394110.P13793617860642488599

namespace A394110

/-- `A007226(n)+record[A092276(n+1)]` -/
def P13793617860642488599.Spec : Prop :=
  ∀ n, P13793617860642488599.a n = A394110 n

end A394110

/-! ## A394110.P15594442058219966943

`A116637(2*n+1)+A001764(n)`
-/

namespace A394110.P15594442058219966943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (2 * n + 1) + A001764 n

end

end A394110.P15594442058219966943

namespace A394110

/-- `A116637(2*n+1)+A001764(n)` -/
def P15594442058219966943.Spec : Prop :=
  ∀ n, P15594442058219966943.a n = A394110 n

end A394110

/-! ## A394110.P2617568280188184682

`A116637(2*n+1)+A047749(2*n)`
-/

namespace A394110.P2617568280188184682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (2 * n + 1) + A047749 (2 * n)

end

end A394110.P2617568280188184682

namespace A394110

/-- `A116637(2*n+1)+A047749(2*n)` -/
def P2617568280188184682.Spec : Prop :=
  ∀ n, P2617568280188184682.a n = A394110 n

end A394110

/-!
# A394111: a(n) = binomial(3*n, n)*(5*n+3)/((n+1)*(2*n+1)).

The programs for A394111, the canonical program `A394111.P11665560195545579973` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394111 has offset 0).

The definition of A394111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394111.P11665560195545579973

`A006013(n)+2*A001764(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394111

/-- `A006013(n)+2*A001764(n)` -/
def P11665560195545579973.Spec : Prop :=
  ∀ n, P11665560195545579973.a n = A394111 n

theorem P11665560195545579973.correct : P11665560195545579973.Spec := by
  intro n
  simp only [A394111]

end A394111

/-! ## A394111.P12443096449337764015

`C(3*n, n)*(5*n+3)/((n+1)*(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394111.P12443096449337764015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * (5 * n + 3) : ℚ) / ((n + 1) * (2 * n + 1) : ℚ)

end

end A394111.P12443096449337764015

namespace A394111

/-- `C(3*n, n)*(5*n+3)/((n+1)*(2*n+1))` -/
def P12443096449337764015.Spec : Prop :=
  ∀ n, P12443096449337764015.a n = (A394111 n : ℚ)

end A394111

/-! ## A394111.P11928969749816437392

`(5-2/(n+1))*A001764(n)`
-/

namespace A394111.P11928969749816437392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - 2 / (n + 1 : ℚ)) * (A001764 n : ℚ)

end

end A394111.P11928969749816437392

namespace A394111

/-- `(5-2/(n+1))*A001764(n)` -/
def P11928969749816437392.Spec : Prop :=
  ∀ n, P11928969749816437392.a n = (A394111 n : ℚ)

end A394111

/-! ## A394111.P14044657030417813457

`((5*n+1)/2+1)*A000139(n)`
-/

namespace A394111.P14044657030417813457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n + 1 : ℚ) / 2 + 1) * (A000139 n : ℚ)

end

end A394111.P14044657030417813457

namespace A394111

/-- `((5*n+1)/2+1)*A000139(n)` -/
def P14044657030417813457.Spec : Prop :=
  ∀ n, P14044657030417813457.a n = (A394111 n : ℚ)

end A394111

/-! ## A394111.P6686602836354690490

`A007226(n)+A001764(n)`
-/

namespace A394111.P6686602836354690490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n + A001764 n

end

end A394111.P6686602836354690490

namespace A394111

/-- `A007226(n)+A001764(n)` -/
def P6686602836354690490.Spec : Prop :=
  ∀ n, P6686602836354690490.a n = A394111 n

end A394111

/-! ## A394111.P5190047157936688594

`A073147(∑[n])+A007226(n)`
-/

namespace A394111.P5190047157936688594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (∑ j ∈ Finset.range (n + 1), f1 j) + A007226 n

end

end A394111.P5190047157936688594

namespace A394111

/-- `A073147(∑[n])+A007226(n)` -/
def P5190047157936688594.Spec : Prop :=
  ∀ n, P5190047157936688594.a n = A394111 n

end A394111

/-! ## A394111.P4379185696959867285

`A110616(∑[n])+A007226(n)`
-/

namespace A394111.P4379185696959867285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (∑ j ∈ Finset.range (n + 1), f1 j) + A007226 n

end

end A394111.P4379185696959867285

namespace A394111

/-- `A110616(∑[n])+A007226(n)` -/
def P4379185696959867285.Spec : Prop :=
  ∀ n, P4379185696959867285.a n = A394111 n

end A394111

/-! ## A394111.P1857137383243152124

`A394978(n+1)-A001764(n)`
-/

namespace A394111.P1857137383243152124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394978 (n + 1) - A001764 n

end

end A394111.P1857137383243152124

namespace A394111

/-- `A394978(n+1)-A001764(n)` -/
def P1857137383243152124.Spec : Prop :=
  ∀ n, P1857137383243152124.a n = A394111 n

end A394111

/-! ## A394111.P14563111530200032952

`A127898(C(n, 2))+A007226(n)`
-/

namespace A394111.P14563111530200032952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (Nat.choose n 2) + A007226 n

end

end A394111.P14563111530200032952

namespace A394111

/-- `A127898(C(n, 2))+A007226(n)` -/
def P14563111530200032952.Spec : Prop :=
  ∀ n, P14563111530200032952.a n = A394111 n

end A394111

/-! ## A394111.P9178130012322900190

`A116637(A004277(n))+A073148(∑[n])`
-/

namespace A394111.P9178130012322900190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A004277 n).toNat + A073148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394111.P9178130012322900190

namespace A394111

/-- `A116637(A004277(n))+A073148(∑[n])` -/
def P9178130012322900190.Spec : Prop :=
  ∀ n, P9178130012322900190.a n = A394111 n

end A394111

/-! ## A394111.P11631057371234795520

`A007857(n+1)+A001764(n)+A000108(n)`
-/

namespace A394111.P11631057371234795520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007857 (n + 1) + (A001764 n + A000108 n)

end

end A394111.P11631057371234795520

namespace A394111

/-- `A007857(n+1)+A001764(n)+A000108(n)` -/
def P11631057371234795520.Spec : Prop :=
  ∀ n, P11631057371234795520.a n = A394111 n

end A394111

/-!
# A394112: a(n) = A000108(n-1)+A007852(n).

The programs for A394112, the canonical program `A394112.P7582498751835381020` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394112 has offset 1).

The definition of A394112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394112.P7582498751835381020

`A000108(n)+A007852(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A394112

/-- `A000108(n)+A007852(n+1)` -/
def P7582498751835381020.Spec : Prop :=
  ∀ n, P7582498751835381020.a n = A394112 (n + 1)

theorem P7582498751835381020.correct : P7582498751835381020.Spec := by
  intro n
  simp only [A394112, Nat.add_sub_cancel]

end A394112

/-! ## A394112.P2851336059898190373

`A007852(n+1)+C(2*n, n)/(n+1)`
-/

namespace A394112.P2851336059898190373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007852 (n + 1) : ℚ) + (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A394112.P2851336059898190373

namespace A394112

/-- `A007852(n+1)+C(2*n, n)/(n+1)` -/
def P2851336059898190373.Spec : Prop :=
  ∀ n, P2851336059898190373.a n = (A394112 (n + 1) : ℚ)

end A394112

/-! ## A394112.P14773723183590566751

`A007852(n+1)+A000108(n)`
-/

namespace A394112.P14773723183590566751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + A000108 n

end

end A394112.P14773723183590566751

namespace A394112

/-- `A007852(n+1)+A000108(n)` -/
def P14773723183590566751.Spec : Prop :=
  ∀ n, P14773723183590566751.a n = A394112 (n + 1)

theorem P14773723183590566751.correct : P14773723183590566751.Spec := by
  intro n
  simp only [A394112, Nat.add_sub_cancel, A394112.P14773723183590566751.a, A394112.P7582498751835381020.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A394112

/-! ## A394112.P5917041618927935048

`A007852(n+1)+abs(A168491(n))`
-/

namespace A394112.P5917041618927935048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + |A168491 n|

end

end A394112.P5917041618927935048

namespace A394112

/-- `A007852(n+1)+abs(A168491(n))` -/
def P5917041618927935048.Spec : Prop :=
  ∀ n, P5917041618927935048.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P2176442764967097344

`A007852(n+1)+Δ[A155587(n)]`
-/

namespace A394112.P2176442764967097344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + (f1 (n + 1) - f1 n)

end

end A394112.P2176442764967097344

namespace A394112

/-- `A007852(n+1)+Δ[A155587(n)]` -/
def P2176442764967097344.Spec : Prop :=
  ∀ n, P2176442764967097344.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P7833838970639042125

`A120588(n+1)+A007852(n+1)`
-/

namespace A394112.P7833838970639042125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + A007852 (n + 1)

end

end A394112.P7833838970639042125

namespace A394112

/-- `A120588(n+1)+A007852(n+1)` -/
def P7833838970639042125.Spec : Prop :=
  ∀ n, P7833838970639042125.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P14544929880643017267

`A028303(2*n)+A007852(n+1)`
-/

namespace A394112.P14544929880643017267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) + A007852 (n + 1)

end

end A394112.P14544929880643017267

namespace A394112

/-- `A028303(2*n)+A007852(n+1)` -/
def P14544929880643017267.Spec : Prop :=
  ∀ n, P14544929880643017267.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P3412165230622235694

`A208355(2*n)+A007852(n+1)`
-/

namespace A394112.P3412165230622235694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) + A007852 (n + 1)

end

end A394112.P3412165230622235694

namespace A394112

/-- `A208355(2*n)+A007852(n+1)` -/
def P3412165230622235694.Spec : Prop :=
  ∀ n, P3412165230622235694.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P2369761445981649853

`A007852(n+1)+∑{#}[n, A053121(C(n+1, 2)+#)²]`
-/

namespace A394112.P2369761445981649853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + ∑ k ∈ Finset.range (f1 n + 1), A053121 (Nat.choose (n + 1) 2 + k) ^ 2

end

end A394112.P2369761445981649853

namespace A394112

/-- `A007852(n+1)+∑{#}[n, A053121(C(n+1, 2)+#)²]` -/
def P2369761445981649853.Spec : Prop :=
  ∀ n, P2369761445981649853.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P1131405045596123434

`A007852(n+1)+∑{#}[n, (-1)^#*A116395(C(n+1, 2)+#)]`
-/

namespace A394112.P1131405045596123434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A116395 (Nat.choose (n + 1) 2 + k)

end

end A394112.P1131405045596123434

namespace A394112

/-- `A007852(n+1)+∑{#}[n, (-1)^#*A116395(C(n+1, 2)+#)]` -/
def P1131405045596123434.Spec : Prop :=
  ∀ n, P1131405045596123434.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P16060782799771161420

`A039599(A000217(n))+A007852(n+1)`
-/

namespace A394112.P16060782799771161420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A000217 n).toNat + A007852 (n + 1)

end

end A394112.P16060782799771161420

namespace A394112

/-- `A039599(A000217(n))+A007852(n+1)` -/
def P16060782799771161420.Spec : Prop :=
  ∀ n, P16060782799771161420.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P13934860599347883370

`A007852(n+1)+A001700(n)-A162551(n)`
-/

namespace A394112.P13934860599347883370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + (A001700 n - A162551 n)

end

end A394112.P13934860599347883370

namespace A394112

/-- `A007852(n+1)+A001700(n)-A162551(n)` -/
def P13934860599347883370.Spec : Prop :=
  ∀ n, P13934860599347883370.a n = A394112 (n + 1)

end A394112

/-!
# A394113: G.f. A(x) satisfies A(x)^4-(x+1)*A(x)^3+4*x*A(x)^2-(x^2+x)*A(x)+x^2=0.

The programs for A394113, there is no canonical definition to state claims against.
-/

/-! ## A394113.P14518690336740529447

`A117448(Δ[A047009(n)])`
-/

namespace A394113.P14518690336740529447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (f1 (n + 1) - f1 n).toNat

end

end A394113.P14518690336740529447

/-! ## A394113.P3790907747346181461

`Δ[A109497(A000254(n)+6)]`
-/

namespace A394113.P3790907747346181461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A000254 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394113.P3790907747346181461

/-!
# A394114: G.f. A(x) satisfies A(x)^8-3*A(x)^7+(7x+3)*A(x)^6-(14x+1)*A(x)^5+(13x^2+8x)*A(x)^4-(14x^2+x)*A(x)^3+(7x^3+3x^2)*A(x)^2-3x^3*A(x)+x^4=0.

The programs for A394114, there is no canonical definition to state claims against.
-/

/-! ## A394114.P11232313196525457300

`∑[A045917(A132473(n))]`
-/

namespace A394114.P11232313196525457300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A132473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394114.P11232313196525457300

/-! ## A394114.P15601808201474982340

`∑[A111857(∑[A333093(n)])]`
-/

namespace A394114.P15601808201474982340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394114.P15601808201474982340

/-!
# A394115: G.f. A(x) satisfies A(x)^3+(2x-2)*A(x)^2+(1-x)*A(x)+x^2-x=0.

The programs for A394115, there is no canonical definition to state claims against.
-/

/-! ## A394115.P17744082617436650711

`col((row(n)²+2*col(n))*A369606(n))`
-/

namespace A394115.P17744082617436650711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol ((SequenceMachineLib.triRow n ^ 2 + 2 * SequenceMachineLib.triCol n : ℤ) * A369606 n).toNat

end

end A394115.P17744082617436650711

/-! ## A394115.P12083481472816659894

`A191989(A390853(n))`
-/

namespace A394115.P12083481472816659894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191989 (A390853 n).toNat

end

end A394115.P12083481472816659894

/-!
# A394116: G.f. A(x) satisfies A(x)^5-(2x+3)*A(x)^4+(7x+1)*A(x)^3-(4x^2+3x)*A(x)^2+3x^2*A(x)-x^3=0.

The programs for A394116, there is no canonical definition to state claims against.
-/

/-! ## A394116.P6393074931993497057

`A097471(A328281(n))`
-/

namespace A394116.P6393074931993497057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097471 (A328281 n).toNat

end

end A394116.P6393074931993497057

/-! ## A394116.P17567716304916241230

`A008617(A109318(n)+2)`
-/

namespace A394116.P17567716304916241230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A109318 n + 2).toNat

end

end A394116.P17567716304916241230

/-! ## A394116.P17803927686277334370

`A008617(xor(2, A109318(n)))`
-/

namespace A394116.P17803927686277334370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.xor 2 (A109318 n)).toNat

end

end A394116.P17803927686277334370

/-!
# A394117: G.f. A(x) satisfies A(x)^5+(2x-2)*A(x)^4+A(x)^3+(4x^2-2x)*A(x)^2+x^3=0.

The programs for A394117, there is no canonical definition to state claims against.
-/

/-! ## A394117.P228107969312298641

`A280639(A392207(n+1))+A243632(n)`
-/

namespace A394117.P228107969312298641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280639 (A392207 (n + 1)).toNat + A243632 n

end

end A394117.P228107969312298641

/-! ## A394117.P6304649919202127179

`A243632(n^A191523(n+1))`
-/

namespace A394117.P6304649919202127179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A191523 (n + 1) : ℤ))).toNat

end

end A394117.P6304649919202127179

/-! ## A394117.P9646655344687728008

`A243632(n)%record[A303433(n+2)]`
-/

namespace A394117.P9646655344687728008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303433 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243632 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A394117.P9646655344687728008

/-!
# A394118: G.f. A(x) satisfies A(x)^5-2*A(x)^4+(4x+1)*A(x)^3-5x*A(x)^2+(2x^2+x)*A(x)-x^2=0.

The programs for A394118, there is no canonical definition to state claims against.
-/

/-! ## A394118.P5466402923082086695

`A025480(A394128(n)+A394124(n))`
-/

namespace A394118.P5466402923082086695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A394128 n + A394124 n).toNat

end

end A394118.P5466402923082086695

/-! ## A394118.P14873387149333538186

`A026741(A394128(n)+A394124(n))`
-/

namespace A394118.P14873387149333538186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A394128 n + A394124 n).toNat

end

end A394118.P14873387149333538186

/-! ## A394118.P7294057455403941216

`A026741(A394143(n)+A394114(n))`
-/

namespace A394118.P7294057455403941216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A394143 n + A394114 n).toNat

end

end A394118.P7294057455403941216

/-!
# A394119: G.f. A(x) satisfies A(x)^4+(2x-1)*A(x)^3+(x^2+2x)*A(x)^2+(2x^2-x)*A(x)+x^2=0.

The programs for A394119, there is no canonical definition to state claims against.
-/

/-! ## A394119.P13382275028705874555

`A219537(n)%A226298(n)`
-/

namespace A394119.P13382275028705874555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219537 n) (A226298 n)

end

end A394119.P13382275028705874555

/-! ## A394119.P5194819547019992017

`∑{e}[A001022(n), A219537(#)]`
-/

namespace A394119.P5194819547019992017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A219537 (Nat.factorization (f1 n).natAbs p)

end

end A394119.P5194819547019992017

/-!
# A394120: G.f. A(x) satisfies A(x)^4 + (x-1)*A(x)^3 + 3*x*A(x)^2 + (x^2-x)*A(x) + x^2 = 0.

The programs for A394120, there is no canonical definition to state claims against.
-/

/-! ## A394120.P3772734219549335781

`A330558(A379087(n)+A000041(n))`
-/

namespace A394120.P3772734219549335781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A379087 n + A000041 n).toNat

end

end A394120.P3772734219549335781

/-! ## A394120.P17795801044210768340

`A330558(A379087(n)+A025047(n))`
-/

namespace A394120.P17795801044210768340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A379087 n + A025047 n).toNat

end

end A394120.P17795801044210768340

/-!
# A394121: G.f. A(x) satisfies A(x)^8-A(x)^7+7x*A(x)^6-4x*A(x)^5+13x^2*A(x)^4-4x^2*A(x)^3+7x^3*A(x)^2-x^3*A(x)+x^4=0.

The programs for A394121, there is no canonical definition to state claims against.
-/

/-! ## A394121.P12490990610770034429

`A397779(n*A000522(n))`
-/

namespace A394121.P12490990610770034429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397779 ((n : ℤ) * A000522 n).toNat

end

end A394121.P12490990610770034429

/-! ## A394121.P9109282690071749450

`A002264(A283162(2*n+1)+1)`
-/

namespace A394121.P9109282690071749450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A283162 (2 * n + 1) + 1).toNat

end

end A394121.P9109282690071749450

/-!
# A394122: G.f. A(x) satisfies A(x)^6-A(x)^5+5x*A(x)^4-(x^2+2x)*A(x)^3+5x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394122, there is no canonical definition to state claims against.
-/

/-! ## A394122.P1007487393043829266

`A057366(A056844(n+1)+1)`
-/

namespace A394122.P1007487393043829266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (A056844 (n + 1) + 1).toNat

end

end A394122.P1007487393043829266

/-! ## A394122.P18216433426396191671

`A004526(A320566(n)+A218927(n))`
-/

namespace A394122.P18216433426396191671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A320566 n + A218927 n).toNat

end

end A394122.P18216433426396191671

/-!
# A394123: G.f. A(x) satisfies A(x)^4-A(x)^3+4x*A(x)^2-x*A(x)+x^2=0.

The programs for A394123, there is no canonical definition to state claims against.
-/

/-! ## A394123.P3138235566902254877

`A005843(A394156(n))-A394135(n)`
-/

namespace A394123.P3138235566902254877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A394156 n).toNat - A394135 n

end

end A394123.P3138235566902254877

/-! ## A394123.P18415867420634202756

`A005843(A394149(n))-A394152(n)`
-/

namespace A394123.P18415867420634202756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A394149 n).toNat - A394152 n

end

end A394123.P18415867420634202756

/-!
# A394124: G.f. A(x) satisfies A(x)^6-A(x)^5+3x*A(x)^4-x*A(x)^3+3x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394124, there is no canonical definition to state claims against.
-/

/-! ## A394124.P12427726763521375219

`A394118(n)-A239705(A363541(n))`
-/

namespace A394124.P12427726763521375219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n - A239705 (A363541 n).toNat

end

end A394124.P12427726763521375219

/-! ## A394124.P7862608621744649313

`A394118(n)-A350847(A087712(n+1))`
-/

namespace A394124.P7862608621744649313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n - A350847 (A087712 (n + 1)).toNat

end

end A394124.P7862608621744649313

/-! ## A394124.P14007067314920883614

`A394118(n)-A010054(A132606(n+3))`
-/

namespace A394124.P14007067314920883614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n - A010054 (A132606 (n + 3)).toNat

end

end A394124.P14007067314920883614

/-!
# A394125: G.f. A(x) satisfies A(x)^6+A(x)^5-2x*A(x)^4-x*A(x)^3+(x^3+3x^2)*A(x)^2-3x^3*A(x)+x^4=0.

The programs for A394125, there is no canonical definition to state claims against.
-/

/-! ## A394125.P9224674960928682201

`A351596(A176856(n))`
-/

namespace A394125.P9224674960928682201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (A176856 n).toNat

end

end A394125.P9224674960928682201

/-! ## A394125.P18353427324747340784

`A059253(A121545(n)²)`
-/

namespace A394125.P18353427324747340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A121545 n ^ 2).toNat

end

end A394125.P18353427324747340784

/-!
# A394126: G.f. A(x) satisfies A(x)^6-3*A(x)^5+(x+3)*A(x)^4-(4x+1)*A(x)^3+4x*A(x)^2-x*A(x)+x^2=0.

The programs for A394126, there is no canonical definition to state claims against.
-/

/-! ## A394126.P8622759667697360310

`A014132(A391178(n))%A391168(n)`
-/

namespace A394126.P8622759667697360310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014132 (A391178 n).toNat) (A391168 n)

end

end A394126.P8622759667697360310

/-! ## A394126.P16921089046233745792

`A066339(A371483(n)+A018252(n+1))`
-/

namespace A394126.P16921089046233745792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A371483 n + A018252 (n + 1)).toNat

end

end A394126.P16921089046233745792

/-!
# A394127: G.f. A(x) satisfies A(x)^3+(x-2)*A(x)^2+(1-x)*A(x)+x^2-x=0.

The programs for A394127, there is no canonical definition to state claims against.
-/

/-! ## A394127.P10344970723245646419

`A098968(A187255(n))`
-/

namespace A394127.P10344970723245646419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 (A187255 n).toNat

end

end A394127.P10344970723245646419

/-! ## A394127.P9970352143482229169

`A008617(3*A109318(n))`
-/

namespace A394127.P9970352143482229169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (3 * A109318 n).toNat

end

end A394127.P9970352143482229169

/-!
# A394128: G.f. A(x) satisfies A(x)^6-3*A(x)^5+(x+3)*A(x)^4-(3x+1)*A(x)^3+(2x^2+2x)*A(x)^2-2x^2*A(x)+x^3=0.

The programs for A394128, there is no canonical definition to state claims against.
-/

/-! ## A394128.P17923656170173056651

`A394118(n)+A185284(n²+1)`
-/

namespace A394128.P17923656170173056651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n + A185284 (n ^ 2 + 1)

end

end A394128.P17923656170173056651

/-! ## A394128.P8041464564794531301

`A394118(n)+A239705(A363541(n))`
-/

namespace A394128.P8041464564794531301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n + A239705 (A363541 n).toNat

end

end A394128.P8041464564794531301

/-! ## A394128.P10061932464233401114

`A394118(n)+A350847(A087712(n+1))`
-/

namespace A394128.P10061932464233401114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n + A350847 (A087712 (n + 1)).toNat

end

end A394128.P10061932464233401114

/-!
# A394129: G.f. A(x) satisfies A(x)^5-A(x)^4+(1-3x)*A(x)^3+x*A(x)^2+(2x^2-x)*A(x)+x^3=0.

The programs for A394129, there is no canonical definition to state claims against.
-/

/-! ## A394129.P13336522910095337778

`A008615(A066099(3*n+2)+∑[A391302(n)])`
-/

namespace A394129.P13336522910095337778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A066099 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394129.P13336522910095337778

/-! ## A394129.P4410751370965095980

`A066339(Δ[n²]*a(n-1)*(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A394129.P4410751370965095980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A066339 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * a (n - 1) * (n + 1 : ℤ)).toNat

end

end A394129.P4410751370965095980

/-!
# A394130: G.f. A(x) satisfies A(x)^6-4*A(x)^5+(6x+4)*A(x)^4-(9x+1)*A(x)^3+(5x^2+3x)*A(x)^2-3x^2*A(x)+x^3=0.

The programs for A394130, there is no canonical definition to state claims against.
-/

/-! ## A394130.P9722966887134898406

`A005843(A394146(n))-A394157(n)`
-/

namespace A394130.P9722966887134898406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A394146 n).toNat - A394157 n

end

end A394130.P9722966887134898406

/-! ## A394130.P15012434162650835918

`∑[A289499(record[A111111(n)])]`
-/

namespace A394130.P15012434162650835918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289499 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394130.P15012434162650835918

/-!
# A394131: G.f. A(x) satisfies A(x)^5+A(x)^4+(5x-1)*A(x)^3+x*A(x)^2+(6x^2-x)*A(x)+x^3=0.

The programs for A394131, there is no canonical definition to state claims against.
-/

/-! ## A394131.P11685188021853489639

`A002264(∑[∑[A059231(n)]])`
-/

namespace A394131.P11685188021853489639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394131.P11685188021853489639

/-! ## A394131.P12993202552939543609

`A394141(n)+A341024(A100302(n))`
-/

namespace A394131.P12993202552939543609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394141 n + A341024 ((A100302 n).toNat + 84)

end

end A394131.P12993202552939543609

/-!
# A394132: G.f. A(x) satisfies A(x)^5+(x-2)*A(x)^4+(1-x)*A(x)^3+x*A(x)^2-x*A(x)+x^2=0.

The programs for A394132, there is no canonical definition to state claims against.
-/

/-! ## A394132.P5586682334553506632

`floor((A004526(A109318(n)+n)+1+n)/3)`
-/

namespace A394132.P5586682334553506632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004526 (A109318 n + (n : ℤ)).toNat + 1 + (n : ℤ) : ℚ) / 3⌋

end

end A394132.P5586682334553506632

/-! ## A394132.P12736001569096788200

`A004526(A042965(n+2)*A080635(n))`
-/

namespace A394132.P12736001569096788200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042965 (n + 2) * A080635 n).toNat

end

end A394132.P12736001569096788200

/-!
# A394133: G.f. A(x) satisfies A(x)^5-2*A(x)^4+(4x+1)*A(x)^3-(3x^2+3x)*A(x)^2+(x^3+3x^2)*A(x)-x^3=0.

The programs for A394133, there is no canonical definition to state claims against.
-/

/-! ## A394133.P14013545051618001770

`A127242(A271753(n+1)+A127238(2*n))`
-/

namespace A394133.P14013545051618001770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127242 (A271753 (n + 1) + A127238 (2 * n)).toNat

end

end A394133.P14013545051618001770

/-!
# A394134: G.f. A(x) satisfies A(x)^5-2A(x)^4+(2x+1)*A(x)^3-4x*A(x)^2+(x^2+x)*A(x)-x^2=0.

The programs for A394134, there is no canonical definition to state claims against.
-/

/-! ## A394134.P11577175616041108834

`A394143(n)-A085980(A005493(n))`
-/

namespace A394134.P11577175616041108834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394143 n - A085980 (A005493 n).toNat

end

end A394134.P11577175616041108834

/-! ## A394134.P14703987036188664726

`A394143(n)-A185036(A005043(n))`
-/

namespace A394134.P14703987036188664726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394143 n - A185036 (A005043 n).toNat

end

end A394134.P14703987036188664726

/-! ## A394134.P2257464249594795700

`A394143(n)-A177351(A020079(n))`
-/

namespace A394134.P2257464249594795700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394143 n - A177351 (A020079 n).toNat

end

end A394134.P2257464249594795700

/-!
# A394135: G.f. A(x) satisfies A(x)^4-2*A(x)^3+(1-4x)*A(x)^2-x^2=0.

The programs for A394135, there is no canonical definition to state claims against.
-/

/-! ## A394135.P11289684808025062865

`A005843(A394156(n))-A394123(n)`
-/

namespace A394135.P11289684808025062865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A394156 n).toNat - A394123 n

end

end A394135.P11289684808025062865

/-! ## A394135.P16333317495626108350

`A008615(A292388(n+1)+A006632(n+1))`
-/

namespace A394135.P16333317495626108350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A292388 (n + 1) + A006632 (n + 1)).toNat

end

end A394135.P16333317495626108350

/-!
# A394136: G.f. A(x) satisfies A(x)^3-2*A(x)^2+A(x)+x^2-x=0.

The programs for A394136, there is no canonical definition to state claims against.
-/

/-! ## A394136.P15464323401647936174

`A300763(A398243(n+2))`
-/

namespace A394136.P15464323401647936174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A398243 (n + 2)).toNat

end

end A394136.P15464323401647936174

/-! ## A394136.P1145077999033346205

`A008651(A150210(n+1))`
-/

namespace A394136.P1145077999033346205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A150210 (n + 1)).toNat

end

end A394136.P1145077999033346205

/-! ## A394136.P10850146362116568262

`A165190(A149466(n+1))`
-/

namespace A394136.P10850146362116568262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A149466 (n + 1)).toNat

end

end A394136.P10850146362116568262

/-!
# A394137: G.f. A(x) satisfies (1-x)*A(x)^3+(3x-2)*A(x)^2+(1-x)*A(x)+x^2-x=0.

The programs for A394137, there is no canonical definition to state claims against.
-/

/-! ## A394137.P1406549655784324800

`A127242(A000302(n)-A004526(n))`
-/

namespace A394137.P1406549655784324800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127242 (A000302 n - A004526 n).toNat

end

end A394137.P1406549655784324800

/-! ## A394137.P11109759028343268106

`A036234(A277033(n+1))-A000688(n+1)`
-/

namespace A394137.P11109759028343268106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A277033 (n + 1)).toNat - A000688 (n + 1)

end

end A394137.P11109759028343268106

/-! ## A394137.P15647956098496663812

`A036234(A277033(n+1))-A322453(n+1)`
-/

namespace A394137.P15647956098496663812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A277033 (n + 1)).toNat - A322453 (n + 1)

end

end A394137.P15647956098496663812

/-!
# A394138: G.f. A(x) satisfies A(x)^4+(2x-3)*A(x)^3+(3-4x)*A(x)^2+(x-1)*A(x)-x^2+x=0.

The programs for A394138, there is no canonical definition to state claims against.
-/

/-! ## A394138.P9879574978571493477

`A002265(A027710(n)+1)`
-/

namespace A394138.P9879574978571493477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A027710 n + 1).toNat

end

end A394138.P9879574978571493477

/-! ## A394138.P2077661346705334543

`floor((A056239(A355597(n+2))-2)/2)`
-/

namespace A394138.P2077661346705334543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056239 (A355597 (n + 2)).toNat - 2 : ℚ) / 2⌋

end

end A394138.P2077661346705334543

/-!
# A394139: G.f. A(x) satisfies (x-1)*A(x)^4+(-2x^2+3x-1)*A(x)^3+(-2x^2+3x)*A(x)^2-3x^2*A(x)+x^3=0.

The programs for A394139, there is no canonical definition to state claims against.
-/

/-! ## A394139.P2052058974285034594

`A126257(A397861(n)+A194640(n))`
-/

namespace A394139.P2052058974285034594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A397861 n + A194640 n).toNat

end

end A394139.P2052058974285034594

/-! ## A394139.P3435354809801038016

`A126257(A397861(n)+A333224(n))`
-/

namespace A394139.P3435354809801038016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A397861 n + A333224 n).toNat

end

end A394139.P3435354809801038016

/-! ## A394139.P4465974312939050066

`A316433(A335628(n)+A271513(n))`
-/

namespace A394139.P4465974312939050066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316433 (A335628 n + A271513 n).toNat

end

end A394139.P4465974312939050066

/-!
# A394140: G.f. A(x) satisfies (x+1)*A(x)^5-x*A(x)^4-(2x^2+x)*A(x)^3+(2x^3+3x^2)*A(x)^2-3x^3*A(x)+x^4=0.

The programs for A394140, there is no canonical definition to state claims against.
-/

/-! ## A394140.P804294621450175028

`A372511((n+1)!)-C(n, 5)`
-/

namespace A394140.P804294621450175028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 (Nat.factorial (n + 1)) - (Nat.choose n 5 : ℤ)

end

end A394140.P804294621450175028

/-! ## A394140.P6675358961201756062

`A098968(a(n-1)+4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A394140.P6675358961201756062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  A098968 (a (n - 1) + 4).toNat

end

end A394140.P6675358961201756062

/-!
# A394141: G.f. A(x) satisfies A(x)^5-2*A(x)^4+(2x+1)*A(x)^3-4x*A(x)^2+x*A(x)-x^2=0.

The programs for A394141, there is no canonical definition to state claims against.
-/

/-! ## A394141.P2519555563852663112

`A008676(4*A365879(n))`
-/

namespace A394141.P2519555563852663112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (4 * A365879 n).toNat

end

end A394141.P2519555563852663112

/-! ## A394141.P17296899933006311428

`A276797(A093637(2*n)+n)`
-/

namespace A394141.P17296899933006311428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A093637 (2 * n) + (n : ℤ)).toNat

end

end A394141.P17296899933006311428

/-!
# A394142: G.f. A(x) satisfies (x+1)*A(x)^5-(x+2)*A(x)^4+(2x^2+3x+1)*A(x)^3-(x^2+3x)*A(x)^2+3x^2*A(x)-x^3=0.

The programs for A394142, there is no canonical definition to state claims against.
-/

/-! ## A394142.P1457641034736861268

`Δ[A001462(A275557(n))]`
-/

namespace A394142.P1457641034736861268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A275557 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394142.P1457641034736861268

/-! ## A394142.P736453375319208288

`A230493(A026375(n+1))`
-/

namespace A394142.P736453375319208288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230493 (A026375 (n + 1)).toNat

end

end A394142.P736453375319208288

/-!
# A394143: G.f. A(x) satisfies A(x)^4-3*A(x)^3+(3-x)*A(x)^2-A(x)-x^2+x=0.

The programs for A394143, there is no canonical definition to state claims against.
-/

/-! ## A394143.P7429931197049644822

`A394134(n)+A085980(A005493(n))`
-/

namespace A394143.P7429931197049644822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394134 n + A085980 (A005493 n).toNat

end

end A394143.P7429931197049644822

/-! ## A394143.P16269609580023864289

`A394134(n)+A085980(A121964(n))`
-/

namespace A394143.P16269609580023864289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394134 n + A085980 (A121964 (n + 30)).toNat

end

end A394143.P16269609580023864289

/-! ## A394143.P2290590617718413515

`A394134(n)+A394092(A394121(n))`
-/

namespace A394143.P2290590617718413515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394134 n + A394092 (A394121 n).toNat

end

end A394143.P2290590617718413515

/-!
# A394144: G.f. A(x) satisfies (1-x)*A(x)^4+x*A(x)^3+(4x^2-2x)*A(x)^2+x^2*A(x)+x^3=0.

The programs for A394144, there is no canonical definition to state claims against.
-/

/-! ## A394144.P4450174776805122239

`A131146(A181066(n)-A281245(n))`
-/

namespace A394144.P4450174776805122239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131146 (A181066 n - A281245 n).toNat

end

end A394144.P4450174776805122239

/-! ## A394144.P7214563358522170210

`A131146(xor(A181066(n), A281245(n)))`
-/

namespace A394144.P7214563358522170210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131146 (Int.xor (A181066 n) (A281245 n)).toNat

end

end A394144.P7214563358522170210

/-! ## A394144.P3049999843783090975

`A181066(n)-A010054(A075645(3*n+4))`
-/

namespace A394144.P3049999843783090975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181066 n - A010054 (A075645 (3 * n + 4)).toNat

end

end A394144.P3049999843783090975

/-!
# A394145: G.f. A(x) satisfies A(x)^4-2*A(x)^3+x*A(x)^2+x*A(x)-x^2=0.

The programs for A394145, there is no canonical definition to state claims against.
-/

/-! ## A394145.P12146118515456996255

`A394116(n)+A085980(A005493(n))`
-/

namespace A394145.P12146118515456996255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394116 n + A085980 (A005493 n).toNat

end

end A394145.P12146118515456996255

/-! ## A394145.P12273531028395737638

`A394116(n)+A185036(A005043(n))`
-/

namespace A394145.P12273531028395737638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394116 n + A185036 (A005043 n).toNat

end

end A394145.P12273531028395737638

/-! ## A394145.P17730464620234313313

`A394116(n)+A177351(A020079(n))`
-/

namespace A394145.P17730464620234313313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394116 n + A177351 (A020079 n).toNat

end

end A394145.P17730464620234313313

/-!
# A394146: G.f. A(x) satisfies 3*A(x)^3-4*A(x)^2+(2x+1)*A(x)-x=0.

The programs for A394146, there is no canonical definition to state claims against.
-/

/-! ## A394146.P10697522168671361918

`A006370(A394157(n)+A394130(n))`
-/

namespace A394146.P10697522168671361918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A394157 n + A394130 n).toNat

end

end A394146.P10697522168671361918

/-! ## A394146.P10930785999912623367

`A056539(n*A057993(n))`
-/

namespace A394146.P10930785999912623367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 ((n : ℤ) * A057993 n).toNat

end

end A394146.P10930785999912623367

/-!
# A394147: G.f. A(x) satisfies 3*A(x)^3+(6x-2)*A(x)^2+x*A(x)+x^2=0.

The programs for A394147, there is no canonical definition to state claims against.
-/

/-! ## A394147.P6875418741041249423

`A008611(∑[A246563(n)²])`
-/

namespace A394147.P6875418741041249423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394147.P6875418741041249423

/-! ## A394147.P9259839266564248404

`A002266(A153298(n)+A072154(n))`
-/

namespace A394147.P9259839266564248404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A153298 n + A072154 n).toNat

end

end A394147.P9259839266564248404

/-!
# A394148: G.f. A(x) satisfies 3*A(x)^6-7*A(x)^5+(9x+5)*A(x)^4-(11x+1)*A(x)^3+(6x^2+3x)*A(x)^2-3x^2*A(x)+x^3=0.

The programs for A394148, there is no canonical definition to state claims against.
-/

/-! ## A394148.P7249143179261737786

`A067099(A004304(n)*2*(n+2))`
-/

namespace A394148.P7249143179261737786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (A004304 n * (2 * (n + 2) : ℤ)).toNat

end

end A394148.P7249143179261737786

/-! ## A394148.P5136323196668995512

`ceil(A399995(sqrt(A133053(n))*3^n)/10)`
-/

namespace A394148.P5136323196668995512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A399995 (SequenceMachineLib.roundAway (Real.sqrt (A133053 n : ℝ) * (3 ^ n : ℝ))).toNat : ℚ) / 10⌉

end

end A394148.P5136323196668995512

/-!
# A394149: G.f. A(x) satisfies 3*A(x)^6-2*A(x)^5+9x*A(x)^4-3x*A(x)^3+6x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394149, there is no canonical definition to state claims against.
-/

/-! ## A394149.P2521830062003100979

`round(A004941(A005316(2*n+1))/46)`
-/

namespace A394149.P2521830062003100979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004941 (A005316 (2 * n + 1)).toNat : ℚ) / 46)

end

end A394149.P2521830062003100979

/-! ## A394149.P18443871640502288623

`A394156(n)+A188221(A176916(n))`
-/

namespace A394149.P18443871640502288623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394156 n + A188221 (A176916 n).toNat

end

end A394149.P18443871640502288623

/-!
# A394150: G.f. A(x) satisfies A(x)^6-2*A(x)^5+(6x+1)*A(x)^4-8x*A(x)^3+(9x^2+2x)*A(x)^2-5x^2*A(x)+3x^3=0.

The programs for A394150, there is no canonical definition to state claims against.
-/

/-! ## A394150.P13766446267828917792

`A054404(ceil(sqrt(A379862(n))))`
-/

namespace A394150.P13766446267828917792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ⌈Real.sqrt (A379862 n : ℝ)⌉.toNat

end

end A394150.P13766446267828917792

/-! ## A394150.P12428813844254901231

`A172476(A101060(∑[n/(and(1, n+1)+1)]+1))`
-/

namespace A394150.P12428813844254901231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A101060 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat).toNat

end

end A394150.P12428813844254901231

/-!
# A394151: G.f. A(x) satisfies A(x)^6-2*A(x)^5+(2x+1)*A(x)^4-3x*A(x)^3+5x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394151, there is no canonical definition to state claims against.
-/

/-! ## A394151.P10924820031661279637

`A194245(A277359(n)+A033148(n))`
-/

namespace A394151.P10924820031661279637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194245 (A277359 n + A033148 n).toNat

end

end A394151.P10924820031661279637

/-! ## A394151.P10921902962009524697

`A134119(A289157(n)+A156181(n))`
-/

namespace A394151.P10921902962009524697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A289157 n + A156181 n).toNat

end

end A394151.P10921902962009524697

/-!
# A394152: G.f. A(x) satisfies 4*A(x)^4 - 2*A(x)^3 + 5*x*A(x)^2 - x*A(x) + x^2 = 0.

The programs for A394152, there is no canonical definition to state claims against.
-/

/-! ## A394152.P13977102893774996303

`A005843(A394149(n))-A394123(n)`
-/

namespace A394152.P13977102893774996303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A394149 n).toNat - A394123 n

end

end A394152.P13977102893774996303

/-! ## A394152.P16581247631032467565

`A008624(A391606(n)+A084555(n))`
-/

namespace A394152.P16581247631032467565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A391606 n + A084555 n).toNat

end

end A394152.P16581247631032467565

/-!
# A394153: G.f. A(x) satisfies (1-x)*A(x)^4+(5x-2)*A(x)^3+(1-5x)*A(x)^2+x^2*A(x)-x^2=0.

The programs for A394153, there is no canonical definition to state claims against.
-/

/-! ## A394153.P558920292626332500

`Δ[A004525(Δ[A261600(n)])]`
-/

namespace A394153.P558920292626332500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394153.P558920292626332500

/-! ## A394153.P13939058343796272422

`Δ[A004526(Δ[A261600(n)])]`
-/

namespace A394153.P13939058343796272422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394153.P13939058343796272422

/-!
# A394154: G.f. A(x) satisfies A(x)^4 + (x-1)*A(x)^3 - x*A(x)^2 + x*A(x) - x^2 = 0.

The programs for A394154, there is no canonical definition to state claims against.
-/

/-! ## A394154.P16331717153874809661

`A324965(A384199(n))`
-/

namespace A394154.P16331717153874809661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A384199 n).toNat

end

end A394154.P16331717153874809661

/-! ## A394154.P13140825406982524952

`A071840(record[A372012(n)])`
-/

namespace A394154.P13140825406982524952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A394154.P13140825406982524952

/-!
# A394156: G.f. A(x) satisfies A(x)^7-2*A(x)^6+(4x+1)*A(x)^5-7x*A(x)^4+(5x^2+2x)*A(x)^3-6x^2*A(x)^2+(x^3+x^2)*A(x)-x^3=0.

The programs for A394156, there is no canonical definition to state claims against.
-/

/-! ## A394156.P14027102251268761236

`A289122(A270919(n))+A231719(n)`
-/

namespace A394156.P14027102251268761236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A270919 n).toNat + A231719 n

end

end A394156.P14027102251268761236

/-! ## A394156.P10385137775879754851

`A394149(n)-A010054(A041580(n))`
-/

namespace A394156.P10385137775879754851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394149 n - A010054 (A041580 n).toNat

end

end A394156.P10385137775879754851

/-!
# A394157: G.f. A(x) satisfies A(x)^7+x*A(x)^6-2x*A(x)^5-x^2*A(x)^4+2x^2*A(x)^3-x^3*A(x)+x^4=0.

The programs for A394157, there is no canonical definition to state claims against.
-/

/-! ## A394157.P4696109794344031166

`A005843(A394146(n))-A394130(n)`
-/

namespace A394157.P4696109794344031166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A394146 n).toNat - A394130 n

end

end A394157.P4696109794344031166

/-! ## A394157.P9035658917789584158

`A008615(∑{#}[n, (#+1)²*C(4*n-3*#+1, n-#)/(4*n-3*#+1)]+2)`
-/

namespace A394157.P9035658917789584158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ 2 * Nat.choose ((4 * n : ℤ) - (3 * k : ℤ) + 1).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) / ((4 * n : ℤ) - (3 * k : ℤ) + 1 : ℚ) + 2)).toNat

end

end A394157.P9035658917789584158

/-!
# A394158: G.f. A(x) satisfies A(x)^7-4*A(x)^6+(2x+6)*A(x)^5-(7x+4)*A(x)^4+(3x^2+8x+1)*A(x)^3-(5x^2+3x)*A(x)^2+(x^3+3x^2)*A(x)-x^3=0.

The programs for A394158, there is no canonical definition to state claims against.
-/

/-! ## A394158.P12452836769318364785

`A054404(round(sqrt(A379862(n))))`
-/

namespace A394158.P12452836769318364785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (SequenceMachineLib.roundAway (Real.sqrt (A379862 n : ℝ))).toNat

end

end A394158.P12452836769318364785

/-! ## A394158.P14220802382045951032

`A098236(A015128(∑[n])+1)`
-/

namespace A394158.P14220802382045951032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (A015128 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A394158.P14220802382045951032

/-!
# A394159: G.f. A(x) satisfies A(x)^5-4*A(x)^4+(6-2x)*A(x)^3+(3x-4)*A(x)^2+A(x)+x^2-x=0.

The programs for A394159, there is no canonical definition to state claims against.
-/

/-! ## A394159.P11373412159134523623

`A394147(n)-A085980(A027380(n))`
-/

namespace A394159.P11373412159134523623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394147 n - A085980 (A027380 n).toNat

end

end A394159.P11373412159134523623

/-! ## A394159.P18061229553681053816

`A394147(n)-A351357(A003430(n))`
-/

namespace A394159.P18061229553681053816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394147 n - A351357 (A003430 n).toNat

end

end A394159.P18061229553681053816

/-!
# A394160: G.f. A(x) satisfies (x-1)*A(x)^5-x*A(x)^4+(-2x^2+2x)*A(x)^3-x^2*A(x)+x^3=0.

The programs for A394160, there is no canonical definition to state claims against.
-/

/-! ## A394160.P3897272420926098211

`xor(A005315(n), A338466(A365525(n)))`
-/

namespace A394160.P3897272420926098211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005315 n) (A338466 (A365525 n).toNat)

end

end A394160.P3897272420926098211

/-! ## A394160.P11098118660216555273

`A191921(A375565(n))`
-/

namespace A394160.P11098118660216555273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191921 (A375565 n).toNat

end

end A394160.P11098118660216555273

/-!
# A394161: G.f. A(x) satisfies A(x)^5-3x*A(x)^3+2x^2*A(x)^2+x^2*A(x)-x^3=0.

The programs for A394161, there is no canonical definition to state claims against.
-/

/-! ## A394161.P10133903898134317068

`A372511((n+1)!)`
-/

namespace A394161.P10133903898134317068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 (Nat.factorial (n + 1))

end

end A394161.P10133903898134317068

/-! ## A394161.P18253078525329108251

`A180121(A176856(n))`
-/

namespace A394161.P18253078525329108251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180121 (A176856 n).toNat

end

end A394161.P18253078525329108251

/-!
# A394162: G.f. A(x) satisfies 2*A(x)^4-A(x)^3+4x*A(x)^2-x*A(x)+x^2=0.

The programs for A394162, there is no canonical definition to state claims against.
-/

/-! ## A394162.P17702863796665450040

`A029906(A381024(n+1))`
-/

namespace A394162.P17702863796665450040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (A381024 (n + 1)).toNat

end

end A394162.P17702863796665450040

/-! ## A394162.P4351463260800408817

`A002264(A359916(n+1)+A083026(n+1))`
-/

namespace A394162.P4351463260800408817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A359916 (n + 1) + A083026 (n + 1)).toNat

end

end A394162.P4351463260800408817

/-!
# A394163: G.f. A(x) satisfies A(x)^4-2*A(x)^3+(4x+1)*A(x)^2-3x*A(x)+2x^2=0.

The programs for A394163, there is no canonical definition to state claims against.
-/

/-! ## A394163.P1565624101868534757

`A060715(A005011(n)+char[2^n])`
-/

namespace A394163.P1565624101868534757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A005011 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A394163.P1565624101868534757

/-! ## A394163.P10115030916354625384

`A130942(A165032(n)+A036774(n))`
-/

namespace A394163.P10115030916354625384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 (A165032 n + A036774 n).toNat

end

end A394163.P10115030916354625384

/-!
# A394165: Number of binary words x of length n such that for every prefix of length k, the product of j+1 over all positions j where x_j=1 is at most 2^k.

The programs for A394165, there is no canonical definition to state claims against.
-/

/-! ## A394165.P10807902513365064687

`∑[A351846(A000081(n+2))]`
-/

namespace A394165.P10807902513365064687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A000081 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394165.P10807902513365064687

/-! ## A394165.P6845595468102757508

`A003056(2*A035084(n+3))`
-/

namespace A394165.P6845595468102757508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A035084 (n + 3)).toNat

end

end A394165.P6845595468102757508

/-! ## A394165.P4962353279178207007

`A103128(A063832(n+1)+A000081(n))`
-/

namespace A394165.P4962353279178207007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A063832 (n + 1) + A000081 n).toNat

end

end A394165.P4962353279178207007

/-! ## A394165.P1519600048148806250

`A003056(A005251(n)+A120925(n)+n)`
-/

namespace A394165.P1519600048148806250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005251 n + A120925 n + (n : ℤ)).toNat

end

end A394165.P1519600048148806250

/-! ## A394165.P16610850141081187563

`A063712(or(A000069(n+1), A006355(2*n)))`
-/

namespace A394165.P16610850141081187563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (Int.lor (A000069 (n + 1)) (A006355 (2 * n))).toNat

end

end A394165.P16610850141081187563

/-!
# A394166: Lexicographically earliest sequence of distinct nonnegative integers whose binary plot has no two pixels at a knights' move's distance.

The programs for A394166, there is no canonical definition to state claims against.
-/

/-! ## A394166.P8701991340139650040

`fo[A396484(n)]`
-/

namespace A394166.P8701991340139650040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A394166.P8701991340139650040

/-! ## A394166.P3513765110503113102

`A054238(eq[0, A286216(n+1)])`
-/

namespace A394166.P3513765110503113102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A394166.P3513765110503113102

/-! ## A394166.P1998110510467502380

`A054238(lt[A286216(n+1), 1])`
-/

namespace A394166.P1998110510467502380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286216 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A394166.P1998110510467502380

/-! ## A394166.P4234900182683460551

`A054238(eq[A197613(n+1), A399623(n+1)])`
-/

namespace A394166.P4234900182683460551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A394166.P4234900182683460551

/-! ## A394166.P5043784117692499854

`A126684(A080542(n+1)%A180346(3*n+1))`
-/

namespace A394166.P5043784117692499854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (Int.tmod (A080542 (n + 1)) (A180346 (3 * n + 1))).toNat

end

end A394166.P5043784117692499854

/-!
# A394167: a(n) = 1/Product_{i = 1..floor(n/2)} W_i, where W_i is the i-th normalized weight factor for Hermite-Gauss quadrature of degree n, corresponding to the i-th positive abscissa.

The programs for A394167, there is no canonical definition to state claims against.
-/

/-! ## A394167.P14804874866400719329

`n*A396486(a(n-1)²)` with `a(0)=1`
-/

namespace A394167.P14804874866400719329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A396486 (a (n - 1) ^ 2).toNat

end

end A394167.P14804874866400719329

/-! ## A394167.P785343138491741480

`A123919(n!*C(n, (or(1, n)-1)/2)+1)`
-/

namespace A394167.P785343138491741480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (Nat.factorial n * Nat.choose n (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2)).toNat + 1)

end

end A394167.P785343138491741480

/-!
# A394177: Odd k such that there are exactly 2 bases 1 <= b <= k-1 in which k is a strong pseudoprime.

The programs for A394177, there is no canonical definition to state claims against.
-/

/-! ## A394177.P9315689660527943795

`lt[2, gcd(A000290(n²), A027760(n+1))]`
-/

namespace A394177.P9315689660527943795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (n ^ 2)) (A027760 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A394177.P9315689660527943795

/-! ## A394177.P12185867580558557782

`filter[A034298(n+1), A266070(#)]`
-/

namespace A394177.P12185867580558557782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A394177.P12185867580558557782

/-! ## A394177.P6831396364408322302

`filter[A034298(n+2), A000035(#)]`
-/

namespace A394177.P6831396364408322302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A394177.P6831396364408322302

/-! ## A394177.P5095039773595925043

`filter[A034298(n+2), A374134(#)]`
-/

namespace A394177.P5095039773595925043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A394177.P5095039773595925043

/-! ## A394177.P4251643858853277383

`filter[A034298(n+2), A374136(#)]`
-/

namespace A394177.P4251643858853277383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374136 (f1 j).toNat = 1) n)

end

end A394177.P4251643858853277383

/-!
# A394178: Triangle read by rows: T(n, k) is the Frobenius number for n and k if n and k coprime, and 0 otherwise, for 1 <= k <= n.

The programs for A394178, the canonical program `A394178.P8912689448193025780` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394178 has offset 1).

The definition of A394178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394178.P8912689448193025780

`(A079904(C(row(n)+1, 2)+col(n))-1)*A054521(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394178

/-- `(A079904(C(row(n)+1, 2)+col(n))-1)*A054521(C(row(n)+1, 2)+col(n)+1)` -/
def P8912689448193025780.Spec : Prop :=
  ∀ n, P8912689448193025780.a n = A394178 (n + 1)

theorem P8912689448193025780.correct : P8912689448193025780.Spec := by
  intro n
  simp only [A394178, Nat.add_sub_cancel]

end A394178

/-! ## A394178.P7172377896833367133

`A054521(n+1)*A144204(n+1)`
-/

namespace A394178.P7172377896833367133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A144204 (n + 1)

end

end A394178.P7172377896833367133

namespace A394178

/-- `A054521(n+1)*A144204(n+1)` -/
def P7172377896833367133.Spec : Prop :=
  ∀ n, P7172377896833367133.a n = A394178 (n + 1)

end A394178

/-!
# A394180: Number of Dyck paths of semilength n such that the first peak at level y > 1 is preceded by exactly one peak at level y-1.

The programs for A394180, there is no canonical definition to state claims against.
-/

/-! ## A394180.P10472353220222335641

`A316784(3^n)`
-/

namespace A394180.P10472353220222335641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (3 ^ n)

end

end A394180.P10472353220222335641

/-! ## A394180.P14305295887535883983

`A316766(lcm(n, a(a(n-4))))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A394180.P14305295887535883983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n a =>
  A316766 (Int.lcm (n : ℤ) (a (a (n - 4)).toNat))

end

end A394180.P14305295887535883983

/-! ## A394180.P17599345822489716109

`A226763(A025566(n))`
-/

namespace A394180.P17599345822489716109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A025566 n).toNat

end

end A394180.P17599345822489716109

/-! ## A394180.P651647787000007082

`A357862(A073431(n))`
-/

namespace A394180.P651647787000007082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A073431 n).toNat

end

end A394180.P651647787000007082

/-! ## A394180.P673880129484935083

`A279367(A192805(n))`
-/

namespace A394180.P673880129484935083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (A192805 n).toNat

end

end A394180.P673880129484935083

/-!
# A394182: Odd k such that there are exactly 2 bases 1 <= b <= k-1 in which k is an Euler-Jacobi pseudoprime.

The programs for A394182, there is no canonical definition to state claims against.
-/

/-! ## A394182.P15526795991946272386

`∩[A258022(n+1), A394177(n+1)]`
-/

namespace A394182.P15526795991946272386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P15526795991946272386

/-! ## A394182.P18415843082820933799

`∩[A193533(n+1), A394177(n+1)]`
-/

namespace A394182.P18415843082820933799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P18415843082820933799

/-! ## A394182.P7165249526716769057

`∩[A351290(n+1), A394177(n+1)]`
-/

namespace A394182.P7165249526716769057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P7165249526716769057

/-! ## A394182.P16349849551852377043

`A394177(A077168(n)+A037808(n+4))`
-/

namespace A394182.P16349849551852377043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (A077168 n + A037808 (n + 4)).toNat

end

end A394182.P16349849551852377043

/-! ## A394182.P11125941711656997857

`∩[A335469(n+1), A394177(n+1)]`
-/

namespace A394182.P11125941711656997857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P11125941711656997857

/-!
# A394184: Number of primitive tessellations of paths of length n in the square lattice, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A394184, there is no canonical definition to state claims against.
-/

/-! ## A394184.P7807933196343926219

`A005848(A286110(n+3))`
-/

namespace A394184.P7807933196343926219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A286110 (n + 3)).toNat

end

end A394184.P7807933196343926219

/-!
# A394185: a(n) = n^3/6 + 3*n^2 + 41*n/6 + 3.

The programs for A394185, the canonical program `A394185.P5619514107203186845` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394185 has offset 0).

The definition of A394185 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A394185.anchor (n : ℕ) : (A394185 n : ℚ) = (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) + (41 * n : ℚ) / 6 + 3` in `Proof.A394.A394185`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394185.P5619514107203186845

`n^3/6+3*n²+41*n/6+3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394185

/-- `n^3/6+3*n²+41*n/6+3` -/
def P5619514107203186845.Spec : Prop :=
  ∀ n, P5619514107203186845.a n = (A394185 n : ℚ)

end A394185

/-! ## A394185.P1495137315758046860

`∑[∑[a(n-1)+1]]` with `a(0)=3, a(1)=7, a(2)=7`
-/

namespace A394185.P1495137315758046860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 7] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P1495137315758046860

namespace A394185

/-- `∑[∑[a(n-1)+1]]` -/
def P1495137315758046860.Spec : Prop :=
  ∀ n, (P1495137315758046860.a n : ℤ) = A394185 n

end A394185

/-! ## A394185.P12881899360125572249

`∑[record[xor(3, n+1)]+∑[n+1]]`
-/

namespace A394185.P12881899360125572249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P12881899360125572249

namespace A394185

/-- `∑[record[xor(3, n+1)]+∑[n+1]]` -/
def P12881899360125572249.Spec : Prop :=
  ∀ n, (P12881899360125572249.a n : ℤ) = A394185 n

end A394185

/-! ## A394185.P2918280305939379834

`2*(n+1)*(n+1)+C(n+3, 3)+n`
-/

namespace A394185.P2918280305939379834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * (n + 1) + Nat.choose (n + 3) 3 + n

end

end A394185.P2918280305939379834

namespace A394185

/-- `2*(n+1)*(n+1)+C(n+3, 3)+n` -/
def P2918280305939379834.Spec : Prop :=
  ∀ n, (P2918280305939379834.a n : ℤ) = A394185 n

end A394185

/-! ## A394185.P6232058404725382484

`n*(n+9)/2+n+4+a(n-1)` with `a(0)=3`
-/

namespace A394185.P6232058404725382484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (n * (n + 9) : ℚ) / 2 + ((n + 4 : ℚ) + a (n - 1))

end

end A394185.P6232058404725382484

namespace A394185

/-- `n*(n+9)/2+n+4+a(n-1)` -/
def P6232058404725382484.Spec : Prop :=
  ∀ n, P6232058404725382484.a n = (A394185 n : ℚ)

end A394185

/-! ## A394185.P5387543329322534257

`∑[A134869(n+1)+4*n+2]`
-/

namespace A394185.P5387543329322534257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + (4 * n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P5387543329322534257

namespace A394185

/-- `∑[A134869(n+1)+4*n+2]` -/
def P5387543329322534257.Spec : Prop :=
  ∀ n, P5387543329322534257.a n = A394185 n

end A394185

/-! ## A394185.P16355690490786873344

`abs(A000217(n+2)-A096957(n))`
-/

namespace A394185.P16355690490786873344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 2) - A096957 n|

end

end A394185.P16355690490786873344

namespace A394185

/-- `abs(A000217(n+2)-A096957(n))` -/
def P16355690490786873344.Spec : Prop :=
  ∀ n, P16355690490786873344.a n = A394185 n

end A394185

/-! ## A394185.P18014160938177716106

`∑[A087156(n+1)+∑[A009005(n+1)]]`
-/

namespace A394185.P18014160938177716106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P18014160938177716106

namespace A394185

/-- `∑[A087156(n+1)+∑[A009005(n+1)]]` -/
def P18014160938177716106.Spec : Prop :=
  ∀ n, P18014160938177716106.a n = A394185 n

end A394185

/-! ## A394185.P6931606978358273537

`∑[A065475(3*n+1)+∑[n+2]]`
-/

namespace A394185.P6931606978358273537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (3 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P6931606978358273537

namespace A394185

/-- `∑[A065475(3*n+1)+∑[n+2]]` -/
def P6931606978358273537.Spec : Prop :=
  ∀ n, P6931606978358273537.a n = A394185 n

end A394185

/-!
# A394186: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * (binomial(n+2*k,k) - binomial(n+2*k,k-1)).

The programs for A394186, the canonical program `A394186.P3706441358124203491` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394186 has offset 0).

The definition of A394186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394186.P7010794622142761872

`A243116(n)-A397383(n)`
-/

namespace A394186.P7010794622142761872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n - A397383 n

end

end A394186.P7010794622142761872

namespace A394186

/-- `A243116(n)-A397383(n)` -/
def P7010794622142761872.Spec : Prop :=
  ∀ n, P7010794622142761872.a n = A394186 n

theorem P7010794622142761872.correct : P7010794622142761872.Spec := by
  intro n
  simp only [A394186, Nat.add_sub_cancel, A394186.P7010794622142761872.a, A394186.P3706441358124203491.a, A071945, A071945.P8242470920315150283.a, A243116, A243116.P17283519620250842221.f1, A243116.P17283519620250842221.a, A397383, A397383.P15673520071357837229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394186

/-! ## A394186.P3706441358124203491

`A071945(C(2*n+1, 2)+n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394186

/-- `A071945(C(2*n+1, 2)+n)` -/
def P3706441358124203491.Spec : Prop :=
  ∀ n, P3706441358124203491.a n = A394186 n

theorem P3706441358124203491.correct : P3706441358124203491.Spec := by
  intro n
  simp only [A394186]

end A394186

/-! ## A394186.P10804932237846206600

`A071945(∑[4*n])`
-/

namespace A394186.P10804932237846206600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394186.P10804932237846206600

namespace A394186

/-- `A071945(∑[4*n])` -/
def P10804932237846206600.Spec : Prop :=
  ∀ n, P10804932237846206600.a n = A394186 n

end A394186

/-!
# A394187: Triangle T(n,k), n >= 1, 1 <= k <= A003056(n), read by rows, where T(n,k) is the number of rectangular plane partitions of n with exactly k rows and with rows and columns strictly decreasing.

The programs for A394187, there is no canonical definition to state claims against.
-/

/-! ## A394187.P5464555775105562331

`A370808(A195826(n+1))%A342529(2*(n+1))`
-/

namespace A394187.P5464555775105562331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370808 (A195826 (n + 1)).toNat) (A342529 (2 * (n + 1)))

end

end A394187.P5464555775105562331

/-! ## A394187.P13976512883929832756

`A097944(A177250(n+1))`
-/

namespace A394187.P13976512883929832756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A177250 (n + 1)).toNat

end

end A394187.P13976512883929832756

/-! ## A394187.P15940045203704002329

`A280521(A235791(n+1)^A132272(3*n))`
-/

namespace A394187.P15940045203704002329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280521 (SequenceMachineLib.roundAway ((A235791 (n + 1) : ℚ) ^ (A132272 (3 * n) : ℤ))).toNat

end

end A394187.P15940045203704002329

/-! ## A394187.P2596550883823834189

`A000120(A244108(n)+A233320(2*(n+1)))`
-/

namespace A394187.P2596550883823834189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A244108 n + A233320 (2 * (n + 1))).toNat

end

end A394187.P2596550883823834189

/-! ## A394187.P2293152594555561397

`A110631(A014146(n))`
-/

namespace A394187.P2293152594555561397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110631 (A014146 n).toNat

end

end A394187.P2293152594555561397

/-!
# A394188: Number of partitions of n such that (number of distinct parts) <= minimal multiplicity of the parts.

The programs for A394188, there is no canonical definition to state claims against.
-/

/-! ## A394188.P13564680885634559713

`A394189(n)+A239966(n)`
-/

namespace A394188.P13564680885634559713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394189 n + A239966 n

end

end A394188.P13564680885634559713

/-! ## A394188.P6416199003163894642

`A239966(n)+A100405(n)-A135528(A005578(n)+1)+1`
-/

namespace A394188.P6416199003163894642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239966 n + (A100405 n - A135528 (A005578 n + 1).toNat + 1)

end

end A394188.P6416199003163894642

/-! ## A394188.P16016692877999792659

`A342219(A237125(n+1))`
-/

namespace A394188.P16016692877999792659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342219 (A237125 (n + 1)).toNat

end

end A394188.P16016692877999792659

/-! ## A394188.P6769118214046084681

`A318287(A319975(n+2))`
-/

namespace A394188.P6769118214046084681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318287 (A319975 (n + 2)).toNat

end

end A394188.P6769118214046084681

/-! ## A394188.P3475511753587438572

`A007690(n)%A220913(n)+1`
-/

namespace A394188.P3475511753587438572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007690 n) (A220913 n) + 1

end

end A394188.P3475511753587438572

/-!
# A394189: Number of partitions of n such that (number of distinct parts) < minimal multiplicity of the parts.

The programs for A394189, there is no canonical definition to state claims against.
-/

/-! ## A394189.P973573289891794180

`A394188(n)-A239966(n)`
-/

namespace A394189.P973573289891794180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394188 n - A239966 n

end

end A394189.P973573289891794180

/-! ## A394189.P5536840626327555362

`A100405(n)+A025426(A011782(n))`
-/

namespace A394189.P5536840626327555362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n + A025426 (A011782 n).toNat

end

end A394189.P5536840626327555362

/-! ## A394189.P2927762711206829202

`A100405(n)-A135528(A005578(n)+1)+1`
-/

namespace A394189.P2927762711206829202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A135528 (A005578 n + 1).toNat + 1

end

end A394189.P2927762711206829202

/-! ## A394189.P10357916889674007169

`A100405(n)+A063730(A000079(n))`
-/

namespace A394189.P10357916889674007169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n + A063730 (A000079 n).toNat

end

end A394189.P10357916889674007169

/-! ## A394189.P12894380939913683890

`∑{e}[T(n-1,k)+T(n-1,k-1)+abs(A346838(n)), #]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A394189.P12894380939913683890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3, 2] fun n f1 =>
  SequenceMachineLib.triUp f1 n + SequenceMachineLib.triUpLeft f1 n + |A346838 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A394189.P12894380939913683890

/-!
# A394192: a(n) = n^3 - n^2 + 5*n + 2.

The programs for A394192, the canonical program `A394192.P9267180659231015820` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394192 has offset 0).

The definition of A394192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²+5*n+2` (program `A394192.P9267180659231015820`, by `A394192.P9267180659231015820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394192.P10039327950935959151

`ogf((2-x+5x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A394192.P10039327950935959151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 0, 5] [1, -4, 6, -4, 1] n

end

end A394192.P10039327950935959151

namespace A394192

/-- `ogf((2-x+5x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10039327950935959151.Spec : Prop :=
  ∀ n, P10039327950935959151.a n = A394192 n

end A394192

/-! ## A394192.P9267180659231015820

`n^3-n²+5*n+2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394192

/-- `n^3-n²+5*n+2` -/
def P9267180659231015820.Spec : Prop :=
  ∀ n, P9267180659231015820.a n = A394192 n

theorem P9267180659231015820.correct : P9267180659231015820.Spec := by
  intro n
  simp only [A394192]

end A394192

/-! ## A394192.P14481515513029198967

`∑[∑[6+a(n-1)]]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A394192.P14481515513029198967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f2 =>
  6 + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394192.P14481515513029198967

namespace A394192

/-- `∑[∑[6+a(n-1)]]` -/
def P14481515513029198967.Spec : Prop :=
  ∀ n, (P14481515513029198967.a n : ℤ) = A394192 n

end A394192

/-! ## A394192.P4084490916897255000

`2+(2*C(n, 2)+5)*n`
-/

namespace A394192.P4084490916897255000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + (2 * Nat.choose n 2 + 5) * n

end

end A394192.P4084490916897255000

namespace A394192

/-- `2+(2*C(n, 2)+5)*n` -/
def P4084490916897255000.Spec : Prop :=
  ∀ n, (P4084490916897255000.a n : ℤ) = A394192 n

theorem P4084490916897255000.correct : P4084490916897255000.Spec := by
  intro n
  simp only [A394192, Nat.add_sub_cancel, A394192.P4084490916897255000.a, A394192.P9267180659231015820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A394192

/-! ## A394192.P12822065363781028277

`∑[∑[A091361(n+1)+1]]`
-/

namespace A394192.P12822065363781028277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394192.P12822065363781028277

namespace A394192

/-- `∑[∑[A091361(n+1)+1]]` -/
def P12822065363781028277.Spec : Prop :=
  ∀ n, P12822065363781028277.a n = A394192 n

end A394192

/-! ## A394192.P4081718840359332354

`(A062159(n)+A059826(n+1))/A002061(n+1)`
-/

namespace A394192.P4081718840359332354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062159 n + A059826 (n + 1) : ℚ) / (A002061 (n + 1) : ℚ)

end

end A394192.P4081718840359332354

namespace A394192

/-- `(A062159(n)+A059826(n+1))/A002061(n+1)` -/
def P4081718840359332354.Spec : Prop :=
  ∀ n, P4081718840359332354.a n = (A394192 n : ℚ)

end A394192

/-! ## A394192.P15391335811522860428

`A000027(2+n*(n²-n+5))`
-/

namespace A394192.P15391335811522860428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 + (n : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 5)).toNat

end

end A394192.P15391335811522860428

namespace A394192

/-- `A000027(2+n*(n²-n+5))` -/
def P15391335811522860428.Spec : Prop :=
  ∀ n, P15391335811522860428.a n = A394192 n

end A394192

/-!
# A394199: Expansion of Product_{k>=1} (1 + x^(k*(k+3)/2)) / (1 - x^(k*(k+3)/2)).

The programs for A394199, there is no canonical definition to state claims against.
-/

/-! ## A394199.P11223251440397760401

`A040001(A001787(n))*A143619(n+2)`
-/

namespace A394199.P11223251440397760401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A001787 n).toNat * A143619 (n + 2)

end

end A394199.P11223251440397760401

/-! ## A394199.P7432858267147573775

`A090047(abs(A286013(n+1)-A006720(n)))`
-/

namespace A394199.P7432858267147573775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090047 |A286013 (n + 1) - A006720 n|.toNat

end

end A394199.P7432858267147573775

/-! ## A394199.P14519786323049511093

`A394201(record[A304101(n)-A398271(n+1)])`
-/

namespace A394199.P14519786323049511093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304101 n - A398271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394201 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A394199.P14519786323049511093

