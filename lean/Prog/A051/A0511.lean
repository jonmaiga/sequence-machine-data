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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A051100: 

The programs for A051100, there is no canonical definition to state claims against.
-/

/-! ## A051100.P9231559687801541388

`∩[A216883(n+1), A341784(n+1)]`
-/

namespace A051100.P9231559687801541388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P9231559687801541388

/-! ## A051100.P18383224433762329158

`∩[A216883(n+1), A034031(n+1)]`
-/

namespace A051100.P18383224433762329158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P18383224433762329158

/-! ## A051100.P17130709058625185324

`∩[A216883(n+1), A057127(n+1)]`
-/

namespace A051100.P17130709058625185324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P17130709058625185324

/-! ## A051100.P13625945467670308688

`∩[A216883(n+1), A034034(n+1)]`
-/

namespace A051100.P13625945467670308688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P13625945467670308688

/-! ## A051100.P16748363938174005536

`∩[A216883(n+1), A002479(n+1)]`
-/

namespace A051100.P16748363938174005536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P16748363938174005536

/-! ## A051100.P17854176345334417130

`∩[A216883(n+1), A047475(n+1)]`
-/

namespace A051100.P17854176345334417130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P17854176345334417130

/-! ## A051100.P15237267243570829498

`∩[A047527(n+1)+1, A216883(n+1)]`
-/

namespace A051100.P15237267243570829498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P15237267243570829498

/-! ## A051100.P9436101452001413412

`∩[A047542(n+1)+2, A216883(n+1)]`
-/

namespace A051100.P9436101452001413412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P9436101452001413412

/-! ## A051100.P2385541164891294794

`∩[A047555(n+1)+2, A216883(n+1)]`
-/

namespace A051100.P2385541164891294794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P2385541164891294794

/-! ## A051100.P10823704700061472723

`∩[A047420(n+1), A216883(n+1)]`
-/

namespace A051100.P10823704700061472723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P10823704700061472723

/-! ## A051100.P24369968976185451

`∩[A047513(n+1)+2, A216883(n+1)]`
-/

namespace A051100.P24369968976185451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051100.P24369968976185451

/-! ## A051100.P14469907261279411490

`filter[A216883(n+1), A131078(#)]`
-/

namespace A051100.P14469907261279411490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A051100.P14469907261279411490

/-!
# A051102: Floor of exp(n-th prime).

The programs for A051102, the canonical program `A051102.P3333019133088521411` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051102 has offset 1).

The definition of A051102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051102.P3333019133088521411

`A000149(A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051102

/-- `A000149(A000040(n+1))` -/
def P3333019133088521411.Spec : Prop :=
  ∀ n, P3333019133088521411.a n = A051102 (n + 1)

theorem P3333019133088521411.correct : P3333019133088521411.Spec := by
  intro n
  simp only [A051102, Nat.add_sub_cancel]

end A051102

/-! ## A051102.P12126087521313760858

`floor(exp(p?[comp[n²]]))`
-/

namespace A051102.P12126087521313760858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌋

end

end A051102.P12126087521313760858

namespace A051102

/-- `floor(exp(p?[comp[n²]]))` -/
def P12126087521313760858.Spec : Prop :=
  ∀ n, P12126087521313760858.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P10908534397934437360

`record[∑{p}[n+2, floor(exp(#))]]`
-/

namespace A051102.P10908534397934437360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊Real.exp (p : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051102.P10908534397934437360

namespace A051102

/-- `record[∑{p}[n+2, floor(exp(#))]]` -/
def P10908534397934437360.Spec : Prop :=
  ∀ n, P10908534397934437360.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P3967523892820332312

`record[floor(exp(∑{p}[2-n, #]))]`
-/

namespace A051102.P3967523892820332312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051102.P3967523892820332312

namespace A051102

/-- `record[floor(exp(∑{p}[2-n, #]))]` -/
def P3967523892820332312.Spec : Prop :=
  ∀ n, P3967523892820332312.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P2097506500712742399

`record[∏{p}[n+2, floor(exp(#))]]`
-/

namespace A051102.P2097506500712742399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌊Real.exp (p : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051102.P2097506500712742399

namespace A051102

/-- `record[∏{p}[n+2, floor(exp(#))]]` -/
def P2097506500712742399.Spec : Prop :=
  ∀ n, P2097506500712742399.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P16367780563391751956

`floor(exp(A008578(n+2)))`
-/

namespace A051102.P16367780563391751956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A008578 (n + 2) : ℝ)⌋

end

end A051102.P16367780563391751956

namespace A051102

/-- `floor(exp(A008578(n+2)))` -/
def P16367780563391751956.Spec : Prop :=
  ∀ n, P16367780563391751956.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P320408440847883629

`floor(exp(sqrt(A001248(n+1))))`
-/

namespace A051102.P320408440847883629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sqrt (A001248 (n + 1) : ℝ))⌋

end

end A051102.P320408440847883629

namespace A051102

/-- `floor(exp(sqrt(A001248(n+1))))` -/
def P320408440847883629.Spec : Prop :=
  ∀ n, P320408440847883629.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P12332081684289183379

`record[floor(exp(A006530(n+2)))]`
-/

namespace A051102.P12332081684289183379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A006530 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051102.P12332081684289183379

namespace A051102

/-- `record[floor(exp(A006530(n+2)))]` -/
def P12332081684289183379.Spec : Prop :=
  ∀ n, P12332081684289183379.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P4566092972809502604

`record[floor(exp(A020639(n+2)))]`
-/

namespace A051102.P4566092972809502604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A020639 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051102.P4566092972809502604

namespace A051102

/-- `record[floor(exp(A020639(n+2)))]` -/
def P4566092972809502604.Spec : Prop :=
  ∀ n, P4566092972809502604.a n = A051102 (n + 1)

end A051102

/-! ## A051102.P4725022804352154314

`floor(exp(A006093(n+1)+1))`
-/

namespace A051102.P4725022804352154314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A006093 (n + 1) + 1 : ℝ)⌋

end

end A051102.P4725022804352154314

namespace A051102

/-- `floor(exp(A006093(n+1)+1))` -/
def P4725022804352154314.Spec : Prop :=
  ∀ n, P4725022804352154314.a n = A051102 (n + 1)

end A051102

/-!
# A051105: First differences of A005229.

The programs for A051105, the canonical program `A051105.P9489075769552413309` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051105 has offset 1).

The definition of A051105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051105.P9489075769552413309

`A005229(n+2)-A005229(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051105

/-- `A005229(n+2)-A005229(n+1)` -/
def P9489075769552413309.Spec : Prop :=
  ∀ n, P9489075769552413309.a n = A051105 (n + 1)

theorem P9489075769552413309.correct : P9489075769552413309.Spec := by
  intro n
  simp only [A051105, Nat.add_sub_cancel]

end A051105

/-! ## A051105.P9255575225012085535

`Δ[a(a(n-2)-1)+a(n-a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A051105.P9255575225012085535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (f1 (n - 2) - 1) + f1 (n - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A051105.P9255575225012085535

namespace A051105

/-- `Δ[a(a(n-2)-1)+a(n-a(n-2))]` -/
def P9255575225012085535.Spec : Prop :=
  ∀ n, P9255575225012085535.a n = A051105 (n + 1)

end A051105

/-! ## A051105.P15683299607343690852

`log2(gcd(2, ∑[A116591(n)]))`
-/

namespace A051105.P15683299607343690852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116591 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A051105.P15683299607343690852

namespace A051105

/-- `log2(gcd(2, ∑[A116591(n)]))` -/
def P15683299607343690852.Spec : Prop :=
  ∀ n, P15683299607343690852.a n = (A051105 (n + 1) : ℝ)

end A051105

/-! ## A051105.P18294478829024397648

`Δ[A005229(n+1)]`
-/

namespace A051105.P18294478829024397648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051105.P18294478829024397648

namespace A051105

/-- `Δ[A005229(n+1)]` -/
def P18294478829024397648.Spec : Prop :=
  ∀ n, P18294478829024397648.a n = A051105 (n + 1)

theorem P18294478829024397648.correct : P18294478829024397648.Spec := by
  intro n
  simp only [A051105, Nat.add_sub_cancel, A051105.P18294478829024397648.f1, A051105.P18294478829024397648.a, A051105.P9489075769552413309.a, SequenceMachineLib.memo_apply]

end A051105

/-! ## A051105.P3199115091034223804

`A001221(ceil(ratio[A005229(n+1)]))`
-/

namespace A051105.P3199115091034223804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A051105.P3199115091034223804

namespace A051105

/-- `A001221(ceil(ratio[A005229(n+1)]))` -/
def P3199115091034223804.Spec : Prop :=
  ∀ n, P3199115091034223804.a n = A051105 (n + 1)

end A051105

/-! ## A051105.P747457821956281770

`A001222(ceil(ratio[A005229(n+1)]))`
-/

namespace A051105.P747457821956281770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A051105.P747457821956281770

namespace A051105

/-- `A001222(ceil(ratio[A005229(n+1)]))` -/
def P747457821956281770.Spec : Prop :=
  ∀ n, P747457821956281770.a n = A051105 (n + 1)

end A051105

/-! ## A051105.P1398585812938192972

`A293539(ceil(ratio[A005229(n+1)]))`
-/

namespace A051105.P1398585812938192972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293539 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A051105.P1398585812938192972

namespace A051105

/-- `A293539(ceil(ratio[A005229(n+1)]))` -/
def P1398585812938192972.Spec : Prop :=
  ∀ n, P1398585812938192972.a n = A051105 (n + 1)

end A051105

/-! ## A051105.P827725846455070615

`A331739(A020639(∑[A116591(n)]))`
-/

namespace A051105.P827725846455070615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A051105.P827725846455070615

namespace A051105

/-- `A331739(A020639(∑[A116591(n)]))` -/
def P827725846455070615.Spec : Prop :=
  ∀ n, P827725846455070615.a n = A051105 (n + 1)

end A051105

/-! ## A051105.P15175548044956172134

`A000035(∑[A116591(n)]+1)`
-/

namespace A051105.P15175548044956172134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A051105.P15175548044956172134

namespace A051105

/-- `A000035(∑[A116591(n)]+1)` -/
def P15175548044956172134.Spec : Prop :=
  ∀ n, P15175548044956172134.a n = A051105 (n + 1)

end A051105

/-! ## A051105.P4099641539608783517

`1-A000035(∑[A116591(n)])`
-/

namespace A051105.P4099641539608783517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051105.P4099641539608783517

namespace A051105

/-- `1-A000035(∑[A116591(n)])` -/
def P4099641539608783517.Spec : Prop :=
  ∀ n, P4099641539608783517.a n = A051105 (n + 1)

end A051105

/-!
# A051106: Second diagonal of triangle A048601.

The programs for A051106, there is no canonical definition to state claims against.
-/

/-! ## A051106.P15582300452322252282

`A048601(∑[n+1]+2)`
-/

namespace A051106.P15582300452322252282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048601 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A051106.P15582300452322252282

/-! ## A051106.P14914665526987202878

`A005130(n+1)/2*(n+2)`
-/

namespace A051106.P14914665526987202878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005130 (n + 1) : ℚ) / 2 * (n + 2 : ℚ)

end

end A051106.P14914665526987202878

/-! ## A051106.P4152888033484681123

`record[gcd(A048571(n+1), A048601(n+1))]`
-/

namespace A051106.P4152888033484681123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048571 (n + 1)) (A048601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051106.P4152888033484681123

/-! ## A051106.P664151735474767617

`record[A048601(n+4)/A297654(n+2)]`
-/

namespace A051106.P664151735474767617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048601 (n + 4) : ℚ) / (A297654 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051106.P664151735474767617

/-! ## A051106.P1947619973733682373

`record[A048601(n+1)/A297622(n+2)]`
-/

namespace A051106.P1947619973733682373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048601 (n + 1) : ℚ) / (A297622 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051106.P1947619973733682373

/-!
# A051109: Expansion of g.f. (1+2*x+5*x^2)/(1-10*x^3).

The programs for A051109, the canonical program `A051109.P6748668306225414063` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051109 has offset 0).

The definition of A051109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+5x^2)/(1-10x^3))` (program `A051109.P6748668306225414063`, by `A051109.P6748668306225414063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051109.P14264555094442839759

`10*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A051109.P14264555094442839759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  10 * a (n - 3)

end

end A051109.P14264555094442839759

namespace A051109

/-- `10*a(n-3)` -/
def P14264555094442839759.Spec : Prop :=
  ∀ n, (P14264555094442839759.a n : ℤ) = A051109 n

end A051109

/-! ## A051109.P6748668306225414063

`ogf((1+2x+5x^2)/(1-10x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051109

/-- `ogf((1+2x+5x^2)/(1-10x^3))` -/
def P6748668306225414063.Spec : Prop :=
  ∀ n, P6748668306225414063.a n = A051109 n

theorem P6748668306225414063.correct : P6748668306225414063.Spec := by
  intro n
  simp only [A051109]

end A051109

/-! ## A051109.P2527283478312314691

`2^n*(5/4)^floor((n+1)/3)`
-/

namespace A051109.P2527283478312314691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * ((5 : ℚ) / 4) ^ (⌊(n + 1 : ℚ) / 3⌋ : ℤ)

end

end A051109.P2527283478312314691

namespace A051109

/-- `2^n*(5/4)^floor((n+1)/3)` -/
def P2527283478312314691.Spec : Prop :=
  ∀ n, P2527283478312314691.a n = (A051109 n : ℚ)

end A051109

/-! ## A051109.P17039227869611430400

`A194350(A042965(n+2))`
-/

namespace A051109.P17039227869611430400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A042965 (n + 2)).toNat

end

end A051109.P17039227869611430400

namespace A051109

/-- `A194350(A042965(n+2))` -/
def P17039227869611430400.Spec : Prop :=
  ∀ n, P17039227869611430400.a n = A051109 n

end A051109

/-! ## A051109.P4404897051233999947

`A194350(A047517(n+2))`
-/

namespace A051109.P4404897051233999947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A047517 (n + 2)).toNat

end

end A051109.P4404897051233999947

namespace A051109

/-- `A194350(A047517(n+2))` -/
def P4404897051233999947.Spec : Prop :=
  ∀ n, P4404897051233999947.a n = A051109 n

end A051109

/-! ## A051109.P5441398458460971431

`∪[A004643(n), A268100(n)]`
-/

namespace A051109.P5441398458460971431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051109.P5441398458460971431

namespace A051109

/-- `∪[A004643(n), A268100(n)]` -/
def P5441398458460971431.Spec : Prop :=
  ∀ n, (P5441398458460971431.a n : ℤ) = A051109 n

end A051109

/-! ## A051109.P223338134025901097

`A194350(record[A056699(n+1)])`
-/

namespace A051109.P223338134025901097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051109.P223338134025901097

namespace A051109

/-- `A194350(record[A056699(n+1)])` -/
def P223338134025901097.Spec : Prop :=
  ∀ n, P223338134025901097.a n = A051109 n

end A051109

/-! ## A051109.P3783030344738912493

`A194350(A004772(n+1)+1)`
-/

namespace A051109.P3783030344738912493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A004772 (n + 1) + 1).toNat

end

end A051109.P3783030344738912493

namespace A051109

/-- `A194350(A004772(n+1)+1)` -/
def P3783030344738912493.Spec : Prop :=
  ∀ n, P3783030344738912493.a n = A051109 n

end A051109

/-! ## A051109.P6534455179730551119

`A194350(A319371(n+1)+1)`
-/

namespace A051109.P6534455179730551119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A319371 (n + 1) + 1).toNat

end

end A051109.P6534455179730551119

namespace A051109

/-- `A194350(A319371(n+1)+1)` -/
def P6534455179730551119.Spec : Prop :=
  ∀ n, P6534455179730551119.a n = A051109 n

end A051109

/-! ## A051109.P2848610440317990339

`∩[A037124(n+1), A039690(n+1)]`
-/

namespace A051109.P2848610440317990339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051109.P2848610440317990339

namespace A051109

/-- `∩[A037124(n+1), A039690(n+1)]` -/
def P2848610440317990339.Spec : Prop :=
  ∀ n, (P2848610440317990339.a n : ℤ) = A051109 n

end A051109

/-! ## A051109.P8750234645698049677

`∩[A039690(n+1), A085133(n+1)]`
-/

namespace A051109.P8750234645698049677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051109.P8750234645698049677

namespace A051109

/-- `∩[A039690(n+1), A085133(n+1)]` -/
def P8750234645698049677.Spec : Prop :=
  ∀ n, (P8750234645698049677.a n : ℤ) = A051109 n

end A051109

/-! ## A051109.P15104257211807130697

`∩[A039690(n+1), A085135(n+1)]`
-/

namespace A051109.P15104257211807130697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051109.P15104257211807130697

namespace A051109

/-- `∩[A039690(n+1), A085135(n+1)]` -/
def P15104257211807130697.Spec : Prop :=
  ∀ n, (P15104257211807130697.a n : ℤ) = A051109 n

end A051109

/-! ## A051109.P6071575633685832424

`∩[A039690(n+1), A193460(n+1)]`
-/

namespace A051109.P6071575633685832424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051109.P6071575633685832424

namespace A051109

/-- `∩[A039690(n+1), A193460(n+1)]` -/
def P6071575633685832424.Spec : Prop :=
  ∀ n, (P6071575633685832424.a n : ℤ) = A051109 n

end A051109

/-! ## A051109.P11206280304411679792

`A004647(n+1)/2`
-/

namespace A051109.P11206280304411679792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004647 (n + 1) : ℚ) / 2

end

end A051109.P11206280304411679792

namespace A051109

/-- `A004647(n+1)/2` -/
def P11206280304411679792.Spec : Prop :=
  ∀ n, P11206280304411679792.a n = (A051109 n : ℚ)

end A051109

/-! ## A051109.P17579713961893138548

`A194350(A004772(n+2))`
-/

namespace A051109.P17579713961893138548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A004772 (n + 2)).toNat

end

end A051109.P17579713961893138548

namespace A051109

/-- `A194350(A004772(n+2))` -/
def P17579713961893138548.Spec : Prop :=
  ∀ n, P17579713961893138548.a n = A051109 n

end A051109

/-! ## A051109.P16313782863803535223

`A194350(A047503(n+2))`
-/

namespace A051109.P16313782863803535223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A047503 (n + 2)).toNat

end

end A051109.P16313782863803535223

namespace A051109

/-- `A194350(A047503(n+2))` -/
def P16313782863803535223.Spec : Prop :=
  ∀ n, P16313782863803535223.a n = A051109 n

end A051109

/-! ## A051109.P18115025884376127229

`A194350(A319371(n+2))`
-/

namespace A051109.P18115025884376127229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A319371 (n + 2)).toNat

end

end A051109.P18115025884376127229

namespace A051109

/-- `A194350(A319371(n+2))` -/
def P18115025884376127229.Spec : Prop :=
  ∀ n, P18115025884376127229.a n = A051109 n

end A051109

/-! ## A051109.P15456755878467037226

`A004655(A004773(n+1))/2`
-/

namespace A051109.P15456755878467037226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004655 (A004773 (n + 1)).toNat : ℚ) / 2

end

end A051109.P15456755878467037226

namespace A051109

/-- `A004655(A004773(n+1))/2` -/
def P15456755878467037226.Spec : Prop :=
  ∀ n, P15456755878467037226.a n = (A051109 n : ℚ)

end A051109

/-! ## A051109.P13471772495670836346

`A173862(n+2)*A245478(n+2)/2`
-/

namespace A051109.P13471772495670836346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173862 (n + 2) * A245478 (n + 2) : ℚ) / 2

end

end A051109.P13471772495670836346

namespace A051109

/-- `A173862(n+2)*A245478(n+2)/2` -/
def P13471772495670836346.Spec : Prop :=
  ∀ n, P13471772495670836346.a n = (A051109 n : ℚ)

end A051109

/-! ## A051109.P2686050732277056709

`record[Δ[A004655(n+1)/2]]`
-/

namespace A051109.P2686050732277056709
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004655 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051109.P2686050732277056709

namespace A051109

/-- `record[Δ[A004655(n+1)/2]]` -/
def P2686050732277056709.Spec : Prop :=
  ∀ n, P2686050732277056709.a n = (A051109 n : ℚ)

end A051109

/-!
# A051111: Expansion of x/(x^4-3*x^3+4*x^2-2*x+1).

The programs for A051111, the canonical program `A051111.P9910468435048179573` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051111 has offset 1).

The definition of A051111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x+4x^2-3x^3+x^4))` (program `A051111.P9910468435048179573`, by `A051111.P9910468435048179573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051111.P9910468435048179573

`ogf(x/(1-2x+4x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051111

/-- `ogf(x/(1-2x+4x^2-3x^3+x^4))` -/
def P9910468435048179573.Spec : Prop :=
  ∀ n, P9910468435048179573.a n = A051111 (n + 1)

theorem P9910468435048179573.correct : P9910468435048179573.Spec := by
  intro n
  simp only [A051111, Nat.add_sub_cancel]

end A051111

/-!
# A051112: Number of monotone Boolean functions of n variables with 4 mincuts. Also Sperner systems with 4 blocks.

The programs for A051112, there is no canonical definition to state claims against.
-/

/-! ## A051112.P15064786830535387199

`A028391(A092617(n))`
-/

namespace A051112.P15064786830535387199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A092617 n).toNat

end

end A051112.P15064786830535387199

/-! ## A051112.P4010295900402905592

`A226062(C(A373757(n), 2))`
-/

namespace A051112.P4010295900402905592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226062 (Nat.choose (A373757 n).toNat 2)

end

end A051112.P4010295900402905592

/-!
# A051113: Number of monotone Boolean functions of n variables with 5 mincuts.

The programs for A051113, there is no canonical definition to state claims against.
-/

/-! ## A051113.P819640196426685161

`A062801(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=6`
-/

namespace A051113.P819640196426685161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 6] fun n a =>
  A062801 (a (n - 1)).toNat

end

end A051113.P819640196426685161

/-! ## A051113.P5427531887114755232

`A181391(A059049(n)+2)`
-/

namespace A051113.P5427531887114755232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A059049 n + 2).toNat

end

end A051113.P5427531887114755232

/-!
# A051114: Number of monotone Boolean functions of n variables with 6 mincuts.

The programs for A051114, there is no canonical definition to state claims against.
-/

/-! ## A051114.P254644707506478301

`A248034(C(∑[n], 9))`
-/

namespace A051114.P254644707506478301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 9)

end

end A051114.P254644707506478301

/-! ## A051114.P783647776571147969

`A239261(∏[or(n-2, C(2, n))]²)`
-/

namespace A051114.P783647776571147969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 2) (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A051114.P783647776571147969

/-!
# A051119: a(n) = n/p^k, where p = largest prime dividing n and p^k = highest power of p dividing n.

The programs for A051119, the canonical program `A051119.P33126866714900772` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051119 has offset 1).

The definition of A051119 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053585, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051119.P33126866714900772

`(n+1)/A053585(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A051119

/-- `(n+1)/A053585(n+1)` -/
def P33126866714900772.Spec : Prop :=
  ∀ n, P33126866714900772.a n = (A051119 (n + 1) : ℚ)

end A051119

/-! ## A051119.P6988626060350364496

`gcd(n+1, A351168(n+1))`
-/

namespace A051119.P6988626060350364496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351168 (n + 1))

end

end A051119.P6988626060350364496

namespace A051119

/-- `gcd(n+1, A351168(n+1))` -/
def P6988626060350364496.Spec : Prop :=
  ∀ n, (P6988626060350364496.a n : ℤ) = A051119 (n + 1)

end A051119

/-! ## A051119.P3525532387030577352

`A052126(A243074(n+1))`
-/

namespace A051119.P3525532387030577352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A243074 (n + 1)).toNat

end

end A051119.P3525532387030577352

namespace A051119

/-- `A052126(A243074(n+1))` -/
def P3525532387030577352.Spec : Prop :=
  ∀ n, P3525532387030577352.a n = A051119 (n + 1)

end A051119

/-! ## A051119.P18343224289561524109

`gcd(A071262(n), A351425(n+1))`
-/

namespace A051119.P18343224289561524109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A351425 (n + 1))

end

end A051119.P18343224289561524109

namespace A051119

/-- `gcd(A071262(n), A351425(n+1))` -/
def P18343224289561524109.Spec : Prop :=
  ∀ n, (P18343224289561524109.a n : ℤ) = A051119 (n + 1)

end A051119

/-! ## A051119.P13231146677550808856

`gcd(A131738(n), A351419(n+1))`
-/

namespace A051119.P13231146677550808856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A351419 (n + 1))

end

end A051119.P13231146677550808856

namespace A051119

/-- `gcd(A131738(n), A351419(n+1))` -/
def P13231146677550808856.Spec : Prop :=
  ∀ n, (P13231146677550808856.a n : ℤ) = A051119 (n + 1)

end A051119

/-! ## A051119.P14589896373636325432

`(n+1)/A141809(A082186(n+1))`
-/

namespace A051119.P14589896373636325432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A141809 (A082186 (n + 1)).toNat : ℚ)

end

end A051119.P14589896373636325432

namespace A051119

/-- `(n+1)/A141809(A082186(n+1))` -/
def P14589896373636325432.Spec : Prop :=
  ∀ n, P14589896373636325432.a n = (A051119 (n + 1) : ℚ)

end A051119

/-! ## A051119.P11510123246441805886

`A243074(n+1)/A006530(n+1)`
-/

namespace A051119.P11510123246441805886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243074 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A051119.P11510123246441805886

namespace A051119

/-- `A243074(n+1)/A006530(n+1)` -/
def P11510123246441805886.Spec : Prop :=
  ∀ n, P11510123246441805886.a n = (A051119 (n + 1) : ℚ)

end A051119

/-! ## A051119.P1558975734007387127

`(n+1)/A006530(n+1)^A071178(n+1)`
-/

namespace A051119.P1558975734007387127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) ^ (A071178 (n + 1) : ℤ)

end

end A051119.P1558975734007387127

namespace A051119

/-- `(n+1)/A006530(n+1)^A071178(n+1)` -/
def P1558975734007387127.Spec : Prop :=
  ∀ n, P1558975734007387127.a n = (A051119 (n + 1) : ℚ)

end A051119

/-! ## A051119.P10676228198915208534

`val(A011782(n+2), A000079(A053585(n+1)))`
-/

namespace A051119.P10676228198915208534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A011782 (n + 2)).toNat (A000079 (A053585 (n + 1)).toNat).toNat

end

end A051119.P10676228198915208534

namespace A051119

/-- `val(A011782(n+2), A000079(A053585(n+1)))` -/
def P10676228198915208534.Spec : Prop :=
  ∀ n, (P10676228198915208534.a n : ℤ) = A051119 (n + 1)

end A051119

/-! ## A051119.P8575472967347937178

`gcd(A351425(n+1)², A124260(n+1))`
-/

namespace A051119.P8575472967347937178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351425 (n + 1) ^ 2) (A124260 (n + 1))

end

end A051119.P8575472967347937178

namespace A051119

/-- `gcd(A351425(n+1)², A124260(n+1))` -/
def P8575472967347937178.Spec : Prop :=
  ∀ n, (P8575472967347937178.a n : ℤ) = A051119 (n + 1)

end A051119

/-! ## A051119.P2644751344604340575

`A071974(A342768(n+1))`
-/

namespace A051119.P2644751344604340575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A342768 (n + 1)).toNat

end

end A051119.P2644751344604340575

namespace A051119

/-- `A071974(A342768(n+1))` -/
def P2644751344604340575.Spec : Prop :=
  ∀ n, P2644751344604340575.a n = A051119 (n + 1)

end A051119

/-! ## A051119.P13458332824597241992

`A243057(A242420(n+1))/A006530(n+1)`
-/

namespace A051119.P13458332824597241992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243057 (A242420 (n + 1)).toNat : ℚ) / (A006530 (n + 1) : ℚ)

end

end A051119.P13458332824597241992

namespace A051119

/-- `A243057(A242420(n+1))/A006530(n+1)` -/
def P13458332824597241992.Spec : Prop :=
  ∀ n, P13458332824597241992.a n = (A051119 (n + 1) : ℚ)

end A051119

/-! ## A051119.P397491932602199302

`A243057(A243057(n+1))/A006530(n+1)`
-/

namespace A051119.P397491932602199302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243057 (A243057 (n + 1)).toNat : ℚ) / (A006530 (n + 1) : ℚ)

end

end A051119.P397491932602199302

namespace A051119

/-- `A243057(A243057(n+1))/A006530(n+1)` -/
def P397491932602199302.Spec : Prop :=
  ∀ n, P397491932602199302.a n = (A051119 (n + 1) : ℚ)

end A051119

/-! ## A051119.P5303263734259166085

`A243074(n+1)/A087039((n+1)²)`
-/

namespace A051119.P5303263734259166085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243074 (n + 1) : ℚ) / (A087039 ((n + 1) ^ 2) : ℚ)

end

end A051119.P5303263734259166085

namespace A051119

/-- `A243074(n+1)/A087039((n+1)²)` -/
def P5303263734259166085.Spec : Prop :=
  ∀ n, P5303263734259166085.a n = (A051119 (n + 1) : ℚ)

end A051119

/-! ## A051119.P5163101408810800180

`A243074((n+1)²)/A243074(n+1)`
-/

namespace A051119.P5163101408810800180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243074 ((n + 1) ^ 2) : ℚ) / (A243074 (n + 1) : ℚ)

end

end A051119.P5163101408810800180

namespace A051119

/-- `A243074((n+1)²)/A243074(n+1)` -/
def P5163101408810800180.Spec : Prop :=
  ∀ n, P5163101408810800180.a n = (A051119 (n + 1) : ℚ)

end A051119

/-!
# A051121: Dates at fortnightly intervals starting on Jan 01 of a leap year in the Julian calendar.

The programs for A051121, there is no canonical definition to state claims against.
-/

/-! ## A051121.P17339060411695092194

`A003786(Δ[n²])`
-/

namespace A051121.P17339060411695092194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003786 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051121.P17339060411695092194

/-!
# A051122: a(n) = Fibonacci(n) AND Fibonacci(n+1).

The programs for A051122, the canonical program `A051122.P9336883441463544165` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051122 has offset 0).

The definition of A051122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051122.P1224437156443885953

`and(A094966(n), A094967(n))`
-/

namespace A051122.P1224437156443885953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094966 n) (A094967 n)

end

end A051122.P1224437156443885953

namespace A051122

/-- `and(A094966(n), A094967(n))` -/
def P1224437156443885953.Spec : Prop :=
  ∀ n, P1224437156443885953.a n = A051122 n

end A051122

/-! ## A051122.P18283565839276693697

`and(A000045(n), ∑[A212804(n)])`
-/

namespace A051122.P18283565839276693697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051122.P18283565839276693697

namespace A051122

/-- `and(A000045(n), ∑[A212804(n)])` -/
def P18283565839276693697.Spec : Prop :=
  ∀ n, P18283565839276693697.a n = A051122 n

end A051122

/-! ## A051122.P9336883441463544165

`and(A000045(n+1), A000045(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051122

/-- `and(A000045(n+1), A000045(n))` -/
def P9336883441463544165.Spec : Prop :=
  ∀ n, P9336883441463544165.a n = A051122 n

theorem P9336883441463544165.correct : P9336883441463544165.Spec := by
  intro n
  simp only [A051122]

end A051122

/-! ## A051122.P3983524806540809485

`and(∑[A212804(n)], A212804(n+1))`
-/

namespace A051122.P3983524806540809485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A212804 (n + 1))

end

end A051122.P3983524806540809485

namespace A051122

/-- `and(∑[A212804(n)], A212804(n+1))` -/
def P3983524806540809485.Spec : Prop :=
  ∀ n, P3983524806540809485.a n = A051122 n

end A051122

/-! ## A051122.P4350697100241079224

`and(A001611(n)-1, ∑[A212804(n)])`
-/

namespace A051122.P4350697100241079224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001611 n - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051122.P4350697100241079224

namespace A051122

/-- `and(A001611(n)-1, ∑[A212804(n)])` -/
def P4350697100241079224.Spec : Prop :=
  ∀ n, P4350697100241079224.a n = A051122 n

end A051122

/-! ## A051122.P9055872900653295809

`and(∑[A212804(n)], A103609(2*n))`
-/

namespace A051122.P9055872900653295809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A103609 (2 * n))

end

end A051122.P9055872900653295809

namespace A051122

/-- `and(∑[A212804(n)], A103609(2*n))` -/
def P9055872900653295809.Spec : Prop :=
  ∀ n, P9055872900653295809.a n = A051122 n

end A051122

/-! ## A051122.P14975155085819095473

`and(A001611(n+1)-1, A212804(n+1))`
-/

namespace A051122.P14975155085819095473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001611 (n + 1) - 1) (A212804 (n + 1))

end

end A051122.P14975155085819095473

namespace A051122

/-- `and(A001611(n+1)-1, A212804(n+1))` -/
def P14975155085819095473.Spec : Prop :=
  ∀ n, P14975155085819095473.a n = A051122 n

end A051122

/-! ## A051122.P8881540371058040794

`A051123(n)-A051124(n)`
-/

namespace A051122.P8881540371058040794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051123 n - A051124 n

end

end A051122.P8881540371058040794

namespace A051122

/-- `A051123(n)-A051124(n)` -/
def P8881540371058040794.Spec : Prop :=
  ∀ n, P8881540371058040794.a n = A051122 n

theorem P8881540371058040794.correct : P8881540371058040794.Spec := by
  intro n
  simp only [A051122, Nat.add_sub_cancel, A051122.P8881540371058040794.a, A051122.P9336883441463544165.a, A000045, A000045.P11838749114346432762.a, A051123, A051123.P10788588402784793583.a, A051124, A051124.P2649153232714135343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051122

/-! ## A051122.P16801230051064005882

`A000045(n+2)-A051123(n)`
-/

namespace A051122.P16801230051064005882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A051123 n

end

end A051122.P16801230051064005882

namespace A051122

/-- `A000045(n+2)-A051123(n)` -/
def P16801230051064005882.Spec : Prop :=
  ∀ n, P16801230051064005882.a n = A051122 n

theorem P16801230051064005882.correct : P16801230051064005882.Spec := by
  intro n
  simp only [A051122, Nat.add_sub_cancel, A051122.P16801230051064005882.a, A051122.P9336883441463544165.a, A000045, A000045.P11838749114346432762.a, A051123, A051123.P10788588402784793583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051122

/-! ## A051122.P7995963295173847803

`and(A053602(2*n), A123231(2*n+1))`
-/

namespace A051122.P7995963295173847803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053602 (2 * n)) (A123231 (2 * n + 1))

end

end A051122.P7995963295173847803

namespace A051122

/-- `and(A053602(2*n), A123231(2*n+1))` -/
def P7995963295173847803.Spec : Prop :=
  ∀ n, P7995963295173847803.a n = A051122 n

end A051122

/-! ## A051122.P13091593849282890742

`and(A000071(n+1)+1, Δ[A000071(n+1)])`
-/

namespace A051122.P13091593849282890742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000071 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A051122.P13091593849282890742

namespace A051122

/-- `and(A000071(n+1)+1, Δ[A000071(n+1)])` -/
def P13091593849282890742.Spec : Prop :=
  ∀ n, P13091593849282890742.a n = A051122 n

end A051122

/-! ## A051122.P9002382829191822273

`or(A000045(n), A051124(n))-A051124(n)`
-/

namespace A051122.P9002382829191822273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 n) (A051124 n) - A051124 n

end

end A051122.P9002382829191822273

namespace A051122

/-- `or(A000045(n), A051124(n))-A051124(n)` -/
def P9002382829191822273.Spec : Prop :=
  ∀ n, P9002382829191822273.a n = A051122 n

end A051122

/-! ## A051122.P18125395059276504050

`and(A053602(2*n+1)-A053602(2*n), A053602(2*n))`
-/

namespace A051122.P18125395059276504050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053602 (2 * n + 1) - A053602 (2 * n)) (A053602 (2 * n))

end

end A051122.P18125395059276504050

namespace A051122

/-- `and(A053602(2*n+1)-A053602(2*n), A053602(2*n))` -/
def P18125395059276504050.Spec : Prop :=
  ∀ n, P18125395059276504050.a n = A051122 n

end A051122

/-! ## A051122.P12449259559299459792

`and(Δ[A103609(2*(n+2))], A212804(n+1))`
-/

namespace A051122.P12449259559299459792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A212804 (n + 1))

end

end A051122.P12449259559299459792

namespace A051122

/-- `and(Δ[A103609(2*(n+2))], A212804(n+1))` -/
def P12449259559299459792.Spec : Prop :=
  ∀ n, P12449259559299459792.a n = A051122 n

end A051122

/-! ## A051122.P14690642851314994766

`and(Δ[A103609(2*(n+2))], A103609(2*n))`
-/

namespace A051122.P14690642851314994766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A103609 (2 * n))

end

end A051122.P14690642851314994766

namespace A051122

/-- `and(Δ[A103609(2*(n+2))], A103609(2*n))` -/
def P14690642851314994766.Spec : Prop :=
  ∀ n, P14690642851314994766.a n = A051122 n

end A051122

/-! ## A051122.P11893128434771358263

`and(A000045(n), A052956(n))`
-/

namespace A051122.P11893128434771358263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 n) (A052956 n)

end

end A051122.P11893128434771358263

namespace A051122

/-- `and(A000045(n), A052956(n))` -/
def P11893128434771358263.Spec : Prop :=
  ∀ n, P11893128434771358263.a n = A051122 n

end A051122

/-! ## A051122.P17272766109215915383

`and(A052956(n), A324969(n+1))`
-/

namespace A051122.P17272766109215915383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052956 n) (A324969 (n + 1))

end

end A051122.P17272766109215915383

namespace A051122

/-- `and(A052956(n), A324969(n+1))` -/
def P17272766109215915383.Spec : Prop :=
  ∀ n, P17272766109215915383.a n = A051122 n

end A051122

/-!
# A051123: a(n) = Fibonacci(n) OR Fibonacci(n+1).

The programs for A051123, the canonical program `A051123.P10788588402784793583` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051123 has offset 0).

The definition of A051123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051123.P10458392794340606419

`A051124(n)+A051122(n)`
-/

namespace A051123.P10458392794340606419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051124 n + A051122 n

end

end A051123.P10458392794340606419

namespace A051123

/-- `A051124(n)+A051122(n)` -/
def P10458392794340606419.Spec : Prop :=
  ∀ n, P10458392794340606419.a n = A051123 n

theorem P10458392794340606419.correct : P10458392794340606419.Spec := by
  intro n
  simp only [A051123, Nat.add_sub_cancel, A051123.P10458392794340606419.a, A051123.P10788588402784793583.a, A000045, A000045.P11838749114346432762.a, A051122, A051122.P9336883441463544165.a, A051124, A051124.P2649153232714135343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051123

/-! ## A051123.P2893393807297463873

`or(A000045(n), A051124(n))`
-/

namespace A051123.P2893393807297463873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 n) (A051124 n)

end

end A051123.P2893393807297463873

namespace A051123

/-- `or(A000045(n), A051124(n))` -/
def P2893393807297463873.Spec : Prop :=
  ∀ n, P2893393807297463873.a n = A051123 n

end A051123

/-! ## A051123.P8494360721873435958

`or(A094966(n), A094967(n))`
-/

namespace A051123.P8494360721873435958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094966 n) (A094967 n)

end

end A051123.P8494360721873435958

namespace A051123

/-- `or(A094966(n), A094967(n))` -/
def P8494360721873435958.Spec : Prop :=
  ∀ n, P8494360721873435958.a n = A051123 n

end A051123

/-! ## A051123.P7619984523269660985

`or(A000045(n), ∑[A212804(n)])`
-/

namespace A051123.P7619984523269660985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051123.P7619984523269660985

namespace A051123

/-- `or(A000045(n), ∑[A212804(n)])` -/
def P7619984523269660985.Spec : Prop :=
  ∀ n, P7619984523269660985.a n = A051123 n

end A051123

/-! ## A051123.P10788588402784793583

`A000045(n+2)-A051122(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A051123

/-- `A000045(n+2)-A051122(n)` -/
def P10788588402784793583.Spec : Prop :=
  ∀ n, P10788588402784793583.a n = A051123 n

theorem P10788588402784793583.correct : P10788588402784793583.Spec := by
  intro n
  simp only [A051123]

end A051123

/-! ## A051123.P15580786760241716138

`or(A000045(n+1), A000045(n))`
-/

namespace A051123.P15580786760241716138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 (n + 1)) (A000045 n)

end

end A051123.P15580786760241716138

namespace A051123

/-- `or(A000045(n+1), A000045(n))` -/
def P15580786760241716138.Spec : Prop :=
  ∀ n, P15580786760241716138.a n = A051123 n

end A051123

/-! ## A051123.P6190091722356865646

`or(A081659(n)-n, A000045(n))`
-/

namespace A051123.P6190091722356865646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081659 n - (n : ℤ)) (A000045 n)

end

end A051123.P6190091722356865646

namespace A051123

/-- `or(A081659(n)-n, A000045(n))` -/
def P6190091722356865646.Spec : Prop :=
  ∀ n, P6190091722356865646.a n = A051123 n

end A051123

/-! ## A051123.P1439318137297086037

`or(∑[A212804(n)], A212804(n+1))`
-/

namespace A051123.P1439318137297086037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A212804 (n + 1))

end

end A051123.P1439318137297086037

namespace A051123

/-- `or(∑[A212804(n)], A212804(n+1))` -/
def P1439318137297086037.Spec : Prop :=
  ∀ n, P1439318137297086037.a n = A051123 n

end A051123

/-! ## A051123.P13482015903574796289

`or(A001611(n)-1, ∑[A212804(n)])`
-/

namespace A051123.P13482015903574796289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001611 n - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051123.P13482015903574796289

namespace A051123

/-- `or(A001611(n)-1, ∑[A212804(n)])` -/
def P13482015903574796289.Spec : Prop :=
  ∀ n, P13482015903574796289.a n = A051123 n

end A051123

/-! ## A051123.P14921366416010387452

`or(∑[A212804(n)], A103609(2*n))`
-/

namespace A051123.P14921366416010387452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A103609 (2 * n))

end

end A051123.P14921366416010387452

namespace A051123

/-- `or(∑[A212804(n)], A103609(2*n))` -/
def P14921366416010387452.Spec : Prop :=
  ∀ n, P14921366416010387452.a n = A051123 n

end A051123

/-! ## A051123.P12078905123404820634

`or(A324969(n+1), A324969(n+2))`
-/

namespace A051123.P12078905123404820634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324969 (n + 1)) (A324969 (n + 2))

end

end A051123.P12078905123404820634

namespace A051123

/-- `or(A324969(n+1), A324969(n+2))` -/
def P12078905123404820634.Spec : Prop :=
  ∀ n, P12078905123404820634.a n = A051123 n

end A051123

/-! ## A051123.P18347317421447449776

`or(A001611(n+1)-1, A212804(n+1))`
-/

namespace A051123.P18347317421447449776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001611 (n + 1) - 1) (A212804 (n + 1))

end

end A051123.P18347317421447449776

namespace A051123

/-- `or(A001611(n+1)-1, A212804(n+1))` -/
def P18347317421447449776.Spec : Prop :=
  ∀ n, P18347317421447449776.a n = A051123 n

end A051123

/-! ## A051123.P12487784932792698779

`or(A001611(n+1)-1, A103609(2*n))`
-/

namespace A051123.P12487784932792698779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001611 (n + 1) - 1) (A103609 (2 * n))

end

end A051123.P12487784932792698779

namespace A051123

/-- `or(A001611(n+1)-1, A103609(2*n))` -/
def P12487784932792698779.Spec : Prop :=
  ∀ n, P12487784932792698779.a n = A051123 n

end A051123

/-! ## A051123.P9549221350530335212

`or(A000071(n+1)+1, Δ[A000071(n+1)])`
-/

namespace A051123.P9549221350530335212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000071 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A051123.P9549221350530335212

namespace A051123

/-- `or(A000071(n+1)+1, Δ[A000071(n+1)])` -/
def P9549221350530335212.Spec : Prop :=
  ∀ n, P9549221350530335212.a n = A051123 n

end A051123

/-! ## A051123.P13626092929309755805

`or(A053602(2*n+1)-A053602(2*n), A053602(2*n))`
-/

namespace A051123.P13626092929309755805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053602 (2 * n + 1) - A053602 (2 * n)) (A053602 (2 * n))

end

end A051123.P13626092929309755805

namespace A051123

/-- `or(A053602(2*n+1)-A053602(2*n), A053602(2*n))` -/
def P13626092929309755805.Spec : Prop :=
  ∀ n, P13626092929309755805.a n = A051123 n

end A051123

/-! ## A051123.P15702933177323187626

`A053602(2*n+1)-and(A053602(2*n), A123231(2*n+1))`
-/

namespace A051123.P15702933177323187626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) - Int.land (A053602 (2 * n)) (A123231 (2 * n + 1))

end

end A051123.P15702933177323187626

namespace A051123

/-- `A053602(2*n+1)-and(A053602(2*n), A123231(2*n+1))` -/
def P15702933177323187626.Spec : Prop :=
  ∀ n, P15702933177323187626.a n = A051123 n

end A051123

/-! ## A051123.P11349302838334801887

`or(Δ[A103609(2*(n+2))], A103609(2*n))`
-/

namespace A051123.P11349302838334801887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A103609 (2 * n))

end

end A051123.P11349302838334801887

namespace A051123

/-- `or(Δ[A103609(2*(n+2))], A103609(2*n))` -/
def P11349302838334801887.Spec : Prop :=
  ∀ n, P11349302838334801887.a n = A051123 n

end A051123

/-!
# A051124: a(n) = Fibonacci(n) XOR Fibonacci(n+1).

The programs for A051124, the canonical program `A051124.P2649153232714135343` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051124 has offset 0).

The definition of A051124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051124.P2649153232714135343

`A051123(n)-A051122(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051124

/-- `A051123(n)-A051122(n)` -/
def P2649153232714135343.Spec : Prop :=
  ∀ n, P2649153232714135343.a n = A051124 n

theorem P2649153232714135343.correct : P2649153232714135343.Spec := by
  intro n
  simp only [A051124]

end A051124

/-! ## A051124.P7896333853595345816

`xor(A094966(n), A094967(n))`
-/

namespace A051124.P7896333853595345816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094966 n) (A094967 n)

end

end A051124.P7896333853595345816

namespace A051124

/-- `xor(A094966(n), A094967(n))` -/
def P7896333853595345816.Spec : Prop :=
  ∀ n, P7896333853595345816.a n = A051124 n

end A051124

/-! ## A051124.P12281483601976411628

`xor(A000045(n), ∑[A212804(n)])`
-/

namespace A051124.P12281483601976411628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051124.P12281483601976411628

namespace A051124

/-- `xor(A000045(n), ∑[A212804(n)])` -/
def P12281483601976411628.Spec : Prop :=
  ∀ n, P12281483601976411628.a n = A051124 n

end A051124

/-! ## A051124.P14902292486300607132

`xor(A000045(n+1), A000045(n))`
-/

namespace A051124.P14902292486300607132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (n + 1)) (A000045 n)

end

end A051124.P14902292486300607132

namespace A051124

/-- `xor(A000045(n+1), A000045(n))` -/
def P14902292486300607132.Spec : Prop :=
  ∀ n, P14902292486300607132.a n = A051124 n

end A051124

/-! ## A051124.P12431148260265281926

`xor(A081659(n)-n, A000045(n))`
-/

namespace A051124.P12431148260265281926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081659 n - (n : ℤ)) (A000045 n)

end

end A051124.P12431148260265281926

namespace A051124

/-- `xor(A081659(n)-n, A000045(n))` -/
def P12431148260265281926.Spec : Prop :=
  ∀ n, P12431148260265281926.a n = A051124 n

end A051124

/-! ## A051124.P18146575492386912457

`xor(∑[A212804(n)], A212804(n+1))`
-/

namespace A051124.P18146575492386912457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A212804 (n + 1))

end

end A051124.P18146575492386912457

namespace A051124

/-- `xor(∑[A212804(n)], A212804(n+1))` -/
def P18146575492386912457.Spec : Prop :=
  ∀ n, P18146575492386912457.a n = A051124 n

end A051124

/-! ## A051124.P18381792489296817377

`xor(A001611(n)-1, ∑[A212804(n)])`
-/

namespace A051124.P18381792489296817377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001611 n - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051124.P18381792489296817377

namespace A051124

/-- `xor(A001611(n)-1, ∑[A212804(n)])` -/
def P18381792489296817377.Spec : Prop :=
  ∀ n, P18381792489296817377.a n = A051124 n

end A051124

/-! ## A051124.P7276873005062358197

`xor(∑[A212804(n)], A103609(2*n))`
-/

namespace A051124.P7276873005062358197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A103609 (2 * n))

end

end A051124.P7276873005062358197

namespace A051124

/-- `xor(∑[A212804(n)], A103609(2*n))` -/
def P7276873005062358197.Spec : Prop :=
  ∀ n, P7276873005062358197.a n = A051124 n

end A051124

/-! ## A051124.P13546219437648958798

`xor(A001611(n+1)-1, A212804(n+1))`
-/

namespace A051124.P13546219437648958798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001611 (n + 1) - 1) (A212804 (n + 1))

end

end A051124.P13546219437648958798

namespace A051124

/-- `xor(A001611(n+1)-1, A212804(n+1))` -/
def P13546219437648958798.Spec : Prop :=
  ∀ n, P13546219437648958798.a n = A051124 n

end A051124

/-! ## A051124.P10469185778917520607

`xor(A001611(n+1)-1, A103609(2*n))`
-/

namespace A051124.P10469185778917520607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001611 (n + 1) - 1) (A103609 (2 * n))

end

end A051124.P10469185778917520607

namespace A051124

/-- `xor(A001611(n+1)-1, A103609(2*n))` -/
def P10469185778917520607.Spec : Prop :=
  ∀ n, P10469185778917520607.a n = A051124 n

end A051124

/-! ## A051124.P7364776208500322514

`xor(A000071(n+1)+1, Δ[A000071(n+1)])`
-/

namespace A051124.P7364776208500322514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000071 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A051124.P7364776208500322514

namespace A051124

/-- `xor(A000071(n+1)+1, Δ[A000071(n+1)])` -/
def P7364776208500322514.Spec : Prop :=
  ∀ n, P7364776208500322514.a n = A051124 n

end A051124

/-! ## A051124.P1105776288322146748

`xor(A053602(2*n+1)-A053602(2*n), A053602(2*n))`
-/

namespace A051124.P1105776288322146748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053602 (2 * n + 1) - A053602 (2 * n)) (A053602 (2 * n))

end

end A051124.P1105776288322146748

namespace A051124

/-- `xor(A053602(2*n+1)-A053602(2*n), A053602(2*n))` -/
def P1105776288322146748.Spec : Prop :=
  ∀ n, P1105776288322146748.a n = A051124 n

end A051124

/-! ## A051124.P12291339056234255809

`xor(Δ[A103609(2*(n+2))], A103609(2*n))`
-/

namespace A051124.P12291339056234255809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A103609 (2 * n))

end

end A051124.P12291339056234255809

namespace A051124

/-- `xor(Δ[A103609(2*(n+2))], A103609(2*n))` -/
def P12291339056234255809.Spec : Prop :=
  ∀ n, P12291339056234255809.a n = A051124 n

end A051124

/-!
# A051125: Table T(n,k) = max{n,k} read by antidiagonals (n >= 1, k >= 1).

The programs for A051125, the canonical program `A051125.P9703982554680975134` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051125 has offset 1).

The definition of A051125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051125.P9703982554680975134

`A003984(n)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A051125

/-- `A003984(n)+1` -/
def P9703982554680975134.Spec : Prop :=
  ∀ n, P9703982554680975134.a n = A051125 (n + 1)

theorem P9703982554680975134.correct : P9703982554680975134.Spec := by
  intro n
  simp only [A051125, Nat.add_sub_cancel]

end A051125

/-! ## A051125.P3632396481179159304

`ceil(sqrt(A375510(n)))`
-/

namespace A051125.P3632396481179159304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A375510 n : ℝ)⌉

end

end A051125.P3632396481179159304

namespace A051125

/-- `ceil(sqrt(A375510(n)))` -/
def P3632396481179159304.Spec : Prop :=
  ∀ n, P3632396481179159304.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P10753829076917267011

`ceil(log2(A271709(n)))`
-/

namespace A051125.P10753829076917267011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A271709 n : ℝ)⌉

end

end A051125.P10753829076917267011

namespace A051125

/-- `ceil(log2(A271709(n)))` -/
def P10753829076917267011.Spec : Prop :=
  ∀ n, P10753829076917267011.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P11945997991760457625

`floor(sqrt(A220508(n)))+1`
-/

namespace A051125.P11945997991760457625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A220508 n) + 1

end

end A051125.P11945997991760457625

namespace A051125

/-- `floor(sqrt(A220508(n)))+1` -/
def P11945997991760457625.Spec : Prop :=
  ∀ n, P11945997991760457625.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P16159375046877560450

`ceil(sqrt(A060734(n+1)))`
-/

namespace A051125.P16159375046877560450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060734 (n + 1) : ℝ)⌉

end

end A051125.P16159375046877560450

namespace A051125

/-- `ceil(sqrt(A060734(n+1)))` -/
def P16159375046877560450.Spec : Prop :=
  ∀ n, P16159375046877560450.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P4324436754929328014

`ceil(sqrt(A060736(n+1)))`
-/

namespace A051125.P4324436754929328014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060736 (n + 1) : ℝ)⌉

end

end A051125.P4324436754929328014

namespace A051125

/-- `ceil(sqrt(A060736(n+1)))` -/
def P4324436754929328014.Spec : Prop :=
  ∀ n, P4324436754929328014.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P4714527227195390378

`ceil(sqrt(A081344(n+1)))`
-/

namespace A051125.P4714527227195390378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A081344 (n + 1) : ℝ)⌉

end

end A051125.P4714527227195390378

namespace A051125

/-- `ceil(sqrt(A081344(n+1)))` -/
def P4714527227195390378.Spec : Prop :=
  ∀ n, P4714527227195390378.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P8150157778956605314

`ceil(sqrt(A185725(n+1)))`
-/

namespace A051125.P8150157778956605314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A185725 (n + 1) : ℝ)⌉

end

end A051125.P8150157778956605314

namespace A051125

/-- `ceil(sqrt(A185725(n+1)))` -/
def P8150157778956605314.Spec : Prop :=
  ∀ n, P8150157778956605314.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P17283661708647365551

`ceil(sqrt(A185728(n+1)))`
-/

namespace A051125.P17283661708647365551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A185728 (n + 1) : ℝ)⌉

end

end A051125.P17283661708647365551

namespace A051125

/-- `ceil(sqrt(A185728(n+1)))` -/
def P17283661708647365551.Spec : Prop :=
  ∀ n, P17283661708647365551.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P5131580992500000185

`ceil(sqrt(A213922(n+1)))`
-/

namespace A051125.P5131580992500000185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A213922 (n + 1) : ℝ)⌉

end

end A051125.P5131580992500000185

namespace A051125

/-- `ceil(sqrt(A213922(n+1)))` -/
def P5131580992500000185.Spec : Prop :=
  ∀ n, P5131580992500000185.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P10435958481193435781

`ceil(sqrt(A269780(n+1)))`
-/

namespace A051125.P10435958481193435781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A269780 (n + 1) : ℝ)⌉

end

end A051125.P10435958481193435781

namespace A051125

/-- `ceil(sqrt(A269780(n+1)))` -/
def P10435958481193435781.Spec : Prop :=
  ∀ n, P10435958481193435781.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P9510519209566395242

`floor(log2(A131816(n)))+1`
-/

namespace A051125.P9510519209566395242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A131816 n).toNat + 1

end

end A051125.P9510519209566395242

namespace A051125

/-- `floor(log2(A131816(n)))+1` -/
def P9510519209566395242.Spec : Prop :=
  ∀ n, (P9510519209566395242.a n : ℤ) = A051125 (n + 1)

end A051125

/-! ## A051125.P7756493537956893339

`ceil(A204022(n+1)/2)`
-/

namespace A051125.P7756493537956893339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204022 (n + 1) : ℚ) / 2⌉

end

end A051125.P7756493537956893339

namespace A051125

/-- `ceil(A204022(n+1)/2)` -/
def P7756493537956893339.Spec : Prop :=
  ∀ n, P7756493537956893339.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P14872606379977683392

`∑[char[∑[n]]]-A004197(n)`
-/

namespace A051125.P14872606379977683392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004197 n

end

end A051125.P14872606379977683392

namespace A051125

/-- `∑[char[∑[n]]]-A004197(n)` -/
def P14872606379977683392.Spec : Prop :=
  ∀ n, P14872606379977683392.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P8004791033658375142

`A000463(A204022(n+1))`
-/

namespace A051125.P8004791033658375142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A204022 (n + 1)).toNat

end

end A051125.P8004791033658375142

namespace A051125

/-- `A000463(A204022(n+1))` -/
def P8004791033658375142.Spec : Prop :=
  ∀ n, P8004791033658375142.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P7038304817545374185

`A008619(2*A003984(n))`
-/

namespace A051125.P7038304817545374185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A003984 n).toNat

end

end A051125.P7038304817545374185

namespace A051125

/-- `A008619(2*A003984(n))` -/
def P7038304817545374185.Spec : Prop :=
  ∀ n, P7038304817545374185.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P7347309445790159156

`A027656(2*A003984(n))`
-/

namespace A051125.P7347309445790159156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A003984 n).toNat

end

end A051125.P7347309445790159156

namespace A051125

/-- `A027656(2*A003984(n))` -/
def P7347309445790159156.Spec : Prop :=
  ∀ n, P7347309445790159156.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P14163255432398091643

`A101776(n)-A053616(n)`
-/

namespace A051125.P14163255432398091643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A053616 n

end

end A051125.P14163255432398091643

namespace A051125

/-- `A101776(n)-A053616(n)` -/
def P14163255432398091643.Spec : Prop :=
  ∀ n, P14163255432398091643.a n = A051125 (n + 1)

end A051125

/-! ## A051125.P15037286506405008100

`A141611(n)/A144480(n)`
-/

namespace A051125.P15037286506405008100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A144480 n : ℚ)

end

end A051125.P15037286506405008100

namespace A051125

/-- `A141611(n)/A144480(n)` -/
def P15037286506405008100.Spec : Prop :=
  ∀ n, P15037286506405008100.a n = (A051125 (n + 1) : ℚ)

end A051125

/-! ## A051125.P11760613675792350475

`A049581(n)+A003983(n+1)`
-/

namespace A051125.P11760613675792350475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n + A003983 (n + 1)

end

end A051125.P11760613675792350475

namespace A051125

/-- `A049581(n)+A003983(n+1)` -/
def P11760613675792350475.Spec : Prop :=
  ∀ n, P11760613675792350475.a n = A051125 (n + 1)

end A051125

/-!
# A051126: Table T(n,k) = n mod k read by downward antidiagonals (n >= 1, k >= 1).

The programs for A051126, the canonical program `A051126.P17323727967013825035` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051126 has offset 1).

The definition of A051126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051126.P6852179843363516562

`A051777(comp[∑[n]]+1)`
-/

namespace A051126.P6852179843363516562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A051126.P6852179843363516562

namespace A051126

/-- `A051777(comp[∑[n]]+1)` -/
def P6852179843363516562.Spec : Prop :=
  ∀ n, P6852179843363516562.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P16575218225595425026

`(comp[∑[n]]-n)%A004736(n+1)`
-/

namespace A051126.P16575218225595425026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A004736 (n + 1))

end

end A051126.P16575218225595425026

namespace A051126

/-- `(comp[∑[n]]-n)%A004736(n+1)` -/
def P16575218225595425026.Spec : Prop :=
  ∀ n, P16575218225595425026.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P10699688278465516857

`A128227(n)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A051126.P10699688278465516857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128227 n) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A051126.P10699688278465516857

namespace A051126

/-- `A128227(n)%(C(comp[∑[n]]-n, 2)-n)` -/
def P10699688278465516857.Spec : Prop :=
  ∀ n, P10699688278465516857.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P424748660899153316

`A002260(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A051126.P424748660899153316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A051126.P424748660899153316

namespace A051126

/-- `A002260(n+1)%(C(comp[∑[n]]-n, 2)-n)` -/
def P424748660899153316.Spec : Prop :=
  ∀ n, P424748660899153316.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P13523703494432881144

`(A002262(n)+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A051126.P13523703494432881144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n + 1) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A051126.P13523703494432881144

namespace A051126

/-- `(A002262(n)+1)%(C(comp[∑[n]]-n, 2)-n)` -/
def P13523703494432881144.Spec : Prop :=
  ∀ n, P13523703494432881144.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P1618548118825479860

`A048151(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A051126.P1618548118825479860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048151 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A051126.P1618548118825479860

namespace A051126

/-- `A048151(n+1)%(C(comp[∑[n]]-n, 2)-n)` -/
def P1618548118825479860.Spec : Prop :=
  ∀ n, P1618548118825479860.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P18168677015224357056

`A002262(A286156(n+1))`
-/

namespace A051126.P18168677015224357056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A286156 (n + 1)).toNat

end

end A051126.P18168677015224357056

namespace A051126

/-- `A002262(A286156(n+1))` -/
def P18168677015224357056.Spec : Prop :=
  ∀ n, P18168677015224357056.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P14364913787219199891

`A002260(A286156(n+1)+1)-1`
-/

namespace A051126.P14364913787219199891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286156 (n + 1) + 1).toNat - 1

end

end A051126.P14364913787219199891

namespace A051126

/-- `A002260(A286156(n+1)+1)-1` -/
def P14364913787219199891.Spec : Prop :=
  ∀ n, P14364913787219199891.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P7632101439901464200

`A191907(n+1)+A051777(n+1)`
-/

namespace A051126.P7632101439901464200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + A051777 (n + 1)

end

end A051126.P7632101439901464200

namespace A051126

/-- `A191907(n+1)+A051777(n+1)` -/
def P7632101439901464200.Spec : Prop :=
  ∀ n, P7632101439901464200.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P17323727967013825035

`(A002262(n)+1)%(A025581(n)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051126

/-- `(A002262(n)+1)%(A025581(n)+1)` -/
def P17323727967013825035.Spec : Prop :=
  ∀ n, P17323727967013825035.a n = A051126 (n + 1)

theorem P17323727967013825035.correct : P17323727967013825035.Spec := by
  intro n
  simp only [A051126, Nat.add_sub_cancel]

end A051126

/-! ## A051126.P11548553509764543211

`A051127(A038722(n+1))`
-/

namespace A051126.P11548553509764543211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (A038722 (n + 1)).toNat

end

end A051126.P11548553509764543211

namespace A051126

/-- `A051127(A038722(n+1))` -/
def P11548553509764543211.Spec : Prop :=
  ∀ n, P11548553509764543211.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P4249494445000426985

`A048158(2*A004736(n+1)+n)`
-/

namespace A051126.P4249494445000426985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A051126.P4249494445000426985

namespace A051126

/-- `A048158(2*A004736(n+1)+n)` -/
def P4249494445000426985.Spec : Prop :=
  ∀ n, P4249494445000426985.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P9724559438010168515

`A048158(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A051126.P9724559438010168515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A051126.P9724559438010168515

namespace A051126

/-- `A048158(A004736(n+1)+A004736(n+1)+n)` -/
def P9724559438010168515.Spec : Prop :=
  ∀ n, P9724559438010168515.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P14040767914151491312

`A051127(A278504(A278505(n+1)))`
-/

namespace A051126.P14040767914151491312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (A278504 (A278505 (n + 1)).toNat).toNat

end

end A051126.P14040767914151491312

namespace A051126

/-- `A051127(A278504(A278505(n+1)))` -/
def P14040767914151491312.Spec : Prop :=
  ∀ n, P14040767914151491312.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P799030906487152952

`A051127(A278506(A278503(n+1)))`
-/

namespace A051126.P799030906487152952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (A278506 (A278503 (n + 1)).toNat).toNat

end

end A051126.P799030906487152952

namespace A051126

/-- `A051127(A278506(A278503(n+1)))` -/
def P799030906487152952.Spec : Prop :=
  ∀ n, P799030906487152952.a n = A051126 (n + 1)

end A051126

/-! ## A051126.P18212210383602788315

`A010879(A004209(n+3))`
-/

namespace A051126.P18212210383602788315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004209 (n + 3)).toNat

end

end A051126.P18212210383602788315

namespace A051126

/-- `A010879(A004209(n+3))` -/
def P18212210383602788315.Spec : Prop :=
  ∀ n, P18212210383602788315.a n = A051126 (n + 1)

end A051126

/-!
# A051127: Table T(n,k) = k mod n read by antidiagonals (n >= 1, k >= 1).

The programs for A051127, the canonical program `A051127.P6714805154847763680` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051127 has offset 1).

The definition of A051127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051127.P3719293977592339373

`(comp[∑[n]]-n)%A002260(n+1)`
-/

namespace A051127.P3719293977592339373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (A002260 (n + 1))

end

end A051127.P3719293977592339373

namespace A051127

/-- `(comp[∑[n]]-n)%A002260(n+1)` -/
def P3719293977592339373.Spec : Prop :=
  ∀ n, P3719293977592339373.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P14513507203602381048

`(C(comp[∑[n]]-n, 2)-n)%(A002262(n)+1)`
-/

namespace A051127.P14513507203602381048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A002262 n + 1)

end

end A051127.P14513507203602381048

namespace A051127

/-- `(C(comp[∑[n]]-n, 2)-n)%(A002262(n)+1)` -/
def P14513507203602381048.Spec : Prop :=
  ∀ n, P14513507203602381048.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P9561637633677161718

`A004736(n+1)%(n+1-C(round(sqrt(2*n)), 2))`
-/

namespace A051127.P9561637633677161718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1)) ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2 : ℤ))

end

end A051127.P9561637633677161718

namespace A051127

/-- `A004736(n+1)%(n+1-C(round(sqrt(2*n)), 2))` -/
def P9561637633677161718.Spec : Prop :=
  ∀ n, P9561637633677161718.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P18417375649187806430

`A134224(n)%A131899(n)`
-/

namespace A051127.P18417375649187806430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134224 n) (A131899 n)

end

end A051127.P18417375649187806430

namespace A051127

/-- `A134224(n)%A131899(n)` -/
def P18417375649187806430.Spec : Prop :=
  ∀ n, P18417375649187806430.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P14058863169383353683

`A193592(n)%A141539(n)`
-/

namespace A051127.P14058863169383353683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193592 n) (A141539 n)

end

end A051127.P14058863169383353683

namespace A051127

/-- `A193592(n)%A141539(n)` -/
def P14058863169383353683.Spec : Prop :=
  ∀ n, P14058863169383353683.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P4087572304554877778

`A193739(n)%A141539(n)`
-/

namespace A051127.P4087572304554877778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193739 n) (A141539 n)

end

end A051127.P4087572304554877778

namespace A051127

/-- `A193739(n)%A141539(n)` -/
def P4087572304554877778.Spec : Prop :=
  ∀ n, P4087572304554877778.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P16512169007290282798

`A004736(n+1)%A131899(n)`
-/

namespace A051127.P16512169007290282798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1)) (A131899 n)

end

end A051127.P16512169007290282798

namespace A051127

/-- `A004736(n+1)%A131899(n)` -/
def P16512169007290282798.Spec : Prop :=
  ∀ n, P16512169007290282798.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P16308877402835055388

`A130297(n+1)%A141539(n)`
-/

namespace A051127.P16308877402835055388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130297 (n + 1)) (A141539 n)

end

end A051127.P16308877402835055388

namespace A051127

/-- `A130297(n+1)%A141539(n)` -/
def P16308877402835055388.Spec : Prop :=
  ∀ n, P16308877402835055388.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P17830544065442188336

`A130302(n+1)%A141539(n)`
-/

namespace A051127.P17830544065442188336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130302 (n + 1)) (A141539 n)

end

end A051127.P17830544065442188336

namespace A051127

/-- `A130302(n+1)%A141539(n)` -/
def P17830544065442188336.Spec : Prop :=
  ∀ n, P17830544065442188336.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P1803265189245554410

`A130303(n+1)%A141539(n)`
-/

namespace A051127.P1803265189245554410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130303 (n + 1)) (A141539 n)

end

end A051127.P1803265189245554410

namespace A051127

/-- `A130303(n+1)%A141539(n)` -/
def P1803265189245554410.Spec : Prop :=
  ∀ n, P1803265189245554410.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P5262178122881948359

`A158860(n+1)%A141539(n)`
-/

namespace A051127.P5262178122881948359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158860 (n + 1)) (A141539 n)

end

end A051127.P5262178122881948359

namespace A051127

/-- `A158860(n+1)%A141539(n)` -/
def P5262178122881948359.Spec : Prop :=
  ∀ n, P5262178122881948359.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P8032823775644088035

`A158893(n+1)%A141539(n)`
-/

namespace A051127.P8032823775644088035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158893 (n + 1)) (A141539 n)

end

end A051127.P8032823775644088035

namespace A051127

/-- `A158893(n+1)%A141539(n)` -/
def P8032823775644088035.Spec : Prop :=
  ∀ n, P8032823775644088035.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P3283211218774279565

`A185780(n+1)%A131899(n)`
-/

namespace A051127.P3283211218774279565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185780 (n + 1)) (A131899 n)

end

end A051127.P3283211218774279565

namespace A051127

/-- `A185780(n+1)%A131899(n)` -/
def P3283211218774279565.Spec : Prop :=
  ∀ n, P3283211218774279565.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P6525210727778937751

`A002260(A286157(n+1)+1)-1`
-/

namespace A051127.P6525210727778937751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286157 (n + 1) + 1).toNat - 1

end

end A051127.P6525210727778937751

namespace A051127

/-- `A002260(A286157(n+1)+1)-1` -/
def P6525210727778937751.Spec : Prop :=
  ∀ n, P6525210727778937751.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P4762245697174360162

`A191904(n+1)+A048158(n+1)`
-/

namespace A051127.P4762245697174360162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (n + 1) + A048158 (n + 1)

end

end A051127.P4762245697174360162

namespace A051127

/-- `A191904(n+1)+A048158(n+1)` -/
def P4762245697174360162.Spec : Prop :=
  ∀ n, P4762245697174360162.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P6714805154847763680

`(A025581(n)+1)%(A002262(n)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051127

/-- `(A025581(n)+1)%(A002262(n)+1)` -/
def P6714805154847763680.Spec : Prop :=
  ∀ n, P6714805154847763680.a n = A051127 (n + 1)

theorem P6714805154847763680.correct : P6714805154847763680.Spec := by
  intro n
  simp only [A051127, Nat.add_sub_cancel]

end A051127

/-! ## A051127.P18151509851127922485

`A048158(A080036(n))`
-/

namespace A051127.P18151509851127922485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A080036 n).toNat

end

end A051127.P18151509851127922485

namespace A051127

/-- `A048158(A080036(n))` -/
def P18151509851127922485.Spec : Prop :=
  ∀ n, P18151509851127922485.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P11383000945163184169

`A048158(comp[∑[n]])`
-/

namespace A051127.P11383000945163184169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051127.P11383000945163184169

namespace A051127

/-- `A048158(comp[∑[n]])` -/
def P11383000945163184169.Spec : Prop :=
  ∀ n, P11383000945163184169.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P17299821416160219974

`A051126(A038722(n+1))`
-/

namespace A051127.P17299821416160219974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (A038722 (n + 1)).toNat

end

end A051127.P17299821416160219974

namespace A051127

/-- `A051126(A038722(n+1))` -/
def P17299821416160219974.Spec : Prop :=
  ∀ n, P17299821416160219974.a n = A051127 (n + 1)

end A051127

/-! ## A051127.P6921778195187422667

`A051126(A061579(n)+1)`
-/

namespace A051127.P6921778195187422667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (A061579 n + 1).toNat

end

end A051127.P6921778195187422667

namespace A051127

/-- `A051126(A061579(n)+1)` -/
def P6921778195187422667.Spec : Prop :=
  ∀ n, P6921778195187422667.a n = A051127 (n + 1)

end A051127

/-!
# A051128: Table T(n,k) = n^k read by upwards antidiagonals (n >= 1, k >= 1).

The programs for A051128, the canonical program `A051128.P16009406906113116031` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051128 has offset 1).

The definition of A051128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051128.P16009406906113116031

`A004736(n+1)^A002260(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051128

/-- `A004736(n+1)^A002260(n+1)` -/
def P16009406906113116031.Spec : Prop :=
  ∀ n, P16009406906113116031.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P11668859356720886268

`A009999(comp[∑[n]])`
-/

namespace A051128.P11668859356720886268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051128.P11668859356720886268

namespace A051128

/-- `A009999(comp[∑[n]])` -/
def P11668859356720886268.Spec : Prop :=
  ∀ n, P11668859356720886268.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P6319696384404913158

`A095884(comp[∑[n]])`
-/

namespace A051128.P6319696384404913158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095884 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051128.P6319696384404913158

namespace A051128

/-- `A095884(comp[∑[n]])` -/
def P6319696384404913158.Spec : Prop :=
  ∀ n, P6319696384404913158.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P18035940166422198985

`(C(comp[∑[n]]-n, 2)-n)^A128227(n)`
-/

namespace A051128.P18035940166422198985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A128227 n : ℤ)

end

end A051128.P18035940166422198985

namespace A051128

/-- `(C(comp[∑[n]]-n, 2)-n)^A128227(n)` -/
def P18035940166422198985.Spec : Prop :=
  ∀ n, P18035940166422198985.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P11428798370092786709

`(C(comp[∑[n]]-n, 2)-n)^(A002262(n)+1)`
-/

namespace A051128.P11428798370092786709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A051128.P11428798370092786709

namespace A051128

/-- `(C(comp[∑[n]]-n, 2)-n)^(A002262(n)+1)` -/
def P11428798370092786709.Spec : Prop :=
  ∀ n, P11428798370092786709.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P11755856180149790017

`(C(comp[∑[n]]-n, 2)-n)^A048151(n+1)`
-/

namespace A051128.P11755856180149790017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A048151 (n + 1) : ℤ)

end

end A051128.P11755856180149790017

namespace A051128

/-- `(C(comp[∑[n]]-n, 2)-n)^A048151(n+1)` -/
def P11755856180149790017.Spec : Prop :=
  ∀ n, P11755856180149790017.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P15726226053913293562

`A003992(eq[0, A103451(n)])`
-/

namespace A051128.P15726226053913293562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051128.P15726226053913293562

namespace A051128

/-- `A003992(eq[0, A103451(n)])` -/
def P15726226053913293562.Spec : Prop :=
  ∀ n, P15726226053913293562.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P11230237102790525192

`A095884(n+1)+A047969(n)`
-/

namespace A051128.P11230237102790525192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095884 (n + 1) + A047969 n

end

end A051128.P11230237102790525192

namespace A051128

/-- `A095884(n+1)+A047969(n)` -/
def P11230237102790525192.Spec : Prop :=
  ∀ n, P11230237102790525192.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P4556097057250799068

`A004736(n+1)*A009999(n)`
-/

namespace A051128.P4556097057250799068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A009999 n

end

end A051128.P4556097057250799068

namespace A051128

/-- `A004736(n+1)*A009999(n)` -/
def P4556097057250799068.Spec : Prop :=
  ∀ n, P4556097057250799068.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P1587431289707644741

`(A025581(n)+1)*A009999(n)`
-/

namespace A051128.P1587431289707644741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A009999 n

end

end A051128.P1587431289707644741

namespace A051128

/-- `(A025581(n)+1)*A009999(n)` -/
def P1587431289707644741.Spec : Prop :=
  ∀ n, P1587431289707644741.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P7904493910496651275

`A342238(n+1)+A342237(n+1)`
-/

namespace A051128.P7904493910496651275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342238 (n + 1) + A342237 (n + 1)

end

end A051128.P7904493910496651275

namespace A051128

/-- `A342238(n+1)+A342237(n+1)` -/
def P7904493910496651275.Spec : Prop :=
  ∀ n, P7904493910496651275.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P10802258188472486239

`A342240(n+1)+A342239(n+1)`
-/

namespace A051128.P10802258188472486239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342240 (n + 1) + A342239 (n + 1)

end

end A051128.P10802258188472486239

namespace A051128

/-- `A342240(n+1)+A342239(n+1)` -/
def P10802258188472486239.Spec : Prop :=
  ∀ n, P10802258188472486239.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P1056486530244924868

`A025581(n)*A055129(n+1)+1`
-/

namespace A051128.P1056486530244924868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A055129 (n + 1) + 1

end

end A051128.P1056486530244924868

namespace A051128

/-- `A025581(n)*A055129(n+1)+1` -/
def P1056486530244924868.Spec : Prop :=
  ∀ n, P1056486530244924868.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P7902848633797543931

`A003992(2*A014132(n+1)-n)`
-/

namespace A051128.P7902848633797543931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A051128.P7902848633797543931

namespace A051128

/-- `A003992(2*A014132(n+1)-n)` -/
def P7902848633797543931.Spec : Prop :=
  ∀ n, P7902848633797543931.a n = A051128 (n + 1)

end A051128

/-! ## A051128.P12013769513515767396

`A004736(n+1)^A002262(n+1)`
-/

namespace A051128.P12013769513515767396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002262 (n + 1) : ℤ)

end

end A051128.P12013769513515767396

namespace A051128

/-- `A004736(n+1)^A002262(n+1)` -/
def P12013769513515767396.Spec : Prop :=
  ∀ n, P12013769513515767396.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P2923972689866790917

`(A025581(n)+1)^A002260(n+1)`
-/

namespace A051128.P2923972689866790917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A051128.P2923972689866790917

namespace A051128

/-- `(A025581(n)+1)^A002260(n+1)` -/
def P2923972689866790917.Spec : Prop :=
  ∀ n, P2923972689866790917.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P1286245357270347423

`A004736(n+1)^A144328(n+2)`
-/

namespace A051128.P1286245357270347423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A144328 (n + 2) : ℤ)

end

end A051128.P1286245357270347423

namespace A051128

/-- `A004736(n+1)^A144328(n+2)` -/
def P1286245357270347423.Spec : Prop :=
  ∀ n, P1286245357270347423.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P17878376080883284558

`(A057554(2*(n+1))+1)^A002260(n+1)`
-/

namespace A051128.P17878376080883284558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) + 1 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A051128.P17878376080883284558

namespace A051128

/-- `(A057554(2*(n+1))+1)^A002260(n+1)` -/
def P17878376080883284558.Spec : Prop :=
  ∀ n, P17878376080883284558.a n = (A051128 (n + 1) : ℚ)

end A051128

/-! ## A051128.P10780871883211523480

`root(A057555(2*(n+1)), 1/A057555(2*n+1))`
-/

namespace A051128.P10780871883211523480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * (n + 1)) : ℝ) ^ (1 / (1 / (A057555 (2 * n + 1) : ℚ) : ℝ))

end

end A051128.P10780871883211523480

namespace A051128

/-- `root(A057555(2*(n+1)), 1/A057555(2*n+1))` -/
def P10780871883211523480.Spec : Prop :=
  ∀ n, P10780871883211523480.a n = (A051128 (n + 1) : ℝ)

end A051128

/-! ## A051128.P10789136596998156880

`A004736(n+1)^A026100(A026098(n+1))`
-/

namespace A051128.P10789136596998156880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A026100 (A026098 (n + 1)).toNat : ℤ)

end

end A051128.P10789136596998156880

namespace A051128

/-- `A004736(n+1)^A026100(A026098(n+1))` -/
def P10789136596998156880.Spec : Prop :=
  ∀ n, P10789136596998156880.a n = (A051128 (n + 1) : ℚ)

end A051128

/-!
# A051129: Table T(n,k) = k^n read by upwards antidiagonals (n >= 1, k >= 1).

The programs for A051129, the canonical program `A051129.P11110600296711223731` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051129 has offset 1).

The definition of A051129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051129.P39457135494234994

`A009998(comp[∑[n+1]])`
-/

namespace A051129.P39457135494234994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051129.P39457135494234994

namespace A051129

/-- `A009998(comp[∑[n+1]])` -/
def P39457135494234994.Spec : Prop :=
  ∀ n, P39457135494234994.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P11110600296711223731

`A002260(n+1)*A009998(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051129

/-- `A002260(n+1)*A009998(n)` -/
def P11110600296711223731.Spec : Prop :=
  ∀ n, P11110600296711223731.a n = A051129 (n + 1)

theorem P11110600296711223731.correct : P11110600296711223731.Spec := by
  intro n
  simp only [A051129, Nat.add_sub_cancel]

end A051129

/-! ## A051129.P10081991938192739326

`(A002262(n)+1)*A009998(n)`
-/

namespace A051129.P10081991938192739326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A009998 n

end

end A051129.P10081991938192739326

namespace A051129

/-- `(A002262(n)+1)*A009998(n)` -/
def P10081991938192739326.Spec : Prop :=
  ∀ n, P10081991938192739326.a n = A051129 (n + 1)

theorem P10081991938192739326.correct : P10081991938192739326.Spec := by
  intro n
  simp only [A051129, Nat.add_sub_cancel, A051129.P10081991938192739326.a, A051129.P11110600296711223731.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A009998, A009998.P8900585392985839112.f2, A009998.P8900585392985839112.f1, A009998.P8900585392985839112.a, A004248, A004248.P8443486986946494157.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051129

/-! ## A051129.P5315191096397475838

`A004248(2*A080036(n)-n)`
-/

namespace A051129.P5315191096397475838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (2 * A080036 n - (n : ℤ)).toNat

end

end A051129.P5315191096397475838

namespace A051129

/-- `A004248(2*A080036(n)-n)` -/
def P5315191096397475838.Spec : Prop :=
  ∀ n, P5315191096397475838.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P7606971885971367974

`A156353(n+1)-A051128(n+1)`
-/

namespace A051129.P7606971885971367974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156353 (n + 1) - A051128 (n + 1)

end

end A051129.P7606971885971367974

namespace A051129

/-- `A156353(n+1)-A051128(n+1)` -/
def P7606971885971367974.Spec : Prop :=
  ∀ n, P7606971885971367974.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P12895144272960173908

`A004248(2*A014132(n+1)-n)`
-/

namespace A051129.P12895144272960173908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A051129.P12895144272960173908

namespace A051129

/-- `A004248(2*A014132(n+1)-n)` -/
def P12895144272960173908.Spec : Prop :=
  ∀ n, P12895144272960173908.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P1806665975777487119

`A002260(n+1)^A004736(n+1)`
-/

namespace A051129.P1806665975777487119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A051129.P1806665975777487119

namespace A051129

/-- `A002260(n+1)^A004736(n+1)` -/
def P1806665975777487119.Spec : Prop :=
  ∀ n, P1806665975777487119.a n = (A051129 (n + 1) : ℚ)

end A051129

/-! ## A051129.P14598742597469752780

`A057555(2*n+1)^A004736(n+1)`
-/

namespace A051129.P14598742597469752780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A051129.P14598742597469752780

namespace A051129

/-- `A057555(2*n+1)^A004736(n+1)` -/
def P14598742597469752780.Spec : Prop :=
  ∀ n, P14598742597469752780.a n = (A051129 (n + 1) : ℚ)

end A051129

/-! ## A051129.P9699399611596446307

`root(A057554(2*n+1)+1, 1/A004736(n+1))`
-/

namespace A051129.P9699399611596446307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * n + 1) + 1 : ℝ) ^ (1 / (1 / (A004736 (n + 1) : ℚ) : ℝ))

end

end A051129.P9699399611596446307

namespace A051129

/-- `root(A057554(2*n+1)+1, 1/A004736(n+1))` -/
def P9699399611596446307.Spec : Prop :=
  ∀ n, P9699399611596446307.a n = (A051129 (n + 1) : ℝ)

end A051129

/-! ## A051129.P7207842371704229480

`root(A057555(2*n+1), 1/A057555(2*(n+1)))`
-/

namespace A051129.P7207842371704229480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * n + 1) : ℝ) ^ (1 / (1 / (A057555 (2 * (n + 1)) : ℚ) : ℝ))

end

end A051129.P7207842371704229480

namespace A051129

/-- `root(A057555(2*n+1), 1/A057555(2*(n+1)))` -/
def P7207842371704229480.Spec : Prop :=
  ∀ n, P7207842371704229480.a n = (A051129 (n + 1) : ℝ)

end A051129

/-! ## A051129.P10343026818958233139

`(A025581(A061579(n))+1)*A009998(n)`
-/

namespace A051129.P10343026818958233139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 (A061579 n).toNat + 1) * A009998 n

end

end A051129.P10343026818958233139

namespace A051129

/-- `(A025581(A061579(n))+1)*A009998(n)` -/
def P10343026818958233139.Spec : Prop :=
  ∀ n, P10343026818958233139.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P7047531822395787865

`A002260(n+1)^A057554(A004277(n))`
-/

namespace A051129.P7047531822395787865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A057554 (A004277 n).toNat : ℤ)

end

end A051129.P7047531822395787865

namespace A051129

/-- `A002260(n+1)^A057554(A004277(n))` -/
def P7047531822395787865.Spec : Prop :=
  ∀ n, P7047531822395787865.a n = (A051129 (n + 1) : ℚ)

end A051129

/-! ## A051129.P16730026666204773

`A004248(A080036(n)+A080036(n)-n)`
-/

namespace A051129.P16730026666204773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A080036 n + (A080036 n - (n : ℤ))).toNat

end

end A051129.P16730026666204773

namespace A051129

/-- `A004248(A080036(n)+A080036(n)-n)` -/
def P16730026666204773.Spec : Prop :=
  ∀ n, P16730026666204773.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P2441143013739154857

`A004248(A080036(n)-(n-A080036(n)))`
-/

namespace A051129.P2441143013739154857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A080036 n - ((n : ℤ) - A080036 n)).toNat

end

end A051129.P2441143013739154857

namespace A051129

/-- `A004248(A080036(n)-(n-A080036(n)))` -/
def P2441143013739154857.Spec : Prop :=
  ∀ n, P2441143013739154857.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P13687877401826028392

`A026100(A026098(n+1))^A004736(n+1)`
-/

namespace A051129.P13687877401826028392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026100 (A026098 (n + 1)).toNat : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A051129.P13687877401826028392

namespace A051129

/-- `A026100(A026098(n+1))^A004736(n+1)` -/
def P13687877401826028392.Spec : Prop :=
  ∀ n, P13687877401826028392.a n = (A051129 (n + 1) : ℚ)

end A051129

/-! ## A051129.P1390049707940548506

`A004248(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A051129.P1390049707940548506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A051129.P1390049707940548506

namespace A051129

/-- `A004248(A014132(n+1)+A014132(n+1)-n)` -/
def P1390049707940548506.Spec : Prop :=
  ∀ n, P1390049707940548506.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P12310458260803183051

`A002260(n+1)/A004736(n+1)*A104002(n+2)`
-/

namespace A051129.P12310458260803183051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A104002 (n + 2) : ℚ)

end

end A051129.P12310458260803183051

namespace A051129

/-- `A002260(n+1)/A004736(n+1)*A104002(n+2)` -/
def P12310458260803183051.Spec : Prop :=
  ∀ n, P12310458260803183051.a n = (A051129 (n + 1) : ℚ)

end A051129

/-! ## A051129.P8199142818204764168

`A051128(A038722(n+1))`
-/

namespace A051129.P8199142818204764168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A038722 (n + 1)).toNat

end

end A051129.P8199142818204764168

namespace A051129

/-- `A051128(A038722(n+1))` -/
def P8199142818204764168.Spec : Prop :=
  ∀ n, P8199142818204764168.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P16697250222207235278

`A009999(A099375(n)+1+n)`
-/

namespace A051129.P16697250222207235278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A099375 n + 1 + (n : ℤ)).toNat

end

end A051129.P16697250222207235278

namespace A051129

/-- `A009999(A099375(n)+1+n)` -/
def P16697250222207235278.Spec : Prop :=
  ∀ n, P16697250222207235278.a n = A051129 (n + 1)

end A051129

/-! ## A051129.P12995062723948030818

`A051128(A002024(n+1)²-n)`
-/

namespace A051129.P12995062723948030818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A051129.P12995062723948030818

namespace A051129

/-- `A051128(A002024(n+1)²-n)` -/
def P12995062723948030818.Spec : Prop :=
  ∀ n, P12995062723948030818.a n = A051129 (n + 1)

end A051129

/-!
# A051131: 

The programs for A051131, there is no canonical definition to state claims against.
-/

/-! ## A051131.P2322306962905697884

`A000110(A051130(n+1))`
-/

namespace A051131.P2322306962905697884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A051130 (n + 1)).toNat

end

end A051131.P2322306962905697884

/-!
# A051132: Number of ordered pairs of integers (x,y) with x^2+y^2 < n^2.

The programs for A051132, there is no canonical definition to state claims against.
-/

/-! ## A051132.P18164573434377115353

`A000328(n)-A046109(n)`
-/

namespace A051132.P18164573434377115353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A046109 n

end

end A051132.P18164573434377115353

/-! ## A051132.P11087198594600829016

`∑[A036693(n)]-A046109(n)`
-/

namespace A051132.P11087198594600829016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046109 n

end

end A051132.P11087198594600829016

/-! ## A051132.P6519941454959659664

`A053411(2*n)-A046109(n)`
-/

namespace A051132.P6519941454959659664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n) - A046109 n

end

end A051132.P6519941454959659664

/-! ## A051132.P17457811655579489721

`A053456(2*n)`
-/

namespace A051132.P17457811655579489721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * n)

end

end A051132.P17457811655579489721

/-! ## A051132.P11115235465376488607

`record[A053456(A124625(n+1))]`
-/

namespace A051132.P11115235465376488607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (A124625 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051132.P11115235465376488607

/-! ## A051132.P16413685462422971766

`A000328(n+1)-A047077(n)`
-/

namespace A051132.P16413685462422971766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) - A047077 n

end

end A051132.P16413685462422971766

/-! ## A051132.P12741214936684174423

`A000328(n)-A004018(n²)`
-/

namespace A051132.P12741214936684174423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A004018 (n ^ 2)

end

end A051132.P12741214936684174423

/-! ## A051132.P16727792296957515295

`A057655(n²)-A004018(n²)`
-/

namespace A051132.P16727792296957515295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (n ^ 2) - A004018 (n ^ 2)

end

end A051132.P16727792296957515295

/-! ## A051132.P17598821123537853503

`eq[A003784(n), A305576(n)]`
-/

namespace A051132.P17598821123537853503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051132.P17598821123537853503

/-! ## A051132.P15503429783183314247

`eq[A131360(n), A305576(n)]`
-/

namespace A051132.P15503429783183314247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051132.P15503429783183314247

/-!
# A051133: a(n) = binomial(2n,n)*n*(2n+1)/2.

The programs for A051133, the canonical program `A051133.P10428894217481512850` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051133 has offset 0).

The definition of A051133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051133.P10428894217481512850

`1/2*A000984(n+1)*A000217(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051133

/-- `1/2*A000984(n+1)*A000217(n)` -/
def P10428894217481512850.Spec : Prop :=
  ∀ n, P10428894217481512850.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P7907855541155163021

`C(2*n, n)*n*(2*n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051133.P7907855541155163021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * n * (2 * n + 1) : ℚ) / 2

end

end A051133.P7907855541155163021

namespace A051133

/-- `C(2*n, n)*n*(2*n+1)/2` -/
def P7907855541155163021.Spec : Prop :=
  ∀ n, P7907855541155163021.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P6921107610208315706

`∏[4-2/(n+1)]/2*∑[n]`
-/

namespace A051133.P6921107610208315706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A051133.P6921107610208315706

namespace A051133

/-- `∏[4-2/(n+1)]/2*∑[n]` -/
def P6921107610208315706.Spec : Prop :=
  ∀ n, P6921107610208315706.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P4230927769342667934

`∑[∑[n]*A029651(n)]`
-/

namespace A051133.P4230927769342667934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A029651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051133.P4230927769342667934

namespace A051133

/-- `∑[∑[n]*A029651(n)]` -/
def P4230927769342667934.Spec : Prop :=
  ∀ n, P4230927769342667934.a n = A051133 n

end A051133

/-! ## A051133.P14390580538448148672

`∑[3/2*A119578(n)]`
-/

namespace A051133.P14390580538448148672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A119578 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051133.P14390580538448148672

namespace A051133

/-- `∑[3/2*A119578(n)]` -/
def P14390580538448148672.Spec : Prop :=
  ∀ n, P14390580538448148672.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P12252756541305367441

`floor(n/2*A002457(n))`
-/

namespace A051133.P12252756541305367441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 * (A002457 n : ℚ)⌋

end

end A051133.P12252756541305367441

namespace A051133

/-- `floor(n/2*A002457(n))` -/
def P12252756541305367441.Spec : Prop :=
  ∀ n, P12252756541305367441.a n = A051133 n

end A051133

/-! ## A051133.P5639424850561532028

`abs(∑[n]*A110556(n+1))`
-/

namespace A051133.P5639424850561532028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A110556 (n + 1)|

end

end A051133.P5639424850561532028

namespace A051133

/-- `abs(∑[n]*A110556(n+1))` -/
def P5639424850561532028.Spec : Prop :=
  ∀ n, P5639424850561532028.a n = A051133 n

end A051133

/-! ## A051133.P13484069607103334836

`∑[∑[n]*A050168(2*n)]`
-/

namespace A051133.P13484069607103334836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A050168 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051133.P13484069607103334836

namespace A051133

/-- `∑[∑[n]*A050168(2*n)]` -/
def P13484069607103334836.Spec : Prop :=
  ∀ n, P13484069607103334836.a n = A051133 n

end A051133

/-! ## A051133.P4981231653347668895

`ceil((n+1)*A001700(n)*n/2)`
-/

namespace A051133.P4981231653347668895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) * A001700 n : ℚ) * ((n : ℚ) / 2)⌉

end

end A051133.P4981231653347668895

namespace A051133

/-- `ceil((n+1)*A001700(n)*n/2)` -/
def P4981231653347668895.Spec : Prop :=
  ∀ n, P4981231653347668895.a n = A051133 n

end A051133

/-! ## A051133.P16910213228978638922

`abs(Δ[A024718(n)]*A000217(n))`
-/

namespace A051133.P16910213228978638922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000217 n|

end

end A051133.P16910213228978638922

namespace A051133

/-- `abs(Δ[A024718(n)]*A000217(n))` -/
def P16910213228978638922.Spec : Prop :=
  ∀ n, P16910213228978638922.a n = A051133 n

end A051133

/-! ## A051133.P3441548356798087115

`abs(Δ[n²]*A000108(n)*A000217(n))`
-/

namespace A051133.P3441548356798087115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n * A000217 n|

end

end A051133.P3441548356798087115

namespace A051133

/-- `abs(Δ[n²]*A000108(n)*A000217(n))` -/
def P3441548356798087115.Spec : Prop :=
  ∀ n, P3441548356798087115.a n = A051133 n

end A051133

/-! ## A051133.P3566993891027747633

`A000124(n)*A001700(n)-A001700(n)`
-/

namespace A051133.P3566993891027747633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A001700 n - A001700 n

end

end A051133.P3566993891027747633

namespace A051133

/-- `A000124(n)*A001700(n)-A001700(n)` -/
def P3566993891027747633.Spec : Prop :=
  ∀ n, P3566993891027747633.a n = A051133 n

end A051133

/-! ## A051133.P9387801046347743642

`A000124(n)*A088218(n+1)-A088218(n+1)`
-/

namespace A051133.P9387801046347743642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A088218 (n + 1) - A088218 (n + 1)

end

end A051133.P9387801046347743642

namespace A051133

/-- `A000124(n)*A088218(n+1)-A088218(n+1)` -/
def P9387801046347743642.Spec : Prop :=
  ∀ n, P9387801046347743642.a n = A051133 n

end A051133

/-! ## A051133.P430414096596221579

`n*A002457(n)/2`
-/

namespace A051133.P430414096596221579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A002457 n : ℚ) / 2

end

end A051133.P430414096596221579

namespace A051133

/-- `n*A002457(n)/2` -/
def P430414096596221579.Spec : Prop :=
  ∀ n, P430414096596221579.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P16241714149044827664

`(A319924(n)-1)*Δ[n²]/2`
-/

namespace A051133.P16241714149044827664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A319924 n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A051133.P16241714149044827664

namespace A051133

/-- `(A319924(n)-1)*Δ[n²]/2` -/
def P16241714149044827664.Spec : Prop :=
  ∀ n, P16241714149044827664.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P17795453046216193368

`(A002544(n)-A002457(n))/2`
-/

namespace A051133.P17795453046216193368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002544 n - A002457 n : ℚ) / 2

end

end A051133.P17795453046216193368

namespace A051133

/-- `(A002544(n)-A002457(n))/2` -/
def P17795453046216193368.Spec : Prop :=
  ∀ n, P17795453046216193368.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P15512172732984409686

`A001405(2*n)*A002411(2*n)/A004275(2*n+1)`
-/

namespace A051133.P15512172732984409686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) * A002411 (2 * n) : ℚ) / (A004275 (2 * n + 1) : ℚ)

end

end A051133.P15512172732984409686

namespace A051133

/-- `A001405(2*n)*A002411(2*n)/A004275(2*n+1)` -/
def P15512172732984409686.Spec : Prop :=
  ∀ n, P15512172732984409686.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P10727672579879109615

`A000984(n+1)*A006011(n+1)/A002378(n+1)`
-/

namespace A051133.P10727672579879109615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) * A006011 (n + 1) : ℚ) / (A002378 (n + 1) : ℚ)

end

end A051133.P10727672579879109615

namespace A051133

/-- `A000984(n+1)*A006011(n+1)/A002378(n+1)` -/
def P10727672579879109615.Spec : Prop :=
  ∀ n, P10727672579879109615.a n = (A051133 n : ℚ)

end A051133

/-! ## A051133.P11047914450282211107

`record[n*A141811(n+1)]`
-/

namespace A051133.P11047914450282211107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051133.P11047914450282211107

namespace A051133

/-- `record[n*A141811(n+1)]` -/
def P11047914450282211107.Spec : Prop :=
  ∀ n, P11047914450282211107.a n = A051133 n

end A051133

/-! ## A051133.P11676039881491545573

`record[n*A111418(n)]`
-/

namespace A051133.P11676039881491545573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A111418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051133.P11676039881491545573

namespace A051133

/-- `record[n*A111418(n)]` -/
def P11676039881491545573.Spec : Prop :=
  ∀ n, P11676039881491545573.a n = A051133 n

end A051133

/-!
# A051134: (Terms in A050825)/2.

The programs for A051134, there is no canonical definition to state claims against.
-/

/-! ## A051134.P14140281348971598914

`A050825(n+1)/2`
-/

namespace A051134.P14140281348971598914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050825 (n + 1) : ℚ) / 2

end

end A051134.P14140281348971598914

/-! ## A051134.P15871187368622740698

`A008619(A050825(n+1)-2)`
-/

namespace A051134.P15871187368622740698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A050825 (n + 1) - 2).toNat

end

end A051134.P15871187368622740698

/-! ## A051134.P1461631176345286250

`A032742(A050825(n+1))`
-/

namespace A051134.P1461631176345286250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A050825 (n + 1)).toNat

end

end A051134.P1461631176345286250

/-! ## A051134.P3720855871765456199

`A000463(A050825(n+1)-1)`
-/

namespace A051134.P3720855871765456199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A050825 (n + 1) - 1).toNat

end

end A051134.P3720855871765456199

/-! ## A051134.P9592641693908278136

`A001057(A050825(n+1)-1)`
-/

namespace A051134.P9592641693908278136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A050825 (n + 1) - 1).toNat

end

end A051134.P9592641693908278136

/-! ## A051134.P15937997572286049656

`A080513(A050825(n+1)-2)`
-/

namespace A051134.P15937997572286049656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A050825 (n + 1) - 2).toNat

end

end A051134.P15937997572286049656

/-! ## A051134.P4645592632816651658

`A004524(A050825(n+1)-1)+1`
-/

namespace A051134.P4645592632816651658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A050825 (n + 1) - 1).toNat + 1

end

end A051134.P4645592632816651658

/-! ## A051134.P12413935506028521645

`A057979(A050825(n+1)-1)+1`
-/

namespace A051134.P12413935506028521645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A050825 (n + 1) - 1).toNat + 1

end

end A051134.P12413935506028521645

/-! ## A051134.P11444368680189542540

`A004524(A050825(n+1)+1)`
-/

namespace A051134.P11444368680189542540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A050825 (n + 1) + 1).toNat

end

end A051134.P11444368680189542540

/-! ## A051134.P17916609865481454398

`A004526(A050825(n+1)+1)`
-/

namespace A051134.P17916609865481454398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A050825 (n + 1) + 1).toNat

end

end A051134.P17916609865481454398

/-! ## A051134.P4604943093555078120

`A057979(A050825(n+1)+1)`
-/

namespace A051134.P4604943093555078120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A050825 (n + 1) + 1).toNat

end

end A051134.P4604943093555078120

/-!
# A051135: a(n) = number of times n appears in the Hofstadter-Conway $10000 sequence A004001.

The programs for A051135, the canonical program `A051135.P7841360352150666310` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051135 has offset 1).

The definition of A051135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A188163, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051135.P7841360352150666310

`A188163(n+2)-A188163(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051135

/-- `A188163(n+2)-A188163(n+1)` -/
def P7841360352150666310.Spec : Prop :=
  ∀ n, P7841360352150666310.a n = A051135 (n + 1)

theorem P7841360352150666310.correct : P7841360352150666310.Spec := by
  intro n
  simp only [A051135, Nat.add_sub_cancel]

end A051135

/-! ## A051135.P7586742101621704130

`floor(A265332(n+1)+acot(n))`
-/

namespace A051135.P7586742101621704130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265332 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A051135.P7586742101621704130

namespace A051135

/-- `floor(A265332(n+1)+acot(n))` -/
def P7586742101621704130.Spec : Prop :=
  ∀ n, P7586742101621704130.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P15456108013587603348

`Δ[A265332(n)+a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A051135.P15456108013587603348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A265332 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051135.P15456108013587603348

namespace A051135

/-- `Δ[A265332(n)+a(n-1)]` -/
def P15456108013587603348.Spec : Prop :=
  ∀ n, P15456108013587603348.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P8640140179858035319

`A265332(A054977(n)+n)`
-/

namespace A051135.P8640140179858035319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A054977 n + (n : ℤ)).toNat

end

end A051135.P8640140179858035319

namespace A051135

/-- `A265332(A054977(n)+n)` -/
def P8640140179858035319.Spec : Prop :=
  ∀ n, P8640140179858035319.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P16685096364482367684

`A265332(n+1)+A000007(n)`
-/

namespace A051135.P16685096364482367684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1) + A000007 n

end

end A051135.P16685096364482367684

namespace A051135

/-- `A265332(n+1)+A000007(n)` -/
def P16685096364482367684.Spec : Prop :=
  ∀ n, P16685096364482367684.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P16730519462985497810

`A265332(gcd(n, A008458(n))+1)`
-/

namespace A051135.P16730519462985497810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (Int.gcd (n : ℤ) (A008458 n) + 1)

end

end A051135.P16730519462985497810

namespace A051135

/-- `A265332(gcd(n, A008458(n))+1)` -/
def P16730519462985497810.Spec : Prop :=
  ∀ n, P16730519462985497810.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P1742970825579233155

`A265332(or(n, A036987(n))+1)`
-/

namespace A051135.P1742970825579233155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (Int.lor (n : ℤ) (A036987 n) + 1).toNat

end

end A051135.P1742970825579233155

namespace A051135

/-- `A265332(or(n, A036987(n))+1)` -/
def P1742970825579233155.Spec : Prop :=
  ∀ n, P1742970825579233155.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P12523685518202867496

`A265332(A036987(2*n)+1+n)`
-/

namespace A051135.P12523685518202867496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A036987 (2 * n) + 1 + (n : ℤ)).toNat

end

end A051135.P12523685518202867496

namespace A051135

/-- `A265332(A036987(2*n)+1+n)` -/
def P12523685518202867496.Spec : Prop :=
  ∀ n, P12523685518202867496.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P3564121820678479808

`A265332(A297382(2*n+1)+n)`
-/

namespace A051135.P3564121820678479808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A297382 (2 * n + 1) + (n : ℤ)).toNat

end

end A051135.P3564121820678479808

namespace A051135

/-- `A265332(A297382(2*n+1)+n)` -/
def P3564121820678479808.Spec : Prop :=
  ∀ n, P3564121820678479808.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P10052658897646453360

`A088359(n+1)-∪[A088359(n+1), A006148(n)]`
-/

namespace A051135.P10052658897646453360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006148 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088359 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A051135.P10052658897646453360

namespace A051135

/-- `A088359(n+1)-∪[A088359(n+1), A006148(n)]` -/
def P10052658897646453360.Spec : Prop :=
  ∀ n, P10052658897646453360.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P5022277996368973657

`Δ[A188163(n+1)]`
-/

namespace A051135.P5022277996368973657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051135.P5022277996368973657

namespace A051135

/-- `Δ[A188163(n+1)]` -/
def P5022277996368973657.Spec : Prop :=
  ∀ n, P5022277996368973657.a n = A051135 (n + 1)

theorem P5022277996368973657.correct : P5022277996368973657.Spec := by
  intro n
  simp only [A051135, Nat.add_sub_cancel, A051135.P5022277996368973657.f1, A051135.P5022277996368973657.a, A051135.P7841360352150666310.a, SequenceMachineLib.memo_apply]

end A051135

/-! ## A051135.P13999853249165796572

`A265332(A254667(n+1))`
-/

namespace A051135.P13999853249165796572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A254667 (n + 1)).toNat

end

end A051135.P13999853249165796572

namespace A051135

/-- `A265332(A254667(n+1))` -/
def P13999853249165796572.Spec : Prop :=
  ∀ n, P13999853249165796572.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P6823854682324280924

`A265332(A141044(n+1)+n)`
-/

namespace A051135.P6823854682324280924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A141044 (n + 1) + (n : ℤ)).toNat

end

end A051135.P6823854682324280924

namespace A051135

/-- `A265332(A141044(n+1)+n)` -/
def P6823854682324280924.Spec : Prop :=
  ∀ n, P6823854682324280924.a n = A051135 (n + 1)

end A051135

/-! ## A051135.P17994583017245353164

`A265332(n+1)+A036987(A072376(n+3))`
-/

namespace A051135.P17994583017245353164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1) + A036987 (A072376 (n + 3)).toNat

end

end A051135.P17994583017245353164

namespace A051135

/-- `A265332(n+1)+A036987(A072376(n+3))` -/
def P17994583017245353164.Spec : Prop :=
  ∀ n, P17994583017245353164.a n = A051135 (n + 1)

end A051135

/-!
# A051136: Number of 2-colored generalized Frobenius partitions.

The programs for A051136, there is no canonical definition to state claims against.
-/

/-! ## A051136.P3940370565663781161

`record[A137830(n)]`
-/

namespace A051136.P3940370565663781161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051136.P3940370565663781161

/-! ## A051136.P15265784410387909547

`A137828(4*n)`
-/

namespace A051136.P15265784410387909547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 (4 * n)

end

end A051136.P15265784410387909547

/-! ## A051136.P8588041399744045632

`A137830(4*n)`
-/

namespace A051136.P8588041399744045632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 (4 * n)

end

end A051136.P8588041399744045632

/-! ## A051136.P18194118364912838508

`record[Δ[A137828(n)]]`
-/

namespace A051136.P18194118364912838508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051136.P18194118364912838508

/-! ## A051136.P10961920809344624713

`record[A137828(n+n)]`
-/

namespace A051136.P10961920809344624713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 (n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051136.P10961920809344624713

/-!
# A051137: Table T(n,k) read by antidiagonals: number of necklaces allowing turnovers (bracelets) with n beads of k colors.

The programs for A051137, there is no canonical definition to state claims against.
-/

/-! ## A051137.P3622459667634072778

`A321791(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A051137.P3622459667634072778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A051137.P3622459667634072778

/-! ## A051137.P13116626665828980003

`A321791(A380649(n+1))`
-/

namespace A051137.P13116626665828980003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A380649 (n + 1)).toNat

end

end A051137.P13116626665828980003

/-! ## A051137.P712563710019497814

`A321791(A099375(n)+n)`
-/

namespace A051137.P712563710019497814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A099375 n + (n : ℤ)).toNat

end

end A051137.P712563710019497814

/-! ## A051137.P9478613201355922864

`A321791(A114327(n)+comp[∑[n-1]])`
-/

namespace A051137.P9478613201355922864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A114327 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A051137.P9478613201355922864

/-! ## A051137.P6426290387352742456

`A321791(A038722(n+1)+A003056(n))`
-/

namespace A051137.P6426290387352742456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A038722 (n + 1) + A003056 n).toNat

end

end A051137.P6426290387352742456

/-! ## A051137.P8996766246353678841

`A321791(A061579(n)+A002024(n+1))`
-/

namespace A051137.P8996766246353678841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A061579 n + A002024 (n + 1)).toNat

end

end A051137.P8996766246353678841

/-! ## A051137.P16400430826128035211

`A321791(A003056(n)+A061579(n)+1)`
-/

namespace A051137.P16400430826128035211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A003056 n + (A061579 n + 1)).toNat

end

end A051137.P16400430826128035211

/-! ## A051137.P363429572499947541

`A321791(A117707(n)+A038722(n+1))`
-/

namespace A051137.P363429572499947541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321791 (A117707 n + A038722 (n + 1)).toNat

end

end A051137.P363429572499947541

/-!
# A051138: Divisibility sequence associated with elliptic curve y^2 + y = x^3 - x and point (1, 0).

The programs for A051138, the canonical program `A051138.P13041293901245438807` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051138 has offset 0).

The definition of A051138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051138.P13041293901245438807

`A006769(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051138

/-- `A006769(2*n)` -/
def P13041293901245438807.Spec : Prop :=
  ∀ n, P13041293901245438807.a n = A051138 n

theorem P13041293901245438807.correct : P13041293901245438807.Spec := by
  intro n
  simp only [A051138]

end A051138

/-! ## A051138.P6903032853561958813

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-1, a(4)=-5`
-/

namespace A051138.P6903032853561958813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, -1, -5] fun n a =>
  (a (n - 1) * a (n - 3) + a (n - 2) ^ 2) / a (n - 4)

end

end A051138.P6903032853561958813

namespace A051138

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P6903032853561958813.Spec : Prop :=
  ∀ n, P6903032853561958813.a n = (A051138 n : ℚ)

end A051138

/-! ## A051138.P2549231900966960071

`and(A006769(A004277(n)), A057428(n))`
-/

namespace A051138.P2549231900966960071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006769 (A004277 n).toNat) (A057428 n)

end

end A051138.P2549231900966960071

namespace A051138

/-- `and(A006769(A004277(n)), A057428(n))` -/
def P2549231900966960071.Spec : Prop :=
  ∀ n, P2549231900966960071.a n = A051138 n

end A051138

/-! ## A051138.P12910950277667159872

`A006769(A004277(n))+n-A028310(n)`
-/

namespace A051138.P12910950277667159872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (A004277 n).toNat + ((n : ℤ) - A028310 n)

end

end A051138.P12910950277667159872

namespace A051138

/-- `A006769(A004277(n))+n-A028310(n)` -/
def P12910950277667159872.Spec : Prop :=
  ∀ n, P12910950277667159872.a n = A051138 n

end A051138

/-!
# A051139: a(n) = A000994(n+2) - A000995(n+2).

The programs for A051139, there is no canonical definition to state claims against.
-/

/-! ## A051139.P4944480955838049231

`A000994(n+2)-A000995(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051139.P4944480955838049231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000994 (n + 2) - A000995 (n + 2)

end

end A051139.P4944480955838049231

/-! ## A051139.P3763027743431476155

`A000994(n+2)-record[A000995(n)]`
-/

namespace A051139.P3763027743431476155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000994 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051139.P3763027743431476155

/-! ## A051139.P13990214881508569884

`2*A000994(n+2)-A007476(n+2)`
-/

namespace A051139.P13990214881508569884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000994 (n + 2) - A007476 (n + 2)

end

end A051139.P13990214881508569884

/-! ## A051139.P12489987774576502191

`A007476(n+2)-(A000995(n+2)+A000995(n+2))`
-/

namespace A051139.P12489987774576502191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 (n + 2) - (A000995 (n + 2) + A000995 (n + 2))

end

end A051139.P12489987774576502191

/-! ## A051139.P18011213449163503886

`A143983(A238531(n+2))-A000995(n+2)`
-/

namespace A051139.P18011213449163503886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (A238531 (n + 2)).toNat - A000995 (n + 2)

end

end A051139.P18011213449163503886

/-!
# A051140: a(n) = (A000110(n) - A000994(n+2))/2.

The programs for A051140, there is no canonical definition to state claims against.
-/

/-! ## A051140.P632998931774847146

`(A000110(n)-A000994(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051140.P632998931774847146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n - A000994 (n + 2) : ℚ) / 2

end

end A051140.P632998931774847146

/-! ## A051140.P2070343201409065131

`A079693(4*A058122(n))`
-/

namespace A051140.P2070343201409065131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079693 (4 * A058122 n).toNat

end

end A051140.P2070343201409065131

/-! ## A051140.P10609791411543894810

`∑[A352961(∑[A001253(n+1)])]`
-/

namespace A051140.P10609791411543894810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051140.P10609791411543894810

/-! ## A051140.P10062010125606430408

`∑[ceil(A157227(A000142(n)+1)/(n+1))]-(n+1)`
-/

namespace A051140.P10062010125606430408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157227 (A000142 n + 1).toNat : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A051140.P10062010125606430408

/-!
# A051141: Triangle read by rows: a(n, m) = S1(n, m)*3^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A051141, there is no canonical definition to state claims against.
-/

/-! ## A051141.P1009504550505729625

`A008275(n+1)*A140303(n)`
-/

namespace A051141.P1009504550505729625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A140303 n

end

end A051141.P1009504550505729625

/-! ## A051141.P245343169550542888

`A000244(A025581(n))*A008275(n+1)`
-/

namespace A051141.P245343169550542888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A008275 (n + 1)

end

end A051141.P245343169550542888

/-! ## A051141.P1525427136282775579

`A008275(n+1)*A108411(A099375(n))`
-/

namespace A051141.P1525427136282775579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A108411 (A099375 n).toNat

end

end A051141.P1525427136282775579

/-! ## A051141.P11706457815036072773

`A008275(n+1)*A133494(A004736(n+1))`
-/

namespace A051141.P11706457815036072773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A133494 (A004736 (n + 1)).toNat

end

end A051141.P11706457815036072773

/-! ## A051141.P8830518846322551798

`A008275(n+1)/A075497(n+1)*A075501(n+1)`
-/

namespace A051141.P8830518846322551798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A075497 (n + 1) : ℚ) * (A075501 (n + 1) : ℚ)

end

end A051141.P8830518846322551798

/-! ## A051141.P13277265775575898476

`A051151(n+1)/A130321(n)`
-/

namespace A051141.P13277265775575898476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051151 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A051141.P13277265775575898476

/-! ## A051141.P2661845877773208748

`A008275(n+1)/A039683(n+1)*A051151(n+1)`
-/

namespace A051141.P2661845877773208748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A039683 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051141.P2661845877773208748

/-! ## A051141.P12990073759773240407

`A039683(n+1)/A051142(n+1)*A051151(n+1)`
-/

namespace A051141.P12990073759773240407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051142 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051141.P12990073759773240407

/-! ## A051141.P11806436156769370808

`A051231(n+1)/A140303(n)`
-/

namespace A051141.P11806436156769370808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051231 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A051141.P11806436156769370808

/-! ## A051141.P5067785736420388012

`A039683(n+1)/A051151(n+1)*A051231(n+1)`
-/

namespace A051141.P5067785736420388012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051151 (n + 1) : ℚ) * (A051231 (n + 1) : ℚ)

end

end A051141.P5067785736420388012

/-! ## A051141.P126425679878041696

`A051150(n+1)/A048176(n+1)*A051151(n+1)`
-/

namespace A051141.P126425679878041696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051150 (n + 1) : ℚ) / (A048176 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051141.P126425679878041696

/-! ## A051141.P15413109619420740333

`A008275(n+1)*A061898(A130321(n))`
-/

namespace A051141.P15413109619420740333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A061898 (A130321 n).toNat

end

end A051141.P15413109619420740333

/-! ## A051141.P6997320825006043517

`A008276(A038722(n+1))*A165824(A130321(n))`
-/

namespace A051141.P6997320825006043517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A038722 (n + 1)).toNat * A165824 (A130321 n).toNat

end

end A051141.P6997320825006043517

/-!
# A051142: Triangle read by rows: T(n, m) = S1(n, m)*4^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A051142, there is no canonical definition to state claims against.
-/

/-! ## A051142.P15939218128363597969

`4^(C(comp[∑[n]]-n, 2)-(n+1))*A008275(n+1)`
-/

namespace A051142.P15939218128363597969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A008275 (n + 1) : ℚ)

end

end A051142.P15939218128363597969

/-! ## A051142.P11355255939229066515

`A039683(n+1)*A130321(n)`
-/

namespace A051142.P11355255939229066515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) * A130321 n

end

end A051142.P11355255939229066515

/-! ## A051142.P11634868189317285343

`A008275(n+1)*A262616(n)`
-/

namespace A051142.P11634868189317285343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A262616 n

end

end A051142.P11634868189317285343

/-! ## A051142.P13451578976306385968

`A130321(n)²*A008275(n+1)`
-/

namespace A051142.P13451578976306385968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A008275 (n + 1)

end

end A051142.P13451578976306385968

/-! ## A051142.P5369771605329900906

`(A090988(n+1)/2)²*A008275(n+1)`
-/

namespace A051142.P5369771605329900906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A090988 (n + 1) : ℚ) / 2) ^ 2 * (A008275 (n + 1) : ℚ)

end

end A051142.P5369771605329900906

/-! ## A051142.P17510703650610266707

`A000079(A025581(n))²*A008275(n+1)`
-/

namespace A051142.P17510703650610266707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat ^ 2 * A008275 (n + 1)

end

end A051142.P17510703650610266707

/-! ## A051142.P6803314723190651606

`A059268(A061579(n))²*A008275(n+1)`
-/

namespace A051142.P6803314723190651606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat ^ 2 * A008275 (n + 1)

end

end A051142.P6803314723190651606

/-! ## A051142.P2556453972108259294

`A130321(n)²*A008276(A038722(n+1))`
-/

namespace A051142.P2556453972108259294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A008276 (A038722 (n + 1)).toNat

end

end A051142.P2556453972108259294

/-! ## A051142.P10343302740092403929

`A000079(2*A025581(n))*A008275(n+1)`
-/

namespace A051142.P10343302740092403929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A025581 n).toNat * A008275 (n + 1)

end

end A051142.P10343302740092403929

/-! ## A051142.P4848546050580857547

`A011782(A004736(n+1))²*A008275(n+1)`
-/

namespace A051142.P4848546050580857547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat ^ 2 * A008275 (n + 1)

end

end A051142.P4848546050580857547

/-! ## A051142.P1257870360046954774

`A039683(n+1)/A008275(n+1)*A039683(n+1)`
-/

namespace A051142.P1257870360046954774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A039683 (n + 1) : ℚ)

end

end A051142.P1257870360046954774

/-! ## A051142.P10828371353811193601

`(A075497(n+1)/A008277(n+1))²*A008275(n+1)`
-/

namespace A051142.P10828371353811193601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075497 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)) ^ 2 * (A008275 (n + 1) : ℚ)

end

end A051142.P10828371353811193601

/-! ## A051142.P17218936820735615756

`A039683(n+1)/A051141(n+1)*A051151(n+1)`
-/

namespace A051142.P17218936820735615756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051141 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051142.P17218936820735615756

/-! ## A051142.P4724165684042845371

`(A051151(n+1)/A051141(n+1))²*A008275(n+1)`
-/

namespace A051142.P4724165684042845371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051151 (n + 1) : ℚ) / (A051141 (n + 1) : ℚ)) ^ 2 * (A008275 (n + 1) : ℚ)

end

end A051142.P4724165684042845371

/-! ## A051142.P16922351137907803937

`A051187(n+1)/A130321(n)`
-/

namespace A051142.P16922351137907803937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051187 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A051142.P16922351137907803937

/-! ## A051142.P13932594998688245165

`A051141(n+1)/A051151(n+1)*A051187(n+1)`
-/

namespace A051142.P13932594998688245165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A051151 (n + 1) : ℚ) * (A051187 (n + 1) : ℚ)

end

end A051142.P13932594998688245165

/-! ## A051142.P6650927787997025905

`A051151(n+1)/A051231(n+1)*A051151(n+1)`
-/

namespace A051142.P6650927787997025905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051151 (n + 1) : ℚ) / (A051231 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051142.P6650927787997025905

/-! ## A051142.P1165748759912498659

`A039683(n+1)²/A008275(n+1)`
-/

namespace A051142.P1165748759912498659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) ^ 2 : ℚ) / (A008275 (n + 1) : ℚ)

end

end A051142.P1165748759912498659

/-! ## A051142.P6883983899259540710

`A000010(A090988(n+1))²*A008275(n+1)`
-/

namespace A051142.P6883983899259540710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A090988 (n + 1)).toNat ^ 2 * A008275 (n + 1)

end

end A051142.P6883983899259540710

/-!
# A051143: Numbers k such that the k-th prime is a partition number.

The programs for A051143, there is no canonical definition to state claims against.
-/

/-! ## A051143.P2608388294084176746

`A000720(A049575(n+1))`
-/

namespace A051143.P2608388294084176746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A049575 (n + 1)).toNat

end

end A051143.P2608388294084176746

/-! ## A051143.P14948769937311769164

`record[A303753(A000041(n))]`
-/

namespace A051143.P14948769937311769164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051143.P14948769937311769164

/-! ## A051143.P17684594949971028708

`record[A303753(A173238(n))]`
-/

namespace A051143.P17684594949971028708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (A173238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051143.P17684594949971028708

/-!
# A051144: Nonsquarefree nonsquares: each term has a square factor but is not a perfect square itself.

The programs for A051144, the canonical program `A051144.P15705721184741371757` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051144 has offset 1).

The definition of A051144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051144.P15705721184741371757

`comp[∪[A005117(n+1), n²]]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A051144

/-- `comp[∪[A005117(n+1), n²]]` -/
def P15705721184741371757.Spec : Prop :=
  ∀ n, (P15705721184741371757.a n : ℤ) = A051144 (n + 1)

theorem P15705721184741371757.correct : P15705721184741371757.Spec := by
  intro n
  simp only [A051144, Nat.add_sub_cancel]

end A051144

/-! ## A051144.P4699489867009383592

`lt[1, A008833(n+1)%(n+1)]+1`
-/

namespace A051144.P4699489867009383592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008833 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A051144.P4699489867009383592

namespace A051144

/-- `lt[1, A008833(n+1)%(n+1)]+1` -/
def P4699489867009383592.Spec : Prop :=
  ∀ n, (P4699489867009383592.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P9547289935099460545

`∪[A072588(n+1), A240111(n+1)]`
-/

namespace A051144.P9547289935099460545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P9547289935099460545

namespace A051144

/-- `∪[A072588(n+1), A240111(n+1)]` -/
def P9547289935099460545.Spec : Prop :=
  ∀ n, (P9547289935099460545.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P3420565593746295554

`∪[A072588(n+1), A295661(n+1)]`
-/

namespace A051144.P3420565593746295554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P3420565593746295554

namespace A051144

/-- `∪[A072588(n+1), A295661(n+1)]` -/
def P3420565593746295554.Spec : Prop :=
  ∀ n, (P3420565593746295554.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P8884210544489040683

`∪[A069236(n+1), A303946(n+1)]`
-/

namespace A051144.P8884210544489040683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P8884210544489040683

namespace A051144

/-- `∪[A069236(n+1), A303946(n+1)]` -/
def P8884210544489040683.Spec : Prop :=
  ∀ n, (P8884210544489040683.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P13929168455267397366

`∪[A072588(n+1), A301517(n+1)]`
-/

namespace A051144.P13929168455267397366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P13929168455267397366

namespace A051144

/-- `∪[A072588(n+1), A301517(n+1)]` -/
def P13929168455267397366.Spec : Prop :=
  ∀ n, (P13929168455267397366.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P2610224813340116450

`∪[A097054(n+1), A303946(n+1)]`
-/

namespace A051144.P2610224813340116450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P2610224813340116450

namespace A051144

/-- `∪[A097054(n+1), A303946(n+1)]` -/
def P2610224813340116450.Spec : Prop :=
  ∀ n, (P2610224813340116450.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P17370559074480663994

`∪[A069236(n+1), A332785(n+1)]`
-/

namespace A051144.P17370559074480663994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P17370559074480663994

namespace A051144

/-- `∪[A069236(n+1), A332785(n+1)]` -/
def P17370559074480663994.Spec : Prop :=
  ∀ n, (P17370559074480663994.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P18169722354944373701

`∪[A380168(n+1), A303946(n+1)]`
-/

namespace A051144.P18169722354944373701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P18169722354944373701

namespace A051144

/-- `∪[A380168(n+1), A303946(n+1)]` -/
def P18169722354944373701.Spec : Prop :=
  ∀ n, (P18169722354944373701.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P17300114188341761760

`eq[A008683(n+1), A210628(A000005(n+1))]+1`
-/

namespace A051144.P17300114188341761760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A051144.P17300114188341761760

namespace A051144

/-- `eq[A008683(n+1), A210628(A000005(n+1))]+1` -/
def P17300114188341761760.Spec : Prop :=
  ∀ n, (P17300114188341761760.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P4595546313352437177

`filter[A080756(n+1), A049240(#)]`
-/

namespace A051144.P4595546313352437177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A051144.P4595546313352437177

namespace A051144

/-- `filter[A080756(n+1), A049240(#)]` -/
def P4595546313352437177.Spec : Prop :=
  ∀ n, P4595546313352437177.a n = A051144 (n + 1)

end A051144

/-! ## A051144.P3864481418938904200

`filter[A013929(n+2), A049240(#)]`
-/

namespace A051144.P3864481418938904200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A051144.P3864481418938904200

namespace A051144

/-- `filter[A013929(n+2), A049240(#)]` -/
def P3864481418938904200.Spec : Prop :=
  ∀ n, P3864481418938904200.a n = A051144 (n + 1)

end A051144

/-! ## A051144.P1256401085048518917

`filter[A162966(n+1), A049240(#)]`
-/

namespace A051144.P1256401085048518917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A051144.P1256401085048518917

namespace A051144

/-- `filter[A162966(n+1), A049240(#)]` -/
def P1256401085048518917.Spec : Prop :=
  ∀ n, P1256401085048518917.a n = A051144 (n + 1)

end A051144

/-! ## A051144.P3684934567409969703

`filter[A088610(2*(n+1)), A049240(#)]`
-/

namespace A051144.P3684934567409969703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A051144.P3684934567409969703

namespace A051144

/-- `filter[A088610(2*(n+1)), A049240(#)]` -/
def P3684934567409969703.Spec : Prop :=
  ∀ n, P3684934567409969703.a n = A051144 (n + 1)

end A051144

/-! ## A051144.P13211917306200945932

`filter[A075378(2*n+1), A049240(#)]`
-/

namespace A051144.P13211917306200945932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A051144.P13211917306200945932

namespace A051144

/-- `filter[A075378(2*n+1), A049240(#)]` -/
def P13211917306200945932.Spec : Prop :=
  ∀ n, P13211917306200945932.a n = A051144 (n + 1)

end A051144

/-! ## A051144.P1555570610824756275

`filter[A089229(n+1), A087049(#)]`
-/

namespace A051144.P1555570610824756275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A051144.P1555570610824756275

namespace A051144

/-- `filter[A089229(n+1), A087049(#)]` -/
def P1555570610824756275.Spec : Prop :=
  ∀ n, P1555570610824756275.a n = A051144 (n + 1)

end A051144

/-! ## A051144.P13761925721488224855

`∩[A013929(n+1), A089229(n+1)]`
-/

namespace A051144.P13761925721488224855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P13761925721488224855

namespace A051144

/-- `∩[A013929(n+1), A089229(n+1)]` -/
def P13761925721488224855.Spec : Prop :=
  ∀ n, (P13761925721488224855.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P9818683243115878383

`∩[A080756(n+1), A089229(n+1)]`
-/

namespace A051144.P9818683243115878383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P9818683243115878383

namespace A051144

/-- `∩[A080756(n+1), A089229(n+1)]` -/
def P9818683243115878383.Spec : Prop :=
  ∀ n, (P9818683243115878383.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P3338828047363400349

`∩[A089229(n+1), A162966(n+1)]`
-/

namespace A051144.P3338828047363400349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P3338828047363400349

namespace A051144

/-- `∩[A089229(n+1), A162966(n+1)]` -/
def P3338828047363400349.Spec : Prop :=
  ∀ n, (P3338828047363400349.a n : ℤ) = A051144 (n + 1)

end A051144

/-! ## A051144.P10280508168330619915

`∩[A089229(n+1), A363597(n+1)]`
-/

namespace A051144.P10280508168330619915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051144.P10280508168330619915

namespace A051144

/-- `∩[A089229(n+1), A363597(n+1)]` -/
def P10280508168330619915.Spec : Prop :=
  ∀ n, (P10280508168330619915.a n : ℤ) = A051144 (n + 1)

end A051144

/-!
# A051145: a(0)=0, a(1)=1, a(n) = smallest number such that sequence b(n) = a(n) OR a(n+1) is strictly monotonically increasing.

The programs for A051145, the canonical program `A051145.P8836576007479272300` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051145 has offset 0).

The definition of A051145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051145.P8836576007479272300

`or(a(n-1)+a(n-2)+1, a(n-1))-a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051145

/-- `or(a(n-1)+a(n-2)+1, a(n-1))-a(n-1)` -/
def P8836576007479272300.Spec : Prop :=
  ∀ n, P8836576007479272300.a n = A051145 n

theorem P8836576007479272300.correct : P8836576007479272300.Spec := by
  intro n
  simp only [A051145]

end A051145

/-! ## A051145.P10805343279777482551

`xor(a(n-1), A051146(n))` with `a(0)=0, a(1)=1`
-/

namespace A051145.P10805343279777482551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (a (n - 1)) (A051146 n)

end

end A051145.P10805343279777482551

namespace A051145

/-- `xor(a(n-1), A051146(n))` -/
def P10805343279777482551.Spec : Prop :=
  ∀ n, P10805343279777482551.a n = A051145 n

end A051145

/-! ## A051145.P2521506336859042038

`A057923(3*n)/4`
-/

namespace A051145.P2521506336859042038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057923 (3 * n) : ℚ) / 4

end

end A051145.P2521506336859042038

namespace A051145

/-- `A057923(3*n)/4` -/
def P2521506336859042038.Spec : Prop :=
  ∀ n, P2521506336859042038.a n = (A051145 n : ℚ)

end A051145

/-! ## A051145.P9251692471019059454

`floor(A057923(A008486(n))/4)`
-/

namespace A051145.P9251692471019059454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057923 (A008486 n).toNat : ℚ) / 4⌋

end

end A051145.P9251692471019059454

namespace A051145

/-- `floor(A057923(A008486(n))/4)` -/
def P9251692471019059454.Spec : Prop :=
  ∀ n, P9251692471019059454.a n = A051145 n

end A051145

/-! ## A051145.P13246527993629242666

`floor(A057923(A016789(n))/4)`
-/

namespace A051145.P13246527993629242666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057923 (A016789 n).toNat : ℚ) / 4⌋

end

end A051145.P13246527993629242666

namespace A051145

/-- `floor(A057923(A016789(n))/4)` -/
def P13246527993629242666.Spec : Prop :=
  ∀ n, P13246527993629242666.a n = A051145 n

end A051145

/-! ## A051145.P4630499608924616569

`round(A057923(A016789(n))/4-1/A000040(n+1))`
-/

namespace A051145.P4630499608924616569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057923 (A016789 n).toNat : ℚ) / 4 - 1 / (A000040 (n + 1) : ℚ))

end

end A051145.P4630499608924616569

namespace A051145

/-- `round(A057923(A016789(n))/4-1/A000040(n+1))` -/
def P4630499608924616569.Spec : Prop :=
  ∀ n, P4630499608924616569.a n = A051145 n

end A051145

/-! ## A051145.P13319528237250245050

`A324245(A057923(3*n)+2)`
-/

namespace A051145.P13319528237250245050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A057923 (3 * n) + 2).toNat

end

end A051145.P13319528237250245050

namespace A051145

/-- `A324245(A057923(3*n)+2)` -/
def P13319528237250245050.Spec : Prop :=
  ∀ n, P13319528237250245050.a n = A051145 n

end A051145

/-! ## A051145.P14814809930897133534

`A110657(A057923(3*n))`
-/

namespace A051145.P14814809930897133534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A057923 (3 * n)).toNat

end

end A051145.P14814809930897133534

namespace A051145

/-- `A110657(A057923(3*n))` -/
def P14814809930897133534.Spec : Prop :=
  ∀ n, P14814809930897133534.a n = A051145 n

end A051145

/-! ## A051145.P16805401946210985237

`A025480(A057923(3*n)+1)`
-/

namespace A051145.P16805401946210985237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A057923 (3 * n) + 1).toNat

end

end A051145.P16805401946210985237

namespace A051145

/-- `A025480(A057923(3*n)+1)` -/
def P16805401946210985237.Spec : Prop :=
  ∀ n, P16805401946210985237.a n = A051145 n

end A051145

/-! ## A051145.P15929825718734472991

`A025480(A057923(A016789(n)))`
-/

namespace A051145.P15929825718734472991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A057923 (A016789 n).toNat).toNat

end

end A051145.P15929825718734472991

namespace A051145

/-- `A025480(A057923(A016789(n)))` -/
def P15929825718734472991.Spec : Prop :=
  ∀ n, P15929825718734472991.a n = A051145 n

end A051145

/-!
# A051146: Sequence b(n) mentioned in A051145.

The programs for A051146, the canonical program `A051146.P2694974450610895736` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051146 has offset 1).

The definition of A051146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051146.P2694974450610895736

`A051145(n+1)+A051145(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051146

/-- `A051145(n+1)+A051145(n)` -/
def P2694974450610895736.Spec : Prop :=
  ∀ n, P2694974450610895736.a n = A051146 (n + 1)

theorem P2694974450610895736.correct : P2694974450610895736.Spec := by
  intro n
  simp only [A051146, Nat.add_sub_cancel]

end A051146

/-! ## A051146.P2496088136127555729

`or(A051145(A008619(2*n)), A051145(n))`
-/

namespace A051146.P2496088136127555729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051145 (A008619 (2 * n)).toNat) (A051145 n)

end

end A051146.P2496088136127555729

namespace A051146

/-- `or(A051145(A008619(2*n)), A051145(n))` -/
def P2496088136127555729.Spec : Prop :=
  ∀ n, P2496088136127555729.a n = A051146 (n + 1)

end A051146

/-! ## A051146.P2120408437827504286

`xor(A051145(A110514(2*n)), A051145(n))`
-/

namespace A051146.P2120408437827504286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051145 (A110514 (2 * n)).toNat) (A051145 n)

end

end A051146.P2120408437827504286

namespace A051146

/-- `xor(A051145(A110514(2*n)), A051145(n))` -/
def P2120408437827504286.Spec : Prop :=
  ∀ n, P2120408437827504286.a n = A051146 (n + 1)

end A051146

/-! ## A051146.P3535599280452579557

`floor(A057924(A008486(n+1))/4)`
-/

namespace A051146.P3535599280452579557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057924 (A008486 (n + 1)).toNat : ℚ) / 4⌋

end

end A051146.P3535599280452579557

namespace A051146

/-- `floor(A057924(A008486(n+1))/4)` -/
def P3535599280452579557.Spec : Prop :=
  ∀ n, P3535599280452579557.a n = A051146 (n + 1)

end A051146

/-! ## A051146.P1663230090931277596

`floor(A057924(A008585(n+1))/4)`
-/

namespace A051146.P1663230090931277596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057924 (A008585 (n + 1)).toNat : ℚ) / 4⌋

end

end A051146.P1663230090931277596

namespace A051146

/-- `floor(A057924(A008585(n+1))/4)` -/
def P1663230090931277596.Spec : Prop :=
  ∀ n, P1663230090931277596.a n = A051146 (n + 1)

end A051146

/-! ## A051146.P5013791315992269290

`floor(A057924(A016789(n+1))/4)`
-/

namespace A051146.P5013791315992269290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057924 (A016789 (n + 1)).toNat : ℚ) / 4⌋

end

end A051146.P5013791315992269290

namespace A051146

/-- `floor(A057924(A016789(n+1))/4)` -/
def P5013791315992269290.Spec : Prop :=
  ∀ n, P5013791315992269290.a n = A051146 (n + 1)

end A051146

/-! ## A051146.P14929793091635692175

`A025480(A057924(3*(n+1)))`
-/

namespace A051146.P14929793091635692175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A057924 (3 * (n + 1))).toNat

end

end A051146.P14929793091635692175

namespace A051146

/-- `A025480(A057924(3*(n+1)))` -/
def P14929793091635692175.Spec : Prop :=
  ∀ n, P14929793091635692175.a n = A051146 (n + 1)

end A051146

/-!
# A051147: Smallest m such that A051145(m) = 2^n.

The programs for A051147, there is no canonical definition to state claims against.
-/

/-! ## A051147.P11052048680513089982

`A057925(n+2)/3`
-/

namespace A051147.P11052048680513089982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057925 (n + 2) : ℚ) / 3

end

end A051147.P11052048680513089982

/-! ## A051147.P5158102222359914931

`A057928(n+3)/3`
-/

namespace A051147.P5158102222359914931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057928 (n + 3) : ℚ) / 3

end

end A051147.P5158102222359914931

/-! ## A051147.P10262314439766067295

`record[round(A057925(n)/3)]`
-/

namespace A051147.P10262314439766067295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A057925 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051147.P10262314439766067295

/-! ## A051147.P5554544983610986793

`∩[A042996(n+1), A244747(n+1)]`
-/

namespace A051147.P5554544983610986793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051147.P5554544983610986793

/-! ## A051147.P10949641844837615447

`∑[A189671(Δ[A057925(n+1)])]`
-/

namespace A051147.P10949641844837615447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051147.P10949641844837615447

/-!
# A051150: Triangle read by rows: T(n, m) = S1(n, m)*5^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A051150, there is no canonical definition to state claims against.
-/

/-! ## A051150.P4839521894009748989

`A000351(A025581(n))*A008275(n+1)`
-/

namespace A051150.P4839521894009748989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A025581 n).toNat * A008275 (n + 1)

end

end A051150.P4839521894009748989

/-! ## A051150.P14230757697399353511

`A048176(n+1)/A130321(n)`
-/

namespace A051150.P14230757697399353511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048176 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A051150.P14230757697399353511

/-! ## A051150.P18075119058938236347

`A048176(n+1)/sqrt(A262616(n))`
-/

namespace A051150.P18075119058938236347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048176 (n + 1) : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A051150.P18075119058938236347

/-! ## A051150.P9011757042526486002

`A048176(n+1)/A000079(A025581(n))`
-/

namespace A051150.P9011757042526486002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048176 (n + 1) : ℚ) / (A000079 (A025581 n).toNat : ℚ)

end

end A051150.P9011757042526486002

/-! ## A051150.P8245053319661250954

`A008275(n+1)/A039683(n+1)*A048176(n+1)`
-/

namespace A051150.P8245053319661250954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A039683 (n + 1) : ℚ) * (A048176 (n + 1) : ℚ)

end

end A051150.P8245053319661250954

/-! ## A051150.P11744290731170607575

`A039683(n+1)/A051142(n+1)*A048176(n+1)`
-/

namespace A051150.P11744290731170607575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051142 (n + 1) : ℚ) * (A048176 (n + 1) : ℚ)

end

end A051150.P11744290731170607575

/-! ## A051150.P5208900273190973790

`A048176(n+1)/A051151(n+1)*A051141(n+1)`
-/

namespace A051150.P5208900273190973790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048176 (n + 1) : ℚ) / (A051151 (n + 1) : ℚ) * (A051141 (n + 1) : ℚ)

end

end A051150.P5208900273190973790

/-! ## A051150.P7802172790889451086

`A048176(n+1)/A051187(n+1)*A051142(n+1)`
-/

namespace A051150.P7802172790889451086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048176 (n + 1) : ℚ) / (A051187 (n + 1) : ℚ) * (A051142 (n + 1) : ℚ)

end

end A051150.P7802172790889451086

/-! ## A051150.P12750276226934841403

`A008275(n+1)/A130321(n)*A007088(A130321(n))`
-/

namespace A051150.P12750276226934841403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A130321 n : ℚ) * (A007088 (A130321 n).toNat : ℚ)

end

end A051150.P12750276226934841403

/-!
# A051151: Triangle read by rows: T(n, m) = S1(n, m)*6^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A051151, there is no canonical definition to state claims against.
-/

/-! ## A051151.P6005106559350960938

`A039683(n+1)*A140303(n)`
-/

namespace A051151.P6005106559350960938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) * A140303 n

end

end A051151.P6005106559350960938

/-! ## A051151.P8047393924366236763

`A051141(n+1)*A130321(n)`
-/

namespace A051151.P8047393924366236763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051141 (n + 1) * A130321 n

end

end A051151.P8047393924366236763

/-! ## A051151.P12594067630524493993

`3^A025581(n)*A039683(n+1)`
-/

namespace A051151.P12594067630524493993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025581 n : ℤ) * (A039683 (n + 1) : ℚ)

end

end A051151.P12594067630524493993

/-! ## A051151.P2316811540046271077

`A051141(n+1)*A059268(A061579(n))`
-/

namespace A051151.P2316811540046271077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051141 (n + 1) * A059268 (A061579 n).toNat

end

end A051151.P2316811540046271077

/-! ## A051151.P8101236874986367128

`A011782(A004736(n+1))*A051141(n+1)`
-/

namespace A051151.P8101236874986367128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A051141 (n + 1)

end

end A051151.P8101236874986367128

/-! ## A051151.P17090866722149734583

`A039683(n+1)/A008275(n+1)*A051141(n+1)`
-/

namespace A051151.P17090866722149734583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A051141 (n + 1) : ℚ)

end

end A051151.P17090866722149734583

/-! ## A051151.P3017961821897681207

`A051141(n+1)/A039683(n+1)*A051142(n+1)`
-/

namespace A051151.P3017961821897681207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A039683 (n + 1) : ℚ) * (A051142 (n + 1) : ℚ)

end

end A051151.P3017961821897681207

/-! ## A051151.P18049042911564686921

`A051141(n+1)/A051142(n+1)*A051187(n+1)`
-/

namespace A051151.P18049042911564686921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A051142 (n + 1) : ℚ) * (A051187 (n + 1) : ℚ)

end

end A051151.P18049042911564686921

/-! ## A051151.P17962643853532277694

`A039683(n+1)/A051141(n+1)*A051231(n+1)`
-/

namespace A051151.P17962643853532277694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051141 (n + 1) : ℚ) * (A051231 (n + 1) : ℚ)

end

end A051151.P17962643853532277694

/-! ## A051151.P11935423507810518972

`A008275(n+1)*A130321(n)*A061898(A130321(n))`
-/

namespace A051151.P11935423507810518972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A130321 n * A061898 (A130321 n).toNat

end

end A051151.P11935423507810518972

/-!
# A051154: 

The programs for A051154, there is no canonical definition to state claims against.
-/

/-! ## A051154.P6422674643817706501

`ratio[1-2^3^n]`
-/

namespace A051154.P6422674643817706501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ 3 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A051154.P6422674643817706501

/-!
# A051156: 

The programs for A051156, there is no canonical definition to state claims against.
-/

/-! ## A051156.P11559781267401917027

`A019320(A000040(n+1)²)`
-/

namespace A051156.P11559781267401917027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (A000040 (n + 1) ^ 2).toNat

end

end A051156.P11559781267401917027

/-! ## A051156.P924739991257975127

`A063670(A000040(n+1)²)`
-/

namespace A051156.P924739991257975127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063670 (A000040 (n + 1) ^ 2).toNat

end

end A051156.P924739991257975127

/-! ## A051156.P12153476142617792602

`A064078(A000040(n+1)²)`
-/

namespace A051156.P12153476142617792602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (A000040 (n + 1) ^ 2).toNat

end

end A051156.P12153476142617792602

/-!
# A051158: Decimal expansion of Sum_{n >= 0} 1/(2^2^n+1).

The programs for A051158, there is no canonical definition to state claims against.
-/

/-! ## A051158.P984512221243782158

`9-A048649(n+1)`
-/

namespace A051158.P984512221243782158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A048649 (n + 1 + 1)

end

end A051158.P984512221243782158

/-!
# A051159: Triangle read by rows: T(n, k) = binomial(n mod 2, k mod 2) * binomial(n div 2, k div 2), where 'div' denotes integer division.

The programs for A051159, the canonical program `A051159.P11925439272814337638` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051159 has offset 0).

The definition of A051159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051159.P10424566186212709888

`abs(A051160(n))`
-/

namespace A051159.P10424566186212709888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051160 n|

end

end A051159.P10424566186212709888

namespace A051159

/-- `abs(A051160(n))` -/
def P10424566186212709888.Spec : Prop :=
  ∀ n, P10424566186212709888.a n = A051159 n

end A051159

/-! ## A051159.P5954894554756436400

`abs(A158020(n))`
-/

namespace A051159.P5954894554756436400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158020 n|

end

end A051159.P5954894554756436400

namespace A051159

/-- `abs(A158020(n))` -/
def P5954894554756436400.Spec : Prop :=
  ∀ n, P5954894554756436400.a n = A051159 n

end A051159

/-! ## A051159.P2243165539896587612

`A034851(n)-A034852(n)`
-/

namespace A051159.P2243165539896587612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - A034852 n

end

end A051159.P2243165539896587612

namespace A051159

/-- `A034851(n)-A034852(n)` -/
def P2243165539896587612.Spec : Prop :=
  ∀ n, P2243165539896587612.a n = A051159 n

end A051159

/-! ## A051159.P11798295219871647504

`A028326(n)-A136489(n)`
-/

namespace A051159.P11798295219871647504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A136489 n

end

end A051159.P11798295219871647504

namespace A051159

/-- `A028326(n)-A136489(n)` -/
def P11798295219871647504.Spec : Prop :=
  ∀ n, P11798295219871647504.a n = A051159 n

theorem P11798295219871647504.correct : P11798295219871647504.Spec := by
  intro n
  simp only [A051159, Nat.add_sub_cancel, A051159.P11798295219871647504.a, A051159.P11925439272814337638.a, A028326, A028326.P16610217584664895500.a, A106465, A106465.P403700579701953516.a, A119963, A119963.P15712922093875506734.a, A136489, A136489.P5458054172949314838.a, A007318, A007318.P302227728145965961.a, A077028, A077028.P11682596430163569480.a, A152198, A152198.P9677035182009018168.a, A246694, A246694.P8696891911788978763.a, A004247, A004247.P14233945955703425283.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051159

/-! ## A051159.P11925439272814337638

`A106465(n)*A119963(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A051159

/-- `A106465(n)*A119963(n)` -/
def P11925439272814337638.Spec : Prop :=
  ∀ n, P11925439272814337638.a n = A051159 n

theorem P11925439272814337638.correct : P11925439272814337638.Spec := by
  intro n
  simp only [A051159]

end A051159

/-! ## A051159.P266461221235744227

`A106465(n)*A211226(n)`
-/

namespace A051159.P266461221235744227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106465 n * A211226 n

end

end A051159.P266461221235744227

namespace A051159

/-- `A106465(n)*A211226(n)` -/
def P266461221235744227.Spec : Prop :=
  ∀ n, P266461221235744227.a n = A051159 n

end A051159

/-! ## A051159.P12262917774415887424

`gcd(A000038(n), A051160(n))`
-/

namespace A051159.P12262917774415887424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A051160 n)

end

end A051159.P12262917774415887424

namespace A051159

/-- `gcd(A000038(n), A051160(n))` -/
def P12262917774415887424.Spec : Prop :=
  ∀ n, (P12262917774415887424.a n : ℤ) = A051159 n

end A051159

/-! ## A051159.P8807952130652828170

`gcd(A010816(n), A158020(n))`
-/

namespace A051159.P8807952130652828170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A158020 n)

end

end A051159.P8807952130652828170

namespace A051159

/-- `gcd(A010816(n), A158020(n))` -/
def P8807952130652828170.Spec : Prop :=
  ∀ n, (P8807952130652828170.a n : ℤ) = A051159 n

end A051159

/-! ## A051159.P4023279265139005402

`lcm(A020985(n), A051160(n))`
-/

namespace A051159.P4023279265139005402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A051160 n)

end

end A051159.P4023279265139005402

namespace A051159

/-- `lcm(A020985(n), A051160(n))` -/
def P4023279265139005402.Spec : Prop :=
  ∀ n, (P4023279265139005402.a n : ℤ) = A051159 n

end A051159

/-! ## A051159.P17134763336977796184

`lcm(A033999(n), A158020(n))`
-/

namespace A051159.P17134763336977796184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A158020 n)

end

end A051159.P17134763336977796184

namespace A051159

/-- `lcm(A033999(n), A158020(n))` -/
def P17134763336977796184.Spec : Prop :=
  ∀ n, (P17134763336977796184.a n : ℤ) = A051159 n

end A051159

/-! ## A051159.P6285732899859578055

`A109128(n)+1-A136489(n)`
-/

namespace A051159.P6285732899859578055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A136489 n)

end

end A051159.P6285732899859578055

namespace A051159

/-- `A109128(n)+1-A136489(n)` -/
def P6285732899859578055.Spec : Prop :=
  ∀ n, P6285732899859578055.a n = A051159 n

theorem P6285732899859578055.correct : P6285732899859578055.Spec := by
  intro n
  simp only [A051159, Nat.add_sub_cancel, A051159.P6285732899859578055.a, A051159.P11925439272814337638.a, A106465, A106465.P403700579701953516.a, A109128, A109128.P11896187039746255515.a, A119963, A119963.P15712922093875506734.a, A136489, A136489.P5458054172949314838.a, A028326, A028326.P16610217584664895500.a, A077028, A077028.P11682596430163569480.a, A152198, A152198.P9677035182009018168.a, A246694, A246694.P8696891911788978763.a, A004247, A004247.P14233945955703425283.a, A007318, A007318.P302227728145965961.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051159

/-! ## A051159.P14906909713059177913

`2*A034851(n)-A007318(n)`
-/

namespace A051159.P14906909713059177913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034851 n - A007318 n

end

end A051159.P14906909713059177913

namespace A051159

/-- `2*A034851(n)-A007318(n)` -/
def P14906909713059177913.Spec : Prop :=
  ∀ n, P14906909713059177913.a n = A051159 n

end A051159

/-! ## A051159.P14901919140760040898

`A007318(n)-2*A034852(n)`
-/

namespace A051159.P14901919140760040898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 2 * A034852 n

end

end A051159.P14901919140760040898

namespace A051159

/-- `A007318(n)-2*A034852(n)` -/
def P14901919140760040898.Spec : Prop :=
  ∀ n, P14901919140760040898.a n = A051159 n

end A051159

/-! ## A051159.P15522114075108964432

`2*A007318(n)-A136489(n)`
-/

namespace A051159.P15522114075108964432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A136489 n

end

end A051159.P15522114075108964432

namespace A051159

/-- `2*A007318(n)-A136489(n)` -/
def P15522114075108964432.Spec : Prop :=
  ∀ n, P15522114075108964432.a n = A051159 n

theorem P15522114075108964432.correct : P15522114075108964432.Spec := by
  intro n
  simp only [A051159, Nat.add_sub_cancel, A051159.P15522114075108964432.a, A051159.P11925439272814337638.a, A007318, A007318.P302227728145965961.a, A106465, A106465.P403700579701953516.a, A119963, A119963.P15712922093875506734.a, A136489, A136489.P5458054172949314838.a, A028326, A028326.P16610217584664895500.a, A077028, A077028.P11682596430163569480.a, A152198, A152198.P9677035182009018168.a, A246694, A246694.P8696891911788978763.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A004247, A004247.P14233945955703425283.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A161680, A161680.P17206074215489759881.a, A204164, A204164.P12102871025011169980.a, A209278, A209278.P2209721378979805351.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A025581, A025581.P420762180635059694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051159

/-! ## A051159.P12625984008319835874

`2*A034851(n)-abs(A108086(n))`
-/

namespace A051159.P12625984008319835874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034851 n - |A108086 n|

end

end A051159.P12625984008319835874

namespace A051159

/-- `2*A034851(n)-abs(A108086(n))` -/
def P12625984008319835874.Spec : Prop :=
  ∀ n, P12625984008319835874.a n = A051159 n

end A051159

/-! ## A051159.P16172411896364505377

`abs(A108086(n))-2*A034852(n)`
-/

namespace A051159.P16172411896364505377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - 2 * A034852 n

end

end A051159.P16172411896364505377

namespace A051159

/-- `abs(A108086(n))-2*A034852(n)` -/
def P16172411896364505377.Spec : Prop :=
  ∀ n, P16172411896364505377.a n = A051159 n

end A051159

/-! ## A051159.P14540952857544883528

`2*A034851(n)-abs(A130595(n))`
-/

namespace A051159.P14540952857544883528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034851 n - |A130595 n|

end

end A051159.P14540952857544883528

namespace A051159

/-- `2*A034851(n)-abs(A130595(n))` -/
def P14540952857544883528.Spec : Prop :=
  ∀ n, P14540952857544883528.a n = A051159 n

end A051159

/-! ## A051159.P5324153796165426931

`abs(A130595(n))-2*A034852(n)`
-/

namespace A051159.P5324153796165426931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - 2 * A034852 n

end

end A051159.P5324153796165426931

namespace A051159

/-- `abs(A130595(n))-2*A034852(n)` -/
def P5324153796165426931.Spec : Prop :=
  ∀ n, P5324153796165426931.a n = A051159 n

end A051159

/-! ## A051159.P7261003050873260116

`sqrt(A008459(n))-2*A034852(n)`
-/

namespace A051159.P7261003050873260116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) - (2 * A034852 n : ℝ)

end

end A051159.P7261003050873260116

namespace A051159

/-- `sqrt(A008459(n))-2*A034852(n)` -/
def P7261003050873260116.Spec : Prop :=
  ∀ n, P7261003050873260116.a n = (A051159 n : ℝ)

end A051159

/-! ## A051159.P16744980909311248644

`2*A034851(n)-Δ[A102363(n)]`
-/

namespace A051159.P16744980909311248644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034851 n - (f1 (n + 1) - f1 n)

end

end A051159.P16744980909311248644

namespace A051159

/-- `2*A034851(n)-Δ[A102363(n)]` -/
def P16744980909311248644.Spec : Prop :=
  ∀ n, P16744980909311248644.a n = A051159 n

end A051159

/-!
# A051160: Coefficients in expansion of (1-x)^floor(n/2)(1+x)^ceiling(n/2).

The programs for A051160, the canonical program `A051160.P4902824279470900928` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051160 has offset 0).

The definition of A051160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051160.P4902824279470900928

`A051159(n)*A057077(A002262(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A051160

/-- `A051159(n)*A057077(A002262(n))` -/
def P4902824279470900928.Spec : Prop :=
  ∀ n, P4902824279470900928.a n = A051160 n

theorem P4902824279470900928.correct : P4902824279470900928.Spec := by
  intro n
  simp only [A051160]

end A051160

/-! ## A051160.P17129052956268449892

`A033999(A083920(n))*A158020(n)`
-/

namespace A051160.P17129052956268449892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A083920 n).toNat * A158020 n

end

end A051160.P17129052956268449892

namespace A051160

/-- `A033999(A083920(n))*A158020(n)` -/
def P17129052956268449892.Spec : Prop :=
  ∀ n, P17129052956268449892.a n = A051160 n

end A051160

/-! ## A051160.P2649888443169419639

`abs(A158020(n))*A057077(A002262(n))`
-/

namespace A051160.P2649888443169419639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158020 n| * A057077 (A002262 n).toNat

end

end A051160.P2649888443169419639

namespace A051160

/-- `abs(A158020(n))*A057077(A002262(n))` -/
def P2649888443169419639.Spec : Prop :=
  ∀ n, P2649888443169419639.a n = A051160 n

end A051160

/-! ## A051160.P3373703040715044871

`A033999(A061579(n))*A158020(n)`
-/

namespace A051160.P3373703040715044871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061579 n).toNat * A158020 n

end

end A051160.P3373703040715044871

namespace A051160

/-- `A033999(A061579(n))*A158020(n)` -/
def P3373703040715044871.Spec : Prop :=
  ∀ n, P3373703040715044871.a n = A051160 n

end A051160

/-! ## A051160.P16343141838578492011

`A051159(A061579(n))/A057077(A002262(n))`
-/

namespace A051160.P16343141838578492011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051159 (A061579 n).toNat : ℚ) / (A057077 (A002262 n).toNat : ℚ)

end

end A051160.P16343141838578492011

namespace A051160

/-- `A051159(A061579(n))/A057077(A002262(n))` -/
def P16343141838578492011.Spec : Prop :=
  ∀ n, P16343141838578492011.a n = (A051160 n : ℚ)

end A051160

/-! ## A051160.P13680040432186527391

`A259875(A056537(n+1))`
-/

namespace A051160.P13680040432186527391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A056537 (n + 1)).toNat

end

end A051160.P13680040432186527391

namespace A051160

/-- `A259875(A056537(n+1))` -/
def P13680040432186527391.Spec : Prop :=
  ∀ n, P13680040432186527391.a n = A051160 n

end A051160

/-! ## A051160.P6489093995898004724

`A051159(n)*A259875(A133819(n+1))`
-/

namespace A051160.P6489093995898004724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n * A259875 (A133819 (n + 1)).toNat

end

end A051160.P6489093995898004724

namespace A051160

/-- `A051159(n)*A259875(A133819(n+1))` -/
def P6489093995898004724.Spec : Prop :=
  ∀ n, P6489093995898004724.a n = A051160 n

end A051160

/-! ## A051160.P849479484474123917

`A259875(A194061(n+1)+1)`
-/

namespace A051160.P849479484474123917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A194061 (n + 1) + 1).toNat

end

end A051160.P849479484474123917

namespace A051160

/-- `A259875(A194061(n+1)+1)` -/
def P849479484474123917.Spec : Prop :=
  ∀ n, P849479484474123917.a n = A051160 n

end A051160

/-!
# A051162: Triangle T(n,k) = n+k, n >= 0, 0 <= k <= n.

The programs for A051162, the canonical program `A051162.P14261216125704105833` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051162 has offset 0).

The definition of A051162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051162.P14261216125704105833

`A003056(n)+A002262(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051162

/-- `A003056(n)+A002262(n)` -/
def P14261216125704105833.Spec : Prop :=
  ∀ n, P14261216125704105833.a n = A051162 n

theorem P14261216125704105833.correct : P14261216125704105833.Spec := by
  intro n
  simp only [A051162]

end A051162

/-! ## A051162.P14074522039513145401

`2*A002260(n+1)+A004736(n+1)-3`
-/

namespace A051162.P14074522039513145401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002260 (n + 1) + A004736 (n + 1) - 3

end

end A051162.P14074522039513145401

namespace A051162

/-- `2*A002260(n+1)+A004736(n+1)-3` -/
def P14074522039513145401.Spec : Prop :=
  ∀ n, P14074522039513145401.a n = A051162 n

end A051162

/-! ## A051162.P18129095173940345510

`n-C(∑[char[∑[n+1]]], 2)`
-/

namespace A051162.P18129095173940345510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A051162.P18129095173940345510

namespace A051162

/-- `n-C(∑[char[∑[n+1]]], 2)` -/
def P18129095173940345510.Spec : Prop :=
  ∀ n, P18129095173940345510.a n = A051162 n

end A051162

/-! ## A051162.P12404230680118252925

`2*n-eq[0, floor(2*sqrt(n))%2]`
-/

namespace A051162.P12404230680118252925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A051162.P12404230680118252925

namespace A051162

/-- `2*n-eq[0, floor(2*sqrt(n))%2]` -/
def P12404230680118252925.Spec : Prop :=
  ∀ n, P12404230680118252925.a n = A051162 n

end A051162

/-! ## A051162.P2385259364932326905

`log2(A368043(n))`
-/

namespace A051162.P2385259364932326905
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368043 n : ℝ)

end

end A051162.P2385259364932326905

namespace A051162

/-- `log2(A368043(n))` -/
def P2385259364932326905.Spec : Prop :=
  ∀ n, P2385259364932326905.a n = (A051162 n : ℝ)

end A051162

/-! ## A051162.P3378393801050783116

`floor(log2(A130324(n)))`
-/

namespace A051162.P3378393801050783116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130324 n).toNat

end

end A051162.P3378393801050783116

namespace A051162

/-- `floor(log2(A130324(n)))` -/
def P3378393801050783116.Spec : Prop :=
  ∀ n, (P3378393801050783116.a n : ℤ) = A051162 n

end A051162

/-! ## A051162.P9233286865520864372

`A094727(n+1)-1`
-/

namespace A051162.P9233286865520864372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) - 1

end

end A051162.P9233286865520864372

namespace A051162

/-- `A094727(n+1)-1` -/
def P9233286865520864372.Spec : Prop :=
  ∀ n, P9233286865520864372.a n = A051162 n

theorem P9233286865520864372.correct : P9233286865520864372.Spec := by
  intro n
  simp only [A051162, Nat.add_sub_cancel, A051162.P9233286865520864372.a, A051162.P14261216125704105833.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A094727, A094727.P1759177724676722475.a, A002260, A002260.P769748059679640451.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051162

/-! ## A051162.P14509365836229790944

`A108872(n+1)-2`
-/

namespace A051162.P14509365836229790944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - 2

end

end A051162.P14509365836229790944

namespace A051162

/-- `A108872(n+1)-2` -/
def P14509365836229790944.Spec : Prop :=
  ∀ n, P14509365836229790944.a n = A051162 n

end A051162

/-! ## A051162.P15813259498092452723

`(A131432(n)-1)/3`
-/

namespace A051162.P15813259498092452723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131432 n - 1 : ℚ) / 3

end

end A051162.P15813259498092452723

namespace A051162

/-- `(A131432(n)-1)/3` -/
def P15813259498092452723.Spec : Prop :=
  ∀ n, P15813259498092452723.a n = (A051162 n : ℚ)

theorem P15813259498092452723.correct : P15813259498092452723.Spec := by
  intro n
  simp only [A051162, Nat.add_sub_cancel, A051162.P15813259498092452723.a, A051162.P14261216125704105833.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A131432, A131432.P12122103890772475519.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051162

/-! ## A051162.P1257276847117768026

`2*n-A063656(n)`
-/

namespace A051162.P1257276847117768026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A063656 n

end

end A051162.P1257276847117768026

namespace A051162

/-- `2*n-A063656(n)` -/
def P1257276847117768026.Spec : Prop :=
  ∀ n, P1257276847117768026.a n = A051162 n

theorem P1257276847117768026.correct : P1257276847117768026.Spec := by
  intro n
  simp only [A051162, Nat.add_sub_cancel, A051162.P1257276847117768026.a, A051162.P14261216125704105833.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A063656, A063656.P315319401503843104.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051162

/-! ## A051162.P10067631614257868812

`A134478(n)%(n+1)`
-/

namespace A051162.P10067631614257868812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134478 n) (n + 1 : ℤ)

end

end A051162.P10067631614257868812

namespace A051162

/-- `A134478(n)%(n+1)` -/
def P10067631614257868812.Spec : Prop :=
  ∀ n, P10067631614257868812.a n = A051162 n

end A051162

/-! ## A051162.P11603988460104233519

`floor(log2(A233757(n+1)))`
-/

namespace A051162.P11603988460104233519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A233757 (n + 1)).toNat

end

end A051162.P11603988460104233519

namespace A051162

/-- `floor(log2(A233757(n+1)))` -/
def P11603988460104233519.Spec : Prop :=
  ∀ n, (P11603988460104233519.a n : ℤ) = A051162 n

end A051162

/-! ## A051162.P4785097608804459019

`(A131421(n+1)-1)/2`
-/

namespace A051162.P4785097608804459019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131421 (n + 1) - 1 : ℚ) / 2

end

end A051162.P4785097608804459019

namespace A051162

/-- `(A131421(n+1)-1)/2` -/
def P4785097608804459019.Spec : Prop :=
  ∀ n, P4785097608804459019.a n = (A051162 n : ℚ)

theorem P4785097608804459019.correct : P4785097608804459019.Spec := by
  intro n
  simp only [A051162, Nat.add_sub_cancel, A051162.P4785097608804459019.a, A051162.P14261216125704105833.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A131421, A131421.P18127152066384474577.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051162

/-! ## A051162.P2170193722984865313

`floor(sqrt(A214604(n+1)))-1`
-/

namespace A051162.P2170193722984865313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A214604 (n + 1)) - 1

end

end A051162.P2170193722984865313

namespace A051162

/-- `floor(sqrt(A214604(n+1)))-1` -/
def P2170193722984865313.Spec : Prop :=
  ∀ n, P2170193722984865313.a n = A051162 n

end A051162

/-! ## A051162.P10213830423494024683

`ceil(sqrt(A214661(n+1)))-1`
-/

namespace A051162.P10213830423494024683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A214661 (n + 1) : ℝ)⌉ - 1

end

end A051162.P10213830423494024683

namespace A051162

/-- `ceil(sqrt(A214661(n+1)))-1` -/
def P10213830423494024683.Spec : Prop :=
  ∀ n, P10213830423494024683.a n = A051162 n

end A051162

/-! ## A051162.P3757844072632546198

`2*n-comp[A063657(n+1)]`
-/

namespace A051162.P3757844072632546198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A051162.P3757844072632546198

namespace A051162

/-- `2*n-comp[A063657(n+1)]` -/
def P3757844072632546198.Spec : Prop :=
  ∀ n, P3757844072632546198.a n = A051162 n

end A051162

/-! ## A051162.P12181598758592949108

`abs(C(A002024(n+1)-1, 2)-n)`
-/

namespace A051162.P12181598758592949108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A002024 (n + 1) - 1).toNat 2 : ℤ) - (n : ℤ)|

end

end A051162.P12181598758592949108

namespace A051162

/-- `abs(C(A002024(n+1)-1, 2)-n)` -/
def P12181598758592949108.Spec : Prop :=
  ∀ n, P12181598758592949108.a n = A051162 n

end A051162

/-! ## A051162.P18253806184310548983

`2*∑[char[∑[n+1]]]-A025581(n)`
-/

namespace A051162.P18253806184310548983
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A025581 n

end

end A051162.P18253806184310548983

namespace A051162

/-- `2*∑[char[∑[n+1]]]-A025581(n)` -/
def P18253806184310548983.Spec : Prop :=
  ∀ n, P18253806184310548983.a n = A051162 n

end A051162

/-! ## A051162.P8085082494561938975

`A002264(A131432(n))`
-/

namespace A051162.P8085082494561938975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A131432 n).toNat

end

end A051162.P8085082494561938975

namespace A051162

/-- `A002264(A131432(n))` -/
def P8085082494561938975.Spec : Prop :=
  ∀ n, P8085082494561938975.a n = A051162 n

end A051162

/-! ## A051162.P15675836677597199605

`A294317(A061579(n))`
-/

namespace A051162.P15675836677597199605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A061579 n).toNat

end

end A051162.P15675836677597199605

namespace A051162

/-- `A294317(A061579(n))` -/
def P15675836677597199605.Spec : Prop :=
  ∀ n, P15675836677597199605.a n = A051162 n

end A051162

/-!
# A051163: Sequence is defined by property that (a0,a1,a2,a3,...) = binomial transform of (a0,a0,a1,a1,a2,a2,a3,a3,...).

The programs for A051163, there is no canonical definition to state claims against.
-/

/-! ## A051163.P10033312505600663330

`A226896(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A051163.P10033312505600663330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A226896 (a (n - 1)).toNat + a (n - 1)

end

end A051163.P10033312505600663330

/-! ## A051163.P12821899689908534303

`A002266(13*a(n-1)-A002266(a(n-1)))` with `a(0)=1`
-/

namespace A051163.P12821899689908534303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002266 (13 * a (n - 1) - A002266 (a (n - 1)).toNat).toNat

end

end A051163.P12821899689908534303

/-! ## A051163.P13380728809696493850

`A230595(A038561(n))+A108360(n)`
-/

namespace A051163.P13380728809696493850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (A038561 n).toNat + A108360 n

end

end A051163.P13380728809696493850

/-! ## A051163.P6958289948252355062

`A108360(n)+A100910(A279565(n))`
-/

namespace A051163.P6958289948252355062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108360 n + A100910 (A279565 n).toNat

end

end A051163.P6958289948252355062

/-!
# A051164: Sequence is defined by property that (a0,a1,a2,a3,...) = binomial transform of (a0,a0,a0,a1,a1,a1,a2,a2,a2,a3,a3,a3,...).

The programs for A051164, there is no canonical definition to state claims against.
-/

/-! ## A051164.P12428811092375836261

`A137256(n)+(n+1)%gcd(9, A141840(n+1))²`
-/

namespace A051164.P12428811092375836261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + (((n + 1) % Int.gcd 9 (A141840 (n + 1)) ^ 2 : ℕ) : ℤ)

end

end A051164.P12428811092375836261

/-! ## A051164.P18034654698740283290

`char[9]+Δ[A140472(A140498(n))]`
-/

namespace A051164.P18034654698740283290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A140498 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A051164.P18034654698740283290

/-! ## A051164.P9044810098363569343

`A137256(n)+A006925(A006926(n))`
-/

namespace A051164.P9044810098363569343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n + A006925 (A006926 n).toNat

end

end A051164.P9044810098363569343

/-! ## A051164.P14104007374983180842

`A185284(A000045(n))+A137256(n)`
-/

namespace A051164.P14104007374983180842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000045 n).toNat + A137256 n

end

end A051164.P14104007374983180842

/-! ## A051164.P17506659285462083872

`A137256(n)-A178798(A000032(n))`
-/

namespace A051164.P17506659285462083872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A178798 (A000032 n).toNat

end

end A051164.P17506659285462083872

/-!
# A051168: Triangular array T(h,k) for 0 <= k <= h read by rows: T(h,k) = number of binary Lyndon words with k ones and h-k zeros.

The programs for A051168, there is no canonical definition to state claims against.
-/

/-! ## A051168.P1260744110676330803

`A050186(n)/A318274(n)`
-/

namespace A051168.P1260744110676330803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (A318274 n : ℚ)

end

end A051168.P1260744110676330803

/-! ## A051168.P17188150775073812926

`ceil(A050186(n)/A003056(n+1))`
-/

namespace A051168.P17188150775073812926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050186 n : ℚ) / (A003056 (n + 1) : ℚ)⌉

end

end A051168.P17188150775073812926

/-! ## A051168.P2359666766898712879

`A050186(n)/A028310(A003056(n))`
-/

namespace A051168.P2359666766898712879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (A028310 (A003056 n).toNat : ℚ)

end

end A051168.P2359666766898712879

/-! ## A051168.P17997089033492936142

`A050186(n)/A003056(A098180(n))`
-/

namespace A051168.P17997089033492936142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (A003056 (A098180 n).toNat : ℚ)

end

end A051168.P17997089033492936142

/-! ## A051168.P18421408861609246939

`A050186(n)/A134478(A057944(n))`
-/

namespace A051168.P18421408861609246939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (A134478 (A057944 n).toNat : ℚ)

end

end A051168.P18421408861609246939

/-! ## A051168.P16658569048296257673

`A050186(n)/A003056(A014684(n+1))`
-/

namespace A051168.P16658569048296257673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (A003056 (A014684 (n + 1)).toNat : ℚ)

end

end A051168.P16658569048296257673

/-! ## A051168.P13991244522479204308

`A050186(n)/A050186(A057944(n)+1)`
-/

namespace A051168.P13991244522479204308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (A050186 (A057944 n + 1).toNat : ℚ)

end

end A051168.P13991244522479204308

/-! ## A051168.P10063237307361896975

`A050186(n)/Δ[A126890(n)]`
-/

namespace A051168.P10063237307361896975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A051168.P10063237307361896975

/-! ## A051168.P12632975139741689451

`A050186(n)/Δ[A176798(n)]`
-/

namespace A051168.P12632975139741689451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050186 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A051168.P12632975139741689451

/-! ## A051168.P11378397029088464461

`A185158(A122797(n+1)+Δ[A134478(n)])`
-/

namespace A051168.P11378397029088464461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (A122797 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A051168.P11378397029088464461

/-!
# A051169: Smallest number m such that 2*m - p is composite for the first n primes p.

The programs for A051169, there is no canonical definition to state claims against.
-/

/-! ## A051169.P892936067992372925

`A152522(n+1)/A000005(A152471(n+1))`
-/

namespace A051169.P892936067992372925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152522 (n + 1) : ℚ) / (A000005 (A152471 (n + 1)).toNat : ℚ)

end

end A051169.P892936067992372925

/-! ## A051169.P2551539872884125502

`A152522(n+1)/A000079(n+1)*A000079(n)`
-/

namespace A051169.P2551539872884125502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152522 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ) * (A000079 n : ℚ)

end

end A051169.P2551539872884125502

/-! ## A051169.P9003777608286169910

`A152522(A051597(∑[n]))/2`
-/

namespace A051169.P9003777608286169910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152522 (A051597 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / 2

end

end A051169.P9003777608286169910

/-! ## A051169.P14144262975770706060

`2^A008683(A002148(n))*A152522(n+1)`
-/

namespace A051169.P14144262975770706060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) * (A152522 (n + 1) : ℚ)

end

end A051169.P14144262975770706060

/-! ## A051169.P16562823842877150504

`A014682(A152522(n+1))`
-/

namespace A051169.P16562823842877150504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152522 (n + 1)).toNat

end

end A051169.P16562823842877150504

/-! ## A051169.P5163733797850539168

`A273943(lcm(2, A152522(n+1)))`
-/

namespace A051169.P5163733797850539168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A152522 (n + 1)))

end

end A051169.P5163733797850539168

/-! ## A051169.P3011594193484680608

`A332893(A152522(n+1)+2)-1`
-/

namespace A051169.P3011594193484680608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A152522 (n + 1) + 2).toNat - 1

end

end A051169.P3011594193484680608

/-! ## A051169.P15196516576163741148

`A332893(A152522(n+1)-A000007(n))`
-/

namespace A051169.P15196516576163741148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A152522 (n + 1) - A000007 n).toNat

end

end A051169.P15196516576163741148

/-! ## A051169.P5375191499332220452

`A332893(A152522(n+1)+n*A000007(n))`
-/

namespace A051169.P5375191499332220452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A152522 (n + 1) + (n : ℤ) * A000007 n).toNat

end

end A051169.P5375191499332220452

/-! ## A051169.P1068062739845094456

`A332893(A152522(n+1))+A000007(A332893(n+1))`
-/

namespace A051169.P1068062739845094456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A152522 (n + 1)).toNat + A000007 (A332893 (n + 1)).toNat

end

end A051169.P1068062739845094456

/-!
# A051170: a(n) = T(n,5), array T as in A051168; a count of Lyndon words; aperiodic necklaces with 5 black beads and n-5 white beads.

The programs for A051170, the canonical program `A051170.P13221309642025240002` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051170 has offset 5).

The definition of A051170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051170.P13221309642025240002

`floor(C(n+5, 5)/(n+5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051170

/-- `floor(C(n+5, 5)/(n+5))` -/
def P13221309642025240002.Spec : Prop :=
  ∀ n, P13221309642025240002.a n = A051170 (n + 5)

theorem P13221309642025240002.correct : P13221309642025240002.Spec := by
  intro n
  simp only [A051170, Nat.add_sub_cancel]

end A051170

/-! ## A051170.P9488446019859830265

`round(C(n+4, 4)/5)`
-/

namespace A051170.P9488446019859830265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 4) 4 : ℚ) / 5)

end

end A051170.P9488446019859830265

namespace A051170

/-- `round(C(n+4, 4)/5)` -/
def P9488446019859830265.Spec : Prop :=
  ∀ n, P9488446019859830265.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P8378476686972219795

`floor(∑[∑[∑[n+1]]/5])`
-/

namespace A051170.P8378476686972219795
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A051170.P8378476686972219795

namespace A051170

/-- `floor(∑[∑[∑[n+1]]/5])` -/
def P8378476686972219795.Spec : Prop :=
  ∀ n, P8378476686972219795.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P11610661950632405309

`A008646(n)-char[5*n]`
-/

namespace A051170.P11610661950632405309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A051170.P11610661950632405309

namespace A051170

/-- `A008646(n)-char[5*n]` -/
def P11610661950632405309.Spec : Prop :=
  ∀ n, P11610661950632405309.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P16403208478150876758

`∑[∑[ceil(A000096(n)/5)]]`
-/

namespace A051170.P16403208478150876758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000096 n : ℚ) / 5⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051170.P16403208478150876758

namespace A051170

/-- `∑[∑[ceil(A000096(n)/5)]]` -/
def P16403208478150876758.Spec : Prop :=
  ∀ n, P16403208478150876758.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P16990522834205880990

`A050190(n+5)/(n+5)`
-/

namespace A051170.P16990522834205880990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050190 (n + 5) : ℚ) / (n + 5 : ℚ)

end

end A051170.P16990522834205880990

namespace A051170

/-- `A050190(n+5)/(n+5)` -/
def P16990522834205880990.Spec : Prop :=
  ∀ n, P16990522834205880990.a n = (A051170 (n + 5) : ℚ)

end A051170

/-! ## A051170.P11371043596849003718

`∑[∑[ceil((A000217(n)+n)/5)]]`
-/

namespace A051170.P11371043596849003718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 n + (n : ℤ) : ℚ) / 5⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051170.P11371043596849003718

namespace A051170

/-- `∑[∑[ceil((A000217(n)+n)/5)]]` -/
def P11371043596849003718.Spec : Prop :=
  ∀ n, P11371043596849003718.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P10992312715486024396

`∑[∑[A249020(n)]-A249020(n)]`
-/

namespace A051170.P10992312715486024396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A249020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051170.P10992312715486024396

namespace A051170

/-- `∑[∑[A249020(n)]-A249020(n)]` -/
def P10992312715486024396.Spec : Prop :=
  ∀ n, P10992312715486024396.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P14724777093464933396

`A011795(n+4)`
-/

namespace A051170.P14724777093464933396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (n + 4)

end

end A051170.P14724777093464933396

namespace A051170

/-- `A011795(n+4)` -/
def P14724777093464933396.Spec : Prop :=
  ∀ n, P14724777093464933396.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P122274369363477857

`∑[A029007(2*n)]-A029007(2*n)`
-/

namespace A051170.P122274369363477857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029007 (2 * n)

end

end A051170.P122274369363477857

namespace A051170

/-- `∑[A029007(2*n)]-A029007(2*n)` -/
def P122274369363477857.Spec : Prop :=
  ∀ n, P122274369363477857.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P114988071279154140

`∑[∑[A025772(2*n)]-A025772(2*n)]`
-/

namespace A051170.P114988071279154140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025772 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A025772 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051170.P114988071279154140

namespace A051170

/-- `∑[∑[A025772(2*n)]-A025772(2*n)]` -/
def P114988071279154140.Spec : Prop :=
  ∀ n, P114988071279154140.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P10721735902779752533

`∑[∑[A008720(2*n)]-A000115(2*n+1)]`
-/

namespace A051170.P10721735902779752533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000115 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051170.P10721735902779752533

namespace A051170

/-- `∑[∑[A008720(2*n)]-A000115(2*n+1)]` -/
def P10721735902779752533.Spec : Prop :=
  ∀ n, P10721735902779752533.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P11648193682805645693

`record[A011795(A028242(n))]`
-/

namespace A051170.P11648193682805645693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051170.P11648193682805645693

namespace A051170

/-- `record[A011795(A028242(n))]` -/
def P11648193682805645693.Spec : Prop :=
  ∀ n, P11648193682805645693.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P15102281714627905186

`record[A011795(A057979(n))]`
-/

namespace A051170.P15102281714627905186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051170.P15102281714627905186

namespace A051170

/-- `record[A011795(A057979(n))]` -/
def P15102281714627905186.Spec : Prop :=
  ∀ n, P15102281714627905186.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P1336414260458053522

`record[A011795(A142150(n))]`
-/

namespace A051170.P1336414260458053522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051170.P1336414260458053522

namespace A051170

/-- `record[A011795(A142150(n))]` -/
def P1336414260458053522.Spec : Prop :=
  ∀ n, P1336414260458053522.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P3602819747413301724

`∑[A029173(2*n+2*n+1)]`
-/

namespace A051170.P3602819747413301724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051170.P3602819747413301724

namespace A051170

/-- `∑[A029173(2*n+2*n+1)]` -/
def P3602819747413301724.Spec : Prop :=
  ∀ n, P3602819747413301724.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P10580871541193828572

`∑[A029221((12*n+6)/2)]`
-/

namespace A051170.P10580871541193828572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (SequenceMachineLib.roundAway ((12 * n + 6 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051170.P10580871541193828572

namespace A051170

/-- `∑[A029221((12*n+6)/2)]` -/
def P10580871541193828572.Spec : Prop :=
  ∀ n, P10580871541193828572.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P1206257113293999113

`A011883(C(n+3, 2))`
-/

namespace A051170.P1206257113293999113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (Nat.choose (n + 3) 2)

end

end A051170.P1206257113293999113

namespace A051170

/-- `A011883(C(n+3, 2))` -/
def P1206257113293999113.Spec : Prop :=
  ∀ n, P1206257113293999113.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P10126040711598224489

`A011883(∑[n+2]+1)`
-/

namespace A051170.P10126040711598224489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051170.P10126040711598224489

namespace A051170

/-- `A011883(∑[n+2]+1)` -/
def P10126040711598224489.Spec : Prop :=
  ∀ n, P10126040711598224489.a n = A051170 (n + 5)

end A051170

/-! ## A051170.P2726120739064901245

`A211524(∑[n+2]+4)`
-/

namespace A051170.P2726120739064901245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A051170.P2726120739064901245

namespace A051170

/-- `A211524(∑[n+2]+4)` -/
def P2726120739064901245.Spec : Prop :=
  ∀ n, P2726120739064901245.a n = A051170 (n + 5)

end A051170

/-!
# A051171: A variation on A056223.

The programs for A051171, there is no canonical definition to state claims against.
-/

/-! ## A051171.P10780388889057759570

`A174784(A307464(n+1))`
-/

namespace A051171.P10780388889057759570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174784 (A307464 (n + 1)).toNat

end

end A051171.P10780388889057759570

/-! ## A051171.P13495788008108775937

`A008683(A324058(floor((n+4)*2^(n-2))))`
-/

namespace A051171.P13495788008108775937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A324058 ⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat).toNat

end

end A051171.P13495788008108775937

/-! ## A051171.P3162996585918488865

`A353557(n+1)-Δ[A353557(7*2^n-3)]`
-/

namespace A051171.P3162996585918488865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (7 * 2 ^ n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (n + 1) - (f1 (n + 1) - f1 n)

end

end A051171.P3162996585918488865

/-! ## A051171.P2491177942414334303

`A008683(A085395(n+1)+floor(n/(xor(n, n+1)+1)))`
-/

namespace A051171.P2491177942414334303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A085395 (n + 1) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A051171.P2491177942414334303

/-! ## A051171.P16297673279581372496

`A029883(A241731(n)-A001971(n))`
-/

namespace A051171.P16297673279581372496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A241731 n - A001971 n).toNat

end

end A051171.P16297673279581372496

/-!
# A051172: T(n,7), array T as in A051168; a count of Lyndon words; aperiodic necklaces with 7 black beads and n-7 white beads.

The programs for A051172, the canonical program `A051172.P14175985054132711757` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051172 has offset 7).

The definition of A051172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051172.P14175985054132711757

`floor(C(n+6, 6)/7)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051172

/-- `floor(C(n+6, 6)/7)` -/
def P14175985054132711757.Spec : Prop :=
  ∀ n, P14175985054132711757.a n = A051172 (n + 7)

theorem P14175985054132711757.correct : P14175985054132711757.Spec := by
  intro n
  simp only [A051172, Nat.add_sub_cancel]

end A051172

/-! ## A051172.P2581959049817189553

`round(C(n+6, 6)/7)`
-/

namespace A051172.P2581959049817189553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 6) 6 : ℚ) / 7)

end

end A051172.P2581959049817189553

namespace A051172

/-- `round(C(n+6, 6)/7)` -/
def P2581959049817189553.Spec : Prop :=
  ∀ n, P2581959049817189553.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P4767520055775376897

`ceil((C(n+6, 6)-1)/7)`
-/

namespace A051172.P4767520055775376897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (n + 6) 6 : ℤ) - 1 : ℚ) / 7⌉

end

end A051172.P4767520055775376897

namespace A051172

/-- `ceil((C(n+6, 6)-1)/7)` -/
def P4767520055775376897.Spec : Prop :=
  ∀ n, P4767520055775376897.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P2472234709125505562

`floor(∑[∑[∑[∑[∑[(n+1)/7]]]]])`
-/

namespace A051172.P2472234709125505562
noncomputable section

def f5 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 7

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A051172.P2472234709125505562

namespace A051172

/-- `floor(∑[∑[∑[∑[∑[(n+1)/7]]]]])` -/
def P2472234709125505562.Spec : Prop :=
  ∀ n, P2472234709125505562.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P18320426899864834334

`ceil(A124089(n+6)/7)`
-/

namespace A051172.P18320426899864834334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124089 (n + 6) : ℚ) / 7⌉

end

end A051172.P18320426899864834334

namespace A051172

/-- `ceil(A124089(n+6)/7)` -/
def P18320426899864834334.Spec : Prop :=
  ∀ n, P18320426899864834334.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P17043530490439935424

`A032192(n+7)-A082784(n)`
-/

namespace A051172.P17043530490439935424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032192 (n + 7) - A082784 n

end

end A051172.P17043530490439935424

namespace A051172

/-- `A032192(n+7)-A082784(n)` -/
def P17043530490439935424.Spec : Prop :=
  ∀ n, P17043530490439935424.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P12513667502532098807

`A051192(n+7)/A020719(n)`
-/

namespace A051172.P12513667502532098807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051192 (n + 7) : ℚ) / (A020719 n : ℚ)

end

end A051172.P12513667502532098807

namespace A051172

/-- `A051192(n+7)/A020719(n)` -/
def P12513667502532098807.Spec : Prop :=
  ∀ n, P12513667502532098807.a n = (A051172 (n + 7) : ℚ)

end A051172

/-! ## A051172.P7487026599293818874

`A011797(n+6)`
-/

namespace A051172.P7487026599293818874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011797 (n + 6)

end

end A051172.P7487026599293818874

namespace A051172

/-- `A011797(n+6)` -/
def P7487026599293818874.Spec : Prop :=
  ∀ n, P7487026599293818874.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P17987260913313470218

`round(A000579(n+6)/7)`
-/

namespace A051172.P17987260913313470218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000579 (n + 6) : ℚ) / 7)

end

end A051172.P17987260913313470218

namespace A051172

/-- `round(A000579(n+6)/7)` -/
def P17987260913313470218.Spec : Prop :=
  ∀ n, P17987260913313470218.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P6108446645473764424

`round(A299338(2*n)/7)`
-/

namespace A051172.P6108446645473764424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A299338 (2 * n) : ℚ) / 7)

end

end A051172.P6108446645473764424

namespace A051172

/-- `round(A299338(2*n)/7)` -/
def P6108446645473764424.Spec : Prop :=
  ∀ n, P6108446645473764424.a n = A051172 (n + 7)

end A051172

/-! ## A051172.P17476016423810867390

`record[round(A007318(∑[n]+6)/7)]`
-/

namespace A051172.P17476016423810867390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 6) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051172.P17476016423810867390

namespace A051172

/-- `record[round(A007318(∑[n]+6)/7)]` -/
def P17476016423810867390.Spec : Prop :=
  ∀ n, P17476016423810867390.a n = A051172 (n + 7)

end A051172

/-!
# A051173: Triangle read by rows: T(n, k) = lcm(n, k).

The programs for A051173, the canonical program `A051173.P15389408228656621901` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051173 has offset 1).

The definition of A051173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051173.P13093039268012228939

`lcm(A002024(n+1), A128227(n))`
-/

namespace A051173.P13093039268012228939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002024 (n + 1)) (A128227 n)

end

end A051173.P13093039268012228939

namespace A051173

/-- `lcm(A002024(n+1), A128227(n))` -/
def P13093039268012228939.Spec : Prop :=
  ∀ n, (P13093039268012228939.a n : ℤ) = A051173 (n + 1)

end A051173

/-! ## A051173.P8682052356698681525

`∑[A010054(n)]*A164306(n+1)`
-/

namespace A051173.P8682052356698681525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A164306 (n + 1)

end

end A051173.P8682052356698681525

namespace A051173

/-- `∑[A010054(n)]*A164306(n+1)` -/
def P8682052356698681525.Spec : Prop :=
  ∀ n, P8682052356698681525.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P15389408228656621901

`lcm(∑[A010054(n)], A002260(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051173

/-- `lcm(∑[A010054(n)], A002260(n+1))` -/
def P15389408228656621901.Spec : Prop :=
  ∀ n, (P15389408228656621901.a n : ℤ) = A051173 (n + 1)

theorem P15389408228656621901.correct : P15389408228656621901.Spec := by
  intro n
  simp only [A051173, Nat.add_sub_cancel]

end A051173

/-! ## A051173.P14741189031512182786

`A002260(n+1)*A054531(n+1)`
-/

namespace A051173.P14741189031512182786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054531 (n + 1)

end

end A051173.P14741189031512182786

namespace A051173

/-- `A002260(n+1)*A054531(n+1)` -/
def P14741189031512182786.Spec : Prop :=
  ∀ n, P14741189031512182786.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P12327616068131166892

`(A002262(n)+1)*A054531(n+1)`
-/

namespace A051173.P12327616068131166892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A054531 (n + 1)

end

end A051173.P12327616068131166892

namespace A051173

/-- `(A002262(n)+1)*A054531(n+1)` -/
def P12327616068131166892.Spec : Prop :=
  ∀ n, P12327616068131166892.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P2602822400292109171

`A050873(n+1)*A051537(n+1)`
-/

namespace A051173.P2602822400292109171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A051537 (n + 1)

end

end A051173.P2602822400292109171

namespace A051173

/-- `A050873(n+1)*A051537(n+1)` -/
def P2602822400292109171.Spec : Prop :=
  ∀ n, P2602822400292109171.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P3916549541373326231

`A002024(n+1)*A164306(n+1)`
-/

namespace A051173.P3916549541373326231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A164306 (n + 1)

end

end A051173.P3916549541373326231

namespace A051173

/-- `A002024(n+1)*A164306(n+1)` -/
def P3916549541373326231.Spec : Prop :=
  ∀ n, P3916549541373326231.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P15942597267234250217

`(A003056(n)+1)*A164306(n+1)`
-/

namespace A051173.P15942597267234250217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A164306 (n + 1)

end

end A051173.P15942597267234250217

namespace A051173

/-- `(A003056(n)+1)*A164306(n+1)` -/
def P15942597267234250217.Spec : Prop :=
  ∀ n, P15942597267234250217.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P4182618484554234751

`A165430(n+1)*A338797(n+1)`
-/

namespace A051173.P4182618484554234751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (n + 1) * A338797 (n + 1)

end

end A051173.P4182618484554234751

namespace A051173

/-- `A165430(n+1)*A338797(n+1)` -/
def P4182618484554234751.Spec : Prop :=
  ∀ n, P4182618484554234751.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P11568747651004430883

`A075362(n+1)/A050873(n+1)`
-/

namespace A051173.P11568747651004430883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A051173.P11568747651004430883

namespace A051173

/-- `A075362(n+1)/A050873(n+1)` -/
def P11568747651004430883.Spec : Prop :=
  ∀ n, P11568747651004430883.a n = (A051173 (n + 1) : ℚ)

end A051173

/-! ## A051173.P1429674365208818482

`lcm(A050873(n+1), A221918(n+1))`
-/

namespace A051173.P1429674365208818482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050873 (n + 1)) (A221918 (n + 1))

end

end A051173.P1429674365208818482

namespace A051173

/-- `lcm(A050873(n+1), A221918(n+1))` -/
def P1429674365208818482.Spec : Prop :=
  ∀ n, (P1429674365208818482.a n : ℤ) = A051173 (n + 1)

end A051173

/-! ## A051173.P16236315929886626524

`lcm(A123275(n+1), A338797(n+1))`
-/

namespace A051173.P16236315929886626524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123275 (n + 1)) (A338797 (n + 1))

end

end A051173.P16236315929886626524

namespace A051173

/-- `lcm(A123275(n+1), A338797(n+1))` -/
def P16236315929886626524.Spec : Prop :=
  ∀ n, (P16236315929886626524.a n : ℤ) = A051173 (n + 1)

end A051173

/-! ## A051173.P8876718901203580293

`∑[A035214(n)-1]*A164306(n+1)`
-/

namespace A051173.P8876718901203580293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A164306 (n + 1)

end

end A051173.P8876718901203580293

namespace A051173

/-- `∑[A035214(n)-1]*A164306(n+1)` -/
def P8876718901203580293.Spec : Prop :=
  ∀ n, P8876718901203580293.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P12875740109878095816

`(A167192(n+1)+A164306(n+1))*A002260(n+1)`
-/

namespace A051173.P12875740109878095816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167192 (n + 1) + A164306 (n + 1)) * A002260 (n + 1)

end

end A051173.P12875740109878095816

namespace A051173

/-- `(A167192(n+1)+A164306(n+1))*A002260(n+1)` -/
def P12875740109878095816.Spec : Prop :=
  ∀ n, P12875740109878095816.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P9939207386826263393

`A050873(n+1)*A054531(n+1)*A164306(n+1)`
-/

namespace A051173.P9939207386826263393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054531 (n + 1) * A164306 (n + 1)

end

end A051173.P9939207386826263393

namespace A051173

/-- `A050873(n+1)*A054531(n+1)*A164306(n+1)` -/
def P9939207386826263393.Spec : Prop :=
  ∀ n, P9939207386826263393.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P9368830256205464567

`A002024(n+1)*A002260(n+1)/A050873(n+1)`
-/

namespace A051173.P9368830256205464567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * A002260 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A051173.P9368830256205464567

namespace A051173

/-- `A002024(n+1)*A002260(n+1)/A050873(n+1)` -/
def P9368830256205464567.Spec : Prop :=
  ∀ n, P9368830256205464567.a n = (A051173 (n + 1) : ℚ)

end A051173

/-! ## A051173.P10881746447658613817

`A002260(n+1)*A277227(n+2)`
-/

namespace A051173.P10881746447658613817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A277227 (n + 2)

end

end A051173.P10881746447658613817

namespace A051173

/-- `A002260(n+1)*A277227(n+2)` -/
def P10881746447658613817.Spec : Prop :=
  ∀ n, P10881746447658613817.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P8707067069137687080

`A050873(n+1)*A164306(n+1)*A277227(n+2)`
-/

namespace A051173.P8707067069137687080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A164306 (n + 1) * A277227 (n + 2)

end

end A051173.P8707067069137687080

namespace A051173

/-- `A050873(n+1)*A164306(n+1)*A277227(n+2)` -/
def P8707067069137687080.Spec : Prop :=
  ∀ n, P8707067069137687080.a n = A051173 (n + 1)

end A051173

/-! ## A051173.P2312133705922360354

`lcm(A131818(n+1), A131818(A193592(n)+n))`
-/

namespace A051173.P2312133705922360354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131818 (n + 1)) (A131818 (A193592 n + (n : ℤ)).toNat)

end

end A051173.P2312133705922360354

namespace A051173

/-- `lcm(A131818(n+1), A131818(A193592(n)+n))` -/
def P2312133705922360354.Spec : Prop :=
  ∀ n, (P2312133705922360354.a n : ℤ) = A051173 (n + 1)

end A051173

/-! ## A051173.P8913052998083508373

`lcm(A338797(n+1)², A245717(n+1))/A338797(n+1)`
-/

namespace A051173.P8913052998083508373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A338797 (n + 1) ^ 2) (A245717 (n + 1)) : ℚ) / (A338797 (n + 1) : ℚ)

end

end A051173.P8913052998083508373

namespace A051173

/-- `lcm(A338797(n+1)², A245717(n+1))/A338797(n+1)` -/
def P8913052998083508373.Spec : Prop :=
  ∀ n, P8913052998083508373.a n = (A051173 (n + 1) : ℚ)

end A051173

/-!
# A051174: H*-palindromic trees with n nodes.

The programs for A051174, there is no canonical definition to state claims against.
-/

/-! ## A051174.P2999489363858452699

`A029395(2*n+1)*A237048(A135363(3*n+5))`
-/

namespace A051174.P2999489363858452699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 (2 * n + 1) * A237048 (A135363 (3 * n + 5)).toNat

end

end A051174.P2999489363858452699

/-! ## A051174.P3417724389935063793

`A017817(A195011(∑[A115384(n)]))`
-/

namespace A051174.P3417724389935063793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (A195011 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A051174.P3417724389935063793

/-! ## A051174.P684731127944363942

`A131256(A131249(n*A001878(n)))`
-/

namespace A051174.P684731127944363942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131256 (A131249 ((n : ℤ) * A001878 n).toNat).toNat

end

end A051174.P684731127944363942

/-! ## A051174.P435236598878070966

`A131256(A131249(n)^A001878(n))`
-/

namespace A051174.P435236598878070966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131256 (SequenceMachineLib.roundAway ((A131249 n : ℚ) ^ (A001878 n : ℤ))).toNat

end

end A051174.P435236598878070966

/-! ## A051174.P238950293237697455

`A269345(A111820(n))%A364082(n+1)`
-/

namespace A051174.P238950293237697455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269345 (A111820 n).toNat) (A364082 (n + 1))

end

end A051174.P238950293237697455

/-!
# A051176: If n mod 3 = 0 then n/3 else n.

The programs for A051176, the canonical program `A051176.P17633431919486338979` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051176 has offset 0).

The definition of A051176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051176.P17633431919486338979

`n/gcd(n, 3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051176

/-- `n/gcd(n, 3)` -/
def P17633431919486338979.Spec : Prop :=
  ∀ n, P17633431919486338979.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P15857745735694588884

`A109044(n)/3`
-/

namespace A051176.P15857745735694588884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109044 n : ℚ) / 3

end

end A051176.P15857745735694588884

namespace A051176

/-- `A109044(n)/3` -/
def P15857745735694588884.Spec : Prop :=
  ∀ n, P15857745735694588884.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P8899708616626271384

`n/3*(1+2*A011655(n))`
-/

namespace A051176.P8899708616626271384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (1 + 2 * A011655 n : ℚ)

end

end A051176.P8899708616626271384

namespace A051176

/-- `n/3*(1+2*A011655(n))` -/
def P8899708616626271384.Spec : Prop :=
  ∀ n, P8899708616626271384.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P2770212967084910704

`lcm(3, n)/3`
-/

namespace A051176.P2770212967084910704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℚ) / 3

end

end A051176.P2770212967084910704

namespace A051176

/-- `lcm(3, n)/3` -/
def P2770212967084910704.Spec : Prop :=
  ∀ n, P2770212967084910704.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P17138450056841196571

`gcd(∑[2*n²], n²)`
-/

namespace A051176.P17138450056841196571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (n ^ 2)

end

end A051176.P17138450056841196571

namespace A051176

/-- `gcd(∑[2*n²], n²)` -/
def P17138450056841196571.Spec : Prop :=
  ∀ n, (P17138450056841196571.a n : ℤ) = A051176 n

end A051176

/-! ## A051176.P12287274037295950282

`n/or(1, (n-1)%3)`
-/

namespace A051176.P12287274037295950282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.lor 1 (Int.tmod ((n : ℤ) - 1) 3) : ℚ)

end

end A051176.P12287274037295950282

namespace A051176

/-- `n/or(1, (n-1)%3)` -/
def P12287274037295950282.Spec : Prop :=
  ∀ n, P12287274037295950282.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P7416359134394024475

`n/7%(4-n%3)`
-/

namespace A051176.P7416359134394024475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.tmod 7 (4 - ((n % 3 : ℕ) : ℤ)) : ℚ)

end

end A051176.P7416359134394024475

namespace A051176

/-- `n/7%(4-n%3)` -/
def P7416359134394024475.Spec : Prop :=
  ∀ n, P7416359134394024475.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P9634423668961439409

`n/sqrt(dr((n+3)^6))`
-/

namespace A051176.P9634423668961439409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sqrt (SequenceMachineLib.digitalRoot ((n + 3) ^ 6 : ℤ) : ℝ)

end

end A051176.P9634423668961439409

namespace A051176

/-- `n/sqrt(dr((n+3)^6))` -/
def P9634423668961439409.Spec : Prop :=
  ∀ n, P9634423668961439409.a n = (A051176 n : ℝ)

end A051176

/-! ## A051176.P12422544591526682232

`n/floor(cosh((n+2)%3))`
-/

namespace A051176.P12422544591526682232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (⌊Real.cosh (((n + 2) % 3 : ℕ) : ℝ)⌋ : ℚ)

end

end A051176.P12422544591526682232

namespace A051176

/-- `n/floor(cosh((n+2)%3))` -/
def P12422544591526682232.Spec : Prop :=
  ∀ n, P12422544591526682232.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P3133746546561469387

`n/((n²+2)%3+1)`
-/

namespace A051176.P3133746546561469387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (((n ^ 2 + 2) % 3 + 1 : ℕ) : ℚ)

end

end A051176.P3133746546561469387

namespace A051176

/-- `n/((n²+2)%3+1)` -/
def P3133746546561469387.Spec : Prop :=
  ∀ n, P3133746546561469387.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P7930296412421110790

`n/3^val(n²+3, 3)`
-/

namespace A051176.P7930296412421110790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 ^ SequenceMachineLib.valuation (n ^ 2 + 3) 3 : ℚ)

end

end A051176.P7930296412421110790

namespace A051176

/-- `n/3^val(n²+3, 3)` -/
def P7930296412421110790.Spec : Prop :=
  ∀ n, P7930296412421110790.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P906199773494346622

`n/3^(∑[n+1]%3)`
-/

namespace A051176.P906199773494346622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ)

end

end A051176.P906199773494346622

namespace A051176

/-- `n/3^(∑[n+1]%3)` -/
def P906199773494346622.Spec : Prop :=
  ∀ n, P906199773494346622.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P5979442057369950152

`n/ceil(3/dr(∑[n+1]))`
-/

namespace A051176.P5979442057369950152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (⌈3 / (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ)⌉ : ℚ)

end

end A051176.P5979442057369950152

namespace A051176

/-- `n/ceil(3/dr(∑[n+1]))` -/
def P5979442057369950152.Spec : Prop :=
  ∀ n, P5979442057369950152.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P2333696082905862925

`n/∑[ogf((3+x+x^2)/(1+x+x^2))]`
-/

namespace A051176.P2333696082905862925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1] [1, 1, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A051176.P2333696082905862925

namespace A051176

/-- `n/∑[ogf((3+x+x^2)/(1+x+x^2))]` -/
def P2333696082905862925.Spec : Prop :=
  ∀ n, P2333696082905862925.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P15744729200783718489

`n*3^((3-∑[n+1])%3)`
-/

namespace A051176.P15744729200783718489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 : ℚ) ^ (Int.tmod (3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 3 : ℤ)

end

end A051176.P15744729200783718489

namespace A051176

/-- `n*3^((3-∑[n+1])%3)` -/
def P15744729200783718489.Spec : Prop :=
  ∀ n, P15744729200783718489.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P13989395731003700521

`2*n/dr(∑[2-n]²+2)`
-/

namespace A051176.P13989395731003700521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2) : ℚ)

end

end A051176.P13989395731003700521

namespace A051176

/-- `2*n/dr(∑[2-n]²+2)` -/
def P13989395731003700521.Spec : Prop :=
  ∀ n, P13989395731003700521.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P5107265279953653263

`1-or(1, Δ[ceil(n/3)²])+n`
-/

namespace A051176.P5107265279953653263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A051176.P5107265279953653263

namespace A051176

/-- `1-or(1, Δ[ceil(n/3)²])+n` -/
def P5107265279953653263.Spec : Prop :=
  ∀ n, P5107265279953653263.a n = A051176 n

end A051176

/-! ## A051176.P6946536023333690842

`1-(or(1, Δ[ceil(n/3)²])-n)`
-/

namespace A051176.P6946536023333690842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.lor 1 (f1 (n + 1) - f1 n) - (n : ℤ))

end

end A051176.P6946536023333690842

namespace A051176

/-- `1-(or(1, Δ[ceil(n/3)²])-n)` -/
def P6946536023333690842.Spec : Prop :=
  ∀ n, P6946536023333690842.a n = A051176 n

end A051176

/-! ## A051176.P13255125504925285794

`n/∑[floor(a(n-3))]` with `a(0)=3, a(1)=-2, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A051176.P13255125504925285794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A051176.P13255125504925285794

namespace A051176

/-- `n/∑[floor(a(n-3))]` -/
def P13255125504925285794.Spec : Prop :=
  ∀ n, P13255125504925285794.a n = (A051176 n : ℚ)

end A051176

/-! ## A051176.P2256452109705491175

`lcm(n+3, 2*n-n)%(n+2)`
-/

namespace A051176.P2256452109705491175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) ((2 * n : ℤ) - (n : ℤ)) % (n + 2)

end

end A051176.P2256452109705491175

namespace A051176

/-- `lcm(n+3, 2*n-n)%(n+2)` -/
def P2256452109705491175.Spec : Prop :=
  ∀ n, (P2256452109705491175.a n : ℤ) = A051176 n

end A051176

/-!
# A051177: Perfectly partitioned numbers: numbers k that divide the number of partitions p(k).

The programs for A051177, there is no canonical definition to state claims against.
-/

/-! ## A051177.P16428968871496699423

`eq[n, gcd(n, A000041(n))]`
-/

namespace A051177.P16428968871496699423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051177.P16428968871496699423

/-! ## A051177.P15891237667409491680

`eq[0, A093952(n+1)]+1`
-/

namespace A051177.P15891237667409491680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051177.P15891237667409491680

/-! ## A051177.P17810093342258590938

`eq[A000007(n), A093952(A028310(n))]`
-/

namespace A051177.P17810093342258590938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093952 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051177.P17810093342258590938

/-! ## A051177.P8454319668303243253

`eq[A000038(n), A093952(A028310(n))]`
-/

namespace A051177.P8454319668303243253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093952 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051177.P8454319668303243253

/-! ## A051177.P12554258219675039303

`eq[lcm(n, A133041(n)), A133041(n)]`
-/

namespace A051177.P12554258219675039303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A133041 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051177.P12554258219675039303

/-!
# A051178: Numbers k such that k divides the number of divisors of k!.

The programs for A051178, the canonical program `A051178.P2441463361311588415` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051178 has offset 1).

The definition of A051178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051178.P2441463361311588415

`eq[0, A027857(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051178

/-- `eq[0, A027857(n+1)]+1` -/
def P2441463361311588415.Spec : Prop :=
  ∀ n, (P2441463361311588415.a n : ℤ) = A051178 (n + 1)

theorem P2441463361311588415.correct : P2441463361311588415.Spec := by
  intro n
  simp only [A051178, Nat.add_sub_cancel]

end A051178

/-! ## A051178.P75981927957188762

`record[gcd(A000027(n+1), A027857(n+1))]`
-/

namespace A051178.P75981927957188762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A027857 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051178.P75981927957188762

namespace A051178

/-- `record[gcd(A000027(n+1), A027857(n+1))]` -/
def P75981927957188762.Spec : Prop :=
  ∀ n, (P75981927957188762.a n : ℤ) = A051178 (n + 1)

end A051178

/-! ## A051178.P461288130816553758

`record[A020725(n+1)-A027849(A027857(n+1))]`
-/

namespace A051178.P461288130816553758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A027849 (A027857 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051178.P461288130816553758

namespace A051178

/-- `record[A020725(n+1)-A027849(A027857(n+1))]` -/
def P461288130816553758.Spec : Prop :=
  ∀ n, P461288130816553758.a n = A051178 (n + 1)

end A051178

/-! ## A051178.P1544850553535322814

`eq[A000007(n), A027857(A028310(n))]`
-/

namespace A051178.P1544850553535322814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027857 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051178.P1544850553535322814

namespace A051178

/-- `eq[A000007(n), A027857(A028310(n))]` -/
def P1544850553535322814.Spec : Prop :=
  ∀ n, (P1544850553535322814.a n : ℤ) = A051178 (n + 1)

end A051178

/-! ## A051178.P1080661788122379381

`record[gcd(n, A027423(n))]`
-/

namespace A051178.P1080661788122379381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A027423 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051178.P1080661788122379381

namespace A051178

/-- `record[gcd(n, A027423(n))]` -/
def P1080661788122379381.Spec : Prop :=
  ∀ n, (P1080661788122379381.a n : ℤ) = A051178 (n + 1)

end A051178

/-! ## A051178.P15996364417055098644

`record[gcd(n+1, ∑[A038024(n+1)])]`
-/

namespace A051178.P15996364417055098644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051178.P15996364417055098644

namespace A051178

/-- `record[gcd(n+1, ∑[A038024(n+1)])]` -/
def P15996364417055098644.Spec : Prop :=
  ∀ n, (P15996364417055098644.a n : ℤ) = A051178 (n + 1)

end A051178

/-! ## A051178.P3987429078974087904

`record[gcd(A153823(n)+1, A028310(n))]`
-/

namespace A051178.P3987429078974087904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153823 n + 1) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051178.P3987429078974087904

namespace A051178

/-- `record[gcd(A153823(n)+1, A028310(n))]` -/
def P3987429078974087904.Spec : Prop :=
  ∀ n, (P3987429078974087904.a n : ℤ) = A051178 (n + 1)

end A051178

/-! ## A051178.P12691671983823162134

`record[gcd(A114338(2*(n+1)), A160356(n+1))]`
-/

namespace A051178.P12691671983823162134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114338 (2 * (n + 1))) (A160356 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051178.P12691671983823162134

namespace A051178

/-- `record[gcd(A114338(2*(n+1)), A160356(n+1))]` -/
def P12691671983823162134.Spec : Prop :=
  ∀ n, (P12691671983823162134.a n : ℤ) = A051178 (n + 1)

end A051178

/-!
# A051179: a(n) = 2^(2^n) - 1.

The programs for A051179, the canonical program `A051179.P1249514681294522537` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051179 has offset 0).

The definition of A051179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n-1` (program `A051179.P1249514681294522537`, by `A051179.P1249514681294522537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051179.P1249514681294522537

`2^2^n-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051179

/-- `2^2^n-1` -/
def P1249514681294522537.Spec : Prop :=
  ∀ n, P1249514681294522537.a n = A051179 n

theorem P1249514681294522537.correct : P1249514681294522537.Spec := by
  intro n
  simp only [A051179]

end A051179

/-! ## A051179.P258310445563989040

`-or(1, -2^2^n)`
-/

namespace A051179.P258310445563989040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 ^ 2 ^ n : ℤ))

end

end A051179.P258310445563989040

namespace A051179

/-- `-or(1, -2^2^n)` -/
def P258310445563989040.Spec : Prop :=
  ∀ n, P258310445563989040.a n = A051179 n

end A051179

/-! ## A051179.P11921751336250215140

`record[Δ[a(n-2)²]]` with `a(0)=1, a(1)=2`
-/

namespace A051179.P11921751336250215140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051179.P11921751336250215140

namespace A051179

/-- `record[Δ[a(n-2)²]]` -/
def P11921751336250215140.Spec : Prop :=
  ∀ n, P11921751336250215140.a n = A051179 n

end A051179

/-! ## A051179.P4649625460151781895

`∑[abs(Δ[a(n-1)²])]` with `a(0)=1, a(1)=2`
-/

namespace A051179.P4649625460151781895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051179.P4649625460151781895

namespace A051179

/-- `∑[abs(Δ[a(n-1)²])]` -/
def P4649625460151781895.Spec : Prop :=
  ∀ n, P4649625460151781895.a n = A051179 n

end A051179

/-! ## A051179.P5955963134254291755

`abs(1-(a(n-1)+1)²)` with `a(0)=1`
-/

namespace A051179.P5955963134254291755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - (a (n - 1) + 1) ^ 2|

end

end A051179.P5955963134254291755

namespace A051179

/-- `abs(1-(a(n-1)+1)²)` -/
def P5955963134254291755.Spec : Prop :=
  ∀ n, P5955963134254291755.a n = A051179 n

end A051179

/-!
# A051180: Number of 3-element intersecting families of an n-element set.

The programs for A051180, there is no canonical definition to state claims against.
-/

/-! ## A051180.P13828297105957776728

`A053155(n)-A005061(n)`
-/

namespace A051180.P13828297105957776728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053155 n - A005061 n

end

end A051180.P13828297105957776728

/-! ## A051180.P10832224185526498342

`2^n+A053155(n)-A083324(n)`
-/

namespace A051180.P10832224185526498342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A053155 n - A083324 n)

end

end A051180.P10832224185526498342

/-! ## A051180.P1417071735709026772

`A053155(n)+A000079(n)-A083324(n)`
-/

namespace A051180.P1417071735709026772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053155 n + (A000079 n - A083324 n)

end

end A051180.P1417071735709026772

/-! ## A051180.P4076740452064888544

`A053155(n)-(A147975(n+1)+A000051(n))`
-/

namespace A051180.P4076740452064888544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053155 n - (A147975 (n + 1) + A000051 n)

end

end A051180.P4076740452064888544

/-! ## A051180.P8198258484019035543

`A053155(n)+A005061(n)*A134824(n+2)`
-/

namespace A051180.P8198258484019035543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053155 n + A005061 n * A134824 (n + 2)

end

end A051180.P8198258484019035543

/-!
# A051181: Number of 4-element intersecting families of an n-element set.

The programs for A051181, there is no canonical definition to state claims against.
-/

/-! ## A051181.P13622647842162804336

`A222488(n!+2)`
-/

namespace A051181.P13622647842162804336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (Nat.factorial n + 2)

end

end A051181.P13622647842162804336

/-!
# A051186: Triangle read by rows: T(n, m) = S1(n, m)*7^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A051186, there is no canonical definition to state claims against.
-/

/-! ## A051186.P8440511361499747627

`A000420(A025581(n))*A008275(n+1)`
-/

namespace A051186.P8440511361499747627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A025581 n).toNat * A008275 (n + 1)

end

end A051186.P8440511361499747627

/-! ## A051186.P15493539049409992246

`A008275(n+1)/A008277(n+1)*A075502(n+1)`
-/

namespace A051186.P15493539049409992246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A075502 (n + 1) : ℚ)

end

end A051186.P15493539049409992246

/-! ## A051186.P16576932758439850479

`A048594(n+1)/A019538(n+1)*A075502(n+1)`
-/

namespace A051186.P16576932758439850479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ) * (A075502 (n + 1) : ℚ)

end

end A051186.P16576932758439850479

/-! ## A051186.P4640700861783951409

`A051151(n+1)/A075501(n+1)*A075502(n+1)`
-/

namespace A051186.P4640700861783951409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051151 (n + 1) : ℚ) / (A075501 (n + 1) : ℚ) * (A075502 (n + 1) : ℚ)

end

end A051186.P4640700861783951409

/-! ## A051186.P18300261244080339865

`A008275(n+1)*A165828(A130321(n))`
-/

namespace A051186.P18300261244080339865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A165828 (A130321 n).toNat

end

end A051186.P18300261244080339865

/-!
# A051187: Triangle read by rows: T(n, m) = S1(n, m)*8^(n-m), where S1 are the signed Stirling numbers of first kind A008275 (n >= 1, 1 <= m <= n).

The programs for A051187, there is no canonical definition to state claims against.
-/

/-! ## A051187.P1293224918918820550

`A051142(n+1)*A130321(n)`
-/

namespace A051187.P1293224918918820550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051142 (n + 1) * A130321 n

end

end A051187.P1293224918918820550

/-! ## A051187.P6486060601268096805

`A039683(n+1)*A262616(n)`
-/

namespace A051187.P6486060601268096805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039683 (n + 1) * A262616 n

end

end A051187.P6486060601268096805

/-! ## A051187.P15006122115297941489

`A130321(n)²*A039683(n+1)`
-/

namespace A051187.P15006122115297941489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A039683 (n + 1)

end

end A051187.P15006122115297941489

/-! ## A051187.P14773593981858542412

`A008275(n+1)*A130321(n)*A130321(n)²`
-/

namespace A051187.P14773593981858542412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (n + 1) * A130321 n * A130321 n ^ 2

end

end A051187.P14773593981858542412

/-! ## A051187.P12280698510892273254

`A008275(n+1)*A262616(n)*sqrt(A262616(n))`
-/

namespace A051187.P12280698510892273254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) * A262616 n : ℝ) * Real.sqrt (A262616 n : ℝ)

end

end A051187.P12280698510892273254

/-! ## A051187.P18186594651126661615

`A039683(n+1)/A008275(n+1)*A051142(n+1)`
-/

namespace A051187.P18186594651126661615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A051142 (n + 1) : ℚ)

end

end A051187.P18186594651126661615

/-! ## A051187.P5862700745305395805

`A051142(n+1)/A051141(n+1)*A051151(n+1)`
-/

namespace A051187.P5862700745305395805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) : ℚ) / (A051141 (n + 1) : ℚ) * (A051151 (n + 1) : ℚ)

end

end A051187.P5862700745305395805

/-! ## A051187.P14449310903476866940

`(A051151(n+1)/A051141(n+1))²*A039683(n+1)`
-/

namespace A051187.P14449310903476866940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051151 (n + 1) : ℚ) / (A051141 (n + 1) : ℚ)) ^ 2 * (A039683 (n + 1) : ℚ)

end

end A051187.P14449310903476866940

/-! ## A051187.P1395428374690804107

`A051142(n+1)²/A039683(n+1)`
-/

namespace A051187.P1395428374690804107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051142 (n + 1) ^ 2 : ℚ) / (A039683 (n + 1) : ℚ)

end

end A051187.P1395428374690804107

/-! ## A051187.P2964594740717809886

`A000578(A130321(n))*A008275(n+1)`
-/

namespace A051187.P2964594740717809886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A130321 n).toNat * A008275 (n + 1)

end

end A051187.P2964594740717809886

/-!
# A051188: Sept-factorial numbers.

The programs for A051188, the canonical program `A051188.P9609325814342919322` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051188 has offset 0).

The definition of A051188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051188.P9609325814342919322

`7^n*n!`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051188

/-- `7^n*n!` -/
def P9609325814342919322.Spec : Prop :=
  ∀ n, (P9609325814342919322.a n : ℤ) = A051188 n

theorem P9609325814342919322.correct : P9609325814342919322.Spec := by
  intro n
  simp only [A051188]

end A051188

/-! ## A051188.P923801494106544814

`n!/7^-n`
-/

namespace A051188.P923801494106544814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (7 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A051188.P923801494106544814

namespace A051188

/-- `n!/7^-n` -/
def P923801494106544814.Spec : Prop :=
  ∀ n, P923801494106544814.a n = (A051188 n : ℚ)

theorem P923801494106544814.correct : P923801494106544814.Spec := by
  intro n
  simp only [A051188, Nat.add_sub_cancel, A051188.P923801494106544814.a, A051188.P9609325814342919322.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A051188

/-! ## A051188.P7265106963694768510

`∏[round(1/acot(7*n))]`
-/

namespace A051188.P7265106963694768510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (7 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051188.P7265106963694768510

namespace A051188

/-- `∏[round(1/acot(7*n))]` -/
def P7265106963694768510.Spec : Prop :=
  ∀ n, P7265106963694768510.a n = A051188 n

end A051188

/-! ## A051188.P17048338143002846193

`∏[floor(acot(n))+7*n]`
-/

namespace A051188.P17048338143002846193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051188.P17048338143002846193

namespace A051188

/-- `∏[floor(acot(n))+7*n]` -/
def P17048338143002846193.Spec : Prop :=
  ∀ n, P17048338143002846193.a n = A051188 n

end A051188

/-! ## A051188.P2577278767387310893

`∏[gcd(7*n, floor(acot(n)))]`
-/

namespace A051188.P2577278767387310893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (7 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051188.P2577278767387310893

namespace A051188

/-- `∏[gcd(7*n, floor(acot(n)))]` -/
def P2577278767387310893.Spec : Prop :=
  ∀ n, (P2577278767387310893.a n : ℤ) = A051188 n

end A051188

/-!
# A051189: Octo-factorial numbers.

The programs for A051189, the canonical program `A051189.P16387431370213277791` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051189 has offset 0).

The definition of A051189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051189.P16387431370213277791

`8^n*n!`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051189

/-- `8^n*n!` -/
def P16387431370213277791.Spec : Prop :=
  ∀ n, (P16387431370213277791.a n : ℤ) = A051189 n

theorem P16387431370213277791.correct : P16387431370213277791.Spec := by
  intro n
  simp only [A051189]

end A051189

/-! ## A051189.P7640891421333298806

`n!/8^-n`
-/

namespace A051189.P7640891421333298806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (8 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A051189.P7640891421333298806

namespace A051189

/-- `n!/8^-n` -/
def P7640891421333298806.Spec : Prop :=
  ∀ n, P7640891421333298806.a n = (A051189 n : ℚ)

theorem P7640891421333298806.correct : P7640891421333298806.Spec := by
  intro n
  simp only [A051189, Nat.add_sub_cancel, A051189.P7640891421333298806.a, A051189.P16387431370213277791.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A051189

/-! ## A051189.P5417131877168292557

`∏[floor(2/acot(4*n))]`
-/

namespace A051189.P5417131877168292557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051189.P5417131877168292557

namespace A051189

/-- `∏[floor(2/acot(4*n))]` -/
def P5417131877168292557.Spec : Prop :=
  ∀ n, P5417131877168292557.a n = A051189 n

end A051189

/-! ## A051189.P13591609009947746558

`∏[floor(acot(n))+8*n]`
-/

namespace A051189.P13591609009947746558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051189.P13591609009947746558

namespace A051189

/-- `∏[floor(acot(n))+8*n]` -/
def P13591609009947746558.Spec : Prop :=
  ∀ n, P13591609009947746558.a n = A051189 n

end A051189

/-! ## A051189.P17888163139543950311

`∏[gcd(8*n, floor(acot(n)))]`
-/

namespace A051189.P17888163139543950311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051189.P17888163139543950311

namespace A051189

/-- `∏[gcd(8*n, floor(acot(n)))]` -/
def P17888163139543950311.Spec : Prop :=
  ∀ n, (P17888163139543950311.a n : ℤ) = A051189 n

end A051189

/-!
# A051190: a(n) = Product_{k=1..n-1} gcd(k,n).

The programs for A051190, the canonical program `A051190.P4423942636353166915` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051190 has offset 1).

The definition of A051190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051190.P4423942636353166915

`A067911(n+1)/(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A051190

/-- `A067911(n+1)/(n+1)` -/
def P4423942636353166915.Spec : Prop :=
  ∀ n, P4423942636353166915.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P12173739395039945723

`∏{d}[n+1, A193679((n+1)/#)]/(n+1)`
-/

namespace A051190.P12173739395039945723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A193679 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A051190.P12173739395039945723

namespace A051190

/-- `∏{d}[n+1, A193679((n+1)/#)]/(n+1)` -/
def P12173739395039945723.Spec : Prop :=
  ∀ n, P12173739395039945723.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P2710004912663499889

`∏{d}[n+1, A014963((n+1)/#)^(#-1)]`
-/

namespace A051190.P2710004912663499889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A051190.P2710004912663499889

namespace A051190

/-- `∏{d}[n+1, A014963((n+1)/#)^(#-1)]` -/
def P2710004912663499889.Spec : Prop :=
  ∀ n, P2710004912663499889.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P226835008294047448

`∏{d}[n+1, ((n+1)/#)^A000010(#)]/(n+1)`
-/

namespace A051190.P226835008294047448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ (A000010 d : ℤ)) / (n + 1 : ℚ)

end

end A051190.P226835008294047448

namespace A051190

/-- `∏{d}[n+1, ((n+1)/#)^A000010(#)]/(n+1)` -/
def P226835008294047448.Spec : Prop :=
  ∀ n, P226835008294047448.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P11721832999076717643

`∏{d}[n+1, A193679(#)/A014963(#)]`
-/

namespace A051190.P11721832999076717643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A193679 d : ℚ) / (A014963 d : ℚ)

end

end A051190.P11721832999076717643

namespace A051190

/-- `∏{d}[n+1, A193679(#)/A014963(#)]` -/
def P11721832999076717643.Spec : Prop :=
  ∀ n, P11721832999076717643.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P15653060051527342099

`A276162(A001844(n))/(n+1)`
-/

namespace A051190.P15653060051527342099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276162 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A051190.P15653060051527342099

namespace A051190

/-- `A276162(A001844(n))/(n+1)` -/
def P15653060051527342099.Spec : Prop :=
  ∀ n, P15653060051527342099.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P13599986269739616321

`n!/∏{d}[n+1, A001783(#)]`
-/

namespace A051190.P13599986269739616321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), A001783 d : ℤ) : ℚ)

end

end A051190.P13599986269739616321

namespace A051190

/-- `n!/∏{d}[n+1, A001783(#)]` -/
def P13599986269739616321.Spec : Prop :=
  ∀ n, P13599986269739616321.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P7160336463760189179

`A000142(n)/A119619(n+1)`
-/

namespace A051190.P7160336463760189179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A119619 (n + 1) : ℚ)

end

end A051190.P7160336463760189179

namespace A051190

/-- `A000142(n)/A119619(n+1)` -/
def P7160336463760189179.Spec : Prop :=
  ∀ n, P7160336463760189179.a n = (A051190 (n + 1) : ℚ)

end A051190

/-! ## A051190.P8204935103056806294

`(n+1)^n/A056916(n+1)`
-/

namespace A051190.P8204935103056806294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) / (A056916 (n + 1) : ℚ)

end

end A051190.P8204935103056806294

namespace A051190

/-- `(n+1)^n/A056916(n+1)` -/
def P8204935103056806294.Spec : Prop :=
  ∀ n, P8204935103056806294.a n = (A051190 (n + 1) : ℚ)

end A051190

/-!
# A051191: a(n) = 2^(2^n-2).

The programs for A051191, the canonical program `A051191.P636706934180351323` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051191 has offset 1).

The definition of A051191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051191.P636706934180351323

`2^(2^(n+1)-2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051191

/-- `2^(2^(n+1)-2)` -/
def P636706934180351323.Spec : Prop :=
  ∀ n, P636706934180351323.a n = (A051191 (n + 1) : ℚ)

end A051191

/-! ## A051191.P17906204446570892300

`(2*a(n-1))²` with `a(0)=1`
-/

namespace A051191.P17906204446570892300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1)) ^ 2

end

end A051191.P17906204446570892300

namespace A051191

/-- `(2*a(n-1))²` -/
def P17906204446570892300.Spec : Prop :=
  ∀ n, (P17906204446570892300.a n : ℤ) = A051191 (n + 1)

end A051191

/-! ## A051191.P17608971715102057403

`4^2^dr(n)/4`
-/

namespace A051191.P17608971715102057403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ 2 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 4

end

end A051191.P17608971715102057403

namespace A051191

/-- `4^2^dr(n)/4` -/
def P17608971715102057403.Spec : Prop :=
  ∀ n, P17608971715102057403.a n = (A051191 (n + 1) : ℚ)

end A051191

/-! ## A051191.P465911101595374017

`∏[a(n-1)²]` with `a(0)=1, a(1)=4`
-/

namespace A051191.P465911101595374017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051191.P465911101595374017

namespace A051191

/-- `∏[a(n-1)²]` -/
def P465911101595374017.Spec : Prop :=
  ∀ n, (P465911101595374017.a n : ℤ) = A051191 (n + 1)

end A051191

/-!
# A051192: T(n,7), array T as in A050186; a count of aperiodic binary words.

The programs for A051192, the canonical program `A051192.P6720372437080206536` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051192 has offset 7).

The definition of A051192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051192.P6720372437080206536

`(n+7)*floor(C(n+6, 6)/7)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051192

/-- `(n+7)*floor(C(n+6, 6)/7)` -/
def P6720372437080206536.Spec : Prop :=
  ∀ n, P6720372437080206536.a n = A051192 (n + 7)

theorem P6720372437080206536.correct : P6720372437080206536.Spec := by
  intro n
  simp only [A051192, Nat.add_sub_cancel]

end A051192

/-! ## A051192.P7411170058121275706

`C(n+7, 7)-C(n+7, 7)%(n+7)`
-/

namespace A051192.P7411170058121275706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - ((Nat.choose (n + 7) 7 % (n + 7) : ℕ) : ℤ)

end

end A051192.P7411170058121275706

namespace A051192

/-- `C(n+7, 7)-C(n+7, 7)%(n+7)` -/
def P7411170058121275706.Spec : Prop :=
  ∀ n, P7411170058121275706.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P13173716031371933038

`(n+7)*A051172(n+7)`
-/

namespace A051192.P13173716031371933038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A051172 (n + 7)

end

end A051192.P13173716031371933038

namespace A051192

/-- `(n+7)*A051172(n+7)` -/
def P13173716031371933038.Spec : Prop :=
  ∀ n, P13173716031371933038.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P3934113065885354704

`A000580(n+7)-A000580(n+7)%(n+7)`
-/

namespace A051192.P3934113065885354704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - Int.tmod (A000580 (n + 7)) (n + 7 : ℤ)

end

end A051192.P3934113065885354704

namespace A051192

/-- `A000580(n+7)-A000580(n+7)%(n+7)` -/
def P3934113065885354704.Spec : Prop :=
  ∀ n, P3934113065885354704.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P7537224938317079401

`A011797(n+6)*(n+7)`
-/

namespace A051192.P7537224938317079401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011797 (n + 6) * (n + 7 : ℤ)

end

end A051192.P7537224938317079401

namespace A051192

/-- `A011797(n+6)*(n+7)` -/
def P7537224938317079401.Spec : Prop :=
  ∀ n, P7537224938317079401.a n = A051192 (n + 7)

theorem P7537224938317079401.correct : P7537224938317079401.Spec := by
  intro n
  simp only [A051192, Nat.add_sub_cancel, A051192.P7537224938317079401.a, A051192.P6720372437080206536.a, A011797, A011797.P13589315093109291147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051192

/-! ## A051192.P6074685387391832044

`A050186(eq[7, A002262(n)])`
-/

namespace A051192.P6074685387391832044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051192.P6074685387391832044

namespace A051192

/-- `A050186(eq[7, A002262(n)])` -/
def P6074685387391832044.Spec : Prop :=
  ∀ n, P6074685387391832044.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P3499527777851206043

`A050186(A167614(n+6)+4)`
-/

namespace A051192.P3499527777851206043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A167614 (n + 6) + 4).toNat

end

end A051192.P3499527777851206043

namespace A051192

/-- `A050186(A167614(n+6)+4)` -/
def P3499527777851206043.Spec : Prop :=
  ∀ n, P3499527777851206043.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P1326423878797161041

`A053727(Δ[A023551(n+2)]-1)`
-/

namespace A051192.P1326423878797161041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (f1 (n + 1) - f1 n - 1).toNat

end

end A051192.P1326423878797161041

namespace A051192

/-- `A053727(Δ[A023551(n+2)]-1)` -/
def P1326423878797161041.Spec : Prop :=
  ∀ n, P1326423878797161041.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P10665052213224477200

`A050186(A161680(n+9)-(n+1))`
-/

namespace A051192.P10665052213224477200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A161680 (n + 9) - (n + 1 : ℤ)).toNat

end

end A051192.P10665052213224477200

namespace A051192

/-- `A050186(A161680(n+9)-(n+1))` -/
def P10665052213224477200.Spec : Prop :=
  ∀ n, P10665052213224477200.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P9233985522288295123

`(n+7)*A051168(A134869(n+7)+6)`
-/

namespace A051192.P9233985522288295123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A051168 (A134869 (n + 7) + 6).toNat

end

end A051192.P9233985522288295123

namespace A051192

/-- `(n+7)*A051168(A134869(n+7)+6)` -/
def P9233985522288295123.Spec : Prop :=
  ∀ n, P9233985522288295123.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P8238601344816513863

`A050186(eq[8, A004736(n+1)])`
-/

namespace A051192.P8238601344816513863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051192.P8238601344816513863

namespace A051192

/-- `A050186(eq[8, A004736(n+1)])` -/
def P8238601344816513863.Spec : Prop :=
  ∀ n, P8238601344816513863.a n = A051192 (n + 7)

end A051192

/-! ## A051192.P16310624769617660174

`(n+7)*A051168(A055999(n+5)-2)`
-/

namespace A051192.P16310624769617660174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A051168 (A055999 (n + 5) - 2).toNat

end

end A051192.P16310624769617660174

namespace A051192

/-- `(n+7)*A051168(A055999(n+5)-2)` -/
def P16310624769617660174.Spec : Prop :=
  ∀ n, P16310624769617660174.a n = A051192 (n + 7)

end A051192

/-!
# A051193: a(n) = Sum_{k=1..n} lcm(n,k).

The programs for A051193, the canonical program `A051193.P1309256294605873635` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051193 has offset 1).

The definition of A051193 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057661, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051193.P1309256294605873635

`(n+1)*A057661(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A051193

/-- `(n+1)*A057661(n+1)` -/
def P1309256294605873635.Spec : Prop :=
  ∀ n, P1309256294605873635.a n = A051193 (n + 1)

theorem P1309256294605873635.correct : P1309256294605873635.Spec := by
  intro n
  simp only [A051193, Nat.add_sub_cancel]

end A051193

/-! ## A051193.P3744033185296568020

`(n+1)*(1+A057660(n+1))/2`
-/

namespace A051193.P3744033185296568020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (1 + A057660 (n + 1)) : ℚ) / 2

end

end A051193.P3744033185296568020

namespace A051193

/-- `(n+1)*(1+A057660(n+1))/2` -/
def P3744033185296568020.Spec : Prop :=
  ∀ n, P3744033185296568020.a n = (A051193 (n + 1) : ℚ)

end A051193

/-! ## A051193.P9079603177316320361

`(n+1)*(A332049(n+1)+1)`
-/

namespace A051193.P9079603177316320361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A332049 (n + 1) + 1)

end

end A051193.P9079603177316320361

namespace A051193

/-- `(n+1)*(A332049(n+1)+1)` -/
def P9079603177316320361.Spec : Prop :=
  ∀ n, P9079603177316320361.a n = A051193 (n + 1)

theorem P9079603177316320361.correct : P9079603177316320361.Spec := by
  intro n
  simp only [A051193, Nat.add_sub_cancel, A051193.P9079603177316320361.a, A051193.P1309256294605873635.a, A057661, A057661.P8562176095648835282.a, A332049, A332049.P9341534089412861099.a, A057660, A057660.P308819105178745283.a, A000290, A000290.P12206242496348924484.a, A001157, A001157.P6892814788348726787.a, A065764, A065764.P4876672908639630041.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051193

/-! ## A051193.P2549548596629828838

`(n+1)/2*A365076(n+1)`
-/

namespace A051193.P2549548596629828838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A365076 (n + 1) : ℚ)

end

end A051193.P2549548596629828838

namespace A051193

/-- `(n+1)/2*A365076(n+1)` -/
def P2549548596629828838.Spec : Prop :=
  ∀ n, P2549548596629828838.a n = (A051193 (n + 1) : ℚ)

end A051193

/-! ## A051193.P607547167069297763

`(n+1)*∑{d}[n+1, A023896(#)]`
-/

namespace A051193.P607547167069297763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A023896 d)

end

end A051193.P607547167069297763

namespace A051193

/-- `(n+1)*∑{d}[n+1, A023896(#)]` -/
def P607547167069297763.Spec : Prop :=
  ∀ n, P607547167069297763.a n = A051193 (n + 1)

end A051193

/-! ## A051193.P14739053408178275641

`(n+1)*round(A057660(n+1)/2)`
-/

namespace A051193.P14739053408178275641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((A057660 (n + 1) : ℚ) / 2)

end

end A051193.P14739053408178275641

namespace A051193

/-- `(n+1)*round(A057660(n+1)/2)` -/
def P14739053408178275641.Spec : Prop :=
  ∀ n, P14739053408178275641.a n = A051193 (n + 1)

end A051193

/-! ## A051193.P12431330872235294528

`∑{d}[n+1, A000010(#)*A056789((n+1)/#)]`
-/

namespace A051193.P12431330872235294528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A056789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051193.P12431330872235294528

namespace A051193

/-- `∑{d}[n+1, A000010(#)*A056789((n+1)/#)]` -/
def P12431330872235294528.Spec : Prop :=
  ∀ n, P12431330872235294528.a n = A051193 (n + 1)

end A051193

/-! ## A051193.P14255974773278560838

`∑{d}[n+1, A000203(#)*A332658((n+1)/#)]`
-/

namespace A051193.P14255974773278560838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A332658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051193.P14255974773278560838

namespace A051193

/-- `∑{d}[n+1, A000203(#)*A332658((n+1)/#)]` -/
def P14255974773278560838.Spec : Prop :=
  ∀ n, P14255974773278560838.a n = A051193 (n + 1)

end A051193

/-! ## A051193.P11835926790411330572

`∑{d}[n+1, A278403(#)*A328502((n+1)/#)]`
-/

namespace A051193.P11835926790411330572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A278403 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A051193.P11835926790411330572

namespace A051193

/-- `∑{d}[n+1, A278403(#)*A328502((n+1)/#)]` -/
def P11835926790411330572.Spec : Prop :=
  ∀ n, P11835926790411330572.a n = A051193 (n + 1)

end A051193

/-! ## A051193.P16725362849012742799

`(n+1)/3*A341316(n+1)`
-/

namespace A051193.P16725362849012742799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A341316 (n + 1) : ℚ)

end

end A051193.P16725362849012742799

namespace A051193

/-- `(n+1)/3*A341316(n+1)` -/
def P16725362849012742799.Spec : Prop :=
  ∀ n, P16725362849012742799.a n = (A051193 (n + 1) : ℚ)

end A051193

/-! ## A051193.P16572693364249947199

`A390808((n+1)²)/(n+1)`
-/

namespace A051193.P16572693364249947199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390808 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A051193.P16572693364249947199

namespace A051193

/-- `A390808((n+1)²)/(n+1)` -/
def P16572693364249947199.Spec : Prop :=
  ∀ n, P16572693364249947199.a n = (A051193 (n + 1) : ℚ)

end A051193

/-! ## A051193.P2948417109954415264

`(n+1)*A000463(A057660(n+1))`
-/

namespace A051193.P2948417109954415264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000463 (A057660 (n + 1)).toNat

end

end A051193.P2948417109954415264

namespace A051193

/-- `(n+1)*A000463(A057660(n+1))` -/
def P2948417109954415264.Spec : Prop :=
  ∀ n, P2948417109954415264.a n = A051193 (n + 1)

end A051193

/-! ## A051193.P9634366532837735315

`(n+1)*A060681(A057660(n+1)+1)`
-/

namespace A051193.P9634366532837735315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060681 (A057660 (n + 1) + 1).toNat

end

end A051193.P9634366532837735315

namespace A051193

/-- `(n+1)*A060681(A057660(n+1)+1)` -/
def P9634366532837735315.Spec : Prop :=
  ∀ n, P9634366532837735315.a n = A051193 (n + 1)

end A051193

/-!
# A051194: Triangular array T read by rows: T(n,k) = number of positive integers that divide both n and k.

The programs for A051194, the canonical program `A051194.P17118644438746036718` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051194 has offset 1).

The definition of A051194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051194.P17118644438746036718

`A000005(A050873(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051194

/-- `A000005(A050873(n+1))` -/
def P17118644438746036718.Spec : Prop :=
  ∀ n, P17118644438746036718.a n = A051194 (n + 1)

theorem P17118644438746036718.correct : P17118644438746036718.Spec := by
  intro n
  simp only [A051194, Nat.add_sub_cancel]

end A051194

/-! ## A051194.P14245440557719189992

`A299480(4*A050873(n+1))`
-/

namespace A051194.P14245440557719189992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (4 * A050873 (n + 1)).toNat

end

end A051194.P14245440557719189992

namespace A051194

/-- `A299480(4*A050873(n+1))` -/
def P14245440557719189992.Spec : Prop :=
  ∀ n, P14245440557719189992.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P7665046522105904456

`A000005(gcd(A002260(n+1), A004247(n)))`
-/

namespace A051194.P7665046522105904456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A002260 (n + 1)) (A004247 n))

end

end A051194.P7665046522105904456

namespace A051194

/-- `A000005(gcd(A002260(n+1), A004247(n)))` -/
def P7665046522105904456.Spec : Prop :=
  ∀ n, P7665046522105904456.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P11790601836702334920

`A000005(gcd(A002024(n+1), A025581(n)))`
-/

namespace A051194.P11790601836702334920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A002024 (n + 1)) (A025581 n))

end

end A051194.P11790601836702334920

namespace A051194

/-- `A000005(gcd(A002024(n+1), A025581(n)))` -/
def P11790601836702334920.Spec : Prop :=
  ∀ n, P11790601836702334920.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P8157126206339648568

`∑{d}[A050873(n+1), A050873(A000124(#))]`
-/

namespace A051194.P8157126206339648568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050873 (A000124 d).toNat

end

end A051194.P8157126206339648568

namespace A051194

/-- `∑{d}[A050873(n+1), A050873(A000124(#))]` -/
def P8157126206339648568.Spec : Prop :=
  ∀ n, P8157126206339648568.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P3758098399583943778

`A000005(A109004(comp[∑[n]]))`
-/

namespace A051194.P3758098399583943778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109004 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A051194.P3758098399583943778

namespace A051194

/-- `A000005(A109004(comp[∑[n]]))` -/
def P3758098399583943778.Spec : Prop :=
  ∀ n, P3758098399583943778.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P14442194856051282308

`A322483(A050873(n+1)²)`
-/

namespace A051194.P14442194856051282308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A050873 (n + 1) ^ 2).toNat

end

end A051194.P14442194856051282308

namespace A051194

/-- `A322483(A050873(n+1)²)` -/
def P14442194856051282308.Spec : Prop :=
  ∀ n, P14442194856051282308.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P8102741573728971660

`A332712(A050873(n+1)²)`
-/

namespace A051194.P8102741573728971660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A050873 (n + 1) ^ 2).toNat

end

end A051194.P8102741573728971660

namespace A051194

/-- `A332712(A050873(n+1)²)` -/
def P8102741573728971660.Spec : Prop :=
  ∀ n, P8102741573728971660.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P7642474254283194007

`A322483(A050873(n+1)*A050873(n+1))`
-/

namespace A051194.P7642474254283194007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A050873 (n + 1) * A050873 (n + 1)).toNat

end

end A051194.P7642474254283194007

namespace A051194

/-- `A322483(A050873(n+1)*A050873(n+1))` -/
def P7642474254283194007.Spec : Prop :=
  ∀ n, P7642474254283194007.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P5318389762908211633

`A154402(A099627(n))`
-/

namespace A051194.P5318389762908211633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A099627 n).toNat

end

end A051194.P5318389762908211633

namespace A051194

/-- `A154402(A099627(n))` -/
def P5318389762908211633.Spec : Prop :=
  ∀ n, P5318389762908211633.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P7065410609820212720

`A154402(A173786(n)-1)`
-/

namespace A051194.P7065410609820212720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A173786 n - 1).toNat

end

end A051194.P7065410609820212720

namespace A051194

/-- `A154402(A173786(n)-1)` -/
def P7065410609820212720.Spec : Prop :=
  ∀ n, P7065410609820212720.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P17174257925521371393

`A154402(A164874(n+1))`
-/

namespace A051194.P17174257925521371393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A164874 (n + 1)).toNat

end

end A051194.P17174257925521371393

namespace A051194

/-- `A154402(A164874(n+1))` -/
def P17174257925521371393.Spec : Prop :=
  ∀ n, P17174257925521371393.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P2253135002121634096

`A154402(A030130(n+2))`
-/

namespace A051194.P2253135002121634096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A030130 (n + 2)).toNat

end

end A051194.P2253135002121634096

namespace A051194

/-- `A154402(A030130(n+2))` -/
def P2253135002121634096.Spec : Prop :=
  ∀ n, P2253135002121634096.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P5301002955130070759

`A010553((A046143(n+1)+1)/2)`
-/

namespace A051194.P5301002955130070759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (SequenceMachineLib.roundAway ((A046143 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A051194.P5301002955130070759

namespace A051194

/-- `A010553((A046143(n+1)+1)/2)` -/
def P5301002955130070759.Spec : Prop :=
  ∀ n, P5301002955130070759.a n = A051194 (n + 1)

end A051194

/-! ## A051194.P362722299365746059

`A000005(A093057(n+1)+1)`
-/

namespace A051194.P362722299365746059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A093057 (n + 1) + 1).toNat

end

end A051194.P362722299365746059

namespace A051194

/-- `A000005(A093057(n+1)+1)` -/
def P362722299365746059.Spec : Prop :=
  ∀ n, P362722299365746059.a n = A051194 (n + 1)

end A051194

/-!
# A051195: T(2n+2,n), array T as in A050186; a count of aperiodic binary words.

The programs for A051195, the canonical program `A051195.P16292542519701830417` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051195 has offset 0).

The definition of A051195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051195.P2683017496220107499

`(n+1)*Δ[A129366(n)]`
-/

namespace A051195.P2683017496220107499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A051195.P2683017496220107499

namespace A051195

/-- `(n+1)*Δ[A129366(n)]` -/
def P2683017496220107499.Spec : Prop :=
  ∀ n, P2683017496220107499.a n = A051195 n

end A051195

/-! ## A051195.P16292542519701830417

`(n+1)*A000912(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051195

/-- `(n+1)*A000912(n+1)` -/
def P16292542519701830417.Spec : Prop :=
  ∀ n, P16292542519701830417.a n = A051195 n

theorem P16292542519701830417.correct : P16292542519701830417.Spec := by
  intro n
  simp only [A051195]

end A051195

/-! ## A051195.P9099017108918663526

`2*(n+1)*A000150(n+1)`
-/

namespace A051195.P9099017108918663526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000150 (n + 1))

end

end A051195.P9099017108918663526

namespace A051195

/-- `2*(n+1)*A000150(n+1)` -/
def P9099017108918663526.Spec : Prop :=
  ∀ n, P9099017108918663526.a n = A051195 n

end A051195

/-! ## A051195.P11305300152274404003

`A000150(n+1)*A103517(n)`
-/

namespace A051195.P11305300152274404003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 (n + 1) * A103517 n

end

end A051195.P11305300152274404003

namespace A051195

/-- `A000150(n+1)*A103517(n)` -/
def P11305300152274404003.Spec : Prop :=
  ∀ n, P11305300152274404003.a n = A051195 n

end A051195

/-! ## A051195.P14856801682287128288

`A001791(n+1)-A138364(n+1)`
-/

namespace A051195.P14856801682287128288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) - A138364 (n + 1)

end

end A051195.P14856801682287128288

namespace A051195

/-- `A001791(n+1)-A138364(n+1)` -/
def P14856801682287128288.Spec : Prop :=
  ∀ n, P14856801682287128288.a n = A051195 n

end A051195

/-! ## A051195.P6885358873554700926

`A000150(n+1)*A004277(n+1)`
-/

namespace A051195.P6885358873554700926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 (n + 1) * A004277 (n + 1)

end

end A051195.P6885358873554700926

namespace A051195

/-- `A000150(n+1)*A004277(n+1)` -/
def P6885358873554700926.Spec : Prop :=
  ∀ n, P6885358873554700926.a n = A051195 n

end A051195

/-! ## A051195.P1131306378427445555

`A000150(n+1)*A005843(n+1)`
-/

namespace A051195.P1131306378427445555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 (n + 1) * A005843 (n + 1)

end

end A051195.P1131306378427445555

namespace A051195

/-- `A000150(n+1)*A005843(n+1)` -/
def P1131306378427445555.Spec : Prop :=
  ∀ n, P1131306378427445555.a n = A051195 n

end A051195

/-! ## A051195.P3081276369044087171

`A000150(n+1)*A004275(n+2)`
-/

namespace A051195.P3081276369044087171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 (n + 1) * A004275 (n + 2)

end

end A051195.P3081276369044087171

namespace A051195

/-- `A000150(n+1)*A004275(n+2)` -/
def P3081276369044087171.Spec : Prop :=
  ∀ n, P3081276369044087171.a n = A051195 n

end A051195

/-! ## A051195.P10421702949563760020

`(n+1)*(A000108(n+1)-A126120(n))`
-/

namespace A051195.P10421702949563760020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 (n + 1) - A126120 n)

end

end A051195.P10421702949563760020

namespace A051195

/-- `(n+1)*(A000108(n+1)-A126120(n))` -/
def P10421702949563760020.Spec : Prop :=
  ∀ n, P10421702949563760020.a n = A051195 n

end A051195

/-! ## A051195.P9216954028680487713

`(A210628(n+1)+A000108(n+1))*A233583(n+2)`
-/

namespace A051195.P9216954028680487713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A210628 (n + 1) + A000108 (n + 1)) * A233583 (n + 2)

end

end A051195.P9216954028680487713

namespace A051195

/-- `(A210628(n+1)+A000108(n+1))*A233583(n+2)` -/
def P9216954028680487713.Spec : Prop :=
  ∀ n, P9216954028680487713.a n = A051195 n

end A051195

/-!
# A051196: T(2n+3,n), array T as in A050186; a count of aperiodic binary words.

The programs for A051196, there is no canonical definition to state claims against.
-/

/-! ## A051196.P4746148257552826237

`(2*n+3)*A050181(n)`
-/

namespace A051196.P4746148257552826237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A050181 n

end

end A051196.P4746148257552826237

/-! ## A051196.P2652803572043776399

`A050181(n)*A062545(n)`
-/

namespace A051196.P2652803572043776399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050181 n * A062545 n

end

end A051196.P2652803572043776399

/-! ## A051196.P6636774704668093325

`A050181(n)*A144396(n+1)`
-/

namespace A051196.P6636774704668093325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050181 n * A144396 (n + 1)

end

end A051196.P6636774704668093325

/-! ## A051196.P6647287734546417373

`A053727(A090288(n)+1)`
-/

namespace A051196.P6647287734546417373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A090288 n + 1).toNat

end

end A051196.P6647287734546417373

/-! ## A051196.P18012064434728884479

`A053727(A132209(n+1))`
-/

namespace A051196.P18012064434728884479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A132209 (n + 1)).toNat

end

end A051196.P18012064434728884479

/-! ## A051196.P17119563033605427256

`A053727(A142463(n+1))`
-/

namespace A051196.P17119563033605427256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A142463 (n + 1)).toNat

end

end A051196.P17119563033605427256

/-! ## A051196.P6546464180979883817

`A053727(A167614(2*n+1)+n)`
-/

namespace A051196.P6546464180979883817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A167614 (2 * n + 1) + (n : ℤ)).toNat

end

end A051196.P6546464180979883817

/-! ## A051196.P5411178585928080314

`A050186(2*(n+1)*(n+3))`
-/

namespace A051196.P5411178585928080314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (2 * ((n + 1) * (n + 3)))

end

end A051196.P5411178585928080314

/-!
# A051197: T(2n+4,n), array T as in A050186; a count of aperiodic binary words.

The programs for A051197, the canonical program `A051197.P11361868764992353229` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051197 has offset 0).

The definition of A051197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051197.P11361868764992353229

`(n+2)*A275206(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051197

/-- `(n+2)*A275206(n+2)` -/
def P11361868764992353229.Spec : Prop :=
  ∀ n, P11361868764992353229.a n = A051197 n

theorem P11361868764992353229.correct : P11361868764992353229.Spec := by
  intro n
  simp only [A051197]

end A051197

/-! ## A051197.P13517738283189290145

`2*(n+2)*A050182(n)`
-/

namespace A051197.P13517738283189290145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℤ) * A050182 n)

end

end A051197.P13517738283189290145

namespace A051197

/-- `2*(n+2)*A050182(n)` -/
def P13517738283189290145.Spec : Prop :=
  ∀ n, P13517738283189290145.a n = A051197 n

end A051197

/-! ## A051197.P4945816124502719306

`A005843(n+2)*A050182(n)`
-/

namespace A051197.P4945816124502719306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) * A050182 n

end

end A051197.P4945816124502719306

namespace A051197

/-- `A005843(n+2)*A050182(n)` -/
def P4945816124502719306.Spec : Prop :=
  ∀ n, P4945816124502719306.a n = A051197 n

end A051197

/-! ## A051197.P3277800654837009736

`A053727(2*(n+1)*(n+3))`
-/

namespace A051197.P3277800654837009736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (2 * ((n + 1) * (n + 3)))

end

end A051197.P3277800654837009736

namespace A051197

/-- `A053727(2*(n+1)*(n+3))` -/
def P3277800654837009736.Spec : Prop :=
  ∀ n, P3277800654837009736.a n = A051197 n

end A051197

/-! ## A051197.P12784450557726421045

`A050186(A090288(n+1))`
-/

namespace A051197.P12784450557726421045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A090288 (n + 1)).toNat

end

end A051197.P12784450557726421045

namespace A051197

/-- `A050186(A090288(n+1))` -/
def P12784450557726421045.Spec : Prop :=
  ∀ n, P12784450557726421045.a n = A051197 n

end A051197

/-! ## A051197.P12296654769206155895

`A050186(eq[4, A114327(n)])`
-/

namespace A051197.P12296654769206155895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051197.P12296654769206155895

namespace A051197

/-- `A050186(eq[4, A114327(n)])` -/
def P12296654769206155895.Spec : Prop :=
  ∀ n, P12296654769206155895.a n = A051197 n

end A051197

/-! ## A051197.P17305911155620289571

`A050186(A099776(n+2)+1)`
-/

namespace A051197.P17305911155620289571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A099776 (n + 2) + 1).toNat

end

end A051197.P17305911155620289571

namespace A051197

/-- `A050186(A099776(n+2)+1)` -/
def P17305911155620289571.Spec : Prop :=
  ∀ n, P17305911155620289571.a n = A051197 n

end A051197

/-!
# A051198: T(2n+5,n), array T as in A050186; a count of aperiodic binary words.

The programs for A051198, there is no canonical definition to state claims against.
-/

/-! ## A051198.P6519691894564081746

`(2*n+5)*A050183(n)`
-/

namespace A051198.P6519691894564081746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A050183 n

end

end A051198.P6519691894564081746

/-! ## A051198.P1551225794217947980

`A053727(A090288(n+1))`
-/

namespace A051198.P1551225794217947980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A090288 (n + 1)).toNat

end

end A051198.P1551225794217947980

/-! ## A051198.P14246423455032801881

`A053727(A020739(n)+A268581(n)-1)`
-/

namespace A051198.P14246423455032801881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A020739 n + (A268581 n - 1)).toNat

end

end A051198.P14246423455032801881

/-! ## A051198.P1459130135186872179

`A053727(A020739(n)-(1-A268581(n)))`
-/

namespace A051198.P1459130135186872179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A020739 n - (1 - A268581 n)).toNat

end

end A051198.P1459130135186872179

/-! ## A051198.P9643679570080768666

`A050186(A268581(n+1))`
-/

namespace A051198.P9643679570080768666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (A268581 (n + 1)).toNat

end

end A051198.P9643679570080768666

/-! ## A051198.P13658433703718802499

`A050186(eq[5, A114327(n)])`
-/

namespace A051198.P13658433703718802499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051198.P13658433703718802499

/-! ## A051198.P1282075469681649452

`A050186(Δ[A005894(n+2)])`
-/

namespace A051198.P1282075469681649452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 (f1 (n + 1) - f1 n).toNat

end

end A051198.P1282075469681649452

/-!
# A051199: T(2n+6,n), array T as in A050186; a count of aperiodic binary words.

The programs for A051199, there is no canonical definition to state claims against.
-/

/-! ## A051199.P10753839693837213282

`2*(n+3)*A050184(n)`
-/

namespace A051199.P10753839693837213282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * A050184 n)

end

end A051199.P10753839693837213282

/-! ## A051199.P13172476750321186626

`A020739(n)*A050184(n)`
-/

namespace A051199.P13172476750321186626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n * A050184 n

end

end A051199.P13172476750321186626

/-! ## A051199.P6909502047499146195

`A050184(n)*A103517(n+2)`
-/

namespace A051199.P6909502047499146195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050184 n * A103517 (n + 2)

end

end A051199.P6909502047499146195

/-! ## A051199.P14490364986376232701

`A004277(n+3)*A050184(n)`
-/

namespace A051199.P14490364986376232701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 3) * A050184 n

end

end A051199.P14490364986376232701

/-! ## A051199.P2339456570041719088

`A005843(n+3)*A050184(n)`
-/

namespace A051199.P2339456570041719088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3) * A050184 n

end

end A051199.P2339456570041719088

/-! ## A051199.P6833911057004504306

`A004275(n+4)*A050184(n)`
-/

namespace A051199.P6833911057004504306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 4) * A050184 n

end

end A051199.P6833911057004504306

/-! ## A051199.P1988464229230767702

`(A005408(n)+5)*A050184(n)`
-/

namespace A051199.P1988464229230767702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n + 5) * A050184 n

end

end A051199.P1988464229230767702

/-! ## A051199.P6525147340883400819

`A053727(A268581(n+1))`
-/

namespace A051199.P6525147340883400819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053727 (A268581 (n + 1)).toNat

end

end A051199.P6525147340883400819

