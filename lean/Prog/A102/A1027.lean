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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A102700: Numbers k such that 10*k + 9 is prime.

The programs for A102700, the canonical program `A102700.P10486691176846618732` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102700 has offset 1).

The definition of A102700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102700.P10486691176846618732

`A105042(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102700

/-- `A105042(n+1)-1` -/
def P10486691176846618732.Spec : Prop :=
  ∀ n, P10486691176846618732.a n = A102700 (n + 1)

theorem P10486691176846618732.correct : P10486691176846618732.Spec := by
  intro n
  simp only [A102700, Nat.add_sub_cancel]

end A102700

/-! ## A102700.P17619233933273795379

`floor(A024897(n+1)/2)`
-/

namespace A102700.P17619233933273795379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024897 (n + 1) : ℚ) / 2⌋

end

end A102700.P17619233933273795379

namespace A102700

/-- `floor(A024897(n+1)/2)` -/
def P17619233933273795379.Spec : Prop :=
  ∀ n, P17619233933273795379.a n = A102700 (n + 1)

end A102700

/-! ## A102700.P13964605394447291684

`floor(A030433(n+1)/10)`
-/

namespace A102700.P13964605394447291684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030433 (n + 1) : ℚ) / 10⌋

end

end A102700.P13964605394447291684

namespace A102700

/-- `floor(A030433(n+1)/10)` -/
def P13964605394447291684.Spec : Prop :=
  ∀ n, P13964605394447291684.a n = A102700 (n + 1)

end A102700

/-! ## A102700.P13233615446285160503

`(A111230(n+1)+1)/2`
-/

namespace A102700.P13233615446285160503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111230 (n + 1) + 1 : ℚ) / 2

end

end A102700.P13233615446285160503

namespace A102700

/-- `(A111230(n+1)+1)/2` -/
def P13233615446285160503.Spec : Prop :=
  ∀ n, P13233615446285160503.a n = (A102700 (n + 1) : ℚ)

theorem P13233615446285160503.correct : P13233615446285160503.Spec := by
  intro n
  simp only [A102700, Nat.add_sub_cancel, A102700.P13233615446285160503.a, A102700.P10486691176846618732.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A111230, A111230.P12790612550037976015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102700

/-! ## A102700.P1736601492371630734

`A153355(n+1)/2-1`
-/

namespace A102700.P1736601492371630734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153355 (n + 1) : ℚ) / 2 - 1

end

end A102700.P1736601492371630734

namespace A102700

/-- `A153355(n+1)/2-1` -/
def P1736601492371630734.Spec : Prop :=
  ∀ n, P1736601492371630734.a n = (A102700 (n + 1) : ℚ)

theorem P1736601492371630734.correct : P1736601492371630734.Spec := by
  intro n
  simp only [A102700, Nat.add_sub_cancel, A102700.P1736601492371630734.a, A102700.P10486691176846618732.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A153355, A153355.P8034231718134944401.a, A024897, A024897.P4072693481099583505.a, A111230, A111230.P12790612550037976015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102700

/-! ## A102700.P3097837839704079250

`A139367(n+1)+A102342(n+1)`
-/

namespace A102700.P3097837839704079250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139367 (n + 1) + A102342 (n + 1)

end

end A102700.P3097837839704079250

namespace A102700

/-- `A139367(n+1)+A102342(n+1)` -/
def P3097837839704079250.Spec : Prop :=
  ∀ n, P3097837839704079250.a n = A102700 (n + 1)

theorem P3097837839704079250.correct : P3097837839704079250.Spec := by
  intro n
  simp only [A102700, Nat.add_sub_cancel, A102700.P3097837839704079250.a, A102700.P10486691176846618732.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A139367, A139367.P12848330086499471846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102700

/-! ## A102700.P6956803749806341987

`A024897(n+1)%A105042(n+1)`
-/

namespace A102700.P6956803749806341987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024897 (n + 1)) (A105042 (n + 1))

end

end A102700.P6956803749806341987

namespace A102700

/-- `A024897(n+1)%A105042(n+1)` -/
def P6956803749806341987.Spec : Prop :=
  ∀ n, P6956803749806341987.a n = A102700 (n + 1)

end A102700

/-! ## A102700.P17530523049739033118

`A030433(n+1)%A105042(n+1)`
-/

namespace A102700.P17530523049739033118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (n + 1)) (A105042 (n + 1))

end

end A102700.P17530523049739033118

namespace A102700

/-- `A030433(n+1)%A105042(n+1)` -/
def P17530523049739033118.Spec : Prop :=
  ∀ n, P17530523049739033118.a n = A102700 (n + 1)

end A102700

/-! ## A102700.P9748470385277540677

`A045457(n+2)%A105042(n+1)`
-/

namespace A102700.P9748470385277540677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045457 (n + 2)) (A105042 (n + 1))

end

end A102700.P9748470385277540677

namespace A102700

/-- `A045457(n+2)%A105042(n+1)` -/
def P9748470385277540677.Spec : Prop :=
  ∀ n, P9748470385277540677.a n = A102700 (n + 1)

end A102700

/-! ## A102700.P12792164602970548313

`comp[A153380(n+1)]`
-/

namespace A102700.P12792164602970548313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102700.P12792164602970548313

namespace A102700

/-- `comp[A153380(n+1)]` -/
def P12792164602970548313.Spec : Prop :=
  ∀ n, (P12792164602970548313.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P12879229599755292726

`A185322(A049510(n+1))-1`
-/

namespace A102700.P12879229599755292726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185322 (A049510 (n + 1)).toNat - 1

end

end A102700.P12879229599755292726

namespace A102700

/-- `A185322(A049510(n+1))-1` -/
def P12879229599755292726.Spec : Prop :=
  ∀ n, P12879229599755292726.a n = A102700 (n + 1)

end A102700

/-! ## A102700.P10486812867027528663

`eq[1, A001222(10*n+9)]`
-/

namespace A102700.P10486812867027528663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102700.P10486812867027528663

namespace A102700

/-- `eq[1, A001222(10*n+9)]` -/
def P10486812867027528663.Spec : Prop :=
  ∀ n, (P10486812867027528663.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P17949333620585140520

`eq[2, A000005(10*n+9)]`
-/

namespace A102700.P17949333620585140520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102700.P17949333620585140520

namespace A102700

/-- `eq[2, A000005(10*n+9)]` -/
def P17949333620585140520.Spec : Prop :=
  ∀ n, (P17949333620585140520.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P17005255061070447287

`lt[A000005(10*(n+1)-1), 3]`
-/

namespace A102700.P17005255061070447287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102700.P17005255061070447287

namespace A102700

/-- `lt[A000005(10*(n+1)-1), 3]` -/
def P17005255061070447287.Spec : Prop :=
  ∀ n, (P17005255061070447287.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P16124467052640376649

`lt[A001222(2*(5*n+1)+7), 2]`
-/

namespace A102700.P16124467052640376649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (5 * n + 1) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102700.P16124467052640376649

namespace A102700

/-- `lt[A001222(2*(5*n+1)+7), 2]` -/
def P16124467052640376649.Spec : Prop :=
  ∀ n, (P16124467052640376649.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P14676560157278311228

`lt[n+3, A020639(5*(2*n+1)+4)]`
-/

namespace A102700.P14676560157278311228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (2 * n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102700.P14676560157278311228

namespace A102700

/-- `lt[n+3, A020639(5*(2*n+1)+4)]` -/
def P14676560157278311228.Spec : Prop :=
  ∀ n, (P14676560157278311228.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P176884950136244285

`A023443(A105042(n+1))`
-/

namespace A102700.P176884950136244285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105042 (n + 1)).toNat

end

end A102700.P176884950136244285

namespace A102700

/-- `A023443(A105042(n+1))` -/
def P176884950136244285.Spec : Prop :=
  ∀ n, P176884950136244285.a n = A102700 (n + 1)

end A102700

/-! ## A102700.P4381579655782250062

`eq[A122072(n+1), A268488(n+1)]`
-/

namespace A102700.P4381579655782250062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102700.P4381579655782250062

namespace A102700

/-- `eq[A122072(n+1), A268488(n+1)]` -/
def P4381579655782250062.Spec : Prop :=
  ∀ n, (P4381579655782250062.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P5256760076755098527

`eq[A006530(A017377(n)), A017377(n)]`
-/

namespace A102700.P5256760076755098527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102700.P5256760076755098527

namespace A102700

/-- `eq[A006530(A017377(n)), A017377(n)]` -/
def P5256760076755098527.Spec : Prop :=
  ∀ n, (P5256760076755098527.a n : ℤ) = A102700 (n + 1)

end A102700

/-! ## A102700.P15708755995623190738

`lt[A063226(n+1), A006530(A017377(n))]`
-/

namespace A102700.P15708755995623190738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102700.P15708755995623190738

namespace A102700

/-- `lt[A063226(n+1), A006530(A017377(n))]` -/
def P15708755995623190738.Spec : Prop :=
  ∀ n, (P15708755995623190738.a n : ℤ) = A102700 (n + 1)

end A102700

/-!
# A102702: Expansion of (2-x-2*x^2-x^3)/(1-x-x^2)^2.

The programs for A102702, the canonical program `A102702.P17562153870222028283` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102702 has offset 0).

The definition of A102702 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-x-2x^2-x^3)/(1-2x-x^2+2x^3+x^4))` (program `A102702.P17562153870222028283`, by `A102702.P17562153870222028283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102702.P17562153870222028283

`ogf((2-x-2x^2-x^3)/(1-2x-x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102702

/-- `ogf((2-x-2x^2-x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P17562153870222028283.Spec : Prop :=
  ∀ n, P17562153870222028283.a n = A102702 n

theorem P17562153870222028283.correct : P17562153870222028283.Spec := by
  intro n
  simp only [A102702]

end A102702

/-! ## A102702.P13405051259545939329

`A010049(n+1)+A000045(n+2)`
-/

namespace A102702.P13405051259545939329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + A000045 (n + 2)

end

end A102702.P13405051259545939329

namespace A102702

/-- `A010049(n+1)+A000045(n+2)` -/
def P13405051259545939329.Spec : Prop :=
  ∀ n, P13405051259545939329.a n = A102702 n

end A102702

/-! ## A102702.P7636181851052802678

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=10`
-/

namespace A102702.P7636181851052802678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6, 10] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A102702.P7636181851052802678

namespace A102702

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P7636181851052802678.Spec : Prop :=
  ∀ n, P7636181851052802678.a n = A102702 n

end A102702

/-! ## A102702.P17912377235402668032

`2*A000045(n+1)+A001629(n+3)-2*A029907(n+1)`
-/

namespace A102702.P17912377235402668032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1) + A001629 (n + 3) - 2 * A029907 (n + 1)

end

end A102702.P17912377235402668032

namespace A102702

/-- `2*A000045(n+1)+A001629(n+3)-2*A029907(n+1)` -/
def P17912377235402668032.Spec : Prop :=
  ∀ n, P17912377235402668032.a n = A102702 n

end A102702

/-! ## A102702.P11168846391266167208

`((2*n+10)*A000045(n+1)-(n-4)*A000045(n))/5`
-/

namespace A102702.P11168846391266167208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 10 : ℤ) * A000045 (n + 1) - ((n : ℤ) - 4) * A000045 n : ℚ) / 5

end

end A102702.P11168846391266167208

namespace A102702

/-- `((2*n+10)*A000045(n+1)-(n-4)*A000045(n))/5` -/
def P11168846391266167208.Spec : Prop :=
  ∀ n, P11168846391266167208.a n = (A102702 n : ℚ)

end A102702

/-! ## A102702.P11283744473964957582

`∑[A206268(n+1)]+1`
-/

namespace A102702.P11283744473964957582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A102702.P11283744473964957582

namespace A102702

/-- `∑[A206268(n+1)]+1` -/
def P11283744473964957582.Spec : Prop :=
  ∀ n, P11283744473964957582.a n = A102702 n

end A102702

/-! ## A102702.P5433737519617777211

`A020695(n)+A001629(n)`
-/

namespace A102702.P5433737519617777211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A001629 n

end

end A102702.P5433737519617777211

namespace A102702

/-- `A020695(n)+A001629(n)` -/
def P5433737519617777211.Spec : Prop :=
  ∀ n, P5433737519617777211.a n = A102702 n

end A102702

/-! ## A102702.P14225823862600482858

`A029907(n)+∑[A118658(n)]`
-/

namespace A102702.P14225823862600482858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102702.P14225823862600482858

namespace A102702

/-- `A029907(n)+∑[A118658(n)]` -/
def P14225823862600482858.Spec : Prop :=
  ∀ n, P14225823862600482858.a n = A102702 n

end A102702

/-! ## A102702.P12943907493601509685

`A001595(n)+A029907(n)+1`
-/

namespace A102702.P12943907493601509685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (A029907 n + 1)

end

end A102702.P12943907493601509685

namespace A102702

/-- `A001595(n)+A029907(n)+1` -/
def P12943907493601509685.Spec : Prop :=
  ∀ n, P12943907493601509685.a n = A102702 n

end A102702

/-! ## A102702.P18205923021784255335

`A006367(n+2)+A000045(n)`
-/

namespace A102702.P18205923021784255335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 2) + A000045 n

end

end A102702.P18205923021784255335

namespace A102702

/-- `A006367(n+2)+A000045(n)` -/
def P18205923021784255335.Spec : Prop :=
  ∀ n, P18205923021784255335.a n = A102702 n

end A102702

/-! ## A102702.P5323982395517214217

`A001629(n)+A048577(n)-1`
-/

namespace A102702.P5323982395517214217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (A048577 n - 1)

end

end A102702.P5323982395517214217

namespace A102702

/-- `A001629(n)+A048577(n)-1` -/
def P5323982395517214217.Spec : Prop :=
  ∀ n, P5323982395517214217.a n = A102702 n

end A102702

/-! ## A102702.P10649622282160668132

`A118658(n+2)+A029907(n)`
-/

namespace A102702.P10649622282160668132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 2) + A029907 n

end

end A102702.P10649622282160668132

namespace A102702

/-- `A118658(n+2)+A029907(n)` -/
def P10649622282160668132.Spec : Prop :=
  ∀ n, P10649622282160668132.a n = A102702 n

end A102702

/-! ## A102702.P8399643276476344388

`A001629(n)+Δ[A006327(n+4)]`
-/

namespace A102702.P8399643276476344388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (f1 (n + 1) - f1 n)

end

end A102702.P8399643276476344388

namespace A102702

/-- `A001629(n)+Δ[A006327(n+4)]` -/
def P8399643276476344388.Spec : Prop :=
  ∀ n, P8399643276476344388.a n = A102702 n

end A102702

/-! ## A102702.P10085370298878935014

`A208354(n+1)+A000045(n+1)`
-/

namespace A102702.P10085370298878935014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) + A000045 (n + 1)

end

end A102702.P10085370298878935014

namespace A102702

/-- `A208354(n+1)+A000045(n+1)` -/
def P10085370298878935014.Spec : Prop :=
  ∀ n, P10085370298878935014.a n = A102702 n

end A102702

/-! ## A102702.P12231889916320871753

`A212804(n+1)+A006367(n+2)`
-/

namespace A102702.P12231889916320871753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A006367 (n + 2)

end

end A102702.P12231889916320871753

namespace A102702

/-- `A212804(n+1)+A006367(n+2)` -/
def P12231889916320871753.Spec : Prop :=
  ∀ n, P12231889916320871753.a n = A102702 n

end A102702

/-! ## A102702.P10091472601483431801

`A211228(2*n)+A010049(n+1)`
-/

namespace A102702.P10091472601483431801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n) + A010049 (n + 1)

end

end A102702.P10091472601483431801

namespace A102702

/-- `A211228(2*n)+A010049(n+1)` -/
def P10091472601483431801.Spec : Prop :=
  ∀ n, P10091472601483431801.a n = A102702 n

end A102702

/-! ## A102702.P8389497393757984519

`A053602(2*n)+A006367(n+2)`
-/

namespace A102702.P8389497393757984519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n) + A006367 (n + 2)

end

end A102702.P8389497393757984519

namespace A102702

/-- `A053602(2*n)+A006367(n+2)` -/
def P8389497393757984519.Spec : Prop :=
  ∀ n, P8389497393757984519.a n = A102702 n

end A102702

/-! ## A102702.P12832838910059048550

`A001629(n)+A078642(n+1)/2`
-/

namespace A102702.P12832838910059048550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001629 n : ℚ) + (A078642 (n + 1) : ℚ) / 2

end

end A102702.P12832838910059048550

namespace A102702

/-- `A001629(n)+A078642(n+1)/2` -/
def P12832838910059048550.Spec : Prop :=
  ∀ n, P12832838910059048550.a n = (A102702 n : ℚ)

end A102702

/-! ## A102702.P237140762453997378

`A006355(n+3)-A240847(n+3)`
-/

namespace A102702.P237140762453997378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 3) - A240847 (n + 3)

end

end A102702.P237140762453997378

namespace A102702

/-- `A006355(n+3)-A240847(n+3)` -/
def P237140762453997378.Spec : Prop :=
  ∀ n, P237140762453997378.a n = A102702 n

end A102702

/-! ## A102702.P12955280031368289190

`A010049(n+1)+A000071(n+2)+1`
-/

namespace A102702.P12955280031368289190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + (A000071 (n + 2) + 1)

end

end A102702.P12955280031368289190

namespace A102702

/-- `A010049(n+1)+A000071(n+2)+1` -/
def P12955280031368289190.Spec : Prop :=
  ∀ n, P12955280031368289190.a n = A102702 n

end A102702

/-!
# A102703: Numbers k such that 100*k+99 is prime.

The programs for A102703, there is no canonical definition to state claims against.
-/

/-! ## A102703.P4462699865490095311

`A105043(n+1)-1`
-/

namespace A102703.P4462699865490095311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105043 (n + 1) - 1

end

end A102703.P4462699865490095311

/-! ## A102703.P4723816769672574079

`A095995(n+1)%A105043(n+1)`
-/

namespace A102703.P4723816769672574079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095995 (n + 1)) (A105043 (n + 1))

end

end A102703.P4723816769672574079

/-! ## A102703.P7207715373926393963

`A280193(A047504(2*n+3))+A105043(n+1)`
-/

namespace A102703.P7207715373926393963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A047504 (2 * n + 3)).toNat + A105043 (n + 1)

end

end A102703.P7207715373926393963

/-! ## A102703.P5601085368980933455

`A023443(A105043(n+1))`
-/

namespace A102703.P5601085368980933455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105043 (n + 1)).toNat

end

end A102703.P5601085368980933455

/-! ## A102703.P2903926026013960389

`A280193(A033873(n))+A105043(n+1)`
-/

namespace A102703.P2903926026013960389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A033873 n).toNat + A105043 (n + 1)

end

end A102703.P2903926026013960389

/-! ## A102703.P17009854071346938182

`eq[1, A001221(10*10*n+99)]`
-/

namespace A102703.P17009854071346938182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (10 * (10 * n) + 99)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102703.P17009854071346938182

/-! ## A102703.P13245039591638782409

`eq[1, A001222(10*10*n+99)]`
-/

namespace A102703.P13245039591638782409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n) + 99)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102703.P13245039591638782409

/-! ## A102703.P9359256327562189882

`eq[2, A000005(10*10*n+99)]`
-/

namespace A102703.P9359256327562189882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (10 * n) + 99)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102703.P9359256327562189882

/-! ## A102703.P16016436223246249809

`eq[2, A324181(10*10*n+99)]`
-/

namespace A102703.P16016436223246249809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324181 (10 * (10 * n) + 99)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102703.P16016436223246249809

/-!
# A102704: Numbers k such that k999 is prime.

The programs for A102704, there is no canonical definition to state claims against.
-/

/-! ## A102704.P12357385564977257220

`A105044(n+1)-1`
-/

namespace A102704.P12357385564977257220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105044 (n + 1) - 1

end

end A102704.P12357385564977257220

/-! ## A102704.P17329036666363951050

`A153881(n+2)+A105044(n+1)`
-/

namespace A102704.P17329036666363951050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A105044 (n + 1)

end

end A102704.P17329036666363951050

/-! ## A102704.P1011849982397154861

`abs(1-A105044(A028242(2*n)))`
-/

namespace A102704.P1011849982397154861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A105044 (A028242 (2 * n)).toNat|

end

end A102704.P1011849982397154861

/-! ## A102704.P9332606652304873990

`-((1-A105044(A028242(2*n)))%A167499(n))`
-/

namespace A102704.P9332606652304873990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (1 - A105044 (A028242 (2 * n)).toNat) (A167499 n)

end

end A102704.P9332606652304873990

/-! ## A102704.P16508002786229221948

`A023443(A105044(n+1))`
-/

namespace A102704.P16508002786229221948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105044 (n + 1)).toNat

end

end A102704.P16508002786229221948

/-! ## A102704.P3969063010654546603

`A000038(A004771(n))-(1-A105044(A028242(2*n)))`
-/

namespace A102704.P3969063010654546603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A004771 n).toNat - (1 - A105044 (A028242 (2 * n)).toNat)

end

end A102704.P3969063010654546603

/-! ## A102704.P4339597784164165726

`A110514(A211427(n))+A105044(n+1)`
-/

namespace A102704.P4339597784164165726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A211427 n).toNat + A105044 (n + 1)

end

end A102704.P4339597784164165726

/-! ## A102704.P14514917429930955100

`A010673(A055671(n))-(1-A105044(A028242(2*n)))`
-/

namespace A102704.P14514917429930955100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A055671 n).toNat - (1 - A105044 (A028242 (2 * n)).toNat)

end

end A102704.P14514917429930955100

/-! ## A102704.P8203641714466917158

`A263878(A007318(∑[n]))+A105044(n+1)`
-/

namespace A102704.P8203641714466917158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263878 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A105044 (n + 1)

end

end A102704.P8203641714466917158

/-! ## A102704.P6980212314982011440

`A055671(A000290(n))-(1-A105044(A028242(2*n)))`
-/

namespace A102704.P6980212314982011440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A000290 n).toNat - (1 - A105044 (A028242 (2 * n)).toNat)

end

end A102704.P6980212314982011440

/-! ## A102704.P9787629408276136920

`A110514(10*10*n+29)+A105044(n+1)`
-/

namespace A102704.P9787629408276136920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (10 * (10 * n) + 29) + A105044 (n + 1)

end

end A102704.P9787629408276136920

/-!
# A102705: Numbers not of the form 7x + 9y with nonnegative x and y.

The programs for A102705, there is no canonical definition to state claims against.
-/

/-! ## A102705.P4262447888666767222

`comp[6*(n+1)%9+n+1]`
-/

namespace A102705.P4262447888666767222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1) % 9) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102705.P4262447888666767222

/-! ## A102705.P4777068990189080649

`eq[floor(acot(n)), A116377(n+7)]`
-/

namespace A102705.P4777068990189080649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116377 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102705.P4777068990189080649

/-! ## A102705.P7569511282472889246

`eq[0, A144599(A172327(n))]`
-/

namespace A102705.P7569511282472889246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144599 (A172327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102705.P7569511282472889246

/-! ## A102705.P10379497245551452815

`lt[A280457(A016825(n)), 2]`
-/

namespace A102705.P10379497245551452815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280457 (A016825 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102705.P10379497245551452815

/-! ## A102705.P14430379573919093234

`eq[0, A314039(n)-A314040(n)]`
-/

namespace A102705.P14430379573919093234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n - A314040 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102705.P14430379573919093234

/-!
# A102708: Composite numbers a(n) having a GCD with Pell_x(a(n))-1 equal to 1 (where Pell_x(n) is the x solution of the Pell-Fermat equation: x^2 - n y^2 = 1). There is no square in the sequence because the Pell-Fermat equation has no solution for them.

The programs for A102708, there is no canonical definition to state claims against.
-/

/-! ## A102708.P17562684589060055814

`lt[A007966(n)+1, A107286(n)]`
-/

namespace A102708.P17562684589060055814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102708.P17562684589060055814

/-! ## A102708.P2852135526816178183

`lt[A007966(n), A001222(A093178(n))]`
-/

namespace A102708.P2852135526816178183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102708.P2852135526816178183

/-! ## A102708.P4960343199442988754

`lt[A002522(A007966(n)), A107286(n)]`
-/

namespace A102708.P4960343199442988754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A007966 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102708.P4960343199442988754

/-!
# A102709: Let a(n,m) = card{f^(n) : f is a mapping from a set of m elements into itself}, where f^(l)(x) = f^(l-1)(f(x)),l>0, f^(0)(x) = x; sequence gives a(n,5).

The programs for A102709, there is no canonical definition to state claims against.
-/

/-! ## A102709.P2054935887013665934

`A247026(A167499(n+4))`
-/

namespace A102709.P2054935887013665934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A167499 (n + 4)).toNat

end

end A102709.P2054935887013665934

/-!
# A102710: a(1) = 2, a(2) = 3, a(n+2) = a(n)*(a(n)+a(n+1)) - a(n+1).

The programs for A102710, the canonical program `A102710.P1345942661228466169` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102710 has offset 1).

The definition of A102710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102710.P1345942661228466169

`a(n-2)*(a(n-2)+a(n-1))-a(n-1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102710

/-- `a(n-2)*(a(n-2)+a(n-1))-a(n-1)` -/
def P1345942661228466169.Spec : Prop :=
  ∀ n, P1345942661228466169.a n = A102710 (n + 1)

theorem P1345942661228466169.correct : P1345942661228466169.Spec := by
  intro n
  simp only [A102710, Nat.add_sub_cancel]

end A102710

/-! ## A102710.P8733235784906217184

`a(n-2)²+(a(n-2)-1)*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A102710.P8733235784906217184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) ^ 2 + (a (n - 2) - 1) * a (n - 1)

end

end A102710.P8733235784906217184

namespace A102710

/-- `a(n-2)²+(a(n-2)-1)*a(n-1)` -/
def P8733235784906217184.Spec : Prop :=
  ∀ n, P8733235784906217184.a n = A102710 (n + 1)

theorem P8733235784906217184.correct : P8733235784906217184.Spec := by
  intro n
  simp only [A102710, Nat.add_sub_cancel, A102710.P8733235784906217184.a, A102710.P1345942661228466169.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A102710

/-! ## A102710.P522901566963090324

`a(n-2)²-(1-a(n-2))*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A102710.P522901566963090324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) ^ 2 - (1 - a (n - 2)) * a (n - 1)

end

end A102710.P522901566963090324

namespace A102710

/-- `a(n-2)²-(1-a(n-2))*a(n-1)` -/
def P522901566963090324.Spec : Prop :=
  ∀ n, P522901566963090324.a n = A102710 (n + 1)

theorem P522901566963090324.correct : P522901566963090324.Spec := by
  intro n
  simp only [A102710, Nat.add_sub_cancel, A102710.P522901566963090324.a, A102710.P1345942661228466169.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A102710

/-! ## A102710.P8687905670748889882

`a(n-2)*a(n-2)-(1-a(n-2))*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A102710.P8687905670748889882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) * a (n - 2) - (1 - a (n - 2)) * a (n - 1)

end

end A102710.P8687905670748889882

namespace A102710

/-- `a(n-2)*a(n-2)-(1-a(n-2))*a(n-1)` -/
def P8687905670748889882.Spec : Prop :=
  ∀ n, P8687905670748889882.a n = A102710 (n + 1)

theorem P8687905670748889882.correct : P8687905670748889882.Spec := by
  intro n
  simp only [A102710, Nat.add_sub_cancel, A102710.P8687905670748889882.a, A102710.P1345942661228466169.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A102710

/-!
# A102711: Numbers k such that 11*k + 7 is prime.

The programs for A102711, the canonical program `A102711.P927903088410875919` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102711 has offset 1).

The definition of A102711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7874 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102711.P927903088410875919

`ceil(p?[a(n-1)+11]/11)-1` with `a(0)=6, a(1)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102711

/-- `ceil(p?[a(n-1)+11]/11)-1` -/
def P927903088410875919.Spec : Prop :=
  ∀ n, P927903088410875919.a n = A102711 (n + 1)

theorem P927903088410875919.correct : P927903088410875919.Spec := by
  intro n
  simp only [A102711, Nat.add_sub_cancel]

end A102711

/-! ## A102711.P2723854191296199659

`round(p?[a(n-1)+11]/11)-1` with `a(0)=10, a(1)=7`
-/

namespace A102711.P2723854191296199659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 7] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11) - 1

end

end A102711.P2723854191296199659

namespace A102711

/-- `round(p?[a(n-1)+11]/11)-1` -/
def P2723854191296199659.Spec : Prop :=
  ∀ n, P2723854191296199659.a n = A102711 (n + 1)

end A102711

/-! ## A102711.P7461196403906890752

`eq[1, A001222(11*n+7)]`
-/

namespace A102711.P7461196403906890752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P7461196403906890752

namespace A102711

/-- `eq[1, A001222(11*n+7)]` -/
def P7461196403906890752.Spec : Prop :=
  ∀ n, (P7461196403906890752.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P5413010979036734709

`eq[2, A000005(11*n+7)]`
-/

namespace A102711.P5413010979036734709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P5413010979036734709

namespace A102711

/-- `eq[2, A000005(11*n+7)]` -/
def P5413010979036734709.Spec : Prop :=
  ∀ n, (P5413010979036734709.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P8242040966142406813

`lt[6*n+2, A006530(11*n+7)]`
-/

namespace A102711.P8242040966142406813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (11 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102711.P8242040966142406813

namespace A102711

/-- `lt[6*n+2, A006530(11*n+7)]` -/
def P8242040966142406813.Spec : Prop :=
  ∀ n, (P8242040966142406813.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P16423778489845815291

`lt[n+1, A020639(5*(2*n+1)+n+2)]`
-/

namespace A102711.P16423778489845815291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (2 * n + 1) + (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102711.P16423778489845815291

namespace A102711

/-- `lt[n+1, A020639(5*(2*n+1)+n+2)]` -/
def P16423778489845815291.Spec : Prop :=
  ∀ n, (P16423778489845815291.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P3344248244470123950

`eq[A006530(A017473(n)), A017473(n)]`
-/

namespace A102711.P3344248244470123950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017473 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102711.P3344248244470123950

namespace A102711

/-- `eq[A006530(A017473(n)), A017473(n)]` -/
def P3344248244470123950.Spec : Prop :=
  ∀ n, (P3344248244470123950.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P14742444193972954571

`lt[A008593(n), A000010(A017449(n)+2)]`
-/

namespace A102711.P14742444193972954571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102711.P14742444193972954571

namespace A102711

/-- `lt[A008593(n), A000010(A017449(n)+2)]` -/
def P14742444193972954571.Spec : Prop :=
  ∀ n, (P14742444193972954571.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P7650959110883463721

`lt[A017401(n), A000010(A017449(n)+2)]`
-/

namespace A102711.P7650959110883463721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102711.P7650959110883463721

namespace A102711

/-- `lt[A017401(n), A000010(A017449(n)+2)]` -/
def P7650959110883463721.Spec : Prop :=
  ∀ n, (P7650959110883463721.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P14636954623066066060

`eq[1, A052126(11*n+7)]`
-/

namespace A102711.P14636954623066066060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (11 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P14636954623066066060

namespace A102711

/-- `eq[1, A052126(11*n+7)]` -/
def P14636954623066066060.Spec : Prop :=
  ∀ n, (P14636954623066066060.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P3026207795642190328

`A079483(A141854(n+1))`
-/

namespace A102711.P3026207795642190328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079483 (A141854 (n + 1)).toNat

end

end A102711.P3026207795642190328

namespace A102711

/-- `A079483(A141854(n+1))` -/
def P3026207795642190328.Spec : Prop :=
  ∀ n, P3026207795642190328.a n = A102711 (n + 1)

end A102711

/-! ## A102711.P16361266774508010863

`eq[1, A053989(A017473(n)+1)]`
-/

namespace A102711.P16361266774508010863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A017473 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P16361266774508010863

namespace A102711

/-- `eq[1, A053989(A017473(n)+1)]` -/
def P16361266774508010863.Spec : Prop :=
  ∀ n, (P16361266774508010863.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P429188707170961567

`eq[1, A003415(A017485(n)-1)]`
-/

namespace A102711.P429188707170961567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A017485 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P429188707170961567

namespace A102711

/-- `eq[1, A003415(A017485(n)-1)]` -/
def P429188707170961567.Spec : Prop :=
  ∀ n, (P429188707170961567.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P12910100835143942863

`eq[1, A032741(A017485(n)-1)]`
-/

namespace A102711.P12910100835143942863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A017485 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P12910100835143942863

namespace A102711

/-- `eq[1, A032741(A017485(n)-1)]` -/
def P12910100835143942863.Spec : Prop :=
  ∀ n, (P12910100835143942863.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P14676922418662262580

`eq[2, A051700(A017509(n)-1)]`
-/

namespace A102711.P14676922418662262580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A017509 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P14676922418662262580

namespace A102711

/-- `eq[2, A051700(A017509(n)-1)]` -/
def P14676922418662262580.Spec : Prop :=
  ∀ n, (P14676922418662262580.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P13248031839572914123

`lt[1, A055672(A017497(n)-2)]`
-/

namespace A102711.P13248031839572914123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A017497 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102711.P13248031839572914123

namespace A102711

/-- `lt[1, A055672(A017497(n)-2)]` -/
def P13248031839572914123.Spec : Prop :=
  ∀ n, (P13248031839572914123.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P10888668216594475645

`eq[1, A032742(A017353(n)+n)]`
-/

namespace A102711.P10888668216594475645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017353 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P10888668216594475645

namespace A102711

/-- `eq[1, A032742(A017353(n)+n)]` -/
def P10888668216594475645.Spec : Prop :=
  ∀ n, (P10888668216594475645.a n : ℤ) = A102711 (n + 1)

end A102711

/-! ## A102711.P7446921798279834726

`eq[2, A181819(A017353(n)+n)]`
-/

namespace A102711.P7446921798279834726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A017353 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102711.P7446921798279834726

namespace A102711

/-- `eq[2, A181819(A017353(n)+n)]` -/
def P7446921798279834726.Spec : Prop :=
  ∀ n, (P7446921798279834726.a n : ℤ) = A102711 (n + 1)

end A102711

/-!
# A102712: Sum of largest parts of all compositions of n.

The programs for A102712, there is no canonical definition to state claims against.
-/

/-! ## A102712.P14355504728896879627

`∑[A336482(n+1)]`
-/

namespace A102712.P14355504728896879627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102712.P14355504728896879627

/-! ## A102712.P7605175731911373207

`A079500(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A102712.P7605175731911373207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079500 n + 2 * a (n - 1)

end

end A102712.P7605175731911373207

/-! ## A102712.P4467549996206983305

`A007059(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A102712.P4467549996206983305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007059 (n + 1) + 2 * a (n - 1)

end

end A102712.P4467549996206983305

/-! ## A102712.P6758018670740711109

`∑[record[A336482(A008611(n))]]`
-/

namespace A102712.P6758018670740711109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102712.P6758018670740711109

/-! ## A102712.P8058406445897827750

`∑[record[A336482(A141256(n))]]`
-/

namespace A102712.P8058406445897827750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102712.P8058406445897827750

/-! ## A102712.P4626744520857283634

`∑[record[A336482(A152271(n))]]`
-/

namespace A102712.P4626744520857283634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102712.P4626744520857283634

/-! ## A102712.P5668203652554194599

`A336482(n+2)-A079500(n+1)`
-/

namespace A102712.P5668203652554194599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (n + 2) - A079500 (n + 1)

end

end A102712.P5668203652554194599

/-! ## A102712.P5343312961210465141

`A336482(n+2)-A007059(n+2)`
-/

namespace A102712.P5343312961210465141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (n + 2) - A007059 (n + 2)

end

end A102712.P5343312961210465141

/-! ## A102712.P14260043908899626510

`A322428(∑[n]+1)`
-/

namespace A102712.P14260043908899626510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A102712.P14260043908899626510

/-! ## A102712.P2432112646075992407

`record[A322428(n+1)]`
-/

namespace A102712.P2432112646075992407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102712.P2432112646075992407

/-!
# A102713: Total sum of odd parts in all compositions of n.

The programs for A102713, the canonical program `A102713.P16035526343382848488` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102713 has offset 1).

The definition of A102713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102713.P16035526343382848488

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=18`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102713

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P16035526343382848488.Spec : Prop :=
  ∀ n, P16035526343382848488.a n = A102713 (n + 1)

theorem P16035526343382848488.correct : P16035526343382848488.Spec := by
  intro n
  simp only [A102713, Nat.add_sub_cancel]

end A102713

/-! ## A102713.P10657060987897172325

`((15*(n+1)+4)*2^n-2*(3*(n+1)+1)*(-1)^(n+1))/27`
-/

namespace A102713.P10657060987897172325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((15 * (n + 1) + 4) * 2 ^ n : ℤ) - (2 * (3 * (n + 1) + 1) : ℤ) * (-1) ^ (n + 1) : ℚ) / 27

end

end A102713.P10657060987897172325

namespace A102713

/-- `((15*(n+1)+4)*2^n-2*(3*(n+1)+1)*(-1)^(n+1))/27` -/
def P10657060987897172325.Spec : Prop :=
  ∀ n, P10657060987897172325.a n = (A102713 (n + 1) : ℚ)

theorem P10657060987897172325.correct : P10657060987897172325.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A102713, Nat.add_sub_cancel, A102713.P10657060987897172325.a, A102713.P16035526343382848488.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A102713, Nat.add_sub_cancel, A102713.P10657060987897172325.a, A102713.P16035526343382848488.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A102713

/-! ## A102713.P17943053864079079195

`ogf((1+x^2)/(1-2x-3x^2+4x^3+4x^4))`
-/

namespace A102713.P17943053864079079195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, -3, 4, 4] n

end

end A102713.P17943053864079079195

namespace A102713

/-- `ogf((1+x^2)/(1-2x-3x^2+4x^3+4x^4))` -/
def P17943053864079079195.Spec : Prop :=
  ∀ n, P17943053864079079195.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P13564389952283108491

`A140960(n)+(n+2)*2^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A102713.P13564389952283108491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A140960 n : ℚ) + ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A102713.P13564389952283108491

namespace A102713

/-- `A140960(n)+(n+2)*2^(n-1)-a(n-1)` -/
def P13564389952283108491.Spec : Prop :=
  ∀ n, P13564389952283108491.a n = (A102713 (n + 1) : ℚ)

end A102713

/-! ## A102713.P8715485207036626684

`A127976(n+1)+A045883(n)`
-/

namespace A102713.P8715485207036626684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1) + A045883 n

end

end A102713.P8715485207036626684

namespace A102713

/-- `A127976(n+1)+A045883(n)` -/
def P8715485207036626684.Spec : Prop :=
  ∀ n, P8715485207036626684.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P7238722757379228291

`A127979(n+1)-A172285(n)`
-/

namespace A102713.P7238722757379228291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127979 (n + 1) - A172285 n

end

end A102713.P7238722757379228291

namespace A102713

/-- `A127979(n+1)-A172285(n)` -/
def P7238722757379228291.Spec : Prop :=
  ∀ n, P7238722757379228291.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P11918260448388248491

`A127978(n+2)-A048573(n)`
-/

namespace A102713.P11918260448388248491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127978 (n + 2) - A048573 n

end

end A102713.P11918260448388248491

namespace A102713

/-- `A127978(n+2)-A048573(n)` -/
def P11918260448388248491.Spec : Prop :=
  ∀ n, P11918260448388248491.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P18075045404719230775

`A095977(n+1)-A059570(n+1)`
-/

namespace A102713.P18075045404719230775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095977 (n + 1) - A059570 (n + 1)

end

end A102713.P18075045404719230775

namespace A102713

/-- `A095977(n+1)-A059570(n+1)` -/
def P18075045404719230775.Spec : Prop :=
  ∀ n, P18075045404719230775.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P13516760402427947454

`2*A073371(n)-A059570(n+1)`
-/

namespace A102713.P13516760402427947454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073371 n - A059570 (n + 1)

end

end A102713.P13516760402427947454

namespace A102713

/-- `2*A073371(n)-A059570(n+1)` -/
def P13516760402427947454.Spec : Prop :=
  ∀ n, P13516760402427947454.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P8922099837688801084

`A127978(n+2)+A000035(n)-A171231(n)`
-/

namespace A102713.P8922099837688801084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127978 (n + 2) + (A000035 n - A171231 n)

end

end A102713.P8922099837688801084

namespace A102713

/-- `A127978(n+2)+A000035(n)-A171231(n)` -/
def P8922099837688801084.Spec : Prop :=
  ∀ n, P8922099837688801084.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P10250985645974144920

`A127978(n+2)+A171231(n)-A171231(n+1)`
-/

namespace A102713.P10250985645974144920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127978 (n + 2) + (A171231 n - A171231 (n + 1))

end

end A102713.P10250985645974144920

namespace A102713

/-- `A127978(n+2)+A171231(n)-A171231(n+1)` -/
def P10250985645974144920.Spec : Prop :=
  ∀ n, P10250985645974144920.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P140894541571013567

`A059570(n+1)+A127976(n+1)-A001045(n+1)`
-/

namespace A102713.P140894541571013567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) + (A127976 (n + 1) - A001045 (n + 1))

end

end A102713.P140894541571013567

namespace A102713

/-- `A059570(n+1)+A127976(n+1)-A001045(n+1)` -/
def P140894541571013567.Spec : Prop :=
  ∀ n, P140894541571013567.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P14534689420188377285

`A127979(n+2)-(A127979(n+1)+A048573(n))`
-/

namespace A102713.P14534689420188377285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127979 (n + 2) - (A127979 (n + 1) + A048573 n)

end

end A102713.P14534689420188377285

namespace A102713

/-- `A127979(n+2)-(A127979(n+1)+A048573(n))` -/
def P14534689420188377285.Spec : Prop :=
  ∀ n, P14534689420188377285.a n = A102713 (n + 1)

end A102713

/-! ## A102713.P1269409254555916453

`A127976(n+1)+A127980(n+1)-A127985(n+1)`
-/

namespace A102713.P1269409254555916453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1) + (A127980 (n + 1) - A127985 (n + 1))

end

end A102713.P1269409254555916453

namespace A102713

/-- `A127976(n+1)+A127980(n+1)-A127985(n+1)` -/
def P1269409254555916453.Spec : Prop :=
  ∀ n, P1269409254555916453.a n = A102713 (n + 1)

end A102713

/-!
# A102714: Expansion of (x+2) / ((x+1)*(x^2-3*x+1)).

The programs for A102714, the canonical program `A102714.P1329239889418267620` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102714 has offset 0).

The definition of A102714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x)/(1-2x-2x^2+x^3))` (program `A102714.P1329239889418267620`, by `A102714.P1329239889418267620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102714.P1329239889418267620

`ogf((2+x)/(1-2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102714

/-- `ogf((2+x)/(1-2x-2x^2+x^3))` -/
def P1329239889418267620.Spec : Prop :=
  ∀ n, P1329239889418267620.a n = A102714 n

theorem P1329239889418267620.correct : P1329239889418267620.Spec := by
  intro n
  simp only [A102714]

end A102714

/-! ## A102714.P11174798615492777104

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=2, a(1)=5, a(2)=14`
-/

namespace A102714.P11174798615492777104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 14] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A102714.P11174798615492777104

namespace A102714

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P11174798615492777104.Spec : Prop :=
  ∀ n, P11174798615492777104.a n = A102714 n

end A102714

/-! ## A102714.P12006271061047363263

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=2, a(1)=5, a(2)=14`
-/

namespace A102714.P12006271061047363263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 14] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A102714.P12006271061047363263

namespace A102714

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P12006271061047363263.Spec : Prop :=
  ∀ n, P12006271061047363263.a n = A102714 n

end A102714

/-! ## A102714.P8597508027826625159

`∑[A111574(2*(n+1))]`
-/

namespace A102714.P8597508027826625159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111574 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102714.P8597508027826625159

namespace A102714

/-- `∑[A111574(2*(n+1))]` -/
def P8597508027826625159.Spec : Prop :=
  ∀ n, P8597508027826625159.a n = A102714 n

end A102714

/-! ## A102714.P17326851057942548589

`∑[A295678(2*n+1)]`
-/

namespace A102714.P17326851057942548589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102714.P17326851057942548589

namespace A102714

/-- `∑[A295678(2*n+1)]` -/
def P17326851057942548589.Spec : Prop :=
  ∀ n, P17326851057942548589.a n = A102714 n

end A102714

/-! ## A102714.P9971051651527378420

`A100545(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A102714.P9971051651527378420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100545 (n - 1) - a (n - 1)

end

end A102714.P9971051651527378420

namespace A102714

/-- `A100545(n-1)-a(n-1)` -/
def P9971051651527378420.Spec : Prop :=
  ∀ n, P9971051651527378420.a n = A102714 n

end A102714

/-! ## A102714.P14847246760878302696

`A001060(2*n)-a(n-1)` with `a(0)=2`
-/

namespace A102714.P14847246760878302696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001060 (2 * n) - a (n - 1)

end

end A102714.P14847246760878302696

namespace A102714

/-- `A001060(2*n)-a(n-1)` -/
def P14847246760878302696.Spec : Prop :=
  ∀ n, P14847246760878302696.a n = A102714 n

end A102714

/-! ## A102714.P14133429942833986543

`A192916(n)+A069959(n)`
-/

namespace A102714.P14133429942833986543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192916 n + A069959 n

end

end A102714.P14133429942833986543

namespace A102714

/-- `A192916(n)+A069959(n)` -/
def P14133429942833986543.Spec : Prop :=
  ∀ n, P14133429942833986543.a n = A102714 n

end A102714

/-! ## A102714.P18190143692993703337

`A248161(n)+A059929(n)`
-/

namespace A102714.P18190143692993703337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248161 n + A059929 n

end

end A102714.P18190143692993703337

namespace A102714

/-- `A248161(n)+A059929(n)` -/
def P18190143692993703337.Spec : Prop :=
  ∀ n, P18190143692993703337.a n = A102714 n

end A102714

/-! ## A102714.P12396647232761566767

`A215602(n)+A175395(n)`
-/

namespace A102714.P12396647232761566767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n + A175395 n

end

end A102714.P12396647232761566767

namespace A102714

/-- `A215602(n)+A175395(n)` -/
def P12396647232761566767.Spec : Prop :=
  ∀ n, P12396647232761566767.a n = A102714 n

end A102714

/-! ## A102714.P10247139712437580489

`A025169(n)-A001654(n)`
-/

namespace A102714.P10247139712437580489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025169 n - A001654 n

end

end A102714.P10247139712437580489

namespace A102714

/-- `A025169(n)-A001654(n)` -/
def P10247139712437580489.Spec : Prop :=
  ∀ n, P10247139712437580489.a n = A102714 n

end A102714

/-! ## A102714.P5366875340243759179

`A099016(n+1)+A001906(n)`
-/

namespace A102714.P5366875340243759179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 (n + 1) + A001906 n

end

end A102714.P5366875340243759179

namespace A102714

/-- `A099016(n+1)+A001906(n)` -/
def P5366875340243759179.Spec : Prop :=
  ∀ n, P5366875340243759179.a n = A102714 n

end A102714

/-! ## A102714.P5781163778206973506

`A110035(n)+A064831(n+1)`
-/

namespace A102714.P5781163778206973506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n + A064831 (n + 1)

end

end A102714.P5781163778206973506

namespace A102714

/-- `A110035(n)+A064831(n+1)` -/
def P5781163778206973506.Spec : Prop :=
  ∀ n, P5781163778206973506.a n = A102714 n

end A102714

/-! ## A102714.P2930368977071590756

`A122367(n)+A061647(n+1)`
-/

namespace A102714.P2930368977071590756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A061647 (n + 1)

end

end A102714.P2930368977071590756

namespace A102714

/-- `A122367(n)+A061647(n+1)` -/
def P2930368977071590756.Spec : Prop :=
  ∀ n, P2930368977071590756.a n = A102714 n

end A102714

/-! ## A102714.P4486432763016620737

`A175395(n+1)+A120718(n)`
-/

namespace A102714.P4486432763016620737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (n + 1) + A120718 n

end

end A102714.P4486432763016620737

namespace A102714

/-- `A175395(n+1)+A120718(n)` -/
def P4486432763016620737.Spec : Prop :=
  ∀ n, P4486432763016620737.a n = A102714 n

end A102714

/-! ## A102714.P13555834086873211217

`A014742(n+1)-A059929(n)`
-/

namespace A102714.P13555834086873211217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 (n + 1) - A059929 n

end

end A102714.P13555834086873211217

namespace A102714

/-- `A014742(n+1)-A059929(n)` -/
def P13555834086873211217.Spec : Prop :=
  ∀ n, P13555834086873211217.a n = A102714 n

end A102714

/-! ## A102714.P12283578188479488983

`A079472(n+2)+A001654(n)`
-/

namespace A102714.P12283578188479488983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (n + 2) + A001654 n

end

end A102714.P12283578188479488983

namespace A102714

/-- `A079472(n+2)+A001654(n)` -/
def P12283578188479488983.Spec : Prop :=
  ∀ n, P12283578188479488983.a n = A102714 n

end A102714

/-! ## A102714.P13855882823278949982

`A005248(n+1)-A099016(n)`
-/

namespace A102714.P13855882823278949982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) - A099016 n

end

end A102714.P13855882823278949982

namespace A102714

/-- `A005248(n+1)-A099016(n)` -/
def P13855882823278949982.Spec : Prop :=
  ∀ n, P13855882823278949982.a n = A102714 n

end A102714

/-! ## A102714.P15627214156103533949

`A236428(n)+A007598(n+2)`
-/

namespace A102714.P15627214156103533949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + A007598 (n + 2)

end

end A102714.P15627214156103533949

namespace A102714

/-- `A236428(n)+A007598(n+2)` -/
def P15627214156103533949.Spec : Prop :=
  ∀ n, P15627214156103533949.a n = A102714 n

end A102714

/-!
# A102715: Triangle read by rows: T(n,k) is phi(binomial(n,k)), where phi is Euler's totient function (0 <= k <= n).

The programs for A102715, the canonical program `A102715.P2461241469822846268` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102715 has offset 0).

The definition of A102715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102715.P2461241469822846268

`A000010(A007318(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102715

/-- `A000010(A007318(n))` -/
def P2461241469822846268.Spec : Prop :=
  ∀ n, P2461241469822846268.a n = A102715 n

theorem P2461241469822846268.correct : P2461241469822846268.Spec := by
  intro n
  simp only [A102715]

end A102715

/-! ## A102715.P2695016772450746804

`A000010(A132749(n))`
-/

namespace A102715.P2695016772450746804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A132749 n).toNat

end

end A102715.P2695016772450746804

namespace A102715

/-- `A000010(A132749(n))` -/
def P2695016772450746804.Spec : Prop :=
  ∀ n, P2695016772450746804.a n = A102715 n

end A102715

/-! ## A102715.P15238418569825275612

`A000010(abs(A108086(n)))`
-/

namespace A102715.P15238418569825275612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A108086 n|.toNat

end

end A102715.P15238418569825275612

namespace A102715

/-- `A000010(abs(A108086(n)))` -/
def P15238418569825275612.Spec : Prop :=
  ∀ n, P15238418569825275612.a n = A102715 n

end A102715

/-! ## A102715.P7784092917802913031

`A000010(abs(A117440(n)))`
-/

namespace A102715.P7784092917802913031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A117440 n|.toNat

end

end A102715.P7784092917802913031

namespace A102715

/-- `A000010(abs(A117440(n)))` -/
def P7784092917802913031.Spec : Prop :=
  ∀ n, P7784092917802913031.a n = A102715 n

end A102715

/-! ## A102715.P785730228216184839

`A000010(abs(A130595(n)))`
-/

namespace A102715.P785730228216184839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A130595 n|.toNat

end

end A102715.P785730228216184839

namespace A102715

/-- `A000010(abs(A130595(n)))` -/
def P785730228216184839.Spec : Prop :=
  ∀ n, P785730228216184839.a n = A102715 n

end A102715

/-! ## A102715.P2572729411080999205

`A000010(sqrt(A008459(n)))`
-/

namespace A102715.P2572729411080999205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A102715.P2572729411080999205

namespace A102715

/-- `A000010(sqrt(A008459(n)))` -/
def P2572729411080999205.Spec : Prop :=
  ∀ n, P2572729411080999205.a n = A102715 n

end A102715

/-! ## A102715.P13569714083274422856

`A000010(Δ[A102363(n)])`
-/

namespace A102715.P13569714083274422856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A102715.P13569714083274422856

namespace A102715

/-- `A000010(Δ[A102363(n)])` -/
def P13569714083274422856.Spec : Prop :=
  ∀ n, P13569714083274422856.a n = A102715 n

end A102715

/-! ## A102715.P13793828616301282175

`A000010(A014473(n)+1)`
-/

namespace A102715.P13793828616301282175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014473 n + 1).toNat

end

end A102715.P13793828616301282175

namespace A102715

/-- `A000010(A014473(n)+1)` -/
def P13793828616301282175.Spec : Prop :=
  ∀ n, P13793828616301282175.a n = A102715 n

theorem P13793828616301282175.correct : P13793828616301282175.Spec := by
  intro n
  simp only [A102715, Nat.add_sub_cancel, A102715.P13793828616301282175.a, A102715.P2461241469822846268.a, A000010, A000010.P4673923239450215316.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102715

/-! ## A102715.P8713416730564489019

`A000010(A038207(n)/A130321(n))`
-/

namespace A102715.P8713416730564489019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (A130321 n : ℚ))).toNat

end

end A102715.P8713416730564489019

namespace A102715

/-- `A000010(A038207(n)/A130321(n))` -/
def P8713416730564489019.Spec : Prop :=
  ∀ n, P8713416730564489019.a n = A102715 n

end A102715

/-! ## A102715.P11071789864475637340

`A000010(∑{d}[A130595(n), A000010(#)])`
-/

namespace A102715.P11071789864475637340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A102715.P11071789864475637340

namespace A102715

/-- `A000010(∑{d}[A130595(n), A000010(#)])` -/
def P11071789864475637340.Spec : Prop :=
  ∀ n, P11071789864475637340.a n = A102715 n

end A102715

/-! ## A102715.P7816059385238978752

`A349137(A109128(n))`
-/

namespace A102715.P7816059385238978752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A109128 n).toNat

end

end A102715.P7816059385238978752

namespace A102715

/-- `A349137(A109128(n))` -/
def P7816059385238978752.Spec : Prop :=
  ∀ n, P7816059385238978752.a n = A102715 n

end A102715

/-! ## A102715.P6825820495014625942

`A067541(A132752(n))`
-/

namespace A102715.P6825820495014625942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A132752 n).toNat

end

end A102715.P6825820495014625942

namespace A102715

/-- `A067541(A132752(n))` -/
def P6825820495014625942.Spec : Prop :=
  ∀ n, P6825820495014625942.a n = A102715 n

end A102715

/-! ## A102715.P13290515635202894557

`A309563(A166455(n))`
-/

namespace A102715.P13290515635202894557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309563 (A166455 n).toNat

end

end A102715.P13290515635202894557

namespace A102715

/-- `A309563(A166455(n))` -/
def P13290515635202894557.Spec : Prop :=
  ∀ n, P13290515635202894557.a n = A102715 n

end A102715

/-!
# A102716: Triangle read by rows: T(n,k) = sigma(binomial(n,k)) (0 <= k <= n), where sigma(m) is the sum of the positive divisors of m.

The programs for A102716, the canonical program `A102716.P17421779357386241539` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102716 has offset 0).

The definition of A102716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(C(row(n), col(n)))` (program `A102716.P17421779357386241539`, by `A102716.P17421779357386241539.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102716.P17421779357386241539

`A000203(C(row(n), col(n)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102716

/-- `A000203(C(row(n), col(n)))` -/
def P17421779357386241539.Spec : Prop :=
  ∀ n, P17421779357386241539.a n = A102716 n

theorem P17421779357386241539.correct : P17421779357386241539.Spec := by
  intro n
  simp only [A102716]

end A102716

/-! ## A102716.P1148781188070625620

`∑{d}[A007318(n), #]`
-/

namespace A102716.P1148781188070625620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P1148781188070625620

namespace A102716

/-- `∑{d}[A007318(n), #]` -/
def P1148781188070625620.Spec : Prop :=
  ∀ n, (P1148781188070625620.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P3609233451303110621

`∑{d}[A108086(n), #]`
-/

namespace A102716.P3609233451303110621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P3609233451303110621

namespace A102716

/-- `∑{d}[A108086(n), #]` -/
def P3609233451303110621.Spec : Prop :=
  ∀ n, (P3609233451303110621.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P1697078126497204947

`∑{d}[A117440(n), #]`
-/

namespace A102716.P1697078126497204947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P1697078126497204947

namespace A102716

/-- `∑{d}[A117440(n), #]` -/
def P1697078126497204947.Spec : Prop :=
  ∀ n, (P1697078126497204947.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P16663684998806179061

`∑{d}[A130595(n), #]`
-/

namespace A102716.P16663684998806179061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P16663684998806179061

namespace A102716

/-- `∑{d}[A130595(n), #]` -/
def P16663684998806179061.Spec : Prop :=
  ∀ n, (P16663684998806179061.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P11819949377593653964

`∑{d}[sqrt(A008459(n)), #]`
-/

namespace A102716.P11819949377593653964
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A102716.P11819949377593653964

namespace A102716

/-- `∑{d}[sqrt(A008459(n)), #]` -/
def P11819949377593653964.Spec : Prop :=
  ∀ n, (P11819949377593653964.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P4473726526850255324

`∑{d}[Δ[A102363(n)], #]`
-/

namespace A102716.P4473726526850255324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P4473726526850255324

namespace A102716

/-- `∑{d}[Δ[A102363(n)], #]` -/
def P4473726526850255324.Spec : Prop :=
  ∀ n, (P4473726526850255324.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P12133718594614414921

`∑{d}[A014473(n)+1, #]`
-/

namespace A102716.P12133718594614414921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P12133718594614414921

namespace A102716

/-- `∑{d}[A014473(n)+1, #]` -/
def P12133718594614414921.Spec : Prop :=
  ∀ n, (P12133718594614414921.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P8261594945298395908

`∑{d}[A154926(n+1), #]`
-/

namespace A102716.P8261594945298395908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P8261594945298395908

namespace A102716

/-- `∑{d}[A154926(n+1), #]` -/
def P8261594945298395908.Spec : Prop :=
  ∀ n, (P8261594945298395908.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P17420916281188342945

`∑{d}[A152905(2*n), #]`
-/

namespace A102716.P17420916281188342945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P17420916281188342945

namespace A102716

/-- `∑{d}[A152905(2*n), #]` -/
def P17420916281188342945.Spec : Prop :=
  ∀ n, (P17420916281188342945.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P5952835669551335877

`∑{d}[A028326(n)/2, #]`
-/

namespace A102716.P5952835669551335877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A102716.P5952835669551335877

namespace A102716

/-- `∑{d}[A028326(n)/2, #]` -/
def P5952835669551335877.Spec : Prop :=
  ∀ n, (P5952835669551335877.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P4778437554587978648

`∑{d}[A097805(comp[∑[n]]), #]`
-/

namespace A102716.P4778437554587978648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P4778437554587978648

namespace A102716

/-- `∑{d}[A097805(comp[∑[n]]), #]` -/
def P4778437554587978648.Spec : Prop :=
  ∀ n, (P4778437554587978648.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P3201813644621684965

`∑{d}[ceil(A131129(n)/3), #]`
-/

namespace A102716.P3201813644621684965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131129 n : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P3201813644621684965

namespace A102716

/-- `∑{d}[ceil(A131129(n)/3), #]` -/
def P3201813644621684965.Spec : Prop :=
  ∀ n, (P3201813644621684965.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P14228780532950368640

`∑{d}[ceil(A134059(n)/3), #]`
-/

namespace A102716.P14228780532950368640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P14228780532950368640

namespace A102716

/-- `∑{d}[ceil(A134059(n)/3), #]` -/
def P14228780532950368640.Spec : Prop :=
  ∀ n, (P14228780532950368640.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P11997604334550541024

`∑{d}[ceil(A134060(n)/3), #]`
-/

namespace A102716.P11997604334550541024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P11997604334550541024

namespace A102716

/-- `∑{d}[ceil(A134060(n)/3), #]` -/
def P11997604334550541024.Spec : Prop :=
  ∀ n, (P11997604334550541024.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P13635368494981629517

`∑{d}[ceil(A135089(n)/5), #]`
-/

namespace A102716.P13635368494981629517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P13635368494981629517

namespace A102716

/-- `∑{d}[ceil(A135089(n)/5), #]` -/
def P13635368494981629517.Spec : Prop :=
  ∀ n, (P13635368494981629517.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P13653547345921637745

`∑{d}[A285118(n)+A285116(n), #]`
-/

namespace A102716.P13653547345921637745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 n + A285116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A102716.P13653547345921637745

namespace A102716

/-- `∑{d}[A285118(n)+A285116(n), #]` -/
def P13653547345921637745.Spec : Prop :=
  ∀ n, (P13653547345921637745.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P15473327471223211343

`∑{d}[A176348(n)/A176346(n), #]`
-/

namespace A102716.P15473327471223211343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A102716.P15473327471223211343

namespace A102716

/-- `∑{d}[A176348(n)/A176346(n), #]` -/
def P15473327471223211343.Spec : Prop :=
  ∀ n, (P15473327471223211343.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P3523263245481253398

`∑{d}[gcd(A124927(n), A124928(n)), #]`
-/

namespace A102716.P3523263245481253398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124927 n) (A124928 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A102716.P3523263245481253398

namespace A102716

/-- `∑{d}[gcd(A124927(n), A124928(n)), #]` -/
def P3523263245481253398.Spec : Prop :=
  ∀ n, (P3523263245481253398.a n : ℤ) = A102716 n

end A102716

/-! ## A102716.P15304399675298271207

`∑{d}[C(A003056(n), A103823(n)), #]`
-/

namespace A102716.P15304399675298271207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A103823 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A102716.P15304399675298271207

namespace A102716

/-- `∑{d}[C(A003056(n), A103823(n)), #]` -/
def P15304399675298271207.Spec : Prop :=
  ∀ n, (P15304399675298271207.a n : ℤ) = A102716 n

end A102716

/-!
# A102717: "Lightest" sequence built with one "1", two "2", three "3", ..., nine "9" (and no "0"). The weight of such a sequence is the total sum of its integers [the sequence is finite, by definition and a(n+1) must be > a(n)].

The programs for A102717, there is no canonical definition to state claims against.
-/

/-! ## A102717.P13108825725313546643

`eq[A010879(n), A047813(A111708(n))]`
-/

namespace A102717.P13108825725313546643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A111708 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102717.P13108825725313546643

/-! ## A102717.P4959096086715857042

`lt[A045503(A182324(n)), A045503(n)]`
-/

namespace A102717.P4959096086715857042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 (A182324 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102717.P4959096086715857042

/-! ## A102717.P12967152662803583665

`lt[A045512(A182324(n)), A045512(n)]`
-/

namespace A102717.P12967152662803583665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A182324 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102717.P12967152662803583665

/-! ## A102717.P17463839418673200966

`lt[A061601(n), A227362(A355222(n))]`
-/

namespace A102717.P17463839418673200966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A355222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102717.P17463839418673200966

/-! ## A102717.P2447514577842757331

`lt[A348783(A182324(n)), A348783(n)]`
-/

namespace A102717.P2447514577842757331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (A182324 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102717.P2447514577842757331

/-!
# A102718: a(n) = a(n-1) + (sum of the last two digits of the sequence so far); a(0)=0; a(1)=1.

The programs for A102718, there is no canonical definition to state claims against.
-/

/-! ## A102718.P9324991122067516319

`eq[A003056(floor(2*n*(2*n+1)²/(n+1))+1)%3, A043560(n)]`
-/

namespace A102718.P9324991122067516319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (⌊(2 * n : ℚ) * (((2 * n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))⌋ + 1).toNat) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102718.P9324991122067516319

/-!
# A102721: Numbers n such that 11*n + 13 is prime.

The programs for A102721, the canonical program `A102721.P3616189499359060768` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102721 has offset 1).

The definition of A102721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102721.P3616189499359060768

`A111312(n+2)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102721

/-- `A111312(n+2)-1` -/
def P3616189499359060768.Spec : Prop :=
  ∀ n, P3616189499359060768.a n = A102721 (n + 1)

theorem P3616189499359060768.correct : P3616189499359060768.Spec := by
  intro n
  simp only [A102721, Nat.add_sub_cancel]

end A102721

/-! ## A102721.P16507883029504967601

`A106690(n+2)-10`
-/

namespace A102721.P16507883029504967601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106690 (n + 2) - 10

end

end A102721.P16507883029504967601

namespace A102721

/-- `A106690(n+2)-10` -/
def P16507883029504967601.Spec : Prop :=
  ∀ n, P16507883029504967601.a n = A102721 (n + 1)

theorem P16507883029504967601.correct : P16507883029504967601.Spec := by
  intro n
  simp only [A102721, Nat.add_sub_cancel, A102721.P16507883029504967601.a, A102721.P3616189499359060768.a, A106690, A106690.P4249036395545775294.f1, A106690.P4249036395545775294.a, A111312, A111312.P7205974306783462108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102721

/-! ## A102721.P8211139582123714497

`xor(A057427(A008619(n)), A111312(n+2))`
-/

namespace A102721.P8211139582123714497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A008619 n).toNat) (A111312 (n + 2))

end

end A102721.P8211139582123714497

namespace A102721

/-- `xor(A057427(A008619(n)), A111312(n+2))` -/
def P8211139582123714497.Spec : Prop :=
  ∀ n, P8211139582123714497.a n = A102721 (n + 1)

end A102721

/-! ## A102721.P880291206099484479

`xor(A057427(A002260(n+1)), A111312(n+2))`
-/

namespace A102721.P880291206099484479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A002260 (n + 1)).toNat) (A111312 (n + 2))

end

end A102721.P880291206099484479

namespace A102721

/-- `xor(A057427(A002260(n+1)), A111312(n+2))` -/
def P880291206099484479.Spec : Prop :=
  ∀ n, P880291206099484479.a n = A102721 (n + 1)

end A102721

/-! ## A102721.P2941012533336119973

`A004442(A111312(n+2))`
-/

namespace A102721.P2941012533336119973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A111312 (n + 2)).toNat

end

end A102721.P2941012533336119973

namespace A102721

/-- `A004442(A111312(n+2))` -/
def P2941012533336119973.Spec : Prop :=
  ∀ n, P2941012533336119973.a n = A102721 (n + 1)

end A102721

/-! ## A102721.P11263258002958859922

`A023452(A106690(n+2))`
-/

namespace A102721.P11263258002958859922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023452 (A106690 (n + 2)).toNat

end

end A102721.P11263258002958859922

namespace A102721

/-- `A023452(A106690(n+2))` -/
def P11263258002958859922.Spec : Prop :=
  ∀ n, P11263258002958859922.a n = A102721 (n + 1)

end A102721

/-! ## A102721.P18071024102179224537

`lt[7*n, A020639(11*(n+1)+2)-1]`
-/

namespace A102721.P18071024102179224537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * (n + 1) + 2) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102721.P18071024102179224537

namespace A102721

/-- `lt[7*n, A020639(11*(n+1)+2)-1]` -/
def P18071024102179224537.Spec : Prop :=
  ∀ n, (P18071024102179224537.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P1147314111440475919

`eq[1, A010051(A017413(n+1))]`
-/

namespace A102721.P1147314111440475919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A017413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102721.P1147314111440475919

namespace A102721

/-- `eq[1, A010051(A017413(n+1))]` -/
def P1147314111440475919.Spec : Prop :=
  ∀ n, (P1147314111440475919.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P11526825134030368692

`eq[1, A001222(sqrt(A017414(n+1)))]`
-/

namespace A102721.P11526825134030368692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A017414 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102721.P11526825134030368692

namespace A102721

/-- `eq[1, A001222(sqrt(A017414(n+1)))]` -/
def P11526825134030368692.Spec : Prop :=
  ∀ n, (P11526825134030368692.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P10573149916421062691

`eq[A000010(A017413(n+1)), A017401(n+1)]`
-/

namespace A102721.P10573149916421062691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017413 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102721.P10573149916421062691

namespace A102721

/-- `eq[A000010(A017413(n+1)), A017401(n+1)]` -/
def P10573149916421062691.Spec : Prop :=
  ∀ n, (P10573149916421062691.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P3818493273864796302

`eq[2, A000005(A016969(n+1)+A016873(n))]`
-/

namespace A102721.P3818493273864796302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016969 (n + 1) + A016873 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102721.P3818493273864796302

namespace A102721

/-- `eq[2, A000005(A016969(n+1)+A016873(n))]` -/
def P3818493273864796302.Spec : Prop :=
  ∀ n, (P3818493273864796302.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P11795661714251846557

`lt[A001222(A016969(n+1)+A016873(n)), 2]`
-/

namespace A102721.P11795661714251846557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (n + 1) + A016873 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102721.P11795661714251846557

namespace A102721

/-- `lt[A001222(A016969(n+1)+A016873(n)), 2]` -/
def P11795661714251846557.Spec : Prop :=
  ∀ n, (P11795661714251846557.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P17293485512401252639

`lt[A001222(A016969(n+1)+A016885(n)-1), 2]`
-/

namespace A102721.P17293485512401252639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (n + 1) + A016885 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102721.P17293485512401252639

namespace A102721

/-- `lt[A001222(A016969(n+1)+A016885(n)-1), 2]` -/
def P17293485512401252639.Spec : Prop :=
  ∀ n, (P17293485512401252639.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P361377044206257567

`xor(A006466(∑[n]), A111312(n+2))`
-/

namespace A102721.P361377044206257567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006466 (∑ j ∈ Finset.range (n + 1), f1 j)) (A111312 (n + 2))

end

end A102721.P361377044206257567

namespace A102721

/-- `xor(A006466(∑[n]), A111312(n+2))` -/
def P361377044206257567.Spec : Prop :=
  ∀ n, P361377044206257567.a n = A102721 (n + 1)

end A102721

/-! ## A102721.P7783259558455441060

`A262115(A090187(n+2))-1`
-/

namespace A102721.P7783259558455441060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (A090187 (n + 2)).toNat - 1

end

end A102721.P7783259558455441060

namespace A102721

/-- `A262115(A090187(n+2))-1` -/
def P7783259558455441060.Spec : Prop :=
  ∀ n, P7783259558455441060.a n = A102721 (n + 1)

end A102721

/-! ## A102721.P2392100702526621427

`eq[1, A051700(A017509(n)+2)]`
-/

namespace A102721.P2392100702526621427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A017509 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102721.P2392100702526621427

namespace A102721

/-- `eq[1, A051700(A017509(n)+2)]` -/
def P2392100702526621427.Spec : Prop :=
  ∀ n, (P2392100702526621427.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P12568949593701030434

`eq[2, A085099(A017377(n)+n)]`
-/

namespace A102721.P12568949593701030434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A017377 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102721.P12568949593701030434

namespace A102721

/-- `eq[2, A085099(A017377(n)+n)]` -/
def P12568949593701030434.Spec : Prop :=
  ∀ n, (P12568949593701030434.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P9011216114402940926

`lt[n, A014963(A017509(n)+3)]`
-/

namespace A102721.P9011216114402940926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017509 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102721.P9011216114402940926

namespace A102721

/-- `lt[n, A014963(A017509(n)+3)]` -/
def P9011216114402940926.Spec : Prop :=
  ∀ n, (P9011216114402940926.a n : ℤ) = A102721 (n + 1)

end A102721

/-! ## A102721.P8700331973559891490

`A262115(p?[A017413(n+1)])-1`
-/

namespace A102721.P8700331973559891490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A102721.P8700331973559891490

namespace A102721

/-- `A262115(p?[A017413(n+1)])-1` -/
def P8700331973559891490.Spec : Prop :=
  ∀ n, P8700331973559891490.a n = A102721 (n + 1)

end A102721

/-! ## A102721.P2265905341989580289

`eq[A032742(A017413(n+1)), A038712(2*n+1)]`
-/

namespace A102721.P2265905341989580289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017413 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102721.P2265905341989580289

namespace A102721

/-- `eq[A032742(A017413(n+1)), A038712(2*n+1)]` -/
def P2265905341989580289.Spec : Prop :=
  ∀ n, (P2265905341989580289.a n : ℤ) = A102721 (n + 1)

end A102721

/-!
# A102722: Given n, sum all division remainders {n/k}, with k=1,...,n. The value a(n) is given by the floor of that sum. Note that {x}:=x-[x].

The programs for A102722, the canonical program `A102722.P15212480551384616353` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102722 has offset 1).

The definition of A102722 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052488, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102722.P15212480551384616353

`A052488(n+1)-A006218(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102722

/-- `A052488(n+1)-A006218(n+1)` -/
def P15212480551384616353.Spec : Prop :=
  ∀ n, P15212480551384616353.a n = A102722 (n + 1)

theorem P15212480551384616353.correct : P15212480551384616353.Spec := by
  intro n
  simp only [A102722, Nat.add_sub_cancel]

end A102722

/-! ## A102722.P14054496406903584703

`A052488(n+1)-∑[A000005(n+1)]`
-/

namespace A102722.P14054496406903584703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102722.P14054496406903584703

namespace A102722

/-- `A052488(n+1)-∑[A000005(n+1)]` -/
def P14054496406903584703.Spec : Prop :=
  ∀ n, P14054496406903584703.a n = A102722 (n + 1)

end A102722

/-! ## A102722.P7990616402964201981

`A052488(n+1)%A006218(A000027(n+1))`
-/

namespace A102722.P7990616402964201981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052488 (n + 1)) (A006218 (A000027 (n + 1)).toNat)

end

end A102722.P7990616402964201981

namespace A102722

/-- `A052488(n+1)%A006218(A000027(n+1))` -/
def P7990616402964201981.Spec : Prop :=
  ∀ n, P7990616402964201981.a n = A102722 (n + 1)

end A102722

/-! ## A102722.P6811379561886946124

`A052488(n+1)-∑[A001227(n+1)*A001511(n+1)]`
-/

namespace A102722.P6811379561886946124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102722.P6811379561886946124

namespace A102722

/-- `A052488(n+1)-∑[A001227(n+1)*A001511(n+1)]` -/
def P6811379561886946124.Spec : Prop :=
  ∀ n, P6811379561886946124.a n = A102722 (n + 1)

end A102722

/-! ## A102722.P3996859844004071078

`A052488(n+1)-Δ[A078567(n+1)]`
-/

namespace A102722.P3996859844004071078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1) - (f1 (n + 1) - f1 n)

end

end A102722.P3996859844004071078

namespace A102722

/-- `A052488(n+1)-Δ[A078567(n+1)]` -/
def P3996859844004071078.Spec : Prop :=
  ∀ n, P3996859844004071078.a n = A102722 (n + 1)

end A102722

/-! ## A102722.P12614740483384857489

`A002262(A161664(n+1)+A052488(n+1))`
-/

namespace A102722.P12614740483384857489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A161664 (n + 1) + A052488 (n + 1)).toNat

end

end A102722.P12614740483384857489

namespace A102722

/-- `A002262(A161664(n+1)+A052488(n+1))` -/
def P12614740483384857489.Spec : Prop :=
  ∀ n, P12614740483384857489.a n = A102722 (n + 1)

end A102722

/-!
# A102723: Smallest prime a(n) such that a(n)-x and a(n)+x, for x=1 to n, are all composite.

The programs for A102723, there is no canonical definition to state claims against.
-/

/-! ## A102723.P6367781895046773802

`A120937(∑[char[A348215(n+1)]])`
-/

namespace A102723.P6367781895046773802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348215 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102723.P6367781895046773802

/-! ## A102723.P2010459092245048354

`A120937(ceil(n/2)+1)`
-/

namespace A102723.P2010459092245048354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 (⌈(n : ℚ) / 2⌉ + 1).toNat

end

end A102723.P2010459092245048354

/-! ## A102723.P5340365214069049882

`or(1, A120937(A080513(n)))`
-/

namespace A102723.P5340365214069049882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120937 (A080513 n).toNat)

end

end A102723.P5340365214069049882

/-! ## A102723.P4099969342038624295

`or(1, A120937(A008619(n+1)))`
-/

namespace A102723.P4099969342038624295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120937 (A008619 (n + 1)).toNat)

end

end A102723.P4099969342038624295

/-! ## A102723.P11638140725278816590

`A120937(A080513(n))%A017058(n)`
-/

namespace A102723.P11638140725278816590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120937 (A080513 n).toNat) (A017058 n)

end

end A102723.P11638140725278816590

/-! ## A102723.P12986293196845075455

`lcm(A033999(n), A120937(A008619(n+1)))`
-/

namespace A102723.P12986293196845075455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A120937 (A008619 (n + 1)).toNat)

end

end A102723.P12986293196845075455

/-! ## A102723.P14736768793251365159

`A120937(A008619(n+1))+A000038(n+1)`
-/

namespace A102723.P14736768793251365159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 (A008619 (n + 1)).toNat + A000038 (n + 1)

end

end A102723.P14736768793251365159

/-! ## A102723.P14326563327755188197

`A120937(A008619(n+1))+A000035(2*n)`
-/

namespace A102723.P14326563327755188197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 (A008619 (n + 1)).toNat + A000035 (2 * n)

end

end A102723.P14326563327755188197

/-! ## A102723.P5070741711605127091

`A120937(A080513(n))+A008683(9*(n+1))`
-/

namespace A102723.P5070741711605127091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 (A080513 n).toNat + A008683 (9 * (n + 1))

end

end A102723.P5070741711605127091

/-! ## A102723.P11681485608502134228

`A120937(A008619(n+1))%A000045(n+8)`
-/

namespace A102723.P11681485608502134228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120937 (A008619 (n + 1)).toNat) (A000045 (n + 8))

end

end A102723.P11681485608502134228

/-!
# A102724: Sum of the first n pairs of consecutive primes (for example, a(3) = (2+3) + (3+5) + (5+7) = 25).

The programs for A102724, the canonical program `A102724.P16150721763580803239` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102724 has offset 1).

The definition of A102724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102724.P16150721763580803239

`∑[A001043(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102724

/-- `∑[A001043(n+1)]` -/
def P16150721763580803239.Spec : Prop :=
  ∀ n, P16150721763580803239.a n = A102724 (n + 1)

theorem P16150721763580803239.correct : P16150721763580803239.Spec := by
  intro n
  simp only [A102724, Nat.add_sub_cancel]

end A102724

/-! ## A102724.P17311320954564461341

`∑[A011974(n+2)]`
-/

namespace A102724.P17311320954564461341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P17311320954564461341

namespace A102724

/-- `∑[A011974(n+2)]` -/
def P17311320954564461341.Spec : Prop :=
  ∀ n, P17311320954564461341.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P12950491122292371108

`A061802(n+1)-2`
-/

namespace A102724.P12950491122292371108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 (n + 1) - 2

end

end A102724.P12950491122292371108

namespace A102724

/-- `A061802(n+1)-2` -/
def P12950491122292371108.Spec : Prop :=
  ∀ n, P12950491122292371108.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P17205788835968435191

`∑[A092949(n+1)-1]`
-/

namespace A102724.P17205788835968435191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P17205788835968435191

namespace A102724

/-- `∑[A092949(n+1)-1]` -/
def P17205788835968435191.Spec : Prop :=
  ∀ n, P17205788835968435191.a n = A102724 (n + 1)

theorem P17205788835968435191.correct : P17205788835968435191.Spec := by
  intro n
  simp only [A102724, Nat.add_sub_cancel, A102724.P17205788835968435191.f1, A102724.P17205788835968435191.a, A102724.P16150721763580803239.f1, A102724.P16150721763580803239.a, A001043, A001043.P18269783162673735460.a, A092949, A092949.P1382492647621219255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102724

/-! ## A102724.P8655786896496676597

`2*A073612(n+2)-3`
-/

namespace A102724.P8655786896496676597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073612 (n + 2) - 3

end

end A102724.P8655786896496676597

namespace A102724

/-- `2*A073612(n+2)-3` -/
def P8655786896496676597.Spec : Prop :=
  ∀ n, P8655786896496676597.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P8877284909249296453

`∑[ceil(2*sqrt(A006094(n+1)))]`
-/

namespace A102724.P8877284909249296453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A006094 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P8877284909249296453

namespace A102724

/-- `∑[ceil(2*sqrt(A006094(n+1)))]` -/
def P8877284909249296453.Spec : Prop :=
  ∀ n, P8877284909249296453.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P16060245823644009115

`∑[record[A001043(A331745(n))]]`
-/

namespace A102724.P16060245823644009115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P16060245823644009115

namespace A102724

/-- `∑[record[A001043(A331745(n))]]` -/
def P16060245823644009115.Spec : Prop :=
  ∀ n, P16060245823644009115.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P2721772389508000551

`∑[A033287(n)-A062357(n+1)]`
-/

namespace A102724.P2721772389508000551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A062357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P2721772389508000551

namespace A102724

/-- `∑[A033287(n)-A062357(n+1)]` -/
def P2721772389508000551.Spec : Prop :=
  ∀ n, P2721772389508000551.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P14728472779095094677

`∑[A007504(n+2)-A007504(n)]`
-/

namespace A102724.P14728472779095094677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P14728472779095094677

namespace A102724

/-- `∑[A007504(n+2)-A007504(n)]` -/
def P14728472779095094677.Spec : Prop :=
  ∀ n, P14728472779095094677.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P4817634099638347241

`A071148(n+1)+A007504(n+1)`
-/

namespace A102724.P4817634099638347241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1) + A007504 (n + 1)

end

end A102724.P4817634099638347241

namespace A102724

/-- `A071148(n+1)+A007504(n+1)` -/
def P4817634099638347241.Spec : Prop :=
  ∀ n, P4817634099638347241.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P5892864267391127153

`∑[A065091(n+1)+Δ[A007504(n)]]`
-/

namespace A102724.P5892864267391127153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P5892864267391127153

namespace A102724

/-- `∑[A065091(n+1)+Δ[A007504(n)]]` -/
def P5892864267391127153.Spec : Prop :=
  ∀ n, P5892864267391127153.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P7844515572668309845

`∑[A065091(n+1)+A000040(n+1)]`
-/

namespace A102724.P7844515572668309845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P7844515572668309845

namespace A102724

/-- `∑[A065091(n+1)+A000040(n+1)]` -/
def P7844515572668309845.Spec : Prop :=
  ∀ n, P7844515572668309845.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P610407883096504176

`A237589(n+1)+A343859(n+1)+2`
-/

namespace A102724.P610407883096504176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + (A343859 (n + 1) + 2)

end

end A102724.P610407883096504176

namespace A102724

/-- `A237589(n+1)+A343859(n+1)+2` -/
def P610407883096504176.Spec : Prop :=
  ∀ n, P610407883096504176.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P599430643194480468

`Δ[A023662(n+1)]-2`
-/

namespace A102724.P599430643194480468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A102724.P599430643194480468

namespace A102724

/-- `Δ[A023662(n+1)]-2` -/
def P599430643194480468.Spec : Prop :=
  ∀ n, P599430643194480468.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P2360455175705794352

`A343859(n+1)+A014284(n+2)`
-/

namespace A102724.P2360455175705794352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343859 (n + 1) + A014284 (n + 2)

end

end A102724.P2360455175705794352

namespace A102724

/-- `A343859(n+1)+A014284(n+2)` -/
def P2360455175705794352.Spec : Prop :=
  ∀ n, P2360455175705794352.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P7254001590687515246

`A237589(n+1)+A237589(n+2)`
-/

namespace A102724.P7254001590687515246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + A237589 (n + 2)

end

end A102724.P7254001590687515246

namespace A102724

/-- `A237589(n+1)+A237589(n+2)` -/
def P7254001590687515246.Spec : Prop :=
  ∀ n, P7254001590687515246.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P8949006021713549149

`∑[A000040(n+1)+A000040(n+2)]`
-/

namespace A102724.P8949006021713549149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P8949006021713549149

namespace A102724

/-- `∑[A000040(n+1)+A000040(n+2)]` -/
def P8949006021713549149.Spec : Prop :=
  ∀ n, P8949006021713549149.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P15362656175380483532

`∑[A008864(n+1)+A006093(n+2)]`
-/

namespace A102724.P15362656175380483532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P15362656175380483532

namespace A102724

/-- `∑[A008864(n+1)+A006093(n+2)]` -/
def P15362656175380483532.Spec : Prop :=
  ∀ n, P15362656175380483532.a n = A102724 (n + 1)

theorem P15362656175380483532.correct : P15362656175380483532.Spec := by
  intro n
  simp only [A102724, Nat.add_sub_cancel, A102724.P15362656175380483532.f1, A102724.P15362656175380483532.a, A102724.P16150721763580803239.f1, A102724.P16150721763580803239.a, A001043, A001043.P18269783162673735460.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102724

/-! ## A102724.P298845506490369839

`∑[A028815(n+1)+A006093(n+2)]`
-/

namespace A102724.P298845506490369839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P298845506490369839

namespace A102724

/-- `∑[A028815(n+1)+A006093(n+2)]` -/
def P298845506490369839.Spec : Prop :=
  ∀ n, P298845506490369839.a n = A102724 (n + 1)

end A102724

/-! ## A102724.P15311325573568427798

`∑[A008578(n+2)+A006005(n+2)]`
-/

namespace A102724.P15311325573568427798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102724.P15311325573568427798

namespace A102724

/-- `∑[A008578(n+2)+A006005(n+2)]` -/
def P15311325573568427798.Spec : Prop :=
  ∀ n, P15311325573568427798.a n = A102724 (n + 1)

end A102724

/-!
# A102725: Smallest prime equal to the sum of n distinct pairs of consecutive primes.

The programs for A102725, there is no canonical definition to state claims against.
-/

/-! ## A102725.P4553754306868791530

`A304713(A328190(2*(n+1))+A325325(2*n+1))`
-/

namespace A102725.P4553754306868791530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (A328190 (2 * (n + 1)) + A325325 (2 * n + 1)).toNat

end

end A102725.P4553754306868791530

/-!
# A102726: Number of compositions of the integer n into positive parts that avoid a fixed pattern of three letters.

The programs for A102726, there is no canonical definition to state claims against.
-/

/-! ## A102726.P7417996545692325291

`A011782(n)-A335514(n)`
-/

namespace A102726.P7417996545692325291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A335514 n

end

end A102726.P7417996545692325291

/-! ## A102726.P7860405897571106046

`A016116(A163985(n))-A335514(n)`
-/

namespace A102726.P7860405897571106046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A163985 n).toNat - A335514 n

end

end A102726.P7860405897571106046

/-! ## A102726.P1807081936443722760

`A336269(n)+A336273(n)-A335514(n)`
-/

namespace A102726.P1807081936443722760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336269 n + (A336273 n - A335514 n)

end

end A102726.P1807081936443722760

/-! ## A102726.P11754680313226885865

`Δ[A056469(n)]-A335514(n)`
-/

namespace A102726.P11754680313226885865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335514 n

end

end A102726.P11754680313226885865

/-! ## A102726.P11042018932451300447

`Δ[A131577(n)]-A335514(n)`
-/

namespace A102726.P11042018932451300447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335514 n

end

end A102726.P11042018932451300447

/-! ## A102726.P16192499138371673972

`A102363(A161680(n))-A335514(n)`
-/

namespace A102726.P16192499138371673972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A161680 n).toNat - A335514 n

end

end A102726.P16192499138371673972

/-!
# A102728: Array read by antidiagonals: T(n, k) = ((n+1)^k-(n-1)^k)/2.

The programs for A102728, the canonical program `A102728.P7880871544122586456` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102728 has offset 0).

The definition of A102728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102728.P7880871544122586456

`((row(n)-col(n)+1)^col(n)-(row(n)-col(n)-1)^col(n))/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102728

/-- `((row(n)-col(n)+1)^col(n)-(row(n)-col(n)-1)^col(n))/2` -/
def P7880871544122586456.Spec : Prop :=
  ∀ n, P7880871544122586456.a n = (A102728 n : ℚ)

end A102728

/-! ## A102728.P1541012503416453272

`and(A119416(A308504(n+1)), A227578(n))`
-/

namespace A102728.P1541012503416453272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119416 (A308504 (n + 1)).toNat) (A227578 n)

end

end A102728.P1541012503416453272

namespace A102728

/-- `and(A119416(A308504(n+1)), A227578(n))` -/
def P1541012503416453272.Spec : Prop :=
  ∀ n, P1541012503416453272.a n = A102728 n

end A102728

/-! ## A102728.P4448177255491031735

`A262495(n)%A318255(2*n)`
-/

namespace A102728.P4448177255491031735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262495 n) (A318255 (2 * n))

end

end A102728.P4448177255491031735

namespace A102728

/-- `A262495(n)%A318255(2*n)` -/
def P4448177255491031735.Spec : Prop :=
  ∀ n, P4448177255491031735.a n = A102728 n

end A102728

/-! ## A102728.P12544243501840700721

`A364912(n)%A341541(A206455(n+1))`
-/

namespace A102728.P12544243501840700721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364912 n) (A341541 (A206455 (n + 1)).toNat)

end

end A102728.P12544243501840700721

namespace A102728

/-- `A364912(n)%A341541(A206455(n+1))` -/
def P12544243501840700721.Spec : Prop :=
  ∀ n, P12544243501840700721.a n = A102728 n

end A102728

/-! ## A102728.P14547238966813975724

`A083918(A014664(3*(n+2))*A064298(n+1))`
-/

namespace A102728.P14547238966813975724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (A014664 (3 * (n + 2)) * A064298 (n + 1)).toNat

end

end A102728.P14547238966813975724

namespace A102728

/-- `A083918(A014664(3*(n+2))*A064298(n+1))` -/
def P14547238966813975724.Spec : Prop :=
  ∀ n, P14547238966813975724.a n = A102728 n

end A102728

/-!
# A102731: Numbers k such that 11*k + 23 is prime.

The programs for A102731, the canonical program `A102731.P15648990086754285571` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102731 has offset 1).

The definition of A102731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102731.P15648990086754285571

`A102656(n+1)-2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102731

/-- `A102656(n+1)-2` -/
def P15648990086754285571.Spec : Prop :=
  ∀ n, P15648990086754285571.a n = A102731 (n + 1)

theorem P15648990086754285571.correct : P15648990086754285571.Spec := by
  intro n
  simp only [A102731, Nat.add_sub_cancel]

end A102731

/-! ## A102731.P9510379940069899330

`2*(A215667(n+1)-1)`
-/

namespace A102731.P9510379940069899330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A215667 (n + 1) - 1)

end

end A102731.P9510379940069899330

namespace A102731

/-- `2*(A215667(n+1)-1)` -/
def P9510379940069899330.Spec : Prop :=
  ∀ n, P9510379940069899330.a n = A102731 (n + 1)

theorem P9510379940069899330.correct : P9510379940069899330.Spec := by
  intro n
  simp only [A102731, Nat.add_sub_cancel, A102731.P9510379940069899330.a, A102731.P15648990086754285571.a, A102656, A102656.P8844784265076372744.a, A215667, A215667.P1287202979309322342.a, A141849, A141849.P13731461525299827843.f1, A141849.P13731461525299827843.f2, A141849.P13731461525299827843.a, A142049, A142049.P7957472508449430480.f1, A142049.P7957472508449430480.a, A142062, A142062.P18079343739128686435.f1, A142062.P18079343739128686435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102731

/-! ## A102731.P841581822968810916

`(A141849(n+1)-1)/11-2`
-/

namespace A102731.P841581822968810916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141849 (n + 1) - 1 : ℚ) / 11 - 2

end

end A102731.P841581822968810916

namespace A102731

/-- `(A141849(n+1)-1)/11-2` -/
def P841581822968810916.Spec : Prop :=
  ∀ n, P841581822968810916.a n = (A102731 (n + 1) : ℚ)

end A102731

/-! ## A102731.P2544948972686449625

`ceil(p?[a(n-1)+11]/11)-3` with `a(0)=6, a(1)=1`
-/

namespace A102731.P2544948972686449625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ - 3

end

end A102731.P2544948972686449625

namespace A102731

/-- `ceil(p?[a(n-1)+11]/11)-3` -/
def P2544948972686449625.Spec : Prop :=
  ∀ n, P2544948972686449625.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P17950070147439917485

`round(p?[a(n-1)+11]/11)-2` with `a(0)=10, a(1)=1`
-/

namespace A102731.P17950070147439917485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11) - 2

end

end A102731.P17950070147439917485

namespace A102731

/-- `round(p?[a(n-1)+11]/11)-2` -/
def P17950070147439917485.Spec : Prop :=
  ∀ n, P17950070147439917485.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P3576943614094795673

`A047231(A215667(n+1))`
-/

namespace A102731.P3576943614094795673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (A215667 (n + 1)).toNat

end

end A102731.P3576943614094795673

namespace A102731

/-- `A047231(A215667(n+1))` -/
def P3576943614094795673.Spec : Prop :=
  ∀ n, P3576943614094795673.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P6564287992524738739

`A005843(A215667(n+1)-1)`
-/

namespace A102731.P6564287992524738739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A215667 (n + 1) - 1).toNat

end

end A102731.P6564287992524738739

namespace A102731

/-- `A005843(A215667(n+1)-1)` -/
def P6564287992524738739.Spec : Prop :=
  ∀ n, P6564287992524738739.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P11022359811030011257

`A046666(A102656(n+1))`
-/

namespace A102731.P11022359811030011257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A102656 (n + 1)).toNat

end

end A102731.P11022359811030011257

namespace A102731

/-- `A046666(A102656(n+1))` -/
def P11022359811030011257.Spec : Prop :=
  ∀ n, P11022359811030011257.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P16400213230281907446

`eq[1, A001222(11*(n+2)+1)]`
-/

namespace A102731.P16400213230281907446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102731.P16400213230281907446

namespace A102731

/-- `eq[1, A001222(11*(n+2)+1)]` -/
def P16400213230281907446.Spec : Prop :=
  ∀ n, (P16400213230281907446.a n : ℤ) = A102731 (n + 1)

end A102731

/-! ## A102731.P17398705926201328020

`lt[A000005(11*(n+2)+1), 3]`
-/

namespace A102731.P17398705926201328020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * (n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102731.P17398705926201328020

namespace A102731

/-- `lt[A000005(11*(n+2)+1), 3]` -/
def P17398705926201328020.Spec : Prop :=
  ∀ n, (P17398705926201328020.a n : ℤ) = A102731 (n + 1)

end A102731

/-! ## A102731.P9257735332191956750

`abs(2-eq[2, A000005(11*n+1)])`
-/

namespace A102731.P9257735332191956750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)|

end

end A102731.P9257735332191956750

namespace A102731

/-- `abs(2-eq[2, A000005(11*n+1)])` -/
def P9257735332191956750.Spec : Prop :=
  ∀ n, P9257735332191956750.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P9285781343010708996

`lt[A001222(11*(n+1)+1), 2]-1`
-/

namespace A102731.P9285781343010708996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A102731.P9285781343010708996

namespace A102731

/-- `lt[A001222(11*(n+1)+1), 2]-1` -/
def P9285781343010708996.Spec : Prop :=
  ∀ n, P9285781343010708996.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P5866368864480813200

`2*(eq[2, A000005(22*n+1)]-1)`
-/

namespace A102731.P5866368864480813200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (22 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1)

end

end A102731.P5866368864480813200

namespace A102731

/-- `2*(eq[2, A000005(22*n+1)]-1)` -/
def P5866368864480813200.Spec : Prop :=
  ∀ n, P5866368864480813200.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P5920151537416876206

`eq[11*n, A000010(11*n+1)]-2`
-/

namespace A102731.P5920151537416876206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (11 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A102731.P5920151537416876206

namespace A102731

/-- `eq[11*n, A000010(11*n+1)]-2` -/
def P5920151537416876206.Spec : Prop :=
  ∀ n, P5920151537416876206.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P18391086751343612799

`lt[A000005(A017629(n)+3-n), 3]-1`
-/

namespace A102731.P18391086751343612799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017629 n + (3 - (n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A102731.P18391086751343612799

namespace A102731

/-- `lt[A000005(A017629(n)+3-n), 3]-1` -/
def P18391086751343612799.Spec : Prop :=
  ∀ n, P18391086751343612799.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P11639593187987069470

`eq[1, A054024(11*n+1)]-2`
-/

namespace A102731.P11639593187987069470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (11 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A102731.P11639593187987069470

namespace A102731

/-- `eq[1, A054024(11*n+1)]-2` -/
def P11639593187987069470.Spec : Prop :=
  ∀ n, P11639593187987069470.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P11969638940293451156

`A344420(A141849(n+1))-2`
-/

namespace A102731.P11969638940293451156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A141849 (n + 1)).toNat - 2

end

end A102731.P11969638940293451156

namespace A102731

/-- `A344420(A141849(n+1))-2` -/
def P11969638940293451156.Spec : Prop :=
  ∀ n, P11969638940293451156.a n = A102731 (n + 1)

end A102731

/-! ## A102731.P6326898690896075840

`A262115(A141849(n+1)+2)-2`
-/

namespace A102731.P6326898690896075840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262115 (A141849 (n + 1) + 2).toNat - 2

end

end A102731.P6326898690896075840

namespace A102731

/-- `A262115(A141849(n+1)+2)-2` -/
def P6326898690896075840.Spec : Prop :=
  ∀ n, P6326898690896075840.a n = A102731 (n + 1)

end A102731

/-!
# A102732: Primes of the form 13n+5.

The programs for A102732, the canonical program `A102732.P17968271667745353129` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102732 has offset 1).

The definition of A102732 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A102732.anchor (n : ℕ) (hn : 1 ≤ n) : A102732 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A102.A102732`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102732.P17968271667745353129

`∪[A142162(n+1), A142177(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102732

/-- `∪[A142162(n+1), A142177(n+1)]` -/
def P17968271667745353129.Spec : Prop :=
  ∀ n, (P17968271667745353129.a n : ℤ) = A102732 (n + 1)

theorem P17968271667745353129.correct : P17968271667745353129.Spec := by
  intro n
  simp only [A102732, Nat.add_sub_cancel]

end A102732

/-! ## A102732.P2616645823396082359

`∪[A142510(n+1), A142522(n+1)]`
-/

namespace A102732.P2616645823396082359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P2616645823396082359

namespace A102732

/-- `∪[A142510(n+1), A142522(n+1)]` -/
def P2616645823396082359.Spec : Prop :=
  ∀ n, (P2616645823396082359.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P6045000862075240044

`p?[13*n+5]`
-/

namespace A102732.P6045000862075240044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102732.P6045000862075240044

namespace A102732

/-- `p?[13*n+5]` -/
def P6045000862075240044.Spec : Prop :=
  ∀ n, (P6045000862075240044.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P14504844527650645841

`or(1, p?[13*n-8])`
-/

namespace A102732.P14504844527650645841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A102732.P14504844527650645841

namespace A102732

/-- `or(1, p?[13*n-8])` -/
def P14504844527650645841.Spec : Prop :=
  ∀ n, P14504844527650645841.a n = A102732 (n + 1)

end A102732

/-! ## A102732.P325215479378709713

`∩[A215131(n+1), A215168(n+1)]`
-/

namespace A102732.P325215479378709713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P325215479378709713

namespace A102732

/-- `∩[A215131(n+1), A215168(n+1)]` -/
def P325215479378709713.Spec : Prop :=
  ∀ n, (P325215479378709713.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P546526726033378907

`∩[A215131(n+1), A215211(n+1)]`
-/

namespace A102732.P546526726033378907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P546526726033378907

namespace A102732

/-- `∩[A215131(n+1), A215211(n+1)]` -/
def P546526726033378907.Spec : Prop :=
  ∀ n, (P546526726033378907.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P6316015924175387194

`∩[A215131(n+1), A215215(n+1)]`
-/

namespace A102732.P6316015924175387194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P6316015924175387194

namespace A102732

/-- `∩[A215131(n+1), A215215(n+1)]` -/
def P6316015924175387194.Spec : Prop :=
  ∀ n, (P6316015924175387194.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P5505978667131782339

`A154609(A154610(n+1))`
-/

namespace A102732.P5505978667131782339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 (A154610 (n + 1)).toNat

end

end A102732.P5505978667131782339

namespace A102732

/-- `A154609(A154610(n+1))` -/
def P5505978667131782339.Spec : Prop :=
  ∀ n, P5505978667131782339.a n = A102732 (n + 1)

end A102732

/-! ## A102732.P13393455879197526988

`∩[A009087(n+1), A154609(n)]`
-/

namespace A102732.P13393455879197526988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P13393455879197526988

namespace A102732

/-- `∩[A009087(n+1), A154609(n)]` -/
def P13393455879197526988.Spec : Prop :=
  ∀ n, (P13393455879197526988.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P11701662981262281503

`∩[A038884(n+1), A154609(n)]`
-/

namespace A102732.P11701662981262281503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P11701662981262281503

namespace A102732

/-- `∩[A038884(n+1), A154609(n)]` -/
def P11701662981262281503.Spec : Prop :=
  ∀ n, (P11701662981262281503.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P8439333560194561945

`∩[A040127(n+1), A154609(n)]`
-/

namespace A102732.P8439333560194561945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P8439333560194561945

namespace A102732

/-- `∩[A040127(n+1), A154609(n)]` -/
def P8439333560194561945.Spec : Prop :=
  ∀ n, (P8439333560194561945.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P12019375570268505189

`∩[A120330(n+1), A154609(n)]`
-/

namespace A102732.P12019375570268505189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P12019375570268505189

namespace A102732

/-- `∩[A120330(n+1), A154609(n)]` -/
def P12019375570268505189.Spec : Prop :=
  ∀ n, (P12019375570268505189.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P3972870466491616380

`∩[A167119(n+1), A154609(n)]`
-/

namespace A102732.P3972870466491616380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P3972870466491616380

namespace A102732

/-- `∩[A167119(n+1), A154609(n)]` -/
def P3972870466491616380.Spec : Prop :=
  ∀ n, (P3972870466491616380.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P17610820162019618566

`∩[A215103(n+1), A154609(n)]`
-/

namespace A102732.P17610820162019618566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P17610820162019618566

namespace A102732

/-- `∩[A215103(n+1), A154609(n)]` -/
def P17610820162019618566.Spec : Prop :=
  ∀ n, (P17610820162019618566.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P12583276205020597701

`∩[A215131(n+1), A154609(n)]`
-/

namespace A102732.P12583276205020597701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P12583276205020597701

namespace A102732

/-- `∩[A215131(n+1), A154609(n)]` -/
def P12583276205020597701.Spec : Prop :=
  ∀ n, (P12583276205020597701.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P6861128693512831775

`∩[A215155(n+1), A154609(n)]`
-/

namespace A102732.P6861128693512831775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P6861128693512831775

namespace A102732

/-- `∩[A215155(n+1), A154609(n)]` -/
def P6861128693512831775.Spec : Prop :=
  ∀ n, (P6861128693512831775.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P423341917230993774

`∩[A215168(n+1), A154609(n)]`
-/

namespace A102732.P423341917230993774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P423341917230993774

namespace A102732

/-- `∩[A215168(n+1), A154609(n)]` -/
def P423341917230993774.Spec : Prop :=
  ∀ n, (P423341917230993774.a n : ℤ) = A102732 (n + 1)

end A102732

/-! ## A102732.P5093778741515278648

`∩[A215211(n+1), A154609(n)]`
-/

namespace A102732.P5093778741515278648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P5093778741515278648

namespace A102732

/-- `∩[A215211(n+1), A154609(n)]` -/
def P5093778741515278648.Spec : Prop :=
  ∀ n, (P5093778741515278648.a n : ℤ) = A102732 (n + 1)

end A102732

/-!
# A102733: Numbers n such that 2*n + 101 is prime.

The programs for A102733, the canonical program `A102733.P8423406068844763618` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102733 has offset 1).

The definition of A102733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102733.P8227933826723656237

`eq[1, A001222(2*(n+50)+1)]`
-/

namespace A102733.P8227933826723656237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 50) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102733.P8227933826723656237

namespace A102733

/-- `eq[1, A001222(2*(n+50)+1)]` -/
def P8227933826723656237.Spec : Prop :=
  ∀ n, (P8227933826723656237.a n : ℤ) = A102733 (n + 1)

end A102733

/-! ## A102733.P6075810232005947739

`eq[2, A000005(2*(n+50)+1)]`
-/

namespace A102733.P6075810232005947739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 50) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102733.P6075810232005947739

namespace A102733

/-- `eq[2, A000005(2*(n+50)+1)]` -/
def P6075810232005947739.Spec : Prop :=
  ∀ n, (P6075810232005947739.a n : ℤ) = A102733 (n + 1)

end A102733

/-! ## A102733.P8423406068844763618

`eq[2*(n+50)+1, A006530(2*(n+50)+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A102733

/-- `eq[2*(n+50)+1, A006530(2*(n+50)+1)]` -/
def P8423406068844763618.Spec : Prop :=
  ∀ n, (P8423406068844763618.a n : ℤ) = A102733 (n + 1)

theorem P8423406068844763618.correct : P8423406068844763618.Spec := by
  intro n
  simp only [A102733, Nat.add_sub_cancel]

end A102733

/-! ## A102733.P6980009727547667020

`eq[2*(n+50)+1, A014963(2*(n+50)+1)]`
-/

namespace A102733.P6980009727547667020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 50) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 50) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102733.P6980009727547667020

namespace A102733

/-- `eq[2*(n+50)+1, A014963(2*(n+50)+1)]` -/
def P6980009727547667020.Spec : Prop :=
  ∀ n, (P6980009727547667020.a n : ℤ) = A102733 (n + 1)

end A102733

/-! ## A102733.P17246545362988207033

`A065033(record[A090368(n+51)])-51`
-/

namespace A102733.P17246545362988207033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 51)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 51

end

end A102733.P17246545362988207033

namespace A102733

/-- `A065033(record[A090368(n+51)])-51` -/
def P17246545362988207033.Spec : Prop :=
  ∀ n, P17246545362988207033.a n = A102733 (n + 1)

end A102733

/-! ## A102733.P14296144961299445483

`record[A008619(n)-A253249(A008458(n))]`
-/

namespace A102733.P14296144961299445483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A253249 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102733.P14296144961299445483

namespace A102733

/-- `record[A008619(n)-A253249(A008458(n))]` -/
def P14296144961299445483.Spec : Prop :=
  ∀ n, P14296144961299445483.a n = A102733 (n + 1)

end A102733

/-! ## A102733.P14942379344480983380

`record[A123108(n)-A095118(A008458(n))]`
-/

namespace A102733.P14942379344480983380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A095118 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102733.P14942379344480983380

namespace A102733

/-- `record[A123108(n)-A095118(A008458(n))]` -/
def P14942379344480983380.Spec : Prop :=
  ∀ n, P14942379344480983380.a n = A102733 (n + 1)

end A102733

/-! ## A102733.P17546284956828881272

`record[n-A317619(A003415(2*n+1))]`
-/

namespace A102733.P17546284956828881272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A317619 (A003415 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102733.P17546284956828881272

namespace A102733

/-- `record[n-A317619(A003415(2*n+1))]` -/
def P17546284956828881272.Spec : Prop :=
  ∀ n, P17546284956828881272.a n = A102733 (n + 1)

end A102733

/-!
# A102734: Primes of the form 23n+5.

The programs for A102734, the canonical program `A102734.P5484611886346672222` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102734 has offset 1).

The definition of A102734 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A102734.anchor (n : ℕ) (hn : 1 ≤ n) : A102734 n = (Nat.nth (fun p => p.Prime ∧ p % 23 = 5) (n - 1) : ℤ)` in `Proof.A102.A102734`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102734.P5484611886346672222

`p?[23*n+5]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102734

/-- `p?[23*n+5]` -/
def P5484611886346672222.Spec : Prop :=
  ∀ n, (P5484611886346672222.a n : ℤ) = A102734 (n + 1)

theorem P5484611886346672222.correct : P5484611886346672222.Spec := by
  intro n
  simp only [A102734, Nat.add_sub_cancel]

end A102734

/-! ## A102734.P12121174707116734462

`or(1, p?[a(n-1)+23])` with `a(0)=5`
-/

namespace A102734.P12121174707116734462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A102734.P12121174707116734462

namespace A102734

/-- `or(1, p?[a(n-1)+23])` -/
def P12121174707116734462.Spec : Prop :=
  ∀ n, (P12121174707116734462.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P7279886200937442726

`∩[A155450(n+1), A191065(n+1)]`
-/

namespace A102734.P7279886200937442726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102734.P7279886200937442726

namespace A102734

/-- `∩[A155450(n+1), A191065(n+1)]` -/
def P7279886200937442726.Spec : Prop :=
  ∀ n, (P7279886200937442726.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P11505378333634646638

`∩[A017581(2*n)-n, A009087(n+2)]`
-/

namespace A102734.P11505378333634646638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102734.P11505378333634646638

namespace A102734

/-- `∩[A017581(2*n)-n, A009087(n+2)]` -/
def P11505378333634646638.Spec : Prop :=
  ∀ n, (P11505378333634646638.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P9505211088045709864

`∩[A017581(2*n)-n, A000040(n+2)]`
-/

namespace A102734.P9505211088045709864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102734.P9505211088045709864

namespace A102734

/-- `∩[A017581(2*n)-n, A000040(n+2)]` -/
def P9505211088045709864.Spec : Prop :=
  ∀ n, (P9505211088045709864.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P12743074564601198384

`∩[A017581(2*n)-n, A006005(n+2)]`
-/

namespace A102734.P12743074564601198384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102734.P12743074564601198384

namespace A102734

/-- `∩[A017581(2*n)-n, A006005(n+2)]` -/
def P12743074564601198384.Spec : Prop :=
  ∀ n, (P12743074564601198384.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P836940425954595251

`∩[A017581(2*n)-n, A008578(n+2)]`
-/

namespace A102734.P836940425954595251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102734.P836940425954595251

namespace A102734

/-- `∩[A017581(2*n)-n, A008578(n+2)]` -/
def P836940425954595251.Spec : Prop :=
  ∀ n, (P836940425954595251.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P17751569054870084944

`∩[A017581(2*n)-n, A033946(n+2)]`
-/

namespace A102734.P17751569054870084944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102734.P17751569054870084944

namespace A102734

/-- `∩[A017581(2*n)-n, A033946(n+2)]` -/
def P17751569054870084944.Spec : Prop :=
  ∀ n, (P17751569054870084944.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P7321040906596884774

`∩[A017581(2*n)-n, A000430(n+2)]`
-/

namespace A102734.P7321040906596884774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (2 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102734.P7321040906596884774

namespace A102734

/-- `∩[A017581(2*n)-n, A000430(n+2)]` -/
def P7321040906596884774.Spec : Prop :=
  ∀ n, (P7321040906596884774.a n : ℤ) = A102734 (n + 1)

end A102734

/-! ## A102734.P12958757778889718350

`record[A020639(23*n+5)]`
-/

namespace A102734.P12958757778889718350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (23 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102734.P12958757778889718350

namespace A102734

/-- `record[A020639(23*n+5)]` -/
def P12958757778889718350.Spec : Prop :=
  ∀ n, P12958757778889718350.a n = A102734 (n + 1)

end A102734

/-! ## A102734.P5231314094717484331

`filter[A155450(2*n+1), A010051(#)]`
-/

namespace A102734.P5231314094717484331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A102734.P5231314094717484331

namespace A102734

/-- `filter[A155450(2*n+1), A010051(#)]` -/
def P5231314094717484331.Spec : Prop :=
  ∀ n, P5231314094717484331.a n = A102734 (n + 1)

end A102734

/-! ## A102734.P15551178542617797851

`filter[A155450(2*n+1), A355937(#)]`
-/

namespace A102734.P15551178542617797851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A102734.P15551178542617797851

namespace A102734

/-- `filter[A155450(2*n+1), A355937(#)]` -/
def P15551178542617797851.Spec : Prop :=
  ∀ n, P15551178542617797851.a n = A102734 (n + 1)

end A102734

/-! ## A102734.P1146019896826711584

`A034699(p?[A161709(n)+4+n])`
-/

namespace A102734.P1146019896826711584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102734.P1146019896826711584

namespace A102734

/-- `A034699(p?[A161709(n)+4+n])` -/
def P1146019896826711584.Spec : Prop :=
  ∀ n, P1146019896826711584.a n = A102734 (n + 1)

end A102734

/-! ## A102734.P13729438974614732145

`filter[A155450(2*n+1), A302777(#)]`
-/

namespace A102734.P13729438974614732145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A102734.P13729438974614732145

namespace A102734

/-- `filter[A155450(2*n+1), A302777(#)]` -/
def P13729438974614732145.Spec : Prop :=
  ∀ n, P13729438974614732145.a n = A102734 (n + 1)

end A102734

/-!
# A102736: Number of permutations of n elements without cycles whose length is a multiple of 3.

The programs for A102736, there is no canonical definition to state claims against.
-/

/-! ## A102736.P369271020933509532

`∏[abs(char[3*n]-n)]`
-/

namespace A102736.P369271020933509532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102736.P369271020933509532

/-! ## A102736.P10462890279067766754

`abs(∏[1-n²%3-n])`
-/

namespace A102736.P10462890279067766754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A102736.P10462890279067766754

/-! ## A102736.P5396693130965937837

`abs(∏[∑[n+1]%3-n])`
-/

namespace A102736.P5396693130965937837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A102736.P5396693130965937837

/-! ## A102736.P18042074852077564979

`(n-char[3*n])*a(n-1)` with `a(0)=1`
-/

namespace A102736.P18042074852077564979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * a (n - 1)

end

end A102736.P18042074852077564979

/-! ## A102736.P8562738124106559175

`-∏[∑[dr(3*n)%4]-(n+1)]`
-/

namespace A102736.P8562738124106559175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A102736.P8562738124106559175

/-! ## A102736.P17578819387400887505

`abs((n-C(n, lcm(3, n)))*a(n-1))` with `a(0)=1`
-/

namespace A102736.P17578819387400887505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |((n : ℤ) - (Nat.choose n (Nat.lcm 3 n) : ℤ)) * a (n - 1)|

end

end A102736.P17578819387400887505

/-! ## A102736.P9077347846746319230

`ceil((n-C(dr(n²), 9))*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A102736.P9077347846746319230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (Nat.choose (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)) 9 : ℤ)) * a (n - 1)

end

end A102736.P9077347846746319230

/-! ## A102736.P13032955189513607655

`ceil((n-val(∏{p}[n, #], 3))*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A102736.P13032955189513607655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 3 : ℤ)) * a (n - 1)

end

end A102736.P13032955189513607655

/-! ## A102736.P1446341284829109622

`-∏[A011655(n)-1+n]`
-/

namespace A102736.P1446341284829109622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A102736.P1446341284829109622

/-! ## A102736.P12992668194004360180

`abs(∏[n-A081585(n)%3])`
-/

namespace A102736.P12992668194004360180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A081585 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A102736.P12992668194004360180

/-!
# A102737: Numbers k such that 3*10^k - 11 is prime.

The programs for A102737, there is no canonical definition to state claims against.
-/

/-! ## A102737.P18064883070999185287

`xor(A055570(3*n+1), A075443(n))`
-/

namespace A102737.P18064883070999185287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055570 (3 * n + 1)) (A075443 n)

end

end A102737.P18064883070999185287

/-! ## A102737.P10585781016478216211

`eq[A319659(A006881(2*n+5)), A374748(n)]`
-/

namespace A102737.P10585781016478216211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319659 (A006881 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102737.P10585781016478216211

/-! ## A102737.P18395608955606793303

`A051731(n+1)+eq[A108299(n), A294018(3*n+5)]`
-/

namespace A102737.P18395608955606793303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294018 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A102737.P18395608955606793303

/-!
# A102741: a(n) = 3^4 * binomial(n+3, 4).

The programs for A102741, the canonical program `A102741.P7252880743115560391` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102741 has offset 1).

The definition of A102741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^4*C(n+4, 4)` (program `A102741.P7252880743115560391`, by `A102741.P7252880743115560391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102741.P7252880743115560391

`3^4*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102741

/-- `3^4*C(n+4, 4)` -/
def P7252880743115560391.Spec : Prop :=
  ∀ n, (P7252880743115560391.a n : ℤ) = A102741 (n + 1)

theorem P7252880743115560391.correct : P7252880743115560391.Spec := by
  intro n
  simp only [A102741, Nat.add_sub_cancel]

end A102741

/-! ## A102741.P6004571035834991866

`∑[∑[∑[81*(n+1)]]]`
-/

namespace A102741.P6004571035834991866
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102741.P6004571035834991866

namespace A102741

/-- `∑[∑[∑[81*(n+1)]]]` -/
def P6004571035834991866.Spec : Prop :=
  ∀ n, (P6004571035834991866.a n : ℤ) = A102741 (n + 1)

end A102741

/-! ## A102741.P9074813259827656310

`(4/n+1)*a(n-1)` with `a(0)=81`
-/

namespace A102741.P9074813259827656310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [81] fun n a =>
  (4 / (n : ℚ) + 1) * a (n - 1)

end

end A102741.P9074813259827656310

namespace A102741

/-- `(4/n+1)*a(n-1)` -/
def P9074813259827656310.Spec : Prop :=
  ∀ n, P9074813259827656310.a n = (A102741 (n + 1) : ℚ)

end A102741

/-! ## A102741.P13407467974814499420

`81*∑[A000292(n+1)]`
-/

namespace A102741.P13407467974814499420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102741.P13407467974814499420

namespace A102741

/-- `81*∑[A000292(n+1)]` -/
def P13407467974814499420.Spec : Prop :=
  ∀ n, P13407467974814499420.a n = A102741 (n + 1)

end A102741

/-! ## A102741.P6745137439846287685

`9*9*(A145126(n+1)-1)`
-/

namespace A102741.P6745137439846287685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (9 * (A145126 (n + 1) - 1))

end

end A102741.P6745137439846287685

namespace A102741

/-- `9*9*(A145126(n+1)-1)` -/
def P6745137439846287685.Spec : Prop :=
  ∀ n, P6745137439846287685.a n = A102741 (n + 1)

theorem P6745137439846287685.correct : P6745137439846287685.Spec := by
  intro n
  simp only [A102741, Nat.add_sub_cancel, A102741.P6745137439846287685.a, A102741.P7252880743115560391.a, A145126, A145126.P13807080772124324529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102741

/-! ## A102741.P15674112246363834676

`27*A050534(n+3)`
-/

namespace A102741.P15674112246363834676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A050534 (n + 3)

end

end A102741.P15674112246363834676

namespace A102741

/-- `27*A050534(n+3)` -/
def P15674112246363834676.Spec : Prop :=
  ∀ n, P15674112246363834676.a n = A102741 (n + 1)

theorem P15674112246363834676.correct : P15674112246363834676.Spec := by
  intro n
  simp only [A102741, Nat.add_sub_cancel, A102741.P15674112246363834676.a, A102741.P7252880743115560391.a, A050534, A050534.P12216670126680451922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102741

/-! ## A102741.P7876256533191420862

`9*9*A000332(n+4)`
-/

namespace A102741.P7876256533191420862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (9 * A000332 (n + 4))

end

end A102741.P7876256533191420862

namespace A102741

/-- `9*9*A000332(n+4)` -/
def P7876256533191420862.Spec : Prop :=
  ∀ n, P7876256533191420862.a n = A102741 (n + 1)

theorem P7876256533191420862.correct : P7876256533191420862.Spec := by
  intro n
  simp only [A102741, Nat.add_sub_cancel, A102741.P7876256533191420862.a, A102741.P7252880743115560391.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102741

/-! ## A102741.P13315593905852720380

`27*A000217(∑[n+2])`
-/

namespace A102741.P13315593905852720380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102741.P13315593905852720380

namespace A102741

/-- `27*A000217(∑[n+2])` -/
def P13315593905852720380.Spec : Prop :=
  ∀ n, P13315593905852720380.a n = A102741 (n + 1)

end A102741

/-! ## A102741.P5982512200596989341

`3*9*A000217(A000096(n+1))`
-/

namespace A102741.P5982512200596989341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (9 * A000217 (A000096 (n + 1)).toNat)

end

end A102741.P5982512200596989341

namespace A102741

/-- `3*9*A000217(A000096(n+1))` -/
def P5982512200596989341.Spec : Prop :=
  ∀ n, P5982512200596989341.a n = A102741 (n + 1)

end A102741

/-! ## A102741.P8960964449940084167

`3*A027468(∑[n+2])`
-/

namespace A102741.P8960964449940084167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027468 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102741.P8960964449940084167

namespace A102741

/-- `3*A027468(∑[n+2])` -/
def P8960964449940084167.Spec : Prop :=
  ∀ n, P8960964449940084167.a n = A102741 (n + 1)

end A102741

/-! ## A102741.P11137612443182928496

`A027465(A000217(n+5)-5)`
-/

namespace A102741.P11137612443182928496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A000217 (n + 5) - 5).toNat

end

end A102741.P11137612443182928496

namespace A102741

/-- `A027465(A000217(n+5)-5)` -/
def P11137612443182928496.Spec : Prop :=
  ∀ n, P11137612443182928496.a n = A102741 (n + 1)

end A102741

/-! ## A102741.P1907435348534447626

`A027465(A275414(A000217(n+3))+n)`
-/

namespace A102741.P1907435348534447626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A275414 (A000217 (n + 3)).toNat + (n : ℤ)).toNat

end

end A102741.P1907435348534447626

namespace A102741

/-- `A027465(A275414(A000217(n+3))+n)` -/
def P1907435348534447626.Spec : Prop :=
  ∀ n, P1907435348534447626.a n = A102741 (n + 1)

end A102741

/-!
# A102742: Elite primes: a prime number p is called elite if only a finite number of Fermat numbers 2^(2^n)+1 are quadratic residues mod p.

The programs for A102742, there is no canonical definition to state claims against.
-/

/-! ## A102742.P14239735902319226599

`p?[A129802(n+1)]`
-/

namespace A102742.P14239735902319226599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102742.P14239735902319226599

/-!
# A102743: Expansion of e.g.f. LambertW(-x)/(x*(x-1)).

The programs for A102743, the canonical program `A102743.P5771579103392466117` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102743 has offset 0).

The definition of A102743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102743.P5771579103392466117

`n*a(n-1)+(n+1)^(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102743

/-- `n*a(n-1)+(n+1)^(n-1)` -/
def P5771579103392466117.Spec : Prop :=
  ∀ n, P5771579103392466117.a n = (A102743 n : ℚ)

end A102743

/-! ## A102743.P13419079733913023330

`A277505(n)+Δ[A173249(n)]`
-/

namespace A102743.P13419079733913023330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277505 n + (f1 (n + 1) - f1 n)

end

end A102743.P13419079733913023330

namespace A102743

/-- `A277505(n)+Δ[A173249(n)]` -/
def P13419079733913023330.Spec : Prop :=
  ∀ n, P13419079733913023330.a n = A102743 n

end A102743

/-! ## A102743.P132350310814404646

`A277505(n)+A000272(n+1)`
-/

namespace A102743.P132350310814404646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277505 n + A000272 (n + 1)

end

end A102743.P132350310814404646

namespace A102743

/-- `A277505(n)+A000272(n+1)` -/
def P132350310814404646.Spec : Prop :=
  ∀ n, P132350310814404646.a n = A102743 n

end A102743

/-! ## A102743.P15826933923940381579

`A277505(n)+A088956(A000217(n))`
-/

namespace A102743.P15826933923940381579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277505 n + A088956 (A000217 n).toNat

end

end A102743.P15826933923940381579

namespace A102743

/-- `A277505(n)+A088956(A000217(n))` -/
def P15826933923940381579.Spec : Prop :=
  ∀ n, P15826933923940381579.a n = A102743 n

end A102743

/-! ## A102743.P201697751503972754

`A277505(n+1)/(n+1)`
-/

namespace A102743.P201697751503972754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277505 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A102743.P201697751503972754

namespace A102743

/-- `A277505(n+1)/(n+1)` -/
def P201697751503972754.Spec : Prop :=
  ∀ n, P201697751503972754.a n = (A102743 n : ℚ)

end A102743

/-!
# A102744: Integers that do not appear in the sequence (A102722) given by the floor of the sum of {n/k} while k=1,...,n. Here {x}:=x-[x].

The programs for A102744, there is no canonical definition to state claims against.
-/

/-! ## A102744.P10724144874737990405

`comp[A102722(n+1)]`
-/

namespace A102744.P10724144874737990405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102744.P10724144874737990405

/-!
# A102745: Number of distinct prime factors of four consecutively concatenated primes.

The programs for A102745, there is no canonical definition to state claims against.
-/

/-! ## A102745.P9919704987722203457

`ceil(A356756(n+1)/A174801(n+1))`
-/

namespace A102745.P9919704987722203457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A356756 (n + 1) : ℚ) / (A174801 (n + 1) : ℚ)⌉

end

end A102745.P9919704987722203457

/-! ## A102745.P11076338572419845207

`A001222(record[A324714(2*(n+2))])`
-/

namespace A102745.P11076338572419845207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324714 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102745.P11076338572419845207

/-! ## A102745.P11484920662150388840

`A003324(A164183(n)+A004868(n+1))`
-/

namespace A102745.P11484920662150388840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A164183 n + A004868 (n + 1)).toNat

end

end A102745.P11484920662150388840

/-! ## A102745.P9830354151518473327

`A352513(A140738(n+1)-A027861(n+3))`
-/

namespace A102745.P9830354151518473327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A140738 (n + 1) - A027861 (n + 3)).toNat

end

end A102745.P9830354151518473327

/-! ## A102745.P15490870197870618358

`A387079(A066739(2*n))+A286419(n+1)`
-/

namespace A102745.P15490870197870618358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387079 (A066739 (2 * n)).toNat + A286419 (n + 1)

end

end A102745.P15490870197870618358

/-!
# A102746: Number of distinct prime factors of concatenation of first n primes.

The programs for A102746, there is no canonical definition to state claims against.
-/

/-! ## A102746.P3609936625284177640

`A178798(A339650(n))+A001222(A103178(n+1))`
-/

namespace A102746.P3609936625284177640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A339650 n).toNat + A001222 (A103178 (n + 1)).toNat

end

end A102746.P3609936625284177640

/-! ## A102746.P14931688479366450692

`∑{e}[A103178(A077342(n+1)), #]`
-/

namespace A102746.P14931688479366450692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103178 (A077342 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102746.P14931688479366450692

/-! ## A102746.P6227602693990146514

`A285320(4*n)+A001222(A103178(n+1))`
-/

namespace A102746.P6227602693990146514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285320 (4 * n) + A001222 (A103178 (n + 1)).toNat

end

end A102746.P6227602693990146514

/-! ## A102746.P6741921204413437013

`A001222(A103178(n+1)%A004061(n+1))`
-/

namespace A102746.P6741921204413437013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A103178 (n + 1)) (A004061 (n + 1))).toNat

end

end A102746.P6741921204413437013

/-!
# A102748: a(n) is the least k such that (2^n)*(10^k) -1 or +1 is prime.

The programs for A102748, there is no canonical definition to state claims against.
-/

/-! ## A102748.P15881223828291007688

`A278297(A269467(n+3)-3)/2`
-/

namespace A102748.P15881223828291007688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278297 (A269467 (n + 3) - 3).toNat : ℚ) / 2

end

end A102748.P15881223828291007688

/-!
# A102749: Numbers k such that the largest prime-power dividing k is not a power of the largest prime dividing k.

The programs for A102749, there is no canonical definition to state claims against.
-/

/-! ## A102749.P8700522417403862309

`∪[A085231(n+1), A253385(n+1)]`
-/

namespace A102749.P8700522417403862309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102749.P8700522417403862309

/-! ## A102749.P16894971936269086598

`lt[A088387(n+1), A006530(n+1)]+1`
-/

namespace A102749.P16894971936269086598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102749.P16894971936269086598

/-! ## A102749.P7539444807267672193

`record[lcm(A051119(n+12), A284600(n+12))]`
-/

namespace A102749.P7539444807267672193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051119 (n + 12)) (A284600 (n + 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102749.P7539444807267672193

/-! ## A102749.P7995140968663212023

`lt[A053585(n+1), A034699(n+1)]+1`
-/

namespace A102749.P7995140968663212023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102749.P7995140968663212023

/-! ## A102749.P5201960781511036232

`lt[A088387(n+1), A299766(n+1)]+1`
-/

namespace A102749.P5201960781511036232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102749.P5201960781511036232

/-! ## A102749.P13969193933093612813

`A020725(lt[A053585(n+1), A034699(n+1)])`
-/

namespace A102749.P13969193933093612813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102749.P13969193933093612813

/-! ## A102749.P15228839603223346157

`A020725(lt[A088387(n+1), A006530(n+1)])`
-/

namespace A102749.P15228839603223346157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102749.P15228839603223346157

/-! ## A102749.P10250564557867641531

`A061767(lt[A088387(n+1), A006530(n+1)])`
-/

namespace A102749.P10250564557867641531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102749.P10250564557867641531

/-! ## A102749.P9445584536335124742

`A181569(lt[A088387(n+1), A006530(n+1)])`
-/

namespace A102749.P9445584536335124742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102749.P9445584536335124742

/-! ## A102749.P14346325966881764779

`A181569(lt[A088387(n+1), A299766(n+1)])`
-/

namespace A102749.P14346325966881764779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102749.P14346325966881764779

/-! ## A102749.P989851882530971469

`A020725(lt[A088387(n+1), A070229(n+1)-(n+1)])`
-/

namespace A102749.P989851882530971469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102749.P989851882530971469

/-!
# A102750: Numbers n such that square of largest prime dividing n does not divide n.

The programs for A102750, the canonical program `A102750.P15152922031530197469` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102750 has offset 1).

The definition of A102750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102750.P8242245288144279827

`eq[2, A348044(n+1)]+1`
-/

namespace A102750.P8242245288144279827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102750.P8242245288144279827

namespace A102750

/-- `eq[2, A348044(n+1)]+1` -/
def P8242245288144279827.Spec : Prop :=
  ∀ n, (P8242245288144279827.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P6654036265600412928

`lt[A319988(n+2), 1]+2`
-/

namespace A102750.P6654036265600412928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A102750.P6654036265600412928

namespace A102750

/-- `lt[A319988(n+2), 1]+2` -/
def P6654036265600412928.Spec : Prop :=
  ∀ n, (P6654036265600412928.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P9238007647479580794

`comp[A253560(n+1)-1]+1`
-/

namespace A102750.P9238007647479580794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102750.P9238007647479580794

namespace A102750

/-- `comp[A253560(n+1)-1]+1` -/
def P9238007647479580794.Spec : Prop :=
  ∀ n, (P9238007647479580794.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P15667529355889153053

`comp[n*A319988(n+1)]+1`
-/

namespace A102750.P15667529355889153053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A319988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102750.P15667529355889153053

namespace A102750

/-- `comp[n*A319988(n+1)]+1` -/
def P15667529355889153053.Spec : Prop :=
  ∀ n, (P15667529355889153053.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P4765329466556980144

`∪[A000040(n+1), A080363(n+1)]`
-/

namespace A102750.P4765329466556980144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102750.P4765329466556980144

namespace A102750

/-- `∪[A000040(n+1), A080363(n+1)]` -/
def P4765329466556980144.Spec : Prop :=
  ∀ n, (P4765329466556980144.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P11727847843812962987

`∪[A030059(n+1), A080363(n+1)]`
-/

namespace A102750.P11727847843812962987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102750.P11727847843812962987

namespace A102750

/-- `∪[A030059(n+1), A080363(n+1)]` -/
def P11727847843812962987.Spec : Prop :=
  ∀ n, (P11727847843812962987.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P17530122046685839418

`∪[A048839(n+1), A068567(n+1)]`
-/

namespace A102750.P17530122046685839418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102750.P17530122046685839418

namespace A102750

/-- `∪[A048839(n+1), A068567(n+1)]` -/
def P17530122046685839418.Spec : Prop :=
  ∀ n, (P17530122046685839418.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P1079907220172042408

`∪[A048839(n+1), A080363(n+1)]`
-/

namespace A102750.P1079907220172042408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102750.P1079907220172042408

namespace A102750

/-- `∪[A048839(n+1), A080363(n+1)]` -/
def P1079907220172042408.Spec : Prop :=
  ∀ n, (P1079907220172042408.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P18103907490138344343

`∪[A064052(n+1), A068567(n+1)]`
-/

namespace A102750.P18103907490138344343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102750.P18103907490138344343

namespace A102750

/-- `∪[A064052(n+1), A068567(n+1)]` -/
def P18103907490138344343.Spec : Prop :=
  ∀ n, (P18103907490138344343.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P12634333124245662072

`∪[A053813(n+1), A080363(n+1)]`
-/

namespace A102750.P12634333124245662072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102750.P12634333124245662072

namespace A102750

/-- `∪[A053813(n+1), A080363(n+1)]` -/
def P12634333124245662072.Spec : Prop :=
  ∀ n, (P12634333124245662072.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P8121139227005123162

`∪[A068422(n+1), A080363(n+1)]`
-/

namespace A102750.P8121139227005123162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102750.P8121139227005123162

namespace A102750

/-- `∪[A068422(n+1), A080363(n+1)]` -/
def P8121139227005123162.Spec : Prop :=
  ∀ n, (P8121139227005123162.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P1287079345285810307

`lt[A006530(A000010(n+1)), A006530(n+1)]+1`
-/

namespace A102750.P1287079345285810307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102750.P1287079345285810307

namespace A102750

/-- `lt[A006530(A000010(n+1)), A006530(n+1)]+1` -/
def P1287079345285810307.Spec : Prop :=
  ∀ n, (P1287079345285810307.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P6754186574162186686

`lt[A006530(A008833(n+1)), A006530(n+1)]+1`
-/

namespace A102750.P6754186574162186686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008833 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102750.P6754186574162186686

namespace A102750

/-- `lt[A006530(A008833(n+1)), A006530(n+1)]+1` -/
def P6754186574162186686.Spec : Prop :=
  ∀ n, (P6754186574162186686.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P15152922031530197469

`lt[A006530(A057521(n+1)), A006530(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A102750

/-- `lt[A006530(A057521(n+1)), A006530(n+1)]+1` -/
def P15152922031530197469.Spec : Prop :=
  ∀ n, (P15152922031530197469.a n : ℤ) = A102750 (n + 1)

theorem P15152922031530197469.correct : P15152922031530197469.Spec := by
  intro n
  simp only [A102750, Nat.add_sub_cancel]

end A102750

/-! ## A102750.P397126699098004152

`record[A243074(n+2)]`
-/

namespace A102750.P397126699098004152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102750.P397126699098004152

namespace A102750

/-- `record[A243074(n+2)]` -/
def P397126699098004152.Spec : Prop :=
  ∀ n, P397126699098004152.a n = A102750 (n + 1)

end A102750

/-! ## A102750.P14837375886240380156

`eq[1, A071178(n+1)]+1`
-/

namespace A102750.P14837375886240380156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102750.P14837375886240380156

namespace A102750

/-- `eq[1, A071178(n+1)]+1` -/
def P14837375886240380156.Spec : Prop :=
  ∀ n, (P14837375886240380156.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P8894129169305650280

`record[A051119(n+1)*A111089(n+1)]`
-/

namespace A102750.P8894129169305650280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1) * A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102750.P8894129169305650280

namespace A102750

/-- `record[A051119(n+1)*A111089(n+1)]` -/
def P8894129169305650280.Spec : Prop :=
  ∀ n, P8894129169305650280.a n = A102750 (n + 1)

end A102750

/-! ## A102750.P5798108881285049196

`lt[A087039(n+1), A006530(n+1)]+1`
-/

namespace A102750.P5798108881285049196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102750.P5798108881285049196

namespace A102750

/-- `lt[A087039(n+1), A006530(n+1)]+1` -/
def P5798108881285049196.Spec : Prop :=
  ∀ n, (P5798108881285049196.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P2301674386135915321

`lt[A052126(n+1), A243074(n+1)]+1`
-/

namespace A102750.P2301674386135915321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102750.P2301674386135915321

namespace A102750

/-- `lt[A052126(n+1), A243074(n+1)]+1` -/
def P2301674386135915321.Spec : Prop :=
  ∀ n, (P2301674386135915321.a n : ℤ) = A102750 (n + 1)

end A102750

/-! ## A102750.P6045889108605197907

`comp[C(A322820(n+1), n)]`
-/

namespace A102750.P6045889108605197907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A322820 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102750.P6045889108605197907

namespace A102750

/-- `comp[C(A322820(n+1), n)]` -/
def P6045889108605197907.Spec : Prop :=
  ∀ n, (P6045889108605197907.a n : ℤ) = A102750 (n + 1)

end A102750

/-!
# A102751: Numbers k such that 1 + (k-1)^2 and ((k-1)/2)^2 + ((k+1)/2)^2 = (1/2)*(k^2+1) are primes.

The programs for A102751, the canonical program `A102751.P5349609999679034369` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102751 has offset 1).

The definition of A102751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102751.P5349609999679034369

`∩[A002731(n+1), A090693(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A102751

/-- `∩[A002731(n+1), A090693(n+1)]` -/
def P5349609999679034369.Spec : Prop :=
  ∀ n, (P5349609999679034369.a n : ℤ) = A102751 (n + 1)

theorem P5349609999679034369.correct : P5349609999679034369.Spec := by
  intro n
  simp only [A102751, Nat.add_sub_cancel]

end A102751

/-! ## A102751.P8899082875552795498

`∩[A002731(n+1), A005574(n+1)+1]`
-/

namespace A102751.P8899082875552795498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102751.P8899082875552795498

namespace A102751

/-- `∩[A002731(n+1), A005574(n+1)+1]` -/
def P8899082875552795498.Spec : Prop :=
  ∀ n, (P8899082875552795498.a n : ℤ) = A102751 (n + 1)

end A102751

/-! ## A102751.P12524000625793130746

`∩[A085722(n+1), A090693(n+1)]`
-/

namespace A102751.P12524000625793130746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102751.P12524000625793130746

namespace A102751

/-- `∩[A085722(n+1), A090693(n+1)]` -/
def P12524000625793130746.Spec : Prop :=
  ∀ n, (P12524000625793130746.a n : ℤ) = A102751 (n + 1)

end A102751

/-! ## A102751.P1156129204378449661

`∩[A005574(n+1)+1, A085722(n+1)]`
-/

namespace A102751.P1156129204378449661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102751.P1156129204378449661

namespace A102751

/-- `∩[A005574(n+1)+1, A085722(n+1)]` -/
def P1156129204378449661.Spec : Prop :=
  ∀ n, (P1156129204378449661.a n : ℤ) = A102751 (n + 1)

end A102751

/-! ## A102751.P8922096592666219984

`∩[A020725(A005574(n+1)), A085722(n+1)]`
-/

namespace A102751.P8922096592666219984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A005574 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102751.P8922096592666219984

namespace A102751

/-- `∩[A020725(A005574(n+1)), A085722(n+1)]` -/
def P8922096592666219984.Spec : Prop :=
  ∀ n, (P8922096592666219984.a n : ℤ) = A102751 (n + 1)

end A102751

/-!
# A102752: Array read by antidiagonals: T(n, k) = ((n+2)^k-(n-1)^k)/3.

The programs for A102752, the canonical program `A102752.P8633653008946205233` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102752 has offset 0).

The definition of A102752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102752.P8633653008946205233

`((row(n)-col(n)+2)^col(n)-(row(n)-col(n)-1)^col(n))/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102752

/-- `((row(n)-col(n)+2)^col(n)-(row(n)-col(n)-1)^col(n))/3` -/
def P8633653008946205233.Spec : Prop :=
  ∀ n, P8633653008946205233.a n = (A102752 n : ℚ)

end A102752

/-! ## A102752.P12436224303366467944

`A048766((A139600(n)*A191646(n))²)`
-/

namespace A102752.P12436224303366467944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((A139600 n * A191646 n) ^ 2).toNat

end

end A102752.P12436224303366467944

namespace A102752

/-- `A048766((A139600(n)*A191646(n))²)` -/
def P12436224303366467944.Spec : Prop :=
  ∀ n, P12436224303366467944.a n = A102752 n

end A102752

/-! ## A102752.P12862729255775733814

`A048766(lcm(A139600(n), A191646(n))²)`
-/

namespace A102752.P12862729255775733814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A139600 n) (A191646 n) ^ 2)

end

end A102752.P12862729255775733814

namespace A102752

/-- `A048766(lcm(A139600(n), A191646(n))²)` -/
def P12862729255775733814.Spec : Prop :=
  ∀ n, P12862729255775733814.a n = A102752 n

end A102752

/-! ## A102752.P4486331117957487552

`A004273(A191646(n)%A141420(n+1))`
-/

namespace A102752.P4486331117957487552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A191646 n) (A141420 (n + 1))).toNat

end

end A102752.P4486331117957487552

namespace A102752

/-- `A004273(A191646(n)%A141420(n+1))` -/
def P4486331117957487552.Spec : Prop :=
  ∀ n, P4486331117957487552.a n = A102752 n

end A102752

/-! ## A102752.P1496099221418257664

`A004273(A191646(n))%A349689(n+1)`
-/

namespace A102752.P1496099221418257664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A191646 n).toNat) (A349689 (n + 1))

end

end A102752.P1496099221418257664

namespace A102752

/-- `A004273(A191646(n))%A349689(n+1)` -/
def P1496099221418257664.Spec : Prop :=
  ∀ n, P1496099221418257664.a n = A102752 n

end A102752

/-!
# A102754: Decimal expansion of (Pi^2)/2 - 4.

The programs for A102754, there is no canonical definition to state claims against.
-/

/-! ## A102754.P1285205520717126813

`A102753(n+1)`
-/

namespace A102754.P1285205520717126813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102753 (n + 1 + 1)

end

end A102754.P1285205520717126813

/-! ## A102754.P2353359900130415721

`A102753(n)-Δ[-A102753(n)]`
-/

namespace A102754.P2353359900130415721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102753 (n + 1) - (f1 (n + 1) - f1 n)

end

end A102754.P2353359900130415721

/-!
# A102755: Number of asymmetric (or identity) oriented trees with n nodes.

The programs for A102755, there is no canonical definition to state claims against.
-/

/-! ## A102755.P8213028034954598225

`A382092(A398110(n))`
-/

namespace A102755.P8213028034954598225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382092 (A398110 n).toNat

end

end A102755.P8213028034954598225

/-! ## A102755.P15794545686804297801

`A173022(A244219(n!))`
-/

namespace A102755.P15794545686804297801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173022 (A244219 (Nat.factorial n)).toNat

end

end A102755.P15794545686804297801

/-! ## A102755.P9347862867209255974

`A051742(∑[A361888(n)])`
-/

namespace A102755.P9347862867209255974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102755.P9347862867209255974

/-!
# A102756: Triangle T(n,k), 0<=k<=n, read by rows defined by: T(n,k) = T(n-1,k-1) + 2*T(n-1,k) + T(n-2,k-2) - T(n-2,k), T(0,0) = 1, T(n,k) = 0 if k < 0 or if n < k.

The programs for A102756, there is no canonical definition to state claims against.
-/

/-! ## A102756.P8961859724441700714

`A368149(A038722(n+1))`
-/

namespace A102756.P8961859724441700714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368149 (A038722 (n + 1)).toNat

end

end A102756.P8961859724441700714

/-! ## A102756.P1807934849070726725

`A368149(A061579(n)+1)`
-/

namespace A102756.P1807934849070726725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368149 (A061579 n + 1).toNat

end

end A102756.P1807934849070726725

/-! ## A102756.P13985872329290318958

`A244606(A022168(n))+A209151(n+1)`
-/

namespace A102756.P13985872329290318958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (A022168 n).toNat + A209151 (n + 1)

end

end A102756.P13985872329290318958

/-! ## A102756.P5543627750506801740

`A104711(n+1)+A001221(A283674(n)!)`
-/

namespace A102756.P5543627750506801740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (n + 1) + A001221 (Nat.factorial (A283674 n).toNat)

end

end A102756.P5543627750506801740

/-! ## A102756.P3087521139849555322

`A031285(A214398(n+1)+A003056(n))-A200370(n+1)`
-/

namespace A102756.P3087521139849555322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A214398 (n + 1) + A003056 n).toNat - A200370 (n + 1)

end

end A102756.P3087521139849555322

/-!
# A102757: a(n) = Sum_{i=0..n} C(n,i)^2 * i! * 3^i.

The programs for A102757, the canonical program `A102757.P11724410970327572843` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102757 has offset 0).

The definition of A102757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102757.P11724410970327572843

`2*(3*n-1)*a(n-1)-9*(n-1)²*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102757

/-- `2*(3*n-1)*a(n-1)-9*(n-1)²*a(n-2)` -/
def P11724410970327572843.Spec : Prop :=
  ∀ n, P11724410970327572843.a n = A102757 n

theorem P11724410970327572843.correct : P11724410970327572843.Spec := by
  intro n
  simp only [A102757]

end A102757

/-! ## A102757.P691352987879484796

`A341014(∑[n+3]+n+3)`
-/

namespace A102757.P691352987879484796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A102757.P691352987879484796

namespace A102757

/-- `A341014(∑[n+3]+n+3)` -/
def P691352987879484796.Spec : Prop :=
  ∀ n, P691352987879484796.a n = A102757 n

end A102757

/-! ## A102757.P18413843055128465525

`abs(A341014(A046691(n+2))-n)+n`
-/

namespace A102757.P18413843055128465525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341014 (A046691 (n + 2)).toNat - (n : ℤ)| + (n : ℤ)

end

end A102757.P18413843055128465525

namespace A102757

/-- `abs(A341014(A046691(n+2))-n)+n` -/
def P18413843055128465525.Spec : Prop :=
  ∀ n, P18413843055128465525.a n = A102757 n

end A102757

/-! ## A102757.P17692764774682255905

`A341014(eq[4, A025581(n)+1])+2-4/2`
-/

namespace A102757.P17692764774682255905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A102757.P17692764774682255905

namespace A102757

/-- `A341014(eq[4, A025581(n)+1])+2-4/2` -/
def P17692764774682255905.Spec : Prop :=
  ∀ n, P17692764774682255905.a n = (A102757 n : ℚ)

end A102757

/-! ## A102757.P12573453373598546556

`or(A003982(n), A341014(A046691(n+2)))`
-/

namespace A102757.P12573453373598546556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A341014 (A046691 (n + 2)).toNat)

end

end A102757.P12573453373598546556

namespace A102757

/-- `or(A003982(n), A341014(A046691(n+2)))` -/
def P12573453373598546556.Spec : Prop :=
  ∀ n, P12573453373598546556.a n = A102757 n

end A102757

/-! ## A102757.P10218056765076693696

`xor(A000007(n+1), A341014(A046691(n+2)))`
-/

namespace A102757.P10218056765076693696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 1)) (A341014 (A046691 (n + 2)).toNat)

end

end A102757.P10218056765076693696

namespace A102757

/-- `xor(A000007(n+1), A341014(A046691(n+2)))` -/
def P10218056765076693696.Spec : Prop :=
  ∀ n, P10218056765076693696.a n = A102757 n

end A102757

/-! ## A102757.P12424340770152371163

`A341014(A046691(n+2))+A239662(n+1)%2`
-/

namespace A102757.P12424340770152371163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (A046691 (n + 2)).toNat + Int.tmod (A239662 (n + 1)) 2

end

end A102757.P12424340770152371163

namespace A102757

/-- `A341014(A046691(n+2))+A239662(n+1)%2` -/
def P12424340770152371163.Spec : Prop :=
  ∀ n, P12424340770152371163.a n = A102757 n

end A102757

/-!
# A102760: Number of partitions of n-set into "lists", in which every even list appears an even number of times, cf. A000262.

The programs for A102760, there is no canonical definition to state claims against.
-/

/-! ## A102760.P15922225802259642753

`A088009(n)+A004526(A293493(n))`
-/

namespace A102760.P15922225802259642753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088009 n + A004526 (A293493 n).toNat

end

end A102760.P15922225802259642753

/-! ## A102760.P11293385620634673515

`A051724(A096965(n))-A342074(n)`
-/

namespace A102760.P11293385620634673515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A096965 n).toNat - A342074 n

end

end A102760.P11293385620634673515

/-!
# A102761: Same as A000179, except that a(0) = 2.

The programs for A102761, there is no canonical definition to state claims against.
-/

/-! ## A102761.P3890937213522064940

`A000179(n)+C(2, n+2)`
-/

namespace A102761.P3890937213522064940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A102761.P3890937213522064940

/-! ## A102761.P10899577703296264010

`A058087(A212342(n+1))`
-/

namespace A102761.P10899577703296264010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A212342 (n + 1)).toNat

end

end A102761.P10899577703296264010

/-! ## A102761.P1427695697261021907

`A000179(n)+A000007(n)`
-/

namespace A102761.P1427695697261021907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n + A000007 n

end

end A102761.P1427695697261021907

/-! ## A102761.P15194317120064057305

`A151909(n)+A000179(n)`
-/

namespace A102761.P15194317120064057305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A000179 n

end

end A102761.P15194317120064057305

/-! ## A102761.P6379908361526230032

`A000179(n)*A054977(n)`
-/

namespace A102761.P6379908361526230032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n * A054977 n

end

end A102761.P6379908361526230032

/-! ## A102761.P3584203052836353742

`A000179(n)*A213234(n²)`
-/

namespace A102761.P3584203052836353742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n * A213234 (n ^ 2)

end

end A102761.P3584203052836353742

/-! ## A102761.P13327713524532853896

`A185296(∑[n])+A000179(n)`
-/

namespace A102761.P13327713524532853896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185296 (∑ j ∈ Finset.range (n + 1), f1 j) + A000179 n

end

end A102761.P13327713524532853896

/-! ## A102761.P93469510883579226

`A000179(n)+1-A057427(n)`
-/

namespace A102761.P93469510883579226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n + (1 - A057427 n)

end

end A102761.P93469510883579226

/-! ## A102761.P1648439816538199621

`A000179(n)-A159075(n+1)`
-/

namespace A102761.P1648439816538199621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n - A159075 (n + 1)

end

end A102761.P1648439816538199621

/-! ## A102761.P12007196070875508704

`A000179(n)+1-A178334(n)`
-/

namespace A102761.P12007196070875508704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n + (1 - A178334 n)

end

end A102761.P12007196070875508704

/-!
# A102762: Curvatures of (largest) kissing circles along the circumference, starting with curvature = -1 and 2.

The programs for A102762, the canonical program `A102762.P3647434149635671097` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102762 has offset 0).

The definition of A102762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102762.P3647434149635671097

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=-1, a(1)=2, a(2)=2, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102762

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3647434149635671097.Spec : Prop :=
  ∀ n, P3647434149635671097.a n = A102762 n

theorem P3647434149635671097.correct : P3647434149635671097.Spec := by
  intro n
  simp only [A102762]

end A102762

/-! ## A102762.P4171989838321240576

`∑[a(n-1)+2]` with `a(0)=-1, a(1)=3, a(2)=0, a(3)=1`
-/

namespace A102762.P4171989838321240576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3, 0, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102762.P4171989838321240576

namespace A102762

/-- `∑[a(n-1)+2]` -/
def P4171989838321240576.Spec : Prop :=
  ∀ n, P4171989838321240576.a n = A102762 n

end A102762

/-! ## A102762.P11124249824418633924

`n-∑[a(n-1)-2]` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=0`
-/

namespace A102762.P11124249824418633924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, 0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102762.P11124249824418633924

namespace A102762

/-- `n-∑[a(n-1)-2]` -/
def P11124249824418633924.Spec : Prop :=
  ∀ n, P11124249824418633924.a n = A102762 n

end A102762

/-! ## A102762.P17457535506220113477

`or(2, A289207(n)²-A000007(n))`
-/

namespace A102762.P17457535506220113477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A289207 n ^ 2 - A000007 n)

end

end A102762.P17457535506220113477

namespace A102762

/-- `or(2, A289207(n)²-A000007(n))` -/
def P17457535506220113477.Spec : Prop :=
  ∀ n, P17457535506220113477.a n = A102762 n

end A102762

/-! ## A102762.P811709253057810719

`A051744(n+1)-A219286(n+1)`
-/

namespace A102762.P811709253057810719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - A219286 (n + 1)

end

end A102762.P811709253057810719

namespace A102762

/-- `A051744(n+1)-A219286(n+1)` -/
def P811709253057810719.Spec : Prop :=
  ∀ n, P811709253057810719.a n = A102762 n

end A102762

/-! ## A102762.P16216918451672202867

`A005563(n)-A008458(A004273(n)-n)`
-/

namespace A102762.P16216918451672202867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A008458 (A004273 n - (n : ℤ)).toNat

end

end A102762.P16216918451672202867

namespace A102762

/-- `A005563(n)-A008458(A004273(n)-n)` -/
def P16216918451672202867.Spec : Prop :=
  ∀ n, P16216918451672202867.a n = A102762 n

end A102762

/-! ## A102762.P3778565492517441866

`A060576(n)*A305559(n+1)-A113679(n+1)`
-/

namespace A102762.P3778565492517441866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A305559 (n + 1) - A113679 (n + 1)

end

end A102762.P3778565492517441866

namespace A102762

/-- `A060576(n)*A305559(n+1)-A113679(n+1)` -/
def P3778565492517441866.Spec : Prop :=
  ∀ n, P3778565492517441866.a n = A102762 n

end A102762

/-! ## A102762.P14864740507920968225

`A014209(n)-record[A195159(n)]`
-/

namespace A102762.P14864740507920968225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102762.P14864740507920968225

namespace A102762

/-- `A014209(n)-record[A195159(n)]` -/
def P14864740507920968225.Spec : Prop :=
  ∀ n, P14864740507920968225.a n = A102762 n

end A102762

/-! ## A102762.P17383192754440004471

`A028347(n+2)-A113127(A004273(n))`
-/

namespace A102762.P17383192754440004471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (n + 2) - A113127 (A004273 n).toNat

end

end A102762.P17383192754440004471

namespace A102762

/-- `A028347(n+2)-A113127(A004273(n))` -/
def P17383192754440004471.Spec : Prop :=
  ∀ n, P17383192754440004471.a n = A102762 n

end A102762

/-! ## A102762.P3480750010365687400

`A005563(n)-A008458(A004526(A004273(n)))`
-/

namespace A102762.P3480750010365687400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A008458 (A004526 (A004273 n).toNat).toNat

end

end A102762.P3480750010365687400

namespace A102762

/-- `A005563(n)-A008458(A004526(A004273(n)))` -/
def P3480750010365687400.Spec : Prop :=
  ∀ n, P3480750010365687400.a n = A102762 n

end A102762

/-! ## A102762.P17698773450201247179

`A168668(n)-A048840(2*n)`
-/

namespace A102762.P17698773450201247179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n - A048840 (2 * n)

end

end A102762.P17698773450201247179

namespace A102762

/-- `A168668(n)-A048840(2*n)` -/
def P17698773450201247179.Spec : Prop :=
  ∀ n, P17698773450201247179.a n = A102762 n

end A102762

/-! ## A102762.P17743428591290072488

`A292131(∑[n+1]+3)+n`
-/

namespace A102762.P17743428591290072488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + (n : ℤ)

end

end A102762.P17743428591290072488

namespace A102762

/-- `A292131(∑[n+1]+3)+n` -/
def P17743428591290072488.Spec : Prop :=
  ∀ n, P17743428591290072488.a n = A102762 n

end A102762

/-! ## A102762.P11918587346365229086

`or(2, A265410(n²+1)-1)`
-/

namespace A102762.P11918587346365229086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A265410 (n ^ 2 + 1) - 1)

end

end A102762.P11918587346365229086

namespace A102762

/-- `or(2, A265410(n²+1)-1)` -/
def P11918587346365229086.Spec : Prop :=
  ∀ n, P11918587346365229086.a n = A102762 n

end A102762

/-! ## A102762.P16412199070127886168

`or(2, A083479(A083479(n²))-1)`
-/

namespace A102762.P16412199070127886168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A083479 (A083479 (n ^ 2)).toNat - 1)

end

end A102762.P16412199070127886168

namespace A102762

/-- `or(2, A083479(A083479(n²))-1)` -/
def P16412199070127886168.Spec : Prop :=
  ∀ n, P16412199070127886168.a n = A102762 n

end A102762

/-!
# A102765: Array read by antidiagonals: T(n, k) = ((n+4)^k-(n-1)^k)/5.

The programs for A102765, the canonical program `A102765.P13972195476415631254` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102765 has offset 0).

The definition of A102765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102765.P13972195476415631254

`((row(n)-col(n)+4)^col(n)-(row(n)-col(n)-1)^col(n))/5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102765

/-- `((row(n)-col(n)+4)^col(n)-(row(n)-col(n)-1)^col(n))/5` -/
def P13972195476415631254.Spec : Prop :=
  ∀ n, P13972195476415631254.a n = (A102765 n : ℚ)

end A102765

/-! ## A102765.P2378157010133494865

`record[A176490(n)]%A120852(n+1)`
-/

namespace A102765.P2378157010133494865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A120852 (n + 1))

end

end A102765.P2378157010133494865

namespace A102765

/-- `record[A176490(n)]%A120852(n+1)` -/
def P2378157010133494865.Spec : Prop :=
  ∀ n, P2378157010133494865.a n = A102765 n

end A102765

/-! ## A102765.P3589711783453404822

`xor(A121373(A037207(n)), A355172(n))`
-/

namespace A102765.P3589711783453404822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121373 (A037207 n).toNat) (A355172 n)

end

end A102765.P3589711783453404822

namespace A102765

/-- `xor(A121373(A037207(n)), A355172(n))` -/
def P3589711783453404822.Spec : Prop :=
  ∀ n, P3589711783453404822.a n = A102765 n

end A102765

/-! ## A102765.P4151670036786524349

`A163352(A101031(n))`
-/

namespace A102765.P4151670036786524349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A101031 n).toNat

end

end A102765.P4151670036786524349

namespace A102765

/-- `A163352(A101031(n))` -/
def P4151670036786524349.Spec : Prop :=
  ∀ n, P4151670036786524349.a n = A102765 n

end A102765

/-! ## A102765.P11118275718588679825

`A227386(A355721(n))`
-/

namespace A102765.P11118275718588679825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227386 (A355721 n).toNat

end

end A102765.P11118275718588679825

namespace A102765

/-- `A227386(A355721(n))` -/
def P11118275718588679825.Spec : Prop :=
  ∀ n, P11118275718588679825.a n = A102765 n

end A102765

/-!
# A102766: Numbers k that can be chopped into two parts, which when added and squared result in k.

The programs for A102766, there is no canonical definition to state claims against.
-/

/-! ## A102766.P10628497077271588634

`A248353(n+1)²`
-/

namespace A102766.P10628497077271588634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248353 (n + 1) ^ 2

end

end A102766.P10628497077271588634

/-! ## A102766.P5630892081615670658

`A248353(Δ[n²]-n)^2`
-/

namespace A102766.P5630892081615670658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248353 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A102766.P5630892081615670658

/-! ## A102766.P8452372977402826805

`record[A248353(A022446(n))²]`
-/

namespace A102766.P8452372977402826805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248353 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102766.P8452372977402826805

/-! ## A102766.P7254891492521164201

`record[A248353(A134478(n))²]`
-/

namespace A102766.P7254891492521164201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248353 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102766.P7254891492521164201

/-! ## A102766.P4208244215549247945

`record[A248353(A143182(n))²]`
-/

namespace A102766.P4208244215549247945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248353 (A143182 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102766.P4208244215549247945

/-!
# A102767: Gap length between consecutive primes in A064413.

The programs for A102767, there is no canonical definition to state claims against.
-/

/-! ## A102767.P11339683788934241670

`A064425(n+1)-1`
-/

namespace A102767.P11339683788934241670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064425 (n + 1) - 1

end

end A102767.P11339683788934241670

/-! ## A102767.P8442650083773274531

`Δ[A064423(n+1)]-1`
-/

namespace A102767.P8442650083773274531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102767.P8442650083773274531

/-! ## A102767.P11672477559067004292

`Δ[A064955(n+1)]-1`
-/

namespace A102767.P11672477559067004292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102767.P11672477559067004292

/-! ## A102767.P15393457816325948671

`Δ[record[A304526(n+1)]]-1`
-/

namespace A102767.P15393457816325948671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102767.P15393457816325948671

/-! ## A102767.P14387380417088134351

`Δ[record[A064664(n+2)]]-1`
-/

namespace A102767.P14387380417088134351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102767.P14387380417088134351

/-! ## A102767.P6615440932939176798

`Δ[eq[2, A278263(n+1)]]-1`
-/

namespace A102767.P6615440932939176798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278263 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A102767.P6615440932939176798

/-! ## A102767.P7068723060881678472

`Δ[record[A347348(2*(n+1))]]-1`
-/

namespace A102767.P7068723060881678472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347348 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102767.P7068723060881678472

/-! ## A102767.P16129833576271226231

`A002837(A064425(n+1))`
-/

namespace A102767.P16129833576271226231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A064425 (n + 1)).toNat

end

end A102767.P16129833576271226231

/-! ## A102767.P7550958598163845146

`Δ[A064664(A000040(n+1))]-1`
-/

namespace A102767.P7550958598163845146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102767.P7550958598163845146

/-! ## A102767.P5106943424979185012

`Δ[A304527(A062876(n+1))]-1`
-/

namespace A102767.P5106943424979185012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304527 (A062876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102767.P5106943424979185012

/-!
# A102768: Numbers k such that 23*k + 11 is prime.

The programs for A102768, the canonical program `A102768.P1129723811227511314` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102768 has offset 1).

The definition of A102768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102768.P1129723811227511314

`floor(A141915(n+1)/23)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102768

/-- `floor(A141915(n+1)/23)` -/
def P1129723811227511314.Spec : Prop :=
  ∀ n, P1129723811227511314.a n = A102768 (n + 1)

theorem P1129723811227511314.correct : P1129723811227511314.Spec := by
  intro n
  simp only [A102768, Nat.add_sub_cancel]

end A102768

/-! ## A102768.P17424360268033920284

`lcm(round(A141915(n+1)/23), A000034(n))`
-/

namespace A102768.P17424360268033920284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A141915 (n + 1) : ℚ) / 23)) (A000034 n)

end

end A102768.P17424360268033920284

namespace A102768

/-- `lcm(round(A141915(n+1)/23), A000034(n))` -/
def P17424360268033920284.Spec : Prop :=
  ∀ n, (P17424360268033920284.a n : ℤ) = A102768 (n + 1)

end A102768

/-! ## A102768.P3106584590723602603

`round(A141915(A163963(2*n+3)+n)/23)`
-/

namespace A102768.P3106584590723602603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141915 (A163963 (2 * n + 3) + (n : ℤ)).toNat : ℚ) / 23)

end

end A102768.P3106584590723602603

namespace A102768

/-- `round(A141915(A163963(2*n+3)+n)/23)` -/
def P3106584590723602603.Spec : Prop :=
  ∀ n, P3106584590723602603.a n = A102768 (n + 1)

end A102768

/-! ## A102768.P7254135537460126211

`eq[2, A000005(23*n+11)]`
-/

namespace A102768.P7254135537460126211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (23 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102768.P7254135537460126211

namespace A102768

/-- `eq[2, A000005(23*n+11)]` -/
def P7254135537460126211.Spec : Prop :=
  ∀ n, (P7254135537460126211.a n : ℤ) = A102768 (n + 1)

end A102768

/-! ## A102768.P12899981813922232751

`eq[1, A001222(A022280(n+1)-A022280(n))]`
-/

namespace A102768.P12899981813922232751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A022280 (n + 1) - A022280 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102768.P12899981813922232751

namespace A102768

/-- `eq[1, A001222(A022280(n+1)-A022280(n))]` -/
def P12899981813922232751.Spec : Prop :=
  ∀ n, (P12899981813922232751.a n : ℤ) = A102768 (n + 1)

end A102768

/-! ## A102768.P6346636892568418340

`eq[1, A001222(A017137(2*n)+A017041(n))]`
-/

namespace A102768.P6346636892568418340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017137 (2 * n) + A017041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102768.P6346636892568418340

namespace A102768

/-- `eq[1, A001222(A017137(2*n)+A017041(n))]` -/
def P6346636892568418340.Spec : Prop :=
  ∀ n, (P6346636892568418340.a n : ℤ) = A102768 (n + 1)

end A102768

/-! ## A102768.P14236544991023932807

`eq[1, A001222(A017221(n)+A017053(2*n))]`
-/

namespace A102768.P14236544991023932807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017221 n + A017053 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102768.P14236544991023932807

namespace A102768

/-- `eq[1, A001222(A017221(n)+A017053(2*n))]` -/
def P14236544991023932807.Spec : Prop :=
  ∀ n, (P14236544991023932807.a n : ℤ) = A102768 (n + 1)

end A102768

/-! ## A102768.P10066405490985694341

`lt[1, A014963(Δ[12*n²]-n-1)]`
-/

namespace A102768.P10066405490985694341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102768.P10066405490985694341

namespace A102768

/-- `lt[1, A014963(Δ[12*n²]-n-1)]` -/
def P10066405490985694341.Spec : Prop :=
  ∀ n, (P10066405490985694341.a n : ℤ) = A102768 (n + 1)

end A102768

/-! ## A102768.P17249159461781932589

`eq[A004769(3*n)-n, A014963(A004769(3*n)-n)]`
-/

namespace A102768.P17249159461781932589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (3 * n) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004769 (3 * n) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102768.P17249159461781932589

namespace A102768

/-- `eq[A004769(3*n)-n, A014963(A004769(3*n)-n)]` -/
def P17249159461781932589.Spec : Prop :=
  ∀ n, (P17249159461781932589.a n : ℤ) = A102768 (n + 1)

end A102768

/-!
# A102770: (p*q - 1)/2 where p and q are consecutive odd primes.

The programs for A102770, the canonical program `A102770.P14397254692394995982` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102770 has offset 1).

The definition of A102770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102770.P14397254692394995982

`A023515(n+3)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A102770

/-- `A023515(n+3)/2` -/
def P14397254692394995982.Spec : Prop :=
  ∀ n, P14397254692394995982.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P12908161737266268983

`(A000040(n+2)*A000040(n+3)-1)/2`
-/

namespace A102770.P12908161737266268983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) * A000040 (n + 3) - 1 : ℚ) / 2

end

end A102770.P12908161737266268983

namespace A102770

/-- `(A000040(n+2)*A000040(n+3)-1)/2` -/
def P12908161737266268983.Spec : Prop :=
  ∀ n, P12908161737266268983.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P7037404432399339920

`(∑[A109805(n+1)]+5)/2`
-/

namespace A102770.P7037404432399339920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109805 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℤ) : ℚ) / 2

end

end A102770.P7037404432399339920

namespace A102770

/-- `(∑[A109805(n+1)]+5)/2` -/
def P7037404432399339920.Spec : Prop :=
  ∀ n, P7037404432399339920.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P12251707034289164084

`floor(A006094(n+2)/2)`
-/

namespace A102770.P12251707034289164084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006094 (n + 2) : ℚ) / 2⌋

end

end A102770.P12251707034289164084

namespace A102770

/-- `floor(A006094(n+2)/2)` -/
def P12251707034289164084.Spec : Prop :=
  ∀ n, P12251707034289164084.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P7959993840248740074

`floor(sqrt(A166329(n+2))/2)`
-/

namespace A102770.P7959993840248740074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A166329 (n + 2) : ℝ) / 2⌋

end

end A102770.P7959993840248740074

namespace A102770

/-- `floor(sqrt(A166329(n+2))/2)` -/
def P7959993840248740074.Spec : Prop :=
  ∀ n, P7959993840248740074.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P7326665200113384595

`(Δ[A074745(n+1)]-1)/2`
-/

namespace A102770.P7326665200113384595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074745 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A102770.P7326665200113384595

namespace A102770

/-- `(Δ[A074745(n+1)]-1)/2` -/
def P7326665200113384595.Spec : Prop :=
  ∀ n, P7326665200113384595.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P9417940254209839144

`A014303(n+2)+A005097(n+1)`
-/

namespace A102770.P9417940254209839144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014303 (n + 2) + A005097 (n + 1)

end

end A102770.P9417940254209839144

namespace A102770

/-- `A014303(n+2)+A005097(n+1)` -/
def P9417940254209839144.Spec : Prop :=
  ∀ n, P9417940254209839144.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P5028656732792827465

`A130290(n+2)+A014303(n+2)`
-/

namespace A102770.P5028656732792827465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) + A014303 (n + 2)

end

end A102770.P5028656732792827465

namespace A102770

/-- `A130290(n+2)+A014303(n+2)` -/
def P5028656732792827465.Spec : Prop :=
  ∀ n, P5028656732792827465.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P13900278136763707793

`A014302(n+3)+A005097(n+2)`
-/

namespace A102770.P13900278136763707793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014302 (n + 3) + A005097 (n + 2)

end

end A102770.P13900278136763707793

namespace A102770

/-- `A014302(n+3)+A005097(n+2)` -/
def P13900278136763707793.Spec : Prop :=
  ∀ n, P13900278136763707793.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P4073160339443303496

`(A057428(n+1)+A006094(n+2))/2`
-/

namespace A102770.P4073160339443303496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (n + 1) + A006094 (n + 2) : ℚ) / 2

end

end A102770.P4073160339443303496

namespace A102770

/-- `(A057428(n+1)+A006094(n+2))/2` -/
def P4073160339443303496.Spec : Prop :=
  ∀ n, P4073160339443303496.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P12592139073981488760

`A014303(n+2)+A006093(n+2)/2`
-/

namespace A102770.P12592139073981488760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014303 (n + 2) : ℚ) + (A006093 (n + 2) : ℚ) / 2

end

end A102770.P12592139073981488760

namespace A102770

/-- `A014303(n+2)+A006093(n+2)/2` -/
def P12592139073981488760.Spec : Prop :=
  ∀ n, P12592139073981488760.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P3508850916933571196

`(A037166(n+2)+A006093(n+2))/2`
-/

namespace A102770.P3508850916933571196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 2) + A006093 (n + 2) : ℚ) / 2

end

end A102770.P3508850916933571196

namespace A102770

/-- `(A037166(n+2)+A006093(n+2))/2` -/
def P3508850916933571196.Spec : Prop :=
  ∀ n, P3508850916933571196.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P16285125389171291811

`(A039915(n+2)+A037166(n+2))/2`
-/

namespace A102770.P16285125389171291811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039915 (n + 2) + A037166 (n + 2) : ℚ) / 2

end

end A102770.P16285125389171291811

namespace A102770

/-- `(A039915(n+2)+A037166(n+2))/2` -/
def P16285125389171291811.Spec : Prop :=
  ∀ n, P16285125389171291811.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P17501181653137300970

`(A123134(n+2)-A008864(n+2))/2`
-/

namespace A102770.P17501181653137300970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123134 (n + 2) - A008864 (n + 2) : ℚ) / 2

end

end A102770.P17501181653137300970

namespace A102770

/-- `(A123134(n+2)-A008864(n+2))/2` -/
def P17501181653137300970.Spec : Prop :=
  ∀ n, P17501181653137300970.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P18135353575166180864

`(A123134(n+2)-A055670(n+2))/2`
-/

namespace A102770.P18135353575166180864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123134 (n + 2) - A055670 (n + 2) : ℚ) / 2

end

end A102770.P18135353575166180864

namespace A102770

/-- `(A123134(n+2)-A055670(n+2))/2` -/
def P18135353575166180864.Spec : Prop :=
  ∀ n, P18135353575166180864.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P1567618827957887351

`(A118830(2*n+1)+A006094(n+2))/2`
-/

namespace A102770.P1567618827957887351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118830 (2 * n + 1) + A006094 (n + 2) : ℚ) / 2

end

end A102770.P1567618827957887351

namespace A102770

/-- `(A118830(2*n+1)+A006094(n+2))/2` -/
def P1567618827957887351.Spec : Prop :=
  ∀ n, P1567618827957887351.a n = (A102770 (n + 1) : ℚ)

end A102770

/-! ## A102770.P13264633743375826451

`ceil((A006094(n+2)-A000005(A051697(n)))/2)`
-/

namespace A102770.P13264633743375826451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006094 (n + 2) - A000005 (A051697 n).toNat : ℚ) / 2⌉

end

end A102770.P13264633743375826451

namespace A102770

/-- `ceil((A006094(n+2)-A000005(A051697(n)))/2)` -/
def P13264633743375826451.Spec : Prop :=
  ∀ n, P13264633743375826451.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P2712447515094549430

`A005097(n+1)+A005097(n+2)*A065091(n+1)`
-/

namespace A102770.P2712447515094549430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + A005097 (n + 2) * A065091 (n + 1)

end

end A102770.P2712447515094549430

namespace A102770

/-- `A005097(n+1)+A005097(n+2)*A065091(n+1)` -/
def P2712447515094549430.Spec : Prop :=
  ∀ n, P2712447515094549430.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P11249650801610345782

`A005097(n+1)+A000040(n+2)*A005097(n+2)`
-/

namespace A102770.P11249650801610345782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + A000040 (n + 2) * A005097 (n + 2)

end

end A102770.P11249650801610345782

namespace A102770

/-- `A005097(n+1)+A000040(n+2)*A005097(n+2)` -/
def P11249650801610345782.Spec : Prop :=
  ∀ n, P11249650801610345782.a n = A102770 (n + 1)

end A102770

/-! ## A102770.P7507639352485173472

`A005097(n+1)+A005097(n+2)*A006005(n+2)`
-/

namespace A102770.P7507639352485173472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + A005097 (n + 2) * A006005 (n + 2)

end

end A102770.P7507639352485173472

namespace A102770

/-- `A005097(n+1)+A005097(n+2)*A006005(n+2)` -/
def P7507639352485173472.Spec : Prop :=
  ∀ n, P7507639352485173472.a n = A102770 (n + 1)

end A102770

/-!
# A102773: a(n) = Sum_{i=0..n} binomial(n,i)^2*i!*4^i.

The programs for A102773, the canonical program `A102773.P95659137537492031` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102773 has offset 0).

The definition of A102773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102773.P95659137537492031

`(8*n-3)*a(n-1)-16*(n-1)²*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102773

/-- `(8*n-3)*a(n-1)-16*(n-1)²*a(n-2)` -/
def P95659137537492031.Spec : Prop :=
  ∀ n, P95659137537492031.a n = A102773 n

theorem P95659137537492031.correct : P95659137537492031.Spec := by
  intro n
  simp only [A102773]

end A102773

/-! ## A102773.P5324549619267852690

`A121079(n)-A000165(n)`
-/

namespace A102773.P5324549619267852690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121079 n - A000165 n

end

end A102773.P5324549619267852690

namespace A102773

/-- `A121079(n)-A000165(n)` -/
def P5324549619267852690.Spec : Prop :=
  ∀ n, P5324549619267852690.a n = A102773 n

end A102773

/-! ## A102773.P8214201367336664981

`A341014(A052905(n+2))`
-/

namespace A102773.P8214201367336664981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (A052905 (n + 2)).toNat

end

end A102773.P8214201367336664981

namespace A102773

/-- `A341014(A052905(n+2))` -/
def P8214201367336664981.Spec : Prop :=
  ∀ n, P8214201367336664981.a n = A102773 n

end A102773

/-! ## A102773.P16779307447321970038

`A341014(eq[4, A025581(n)])`
-/

namespace A102773.P16779307447321970038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102773.P16779307447321970038

namespace A102773

/-- `A341014(eq[4, A025581(n)])` -/
def P16779307447321970038.Spec : Prop :=
  ∀ n, P16779307447321970038.a n = A102773 n

end A102773

/-! ## A102773.P2833628298925755346

`A341014(eq[6, A113678(n)])`
-/

namespace A102773.P2833628298925755346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102773.P2833628298925755346

namespace A102773

/-- `A341014(eq[6, A113678(n)])` -/
def P2833628298925755346.Spec : Prop :=
  ∀ n, P2833628298925755346.a n = A102773 n

end A102773

/-! ## A102773.P11830602179159491399

`A341014(eq[9, A099375(n)])`
-/

namespace A102773.P11830602179159491399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102773.P11830602179159491399

namespace A102773

/-- `A341014(eq[9, A099375(n)])` -/
def P11830602179159491399.Spec : Prop :=
  ∀ n, P11830602179159491399.a n = A102773 n

end A102773

/-! ## A102773.P13001620106967393605

`A341014(eq[16, A130321(n)])`
-/

namespace A102773.P13001620106967393605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102773.P13001620106967393605

namespace A102773

/-- `A341014(eq[16, A130321(n)])` -/
def P13001620106967393605.Spec : Prop :=
  ∀ n, P13001620106967393605.a n = A102773 n

end A102773

/-! ## A102773.P2298462994213719072

`A341014(eq[5, A004736(n+1)])`
-/

namespace A102773.P2298462994213719072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102773.P2298462994213719072

namespace A102773

/-- `A341014(eq[5, A004736(n+1)])` -/
def P2298462994213719072.Spec : Prop :=
  ∀ n, P2298462994213719072.a n = A102773 n

end A102773

/-!
# A102780: Ground states of the Bernasconi model; or, greatest merit factor of a binary sequence of length n.

The programs for A102780, there is no canonical definition to state claims against.
-/

/-! ## A102780.P11391175810836357710

`A091386(A028310(n))%(n+1)²`
-/

namespace A102780.P11391175810836357710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091386 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A102780.P11391175810836357710

/-!
# A102781: Number of positive even numbers less than the n-th prime.

The programs for A102781, the canonical program `A102781.P207369099020695367` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102781 has offset 1).

The definition of A102781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102781.P207369099020695367

`A000040(n+1)-floor(A000040(n+1)/2)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102781

/-- `A000040(n+1)-floor(A000040(n+1)/2)-1` -/
def P207369099020695367.Spec : Prop :=
  ∀ n, P207369099020695367.a n = A102781 (n + 1)

theorem P207369099020695367.correct : P207369099020695367.Spec := by
  intro n
  simp only [A102781, Nat.add_sub_cancel]

end A102781

/-! ## A102781.P7289451240836713890

`A111333(n+1)-1`
-/

namespace A102781.P7289451240836713890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - 1

end

end A102781.P7289451240836713890

namespace A102781

/-- `A111333(n+1)-1` -/
def P7289451240836713890.Spec : Prop :=
  ∀ n, P7289451240836713890.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P2050399774470876468

`A124678(n+1)-3`
-/

namespace A102781.P2050399774470876468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 1) - 3

end

end A102781.P2050399774470876468

namespace A102781

/-- `A124678(n+1)-3` -/
def P2050399774470876468.Spec : Prop :=
  ∀ n, P2050399774470876468.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P673049022325180502

`floor(A006005(n+1)/2)`
-/

namespace A102781.P673049022325180502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℚ) / 2⌋

end

end A102781.P673049022325180502

namespace A102781

/-- `floor(A006005(n+1)/2)` -/
def P673049022325180502.Spec : Prop :=
  ∀ n, P673049022325180502.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P6819601465083832490

`floor(A006093(n+1)/2)`
-/

namespace A102781.P6819601465083832490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / 2⌋

end

end A102781.P6819601465083832490

namespace A102781

/-- `floor(A006093(n+1)/2)` -/
def P6819601465083832490.Spec : Prop :=
  ∀ n, P6819601465083832490.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P693065762987394243

`ceil(A040976(n+1)/2)`
-/

namespace A102781.P693065762987394243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 1) : ℚ) / 2⌉

end

end A102781.P693065762987394243

namespace A102781

/-- `ceil(A040976(n+1)/2)` -/
def P693065762987394243.Spec : Prop :=
  ∀ n, P693065762987394243.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P4323661349193471894

`floor(sinh(log(A000040(n+1))))`
-/

namespace A102781.P4323661349193471894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000040 (n + 1) : ℝ))⌋

end

end A102781.P4323661349193471894

namespace A102781

/-- `floor(sinh(log(A000040(n+1))))` -/
def P4323661349193471894.Spec : Prop :=
  ∀ n, P4323661349193471894.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P16090525925143935357

`a(n-1)+A100820(n)+1` with `a(0)=0`
-/

namespace A102781.P16090525925143935357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A100820 n + 1)

end

end A102781.P16090525925143935357

namespace A102781

/-- `a(n-1)+A100820(n)+1` -/
def P16090525925143935357.Spec : Prop :=
  ∀ n, P16090525925143935357.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P11822880150375932953

`A129768(n+1)+A023443(n)`
-/

namespace A102781.P11822880150375932953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1) + A023443 n

end

end A102781.P11822880150375932953

namespace A102781

/-- `A129768(n+1)+A023443(n)` -/
def P11822880150375932953.Spec : Prop :=
  ∀ n, P11822880150375932953.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P3405338967194304960

`A130290(n+1)-A000007(n)`
-/

namespace A102781.P3405338967194304960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) - A000007 n

end

end A102781.P3405338967194304960

namespace A102781

/-- `A130290(n+1)-A000007(n)` -/
def P3405338967194304960.Spec : Prop :=
  ∀ n, P3405338967194304960.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P2454064017561979013

`A129768(n+1)-A024000(n)`
-/

namespace A102781.P2454064017561979013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1) - A024000 n

end

end A102781.P2454064017561979013

namespace A102781

/-- `A129768(n+1)-A024000(n)` -/
def P2454064017561979013.Spec : Prop :=
  ∀ n, P2454064017561979013.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P16544027886980153526

`A130291(n+1)-A054977(n)`
-/

namespace A102781.P16544027886980153526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) - A054977 n

end

end A102781.P16544027886980153526

namespace A102781

/-- `A130291(n+1)-A054977(n)` -/
def P16544027886980153526.Spec : Prop :=
  ∀ n, P16544027886980153526.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P18302606638991288068

`A057427(n)*A130290(n+1)`
-/

namespace A102781.P18302606638991288068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A130290 (n + 1)

end

end A102781.P18302606638991288068

namespace A102781

/-- `A057427(n)*A130290(n+1)` -/
def P18302606638991288068.Spec : Prop :=
  ∀ n, P18302606638991288068.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P8147246387755003386

`A130290(n+1)%A000156(n)`
-/

namespace A102781.P8147246387755003386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130290 (n + 1)) (A000156 n)

end

end A102781.P8147246387755003386

namespace A102781

/-- `A130290(n+1)%A000156(n)` -/
def P8147246387755003386.Spec : Prop :=
  ∀ n, P8147246387755003386.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P3381837729378333055

`∪[A016986(n), A005097(n+1)]`
-/

namespace A102781.P3381837729378333055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102781.P3381837729378333055

namespace A102781

/-- `∪[A016986(n), A005097(n+1)]` -/
def P3381837729378333055.Spec : Prop :=
  ∀ n, (P3381837729378333055.a n : ℤ) = A102781 (n + 1)

end A102781

/-! ## A102781.P17521389037059040912

`∪[A115828(n), A005097(n+1)]`
-/

namespace A102781.P17521389037059040912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102781.P17521389037059040912

namespace A102781

/-- `∪[A115828(n), A005097(n+1)]` -/
def P17521389037059040912.Spec : Prop :=
  ∀ n, (P17521389037059040912.a n : ℤ) = A102781 (n + 1)

end A102781

/-! ## A102781.P14846700849451277153

`A006093(n+1)-A130290(n+1)`
-/

namespace A102781.P14846700849451277153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A130290 (n + 1)

end

end A102781.P14846700849451277153

namespace A102781

/-- `A006093(n+1)-A130290(n+1)` -/
def P14846700849451277153.Spec : Prop :=
  ∀ n, P14846700849451277153.a n = A102781 (n + 1)

theorem P14846700849451277153.correct : P14846700849451277153.Spec := by
  intro n
  simp only [A102781, Nat.add_sub_cancel, A102781.P14846700849451277153.a, A102781.P207369099020695367.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A130290, A130290.P12006832031725450867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102781

/-! ## A102781.P11349556117260536078

`A067076(n+1)-A100820(n+1)`
-/

namespace A102781.P11349556117260536078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - A100820 (n + 1)

end

end A102781.P11349556117260536078

namespace A102781

/-- `A067076(n+1)-A100820(n+1)` -/
def P11349556117260536078.Spec : Prop :=
  ∀ n, P11349556117260536078.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P7001010816649201085

`A008837(n+1)%A006093(n+1)`
-/

namespace A102781.P7001010816649201085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008837 (n + 1)) (A006093 (n + 1))

end

end A102781.P7001010816649201085

namespace A102781

/-- `A008837(n+1)%A006093(n+1)` -/
def P7001010816649201085.Spec : Prop :=
  ∀ n, P7001010816649201085.a n = A102781 (n + 1)

end A102781

/-! ## A102781.P12635740276910953790

`A078444(n+1)%A005097(n+1)`
-/

namespace A102781.P12635740276910953790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078444 (n + 1)) (A005097 (n + 1))

end

end A102781.P12635740276910953790

namespace A102781

/-- `A078444(n+1)%A005097(n+1)` -/
def P12635740276910953790.Spec : Prop :=
  ∀ n, P12635740276910953790.a n = A102781 (n + 1)

end A102781

/-!
# A102782: Repunit semiprimes.

The programs for A102782, there is no canonical definition to state claims against.
-/

/-! ## A102782.P9011186454184057073

`A000042(A046413(n+1))`
-/

namespace A102782.P9011186454184057073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A046413 (n + 1)).toNat

end

end A102782.P9011186454184057073

/-! ## A102782.P10650091522289959638

`A002275(A046413(2*n+1-n))`
-/

namespace A102782.P10650091522289959638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A046413 (2 * n + 1 - n)).toNat

end

end A102782.P10650091522289959638

/-! ## A102782.P3008096040899492265

`floor(A002275(A046413(n+1)+1)/10)`
-/

namespace A102782.P3008096040899492265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002275 (A046413 (n + 1) + 1).toNat : ℚ) / 10⌋

end

end A102782.P3008096040899492265

/-! ## A102782.P13062818461883805066

`or(A002275(A046413(n+1)), A046053(n+1))`
-/

namespace A102782.P13062818461883805066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002275 (A046413 (n + 1)).toNat) (A046053 (n + 1))

end

end A102782.P13062818461883805066

/-!
# A102784: In chess, the number of "at home" dual-free proof games in n plies.

The programs for A102784, there is no canonical definition to state claims against.
-/

/-! ## A102784.P15510152901813953325

`A002262(A353882(n)+6)`
-/

namespace A102784.P15510152901813953325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A353882 n + 6).toNat

end

end A102784.P15510152901813953325

/-! ## A102784.P5995915029149035861

`A002262(A353885(n)+6)`
-/

namespace A102784.P5995915029149035861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A353885 n + 6).toNat

end

end A102784.P5995915029149035861

/-! ## A102784.P9641334029329598045

`A002262(A353893(n)+6)`
-/

namespace A102784.P9641334029329598045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A353893 n + 6).toNat

end

end A102784.P9641334029329598045

/-! ## A102784.P7836326694211111696

`A002262(A353896(n)+6)`
-/

namespace A102784.P7836326694211111696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A353896 n + 6).toNat

end

end A102784.P7836326694211111696

/-! ## A102784.P12300421316718184808

`A056960(C(A089408(n), n+1))`
-/

namespace A102784.P12300421316718184808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (Nat.choose (A089408 n).toNat (n + 1))

end

end A102784.P12300421316718184808

/-!
# A102785: G.f.: (x-1)/(-2*x^2 + 3*x^3 + 2*x - 1).

The programs for A102785, the canonical program `A102785.P3399911985466458949` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102785 has offset 0).

The definition of A102785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102785.P3762586597755671960

`ogf((1-x)/(1-2x+2x^2-3x^3))`
-/

namespace A102785.P3762586597755671960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 2, -3] n

end

end A102785.P3762586597755671960

namespace A102785

/-- `ogf((1-x)/(1-2x+2x^2-3x^3))` -/
def P3762586597755671960.Spec : Prop :=
  ∀ n, P3762586597755671960.a n = A102785 n

end A102785

/-! ## A102785.P3399911985466458949

`3*a(n-4)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102785

/-- `3*a(n-4)+a(n-1)+a(n-3)` -/
def P3399911985466458949.Spec : Prop :=
  ∀ n, (P3399911985466458949.a n : ℤ) = A102785 n

theorem P3399911985466458949.correct : P3399911985466458949.Spec := by
  intro n
  simp only [A102785]

end A102785

/-! ## A102785.P17695272340973157241

`and(A053585(A025237(n)), A099163(n))`
-/

namespace A102785.P17695272340973157241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053585 (A025237 n).toNat) (A099163 n)

end

end A102785.P17695272340973157241

namespace A102785

/-- `and(A053585(A025237(n)), A099163(n))` -/
def P17695272340973157241.Spec : Prop :=
  ∀ n, P17695272340973157241.a n = A102785 n

end A102785

/-! ## A102785.P5317893179005669190

`and(A053585(A025237(n)), A227104(n))`
-/

namespace A102785.P5317893179005669190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053585 (A025237 n).toNat) (A227104 n)

end

end A102785.P5317893179005669190

namespace A102785

/-- `and(A053585(A025237(n)), A227104(n))` -/
def P5317893179005669190.Spec : Prop :=
  ∀ n, P5317893179005669190.a n = A102785 n

end A102785

/-! ## A102785.P2611742938303254381

`and(A001844(A094780(n)), A227104(n))`
-/

namespace A102785.P2611742938303254381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 (A094780 n).toNat) (A227104 n)

end

end A102785.P2611742938303254381

namespace A102785

/-- `and(A001844(A094780(n)), A227104(n))` -/
def P2611742938303254381.Spec : Prop :=
  ∀ n, P2611742938303254381.a n = A102785 n

end A102785

/-!
# A102786: Integer part of n#/((p-3)# 3#), where p=preceding prime to n.

The programs for A102786, there is no canonical definition to state claims against.
-/

/-! ## A102786.P15035249273408431713

`floor(A116570(2*n+1-A100821(n+1))/6)`
-/

namespace A102786.P15035249273408431713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116570 ((2 * n + 1 : ℤ) - A100821 (n + 1)).toNat : ℚ) / 6⌋

end

end A102786.P15035249273408431713

/-! ## A102786.P5342226310994698196

`floor(A116570(xor(2*n+1, A100821(n+1)))/6)`
-/

namespace A102786.P5342226310994698196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116570 (Int.xor (2 * n + 1 : ℤ) (A100821 (n + 1))).toNat : ℚ) / 6⌋

end

end A102786.P5342226310994698196

/-! ## A102786.P10005530268881951263

`floor(A000040(n+2)*A128059(A005097(n+1))/6)`
-/

namespace A102786.P10005530268881951263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) * A128059 (A005097 (n + 1)).toNat : ℚ) / 6⌋

end

end A102786.P10005530268881951263

/-! ## A102786.P2188557072224662324

`floor(A000040(n+2)*A110560(A154115(n+1))/6)`
-/

namespace A102786.P2188557072224662324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) * A110560 (A154115 (n + 1)).toNat : ℚ) / 6⌋

end

end A102786.P2188557072224662324

/-! ## A102786.P3980108926545754528

`floor(A102790(n+2)/6)`
-/

namespace A102786.P3980108926545754528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102790 (n + 2) : ℚ) / 6⌋

end

end A102786.P3980108926545754528

/-! ## A102786.P6674806032600129315

`ceil(A102790(n+2)/6-A020985(n)²)`
-/

namespace A102786.P6674806032600129315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102790 (n + 2) : ℚ) / 6 - (A020985 n ^ 2 : ℚ)⌉

end

end A102786.P6674806032600129315

/-! ## A102786.P10236157834916717117

`ceil(A102790(n+2)/6-A007318(∑[n]))`
-/

namespace A102786.P10236157834916717117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102790 (n + 2) : ℚ) / 6 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A102786.P10236157834916717117

/-! ## A102786.P1742712692622543872

`ceil(A102790(n+2)/6-A266227(n+1))`
-/

namespace A102786.P1742712692622543872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102790 (n + 2) : ℚ) / 6 - (A266227 (n + 1) : ℚ)⌉

end

end A102786.P1742712692622543872

/-! ## A102786.P1470000974602639281

`ceil(A102790(n+2)/6-A004530(A025443(n)!))`
-/

namespace A102786.P1470000974602639281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102790 (n + 2) : ℚ) / 6 - (A004530 (Nat.factorial (A025443 n).toNat) : ℚ)⌉

end

end A102786.P1470000974602639281

/-! ## A102786.P15542228462558500240

`round(A102790(n+2)/6-A001222(A181848(n+1))/2)`
-/

namespace A102786.P15542228462558500240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A102790 (n + 2) : ℚ) / 6 - (A001222 (A181848 (n + 1)).toNat : ℚ) / 2)

end

end A102786.P15542228462558500240

/-!
# A102788: Integer part of n#/((p-7)# 7#), where p=preceding prime to n.

The programs for A102788, there is no canonical definition to state claims against.
-/

/-! ## A102788.P3613024705484436701

`A175186(A132780(n))`
-/

namespace A102788.P3613024705484436701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175186 (A132780 n).toNat

end

end A102788.P3613024705484436701

/-! ## A102788.P3393625540428131620

`∑[A192002(A192366(n))]`
-/

namespace A102788.P3393625540428131620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A192366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102788.P3393625540428131620

/-! ## A102788.P10510462466953615280

`∑[A309405(A001222(n!))]`
-/

namespace A102788.P10510462466953615280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309405 (A001222 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102788.P10510462466953615280

/-! ## A102788.P15284012966370961477

`A055212(∏[dr(A282801(n))])`
-/

namespace A102788.P15284012966370961477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A282801 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A102788.P15284012966370961477

/-! ## A102788.P1393569468106246758

`A030703(n+1)%A004111(ceil(sqrt(n²+4)))`
-/

namespace A102788.P1393569468106246758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030703 (n + 1 + 1)) (A004111 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat)

end

end A102788.P1393569468106246758

/-!
# A102789: Integer part of n#/((p-11)# 11#), where p=preceding prime to n.

The programs for A102789, there is no canonical definition to state claims against.
-/

/-! ## A102789.P8055253488486344961

`A180199((n+1)*A185143(n))`
-/

namespace A102789.P8055253488486344961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180199 ((n + 1 : ℤ) * A185143 n).toNat

end

end A102789.P8055253488486344961

/-! ## A102789.P5029604915926397055

`A240083(A026008(n))-A026008(n)`
-/

namespace A102789.P5029604915926397055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240083 (A026008 n).toNat - A026008 n

end

end A102789.P5029604915926397055

/-!
# A102790: Integer part of n#/(p-3)#, where p=preceding prime to n.

The programs for A102790, there is no canonical definition to state claims against.
-/

/-! ## A102790.P8670648382618402434

`A116570(Δ[n²]-A100821(n+1))`
-/

namespace A102790.P8670648382618402434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A100821 (n + 1)).toNat

end

end A102790.P8670648382618402434

/-! ## A102790.P1052398770588240306

`A116570(xor(Δ[n²], A100821(n+1)))`
-/

namespace A102790.P1052398770588240306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A100821 (n + 1))).toNat

end

end A102790.P1052398770588240306

/-! ## A102790.P2073693740701859922

`p?[A004273(n)]*A128059(A005097(n+1))`
-/

namespace A102790.P2073693740701859922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A128059 (A005097 (n + 1)).toNat

end

end A102790.P2073693740701859922

/-! ## A102790.P5673376309199674316

`p?[A005408(n)]*A128059(A005097(n+1))`
-/

namespace A102790.P5673376309199674316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A128059 (A005097 (n + 1)).toNat

end

end A102790.P5673376309199674316

/-! ## A102790.P2182819970797577163

`p?[A022998(n)]*A128059(A005097(n+1))`
-/

namespace A102790.P2182819970797577163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A128059 (A005097 (n + 1)).toNat

end

end A102790.P2182819970797577163

/-! ## A102790.P15878326505081581099

`p?[A057716(n)]*A128059(A005097(n+1))`
-/

namespace A102790.P15878326505081581099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A128059 (A005097 (n + 1)).toNat

end

end A102790.P15878326505081581099

/-! ## A102790.P11177986977218622362

`p?[A079097(n)]*A128059(A005097(n+1))`
-/

namespace A102790.P11177986977218622362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A128059 (A005097 (n + 1)).toNat

end

end A102790.P11177986977218622362

/-! ## A102790.P5847149079193779466

`p?[A128059(n)]*A128059(A005097(n+1))`
-/

namespace A102790.P5847149079193779466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A128059 (A005097 (n + 1)).toNat

end

end A102790.P5847149079193779466

/-! ## A102790.P300221659816796864

`A000040(n+2)*A128059(A005097(n+1))`
-/

namespace A102790.P300221659816796864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A128059 (A005097 (n + 1)).toNat

end

end A102790.P300221659816796864

/-! ## A102790.P11435805538112668449

`A000040(n+2)*A110560(A154115(n+1))`
-/

namespace A102790.P11435805538112668449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A110560 (A154115 (n + 1)).toNat

end

end A102790.P11435805538112668449

/-!
# A102791: Integer part of n#/(p-5)#, where p=preceding prime to n.

The programs for A102791, there is no canonical definition to state claims against.
-/

/-! ## A102791.P466807477117797071

`A322361(2*A046301(n+1))`
-/

namespace A102791.P466807477117797071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (2 * A046301 (n + 1)).toNat

end

end A102791.P466807477117797071

/-! ## A102791.P7330002129806447261

`A322361(lcm(2, A046301(n+1)))`
-/

namespace A102791.P7330002129806447261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (Int.lcm 2 (A046301 (n + 1)))

end

end A102791.P7330002129806447261

/-! ## A102791.P17953594062619523826

`A006094(n+2)*A014491(A097553(n))`
-/

namespace A102791.P17953594062619523826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) * A014491 (A097553 n).toNat

end

end A102791.P17953594062619523826

/-!
# A102792: Integer part of n#/(p-7)#, where p=preceding prime to n.

The programs for A102792, there is no canonical definition to state claims against.
-/

/-! ## A102792.P17072751488666551258

`A003961(lcm(A006094(n+2), A275272(n+1)))`
-/

namespace A102792.P17072751488666551258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lcm (A006094 (n + 2)) (A275272 (n + 1)))

end

end A102792.P17072751488666551258

/-! ## A102792.P8802420477041973879

`lcm(A003309(n+3), A006094(A077739(n+3)))`
-/

namespace A102792.P8802420477041973879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003309 (n + 3)) (A006094 (A077739 (n + 3)).toNat)

end

end A102792.P8802420477041973879

/-! ## A102792.P1088663030837815092

`A002110(n+4)/A002110(A029963(n+1)+1)`
-/

namespace A102792.P1088663030837815092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 4) : ℚ) / (A002110 (A029963 (n + 1) + 1).toNat : ℚ)

end

end A102792.P1088663030837815092

/-!
# A102795: Let f(n) = A104246(n) be the minimal number of nonzero tetrahedral numbers that add to n; sequence gives numbers n for which f(n) = 2.

The programs for A102795, there is no canonical definition to state claims against.
-/

/-! ## A102795.P11492354848390192326

`filter[A102798(n+1), A014306(#)]`
-/

namespace A102795.P11492354848390192326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A102795.P11492354848390192326

/-! ## A102795.P18287394956232450094

`filter[A330031(n+1), A014306(#)]`
-/

namespace A102795.P18287394956232450094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A102795.P18287394956232450094

/-! ## A102795.P6153436427092110231

`eq[2, A104246(n+1)]+1`
-/

namespace A102795.P6153436427092110231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102795.P6153436427092110231

/-! ## A102795.P2642684880090432137

`eq[2, A104246(A028310(n))]`
-/

namespace A102795.P2642684880090432137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102795.P2642684880090432137

/-! ## A102795.P17085224357126351537

`A020725(eq[2, A104246(n+1)])`
-/

namespace A102795.P17085224357126351537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102795.P17085224357126351537

/-! ## A102795.P12860978508214715719

`∩[A102798(n+1), A145397(n+1)]`
-/

namespace A102795.P12860978508214715719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102795.P12860978508214715719

/-! ## A102795.P7413010016634672037

`∩[A145397(n+1), A330031(n+1)]`
-/

namespace A102795.P7413010016634672037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102795.P7413010016634672037

/-! ## A102795.P4484586736602107102

`eq[2, A104246(A000007(n)+n)]`
-/

namespace A102795.P4484586736602107102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102795.P4484586736602107102

/-! ## A102795.P12625376706160577114

`eq[2, A104246(A065033(2*n))]`
-/

namespace A102795.P12625376706160577114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102795.P12625376706160577114

/-! ## A102795.P7081051771680651483

`eq[2, A104246(A123108(2*n))]`
-/

namespace A102795.P7081051771680651483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102795.P7081051771680651483

/-!
# A102796: Let f(n) = A104246(n) be the minimal number of nonzero tetrahedral numbers that add to n; sequence gives numbers n for which f(n) = 3.

The programs for A102796, there is no canonical definition to state claims against.
-/

/-! ## A102796.P12247149856979620808

`eq[3, A104246(n+1)]+1`
-/

namespace A102796.P12247149856979620808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102796.P12247149856979620808

/-! ## A102796.P11103467629943532763

`eq[3, A104246(gcd(n, C(2, n²)))]`
-/

namespace A102796.P11103467629943532763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (Nat.gcd n (Nat.choose 2 (n ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102796.P11103467629943532763

/-! ## A102796.P17607573727390044430

`eq[3, A104246(ceil(abs(1/5-n)))]`
-/

namespace A102796.P17607573727390044430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 ⌈|(1 : ℚ) / 5 - (n : ℚ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102796.P17607573727390044430

/-! ## A102796.P11852685578908551309

`A020725(eq[3, A104246(n+1)])`
-/

namespace A102796.P11852685578908551309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102796.P11852685578908551309

/-! ## A102796.P17900732686828511517

`eq[1, A104246(A028310(n))-2]`
-/

namespace A102796.P17900732686828511517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102796.P17900732686828511517

/-! ## A102796.P17558976305804896148

`A065475(eq[3, A104246(n+1)])`
-/

namespace A102796.P17558976305804896148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102796.P17558976305804896148

/-! ## A102796.P11108857804241160372

`A114637(eq[3, A104246(n+1)])`
-/

namespace A102796.P11108857804241160372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102796.P11108857804241160372

/-!
# A102797: Let f(n) = A104246(n) be the minimal number of nonzero tetrahedral numbers that add to n; sequence gives numbers n for which f(n) = 4.

The programs for A102797, there is no canonical definition to state claims against.
-/

/-! ## A102797.P18105567986120557100

`eq[4, A104246(n+1)]+1`
-/

namespace A102797.P18105567986120557100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102797.P18105567986120557100

/-! ## A102797.P13595241726729546033

`eq[4, A104246(or(n, C(2, n)))]`
-/

namespace A102797.P13595241726729546033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (Nat.lor n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102797.P13595241726729546033

/-! ## A102797.P3647368146083816238

`eq[4, A104246(ceil(abs(1/5-n)))]`
-/

namespace A102797.P3647368146083816238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 ⌈|(1 : ℚ) / 5 - (n : ℚ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102797.P3647368146083816238

/-! ## A102797.P28891834436462694

`eq[2, A104246(gcd(n, C(2, n²)))-2]`
-/

namespace A102797.P28891834436462694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (Nat.gcd n (Nat.choose 2 (n ^ 2))) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102797.P28891834436462694

/-! ## A102797.P5201124769748992507

`A020725(eq[4, A104246(n+1)])`
-/

namespace A102797.P5201124769748992507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102797.P5201124769748992507

/-! ## A102797.P843021093356187822

`A065475(eq[4, A104246(n+1)])`
-/

namespace A102797.P843021093356187822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102797.P843021093356187822

/-! ## A102797.P16367402394066339113

`A114637(eq[4, A104246(n+1)])`
-/

namespace A102797.P16367402394066339113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102797.P16367402394066339113

/-! ## A102797.P5632844795307537120

`lt[2, A001222(A020639(n+1)*A104246(n+1))]+1`
-/

namespace A102797.P5632844795307537120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020639 (n + 1) * A104246 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A102797.P5632844795307537120

/-!
# A102798: Let f(n) = A104246(n) be the minimal number of nonzero tetrahedral numbers that add to n; sequence gives numbers n for which f(n) <= 2.

The programs for A102798, there is no canonical definition to state claims against.
-/

/-! ## A102798.P9185887320567073700

`∪[A102856(n+2), A159693(n+2)]`
-/

namespace A102798.P9185887320567073700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102856 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159693 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102798.P9185887320567073700

/-! ## A102798.P503353651309802949

`lt[A104246(n+1), 3]+1`
-/

namespace A102798.P503353651309802949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102798.P503353651309802949

/-! ## A102798.P13989798896675431971

`eq[Δ[A029043(n+4)], A025853(2*n+1)]`
-/

namespace A102798.P13989798896675431971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029043 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A102798.P13989798896675431971

/-!
# A102799: Let f(n) = A104246(n) be the minimal number of nonzero tetrahedral numbers that add to n; sequence gives numbers n for which f(n) <= 3.

The programs for A102799, there is no canonical definition to state claims against.
-/

/-! ## A102799.P5308420436542059018

`lt[A104246(n+1), 4]+1`
-/

namespace A102799.P5308420436542059018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102799.P5308420436542059018

/-! ## A102799.P14364180258211959319

`∪[A102796(n+1), A102798(n+1)]`
-/

namespace A102799.P14364180258211959319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102799.P14364180258211959319

/-! ## A102799.P6795804539093140405

`∩[comp[A102797(n+1)], A102800(n+1)]`
-/

namespace A102799.P6795804539093140405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A102799.P6795804539093140405

/-! ## A102799.P16263050660600261354

`lt[A281367(and(1, A256172(n+1))+n), 4]+1`
-/

namespace A102799.P16263050660600261354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (Int.land 1 (A256172 (n + 1)) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102799.P16263050660600261354

/-! ## A102799.P11568922782162181675

`lt[A360334(A098374(n+1)), and(2*n, -n)]`
-/

namespace A102799.P11568922782162181675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360334 (A098374 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102799.P11568922782162181675

