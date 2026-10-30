import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017800: Binomial coefficients C(84,n).

The programs for A017800, the canonical program `A017800.P15003268799646102135` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017800 has offset 0).

The definition of A017800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(84, n)` (program `A017800.P15003268799646102135`, by `A017800.P15003268799646102135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017800.P15003268799646102135

`C(84, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017800

/-- `C(84, n)` -/
def P15003268799646102135.Spec : Prop :=
  ∀ n, (P15003268799646102135.a n : ℤ) = A017800 n

theorem P15003268799646102135.correct : P15003268799646102135.Spec := by
  intro n
  simp only [A017800]

end A017800

/-! ## A017800.P4119989117461658587

`(85/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017800.P4119989117461658587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (85 / (n : ℚ) - 1) * a (n - 1)

end

end A017800.P4119989117461658587

namespace A017800

/-- `(85/n-1)*a(n-1)` -/
def P4119989117461658587.Spec : Prop :=
  ∀ n, P4119989117461658587.a n = (A017800 n : ℚ)

end A017800

/-! ## A017800.P13138717587240227496

`A017801(n)-a(n-1)` with `a(0)=1`
-/

namespace A017800.P13138717587240227496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017801 n - a (n - 1)

end

end A017800.P13138717587240227496

namespace A017800

/-- `A017801(n)-a(n-1)` -/
def P13138717587240227496.Spec : Prop :=
  ∀ n, P13138717587240227496.a n = A017800 n

end A017800

/-! ## A017800.P4404858516261269546

`∑{#}[n, A010958(#)*A010958(n-#)]`
-/

namespace A017800.P4404858516261269546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010958 k * A010958 (n - k)

end

end A017800.P4404858516261269546

namespace A017800

/-- `∑{#}[n, A010958(#)*A010958(n-#)]` -/
def P4404858516261269546.Spec : Prop :=
  ∀ n, P4404858516261269546.a n = A017800 n

end A017800

/-!
# A017801: Binomial coefficients C(85,n).

The programs for A017801, the canonical program `A017801.P10052041484553612328` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017801 has offset 0).

The definition of A017801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(85, n)` (program `A017801.P10052041484553612328`, by `A017801.P10052041484553612328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017801.P10052041484553612328

`C(85, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017801

/-- `C(85, n)` -/
def P10052041484553612328.Spec : Prop :=
  ∀ n, (P10052041484553612328.a n : ℤ) = A017801 n

theorem P10052041484553612328.correct : P10052041484553612328.Spec := by
  intro n
  simp only [A017801]

end A017801

/-! ## A017801.P5684269194494742881

`(86/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017801.P5684269194494742881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (86 / (n : ℚ) - 1) * a (n - 1)

end

end A017801.P5684269194494742881

namespace A017801

/-- `(86/n-1)*a(n-1)` -/
def P5684269194494742881.Spec : Prop :=
  ∀ n, P5684269194494742881.a n = (A017801 n : ℚ)

end A017801

/-! ## A017801.P5458631441397280898

`A017802(n)-a(n-1)` with `a(0)=1`
-/

namespace A017801.P5458631441397280898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017802 n - a (n - 1)

end

end A017801.P5458631441397280898

namespace A017801

/-- `A017802(n)-a(n-1)` -/
def P5458631441397280898.Spec : Prop :=
  ∀ n, P5458631441397280898.a n = A017801 n

end A017801

/-!
# A017802: Binomial coefficients C(86,n).

The programs for A017802, the canonical program `A017802.P2815229097753930390` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017802 has offset 0).

The definition of A017802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(86, n)` (program `A017802.P2815229097753930390`, by `A017802.P2815229097753930390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017802.P2815229097753930390

`C(86, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017802

/-- `C(86, n)` -/
def P2815229097753930390.Spec : Prop :=
  ∀ n, (P2815229097753930390.a n : ℤ) = A017802 n

theorem P2815229097753930390.correct : P2815229097753930390.Spec := by
  intro n
  simp only [A017802]

end A017802

/-! ## A017802.P14593328435914023178

`(87/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017802.P14593328435914023178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (87 / (n : ℚ) - 1) * a (n - 1)

end

end A017802.P14593328435914023178

namespace A017802

/-- `(87/n-1)*a(n-1)` -/
def P14593328435914023178.Spec : Prop :=
  ∀ n, P14593328435914023178.a n = (A017802 n : ℚ)

end A017802

/-! ## A017802.P9716690363846361658

`A017803(n)-a(n-1)` with `a(0)=1`
-/

namespace A017802.P9716690363846361658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017803 n - a (n - 1)

end

end A017802.P9716690363846361658

namespace A017802

/-- `A017803(n)-a(n-1)` -/
def P9716690363846361658.Spec : Prop :=
  ∀ n, P9716690363846361658.a n = A017802 n

end A017802

/-! ## A017802.P7644578207755506755

`abs(∑[A017803(n)*A033999(n)])`
-/

namespace A017802.P7644578207755506755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017803 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A017802.P7644578207755506755

namespace A017802

/-- `abs(∑[A017803(n)*A033999(n)])` -/
def P7644578207755506755.Spec : Prop :=
  ∀ n, P7644578207755506755.a n = A017802 n

end A017802

/-! ## A017802.P16282907918247267869

`∑{#}[n, A010959(#)*A010959(n-#)]`
-/

namespace A017802.P16282907918247267869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010959 k * A010959 (n - k)

end

end A017802.P16282907918247267869

namespace A017802

/-- `∑{#}[n, A010959(#)*A010959(n-#)]` -/
def P16282907918247267869.Spec : Prop :=
  ∀ n, P16282907918247267869.a n = A017802 n

end A017802

/-!
# A017803: Binomial coefficients C(87,n).

The programs for A017803, the canonical program `A017803.P4168499854635344567` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017803 has offset 0).

The definition of A017803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(87, n)` (program `A017803.P4168499854635344567`, by `A017803.P4168499854635344567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017803.P4168499854635344567

`C(87, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017803

/-- `C(87, n)` -/
def P4168499854635344567.Spec : Prop :=
  ∀ n, (P4168499854635344567.a n : ℤ) = A017803 n

theorem P4168499854635344567.correct : P4168499854635344567.Spec := by
  intro n
  simp only [A017803]

end A017803

/-! ## A017803.P1315811263474733820

`(88/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017803.P1315811263474733820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (88 / (n : ℚ) - 1) * a (n - 1)

end

end A017803.P1315811263474733820

namespace A017803

/-- `(88/n-1)*a(n-1)` -/
def P1315811263474733820.Spec : Prop :=
  ∀ n, P1315811263474733820.a n = (A017803 n : ℚ)

end A017803

/-! ## A017803.P5331047468914514646

`A017804(n)-a(n-1)` with `a(0)=1`
-/

namespace A017803.P5331047468914514646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017804 n - a (n - 1)

end

end A017803.P5331047468914514646

namespace A017803

/-- `A017804(n)-a(n-1)` -/
def P5331047468914514646.Spec : Prop :=
  ∀ n, P5331047468914514646.a n = A017803 n

end A017803

/-! ## A017803.P7930851653282362766

`abs(∑[A017804(n)*A033999(n)])`
-/

namespace A017803.P7930851653282362766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017804 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A017803.P7930851653282362766

namespace A017803

/-- `abs(∑[A017804(n)*A033999(n)])` -/
def P7930851653282362766.Spec : Prop :=
  ∀ n, P7930851653282362766.a n = A017803 n

end A017803

/-!
# A017804: Binomial coefficients C(88,n).

The programs for A017804, the canonical program `A017804.P16238918620423207317` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017804 has offset 0).

The definition of A017804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(88, n)` (program `A017804.P16238918620423207317`, by `A017804.P16238918620423207317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017804.P16238918620423207317

`C(88, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017804

/-- `C(88, n)` -/
def P16238918620423207317.Spec : Prop :=
  ∀ n, (P16238918620423207317.a n : ℤ) = A017804 n

theorem P16238918620423207317.correct : P16238918620423207317.Spec := by
  intro n
  simp only [A017804]

end A017804

/-! ## A017804.P7924250313807188472

`(89/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017804.P7924250313807188472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (89 / (n : ℚ) - 1) * a (n - 1)

end

end A017804.P7924250313807188472

namespace A017804

/-- `(89/n-1)*a(n-1)` -/
def P7924250313807188472.Spec : Prop :=
  ∀ n, P7924250313807188472.a n = (A017804 n : ℚ)

end A017804

/-! ## A017804.P12028721527936477940

`A017805(n)-a(n-1)` with `a(0)=1`
-/

namespace A017804.P12028721527936477940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017805 n - a (n - 1)

end

end A017804.P12028721527936477940

namespace A017804

/-- `A017805(n)-a(n-1)` -/
def P12028721527936477940.Spec : Prop :=
  ∀ n, P12028721527936477940.a n = A017804 n

end A017804

/-! ## A017804.P11270457707064684517

`∑{#}[n, A010960(#)*A010960(n-#)]`
-/

namespace A017804.P11270457707064684517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010960 k * A010960 (n - k)

end

end A017804.P11270457707064684517

namespace A017804

/-- `∑{#}[n, A010960(#)*A010960(n-#)]` -/
def P11270457707064684517.Spec : Prop :=
  ∀ n, P11270457707064684517.a n = A017804 n

end A017804

/-!
# A017805: Binomial coefficients C(89,n).

The programs for A017805, the canonical program `A017805.P7948988567581265471` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017805 has offset 0).

The definition of A017805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(89, n)` (program `A017805.P7948988567581265471`, by `A017805.P7948988567581265471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017805.P7948988567581265471

`C(89, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017805

/-- `C(89, n)` -/
def P7948988567581265471.Spec : Prop :=
  ∀ n, (P7948988567581265471.a n : ℤ) = A017805 n

theorem P7948988567581265471.correct : P7948988567581265471.Spec := by
  intro n
  simp only [A017805]

end A017805

/-! ## A017805.P8393723684038960127

`(90/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017805.P8393723684038960127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (90 / (n : ℚ) - 1) * a (n - 1)

end

end A017805.P8393723684038960127

namespace A017805

/-- `(90/n-1)*a(n-1)` -/
def P8393723684038960127.Spec : Prop :=
  ∀ n, P8393723684038960127.a n = (A017805 n : ℚ)

end A017805

/-! ## A017805.P2868552739053338170

`A261507(154+n)`
-/

namespace A017805.P2868552739053338170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261507 (154 + n)

end

end A017805.P2868552739053338170

namespace A017805

/-- `A261507(154+n)` -/
def P2868552739053338170.Spec : Prop :=
  ∀ n, P2868552739053338170.a n = A017805 n

end A017805

/-! ## A017805.P11694233105503569806

`A017806(n)-a(n-1)` with `a(0)=1`
-/

namespace A017805.P11694233105503569806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017806 n - a (n - 1)

end

end A017805.P11694233105503569806

namespace A017805

/-- `A017806(n)-a(n-1)` -/
def P11694233105503569806.Spec : Prop :=
  ∀ n, P11694233105503569806.a n = A017805 n

end A017805

/-!
# A017806: Binomial coefficients C(90,n).

The programs for A017806, the canonical program `A017806.P15196591925733363485` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017806 has offset 0).

The definition of A017806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(90, n)` (program `A017806.P15196591925733363485`, by `A017806.P15196591925733363485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017806.P15196591925733363485

`C(90, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017806

/-- `C(90, n)` -/
def P15196591925733363485.Spec : Prop :=
  ∀ n, (P15196591925733363485.a n : ℤ) = A017806 n

theorem P15196591925733363485.correct : P15196591925733363485.Spec := by
  intro n
  simp only [A017806]

end A017806

/-! ## A017806.P16912274098407229666

`(91/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017806.P16912274098407229666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (91 / (n : ℚ) - 1) * a (n - 1)

end

end A017806.P16912274098407229666

namespace A017806

/-- `(91/n-1)*a(n-1)` -/
def P16912274098407229666.Spec : Prop :=
  ∀ n, P16912274098407229666.a n = (A017806 n : ℚ)

end A017806

/-! ## A017806.P2188581659025625492

`A017807(n)-a(n-1)` with `a(0)=1`
-/

namespace A017806.P2188581659025625492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017807 n - a (n - 1)

end

end A017806.P2188581659025625492

namespace A017806

/-- `A017807(n)-a(n-1)` -/
def P2188581659025625492.Spec : Prop :=
  ∀ n, P2188581659025625492.a n = A017806 n

end A017806

/-! ## A017806.P5123357200109401447

`∑{#}[n, A010961(#)*A010961(n-#)]`
-/

namespace A017806.P5123357200109401447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010961 k * A010961 (n - k)

end

end A017806.P5123357200109401447

namespace A017806

/-- `∑{#}[n, A010961(#)*A010961(n-#)]` -/
def P5123357200109401447.Spec : Prop :=
  ∀ n, P5123357200109401447.a n = A017806 n

end A017806

/-!
# A017807: Binomial coefficients C(91,n).

The programs for A017807, the canonical program `A017807.P2273420789270730319` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017807 has offset 0).

The definition of A017807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(91, n)` (program `A017807.P2273420789270730319`, by `A017807.P2273420789270730319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017807.P2273420789270730319

`C(91, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017807

/-- `C(91, n)` -/
def P2273420789270730319.Spec : Prop :=
  ∀ n, (P2273420789270730319.a n : ℤ) = A017807 n

theorem P2273420789270730319.correct : P2273420789270730319.Spec := by
  intro n
  simp only [A017807]

end A017807

/-! ## A017807.P5454796961765366161

`(92/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017807.P5454796961765366161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (92 / (n : ℚ) - 1) * a (n - 1)

end

end A017807.P5454796961765366161

namespace A017807

/-- `(92/n-1)*a(n-1)` -/
def P5454796961765366161.Spec : Prop :=
  ∀ n, P5454796961765366161.a n = (A017807 n : ℚ)

end A017807

/-! ## A017807.P7800807061060724345

`A017808(n)-a(n-1)` with `a(0)=1`
-/

namespace A017807.P7800807061060724345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017808 n - a (n - 1)

end

end A017807.P7800807061060724345

namespace A017807

/-- `A017808(n)-a(n-1)` -/
def P7800807061060724345.Spec : Prop :=
  ∀ n, P7800807061060724345.a n = A017807 n

end A017807

/-!
# A017808: Binomial coefficients C(92,n).

The programs for A017808, the canonical program `A017808.P13463877002636639315` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017808 has offset 0).

The definition of A017808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(92, n)` (program `A017808.P13463877002636639315`, by `A017808.P13463877002636639315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017808.P13463877002636639315

`C(92, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017808

/-- `C(92, n)` -/
def P13463877002636639315.Spec : Prop :=
  ∀ n, (P13463877002636639315.a n : ℤ) = A017808 n

theorem P13463877002636639315.correct : P13463877002636639315.Spec := by
  intro n
  simp only [A017808]

end A017808

/-! ## A017808.P3164109730889361459

`(93/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017808.P3164109730889361459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (93 / (n : ℚ) - 1) * a (n - 1)

end

end A017808.P3164109730889361459

namespace A017808

/-- `(93/n-1)*a(n-1)` -/
def P3164109730889361459.Spec : Prop :=
  ∀ n, P3164109730889361459.a n = (A017808 n : ℚ)

end A017808

/-! ## A017808.P11522055230382786162

`A017809(n)-a(n-1)` with `a(0)=1`
-/

namespace A017808.P11522055230382786162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017809 n - a (n - 1)

end

end A017808.P11522055230382786162

namespace A017808

/-- `A017809(n)-a(n-1)` -/
def P11522055230382786162.Spec : Prop :=
  ∀ n, P11522055230382786162.a n = A017808 n

end A017808

/-! ## A017808.P4026243469962176370

`∑{#}[n, A010962(#)*A010962(n-#)]`
-/

namespace A017808.P4026243469962176370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010962 k * A010962 (n - k)

end

end A017808.P4026243469962176370

namespace A017808

/-- `∑{#}[n, A010962(#)*A010962(n-#)]` -/
def P4026243469962176370.Spec : Prop :=
  ∀ n, P4026243469962176370.a n = A017808 n

end A017808

/-!
# A017809: Binomial coefficients C(93,n).

The programs for A017809, the canonical program `A017809.P16859069494301039628` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017809 has offset 0).

The definition of A017809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(93, n)` (program `A017809.P16859069494301039628`, by `A017809.P16859069494301039628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017809.P16859069494301039628

`C(93, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017809

/-- `C(93, n)` -/
def P16859069494301039628.Spec : Prop :=
  ∀ n, (P16859069494301039628.a n : ℤ) = A017809 n

theorem P16859069494301039628.correct : P16859069494301039628.Spec := by
  intro n
  simp only [A017809]

end A017809

/-! ## A017809.P8250083132195531560

`(94/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017809.P8250083132195531560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (94 / (n : ℚ) - 1) * a (n - 1)

end

end A017809.P8250083132195531560

namespace A017809

/-- `(94/n-1)*a(n-1)` -/
def P8250083132195531560.Spec : Prop :=
  ∀ n, P8250083132195531560.a n = (A017809 n : ℚ)

end A017809

/-! ## A017809.P13345054270986399789

`A017810(n)-a(n-1)` with `a(0)=1`
-/

namespace A017809.P13345054270986399789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017810 n - a (n - 1)

end

end A017809.P13345054270986399789

namespace A017809

/-- `A017810(n)-a(n-1)` -/
def P13345054270986399789.Spec : Prop :=
  ∀ n, P13345054270986399789.a n = A017809 n

end A017809

/-!
# A017810: Binomial coefficients C(94,n).

The programs for A017810, the canonical program `A017810.P9929031435441621141` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017810 has offset 0).

The definition of A017810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(94, n)` (program `A017810.P9929031435441621141`, by `A017810.P9929031435441621141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017810.P9929031435441621141

`C(94, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017810

/-- `C(94, n)` -/
def P9929031435441621141.Spec : Prop :=
  ∀ n, (P9929031435441621141.a n : ℤ) = A017810 n

theorem P9929031435441621141.correct : P9929031435441621141.Spec := by
  intro n
  simp only [A017810]

end A017810

/-! ## A017810.P4363435066078847824

`(95/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017810.P4363435066078847824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (95 / (n : ℚ) - 1) * a (n - 1)

end

end A017810.P4363435066078847824

namespace A017810

/-- `(95/n-1)*a(n-1)` -/
def P4363435066078847824.Spec : Prop :=
  ∀ n, P4363435066078847824.a n = (A017810 n : ℚ)

end A017810

/-! ## A017810.P10499102001317984431

`A017811(n)-a(n-1)` with `a(0)=1`
-/

namespace A017810.P10499102001317984431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017811 n - a (n - 1)

end

end A017810.P10499102001317984431

namespace A017810

/-- `A017811(n)-a(n-1)` -/
def P10499102001317984431.Spec : Prop :=
  ∀ n, P10499102001317984431.a n = A017810 n

end A017810

/-! ## A017810.P4526379586468454179

`∑{#}[n, A010963(#)*A010963(n-#)]`
-/

namespace A017810.P4526379586468454179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010963 k * A010963 (n - k)

end

end A017810.P4526379586468454179

namespace A017810

/-- `∑{#}[n, A010963(#)*A010963(n-#)]` -/
def P4526379586468454179.Spec : Prop :=
  ∀ n, P4526379586468454179.a n = A017810 n

end A017810

/-!
# A017811: Binomial coefficients C(95,n).

The programs for A017811, the canonical program `A017811.P4752163910051945836` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017811 has offset 0).

The definition of A017811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(95, n)` (program `A017811.P4752163910051945836`, by `A017811.P4752163910051945836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017811.P4752163910051945836

`C(95, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017811

/-- `C(95, n)` -/
def P4752163910051945836.Spec : Prop :=
  ∀ n, (P4752163910051945836.a n : ℤ) = A017811 n

theorem P4752163910051945836.correct : P4752163910051945836.Spec := by
  intro n
  simp only [A017811]

end A017811

/-! ## A017811.P12054468373562476012

`(96/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017811.P12054468373562476012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (96 / (n : ℚ) - 1) * a (n - 1)

end

end A017811.P12054468373562476012

namespace A017811

/-- `(96/n-1)*a(n-1)` -/
def P12054468373562476012.Spec : Prop :=
  ∀ n, P12054468373562476012.a n = (A017811 n : ℚ)

end A017811

/-! ## A017811.P17194569074631862220

`A017812(n)-a(n-1)` with `a(0)=1`
-/

namespace A017811.P17194569074631862220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017812 n - a (n - 1)

end

end A017811.P17194569074631862220

namespace A017811

/-- `A017812(n)-a(n-1)` -/
def P17194569074631862220.Spec : Prop :=
  ∀ n, P17194569074631862220.a n = A017811 n

end A017811

/-! ## A017811.P9453659934820472742

`A017812(n+1)-(A017810(n+1)+A017810(n))`
-/

namespace A017811.P9453659934820472742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017812 (n + 1) - (A017810 (n + 1) + A017810 n)

end

end A017811.P9453659934820472742

namespace A017811

/-- `A017812(n+1)-(A017810(n+1)+A017810(n))` -/
def P9453659934820472742.Spec : Prop :=
  ∀ n, P9453659934820472742.a n = A017811 n

end A017811

/-!
# A017812: Binomial coefficients C(96,n).

The programs for A017812, the canonical program `A017812.P10797993836661419270` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017812 has offset 0).

The definition of A017812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(96, n)` (program `A017812.P10797993836661419270`, by `A017812.P10797993836661419270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017812.P10797993836661419270

`C(96, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017812

/-- `C(96, n)` -/
def P10797993836661419270.Spec : Prop :=
  ∀ n, (P10797993836661419270.a n : ℤ) = A017812 n

theorem P10797993836661419270.correct : P10797993836661419270.Spec := by
  intro n
  simp only [A017812]

end A017812

/-! ## A017812.P9658108487371743708

`(97/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017812.P9658108487371743708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (97 / (n : ℚ) - 1) * a (n - 1)

end

end A017812.P9658108487371743708

namespace A017812

/-- `(97/n-1)*a(n-1)` -/
def P9658108487371743708.Spec : Prop :=
  ∀ n, P9658108487371743708.a n = (A017812 n : ℚ)

end A017812

/-! ## A017812.P12426347008873240082

`A017813(n)-a(n-1)` with `a(0)=1`
-/

namespace A017812.P12426347008873240082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017813 n - a (n - 1)

end

end A017812.P12426347008873240082

namespace A017812

/-- `A017813(n)-a(n-1)` -/
def P12426347008873240082.Spec : Prop :=
  ∀ n, P12426347008873240082.a n = A017812 n

end A017812

/-! ## A017812.P6512812871851770034

`∑[A017813(n)*A033999(n)]/A033999(n)`
-/

namespace A017812.P6512812871851770034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017813 n * A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A017812.P6512812871851770034

namespace A017812

/-- `∑[A017813(n)*A033999(n)]/A033999(n)` -/
def P6512812871851770034.Spec : Prop :=
  ∀ n, P6512812871851770034.a n = (A017812 n : ℚ)

end A017812

/-! ## A017812.P14370403882023960572

`∑{#}[n, A010964(#)*A010964(n-#)]`
-/

namespace A017812.P14370403882023960572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010964 k * A010964 (n - k)

end

end A017812.P14370403882023960572

namespace A017812

/-- `∑{#}[n, A010964(#)*A010964(n-#)]` -/
def P14370403882023960572.Spec : Prop :=
  ∀ n, P14370403882023960572.a n = A017812 n

end A017812

/-!
# A017813: Binomial coefficients C(97,n).

The programs for A017813, the canonical program `A017813.P9106637145332059488` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017813 has offset 0).

The definition of A017813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(97, n)` (program `A017813.P9106637145332059488`, by `A017813.P9106637145332059488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017813.P9106637145332059488

`C(97, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017813

/-- `C(97, n)` -/
def P9106637145332059488.Spec : Prop :=
  ∀ n, (P9106637145332059488.a n : ℤ) = A017813 n

theorem P9106637145332059488.correct : P9106637145332059488.Spec := by
  intro n
  simp only [A017813]

end A017813

/-! ## A017813.P12990007042976994083

`(98/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017813.P12990007042976994083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (98 / (n : ℚ) - 1) * a (n - 1)

end

end A017813.P12990007042976994083

namespace A017813

/-- `(98/n-1)*a(n-1)` -/
def P12990007042976994083.Spec : Prop :=
  ∀ n, P12990007042976994083.a n = (A017813 n : ℚ)

end A017813

/-! ## A017813.P5413367752066515237

`A017814(n)-a(n-1)` with `a(0)=1`
-/

namespace A017813.P5413367752066515237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017814 n - a (n - 1)

end

end A017813.P5413367752066515237

namespace A017813

/-- `A017814(n)-a(n-1)` -/
def P5413367752066515237.Spec : Prop :=
  ∀ n, P5413367752066515237.a n = A017813 n

end A017813

/-!
# A017814: Binomial coefficients C(98,n).

The programs for A017814, the canonical program `A017814.P11309670624103803004` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017814 has offset 0).

The definition of A017814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(98, n)` (program `A017814.P11309670624103803004`, by `A017814.P11309670624103803004.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017814.P11309670624103803004

`C(98, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017814

/-- `C(98, n)` -/
def P11309670624103803004.Spec : Prop :=
  ∀ n, (P11309670624103803004.a n : ℤ) = A017814 n

theorem P11309670624103803004.correct : P11309670624103803004.Spec := by
  intro n
  simp only [A017814]

end A017814

/-! ## A017814.P15352373057103670539

`(99/n-1)*a(n-1)` with `a(0)=1`
-/

namespace A017814.P15352373057103670539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (99 / (n : ℚ) - 1) * a (n - 1)

end

end A017814.P15352373057103670539

namespace A017814

/-- `(99/n-1)*a(n-1)` -/
def P15352373057103670539.Spec : Prop :=
  ∀ n, P15352373057103670539.a n = (A017814 n : ℚ)

end A017814

/-! ## A017814.P7927424893112692643

`A017815(n)-a(n-1)` with `a(0)=1`
-/

namespace A017814.P7927424893112692643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017815 n - a (n - 1)

end

end A017814.P7927424893112692643

namespace A017814

/-- `A017815(n)-a(n-1)` -/
def P7927424893112692643.Spec : Prop :=
  ∀ n, P7927424893112692643.a n = A017814 n

end A017814

/-! ## A017814.P10841201126794466281

`∑[∑[A017816(n)*A033999(n)]]/(-1)^n`
-/

namespace A017814.P10841201126794466281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017816 n * A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A017814.P10841201126794466281

namespace A017814

/-- `∑[∑[A017816(n)*A033999(n)]]/(-1)^n` -/
def P10841201126794466281.Spec : Prop :=
  ∀ n, P10841201126794466281.a n = (A017814 n : ℚ)

end A017814

/-! ## A017814.P14133203703835845806

`∑{#}[n, A017765(#)*A017765(n-#)]`
-/

namespace A017814.P14133203703835845806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A017765 k * A017765 (n - k)

end

end A017814.P14133203703835845806

namespace A017814

/-- `∑{#}[n, A017765(#)*A017765(n-#)]` -/
def P14133203703835845806.Spec : Prop :=
  ∀ n, P14133203703835845806.a n = A017814 n

end A017814

/-!
# A017815: Binomial coefficients C(99,n).

The programs for A017815, the canonical program `A017815.P9059897852929577988` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017815 has offset 0).

The definition of A017815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(99, n)` (program `A017815.P9059897852929577988`, by `A017815.P9059897852929577988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017815.P9059897852929577988

`C(99, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017815

/-- `C(99, n)` -/
def P9059897852929577988.Spec : Prop :=
  ∀ n, (P9059897852929577988.a n : ℤ) = A017815 n

theorem P9059897852929577988.correct : P9059897852929577988.Spec := by
  intro n
  simp only [A017815]

end A017815

/-! ## A017815.P2618095510156866029

`A017816(n)-a(n-1)` with `a(0)=1`
-/

namespace A017815.P2618095510156866029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017816 n - a (n - 1)

end

end A017815.P2618095510156866029

namespace A017815

/-- `A017816(n)-a(n-1)` -/
def P2618095510156866029.Spec : Prop :=
  ∀ n, P2618095510156866029.a n = A017815 n

end A017815

/-! ## A017815.P824815440644503052

`A096582(n+1)*a(n-1)/n` with `a(0)=1`
-/

namespace A017815.P824815440644503052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A096582 (n + 1) : ℚ) * a (n - 1) / (n : ℚ)

end

end A017815.P824815440644503052

namespace A017815

/-- `A096582(n+1)*a(n-1)/n` -/
def P824815440644503052.Spec : Prop :=
  ∀ n, P824815440644503052.a n = (A017815 n : ℚ)

end A017815

/-! ## A017815.P13732788392805396588

`abs(∑[A017816(n)*A033999(n)])`
-/

namespace A017815.P13732788392805396588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017816 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A017815.P13732788392805396588

namespace A017815

/-- `abs(∑[A017816(n)*A033999(n)])` -/
def P13732788392805396588.Spec : Prop :=
  ∀ n, P13732788392805396588.a n = A017815 n

end A017815

/-! ## A017815.P1339067284094220242

`∑[A017816(n)*A033999(n)]^(A000007(n)+1)/(-1)^n`
-/

namespace A017815.P1339067284094220242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017816 n * A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A000007 n + 1 : ℤ) / ((-1) ^ n : ℚ)

end

end A017815.P1339067284094220242

namespace A017815

/-- `∑[A017816(n)*A033999(n)]^(A000007(n)+1)/(-1)^n` -/
def P1339067284094220242.Spec : Prop :=
  ∀ n, P1339067284094220242.a n = (A017815 n : ℚ)

end A017815

/-!
# A017816: Binomial coefficients C(100,n).

The programs for A017816, the canonical program `A017816.P14800253551868020068` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017816 has offset 0).

The definition of A017816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(100, n)` (program `A017816.P14800253551868020068`, by `A017816.P14800253551868020068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017816.P14800253551868020068

`C(100, n)`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017816

/-- `C(100, n)` -/
def P14800253551868020068.Spec : Prop :=
  ∀ n, (P14800253551868020068.a n : ℤ) = A017816 n

theorem P14800253551868020068.correct : P14800253551868020068.Spec := by
  intro n
  simp only [A017816]

end A017816

/-! ## A017816.P7673776168132459194

`∑{#}[n, A017766(#)*A017766(n-#)]`
-/

namespace A017816.P7673776168132459194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A017766 k * A017766 (n - k)

end

end A017816.P7673776168132459194

namespace A017816

/-- `∑{#}[n, A017766(#)*A017766(n-#)]` -/
def P7673776168132459194.Spec : Prop :=
  ∀ n, P7673776168132459194.a n = A017816 n

end A017816

/-!
# A017817: a(n) = a(n-3) + a(n-4), with a(0)=1, a(1)=a(2)=0, a(3)=1.

The programs for A017817, the canonical program `A017817.P4242853834404923870` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017817 has offset 0).

The definition of A017817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-4)` (program `A017817.P4242853834404923870`, by `A017817.P4242853834404923870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017817.P4242853834404923870

`a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017817

/-- `a(n-3)+a(n-4)` -/
def P4242853834404923870.Spec : Prop :=
  ∀ n, (P4242853834404923870.a n : ℤ) = A017817 n

theorem P4242853834404923870.correct : P4242853834404923870.Spec := by
  intro n
  simp only [A017817]

end A017817

/-! ## A017817.P15165124464731636975

`ogf(1/(1-x^3-x^4))`
-/

namespace A017817.P15165124464731636975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -1, -1] n

end

end A017817.P15165124464731636975

namespace A017817

/-- `ogf(1/(1-x^3-x^4))` -/
def P15165124464731636975.Spec : Prop :=
  ∀ n, P15165124464731636975.a n = A017817 n

end A017817

/-! ## A017817.P17822027256815987260

`∑{#}[floor(n/3), C(#, n-3*#)]`
-/

namespace A017817.P17822027256815987260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (3 * k : ℤ)).toNat

end

end A017817.P17822027256815987260

namespace A017817

/-- `∑{#}[floor(n/3), C(#, n-3*#)]` -/
def P17822027256815987260.Spec : Prop :=
  ∀ n, (P17822027256815987260.a n : ℤ) = A017817 n

end A017817

/-! ## A017817.P11279192682184073925

`a(n-1)-(a(n-5)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A017817.P11279192682184073925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 3))

end

end A017817.P11279192682184073925

namespace A017817

/-- `a(n-1)-(a(n-5)-a(n-3))` -/
def P11279192682184073925.Spec : Prop :=
  ∀ n, P11279192682184073925.a n = A017817 n

end A017817

/-! ## A017817.P417418438959597712

`A127838(n+5)`
-/

namespace A017817.P417418438959597712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (n + 5)

end

end A017817.P417418438959597712

namespace A017817

/-- `A127838(n+5)` -/
def P417418438959597712.Spec : Prop :=
  ∀ n, P417418438959597712.a n = A017817 n

end A017817

/-! ## A017817.P9510403622658841097

`A079398(n+2)-A079398(n)`
-/

namespace A017817.P9510403622658841097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 2) - A079398 n

end

end A017817.P9510403622658841097

namespace A017817

/-- `A079398(n+2)-A079398(n)` -/
def P9510403622658841097.Spec : Prop :=
  ∀ n, P9510403622658841097.a n = A017817 n

end A017817

/-! ## A017817.P14343822522937244950

`Δ[A079398(n+4)]`
-/

namespace A017817.P14343822522937244950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017817.P14343822522937244950

namespace A017817

/-- `Δ[A079398(n+4)]` -/
def P14343822522937244950.Spec : Prop :=
  ∀ n, P14343822522937244950.a n = A017817 n

end A017817

/-! ## A017817.P6593750804228456212

`Δ[Δ[A123015(n+2)]]`
-/

namespace A017817.P6593750804228456212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123015 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017817.P6593750804228456212

namespace A017817

/-- `Δ[Δ[A123015(n+2)]]` -/
def P6593750804228456212.Spec : Prop :=
  ∀ n, P6593750804228456212.a n = A017817 n

end A017817

/-! ## A017817.P18300654132218548425

`∑{#}[n, (-1)^(n-#)*C(n, #)*A099099(#)]`
-/

namespace A017817.P18300654132218548425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A099099 k : ℚ)

end

end A017817.P18300654132218548425

namespace A017817

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A099099(#)]` -/
def P18300654132218548425.Spec : Prop :=
  ∀ n, P18300654132218548425.a n = (A017817 n : ℚ)

end A017817

/-! ## A017817.P8687349457894447056

`A306713(∑[n+3])`
-/

namespace A017817.P8687349457894447056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017817.P8687349457894447056

namespace A017817

/-- `A306713(∑[n+3])` -/
def P8687349457894447056.Spec : Prop :=
  ∀ n, P8687349457894447056.a n = A017817 n

end A017817

/-! ## A017817.P4283292917528855308

`Δ[A257062(∑[n+1])]`
-/

namespace A017817.P4283292917528855308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017817.P4283292917528855308

namespace A017817

/-- `Δ[A257062(∑[n+1])]` -/
def P4283292917528855308.Spec : Prop :=
  ∀ n, P4283292917528855308.a n = A017817 n

end A017817

/-!
# A017818: Expansion of 1/(1-x^3-x^4-x^5).

The programs for A017818, the canonical program `A017818.P15217725714723336800` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017818 has offset 0).

The definition of A017818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5))` (program `A017818.P15217725714723336800`, by `A017818.P15217725714723336800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017818.P13849372387873763939

`a(n-5)+a(n-4)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A017818.P13849372387873763939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  a (n - 5) + a (n - 4) + a (n - 3)

end

end A017818.P13849372387873763939

namespace A017818

/-- `a(n-5)+a(n-4)+a(n-3)` -/
def P13849372387873763939.Spec : Prop :=
  ∀ n, (P13849372387873763939.a n : ℤ) = A017818 n

end A017818

/-! ## A017818.P15217725714723336800

`ogf(1/(1-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017818

/-- `ogf(1/(1-x^3-x^4-x^5))` -/
def P15217725714723336800.Spec : Prop :=
  ∀ n, P15217725714723336800.a n = A017818 n

theorem P15217725714723336800.correct : P15217725714723336800.Spec := by
  intro n
  simp only [A017818]

end A017818

/-! ## A017818.P9194264812956641094

`A000931(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A017818.P9194264812956641094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1] fun n a =>
  A000931 n + a (n - 4)

end

end A017818.P9194264812956641094

namespace A017818

/-- `A000931(n)+a(n-4)` -/
def P9194264812956641094.Spec : Prop :=
  ∀ n, P9194264812956641094.a n = A017818 n

end A017818

/-! ## A017818.P1495224815745722118

`A017830(abs(3-n))+A017830(n)`
-/

namespace A017818.P1495224815745722118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017830 |3 - (n : ℤ)|.toNat + A017830 n

end

end A017818.P1495224815745722118

namespace A017818

/-- `A017830(abs(3-n))+A017830(n)` -/
def P1495224815745722118.Spec : Prop :=
  ∀ n, P1495224815745722118.a n = A017818 n

end A017818

/-! ## A017818.P11967221552560538722

`A182097(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A017818.P11967221552560538722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A182097 n - a (n - 2)

end

end A017818.P11967221552560538722

namespace A017818

/-- `A182097(n)-a(n-2)` -/
def P11967221552560538722.Spec : Prop :=
  ∀ n, P11967221552560538722.a n = A017818 n

end A017818

/-! ## A017818.P16676978685466892393

`A228362(n+1)+A000931(n)-A228361(n)`
-/

namespace A017818.P16676978685466892393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228362 (n + 1) + (A000931 n - A228361 n)

end

end A017818.P16676978685466892393

namespace A017818

/-- `A228362(n+1)+A000931(n)-A228361(n)` -/
def P16676978685466892393.Spec : Prop :=
  ∀ n, P16676978685466892393.a n = A017818 n

end A017818

/-! ## A017818.P6177262469263912884

`A228361(n+3)-A228362(n+3)`
-/

namespace A017818.P6177262469263912884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 3) - A228362 (n + 3)

end

end A017818.P6177262469263912884

namespace A017818

/-- `A228361(n+3)-A228362(n+3)` -/
def P6177262469263912884.Spec : Prop :=
  ∀ n, P6177262469263912884.a n = A017818 n

end A017818

/-! ## A017818.P14643821756738761049

`A134816(n+4)-A228362(n+3)`
-/

namespace A017818.P14643821756738761049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 4) - A228362 (n + 3)

end

end A017818.P14643821756738761049

namespace A017818

/-- `A134816(n+4)-A228362(n+3)` -/
def P14643821756738761049.Spec : Prop :=
  ∀ n, P14643821756738761049.a n = A017818 n

end A017818

/-! ## A017818.P335207106705028151

`Δ[A247907(n)-A003520(n)]`
-/

namespace A017818.P335207106705028151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247907 n - A003520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017818.P335207106705028151

namespace A017818

/-- `Δ[A247907(n)-A003520(n)]` -/
def P335207106705028151.Spec : Prop :=
  ∀ n, P335207106705028151.a n = A017818 n

end A017818

/-! ## A017818.P10410882186388579537

`∑[A000931(n)]-Δ[A193771(n+1)]`
-/

namespace A017818.P10410882186388579537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A017818.P10410882186388579537

namespace A017818

/-- `∑[A000931(n)]-Δ[A193771(n+1)]` -/
def P10410882186388579537.Spec : Prop :=
  ∀ n, P10410882186388579537.a n = A017818 n

end A017818

/-! ## A017818.P5685751217340738818

`Δ[A000931(n+9)-A193771(n+1)]`
-/

namespace A017818.P5685751217340738818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 9) - A193771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017818.P5685751217340738818

namespace A017818

/-- `Δ[A000931(n+9)-A193771(n+1)]` -/
def P5685751217340738818.Spec : Prop :=
  ∀ n, P5685751217340738818.a n = A017818 n

end A017818

/-!
# A017819: Expansion of 1/(1-x^3-x^4-x^5-x^6).

The programs for A017819, the canonical program `A017819.P12067242355053052781` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017819 has offset 0).

The definition of A017819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6))` (program `A017819.P12067242355053052781`, by `A017819.P12067242355053052781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017819.P6335422184828941681

`a(n-6)+a(n-5)+a(n-4)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A017819.P6335422184828941681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1] fun n a =>
  a (n - 6) + a (n - 5) + a (n - 4) + a (n - 3)

end

end A017819.P6335422184828941681

namespace A017819

/-- `a(n-6)+a(n-5)+a(n-4)+a(n-3)` -/
def P6335422184828941681.Spec : Prop :=
  ∀ n, (P6335422184828941681.a n : ℤ) = A017819 n

end A017819

/-! ## A017819.P12067242355053052781

`ogf(1/(1-x^3-x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017819

/-- `ogf(1/(1-x^3-x^4-x^5-x^6))` -/
def P12067242355053052781.Spec : Prop :=
  ∀ n, P12067242355053052781.a n = A017819 n

theorem P12067242355053052781.correct : P12067242355053052781.Spec := by
  intro n
  simp only [A017819]

end A017819

/-! ## A017819.P6276467038895304555

`A017898(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A017819.P6276467038895304555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A017898 n + a (n - 3)

end

end A017819.P6276467038895304555

namespace A017819

/-- `A017898(n)+a(n-3)` -/
def P6276467038895304555.Spec : Prop :=
  ∀ n, P6276467038895304555.a n = A017819 n

end A017819

/-! ## A017819.P5088953372507617760

`Δ[A003269(n)+a(n-3)]` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A017819.P5088953372507617760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n f1 =>
  A003269 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017819.P5088953372507617760

namespace A017819

/-- `Δ[A003269(n)+a(n-3)]` -/
def P5088953372507617760.Spec : Prop :=
  ∀ n, P5088953372507617760.a n = A017819 n

end A017819

/-! ## A017819.P16489927194369123138

`A077947(n)-∑[A145139(n)]`
-/

namespace A017819.P16489927194369123138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017819.P16489927194369123138

namespace A017819

/-- `A077947(n)-∑[A145139(n)]` -/
def P16489927194369123138.Spec : Prop :=
  ∀ n, P16489927194369123138.a n = A017819 n

end A017819

/-!
# A017820: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7).

The programs for A017820, the canonical program `A017820.P11702815140689764404` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017820 has offset 0).

The definition of A017820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6-x^7))` (program `A017820.P11702815140689764404`, by `A017820.P11702815140689764404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017820.P4065885553044292620

`a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=2`
-/

namespace A017820.P4065885553044292620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1, 2] fun n a =>
  a (n - 3) + a (n - 4) + a (n - 5) + a (n - 6) + a (n - 7)

end

end A017820.P4065885553044292620

namespace A017820

/-- `a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)` -/
def P4065885553044292620.Spec : Prop :=
  ∀ n, (P4065885553044292620.a n : ℤ) = A017820 n

end A017820

/-! ## A017820.P11702815140689764404

`ogf(1/(1-x^3-x^4-x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017820

/-- `ogf(1/(1-x^3-x^4-x^5-x^6-x^7))` -/
def P11702815140689764404.Spec : Prop :=
  ∀ n, P11702815140689764404.a n = A017820 n

theorem P11702815140689764404.correct : P11702815140689764404.Spec := by
  intro n
  simp only [A017820]

end A017820

/-! ## A017820.P18267683113482382162

`A048766(A372418(n))`
-/

namespace A017820.P18267683113482382162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A372418 n).toNat

end

end A017820.P18267683113482382162

namespace A017820

/-- `A048766(A372418(n))` -/
def P18267683113482382162.Spec : Prop :=
  ∀ n, P18267683113482382162.a n = A017820 n

end A017820

/-! ## A017820.P13382463190480804466

`Δ[A204166(A329356(n)+1)]`
-/

namespace A017820.P13382463190480804466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A329356 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017820.P13382463190480804466

namespace A017820

/-- `Δ[A204166(A329356(n)+1)]` -/
def P13382463190480804466.Spec : Prop :=
  ∀ n, P13382463190480804466.a n = A017820 n

end A017820

/-!
# A017821: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7-x^8).

The programs for A017821, the canonical program `A017821.P1371699482211588017` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017821 has offset 0).

The definition of A017821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8))` (program `A017821.P1371699482211588017`, by `A017821.P1371699482211588017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017821.P8941060839326583798

`a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=3`
-/

namespace A017821.P8941060839326583798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1, 2, 3] fun n a =>
  a (n - 3) + a (n - 4) + a (n - 5) + a (n - 6) + a (n - 7) + a (n - 8)

end

end A017821.P8941060839326583798

namespace A017821

/-- `a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)` -/
def P8941060839326583798.Spec : Prop :=
  ∀ n, (P8941060839326583798.a n : ℤ) = A017821 n

end A017821

/-! ## A017821.P1371699482211588017

`ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017821

/-- `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8))` -/
def P1371699482211588017.Spec : Prop :=
  ∀ n, P1371699482211588017.a n = A017821 n

theorem P1371699482211588017.correct : P1371699482211588017.Spec := by
  intro n
  simp only [A017821]

end A017821

/-! ## A017821.P15956274931670026628

`A180158(n)-a(n-1)` with `a(0)=1`
-/

namespace A017821.P15956274931670026628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180158 n - a (n - 1)

end

end A017821.P15956274931670026628

namespace A017821

/-- `A180158(n)-a(n-1)` -/
def P15956274931670026628.Spec : Prop :=
  ∀ n, P15956274931670026628.a n = A017821 n

end A017821

/-! ## A017821.P2285654651128748752

`abs(∑[A033999(n)*A180158(n)])`
-/

namespace A017821.P2285654651128748752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A180158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A017821.P2285654651128748752

namespace A017821

/-- `abs(∑[A033999(n)*A180158(n)])` -/
def P2285654651128748752.Spec : Prop :=
  ∀ n, P2285654651128748752.a n = A017821 n

end A017821

/-! ## A017821.P5899119992347524901

`∑[A033999(n)*A180158(n)]*A062157(n+1)`
-/

namespace A017821.P5899119992347524901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A180158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A062157 (n + 1)

end

end A017821.P5899119992347524901

namespace A017821

/-- `∑[A033999(n)*A180158(n)]*A062157(n+1)` -/
def P5899119992347524901.Spec : Prop :=
  ∀ n, P5899119992347524901.a n = A017821 n

end A017821

/-! ## A017821.P9716237676280488152

`(A004442(n)-n)*∑[A033999(n)*A180158(n)]`
-/

namespace A017821.P9716237676280488152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A180158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017821.P9716237676280488152

namespace A017821

/-- `(A004442(n)-n)*∑[A033999(n)*A180158(n)]` -/
def P9716237676280488152.Spec : Prop :=
  ∀ n, P9716237676280488152.a n = A017821 n

end A017821

/-! ## A017821.P4105617752696007808

`lcm(A014963(12*n+6), ∑[A033999(n)*A180158(n)])`
-/

namespace A017821.P4105617752696007808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A180158 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (12 * n + 6)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017821.P4105617752696007808

namespace A017821

/-- `lcm(A014963(12*n+6), ∑[A033999(n)*A180158(n)])` -/
def P4105617752696007808.Spec : Prop :=
  ∀ n, (P4105617752696007808.a n : ℤ) = A017821 n

end A017821

/-!
# A017822: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9).

The programs for A017822, the canonical program `A017822.P12066199510182735006` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017822 has offset 0).

The definition of A017822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9))` (program `A017822.P12066199510182735006`, by `A017822.P12066199510182735006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017822.P12066199510182735006

`ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017822

/-- `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9))` -/
def P12066199510182735006.Spec : Prop :=
  ∀ n, P12066199510182735006.a n = A017822 n

theorem P12066199510182735006.correct : P12066199510182735006.Spec := by
  intro n
  simp only [A017822]

end A017822

/-! ## A017822.P8501439435485607304

`A160993(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A017822.P8501439435485607304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A160993 n - a (n - 2)

end

end A017822.P8501439435485607304

namespace A017822

/-- `A160993(n)-a(n-2)` -/
def P8501439435485607304.Spec : Prop :=
  ∀ n, P8501439435485607304.a n = A017822 n

end A017822

/-! ## A017822.P13349662134832441383

`A003056(A008647(Δ[ceil(2^(n-1))]))`
-/

namespace A017822.P13349662134832441383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A008647 (f1 (n + 1) - f1 n).toNat).toNat

end

end A017822.P13349662134832441383

namespace A017822

/-- `A003056(A008647(Δ[ceil(2^(n-1))]))` -/
def P13349662134832441383.Spec : Prop :=
  ∀ n, P13349662134832441383.a n = A017822 n

end A017822

/-! ## A017822.P11394357843892330969

`ceil((A293137(A005578(n))-A110655(n))/4)`
-/

namespace A017822.P11394357843892330969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293137 (A005578 n).toNat - A110655 n : ℚ) / 4⌉

end

end A017822.P11394357843892330969

namespace A017822

/-- `ceil((A293137(A005578(n))-A110655(n))/4)` -/
def P11394357843892330969.Spec : Prop :=
  ∀ n, P11394357843892330969.a n = A017822 n

end A017822

/-! ## A017822.P6111541197544440678

`A003056(A081753(A339396(n)+A011782(n)))`
-/

namespace A017822.P6111541197544440678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A081753 (A339396 n + A011782 n).toNat).toNat

end

end A017822.P6111541197544440678

namespace A017822

/-- `A003056(A081753(A339396(n)+A011782(n)))` -/
def P6111541197544440678.Spec : Prop :=
  ∀ n, P6111541197544440678.a n = A017822 n

end A017822

/-!
# A017823: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10).

The programs for A017823, the canonical program `A017823.P1802734213830122644` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017823 has offset 0).

The definition of A017823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10))` (program `A017823.P1802734213830122644`, by `A017823.P1802734213830122644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017823.P1802734213830122644

`ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017823

/-- `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10))` -/
def P1802734213830122644.Spec : Prop :=
  ∀ n, P1802734213830122644.a n = A017823 n

theorem P1802734213830122644.correct : P1802734213830122644.Spec := by
  intro n
  simp only [A017823]

end A017823

/-! ## A017823.P18121786762212756196

`A017824(n)-A083025(A018079(n))`
-/

namespace A017823.P18121786762212756196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017824 n - A083025 (A018079 n).toNat

end

end A017823.P18121786762212756196

namespace A017823

/-- `A017824(n)-A083025(A018079(n))` -/
def P18121786762212756196.Spec : Prop :=
  ∀ n, P18121786762212756196.a n = A017823 n

end A017823

/-!
# A017824: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11).

The programs for A017824, the canonical program `A017824.P13541234154059104115` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017824 has offset 0).

The definition of A017824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11))` (program `A017824.P13541234154059104115`, by `A017824.P13541234154059104115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017824.P13541234154059104115

`ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017824

/-- `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11))` -/
def P13541234154059104115.Spec : Prop :=
  ∀ n, P13541234154059104115.a n = A017824 n

theorem P13541234154059104115.correct : P13541234154059104115.Spec := by
  intro n
  simp only [A017824]

end A017824

/-! ## A017824.P17419652928829036634

`A083025(A018079(n))+A017823(n)`
-/

namespace A017824.P17419652928829036634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A018079 n).toNat + A017823 n

end

end A017824.P17419652928829036634

namespace A017824

/-- `A083025(A018079(n))+A017823(n)` -/
def P17419652928829036634.Spec : Prop :=
  ∀ n, P17419652928829036634.a n = A017824 n

end A017824

/-! ## A017824.P18283430230905983336

`A078012(n)-A014081(A215411(n))`
-/

namespace A017824.P18283430230905983336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - A014081 (A215411 n).toNat

end

end A017824.P18283430230905983336

namespace A017824

/-- `A078012(n)-A014081(A215411(n))` -/
def P18283430230905983336.Spec : Prop :=
  ∀ n, P18283430230905983336.a n = A017824 n

end A017824

/-! ## A017824.P3498020180714538961

`A017825(n)-A107846(A187257(n))`
-/

namespace A017824.P3498020180714538961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017825 n - A107846 (A187257 n).toNat

end

end A017824.P3498020180714538961

namespace A017824

/-- `A017825(n)-A107846(A187257(n))` -/
def P3498020180714538961.Spec : Prop :=
  ∀ n, P3498020180714538961.a n = A017824 n

end A017824

/-! ## A017824.P6508842591491641437

`A078012(n)-∑[A107846(A187257(n))]`
-/

namespace A017824.P6508842591491641437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A187257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017824.P6508842591491641437

namespace A017824

/-- `A078012(n)-∑[A107846(A187257(n))]` -/
def P6508842591491641437.Spec : Prop :=
  ∀ n, P6508842591491641437.a n = A017824 n

end A017824

/-!
# A017825: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12).

The programs for A017825, the canonical program `A017825.P18192056126963884728` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017825 has offset 0).

The definition of A017825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` (program `A017825.P18192056126963884728`, by `A017825.P18192056126963884728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017825.P18192056126963884728

`ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017825

/-- `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` -/
def P18192056126963884728.Spec : Prop :=
  ∀ n, P18192056126963884728.a n = A017825 n

theorem P18192056126963884728.correct : P18192056126963884728.Spec := by
  intro n
  simp only [A017825]

end A017825

/-! ## A017825.P3697973850334800745

`A000196(A035435(n)+A007326(n+1))`
-/

namespace A017825.P3697973850334800745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A035435 n + A007326 (n + 1)).toNat

end

end A017825.P3697973850334800745

namespace A017825

/-- `A000196(A035435(n)+A007326(n+1))` -/
def P3697973850334800745.Spec : Prop :=
  ∀ n, P3697973850334800745.a n = A017825 n

end A017825

/-! ## A017825.P1223767872326975287

`A078012(n)-A044940(A077854(n))`
-/

namespace A017825.P1223767872326975287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - A044940 (A077854 n).toNat

end

end A017825.P1223767872326975287

namespace A017825

/-- `A078012(n)-A044940(A077854(n))` -/
def P1223767872326975287.Spec : Prop :=
  ∀ n, P1223767872326975287.a n = A017825 n

end A017825

/-! ## A017825.P17974539114443443503

`A078012(n)-A226463(A115981(n))`
-/

namespace A017825.P17974539114443443503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - A226463 (A115981 n).toNat

end

end A017825.P17974539114443443503

namespace A017825

/-- `A078012(n)-A226463(A115981(n))` -/
def P17974539114443443503.Spec : Prop :=
  ∀ n, P17974539114443443503.a n = A017825 n

end A017825

/-! ## A017825.P7169384344139294320

`A078012(n)-A157928(A038141(n+1))`
-/

namespace A017825.P7169384344139294320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - A157928 (A038141 (n + 1)).toNat

end

end A017825.P7169384344139294320

namespace A017825

/-- `A078012(n)-A157928(A038141(n+1))` -/
def P7169384344139294320.Spec : Prop :=
  ∀ n, P7169384344139294320.a n = A017825 n

end A017825

/-!
# A017826: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13).

The programs for A017826, the canonical program `A017826.P14662907660976290951` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017826 has offset 0).

The definition of A017826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` (program `A017826.P14662907660976290951`, by `A017826.P14662907660976290951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017826.P14662907660976290951

`ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017826

/-- `ogf(1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` -/
def P14662907660976290951.Spec : Prop :=
  ∀ n, P14662907660976290951.a n = A017826 n

theorem P14662907660976290951.correct : P14662907660976290951.Spec := by
  intro n
  simp only [A017826]

end A017826

/-! ## A017826.P988383200137108750

`A000196(A005206(A277253(n))²)`
-/

namespace A017826.P988383200137108750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005206 (A277253 n).toNat ^ 2).toNat

end

end A017826.P988383200137108750

namespace A017826

/-- `A000196(A005206(A277253(n))²)` -/
def P988383200137108750.Spec : Prop :=
  ∀ n, P988383200137108750.a n = A017826 n

end A017826

/-! ## A017826.P10154709885311128701

`A078012(n)-A185284(A056827(n))`
-/

namespace A017826.P10154709885311128701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - A185284 (A056827 n).toNat

end

end A017826.P10154709885311128701

namespace A017826

/-- `A078012(n)-A185284(A056827(n))` -/
def P10154709885311128701.Spec : Prop :=
  ∀ n, P10154709885311128701.a n = A017826 n

end A017826

/-! ## A017826.P17413097783546598891

`A078012(n)-A277627(A174617(n))`
-/

namespace A017826.P17413097783546598891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n - A277627 (A174617 n).toNat

end

end A017826.P17413097783546598891

namespace A017826

/-- `A078012(n)-A277627(A174617(n))` -/
def P17413097783546598891.Spec : Prop :=
  ∀ n, P17413097783546598891.a n = A017826 n

end A017826

/-!
# A017827: a(n) = a(n-4) + a(n-5), with a(0)=1, a(1)=a(2)=a(3)=0, a(4)=1.

The programs for A017827, the canonical program `A017827.P16570646416445995920` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017827 has offset 0).

The definition of A017827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-5)` (program `A017827.P16570646416445995920`, by `A017827.P16570646416445995920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017827.P16570646416445995920

`a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017827

/-- `a(n-4)+a(n-5)` -/
def P16570646416445995920.Spec : Prop :=
  ∀ n, (P16570646416445995920.a n : ℤ) = A017827 n

theorem P16570646416445995920.correct : P16570646416445995920.Spec := by
  intro n
  simp only [A017827]

end A017827

/-! ## A017827.P199157791201067047

`ogf(1/(1-x^4-x^5))`
-/

namespace A017827.P199157791201067047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, 0, -1, -1] n

end

end A017827.P199157791201067047

namespace A017827

/-- `ogf(1/(1-x^4-x^5))` -/
def P199157791201067047.Spec : Prop :=
  ∀ n, P199157791201067047.a n = A017827 n

end A017827

/-! ## A017827.P15601370048878009037

`∑{#}[floor(n/4), C(#, n-4*#)]`
-/

namespace A017827.P15601370048878009037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (4 * k : ℤ)).toNat

end

end A017827.P15601370048878009037

namespace A017827

/-- `∑{#}[floor(n/4), C(#, n-4*#)]` -/
def P15601370048878009037.Spec : Prop :=
  ∀ n, (P15601370048878009037.a n : ℤ) = A017827 n

end A017827

/-! ## A017827.P2970085876595396666

`A127839(n+6)`
-/

namespace A017827.P2970085876595396666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 6)

end

end A017827.P2970085876595396666

namespace A017827

/-- `A127839(n+6)` -/
def P2970085876595396666.Spec : Prop :=
  ∀ n, P2970085876595396666.a n = A017827 n

end A017827

/-! ## A017827.P3991165561241316184

`A124789(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A017827.P3991165561241316184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A124789 n - a (n - 2)

end

end A017827.P3991165561241316184

namespace A017827

/-- `A124789(n)-a(n-2)` -/
def P3991165561241316184.Spec : Prop :=
  ∀ n, P3991165561241316184.a n = A017827 n

end A017827

/-! ## A017827.P2185336312543037014

`A103372(n+2)-A124789(n+3)`
-/

namespace A017827.P2185336312543037014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 2) - A124789 (n + 3)

end

end A017827.P2185336312543037014

namespace A017827

/-- `A103372(n+2)-A124789(n+3)` -/
def P2185336312543037014.Spec : Prop :=
  ∀ n, P2185336312543037014.a n = A017827 n

end A017827

/-! ## A017827.P15143563766097860980

`Δ[A103372(n+5)]`
-/

namespace A017827.P15143563766097860980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017827.P15143563766097860980

namespace A017827

/-- `Δ[A103372(n+5)]` -/
def P15143563766097860980.Spec : Prop :=
  ∀ n, P15143563766097860980.a n = A017827 n

end A017827

/-! ## A017827.P13191364051267406719

`Δ[A124789(n+8)]`
-/

namespace A017827.P13191364051267406719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017827.P13191364051267406719

namespace A017827

/-- `Δ[A124789(n+8)]` -/
def P13191364051267406719.Spec : Prop :=
  ∀ n, P13191364051267406719.a n = A017827 n

end A017827

/-! ## A017827.P4309789924525151268

`Δ[Δ[A321025(n+5)]]`
-/

namespace A017827.P4309789924525151268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321025 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017827.P4309789924525151268

namespace A017827

/-- `Δ[Δ[A321025(n+5)]]` -/
def P4309789924525151268.Spec : Prop :=
  ∀ n, P4309789924525151268.a n = A017827 n

end A017827

/-! ## A017827.P11810027470738150216

`Δ[abs(A124746(n+8))]`
-/

namespace A017827.P11810027470738150216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124746 (n + 8)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017827.P11810027470738150216

namespace A017827

/-- `Δ[abs(A124746(n+8))]` -/
def P11810027470738150216.Spec : Prop :=
  ∀ n, P11810027470738150216.a n = A017827 n

end A017827

/-! ## A017827.P11315116408203841813

`∑{#}[n, (-1)^(n-#)*C(n, #)*A099131(#)]`
-/

namespace A017827.P11315116408203841813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A099131 k : ℚ)

end

end A017827.P11315116408203841813

namespace A017827

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A099131(#)]` -/
def P11315116408203841813.Spec : Prop :=
  ∀ n, P11315116408203841813.a n = (A017827 n : ℚ)

end A017827

/-! ## A017827.P16468545655700367020

`A306713(∑[n+4]+2)`
-/

namespace A017827.P16468545655700367020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A017827.P16468545655700367020

namespace A017827

/-- `A306713(∑[n+4]+2)` -/
def P16468545655700367020.Spec : Prop :=
  ∀ n, P16468545655700367020.a n = A017827 n

end A017827

/-!
# A017828: Expansion of 1/(1 - x^4 - x^5 - x^6).

The programs for A017828, the canonical program `A017828.P10472980881840956005` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017828 has offset 0).

The definition of A017828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6))` (program `A017828.P10472980881840956005`, by `A017828.P10472980881840956005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017828.P3073453031850862621

`a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A017828.P3073453031850862621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1] fun n a =>
  a (n - 4) + a (n - 5) + a (n - 6)

end

end A017828.P3073453031850862621

namespace A017828

/-- `a(n-4)+a(n-5)+a(n-6)` -/
def P3073453031850862621.Spec : Prop :=
  ∀ n, (P3073453031850862621.a n : ℤ) = A017828 n

end A017828

/-! ## A017828.P10472980881840956005

`ogf(1/(1-x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017828

/-- `ogf(1/(1-x^4-x^5-x^6))` -/
def P10472980881840956005.Spec : Prop :=
  ∀ n, P10472980881840956005.a n = A017828 n

theorem P10472980881840956005.correct : P10472980881840956005.Spec := by
  intro n
  simp only [A017828]

end A017828

/-! ## A017828.P55282455321153454

`A022830(n)-A266174(A011782(n))`
-/

namespace A017828.P55282455321153454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022830 n - A266174 (A011782 n).toNat

end

end A017828.P55282455321153454

namespace A017828

/-- `A022830(n)-A266174(A011782(n))` -/
def P55282455321153454.Spec : Prop :=
  ∀ n, P55282455321153454.a n = A017828 n

end A017828

/-! ## A017828.P4296272847121073919

`A017829(A187829(n+1))-Δ[A017836(n)]`
-/

namespace A017828.P4296272847121073919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017829 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A017828.P4296272847121073919

namespace A017828

/-- `A017829(A187829(n+1))-Δ[A017836(n)]` -/
def P4296272847121073919.Spec : Prop :=
  ∀ n, P4296272847121073919.a n = A017828 n

end A017828

/-! ## A017828.P9218408529346149527

`C(A358640(n), A115621(A270339(2*n+1)))`
-/

namespace A017828.P9218408529346149527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358640 n).toNat (A115621 (A270339 (2 * n + 1)).toNat).toNat

end

end A017828.P9218408529346149527

namespace A017828

/-- `C(A358640(n), A115621(A270339(2*n+1)))` -/
def P9218408529346149527.Spec : Prop :=
  ∀ n, (P9218408529346149527.a n : ℤ) = A017828 n

end A017828

/-!
# A017829: Expansion of 1/(1 - x^4 - x^5 - x^6 - x^7).

The programs for A017829, the canonical program `A017829.P13671344226861298235` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017829 has offset 0).

The definition of A017829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7))` (program `A017829.P13671344226861298235`, by `A017829.P13671344226861298235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017829.P3603316492231981025

`a(n-4)+a(n-5)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A017829.P3603316492231981025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1, 1] fun n a =>
  a (n - 4) + a (n - 5) + a (n - 6) + a (n - 7)

end

end A017829.P3603316492231981025

namespace A017829

/-- `a(n-4)+a(n-5)+a(n-6)+a(n-7)` -/
def P3603316492231981025.Spec : Prop :=
  ∀ n, (P3603316492231981025.a n : ℤ) = A017829 n

end A017829

/-! ## A017829.P13671344226861298235

`ogf(1/(1-x^4-x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017829

/-- `ogf(1/(1-x^4-x^5-x^6-x^7))` -/
def P13671344226861298235.Spec : Prop :=
  ∀ n, P13671344226861298235.a n = A017829 n

theorem P13671344226861298235.correct : P13671344226861298235.Spec := by
  intro n
  simp only [A017829]

end A017829

/-!
# A017830: Expansion of 1/(1-x^4-x^5-x^6-x^7-x^8).

The programs for A017830, the canonical program `A017830.P14796567076091573829` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017830 has offset 0).

The definition of A017830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8))` (program `A017830.P14796567076091573829`, by `A017830.P14796567076091573829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017830.P3352382148669805325

`a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1`
-/

namespace A017830.P3352382148669805325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1, 1, 1] fun n a =>
  a (n - 4) + a (n - 5) + a (n - 6) + a (n - 7) + a (n - 8)

end

end A017830.P3352382148669805325

namespace A017830

/-- `a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)` -/
def P3352382148669805325.Spec : Prop :=
  ∀ n, (P3352382148669805325.a n : ℤ) = A017830 n

end A017830

/-! ## A017830.P14796567076091573829

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017830

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8))` -/
def P14796567076091573829.Spec : Prop :=
  ∀ n, P14796567076091573829.a n = A017830 n

theorem P14796567076091573829.correct : P14796567076091573829.Spec := by
  intro n
  simp only [A017830]

end A017830

/-! ## A017830.P3310422447588613581

`A079955(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A017830.P3310422447588613581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A079955 n - a (n - 2)

end

end A017830.P3310422447588613581

namespace A017830

/-- `A079955(n)-a(n-2)` -/
def P3310422447588613581.Spec : Prop :=
  ∀ n, P3310422447588613581.a n = A017830 n

end A017830

/-! ## A017830.P18073071023154944870

`A017818(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A017830.P18073071023154944870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A017818 n - a (n - 3)

end

end A017830.P18073071023154944870

namespace A017830

/-- `A017818(n)-a(n-3)` -/
def P18073071023154944870.Spec : Prop :=
  ∀ n, P18073071023154944870.a n = A017830 n

end A017830

/-! ## A017830.P15359366543799409538

`A079955(n)+∑[A017818(n)-A079955(n)]`
-/

namespace A017830.P15359366543799409538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 n - A079955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017830.P15359366543799409538

namespace A017830

/-- `A079955(n)+∑[A017818(n)-A079955(n)]` -/
def P15359366543799409538.Spec : Prop :=
  ∀ n, P15359366543799409538.a n = A017830 n

end A017830

/-! ## A017830.P7275956714105165573

`2*A233522(n)-A247907(n)`
-/

namespace A017830.P7275956714105165573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233522 n - A247907 n

end

end A017830.P7275956714105165573

namespace A017830

/-- `2*A233522(n)-A247907(n)` -/
def P7275956714105165573.Spec : Prop :=
  ∀ n, P7275956714105165573.a n = A017830 n

end A017830

/-! ## A017830.P18219517703347336664

`Δ[A247907(n)-A233522(n)]`
-/

namespace A017830.P18219517703347336664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247907 n - A233522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017830.P18219517703347336664

namespace A017830

/-- `Δ[A247907(n)-A233522(n)]` -/
def P18219517703347336664.Spec : Prop :=
  ∀ n, P18219517703347336664.a n = A017830 n

end A017830

/-! ## A017830.P14604629171976667763

`Δ[A233522(n+4)-Δ[A233522(n+7)]]`
-/

namespace A017830.P14604629171976667763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (n + 4) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017830.P14604629171976667763

namespace A017830

/-- `Δ[A233522(n+4)-Δ[A233522(n+7)]]` -/
def P14604629171976667763.Spec : Prop :=
  ∀ n, P14604629171976667763.a n = A017830 n

end A017830

/-!
# A017831: Expansion of 1/(1-x^4-x^5-x^6-x^7-x^8-x^9).

The programs for A017831, the canonical program `A017831.P14633164431283113266` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017831 has offset 0).

The definition of A017831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9))` (program `A017831.P14633164431283113266`, by `A017831.P14633164431283113266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017831.P310981033430966634

`a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=2`
-/

namespace A017831.P310981033430966634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1, 1, 1, 2] fun n a =>
  a (n - 4) + a (n - 5) + a (n - 6) + a (n - 7) + a (n - 8) + a (n - 9)

end

end A017831.P310981033430966634

namespace A017831

/-- `a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)+a(n-9)` -/
def P310981033430966634.Spec : Prop :=
  ∀ n, (P310981033430966634.a n : ℤ) = A017831 n

end A017831

/-! ## A017831.P14633164431283113266

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017831

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9))` -/
def P14633164431283113266.Spec : Prop :=
  ∀ n, P14633164431283113266.a n = A017831 n

theorem P14633164431283113266.correct : P14633164431283113266.Spec := by
  intro n
  simp only [A017831]

end A017831

/-! ## A017831.P5045923391681347763

`A029363(eq[A029359(n), A029378(n)])`
-/

namespace A017831.P5045923391681347763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029363 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A017831.P5045923391681347763

namespace A017831

/-- `A029363(eq[A029359(n), A029378(n)])` -/
def P5045923391681347763.Spec : Prop :=
  ∀ n, P5045923391681347763.a n = A017831 n

end A017831

/-! ## A017831.P11927239590979468359

`A017898(n)-A139352(A033483(n+2))`
-/

namespace A017831.P11927239590979468359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - A139352 (A033483 (n + 2)).toNat

end

end A017831.P11927239590979468359

namespace A017831

/-- `A017898(n)-A139352(A033483(n+2))` -/
def P11927239590979468359.Spec : Prop :=
  ∀ n, P11927239590979468359.a n = A017831 n

end A017831

/-!
# A017832: Expansion of 1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10).

The programs for A017832, the canonical program `A017832.P12774743773115291553` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017832 has offset 0).

The definition of A017832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10))` (program `A017832.P12774743773115291553`, by `A017832.P12774743773115291553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017832.P12774743773115291553

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017832

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10))` -/
def P12774743773115291553.Spec : Prop :=
  ∀ n, P12774743773115291553.a n = A017832 n

theorem P12774743773115291553.correct : P12774743773115291553.Spec := by
  intro n
  simp only [A017832]

end A017832

/-! ## A017832.P5178310117082258337

`A176844(A339408(n)+1)`
-/

namespace A017832.P5178310117082258337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176844 (A339408 n + 1).toNat

end

end A017832.P5178310117082258337

namespace A017832

/-- `A176844(A339408(n)+1)` -/
def P5178310117082258337.Spec : Prop :=
  ∀ n, P5178310117082258337.a n = A017832 n

end A017832

/-! ## A017832.P13566636980024377857

`A017833(n)-Δ[A139352(A033483(n))]`
-/

namespace A017832.P13566636980024377857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A033483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017833 n - (f1 (n + 1) - f1 n)

end

end A017832.P13566636980024377857

namespace A017832

/-- `A017833(n)-Δ[A139352(A033483(n))]` -/
def P13566636980024377857.Spec : Prop :=
  ∀ n, P13566636980024377857.a n = A017832 n

end A017832

/-! ## A017832.P15977081517146672483

`A017898(n)-A139352(A033483(n+1))`
-/

namespace A017832.P15977081517146672483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - A139352 (A033483 (n + 1)).toNat

end

end A017832.P15977081517146672483

namespace A017832

/-- `A017898(n)-A139352(A033483(n+1))` -/
def P15977081517146672483.Spec : Prop :=
  ∀ n, P15977081517146672483.a n = A017832 n

end A017832

/-!
# A017833: Expansion of 1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11).

The programs for A017833, the canonical program `A017833.P5950895287544754941` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017833 has offset 0).

The definition of A017833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11))` (program `A017833.P5950895287544754941`, by `A017833.P5950895287544754941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017833.P5950895287544754941

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017833

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11))` -/
def P5950895287544754941.Spec : Prop :=
  ∀ n, P5950895287544754941.a n = A017833 n

theorem P5950895287544754941.correct : P5950895287544754941.Spec := by
  intro n
  simp only [A017833]

end A017833

/-! ## A017833.P17930521278580081539

`A017898(n)-A139352(A033483(n))`
-/

namespace A017833.P17930521278580081539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - A139352 (A033483 n).toNat

end

end A017833.P17930521278580081539

namespace A017833

/-- `A017898(n)-A139352(A033483(n))` -/
def P17930521278580081539.Spec : Prop :=
  ∀ n, P17930521278580081539.a n = A017833 n

end A017833

/-! ## A017833.P5849558990014319846

`Δ[A003269(n)]-A139352(A033483(n))`
-/

namespace A017833.P5849558990014319846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A139352 (A033483 n).toNat

end

end A017833.P5849558990014319846

namespace A017833

/-- `Δ[A003269(n)]-A139352(A033483(n))` -/
def P5849558990014319846.Spec : Prop :=
  ∀ n, P5849558990014319846.a n = A017833 n

end A017833

/-! ## A017833.P9535334397239483670

`A145153(∑[n+2])-A139352(A033483(n))`
-/

namespace A017833.P9535334397239483670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (∑ j ∈ Finset.range (n + 1), f1 j) - A139352 (A033483 n).toNat

end

end A017833.P9535334397239483670

namespace A017833

/-- `A145153(∑[n+2])-A139352(A033483(n))` -/
def P9535334397239483670.Spec : Prop :=
  ∀ n, P9535334397239483670.a n = A017833 n

end A017833

/-! ## A017833.P6824372585185230757

`A176508(∑[n+1]+1)-A139352(A033483(n))`
-/

namespace A017833.P6824372585185230757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176508 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A139352 (A033483 n).toNat

end

end A017833.P6824372585185230757

namespace A017833

/-- `A176508(∑[n+1]+1)-A139352(A033483(n))` -/
def P6824372585185230757.Spec : Prop :=
  ∀ n, P6824372585185230757.a n = A017833 n

end A017833

/-!
# A017834: Expansion of 1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12).

The programs for A017834, the canonical program `A017834.P5837852989110261747` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017834 has offset 0).

The definition of A017834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` (program `A017834.P5837852989110261747`, by `A017834.P5837852989110261747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017834.P5837852989110261747

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017834

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` -/
def P5837852989110261747.Spec : Prop :=
  ∀ n, P5837852989110261747.a n = A017834 n

theorem P5837852989110261747.correct : P5837852989110261747.Spec := by
  intro n
  simp only [A017834]

end A017834

/-! ## A017834.P8130194868758509090

`A017835(n)-A185135(A259784(n))`
-/

namespace A017834.P8130194868758509090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017835 n - A185135 (A259784 n).toNat

end

end A017834.P8130194868758509090

namespace A017834

/-- `A017835(n)-A185135(A259784(n))` -/
def P8130194868758509090.Spec : Prop :=
  ∀ n, P8130194868758509090.a n = A017834 n

end A017834

/-!
# A017835: Expansion of 1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13).

The programs for A017835, the canonical program `A017835.P4217234171644886384` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017835 has offset 0).

The definition of A017835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` (program `A017835.P4217234171644886384`, by `A017835.P4217234171644886384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017835.P4217234171644886384

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017835

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` -/
def P4217234171644886384.Spec : Prop :=
  ∀ n, P4217234171644886384.a n = A017835 n

theorem P4217234171644886384.correct : P4217234171644886384.Spec := by
  intro n
  simp only [A017835]

end A017835

/-! ## A017835.P1781659676492334844

`A227568(A103221(A190502(n)))`
-/

namespace A017835.P1781659676492334844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A103221 (A190502 n).toNat).toNat

end

end A017835.P1781659676492334844

namespace A017835

/-- `A227568(A103221(A190502(n)))` -/
def P1781659676492334844.Spec : Prop :=
  ∀ n, P1781659676492334844.a n = A017835 n

end A017835

/-! ## A017835.P9822896510798008414

`A017898(n)-A044940(A011782(n))`
-/

namespace A017835.P9822896510798008414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - A044940 (A011782 n).toNat

end

end A017835.P9822896510798008414

namespace A017835

/-- `A017898(n)-A044940(A011782(n))` -/
def P9822896510798008414.Spec : Prop :=
  ∀ n, P9822896510798008414.a n = A017835 n

end A017835

/-! ## A017835.P16543090019591887925

`A017836(n)-A101605(A001979(n))`
-/

namespace A017835.P16543090019591887925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017836 n - A101605 (A001979 n).toNat

end

end A017835.P16543090019591887925

namespace A017835

/-- `A017836(n)-A101605(A001979(n))` -/
def P16543090019591887925.Spec : Prop :=
  ∀ n, P16543090019591887925.a n = A017835 n

end A017835

/-! ## A017835.P3412069085060857929

`A017898(n)-A318405(A185236(n))`
-/

namespace A017835.P3412069085060857929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - A318405 (A185236 n).toNat

end

end A017835.P3412069085060857929

namespace A017835

/-- `A017898(n)-A318405(A185236(n))` -/
def P3412069085060857929.Spec : Prop :=
  ∀ n, P3412069085060857929.a n = A017835 n

end A017835

/-!
# A017836: Expansion of 1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14).

The programs for A017836, the canonical program `A017836.P14205722484576357945` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017836 has offset 0).

The definition of A017836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` (program `A017836.P14205722484576357945`, by `A017836.P14205722484576357945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017836.P14205722484576357945

`ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017836

/-- `ogf(1/(1-x^4-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` -/
def P14205722484576357945.Spec : Prop :=
  ∀ n, P14205722484576357945.a n = A017836 n

theorem P14205722484576357945.correct : P14205722484576357945.Spec := by
  intro n
  simp only [A017836]

end A017836

/-! ## A017836.P412932279896559481

`A111660(2*A017898(n))`
-/

namespace A017836.P412932279896559481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A017898 n).toNat

end

end A017836.P412932279896559481

namespace A017836

/-- `A111660(2*A017898(n))` -/
def P412932279896559481.Spec : Prop :=
  ∀ n, P412932279896559481.a n = A017836 n

end A017836

/-! ## A017836.P12019870224721710692

`A320278(A192804(n))+C(2, n+2)`
-/

namespace A017836.P12019870224721710692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A192804 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A017836.P12019870224721710692

namespace A017836

/-- `A320278(A192804(n))+C(2, n+2)` -/
def P12019870224721710692.Spec : Prop :=
  ∀ n, P12019870224721710692.a n = A017836 n

end A017836

/-! ## A017836.P3635103669916718688

`A101605(A001979(n))+A017835(n)`
-/

namespace A017836.P3635103669916718688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A001979 n).toNat + A017835 n

end

end A017836.P3635103669916718688

namespace A017836

/-- `A101605(A001979(n))+A017835(n)` -/
def P3635103669916718688.Spec : Prop :=
  ∀ n, P3635103669916718688.a n = A017836 n

end A017836

/-!
# A017837: Expansion of 1/(1 - x^5 - x^6).

The programs for A017837, the canonical program `A017837.P14193813535359862271` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017837 has offset 0).

The definition of A017837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6))` (program `A017837.P14193813535359862271`, by `A017837.P14193813535359862271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017837.P14350292079028532475

`a(n-6)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A017837.P14350292079028532475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1] fun n a =>
  a (n - 6) + a (n - 5)

end

end A017837.P14350292079028532475

namespace A017837

/-- `a(n-6)+a(n-5)` -/
def P14350292079028532475.Spec : Prop :=
  ∀ n, (P14350292079028532475.a n : ℤ) = A017837 n

end A017837

/-! ## A017837.P14193813535359862271

`ogf(1/(1-x^5-x^6))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017837

/-- `ogf(1/(1-x^5-x^6))` -/
def P14193813535359862271.Spec : Prop :=
  ∀ n, P14193813535359862271.a n = A017837 n

theorem P14193813535359862271.correct : P14193813535359862271.Spec := by
  intro n
  simp only [A017837]

end A017837

/-! ## A017837.P7951509493385046876

`A127840(n+7)`
-/

namespace A017837.P7951509493385046876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (n + 7)

end

end A017837.P7951509493385046876

namespace A017837

/-- `A127840(n+7)` -/
def P7951509493385046876.Spec : Prop :=
  ∀ n, P7951509493385046876.a n = A017837 n

end A017837

/-! ## A017837.P12889803665272263190

`gcd(A000038(n), A127840(A020719(n)))`
-/

namespace A017837.P12889803665272263190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127840 (A020719 n).toNat)

end

end A017837.P12889803665272263190

namespace A017837

/-- `gcd(A000038(n), A127840(A020719(n)))` -/
def P12889803665272263190.Spec : Prop :=
  ∀ n, (P12889803665272263190.a n : ℤ) = A017837 n

end A017837

/-! ## A017837.P1969459525634762002

`Δ[A103373(n+6)]`
-/

namespace A017837.P1969459525634762002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017837.P1969459525634762002

namespace A017837

/-- `Δ[A103373(n+6)]` -/
def P1969459525634762002.Spec : Prop :=
  ∀ n, P1969459525634762002.a n = A017837 n

end A017837

/-! ## A017837.P7503590847256078116

`abs(Δ[A103373(A020715(n))])`
-/

namespace A017837.P7503590847256078116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A017837.P7503590847256078116

namespace A017837

/-- `abs(Δ[A103373(A020715(n))])` -/
def P7503590847256078116.Spec : Prop :=
  ∀ n, P7503590847256078116.a n = A017837 n

end A017837

/-! ## A017837.P8983790660314439852

`A103373(n+7)-A103373(n+6)`
-/

namespace A017837.P8983790660314439852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (n + 7) - A103373 (n + 6)

end

end A017837.P8983790660314439852

namespace A017837

/-- `A103373(n+7)-A103373(n+6)` -/
def P8983790660314439852.Spec : Prop :=
  ∀ n, P8983790660314439852.a n = A017837 n

end A017837

/-! ## A017837.P8128666284891431312

`∑{#}[n, (-1)^(n-#)*C(n, #)*A107025(#)]`
-/

namespace A017837.P8128666284891431312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A107025 k : ℚ)

end

end A017837.P8128666284891431312

namespace A017837

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A107025(#)]` -/
def P8128666284891431312.Spec : Prop :=
  ∀ n, P8128666284891431312.a n = (A017837 n : ℚ)

end A017837

/-! ## A017837.P655691146822119267

`A306713(∑[n+5]+5)`
-/

namespace A017837.P655691146822119267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A017837.P655691146822119267

namespace A017837

/-- `A306713(∑[n+5]+5)` -/
def P655691146822119267.Spec : Prop :=
  ∀ n, P655691146822119267.a n = A017837 n

end A017837

/-!
# A017838: Expansion of 1/(1-x^5-x^6-x^7).

The programs for A017838, the canonical program `A017838.P273320820877140337` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017838 has offset 0).

The definition of A017838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7))` (program `A017838.P273320820877140337`, by `A017838.P273320820877140337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017838.P3818706216879442150

`a(n-5)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=1`
-/

namespace A017838.P3818706216879442150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 1] fun n a =>
  a (n - 5) + a (n - 6) + a (n - 7)

end

end A017838.P3818706216879442150

namespace A017838

/-- `a(n-5)+a(n-6)+a(n-7)` -/
def P3818706216879442150.Spec : Prop :=
  ∀ n, (P3818706216879442150.a n : ℤ) = A017838 n

end A017838

/-! ## A017838.P273320820877140337

`ogf(1/(1-x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017838

/-- `ogf(1/(1-x^5-x^6-x^7))` -/
def P273320820877140337.Spec : Prop :=
  ∀ n, P273320820877140337.a n = A017838 n

theorem P273320820877140337.correct : P273320820877140337.Spec := by
  intro n
  simp only [A017838]

end A017838

/-! ## A017838.P8101815981379587451

`A017888(A007091(n))^A014963(A102074(n+1))`
-/

namespace A017838.P8101815981379587451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017888 (A007091 n).toNat : ℚ) ^ (A014963 (A102074 (n + 1)).toNat : ℤ)

end

end A017838.P8101815981379587451

namespace A017838

/-- `A017888(A007091(n))^A014963(A102074(n+1))` -/
def P8101815981379587451.Spec : Prop :=
  ∀ n, P8101815981379587451.a n = (A017838 n : ℚ)

end A017838

/-! ## A017838.P6695384574051344338

`A017888(A293292(n+1))%A175458(3*n+4)`
-/

namespace A017838.P6695384574051344338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017888 (A293292 (n + 1)).toNat) (A175458 (3 * n + 4))

end

end A017838.P6695384574051344338

namespace A017838

/-- `A017888(A293292(n+1))%A175458(3*n+4)` -/
def P6695384574051344338.Spec : Prop :=
  ∀ n, P6695384574051344338.a n = A017838 n

end A017838

/-!
# A017839: Expansion of 1/(1-x^5-x^6-x^7-x^8).

The programs for A017839, the canonical program `A017839.P13406832160320404641` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017839 has offset 0).

The definition of A017839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8))` (program `A017839.P13406832160320404641`, by `A017839.P13406832160320404641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017839.P17182085380457205050

`a(n-5)+a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=1, a(7)=1`
-/

namespace A017839.P17182085380457205050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 1, 1] fun n a =>
  a (n - 5) + a (n - 6) + a (n - 7) + a (n - 8)

end

end A017839.P17182085380457205050

namespace A017839

/-- `a(n-5)+a(n-6)+a(n-7)+a(n-8)` -/
def P17182085380457205050.Spec : Prop :=
  ∀ n, (P17182085380457205050.a n : ℤ) = A017839 n

end A017839

/-! ## A017839.P13406832160320404641

`ogf(1/(1-x^5-x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017839

/-- `ogf(1/(1-x^5-x^6-x^7-x^8))` -/
def P13406832160320404641.Spec : Prop :=
  ∀ n, P13406832160320404641.a n = A017839 n

theorem P13406832160320404641.correct : P13406832160320404641.Spec := by
  intro n
  simp only [A017839]

end A017839

/-! ## A017839.P3636512928732343950

`A173924(n)+A056654(A362490(n))`
-/

namespace A017839.P3636512928732343950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173924 n + A056654 (A362490 n).toNat

end

end A017839.P3636512928732343950

namespace A017839

/-- `A173924(n)+A056654(A362490(n))` -/
def P3636512928732343950.Spec : Prop :=
  ∀ n, P3636512928732343950.a n = A017839 n

end A017839

/-! ## A017839.P8156084338980470937

`A173924(n)+A025441(A003242(n))`
-/

namespace A017839.P8156084338980470937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173924 n + A025441 (A003242 n).toNat

end

end A017839.P8156084338980470937

namespace A017839

/-- `A173924(n)+A025441(A003242(n))` -/
def P8156084338980470937.Spec : Prop :=
  ∀ n, P8156084338980470937.a n = A017839 n

end A017839

/-! ## A017839.P8563108374353975957

`A173924(n)+A102683(A026691(n))`
-/

namespace A017839.P8563108374353975957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173924 n + A102683 (A026691 n).toNat

end

end A017839.P8563108374353975957

namespace A017839

/-- `A173924(n)+A102683(A026691(n))` -/
def P8563108374353975957.Spec : Prop :=
  ∀ n, P8563108374353975957.a n = A017839 n

end A017839

/-!
# A017840: Expansion of 1/(1-x^5-x^6-x^7-x^8-x^9).

The programs for A017840, the canonical program `A017840.P10428532905539142320` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017840 has offset 0).

The definition of A017840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8-x^9))` (program `A017840.P10428532905539142320`, by `A017840.P10428532905539142320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017840.P4504682279942789886

`a(n-5)+a(n-6)+a(n-7)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A017840.P4504682279942789886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 1, 1, 1] fun n a =>
  a (n - 5) + a (n - 6) + a (n - 7) + a (n - 8) + a (n - 9)

end

end A017840.P4504682279942789886

namespace A017840

/-- `a(n-5)+a(n-6)+a(n-7)+a(n-8)+a(n-9)` -/
def P4504682279942789886.Spec : Prop :=
  ∀ n, (P4504682279942789886.a n : ℤ) = A017840 n

end A017840

/-! ## A017840.P10428532905539142320

`ogf(1/(1-x^5-x^6-x^7-x^8-x^9))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017840

/-- `ogf(1/(1-x^5-x^6-x^7-x^8-x^9))` -/
def P10428532905539142320.Spec : Prop :=
  ∀ n, P10428532905539142320.a n = A017840 n

theorem P10428532905539142320.correct : P10428532905539142320.Spec := by
  intro n
  simp only [A017840]

end A017840

/-!
# A017841: Expansion of 1/(1-x^5-x^6-x^7-x^8-x^9-x^10).

The programs for A017841, the canonical program `A017841.P17994954329753214333` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017841 has offset 0).

The definition of A017841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10))` (program `A017841.P17994954329753214333`, by `A017841.P17994954329753214333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017841.P5630299217370274025

`a(n-5)+a(n-6)+a(n-7)+a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A017841.P5630299217370274025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 1, 1, 1, 1] fun n a =>
  a (n - 5) + a (n - 6) + a (n - 7) + a (n - 8) + a (n - 9) + a (n - 10)

end

end A017841.P5630299217370274025

namespace A017841

/-- `a(n-5)+a(n-6)+a(n-7)+a(n-8)+a(n-9)+a(n-10)` -/
def P5630299217370274025.Spec : Prop :=
  ∀ n, (P5630299217370274025.a n : ℤ) = A017841 n

end A017841

/-! ## A017841.P17994954329753214333

`ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017841

/-- `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10))` -/
def P17994954329753214333.Spec : Prop :=
  ∀ n, P17994954329753214333.a n = A017841 n

theorem P17994954329753214333.correct : P17994954329753214333.Spec := by
  intro n
  simp only [A017841]

end A017841

/-!
# A017842: Expansion of 1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11).

The programs for A017842, the canonical program `A017842.P14389774565514747732` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017842 has offset 0).

The definition of A017842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11))` (program `A017842.P14389774565514747732`, by `A017842.P14389774565514747732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017842.P14389774565514747732

`ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017842

/-- `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11))` -/
def P14389774565514747732.Spec : Prop :=
  ∀ n, P14389774565514747732.a n = A017842 n

theorem P14389774565514747732.correct : P14389774565514747732.Spec := by
  intro n
  simp only [A017842]

end A017842

/-! ## A017842.P3872824740389275636

`round(A336135(n)/A004136(n+1))`
-/

namespace A017842.P3872824740389275636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A336135 n : ℚ) / (A004136 (n + 1) : ℚ))

end

end A017842.P3872824740389275636

namespace A017842

/-- `round(A336135(n)/A004136(n+1))` -/
def P3872824740389275636.Spec : Prop :=
  ∀ n, P3872824740389275636.a n = A017842 n

end A017842

/-! ## A017842.P12404679805629815079

`A017843(n)-A109527(A131689(n))`
-/

namespace A017842.P12404679805629815079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017843 n - A109527 (A131689 n).toNat

end

end A017842.P12404679805629815079

namespace A017842

/-- `A017843(n)-A109527(A131689(n))` -/
def P12404679805629815079.Spec : Prop :=
  ∀ n, P12404679805629815079.a n = A017842 n

end A017842

/-! ## A017842.P9426721107563386027

`A017843(n)-A326291(A036561(n))`
-/

namespace A017842.P9426721107563386027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017843 n - A326291 (A036561 n).toNat

end

end A017842.P9426721107563386027

namespace A017842

/-- `A017843(n)-A326291(A036561(n))` -/
def P9426721107563386027.Spec : Prop :=
  ∀ n, P9426721107563386027.a n = A017842 n

end A017842

/-! ## A017842.P12249684884978429633

`A017843(n)-A082859(A102480(n+1))`
-/

namespace A017842.P12249684884978429633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017843 n - A082859 (A102480 (n + 1)).toNat

end

end A017842.P12249684884978429633

namespace A017842

/-- `A017843(n)-A082859(A102480(n+1))` -/
def P12249684884978429633.Spec : Prop :=
  ∀ n, P12249684884978429633.a n = A017842 n

end A017842

/-!
# A017843: Expansion of 1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12).

The programs for A017843, the canonical program `A017843.P7137435933865474650` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017843 has offset 0).

The definition of A017843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` (program `A017843.P7137435933865474650`, by `A017843.P7137435933865474650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017843.P7137435933865474650

`ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017843

/-- `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` -/
def P7137435933865474650.Spec : Prop :=
  ∀ n, P7137435933865474650.a n = A017843 n

theorem P7137435933865474650.correct : P7137435933865474650.Spec := by
  intro n
  simp only [A017843]

end A017843

/-! ## A017843.P1582737860689014648

`A017844(n)-A082859(A102480(n))`
-/

namespace A017843.P1582737860689014648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017844 n - A082859 (A102480 n).toNat

end

end A017843.P1582737860689014648

namespace A017843

/-- `A017844(n)-A082859(A102480(n))` -/
def P1582737860689014648.Spec : Prop :=
  ∀ n, P1582737860689014648.a n = A017843 n

end A017843

/-! ## A017843.P12435669412947051435

`A017899(n)-∑[A082859(A102480(n))]`
-/

namespace A017843.P12435669412947051435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A102480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017843.P12435669412947051435

namespace A017843

/-- `A017899(n)-∑[A082859(A102480(n))]` -/
def P12435669412947051435.Spec : Prop :=
  ∀ n, P12435669412947051435.a n = A017843 n

end A017843

/-! ## A017843.P10248214379277810312

`A017844(n)-A109527(A276544(n+5))`
-/

namespace A017843.P10248214379277810312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017844 n - A109527 (A276544 (n + 5)).toNat

end

end A017843.P10248214379277810312

namespace A017843

/-- `A017844(n)-A109527(A276544(n+5))` -/
def P10248214379277810312.Spec : Prop :=
  ∀ n, P10248214379277810312.a n = A017843 n

end A017843

/-! ## A017843.P4083225583701312167

`A109527(A131689(n))+A017842(n)`
-/

namespace A017843.P4083225583701312167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109527 (A131689 n).toNat + A017842 n

end

end A017843.P4083225583701312167

namespace A017843

/-- `A109527(A131689(n))+A017842(n)` -/
def P4083225583701312167.Spec : Prop :=
  ∀ n, P4083225583701312167.a n = A017843 n

end A017843

/-!
# A017844: Expansion of 1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13).

The programs for A017844, the canonical program `A017844.P1160053259967072905` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017844 has offset 0).

The definition of A017844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` (program `A017844.P1160053259967072905`, by `A017844.P1160053259967072905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017844.P1160053259967072905

`ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017844

/-- `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` -/
def P1160053259967072905.Spec : Prop :=
  ∀ n, P1160053259967072905.a n = A017844 n

theorem P1160053259967072905.correct : P1160053259967072905.Spec := by
  intro n
  simp only [A017844]

end A017844

/-! ## A017844.P13161259590049502356

`A082859(A102480(n))+A017843(n)`
-/

namespace A017844.P13161259590049502356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A102480 n).toNat + A017843 n

end

end A017844.P13161259590049502356

namespace A017844

/-- `A082859(A102480(n))+A017843(n)` -/
def P13161259590049502356.Spec : Prop :=
  ∀ n, P13161259590049502356.a n = A017844 n

end A017844

/-! ## A017844.P4600865607579607356

`A017845(n-A295662(A001405(n)))`
-/

namespace A017844.P4600865607579607356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017845 ((n : ℤ) - A295662 (A001405 n).toNat).toNat

end

end A017844.P4600865607579607356

namespace A017844

/-- `A017845(n-A295662(A001405(n)))` -/
def P4600865607579607356.Spec : Prop :=
  ∀ n, P4600865607579607356.a n = A017844 n

end A017844

/-! ## A017844.P8871359967649978035

`A017899(n)-∑[A295662(A001405(n))]`
-/

namespace A017844.P8871359967649978035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (A001405 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017844.P8871359967649978035

namespace A017844

/-- `A017899(n)-∑[A295662(A001405(n))]` -/
def P8871359967649978035.Spec : Prop :=
  ∀ n, P8871359967649978035.a n = A017844 n

end A017844

/-! ## A017844.P6116003457187558187

`A017845(n)-A341840(A048682(n+1))`
-/

namespace A017844.P6116003457187558187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017845 n - A341840 (A048682 (n + 1)).toNat

end

end A017844.P6116003457187558187

namespace A017844

/-- `A017845(n)-A341840(A048682(n+1))` -/
def P6116003457187558187.Spec : Prop :=
  ∀ n, P6116003457187558187.a n = A017844 n

end A017844

/-!
# A017845: Expansion of 1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14).

The programs for A017845, the canonical program `A017845.P14604088563262135718` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017845 has offset 0).

The definition of A017845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` (program `A017845.P14604088563262135718`, by `A017845.P14604088563262135718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017845.P14604088563262135718

`ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017845

/-- `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` -/
def P14604088563262135718.Spec : Prop :=
  ∀ n, P14604088563262135718.a n = A017845 n

theorem P14604088563262135718.correct : P14604088563262135718.Spec := by
  intro n
  simp only [A017845]

end A017845

/-!
# A017846: Expansion of 1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15).

The programs for A017846, the canonical program `A017846.P17961954091722812855` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017846 has offset 0).

The definition of A017846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` (program `A017846.P17961954091722812855`, by `A017846.P17961954091722812855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017846.P17961954091722812855

`ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017846

/-- `ogf(1/(1-x^5-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` -/
def P17961954091722812855.Spec : Prop :=
  ∀ n, P17961954091722812855.a n = A017846 n

theorem P17961954091722812855.correct : P17961954091722812855.Spec := by
  intro n
  simp only [A017846]

end A017846

/-!
# A017847: Expansion of 1/(1 - x^6 - x^7).

The programs for A017847, the canonical program `A017847.P4599538197467255886` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017847 has offset 0).

The definition of A017847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7))` (program `A017847.P4599538197467255886`, by `A017847.P4599538197467255886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017847.P295030392246013077

`a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A017847.P295030392246013077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 6) + a (n - 7)

end

end A017847.P295030392246013077

namespace A017847

/-- `a(n-6)+a(n-7)` -/
def P295030392246013077.Spec : Prop :=
  ∀ n, (P295030392246013077.a n : ℤ) = A017847 n

end A017847

/-! ## A017847.P4599538197467255886

`ogf(1/(1-x^6-x^7))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017847

/-- `ogf(1/(1-x^6-x^7))` -/
def P4599538197467255886.Spec : Prop :=
  ∀ n, P4599538197467255886.a n = A017847 n

theorem P4599538197467255886.correct : P4599538197467255886.Spec := by
  intro n
  simp only [A017847]

end A017847

/-! ## A017847.P1246673485815781688

`∑{#}[floor(n/6), C(#, n-6*#)]`
-/

namespace A017847.P1246673485815781688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (6 * k : ℤ)).toNat

end

end A017847.P1246673485815781688

namespace A017847

/-- `∑{#}[floor(n/6), C(#, n-6*#)]` -/
def P1246673485815781688.Spec : Prop :=
  ∀ n, (P1246673485815781688.a n : ℤ) = A017847 n

end A017847

/-! ## A017847.P9047616289814285586

`A127841(n+8)`
-/

namespace A017847.P9047616289814285586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 8)

end

end A017847.P9047616289814285586

namespace A017847

/-- `A127841(n+8)` -/
def P9047616289814285586.Spec : Prop :=
  ∀ n, P9047616289814285586.a n = A017847 n

end A017847

/-! ## A017847.P2891637302849719411

`Δ[A103374(n+7)]`
-/

namespace A017847.P2891637302849719411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017847.P2891637302849719411

namespace A017847

/-- `Δ[A103374(n+7)]` -/
def P2891637302849719411.Spec : Prop :=
  ∀ n, P2891637302849719411.a n = A017847 n

end A017847

/-! ## A017847.P391643305135324266

`A103374(n+8)-A103374(n+7)`
-/

namespace A017847.P391643305135324266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (n + 8) - A103374 (n + 7)

end

end A017847.P391643305135324266

namespace A017847

/-- `A103374(n+8)-A103374(n+7)` -/
def P391643305135324266.Spec : Prop :=
  ∀ n, P391643305135324266.a n = A017847 n

end A017847

/-! ## A017847.P14512100082385074057

`Δ[abs(A124751(n+12))]`
-/

namespace A017847.P14512100082385074057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124751 (n + 12)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017847.P14512100082385074057

namespace A017847

/-- `Δ[abs(A124751(n+12))]` -/
def P14512100082385074057.Spec : Prop :=
  ∀ n, P14512100082385074057.a n = A017847 n

end A017847

/-! ## A017847.P8066360871811103757

`∑{#}[n, (-1)^(n-#)*C(n, #)*A373912(#)]`
-/

namespace A017847.P8066360871811103757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A373912 k : ℚ)

end

end A017847.P8066360871811103757

namespace A017847

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A373912(#)]` -/
def P8066360871811103757.Spec : Prop :=
  ∀ n, P8066360871811103757.a n = (A017847 n : ℚ)

end A017847

/-! ## A017847.P12847887633398137457

`A306713(A055999(n+3))`
-/

namespace A017847.P12847887633398137457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (A055999 (n + 3)).toNat

end

end A017847.P12847887633398137457

namespace A017847

/-- `A306713(A055999(n+3))` -/
def P12847887633398137457.Spec : Prop :=
  ∀ n, P12847887633398137457.a n = A017847 n

end A017847

/-! ## A017847.P15274115162271348790

`A306713(Δ[A023551(n+1)])`
-/

namespace A017847.P15274115162271348790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (f1 (n + 1) - f1 n).toNat

end

end A017847.P15274115162271348790

namespace A017847

/-- `A306713(Δ[A023551(n+1)])` -/
def P15274115162271348790.Spec : Prop :=
  ∀ n, P15274115162271348790.a n = A017847 n

end A017847

/-!
# A017848: Expansion of 1/(1-x^6-x^7-x^8).

The programs for A017848, the canonical program `A017848.P13192314786832339388` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017848 has offset 0).

The definition of A017848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8))` (program `A017848.P13192314786832339388`, by `A017848.P13192314786832339388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017848.P4306009792564363343

`a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=1`
-/

namespace A017848.P4306009792564363343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 1, 1] fun n a =>
  a (n - 6) + a (n - 7) + a (n - 8)

end

end A017848.P4306009792564363343

namespace A017848

/-- `a(n-6)+a(n-7)+a(n-8)` -/
def P4306009792564363343.Spec : Prop :=
  ∀ n, (P4306009792564363343.a n : ℤ) = A017848 n

end A017848

/-! ## A017848.P13192314786832339388

`ogf(1/(1-x^6-x^7-x^8))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017848

/-- `ogf(1/(1-x^6-x^7-x^8))` -/
def P13192314786832339388.Spec : Prop :=
  ∀ n, P13192314786832339388.a n = A017848 n

theorem P13192314786832339388.correct : P13192314786832339388.Spec := by
  intro n
  simp only [A017848]

end A017848

/-! ## A017848.P11351220700185467517

`A017888(A007092(n))%p?[A210442(n)]`
-/

namespace A017848.P11351220700185467517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017888 (A007092 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A017848.P11351220700185467517

namespace A017848

/-- `A017888(A007092(n))%p?[A210442(n)]` -/
def P11351220700185467517.Spec : Prop :=
  ∀ n, P11351220700185467517.a n = A017848 n

end A017848

/-! ## A017848.P3513359846328680426

`A017888(A007092(n))+A000038(A001752(n))`
-/

namespace A017848.P3513359846328680426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 (A007092 n).toNat + A000038 (A001752 n).toNat

end

end A017848.P3513359846328680426

namespace A017848

/-- `A017888(A007092(n))+A000038(A001752(n))` -/
def P3513359846328680426.Spec : Prop :=
  ∀ n, P3513359846328680426.a n = A017848 n

end A017848

/-! ## A017848.P12466158422356313268

`A001222(A239842(n+1))*A017888(A007092(n))`
-/

namespace A017848.P12466158422356313268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239842 (n + 1)).toNat * A017888 (A007092 n).toNat

end

end A017848.P12466158422356313268

namespace A017848

/-- `A001222(A239842(n+1))*A017888(A007092(n))` -/
def P12466158422356313268.Spec : Prop :=
  ∀ n, P12466158422356313268.a n = A017848 n

end A017848

/-!
# A017849: Expansion of 1/(1-x^6-x^7-x^8-x^9).

The programs for A017849, the canonical program `A017849.P10975979760392080689` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017849 has offset 0).

The definition of A017849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9))` (program `A017849.P10975979760392080689`, by `A017849.P10975979760392080689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017849.P17514291650296688292

`a(n-6)+a(n-7)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A017849.P17514291650296688292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 1, 1, 1] fun n a =>
  a (n - 6) + a (n - 7) + a (n - 8) + a (n - 9)

end

end A017849.P17514291650296688292

namespace A017849

/-- `a(n-6)+a(n-7)+a(n-8)+a(n-9)` -/
def P17514291650296688292.Spec : Prop :=
  ∀ n, (P17514291650296688292.a n : ℤ) = A017849 n

end A017849

/-! ## A017849.P10975979760392080689

`ogf(1/(1-x^6-x^7-x^8-x^9))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017849

/-- `ogf(1/(1-x^6-x^7-x^8-x^9))` -/
def P10975979760392080689.Spec : Prop :=
  ∀ n, P10975979760392080689.a n = A017849 n

theorem P10975979760392080689.correct : P10975979760392080689.Spec := by
  intro n
  simp only [A017849]

end A017849

/-!
# A017850: Expansion of 1/(1-x^6-x^7-x^8-x^9-x^10).

The programs for A017850, the canonical program `A017850.P4137984902442394502` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017850 has offset 0).

The definition of A017850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9-x^10))` (program `A017850.P4137984902442394502`, by `A017850.P4137984902442394502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017850.P3115419542692397975

`a(n-6)+a(n-7)+a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A017850.P3115419542692397975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 1, 1, 1, 1] fun n a =>
  a (n - 6) + a (n - 7) + a (n - 8) + a (n - 9) + a (n - 10)

end

end A017850.P3115419542692397975

namespace A017850

/-- `a(n-6)+a(n-7)+a(n-8)+a(n-9)+a(n-10)` -/
def P3115419542692397975.Spec : Prop :=
  ∀ n, (P3115419542692397975.a n : ℤ) = A017850 n

end A017850

/-! ## A017850.P4137984902442394502

`ogf(1/(1-x^6-x^7-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017850

/-- `ogf(1/(1-x^6-x^7-x^8-x^9-x^10))` -/
def P4137984902442394502.Spec : Prop :=
  ∀ n, P4137984902442394502.a n = A017850 n

theorem P4137984902442394502.correct : P4137984902442394502.Spec := by
  intro n
  simp only [A017850]

end A017850

/-!
# A017851: Expansion of 1/(1-x^6-x^7-x^8-x^9-x^10-x^11).

The programs for A017851, the canonical program `A017851.P3783227263662591250` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017851 has offset 0).

The definition of A017851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11))` (program `A017851.P3783227263662591250`, by `A017851.P3783227263662591250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017851.P3783227263662591250

`ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017851

/-- `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11))` -/
def P3783227263662591250.Spec : Prop :=
  ∀ n, P3783227263662591250.a n = A017851 n

theorem P3783227263662591250.correct : P3783227263662591250.Spec := by
  intro n
  simp only [A017851]

end A017851

/-!
# A017852: Expansion of 1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12).

The programs for A017852, the canonical program `A017852.P7625408565903001720` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017852 has offset 0).

The definition of A017852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` (program `A017852.P7625408565903001720`, by `A017852.P7625408565903001720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017852.P7625408565903001720

`ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017852

/-- `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12))` -/
def P7625408565903001720.Spec : Prop :=
  ∀ n, P7625408565903001720.a n = A017852 n

theorem P7625408565903001720.correct : P7625408565903001720.Spec := by
  intro n
  simp only [A017852]

end A017852

/-! ## A017852.P2565015512284494214

`A048766(round(A005578(n)/A243588(n+1)))`
-/

namespace A017852.P2565015512284494214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A005578 n : ℚ) / (A243588 (n + 1) : ℚ))).toNat

end

end A017852.P2565015512284494214

namespace A017852

/-- `A048766(round(A005578(n)/A243588(n+1)))` -/
def P2565015512284494214.Spec : Prop :=
  ∀ n, P2565015512284494214.a n = A017852 n

end A017852

/-!
# A017853: Expansion of 1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13).

The programs for A017853, the canonical program `A017853.P1058827356710368494` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017853 has offset 0).

The definition of A017853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` (program `A017853.P1058827356710368494`, by `A017853.P1058827356710368494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017853.P1058827356710368494

`ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017853

/-- `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` -/
def P1058827356710368494.Spec : Prop :=
  ∀ n, P1058827356710368494.a n = A017853 n

theorem P1058827356710368494.correct : P1058827356710368494.Spec := by
  intro n
  simp only [A017853]

end A017853

/-!
# A017854: Expansion of 1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14).

The programs for A017854, the canonical program `A017854.P16469892931170581271` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017854 has offset 0).

The definition of A017854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` (program `A017854.P16469892931170581271`, by `A017854.P16469892931170581271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017854.P16469892931170581271

`ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017854

/-- `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` -/
def P16469892931170581271.Spec : Prop :=
  ∀ n, P16469892931170581271.a n = A017854 n

theorem P16469892931170581271.correct : P16469892931170581271.Spec := by
  intro n
  simp only [A017854]

end A017854

/-! ## A017854.P11758957595792500518

`A017855(n-A185284(A130321(n)))`
-/

namespace A017854.P11758957595792500518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017855 ((n : ℤ) - A185284 (A130321 n).toNat).toNat

end

end A017854.P11758957595792500518

namespace A017854

/-- `A017855(n-A185284(A130321(n)))` -/
def P11758957595792500518.Spec : Prop :=
  ∀ n, P11758957595792500518.a n = A017854 n

end A017854

/-! ## A017854.P10091352235178528474

`xor(A017855(n), A185284(A130321(n)))`
-/

namespace A017854.P10091352235178528474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A017855 n) (A185284 (A130321 n).toNat)

end

end A017854.P10091352235178528474

namespace A017854

/-- `xor(A017855(n), A185284(A130321(n)))` -/
def P10091352235178528474.Spec : Prop :=
  ∀ n, P10091352235178528474.a n = A017854 n

end A017854

/-! ## A017854.P1079786406365567905

`A017855(n)-A185284(A084287(n+1))`
-/

namespace A017854.P1079786406365567905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017855 n - A185284 (A084287 (n + 1)).toNat

end

end A017854.P1079786406365567905

namespace A017854

/-- `A017855(n)-A185284(A084287(n+1))` -/
def P1079786406365567905.Spec : Prop :=
  ∀ n, P1079786406365567905.a n = A017854 n

end A017854

/-!
# A017855: Expansion of 1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15).

The programs for A017855, the canonical program `A017855.P10625560008221202266` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017855 has offset 0).

The definition of A017855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` (program `A017855.P10625560008221202266`, by `A017855.P10625560008221202266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017855.P10625560008221202266

`ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017855

/-- `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` -/
def P10625560008221202266.Spec : Prop :=
  ∀ n, P10625560008221202266.a n = A017855 n

theorem P10625560008221202266.correct : P10625560008221202266.Spec := by
  intro n
  simp only [A017855]

end A017855

/-! ## A017855.P2004586178940473883

`A017854(A185284(A130321(n))+n)`
-/

namespace A017855.P2004586178940473883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017854 (A185284 (A130321 n).toNat + (n : ℤ)).toNat

end

end A017855.P2004586178940473883

namespace A017855

/-- `A017854(A185284(A130321(n))+n)` -/
def P2004586178940473883.Spec : Prop :=
  ∀ n, P2004586178940473883.a n = A017855 n

end A017855

/-! ## A017855.P9357458011809781739

`or(A017854(n), A185284(A130321(n)))`
-/

namespace A017855.P9357458011809781739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017854 n) (A185284 (A130321 n).toNat)

end

end A017855.P9357458011809781739

namespace A017855

/-- `or(A017854(n), A185284(A130321(n)))` -/
def P9357458011809781739.Spec : Prop :=
  ∀ n, P9357458011809781739.a n = A017855 n

end A017855

/-!
# A017856: Expansion of 1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16).

The programs for A017856, the canonical program `A017856.P6894151643245453594` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017856 has offset 0).

The definition of A017856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` (program `A017856.P6894151643245453594`, by `A017856.P6894151643245453594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017856.P6894151643245453594

`ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017856

/-- `ogf(1/(1-x^6-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` -/
def P6894151643245453594.Spec : Prop :=
  ∀ n, P6894151643245453594.a n = A017856 n

theorem P6894151643245453594.correct : P6894151643245453594.Spec := by
  intro n
  simp only [A017856]

end A017856

/-! ## A017856.P3962166770967749774

`A185284(A263272(n))+A017855(n)`
-/

namespace A017856.P3962166770967749774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A263272 n).toNat + A017855 n

end

end A017856.P3962166770967749774

namespace A017856

/-- `A185284(A263272(n))+A017855(n)` -/
def P3962166770967749774.Spec : Prop :=
  ∀ n, P3962166770967749774.a n = A017856 n

end A017856

/-! ## A017856.P14115363769112821088

`A185284(A264967(n))+A017855(n)`
-/

namespace A017856.P14115363769112821088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A264967 n).toNat + A017855 n

end

end A017856.P14115363769112821088

namespace A017856

/-- `A185284(A264967(n))+A017855(n)` -/
def P14115363769112821088.Spec : Prop :=
  ∀ n, P14115363769112821088.a n = A017856 n

end A017856

/-! ## A017856.P14042173710433946762

`A017900(n)-A179527(A205303(n+1))`
-/

namespace A017856.P14042173710433946762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 n - A179527 (A205303 (n + 1)).toNat

end

end A017856.P14042173710433946762

namespace A017856

/-- `A017900(n)-A179527(A205303(n+1))` -/
def P14042173710433946762.Spec : Prop :=
  ∀ n, P14042173710433946762.a n = A017856 n

end A017856

/-!
# A017857: Expansion of 1/(1 - x^7 - x^8).

The programs for A017857, the canonical program `A017857.P13161941185600152317` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017857 has offset 0).

The definition of A017857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8))` (program `A017857.P13161941185600152317`, by `A017857.P13161941185600152317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017857.P7191611710227006416

`a(n-7)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=1`
-/

namespace A017857.P7191611710227006416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 7) + a (n - 8)

end

end A017857.P7191611710227006416

namespace A017857

/-- `a(n-7)+a(n-8)` -/
def P7191611710227006416.Spec : Prop :=
  ∀ n, (P7191611710227006416.a n : ℤ) = A017857 n

end A017857

/-! ## A017857.P13161941185600152317

`ogf(1/(1-x^7-x^8))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017857

/-- `ogf(1/(1-x^7-x^8))` -/
def P13161941185600152317.Spec : Prop :=
  ∀ n, P13161941185600152317.a n = A017857 n

theorem P13161941185600152317.correct : P13161941185600152317.Spec := by
  intro n
  simp only [A017857]

end A017857

/-! ## A017857.P14274835406102191974

`∑{#}[floor(n/7), C(#, n-7*#)]`
-/

namespace A017857.P14274835406102191974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 7⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (7 * k : ℤ)).toNat

end

end A017857.P14274835406102191974

namespace A017857

/-- `∑{#}[floor(n/7), C(#, n-7*#)]` -/
def P14274835406102191974.Spec : Prop :=
  ∀ n, (P14274835406102191974.a n : ℤ) = A017857 n

end A017857

/-! ## A017857.P3656158005592864430

`A127842(n+9)`
-/

namespace A017857.P3656158005592864430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (n + 9)

end

end A017857.P3656158005592864430

namespace A017857

/-- `A127842(n+9)` -/
def P3656158005592864430.Spec : Prop :=
  ∀ n, P3656158005592864430.a n = A017857 n

end A017857

/-! ## A017857.P5104179603885153041

`Δ[A103375(n+8)]`
-/

namespace A017857.P5104179603885153041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017857.P5104179603885153041

namespace A017857

/-- `Δ[A103375(n+8)]` -/
def P5104179603885153041.Spec : Prop :=
  ∀ n, P5104179603885153041.a n = A017857 n

end A017857

/-! ## A017857.P9100500838193135327

`abs(Δ[A103375(A020722(n))])`
-/

namespace A017857.P9100500838193135327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (A020722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A017857.P9100500838193135327

namespace A017857

/-- `abs(Δ[A103375(A020722(n))])` -/
def P9100500838193135327.Spec : Prop :=
  ∀ n, P9100500838193135327.a n = A017857 n

end A017857

/-! ## A017857.P10926378390774009834

`Δ[A103375(A020722(n))]^A057428(n)²`
-/

namespace A017857.P10926378390774009834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (A020722 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A017857.P10926378390774009834

namespace A017857

/-- `Δ[A103375(A020722(n))]^A057428(n)²` -/
def P10926378390774009834.Spec : Prop :=
  ∀ n, P10926378390774009834.a n = (A017857 n : ℚ)

end A017857

/-! ## A017857.P972710049054393537

`A130706(n)!*Δ[A103375(A020722(n))]`
-/

namespace A017857.P972710049054393537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (A020722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A130706 n).toNat : ℤ) * (f1 (n + 1) - f1 n)

end

end A017857.P972710049054393537

namespace A017857

/-- `A130706(n)!*Δ[A103375(A020722(n))]` -/
def P972710049054393537.Spec : Prop :=
  ∀ n, P972710049054393537.a n = A017857 n

end A017857

/-! ## A017857.P13569069518114732017

`∑{#}[n, (-1)^(n-#)*C(n, #)*A373913(#)]`
-/

namespace A017857.P13569069518114732017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A373913 k : ℚ)

end

end A017857.P13569069518114732017

namespace A017857

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A373913(#)]` -/
def P13569069518114732017.Spec : Prop :=
  ∀ n, P13569069518114732017.a n = (A017857 n : ℚ)

end A017857

/-! ## A017857.P7692375873492511569

`A306713(A000217(n+7)-7)`
-/

namespace A017857.P7692375873492511569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (A000217 (n + 7) - 7).toNat

end

end A017857.P7692375873492511569

namespace A017857

/-- `A306713(A000217(n+7)-7)` -/
def P7692375873492511569.Spec : Prop :=
  ∀ n, P7692375873492511569.a n = A017857 n

end A017857

/-! ## A017857.P5208574832938250593

`A306713(Δ[A023551(n+2)]-1)`
-/

namespace A017857.P5208574832938250593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (f1 (n + 1) - f1 n - 1).toNat

end

end A017857.P5208574832938250593

namespace A017857

/-- `A306713(Δ[A023551(n+2)]-1)` -/
def P5208574832938250593.Spec : Prop :=
  ∀ n, P5208574832938250593.a n = A017857 n

end A017857

/-! ## A017857.P14881678862338023312

`A306713(n+1+A000096(n+5))`
-/

namespace A017857.P14881678862338023312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 ((n + 1 : ℤ) + A000096 (n + 5)).toNat

end

end A017857.P14881678862338023312

namespace A017857

/-- `A306713(n+1+A000096(n+5))` -/
def P14881678862338023312.Spec : Prop :=
  ∀ n, P14881678862338023312.a n = A017857 n

end A017857

/-! ## A017857.P1001221933725137462

`A306713(A167499(n+4)+A004273(n+1))`
-/

namespace A017857.P1001221933725137462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (A167499 (n + 4) + A004273 (n + 1)).toNat

end

end A017857.P1001221933725137462

namespace A017857

/-- `A306713(A167499(n+4)+A004273(n+1))` -/
def P1001221933725137462.Spec : Prop :=
  ∀ n, P1001221933725137462.a n = A017857 n

end A017857

/-!
# A017858: Expansion of 1/(1-x^7-x^8-x^9).

The programs for A017858, the canonical program `A017858.P1378782811271271` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017858 has offset 0).

The definition of A017858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9))` (program `A017858.P1378782811271271`, by `A017858.P1378782811271271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017858.P10830347291360882299

`a(n-7)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=1, a(8)=1`
-/

namespace A017858.P10830347291360882299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 0, 1, 1] fun n a =>
  a (n - 7) + a (n - 8) + a (n - 9)

end

end A017858.P10830347291360882299

namespace A017858

/-- `a(n-7)+a(n-8)+a(n-9)` -/
def P10830347291360882299.Spec : Prop :=
  ∀ n, (P10830347291360882299.a n : ℤ) = A017858 n

end A017858

/-! ## A017858.P1378782811271271

`ogf(1/(1-x^7-x^8-x^9))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017858

/-- `ogf(1/(1-x^7-x^8-x^9))` -/
def P1378782811271271.Spec : Prop :=
  ∀ n, P1378782811271271.a n = A017858 n

theorem P1378782811271271.correct : P1378782811271271.Spec := by
  intro n
  simp only [A017858]

end A017858

/-! ## A017858.P6345790588166726433

`A017888(A007093(n)%A141214(n))`
-/

namespace A017858.P6345790588166726433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 (Int.tmod (A007093 n) (A141214 n)).toNat

end

end A017858.P6345790588166726433

namespace A017858

/-- `A017888(A007093(n)%A141214(n))` -/
def P6345790588166726433.Spec : Prop :=
  ∀ n, P6345790588166726433.a n = A017858 n

end A017858

/-! ## A017858.P4053421424322784623

`A017888(A007093(n))%A174716(A000041(n))`
-/

namespace A017858.P4053421424322784623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017888 (A007093 n).toNat) (A174716 (A000041 n).toNat)

end

end A017858.P4053421424322784623

namespace A017858

/-- `A017888(A007093(n))%A174716(A000041(n))` -/
def P4053421424322784623.Spec : Prop :=
  ∀ n, P4053421424322784623.a n = A017858 n

end A017858

/-! ## A017858.P18036831288189298689

`A017888(A007093(n))+A000038(A069129(n+1))`
-/

namespace A017858.P18036831288189298689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 (A007093 n).toNat + A000038 (A069129 (n + 1)).toNat

end

end A017858.P18036831288189298689

namespace A017858

/-- `A017888(A007093(n))+A000038(A069129(n+1))` -/
def P18036831288189298689.Spec : Prop :=
  ∀ n, P18036831288189298689.a n = A017858 n

end A017858

/-!
# A017859: Expansion of 1/(1-x^7-x^8-x^9-x^10).

The programs for A017859, the canonical program `A017859.P10207467685284638511` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017859 has offset 0).

The definition of A017859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10))` (program `A017859.P10207467685284638511`, by `A017859.P10207467685284638511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017859.P7147740859462711279

`a(n-7)+a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A017859.P7147740859462711279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 0, 1, 1, 1] fun n a =>
  a (n - 7) + a (n - 8) + a (n - 9) + a (n - 10)

end

end A017859.P7147740859462711279

namespace A017859

/-- `a(n-7)+a(n-8)+a(n-9)+a(n-10)` -/
def P7147740859462711279.Spec : Prop :=
  ∀ n, (P7147740859462711279.a n : ℤ) = A017859 n

end A017859

/-! ## A017859.P10207467685284638511

`ogf(1/(1-x^7-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017859

/-- `ogf(1/(1-x^7-x^8-x^9-x^10))` -/
def P10207467685284638511.Spec : Prop :=
  ∀ n, P10207467685284638511.a n = A017859 n

theorem P10207467685284638511.correct : P10207467685284638511.Spec := by
  intro n
  simp only [A017859]

end A017859

/-!
# A017860: Expansion of g.f. 1/(1 - x^7 - x^8 - x^9 - x^10 - x^11).

The programs for A017860, the canonical program `A017860.P15317948835224117375` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017860 has offset 0).

The definition of A017860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10-x^11))` (program `A017860.P15317948835224117375`, by `A017860.P15317948835224117375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017860.P15317948835224117375

`ogf(1/(1-x^7-x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017860

/-- `ogf(1/(1-x^7-x^8-x^9-x^10-x^11))` -/
def P15317948835224117375.Spec : Prop :=
  ∀ n, P15317948835224117375.a n = A017860 n

theorem P15317948835224117375.correct : P15317948835224117375.Spec := by
  intro n
  simp only [A017860]

end A017860

/-!
# A017861: Expansion of 1/(1-x^7-x^8-x^9-x^10-x^11-x^12).

The programs for A017861, the canonical program `A017861.P1342371234023267442` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017861 has offset 0).

The definition of A017861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12))` (program `A017861.P1342371234023267442`, by `A017861.P1342371234023267442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017861.P1342371234023267442

`ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017861

/-- `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12))` -/
def P1342371234023267442.Spec : Prop :=
  ∀ n, P1342371234023267442.a n = A017861 n

theorem P1342371234023267442.correct : P1342371234023267442.Spec := by
  intro n
  simp only [A017861]

end A017861

/-!
# A017862: Expansion of 1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13).

The programs for A017862, the canonical program `A017862.P4700079022401556519` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017862 has offset 0).

The definition of A017862 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` (program `A017862.P4700079022401556519`, by `A017862.P4700079022401556519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017862.P4700079022401556519

`ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017862

/-- `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13))` -/
def P4700079022401556519.Spec : Prop :=
  ∀ n, P4700079022401556519.a n = A017862 n

theorem P4700079022401556519.correct : P4700079022401556519.Spec := by
  intro n
  simp only [A017862]

end A017862

/-!
# A017863: Expansion of 1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14).

The programs for A017863, the canonical program `A017863.P14408550968723686656` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017863 has offset 0).

The definition of A017863 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` (program `A017863.P14408550968723686656`, by `A017863.P14408550968723686656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017863.P14408550968723686656

`ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017863

/-- `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` -/
def P14408550968723686656.Spec : Prop :=
  ∀ n, P14408550968723686656.a n = A017863 n

theorem P14408550968723686656.correct : P14408550968723686656.Spec := by
  intro n
  simp only [A017863]

end A017863

/-!
# A017864: Expansion of 1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15).

The programs for A017864, the canonical program `A017864.P4777955498183973487` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017864 has offset 0).

The definition of A017864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` (program `A017864.P4777955498183973487`, by `A017864.P4777955498183973487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017864.P4777955498183973487

`ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017864

/-- `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` -/
def P4777955498183973487.Spec : Prop :=
  ∀ n, P4777955498183973487.a n = A017864 n

theorem P4777955498183973487.correct : P4777955498183973487.Spec := by
  intro n
  simp only [A017864]

end A017864

/-!
# A017865: Expansion of 1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16).

The programs for A017865, the canonical program `A017865.P17109898789992941054` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017865 has offset 0).

The definition of A017865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` (program `A017865.P17109898789992941054`, by `A017865.P17109898789992941054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017865.P17109898789992941054

`ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017865

/-- `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` -/
def P17109898789992941054.Spec : Prop :=
  ∀ n, P17109898789992941054.a n = A017865 n

theorem P17109898789992941054.correct : P17109898789992941054.Spec := by
  intro n
  simp only [A017865]

end A017865

/-!
# A017866: Expansion of 1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17).

The programs for A017866, the canonical program `A017866.P16697299651589828857` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017866 has offset 0).

The definition of A017866 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` (program `A017866.P16697299651589828857`, by `A017866.P16697299651589828857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017866.P16697299651589828857

`ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017866

/-- `ogf(1/(1-x^7-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` -/
def P16697299651589828857.Spec : Prop :=
  ∀ n, P16697299651589828857.a n = A017866 n

theorem P16697299651589828857.correct : P16697299651589828857.Spec := by
  intro n
  simp only [A017866]

end A017866

/-!
# A017867: Expansion of 1/(1 - x^8 - x^9).

The programs for A017867, the canonical program `A017867.P860248107205044604` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017867 has offset 0).

The definition of A017867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9))` (program `A017867.P860248107205044604`, by `A017867.P860248107205044604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017867.P17247459711761332339

`a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=1`
-/

namespace A017867.P17247459711761332339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 8) + a (n - 9)

end

end A017867.P17247459711761332339

namespace A017867

/-- `a(n-8)+a(n-9)` -/
def P17247459711761332339.Spec : Prop :=
  ∀ n, (P17247459711761332339.a n : ℤ) = A017867 n

end A017867

/-! ## A017867.P860248107205044604

`ogf(1/(1-x^8-x^9))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017867

/-- `ogf(1/(1-x^8-x^9))` -/
def P860248107205044604.Spec : Prop :=
  ∀ n, P860248107205044604.a n = A017867 n

theorem P860248107205044604.correct : P860248107205044604.Spec := by
  intro n
  simp only [A017867]

end A017867

/-! ## A017867.P10753775097283860240

`∑{#}[floor(n/8), C(#, n-8*#)]`
-/

namespace A017867.P10753775097283860240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (8 * k : ℤ)).toNat

end

end A017867.P10753775097283860240

namespace A017867

/-- `∑{#}[floor(n/8), C(#, n-8*#)]` -/
def P10753775097283860240.Spec : Prop :=
  ∀ n, (P10753775097283860240.a n : ℤ) = A017867 n

end A017867

/-! ## A017867.P3085811551187871396

`A127843(n+10)`
-/

namespace A017867.P3085811551187871396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 10)

end

end A017867.P3085811551187871396

namespace A017867

/-- `A127843(n+10)` -/
def P3085811551187871396.Spec : Prop :=
  ∀ n, P3085811551187871396.a n = A017867 n

end A017867

/-! ## A017867.P6382536460294296436

`Δ[A103376(n+9)]`
-/

namespace A017867.P6382536460294296436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017867.P6382536460294296436

namespace A017867

/-- `Δ[A103376(n+9)]` -/
def P6382536460294296436.Spec : Prop :=
  ∀ n, P6382536460294296436.a n = A017867 n

end A017867

/-! ## A017867.P13444809717177738523

`A306713(A155212(n+4))`
-/

namespace A017867.P13444809717177738523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (A155212 (n + 4)).toNat

end

end A017867.P13444809717177738523

namespace A017867

/-- `A306713(A155212(n+4))` -/
def P13444809717177738523.Spec : Prop :=
  ∀ n, P13444809717177738523.a n = A017867 n

end A017867

/-! ## A017867.P9969973118360938794

`A306713(2*n+A000217(n+6)+7)`
-/

namespace A017867.P9969973118360938794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A017867.P9969973118360938794

namespace A017867

/-- `A306713(2*n+A000217(n+6)+7)` -/
def P9969973118360938794.Spec : Prop :=
  ∀ n, P9969973118360938794.a n = A017867 n

end A017867

/-! ## A017867.P10661740779313877894

`A306713(2*n+A052905(n+3)+12)`
-/

namespace A017867.P10661740779313877894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 ((2 * n : ℤ) + (A052905 (n + 3) + 12)).toNat

end

end A017867.P10661740779313877894

namespace A017867

/-- `A306713(2*n+A052905(n+3)+12)` -/
def P10661740779313877894.Spec : Prop :=
  ∀ n, P10661740779313877894.a n = A017867 n

end A017867

/-! ## A017867.P6675039654180503905

`A017887(A272576(n))*A160338(A118357(n))`
-/

namespace A017867.P6675039654180503905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (A272576 n).toNat * A160338 (A118357 n).toNat

end

end A017867.P6675039654180503905

namespace A017867

/-- `A017887(A272576(n))*A160338(A118357(n))` -/
def P6675039654180503905.Spec : Prop :=
  ∀ n, P6675039654180503905.a n = A017867 n

end A017867

/-! ## A017867.P3779606288686666715

`A017887(A272576(n)/A160338(A118357(n)))`
-/

namespace A017867.P3779606288686666715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (SequenceMachineLib.roundAway ((A272576 n : ℚ) / (A160338 (A118357 n).toNat : ℚ))).toNat

end

end A017867.P3779606288686666715

namespace A017867

/-- `A017887(A272576(n)/A160338(A118357(n)))` -/
def P3779606288686666715.Spec : Prop :=
  ∀ n, P3779606288686666715.a n = A017867 n

end A017867

/-!
# A017868: Expansion of 1/(1-x^8-x^9-x^10).

The programs for A017868, the canonical program `A017868.P13116852482018239572` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017868 has offset 0).

The definition of A017868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10))` (program `A017868.P13116852482018239572`, by `A017868.P13116852482018239572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017868.P13795768044793684066

`a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=1, a(9)=1`
-/

namespace A017868.P13795768044793684066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 0, 0, 1, 1] fun n a =>
  a (n - 8) + a (n - 9) + a (n - 10)

end

end A017868.P13795768044793684066

namespace A017868

/-- `a(n-8)+a(n-9)+a(n-10)` -/
def P13795768044793684066.Spec : Prop :=
  ∀ n, (P13795768044793684066.a n : ℤ) = A017868 n

end A017868

/-! ## A017868.P13116852482018239572

`ogf(1/(1-x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017868

/-- `ogf(1/(1-x^8-x^9-x^10))` -/
def P13116852482018239572.Spec : Prop :=
  ∀ n, P13116852482018239572.a n = A017868 n

theorem P13116852482018239572.correct : P13116852482018239572.Spec := by
  intro n
  simp only [A017868]

end A017868

/-! ## A017868.P11512158635933509222

`A017888(A007094(n)%∑[A177510(n)])`
-/

namespace A017868.P11512158635933509222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 (Int.tmod (A007094 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A017868.P11512158635933509222

namespace A017868

/-- `A017888(A007094(n)%∑[A177510(n)])` -/
def P11512158635933509222.Spec : Prop :=
  ∀ n, P11512158635933509222.a n = A017868 n

end A017868

/-! ## A017868.P16798093032661093599

`A017888(A007094(n))+A000007(A178820(n))`
-/

namespace A017868.P16798093032661093599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 (A007094 n).toNat + A000007 (A178820 n).toNat

end

end A017868.P16798093032661093599

namespace A017868

/-- `A017888(A007094(n))+A000007(A178820(n))` -/
def P16798093032661093599.Spec : Prop :=
  ∀ n, P16798093032661093599.a n = A017868 n

end A017868

/-! ## A017868.P8010729719692631075

`A017888(A007094(n))*A051903(A069567(n+1))`
-/

namespace A017868.P8010729719692631075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017888 (A007094 n).toNat * A051903 (A069567 (n + 1)).toNat

end

end A017868.P8010729719692631075

namespace A017868

/-- `A017888(A007094(n))*A051903(A069567(n+1))` -/
def P8010729719692631075.Spec : Prop :=
  ∀ n, P8010729719692631075.a n = A017868 n

end A017868

/-!
# A017869: Expansion of 1/(1-x^8-x^9-x^10-x^11).

The programs for A017869, the canonical program `A017869.P230626757149203823` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017869 has offset 0).

The definition of A017869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11))` (program `A017869.P230626757149203823`, by `A017869.P230626757149203823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017869.P230626757149203823

`ogf(1/(1-x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017869

/-- `ogf(1/(1-x^8-x^9-x^10-x^11))` -/
def P230626757149203823.Spec : Prop :=
  ∀ n, P230626757149203823.a n = A017869 n

theorem P230626757149203823.correct : P230626757149203823.Spec := by
  intro n
  simp only [A017869]

end A017869

/-! ## A017869.P6963245809692833137

`A017889(A007094(n)%A298741(n))`
-/

namespace A017869.P6963245809692833137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017889 (Int.tmod (A007094 n) (A298741 n)).toNat

end

end A017869.P6963245809692833137

namespace A017869

/-- `A017889(A007094(n)%A298741(n))` -/
def P6963245809692833137.Spec : Prop :=
  ∀ n, P6963245809692833137.a n = A017869 n

end A017869

/-! ## A017869.P7531911260400252502

`A017889(A007094(n))%A002234(n+3)`
-/

namespace A017869.P7531911260400252502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017889 (A007094 n).toNat) (A002234 (n + 3))

end

end A017869.P7531911260400252502

namespace A017869

/-- `A017889(A007094(n))%A002234(n+3)` -/
def P7531911260400252502.Spec : Prop :=
  ∀ n, P7531911260400252502.a n = A017869 n

end A017869

/-!
# A017870: Expansion of 1/(1-x^8-x^9-x^10-x^11-x^12).

The programs for A017870, the canonical program `A017870.P17510691398465112073` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017870 has offset 0).

The definition of A017870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11-x^12))` (program `A017870.P17510691398465112073`, by `A017870.P17510691398465112073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017870.P17510691398465112073

`ogf(1/(1-x^8-x^9-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017870

/-- `ogf(1/(1-x^8-x^9-x^10-x^11-x^12))` -/
def P17510691398465112073.Spec : Prop :=
  ∀ n, P17510691398465112073.a n = A017870 n

theorem P17510691398465112073.correct : P17510691398465112073.Spec := by
  intro n
  simp only [A017870]

end A017870

/-!
# A017871: Expansion of 1/(1-x^8-x^9-x^10-x^11-x^12-x^13).

The programs for A017871, the canonical program `A017871.P14317179100453161778` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017871 has offset 0).

The definition of A017871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13))` (program `A017871.P14317179100453161778`, by `A017871.P14317179100453161778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017871.P14317179100453161778

`ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017871

/-- `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13))` -/
def P14317179100453161778.Spec : Prop :=
  ∀ n, P14317179100453161778.a n = A017871 n

theorem P14317179100453161778.correct : P14317179100453161778.Spec := by
  intro n
  simp only [A017871]

end A017871

/-!
# A017872: Expansion of 1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14).

The programs for A017872, the canonical program `A017872.P18143574474378300930` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017872 has offset 0).

The definition of A017872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` (program `A017872.P18143574474378300930`, by `A017872.P18143574474378300930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017872.P18143574474378300930

`ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017872

/-- `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14))` -/
def P18143574474378300930.Spec : Prop :=
  ∀ n, P18143574474378300930.a n = A017872 n

theorem P18143574474378300930.correct : P18143574474378300930.Spec := by
  intro n
  simp only [A017872]

end A017872

/-!
# A017873: Expansion of 1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15).

The programs for A017873, the canonical program `A017873.P17914025965384649030` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017873 has offset 0).

The definition of A017873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` (program `A017873.P17914025965384649030`, by `A017873.P17914025965384649030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017873.P17914025965384649030

`ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017873

/-- `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` -/
def P17914025965384649030.Spec : Prop :=
  ∀ n, P17914025965384649030.a n = A017873 n

theorem P17914025965384649030.correct : P17914025965384649030.Spec := by
  intro n
  simp only [A017873]

end A017873

/-!
# A017874: Expansion of 1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16).

The programs for A017874, the canonical program `A017874.P10655200638357813439` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017874 has offset 0).

The definition of A017874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` (program `A017874.P10655200638357813439`, by `A017874.P10655200638357813439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017874.P10655200638357813439

`ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017874

/-- `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` -/
def P10655200638357813439.Spec : Prop :=
  ∀ n, P10655200638357813439.a n = A017874 n

theorem P10655200638357813439.correct : P10655200638357813439.Spec := by
  intro n
  simp only [A017874]

end A017874

/-!
# A017875: Expansion of 1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17).

The programs for A017875, the canonical program `A017875.P7439265646009040408` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017875 has offset 0).

The definition of A017875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` (program `A017875.P7439265646009040408`, by `A017875.P7439265646009040408.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017875.P7439265646009040408

`ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017875

/-- `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` -/
def P7439265646009040408.Spec : Prop :=
  ∀ n, P7439265646009040408.a n = A017875 n

theorem P7439265646009040408.correct : P7439265646009040408.Spec := by
  intro n
  simp only [A017875]

end A017875

/-!
# A017876: Expansion of 1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18).

The programs for A017876, the canonical program `A017876.P15496780868752542578` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017876 has offset 0).

The definition of A017876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))` (program `A017876.P15496780868752542578`, by `A017876.P15496780868752542578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017876.P1276115036458348475

`ogf((1-x)/(1-x-x^8+x^19))`
-/

namespace A017876.P1276115036458348475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] n

end

end A017876.P1276115036458348475

namespace A017876

/-- `ogf((1-x)/(1-x-x^8+x^19))` -/
def P1276115036458348475.Spec : Prop :=
  ∀ n, P1276115036458348475.a n = A017876 n

end A017876

/-! ## A017876.P15496780868752542578

`ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017876

/-- `ogf(1/(1-x^8-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))` -/
def P15496780868752542578.Spec : Prop :=
  ∀ n, P15496780868752542578.a n = A017876 n

theorem P15496780868752542578.correct : P15496780868752542578.Spec := by
  intro n
  simp only [A017876]

end A017876

/-!
# A017877: Expansion of 1/(1 - x^9 - x^10).

The programs for A017877, the canonical program `A017877.P14958672456125315970` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017877 has offset 0).

The definition of A017877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10))` (program `A017877.P14958672456125315970`, by `A017877.P14958672456125315970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017877.P13600870228889322940

`a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=1`
-/

namespace A017877.P13600870228889322940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 9) + a (n - 10)

end

end A017877.P13600870228889322940

namespace A017877

/-- `a(n-9)+a(n-10)` -/
def P13600870228889322940.Spec : Prop :=
  ∀ n, (P13600870228889322940.a n : ℤ) = A017877 n

end A017877

/-! ## A017877.P14958672456125315970

`ogf(1/(1-x^9-x^10))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017877

/-- `ogf(1/(1-x^9-x^10))` -/
def P14958672456125315970.Spec : Prop :=
  ∀ n, P14958672456125315970.a n = A017877 n

theorem P14958672456125315970.correct : P14958672456125315970.Spec := by
  intro n
  simp only [A017877]

end A017877

/-! ## A017877.P17405896122769912875

`∑{#}[floor(n/9), C(#, n-9*#)]`
-/

namespace A017877.P17405896122769912875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (9 * k : ℤ)).toNat

end

end A017877.P17405896122769912875

namespace A017877

/-- `∑{#}[floor(n/9), C(#, n-9*#)]` -/
def P17405896122769912875.Spec : Prop :=
  ∀ n, (P17405896122769912875.a n : ℤ) = A017877 n

end A017877

/-! ## A017877.P8626256661651208779

`A127844(n+11)`
-/

namespace A017877.P8626256661651208779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 11)

end

end A017877.P8626256661651208779

namespace A017877

/-- `A127844(n+11)` -/
def P8626256661651208779.Spec : Prop :=
  ∀ n, P8626256661651208779.a n = A017877 n

end A017877

/-! ## A017877.P5798917180452548816

`Δ[A103377(n+10)]`
-/

namespace A017877.P5798917180452548816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017877.P5798917180452548816

namespace A017877

/-- `Δ[A103377(n+10)]` -/
def P5798917180452548816.Spec : Prop :=
  ∀ n, P5798917180452548816.a n = A017877 n

end A017877

/-! ## A017877.P7557254644582658266

`A017887(lt[A347689(n), A007953(n)]-1)`
-/

namespace A017877.P7557254644582658266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1)

end

end A017877.P7557254644582658266

namespace A017877

/-- `A017887(lt[A347689(n), A007953(n)]-1)` -/
def P7557254644582658266.Spec : Prop :=
  ∀ n, P7557254644582658266.a n = A017877 n

end A017877

/-! ## A017877.P8251022491394013794

`A017887(lt[A347689(n+1), A007953(n+1)])`
-/

namespace A017877.P8251022491394013794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017877.P8251022491394013794

namespace A017877

/-- `A017887(lt[A347689(n+1), A007953(n+1)])` -/
def P8251022491394013794.Spec : Prop :=
  ∀ n, P8251022491394013794.a n = A017877 n

end A017877

/-! ## A017877.P17215091219303920352

`A017887(lt[n-9*floor(n/10), A007953(n+1)])`
-/

namespace A017877.P17215091219303920352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017877.P17215091219303920352

namespace A017877

/-- `A017887(lt[n-9*floor(n/10), A007953(n+1)])` -/
def P17215091219303920352.Spec : Prop :=
  ∀ n, P17215091219303920352.a n = A017877 n

end A017877

/-!
# A017878: Expansion of 1/(1-x^9-x^10-x^11).

The programs for A017878, the canonical program `A017878.P15885886821673379411` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017878 has offset 0).

The definition of A017878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11))` (program `A017878.P15885886821673379411`, by `A017878.P15885886821673379411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017878.P15885886821673379411

`ogf(1/(1-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017878

/-- `ogf(1/(1-x^9-x^10-x^11))` -/
def P15885886821673379411.Spec : Prop :=
  ∀ n, P15885886821673379411.a n = A017878 n

theorem P15885886821673379411.correct : P15885886821673379411.Spec := by
  intro n
  simp only [A017878]

end A017878

/-! ## A017878.P13793251557099429154

`a(n-9)+a(n-10)+a(n-11)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=1, a(10)=1`
-/

namespace A017878.P13793251557099429154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1] fun n a =>
  a (n - 9) + a (n - 10) + a (n - 11)

end

end A017878.P13793251557099429154

namespace A017878

/-- `a(n-9)+a(n-10)+a(n-11)` -/
def P13793251557099429154.Spec : Prop :=
  ∀ n, (P13793251557099429154.a n : ℤ) = A017878 n

end A017878

/-! ## A017878.P17973177903207669344

`A017888(A007095(n))^Δ[A004907(n+1)]`
-/

namespace A017878.P17973177903207669344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017888 (A007095 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A017878.P17973177903207669344

namespace A017878

/-- `A017888(A007095(n))^Δ[A004907(n+1)]` -/
def P17973177903207669344.Spec : Prop :=
  ∀ n, P17973177903207669344.a n = (A017878 n : ℚ)

end A017878

/-! ## A017878.P2780852114778849240

`A036987(A037166(n+1))+A017888(A007095(n))`
-/

namespace A017878.P2780852114778849240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A037166 (n + 1)).toNat + A017888 (A007095 n).toNat

end

end A017878.P2780852114778849240

namespace A017878

/-- `A036987(A037166(n+1))+A017888(A007095(n))` -/
def P2780852114778849240.Spec : Prop :=
  ∀ n, P2780852114778849240.a n = A017878 n

end A017878

/-! ## A017878.P2892203887709336916

`A036987(A233543(n)+3)+A017888(A007095(n))`
-/

namespace A017878.P2892203887709336916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A233543 n + 3).toNat + A017888 (A007095 n).toNat

end

end A017878.P2892203887709336916

namespace A017878

/-- `A036987(A233543(n)+3)+A017888(A007095(n))` -/
def P2892203887709336916.Spec : Prop :=
  ∀ n, P2892203887709336916.a n = A017878 n

end A017878

/-! ## A017878.P16099983714752733039

`A017888(A007095(n))%A001359(A144816(n+1))`
-/

namespace A017878.P16099983714752733039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017888 (A007095 n).toNat) (A001359 (A144816 (n + 1)).toNat)

end

end A017878.P16099983714752733039

namespace A017878

/-- `A017888(A007095(n))%A001359(A144816(n+1))` -/
def P16099983714752733039.Spec : Prop :=
  ∀ n, P16099983714752733039.a n = A017878 n

end A017878

/-! ## A017878.P4628468478697649743

`A036987(A313536(n)²+1)+A017888(A007095(n))`
-/

namespace A017878.P4628468478697649743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A313536 n ^ 2 + 1).toNat + A017888 (A007095 n).toNat

end

end A017878.P4628468478697649743

namespace A017878

/-- `A036987(A313536(n)²+1)+A017888(A007095(n))` -/
def P4628468478697649743.Spec : Prop :=
  ∀ n, P4628468478697649743.a n = A017878 n

end A017878

/-! ## A017878.P4710539077768196538

`A036987(A313510(n+1)²+1)+A017888(A007095(n))`
-/

namespace A017878.P4710539077768196538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A313510 (n + 1) ^ 2 + 1).toNat + A017888 (A007095 n).toNat

end

end A017878.P4710539077768196538

namespace A017878

/-- `A036987(A313510(n+1)²+1)+A017888(A007095(n))` -/
def P4710539077768196538.Spec : Prop :=
  ∀ n, P4710539077768196538.a n = A017878 n

end A017878

/-! ## A017878.P7302559139170845872

`A036987(A313493(n+3)²+1)+A017888(A007095(n))`
-/

namespace A017878.P7302559139170845872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A313493 (n + 3) ^ 2 + 1).toNat + A017888 (A007095 n).toNat

end

end A017878.P7302559139170845872

namespace A017878

/-- `A036987(A313493(n+3)²+1)+A017888(A007095(n))` -/
def P7302559139170845872.Spec : Prop :=
  ∀ n, P7302559139170845872.a n = A017878 n

end A017878

/-! ## A017878.P7376621996135564354

`A036987(A323520(n+4)²+1)+A017888(A007095(n))`
-/

namespace A017878.P7376621996135564354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A323520 (n + 4) ^ 2 + 1).toNat + A017888 (A007095 n).toNat

end

end A017878.P7376621996135564354

namespace A017878

/-- `A036987(A323520(n+4)²+1)+A017888(A007095(n))` -/
def P7376621996135564354.Spec : Prop :=
  ∀ n, P7376621996135564354.a n = A017878 n

end A017878

/-!
# A017879: Expansion of 1/(1-x^9-x^10-x^11-x^12).

The programs for A017879, the canonical program `A017879.P18042179454867854221` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017879 has offset 0).

The definition of A017879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12))` (program `A017879.P18042179454867854221`, by `A017879.P18042179454867854221.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017879.P18042179454867854221

`ogf(1/(1-x^9-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017879

/-- `ogf(1/(1-x^9-x^10-x^11-x^12))` -/
def P18042179454867854221.Spec : Prop :=
  ∀ n, P18042179454867854221.a n = A017879 n

theorem P18042179454867854221.correct : P18042179454867854221.Spec := by
  intro n
  simp only [A017879]

end A017879

/-!
# A017880: Expansion of 1/(1-x^9-x^10-x^11-x^12-x^13).

The programs for A017880, the canonical program `A017880.P2182506226135826720` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017880 has offset 0).

The definition of A017880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12-x^13))` (program `A017880.P2182506226135826720`, by `A017880.P2182506226135826720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017880.P2182506226135826720

`ogf(1/(1-x^9-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017880

/-- `ogf(1/(1-x^9-x^10-x^11-x^12-x^13))` -/
def P2182506226135826720.Spec : Prop :=
  ∀ n, P2182506226135826720.a n = A017880 n

theorem P2182506226135826720.correct : P2182506226135826720.Spec := by
  intro n
  simp only [A017880]

end A017880

/-!
# A017881: Expansion of 1/(1 - x^9 - x^10 - x^11 - x^12 - x^13 - x^14).

The programs for A017881, the canonical program `A017881.P5766826323688088440` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017881 has offset 0).

The definition of A017881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14))` (program `A017881.P5766826323688088440`, by `A017881.P5766826323688088440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017881.P5766826323688088440

`ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017881

/-- `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14))` -/
def P5766826323688088440.Spec : Prop :=
  ∀ n, P5766826323688088440.a n = A017881 n

theorem P5766826323688088440.correct : P5766826323688088440.Spec := by
  intro n
  simp only [A017881]

end A017881

/-!
# A017882: Expansion of 1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15).

The programs for A017882, the canonical program `A017882.P17335620558364564268` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017882 has offset 0).

The definition of A017882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` (program `A017882.P17335620558364564268`, by `A017882.P17335620558364564268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017882.P17335620558364564268

`ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017882

/-- `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15))` -/
def P17335620558364564268.Spec : Prop :=
  ∀ n, P17335620558364564268.a n = A017882 n

theorem P17335620558364564268.correct : P17335620558364564268.Spec := by
  intro n
  simp only [A017882]

end A017882

/-!
# A017883: Expansion of 1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16).

The programs for A017883, the canonical program `A017883.P2688272491991644355` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017883 has offset 0).

The definition of A017883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` (program `A017883.P2688272491991644355`, by `A017883.P2688272491991644355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017883.P2688272491991644355

`ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017883

/-- `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` -/
def P2688272491991644355.Spec : Prop :=
  ∀ n, P2688272491991644355.a n = A017883 n

theorem P2688272491991644355.correct : P2688272491991644355.Spec := by
  intro n
  simp only [A017883]

end A017883

/-!
# A017884: Expansion of 1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17).

The programs for A017884, the canonical program `A017884.P10370955740931263559` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017884 has offset 0).

The definition of A017884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` (program `A017884.P10370955740931263559`, by `A017884.P10370955740931263559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017884.P10370955740931263559

`ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017884

/-- `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` -/
def P10370955740931263559.Spec : Prop :=
  ∀ n, P10370955740931263559.a n = A017884 n

theorem P10370955740931263559.correct : P10370955740931263559.Spec := by
  intro n
  simp only [A017884]

end A017884

/-!
# A017885: Expansion of 1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18).

The programs for A017885, the canonical program `A017885.P312677707464242091` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017885 has offset 0).

The definition of A017885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))` (program `A017885.P312677707464242091`, by `A017885.P312677707464242091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017885.P312677707464242091

`ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017885

/-- `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))` -/
def P312677707464242091.Spec : Prop :=
  ∀ n, P312677707464242091.a n = A017885 n

theorem P312677707464242091.correct : P312677707464242091.Spec := by
  intro n
  simp only [A017885]

end A017885

/-!
# A017886: Expansion of 1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19).

The programs for A017886, the canonical program `A017886.P18148329169833923909` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017886 has offset 0).

The definition of A017886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19))` (program `A017886.P18148329169833923909`, by `A017886.P18148329169833923909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017886.P18148329169833923909

`ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017886

/-- `ogf(1/(1-x^9-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19))` -/
def P18148329169833923909.Spec : Prop :=
  ∀ n, P18148329169833923909.a n = A017886 n

theorem P18148329169833923909.correct : P18148329169833923909.Spec := by
  intro n
  simp only [A017886]

end A017886

/-!
# A017887: Expansion of 1/(1 - x^10 - x^11).

The programs for A017887, the canonical program `A017887.P1569298293590799262` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017887 has offset 0).

The definition of A017887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11))` (program `A017887.P1569298293590799262`, by `A017887.P1569298293590799262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017887.P1569298293590799262

`ogf(1/(1-x^10-x^11))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017887

/-- `ogf(1/(1-x^10-x^11))` -/
def P1569298293590799262.Spec : Prop :=
  ∀ n, P1569298293590799262.a n = A017887 n

theorem P1569298293590799262.correct : P1569298293590799262.Spec := by
  intro n
  simp only [A017887]

end A017887

/-! ## A017887.P1826150234054295779

`∑{#}[floor(n/10), C(#, n-10*#)]`
-/

namespace A017887.P1826150234054295779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose k ((n : ℤ) - (10 * k : ℤ)).toNat

end

end A017887.P1826150234054295779

namespace A017887

/-- `∑{#}[floor(n/10), C(#, n-10*#)]` -/
def P1826150234054295779.Spec : Prop :=
  ∀ n, (P1826150234054295779.a n : ℤ) = A017887 n

end A017887

/-! ## A017887.P16725151327847803420

`Δ[A103378(n+11)]`
-/

namespace A017887.P16725151327847803420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103378 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017887.P16725151327847803420

namespace A017887

/-- `Δ[A103378(n+11)]` -/
def P16725151327847803420.Spec : Prop :=
  ∀ n, P16725151327847803420.a n = A017887 n

end A017887

/-! ## A017887.P1139099017202972357

`A306713(A056000(n+6))`
-/

namespace A017887.P1139099017202972357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (A056000 (n + 6)).toNat

end

end A017887.P1139099017202972357

namespace A017887

/-- `A306713(A056000(n+6))` -/
def P1139099017202972357.Spec : Prop :=
  ∀ n, P1139099017202972357.a n = A017887 n

end A017887

/-! ## A017887.P18140308503866127102

`A306713(A051936(n+10)-1)`
-/

namespace A017887.P18140308503866127102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (A051936 (n + 10) - 1).toNat

end

end A017887.P18140308503866127102

namespace A017887

/-- `A306713(A051936(n+10)-1)` -/
def P18140308503866127102.Spec : Prop :=
  ∀ n, P18140308503866127102.a n = A017887 n

end A017887

/-! ## A017887.P3749846594395593168

`A306713(A000124(n+10)-11)`
-/

namespace A017887.P3749846594395593168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306713 (A000124 (n + 10) - 11).toNat

end

end A017887.P3749846594395593168

namespace A017887

/-- `A306713(A000124(n+10)-11)` -/
def P3749846594395593168.Spec : Prop :=
  ∀ n, P3749846594395593168.a n = A017887 n

end A017887

/-! ## A017887.P10352349783949929965

`C(floor(n/10), A010879(A045918(n)))`
-/

namespace A017887.P10352349783949929965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 10⌋.toNat (A010879 (A045918 n).toNat).toNat

end

end A017887.P10352349783949929965

namespace A017887

/-- `C(floor(n/10), A010879(A045918(n)))` -/
def P10352349783949929965.Spec : Prop :=
  ∀ n, (P10352349783949929965.a n : ℤ) = A017887 n

end A017887

/-!
# A017888: Expansion of 1/(1 - x^10 - x^11 - x^12).

The programs for A017888, the canonical program `A017888.P14696527673856833418` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017888 has offset 0).

The definition of A017888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12))` (program `A017888.P14696527673856833418`, by `A017888.P14696527673856833418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017888.P14696527673856833418

`ogf(1/(1-x^10-x^11-x^12))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017888

/-- `ogf(1/(1-x^10-x^11-x^12))` -/
def P14696527673856833418.Spec : Prop :=
  ∀ n, P14696527673856833418.a n = A017888 n

theorem P14696527673856833418.correct : P14696527673856833418.Spec := by
  intro n
  simp only [A017888]

end A017888

/-!
# A017889: Expansion of 1/(1-x^10-x^11-x^12-x^13).

The programs for A017889, the canonical program `A017889.P8763622739182827881` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017889 has offset 0).

The definition of A017889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13))` (program `A017889.P8763622739182827881`, by `A017889.P8763622739182827881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017889.P8763622739182827881

`ogf(1/(1-x^10-x^11-x^12-x^13))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017889

/-- `ogf(1/(1-x^10-x^11-x^12-x^13))` -/
def P8763622739182827881.Spec : Prop :=
  ∀ n, P8763622739182827881.a n = A017889 n

theorem P8763622739182827881.correct : P8763622739182827881.Spec := by
  intro n
  simp only [A017889]

end A017889

/-!
# A017890: Expansion of 1/(1-x^10-x^11-x^12-x^13-x^14).

The programs for A017890, the canonical program `A017890.P17330681715144849997` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017890 has offset 0).

The definition of A017890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13-x^14))` (program `A017890.P17330681715144849997`, by `A017890.P17330681715144849997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017890.P17330681715144849997

`ogf(1/(1-x^10-x^11-x^12-x^13-x^14))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017890

/-- `ogf(1/(1-x^10-x^11-x^12-x^13-x^14))` -/
def P17330681715144849997.Spec : Prop :=
  ∀ n, P17330681715144849997.a n = A017890 n

theorem P17330681715144849997.correct : P17330681715144849997.Spec := by
  intro n
  simp only [A017890]

end A017890

/-!
# A017891: Expansion of 1/(1-x^10-x^11-x^12-x^13-x^14-x^15).

The programs for A017891, the canonical program `A017891.P13822561641580222128` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017891 has offset 0).

The definition of A017891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15))` (program `A017891.P13822561641580222128`, by `A017891.P13822561641580222128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017891.P13822561641580222128

`ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017891

/-- `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15))` -/
def P13822561641580222128.Spec : Prop :=
  ∀ n, P13822561641580222128.a n = A017891 n

theorem P13822561641580222128.correct : P13822561641580222128.Spec := by
  intro n
  simp only [A017891]

end A017891

/-!
# A017892: Expansion of 1/(1 - x^10 - x^11 - x^12 - x^13 - x^14 - x^15 - x^16).

The programs for A017892, the canonical program `A017892.P12289315019470630455` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017892 has offset 0).

The definition of A017892 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` (program `A017892.P12289315019470630455`, by `A017892.P12289315019470630455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017892.P12289315019470630455

`ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017892

/-- `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16))` -/
def P12289315019470630455.Spec : Prop :=
  ∀ n, P12289315019470630455.a n = A017892 n

theorem P12289315019470630455.correct : P12289315019470630455.Spec := by
  intro n
  simp only [A017892]

end A017892

/-!
# A017893: Expansion of 1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17).

The programs for A017893, the canonical program `A017893.P422926777832668369` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017893 has offset 0).

The definition of A017893 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` (program `A017893.P422926777832668369`, by `A017893.P422926777832668369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017893.P422926777832668369

`ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017893

/-- `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17))` -/
def P422926777832668369.Spec : Prop :=
  ∀ n, P422926777832668369.a n = A017893 n

theorem P422926777832668369.correct : P422926777832668369.Spec := by
  intro n
  simp only [A017893]

end A017893

/-!
# A017894: Expansion of 1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18).

The programs for A017894, the canonical program `A017894.P4750109530882585756` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017894 has offset 0).

The definition of A017894 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))` (program `A017894.P4750109530882585756`, by `A017894.P4750109530882585756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017894.P4750109530882585756

`ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017894

/-- `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18))` -/
def P4750109530882585756.Spec : Prop :=
  ∀ n, P4750109530882585756.a n = A017894 n

theorem P4750109530882585756.correct : P4750109530882585756.Spec := by
  intro n
  simp only [A017894]

end A017894

/-!
# A017895: Expansion of 1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19).

The programs for A017895, the canonical program `A017895.P7507765720568838621` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017895 has offset 0).

The definition of A017895 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19))` (program `A017895.P7507765720568838621`, by `A017895.P7507765720568838621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017895.P7507765720568838621

`ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017895

/-- `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19))` -/
def P7507765720568838621.Spec : Prop :=
  ∀ n, P7507765720568838621.a n = A017895 n

theorem P7507765720568838621.correct : P7507765720568838621.Spec := by
  intro n
  simp only [A017895]

end A017895

/-! ## A017895.P6800428387514657376

`A017896(n)/A319430(A163269(n+1))`
-/

namespace A017895.P6800428387514657376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017896 n : ℚ) / (A319430 (A163269 (n + 1)).toNat : ℚ)

end

end A017895.P6800428387514657376

namespace A017895

/-- `A017896(n)/A319430(A163269(n+1))` -/
def P6800428387514657376.Spec : Prop :=
  ∀ n, P6800428387514657376.a n = (A017895 n : ℚ)

end A017895

/-! ## A017895.P4544337740738776724

`A167700(4^A122066(n))+A017905(n)`
-/

namespace A017895.P4544337740738776724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A122066 n : ℤ))).toNat + A017905 n

end

end A017895.P4544337740738776724

namespace A017895

/-- `A167700(4^A122066(n))+A017905(n)` -/
def P4544337740738776724.Spec : Prop :=
  ∀ n, P4544337740738776724.a n = A017895 n

end A017895

/-! ## A017895.P3049649544123835037

`A017907(lt[A233315(n+1), A236096(n+4)])`
-/

namespace A017895.P3049649544123835037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236096 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017907 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A017895.P3049649544123835037

namespace A017895

/-- `A017907(lt[A233315(n+1), A236096(n+4)])` -/
def P3049649544123835037.Spec : Prop :=
  ∀ n, P3049649544123835037.a n = A017895 n

end A017895

/-!
# A017896: Expansion of 1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19-x^20).

The programs for A017896, the canonical program `A017896.P1980711632854430090` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017896 has offset 0).

The definition of A017896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19-x^20))` (program `A017896.P1980711632854430090`, by `A017896.P1980711632854430090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017896.P1980711632854430090

`ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19-x^20))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017896

/-- `ogf(1/(1-x^10-x^11-x^12-x^13-x^14-x^15-x^16-x^17-x^18-x^19-x^20))` -/
def P1980711632854430090.Spec : Prop :=
  ∀ n, P1980711632854430090.a n = A017896 n

theorem P1980711632854430090.correct : P1980711632854430090.Spec := by
  intro n
  simp only [A017896]

end A017896

/-! ## A017896.P9684465845412009137

`A017904(n)-A017904(A282711(3*n+1))`
-/

namespace A017896.P9684465845412009137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017904 n - A017904 (A282711 (3 * n + 1)).toNat

end

end A017896.P9684465845412009137

namespace A017896

/-- `A017904(n)-A017904(A282711(3*n+1))` -/
def P9684465845412009137.Spec : Prop :=
  ∀ n, P9684465845412009137.a n = A017896 n

end A017896

/-!
# A017897: Expansion of 1/((1-3*x)*(1-5*x)*(1-9*x)).

The programs for A017897, the canonical program `A017897.P15341616656106931503` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017897 has offset 0).

The definition of A017897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017897.P15341616656106931503

`14*a(n-1)-45*a(n-2)+3^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017897

/-- `14*a(n-1)-45*a(n-2)+3^n` -/
def P15341616656106931503.Spec : Prop :=
  ∀ n, P15341616656106931503.a n = A017897 n

theorem P15341616656106931503.correct : P15341616656106931503.Spec := by
  intro n
  simp only [A017897]

end A017897

/-! ## A017897.P13901526893847240664

`(9^(n+2)-3*5^(n+2)+2*3^(n+2))/24`
-/

namespace A017897.P13901526893847240664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 2) : ℤ) - (3 * 5 ^ (n + 2) : ℤ) + (2 * 3 ^ (n + 2) : ℤ) : ℚ) / 24

end

end A017897.P13901526893847240664

namespace A017897

/-- `(9^(n+2)-3*5^(n+2)+2*3^(n+2))/24` -/
def P13901526893847240664.Spec : Prop :=
  ∀ n, P13901526893847240664.a n = (A017897 n : ℚ)

theorem P13901526893847240664.correct : P13901526893847240664.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A017897, Nat.add_sub_cancel, A017897.P13901526893847240664.a, A017897.P15341616656106931503.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A017897, Nat.add_sub_cancel, A017897.P13901526893847240664.a, A017897.P15341616656106931503.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A017897

/-! ## A017897.P6655259222945796228

`A016163(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A017897.P6655259222945796228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016163 n + 3 * a (n - 1)

end

end A017897.P6655259222945796228

namespace A017897

/-- `A016163(n)+3*a(n-1)` -/
def P6655259222945796228.Spec : Prop :=
  ∀ n, P6655259222945796228.a n = A017897 n

end A017897

/-! ## A017897.P13166433031428202282

`A005059(n+1)+3*3*a(n-1)` with `a(0)=1`
-/

namespace A017897.P13166433031428202282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005059 (n + 1) + 3 * (3 * a (n - 1))

end

end A017897.P13166433031428202282

namespace A017897

/-- `A005059(n+1)+3*3*a(n-1)` -/
def P13166433031428202282.Spec : Prop :=
  ∀ n, P13166433031428202282.a n = A017897 n

end A017897

/-! ## A017897.P14139317801746661439

`lcm(3, a(n-1))+A191466(n+1)/4` with `a(0)=1`
-/

namespace A017897.P14139317801746661439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (A191466 (n + 1) : ℚ) / 4

end

end A017897.P14139317801746661439

namespace A017897

/-- `lcm(3, a(n-1))+A191466(n+1)/4` -/
def P14139317801746661439.Spec : Prop :=
  ∀ n, P14139317801746661439.a n = (A017897 n : ℚ)

end A017897

/-!
# A017898: Expansion of (1-x)/(1-x-x^4).

The programs for A017898, the canonical program `A017898.P10310695555956368774` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017898 has offset 0).

The definition of A017898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^4))` (program `A017898.P10310695555956368774`, by `A017898.P10310695555956368774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017898.P10310695555956368774

`ogf((1-x)/(1-x-x^4))`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017898

/-- `ogf((1-x)/(1-x-x^4))` -/
def P10310695555956368774.Spec : Prop :=
  ∀ n, P10310695555956368774.a n = A017898 n

theorem P10310695555956368774.correct : P10310695555956368774.Spec := by
  intro n
  simp only [A017898]

end A017898

/-! ## A017898.P109406696019797023

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A017898.P109406696019797023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 1) + a (n - 4)

end

end A017898.P109406696019797023

namespace A017898

/-- `a(n-1)+a(n-4)` -/
def P109406696019797023.Spec : Prop :=
  ∀ n, (P109406696019797023.a n : ℤ) = A017898 n

end A017898

/-! ## A017898.P16658990125363558586

`A003269(n+1)-A003269(n)`
-/

namespace A017898.P16658990125363558586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1) - A003269 n

end

end A017898.P16658990125363558586

namespace A017898

/-- `A003269(n+1)-A003269(n)` -/
def P16658990125363558586.Spec : Prop :=
  ∀ n, P16658990125363558586.a n = A017898 n

end A017898

/-! ## A017898.P14486030349419615274

`a(n-1)-floor(-a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A017898.P14486030349419615274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 1) - (-a (n - 4))

end

end A017898.P14486030349419615274

namespace A017898

/-- `a(n-1)-floor(-a(n-4))` -/
def P14486030349419615274.Spec : Prop :=
  ∀ n, P14486030349419615274.a n = A017898 n

end A017898

/-! ## A017898.P3833928480837190887

`a(n-1)-ceil(-a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A017898.P3833928480837190887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 1) - (-a (n - 4))

end

end A017898.P3833928480837190887

namespace A017898

/-- `a(n-1)-ceil(-a(n-4))` -/
def P3833928480837190887.Spec : Prop :=
  ∀ n, P3833928480837190887.a n = A017898 n

end A017898

/-! ## A017898.P17556698745316387180

`a(n-1)-round(-a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

`round` is left out, it is the identity on integers.
-/

namespace A017898.P17556698745316387180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 1) - (-a (n - 4))

end

end A017898.P17556698745316387180

namespace A017898

/-- `a(n-1)-round(-a(n-4))` -/
def P17556698745316387180.Spec : Prop :=
  ∀ n, P17556698745316387180.a n = A017898 n

end A017898

/-! ## A017898.P3994092278141072711

`A122789(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A017898.P3994092278141072711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122789 (n + 1) - a (n - 1)

end

end A017898.P3994092278141072711

namespace A017898

/-- `A122789(n+1)-a(n-1)` -/
def P3994092278141072711.Spec : Prop :=
  ∀ n, P3994092278141072711.a n = A017898 n

end A017898

/-! ## A017898.P7812843801609352125

`Δ[A003269(n)]`
-/

namespace A017898.P7812843801609352125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017898.P7812843801609352125

namespace A017898

/-- `Δ[A003269(n)]` -/
def P7812843801609352125.Spec : Prop :=
  ∀ n, P7812843801609352125.a n = A017898 n

end A017898

/-! ## A017898.P5863399922357614712

`A103632(n+1)+A103632(n)-A078467(n)`
-/

namespace A017898.P5863399922357614712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (n + 1) + (A103632 n - A078467 n)

end

end A017898.P5863399922357614712

namespace A017898

/-- `A103632(n+1)+A103632(n)-A078467(n)` -/
def P5863399922357614712.Spec : Prop :=
  ∀ n, P5863399922357614712.a n = A017898 n

end A017898

/-! ## A017898.P7000080081477751475

`A078467(n+1)-(A122789(n)+A078467(n))`
-/

namespace A017898.P7000080081477751475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078467 (n + 1) - (A122789 n + A078467 n)

end

end A017898.P7000080081477751475

namespace A017898

/-- `A078467(n+1)-(A122789(n)+A078467(n))` -/
def P7000080081477751475.Spec : Prop :=
  ∀ n, P7000080081477751475.a n = A017898 n

end A017898

/-! ## A017898.P17276487265904506945

`A145139(n+1)-∑[A145139(n)]`
-/

namespace A017898.P17276487265904506945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145139 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017898.P17276487265904506945

namespace A017898

/-- `A145139(n+1)-∑[A145139(n)]` -/
def P17276487265904506945.Spec : Prop :=
  ∀ n, P17276487265904506945.a n = A017898 n

end A017898

/-! ## A017898.P16970236111830931857

`A145153(∑[n+2])`
-/

namespace A017898.P16970236111830931857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A017898.P16970236111830931857

namespace A017898

/-- `A145153(∑[n+2])` -/
def P16970236111830931857.Spec : Prop :=
  ∀ n, P16970236111830931857.a n = A017898 n

end A017898

/-! ## A017898.P4448545293238188436

`Δ[A145153(A034856(n+1))]`
-/

namespace A017898.P4448545293238188436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017898.P4448545293238188436

namespace A017898

/-- `Δ[A145153(A034856(n+1))]` -/
def P4448545293238188436.Spec : Prop :=
  ∀ n, P4448545293238188436.a n = A017898 n

end A017898

/-! ## A017898.P14096765901085972697

`A176508(∑[n+1]+1)`
-/

namespace A017898.P14096765901085972697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176508 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A017898.P14096765901085972697

namespace A017898

/-- `A176508(∑[n+1]+1)` -/
def P14096765901085972697.Spec : Prop :=
  ∀ n, P14096765901085972697.a n = A017898 n

end A017898

/-!
# A017899: Expansion of 1/(1 -x^5 -x^6 -x^7 - ...).

The programs for A017899, the canonical program `A017899.P4348638543490423512` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017899 has offset 0).

The definition of A017899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017899.P4685097158127083446

`ogf((1-x)/(1-x-x^5))`
-/

namespace A017899.P4685097158127083446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, 0, 0, 0, -1] n

end

end A017899.P4685097158127083446

namespace A017899

/-- `ogf((1-x)/(1-x-x^5))` -/
def P4685097158127083446.Spec : Prop :=
  ∀ n, P4685097158127083446.a n = A017899 n

end A017899

/-! ## A017899.P4348638543490423512

`a(n-1)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A017899

/-- `a(n-1)+a(n-5)` -/
def P4348638543490423512.Spec : Prop :=
  ∀ n, (P4348638543490423512.a n : ℤ) = A017899 n

theorem P4348638543490423512.correct : P4348638543490423512.Spec := by
  intro n
  simp only [A017899]

end A017899

/-! ## A017899.P11874518988915930729

`A000931(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A017899.P11874518988915930729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A000931 n - a (n - 3)

end

end A017899.P11874518988915930729

namespace A017899

/-- `A000931(n)-a(n-3)` -/
def P11874518988915930729.Spec : Prop :=
  ∀ n, P11874518988915930729.a n = A017899 n

end A017899

/-! ## A017899.P2782186535072924714

`A003520(n+1)-A182097(n+1)`
-/

namespace A017899.P2782186535072924714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 1) - A182097 (n + 1)

end

end A017899.P2782186535072924714

namespace A017899

/-- `A003520(n+1)-A182097(n+1)` -/
def P2782186535072924714.Spec : Prop :=
  ∀ n, P2782186535072924714.a n = A017899 n

end A017899

/-! ## A017899.P10521565100819758954

`A003520(n+1)-A127682(2*n+1)`
-/

namespace A017899.P10521565100819758954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 1) - A127682 (2 * n + 1)

end

end A017899.P10521565100819758954

namespace A017899

/-- `A003520(n+1)-A127682(2*n+1)` -/
def P10521565100819758954.Spec : Prop :=
  ∀ n, P10521565100819758954.a n = A017899 n

end A017899

/-! ## A017899.P17220108418873942250

`A000931(n)-Δ[Δ[A003520(n)]]`
-/

namespace A017899.P17220108418873942250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - (f1 (n + 1) - f1 n)

end

end A017899.P17220108418873942250

namespace A017899

/-- `A000931(n)-Δ[Δ[A003520(n)]]` -/
def P17220108418873942250.Spec : Prop :=
  ∀ n, P17220108418873942250.a n = A017899 n

end A017899

/-! ## A017899.P13313335632882371589

`A003520(n+1)+A003520(n)-A098523(n+1)`
-/

namespace A017899.P13313335632882371589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 1) + (A003520 n - A098523 (n + 1))

end

end A017899.P13313335632882371589

namespace A017899

/-- `A003520(n+1)+A003520(n)-A098523(n+1)` -/
def P13313335632882371589.Spec : Prop :=
  ∀ n, P13313335632882371589.a n = A017899 n

end A017899

/-! ## A017899.P11408782272730560155

`Δ[Δ[A003520(n+3)]]`
-/

namespace A017899.P11408782272730560155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017899.P11408782272730560155

namespace A017899

/-- `Δ[Δ[A003520(n+3)]]` -/
def P11408782272730560155.Spec : Prop :=
  ∀ n, P11408782272730560155.a n = A017899 n

end A017899

/-! ## A017899.P2938391669005177512

`Δ[A098523(n+1)-Δ[A099559(n+1)]]`
-/

namespace A017899.P2938391669005177512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098523 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017899.P2938391669005177512

namespace A017899

/-- `Δ[A098523(n+1)-Δ[A099559(n+1)]]` -/
def P2938391669005177512.Spec : Prop :=
  ∀ n, P2938391669005177512.a n = A017899 n

end A017899

/-! ## A017899.P9723371473843105356

`Δ[Δ[Δ[A099559(n+3)]]]`
-/

namespace A017899.P9723371473843105356
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017899.P9723371473843105356

namespace A017899

/-- `Δ[Δ[Δ[A099559(n+3)]]]` -/
def P9723371473843105356.Spec : Prop :=
  ∀ n, P9723371473843105356.a n = A017899 n

end A017899

