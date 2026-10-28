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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
# A065100: a(n+2) = 9*a(n+1) - a(n), a(0) = 3, a(1) = 27.

The programs for A065100, the canonical program `A065100.P9079584606151478998` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065100 has offset 0).

The definition of A065100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065100.P5320201556534284021

`ogf(3/(1-9x+x^2))`
-/

namespace A065100.P5320201556534284021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -9, 1] n

end

end A065100.P5320201556534284021

namespace A065100

/-- `ogf(3/(1-9x+x^2))` -/
def P5320201556534284021.Spec : Prop :=
  ∀ n, P5320201556534284021.a n = A065100 n

end A065100

/-! ## A065100.P9079584606151478998

`9*a(n-1)-a(n-2)` with `a(0)=3, a(1)=27`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065100

/-- `9*a(n-1)-a(n-2)` -/
def P9079584606151478998.Spec : Prop :=
  ∀ n, P9079584606151478998.a n = A065100 n

theorem P9079584606151478998.correct : P9079584606151478998.Spec := by
  intro n
  simp only [A065100]

end A065100

/-! ## A065100.P4549641528260180666

`3*A018913(n+1)`
-/

namespace A065100.P4549641528260180666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018913 (n + 1)

end

end A065100.P4549641528260180666

namespace A065100

/-- `3*A018913(n+1)` -/
def P4549641528260180666.Spec : Prop :=
  ∀ n, P4549641528260180666.a n = A065100 n

end A065100

/-! ## A065100.P10472494474896933567

`∑[3*A070998(n)]`
-/

namespace A065100.P10472494474896933567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A070998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065100.P10472494474896933567

namespace A065100

/-- `∑[3*A070998(n)]` -/
def P10472494474896933567.Spec : Prop :=
  ∀ n, P10472494474896933567.a n = A065100 n

end A065100

/-! ## A065100.P8131402141239375903

`∑[3*Δ[A018913(n)]]`
-/

namespace A065100.P8131402141239375903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065100.P8131402141239375903

namespace A065100

/-- `∑[3*Δ[A018913(n)]]` -/
def P8131402141239375903.Spec : Prop :=
  ∀ n, P8131402141239375903.a n = A065100 n

end A065100

/-! ## A065100.P16306276192857190286

`A057081(n)+A070998(n)+∑[A070998(n)]`
-/

namespace A065100.P16306276192857190286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057081 n + (A070998 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065100.P16306276192857190286

namespace A065100

/-- `A057081(n)+A070998(n)+∑[A070998(n)]` -/
def P16306276192857190286.Spec : Prop :=
  ∀ n, P16306276192857190286.a n = A065100 n

end A065100

/-! ## A065100.P1568566122783934187

`A018913(n+1)+A070998(n)+A057081(n)`
-/

namespace A065100.P1568566122783934187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (n + 1) + (A070998 n + A057081 n)

end

end A065100.P1568566122783934187

namespace A065100

/-- `A018913(n+1)+A070998(n)+A057081(n)` -/
def P1568566122783934187.Spec : Prop :=
  ∀ n, P1568566122783934187.a n = A065100 n

end A065100

/-!
# A065101: a(0) = c, a(1) = p*c^3; a(n+2) = p*c^2*a(n+1) - a(n), for p = 3, c = 2.

The programs for A065101, the canonical program `A065101.P10088104874058875924` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065101 has offset 0).

The definition of A065101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065101.P2232474389169767673

`ogf(2/(1-12x+x^2))`
-/

namespace A065101.P2232474389169767673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -12, 1] n

end

end A065101.P2232474389169767673

namespace A065101

/-- `ogf(2/(1-12x+x^2))` -/
def P2232474389169767673.Spec : Prop :=
  ∀ n, P2232474389169767673.a n = A065101 n

end A065101

/-! ## A065101.P10088104874058875924

`2*A004191(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065101

/-- `2*A004191(n)` -/
def P10088104874058875924.Spec : Prop :=
  ∀ n, P10088104874058875924.a n = A065101 n

theorem P10088104874058875924.correct : P10088104874058875924.Spec := by
  intro n
  simp only [A065101]

end A065101

/-! ## A065101.P7142701900555874916

`12*a(n-1)-a(n-2)` with `a(0)=2, a(1)=24`
-/

namespace A065101.P7142701900555874916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 24] fun n a =>
  12 * a (n - 1) - a (n - 2)

end

end A065101.P7142701900555874916

namespace A065101

/-- `12*a(n-1)-a(n-2)` -/
def P7142701900555874916.Spec : Prop :=
  ∀ n, P7142701900555874916.a n = A065101 n

end A065101

/-! ## A065101.P2287595003145843985

`∑[A385121(n+1)]`
-/

namespace A065101.P2287595003145843985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065101.P2287595003145843985

namespace A065101

/-- `∑[A385121(n+1)]` -/
def P2287595003145843985.Spec : Prop :=
  ∀ n, P2287595003145843985.a n = A065101 n

end A065101

/-! ## A065101.P12610460203430720810

`∑[2*A077417(n)]`
-/

namespace A065101.P12610460203430720810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065101.P12610460203430720810

namespace A065101

/-- `∑[2*A077417(n)]` -/
def P12610460203430720810.Spec : Prop :=
  ∀ n, P12610460203430720810.a n = A065101 n

end A065101

/-! ## A065101.P9618911051529984889

`2*A041059(Δ[n²])`
-/

namespace A065101.P9618911051529984889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065101.P9618911051529984889

namespace A065101

/-- `2*A041059(Δ[n²])` -/
def P9618911051529984889.Spec : Prop :=
  ∀ n, P9618911051529984889.a n = A065101 n

end A065101

/-! ## A065101.P10710691652442804521

`∑[2*A041059(2*n)]`
-/

namespace A065101.P10710691652442804521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041059 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065101.P10710691652442804521

namespace A065101

/-- `∑[2*A041059(2*n)]` -/
def P10710691652442804521.Spec : Prop :=
  ∀ n, P10710691652442804521.a n = A065101 n

end A065101

/-! ## A065101.P17176562493333295245

`∑[2*A080875(2*n+1)]`
-/

namespace A065101.P17176562493333295245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080875 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065101.P17176562493333295245

namespace A065101

/-- `∑[2*A080875(2*n+1)]` -/
def P17176562493333295245.Spec : Prop :=
  ∀ n, P17176562493333295245.a n = A065101 n

end A065101

/-! ## A065101.P7340572030347912706

`A077417(n)+A077416(n)`
-/

namespace A065101.P7340572030347912706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077417 n + A077416 n

end

end A065101.P7340572030347912706

namespace A065101

/-- `A077417(n)+A077416(n)` -/
def P7340572030347912706.Spec : Prop :=
  ∀ n, P7340572030347912706.a n = A065101 n

end A065101

/-! ## A065101.P9907337124938323044

`A077416(n)+A041059(2*n)`
-/

namespace A065101.P9907337124938323044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077416 n + A041059 (2 * n)

end

end A065101.P9907337124938323044

namespace A065101

/-- `A077416(n)+A041059(2*n)` -/
def P9907337124938323044.Spec : Prop :=
  ∀ n, P9907337124938323044.a n = A065101 n

end A065101

/-!
# A065102: a(0) = c, a(1) = p*c^3; a(n+2) = p*c^2*a(n+1) - a(n), for p = 2, c = 3.

The programs for A065102, the canonical program `A065102.P4376375145198812071` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065102 has offset 0).

The definition of A065102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065102.P3263002778492764384

`ogf(3/(1-18x+x^2))`
-/

namespace A065102.P3263002778492764384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -18, 1] n

end

end A065102.P3263002778492764384

namespace A065102

/-- `ogf(3/(1-18x+x^2))` -/
def P3263002778492764384.Spec : Prop :=
  ∀ n, P3263002778492764384.a n = A065102 n

end A065102

/-! ## A065102.P4376375145198812071

`3*A049660(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065102

/-- `3*A049660(n+1)` -/
def P4376375145198812071.Spec : Prop :=
  ∀ n, P4376375145198812071.a n = A065102 n

theorem P4376375145198812071.correct : P4376375145198812071.Spec := by
  intro n
  simp only [A065102]

end A065102

/-! ## A065102.P3286973409380866280

`ceil(ϕ^6*a(n-1))` with `a(0)=3`
-/

namespace A065102.P3286973409380866280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈Real.goldenRatio ^ 6 * (a (n - 1) : ℝ)⌉

end

end A065102.P3286973409380866280

namespace A065102

/-- `ceil(ϕ^6*a(n-1))` -/
def P3286973409380866280.Spec : Prop :=
  ∀ n, P3286973409380866280.a n = A065102 n

end A065102

/-! ## A065102.P15474101020729941736

`round(ϕ^6*a(n-1))` with `a(0)=3`
-/

namespace A065102.P15474101020729941736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 6 * (a (n - 1) : ℝ))

end

end A065102.P15474101020729941736

namespace A065102

/-- `round(ϕ^6*a(n-1))` -/
def P15474101020729941736.Spec : Prop :=
  ∀ n, P15474101020729941736.a n = A065102 n

end A065102

/-! ## A065102.P2936010342380782276

`18*a(n-1)-a(n-2)` with `a(0)=3, a(1)=54`
-/

namespace A065102.P2936010342380782276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 54] fun n a =>
  18 * a (n - 1) - a (n - 2)

end

end A065102.P2936010342380782276

namespace A065102

/-- `18*a(n-1)-a(n-2)` -/
def P2936010342380782276.Spec : Prop :=
  ∀ n, P2936010342380782276.a n = A065102 n

end A065102

/-! ## A065102.P10454446757438730227

`∑[A075869(n+1)]`
-/

namespace A065102.P10454446757438730227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065102.P10454446757438730227

namespace A065102

/-- `∑[A075869(n+1)]` -/
def P10454446757438730227.Spec : Prop :=
  ∀ n, P10454446757438730227.a n = A065102 n

end A065102

/-! ## A065102.P7635339887246701749

`∑[3*A007805(n)]`
-/

namespace A065102.P7635339887246701749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065102.P7635339887246701749

namespace A065102

/-- `∑[3*A007805(n)]` -/
def P7635339887246701749.Spec : Prop :=
  ∀ n, P7635339887246701749.a n = A065102 n

end A065102

/-! ## A065102.P586674390250368964

`Δ[3*A049664(n)]`
-/

namespace A065102.P586674390250368964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065102.P586674390250368964

namespace A065102

/-- `Δ[3*A049664(n)]` -/
def P586674390250368964.Spec : Prop :=
  ∀ n, P586674390250368964.a n = A065102 n

end A065102

/-! ## A065102.P14169200253859590407

`3*A041143(Δ[n²])`
-/

namespace A065102.P14169200253859590407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A041143 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065102.P14169200253859590407

namespace A065102

/-- `3*A041143(Δ[n²])` -/
def P14169200253859590407.Spec : Prop :=
  ∀ n, P14169200253859590407.a n = A065102 n

end A065102

/-! ## A065102.P12116545822185259240

`∑[A155179(2*n+1)]`
-/

namespace A065102.P12116545822185259240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155179 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065102.P12116545822185259240

namespace A065102

/-- `∑[A155179(2*n+1)]` -/
def P12116545822185259240.Spec : Prop :=
  ∀ n, P12116545822185259240.a n = A065102 n

end A065102

/-!
# A065103: A level 11 weight 5 form.

The programs for A065103, the canonical program `A065103.P2718440150372070482` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065103 has offset 1).

The definition of A065103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065103.P2718440150372070482

`∑{d}[n+1, A035179(#)*A059377((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065103

/-- `∑{d}[n+1, A035179(#)*A059377((n+1)/#)]` -/
def P2718440150372070482.Spec : Prop :=
  ∀ n, P2718440150372070482.a n = A065103 (n + 1)

theorem P2718440150372070482.correct : P2718440150372070482.Spec := by
  intro n
  simp only [A065103, Nat.add_sub_cancel]

end A065103

/-! ## A065103.P15117537437206541095

`A284900(n+1)+A103309(A006059(n))`
-/

namespace A065103.P15117537437206541095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284900 (n + 1) + A103309 (A006059 n).toNat

end

end A065103.P15117537437206541095

namespace A065103

/-- `A284900(n+1)+A103309(A006059(n))` -/
def P15117537437206541095.Spec : Prop :=
  ∀ n, P15117537437206541095.a n = A065103 (n + 1)

end A065103

/-!
# A065104: Numbers k such that for no m between k^2 and (k+1)^2 - 1 is it true that A003285(m) = A003285(m+1).

The programs for A065104, there is no canonical definition to state claims against.
-/

/-! ## A065104.P9708143488351892323

`A229037(A364539(2*n+1))+n`
-/

namespace A065104.P9708143488351892323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229037 (A364539 (2 * n + 1)).toNat + (n : ℤ)

end

end A065104.P9708143488351892323

/-! ## A065104.P3894869672416771664

`A334100(A014741(n+1))%A077796(n+1)`
-/

namespace A065104.P3894869672416771664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334100 (A014741 (n + 1)).toNat) (A077796 (n + 1))

end

end A065104.P3894869672416771664

/-!
# A065105: Numbers not expressible as a product of Fibonacci numbers.

The programs for A065105, there is no canonical definition to state claims against.
-/

/-! ## A065105.P11126728527791816740

`eq[0, A261769(n+1)]+1`
-/

namespace A065105.P11126728527791816740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065105.P11126728527791816740

/-! ## A065105.P6531987771826427237

`eq[0, A261769(n^floor(atan(n)))]`
-/

namespace A065105.P6531987771826427237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065105.P6531987771826427237

/-! ## A065105.P11954827026583461425

`comp[A065108(n+1)-1]+1`
-/

namespace A065105.P11954827026583461425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065108 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065105.P11954827026583461425

/-! ## A065105.P12255480365674659148

`lt[A261769(round(sqrt(n²+1))), 1]`
-/

namespace A065105.P12255480365674659148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065105.P12255480365674659148

/-! ## A065105.P2459060140194931970

`eq[0, A261769(A028310(n))]`
-/

namespace A065105.P2459060140194931970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065105.P2459060140194931970

/-!
# A065106: Smallest Fibonacci index to produce a factor p^2 (for primes p).

The programs for A065106, there is no canonical definition to state claims against.
-/

/-! ## A065106.P11534650127269647289

`A001177(A065107(n+1)²)`
-/

namespace A065106.P11534650127269647289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A065107 (n + 1) ^ 2).toNat

end

end A065106.P11534650127269647289

/-! ## A065106.P8519572116605948223

`A001177(A065107(n+1)^2)`
-/

namespace A065106.P8519572116605948223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A065107 (n + 1) ^ 2).toNat

end

end A065106.P8519572116605948223

/-! ## A065106.P10048888640521470418

`∪[A065069(n+1), record[A264008(n+1)]]`
-/

namespace A065106.P10048888640521470418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065069 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065106.P10048888640521470418

/-! ## A065106.P12457434315660835238

`A001177(A065107(n+1)*A065107(n+1))`
-/

namespace A065106.P12457434315660835238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A065107 (n + 1) * A065107 (n + 1)).toNat

end

end A065106.P12457434315660835238

/-! ## A065106.P16633347379526865705

`A132632(A065107(n+1))`
-/

namespace A065106.P16633347379526865705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132632 (A065107 (n + 1)).toNat

end

end A065106.P16633347379526865705

/-!
# A065107: Start of the permutation of the primes in the order in which p^2 first appears as a factor of a number in the Fibonacci sequence.

The programs for A065107, there is no canonical definition to state claims against.
-/

/-! ## A065107.P3219109157819498261

`A006530(A065106(n+1))-floor(acot(n))`
-/

namespace A065107.P3219109157819498261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065106 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A065107.P3219109157819498261

/-! ## A065107.P4413161977153875913

`A006530(A065106(n+1)+A000038(n))`
-/

namespace A065107.P4413161977153875913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065106 (n + 1) + A000038 n).toNat

end

end A065107.P4413161977153875913

/-! ## A065107.P17897706625003733168

`A006530(A065106(n+1))-A000007(n)`
-/

namespace A065107.P17897706625003733168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065106 (n + 1)).toNat - A000007 n

end

end A065107.P17897706625003733168

/-! ## A065107.P16383414310302072078

`A006530(A065106(n+1))-A010894(n)`
-/

namespace A065107.P16383414310302072078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065106 (n + 1)).toNat - A010894 (n + 21)

end

end A065107.P16383414310302072078

/-! ## A065107.P2767101022125837496

`and(A006530(A065106(n+1)), A118883(n+1))`
-/

namespace A065107.P2767101022125837496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A065106 (n + 1)).toNat) (A118883 (n + 1))

end

end A065107.P2767101022125837496

/-!
# A065108: Positive numbers expressible as a product of Fibonacci numbers.

The programs for A065108, there is no canonical definition to state claims against.
-/

/-! ## A065108.P5780611091905657606

`lt[0, A261769(n+1)]+1`
-/

namespace A065108.P5780611091905657606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A065108.P5780611091905657606

/-! ## A065108.P12335570551209996340

`lt[A000038(n), A261769(A028310(n))]`
-/

namespace A065108.P12335570551209996340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065108.P12335570551209996340

/-! ## A065108.P9944940759405976342

`lt[1, A212893(n)*A261769(A028310(n))]`
-/

namespace A065108.P9944940759405976342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n * A261769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065108.P9944940759405976342

/-! ## A065108.P12259304176746848229

`lt[A000007(n), A261769(A028310(n))]`
-/

namespace A065108.P12259304176746848229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065108.P12259304176746848229

/-! ## A065108.P5601249242527512400

`lt[1, A261769(A022144(n))]`
-/

namespace A065108.P5601249242527512400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261769 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065108.P5601249242527512400

/-!
# A065109: Triangle T(n,k) of coefficients relating to Bezier curve continuity.

The programs for A065109, the canonical program `A065109.P1723730783009220434` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065109 has offset 0).

The definition of A065109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065109.P1723730783009220434

`2*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065109

/-- `2*T(n-1,k)-T(n-1,k-1)` -/
def P1723730783009220434.Spec : Prop :=
  ∀ n, P1723730783009220434.a n = A065109 n

theorem P1723730783009220434.correct : P1723730783009220434.Spec := by
  intro n
  simp only [A065109]

end A065109

/-! ## A065109.P3594752667955656701

`(-1)^col(n)*2^(row(n)-col(n))*C(row(n), col(n))`
-/

namespace A065109.P3594752667955656701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ SequenceMachineLib.triCol n : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ)

end

end A065109.P3594752667955656701

namespace A065109

/-- `(-1)^col(n)*2^(row(n)-col(n))*C(row(n), col(n))` -/
def P3594752667955656701.Spec : Prop :=
  ∀ n, P3594752667955656701.a n = (A065109 n : ℚ)

end A065109

/-! ## A065109.P5173638530435674454

`T(n-1,k)+T(n-1,k)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A065109.P5173638530435674454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n)

end

end A065109.P5173638530435674454

namespace A065109

/-- `T(n-1,k)+T(n-1,k)-T(n-1,k-1)` -/
def P5173638530435674454.Spec : Prop :=
  ∀ n, P5173638530435674454.a n = A065109 n

theorem P5173638530435674454.correct : P5173638530435674454.Spec := by
  intro n
  simp only [A065109, Nat.add_sub_cancel, A065109.P5173638530435674454.a, A065109.P1723730783009220434.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065109

/-! ## A065109.P17858911986911774172

`2*(2*T(n-2,k)-T(n-2,k-1))-T(n-1,k-1)` with `a(0)=1, a(1)=2`
-/

namespace A065109.P17858911986911774172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n) - SequenceMachineLib.triUpLeft a n

end

end A065109.P17858911986911774172

namespace A065109

/-- `2*(2*T(n-2,k)-T(n-2,k-1))-T(n-1,k-1)` -/
def P17858911986911774172.Spec : Prop :=
  ∀ n, P17858911986911774172.a n = A065109 n

end A065109

/-! ## A065109.P4570043110091650400

`A118801(n)%2*A038207(n)`
-/

namespace A065109.P4570043110091650400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118801 n) 2 * A038207 n

end

end A065109.P4570043110091650400

namespace A065109

/-- `A118801(n)%2*A038207(n)` -/
def P4570043110091650400.Spec : Prop :=
  ∀ n, P4570043110091650400.a n = A065109 n

end A065109

/-! ## A065109.P5576030750598525300

`A118800(n)+∑[A118800(n)]-1`
-/

namespace A065109.P5576030750598525300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A065109.P5576030750598525300

namespace A065109

/-- `A118800(n)+∑[A118800(n)]-1` -/
def P5576030750598525300.Spec : Prop :=
  ∀ n, P5576030750598525300.a n = A065109 n

end A065109

/-! ## A065109.P11561042240383310620

`A033999(A002262(n))*A038207(n)`
-/

namespace A065109.P11561042240383310620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A038207 n

end

end A065109.P11561042240383310620

namespace A065109

/-- `A033999(A002262(n))*A038207(n)` -/
def P11561042240383310620.Spec : Prop :=
  ∀ n, P11561042240383310620.a n = A065109 n

end A065109

/-! ## A065109.P2740343816010360447

`A038207(n)*A062157(A002260(n+1))`
-/

namespace A065109.P2740343816010360447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A062157 (A002260 (n + 1)).toNat

end

end A065109.P2740343816010360447

namespace A065109

/-- `A038207(n)*A062157(A002260(n+1))` -/
def P2740343816010360447.Spec : Prop :=
  ∀ n, P2740343816010360447.a n = A065109 n

end A065109

/-! ## A065109.P13615274634779675204

`A038207(n)/A112857(n)*A118801(n)`
-/

namespace A065109.P13615274634779675204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A112857 n : ℚ) * (A118801 n : ℚ)

end

end A065109.P13615274634779675204

namespace A065109

/-- `A038207(n)/A112857(n)*A118801(n)` -/
def P13615274634779675204.Spec : Prop :=
  ∀ n, P13615274634779675204.a n = (A065109 n : ℚ)

end A065109

/-! ## A065109.P7103417575253339575

`A118800(n)-∑[A000007(n)-A118800(n)]`
-/

namespace A065109.P7103417575253339575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A118800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065109.P7103417575253339575

namespace A065109

/-- `A118800(n)-∑[A000007(n)-A118800(n)]` -/
def P7103417575253339575.Spec : Prop :=
  ∀ n, P7103417575253339575.a n = A065109 n

end A065109

/-! ## A065109.P7792335504704425415

`Δ[A003056(n)-A118801(n)]`
-/

namespace A065109.P7792335504704425415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A118801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065109.P7792335504704425415

namespace A065109

/-- `Δ[A003056(n)-A118801(n)]` -/
def P7792335504704425415.Spec : Prop :=
  ∀ n, P7792335504704425415.a n = A065109 n

end A065109

/-! ## A065109.P4669648805390627858

`A303872(A061579(n))`
-/

namespace A065109.P4669648805390627858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303872 (A061579 n).toNat

end

end A065109.P4669648805390627858

namespace A065109

/-- `A303872(A061579(n))` -/
def P4669648805390627858.Spec : Prop :=
  ∀ n, P4669648805390627858.a n = A065109 n

end A065109

/-! ## A065109.P10024232999217535780

`A303872(A038722(n+1)-1)`
-/

namespace A065109.P10024232999217535780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303872 (A038722 (n + 1) - 1).toNat

end

end A065109.P10024232999217535780

namespace A065109

/-- `A303872(A038722(n+1)-1)` -/
def P10024232999217535780.Spec : Prop :=
  ∀ n, P10024232999217535780.a n = A065109 n

end A065109

/-! ## A065109.P4878300830890108553

`A303872(A038722(n+2))`
-/

namespace A065109.P4878300830890108553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303872 (A038722 (n + 2)).toNat

end

end A065109.P4878300830890108553

namespace A065109

/-- `A303872(A038722(n+2))` -/
def P4878300830890108553.Spec : Prop :=
  ∀ n, P4878300830890108553.a n = A065109 n

end A065109

/-! ## A065109.P11658314950679858276

`A021009(n)/A094587(n)*A130321(n)`
-/

namespace A065109.P11658314950679858276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021009 n : ℚ) / (A094587 n : ℚ) * (A130321 n : ℚ)

end

end A065109.P11658314950679858276

namespace A065109

/-- `A021009(n)/A094587(n)*A130321(n)` -/
def P11658314950679858276.Spec : Prop :=
  ∀ n, P11658314950679858276.a n = (A065109 n : ℚ)

end A065109

/-! ## A065109.P3973508660061750582

`A105278(n+1)/A066667(n)*A038207(n)`
-/

namespace A065109.P3973508660061750582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A066667 n : ℚ) * (A038207 n : ℚ)

end

end A065109.P3973508660061750582

namespace A065109

/-- `A105278(n+1)/A066667(n)*A038207(n)` -/
def P3973508660061750582.Spec : Prop :=
  ∀ n, P3973508660061750582.a n = (A065109 n : ℚ)

end A065109

/-! ## A065109.P3290550967362779106

`A038207(n)*A165586(A059268(n))`
-/

namespace A065109.P3290550967362779106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A165586 (A059268 n).toNat

end

end A065109.P3290550967362779106

namespace A065109

/-- `A038207(n)*A165586(A059268(n))` -/
def P3290550967362779106.Spec : Prop :=
  ∀ n, P3290550967362779106.a n = A065109 n

end A065109

/-!
# A065110: If n = D0*10^0 + D1*10^1 + D2*10^2 + .. + Dk*10^k define f(n) = D0*0^10 + D1*1^10 + D2*2^10 + .. + Dk*k^10 (e.g. if n = 421 then f(n) = 4*2^10 + 2*1^10 + 1*0^10 = 4098). Sequence gives values of n such that f(n) is divisible by n.

The programs for A065110, there is no canonical definition to state claims against.
-/

/-! ## A065110.P5174581393896654204

`A072941(A070244(n+1))`
-/

namespace A065110.P5174581393896654204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072941 (A070244 (n + 1)).toNat

end

end A065110.P5174581393896654204

/-! ## A065110.P17595562593496084764

`A257738(A348799(n+1))`
-/

namespace A065110.P17595562593496084764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257738 (A348799 (n + 1)).toNat

end

end A065110.P17595562593496084764

/-! ## A065110.P10606343727073216360

`A309129(A229184(n+2))`
-/

namespace A065110.P10606343727073216360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309129 (A229184 (n + 2)).toNat

end

end A065110.P10606343727073216360

/-! ## A065110.P5712448360083793097

`A042091(A165877(n))+n`
-/

namespace A065110.P5712448360083793097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042091 (A165877 n).toNat + (n : ℤ)

end

end A065110.P5712448360083793097

/-!
# A065112: Smallest prime whose decimal expansion ends (nontrivially) with the n-th prime; or 0 if no such prime exists.

The programs for A065112, there is no canonical definition to state claims against.
-/

/-! ## A065112.P4668556595864314797

`A256480(A000040(n+1)%A000413(n))`
-/

namespace A065112.P4668556595864314797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (Int.tmod (A000040 (n + 1)) (A000413 n)).toNat

end

end A065112.P4668556595864314797

/-! ## A065112.P8650120616160796159

`A256480(A160656(n+1))`
-/

namespace A065112.P8650120616160796159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (A160656 (n + 1)).toNat

end

end A065112.P8650120616160796159

/-! ## A065112.P8644375616193106297

`A256480(A000040(n+1))%A256472(n+3)`
-/

namespace A065112.P8644375616193106297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256480 (A000040 (n + 1)).toNat) (A256472 (n + 3))

end

end A065112.P8644375616193106297

/-! ## A065112.P6307554966926982782

`A256480(A025487(2*(n+2)))+A256480(A000040(n+1))`
-/

namespace A065112.P6307554966926982782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (A025487 (2 * (n + 2))).toNat + A256480 (A000040 (n + 1)).toNat

end

end A065112.P6307554966926982782

/-!
# A065113: Sum of the squares of the a(n)-th and the (a(n)+1)st triangular numbers (A000217) is a perfect square.

The programs for A065113, the canonical program `A065113.P698618875220295726` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065113 has offset 1).

The definition of A065113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065113.P17474803257901994457

`ogf((6-2x)/(1-7x+7x^2-x^3))`
-/

namespace A065113.P17474803257901994457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -2] [1, -7, 7, -1] n

end

end A065113.P17474803257901994457

namespace A065113

/-- `ogf((6-2x)/(1-7x+7x^2-x^3))` -/
def P17474803257901994457.Spec : Prop :=
  ∀ n, P17474803257901994457.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P698618875220295726

`6*a(n-1)-a(n-2)+4` with `a(0)=6, a(1)=40`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065113

/-- `6*a(n-1)-a(n-2)+4` -/
def P698618875220295726.Spec : Prop :=
  ∀ n, P698618875220295726.a n = A065113 (n + 1)

theorem P698618875220295726.correct : P698618875220295726.Spec := by
  intro n
  simp only [A065113, Nat.add_sub_cancel]

end A065113

/-! ## A065113.P18182776396680359014

`2*A001652(n+1)`
-/

namespace A065113.P18182776396680359014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001652 (n + 1)

end

end A065113.P18182776396680359014

namespace A065113

/-- `2*A001652(n+1)` -/
def P18182776396680359014.Spec : Prop :=
  ∀ n, P18182776396680359014.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P10253616774296608587

`A213667(2*(n+1))`
-/

namespace A065113.P10253616774296608587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213667 (2 * (n + 1))

end

end A065113.P10253616774296608587

namespace A065113

/-- `A213667(2*(n+1))` -/
def P10253616774296608587.Spec : Prop :=
  ∀ n, P10253616774296608587.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P11182692543697890410

`A265278(2*(n+1)+1)`
-/

namespace A065113.P11182692543697890410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (2 * (n + 1) + 1)

end

end A065113.P11182692543697890410

namespace A065113

/-- `A265278(2*(n+1)+1)` -/
def P11182692543697890410.Spec : Prop :=
  ∀ n, P11182692543697890410.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P18002009482988305674

`A293004(2*(n+1)+1)`
-/

namespace A065113.P18002009482988305674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (2 * (n + 1) + 1)

end

end A065113.P18002009482988305674

namespace A065113

/-- `A293004(2*(n+1)+1)` -/
def P18002009482988305674.Spec : Prop :=
  ∀ n, P18002009482988305674.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P14738282252830992620

`∑[ogf((6-2x)/(1-6x+x^2))]`
-/

namespace A065113.P14738282252830992620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -2] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065113.P14738282252830992620

namespace A065113

/-- `∑[ogf((6-2x)/(1-6x+x^2))]` -/
def P14738282252830992620.Spec : Prop :=
  ∀ n, P14738282252830992620.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P8677051938271193353

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=6`
-/

namespace A065113.P8677051938271193353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065113.P8677051938271193353

namespace A065113

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P8677051938271193353.Spec : Prop :=
  ∀ n, P8677051938271193353.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P16097054612116625550

`round(a(n-1)/(3-sqrt(8)))+5` with `a(0)=6`
-/

namespace A065113.P16097054612116625550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 5

end

end A065113.P16097054612116625550

namespace A065113

/-- `round(a(n-1)/(3-sqrt(8)))+5` -/
def P16097054612116625550.Spec : Prop :=
  ∀ n, P16097054612116625550.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P673796207987489309

`2*∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=3`
-/

namespace A065113.P673796207987489309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065113.P673796207987489309

namespace A065113

/-- `2*∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P673796207987489309.Spec : Prop :=
  ∀ n, P673796207987489309.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P3228772577847416482

`A114696(Δ[n²])`
-/

namespace A065113.P3228772577847416482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065113.P3228772577847416482

namespace A065113

/-- `A114696(Δ[n²])` -/
def P3228772577847416482.Spec : Prop :=
  ∀ n, P3228772577847416482.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P6561266922696659501

`∑[A003499(n+1)]`
-/

namespace A065113.P6561266922696659501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065113.P6561266922696659501

namespace A065113

/-- `∑[A003499(n+1)]` -/
def P6561266922696659501.Spec : Prop :=
  ∀ n, P6561266922696659501.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P9194582049790043575

`Δ[2*A089950(n)]`
-/

namespace A065113.P9194582049790043575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065113.P9194582049790043575

namespace A065113

/-- `Δ[2*A089950(n)]` -/
def P9194582049790043575.Spec : Prop :=
  ∀ n, P9194582049790043575.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P13370664264459587608

`∑[abs(Δ[A002315(n)])]`
-/

namespace A065113.P13370664264459587608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065113.P13370664264459587608

namespace A065113

/-- `∑[abs(Δ[A002315(n)])]` -/
def P13370664264459587608.Spec : Prop :=
  ∀ n, P13370664264459587608.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P8887179433234671868

`A202391(n+1)+1`
-/

namespace A065113.P8887179433234671868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202391 (n + 1) + 1

end

end A065113.P8887179433234671868

namespace A065113

/-- `A202391(n+1)+1` -/
def P8887179433234671868.Spec : Prop :=
  ∀ n, P8887179433234671868.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P9795369202753108472

`A002315(n+1)-1`
-/

namespace A065113.P9795369202753108472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 (n + 1) - 1

end

end A065113.P9795369202753108472

namespace A065113

/-- `A002315(n+1)-1` -/
def P9795369202753108472.Spec : Prop :=
  ∀ n, P9795369202753108472.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P13802633681712136440

`A088015(2*n+3)`
-/

namespace A065113.P13802633681712136440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088015 (2 * n + 3)

end

end A065113.P13802633681712136440

namespace A065113

/-- `A088015(2*n+3)` -/
def P13802633681712136440.Spec : Prop :=
  ∀ n, P13802633681712136440.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P11702203317538245057

`2*A048739(Δ[n²])`
-/

namespace A065113.P11702203317538245057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065113.P11702203317538245057

namespace A065113

/-- `2*A048739(Δ[n²])` -/
def P11702203317538245057.Spec : Prop :=
  ∀ n, P11702203317538245057.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P7756194313401789731

`Δ[2*∑[A001652(n)]]`
-/

namespace A065113.P7756194313401789731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065113.P7756194313401789731

namespace A065113

/-- `Δ[2*∑[A001652(n)]]` -/
def P7756194313401789731.Spec : Prop :=
  ∀ n, P7756194313401789731.a n = A065113 (n + 1)

end A065113

/-! ## A065113.P16853360928978162593

`floor(A362545(n+1)/2)`
-/

namespace A065113.P16853360928978162593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A362545 (n + 1) : ℚ) / 2⌋

end

end A065113.P16853360928978162593

namespace A065113

/-- `floor(A362545(n+1)/2)` -/
def P16853360928978162593.Spec : Prop :=
  ∀ n, P16853360928978162593.a n = A065113 (n + 1)

end A065113

/-!
# A065114: Sum of terms in the period of continued fraction for sqrt(n) (A010340) is a square.

The programs for A065114, there is no canonical definition to state claims against.
-/

/-! ## A065114.P10267365017128048495

`eq[2, A000122(A010340(n+1))]+1`
-/

namespace A065114.P10267365017128048495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A010340 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065114.P10267365017128048495

/-! ## A065114.P6275809971609270905

`eq[1, A003285(A010340(n+1)+1)]+1`
-/

namespace A065114.P6275809971609270905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A010340 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065114.P6275809971609270905

/-!
# A065116: Numbers k such that sigma(k) + tau(k) and sigma(k) - tau(k) are primes.

The programs for A065116, there is no canonical definition to state claims against.
-/

/-! ## A065116.P17120732049174863991

`∩[A064205(n+1), A065061(n+1)]`
-/

namespace A065116.P17120732049174863991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065116.P17120732049174863991

/-!
# A065117: Primes such that prime(p) +- pi(p) are simultaneously prime.

The programs for A065117, the canonical program `A065117.P11982239824885181912` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065117 has offset 1).

The definition of A065117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065117.P11982239824885181912

`∩[A065059(n+1), A065060(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065117

/-- `∩[A065059(n+1), A065060(n+1)]` -/
def P11982239824885181912.Spec : Prop :=
  ∀ n, (P11982239824885181912.a n : ℤ) = A065117 (n + 1)

theorem P11982239824885181912.correct : P11982239824885181912.Spec := by
  intro n
  simp only [A065117, Nat.add_sub_cancel]

end A065117

/-! ## A065117.P5605906767622330895

`∩[A065046(n+1), A065059(n+1)]`
-/

namespace A065117.P5605906767622330895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065117.P5605906767622330895

namespace A065117

/-- `∩[A065046(n+1), A065059(n+1)]` -/
def P5605906767622330895.Spec : Prop :=
  ∀ n, (P5605906767622330895.a n : ℤ) = A065117 (n + 1)

end A065117

/-! ## A065117.P2859208217485956003

`∩[A065042(n+1), A065060(n+1)]`
-/

namespace A065117.P2859208217485956003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065117.P2859208217485956003

namespace A065117

/-- `∩[A065042(n+1), A065060(n+1)]` -/
def P2859208217485956003.Spec : Prop :=
  ∀ n, (P2859208217485956003.a n : ℤ) = A065117 (n + 1)

end A065117

/-! ## A065117.P13793903156516517023

`p?[∩[A065042(n+1), A065046(n+1)]]`
-/

namespace A065117.P13793903156516517023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A065117.P13793903156516517023

namespace A065117

/-- `p?[∩[A065042(n+1), A065046(n+1)]]` -/
def P13793903156516517023.Spec : Prop :=
  ∀ n, (P13793903156516517023.a n : ℤ) = A065117 (n + 1)

end A065117

/-!
# A065118: Numbers which are 19 times the sum of their digits.

The programs for A065118, there is no canonical definition to state claims against.
-/

/-! ## A065118.P9768727475973071295

`∩[19*n, A001101(n+1)]`
-/

namespace A065118.P9768727475973071295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065118.P9768727475973071295

/-! ## A065118.P6443180109970163329

`A008601(A392343(n+1))`
-/

namespace A065118.P6443180109970163329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (A392343 (n + 1)).toNat

end

end A065118.P6443180109970163329

/-! ## A065118.P5045555721125267006

`A320081(A217923(n+2))`
-/

namespace A065118.P5045555721125267006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320081 (A217923 (n + 2)).toNat

end

end A065118.P5045555721125267006

/-! ## A065118.P5545863542447174283

`∑[19*A049685(A244173(n))]`
-/

namespace A065118.P5545863542447174283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A049685 (A244173 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065118.P5545863542447174283

/-! ## A065118.P14369918954447483376

`A151979(A014261(n+1)+12)`
-/

namespace A065118.P14369918954447483376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151979 (A014261 (n + 1) + 12).toNat

end

end A065118.P14369918954447483376

/-!
# A065119: Numbers k such that the k-th cyclotomic polynomial is a trinomial.

The programs for A065119, there is no canonical definition to state claims against.
-/

/-! ## A065119.P9987828170900722308

`3*A003586(n+1)`
-/

namespace A065119.P9987828170900722308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003586 (n + 1)

end

end A065119.P9987828170900722308

/-! ## A065119.P1074153912355181403

`A033845(n+1)/2`
-/

namespace A065119.P1074153912355181403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033845 (n + 1) : ℚ) / 2

end

end A065119.P1074153912355181403

/-! ## A065119.P3743361309473614364

`∑[3*A061987(n)]`
-/

namespace A065119.P3743361309473614364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065119.P3743361309473614364

/-! ## A065119.P13462497518348752712

`Δ[3*A259823(n)]`
-/

namespace A065119.P13462497518348752712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A259823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065119.P13462497518348752712

/-! ## A065119.P3805109566618571306

`3*(A069353(n+1)+1)`
-/

namespace A065119.P3805109566618571306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A069353 (n + 1) + 1)

end

end A065119.P3805109566618571306

/-! ## A065119.P14745644729990685939

`3*(A055600(n+1)-1)`
-/

namespace A065119.P14745644729990685939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A055600 (n + 1) - 1)

end

end A065119.P14745644729990685939

/-! ## A065119.P3791223364100163283

`A190812(n+1)+A055600(n+1)`
-/

namespace A065119.P3791223364100163283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1) + A055600 (n + 1)

end

end A065119.P3791223364100163283

/-! ## A065119.P14249224617295614749

`3*(A259823(n+1)-A259823(n))`
-/

namespace A065119.P14249224617295614749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A259823 (n + 1) - A259823 n)

end

end A065119.P14249224617295614749

/-! ## A065119.P15757746805575503979

`A003586(n+1)+A190812(n+1)+1`
-/

namespace A065119.P15757746805575503979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A190812 (n + 1) + 1)

end

end A065119.P15757746805575503979

/-! ## A065119.P3510480317320060146

`A069353(n+1)+A190812(n+1)+2`
-/

namespace A065119.P3510480317320060146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1) + (A190812 (n + 1) + 2)

end

end A065119.P3510480317320060146

/-! ## A065119.P8044775607348588773

`A003586(n+1)+A069353(n+1)+A055600(n+1)`
-/

namespace A065119.P8044775607348588773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A069353 (n + 1) + A055600 (n + 1))

end

end A065119.P8044775607348588773

/-! ## A065119.P12401582423056858528

`A187778(n+2)/2`
-/

namespace A065119.P12401582423056858528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187778 (n + 2) : ℚ) / 2

end

end A065119.P12401582423056858528

/-! ## A065119.P2915186723494305811

`3/2*A007694(n+2)`
-/

namespace A065119.P2915186723494305811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A007694 (n + 2) : ℚ)

end

end A065119.P2915186723494305811

/-! ## A065119.P3349817679586898700

`A007694(n+2)+A003586(n+1)`
-/

namespace A065119.P3349817679586898700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 2) + A003586 (n + 1)

end

end A065119.P3349817679586898700

/-! ## A065119.P10846761474148298469

`A259823(n+1)+A007694(n+2)-A259823(n)`
-/

namespace A065119.P10846761474148298469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 (n + 1) + (A007694 (n + 2) - A259823 n)

end

end A065119.P10846761474148298469

/-! ## A065119.P15349787847421120819

`3*sqrt(A025620(n+1))`
-/

namespace A065119.P15349787847421120819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A025620 (n + 1) : ℝ)

end

end A065119.P15349787847421120819

/-! ## A065119.P659250471736095717

`A000423(n+3)/2`
-/

namespace A065119.P659250471736095717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000423 (n + 3) : ℚ) / 2

end

end A065119.P659250471736095717

/-! ## A065119.P10828752294559527136

`A003586(n+1)+A174030(n+2)-A174030(n+1)`
-/

namespace A065119.P10828752294559527136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) + (A174030 (n + 2) - A174030 (n + 1))

end

end A065119.P10828752294559527136

/-! ## A065119.P226623094684363442

`∩[A003586(n+1), A085126(n+1)]`
-/

namespace A065119.P226623094684363442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065119.P226623094684363442

/-! ## A065119.P11707229222347492010

`∩[A085126(n+1), A308299(n+1)]`
-/

namespace A065119.P11707229222347492010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065119.P11707229222347492010

/-! ## A065119.P1161128659658491446

`record[(n+2)*∏{p}[n+2, 3/#]]`
-/

namespace A065119.P1161128659658491446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), 3 / (p : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065119.P1161128659658491446

/-!
# A065120: Highest power of 2 dividing A057335(n).

The programs for A065120, the canonical program `A065120.P11949846161913114325` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065120 has offset 0).

The definition of A065120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065120.P8355601895577076619

`char[2^n]+a(floor(n/2))` with `a(0)=0`
-/

namespace A065120.P8355601895577076619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A065120.P8355601895577076619

namespace A065120

/-- `char[2^n]+a(floor(n/2))` -/
def P8355601895577076619.Spec : Prop :=
  ∀ n, (P8355601895577076619.a n : ℤ) = A065120 n

end A065120

/-! ## A065120.P11949846161913114325

`a(floor(n/2))+C(2, ∏{p}[2*n, #])` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065120

/-- `a(floor(n/2))+C(2, ∏{p}[2*n, #])` -/
def P11949846161913114325.Spec : Prop :=
  ∀ n, (P11949846161913114325.a n : ℤ) = A065120 n

theorem P11949846161913114325.correct : P11949846161913114325.Spec := by
  intro n
  simp only [A065120]

end A065120

/-! ## A065120.P3441377489163560049

`round(a(floor(n/2))+n^(2-∏{p}[n, #]))` with `a(0)=0`
-/

namespace A065120.P3441377489163560049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a ⌊(n : ℚ) / 2⌋.toNat : ℚ) + (n : ℚ) ^ (2 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) : ℤ))

end

end A065120.P3441377489163560049

namespace A065120

/-- `round(a(floor(n/2))+n^(2-∏{p}[n, #]))` -/
def P3441377489163560049.Spec : Prop :=
  ∀ n, P3441377489163560049.a n = A065120 n

end A065120

/-! ## A065120.P10830381083398652895

`val(A057335(n), 2)`
-/

namespace A065120.P10830381083398652895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057335 n).toNat 2

end

end A065120.P10830381083398652895

namespace A065120

/-- `val(A057335(n), 2)` -/
def P10830381083398652895.Spec : Prop :=
  ∀ n, (P10830381083398652895.a n : ℤ) = A065120 n

end A065120

/-! ## A065120.P11905797907146692785

`val(A036044(n)+2, 2)`
-/

namespace A065120.P11905797907146692785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036044 n + 2).toNat 2

end

end A065120.P11905797907146692785

namespace A065120

/-- `val(A036044(n)+2, 2)` -/
def P11905797907146692785.Spec : Prop :=
  ∀ n, (P11905797907146692785.a n : ℤ) = A065120 n

end A065120

/-! ## A065120.P1689675141283283926

`a(floor(n/2))+C(A000010(2*n), n)` with `a(0)=0`
-/

namespace A065120.P1689675141283283926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.choose (A000010 (2 * n)).toNat n

end

end A065120.P1689675141283283926

namespace A065120

/-- `a(floor(n/2))+C(A000010(2*n), n)` -/
def P1689675141283283926.Spec : Prop :=
  ∀ n, (P1689675141283283926.a n : ℤ) = A065120 n

end A065120

/-! ## A065120.P13227717399866856791

`A090996(A006068(n))`
-/

namespace A065120.P13227717399866856791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A006068 n).toNat

end

end A065120.P13227717399866856791

namespace A065120

/-- `A090996(A006068(n))` -/
def P13227717399866856791.Spec : Prop :=
  ∀ n, P13227717399866856791.a n = A065120 n

end A065120

/-! ## A065120.P11793811216932363406

`A090996(A268716(n))`
-/

namespace A065120.P11793811216932363406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A268716 n).toNat

end

end A065120.P11793811216932363406

namespace A065120

/-- `A090996(A268716(n))` -/
def P11793811216932363406.Spec : Prop :=
  ∀ n, P11793811216932363406.a n = A065120 n

end A065120

/-! ## A065120.P4149278279266525113

`val(A281589(2*n+1), 2)`
-/

namespace A065120.P4149278279266525113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A281589 (2 * n + 1)).toNat 2

end

end A065120.P4149278279266525113

namespace A065120

/-- `val(A281589(2*n+1), 2)` -/
def P4149278279266525113.Spec : Prop :=
  ∀ n, (P4149278279266525113.a n : ℤ) = A065120 n

end A065120

/-! ## A065120.P14325825396313217954

`A090996(A334727(n))`
-/

namespace A065120.P14325825396313217954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A334727 n).toNat

end

end A065120.P14325825396313217954

namespace A065120

/-- `A090996(A334727(n))` -/
def P14325825396313217954.Spec : Prop :=
  ∀ n, P14325825396313217954.a n = A065120 n

end A065120

/-! ## A065120.P15802297298431184452

`A090996(A341335(n))`
-/

namespace A065120.P15802297298431184452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A341335 n).toNat

end

end A065120.P15802297298431184452

namespace A065120

/-- `A090996(A341335(n))` -/
def P15802297298431184452.Spec : Prop :=
  ∀ n, P15802297298431184452.a n = A065120 n

end A065120

/-! ## A065120.P13087303045691667033

`A007814(A036044(n)+2)`
-/

namespace A065120.P13087303045691667033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A036044 n + 2).toNat

end

end A065120.P13087303045691667033

namespace A065120

/-- `A007814(A036044(n)+2)` -/
def P13087303045691667033.Spec : Prop :=
  ∀ n, P13087303045691667033.a n = A065120 n

end A065120

/-! ## A065120.P976212518559610283

`A090996(A122155(2*n+1)-1)`
-/

namespace A065120.P976212518559610283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A122155 (2 * n + 1) - 1).toNat

end

end A065120.P976212518559610283

namespace A065120

/-- `A090996(A122155(2*n+1)-1)` -/
def P976212518559610283.Spec : Prop :=
  ∀ n, P976212518559610283.a n = A065120 n

end A065120

/-! ## A065120.P9171567047588485257

`A279209(A004761(n+2))`
-/

namespace A065120.P9171567047588485257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A004761 (n + 2)).toNat

end

end A065120.P9171567047588485257

namespace A065120

/-- `A279209(A004761(n+2))` -/
def P9171567047588485257.Spec : Prop :=
  ∀ n, P9171567047588485257.a n = A065120 n

end A065120

/-! ## A065120.P6946482351156554601

`A279209(A011782(A070939(n))+n)`
-/

namespace A065120.P6946482351156554601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A011782 (A070939 n).toNat + (n : ℤ)).toNat

end

end A065120.P6946482351156554601

namespace A065120

/-- `A279209(A011782(A070939(n))+n)` -/
def P6946482351156554601.Spec : Prop :=
  ∀ n, P6946482351156554601.a n = A065120 n

end A065120

/-! ## A065120.P14765054925690734709

`A014963(2*n)+a(floor(n/2))-1` with `a(0)=0`
-/

namespace A065120.P14765054925690734709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014963 (2 * n) + (a ⌊(n : ℚ) / 2⌋.toNat - 1)

end

end A065120.P14765054925690734709

namespace A065120

/-- `A014963(2*n)+a(floor(n/2))-1` -/
def P14765054925690734709.Spec : Prop :=
  ∀ n, P14765054925690734709.a n = A065120 n

end A065120

/-! ## A065120.P3388061112474351439

`A080791(2*n)-A080791(A006257(2*n+1))`
-/

namespace A065120.P3388061112474351439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * n) - A080791 (A006257 (2 * n + 1)).toNat

end

end A065120.P3388061112474351439

namespace A065120

/-- `A080791(2*n)-A080791(A006257(2*n+1))` -/
def P3388061112474351439.Spec : Prop :=
  ∀ n, P3388061112474351439.a n = A065120 n

end A065120

/-! ## A065120.P13371939241438578186

`A290255(A072376(2*n+1)+n)`
-/

namespace A065120.P13371939241438578186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A072376 (2 * n + 1) + (n : ℤ)).toNat

end

end A065120.P13371939241438578186

namespace A065120

/-- `A290255(A072376(2*n+1)+n)` -/
def P13371939241438578186.Spec : Prop :=
  ∀ n, P13371939241438578186.a n = A065120 n

end A065120

/-! ## A065120.P704530325401553950

`A023416(2*n)-A023416(A053645(2*n+1))`
-/

namespace A065120.P704530325401553950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n) - A023416 (A053645 (2 * n + 1)).toNat

end

end A065120.P704530325401553950

namespace A065120

/-- `A023416(2*n)-A023416(A053645(2*n+1))` -/
def P704530325401553950.Spec : Prop :=
  ∀ n, P704530325401553950.a n = A065120 n

end A065120

/-! ## A065120.P13053418100256217222

`A037861(2*n)-A037861(A053645(2*n+1))`
-/

namespace A065120.P13053418100256217222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * n) - A037861 (A053645 (2 * n + 1)).toNat

end

end A065120.P13053418100256217222

namespace A065120

/-- `A037861(2*n)-A037861(A053645(2*n+1))` -/
def P13053418100256217222.Spec : Prop :=
  ∀ n, P13053418100256217222.a n = A065120 n

end A065120

/-!
# A065122: a(1) = 2; a(n) is smallest prime > 10*a(n-1).

The programs for A065122, there is no canonical definition to state claims against.
-/

/-! ## A065122.P9787491445469318439

`or(A198972(n), A327436(n))`
-/

namespace A065122.P9787491445469318439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198972 n) (A327436 n)

end

end A065122.P9787491445469318439

/-!
# A065124: a(n) = (sum of digits of a(n-2)) + a(n-1); a(0) = 0 and a(1) = 1.

The programs for A065124, the canonical program `A065124.P8285279052872578272` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065124 has offset 0).

The definition of A065124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065124.P8285279052872578272

`A007953(a(n-2))+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065124

/-- `A007953(a(n-2))+a(n-1)` -/
def P8285279052872578272.Spec : Prop :=
  ∀ n, P8285279052872578272.a n = A065124 n

theorem P8285279052872578272.correct : P8285279052872578272.Spec := by
  intro n
  simp only [A065124]

end A065124

/-!
# A065125: Numbers k such that the sums of the odd and even aliquot parts of k both divide k.

The programs for A065125, there is no canonical definition to state claims against.
-/

/-! ## A065125.P11894934739085062770

`(A343733(n+1)-A057428(n))*A343733(n+1)`
-/

namespace A065125.P11894934739085062770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343733 (n + 1) - A057428 n) * A343733 (n + 1)

end

end A065125.P11894934739085062770

/-! ## A065125.P8243327991527541198

`A139256(A028310(n))%A139306(n+1)`
-/

namespace A065125.P8243327991527541198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139256 (A028310 n).toNat) (A139306 (n + 1))

end

end A065125.P8243327991527541198

/-! ## A065125.P11600258881519412894

`A135632(A004277(n))*A343733(n+1)`
-/

namespace A065125.P11600258881519412894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135632 (A004277 n).toNat * A343733 (n + 1)

end

end A065125.P11600258881519412894

/-! ## A065125.P3439209938993611651

`lcm(A072868(A028310(n)), A343733(n+1))`
-/

namespace A065125.P3439209938993611651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072868 (A028310 n).toNat) (A343733 (n + 1))

end

end A065125.P3439209938993611651

/-! ## A065125.P8491070040279278319

`2*A138728(A008486(n))`
-/

namespace A065125.P8491070040279278319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138728 (A008486 n).toNat

end

end A065125.P8491070040279278319

/-!
# A065126: Numbers n for which sigma_2(n^2) == 3 (mod 10).

The programs for A065126, the canonical program `A065126.P13933962713951851804` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065126 has offset 1).

The definition of A065126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065126.P18057145189711821268

`eq[3, A065803(n^ceil(atan(n)))]`
-/

namespace A065126.P18057145189711821268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065126.P18057145189711821268

namespace A065126

/-- `eq[3, A065803(n^ceil(atan(n)))]` -/
def P18057145189711821268.Spec : Prop :=
  ∀ n, (P18057145189711821268.a n : ℤ) = A065126 (n + 1)

end A065126

/-! ## A065126.P13933962713951851804

`eq[3, A065803((n+1)²)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065126

/-- `eq[3, A065803((n+1)²)]+1` -/
def P13933962713951851804.Spec : Prop :=
  ∀ n, (P13933962713951851804.a n : ℤ) = A065126 (n + 1)

theorem P13933962713951851804.correct : P13933962713951851804.Spec := by
  intro n
  simp only [A065126, Nat.add_sub_cancel]

end A065126

/-! ## A065126.P7331523609087585582

`eq[3, A065803(A253909(n))]`
-/

namespace A065126.P7331523609087585582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065126.P7331523609087585582

namespace A065126

/-- `eq[3, A065803(A253909(n))]` -/
def P7331523609087585582.Spec : Prop :=
  ∀ n, (P7331523609087585582.a n : ℤ) = A065126 (n + 1)

end A065126

/-! ## A065126.P17055015954016865089

`eq[3, A065803(A028310(n)²)]`
-/

namespace A065126.P17055015954016865089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (A028310 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065126.P17055015954016865089

namespace A065126

/-- `eq[3, A065803(A028310(n)²)]` -/
def P17055015954016865089.Spec : Prop :=
  ∀ n, (P17055015954016865089.a n : ℤ) = A065126 (n + 1)

end A065126

/-! ## A065126.P5618900745008169307

`eq[3, A065803(A233583(n+1)²)]`
-/

namespace A065126.P5618900745008169307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (A233583 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065126.P5618900745008169307

namespace A065126

/-- `eq[3, A065803(A233583(n+1)²)]` -/
def P5618900745008169307.Spec : Prop :=
  ∀ n, (P5618900745008169307.a n : ℤ) = A065126 (n + 1)

end A065126

/-!
# A065127: Nonsquares with number of prime factors equal to twice the number of distinct prime factors.

The programs for A065127, there is no canonical definition to state claims against.
-/

/-! ## A065127.P9307234888119117991

`filter[A067801(n+1), A049240(#)]`
-/

namespace A065127.P9307234888119117991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A065127.P9307234888119117991

/-! ## A065127.P4597225545419217303

`filter[A067801(n+1), A353669(#)]`
-/

namespace A065127.P4597225545419217303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A065127.P4597225545419217303

/-! ## A065127.P11591441831073623459

`filter[A067801(n+1), A389905(#)]`
-/

namespace A065127.P11591441831073623459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A065127.P11591441831073623459

/-! ## A065127.P6391232240305503951

`∩[A067801(n+1), A391319(n+1)]`
-/

namespace A065127.P6391232240305503951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P6391232240305503951

/-! ## A065127.P2701578901811291763

`∩[A067801(n+1), A391415(n+1)]`
-/

namespace A065127.P2701578901811291763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P2701578901811291763

/-! ## A065127.P17128127481435185358

`∩[A067801(n+1), A362148(n+1)]`
-/

namespace A065127.P17128127481435185358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P17128127481435185358

/-! ## A065127.P15987639862313532571

`∩[A067801(n+1), A074451(n+1)]`
-/

namespace A065127.P15987639862313532571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P15987639862313532571

/-! ## A065127.P1248489487563630576

`∩[A067801(n+1), A378767(n+1)]`
-/

namespace A065127.P1248489487563630576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P1248489487563630576

/-! ## A065127.P526282251107176133

`∩[A046099(n+1), A067801(n+1)]`
-/

namespace A065127.P526282251107176133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P526282251107176133

/-! ## A065127.P2471778135713226300

`∩[A067801(n+1), A332785(n+1)]`
-/

namespace A065127.P2471778135713226300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P2471778135713226300

/-! ## A065127.P18336790366026336030

`∩[A067801(n+1), A317616(n+1)]`
-/

namespace A065127.P18336790366026336030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P18336790366026336030

/-! ## A065127.P1968319967194638936

`∩[A067801(n+1), A303946(n+1)]`
-/

namespace A065127.P1968319967194638936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P1968319967194638936

/-! ## A065127.P8040350469774163840

`∩[A051144(n+1), A067801(n+1)]`
-/

namespace A065127.P8040350469774163840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P8040350469774163840

/-! ## A065127.P763672524661080074

`∩[A059404(n+1), A067801(n+1)]`
-/

namespace A065127.P763672524661080074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P763672524661080074

/-! ## A065127.P1747454235289193947

`∩[A067801(n+1), A119899(n+1)]`
-/

namespace A065127.P1747454235289193947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P1747454235289193947

/-! ## A065127.P12844450646501852982

`∩[A007624(n+1), A067801(n+1)]`
-/

namespace A065127.P12844450646501852982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P12844450646501852982

/-! ## A065127.P3615323270772543369

`∩[A067801(n+1), A229153(n+1)]`
-/

namespace A065127.P3615323270772543369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P3615323270772543369

/-! ## A065127.P11218489902282409750

`∩[A067801(n+1), A389065(n+1)]`
-/

namespace A065127.P11218489902282409750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P11218489902282409750

/-! ## A065127.P16417460186874860646

`∩[A067801(n+1), A106543(n+1)]`
-/

namespace A065127.P16417460186874860646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065127.P16417460186874860646

/-!
# A065128: Number of invertible n X n matrices mod 4 (i.e., over the ring Z_4).

The programs for A065128, the canonical program `A065128.P10641093618533566819` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065128 has offset 0).

The definition of A065128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065128.P10641093618533566819

`2^n²*A002884(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065128

/-- `2^n²*A002884(n)` -/
def P10641093618533566819.Spec : Prop :=
  ∀ n, P10641093618533566819.a n = A065128 n

theorem P10641093618533566819.correct : P10641093618533566819.Spec := by
  intro n
  simp only [A065128]

end A065128

/-! ## A065128.P12019255989819040385

`(a(n-1)+a(n-1))*A060195(n)` with `a(0)=1`
-/

namespace A065128.P12019255989819040385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - 1)) * A060195 n

end

end A065128.P12019255989819040385

namespace A065128

/-- `(a(n-1)+a(n-1))*A060195(n)` -/
def P12019255989819040385.Spec : Prop :=
  ∀ n, P12019255989819040385.a n = A065128 n

end A065128

/-! ## A065128.P12674139426840009653

`C(2^n, 2)*a(n-1)*A081294(n)` with `a(0)=1`
-/

namespace A065128.P12674139426840009653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 ^ n) 2 : ℤ) * a (n - 1) * A081294 n

end

end A065128.P12674139426840009653

namespace A065128

/-- `C(2^n, 2)*a(n-1)*A081294(n)` -/
def P12674139426840009653.Spec : Prop :=
  ∀ n, P12674139426840009653.a n = A065128 n

end A065128

/-! ## A065128.P2181770230998064854

`A028365(n)*A053763(n)`
-/

namespace A065128.P2181770230998064854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028365 n * A053763 n

end

end A065128.P2181770230998064854

namespace A065128

/-- `A028365(n)*A053763(n)` -/
def P2181770230998064854.Spec : Prop :=
  ∀ n, P2181770230998064854.a n = A065128 n

end A065128

/-! ## A065128.P4748697368778928108

`A002884(n)*A060656(2*n)`
-/

namespace A065128.P4748697368778928108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A060656 (2 * n)

end

end A065128.P4748697368778928108

namespace A065128

/-- `A002884(n)*A060656(2*n)` -/
def P4748697368778928108.Spec : Prop :=
  ∀ n, P4748697368778928108.a n = A065128 n

end A065128

/-!
# A065130: a(n) = A005228(n) - A000217(n).

The programs for A065130, there is no canonical definition to state claims against.
-/

/-! ## A065130.P11278979075365393015

`A005228(n+1)-A000217(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065130.P11278979075365393015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - A000217 (n + 1)

end

end A065130.P11278979075365393015

/-! ## A065130.P3100426250426556004

`∑[A081688(n)-n]`
-/

namespace A065130.P3100426250426556004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065130.P3100426250426556004

/-! ## A065130.P14008048585447345222

`A081689(n)-(∑[n]+n)`
-/

namespace A065130.P14008048585447345222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A065130.P14008048585447345222

/-! ## A065130.P3287716572790051859

`A005228(n+1)-∑[n+1]`
-/

namespace A065130.P3287716572790051859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065130.P3287716572790051859

/-! ## A065130.P13037626426125123599

`A061577(n+1)%∑[n+1]`
-/

namespace A065130.P13037626426125123599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061577 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065130.P13037626426125123599

/-! ## A065130.P7259941216872678980

`A030124(n)+a(n-1)-(n+1)` with `a(0)=0`
-/

namespace A065130.P7259941216872678980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030124 n + a (n - 1) - (n + 1 : ℤ)

end

end A065130.P7259941216872678980

/-! ## A065130.P7336658640803932751

`A005228(n+1)%A234041(n)`
-/

namespace A065130.P7336658640803932751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005228 (n + 1)) (A234041 n)

end

end A065130.P7336658640803932751

/-! ## A065130.P10156217696815422422

`∑[A225687(n+1)]-(A225687(n+1)+n)`
-/

namespace A065130.P10156217696815422422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A225687 (n + 1) + (n : ℤ))

end

end A065130.P10156217696815422422

/-!
# A065133: Remainder when n-th prime is divided by the number of primes not exceeding n.

The programs for A065133, the canonical program `A065133.P6887702118978613148` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065133 has offset 2).

The definition of A065133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065133.P6887702118978613148

`A000040(n+2)%A000720(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065133

/-- `A000040(n+2)%A000720(n+2)` -/
def P6887702118978613148.Spec : Prop :=
  ∀ n, P6887702118978613148.a n = A065133 (n + 2)

theorem P6887702118978613148.correct : P6887702118978613148.Spec := by
  intro n
  simp only [A065133, Nat.add_sub_cancel]

end A065133

/-! ## A065133.P12702642519193252515

`p?[2*n+1]%∑[A010051(n+2)]`
-/

namespace A065133.P12702642519193252515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A065133.P12702642519193252515

namespace A065133

/-- `p?[2*n+1]%∑[A010051(n+2)]` -/
def P12702642519193252515.Spec : Prop :=
  ∀ n, P12702642519193252515.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P11377984904773426056

`A045319(n+1)%A000720(n+2)`
-/

namespace A065133.P11377984904773426056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 (n + 1)) (A000720 (n + 2))

end

end A065133.P11377984904773426056

namespace A065133

/-- `A045319(n+1)%A000720(n+2)` -/
def P11377984904773426056.Spec : Prop :=
  ∀ n, P11377984904773426056.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P16129181828243615978

`A045344(n+1)%A000720(n+2)`
-/

namespace A065133.P16129181828243615978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (n + 1)) (A000720 (n + 2))

end

end A065133.P16129181828243615978

namespace A065133

/-- `A045344(n+1)%A000720(n+2)` -/
def P16129181828243615978.Spec : Prop :=
  ∀ n, P16129181828243615978.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P4303474988479813294

`A065091(n+1)%A000720(n+2)`
-/

namespace A065133.P4303474988479813294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (A000720 (n + 2))

end

end A065133.P4303474988479813294

namespace A065133

/-- `A065091(n+1)%A000720(n+2)` -/
def P4303474988479813294.Spec : Prop :=
  ∀ n, P4303474988479813294.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P17183966360654327286

`Δ[A007504(n+1)]%A000720(n+2)`
-/

namespace A065133.P17183966360654327286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000720 (n + 2))

end

end A065133.P17183966360654327286

namespace A065133

/-- `Δ[A007504(n+1)]%A000720(n+2)` -/
def P17183966360654327286.Spec : Prop :=
  ∀ n, P17183966360654327286.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P18440882293834400382

`A045319(n+1)%A099801(A065033(n))`
-/

namespace A065133.P18440882293834400382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 (n + 1)) (A099801 (A065033 n).toNat)

end

end A065133.P18440882293834400382

namespace A065133

/-- `A045319(n+1)%A099801(A065033(n))` -/
def P18440882293834400382.Spec : Prop :=
  ∀ n, P18440882293834400382.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P7732544198787558105

`sqrt(A001248(n+2))%A000720(n+2)`
-/

namespace A065133.P7732544198787558105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 2) : ℝ))) (A000720 (n + 2))

end

end A065133.P7732544198787558105

namespace A065133

/-- `sqrt(A001248(n+2))%A000720(n+2)` -/
def P7732544198787558105.Spec : Prop :=
  ∀ n, P7732544198787558105.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P6624255086859416587

`A093515(2*(n+1))%A000720(n+2)`
-/

namespace A065133.P6624255086859416587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093515 (2 * (n + 1))) (A000720 (n + 2))

end

end A065133.P6624255086859416587

namespace A065133

/-- `A093515(2*(n+1))%A000720(n+2)` -/
def P6624255086859416587.Spec : Prop :=
  ∀ n, P6624255086859416587.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P9797246167705724546

`A000040(n+2)-A000720(n+2)*A111114(n+2)`
-/

namespace A065133.P9797246167705724546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000720 (n + 2) * A111114 (n + 2)

end

end A065133.P9797246167705724546

namespace A065133

/-- `A000040(n+2)-A000720(n+2)*A111114(n+2)` -/
def P9797246167705724546.Spec : Prop :=
  ∀ n, P9797246167705724546.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P7148510047399489438

`A151800(record[A006530(n+2)])%A000720(n+2)`
-/

namespace A065133.P7148510047399489438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000720 (n + 2))

end

end A065133.P7148510047399489438

namespace A065133

/-- `A151800(record[A006530(n+2)])%A000720(n+2)` -/
def P7148510047399489438.Spec : Prop :=
  ∀ n, P7148510047399489438.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P11007492991387787406

`A151800(record[A020639(n+2)])%A000720(n+2)`
-/

namespace A065133.P11007492991387787406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000720 (n + 2))

end

end A065133.P11007492991387787406

namespace A065133

/-- `A151800(record[A020639(n+2)])%A000720(n+2)` -/
def P11007492991387787406.Spec : Prop :=
  ∀ n, P11007492991387787406.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P9224618482320365687

`record[A006530(n+3)]%A000720(n+2)`
-/

namespace A065133.P9224618482320365687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000720 (n + 2))

end

end A065133.P9224618482320365687

namespace A065133

/-- `record[A006530(n+3)]%A000720(n+2)` -/
def P9224618482320365687.Spec : Prop :=
  ∀ n, P9224618482320365687.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P7855824992584518900

`record[A020639(n+3)]%A000720(n+2)`
-/

namespace A065133.P7855824992584518900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000720 (n + 2))

end

end A065133.P7855824992584518900

namespace A065133

/-- `record[A020639(n+3)]%A000720(n+2)` -/
def P7855824992584518900.Spec : Prop :=
  ∀ n, P7855824992584518900.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P724236737088460296

`A063934(2*(n+1))%A000720(n+2)`
-/

namespace A065133.P724236737088460296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063934 (2 * (n + 1))) (A000720 (n + 2))

end

end A065133.P724236737088460296

namespace A065133

/-- `A063934(2*(n+1))%A000720(n+2)` -/
def P724236737088460296.Spec : Prop :=
  ∀ n, P724236737088460296.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P3412605855627924317

`A151800(record[A014963(n+2)])%A000720(n+2)`
-/

namespace A065133.P3412605855627924317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000720 (n + 2))

end

end A065133.P3412605855627924317

namespace A065133

/-- `A151800(record[A014963(n+2)])%A000720(n+2)` -/
def P3412605855627924317.Spec : Prop :=
  ∀ n, P3412605855627924317.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P5526239080841486003

`A003961(record[A000010(n+1)+1])%A000720(n+2)`
-/

namespace A065133.P5526239080841486003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000720 (n + 2))

end

end A065133.P5526239080841486003

namespace A065133

/-- `A003961(record[A000010(n+1)+1])%A000720(n+2)` -/
def P5526239080841486003.Spec : Prop :=
  ∀ n, P5526239080841486003.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P3009537542698974141

`record[A014963(n+3)]%A000720(n+2)`
-/

namespace A065133.P3009537542698974141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000720 (n + 2))

end

end A065133.P3009537542698974141

namespace A065133

/-- `record[A014963(n+3)]%A000720(n+2)` -/
def P3009537542698974141.Spec : Prop :=
  ∀ n, P3009537542698974141.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P14083672400273777654

`record[A039649(2*n+3)]%A000720(n+2)`
-/

namespace A065133.P14083672400273777654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000720 (n + 2))

end

end A065133.P14083672400273777654

namespace A065133

/-- `record[A039649(2*n+3)]%A000720(n+2)` -/
def P14083672400273777654.Spec : Prop :=
  ∀ n, P14083672400273777654.a n = A065133 (n + 2)

end A065133

/-! ## A065133.P10628894195983664729

`p?[A003961(n+1)]%A000720(n+2)`
-/

namespace A065133.P10628894195983664729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000720 (n + 2))

end

end A065133.P10628894195983664729

namespace A065133

/-- `p?[A003961(n+1)]%A000720(n+2)` -/
def P10628894195983664729.Spec : Prop :=
  ∀ n, P10628894195983664729.a n = A065133 (n + 2)

end A065133

/-!
# A065134: Remainder when n is divided by the number of primes not exceeding n.

The programs for A065134, the canonical program `A065134.P3547267754076286155` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065134 has offset 2).

The definition of A065134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065134.P3547267754076286155

`(n+2)%A000720(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065134

/-- `(n+2)%A000720(n+2)` -/
def P3547267754076286155.Spec : Prop :=
  ∀ n, P3547267754076286155.a n = A065134 (n + 2)

theorem P3547267754076286155.correct : P3547267754076286155.Spec := by
  intro n
  simp only [A065134, Nat.add_sub_cancel]

end A065134

/-! ## A065134.P12344905309913373353

`(n+2)%A099801(A065033(n))`
-/

namespace A065134.P12344905309913373353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A099801 (A065033 n).toNat)

end

end A065134.P12344905309913373353

namespace A065134

/-- `(n+2)%A099801(A065033(n))` -/
def P12344905309913373353.Spec : Prop :=
  ∀ n, P12344905309913373353.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P8917130816810710222

`A000027(n+2)%∑[A010051(n+2)]`
-/

namespace A065134.P8917130816810710222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065134.P8917130816810710222

namespace A065134

/-- `A000027(n+2)%∑[A010051(n+2)]` -/
def P8917130816810710222.Spec : Prop :=
  ∀ n, P8917130816810710222.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P14411239114090371781

`A062298(n+2)%∑[A010051(n+2)]`
-/

namespace A065134.P14411239114090371781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062298 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065134.P14411239114090371781

namespace A065134

/-- `A062298(n+2)%∑[A010051(n+2)]` -/
def P14411239114090371781.Spec : Prop :=
  ∀ n, P14411239114090371781.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P13212783703532840334

`A065475(n+1)%A023443(A036234(n+2))`
-/

namespace A065134.P13212783703532840334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065475 (n + 1)) (A023443 (A036234 (n + 2)).toNat)

end

end A065134.P13212783703532840334

namespace A065134

/-- `A065475(n+1)%A023443(A036234(n+2))` -/
def P13212783703532840334.Spec : Prop :=
  ∀ n, P13212783703532840334.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P16059531956958645140

`A020725(n+1)%A230980(A020725(n+1))`
-/

namespace A065134.P16059531956958645140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (A230980 (A020725 (n + 1)).toNat)

end

end A065134.P16059531956958645140

namespace A065134

/-- `A020725(n+1)%A230980(A020725(n+1))` -/
def P16059531956958645140.Spec : Prop :=
  ∀ n, P16059531956958645140.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P14915025949546031236

`A023444(n+4)%A023443(A036234(n+2))`
-/

namespace A065134.P14915025949546031236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023444 (n + 4)) (A023443 (A036234 (n + 2)).toNat)

end

end A065134.P14915025949546031236

namespace A065134

/-- `A023444(n+4)%A023443(A036234(n+2))` -/
def P14915025949546031236.Spec : Prop :=
  ∀ n, P14915025949546031236.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P3647159314865850821

`A008619(2*n+3)%∑[A010051(n+2)]`
-/

namespace A065134.P3647159314865850821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065134.P3647159314865850821

namespace A065134

/-- `A008619(2*n+3)%∑[A010051(n+2)]` -/
def P3647159314865850821.Spec : Prop :=
  ∀ n, P3647159314865850821.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P15385979940015639484

`A036234(A000040(n+1)+1)%(1-A036234(n+2))`
-/

namespace A065134.P15385979940015639484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036234 (A000040 (n + 1) + 1).toNat) (1 - A036234 (n + 2))

end

end A065134.P15385979940015639484

namespace A065134

/-- `A036234(A000040(n+1)+1)%(1-A036234(n+2))` -/
def P15385979940015639484.Spec : Prop :=
  ∀ n, P15385979940015639484.a n = A065134 (n + 2)

end A065134

/-! ## A065134.P4528040627091477294

`A372727(A374426(n+2))`
-/

namespace A065134.P4528040627091477294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372727 (A374426 (n + 2)).toNat

end

end A065134.P4528040627091477294

namespace A065134

/-- `A372727(A374426(n+2))` -/
def P4528040627091477294.Spec : Prop :=
  ∀ n, P4528040627091477294.a n = A065134 (n + 2)

end A065134

/-!
# A065135: Numbers m such that prime(m) = pi(m)*k + 1 for some k.

The programs for A065135, there is no canonical definition to state claims against.
-/

/-! ## A065135.P1158721473733788006

`eq[1, A065133(n+2)]+2`
-/

namespace A065135.P1158721473733788006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A065135.P1158721473733788006

/-! ## A065135.P17573150445524424119

`eq[1, A065133(A233583(n+1))]`
-/

namespace A065135.P17573150445524424119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065133 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065135.P17573150445524424119

/-! ## A065135.P14724230188955955716

`A000720(p?[A045344(n+1)*A065133(n+2)])`
-/

namespace A065135.P14724230188955955716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A065133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A065135.P14724230188955955716

/-! ## A065135.P4632954741692138358

`A056239(p?[A065091(n+1)*A065133(n+2)])`
-/

namespace A065135.P4632954741692138358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A065133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A065135.P4632954741692138358

/-! ## A065135.P9904315422334330000

`A058933(p?[A065091(n+1)*A065133(n+2)])`
-/

namespace A065135.P9904315422334330000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A065133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A065135.P9904315422334330000

/-!
# A065136: Numbers n such that n = pi(n)*k + 1 for some k.

The programs for A065136, there is no canonical definition to state claims against.
-/

/-! ## A065136.P18292998733622606319

`eq[1, A065134(n+2)]+2`
-/

namespace A065136.P18292998733622606319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A065136.P18292998733622606319

/-! ## A065136.P327010921499153457

`A009056(eq[1, A065134(n+2)])`
-/

namespace A065136.P327010921499153457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065136.P327010921499153457

/-! ## A065136.P4582908557580213779

`A009056(eq[1, (n+2)%A000720(n+2)])`
-/

namespace A065136.P4582908557580213779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000720 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065136.P4582908557580213779

/-! ## A065136.P14961120388985394363

`eq[1, A065134(A233583(n+1))]`
-/

namespace A065136.P14961120388985394363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065134 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065136.P14961120388985394363

/-! ## A065136.P11991704061769888934

`A000720(p?[A065091(n+1)*A065134(n+2)])`
-/

namespace A065136.P11991704061769888934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A065134 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A065136.P11991704061769888934

/-!
# A065137: Sum of digits of n plus sum of cubes of digits of n.

The programs for A065137, the canonical program `A065137.P7010743803192741555` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065137 has offset 0).

The definition of A065137 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065137.P7010743803192741555

`A007953(n)+A055012(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065137

/-- `A007953(n)+A055012(n)` -/
def P7010743803192741555.Spec : Prop :=
  ∀ n, P7010743803192741555.a n = A065137 n

theorem P7010743803192741555.correct : P7010743803192741555.Spec := by
  intro n
  simp only [A065137]

end A065137

/-! ## A065137.P2816878849979976179

`∑{digits}[n, #^3+#]`
-/

namespace A065137.P2816878849979976179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3 + x).sum

end

end A065137.P2816878849979976179

namespace A065137

/-- `∑{digits}[n, #^3+#]` -/
def P2816878849979976179.Spec : Prop :=
  ∀ n, (P2816878849979976179.a n : ℤ) = A065137 n

end A065137

/-! ## A065137.P15979310829892368783

`2*∑{digits}[n, A006003(#)]`
-/

namespace A065137.P15979310829892368783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A006003 x).sum

end

end A065137.P15979310829892368783

namespace A065137

/-- `2*∑{digits}[n, A006003(#)]` -/
def P15979310829892368783.Spec : Prop :=
  ∀ n, P15979310829892368783.a n = A065137 n

end A065137

/-! ## A065137.P5600829228142165275

`∑{digits}[n, #]+∑{digits}[n, A000578(#)]`
-/

namespace A065137.P5600829228142165275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A000578 x).sum

end

end A065137.P5600829228142165275

namespace A065137

/-- `∑{digits}[n, #]+∑{digits}[n, A000578(#)]` -/
def P5600829228142165275.Spec : Prop :=
  ∀ n, P5600829228142165275.a n = A065137 n

end A065137

/-! ## A065137.P13316158100648218695

`A055012(n)+log2(A329562(n))`
-/

namespace A065137.P13316158100648218695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055012 n : ℝ) + Real.logb 2 (A329562 n : ℝ)

end

end A065137.P13316158100648218695

namespace A065137

/-- `A055012(n)+log2(A329562(n))` -/
def P13316158100648218695.Spec : Prop :=
  ∀ n, P13316158100648218695.a n = (A065137 n : ℝ)

end A065137

/-! ## A065137.P1204035725789592789

`A055012(n)+A062028(n)-n`
-/

namespace A065137.P1204035725789592789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n + (A062028 n - (n : ℤ))

end

end A065137.P1204035725789592789

namespace A065137

/-- `A055012(n)+A062028(n)-n` -/
def P1204035725789592789.Spec : Prop :=
  ∀ n, P1204035725789592789.a n = A065137 n

theorem P1204035725789592789.correct : P1204035725789592789.Spec := by
  intro n
  simp only [A065137, Nat.add_sub_cancel, A065137.P1204035725789592789.a, A065137.P7010743803192741555.a, A007953, A007953.P3472751987379697826.a, A055012, A055012.P4592185717369733238.f1, A055012.P4592185717369733238.a, A062028, A062028.P8420805724104474199.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065137

/-! ## A065137.P6989015410544464391

`A055012(n)+A053832(A102487(n+1))`
-/

namespace A065137.P6989015410544464391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n + A053832 (A102487 (n + 1)).toNat

end

end A065137.P6989015410544464391

namespace A065137

/-- `A055012(n)+A053832(A102487(n+1))` -/
def P6989015410544464391.Spec : Prop :=
  ∀ n, P6989015410544464391.a n = A065137 n

end A065137

/-! ## A065137.P16014290815382135151

`A055012(n)+A053836(A102489(n))`
-/

namespace A065137.P16014290815382135151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n + A053836 (A102489 n).toNat

end

end A065137.P16014290815382135151

namespace A065137

/-- `A055012(n)+A053836(A102489(n))` -/
def P16014290815382135151.Spec : Prop :=
  ∀ n, P16014290815382135151.a n = A065137 n

end A065137

/-! ## A065137.P12810129146795943123

`A055017(A051022(n))+A055012(n)`
-/

namespace A065137.P12810129146795943123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A051022 n).toNat + A055012 n

end

end A065137.P12810129146795943123

namespace A065137

/-- `A055017(A051022(n))+A055012(n)` -/
def P12810129146795943123.Spec : Prop :=
  ∀ n, P12810129146795943123.a n = A065137 n

end A065137

/-!
# A065138: Numbers that are equal to the sum of their digits plus the sum of cubes of their digits.

The programs for A065138, there is no canonical definition to state claims against.
-/

/-! ## A065138.P15292147042816571622

`eq[n, A065137(n)]`
-/

namespace A065138.P15292147042816571622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065138.P15292147042816571622

/-!
# A065139: Numbers n such that the sum of prime(n) and pi(n) is divisible by n.

The programs for A065139, there is no canonical definition to state claims against.
-/

/-! ## A065139.P15550513404468884779

`eq[0, (A100486(n+1)%(n+1))²]+1`
-/

namespace A065139.P15550513404468884779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100486 (n + 1)) (n + 1 : ℤ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065139.P15550513404468884779

/-! ## A065139.P6627350752991245242

`eq[A000720(n+1), A068901(n+1)]+1`
-/

namespace A065139.P6627350752991245242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065139.P6627350752991245242

/-!
# A065140: a(n) = 2^n*(2*n)!.

The programs for A065140, the canonical program `A065140.P1913945543101322244` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065140 has offset 0).

The definition of A065140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(2*n)!` (program `A065140.P1913945543101322244`, by `A065140.P1913945543101322244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065140.P1913945543101322244

`2^n*(2*n)!`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065140

/-- `2^n*(2*n)!` -/
def P1913945543101322244.Spec : Prop :=
  ∀ n, (P1913945543101322244.a n : ℤ) = A065140 n

theorem P1913945543101322244.correct : P1913945543101322244.Spec := by
  intro n
  simp only [A065140]

end A065140

/-! ## A065140.P4602679357380441546

`(2*n)!*2^n`
-/

namespace A065140.P4602679357380441546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * 2 ^ n

end

end A065140.P4602679357380441546

namespace A065140

/-- `(2*n)!*2^n` -/
def P4602679357380441546.Spec : Prop :=
  ∀ n, (P4602679357380441546.a n : ℤ) = A065140 n

theorem P4602679357380441546.correct : P4602679357380441546.Spec := by
  intro n
  simp only [A065140, Nat.add_sub_cancel, A065140.P4602679357380441546.a, A065140.P1913945543101322244.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065140

/-! ## A065140.P9643207742290442410

`record[-(lcm(2, n)*a(n-1))]` with `a(0)=1`
-/

namespace A065140.P9643207742290442410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((Nat.lcm 2 n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065140.P9643207742290442410

namespace A065140

/-- `record[-(lcm(2, n)*a(n-1))]` -/
def P9643207742290442410.Spec : Prop :=
  ∀ n, P9643207742290442410.a n = A065140 n

end A065140

/-! ## A065140.P11490756466797893999

`4*C(2*n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A065140.P11490756466797893999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * (Nat.choose (2 * n) 2 * a (n - 1))

end

end A065140.P11490756466797893999

namespace A065140

/-- `4*C(2*n, 2)*a(n-1)` -/
def P11490756466797893999.Spec : Prop :=
  ∀ n, (P11490756466797893999.a n : ℤ) = A065140 n

end A065140

/-! ## A065140.P5479134666115532382

`n*(8*n-4)*a(n-1)` with `a(0)=1`
-/

namespace A065140.P5479134666115532382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (((8 * n : ℤ) - 4) * a (n - 1))

end

end A065140.P5479134666115532382

namespace A065140

/-- `n*(8*n-4)*a(n-1)` -/
def P5479134666115532382.Spec : Prop :=
  ∀ n, P5479134666115532382.a n = A065140 n

end A065140

/-!
# A065141: a(n) = (n+1)*2^n*(2*n)!.

The programs for A065141, the canonical program `A065141.P6680190401653701366` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065141 has offset 0).

The definition of A065141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^n*(2*n)!` (program `A065141.P6680190401653701366`, by `A065141.P6680190401653701366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065141.P6680190401653701366

`(n+1)*2^n*(2*n)!`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065141

/-- `(n+1)*2^n*(2*n)!` -/
def P6680190401653701366.Spec : Prop :=
  ∀ n, (P6680190401653701366.a n : ℤ) = A065141 n

theorem P6680190401653701366.correct : P6680190401653701366.Spec := by
  intro n
  simp only [A065141]

end A065141

/-! ## A065141.P4362211441085398392

`(n+1)*record[lcm(4, n)]*a(n-1)` with `a(0)=1`
-/

namespace A065141.P4362211441085398392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * a (n - 1)

end

end A065141.P4362211441085398392

namespace A065141

/-- `(n+1)*record[lcm(4, n)]*a(n-1)` -/
def P4362211441085398392.Spec : Prop :=
  ∀ n, (P4362211441085398392.a n : ℤ) = A065141 n

end A065141

/-! ## A065141.P3200158053823901607

`(n+1)*(8*n-4)*a(n-1)` with `a(0)=1`
-/

namespace A065141.P3200158053823901607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (((8 * n : ℤ) - 4) * a (n - 1))

end

end A065141.P3200158053823901607

namespace A065141

/-- `(n+1)*(8*n-4)*a(n-1)` -/
def P3200158053823901607.Spec : Prop :=
  ∀ n, P3200158053823901607.a n = A065141 n

end A065141

/-! ## A065141.P11409203219065245761

`(4-2/n)*a(n-1)*∑[4*n]` with `a(0)=1`
-/

namespace A065141.P11409203219065245761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A065141.P11409203219065245761

namespace A065141

/-- `(4-2/n)*a(n-1)*∑[4*n]` -/
def P11409203219065245761.Spec : Prop :=
  ∀ n, P11409203219065245761.a n = (A065141 n : ℚ)

end A065141

/-! ## A065141.P3408161028454398682

`∏[record[Δ[A066394(n)]]]`
-/

namespace A065141.P3408161028454398682
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A065141.P3408161028454398682

namespace A065141

/-- `∏[record[Δ[A066394(n)]]]` -/
def P3408161028454398682.Spec : Prop :=
  ∀ n, P3408161028454398682.a n = A065141 n

end A065141

/-!
# A065142: a(n) = 2^n*(n+1)*(3*n)!.

The programs for A065142, the canonical program `A065142.P231761109835400104` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065142 has offset 0).

The definition of A065142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n+1)*(3*n)!` (program `A065142.P231761109835400104`, by `A065142.P231761109835400104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065142.P231761109835400104

`2^n*(n+1)*(3*n)!`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065142

/-- `2^n*(n+1)*(3*n)!` -/
def P231761109835400104.Spec : Prop :=
  ∀ n, (P231761109835400104.a n : ℤ) = A065142 n

theorem P231761109835400104.correct : P231761109835400104.Spec := by
  intro n
  simp only [A065142]

end A065142

/-! ## A065142.P15766450044013201842

`(3*n)!*Δ[A000337(n)]`
-/

namespace A065142.P15766450044013201842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℤ) * (f1 (n + 1) - f1 n)

end

end A065142.P15766450044013201842

namespace A065142

/-- `(3*n)!*Δ[A000337(n)]` -/
def P15766450044013201842.Spec : Prop :=
  ∀ n, P15766450044013201842.a n = A065142 n

theorem P15766450044013201842.correct : P15766450044013201842.Spec := by
  intro n
  simp only [A065142, Nat.add_sub_cancel, A065142.P15766450044013201842.f1, A065142.P15766450044013201842.a, A065142.P231761109835400104.a, A000337, A000337.P10298485350018343423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065142

/-! ## A065142.P17492721914141202600

`A008585(n)!*Δ[A048495(n)]`
-/

namespace A065142.P17492721914141202600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008585 n).toNat : ℤ) * (f1 (n + 1) - f1 n)

end

end A065142.P17492721914141202600

namespace A065142

/-- `A008585(n)!*Δ[A048495(n)]` -/
def P17492721914141202600.Spec : Prop :=
  ∀ n, P17492721914141202600.a n = A065142 n

end A065142

/-!
# A065143: a(n) = Sum_{k=0..n} Stirling2(n,k)*(1+(-1)^k)*2^k/2.

The programs for A065143, there is no canonical definition to state claims against.
-/

/-! ## A065143.P17252090628671178430

`A357681(A056115(n)+10)`
-/

namespace A065143.P17252090628671178430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (A056115 n + 10).toNat

end

end A065143.P17252090628671178430

/-! ## A065143.P1492788733764422069

`A357681(eq[4, A025581(n)])`
-/

namespace A065143.P1492788733764422069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065143.P1492788733764422069

/-! ## A065143.P11342580814031040187

`A357681(A000096(n+4)-4)`
-/

namespace A065143.P11342580814031040187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357681 (A000096 (n + 4) - 4).toNat

end

end A065143.P11342580814031040187

/-! ## A065143.P14219761732149898907

`(A213170(n)+A001861(n))/2`
-/

namespace A065143.P14219761732149898907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213170 n + A001861 n : ℚ) / 2

end

end A065143.P14219761732149898907

/-! ## A065143.P3446070690283055326

`(A213170(n)+A129323(n+1)/(n+1))/2`
-/

namespace A065143.P3446070690283055326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A213170 n : ℚ) + (A129323 (n + 1) : ℚ) / (n + 1 : ℚ)) / 2

end

end A065143.P3446070690283055326

/-!
# A065144: Smallest prime containing the n-th square in decimal notation.

The programs for A065144, there is no canonical definition to state claims against.
-/

/-! ## A065144.P18227444126141443825

`A029948(n+1)`
-/

namespace A065144.P18227444126141443825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (n + 1)

end

end A065144.P18227444126141443825

/-! ## A065144.P8704100320864386369

`or(1, A029948(1-(n-2*n)))`
-/

namespace A065144.P8704100320864386369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A029948 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A065144.P8704100320864386369

/-! ## A065144.P17084756356262644031

`ratio[A029948(n)]*A029948(n)`
-/

namespace A065144.P17084756356262644031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A029948 n : ℚ)

end

end A065144.P17084756356262644031

/-! ## A065144.P2297304376473549435

`xor(1, A029948(A008619(2*n))-1)`
-/

namespace A065144.P2297304376473549435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A029948 (A008619 (2 * n)).toNat - 1)

end

end A065144.P2297304376473549435

/-! ## A065144.P15359999677499988048

`or(A029948(A008619(2*n)), A175337(n))`
-/

namespace A065144.P15359999677499988048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029948 (A008619 (2 * n)).toNat) (A175337 n)

end

end A065144.P15359999677499988048

/-! ## A065144.P2580520899463856872

`or(A029948(A008619(2*n)), A196368(n))`
-/

namespace A065144.P2580520899463856872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029948 (A008619 (2 * n)).toNat) (A196368 n)

end

end A065144.P2580520899463856872

/-! ## A065144.P5828748110051058038

`A029948(A008619(2*n))-A000007(A001370(n))`
-/

namespace A065144.P5828748110051058038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A008619 (2 * n)).toNat - A000007 (A001370 n).toNat

end

end A065144.P5828748110051058038

/-! ## A065144.P16683351596897526424

`A029948(A008619(2*n))-A000007(A008619(n))`
-/

namespace A065144.P16683351596897526424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A008619 (2 * n)).toNat - A000007 (A008619 n).toNat

end

end A065144.P16683351596897526424

/-! ## A065144.P9097256615890758609

`A029948(A008619(2*n))-A000038(A094591(n))`
-/

namespace A065144.P9097256615890758609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A008619 (2 * n)).toNat - A000038 (A094591 n).toNat

end

end A065144.P9097256615890758609

/-! ## A065144.P12386903263242850681

`A029948(A008619(2*n))-A000038(A331742(n))`
-/

namespace A065144.P12386903263242850681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A008619 (2 * n)).toNat - A000038 (A331742 n).toNat

end

end A065144.P12386903263242850681

/-! ## A065144.P9894515597555945609

`A029948(A158416(2*n))%Δ[A160747(n)]`
-/

namespace A065144.P9894515597555945609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029948 (A158416 (2 * n)).toNat) (f1 (n + 1) - f1 n)

end

end A065144.P9894515597555945609

/-! ## A065144.P1541083989538848292

`lcm(A029948(A158416(2*n)), A057077(2*n))`
-/

namespace A065144.P1541083989538848292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029948 (A158416 (2 * n)).toNat) (A057077 (2 * n))

end

end A065144.P1541083989538848292

/-! ## A065144.P9220860604695271842

`A029948(A158416(2*n))-A000038(A166517(n))`
-/

namespace A065144.P9220860604695271842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A158416 (2 * n)).toNat - A000038 (A166517 n).toNat

end

end A065144.P9220860604695271842

/-! ## A065144.P9951955331323747734

`A029948(A158416(2*n))-A000038(A016825(n))`
-/

namespace A065144.P9951955331323747734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A158416 (2 * n)).toNat - A000038 (A016825 n).toNat

end

end A065144.P9951955331323747734

/-! ## A065144.P13131601288631171243

`A029948(A008619(2*n))-A000038(A008706(n))`
-/

namespace A065144.P13131601288631171243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A008619 (2 * n)).toNat - A000038 (A008706 n).toNat

end

end A065144.P13131601288631171243

/-! ## A065144.P5187830022043263908

`A029948(A027656(2*n))-A010054(A017257(n))`
-/

namespace A065144.P5187830022043263908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029948 (A027656 (2 * n)).toNat - A010054 (A017257 n).toNat

end

end A065144.P5187830022043263908

/-! ## A065144.P13714539697384836754

`A062584((n+1)²)`
-/

namespace A065144.P13714539697384836754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 ((n + 1) ^ 2)

end

end A065144.P13714539697384836754

/-!
# A065145: Smallest prime that begins with the n-th square in decimal notation.

The programs for A065145, there is no canonical definition to state claims against.
-/

/-! ## A065145.P15296472008623227975

`A030665((n+1)²)`
-/

namespace A065145.P15296472008623227975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 ((n + 1) ^ 2)

end

end A065145.P15296472008623227975

/-! ## A065145.P11815014662045423149

`A018800((n+1)²)`
-/

namespace A065145.P11815014662045423149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 ((n + 1) ^ 2)

end

end A065145.P11815014662045423149

/-! ## A065145.P11306625364687088964

`or(1, A030665(∑[2*n+1]))`
-/

namespace A065145.P11306625364687088964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030665 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A065145.P11306625364687088964

/-! ## A065145.P6708024039693015611

`A007318(C(2, 2*n))*A018800(∑[2*n+1])`
-/

namespace A065145.P6708024039693015611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (2 * n)) * A018800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065145.P6708024039693015611

/-! ## A065145.P12031563330235006857

`A007318(gcd(n, n+1))*A018800(∑[2*n+1])`
-/

namespace A065145.P12031563330235006857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A018800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065145.P12031563330235006857

/-!
# A065146: Numbers n such that the arithmetic, geometric and harmonic means of phi(n) and sigma(n) are all integers.

The programs for A065146, there is no canonical definition to state claims against.
-/

/-! ## A065146.P3622873493086323895

`∩[A011257(n+1), A065150(n+1)]`
-/

namespace A065146.P3622873493086323895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065146.P3622873493086323895

/-!
# A065147: 100 written in base 15-n.

The programs for A065147, there is no canonical definition to state claims against.
-/

/-! ## A065147.P7589274251711554663

`A095591(n+2)+A008835(A095573(n))`
-/

namespace A065147.P7589274251711554663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095591 (n + 2) + A008835 (A095573 n).toNat

end

end A065147.P7589274251711554663

/-! ## A065147.P8735966101928603579

`A095591(n+2)+A008835(A095593(n))`
-/

namespace A065147.P8735966101928603579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095591 (n + 2) + A008835 (A095593 n).toNat

end

end A065147.P8735966101928603579

/-! ## A065147.P9079940127013351792

`A095591(n+2)+A008835(A095597(n))`
-/

namespace A065147.P9079940127013351792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095591 (n + 2) + A008835 (A095597 n).toNat

end

end A065147.P9079940127013351792

/-! ## A065147.P10338010106673556534

`A095591(n+2)+A008835(A060172(2*(n+1)))`
-/

namespace A065147.P10338010106673556534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095591 (n + 2) + A008835 (A060172 (2 * (n + 1))).toNat

end

end A065147.P10338010106673556534

/-!
# A065148: Nonprimes m such that phi(m)*sigma(m) is divisible by m+1.

The programs for A065148, there is no canonical definition to state claims against.
-/

/-! ## A065148.P18270160588666021366

`record[A294149(n+1)/A222479(n+2)]`
-/

namespace A065148.P18270160588666021366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294149 (n + 1) : ℚ) / (A222479 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065148.P18270160588666021366

/-! ## A065148.P14546011367522932863

`A294149(A005100(n+1)%A212302(n+1))`
-/

namespace A065148.P14546011367522932863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294149 (Int.tmod (A005100 (n + 1)) (A212302 (n + 1))).toNat

end

end A065148.P14546011367522932863

/-!
# A065149: Composite numbers m such that phi(m)*sigma(m) is divisible by m-1.

The programs for A065149, there is no canonical definition to state claims against.
-/

/-! ## A065149.P13859933328588857176

`A367224(A030130(3*n+4))+A055249(n)`
-/

namespace A065149.P13859933328588857176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (A030130 (3 * n + 4)).toNat + A055249 n

end

end A065149.P13859933328588857176

/-!
# A065151: a(n) = prime(1 + A064722(n)).

The programs for A065151, the canonical program `A065151.P12575422823697040866` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065151 has offset 2).

The definition of A065151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065151.P8760169228085127321

`A000040(n+2-A007917(n+2)+1)`
-/

namespace A065151.P8760169228085127321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 2 : ℤ) - A007917 (n + 2) + 1).toNat

end

end A065151.P8760169228085127321

namespace A065151

/-- `A000040(n+2-A007917(n+2)+1)` -/
def P8760169228085127321.Spec : Prop :=
  ∀ n, P8760169228085127321.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P3214774707291926515

`A000040(1+A064722(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065151.P3214774707291926515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A064722 (n + 2)).toNat

end

end A065151.P3214774707291926515

namespace A065151

/-- `A000040(1+A064722(n+2))` -/
def P3214774707291926515.Spec : Prop :=
  ∀ n, P3214774707291926515.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P12575422823697040866

`A000040(A000720(A000040(n+2))-A000040(A000720(n+2))+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065151

/-- `A000040(A000720(A000040(n+2))-A000040(A000720(n+2))+1)` -/
def P12575422823697040866.Spec : Prop :=
  ∀ n, P12575422823697040866.a n = A065151 (n + 2)

theorem P12575422823697040866.correct : P12575422823697040866.Spec := by
  intro n
  simp only [A065151, Nat.add_sub_cancel]

end A065151

/-! ## A065151.P479080353414528761

`A000040(A175851(n+2))`
-/

namespace A065151.P479080353414528761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A175851 (n + 2)).toNat

end

end A065151.P479080353414528761

namespace A065151

/-- `A000040(A175851(n+2))` -/
def P479080353414528761.Spec : Prop :=
  ∀ n, P479080353414528761.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P8251626920152670077

`A000040(A049711(n+3))`
-/

namespace A065151.P8251626920152670077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049711 (n + 3)).toNat

end

end A065151.P8251626920152670077

namespace A065151

/-- `A000040(A049711(n+3))` -/
def P8251626920152670077.Spec : Prop :=
  ∀ n, P8251626920152670077.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P13768064085824887800

`A008578(A175851(n+2)+1)`
-/

namespace A065151.P13768064085824887800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A175851 (n + 2) + 1).toNat

end

end A065151.P13768064085824887800

namespace A065151

/-- `A008578(A175851(n+2)+1)` -/
def P13768064085824887800.Spec : Prop :=
  ∀ n, P13768064085824887800.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P12857287921497917761

`A008578(A049711(n+3)+1)`
-/

namespace A065151.P12857287921497917761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A049711 (n + 3) + 1).toNat

end

end A065151.P12857287921497917761

namespace A065151

/-- `A008578(A049711(n+3)+1)` -/
def P12857287921497917761.Spec : Prop :=
  ∀ n, P12857287921497917761.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P5003263050102103273

`A001747(A049711(n+3)+1)/2`
-/

namespace A065151.P5003263050102103273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A049711 (n + 3) + 1).toNat : ℚ) / 2

end

end A065151.P5003263050102103273

namespace A065151

/-- `A001747(A049711(n+3)+1)/2` -/
def P5003263050102103273.Spec : Prop :=
  ∀ n, P5003263050102103273.a n = (A065151 (n + 2) : ℚ)

end A065151

/-! ## A065151.P9335444748049931507

`A000040(A033557(n+3)-(n+3))`
-/

namespace A065151.P9335444748049931507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033557 (n + 3) - (n + 3 : ℤ)).toNat

end

end A065151.P9335444748049931507

namespace A065151

/-- `A000040(A033557(n+3)-(n+3))` -/
def P9335444748049931507.Spec : Prop :=
  ∀ n, P9335444748049931507.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P13484827855154319457

`A000040(2*(n+3)-A013635(n+3))`
-/

namespace A065151.P13484827855154319457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * (n + 3) : ℤ) - A013635 (n + 3)).toNat

end

end A065151.P13484827855154319457

namespace A065151

/-- `A000040(2*(n+3)-A013635(n+3))` -/
def P13484827855154319457.Spec : Prop :=
  ∀ n, P13484827855154319457.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P9900554644399090285

`A008578(n+3-A006093(A000720(n+2)))`
-/

namespace A065151.P9900554644399090285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 3 : ℤ) - A006093 (A000720 (n + 2)).toNat).toNat

end

end A065151.P9900554644399090285

namespace A065151

/-- `A008578(n+3-A006093(A000720(n+2)))` -/
def P9900554644399090285.Spec : Prop :=
  ∀ n, P9900554644399090285.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P13872231631200561410

`A008578(A064722(n+2)+2)`
-/

namespace A065151.P13872231631200561410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064722 (n + 2) + 2).toNat

end

end A065151.P13872231631200561410

namespace A065151

/-- `A008578(A064722(n+2)+2)` -/
def P13872231631200561410.Spec : Prop :=
  ∀ n, P13872231631200561410.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P7202847918555558713

`A000040(n+3-A136548(n+3))`
-/

namespace A065151.P7202847918555558713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 3 : ℤ) - A136548 (n + 3)).toNat

end

end A065151.P7202847918555558713

namespace A065151

/-- `A000040(n+3-A136548(n+3))` -/
def P7202847918555558713.Spec : Prop :=
  ∀ n, P7202847918555558713.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P16294788955226637593

`A000040(A011776(A064924(n+2)))`
-/

namespace A065151.P16294788955226637593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A011776 (A064924 (n + 2)).toNat).toNat

end

end A065151.P16294788955226637593

namespace A065151

/-- `A000040(A011776(A064924(n+2)))` -/
def P16294788955226637593.Spec : Prop :=
  ∀ n, P16294788955226637593.a n = A065151 (n + 2)

end A065151

/-! ## A065151.P16755301546296079847

`A000040(∑[1-Δ[A139421(2*(n+1))]])`
-/

namespace A065151.P16755301546296079847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065151.P16755301546296079847

namespace A065151

/-- `A000040(∑[1-Δ[A139421(2*(n+1))]])` -/
def P16755301546296079847.Spec : Prop :=
  ∀ n, P16755301546296079847.a n = A065151 (n + 2)

end A065151

/-!
# A065152: a(n) = cototient(totient(n)) - totient(cototient(n)).

The programs for A065152, the canonical program `A065152.P5975500746502698895` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065152 has offset 1).

The definition of A065152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065152.P5975500746502698895

`A070556(n+1)-A054571(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A065152

/-- `A070556(n+1)-A054571(n+1)` -/
def P5975500746502698895.Spec : Prop :=
  ∀ n, P5975500746502698895.a n = A065152 (n + 1)

theorem P5975500746502698895.correct : P5975500746502698895.Spec := by
  intro n
  simp only [A065152, Nat.add_sub_cancel]

end A065152

/-! ## A065152.P3180885962853020583

`A346692(n+1)-A010554(n+1)`
-/

namespace A065152.P3180885962853020583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) - A010554 (n + 1)

end

end A065152.P3180885962853020583

namespace A065152

/-- `A346692(n+1)-A010554(n+1)` -/
def P3180885962853020583.Spec : Prop :=
  ∀ n, P3180885962853020583.a n = A065152 (n + 1)

end A065152

/-! ## A065152.P6634775141794390152

`A051953(Δ[A002088(n)])-A054571(n+1)`
-/

namespace A065152.P6634775141794390152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f1 (n + 1) - f1 n).toNat - A054571 (n + 1)

end

end A065152.P6634775141794390152

namespace A065152

/-- `A051953(Δ[A002088(n)])-A054571(n+1)` -/
def P6634775141794390152.Spec : Prop :=
  ∀ n, P6634775141794390152.a n = A065152 (n + 1)

end A065152

/-! ## A065152.P15767691363833299188

`A051953(A000010(n+1))-A054571(n+1)`
-/

namespace A065152.P15767691363833299188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat - A054571 (n + 1)

end

end A065152.P15767691363833299188

namespace A065152

/-- `A051953(A000010(n+1))-A054571(n+1)` -/
def P15767691363833299188.Spec : Prop :=
  ∀ n, P15767691363833299188.a n = A065152 (n + 1)

end A065152

/-! ## A065152.P2959674286190159990

`A346692(n+1)-A000010(A000010(n+1))`
-/

namespace A065152.P2959674286190159990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) - A000010 (A000010 (n + 1)).toNat

end

end A065152.P2959674286190159990

namespace A065152

/-- `A346692(n+1)-A000010(A000010(n+1))` -/
def P2959674286190159990.Spec : Prop :=
  ∀ n, P2959674286190159990.a n = A065152 (n + 1)

end A065152

/-! ## A065152.P18078644797675260973

`A051953(n-A051953(n+1)+1)-A054571(n+1)`
-/

namespace A065152.P18078644797675260973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ((n : ℤ) - A051953 (n + 1) + 1).toNat - A054571 (n + 1)

end

end A065152.P18078644797675260973

namespace A065152

/-- `A051953(n-A051953(n+1)+1)-A054571(n+1)` -/
def P18078644797675260973.Spec : Prop :=
  ∀ n, P18078644797675260973.a n = A065152 (n + 1)

theorem P18078644797675260973.correct : P18078644797675260973.Spec := by
  intro n
  simp only [A065152, Nat.add_sub_cancel, A065152.P18078644797675260973.a, A065152.P5975500746502698895.a, A051953, A051953.P11179276897610979764.a, A054571, A054571.P8375509208684838660.a, A070556, A070556.P18359578650946582400.a, A000010, A000010.P4673923239450215316.a, A343912, A343912.P17867153873116999387.f1, A343912.P17867153873116999387.f2, A343912.P17867153873116999387.a, A003557, A003557.P6364735403900941810.a, A053470, A053470.P13253634805606382182.f2, A053470.P13253634805606382182.f1, A053470.P13253634805606382182.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A062790, A062790.P5415624989759604668.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065152

/-! ## A065152.P5452992731698905980

`A051953(A000010(n+1))+A053470(n+1)-A051953(n+1)`
-/

namespace A065152.P5452992731698905980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat + (A053470 (n + 1) - A051953 (n + 1))

end

end A065152.P5452992731698905980

namespace A065152

/-- `A051953(A000010(n+1))+A053470(n+1)-A051953(n+1)` -/
def P5452992731698905980.Spec : Prop :=
  ∀ n, P5452992731698905980.a n = A065152 (n + 1)

end A065152

/-!
# A065153: Numbers for which the cototient of the totient is equal to the totient of the cototient.

The programs for A065153, the canonical program `A065153.P9728212256497454356` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065153 has offset 1).

The definition of A065153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065153.P9728212256497454356

`eq[0, A065152(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A065153

/-- `eq[0, A065152(n+1)]+1` -/
def P9728212256497454356.Spec : Prop :=
  ∀ n, (P9728212256497454356.a n : ℤ) = A065153 (n + 1)

theorem P9728212256497454356.correct : P9728212256497454356.Spec := by
  intro n
  simp only [A065153, Nat.add_sub_cancel]

end A065153

/-! ## A065153.P12946601184431798071

`eq[0, A065152(A000038(n)+n)]`
-/

namespace A065153.P12946601184431798071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065153.P12946601184431798071

namespace A065153

/-- `eq[0, A065152(A000038(n)+n)]` -/
def P12946601184431798071.Spec : Prop :=
  ∀ n, (P12946601184431798071.a n : ℤ) = A065153 (n + 1)

end A065153

/-! ## A065153.P17478780491888718858

`record[gcd(A000027(n+1), A065152(n+1))]`
-/

namespace A065153.P17478780491888718858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A065152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065153.P17478780491888718858

namespace A065153

/-- `record[gcd(A000027(n+1), A065152(n+1))]` -/
def P17478780491888718858.Spec : Prop :=
  ∀ n, (P17478780491888718858.a n : ℤ) = A065153 (n + 1)

end A065153

/-! ## A065153.P3745836529031671105

`record[gcd(A065152(n+2), A065475(n+1))]`
-/

namespace A065153.P3745836529031671105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065152 (n + 2)) (A065475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065153.P3745836529031671105

namespace A065153

/-- `record[gcd(A065152(n+2), A065475(n+1))]` -/
def P3745836529031671105.Spec : Prop :=
  ∀ n, (P3745836529031671105.a n : ℤ) = A065153 (n + 1)

end A065153

/-! ## A065153.P4652564311693145675

`eq[A054571(n+1), A070556(n+1)]+1`
-/

namespace A065153.P4652564311693145675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A065153.P4652564311693145675

namespace A065153

/-- `eq[A054571(n+1), A070556(n+1)]+1` -/
def P4652564311693145675.Spec : Prop :=
  ∀ n, (P4652564311693145675.a n : ℤ) = A065153 (n + 1)

end A065153

/-! ## A065153.P15139852418437260097

`A116966(eq[0, A065152(A116966(n))])`
-/

namespace A065153.P15139852418437260097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (A116966 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065153.P15139852418437260097

namespace A065153

/-- `A116966(eq[0, A065152(A116966(n))])` -/
def P15139852418437260097.Spec : Prop :=
  ∀ n, P15139852418437260097.a n = A065153 (n + 1)

end A065153

/-!
# A065154: Numbers for which the cototient of the totient is strictly less than the totient of the cototient.

The programs for A065154, the canonical program `A065154.P12619907100534345672` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065154 has offset 1).

The definition of A065154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065154.P12619907100534345672

`lt[A065152(n+1), 0]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A065154

/-- `lt[A065152(n+1), 0]+1` -/
def P12619907100534345672.Spec : Prop :=
  ∀ n, (P12619907100534345672.a n : ℤ) = A065154 (n + 1)

theorem P12619907100534345672.correct : P12619907100534345672.Spec := by
  intro n
  simp only [A065154, Nat.add_sub_cancel]

end A065154

/-! ## A065154.P3427972725696415125

`lt[A065152(A028310(n)), 0]`
-/

namespace A065154.P3427972725696415125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065154.P3427972725696415125

namespace A065154

/-- `lt[A065152(A028310(n)), 0]` -/
def P3427972725696415125.Spec : Prop :=
  ∀ n, (P3427972725696415125.a n : ℤ) = A065154 (n + 1)

end A065154

/-! ## A065154.P4521318363209781120

`lt[A065152(A000007(n)+n), 0]`
-/

namespace A065154.P4521318363209781120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A065154.P4521318363209781120

namespace A065154

/-- `lt[A065152(A000007(n)+n), 0]` -/
def P4521318363209781120.Spec : Prop :=
  ∀ n, (P4521318363209781120.a n : ℤ) = A065154 (n + 1)

end A065154

/-! ## A065154.P6139658665941425393

`lt[A070556(n+1), A054571(n+1)]+1`
-/

namespace A065154.P6139658665941425393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065154.P6139658665941425393

namespace A065154

/-- `lt[A070556(n+1), A054571(n+1)]+1` -/
def P6139658665941425393.Spec : Prop :=
  ∀ n, (P6139658665941425393.a n : ℤ) = A065154 (n + 1)

end A065154

/-! ## A065154.P4646270671044601226

`lt[A051953(A000010(n+1)), A054571(n+1)]+1`
-/

namespace A065154.P4646270671044601226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065154.P4646270671044601226

namespace A065154

/-- `lt[A051953(A000010(n+1)), A054571(n+1)]+1` -/
def P4646270671044601226.Spec : Prop :=
  ∀ n, (P4646270671044601226.a n : ℤ) = A065154 (n + 1)

end A065154

/-!
# A065155: Numbers whose cototient of totient is strictly greater than totient of cototient.

The programs for A065155, the canonical program `A065155.P2388054126612955149` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065155 has offset 1).

The definition of A065155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065155.P2388054126612955149

`lt[0, A065152(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A065155

/-- `lt[0, A065152(n+1)]+1` -/
def P2388054126612955149.Spec : Prop :=
  ∀ n, (P2388054126612955149.a n : ℤ) = A065155 (n + 1)

theorem P2388054126612955149.correct : P2388054126612955149.Spec := by
  intro n
  simp only [A065155, Nat.add_sub_cancel]

end A065155

/-! ## A065155.P186909460174424537

`lt[0, A065152(A028310(n))]`
-/

namespace A065155.P186909460174424537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A065155.P186909460174424537

namespace A065155

/-- `lt[0, A065152(A028310(n))]` -/
def P186909460174424537.Spec : Prop :=
  ∀ n, (P186909460174424537.a n : ℤ) = A065155 (n + 1)

end A065155

/-! ## A065155.P534566135577392794

`A065475(lt[0, A065152(n+1)])`
-/

namespace A065155.P534566135577392794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A065155.P534566135577392794

namespace A065155

/-- `A065475(lt[0, A065152(n+1)])` -/
def P534566135577392794.Spec : Prop :=
  ∀ n, P534566135577392794.a n = A065155 (n + 1)

end A065155

/-! ## A065155.P5007459621703836071

`lt[A054571(n+1), A070556(n+1)]+1`
-/

namespace A065155.P5007459621703836071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065155.P5007459621703836071

namespace A065155

/-- `lt[A054571(n+1), A070556(n+1)]+1` -/
def P5007459621703836071.Spec : Prop :=
  ∀ n, (P5007459621703836071.a n : ℤ) = A065155 (n + 1)

end A065155

/-! ## A065155.P5461093889851715724

`lt[A054571(n+1), A051953(A000010(n+1))]+1`
-/

namespace A065155.P5461093889851715724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065155.P5461093889851715724

namespace A065155

/-- `lt[A054571(n+1), A051953(A000010(n+1))]+1` -/
def P5461093889851715724.Spec : Prop :=
  ∀ n, (P5461093889851715724.a n : ℤ) = A065155 (n + 1)

end A065155

/-!
# A065156: Numbers n such that some Lucas number (A000204) is divisible by n.

The programs for A065156, there is no canonical definition to state claims against.
-/

/-! ## A065156.P12832355412647983521

`lt[-1, A223486(n+1)]+1`
-/

namespace A065156.P12832355412647983521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A065156.P12832355412647983521

/-! ## A065156.P12482851915117246561

`lt[A057428(n), A223486(A028310(n))]`
-/

namespace A065156.P12482851915117246561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065156.P12482851915117246561

/-! ## A065156.P4993624067236378026

`lt[A260196(n), A223486(A028310(n))]`
-/

namespace A065156.P4993624067236378026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065156.P4993624067236378026

/-! ## A065156.P13377312832602774539

`lt[A209615(n+1), A223486(A028310(n))]`
-/

namespace A065156.P13377312832602774539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065156.P13377312832602774539

/-! ## A065156.P2302027332008757389

`lt[A005171(n+1), A223486(A028310(n))+1]`
-/

namespace A065156.P2302027332008757389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223486 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065156.P2302027332008757389

/-! ## A065156.P477112196688659327

`lt[A000010(n+1), (A223486(A028310(n))+1)*(n+1)]`
-/

namespace A065156.P477112196688659327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A223486 (A028310 n).toNat + 1) * (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065156.P477112196688659327

/-! ## A065156.P723054266262735658

`∪[A064414(n+1), A232658(n+1)]`
-/

namespace A065156.P723054266262735658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065156.P723054266262735658

/-! ## A065156.P10938606068561000489

`∪[A097987(n+1), A232658(n+1)]`
-/

namespace A065156.P10938606068561000489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065156.P10938606068561000489

/-! ## A065156.P5956744126413585989

`record[gcd(A003056(n), A271355(n+1))]`
-/

namespace A065156.P5956744126413585989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003056 n) (A271355 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065156.P5956744126413585989

/-!
# A065157: Table of binary string substitutions: a(i,j) is obtained by substituting i for each 1-bit in j.

The programs for A065157, there is no canonical definition to state claims against.
-/

/-! ## A065157.P2002814919901686333

`(C(comp[∑[n]]-n, 2)-n)*A065158(n+1)`
-/

namespace A065157.P2002814919901686333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A065158 (n + 1)

end

end A065157.P2002814919901686333

/-! ## A065157.P5479196528307498323

`A004736(n+1)*A065158(n+1)`
-/

namespace A065157.P5479196528307498323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A065158 (n + 1)

end

end A065157.P5479196528307498323

/-! ## A065157.P661581033774197846

`(A025581(n)+1)*A065158(n+1)`
-/

namespace A065157.P661581033774197846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A065158 (n + 1)

end

end A065157.P661581033774197846

/-! ## A065157.P12034221994969036929

`A000463(A099375(n))*A065158(n+1)`
-/

namespace A065157.P12034221994969036929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 n).toNat * A065158 (n + 1)

end

end A065157.P12034221994969036929

/-! ## A065157.P14739115888726130550

`A002260(A038722(n+1))*A065158(n+1)`
-/

namespace A065157.P14739115888726130550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A065158 (n + 1)

end

end A065157.P14739115888726130550

/-! ## A065157.P18225048045568434479

`A000005(A130321(n))*A065158(n+1)`
-/

namespace A065157.P18225048045568434479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A065158 (n + 1)

end

end A065157.P18225048045568434479

/-! ## A065157.P16568957352293535440

`A000005(A140303(n))*A065158(n+1)`
-/

namespace A065157.P16568957352293535440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140303 n).toNat * A065158 (n + 1)

end

end A065157.P16568957352293535440

/-!
# A065158: Table of reduced binary string substitutions: a(i,j) is obtained by substituting i for each 1-bit in j, then dividing by i.

The programs for A065158, there is no canonical definition to state claims against.
-/

/-! ## A065158.P7085196605489643338

`A065157(n+1)/(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A065158.P7085196605489643338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ)

end

end A065158.P7085196605489643338

/-! ## A065158.P16589353375845971491

`A065157(n+1)/A004736(n+1)`
-/

namespace A065158.P16589353375845971491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A065158.P16589353375845971491

/-! ## A065158.P5522545378047414806

`A065157(n+1)/(A025581(n)+1)`
-/

namespace A065158.P5522545378047414806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)

end

end A065158.P5522545378047414806

/-! ## A065158.P18282038320865311304

`A065157(n+1)/sqrt(A055461(n+1))`
-/

namespace A065158.P18282038320865311304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℝ) / Real.sqrt (A055461 (n + 1) : ℝ)

end

end A065158.P18282038320865311304

/-! ## A065158.P1914122070724787932

`A065157(n+1)/A000463(A099375(n))`
-/

namespace A065158.P1914122070724787932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A000463 (A099375 n).toNat : ℚ)

end

end A065158.P1914122070724787932

/-! ## A065158.P12266358130881720158

`A065157(n+1)/A002260(A038722(n+1))`
-/

namespace A065158.P12266358130881720158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A065158.P12266358130881720158

/-! ## A065158.P16247638239236010751

`A065157(n+1)/A002260(A061579(n)+1)`
-/

namespace A065158.P16247638239236010751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A002260 (A061579 n + 1).toNat : ℚ)

end

end A065158.P16247638239236010751

/-! ## A065158.P10446779785999383626

`A065157(n+1)/A000005(A130321(n))`
-/

namespace A065158.P10446779785999383626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A065158.P10446779785999383626

/-! ## A065158.P15495403864891993512

`A065157(n+1)/A001222(A090988(n+1))`
-/

namespace A065158.P15495403864891993512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A001222 (A090988 (n + 1)).toNat : ℚ)

end

end A065158.P15495403864891993512

/-! ## A065158.P9159285149504848917

`A065157(n+1)/A000005(A140303(n))`
-/

namespace A065158.P9159285149504848917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065157 (n + 1) : ℚ) / (A000005 (A140303 n).toNat : ℚ)

end

end A065158.P9159285149504848917

/-!
# A065159: Binary string self-substitutions: a(n) is obtained by substituting the binary expansion of n for each 1-bit in the binary expansion of n.

The programs for A065159, there is no canonical definition to state claims against.
-/

/-! ## A065159.P16816072024412949100

`n*A065160(abs(1-n)+1)`
-/

namespace A065159.P16816072024412949100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065160 (|1 - (n : ℤ)| + 1).toNat

end

end A065159.P16816072024412949100

/-! ## A065159.P15512510996245285395

`A080719(A127906(n))`
-/

namespace A065159.P15512510996245285395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (A127906 n).toNat

end

end A065159.P15512510996245285395

/-! ## A065159.P10742571148866532376

`A080719(n*A007088(n))`
-/

namespace A065159.P10742571148866532376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 ((n : ℤ) * A007088 n).toNat

end

end A065159.P10742571148866532376

/-! ## A065159.P5419790191403472614

`A080719(n*A115848(n))`
-/

namespace A065159.P5419790191403472614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 ((n : ℤ) * A115848 n).toNat

end

end A065159.P5419790191403472614

/-! ## A065159.P13253534249272412989

`A080719(n*A185544(2*n))`
-/

namespace A065159.P13253534249272412989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 ((n : ℤ) * A185544 (2 * n)).toNat

end

end A065159.P13253534249272412989

/-!
# A065160: Reduced binary string self-substitutions: a(n) is obtained by substituting n for each 1-bit in the binary expansion of n, then dividing by n.

The programs for A065160, there is no canonical definition to state claims against.
-/

/-! ## A065160.P17273394692724776953

`A065159(n+1)/(n+1)`
-/

namespace A065160.P17273394692724776953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065159 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A065160.P17273394692724776953

/-! ## A065160.P11424748149312723372

`A065158((n+1)²+n²)`
-/

namespace A065160.P11424748149312723372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065158 ((n + 1) ^ 2 + n ^ 2)

end

end A065160.P11424748149312723372

/-! ## A065160.P7213306117449019548

`xor(-(A065158(A001844(n))+1), -1)`
-/

namespace A065160.P7213306117449019548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(A065158 (A001844 n).toNat + 1)) (-1)

end

end A065160.P7213306117449019548

/-! ## A065160.P17832286999372852561

`A065158(A001844(n))%A003462(n+4)`
-/

namespace A065160.P17832286999372852561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065158 (A001844 n).toNat) (A003462 (n + 4))

end

end A065160.P17832286999372852561

/-! ## A065160.P15192440412255645679

`A130123(3*n+1)+A065158(A001844(n))`
-/

namespace A065160.P15192440412255645679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 (3 * n + 1) + A065158 (A001844 n).toNat

end

end A065160.P15192440412255645679

/-!
# A065161: Number of orbits into which the Foata transform partitions the symmetric group Sn, i.e., a(n) is the number of cycles in the permutations A065181 - A065184 found in range [0,n!-1].

The programs for A065161, there is no canonical definition to state claims against.
-/

/-! ## A065161.P16248991493298901129

`A333987(A160113(n))`
-/

namespace A065161.P16248991493298901129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333987 (A160113 n).toNat

end

end A065161.P16248991493298901129

/-! ## A065161.P6551375907569233151

`A333987(A136322(n+1))`
-/

namespace A065161.P6551375907569233151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333987 (A136322 (n + 1)).toNat

end

end A065161.P6551375907569233151

/-! ## A065161.P241336577365353840

`A333987(A155099(n+2))`
-/

namespace A065161.P241336577365353840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333987 (A155099 (n + 2)).toNat

end

end A065161.P241336577365353840

/-!
# A065163: Maximal orbit size in the symmetric group partitioned by the upper records version of the Foata transform (i.e., a(n) is the maximum cycle length found in the corresponding permutations A065181-A065184 in range [0, n!-1]).

The programs for A065163, there is no canonical definition to state claims against.
-/

/-! ## A065163.P17401827399498873857

`A335841(comp[Δ[lcm(3, n)]]^n)`
-/

namespace A065163.P17401827399498873857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335841 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ n)

end

end A065163.P17401827399498873857

/-! ## A065163.P17482251879148933810

`n*A347610(a(n-1)+n)+1` with `a(0)=1, a(1)=1`
-/

namespace A065163.P17482251879148933810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A347610 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A065163.P17482251879148933810

/-!
# A065164: Permutation t->t+1 of Z, folded to N.

The programs for A065164, the canonical program `A065164.P11898003082546795665` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065164 has offset 1).

The definition of A065164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065164.P12865221621713745597

`ogf((2+2x-5x^2+3x^3)/(1-x-x^2+x^3))`
-/

namespace A065164.P12865221621713745597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -5, 3] [1, -1, -1, 1] n

end

end A065164.P12865221621713745597

namespace A065164

/-- `ogf((2+2x-5x^2+3x^3)/(1-x-x^2+x^3))` -/
def P12865221621713745597.Spec : Prop :=
  ∀ n, P12865221621713745597.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P11898003082546795665

`2*(n+1)-a(n-1)-1` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065164

/-- `2*(n+1)-a(n-1)-1` -/
def P11898003082546795665.Spec : Prop :=
  ∀ n, P11898003082546795665.a n = A065164 (n + 1)

theorem P11898003082546795665.correct : P11898003082546795665.Spec := by
  intro n
  simp only [A065164, Nat.add_sub_cancel]

end A065164

/-! ## A065164.P5181930528917640844

`a(n-2)+2` with `a(0)=2, a(1)=4, a(2)=1`
-/

namespace A065164.P5181930528917640844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 1] fun n a =>
  a (n - 2) + 2

end

end A065164.P5181930528917640844

namespace A065164

/-- `a(n-2)+2` -/
def P5181930528917640844.Spec : Prop :=
  ∀ n, (P5181930528917640844.a n : ℤ) = A065164 (n + 1)

end A065164

/-! ## A065164.P15020652733643626976

`Δ[n²]-a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A065164.P15020652733643626976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A065164.P15020652733643626976

namespace A065164

/-- `Δ[n²]-a(n-1)` -/
def P15020652733643626976.Spec : Prop :=
  ∀ n, P15020652733643626976.a n = A065164 (n + 1)

theorem P15020652733643626976.correct : P15020652733643626976.Spec := by
  intro n
  simp only [A065164, Nat.add_sub_cancel, A065164.P15020652733643626976.f1, A065164.P15020652733643626976.a, A065164.P11898003082546795665.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065164

/-! ## A065164.P7807439160129757807

`∑[2-a(n-1)]` with `a(0)=2, a(1)=2, a(2)=-3`
-/

namespace A065164.P7807439160129757807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, -3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065164.P7807439160129757807

namespace A065164

/-- `∑[2-a(n-1)]` -/
def P7807439160129757807.Spec : Prop :=
  ∀ n, P7807439160129757807.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P17102302337087085219

`∑[∑[ogf((2+2x-5x^2+3x^3)/(1+x))]]`
-/

namespace A065164.P17102302337087085219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -5, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065164.P17102302337087085219

namespace A065164

/-- `∑[∑[ogf((2+2x-5x^2+3x^3)/(1+x))]]` -/
def P17102302337087085219.Spec : Prop :=
  ∀ n, P17102302337087085219.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P5967118449067940915

`2-floor(-a(n-2))` with `a(0)=2, a(1)=4, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A065164.P5967118449067940915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1] fun n a =>
  2 - (-a (n - 2))

end

end A065164.P5967118449067940915

namespace A065164

/-- `2-floor(-a(n-2))` -/
def P5967118449067940915.Spec : Prop :=
  ∀ n, P5967118449067940915.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P10047088275338457579

`2-ceil(-a(n-2))` with `a(0)=2, a(1)=4, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A065164.P10047088275338457579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1] fun n a =>
  2 - (-a (n - 2))

end

end A065164.P10047088275338457579

namespace A065164

/-- `2-ceil(-a(n-2))` -/
def P10047088275338457579.Spec : Prop :=
  ∀ n, P10047088275338457579.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P2435606876127659966

`2-round(-a(n-2))` with `a(0)=2, a(1)=4, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A065164.P2435606876127659966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1] fun n a =>
  2 - (-a (n - 2))

end

end A065164.P2435606876127659966

namespace A065164

/-- `2-round(-a(n-2))` -/
def P2435606876127659966.Spec : Prop :=
  ∀ n, P2435606876127659966.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P14272834529330380863

`1-(a(n-1)-2*n)` with `a(0)=2, a(1)=4`
-/

namespace A065164.P14272834529330380863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  1 - (a (n - 1) - (2 * n : ℤ))

end

end A065164.P14272834529330380863

namespace A065164

/-- `1-(a(n-1)-2*n)` -/
def P14272834529330380863.Spec : Prop :=
  ∀ n, P14272834529330380863.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P10458580813055136932

`1-(a(n-1)-n-n)` with `a(0)=2, a(1)=4`
-/

namespace A065164.P10458580813055136932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  1 - (a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A065164.P10458580813055136932

namespace A065164

/-- `1-(a(n-1)-n-n)` -/
def P10458580813055136932.Spec : Prop :=
  ∀ n, P10458580813055136932.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P11851350994505385695

`abs(2-A131738(n))`
-/

namespace A065164.P11851350994505385695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131738 n|

end

end A065164.P11851350994505385695

namespace A065164

/-- `abs(2-A131738(n))` -/
def P11851350994505385695.Spec : Prop :=
  ∀ n, P11851350994505385695.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P4020969842649467122

`xor(1, A014681(n))+1`
-/

namespace A065164.P4020969842649467122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A014681 n) + 1

end

end A065164.P4020969842649467122

namespace A065164

/-- `xor(1, A014681(n))+1` -/
def P4020969842649467122.Spec : Prop :=
  ∀ n, P4020969842649467122.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P7231795962227437052

`5-A040008(n)+n`
-/

namespace A065164.P7231795962227437052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A040008 n + (n : ℤ)

end

end A065164.P7231795962227437052

namespace A065164

/-- `5-A040008(n)+n` -/
def P7231795962227437052.Spec : Prop :=
  ∀ n, P7231795962227437052.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P9265839867164580757

`or(2, A062157(n))+n`
-/

namespace A065164.P9265839867164580757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A062157 n) + (n : ℤ)

end

end A065164.P9265839867164580757

namespace A065164

/-- `or(2, A062157(n))+n` -/
def P9265839867164580757.Spec : Prop :=
  ∀ n, P9265839867164580757.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P11889364478877190696

`abs(2-A274922(n))+1`
-/

namespace A065164.P11889364478877190696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A274922 n| + 1

end

end A065164.P11889364478877190696

namespace A065164

/-- `abs(2-A274922(n))+1` -/
def P11889364478877190696.Spec : Prop :=
  ∀ n, P11889364478877190696.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P16920369873287384101

`abs(n-A280560(n))+1`
-/

namespace A065164.P16920369873287384101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A280560 n| + 1

end

end A065164.P16920369873287384101

namespace A065164

/-- `abs(n-A280560(n))+1` -/
def P16920369873287384101.Spec : Prop :=
  ∀ n, P16920369873287384101.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P3878840449242854882

`n+3-A176742(n)²`
-/

namespace A065164.P3878840449242854882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A176742 n ^ 2

end

end A065164.P3878840449242854882

namespace A065164

/-- `n+3-A176742(n)²` -/
def P3878840449242854882.Spec : Prop :=
  ∀ n, P3878840449242854882.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P17013833629339395127

`∑[n+2]-A135405(n)`
-/

namespace A065164.P17013833629339395127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A135405 n

end

end A065164.P17013833629339395127

namespace A065164

/-- `∑[n+2]-A135405(n)` -/
def P17013833629339395127.Spec : Prop :=
  ∀ n, P17013833629339395127.a n = A065164 (n + 1)

end A065164

/-! ## A065164.P3123145614089727079

`A004442(A014681(n))+1`
-/

namespace A065164.P3123145614089727079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A014681 n).toNat + 1

end

end A065164.P3123145614089727079

namespace A065164

/-- `A004442(A014681(n))+1` -/
def P3123145614089727079.Spec : Prop :=
  ∀ n, P3123145614089727079.a n = A065164 (n + 1)

end A065164

/-!
# A065165: Permutation t->t+2 of Z, folded to N.

The programs for A065165, the canonical program `A065165.P7531479745816109852` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065165 has offset 1).

The definition of A065165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065165.P2335086189687073216

`ogf((4+2x-8x^2+4x^3-3x^4+3x^5)/(1-x-x^2+x^3))`
-/

namespace A065165.P2335086189687073216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, -8, 4, -3, 3] [1, -1, -1, 1] n

end

end A065165.P2335086189687073216

namespace A065165

/-- `ogf((4+2x-8x^2+4x^3-3x^4+3x^5)/(1-x-x^2+x^3))` -/
def P2335086189687073216.Spec : Prop :=
  ∀ n, P2335086189687073216.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P7531479745816109852

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=2, a(3)=8, a(4)=1, a(5)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065165

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7531479745816109852.Spec : Prop :=
  ∀ n, P7531479745816109852.a n = A065165 (n + 1)

theorem P7531479745816109852.correct : P7531479745816109852.Spec := by
  intro n
  simp only [A065165, Nat.add_sub_cancel]

end A065165

/-! ## A065165.P17142606044358051227

`a(n-2)+2` with `a(0)=4, a(1)=6, a(2)=2, a(3)=8, a(4)=1`
-/

namespace A065165.P17142606044358051227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 2, 8, 1] fun n a =>
  a (n - 2) + 2

end

end A065165.P17142606044358051227

namespace A065165

/-- `a(n-2)+2` -/
def P17142606044358051227.Spec : Prop :=
  ∀ n, (P17142606044358051227.a n : ℤ) = A065165 (n + 1)

end A065165

/-! ## A065165.P11798586397103584853

`n-xor(1, n-A065169(n+2))`
-/

namespace A065165.P11798586397103584853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 1 ((n : ℤ) - A065169 (n + 2))

end

end A065165.P11798586397103584853

namespace A065165

/-- `n-xor(1, n-A065169(n+2))` -/
def P11798586397103584853.Spec : Prop :=
  ∀ n, P11798586397103584853.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P15773379359054444476

`A065164(A065164(n+1))`
-/

namespace A065165.P15773379359054444476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (n + 1)).toNat

end

end A065165.P15773379359054444476

namespace A065165

/-- `A065164(A065164(n+1))` -/
def P15773379359054444476.Spec : Prop :=
  ∀ n, P15773379359054444476.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P7860199537652000287

`A065166(A065168(n+1))`
-/

namespace A065165.P7860199537652000287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065166 (A065168 (n + 1)).toNat

end

end A065165.P7860199537652000287

namespace A065165

/-- `A065166(A065168(n+1))` -/
def P7860199537652000287.Spec : Prop :=
  ∀ n, P7860199537652000287.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P9553285599780279846

`A014681(A065168(A014681(n)+1))`
-/

namespace A065165.P9553285599780279846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A065168 (A014681 n + 1).toNat).toNat

end

end A065165.P9553285599780279846

namespace A065165

/-- `A014681(A065168(A014681(n)+1))` -/
def P9553285599780279846.Spec : Prop :=
  ∀ n, P9553285599780279846.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P9307352265457510675

`A065164(A004442(A165754(A014681(n))))`
-/

namespace A065165.P9307352265457510675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A004442 (A165754 (A014681 n).toNat).toNat).toNat

end

end A065165.P9307352265457510675

namespace A065165

/-- `A065164(A004442(A165754(A014681(n))))` -/
def P9307352265457510675.Spec : Prop :=
  ∀ n, P9307352265457510675.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P10456883779877525468

`A103889(A065168(A065168(A103889(n+1))))`
-/

namespace A065165.P10456883779877525468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A065168 (A065168 (A103889 (n + 1)).toNat).toNat).toNat

end

end A065165.P10456883779877525468

namespace A065165

/-- `A103889(A065168(A065168(A103889(n+1))))` -/
def P10456883779877525468.Spec : Prop :=
  ∀ n, P10456883779877525468.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P10284753796145031639

`A014681(A065168(A065168(A004442(A165754(n)))))`
-/

namespace A065165.P10284753796145031639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A065168 (A065168 (A004442 (A165754 n).toNat).toNat).toNat).toNat

end

end A065165.P10284753796145031639

namespace A065165

/-- `A014681(A065168(A065168(A004442(A165754(n)))))` -/
def P10284753796145031639.Spec : Prop :=
  ∀ n, P10284753796145031639.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P15574297210591106151

`A065168(A065166(n+1))`
-/

namespace A065165.P15574297210591106151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A065166 (n + 1)).toNat

end

end A065165.P15574297210591106151

namespace A065165

/-- `A065168(A065166(n+1))` -/
def P15574297210591106151.Spec : Prop :=
  ∀ n, P15574297210591106151.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P4185612669252132831

`A116468(A090964(A115659(A116468(n+1))))`
-/

namespace A065165.P4185612669252132831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116468 (A090964 (A115659 (A116468 (n + 1)).toNat).toNat).toNat

end

end A065165.P4185612669252132831

namespace A065165

/-- `A116468(A090964(A115659(A116468(n+1))))` -/
def P4185612669252132831.Spec : Prop :=
  ∀ n, P4185612669252132831.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P10162712561744489804

`A065164(A014681(A014682(A014681(A086970(n)))))`
-/

namespace A065165.P10162712561744489804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A014681 (A014682 (A014681 (A086970 n).toNat).toNat).toNat).toNat

end

end A065165.P10162712561744489804

namespace A065165

/-- `A065164(A014681(A014682(A014681(A086970(n)))))` -/
def P10162712561744489804.Spec : Prop :=
  ∀ n, P10162712561744489804.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P14948685686000581639

`A000463(abs(8-A157142(n)))`
-/

namespace A065165.P14948685686000581639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 |8 - A157142 n|.toNat

end

end A065165.P14948685686000581639

namespace A065165

/-- `A000463(abs(8-A157142(n)))` -/
def P14948685686000581639.Spec : Prop :=
  ∀ n, P14948685686000581639.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P15755843418406533447

`A008619(abs(8-A157142(n)))`
-/

namespace A065165.P15755843418406533447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 |8 - A157142 n|.toNat

end

end A065165.P15755843418406533447

namespace A065165

/-- `A008619(abs(8-A157142(n)))` -/
def P15755843418406533447.Spec : Prop :=
  ∀ n, P15755843418406533447.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P4604974097665203661

`A130747(abs(8-A157142(n)))`
-/

namespace A065165.P4604974097665203661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 |8 - A157142 n|.toNat

end

end A065165.P4604974097665203661

namespace A065165

/-- `A130747(abs(8-A157142(n)))` -/
def P4604974097665203661.Spec : Prop :=
  ∀ n, P4604974097665203661.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P11009337248299616209

`A065190(A065168(A065168(A231550(A153154(n+1)))))`
-/

namespace A065165.P11009337248299616209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065168 (A065168 (A231550 (A153154 (n + 1)).toNat).toNat).toNat).toNat

end

end A065165.P11009337248299616209

namespace A065165

/-- `A065190(A065168(A065168(A231550(A153154(n+1)))))` -/
def P11009337248299616209.Spec : Prop :=
  ∀ n, P11009337248299616209.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P15907924171890364782

`A253146(eq[1, A004197(n)])`
-/

namespace A065165.P15907924171890364782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065165.P15907924171890364782

namespace A065165

/-- `A253146(eq[1, A004197(n)])` -/
def P15907924171890364782.Spec : Prop :=
  ∀ n, P15907924171890364782.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P2648465553996213442

`A253146(eq[3, A152714(n)])`
-/

namespace A065165.P2648465553996213442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065165.P2648465553996213442

namespace A065165

/-- `A253146(eq[3, A152714(n)])` -/
def P2648465553996213442.Spec : Prop :=
  ∀ n, P2648465553996213442.a n = A065165 (n + 1)

end A065165

/-! ## A065165.P6705787018987051048

`A253146(eq[2, A003983(n+1)])`
-/

namespace A065165.P6705787018987051048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065165.P6705787018987051048

namespace A065165

/-- `A253146(eq[2, A003983(n+1)])` -/
def P6705787018987051048.Spec : Prop :=
  ∀ n, P6705787018987051048.a n = A065165 (n + 1)

end A065165

/-!
# A065166: Permutation t->t+3 of Z, folded to N.

The programs for A065166, the canonical program `A065166.P5421407723204175398` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065166 has offset 1).

The definition of A065166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065166.P16221251817109736682

`ogf((6+2x-10x^2+4x^3-4x^4+4x^5-3x^6+3x^7)/(1-x-x^2+x^3))`
-/

namespace A065166.P16221251817109736682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, -10, 4, -4, 4, -3, 3] [1, -1, -1, 1] n

end

end A065166.P16221251817109736682

namespace A065166

/-- `ogf((6+2x-10x^2+4x^3-4x^4+4x^5-3x^6+3x^7)/(1-x-x^2+x^3))` -/
def P16221251817109736682.Spec : Prop :=
  ∀ n, P16221251817109736682.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P5421407723204175398

`ceil(abs(12-A157142(n))/2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065166

/-- `ceil(abs(12-A157142(n))/2)` -/
def P5421407723204175398.Spec : Prop :=
  ∀ n, P5421407723204175398.a n = A065166 (n + 1)

theorem P5421407723204175398.correct : P5421407723204175398.Spec := by
  intro n
  simp only [A065166, Nat.add_sub_cancel]

end A065166

/-! ## A065166.P2565120664908198619

`A065165(A065164(n+1))`
-/

namespace A065166.P2565120664908198619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065165 (A065164 (n + 1)).toNat

end

end A065166.P2565120664908198619

namespace A065166

/-- `A065165(A065164(n+1))` -/
def P2565120664908198619.Spec : Prop :=
  ∀ n, P2565120664908198619.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P8663429242843582936

`A065165(abs(2-A131738(n)))`
-/

namespace A065166.P8663429242843582936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065165 |2 - A131738 n|.toNat

end

end A065166.P8663429242843582936

namespace A065166

/-- `A065165(abs(2-A131738(n)))` -/
def P8663429242843582936.Spec : Prop :=
  ∀ n, P8663429242843582936.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P3763522974727629908

`A065165(5-A040008(n)+n)`
-/

namespace A065166.P3763522974727629908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065165 (5 - A040008 n + (n : ℤ)).toNat

end

end A065166.P3763522974727629908

namespace A065166

/-- `A065165(5-A040008(n)+n)` -/
def P3763522974727629908.Spec : Prop :=
  ∀ n, P3763522974727629908.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P18342141559179244363

`A065164(A065164(A014681(A014681(n)+1)))`
-/

namespace A065166.P18342141559179244363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (A014681 (A014681 n + 1).toNat).toNat).toNat

end

end A065166.P18342141559179244363

namespace A065166

/-- `A065164(A065164(A014681(A014681(n)+1)))` -/
def P18342141559179244363.Spec : Prop :=
  ∀ n, P18342141559179244363.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P14496867125570812435

`A065164(A065164(A065164(A063946(A063946(n+1)))))`
-/

namespace A065166.P14496867125570812435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (A065164 (A063946 (A063946 (n + 1)).toNat).toNat).toNat).toNat

end

end A065166.P14496867125570812435

namespace A065166

/-- `A065164(A065164(A065164(A063946(A063946(n+1)))))` -/
def P14496867125570812435.Spec : Prop :=
  ∀ n, P14496867125570812435.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P13071540862672976729

`A065164(A065164(A065164(A065164(A065168(n+1)))))`
-/

namespace A065166.P13071540862672976729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (A065164 (A065164 (A065168 (n + 1)).toNat).toNat).toNat).toNat

end

end A065166.P13071540862672976729

namespace A065166

/-- `A065164(A065164(A065164(A065164(A065168(n+1)))))` -/
def P13071540862672976729.Spec : Prop :=
  ∀ n, P13071540862672976729.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P13690659679351188533

`A065164(A065164(A065164(A103889(A103889(n+1)))))`
-/

namespace A065166.P13690659679351188533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (A065164 (A103889 (A103889 (n + 1)).toNat).toNat).toNat).toNat

end

end A065166.P13690659679351188533

namespace A065166

/-- `A065164(A065164(A065164(A103889(A103889(n+1)))))` -/
def P13690659679351188533.Spec : Prop :=
  ∀ n, P13690659679351188533.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P1623751466524837108

`A065164(A065164(A065164(A258746(A258746(n+1)))))`
-/

namespace A065166.P1623751466524837108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (A065164 (A258746 (A258746 (n + 1)).toNat).toNat).toNat).toNat

end

end A065166.P1623751466524837108

namespace A065166

/-- `A065164(A065164(A065164(A258746(A258746(n+1)))))` -/
def P1623751466524837108.Spec : Prop :=
  ∀ n, P1623751466524837108.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P13379389056956930009

`A065164(A065164(A065164(A258996(A258996(n+1)))))`
-/

namespace A065166.P13379389056956930009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (A065164 (A258996 (A258996 (n + 1)).toNat).toNat).toNat).toNat

end

end A065166.P13379389056956930009

namespace A065166

/-- `A065164(A065164(A065164(A258996(A258996(n+1)))))` -/
def P13379389056956930009.Spec : Prop :=
  ∀ n, P13379389056956930009.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P957164109550666234

`A065170(A065165(A065165(A065165(n+1))))`
-/

namespace A065166.P957164109550666234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065170 (A065165 (A065165 (A065165 (n + 1)).toNat).toNat).toNat

end

end A065166.P957164109550666234

namespace A065166

/-- `A065170(A065165(A065165(A065165(n+1))))` -/
def P957164109550666234.Spec : Prop :=
  ∀ n, P957164109550666234.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P4828973873227376970

`A065164(A065164(A065164(A054429(A054429(n+1)))))`
-/

namespace A065166.P4828973873227376970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A065164 (A065164 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A065166.P4828973873227376970

namespace A065166

/-- `A065164(A065164(A065164(A054429(A054429(n+1)))))` -/
def P4828973873227376970.Spec : Prop :=
  ∀ n, P4828973873227376970.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P2820836745124600481

`A000463(abs(12-A157142(n)))`
-/

namespace A065166.P2820836745124600481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 |12 - A157142 n|.toNat

end

end A065166.P2820836745124600481

namespace A065166

/-- `A000463(abs(12-A157142(n)))` -/
def P2820836745124600481.Spec : Prop :=
  ∀ n, P2820836745124600481.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P8697667874592273174

`A001057(abs(12-A157142(n)))`
-/

namespace A065166.P8697667874592273174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 |12 - A157142 n|.toNat

end

end A065166.P8697667874592273174

namespace A065166

/-- `A001057(abs(12-A157142(n)))` -/
def P8697667874592273174.Spec : Prop :=
  ∀ n, P8697667874592273174.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P15325618331220728513

`A008619(abs(12-A157142(n)))`
-/

namespace A065166.P15325618331220728513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 |12 - A157142 n|.toNat

end

end A065166.P15325618331220728513

namespace A065166

/-- `A008619(abs(12-A157142(n)))` -/
def P15325618331220728513.Spec : Prop :=
  ∀ n, P15325618331220728513.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P3726454509137385809

`A003602(2*abs(12-A157142(n)))`
-/

namespace A065166.P3726454509137385809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * |12 - A157142 n|).toNat

end

end A065166.P3726454509137385809

namespace A065166

/-- `A003602(2*abs(12-A157142(n)))` -/
def P3726454509137385809.Spec : Prop :=
  ∀ n, P3726454509137385809.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P6395617720818656395

`A008624(2*abs(12-A157142(n)))`
-/

namespace A065166.P6395617720818656395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * |12 - A157142 n|).toNat

end

end A065166.P6395617720818656395

namespace A065166

/-- `A008624(2*abs(12-A157142(n)))` -/
def P6395617720818656395.Spec : Prop :=
  ∀ n, P6395617720818656395.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P18045600927212880396

`A065167(A167614(n+2))`
-/

namespace A065166.P18045600927212880396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065167 (A167614 (n + 2)).toNat

end

end A065166.P18045600927212880396

namespace A065166

/-- `A065167(A167614(n+2))` -/
def P18045600927212880396.Spec : Prop :=
  ∀ n, P18045600927212880396.a n = A065166 (n + 1)

end A065166

/-! ## A065166.P2880501393942071420

`A065167(A340266(n+2)+1)`
-/

namespace A065166.P2880501393942071420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065167 (A340266 (n + 2) + 1).toNat

end

end A065166.P2880501393942071420

namespace A065166

/-- `A065167(A340266(n+2)+1)` -/
def P2880501393942071420.Spec : Prop :=
  ∀ n, P2880501393942071420.a n = A065166 (n + 1)

end A065166

/-!
# A065168: Permutation t->t-1 of Z, folded to N.

The programs for A065168, the canonical program `A065168.P13167355532606532131` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065168 has offset 1).

The definition of A065168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065168.P13167355532606532131

`ogf((3-2x+x^2-x^3+x^4)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065168

/-- `ogf((3-2x+x^2-x^3+x^4)/(1-x-x^2+x^3))` -/
def P13167355532606532131.Spec : Prop :=
  ∀ n, P13167355532606532131.a n = A065168 (n + 1)

theorem P13167355532606532131.correct : P13167355532606532131.Spec := by
  intro n
  simp only [A065168, Nat.add_sub_cancel]

end A065168

/-! ## A065168.P9912261478028354536

`ceil(abs(tan(gcd(2, n))-n))`
-/

namespace A065168.P9912261478028354536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.tan (Nat.gcd 2 n : ℝ) - (n : ℝ)|⌉

end

end A065168.P9912261478028354536

namespace A065168

/-- `ceil(abs(tan(gcd(2, n))-n))` -/
def P9912261478028354536.Spec : Prop :=
  ∀ n, P9912261478028354536.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P9989525495697063891

`char[1]+xor(1, abs(xor(n, -2)))`
-/

namespace A065168.P9989525495697063891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.xor 1 |Int.xor (n : ℤ) (-2)|

end

end A065168.P9989525495697063891

namespace A065168

/-- `char[1]+xor(1, abs(xor(n, -2)))` -/
def P9989525495697063891.Spec : Prop :=
  ∀ n, P9989525495697063891.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P4469779268530381517

`xor(1-char[1], abs(xor(n, -2)))`
-/

namespace A065168.P4469779268530381517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) |Int.xor (n : ℤ) (-2)|

end

end A065168.P4469779268530381517

namespace A065168

/-- `xor(1-char[1], abs(xor(n, -2)))` -/
def P4469779268530381517.Spec : Prop :=
  ∀ n, P4469779268530381517.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P1274827437729612839

`a(n-2)+2` with `a(0)=3, a(1)=1, a(2)=5, a(3)=2`
-/

namespace A065168.P1274827437729612839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 5, 2] fun n a =>
  a (n - 2) + 2

end

end A065168.P1274827437729612839

namespace A065168

/-- `a(n-2)+2` -/
def P1274827437729612839.Spec : Prop :=
  ∀ n, (P1274827437729612839.a n : ℤ) = A065168 (n + 1)

end A065168

/-! ## A065168.P7507149283508191612

`char[1]+xor(1, xor(1, n)+1)`
-/

namespace A065168.P7507149283508191612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.xor 1 (Nat.xor 1 n + 1)

end

end A065168.P7507149283508191612

namespace A065168

/-- `char[1]+xor(1, xor(1, n)+1)` -/
def P7507149283508191612.Spec : Prop :=
  ∀ n, (P7507149283508191612.a n : ℤ) = A065168 (n + 1)

end A065168

/-! ## A065168.P9612489445542777618

`xor(1, 1-(char[1]-xor(1, n)))`
-/

namespace A065168.P9612489445542777618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (Nat.xor 1 n : ℤ)))

end

end A065168.P9612489445542777618

namespace A065168

/-- `xor(1, 1-(char[1]-xor(1, n)))` -/
def P9612489445542777618.Spec : Prop :=
  ∀ n, P9612489445542777618.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P10348282225502170045

`2-(char[3]-a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A065168.P10348282225502170045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  2 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A065168.P10348282225502170045

namespace A065168

/-- `2-(char[3]-a(n-2))` -/
def P10348282225502170045.Spec : Prop :=
  ∀ n, P10348282225502170045.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P12467228453710942851

`Δ[n²]-a(n-1)` with `a(0)=3, a(1)=1, a(2)=5`
-/

namespace A065168.P12467228453710942851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 5] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A065168.P12467228453710942851

namespace A065168

/-- `Δ[n²]-a(n-1)` -/
def P12467228453710942851.Spec : Prop :=
  ∀ n, P12467228453710942851.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P6898956022098636082

`floor(xor(1, n+2)²/(n+3))`
-/

namespace A065168.P6898956022098636082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 2) ^ 2 : ℚ) / (n + 3 : ℚ)⌋

end

end A065168.P6898956022098636082

namespace A065168

/-- `floor(xor(1, n+2)²/(n+3))` -/
def P6898956022098636082.Spec : Prop :=
  ∀ n, P6898956022098636082.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P14061594026708245568

`∑[2-a(n-1)]` with `a(0)=3, a(1)=-2, a(2)=4, a(3)=-3`
-/

namespace A065168.P14061594026708245568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 4, -3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065168.P14061594026708245568

namespace A065168

/-- `∑[2-a(n-1)]` -/
def P14061594026708245568.Spec : Prop :=
  ∀ n, P14061594026708245568.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P474159568148959343

`1-(a(n-1)-2*n)` with `a(0)=3, a(1)=1, a(2)=5`
-/

namespace A065168.P474159568148959343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 5] fun n a =>
  1 - (a (n - 1) - (2 * n : ℤ))

end

end A065168.P474159568148959343

namespace A065168

/-- `1-(a(n-1)-2*n)` -/
def P474159568148959343.Spec : Prop :=
  ∀ n, P474159568148959343.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P8734203998530876958

`1-(a(n-1)-n-n)` with `a(0)=3, a(1)=1, a(2)=5`
-/

namespace A065168.P8734203998530876958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 5] fun n a =>
  1 - (a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A065168.P8734203998530876958

namespace A065168

/-- `1-(a(n-1)-n-n)` -/
def P8734203998530876958.Spec : Prop :=
  ∀ n, P8734203998530876958.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P16548810197750222281

`floor((2*and(1, n)-(n+3))²/(n+3))`
-/

namespace A065168.P16548810197750222281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((2 * Nat.land 1 n : ℤ) - (n + 3 : ℤ)) ^ 2 : ℚ) / (n + 3 : ℚ)⌋

end

end A065168.P16548810197750222281

namespace A065168

/-- `floor((2*and(1, n)-(n+3))²/(n+3))` -/
def P16548810197750222281.Spec : Prop :=
  ∀ n, P16548810197750222281.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P7956849708716595952

`A165754(n)+char[1]`
-/

namespace A065168.P7956849708716595952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A065168.P7956849708716595952

namespace A065168

/-- `A165754(n)+char[1]` -/
def P7956849708716595952.Spec : Prop :=
  ∀ n, P7956849708716595952.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P1767793517973258735

`A014681(xor(1, n))+1`
-/

namespace A065168.P1767793517973258735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Nat.xor 1 n) + 1

end

end A065168.P1767793517973258735

namespace A065168

/-- `A014681(xor(1, n))+1` -/
def P1767793517973258735.Spec : Prop :=
  ∀ n, P1767793517973258735.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P17826806969381853630

`A065190(xor(1, n)+1)`
-/

namespace A065168.P17826806969381853630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (Nat.xor 1 n + 1)

end

end A065168.P17826806969381853630

namespace A065168

/-- `A065190(xor(1, n)+1)` -/
def P17826806969381853630.Spec : Prop :=
  ∀ n, P17826806969381853630.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P18116666002986125999

`A065475(a(n-2))+1` with `a(0)=3, a(1)=1`
-/

namespace A065168.P18116666002986125999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A065475 (a (n - 2)).toNat + 1

end

end A065168.P18116666002986125999

namespace A065168

/-- `A065475(a(n-2))+1` -/
def P18116666002986125999.Spec : Prop :=
  ∀ n, P18116666002986125999.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P10348428849022508816

`A319701(2*a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A065168.P10348428849022508816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A319701 (2 * a (n - 2)).toNat

end

end A065168.P10348428849022508816

namespace A065168

/-- `A319701(2*a(n-2))` -/
def P10348428849022508816.Spec : Prop :=
  ∀ n, P10348428849022508816.a n = A065168 (n + 1)

end A065168

/-! ## A065168.P4437577833160541159

`A322809(2*a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A065168.P4437577833160541159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  A322809 (2 * a (n - 2)).toNat

end

end A065168.P4437577833160541159

namespace A065168

/-- `A322809(2*a(n-2))` -/
def P4437577833160541159.Spec : Prop :=
  ∀ n, P4437577833160541159.a n = A065168 (n + 1)

end A065168

/-!
# A065169: Permutation t->t-2 of Z, folded to N.

The programs for A065169, the canonical program `A065169.P14320157084508052809` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065169 has offset 1).

The definition of A065169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065169.P334776580310153354

`ogf((5-2x-x^2-4x^3+4x^4-x^5+x^6)/(1-x-x^2+x^3))`
-/

namespace A065169.P334776580310153354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2, -1, -4, 4, -1, 1] [1, -1, -1, 1] n

end

end A065169.P334776580310153354

namespace A065169

/-- `ogf((5-2x-x^2-4x^3+4x^4-x^5+x^6)/(1-x-x^2+x^3))` -/
def P334776580310153354.Spec : Prop :=
  ∀ n, P334776580310153354.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P14320157084508052809

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=3, a(2)=7, a(3)=1, a(4)=9, a(5)=2, a(6)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065169

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P14320157084508052809.Spec : Prop :=
  ∀ n, P14320157084508052809.a n = A065169 (n + 1)

theorem P14320157084508052809.correct : P14320157084508052809.Spec := by
  intro n
  simp only [A065169, Nat.add_sub_cancel]

end A065169

/-! ## A065169.P5028158970275898894

`a(n-2)+2` with `a(0)=5, a(1)=3, a(2)=7, a(3)=1, a(4)=9, a(5)=2`
-/

namespace A065169.P5028158970275898894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3, 7, 1, 9, 2] fun n a =>
  a (n - 2) + 2

end

end A065169.P5028158970275898894

namespace A065169

/-- `a(n-2)+2` -/
def P5028158970275898894.Spec : Prop :=
  ∀ n, (P5028158970275898894.a n : ℤ) = A065169 (n + 1)

end A065169

/-! ## A065169.P4500214362461071501

`A065170(A065164(n+1))`
-/

namespace A065169.P4500214362461071501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065170 (A065164 (n + 1)).toNat

end

end A065169.P4500214362461071501

namespace A065169

/-- `A065170(A065164(n+1))` -/
def P4500214362461071501.Spec : Prop :=
  ∀ n, P4500214362461071501.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P4871161170824584765

`A065168(A065168(n+1))`
-/

namespace A065169.P4871161170824584765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065168 (A065168 (n + 1)).toNat

end

end A065169.P4871161170824584765

namespace A065169

/-- `A065168(A065168(n+1))` -/
def P4871161170824584765.Spec : Prop :=
  ∀ n, P4871161170824584765.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P14319692424741232611

`A065190(A065164(A014681(n+1)))`
-/

namespace A065169.P14319692424741232611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065164 (A014681 (n + 1)).toNat).toNat

end

end A065169.P14319692424741232611

namespace A065169

/-- `A065190(A065164(A014681(n+1)))` -/
def P14319692424741232611.Spec : Prop :=
  ∀ n, P14319692424741232611.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P10385990951515682206

`A065190(A065165(A065190(n+1)))`
-/

namespace A065169.P10385990951515682206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065165 (A065190 (n + 1)).toNat).toNat

end

end A065169.P10385990951515682206

namespace A065169

/-- `A065190(A065165(A065190(n+1)))` -/
def P10385990951515682206.Spec : Prop :=
  ∀ n, P10385990951515682206.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P6543567879026664932

`A065190(A065164(A103889(n+1)))`
-/

namespace A065169.P6543567879026664932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065164 (A103889 (n + 1)).toNat).toNat

end

end A065169.P6543567879026664932

namespace A065169

/-- `A065190(A065164(A103889(n+1)))` -/
def P6543567879026664932.Spec : Prop :=
  ∀ n, P6543567879026664932.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P6758264170215802245

`A065190(A014681(A014681(xor(1, n))+1))`
-/

namespace A065169.P6758264170215802245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A014681 (A014681 (Nat.xor 1 n) + 1).toNat).toNat

end

end A065169.P6758264170215802245

namespace A065169

/-- `A065190(A014681(A014681(xor(1, n))+1))` -/
def P6758264170215802245.Spec : Prop :=
  ∀ n, P6758264170215802245.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P16300450691743762191

`A065190(A065164(A004442(A165754(n))))`
-/

namespace A065169.P16300450691743762191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065164 (A004442 (A165754 n).toNat).toNat).toNat

end

end A065169.P16300450691743762191

namespace A065169

/-- `A065190(A065164(A004442(A165754(n))))` -/
def P16300450691743762191.Spec : Prop :=
  ∀ n, P16300450691743762191.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P8173749564994343525

`A065190(A004442(A165754(A014681(A004442(n)))))`
-/

namespace A065169.P8173749564994343525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A004442 (A165754 (A014681 (A004442 n).toNat).toNat).toNat).toNat

end

end A065169.P8173749564994343525

namespace A065169

/-- `A065190(A004442(A165754(A014681(A004442(n)))))` -/
def P8173749564994343525.Spec : Prop :=
  ∀ n, P8173749564994343525.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P8338373807918722145

`A065170(A065170(A065165(A065165(n+1))))`
-/

namespace A065169.P8338373807918722145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065170 (A065170 (A065165 (A065165 (n + 1)).toNat).toNat).toNat

end

end A065169.P8338373807918722145

namespace A065169

/-- `A065170(A065170(A065165(A065165(n+1))))` -/
def P8338373807918722145.Spec : Prop :=
  ∀ n, P8338373807918722145.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P8367951502277718914

`A253146(eq[1, A004197(n)]+2)`
-/

namespace A065169.P8367951502277718914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A065169.P8367951502277718914

namespace A065169

/-- `A253146(eq[1, A004197(n)]+2)` -/
def P8367951502277718914.Spec : Prop :=
  ∀ n, P8367951502277718914.a n = A065169 (n + 1)

end A065169

/-! ## A065169.P17626913970420940139

`A253146(eq[2, A003983(n+1)]+2)`
-/

namespace A065169.P17626913970420940139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A065169.P17626913970420940139

namespace A065169

/-- `A253146(eq[2, A003983(n+1)]+2)` -/
def P17626913970420940139.Spec : Prop :=
  ∀ n, P17626913970420940139.a n = A065169 (n + 1)

end A065169

/-!
# A065170: Permutation t->t-3 of Z, folded to N.

The programs for A065170, the canonical program `A065170.P10173856216532677162` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065170 has offset 1).

The definition of A065170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065170.P11050957798207642782

`ogf((7-2x-3x^2-4x^3+4x^4-4x^5+4x^6-x^7+x^8)/(1-x-x^2+x^3))`
-/

namespace A065170.P11050957798207642782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -2, -3, -4, 4, -4, 4, -1, 1] [1, -1, -1, 1] n

end

end A065170.P11050957798207642782

namespace A065170

/-- `ogf((7-2x-3x^2-4x^3+4x^4-4x^5+4x^6-x^7+x^8)/(1-x-x^2+x^3))` -/
def P11050957798207642782.Spec : Prop :=
  ∀ n, P11050957798207642782.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P10173856216532677162

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=7, a(1)=5, a(2)=9, a(3)=3, a(4)=11, a(5)=1, a(6)=13, a(7)=2, a(8)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065170

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P10173856216532677162.Spec : Prop :=
  ∀ n, P10173856216532677162.a n = A065170 (n + 1)

theorem P10173856216532677162.correct : P10173856216532677162.Spec := by
  intro n
  simp only [A065170, Nat.add_sub_cancel]

end A065170

/-! ## A065170.P10997343469852413832

`A065169(A065168(n+1))`
-/

namespace A065170.P10997343469852413832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065169 (A065168 (n + 1)).toNat

end

end A065170.P10997343469852413832

namespace A065170

/-- `A065169(A065168(n+1))` -/
def P10997343469852413832.Spec : Prop :=
  ∀ n, P10997343469852413832.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P6890633450325536242

`A065169(A165754(n)+char[1])`
-/

namespace A065170.P6890633450325536242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065169 (A165754 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A065170.P6890633450325536242

namespace A065170

/-- `A065169(A165754(n)+char[1])` -/
def P6890633450325536242.Spec : Prop :=
  ∀ n, P6890633450325536242.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P14578395298832982538

`A065169(or(char[1], A165754(n)))`
-/

namespace A065170.P14578395298832982538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065169 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A165754 n)).toNat

end

end A065170.P14578395298832982538

namespace A065170

/-- `A065169(or(char[1], A165754(n)))` -/
def P14578395298832982538.Spec : Prop :=
  ∀ n, P14578395298832982538.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P6876334304428864694

`A065169(xor(char[1], A165754(n)))`
-/

namespace A065170.P6876334304428864694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065169 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A165754 n)).toNat

end

end A065170.P6876334304428864694

namespace A065170

/-- `A065169(xor(char[1], A165754(n)))` -/
def P6876334304428864694.Spec : Prop :=
  ∀ n, P6876334304428864694.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P17088332689016040956

`A065169(A065169(A065164(n+1)))`
-/

namespace A065170.P17088332689016040956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065169 (A065169 (A065164 (n + 1)).toNat).toNat

end

end A065170.P17088332689016040956

namespace A065170

/-- `A065169(A065169(A065164(n+1)))` -/
def P17088332689016040956.Spec : Prop :=
  ∀ n, P17088332689016040956.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P10594411478459806733

`A065190(A065164(A065164(A014681(n+1))))`
-/

namespace A065170.P10594411478459806733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065164 (A065164 (A014681 (n + 1)).toNat).toNat).toNat

end

end A065170.P10594411478459806733

namespace A065170

/-- `A065190(A065164(A065164(A014681(n+1))))` -/
def P10594411478459806733.Spec : Prop :=
  ∀ n, P10594411478459806733.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P13412630499993071356

`A065190(A065164(A065164(A103889(n+1))))`
-/

namespace A065170.P13412630499993071356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065164 (A065164 (A103889 (n + 1)).toNat).toNat).toNat

end

end A065170.P13412630499993071356

namespace A065170

/-- `A065190(A065164(A065164(A103889(n+1))))` -/
def P13412630499993071356.Spec : Prop :=
  ∀ n, P13412630499993071356.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P9390148360052104924

`A065190(A065164(A065164(A065164(A065190(n+1)))))`
-/

namespace A065170.P9390148360052104924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065164 (A065164 (A065164 (A065190 (n + 1)).toNat).toNat).toNat).toNat

end

end A065170.P9390148360052104924

namespace A065170

/-- `A065190(A065164(A065164(A065164(A065190(n+1)))))` -/
def P9390148360052104924.Spec : Prop :=
  ∀ n, P9390148360052104924.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P2917879953211023270

`A065169(A065169(A065169(A065166(n+1))))`
-/

namespace A065170.P2917879953211023270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065169 (A065169 (A065169 (A065166 (n + 1)).toNat).toNat).toNat

end

end A065170.P2917879953211023270

namespace A065170

/-- `A065169(A065169(A065169(A065166(n+1))))` -/
def P2917879953211023270.Spec : Prop :=
  ∀ n, P2917879953211023270.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P10398983040380895212

`A001057(abs(A157142(n)+12))`
-/

namespace A065170.P10398983040380895212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 |A157142 n + 12|.toNat

end

end A065170.P10398983040380895212

namespace A065170

/-- `A001057(abs(A157142(n)+12))` -/
def P10398983040380895212.Spec : Prop :=
  ∀ n, P10398983040380895212.a n = A065170 (n + 1)

end A065170

/-! ## A065170.P9591882051074504496

`A008619(abs(A157142(n)+12))`
-/

namespace A065170.P9591882051074504496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 |A157142 n + 12|.toNat

end

end A065170.P9591882051074504496

namespace A065170

/-- `A008619(abs(A157142(n)+12))` -/
def P9591882051074504496.Spec : Prop :=
  ∀ n, P9591882051074504496.a n = A065170 (n + 1)

end A065170

/-!
# A065171: Permutation of Z, folded to N, corresponding to the site swap pattern ...26120123456... which ascends infinitely after t=0.

The programs for A065171, the canonical program `A065171.P5124900426512068722` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065171 has offset 1).

The definition of A065171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065171.P5680908125779626747

`ogf((1+4x+2x^2+8x^3+x^4+4x^5+2x^6)/(1-2x^4+x^8))`
-/

namespace A065171.P5680908125779626747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, 8, 1, 4, 2] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A065171.P5680908125779626747

namespace A065171

/-- `ogf((1+4x+2x^2+8x^3+x^4+4x^5+2x^6)/(1-2x^4+x^8))` -/
def P5680908125779626747.Spec : Prop :=
  ∀ n, P5680908125779626747.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P5124900426512068722

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=8, a(4)=3, a(5)=12, a(6)=6, a(7)=16`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065171

/-- `2*a(n-4)-a(n-8)` -/
def P5124900426512068722.Spec : Prop :=
  ∀ n, P5124900426512068722.a n = A065171 (n + 1)

theorem P5124900426512068722.correct : P5124900426512068722.Spec := by
  intro n
  simp only [A065171, Nat.add_sub_cancel]

end A065171

/-! ## A065171.P1819726724290045549

`∑[4-a(n-2)]/gcd(4, n)` with `a(0)=4, a(1)=0`
-/

namespace A065171.P1819726724290045549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  4 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.gcd 4 n : ℚ)

end

end A065171.P1819726724290045549

namespace A065171

/-- `∑[4-a(n-2)]/gcd(4, n)` -/
def P1819726724290045549.Spec : Prop :=
  ∀ n, P1819726724290045549.a n = (A065171 (n + 1) : ℚ)

end A065171

/-! ## A065171.P3349362636224216919

`xor(1, A145979(n)-1)`
-/

namespace A065171.P3349362636224216919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A145979 n - 1)

end

end A065171.P3349362636224216919

namespace A065171

/-- `xor(1, A145979(n)-1)` -/
def P3349362636224216919.Spec : Prop :=
  ∀ n, P3349362636224216919.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P14276905484673149292

`A065260(A092486(n))`
-/

namespace A065171.P14276905484673149292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (A092486 n).toNat

end

end A065171.P14276905484673149292

namespace A065171

/-- `A065260(A092486(n))` -/
def P14276905484673149292.Spec : Prop :=
  ∀ n, P14276905484673149292.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P17164213229112773202

`A065260(A159966(n+1))`
-/

namespace A065171.P17164213229112773202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (A159966 (n + 1)).toNat

end

end A065171.P17164213229112773202

namespace A065171

/-- `A065260(A159966(n+1))` -/
def P17164213229112773202.Spec : Prop :=
  ∀ n, P17164213229112773202.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P6082267474140477765

`A000034(A026741(n))*A186421(n+1)`
-/

namespace A065171.P6082267474140477765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A026741 n).toNat * A186421 (n + 1)

end

end A065171.P6082267474140477765

namespace A065171

/-- `A000034(A026741(n))*A186421(n+1)` -/
def P6082267474140477765.Spec : Prop :=
  ∀ n, P6082267474140477765.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P1623553761886698742

`(A129756(n)+A011765(n+1))*A176895(n)`
-/

namespace A065171.P1623553761886698742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129756 n + A011765 (n + 1)) * A176895 n

end

end A065171.P1623553761886698742

namespace A065171

/-- `(A129756(n)+A011765(n+1))*A176895(n)` -/
def P1623553761886698742.Spec : Prop :=
  ∀ n, P1623553761886698742.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P12994051152248042115

`(A129756(n)+A121262(n+1))*A176895(n)`
-/

namespace A065171.P12994051152248042115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129756 n + A121262 (n + 1)) * A176895 n

end

end A065171.P12994051152248042115

namespace A065171

/-- `(A129756(n)+A121262(n+1))*A176895(n)` -/
def P12994051152248042115.Spec : Prop :=
  ∀ n, P12994051152248042115.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P17271201764968901679

`A247555(A116966(n))`
-/

namespace A065171.P17271201764968901679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 (A116966 n).toNat

end

end A065171.P17271201764968901679

namespace A065171

/-- `A247555(A116966(n))` -/
def P17271201764968901679.Spec : Prop :=
  ∀ n, P17271201764968901679.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P11732295716084879482

`A265667(A006368(n+1))`
-/

namespace A065171.P11732295716084879482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A006368 (n + 1)).toNat

end

end A065171.P11732295716084879482

namespace A065171

/-- `A265667(A006368(n+1))` -/
def P11732295716084879482.Spec : Prop :=
  ∀ n, P11732295716084879482.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P330581472362205102

`A006369(A342131(n))+1`
-/

namespace A065171.P330581472362205102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A342131 n).toNat + 1

end

end A065171.P330581472362205102

namespace A065171

/-- `A006369(A342131(n))+1` -/
def P330581472362205102.Spec : Prop :=
  ∀ n, P330581472362205102.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P15508350731534091952

`A367286(A074306(n+1))`
-/

namespace A065171.P15508350731534091952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367286 (A074306 (n + 1)).toNat

end

end A065171.P15508350731534091952

namespace A065171

/-- `A367286(A074306(n+1))` -/
def P15508350731534091952.Spec : Prop :=
  ∀ n, P15508350731534091952.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P12980174675130621117

`A265667(A342131(n)+1)`
-/

namespace A065171.P12980174675130621117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A342131 n + 1).toNat

end

end A065171.P12980174675130621117

namespace A065171

/-- `A265667(A342131(n)+1)` -/
def P12980174675130621117.Spec : Prop :=
  ∀ n, P12980174675130621117.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P15322005096733390823

`A006369(A006368(n+1)-1)+1`
-/

namespace A065171.P15322005096733390823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006368 (n + 1) - 1).toNat + 1

end

end A065171.P15322005096733390823

namespace A065171

/-- `A006369(A006368(n+1)-1)+1` -/
def P15322005096733390823.Spec : Prop :=
  ∀ n, P15322005096733390823.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P9998324364019494409

`A000034(n)*A029578(A222259(n+2))`
-/

namespace A065171.P9998324364019494409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A029578 (A222259 (n + 2)).toNat

end

end A065171.P9998324364019494409

namespace A065171

/-- `A000034(n)*A029578(A222259(n+2))` -/
def P9998324364019494409.Spec : Prop :=
  ∀ n, P9998324364019494409.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P18050358973973925901

`A065260(A065172(A065260(n+1)))`
-/

namespace A065171.P18050358973973925901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (A065172 (A065260 (n + 1)).toNat).toNat

end

end A065171.P18050358973973925901

namespace A065171

/-- `A065260(A065172(A065260(n+1)))` -/
def P18050358973973925901.Spec : Prop :=
  ∀ n, P18050358973973925901.a n = A065171 (n + 1)

end A065171

/-! ## A065171.P13631843205489585915

`A014681(A145979(n))-1`
-/

namespace A065171.P13631843205489585915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A145979 n).toNat - 1

end

end A065171.P13631843205489585915

namespace A065171

/-- `A014681(A145979(n))-1` -/
def P13631843205489585915.Spec : Prop :=
  ∀ n, P13631843205489585915.a n = A065171 (n + 1)

end A065171

/-!
# A065172: Inverse permutation to A065171.

The programs for A065172, the canonical program `A065172.P6538214630877340704` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065172 has offset 1).

The definition of A065172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065172.P6722723546287399780

`ogf((1+3x+5x^2+2x^3+7x^4+x^5+3x^6)/(1-2x^4+x^8))`
-/

namespace A065172.P6722723546287399780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 2, 7, 1, 3] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A065172.P6722723546287399780

namespace A065172

/-- `ogf((1+3x+5x^2+2x^3+7x^4+x^5+3x^6)/(1-2x^4+x^8))` -/
def P6722723546287399780.Spec : Prop :=
  ∀ n, P6722723546287399780.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P6538214630877340704

`(11*(n+1)-2-(5*(n+1)-6)*cos((n+1)*π)-2*(n+3)*cos((n+1)*π/2))/8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065172

/-- `(11*(n+1)-2-(5*(n+1)-6)*cos((n+1)*π)-2*(n+3)*cos((n+1)*π/2))/8` -/
def P6538214630877340704.Spec : Prop :=
  ∀ n, P6538214630877340704.a n = (A065172 (n + 1) : ℝ)

end A065172

/-! ## A065172.P1115431072749907660

`(gcd(n+3, n-1)+2*n)/gcd(n+1, n-3)`
-/

namespace A065172.P1115431072749907660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) + 2 * n : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3) : ℚ)

end

end A065172.P1115431072749907660

namespace A065172

/-- `(gcd(n+3, n-1)+2*n)/gcd(n+1, n-3)` -/
def P1115431072749907660.Spec : Prop :=
  ∀ n, P1115431072749907660.a n = (A065172 (n + 1) : ℚ)

end A065172

/-! ## A065172.P3713161606307680043

`lcm(4, n+1)-A065259(n+1)`
-/

namespace A065172.P3713161606307680043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℤ) - A065259 (n + 1)

end

end A065172.P3713161606307680043

namespace A065172

/-- `lcm(4, n+1)-A065259(n+1)` -/
def P3713161606307680043.Spec : Prop :=
  ∀ n, P3713161606307680043.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P3497991629301630132

`A065260(n*a(floor(acot(n))))+1` with `a(0)=1`
-/

namespace A065172.P3497991629301630132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065260 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat + 1

end

end A065172.P3497991629301630132

namespace A065172

/-- `A065260(n*a(floor(acot(n))))+1` -/
def P3497991629301630132.Spec : Prop :=
  ∀ n, P3497991629301630132.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P8930187952295854840

`A059031(n+1)-((-1)^n+1)²`
-/

namespace A065172.P8930187952295854840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059031 (n + 1) - ((-1) ^ n + 1) ^ 2

end

end A065172.P8930187952295854840

namespace A065172

/-- `A059031(n+1)-((-1)^n+1)²` -/
def P8930187952295854840.Spec : Prop :=
  ∀ n, P8930187952295854840.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P13895366789191717529

`A092486(A065259(n+1)-1)`
-/

namespace A065172.P13895366789191717529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A065259 (n + 1) - 1).toNat

end

end A065172.P13895366789191717529

namespace A065172

/-- `A092486(A065259(n+1)-1)` -/
def P13895366789191717529.Spec : Prop :=
  ∀ n, P13895366789191717529.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P16980197800724810110

`A109045(n+1)-A065259(n+1)`
-/

namespace A065172.P16980197800724810110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (n + 1) - A065259 (n + 1)

end

end A065172.P16980197800724810110

namespace A065172

/-- `A109045(n+1)-A065259(n+1)` -/
def P16980197800724810110.Spec : Prop :=
  ∀ n, P16980197800724810110.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P8045770988843982788

`A092486(A065171(n+2)-2)`
-/

namespace A065172.P8045770988843982788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A065171 (n + 2) - 2).toNat

end

end A065172.P8045770988843982788

namespace A065172

/-- `A092486(A065171(n+2)-2)` -/
def P8045770988843982788.Spec : Prop :=
  ∀ n, P8045770988843982788.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P9241605772939720548

`A006369(A006368(n)+1)`
-/

namespace A065172.P9241605772939720548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006368 n + 1).toNat

end

end A065172.P9241605772939720548

namespace A065172

/-- `A006369(A006368(n)+1)` -/
def P9241605772939720548.Spec : Prop :=
  ∀ n, P9241605772939720548.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P17118077362341018910

`A265667(A074306(n))+1`
-/

namespace A065172.P17118077362341018910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A074306 n).toNat + 1

end

end A065172.P17118077362341018910

namespace A065172

/-- `A265667(A074306(n))+1` -/
def P17118077362341018910.Spec : Prop :=
  ∀ n, P17118077362341018910.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P9183197326422100220

`A006369(Δ[A274221(n)]+1)`
-/

namespace A065172.P9183197326422100220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (f1 (n + 1) - f1 n + 1).toNat

end

end A065172.P9183197326422100220

namespace A065172

/-- `A006369(Δ[A274221(n)]+1)` -/
def P9183197326422100220.Spec : Prop :=
  ∀ n, P9183197326422100220.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P4823871909614840156

`A006369(A006369(n)+1-A168223(n))`
-/

namespace A065172.P4823871909614840156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006369 n + (1 - A168223 n)).toNat

end

end A065172.P4823871909614840156

namespace A065172

/-- `A006369(A006369(n)+1-A168223(n))` -/
def P4823871909614840156.Spec : Prop :=
  ∀ n, P4823871909614840156.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P13865113880587036079

`A006369(1-(A168223(n)-A006369(n)))`
-/

namespace A065172.P13865113880587036079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (1 - (A168223 n - A006369 n)).toNat

end

end A065172.P13865113880587036079

namespace A065172

/-- `A006369(1-(A168223(n)-A006369(n)))` -/
def P13865113880587036079.Spec : Prop :=
  ∀ n, P13865113880587036079.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P2508606792658125868

`A074305(A342131(n+1))`
-/

namespace A065172.P2508606792658125868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 (A342131 (n + 1)).toNat

end

end A065172.P2508606792658125868

namespace A065172

/-- `A074305(A342131(n+1))` -/
def P2508606792658125868.Spec : Prop :=
  ∀ n, P2508606792658125868.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P15723427075319838022

`A265667(A006368(n)+2)-1`
-/

namespace A065172.P15723427075319838022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A006368 n + 2).toNat - 1

end

end A065172.P15723427075319838022

namespace A065172

/-- `A265667(A006368(n)+2)-1` -/
def P15723427075319838022.Spec : Prop :=
  ∀ n, P15723427075319838022.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P4370328569298223257

`A159966(A065259(n+1))`
-/

namespace A065172.P4370328569298223257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A065259 (n + 1)).toNat

end

end A065172.P4370328569298223257

namespace A065172

/-- `A159966(A065259(n+1))` -/
def P4370328569298223257.Spec : Prop :=
  ∀ n, P4370328569298223257.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P10658708760391913602

`A159966(A065171(n+2)-1)`
-/

namespace A065172.P10658708760391913602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A065171 (n + 2) - 1).toNat

end

end A065172.P10658708760391913602

namespace A065172

/-- `A159966(A065171(n+2)-1)` -/
def P10658708760391913602.Spec : Prop :=
  ∀ n, P10658708760391913602.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P8349716943818536197

`A060819(A109008(n+3)+2*n)`
-/

namespace A065172.P8349716943818536197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A109008 (n + 3) + (2 * n : ℤ)).toNat

end

end A065172.P8349716943818536197

namespace A065172

/-- `A060819(A109008(n+3)+2*n)` -/
def P8349716943818536197.Spec : Prop :=
  ∀ n, P8349716943818536197.a n = A065172 (n + 1)

end A065172

/-! ## A065172.P15976733844525458802

`A026741(A026741(A109008(n+3)+2*n))`
-/

namespace A065172.P15976733844525458802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A109008 (n + 3) + (2 * n : ℤ)).toNat).toNat

end

end A065172.P15976733844525458802

namespace A065172

/-- `A026741(A026741(A109008(n+3)+2*n))` -/
def P15976733844525458802.Spec : Prop :=
  ∀ n, P15976733844525458802.a n = A065172 (n + 1)

end A065172

/-!
# A065173: Site swap sequence that rises infinitely after t=0. The associated delta sequence p(t)-t for the permutation of Z: A065171.

The programs for A065173, the canonical program `A065173.P15900657868582209570` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065173 has offset 1).

The definition of A065173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065173.P3002213625264803674

`ogf((x+2x^2+2x^3+x^4+x^5+2x^6)/(1-2x^4+x^8))`
-/

namespace A065173.P3002213625264803674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 1, 1, 2] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A065173.P3002213625264803674

namespace A065173

/-- `ogf((x+2x^2+2x^3+x^4+x^5+2x^6)/(1-2x^4+x^8))` -/
def P3002213625264803674.Spec : Prop :=
  ∀ n, P3002213625264803674.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P15900657868582209570

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=1, a(5)=3, a(6)=6, a(7)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065173

/-- `2*a(n-4)-a(n-8)` -/
def P15900657868582209570.Spec : Prop :=
  ∀ n, P15900657868582209570.a n = A065173 (n + 1)

theorem P15900657868582209570.correct : P15900657868582209570.Spec := by
  intro n
  simp only [A065173, Nat.add_sub_cancel]

end A065173

/-! ## A065173.P17909584627930750768

`A188134(n)%A047356(n+1)`
-/

namespace A065173.P17909584627930750768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188134 n) (A047356 (n + 1))

end

end A065173.P17909584627930750768

namespace A065173

/-- `A188134(n)%A047356(n+1)` -/
def P17909584627930750768.Spec : Prop :=
  ∀ n, P17909584627930750768.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P5569588523414026114

`A007494(n)-A195140(-(n/or(n, -2)))`
-/

namespace A065173.P5569588523414026114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - A195140 (SequenceMachineLib.roundAway (-((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)))).toNat

end

end A065173.P5569588523414026114

namespace A065173

/-- `A007494(n)-A195140(-(n/or(n, -2)))` -/
def P5569588523414026114.Spec : Prop :=
  ∀ n, P5569588523414026114.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P11279112852141819205

`A007494(n)-A195140((and(1, n)+1)*n/2)`
-/

namespace A065173.P11279112852141819205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - A195140 (SequenceMachineLib.roundAway ((Nat.land 1 n + 1 : ℚ) * ((n : ℚ) / 2))).toNat

end

end A065173.P11279112852141819205

namespace A065173

/-- `A007494(n)-A195140((and(1, n)+1)*n/2)` -/
def P11279112852141819205.Spec : Prop :=
  ∀ n, P11279112852141819205.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P5582722677627699680

`A007494(n)-A195140(∑[3*n]%comp[3*n])`
-/

namespace A065173.P5582722677627699680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - A195140 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A065173.P5582722677627699680

namespace A065173

/-- `A007494(n)-A195140(∑[3*n]%comp[3*n])` -/
def P5582722677627699680.Spec : Prop :=
  ∀ n, P5582722677627699680.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P12510897599554107546

`A214392(n)-A004526(A109043(n)-n)`
-/

namespace A065173.P12510897599554107546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 n - A004526 (A109043 n - (n : ℤ)).toNat

end

end A065173.P12510897599554107546

namespace A065173

/-- `A214392(n)-A004526(A109043(n)-n)` -/
def P12510897599554107546.Spec : Prop :=
  ∀ n, P12510897599554107546.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P13028153288231650521

`A064680(A065423(n+2))`
-/

namespace A065173.P13028153288231650521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A065423 (n + 2)).toNat

end

end A065173.P13028153288231650521

namespace A065173

/-- `A064680(A065423(n+2))` -/
def P13028153288231650521.Spec : Prop :=
  ∀ n, P13028153288231650521.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P3877784654434067251

`A064680(A026741(n+2)-1)`
-/

namespace A065173.P3877784654434067251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A026741 (n + 2) - 1).toNat

end

end A065173.P3877784654434067251

namespace A065173

/-- `A064680(A026741(n+2)-1)` -/
def P3877784654434067251.Spec : Prop :=
  ∀ n, P3877784654434067251.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P16769801798922394810

`A064680(1-A027656(n)+n)`
-/

namespace A065173.P16769801798922394810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (1 - A027656 n + (n : ℤ)).toNat

end

end A065173.P16769801798922394810

namespace A065173

/-- `A064680(1-A027656(n)+n)` -/
def P16769801798922394810.Spec : Prop :=
  ∀ n, P16769801798922394810.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P14937179668411679773

`A064680(1-(A027656(n)-n))`
-/

namespace A065173.P14937179668411679773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (1 - (A027656 n - (n : ℤ))).toNat

end

end A065173.P14937179668411679773

namespace A065173

/-- `A064680(1-(A027656(n)-n))` -/
def P14937179668411679773.Spec : Prop :=
  ∀ n, P14937179668411679773.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P9850980445970783171

`A064680(A000096(n)%(n+2))`
-/

namespace A065173.P9850980445970783171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Int.tmod (A000096 n) (n + 2 : ℤ)).toNat

end

end A065173.P9850980445970783171

namespace A065173

/-- `A064680(A000096(n)%(n+2))` -/
def P9850980445970783171.Spec : Prop :=
  ∀ n, P9850980445970783171.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P8052365667078941098

`A064680(∑[A130472(n+1)+1])`
-/

namespace A065173.P8052365667078941098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065173.P8052365667078941098

namespace A065173

/-- `A064680(∑[A130472(n+1)+1])` -/
def P8052365667078941098.Spec : Prop :=
  ∀ n, P8052365667078941098.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P7067832418747629954

`A064680((n+1)%(A064680(n)+1))`
-/

namespace A065173.P7067832418747629954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (Int.tmod (n + 1 : ℤ) (A064680 n + 1)).toNat

end

end A065173.P7067832418747629954

namespace A065173

/-- `A064680((n+1)%(A064680(n)+1))` -/
def P7067832418747629954.Spec : Prop :=
  ∀ n, P7067832418747629954.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P4815289082075406524

`A064680(A029578(A010673(n)+n))`
-/

namespace A065173.P4815289082075406524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A029578 (A010673 n + (n : ℤ)).toNat).toNat

end

end A065173.P4815289082075406524

namespace A065173

/-- `A064680(A029578(A010673(n)+n))` -/
def P4815289082075406524.Spec : Prop :=
  ∀ n, P4815289082075406524.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P8298003199279410989

`A142150(n+1)+A064680(A142150(n))`
-/

namespace A065173.P8298003199279410989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A064680 (A142150 n).toNat

end

end A065173.P8298003199279410989

namespace A065173

/-- `A142150(n+1)+A064680(A142150(n))` -/
def P8298003199279410989.Spec : Prop :=
  ∀ n, P8298003199279410989.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P9833283723718104303

`A064680(A064680(n)+2-A133265(n))`
-/

namespace A065173.P9833283723718104303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A064680 n + (2 - A133265 n)).toNat

end

end A065173.P9833283723718104303

namespace A065173

/-- `A064680(A064680(n)+2-A133265(n))` -/
def P9833283723718104303.Spec : Prop :=
  ∀ n, P9833283723718104303.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P7534985079734704814

`A064680(2-(A133265(n)-A064680(n)))`
-/

namespace A065173.P7534985079734704814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (2 - (A133265 n - A064680 n)).toNat

end

end A065173.P7534985079734704814

namespace A065173

/-- `A064680(2-(A133265(n)-A064680(n)))` -/
def P7534985079734704814.Spec : Prop :=
  ∀ n, P7534985079734704814.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P5541859608623481646

`A064680(2*A064680(n)-A001281(n))`
-/

namespace A065173.P5541859608623481646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (2 * A064680 n - A001281 n).toNat

end

end A065173.P5541859608623481646

namespace A065173

/-- `A064680(2*A064680(n)-A001281(n))` -/
def P5541859608623481646.Spec : Prop :=
  ∀ n, P5541859608623481646.a n = A065173 (n + 1)

end A065173

/-! ## A065173.P17392078646711910343

`A064680(A008619(n)+1-A174007(n+1))`
-/

namespace A065173.P17392078646711910343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A008619 n + (1 - A174007 (n + 1))).toNat

end

end A065173.P17392078646711910343

namespace A065173

/-- `A064680(A008619(n)+1-A174007(n+1))` -/
def P17392078646711910343.Spec : Prop :=
  ∀ n, P17392078646711910343.a n = A065173 (n + 1)

end A065173

/-!
# A065174: Permutation of Z, folded to N, corresponding to the site swap pattern ...242824202428242... (A065176).

The programs for A065174, there is no canonical definition to state claims against.
-/

/-! ## A065174.P16819805311999347691

`xor(A057427(n), A065175(A065190(n+1)))`
-/

namespace A065174.P16819805311999347691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A065175 (A065190 (n + 1)).toNat)

end

end A065174.P16819805311999347691

/-! ## A065174.P9306890190140457107

`xor(-A057428(n), A065175(A065190(n+1)))`
-/

namespace A065174.P9306890190140457107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A057428 n) (A065175 (A065190 (n + 1)).toNat)

end

end A065174.P9306890190140457107

/-!
# A065175: Inverse permutation to A065174.

The programs for A065175, there is no canonical definition to state claims against.
-/

/-! ## A065175.P16786780827892093797

`A065190(A065174(A065190(n+1)))`
-/

namespace A065175.P16786780827892093797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A065174 (A065190 (n + 1)).toNat).toNat

end

end A065175.P16786780827892093797

/-!
# A065176: Site swap sequence associated with the permutation A065174 of Z.

The programs for A065176, the canonical program `A065176.P5511106239495278485` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065176 has offset 1).

The definition of A065176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065176.P5511106239495278485

`and(n+1, -n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065176

/-- `and(n+1, -n)` -/
def P5511106239495278485.Spec : Prop :=
  ∀ n, P5511106239495278485.a n = A065176 (n + 1)

theorem P5511106239495278485.correct : P5511106239495278485.Spec := by
  intro n
  simp only [A065176, Nat.add_sub_cancel]

end A065176

/-! ## A065176.P776636957047073167

`abs(xor(∑[-n], ∑[n]))`
-/

namespace A065176.P776636957047073167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A065176.P776636957047073167

namespace A065176

/-- `abs(xor(∑[-n], ∑[n]))` -/
def P776636957047073167.Spec : Prop :=
  ∀ n, P776636957047073167.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P8111951608831425947

`-xor(∑[-n], ∑[n])`
-/

namespace A065176.P8111951608831425947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A065176.P8111951608831425947

namespace A065176

/-- `-xor(∑[-n], ∑[n])` -/
def P8111951608831425947.Spec : Prop :=
  ∀ n, P8111951608831425947.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P5224208628321438355

`1-or(n+1, -n)`
-/

namespace A065176.P5224208628321438355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor (n + 1 : ℤ) (-(n : ℤ))

end

end A065176.P5224208628321438355

namespace A065176

/-- `1-or(n+1, -n)` -/
def P5224208628321438355.Spec : Prop :=
  ∀ n, P5224208628321438355.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P13200009841499676995

`2*and(∑[-n], ∑[n])`
-/

namespace A065176.P13200009841499676995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A065176.P13200009841499676995

namespace A065176

/-- `2*and(∑[-n], ∑[n])` -/
def P13200009841499676995.Spec : Prop :=
  ∀ n, P13200009841499676995.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P231481048830222306

`∑[1-Δ[and(n, n-2)]]`
-/

namespace A065176.P231481048830222306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065176.P231481048830222306

namespace A065176

/-- `∑[1-Δ[and(n, n-2)]]` -/
def P231481048830222306.Spec : Prop :=
  ∀ n, P231481048830222306.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P4426634223268785559

`(1-xor(n+1, -n))/2`
-/

namespace A065176.P4426634223268785559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - Int.xor (n + 1 : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A065176.P4426634223268785559

namespace A065176

/-- `(1-xor(n+1, -n))/2` -/
def P4426634223268785559.Spec : Prop :=
  ∀ n, P4426634223268785559.a n = (A065176 (n + 1) : ℚ)

end A065176

/-! ## A065176.P8262350418589868370

`-floor(xor(n+1, -n)/2)`
-/

namespace A065176.P8262350418589868370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(Int.xor (n + 1 : ℤ) (-(n : ℤ)) : ℚ) / 2⌋

end

end A065176.P8262350418589868370

namespace A065176

/-- `-floor(xor(n+1, -n)/2)` -/
def P8262350418589868370.Spec : Prop :=
  ∀ n, P8262350418589868370.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P2107349568555633699

`ceil(-(xor(n+1, -n)/2))`
-/

namespace A065176.P2107349568555633699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((Int.xor (n + 1 : ℤ) (-(n : ℤ)) : ℚ) / 2)⌉

end

end A065176.P2107349568555633699

namespace A065176

/-- `ceil(-(xor(n+1, -n)/2))` -/
def P2107349568555633699.Spec : Prop :=
  ∀ n, P2107349568555633699.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P9842164691054149164

`xor(n+1, n-1)/2+1`
-/

namespace A065176.P9842164691054149164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) / 2 + 1

end

end A065176.P9842164691054149164

namespace A065176

/-- `xor(n+1, n-1)/2+1` -/
def P9842164691054149164.Spec : Prop :=
  ∀ n, P9842164691054149164.a n = (A065176 (n + 1) : ℚ)

end A065176

/-! ## A065176.P1875676488579531865

`1-and(n+1, n-1)+n`
-/

namespace A065176.P1875676488579531865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n + 1 : ℤ) ((n : ℤ) - 1) + (n : ℤ)

end

end A065176.P1875676488579531865

namespace A065176

/-- `1-and(n+1, n-1)+n` -/
def P1875676488579531865.Spec : Prop :=
  ∀ n, P1875676488579531865.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P8036463366878793015

`or(n+1, n-1)+1-n`
-/

namespace A065176.P8036463366878793015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ((n : ℤ) - 1) + (1 - (n : ℤ))

end

end A065176.P8036463366878793015

namespace A065176

/-- `or(n+1, n-1)+1-n` -/
def P8036463366878793015.Spec : Prop :=
  ∀ n, P8036463366878793015.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P11628469045212604141

`abs(and(2*n-(n-1), -n))`
-/

namespace A065176.P11628469045212604141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land ((2 * n : ℤ) - ((n : ℤ) - 1)) (-(n : ℤ))|

end

end A065176.P11628469045212604141

namespace A065176

/-- `abs(and(2*n-(n-1), -n))` -/
def P11628469045212604141.Spec : Prop :=
  ∀ n, P11628469045212604141.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P7138876184840519352

`-or(n²+n, ∑[-(2*n)])`
-/

namespace A065176.P7138876184840519352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n ^ 2 + n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065176.P7138876184840519352

namespace A065176

/-- `-or(n²+n, ∑[-(2*n)])` -/
def P7138876184840519352.Spec : Prop :=
  ∀ n, P7138876184840519352.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P2130801651408194507

`lcm(2, and(2*n-(n-1), -n))`
-/

namespace A065176.P2130801651408194507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land ((2 * n : ℤ) - ((n : ℤ) - 1)) (-(n : ℤ)))

end

end A065176.P2130801651408194507

namespace A065176

/-- `lcm(2, and(2*n-(n-1), -n))` -/
def P2130801651408194507.Spec : Prop :=
  ∀ n, (P2130801651408194507.a n : ℤ) = A065176 (n + 1)

end A065176

/-! ## A065176.P18090822480366883807

`1-(and(2*n-(n-1), n-1)-n)`
-/

namespace A065176.P18090822480366883807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.land ((2 * n : ℤ) - ((n : ℤ) - 1)) ((n : ℤ) - 1) - (n : ℤ))

end

end A065176.P18090822480366883807

namespace A065176

/-- `1-(and(2*n-(n-1), n-1)-n)` -/
def P18090822480366883807.Spec : Prop :=
  ∀ n, P18090822480366883807.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P16122704742738436237

`xor(n-1, or(2*n-(n-1), n-1))`
-/

namespace A065176.P16122704742738436237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (Int.lor ((2 * n : ℤ) - ((n : ℤ) - 1)) ((n : ℤ) - 1))

end

end A065176.P16122704742738436237

namespace A065176

/-- `xor(n-1, or(2*n-(n-1), n-1))` -/
def P16122704742738436237.Spec : Prop :=
  ∀ n, P16122704742738436237.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P5160339501507236020

`abs(or(2*n-(n-1), n-1)-(n-1))`
-/

namespace A065176.P5160339501507236020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor ((2 * n : ℤ) - ((n : ℤ) - 1)) ((n : ℤ) - 1) - ((n : ℤ) - 1)|

end

end A065176.P5160339501507236020

namespace A065176

/-- `abs(or(2*n-(n-1), n-1)-(n-1))` -/
def P5160339501507236020.Spec : Prop :=
  ∀ n, P5160339501507236020.a n = A065176 (n + 1)

end A065176

/-! ## A065176.P15478982063928286970

`xor(n+1, and(n+1, (2*n+1)%(n+2)))`
-/

namespace A065176.P15478982063928286970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land (n + 1) ((2 * n + 1) % (n + 2)))

end

end A065176.P15478982063928286970

namespace A065176

/-- `xor(n+1, and(n+1, (2*n+1)%(n+2)))` -/
def P15478982063928286970.Spec : Prop :=
  ∀ n, (P15478982063928286970.a n : ℤ) = A065176 (n + 1)

end A065176

/-! ## A065176.P5355835161860897345

`xor(n, A322018(A014681(n)))`
-/

namespace A065176.P5355835161860897345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A322018 (A014681 n).toNat)

end

end A065176.P5355835161860897345

namespace A065176

/-- `xor(n, A322018(A014681(n)))` -/
def P5355835161860897345.Spec : Prop :=
  ∀ n, P5355835161860897345.a n = A065176 (n + 1)

end A065176

/-!
# A065177: Table M(n,b) (columns: n >= 1, rows: b >= 0) gives the number of site swap juggling patterns with exact period n, using exactly b balls, where cyclic shifts are not counted as distinct.

The programs for A065177, there is no canonical definition to state claims against.
-/

/-! ## A065177.P18130272626514708810

`A383042(A038722(n+1))`
-/

namespace A065177.P18130272626514708810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383042 (A038722 (n + 1)).toNat

end

end A065177.P18130272626514708810

/-! ## A065177.P15652812373068062012

`A064044(n)-A321936(A288972(n))`
-/

namespace A065177.P15652812373068062012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 n - A321936 (A288972 n).toNat

end

end A065177.P15652812373068062012

/-! ## A065177.P4182902371874564057

`A064515(2^A058716(n))+A064515(A069777(n))`
-/

namespace A065177.P4182902371874564057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A058716 n : ℤ))).toNat + A064515 (A069777 n).toNat

end

end A065177.P4182902371874564057

/-! ## A065177.P5321771440085278836

`A325678(A155161(n)²)`
-/

namespace A065177.P5321771440085278836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A155161 n ^ 2).toNat

end

end A065177.P5321771440085278836

/-! ## A065177.P1538587058026644603

`A172263(A342500(n+1))`
-/

namespace A065177.P1538587058026644603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A342500 (n + 1)).toNat

end

end A065177.P1538587058026644603

/-!
# A065178: Number of site swap patterns with 2 balls and exact period n.

The programs for A065178, the canonical program `A065178.P1159598168978168199` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065178 has offset 1).

The definition of A065178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065178.P11830634958847051170

`A027376(n+1)-A001037(n+1)`
-/

namespace A065178.P11830634958847051170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - A001037 (n + 1)

end

end A065178.P11830634958847051170

namespace A065178

/-- `A027376(n+1)-A001037(n+1)` -/
def P11830634958847051170.Spec : Prop :=
  ∀ n, P11830634958847051170.a n = A065178 (n + 1)

end A065178

/-! ## A065178.P1159598168978168199

`A185171(n+1)-A059966(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065178

/-- `A185171(n+1)-A059966(n+1)` -/
def P1159598168978168199.Spec : Prop :=
  ∀ n, P1159598168978168199.a n = A065178 (n + 1)

theorem P1159598168978168199.correct : P1159598168978168199.Spec := by
  intro n
  simp only [A065178, Nat.add_sub_cancel]

end A065178

/-! ## A065178.P263696191178022621

`A027376(n+1)+A066656(n+1)-A000031(n+1)`
-/

namespace A065178.P263696191178022621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) + (A066656 (n + 1) - A000031 (n + 1))

end

end A065178.P263696191178022621

namespace A065178

/-- `A027376(n+1)+A066656(n+1)-A000031(n+1)` -/
def P263696191178022621.Spec : Prop :=
  ∀ n, P263696191178022621.a n = A065178 (n + 1)

end A065178

/-! ## A065178.P2491509716956685108

`A001867(n+1)-(A278663(n+1)+A001037(n+1))`
-/

namespace A065178.P2491509716956685108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 (n + 1) - (A278663 (n + 1) + A001037 (n + 1))

end

end A065178.P2491509716956685108

namespace A065178

/-- `A001867(n+1)-(A278663(n+1)+A001037(n+1))` -/
def P2491509716956685108.Spec : Prop :=
  ∀ n, P2491509716956685108.a n = A065178 (n + 1)

end A065178

/-! ## A065178.P1281968451003623007

`(A054718(n+1)-A027375(n+1))/(n+1)`
-/

namespace A065178.P1281968451003623007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 (n + 1) - A027375 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A065178.P1281968451003623007

namespace A065178

/-- `(A054718(n+1)-A027375(n+1))/(n+1)` -/
def P1281968451003623007.Spec : Prop :=
  ∀ n, P1281968451003623007.a n = (A065178 (n + 1) : ℚ)

end A065178

/-! ## A065178.P6736093708866266449

`A185172(n+1)-(A065179(n+1)+A059966(n+1))`
-/

namespace A065178.P6736093708866266449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185172 (n + 1) - (A065179 (n + 1) + A059966 (n + 1))

end

end A065178.P6736093708866266449

namespace A065178

/-- `A185172(n+1)-(A065179(n+1)+A059966(n+1))` -/
def P6736093708866266449.Spec : Prop :=
  ∀ n, P6736093708866266449.a n = A065178 (n + 1)

end A065178

/-! ## A065178.P15567956027053979537

`A185171(n+1)+A295521(n+1)-A065179(n+1)`
-/

namespace A065178.P15567956027053979537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185171 (n + 1) + (A295521 (n + 1) - A065179 (n + 1))

end

end A065178.P15567956027053979537

namespace A065178

/-- `A185171(n+1)+A295521(n+1)-A065179(n+1)` -/
def P15567956027053979537.Spec : Prop :=
  ∀ n, P15567956027053979537.a n = A065178 (n + 1)

theorem P15567956027053979537.correct : P15567956027053979537.Spec := by
  intro n
  simp only [A065178, Nat.add_sub_cancel, A065178.P15567956027053979537.a, A065178.P1159598168978168199.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A065179, A065179.P12451101211543841582.a, A185171, A185171.P3311004766963218986.f1, A185171.P3311004766963218986.a, A295521, A295521.P13746151947795808381.f1, A295521.P13746151947795808381.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065178

/-! ## A065178.P13344940849248663509

`A065177(A340266(n+1))`
-/

namespace A065178.P13344940849248663509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A340266 (n + 1)).toNat

end

end A065178.P13344940849248663509

namespace A065178

/-- `A065177(A340266(n+1))` -/
def P13344940849248663509.Spec : Prop :=
  ∀ n, P13344940849248663509.a n = A065178 (n + 1)

end A065178

/-! ## A065178.P11048380971437615529

`A065177(A167614(n+1)-1)`
-/

namespace A065178.P11048380971437615529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A167614 (n + 1) - 1).toNat

end

end A065178.P11048380971437615529

namespace A065178

/-- `A065177(A167614(n+1)-1)` -/
def P11048380971437615529.Spec : Prop :=
  ∀ n, P11048380971437615529.a n = A065178 (n + 1)

end A065178

/-!
# A065179: Number of site swap patterns with 3 balls and exact period n.

The programs for A065179, the canonical program `A065179.P12451101211543841582` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065179 has offset 1).

The definition of A065179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065179.P12451101211543841582

`A295521(n+1)+A059966(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065179

/-- `A295521(n+1)+A059966(n+1)` -/
def P12451101211543841582.Spec : Prop :=
  ∀ n, P12451101211543841582.a n = A065179 (n + 1)

theorem P12451101211543841582.correct : P12451101211543841582.Spec := by
  intro n
  simp only [A065179, Nat.add_sub_cancel]

end A065179

/-! ## A065179.P380847412431058334

`A027377(n+1)-A027376(n+1)`
-/

namespace A065179.P380847412431058334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - A027376 (n + 1)

end

end A065179.P380847412431058334

namespace A065179

/-- `A027377(n+1)-A027376(n+1)` -/
def P380847412431058334.Spec : Prop :=
  ∀ n, P380847412431058334.a n = A065179 (n + 1)

end A065179

/-! ## A065179.P9818086804549178145

`A185172(n+1)-A185171(n+1)`
-/

namespace A065179.P9818086804549178145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185172 (n + 1) - A185171 (n + 1)

end

end A065179.P9818086804549178145

namespace A065179

/-- `A185172(n+1)-A185171(n+1)` -/
def P9818086804549178145.Spec : Prop :=
  ∀ n, P9818086804549178145.a n = A065179 (n + 1)

end A065179

/-! ## A065179.P3015301802677987151

`A185172(n+1)-(A065178(n+1)+A059966(n+1))`
-/

namespace A065179.P3015301802677987151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185172 (n + 1) - (A065178 (n + 1) + A059966 (n + 1))

end

end A065179.P3015301802677987151

namespace A065179

/-- `A185172(n+1)-(A065178(n+1)+A059966(n+1))` -/
def P3015301802677987151.Spec : Prop :=
  ∀ n, P3015301802677987151.a n = A065179 (n + 1)

end A065179

/-! ## A065179.P12902290721463405172

`A185171(n+1)+A295521(n+1)-A065178(n+1)`
-/

namespace A065179.P12902290721463405172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185171 (n + 1) + (A295521 (n + 1) - A065178 (n + 1))

end

end A065179.P12902290721463405172

namespace A065179

/-- `A185171(n+1)+A295521(n+1)-A065178(n+1)` -/
def P12902290721463405172.Spec : Prop :=
  ∀ n, P12902290721463405172.a n = A065179 (n + 1)

theorem P12902290721463405172.correct : P12902290721463405172.Spec := by
  intro n
  simp only [A065179, Nat.add_sub_cancel, A065179.P12902290721463405172.a, A065179.P12451101211543841582.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A065178, A065178.P1159598168978168199.a, A185171, A185171.P3311004766963218986.f1, A185171.P3311004766963218986.a, A295521, A295521.P13746151947795808381.f1, A295521.P13746151947795808381.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A065179

/-! ## A065179.P12367854999049522335

`1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*(4^#-3^#)]`
-/

namespace A065179.P12367854999049522335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * ((4 ^ d : ℤ) - (3 ^ d : ℤ)) : ℤ) : ℚ)

end

end A065179.P12367854999049522335

namespace A065179

/-- `1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*(4^#-3^#)]` -/
def P12367854999049522335.Spec : Prop :=
  ∀ n, P12367854999049522335.a n = (A065179 (n + 1) : ℚ)

end A065179

/-! ## A065179.P14746374094273520696

`A065177(A167614(n+2))`
-/

namespace A065179.P14746374094273520696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A167614 (n + 2)).toNat

end

end A065179.P14746374094273520696

namespace A065179

/-- `A065177(A167614(n+2))` -/
def P14746374094273520696.Spec : Prop :=
  ∀ n, P14746374094273520696.a n = A065179 (n + 1)

end A065179

/-! ## A065179.P13525312723183882988

`A065177(A340266(n+2)+1)`
-/

namespace A065179.P13525312723183882988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A340266 (n + 2) + 1).toNat

end

end A065179.P13525312723183882988

namespace A065179

/-- `A065177(A340266(n+2)+1)` -/
def P13525312723183882988.Spec : Prop :=
  ∀ n, P13525312723183882988.a n = A065179 (n + 1)

end A065179

/-!
# A065180: Number of site swap patterns with 4 balls and exact period n.

The programs for A065180, there is no canonical definition to state claims against.
-/

/-! ## A065180.P12870728349071767318

`A001692(n+1)-A027377(n+1)`
-/

namespace A065180.P12870728349071767318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 (n + 1) - A027377 (n + 1)

end

end A065180.P12870728349071767318

/-! ## A065180.P6670966072518789440

`A065177(A155212(n)+12)`
-/

namespace A065180.P6670966072518789440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A155212 n + 12).toNat

end

end A065180.P6670966072518789440

/-! ## A065180.P6073302983027720025

`A065177(A000096(n+3)+5)`
-/

namespace A065180.P6073302983027720025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A000096 (n + 3) + 5).toNat

end

end A065180.P6073302983027720025

/-! ## A065180.P8250735607687639994

`A065177(A000217(n+4)+4)`
-/

namespace A065180.P8250735607687639994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A000217 (n + 4) + 4).toNat

end

end A065180.P8250735607687639994

/-! ## A065180.P14830637660029631909

`record[A065177(A061579(A052905(n)))]`
-/

namespace A065180.P14830637660029631909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 (A061579 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065180.P14830637660029631909

/-!
# A065181: Permutation of nonnegative integers produced when the finite permutations listed by A055089 are subjected to inverse of Foata's transformation. Inverse of A065182.

The programs for A065181, there is no canonical definition to state claims against.
-/

/-! ## A065181.P17366325927296204283

`A060119(A065183(A060126(n)))`
-/

namespace A065181.P17366325927296204283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A065183 (A060126 n).toNat).toNat

end

end A065181.P17366325927296204283

/-! ## A065181.P17342594275878177034

`A060119(A065183(A060125(A060127(n))))`
-/

namespace A065181.P17342594275878177034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060119 (A065183 (A060125 (A060127 n).toNat).toNat).toNat

end

end A065181.P17342594275878177034

/-! ## A065181.P3459558193571851338

`A056019(A060125(n)%∑[A057542(n)])`
-/

namespace A065181.P3459558193571851338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056019 (Int.tmod (A060125 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065181.P3459558193571851338

/-! ## A065181.P8306507302670823899

`A019425(2^n)*A056019(A060125(n))`
-/

namespace A065181.P8306507302670823899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 ^ n) * A056019 (A060125 n).toNat

end

end A065181.P8306507302670823899

/-! ## A065181.P10342986961641170323

`A056019(A060125(n))%A365292(2*n+3)`
-/

namespace A065181.P10342986961641170323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056019 (A060125 n).toNat) (A365292 (2 * n + 3))

end

end A065181.P10342986961641170323

/-!
# A065182: Permutation of nonnegative integers produced when the finite permutations listed by A055089 are subjected to Foata transform. Inverse of A065181.

The programs for A065182, there is no canonical definition to state claims against.
-/

/-! ## A065182.P17512468564863148728

`A060120(n)-A350139(A001935(n))`
-/

namespace A065182.P17512468564863148728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 n - A350139 (A001935 n).toNat

end

end A065182.P17512468564863148728

/-! ## A065182.P10805506613602631273

`A060120(n)-A184946(A026798(2*(n+2)))`
-/

namespace A065182.P10805506613602631273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060120 n - A184946 (A026798 (2 * (n + 2))).toNat

end

end A065182.P10805506613602631273

/-!
# A065183: Permutation of nonnegative integers produced when the finite permutations listed by A060117 are subjected to the inverse of (variant of) Foata's transformation. Inverse of A065184.

The programs for A065183, there is no canonical definition to state claims against.
-/

/-! ## A065183.P5988108063455497926

`A060126(A065181(A060119(n)))`
-/

namespace A065183.P5988108063455497926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A065181 (A060119 n).toNat).toNat

end

end A065183.P5988108063455497926

/-! ## A065183.P3590437742762512431

`A060126(A065181(A056019(A060120(n))))`
-/

namespace A065183.P3590437742762512431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A065181 (A056019 (A060120 n).toNat).toNat).toNat

end

end A065183.P3590437742762512431

/-! ## A065183.P7512179528656754818

`A060126(A065181(A060120(A060125(n))))`
-/

namespace A065183.P7512179528656754818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A065181 (A060120 (A060125 n).toNat).toNat).toNat

end

end A065183.P7512179528656754818

/-! ## A065183.P12011097193979907568

`A060127(A060127(n)%A255502(n))`
-/

namespace A065183.P12011097193979907568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 (Int.tmod (A060127 n) (A255502 n)).toNat

end

end A065183.P12011097193979907568

/-! ## A065183.P17682074885591164323

`A060127(A060127(n)^A240831(n+2))`
-/

namespace A065183.P17682074885591164323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 (SequenceMachineLib.roundAway ((A060127 n : ℚ) ^ (A240831 (n + 2) : ℤ))).toNat

end

end A065183.P17682074885591164323

/-!
# A065184: Permutation of nonnegative integers produced when the finite permutations listed by A060117 are subjected to the left-right maxima variant of Foata's transformation. Inverse of A065183.

The programs for A065184, there is no canonical definition to state claims against.
-/

/-! ## A065184.P2348648691040136098

`A060126(A065182(A060119(n)))`
-/

namespace A065184.P2348648691040136098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060126 (A065182 (A060119 n).toNat).toNat

end

end A065184.P2348648691040136098

/-!
# A065185: The delta sequence p(i)-i for the "Greedy Queens" permutation A065188. Each queen at file n is situated at rank n+a(n).

The programs for A065185, there is no canonical definition to state claims against.
-/

/-! ## A065185.P486643302533878647

`A065188(n+1)-(n+1)`
-/

namespace A065185.P486643302533878647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1) - (n + 1 : ℤ)

end

end A065185.P486643302533878647

/-! ## A065185.P13147421149846221881

`A275895(n)-n`
-/

namespace A065185.P13147421149846221881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n - (n : ℤ)

end

end A065185.P13147421149846221881

/-! ## A065185.P17531771286401262803

`A001478(n+1)+A065188(n+1)`
-/

namespace A065185.P17531771286401262803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A065188 (n + 1)

end

end A065185.P17531771286401262803

/-! ## A065185.P3623185219911545113

`A001478(n+1)+A275895(n)+1`
-/

namespace A065185.P3623185219911545113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A275895 n + 1)

end

end A065185.P3623185219911545113

/-! ## A065185.P10925846854420919942

`A023443(A065188(n+1))-n`
-/

namespace A065185.P10925846854420919942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065188 (n + 1)).toNat - (n : ℤ)

end

end A065185.P10925846854420919942

/-! ## A065185.P4022805438738079673

`A024000(n)+A023443(A275895(n))`
-/

namespace A065185.P4022805438738079673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A023443 (A275895 n).toNat

end

end A065185.P4022805438738079673

/-! ## A065185.P2657101327048067620

`A174390(2*(n+1))+A065188(n+1)`
-/

namespace A065185.P2657101327048067620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174390 (2 * (n + 1)) + A065188 (n + 1)

end

end A065185.P2657101327048067620

/-! ## A065185.P3449363468397630411

`A114327(∑[n+2])+A065188(n+1)`
-/

namespace A065185.P3449363468397630411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (∑ j ∈ Finset.range (n + 1), f1 j) + A065188 (n + 1)

end

end A065185.P3449363468397630411

/-!
# A065186: a(1)=1, a(2)=3, a(3)=5, a(4)=2, a(5)=4; for n > 5, a(n) = a(n-5) + 5.

The programs for A065186, the canonical program `A065186.P7787110248735877771` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065186 has offset 1).

The definition of A065186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5+a(n-5)` (program `A065186.P7787110248735877771`, by `A065186.P7787110248735877771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A065186.P7787110248735877771

`5+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065186

/-- `5+a(n-5)` -/
def P7787110248735877771.Spec : Prop :=
  ∀ n, (P7787110248735877771.a n : ℤ) = A065186 (n + 1)

theorem P7787110248735877771.correct : P7787110248735877771.Spec := by
  intro n
  simp only [A065186, Nat.add_sub_cancel]

end A065186

/-! ## A065186.P15492960417070603205

`a(n-5)+5` with `a(0)=1, a(1)=3, a(2)=5, a(3)=2, a(4)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065186.P15492960417070603205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 2, 4] fun n a =>
  a (n - 5) + 5

end

end A065186.P15492960417070603205

namespace A065186

/-- `a(n-5)+5` -/
def P15492960417070603205.Spec : Prop :=
  ∀ n, (P15492960417070603205.a n : ℤ) = A065186 (n + 1)

theorem P15492960417070603205.correct : P15492960417070603205.Spec := by
  intro n
  simp only [A065186, Nat.add_sub_cancel, A065186.P15492960417070603205.a, A065186.P7787110248735877771.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A065186

/-! ## A065186.P17747205942159351911

`ogf((1+2x+2x^2-3x^3+2x^4+x^5)/(1-x-x^5+x^6))`
-/

namespace A065186.P17747205942159351911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, -3, 2, 1] [1, -1, 0, 0, 0, -1, 1] n

end

end A065186.P17747205942159351911

namespace A065186

/-- `ogf((1+2x+2x^2-3x^3+2x^4+x^5)/(1-x-x^5+x^6))` -/
def P17747205942159351911.Spec : Prop :=
  ∀ n, P17747205942159351911.a n = A065186 (n + 1)

end A065186

/-! ## A065186.P2641325801523987775

`n+1+n%5-5*floor(n%5/3)`
-/

namespace A065186.P2641325801523987775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 + n % 5 : ℕ) : ℤ) - 5 * ⌊((n % 5 : ℕ) : ℚ) / 3⌋

end

end A065186.P2641325801523987775

namespace A065186

/-- `n+1+n%5-5*floor(n%5/3)` -/
def P2641325801523987775.Spec : Prop :=
  ∀ n, P2641325801523987775.a n = A065186 (n + 1)

end A065186

/-! ## A065186.P8765128250671666625

`(n+2)%5-1+n`
-/

namespace A065186.P8765128250671666625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) % 5 : ℕ) : ℤ) - 1 + (n : ℤ)

end

end A065186.P8765128250671666625

namespace A065186

/-- `(n+2)%5-1+n` -/
def P8765128250671666625.Spec : Prop :=
  ∀ n, P8765128250671666625.a n = A065186 (n + 1)

end A065186

/-! ## A065186.P8247221699676058283

`Δ[n²]-5*round(n/5)`
-/

namespace A065186.P8247221699676058283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 5 * SequenceMachineLib.roundAway ((n : ℚ) / 5)

end

end A065186.P8247221699676058283

namespace A065186

/-- `Δ[n²]-5*round(n/5)` -/
def P8247221699676058283.Spec : Prop :=
  ∀ n, P8247221699676058283.a n = A065186 (n + 1)

end A065186

/-! ## A065186.P2840669910248874773

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=-3, a(4)=2, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A065186.P2840669910248874773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, -3, 2, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065186.P2840669910248874773

namespace A065186

/-- `∑[floor(a(n-5))]` -/
def P2840669910248874773.Spec : Prop :=
  ∀ n, P2840669910248874773.a n = A065186 (n + 1)

end A065186

/-! ## A065186.P4750272289752933565

`A000027(A277618(n)+1)`
-/

namespace A065186.P4750272289752933565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A277618 n + 1).toNat

end

end A065186.P4750272289752933565

namespace A065186

/-- `A000027(A277618(n)+1)` -/
def P4750272289752933565.Spec : Prop :=
  ∀ n, P4750272289752933565.a n = A065186 (n + 1)

end A065186

/-! ## A065186.P6031612471378165119

`A065187(A065187(A065187(n+1)))`
-/

namespace A065186.P6031612471378165119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (A065187 (A065187 (n + 1)).toNat).toNat

end

end A065186.P6031612471378165119

namespace A065186

/-- `A065187(A065187(A065187(n+1)))` -/
def P6031612471378165119.Spec : Prop :=
  ∀ n, P6031612471378165119.a n = A065186 (n + 1)

end A065186

/-! ## A065186.P1717471722718922034

`A029926(A029925(n+3)-A177154(n+3))`
-/

namespace A065186.P1717471722718922034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029926 (A029925 (n + 3) - A177154 (n + 3)).toNat

end

end A065186.P1717471722718922034

namespace A065186

/-- `A029926(A029925(n+3)-A177154(n+3))` -/
def P1717471722718922034.Spec : Prop :=
  ∀ n, P1717471722718922034.a n = A065186 (n + 1)

end A065186

/-!
# A065187: "Greedy Dragons" permutation of the natural numbers, inverse of A065186.

The programs for A065187, the canonical program `A065187.P14016398150635672788` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065187 has offset 1).

The definition of A065187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065187.P14016398150635672788

`5+a(n-5)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=5, a(4)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065187

/-- `5+a(n-5)` -/
def P14016398150635672788.Spec : Prop :=
  ∀ n, (P14016398150635672788.a n : ℤ) = A065187 (n + 1)

theorem P14016398150635672788.correct : P14016398150635672788.Spec := by
  intro n
  simp only [A065187, Nat.add_sub_cancel]

end A065187

/-! ## A065187.P14449509187240114830

`ogf((1+3x-2x^2+3x^3-2x^4+2x^5)/(1-x-x^5+x^6))`
-/

namespace A065187.P14449509187240114830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2, 3, -2, 2] [1, -1, 0, 0, 0, -1, 1] n

end

end A065187.P14449509187240114830

namespace A065187

/-- `ogf((1+3x-2x^2+3x^3-2x^4+2x^5)/(1-x-x^5+x^6))` -/
def P14449509187240114830.Spec : Prop :=
  ∀ n, P14449509187240114830.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P5658380148020322502

`(2*(n+1))%5-1+n`
-/

namespace A065187.P5658380148020322502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) % 5 : ℕ) : ℤ) - 1 + (n : ℤ)

end

end A065187.P5658380148020322502

namespace A065187

/-- `(2*(n+1))%5-1+n` -/
def P5658380148020322502.Spec : Prop :=
  ∀ n, P5658380148020322502.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P5291789589520720256

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=3, a(2)=-2, a(3)=3, a(4)=-2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A065187.P5291789589520720256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -2, 3, -2, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065187.P5291789589520720256

namespace A065187

/-- `∑[floor(a(n-5))]` -/
def P5291789589520720256.Spec : Prop :=
  ∀ n, P5291789589520720256.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P5600443222854020999

`n-(a(n-3)%5-3)` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A065187.P5600443222854020999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n a =>
  (n : ℤ) - (Int.tmod (a (n - 3)) 5 - 3)

end

end A065187.P5600443222854020999

namespace A065187

/-- `n-(a(n-3)%5-3)` -/
def P5600443222854020999.Spec : Prop :=
  ∀ n, P5600443222854020999.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P18160810302686783643

`5*floor(abs(7*n+5-n)/10)+1-2*n`
-/

namespace A065187.P18160810302686783643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊(|(7 * n + 5 : ℤ) - (n : ℤ)| : ℚ) / 10⌋ + 1 - (2 * n : ℤ)

end

end A065187.P18160810302686783643

namespace A065187

/-- `5*floor(abs(7*n+5-n)/10)+1-2*n` -/
def P18160810302686783643.Spec : Prop :=
  ∀ n, P18160810302686783643.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P11821255128808508263

`A065186(A065186(A065186(n+1)))`
-/

namespace A065187.P11821255128808508263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065186 (A065186 (A065186 (n + 1)).toNat).toNat

end

end A065187.P11821255128808508263

namespace A065187

/-- `A065186(A065186(A065186(n+1)))` -/
def P11821255128808508263.Spec : Prop :=
  ∀ n, P11821255128808508263.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P1130351135470017559

`A277618(A277618(A065258(A277618(A065257(n+1)))))`
-/

namespace A065187.P1130351135470017559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277618 (A277618 (A065258 (A277618 (A065257 (n + 1)).toNat).toNat).toNat).toNat

end

end A065187.P1130351135470017559

namespace A065187

/-- `A277618(A277618(A065258(A277618(A065257(n+1)))))` -/
def P1130351135470017559.Spec : Prop :=
  ∀ n, P1130351135470017559.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P7871589735570027270

`A097065(A293481(n+1))`
-/

namespace A065187.P7871589735570027270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A293481 (n + 1)).toNat

end

end A065187.P7871589735570027270

namespace A065187

/-- `A097065(A293481(n+1))` -/
def P7871589735570027270.Spec : Prop :=
  ∀ n, P7871589735570027270.a n = A065187 (n + 1)

end A065187

/-! ## A065187.P13652563583043887425

`A084964(A257145(n+3)+2*n+1)`
-/

namespace A065187.P13652563583043887425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A257145 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A065187.P13652563583043887425

namespace A065187

/-- `A084964(A257145(n+3)+2*n+1)` -/
def P13652563583043887425.Spec : Prop :=
  ∀ n, P13652563583043887425.a n = A065187 (n + 1)

end A065187

/-!
# A065188: "Greedy Queens" permutation of the positive integers.

The programs for A065188, there is no canonical definition to state claims against.
-/

/-! ## A065188.P15590328624185352766

`A275895(n)+1`
-/

namespace A065188.P15590328624185352766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n + 1

end

end A065188.P15590328624185352766

/-! ## A065188.P14502641882768376554

`n+1+A065185(n+1)`
-/

namespace A065188.P14502641882768376554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A065185 (n + 1)

end

end A065188.P14502641882768376554

/-! ## A065188.P13485462604404525505

`n-(A023443(n)-A275895(n))`
-/

namespace A065188.P13485462604404525505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A275895 n)

end

end A065188.P13485462604404525505

/-! ## A065188.P2996549727464303535

`A001316(A001316(n))-(1-A275895(n))`
-/

namespace A065188.P2996549727464303535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A275895 n)

end

end A065188.P2996549727464303535

/-! ## A065188.P5383916695638531671

`A008619(2*A275895(n))`
-/

namespace A065188.P5383916695638531671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A275895 n).toNat

end

end A065188.P5383916695638531671

/-! ## A065188.P458298999657249472

`A028242(2*A275895(n))`
-/

namespace A065188.P458298999657249472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A275895 n).toNat

end

end A065188.P458298999657249472

/-! ## A065188.P14316194298305813967

`A029579(2*A275895(n))`
-/

namespace A065188.P14316194298305813967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A275895 n).toNat

end

end A065188.P14316194298305813967

/-! ## A065188.P270934101640558893

`A008611(3*A275895(n))`
-/

namespace A065188.P270934101640558893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A275895 n).toNat

end

end A065188.P270934101640558893

/-! ## A065188.P5600370411288559167

`A008620(3*A275895(n))`
-/

namespace A065188.P5600370411288559167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A275895 n).toNat

end

end A065188.P5600370411288559167

/-! ## A065188.P15568123591102009025

`1-(A096159(A128059(n))-A275895(n))`
-/

namespace A065188.P15568123591102009025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A096159 (A128059 n).toNat - A275895 n)

end

end A065188.P15568123591102009025

/-!
# A065189: "Greedy Queens" permutation of the natural numbers, inverse of A065188.

The programs for A065189, there is no canonical definition to state claims against.
-/

/-! ## A065189.P4683130033760062669

`A275896(n)+1`
-/

namespace A065189.P4683130033760062669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 n + 1

end

end A065189.P4683130033760062669

/-! ## A065189.P10618204263052431862

`A008619(2*A275896(n))`
-/

namespace A065189.P10618204263052431862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A275896 n).toNat

end

end A065189.P10618204263052431862

/-! ## A065189.P512735673007571545

`A028242(2*A275896(n))`
-/

namespace A065189.P512735673007571545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A275896 n).toNat

end

end A065189.P512735673007571545

/-! ## A065189.P8236168959888757835

`A052938(2*A275896(n))`
-/

namespace A065189.P8236168959888757835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A275896 n).toNat

end

end A065189.P8236168959888757835

/-! ## A065189.P16480502091016013194

`A008611(3*A275896(n))`
-/

namespace A065189.P16480502091016013194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A275896 n).toNat

end

end A065189.P16480502091016013194

/-! ## A065189.P9734212660211463685

`A008620(3*A275896(n))`
-/

namespace A065189.P9734212660211463685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A275896 n).toNat

end

end A065189.P9734212660211463685

/-! ## A065189.P854030933430377777

`A110659(4*A275896(n))`
-/

namespace A065189.P854030933430377777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (4 * A275896 n).toNat

end

end A065189.P854030933430377777

/-!
# A065190: Self-inverse permutation of the positive integers: 1 is fixed, followed by an infinite number of adjacent transpositions (n n+1).

The programs for A065190, the canonical program `A065190.P13211442057156314252` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065190 has offset 1).

The definition of A065190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065190.P5373746830287687006

`ogf((1+2x-2x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A065190.P5373746830287687006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, 1] [1, -1, -1, 1] n

end

end A065190.P5373746830287687006

namespace A065190

/-- `ogf((1+2x-2x^2+x^3)/(1-x-x^2+x^3))` -/
def P5373746830287687006.Spec : Prop :=
  ∀ n, P5373746830287687006.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P13211442057156314252

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A065190

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P13211442057156314252.Spec : Prop :=
  ∀ n, P13211442057156314252.a n = A065190 (n + 1)

theorem P13211442057156314252.correct : P13211442057156314252.Spec := by
  intro n
  simp only [A065190, Nat.add_sub_cancel]

end A065190

/-! ## A065190.P15824279155862635014

`A014681(n)+1`
-/

namespace A065190.P15824279155862635014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + 1

end

end A065190.P15824279155862635014

namespace A065190

/-- `A014681(n)+1` -/
def P15824279155862635014.Spec : Prop :=
  ∀ n, P15824279155862635014.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P8705192477300410094

`xor(1, ceil(sqrt(∑[2*n])))`
-/

namespace A065190.P8705192477300410094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A065190.P8705192477300410094

namespace A065190

/-- `xor(1, ceil(sqrt(∑[2*n])))` -/
def P8705192477300410094.Spec : Prop :=
  ∀ n, P8705192477300410094.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P13204608075696371964

`a(n-2)+2` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A065190.P13204608075696371964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  a (n - 2) + 2

end

end A065190.P13204608075696371964

namespace A065190

/-- `a(n-2)+2` -/
def P13204608075696371964.Spec : Prop :=
  ∀ n, (P13204608075696371964.a n : ℤ) = A065190 (n + 1)

end A065190

/-! ## A065190.P301854007762168181

`ceil(abs(Δ[xor(1, n²)])/2)`
-/

namespace A065190.P301854007762168181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(f1 (n + 1) : ℤ) - (f1 n : ℤ)| : ℚ) / 2⌉

end

end A065190.P301854007762168181

namespace A065190

/-- `ceil(abs(Δ[xor(1, n²)])/2)` -/
def P301854007762168181.Spec : Prop :=
  ∀ n, P301854007762168181.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P13123763579885219474

`round(abs(Δ[xor(1, n²)])/2)`
-/

namespace A065190.P13123763579885219474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|(f1 (n + 1) : ℤ) - (f1 n : ℤ)| : ℚ) / 2)

end

end A065190.P13123763579885219474

namespace A065190

/-- `round(abs(Δ[xor(1, n²)])/2)` -/
def P13123763579885219474.Spec : Prop :=
  ∀ n, P13123763579885219474.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P16467198229261899614

`n-(1-a(n%2))` with `a(0)=1, a(1)=3`
-/

namespace A065190.P16467198229261899614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) - (1 - a (n % 2))

end

end A065190.P16467198229261899614

namespace A065190

/-- `n-(1-a(n%2))` -/
def P16467198229261899614.Spec : Prop :=
  ∀ n, P16467198229261899614.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P14164934403399155834

`round(sqrt(xor(1, n+1)²+1))`
-/

namespace A065190.P14164934403399155834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.xor 1 (n + 1) ^ 2 + 1 : ℝ))

end

end A065190.P14164934403399155834

namespace A065190

/-- `round(sqrt(xor(1, n+1)²+1))` -/
def P14164934403399155834.Spec : Prop :=
  ∀ n, P14164934403399155834.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P10988021866396978963

`ceil(n²/a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A065190.P10988021866396978963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈(n ^ 2 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A065190.P10988021866396978963

namespace A065190

/-- `ceil(n²/a(n-1))` -/
def P10988021866396978963.Spec : Prop :=
  ∀ n, P10988021866396978963.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P12368165055386688952

`Δ[n²]-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A065190.P12368165055386688952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A065190.P12368165055386688952

namespace A065190

/-- `Δ[n²]-a(n-1)` -/
def P12368165055386688952.Spec : Prop :=
  ∀ n, P12368165055386688952.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P6091289125823732904

`abs(Δ[n²%(2*n+1)])`
-/

namespace A065190.P6091289125823732904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A065190.P6091289125823732904

namespace A065190

/-- `abs(Δ[n²%(2*n+1)])` -/
def P6091289125823732904.Spec : Prop :=
  ∀ n, P6091289125823732904.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P5716609127064376129

`∑[2-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=-1`
-/

namespace A065190.P5716609127064376129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065190.P5716609127064376129

namespace A065190

/-- `∑[2-a(n-1)]` -/
def P5716609127064376129.Spec : Prop :=
  ∀ n, P5716609127064376129.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P12055434760532676700

`∑[∑[ogf((1+2x-2x^2+x^3)/(1+x))]]`
-/

namespace A065190.P12055434760532676700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065190.P12055434760532676700

namespace A065190

/-- `∑[∑[ogf((1+2x-2x^2+x^3)/(1+x))]]` -/
def P12055434760532676700.Spec : Prop :=
  ∀ n, P12055434760532676700.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P9671942917990460326

`2%a(gcd(2, n))+n` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A065190.P9671942917990460326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 % a (Nat.gcd 2 n) + n

end

end A065190.P9671942917990460326

namespace A065190

/-- `2%a(gcd(2, n))+n` -/
def P9671942917990460326.Spec : Prop :=
  ∀ n, (P9671942917990460326.a n : ℤ) = A065190 (n + 1)

end A065190

/-! ## A065190.P12789645942664672294

`2-floor(-a(n-2))` with `a(0)=1, a(1)=3, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A065190.P12789645942664672294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 - (-a (n - 2))

end

end A065190.P12789645942664672294

namespace A065190

/-- `2-floor(-a(n-2))` -/
def P12789645942664672294.Spec : Prop :=
  ∀ n, P12789645942664672294.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P16615750018769306913

`2-ceil(-a(n-2))` with `a(0)=1, a(1)=3, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A065190.P16615750018769306913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 - (-a (n - 2))

end

end A065190.P16615750018769306913

namespace A065190

/-- `2-ceil(-a(n-2))` -/
def P16615750018769306913.Spec : Prop :=
  ∀ n, P16615750018769306913.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P13989319890016357776

`2-round(-a(n-2))` with `a(0)=1, a(1)=3, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A065190.P13989319890016357776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n a =>
  2 - (-a (n - 2))

end

end A065190.P13989319890016357776

namespace A065190

/-- `2-round(-a(n-2))` -/
def P13989319890016357776.Spec : Prop :=
  ∀ n, P13989319890016357776.a n = A065190 (n + 1)

end A065190

/-! ## A065190.P10225502260349957479

`2-(char[2]-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A065190.P10225502260349957479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A065190.P10225502260349957479

namespace A065190

/-- `2-(char[2]-a(n-2))` -/
def P10225502260349957479.Spec : Prop :=
  ∀ n, P10225502260349957479.a n = A065190 (n + 1)

end A065190

/-!
# A065192: Record entries in A065191.

The programs for A065192, there is no canonical definition to state claims against.
-/

/-! ## A065192.P15702005825722840776

`record[A065191(n+1)]`
-/

namespace A065192.P15702005825722840776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065192.P15702005825722840776

/-! ## A065192.P3141711003147151687

`A065191(A065193(n+1))`
-/

namespace A065192.P3141711003147151687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (A065193 (n + 1)).toNat

end

end A065192.P3141711003147151687

/-! ## A065192.P13343367814384411447

`record[A065191(A008619(n))-A000035(n)]`
-/

namespace A065192.P13343367814384411447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065192.P13343367814384411447

/-! ## A065192.P14881384661517360181

`record[A065191(A008619(n))/A000034(n)]`
-/

namespace A065192.P14881384661517360181
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065191 (A008619 n).toNat : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065192.P14881384661517360181

/-! ## A065192.P13015597806813920093

`record[A065191(A008619(n))/A152271(n)]`
-/

namespace A065192.P13015597806813920093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065191 (A008619 n).toNat : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065192.P13015597806813920093

/-! ## A065192.P2808046803895153813

`record[A065191(A008619(n))%A016825(n)]`
-/

namespace A065192.P2808046803895153813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065191 (A008619 n).toNat) (A016825 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065192.P2808046803895153813

/-! ## A065192.P6018235187010464427

`record[A065191(A008619(n))]%A016947(n)`
-/

namespace A065192.P6018235187010464427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016947 n)

end

end A065192.P6018235187010464427

/-! ## A065192.P567268350609920395

`record[A009001(2*n)*A065191(A008619(n))]`
-/

namespace A065192.P567268350609920395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A065191 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065192.P567268350609920395

/-!
# A065193: Indices of record entries (A065192) in A065191.

The programs for A065193, there is no canonical definition to state claims against.
-/

/-! ## A065193.P2856429764894808748

`A065194(A065192(n+1))`
-/

namespace A065193.P2856429764894808748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065194 (A065192 (n + 1)).toNat

end

end A065193.P2856429764894808748

/-! ## A065193.P2388674606805779322

`A065194(record[A065191(n+1)])`
-/

namespace A065193.P2388674606805779322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065194 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065193.P2388674606805779322

/-!
# A065195: Record entries in A065194.

The programs for A065195, there is no canonical definition to state claims against.
-/

/-! ## A065195.P16530976937462280504

`record[A065194(n+1)]`
-/

namespace A065195.P16530976937462280504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065195.P16530976937462280504

/-! ## A065195.P13047756144787243759

`A065194(A065196(n+1))`
-/

namespace A065195.P13047756144787243759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065194 (A065196 (n + 1)).toNat

end

end A065195.P13047756144787243759

/-! ## A065195.P5445176249897427336

`record[ratio[A065194(A152271(n))]]`
-/

namespace A065195.P5445176249897427336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065194 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065195.P5445176249897427336

/-! ## A065195.P7892926392838689546

`record[(-1)^n*A065194(A008619(n))]`
-/

namespace A065195.P7892926392838689546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A065194 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065195.P7892926392838689546

/-!
# A065197: Fixed points of A065191.

The programs for A065197, there is no canonical definition to state claims against.
-/

/-! ## A065197.P5970186009612157379

`eq[n, A065191(round(sqrt(n²+1)))]`
-/

namespace A065197.P5970186009612157379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065197.P5970186009612157379

/-! ## A065197.P13337489075778551398

`eq[n, A065191(n+1)-1]+1`
-/

namespace A065197.P13337489075778551398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065197.P13337489075778551398

/-! ## A065197.P8384821328417235957

`A065191(eq[n+1, A065191(n+1)]+1)`
-/

namespace A065197.P8384821328417235957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A065197.P8384821328417235957

/-!
# A065198: Indices of record high values in A033665, ignoring those numbers that are believed never to reach a palindrome.

The programs for A065198, there is no canonical definition to state claims against.
-/

/-! ## A065198.P13504829884093577581

`A023109(A065199(n+1))`
-/

namespace A065198.P13504829884093577581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023109 (A065199 (n + 1)).toNat

end

end A065198.P13504829884093577581

/-! ## A065198.P6673252545705679731

`A033866(A065199(n+1))-A000007(n)`
-/

namespace A065198.P6673252545705679731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 (A065199 (n + 1)).toNat - A000007 n

end

end A065198.P6673252545705679731

/-! ## A065198.P4548990968944895437

`A033866(A065199(n+1))-A010894(n)`
-/

namespace A065198.P4548990968944895437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 (A065199 (n + 1)).toNat - A010894 (n + 21)

end

end A065198.P4548990968944895437

/-! ## A065198.P3082590653760742201

`A033866(A065199(n+1))-A151878(n)`
-/

namespace A065198.P3082590653760742201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 (A065199 (n + 1)).toNat - A151878 n

end

end A065198.P3082590653760742201

/-!
# A065199: Record high values in A033665, ignoring those numbers that are believed never to reach a palindrome.

The programs for A065199, there is no canonical definition to state claims against.
-/

/-! ## A065199.P11019886656720324038

`eq[A010880(A017902(n)), A173864(n+1)]`
-/

namespace A065199.P11019886656720324038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A017902 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065199.P11019886656720324038

/-! ## A065199.P16469385772242157692

`lt[A304486(n+1), A066099(A154777(3*(n+1)))]`
-/

namespace A065199.P16469385772242157692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A154777 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065199.P16469385772242157692

