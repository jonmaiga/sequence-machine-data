import SequenceMachineLib
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
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C026

/-!
# A282701: a(n) = maximal number of real roots of any of the polynomials c_0 + c_1*x + c_2*x^2 + ... + c_n*x^n where the coefficients c_i are -1, 0, or 1, c_0 != 0, and c_n != 0.

The programs for A282701, there is no canonical definition to state claims against.
-/

/-! ## A282701.P14201885987505867727

`A064289(lt[and(n, 2*n), 3])`
-/

namespace A282701.P14201885987505867727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282701.P14201885987505867727

/-! ## A282701.P8284334194200529866

`∑[A011592(A354912(n))]`
-/

namespace A282701.P8284334194200529866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 (A354912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282701.P8284334194200529866

/-! ## A282701.P10828919443823632002

`∑[A105812(A299472(n+1))]`
-/

namespace A282701.P10828919443823632002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A299472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282701.P10828919443823632002

/-! ## A282701.P3573445613020807332

`∑[A105812(comp[A232589(n+1)])]`
-/

namespace A282701.P3573445613020807332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282701.P3573445613020807332

/-! ## A282701.P9437979896545431544

`∑[A165476(comp[A175914(n+1)])]`
-/

namespace A282701.P9437979896545431544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175914 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282701.P9437979896545431544

/-!
# A282702: a(n) = 3*a(n-1) + a(n-2), with a(0)=4, a(1)=11.

The programs for A282702, the canonical program `A282702.P14372766415453884995` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282702 has offset 0).

The definition of A282702 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A282702.P14372766415453884995`, by `A282702.P14372766415453884995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282702.P14372766415453884995

`3*a(n-1)+a(n-2)` with `a(0)=4, a(1)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282702

/-- `3*a(n-1)+a(n-2)` -/
def P14372766415453884995.Spec : Prop :=
  ∀ n, (P14372766415453884995.a n : ℤ) = A282702 n

theorem P14372766415453884995.correct : P14372766415453884995.Spec := by
  intro n
  simp only [A282702]

end A282702

/-! ## A282702.P17826419645831290187

`a(n-2)+lcm(3, a(n-1))` with `a(0)=4, a(1)=11`
-/

namespace A282702.P17826419645831290187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 11] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1))

end

end A282702.P17826419645831290187

namespace A282702

/-- `a(n-2)+lcm(3, a(n-1))` -/
def P17826419645831290187.Spec : Prop :=
  ∀ n, (P17826419645831290187.a n : ℤ) = A282702 n

end A282702

/-! ## A282702.P4471124234384045862

`Δ[A108300(n)]`
-/

namespace A282702.P4471124234384045862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282702.P4471124234384045862

namespace A282702

/-- `Δ[A108300(n)]` -/
def P4471124234384045862.Spec : Prop :=
  ∀ n, P4471124234384045862.a n = A282702 n

end A282702

/-! ## A282702.P9318238557198861376

`Δ[Δ[A052924(n)]]`
-/

namespace A282702.P9318238557198861376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282702.P9318238557198861376

namespace A282702

/-- `Δ[Δ[A052924(n)]]` -/
def P9318238557198861376.Spec : Prop :=
  ∀ n, P9318238557198861376.a n = A282702 n

end A282702

/-! ## A282702.P2083940645539373862

`A107856(2*n+5)`
-/

namespace A282702.P2083940645539373862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107856 (2 * n + 5)

end

end A282702.P2083940645539373862

namespace A282702

/-- `A107856(2*n+5)` -/
def P2083940645539373862.Spec : Prop :=
  ∀ n, P2083940645539373862.a n = A282702 n

end A282702

/-! ## A282702.P3351899639571842875

`A282703(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A282702.P3351899639571842875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A282703 (n - 1) + a (n - 1)

end

end A282702.P3351899639571842875

namespace A282702

/-- `A282703(n-1)+a(n-1)` -/
def P3351899639571842875.Spec : Prop :=
  ∀ n, P3351899639571842875.a n = A282702 n

end A282702

/-! ## A282702.P9418736530689803287

`Δ[Δ[A249579(2*(2*n+1))]]`
-/

namespace A282702.P9418736530689803287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 * (2 * n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282702.P9418736530689803287

namespace A282702

/-- `Δ[Δ[A249579(2*(2*n+1))]]` -/
def P9418736530689803287.Spec : Prop :=
  ∀ n, P9418736530689803287.a n = A282702 n

end A282702

/-! ## A282702.P10052388672465744994

`A052924(n)+A052906(n+1)`
-/

namespace A282702.P10052388672465744994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + A052906 (n + 1)

end

end A282702.P10052388672465744994

namespace A282702

/-- `A052924(n)+A052906(n+1)` -/
def P10052388672465744994.Spec : Prop :=
  ∀ n, P10052388672465744994.a n = A282702 n

end A282702

/-! ## A282702.P8869373533465561311

`A180148(n)+A052991(n+1)`
-/

namespace A282702.P8869373533465561311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180148 n + A052991 (n + 1)

end

end A282702.P8869373533465561311

namespace A282702

/-- `A180148(n)+A052991(n+1)` -/
def P8869373533465561311.Spec : Prop :=
  ∀ n, P8869373533465561311.a n = A282702 n

end A282702

/-! ## A282702.P4627869814447576167

`A108300(n+1)-A108300(n)`
-/

namespace A282702.P4627869814447576167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 (n + 1) - A108300 n

end

end A282702.P4627869814447576167

namespace A282702

/-- `A108300(n+1)-A108300(n)` -/
def P4627869814447576167.Spec : Prop :=
  ∀ n, P4627869814447576167.a n = A282702 n

end A282702

/-! ## A282702.P5089834767083002916

`A006190(n)+2*A180148(n)`
-/

namespace A282702.P5089834767083002916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n + 2 * A180148 n

end

end A282702.P5089834767083002916

namespace A282702

/-- `A006190(n)+2*A180148(n)` -/
def P5089834767083002916.Spec : Prop :=
  ∀ n, P5089834767083002916.a n = A282702 n

end A282702

/-! ## A282702.P12679137189202517891

`record[A107856(A092092(n+4)+2)]`
-/

namespace A282702.P12679137189202517891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107856 (A092092 (n + 4) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282702.P12679137189202517891

namespace A282702

/-- `record[A107856(A092092(n+4)+2)]` -/
def P12679137189202517891.Spec : Prop :=
  ∀ n, P12679137189202517891.a n = A282702 n

end A282702

/-! ## A282702.P10070206363845075234

`A006497(n)+2*A003688(n+1)`
-/

namespace A282702.P10070206363845075234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n + 2 * A003688 (n + 1)

end

end A282702.P10070206363845075234

namespace A282702

/-- `A006497(n)+2*A003688(n+1)` -/
def P10070206363845075234.Spec : Prop :=
  ∀ n, P10070206363845075234.a n = A282702 n

end A282702

/-! ## A282702.P14965709107775514934

`A052924(n)+A018186(2*n+1)`
-/

namespace A282702.P14965709107775514934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + A018186 (2 * n + 1)

end

end A282702.P14965709107775514934

namespace A282702

/-- `A052924(n)+A018186(2*n+1)` -/
def P14965709107775514934.Spec : Prop :=
  ∀ n, P14965709107775514934.a n = A282702 n

end A282702

/-! ## A282702.P15354005970092252569

`A052924(n+1)+2*A052924(n)`
-/

namespace A282702.P15354005970092252569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 (n + 1) + 2 * A052924 n

end

end A282702.P15354005970092252569

namespace A282702

/-- `A052924(n+1)+2*A052924(n)` -/
def P15354005970092252569.Spec : Prop :=
  ∀ n, P15354005970092252569.a n = A282702 n

end A282702

/-! ## A282702.P13021192154589491413

`A180148(n+1)-A018186(2*n)`
-/

namespace A282702.P13021192154589491413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180148 (n + 1) - A018186 (2 * n)

end

end A282702.P13021192154589491413

namespace A282702

/-- `A180148(n+1)-A018186(2*n)` -/
def P13021192154589491413.Spec : Prop :=
  ∀ n, P13021192154589491413.a n = A282702 n

end A282702

/-! ## A282702.P10153773831531235200

`A003688(n+2)-2*A006190(n)`
-/

namespace A282702.P10153773831531235200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003688 (n + 2) - 2 * A006190 n

end

end A282702.P10153773831531235200

namespace A282702

/-- `A003688(n+2)-2*A006190(n)` -/
def P10153773831531235200.Spec : Prop :=
  ∀ n, P10153773831531235200.a n = A282702 n

end A282702

/-! ## A282702.P1180191870703902326

`A305889(2*n+3)+A180148(n)`
-/

namespace A282702.P1180191870703902326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n + 3) + A180148 n

end

end A282702.P1180191870703902326

namespace A282702

/-- `A305889(2*n+3)+A180148(n)` -/
def P1180191870703902326.Spec : Prop :=
  ∀ n, P1180191870703902326.a n = A282702 n

end A282702

/-! ## A282702.P1128730200914004641

`A107855(2*(n+1))+A006497(n+1)`
-/

namespace A282702.P1128730200914004641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 1)) + A006497 (n + 1)

end

end A282702.P1128730200914004641

namespace A282702

/-- `A107855(2*(n+1))+A006497(n+1)` -/
def P1128730200914004641.Spec : Prop :=
  ∀ n, P1128730200914004641.a n = A282702 n

end A282702

/-!
# A282703: a(n) = 3*a(n-1) + a(n-2), with a(0)=7, a(1)=26.

The programs for A282703, the canonical program `A282703.P11364442034560566890` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282703 has offset 0).

The definition of A282703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A282703.P11364442034560566890`, by `A282703.P11364442034560566890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282703.P11364442034560566890

`3*a(n-1)+a(n-2)` with `a(0)=7, a(1)=26`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282703

/-- `3*a(n-1)+a(n-2)` -/
def P11364442034560566890.Spec : Prop :=
  ∀ n, (P11364442034560566890.a n : ℤ) = A282703 n

theorem P11364442034560566890.correct : P11364442034560566890.Spec := by
  intro n
  simp only [A282703]

end A282703

/-! ## A282703.P11590352045627438514

`A052924(n)+2*Δ[A180148(n)]`
-/

namespace A282703.P11590352045627438514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + 2 * (f1 (n + 1) - f1 n)

end

end A282703.P11590352045627438514

namespace A282703

/-- `A052924(n)+2*Δ[A180148(n)]` -/
def P11590352045627438514.Spec : Prop :=
  ∀ n, P11590352045627438514.a n = A282703 n

end A282703

/-! ## A282703.P8785378334685920558

`(ratio[A108300(n)]+2)*A108300(n)`
-/

namespace A282703.P8785378334685920558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + 2) * (A108300 n : ℚ)

end

end A282703.P8785378334685920558

namespace A282703

/-- `(ratio[A108300(n)]+2)*A108300(n)` -/
def P8785378334685920558.Spec : Prop :=
  ∀ n, P8785378334685920558.a n = (A282703 n : ℚ)

end A282703

/-! ## A282703.P18309159148095217292

`A108300(n+1)+2*A108300(n)`
-/

namespace A282703.P18309159148095217292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 (n + 1) + 2 * A108300 n

end

end A282703.P18309159148095217292

namespace A282703

/-- `A108300(n+1)+2*A108300(n)` -/
def P18309159148095217292.Spec : Prop :=
  ∀ n, P18309159148095217292.a n = A282703 n

end A282703

/-! ## A282703.P11894877471067001772

`A052924(n)+6*A003688(n+1)`
-/

namespace A282703.P11894877471067001772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + 6 * A003688 (n + 1)

end

end A282703.P11894877471067001772

namespace A282703

/-- `A052924(n)+6*A003688(n+1)` -/
def P11894877471067001772.Spec : Prop :=
  ∀ n, P11894877471067001772.a n = A282703 n

end A282703

/-! ## A282703.P13157550185460278105

`A108300(n+1)+A003688(n+2)-A006497(n)`
-/

namespace A282703.P13157550185460278105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 (n + 1) + (A003688 (n + 2) - A006497 n)

end

end A282703.P13157550185460278105

namespace A282703

/-- `A108300(n+1)+A003688(n+2)-A006497(n)` -/
def P13157550185460278105.Spec : Prop :=
  ∀ n, P13157550185460278105.a n = A282703 n

end A282703

/-! ## A282703.P16222465968428910604

`A003688(n+1)+A006497(n+1)+A006497(n+1)`
-/

namespace A282703.P16222465968428910604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003688 (n + 1) + (A006497 (n + 1) + A006497 (n + 1))

end

end A282703.P16222465968428910604

namespace A282703

/-- `A003688(n+1)+A006497(n+1)+A006497(n+1)` -/
def P16222465968428910604.Spec : Prop :=
  ∀ n, P16222465968428910604.a n = A282703 n

end A282703

/-! ## A282703.P4807795374338455294

`Δ[A282702(n)]`
-/

namespace A282703.P4807795374338455294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282703.P4807795374338455294

namespace A282703

/-- `Δ[A282702(n)]` -/
def P4807795374338455294.Spec : Prop :=
  ∀ n, P4807795374338455294.a n = A282703 n

end A282703

/-! ## A282703.P10917476408019640058

`Δ[Δ[A108300(n)]]`
-/

namespace A282703.P10917476408019640058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282703.P10917476408019640058

namespace A282703

/-- `Δ[Δ[A108300(n)]]` -/
def P10917476408019640058.Spec : Prop :=
  ∀ n, P10917476408019640058.a n = A282703 n

end A282703

/-! ## A282703.P8741909322822901534

`Δ[Δ[Δ[A052924(n)]]]`
-/

namespace A282703.P8741909322822901534
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282703.P8741909322822901534

namespace A282703

/-- `Δ[Δ[Δ[A052924(n)]]]` -/
def P8741909322822901534.Spec : Prop :=
  ∀ n, P8741909322822901534.a n = A282703 n

end A282703

/-! ## A282703.P9296269446198809307

`A282702(n+1)-A282702(n)`
-/

namespace A282703.P9296269446198809307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282702 (n + 1) - A282702 n

end

end A282703.P9296269446198809307

namespace A282703

/-- `A282702(n+1)-A282702(n)` -/
def P9296269446198809307.Spec : Prop :=
  ∀ n, P9296269446198809307.a n = A282703 n

end A282703

/-!
# A282704: (Twice product of first n primes) - 1.

The programs for A282704, there is no canonical definition to state claims against.
-/

/-! ## A282704.P7683927568863034275

`2*A002110(n)-1`
-/

namespace A282704.P7683927568863034275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002110 n - 1

end

end A282704.P7683927568863034275

/-! ## A282704.P18065391700810703776

`2*A006862(n)-3`
-/

namespace A282704.P18065391700810703776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006862 n - 3

end

end A282704.P18065391700810703776

/-! ## A282704.P12004260460856128313

`A001041(n)/6-1`
-/

namespace A282704.P12004260460856128313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001041 n : ℚ) / 6 - 1

end

end A282704.P12004260460856128313

/-! ## A282704.P17057769875964519244

`record[2*A096334(n)-1]`
-/

namespace A282704.P17057769875964519244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096334 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282704.P17057769875964519244

/-! ## A282704.P8046531878364172694

`∏[A162753(2*n+1)]-1`
-/

namespace A282704.P8046531878364172694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A282704.P8046531878364172694

/-! ## A282704.P14639330887605520867

`2*∏[record[A006530(n+1)]]-1`
-/

namespace A282704.P14639330887605520867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A282704.P14639330887605520867

/-! ## A282704.P5033062133740424980

`2*∏[record[A020639(n+1)]]-1`
-/

namespace A282704.P5033062133740424980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A282704.P5033062133740424980

/-! ## A282704.P3373868097209723933

`∏[A000040(round(sqrt(n²+1)))]-1`
-/

namespace A282704.P3373868097209723933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A282704.P3373868097209723933

/-! ## A282704.P16969709392597410509

`(a(n-1)+1)*A000040(n)-1` with `a(0)=1`
-/

namespace A282704.P16969709392597410509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) * A000040 n - 1

end

end A282704.P16969709392597410509

/-! ## A282704.P4886868019375123061

`∏[abs(comp[A018252(n+1)]-1)+1]-1`
-/

namespace A282704.P4886868019375123061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A282704.P4886868019375123061

/-!
# A282706: Smallest prime factor of A020549(n) = (n!)^2 + 1.

The programs for A282706, there is no canonical definition to state claims against.
-/

/-! ## A282706.P7342871535125686020

`A089120(n!)`
-/

namespace A282706.P7342871535125686020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (Nat.factorial n)

end

end A282706.P7342871535125686020

/-! ## A282706.P3235208441734279369

`A089120(∏[round(1/acot(n))])`
-/

namespace A282706.P3235208441734279369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282706.P3235208441734279369

/-! ## A282706.P6366955553233689277

`A089120(∏[ceil(abs(γ-n))])`
-/

namespace A282706.P6366955553233689277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282706.P6366955553233689277

/-! ## A282706.P1508975107181966682

`A014442(A247339(n!))`
-/

namespace A282706.P1508975107181966682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A247339 (Nat.factorial n)).toNat

end

end A282706.P1508975107181966682

/-!
# A282707: The least prime p of prime triple p,q,r such that q - p = 2n and r - q = 2n + 2.

The programs for A282707, there is no canonical definition to state claims against.
-/

/-! ## A282707.P15767297071009489943

`A239586(A001715(n+4)-A000247(n+2))`
-/

namespace A282707.P15767297071009489943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239586 (A001715 (n + 4) - A000247 (n + 2)).toNat

end

end A282707.P15767297071009489943

/-!
# A282708: a(n) = binomial(2*n,n) - ceiling(2^(2*n)/(n+1)).

The programs for A282708, the canonical program `A282708.P8316200671036246858` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282708 has offset 0).

The definition of A282708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282708.P8316200671036246858

`A000984(n)-A053637(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A282708

/-- `A000984(n)-A053637(2*(n+1))` -/
def P8316200671036246858.Spec : Prop :=
  ∀ n, P8316200671036246858.a n = A282708 n

theorem P8316200671036246858.correct : P8316200671036246858.Spec := by
  intro n
  simp only [A282708]

end A282708

/-! ## A282708.P8610110722547786311

`A001405(2*n)-ceil(4^n/(n+1))`
-/

namespace A282708.P8610110722547786311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - ⌈(4 ^ n : ℚ) / (n + 1 : ℚ)⌉

end

end A282708.P8610110722547786311

namespace A282708

/-- `A001405(2*n)-ceil(4^n/(n+1))` -/
def P8610110722547786311.Spec : Prop :=
  ∀ n, P8610110722547786311.a n = A282708 n

end A282708

/-! ## A282708.P18043422043867527182

`floor(A000984(n)-A000302(n)/(n+1))`
-/

namespace A282708.P18043422043867527182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n : ℚ) - (A000302 n : ℚ) / (n + 1 : ℚ)⌋

end

end A282708.P18043422043867527182

namespace A282708

/-- `floor(A000984(n)-A000302(n)/(n+1))` -/
def P18043422043867527182.Spec : Prop :=
  ∀ n, P18043422043867527182.a n = A282708 n

end A282708

/-! ## A282708.P5120588562817986008

`floor(n*A301278(n)/A301279(n))`
-/

namespace A282708.P5120588562817986008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((A301278 n : ℚ) / (A301279 n : ℚ))⌋

end

end A282708.P5120588562817986008

namespace A282708

/-- `floor(n*A301278(n)/A301279(n))` -/
def P5120588562817986008.Spec : Prop :=
  ∀ n, P5120588562817986008.a n = A282708 n

end A282708

/-! ## A282708.P10874084450264719810

`floor(A191309(2*n+1)/(n+1))`
-/

namespace A282708.P10874084450264719810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191309 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A282708.P10874084450264719810

namespace A282708

/-- `floor(A191309(2*n+1)/(n+1))` -/
def P10874084450264719810.Spec : Prop :=
  ∀ n, P10874084450264719810.a n = A282708 n

end A282708

/-!
# A282709: a(n) = floor((2*n+2)^n/(n+1)!) - binomial(2*n,n).

The programs for A282709, there is no canonical definition to state claims against.
-/

/-! ## A282709.P15107116261350701298

`and(-3, A002265(A296661(n)))`
-/

namespace A282709.P15107116261350701298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A002265 (A296661 n).toNat)

end

end A282709.P15107116261350701298

/-! ## A282709.P6111453425685692109

`A060819(A001900(n))-(∏[2-n²%3]-1)`
-/

namespace A282709.P6111453425685692109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A001900 n).toNat - (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A282709.P6111453425685692109

/-! ## A282709.P5493894430731855603

`A264965(A023037(n))%A000272(n)`
-/

namespace A282709.P5493894430731855603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264965 (A023037 n).toNat) (A000272 n)

end

end A282709.P5493894430731855603

/-!
# A282710: a(n) = binomial(2*n,n) - ceiling(4^n/(2*sqrt(n))).

The programs for A282710, there is no canonical definition to state claims against.
-/

/-! ## A282710.P15304505754264254017

`A122446(n)-A337335(A025535(n))`
-/

namespace A282710.P15304505754264254017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122446 n - A337335 (A025535 n).toNat

end

end A282710.P15304505754264254017

/-! ## A282710.P7432351036587788704

`A198957(n)-A162220(A351933(n))`
-/

namespace A282710.P7432351036587788704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198957 n - A162220 (A351933 n).toNat

end

end A282710.P7432351036587788704

/-! ## A282710.P13488644934283656216

`A334415(A234008(n+1)-A001221(n+1))`
-/

namespace A282710.P13488644934283656216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A234008 (n + 1) - A001221 (n + 1)).toNat

end

end A282710.P13488644934283656216

/-!
# A282711: a(n) is the number of terms of A003052 that are <= n.

The programs for A282711, there is no canonical definition to state claims against.
-/

/-! ## A282711.P10783697405767584817

`∑[1-char[∑{digits}[n+1, #]+n]]`
-/

namespace A282711.P10783697405767584817
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282711.P10783697405767584817

/-! ## A282711.P15283845714751323570

`∑[xor(1, char[∑{digits}[n+1, #]+n])]`
-/

namespace A282711.P15283845714751323570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282711.P15283845714751323570

/-! ## A282711.P16082872353039074982

`∑[char[∑[3*floor(n/8)²-1]]]`
-/

namespace A282711.P16082872353039074982
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 8⌋ ^ 2 - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282711.P16082872353039074982

/-! ## A282711.P5091232500805664283

`comp[3*gcd(n-1, ∑[and(4, n²)])]-n`
-/

namespace A282711.P5091232500805664283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.gcd ((n : ℤ) - 1) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A282711.P5091232500805664283

/-! ## A282711.P14718721540690035404

`abs(∑[1-A230093(n+1)])`
-/

namespace A282711.P14718721540690035404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A230093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A282711.P14718721540690035404

/-!
# A282712: Orbit of 23 under repeated applications of the map m -> A127202(m).

The programs for A282712, there is no canonical definition to state claims against.
-/

/-! ## A282712.P10496618114984342822

`A127202(a(n-1))` with `a(0)=23`
-/

namespace A282712.P10496618114984342822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  A127202 (a (n - 1)).toNat

end

end A282712.P10496618114984342822

/-!
# A282714: Base-2 generalized Pascal triangle P_2 read by rows (see Comments for precise definition).

The programs for A282714, there is no canonical definition to state claims against.
-/

/-! ## A282714.P13592921490647590532

`1-Δ[A033683(A304320(n+1))]`
-/

namespace A282714.P13592921490647590532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (A304320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A282714.P13592921490647590532

/-! ## A282714.P6903882147348236194

`Δ[A350847(A331562(n)+2)]+1`
-/

namespace A282714.P6903882147348236194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (A331562 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A282714.P6903882147348236194

/-! ## A282714.P5198228258818632140

`A340877(A113370(n))%3`
-/

namespace A282714.P5198228258818632140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340877 (A113370 n).toNat) 3

end

end A282714.P5198228258818632140

/-! ## A282714.P4722808903772827667

`Δ[A018843(A331571(n))]+1`
-/

namespace A282714.P4722808903772827667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A331571 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A282714.P4722808903772827667

/-! ## A282714.P14615477600311388289

`Δ[A283316(A036969(n+1))]+1`
-/

namespace A282714.P14615477600311388289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (A036969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A282714.P14615477600311388289

/-!
# A282715: Number of nonzero entries in row n of the base-3 generalized Pascal triangle P_3.

The programs for A282715, there is no canonical definition to state claims against.
-/

/-! ## A282715.P6039146154622182720

`Δ[A284442(n)]`
-/

namespace A282715.P6039146154622182720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282715.P6039146154622182720

/-! ## A282715.P8843494762069863908

`A284442(n+1)-A284442(n)`
-/

namespace A282715.P8843494762069863908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284442 (n + 1) - A284442 n

end

end A282715.P8843494762069863908

/-! ## A282715.P10062655279508919885

`A284442(n+1)+A001489(A284442(n)+1)+1`
-/

namespace A282715.P10062655279508919885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284442 (n + 1) + A001489 (A284442 n + 1).toNat + 1

end

end A282715.P10062655279508919885

/-! ## A282715.P803890034377975125

`A045888(A007089(3*n+1))+1`
-/

namespace A282715.P803890034377975125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045888 (A007089 (3 * n + 1)).toNat + 1

end

end A282715.P803890034377975125

/-! ## A282715.P12773467734071122473

`A000120(xor(A047273(n+1), A209257(n)))`
-/

namespace A282715.P12773467734071122473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A047273 (n + 1)) (A209257 n)).toNat

end

end A282715.P12773467734071122473

/-!
# A282716: Generalized Pascal triangle based on Zeckendorf representation of numbers, read by rows.

The programs for A282716, there is no canonical definition to state claims against.
-/

/-! ## A282716.P591426471906787743

`A367905(A004200(3*(n+1))*A009963(n))`
-/

namespace A282716.P591426471906787743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (A004200 (3 * (n + 1)) * A009963 n).toNat

end

end A282716.P591426471906787743

/-!
# A282717: Number of nonzero entries in row n of A282716.

The programs for A282717, the canonical program `A282717.P78600112669793230` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282717 has offset 0).

The definition of A282717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282717.P2245086382909643851

`A124758(A022340(n))`
-/

namespace A282717.P2245086382909643851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A022340 n).toNat

end

end A282717.P2245086382909643851

namespace A282717

/-- `A124758(A022340(n))` -/
def P2245086382909643851.Spec : Prop :=
  ∀ n, P2245086382909643851.a n = A282717 n

end A282717

/-! ## A282717.P16979192353312355292

`A124758(record[A213064(n)])`
-/

namespace A282717.P16979192353312355292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282717.P16979192353312355292

namespace A282717

/-- `A124758(record[A213064(n)])` -/
def P16979192353312355292.Spec : Prop :=
  ∀ n, P16979192353312355292.a n = A282717 n

end A282717

/-! ## A282717.P4902804598827752399

`A124758((A022341(n)-1)/2)`
-/

namespace A282717.P4902804598827752399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (SequenceMachineLib.roundAway ((A022341 n - 1 : ℚ) / 2)).toNat

end

end A282717.P4902804598827752399

namespace A282717

/-- `A124758((A022341(n)-1)/2)` -/
def P4902804598827752399.Spec : Prop :=
  ∀ n, P4902804598827752399.a n = A282717 n

end A282717

/-! ## A282717.P8150041268305372978

`A124758(record[A003188(2*n)-n])`
-/

namespace A282717.P8150041268305372978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282717.P8150041268305372978

namespace A282717

/-- `A124758(record[A003188(2*n)-n])` -/
def P8150041268305372978.Spec : Prop :=
  ∀ n, P8150041268305372978.a n = A282717 n

end A282717

/-! ## A282717.P751741759904261187

`A124758(record[A269170(2*n)-n])`
-/

namespace A282717.P751741759904261187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282717.P751741759904261187

namespace A282717

/-- `A124758(record[A269170(2*n)-n])` -/
def P751741759904261187.Spec : Prop :=
  ∀ n, P751741759904261187.a n = A282717 n

end A282717

/-! ## A282717.P12256547520217956014

`A124758(A022341(n))`
-/

namespace A282717.P12256547520217956014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A022341 n).toNat

end

end A282717.P12256547520217956014

namespace A282717

/-- `A124758(A022341(n))` -/
def P12256547520217956014.Spec : Prop :=
  ∀ n, P12256547520217956014.a n = A282717 n

end A282717

/-! ## A282717.P3653975637777857390

`A124758((A213540(n+1)-1)/2)`
-/

namespace A282717.P3653975637777857390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (SequenceMachineLib.roundAway ((A213540 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A282717.P3653975637777857390

namespace A282717

/-- `A124758((A213540(n+1)-1)/2)` -/
def P3653975637777857390.Spec : Prop :=
  ∀ n, P3653975637777857390.a n = A282717 n

end A282717

/-! ## A282717.P78600112669793230

`∏{e}[A277331(n), #+1]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A282717

/-- `∏{e}[A277331(n), #+1]` -/
def P78600112669793230.Spec : Prop :=
  ∀ n, (P78600112669793230.a n : ℤ) = A282717 n

theorem P78600112669793230.correct : P78600112669793230.Spec := by
  intro n
  simp only [A282717]

end A282717

/-! ## A282717.P15533187274844700448

`A124758(A213540(n+1))`
-/

namespace A282717.P15533187274844700448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A213540 (n + 1)).toNat

end

end A282717.P15533187274844700448

namespace A282717

/-- `A124758(A213540(n+1))` -/
def P15533187274844700448.Spec : Prop :=
  ∀ n, P15533187274844700448.a n = A282717 n

end A282717

/-! ## A282717.P4302408934876425588

`A000005(A277331(n))`
-/

namespace A282717.P4302408934876425588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A277331 n).toNat

end

end A282717.P4302408934876425588

namespace A282717

/-- `A000005(A277331(n))` -/
def P4302408934876425588.Spec : Prop :=
  ∀ n, P4302408934876425588.a n = A282717 n

end A282717

/-! ## A282717.P2197718743451619086

`A000005(A057335(A048679(n)))`
-/

namespace A282717.P2197718743451619086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057335 (A048679 n).toNat).toNat

end

end A282717.P2197718743451619086

namespace A282717

/-- `A000005(A057335(A048679(n)))` -/
def P2197718743451619086.Spec : Prop :=
  ∀ n, P2197718743451619086.a n = A282717 n

end A282717

/-! ## A282717.P4121139283701313330

`A000005(A253563(A003714(n)))`
-/

namespace A282717.P4121139283701313330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253563 (A003714 n).toNat).toNat

end

end A282717.P4121139283701313330

namespace A282717

/-- `A000005(A253563(A003714(n)))` -/
def P4121139283701313330.Spec : Prop :=
  ∀ n, P4121139283701313330.a n = A282717 n

end A282717

/-! ## A282717.P4161506529382452133

`A000005(A253563(record[A090077(n)]))`
-/

namespace A282717.P4161506529382452133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A282717.P4161506529382452133

namespace A282717

/-- `A000005(A253563(record[A090077(n)]))` -/
def P4161506529382452133.Spec : Prop :=
  ∀ n, P4161506529382452133.a n = A282717 n

end A282717

/-! ## A282717.P8460069112927595314

`A336315(A277006(n))`
-/

namespace A282717.P8460069112927595314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A277006 n).toNat

end

end A282717.P8460069112927595314

namespace A282717

/-- `A336315(A277006(n))` -/
def P8460069112927595314.Spec : Prop :=
  ∀ n, P8460069112927595314.a n = A282717 n

end A282717

/-!
# A282718: Satisfies the tribonacci recurrence: a(n) = a(n-1) + a(n-2) + a(n-3).

The programs for A282718, the canonical program `A282718.P12117982861224056332` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282718 has offset 0).

The definition of A282718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A282718.P12117982861224056332`, by `A282718.P12117982861224056332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282718.P12117982861224056332

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=7, a(5)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282718

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P12117982861224056332.Spec : Prop :=
  ∀ n, (P12117982861224056332.a n : ℤ) = A282718 n

theorem P12117982861224056332.correct : P12117982861224056332.Spec := by
  intro n
  simp only [A282718]

end A282718

/-! ## A282718.P3776540943965079162

`record[xor(2*char[2], A000073(n+1))]`
-/

namespace A282718.P3776540943965079162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) (A000073 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282718.P3776540943965079162

namespace A282718

/-- `record[xor(2*char[2], A000073(n+1))]` -/
def P3776540943965079162.Spec : Prop :=
  ∀ n, P3776540943965079162.a n = A282718 n

end A282718

/-! ## A282718.P11916925165671720909

`A294619(n)+A089068(n)`
-/

namespace A282718.P11916925165671720909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n + A089068 n

end

end A282718.P11916925165671720909

namespace A282718

/-- `A294619(n)+A089068(n)` -/
def P11916925165671720909.Spec : Prop :=
  ∀ n, P11916925165671720909.a n = A282718 n

end A282718

/-! ## A282718.P12633077078572348884

`char[2]+record[A000073(A290103(n+1))]`
-/

namespace A282718.P12633077078572348884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A290103 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A282718.P12633077078572348884

namespace A282718

/-- `char[2]+record[A000073(A290103(n+1))]` -/
def P12633077078572348884.Spec : Prop :=
  ∀ n, P12633077078572348884.a n = A282718 n

end A282718

/-! ## A282718.P7527686931226101630

`record[A000073(n)*A069226(C(6, n)+1)]`
-/

namespace A282718.P7527686931226101630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n * A069226 (Nat.choose 6 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282718.P7527686931226101630

namespace A282718

/-- `record[A000073(n)*A069226(C(6, n)+1)]` -/
def P7527686931226101630.Spec : Prop :=
  ∀ n, P7527686931226101630.a n = A282718 n

end A282718

/-! ## A282718.P10089178871351805003

`char[2]+record[Δ[A213816(n+1)]]`
-/

namespace A282718.P10089178871351805003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A282718.P10089178871351805003

namespace A282718

/-- `char[2]+record[Δ[A213816(n+1)]]` -/
def P10089178871351805003.Spec : Prop :=
  ∀ n, P10089178871351805003.a n = A282718 n

end A282718

/-!
# A282720: Number of nonzero terms in first n rows of the base-2 generalized Pascal triangle P_2 (see A282714).

The programs for A282720, the canonical program `A282720.P8202406451560366855` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282720 has offset 0).

The definition of A282720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282720.P8202406451560366855

`∑[A007306(n)]-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A282720

/-- `∑[A007306(n)]-1` -/
def P8202406451560366855.Spec : Prop :=
  ∀ n, P8202406451560366855.a n = A282720 n

theorem P8202406451560366855.correct : P8202406451560366855.Spec := by
  intro n
  simp only [A282720]

end A282720

/-! ## A282720.P15329666926520571179

`∑[n-A309256(n)]+n`
-/

namespace A282720.P15329666926520571179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A309256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A282720.P15329666926520571179

namespace A282720

/-- `∑[n-A309256(n)]+n` -/
def P15329666926520571179.Spec : Prop :=
  ∀ n, P15329666926520571179.a n = A282720 n

end A282720

/-! ## A282720.P16015537071104561133

`∑[A007306(n)*A057427(n)]`
-/

namespace A282720.P16015537071104561133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P16015537071104561133

namespace A282720

/-- `∑[A007306(n)*A057427(n)]` -/
def P16015537071104561133.Spec : Prop :=
  ∀ n, P16015537071104561133.a n = A282720 n

end A282720

/-! ## A282720.P16748866921400666442

`∑[A007306(n)%A000118(n)]`
-/

namespace A282720.P16748866921400666442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007306 n) (A000118 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P16748866921400666442

namespace A282720

/-- `∑[A007306(n)%A000118(n)]` -/
def P16748866921400666442.Spec : Prop :=
  ∀ n, P16748866921400666442.a n = A282720 n

end A282720

/-! ## A282720.P16799774234535868055

`∑[A049468(n)%A049448(n)]`
-/

namespace A282720.P16799774234535868055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049468 n) (A049448 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P16799774234535868055

namespace A282720

/-- `∑[A049468(n)%A049448(n)]` -/
def P16799774234535868055.Spec : Prop :=
  ∀ n, P16799774234535868055.a n = A282720 n

end A282720

/-! ## A282720.P15389780149599200911

`∑[xor(A000007(n), A007306(n))]`
-/

namespace A282720.P15389780149599200911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A007306 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P15389780149599200911

namespace A282720

/-- `∑[xor(A000007(n), A007306(n))]` -/
def P15389780149599200911.Spec : Prop :=
  ∀ n, P15389780149599200911.a n = A282720 n

end A282720

/-! ## A282720.P7131663866988508890

`2*A174868(n)-A002487(n)`
-/

namespace A282720.P7131663866988508890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174868 n - A002487 n

end

end A282720.P7131663866988508890

namespace A282720

/-- `2*A174868(n)-A002487(n)` -/
def P7131663866988508890.Spec : Prop :=
  ∀ n, P7131663866988508890.a n = A282720 n

end A282720

/-! ## A282720.P11131497443944595535

`A174868(n+1)+A174868(n)-A007306(n+1)`
-/

namespace A282720.P11131497443944595535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 1) + (A174868 n - A007306 (n + 1))

end

end A282720.P11131497443944595535

namespace A282720

/-- `A174868(n+1)+A174868(n)-A007306(n+1)` -/
def P11131497443944595535.Spec : Prop :=
  ∀ n, P11131497443944595535.a n = A282720 n

end A282720

/-! ## A282720.P10666179872941920206

`∑[∑{d}[A004273(n), A317839(#)]]`
-/

namespace A282720.P10666179872941920206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A317839 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P10666179872941920206

namespace A282720

/-- `∑[∑{d}[A004273(n), A317839(#)]]` -/
def P10666179872941920206.Spec : Prop :=
  ∀ n, P10666179872941920206.a n = A282720 n

end A282720

/-! ## A282720.P5756318238900411076

`∑[A002487(record[A006257(n)])]`
-/

namespace A282720.P5756318238900411076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P5756318238900411076

namespace A282720

/-- `∑[A002487(record[A006257(n)])]` -/
def P5756318238900411076.Spec : Prop :=
  ∀ n, P5756318238900411076.a n = A282720 n

end A282720

/-! ## A282720.P15606041610311101169

`A174868(2*n)-A174868(n)`
-/

namespace A282720.P15606041610311101169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (2 * n) - A174868 n

end

end A282720.P15606041610311101169

namespace A282720

/-- `A174868(2*n)-A174868(n)` -/
def P15606041610311101169.Spec : Prop :=
  ∀ n, P15606041610311101169.a n = A282720 n

end A282720

/-! ## A282720.P11710342549459002273

`∑[A002487(A008486(n)-(n+1))]`
-/

namespace A282720.P11710342549459002273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A008486 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P11710342549459002273

namespace A282720

/-- `∑[A002487(A008486(n)-(n+1))]` -/
def P11710342549459002273.Spec : Prop :=
  ∀ n, P11710342549459002273.a n = A282720 n

end A282720

/-! ## A282720.P4984423436524444750

`∑[A127971(2*n)]-A127971(2*n)`
-/

namespace A282720.P4984423436524444750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127971 (2 * n)

end

end A282720.P4984423436524444750

namespace A282720

/-- `∑[A127971(2*n)]-A127971(2*n)` -/
def P4984423436524444750.Spec : Prop :=
  ∀ n, P4984423436524444750.a n = A282720 n

end A282720

/-! ## A282720.P10965630857992477246

`A283104(2*n)-∑[A283104(2*n)]`
-/

namespace A282720.P10965630857992477246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P10965630857992477246

namespace A282720

/-- `A283104(2*n)-∑[A283104(2*n)]` -/
def P10965630857992477246.Spec : Prop :=
  ∀ n, P10965630857992477246.a n = A282720 n

end A282720

/-! ## A282720.P15746072730328457755

`∑[A002487(2*n+1)]-A002487(2*n+1)`
-/

namespace A282720.P15746072730328457755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002487 (2 * n + 1)

end

end A282720.P15746072730328457755

namespace A282720

/-- `∑[A002487(2*n+1)]-A002487(2*n+1)` -/
def P15746072730328457755.Spec : Prop :=
  ∀ n, P15746072730328457755.a n = A282720 n

end A282720

/-! ## A282720.P11959973825488970900

`∑[A287896(2*n+1)]-A287896(2*n+1)`
-/

namespace A282720.P11959973825488970900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287896 (2 * n + 1)

end

end A282720.P11959973825488970900

namespace A282720

/-- `∑[A287896(2*n+1)]-A287896(2*n+1)` -/
def P11959973825488970900.Spec : Prop :=
  ∀ n, P11959973825488970900.a n = A282720 n

end A282720

/-! ## A282720.P6438372914835783266

`∑[A002487(record[A266411(n+1)-1])]`
-/

namespace A282720.P6438372914835783266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266411 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P6438372914835783266

namespace A282720

/-- `∑[A002487(record[A266411(n+1)-1])]` -/
def P6438372914835783266.Spec : Prop :=
  ∀ n, P6438372914835783266.a n = A282720 n

end A282720

/-! ## A282720.P4536902726273881151

`∑[A007305(A004760(n+2))]-1`
-/

namespace A282720.P4536902726273881151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A004760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A282720.P4536902726273881151

namespace A282720

/-- `∑[A007305(A004760(n+2))]-1` -/
def P4536902726273881151.Spec : Prop :=
  ∀ n, P4536902726273881151.a n = A282720 n

end A282720

/-! ## A282720.P10753540276604413820

`∑[A002487(record[2*n/gcd(2, n)²])]`
-/

namespace A282720.P10753540276604413820
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P10753540276604413820

namespace A282720

/-- `∑[A002487(record[2*n/gcd(2, n)²])]` -/
def P10753540276604413820.Spec : Prop :=
  ∀ n, P10753540276604413820.a n = A282720 n

end A282720

/-! ## A282720.P1887160608762166917

`∑[A295515(A053438(2*n))]`
-/

namespace A282720.P1887160608762166917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A053438 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282720.P1887160608762166917

namespace A282720

/-- `∑[A295515(A053438(2*n))]` -/
def P1887160608762166917.Spec : Prop :=
  ∀ n, P1887160608762166917.a n = A282720 n

end A282720

/-!
# A282721: Let p = n-th prime == 3 mod 8; a(n) = sum of quadratic residues mod p that are < p/2.

The programs for A282721, there is no canonical definition to state claims against.
-/

/-! ## A282721.P7259205966843672176

`A282727(n+1)-A282723(n+1)`
-/

namespace A282721.P7259205966843672176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282727 (n + 1) - A282723 (n + 1)

end

end A282721.P7259205966843672176

/-! ## A282721.P13166566876605220574

`A282723(n+1)-A282722(n+1)`
-/

namespace A282721.P13166566876605220574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282723 (n + 1) - A282722 (n + 1)

end

end A282721.P13166566876605220574

/-! ## A282721.P2215400998962402003

`(A282727(n+1)-A282722(n+1))/2`
-/

namespace A282721.P2215400998962402003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282727 (n + 1) - A282722 (n + 1) : ℚ) / 2

end

end A282721.P2215400998962402003

/-! ## A282721.P5921356796928349665

`A166100(A186297(n+1))-A282722(n+1)`
-/

namespace A282721.P5921356796928349665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A186297 (n + 1)).toNat - A282722 (n + 1)

end

end A282721.P5921356796928349665

/-! ## A282721.P1045132191156262643

`A282724(n+1)+A282726(n+1)-A282723(n+1)`
-/

namespace A282721.P1045132191156262643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282724 (n + 1) + (A282726 (n + 1) - A282723 (n + 1))

end

end A282721.P1045132191156262643

/-! ## A282721.P3813961372230116819

`A165909(A007520(n+1))-A282722(n+1)`
-/

namespace A282721.P3813961372230116819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A007520 (n + 1)).toNat - A282722 (n + 1)

end

end A282721.P3813961372230116819

/-! ## A282721.P2389712080823050089

`A165909(A045339(n+2))-A282722(n+1)`
-/

namespace A282721.P2389712080823050089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A045339 (n + 2)).toNat - A282722 (n + 1)

end

end A282721.P2389712080823050089

/-!
# A282722: Let p = n-th prime == 3 mod 8; a(n) = sum of quadratic residues mod p that are > p/2.

The programs for A282722, there is no canonical definition to state claims against.
-/

/-! ## A282722.P2900358230479698531

`A282723(n+1)-A282721(n+1)`
-/

namespace A282722.P2900358230479698531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282723 (n + 1) - A282721 (n + 1)

end

end A282722.P2900358230479698531

/-! ## A282722.P13671422485452697162

`2*A282723(n+1)-A282727(n+1)`
-/

namespace A282722.P13671422485452697162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282723 (n + 1) - A282727 (n + 1)

end

end A282722.P13671422485452697162

/-! ## A282722.P2304249240565296484

`A282727(n+1)-2*A282721(n+1)`
-/

namespace A282722.P2304249240565296484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282727 (n + 1) - 2 * A282721 (n + 1)

end

end A282722.P2304249240565296484

/-! ## A282722.P14148983528321904726

`A166100(A186297(n+1))-A282721(n+1)`
-/

namespace A282722.P14148983528321904726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A186297 (n + 1)).toNat - A282721 (n + 1)

end

end A282722.P14148983528321904726

/-! ## A282722.P8727561324527357144

`A165909(A007520(n+1))-A282721(n+1)`
-/

namespace A282722.P8727561324527357144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A007520 (n + 1)).toNat - A282721 (n + 1)

end

end A282722.P8727561324527357144

/-! ## A282722.P9963280134958200450

`A165909(A045339(n+2))-A282721(n+1)`
-/

namespace A282722.P9963280134958200450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A045339 (n + 2)).toNat - A282721 (n + 1)

end

end A282722.P9963280134958200450

/-!
# A282723: Let p = n-th prime == 3 mod 8; a(n) = sum of quadratic residues mod p.

The programs for A282723, there is no canonical definition to state claims against.
-/

/-! ## A282723.P13963669793423743975

`A166100(A186297(n+1))`
-/

namespace A282723.P13963669793423743975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166100 (A186297 (n + 1)).toNat

end

end A282723.P13963669793423743975

/-! ## A282723.P15902979314408103060

`A282727(n+1)-A282721(n+1)`
-/

namespace A282723.P15902979314408103060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282727 (n + 1) - A282721 (n + 1)

end

end A282723.P15902979314408103060

/-! ## A282723.P3094400134931931940

`A282722(n+1)+A282721(n+1)`
-/

namespace A282723.P3094400134931931940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282722 (n + 1) + A282721 (n + 1)

end

end A282723.P3094400134931931940

/-! ## A282723.P8068756905224853671

`(A282727(n+1)+A282722(n+1))/2`
-/

namespace A282723.P8068756905224853671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282727 (n + 1) + A282722 (n + 1) : ℚ) / 2

end

end A282723.P8068756905224853671

/-! ## A282723.P10381020295909285668

`A282724(n+1)+A282726(n+1)-A282721(n+1)`
-/

namespace A282723.P10381020295909285668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282724 (n + 1) + (A282726 (n + 1) - A282721 (n + 1))

end

end A282723.P10381020295909285668

/-! ## A282723.P12423767776602430697

`A165909(A007520(n+1))`
-/

namespace A282723.P12423767776602430697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A007520 (n + 1)).toNat

end

end A282723.P12423767776602430697

/-! ## A282723.P9527067032218069511

`A165909(A045339(n+2))`
-/

namespace A282723.P9527067032218069511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A045339 (n + 2)).toNat

end

end A282723.P9527067032218069511

/-! ## A282723.P5140892086712108651

`A165909(p?[A084060(n+1)+n])`
-/

namespace A282723.P5140892086712108651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084060 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A282723.P5140892086712108651

/-! ## A282723.P15756472322952406071

`A165909(record[A125254(2*n+1)])`
-/

namespace A282723.P15756472322952406071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125254 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282723.P15756472322952406071

/-!
# A282724: Let p = n-th prime == 3 mod 8; a(n) = sum of quadratic nonresidues mod p that are < p/2.

The programs for A282724, there is no canonical definition to state claims against.
-/

/-! ## A282724.P4513686810621614963

`A282726(n+1)-A282725(n+1)`
-/

namespace A282724.P4513686810621614963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282726 (n + 1) - A282725 (n + 1)

end

end A282724.P4513686810621614963

/-! ## A282724.P70192938117090323

`A282727(n+1)-A282726(n+1)`
-/

namespace A282724.P70192938117090323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282727 (n + 1) - A282726 (n + 1)

end

end A282724.P70192938117090323

/-! ## A282724.P983225770462882433

`(A282727(n+1)-A282725(n+1))/2`
-/

namespace A282724.P983225770462882433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282727 (n + 1) - A282725 (n + 1) : ℚ) / 2

end

end A282724.P983225770462882433

/-! ## A282724.P15591910397829774398

`A282727(n+1)-A166405(A186297(n+1))`
-/

namespace A282724.P15591910397829774398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282727 (n + 1) - A166405 (A186297 (n + 1)).toNat

end

end A282724.P15591910397829774398

/-! ## A282724.P4995504705684595630

`A282721(n+1)+A282723(n+1)-A282726(n+1)`
-/

namespace A282724.P4995504705684595630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282721 (n + 1) + (A282723 (n + 1) - A282726 (n + 1))

end

end A282724.P4995504705684595630

/-! ## A282724.P13557620035565237297

`(A282727(n+1)%A282726(n+1))%A282041(n+1)`
-/

namespace A282724.P13557620035565237297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A282727 (n + 1)) (A282726 (n + 1))) (A282041 (n + 1))

end

end A282724.P13557620035565237297

/-!
# A282725: Let p = n-th prime == 3 mod 8; a(n) = sum of quadratic nonresidues mod p that are > p/2.

The programs for A282725, there is no canonical definition to state claims against.
-/

/-! ## A282725.P6080223282672927075

`A282726(n+1)-A282724(n+1)`
-/

namespace A282725.P6080223282672927075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282726 (n + 1) - A282724 (n + 1)

end

end A282725.P6080223282672927075

/-! ## A282725.P6793835015286180228

`2*A282726(n+1)-A282727(n+1)`
-/

namespace A282725.P6793835015286180228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282726 (n + 1) - A282727 (n + 1)

end

end A282725.P6793835015286180228

/-! ## A282725.P17620436728390991403

`A282727(n+1)-2*A282724(n+1)`
-/

namespace A282725.P17620436728390991403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282727 (n + 1) - 2 * A282724 (n + 1)

end

end A282725.P17620436728390991403

/-! ## A282725.P11475454953078915313

`A166405(A186297(n+1))-A282724(n+1)`
-/

namespace A282725.P11475454953078915313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186297 (n + 1)).toNat - A282724 (n + 1)

end

end A282725.P11475454953078915313

/-! ## A282725.P7034660958946897042

`2*A166405(A186297(n+1))-A282727(n+1)`
-/

namespace A282725.P7034660958946897042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166405 (A186297 (n + 1)).toNat - A282727 (n + 1)

end

end A282725.P7034660958946897042

/-! ## A282725.P13368759994393500763

`A166405(A186297(n+1))-(A282727(n+1)-A282726(n+1))`
-/

namespace A282725.P13368759994393500763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186297 (n + 1)).toNat - (A282727 (n + 1) - A282726 (n + 1))

end

end A282725.P13368759994393500763

/-! ## A282725.P2252654699208172250

`A282726(n+1)-(A282721(n+1)+A282723(n+1)-A282726(n+1))`
-/

namespace A282725.P2252654699208172250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282726 (n + 1) - (A282721 (n + 1) + (A282723 (n + 1) - A282726 (n + 1)))

end

end A282725.P2252654699208172250

/-!
# A282726: Let p = n-th prime == 3 mod 8; a(n) = sum of quadratic nonresidues mod p .

The programs for A282726, there is no canonical definition to state claims against.
-/

/-! ## A282726.P15516429258153693215

`A166405(A186297(n+1))`
-/

namespace A282726.P15516429258153693215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166405 (A186297 (n + 1)).toNat

end

end A282726.P15516429258153693215

/-! ## A282726.P7310652557662004012

`A282725(n+1)+A282724(n+1)`
-/

namespace A282726.P7310652557662004012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282725 (n + 1) + A282724 (n + 1)

end

end A282726.P7310652557662004012

/-! ## A282726.P17328528484188923930

`A282727(n+1)-A282724(n+1)`
-/

namespace A282726.P17328528484188923930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282727 (n + 1) - A282724 (n + 1)

end

end A282726.P17328528484188923930

/-! ## A282726.P17826612931823699111

`(A282727(n+1)+A282725(n+1))/2`
-/

namespace A282726.P17826612931823699111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282727 (n + 1) + A282725 (n + 1) : ℚ) / 2

end

end A282726.P17826612931823699111

/-! ## A282726.P7905231854489105454

`A282721(n+1)+A282723(n+1)-A282724(n+1)`
-/

namespace A282726.P7905231854489105454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282721 (n + 1) + (A282723 (n + 1) - A282724 (n + 1))

end

end A282726.P7905231854489105454

/-! ## A282726.P3787000347950971611

`A338589(A007520(n+1))`
-/

namespace A282726.P3787000347950971611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338589 (A007520 (n + 1)).toNat

end

end A282726.P3787000347950971611

/-! ## A282726.P1268326624382757905

`A338589(A045339(n+2))`
-/

namespace A282726.P1268326624382757905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338589 (A045339 (n + 2)).toNat

end

end A282726.P1268326624382757905

/-! ## A282726.P2491293514387848144

`A125615(record[A056239(A017101(n))])`
-/

namespace A282726.P2491293514387848144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A017101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282726.P2491293514387848144

/-! ## A282726.P10335531827714456374

`A125615(A056239(p?[A017101(n)]))`
-/

namespace A282726.P10335531827714456374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125615 (A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A282726.P10335531827714456374

/-!
# A282727: Let p = n-th prime == 3 mod 8; a(n) = (sum of quadratic residues mod p that are < p/2) + (sum of all quadratic residues mod p).

The programs for A282727, there is no canonical definition to state claims against.
-/

/-! ## A282727.P7360304038066770133

`A282721(n+1)+A166100(A186297(n+1))`
-/

namespace A282727.P7360304038066770133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282721 (n + 1) + A166100 (A186297 (n + 1)).toNat

end

end A282727.P7360304038066770133

/-! ## A282727.P11066005773943266852

`A282723(n+1)+A282721(n+1)`
-/

namespace A282727.P11066005773943266852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282723 (n + 1) + A282721 (n + 1)

end

end A282727.P11066005773943266852

/-! ## A282727.P777558420441459483

`A282726(n+1)+A282724(n+1)`
-/

namespace A282727.P777558420441459483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282726 (n + 1) + A282724 (n + 1)

end

end A282727.P777558420441459483

/-! ## A282727.P11157274988551170642

`A282722(n+1)+2*A282721(n+1)`
-/

namespace A282727.P11157274988551170642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282722 (n + 1) + 2 * A282721 (n + 1)

end

end A282727.P11157274988551170642

/-! ## A282727.P16616184128268427896

`A282725(n+1)+2*A282724(n+1)`
-/

namespace A282727.P16616184128268427896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282725 (n + 1) + 2 * A282724 (n + 1)

end

end A282727.P16616184128268427896

/-! ## A282727.P14724967117344969656

`2*A282723(n+1)-A282722(n+1)`
-/

namespace A282727.P14724967117344969656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282723 (n + 1) - A282722 (n + 1)

end

end A282727.P14724967117344969656

/-! ## A282727.P14482522671927569706

`2*A282726(n+1)-A282725(n+1)`
-/

namespace A282727.P14482522671927569706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282726 (n + 1) - A282725 (n + 1)

end

end A282727.P14482522671927569706

/-! ## A282727.P15525616585131437763

`A282724(n+1)+A166405(A186297(n+1))`
-/

namespace A282727.P15525616585131437763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282724 (n + 1) + A166405 (A186297 (n + 1)).toNat

end

end A282727.P15525616585131437763

/-! ## A282727.P1130768061774825717

`2*A166100(A186297(n+1))-A282722(n+1)`
-/

namespace A282727.P1130768061774825717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166100 (A186297 (n + 1)).toNat - A282722 (n + 1)

end

end A282727.P1130768061774825717

/-! ## A282727.P7424221104416515671

`A249852(A186297(n+1))`
-/

namespace A282727.P7424221104416515671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249852 (A186297 (n + 1)).toNat

end

end A282727.P7424221104416515671

/-! ## A282727.P8996179998687305859

`A282721(n+1)+A165909(A007520(n+1))`
-/

namespace A282727.P8996179998687305859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282721 (n + 1) + A165909 (A007520 (n + 1)).toNat

end

end A282727.P8996179998687305859

/-! ## A282727.P9450555588277126501

`2*A165909(A007520(n+1))-A282722(n+1)`
-/

namespace A282727.P9450555588277126501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165909 (A007520 (n + 1)).toNat - A282722 (n + 1)

end

end A282727.P9450555588277126501

/-!
# A282730: Sequence of integers defined by 3-expansion of Pi-3.

The programs for A282730, there is no canonical definition to state claims against.
-/

/-! ## A282730.P17132762839767428571

`or(1, A187320(A011782(n+3)))`
-/

namespace A282730.P17132762839767428571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A187320 (A011782 (n + 3)).toNat)

end

end A282730.P17132762839767428571

/-! ## A282730.P14043313579470001353

`A293328(n+3)-A241067(n²)`
-/

namespace A282730.P14043313579470001353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293328 (n + 3) - A241067 (n ^ 2)

end

end A282730.P14043313579470001353

/-! ## A282730.P13977507400746945720

`A077947(n+3)+A055641(A081567(n))`
-/

namespace A282730.P13977507400746945720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (n + 3) + A055641 (A081567 n).toNat

end

end A282730.P13977507400746945720

/-! ## A282730.P2981462024496570419

`or(A033138(n+3), A054977(A003483(n)))`
-/

namespace A282730.P2981462024496570419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033138 (n + 3)) (A054977 (A003483 n).toNat)

end

end A282730.P2981462024496570419

/-!
# A282731: Partial sums of A282717.

The programs for A282731, there is no canonical definition to state claims against.
-/

/-! ## A282731.P17233728653579377822

`∑[A282717(n)]`
-/

namespace A282731.P17233728653579377822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P17233728653579377822

/-! ## A282731.P18240571939040691141

`∑[∏{e}[A277331(n), #+1]]`
-/

namespace A282731.P18240571939040691141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277331 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P18240571939040691141

/-! ## A282731.P1899197026886208055

`∑[A124758(record[and(2*n, -n)])]`
-/

namespace A282731.P1899197026886208055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P1899197026886208055

/-! ## A282731.P7850605622676075508

`∑[A124758(record[2/3*xor(n, 2*n)])]`
-/

namespace A282731.P7850605622676075508
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (Nat.xor n (2 * n) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P7850605622676075508

/-! ## A282731.P14017694901404186678

`∑[A124758(record[xor(n, 2*n)+1+n])]`
-/

namespace A282731.P14017694901404186678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P14017694901404186678

/-! ## A282731.P12422635328223749836

`∑[A124758(A022340(n))]`
-/

namespace A282731.P12422635328223749836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A022340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P12422635328223749836

/-! ## A282731.P1365032735620315273

`∑[A124758(A022341(n))]`
-/

namespace A282731.P1365032735620315273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A022341 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P1365032735620315273

/-! ## A282731.P3886716659231748210

`∑[A000005(A277331(n))]`
-/

namespace A282731.P3886716659231748210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A277331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P3886716659231748210

/-! ## A282731.P647234899552733397

`∑[A124758(A213540(n+1))]`
-/

namespace A282731.P647234899552733397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A213540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P647234899552733397

/-! ## A282731.P15271440429269226913

`∑[A000005(A057335(A048679(n)))]`
-/

namespace A282731.P15271440429269226913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057335 (A048679 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282731.P15271440429269226913

/-!
# A282732: Satisfies the recurrence a(n) = 3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+2*a(n-5).

The programs for A282732, the canonical program `A282732.P15795741197889620737` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282732 has offset 0).

The definition of A282732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+2*a(n-5)` (program `A282732.P15795741197889620737`, by `A282732.P15795741197889620737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A282732.P15795741197889620737

`3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=23, a(4)=63`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282732

/-- `3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+2*a(n-5)` -/
def P15795741197889620737.Spec : Prop :=
  ∀ n, P15795741197889620737.a n = A282732 n

theorem P15795741197889620737.correct : P15795741197889620737.Spec := by
  intro n
  simp only [A282732]

end A282732

/-! ## A282732.P17580071602952119240

`A087817(A150552(n+1))`
-/

namespace A282732.P17580071602952119240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A150552 (n + 1)).toNat

end

end A282732.P17580071602952119240

namespace A282732

/-- `A087817(A150552(n+1))` -/
def P17580071602952119240.Spec : Prop :=
  ∀ n, P17580071602952119240.a n = A282732 n

end A282732

/-! ## A282732.P17155825168986164987

`A352226(A395614(n+1))`
-/

namespace A282732.P17155825168986164987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A395614 (n + 1)).toNat

end

end A282732.P17155825168986164987

namespace A282732

/-- `A352226(A395614(n+1))` -/
def P17155825168986164987.Spec : Prop :=
  ∀ n, P17155825168986164987.a n = A282732 n

end A282732

/-!
# A282733: Number of triangulations of a convex 4-gon in the plane each of whose sides is subdivided by n points.

The programs for A282733, there is no canonical definition to state claims against.
-/

/-! ## A282733.P9806024547407887510

`A395602(A020752(n))`
-/

namespace A282733.P9806024547407887510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395602 (A020752 n).toNat

end

end A282733.P9806024547407887510

/-!
# A282737: Expansion of (x^6 - x^4 + x^3 - x - 1)/((x - 1)^3*(x + 1)^2).

The programs for A282737, the canonical program `A282737.P2951802436590815580` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282737 has offset 0).

The definition of A282737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282737.P2951802436590815580

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=9, a(5)=10, a(6)=15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282737

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2951802436590815580.Spec : Prop :=
  ∀ n, P2951802436590815580.a n = A282737 n

theorem P2951802436590815580.correct : P2951802436590815580.Spec := by
  intro n
  simp only [A282737]

end A282737

/-! ## A282737.P12155124419777252854

`A282738(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A282737.P12155124419777252854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282738 (n - 1) + a (n - 1)

end

end A282737.P12155124419777252854

namespace A282737

/-- `A282738(n-1)+a(n-1)` -/
def P12155124419777252854.Spec : Prop :=
  ∀ n, P12155124419777252854.a n = A282737 n

end A282737

/-! ## A282737.P16370651191401596115

`∑[A282738(n)]+1-A282738(n)`
-/

namespace A282737.P16370651191401596115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A282738 n)

end

end A282737.P16370651191401596115

namespace A282737

/-- `∑[A282738(n)]+1-A282738(n)` -/
def P16370651191401596115.Spec : Prop :=
  ∀ n, P16370651191401596115.a n = A282737 n

end A282737

/-! ## A282737.P11627113950545073100

`A027379(A004526(n))+∑[n%2]`
-/

namespace A282737.P11627113950545073100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A004526 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A282737.P11627113950545073100

namespace A282737

/-- `A027379(A004526(n))+∑[n%2]` -/
def P11627113950545073100.Spec : Prop :=
  ∀ n, P11627113950545073100.a n = A282737 n

end A282737

/-! ## A282737.P9782083930683175693

`∪[A134227(n+1)+1, A134227(n+1)]`
-/

namespace A282737.P9782083930683175693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134227 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282737.P9782083930683175693

namespace A282737

/-- `∪[A134227(n+1)+1, A134227(n+1)]` -/
def P9782083930683175693.Spec : Prop :=
  ∀ n, (P9782083930683175693.a n : ℤ) = A282737 n

end A282737

/-! ## A282737.P17890862556370949146

`A110654(n)+A027379(n-A110654(n))`
-/

namespace A282737.P17890862556370949146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A027379 ((n : ℤ) - A110654 n).toNat

end

end A282737.P17890862556370949146

namespace A282737

/-- `A110654(n)+A027379(n-A110654(n))` -/
def P17890862556370949146.Spec : Prop :=
  ∀ n, P17890862556370949146.a n = A282737 n

end A282737

/-! ## A282737.P8936127700397959500

`n+1-(A020639(A000010(n+1))-A008805(n))`
-/

namespace A282737.P8936127700397959500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A020639 (A000010 (n + 1)).toNat - A008805 n)

end

end A282737.P8936127700397959500

namespace A282737

/-- `n+1-(A020639(A000010(n+1))-A008805(n))` -/
def P8936127700397959500.Spec : Prop :=
  ∀ n, P8936127700397959500.a n = A282737 n

end A282737

/-! ## A282737.P1299994095013432616

`∑[A133622(A181569(n+1))]`
-/

namespace A282737.P1299994095013432616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (A181569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282737.P1299994095013432616

namespace A282737

/-- `∑[A133622(A181569(n+1))]` -/
def P1299994095013432616.Spec : Prop :=
  ∀ n, P1299994095013432616.a n = A282737 n

end A282737

/-! ## A282737.P4794736710911568912

`A027379(A004526(n))+A004526(n+1)`
-/

namespace A282737.P4794736710911568912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (A004526 n).toNat + A004526 (n + 1)

end

end A282737.P4794736710911568912

namespace A282737

/-- `A027379(A004526(n))+A004526(n+1)` -/
def P4794736710911568912.Spec : Prop :=
  ∀ n, P4794736710911568912.a n = A282737 n

end A282737

/-! ## A282737.P1865213950485555632

`A123108(n+1)+A027379(n-A123108(n+1))`
-/

namespace A282737.P1865213950485555632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) + A027379 ((n : ℤ) - A123108 (n + 1)).toNat

end

end A282737.P1865213950485555632

namespace A282737

/-- `A123108(n+1)+A027379(n-A123108(n+1))` -/
def P1865213950485555632.Spec : Prop :=
  ∀ n, P1865213950485555632.a n = A282737 n

end A282737

/-! ## A282737.P11357910984626516707

`A123108(n+1)+A027379(A123108(A123108(2*n)))`
-/

namespace A282737.P11357910984626516707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) + A027379 (A123108 (A123108 (2 * n)).toNat).toNat

end

end A282737.P11357910984626516707

namespace A282737

/-- `A123108(n+1)+A027379(A123108(A123108(2*n)))` -/
def P11357910984626516707.Spec : Prop :=
  ∀ n, P11357910984626516707.a n = A282737 n

end A282737

/-! ## A282737.P7137400442643174669

`A008805(n)+n-A049046(A008805(n))`
-/

namespace A282737.P7137400442643174669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ((n : ℤ) - A049046 (A008805 n).toNat)

end

end A282737.P7137400442643174669

namespace A282737

/-- `A008805(n)+n-A049046(A008805(n))` -/
def P7137400442643174669.Spec : Prop :=
  ∀ n, P7137400442643174669.a n = A282737 n

end A282737

/-! ## A282737.P1138702132666280105

`A101881(n)+A004247(A101881(n)-n)`
-/

namespace A282737.P1138702132666280105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n + A004247 (A101881 n - (n : ℤ)).toNat

end

end A282737.P1138702132666280105

namespace A282737

/-- `A101881(n)+A004247(A101881(n)-n)` -/
def P1138702132666280105.Spec : Prop :=
  ∀ n, P1138702132666280105.a n = A282737 n

end A282737

/-! ## A282737.P15254704522953547396

`lt[A110877(n+4), comp[A039598(n)]]`
-/

namespace A282737.P15254704522953547396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282737.P15254704522953547396

namespace A282737

/-- `lt[A110877(n+4), comp[A039598(n)]]` -/
def P15254704522953547396.Spec : Prop :=
  ∀ n, (P15254704522953547396.a n : ℤ) = A282737 n

end A282737

/-! ## A282737.P10195363123663118241

`lt[A110877(n+4), comp[A126093(n)]]`
-/

namespace A282737.P10195363123663118241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126093 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282737.P10195363123663118241

namespace A282737

/-- `lt[A110877(n+4), comp[A126093(n)]]` -/
def P10195363123663118241.Spec : Prop :=
  ∀ n, (P10195363123663118241.a n : ℤ) = A282737 n

end A282737

/-! ## A282737.P1897422905654851842

`lt[A110877(n+4), comp[A193597(n)]]`
-/

namespace A282737.P1897422905654851842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193597 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282737.P1897422905654851842

namespace A282737

/-- `lt[A110877(n+4), comp[A193597(n)]]` -/
def P1897422905654851842.Spec : Prop :=
  ∀ n, (P1897422905654851842.a n : ℤ) = A282737 n

end A282737

/-! ## A282737.P5969357515939852276

`lt[A110877(n+4), comp[A064189(2*(n+1))]]`
-/

namespace A282737.P5969357515939852276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282737.P5969357515939852276

namespace A282737

/-- `lt[A110877(n+4), comp[A064189(2*(n+1))]]` -/
def P5969357515939852276.Spec : Prop :=
  ∀ n, (P5969357515939852276.a n : ℤ) = A282737 n

end A282737

/-! ## A282737.P6226289703564915846

`lt[A110877(n+4), comp[A322378(2*n+3)]]`
-/

namespace A282737.P6226289703564915846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322378 (2 * n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A282737.P6226289703564915846

namespace A282737

/-- `lt[A110877(n+4), comp[A322378(2*n+3)]]` -/
def P6226289703564915846.Spec : Prop :=
  ∀ n, (P6226289703564915846.a n : ℤ) = A282737 n

end A282737

/-! ## A282737.P10789757847491640175

`A309049(A114220(2*n))+A165157(n)`
-/

namespace A282737.P10789757847491640175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (A114220 (2 * n)).toNat + A165157 n

end

end A282737.P10789757847491640175

namespace A282737

/-- `A309049(A114220(2*n))+A165157(n)` -/
def P10789757847491640175.Spec : Prop :=
  ∀ n, P10789757847491640175.a n = A282737 n

end A282737

/-! ## A282737.P3889103931595255589

`A101881(n)+A101164(A101881(n)-n)`
-/

namespace A282737.P3889103931595255589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n + A101164 (A101881 n - (n : ℤ)).toNat

end

end A282737.P3889103931595255589

namespace A282737

/-- `A101881(n)+A101164(A101881(n)-n)` -/
def P3889103931595255589.Spec : Prop :=
  ∀ n, P3889103931595255589.a n = A282737 n

end A282737

/-!
# A282738: First differences of A282737.

The programs for A282738, the canonical program `A282738.P16388590643952039293` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282738 has offset 0).

The definition of A282738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282738.P16388590643952039293

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4, a(4)=1, a(5)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282738

/-- `2*a(n-2)-a(n-4)` -/
def P16388590643952039293.Spec : Prop :=
  ∀ n, P16388590643952039293.a n = A282738 n

theorem P16388590643952039293.correct : P16388590643952039293.Spec := by
  intro n
  simp only [A282738]

end A282738

/-! ## A282738.P2660319686702924508

`a(n-2)+n%2` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A282738.P2660319686702924508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  a (n - 2) + n % 2

end

end A282738.P2660319686702924508

namespace A282738

/-- `a(n-2)+n%2` -/
def P2660319686702924508.Spec : Prop :=
  ∀ n, (P2660319686702924508.a n : ℤ) = A282738 n

end A282738

/-! ## A282738.P10897658214887319200

`a(n-2)+and(1, n)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A282738.P10897658214887319200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  a (n - 2) + Nat.land 1 n

end

end A282738.P10897658214887319200

namespace A282738

/-- `a(n-2)+and(1, n)` -/
def P10897658214887319200.Spec : Prop :=
  ∀ n, (P10897658214887319200.a n : ℤ) = A282738 n

end A282738

/-! ## A282738.P8848063058423594583

`floor((n+5)/(2*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A282738.P8848063058423594583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n + 5 : ℚ) / (2 * a (n - 1) : ℚ)⌋

end

end A282738.P8848063058423594583

namespace A282738

/-- `floor((n+5)/(2*a(n-1)))` -/
def P8848063058423594583.Spec : Prop :=
  ∀ n, P8848063058423594583.a n = A282738 n

end A282738

/-! ## A282738.P9040950692390994731

`a(n-2)+2-gcd(2, n)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A282738.P9040950692390994731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  a (n - 2) + (2 - (Nat.gcd 2 n : ℤ))

end

end A282738.P9040950692390994731

namespace A282738

/-- `a(n-2)+2-gcd(2, n)` -/
def P9040950692390994731.Spec : Prop :=
  ∀ n, P9040950692390994731.a n = A282738 n

end A282738

/-! ## A282738.P14158515944469779214

`2-(4-3*a(n-2))%n` with `a(0)=1, a(1)=2`
-/

namespace A282738.P14158515944469779214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - Int.tmod (4 - 3 * a (n - 2)) (n : ℤ)

end

end A282738.P14158515944469779214

namespace A282738

/-- `2-(4-3*a(n-2))%n` -/
def P14158515944469779214.Spec : Prop :=
  ∀ n, P14158515944469779214.a n = A282738 n

end A282738

/-! ## A282738.P12050312539626186279

`3-floor(a(n-1)-n/2)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A282738.P12050312539626186279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  3 - ⌊(a (n - 1) : ℚ) - (n : ℚ) / 2⌋

end

end A282738.P12050312539626186279

namespace A282738

/-- `3-floor(a(n-1)-n/2)` -/
def P12050312539626186279.Spec : Prop :=
  ∀ n, P12050312539626186279.a n = A282738 n

end A282738

/-! ## A282738.P12814359467273484120

`∑[n]%(n+1)+char[2*n+3]+1`
-/

namespace A282738.P12814359467273484120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + ((if ∃ j, f2 j = n then 1 else 0) + 1)

end

end A282738.P12814359467273484120

namespace A282738

/-- `∑[n]%(n+1)+char[2*n+3]+1` -/
def P12814359467273484120.Spec : Prop :=
  ∀ n, (P12814359467273484120.a n : ℤ) = A282738 n

end A282738

/-! ## A282738.P10320273625105028955

`(n+4)/a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A282738.P10320273625105028955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  (n + 4 : ℚ) / a (n - 1) - a (n - 2)

end

end A282738.P10320273625105028955

namespace A282738

/-- `(n+4)/a(n-1)-a(n-2)` -/
def P10320273625105028955.Spec : Prop :=
  ∀ n, P10320273625105028955.a n = (A282738 n : ℚ)

end A282738

/-! ## A282738.P4638851808292433309

`a(n-2)+C(a(n-2), C(2, a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A282738.P4638851808292433309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.choose (a (n - 2)) (Nat.choose 2 (a (n - 2)))

end

end A282738.P4638851808292433309

namespace A282738

/-- `a(n-2)+C(a(n-2), C(2, a(n-2)))` -/
def P4638851808292433309.Spec : Prop :=
  ∀ n, (P4638851808292433309.a n : ℤ) = A282738 n

end A282738

/-! ## A282738.P2143134346074976554

`1-(a(n-2)%a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A282738.P2143134346074976554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  1 - (Int.tmod (a (n - 2)) (a (n - 1)) - a (n - 2))

end

end A282738.P2143134346074976554

namespace A282738

/-- `1-(a(n-2)%a(n-1)-a(n-2))` -/
def P2143134346074976554.Spec : Prop :=
  ∀ n, P2143134346074976554.a n = A282738 n

end A282738

/-! ## A282738.P3813769594403214003

`A326178(a(n-2))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`
-/

namespace A282738.P3813769594403214003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 4] fun n a =>
  A326178 (a (n - 2)).toNat

end

end A282738.P3813769594403214003

namespace A282738

/-- `A326178(a(n-2))` -/
def P3813769594403214003.Spec : Prop :=
  ∀ n, P3813769594403214003.a n = A282738 n

end A282738

/-! ## A282738.P13345303799048233281

`floor(A347558(n+1)/4)+1`
-/

namespace A282738.P13345303799048233281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347558 (n + 1) : ℚ) / 4⌋ + 1

end

end A282738.P13345303799048233281

namespace A282738

/-- `floor(A347558(n+1)/4)+1` -/
def P13345303799048233281.Spec : Prop :=
  ∀ n, P13345303799048233281.a n = A282738 n

end A282738

/-! ## A282738.P6770612523887544769

`A019303(n-2)^a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A282738.P6770612523887544769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A019303 (n - 2) : ℝ) ^ (a (n - 1))

end

end A282738.P6770612523887544769

namespace A282738

/-- `A019303(n-2)^a(n-1)` -/
def P6770612523887544769.Spec : Prop :=
  ∀ n, P6770612523887544769.a n = (A282738 n : ℝ)

end A282738

/-! ## A282738.P12229509577394627940

`A326178(A133622(n+1))`
-/

namespace A282738.P12229509577394627940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A133622 (n + 1)).toNat

end

end A282738.P12229509577394627940

namespace A282738

/-- `A326178(A133622(n+1))` -/
def P12229509577394627940.Spec : Prop :=
  ∀ n, P12229509577394627940.a n = A282738 n

end A282738

/-! ## A282738.P2504077208435443050

`gcd(A027656(n), A267530(n))`
-/

namespace A282738.P2504077208435443050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A267530 n)

end

end A282738.P2504077208435443050

namespace A282738

/-- `gcd(A027656(n), A267530(n))` -/
def P2504077208435443050.Spec : Prop :=
  ∀ n, (P2504077208435443050.a n : ℤ) = A282738 n

end A282738

/-! ## A282738.P3079249926335565086

`A319701(A141310(n+1)-1)`
-/

namespace A282738.P3079249926335565086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (A141310 (n + 1) - 1).toNat

end

end A282738.P3079249926335565086

namespace A282738

/-- `A319701(A141310(n+1)-1)` -/
def P3079249926335565086.Spec : Prop :=
  ∀ n, P3079249926335565086.a n = A282738 n

end A282738

/-! ## A282738.P7628148270977297409

`A319701(1-A237420(n)+n)`
-/

namespace A282738.P7628148270977297409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (1 - A237420 n + (n : ℤ)).toNat

end

end A282738.P7628148270977297409

namespace A282738

/-- `A319701(1-A237420(n)+n)` -/
def P7628148270977297409.Spec : Prop :=
  ∀ n, P7628148270977297409.a n = A282738 n

end A282738

/-! ## A282738.P4969825898524602507

`2-A028310(A174239(n))+n`
-/

namespace A282738.P4969825898524602507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028310 (A174239 n).toNat + (n : ℤ)

end

end A282738.P4969825898524602507

namespace A282738

/-- `2-A028310(A174239(n))+n` -/
def P4969825898524602507.Spec : Prop :=
  ∀ n, P4969825898524602507.a n = A282738 n

end A282738

/-! ## A282738.P11944474614288892780

`A319701(n*A000035(n)+1)`
-/

namespace A282738.P11944474614288892780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 ((n : ℤ) * A000035 n + 1).toNat

end

end A282738.P11944474614288892780

namespace A282738

/-- `A319701(n*A000035(n)+1)` -/
def P11944474614288892780.Spec : Prop :=
  ∀ n, P11944474614288892780.a n = A282738 n

end A282738

/-!
# A282741: Number of nonisomorphic bipartite (0,2)-graphs with valency n.

The programs for A282741, there is no canonical definition to state claims against.
-/

/-! ## A282741.P18417958428954803987

`∑[A248658(n-2)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=2`
-/

namespace A282741.P18417958428954803987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 2] fun n f1 =>
  A248658 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282741.P18417958428954803987

/-! ## A282741.P11127323154476638993

`A126337(A056514(n+1))`
-/

namespace A282741.P11127323154476638993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126337 (A056514 (n + 1)).toNat

end

end A282741.P11127323154476638993

/-! ## A282741.P13089510208126429996

`A110794(A219752(n)+1)`
-/

namespace A282741.P13089510208126429996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110794 (A219752 n + 1).toNat

end

end A282741.P13089510208126429996

/-! ## A282741.P7760066664526822751

`A081607(A335470(n+1))`
-/

namespace A282741.P7760066664526822751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081607 (A335470 (n + 1)).toNat

end

end A282741.P7760066664526822751

/-! ## A282741.P3377901241043937580

`A255977(A146385(n+2))`
-/

namespace A282741.P3377901241043937580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255977 (A146385 (n + 2)).toNat

end

end A282741.P3377901241043937580

/-!
# A282742: Number of nonisomorphic nonbipartite (0,2)-graphs with valency n.

The programs for A282742, there is no canonical definition to state claims against.
-/

/-! ## A282742.P14475352851248978613

`A202592(n)-A282741(n)`
-/

namespace A282742.P14475352851248978613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202592 n - A282741 n

end

end A282742.P14475352851248978613

/-! ## A282742.P7421014028482288201

`round((exp(n+1)/A008864(n+1)²)²)`
-/

namespace A282742.P7421014028482288201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.exp (n + 1 : ℝ) / (A008864 (n + 1) ^ 2 : ℝ)) ^ 2)

end

end A282742.P7421014028482288201

/-! ## A282742.P9807806352773415214

`A173924(A092534(n+1))`
-/

namespace A282742.P9807806352773415214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173924 (A092534 (n + 1)).toNat

end

end A282742.P9807806352773415214

/-! ## A282742.P10957754513760614026

`A173924(A010684(n)+∑[or(1, n)]-n)`
-/

namespace A282742.P10957754513760614026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173924 (A010684 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A282742.P10957754513760614026

/-! ## A282742.P12033568724024348962

`A173924(A001318(n)+A000009(n+1))`
-/

namespace A282742.P12033568724024348962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173924 (A001318 n + A000009 (n + 1)).toNat

end

end A282742.P12033568724024348962

/-!
# A282743: Irregular triangle read by rows, giving coefficients arising when solving g(n) = f(n)+ f(n-1) + f(n-2) for f(n).

The programs for A282743, the canonical program `A282743.P3046376019469978413` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282743 has offset 0).

The definition of A282743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282743.P3046376019469978413

`A025581(eq[1, A002260(n+1)²%3])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A282743

/-- `A025581(eq[1, A002260(n+1)²%3])` -/
def P3046376019469978413.Spec : Prop :=
  ∀ n, P3046376019469978413.a n = A282743 n

theorem P3046376019469978413.correct : P3046376019469978413.Spec := by
  intro n
  simp only [A282743]

end A282743

/-! ## A282743.P8232233998667775743

`A025581(eq[1, A011655(A002260(n+1))])`
-/

namespace A282743.P8232233998667775743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282743.P8232233998667775743

namespace A282743

/-- `A025581(eq[1, A011655(A002260(n+1))])` -/
def P8232233998667775743.Spec : Prop :=
  ∀ n, P8232233998667775743.a n = A282743 n

end A282743

/-! ## A282743.P6410595489680593998

`A025581(eq[1, gcd(3, A002262(n))])`
-/

namespace A282743.P6410595489680593998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A002262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282743.P6410595489680593998

namespace A282743

/-- `A025581(eq[1, gcd(3, A002262(n))])` -/
def P6410595489680593998.Spec : Prop :=
  ∀ n, P6410595489680593998.a n = A282743 n

end A282743

/-! ## A282743.P812210766392828135

`A025581(eq[1, A002262(n)²%3])`
-/

namespace A282743.P812210766392828135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282743.P812210766392828135

namespace A282743

/-- `A025581(eq[1, A002262(n)²%3])` -/
def P812210766392828135.Spec : Prop :=
  ∀ n, P812210766392828135.a n = A282743 n

end A282743

/-! ## A282743.P11253439354407903134

`A025581(eq[1, A005131(A002260(n+1))])`
-/

namespace A282743.P11253439354407903134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282743.P11253439354407903134

namespace A282743

/-- `A025581(eq[1, A005131(A002260(n+1))])` -/
def P11253439354407903134.Spec : Prop :=
  ∀ n, P11253439354407903134.a n = A282743 n

end A282743

/-! ## A282743.P8945890790037807835

`A025581(eq[2, A056552(A059268(n))])`
-/

namespace A282743.P8945890790037807835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282743.P8945890790037807835

namespace A282743

/-- `A025581(eq[2, A056552(A059268(n))])` -/
def P8945890790037807835.Spec : Prop :=
  ∀ n, P8945890790037807835.a n = A282743 n

end A282743

/-! ## A282743.P15173326017834625487

`A004736(A194068(n+1))-1`
-/

namespace A282743.P15173326017834625487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194068 (n + 1)).toNat - 1

end

end A282743.P15173326017834625487

namespace A282743

/-- `A004736(A194068(n+1))-1` -/
def P15173326017834625487.Spec : Prop :=
  ∀ n, P15173326017834625487.a n = A282743 n

end A282743

/-! ## A282743.P6998167688775602557

`A025581(A194068(n+1)-1)`
-/

namespace A282743.P6998167688775602557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A194068 (n + 1) - 1).toNat

end

end A282743.P6998167688775602557

namespace A282743

/-- `A025581(A194068(n+1)-1)` -/
def P6998167688775602557.Spec : Prop :=
  ∀ n, P6998167688775602557.a n = A282743 n

end A282743

/-!
# A282744: Irregular triangle read by rows, giving coefficients arising when solving g(n) = f(n)+ f(n-1) + f(n-2) + f(n-3) for f(n).

The programs for A282744, the canonical program `A282744.P1762005596893593105` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282744 has offset 0).

The definition of A282744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282744.P1762005596893593105

`A025581(eq[1, A130658(A002262(n))])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A282744

/-- `A025581(eq[1, A130658(A002262(n))])` -/
def P1762005596893593105.Spec : Prop :=
  ∀ n, P1762005596893593105.a n = A282744 n

theorem P1762005596893593105.correct : P1762005596893593105.Spec := by
  intro n
  simp only [A282744]

end A282744

/-! ## A282744.P14557519103847605222

`A025581(eq[A049780(n)%2, A000035(n)])`
-/

namespace A282744.P14557519103847605222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049780 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282744.P14557519103847605222

namespace A282744

/-- `A025581(eq[A049780(n)%2, A000035(n)])` -/
def P14557519103847605222.Spec : Prop :=
  ∀ n, P14557519103847605222.a n = A282744 n

end A282744

/-! ## A282744.P8325181508116815562

`A025581(eq[-A065941(n), A108299(n)])`
-/

namespace A282744.P8325181508116815562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282744.P8325181508116815562

namespace A282744

/-- `A025581(eq[-A065941(n), A108299(n)])` -/
def P8325181508116815562.Spec : Prop :=
  ∀ n, P8325181508116815562.a n = A282744 n

end A282744

/-! ## A282744.P14303074031464687059

`A025581(eq[2, A134451(A057028(n+1))])`
-/

namespace A282744.P14303074031464687059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A057028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282744.P14303074031464687059

namespace A282744

/-- `A025581(eq[2, A134451(A057028(n+1))])` -/
def P14303074031464687059.Spec : Prop :=
  ∀ n, P14303074031464687059.a n = A282744 n

end A282744

/-! ## A282744.P11767110951796836985

`A025581(eq[2, and(2, A002262(n))])`
-/

namespace A282744.P11767110951796836985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A002262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282744.P11767110951796836985

namespace A282744

/-- `A025581(eq[2, and(2, A002262(n))])` -/
def P11767110951796836985.Spec : Prop :=
  ∀ n, P11767110951796836985.a n = A282744 n

end A282744

/-!
# A282745: Irregular triangle read by rows, giving coefficients arising when solving g(n) = f(n)+ f(n-1) + f(n-2) + f(n-3) + f(n-4) for f(n).

The programs for A282745, the canonical program `A282745.P1956393292476371609` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282745 has offset 0).

The definition of A282745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282745.P1956393292476371609

`A004736(lt[A002262(n)%5, 2]+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A282745

/-- `A004736(lt[A002262(n)%5, 2]+1)-1` -/
def P1956393292476371609.Spec : Prop :=
  ∀ n, P1956393292476371609.a n = A282745 n

theorem P1956393292476371609.correct : P1956393292476371609.Spec := by
  intro n
  simp only [A282745]

end A282745

/-! ## A282745.P18344032232555941920

`A025581(eq[0, A053796(A002260(n+1))])`
-/

namespace A282745.P18344032232555941920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053796 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282745.P18344032232555941920

namespace A282745

/-- `A025581(eq[0, A053796(A002260(n+1))])` -/
def P18344032232555941920.Spec : Prop :=
  ∀ n, P18344032232555941920.a n = A282745 n

end A282745

/-! ## A282745.P9504284949993428067

`A025581(eq[1, A244895(A002260(n+1))])`
-/

namespace A282745.P9504284949993428067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282745.P9504284949993428067

namespace A282745

/-- `A025581(eq[1, A244895(A002260(n+1))])` -/
def P9504284949993428067.Spec : Prop :=
  ∀ n, P9504284949993428067.a n = A282745 n

end A282745

/-! ## A282745.P7054832567324368244

`A330944(A029744(n+1))%6`
-/

namespace A282745.P7054832567324368244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330944 (A029744 (n + 1)).toNat) 6

end

end A282745.P7054832567324368244

namespace A282745

/-- `A330944(A029744(n+1))%6` -/
def P7054832567324368244.Spec : Prop :=
  ∀ n, P7054832567324368244.a n = A282745 n

end A282745

/-! ## A282745.P18322682872669187067

`A366528(A029744(n+1))%A040006(n)`
-/

namespace A282745.P18322682872669187067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366528 (A029744 (n + 1)).toNat) (A040006 n)

end

end A282745.P18322682872669187067

namespace A282745

/-- `A366528(A029744(n+1))%A040006(n)` -/
def P18322682872669187067.Spec : Prop :=
  ∀ n, P18322682872669187067.a n = A282745 n

end A282745

/-!
# A282748: Triangle read by rows: T(n,k) is the number of compositions of n into k parts x_1, x_2, ..., x_k such that gcd(x_i, x_j) = 1 for all i != j (where 1 <= k <= n).

The programs for A282748, there is no canonical definition to state claims against.
-/

/-! ## A282748.P18373001086655540149

`A000005(A130330(n)^A025689(n+1))`
-/

namespace A282748.P18373001086655540149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A130330 n : ℚ) ^ (A025689 (n + 1) : ℤ))).toNat

end

end A282748.P18373001086655540149

/-! ## A282748.P2814975185938120399

`A001227(A130330(n)^A025689(n+1))`
-/

namespace A282748.P2814975185938120399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((A130330 n : ℚ) ^ (A025689 (n + 1) : ℤ))).toNat

end

end A282748.P2814975185938120399

/-! ## A282748.P6896655799969941247

`∑{d}[A130330(n)^A025689(n+1), A056832(#)]`
-/

namespace A282748.P6896655799969941247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) ^ (A025689 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A056832 d

end

end A282748.P6896655799969941247

/-! ## A282748.P2944711275198304115

`∑{d}[A130330(n)^A025689(n+1), A340346(#)]`
-/

namespace A282748.P2944711275198304115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) ^ (A025689 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A340346 d

end

end A282748.P2944711275198304115

/-! ## A282748.P8695144872267028388

`or(A083892(A344613(n+1)), A354273(n+1))`
-/

namespace A282748.P8695144872267028388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083892 (A344613 (n + 1)).toNat) (A354273 (n + 1))

end

end A282748.P8695144872267028388

/-!
# A282749: Triangle read by rows: T(n,k) is the number of partitions of n into k parts x_1, x_2, ..., x_k such that gcd(x_i, x_j) = 1 for all i != j (where 1<=k<=n).

The programs for A282749, there is no canonical definition to state claims against.
-/

/-! ## A282749.P3504588256351138805

`A329041(A103524(n+1))`
-/

namespace A282749.P3504588256351138805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329041 (A103524 (n + 1)).toNat

end

end A282749.P3504588256351138805

/-! ## A282749.P12909585049802381317

`A257990(A057728(n+1)²+1)`
-/

namespace A282749.P12909585049802381317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A057728 (n + 1) ^ 2 + 1).toNat

end

end A282749.P12909585049802381317

/-! ## A282749.P7138064254470143457

`A060162(A193592(n)%A228900(n))`
-/

namespace A282749.P7138064254470143457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060162 (Int.tmod (A193592 n) (A228900 n)).toNat

end

end A282749.P7138064254470143457

/-! ## A282749.P8115157420138418555

`gcd(A057432(A193592(n+1)), A156587(n))`
-/

namespace A282749.P8115157420138418555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057432 (A193592 (n + 1)).toNat) (A156587 n)

end

end A282749.P8115157420138418555

/-! ## A282749.P1176706505244170536

`A188796(A155586(n))`
-/

namespace A282749.P1176706505244170536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188796 (A155586 n).toNat

end

end A282749.P1176706505244170536

/-!
# A282750: Triangle read by rows: T(n,k) is the number of partitions of n into k parts x_1, x_2, ..., x_k such that gcd(x_1, x_2, ..., x_k) = 1 (where 1 <= k <= n).

The programs for A282750, there is no canonical definition to state claims against.
-/

/-! ## A282750.P3871737068306712205

`A003986(A215977(n)%A019998(n))`
-/

namespace A282750.P3871737068306712205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Int.tmod (A215977 n) (A019998 n)).toNat

end

end A282750.P3871737068306712205

/-! ## A282750.P1967803370113239301

`∑{p}[A007727(A215977(n)), A001222(#)]`
-/

namespace A282750.P1967803370113239301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007727 (A215977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A282750.P1967803370113239301

/-! ## A282750.P13722814083163658164

`A003986(A215977(n))%A167499(A217156(n+1))`
-/

namespace A282750.P13722814083163658164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003986 (A215977 n).toNat) (A167499 (A217156 (n + 1)).toNat)

end

end A282750.P13722814083163658164

/-! ## A282750.P12412806556620699664

`A061198(n)-A010815(A353619(2*n+3))`
-/

namespace A282750.P12412806556620699664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 n - A010815 (A353619 (2 * n + 3)).toNat

end

end A282750.P12412806556620699664

/-! ## A282750.P6331072180239590349

`A327104(A065066(n))`
-/

namespace A282750.P6331072180239590349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (A065066 n).toNat

end

end A282750.P6331072180239590349

/-!
# A282751: Expansion of phi_{7, 2}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A282751, the canonical program `A282751.P13496830146791819675` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282751 has offset 0).

The definition of A282751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282751.P13496830146791819675

`∑{d}[n, n²*#^5]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282751

/-- `∑{d}[n, n²*#^5]` -/
def P13496830146791819675.Spec : Prop :=
  ∀ n, (P13496830146791819675.a n : ℤ) = A282751 n

theorem P13496830146791819675.correct : P13496830146791819675.Spec := by
  intro n
  simp only [A282751]

end A282751

/-! ## A282751.P12641588686569795651

`n*∑{d}[n, n*#^5]`
-/

namespace A282751.P12641588686569795651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n * d ^ 5)

end

end A282751.P12641588686569795651

namespace A282751

/-- `n*∑{d}[n, n*#^5]` -/
def P12641588686569795651.Spec : Prop :=
  ∀ n, (P12641588686569795651.a n : ℤ) = A282751 n

end A282751

/-! ## A282751.P9008581040855595781

`n*A282050(n)`
-/

namespace A282751.P9008581040855595781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282050 n

end

end A282751.P9008581040855595781

namespace A282751

/-- `n*A282050(n)` -/
def P9008581040855595781.Spec : Prop :=
  ∀ n, P9008581040855595781.a n = A282751 n

end A282751

/-! ## A282751.P9960718121053786567

`n²*A001160(abs(1-n)+1)`
-/

namespace A282751.P9960718121053786567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001160 (|1 - (n : ℤ)| + 1).toNat

end

end A282751.P9960718121053786567

namespace A282751

/-- `n²*A001160(abs(1-n)+1)` -/
def P9960718121053786567.Spec : Prop :=
  ∀ n, P9960718121053786567.a n = A282751 n

end A282751

/-! ## A282751.P18162820415218521465

`A282781(n)/A028310(n)`
-/

namespace A282751.P18162820415218521465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A028310 n : ℚ)

end

end A282751.P18162820415218521465

namespace A282751

/-- `A282781(n)/A028310(n)` -/
def P18162820415218521465.Spec : Prop :=
  ∀ n, P18162820415218521465.a n = (A282751 n : ℚ)

end A282751

/-! ## A282751.P13190641958314901067

`A386785(n)/A253909(n)`
-/

namespace A282751.P13190641958314901067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386785 n : ℚ) / (A253909 n : ℚ)

end

end A282751.P13190641958314901067

namespace A282751

/-- `A386785(n)/A253909(n)` -/
def P13190641958314901067.Spec : Prop :=
  ∀ n, P13190641958314901067.a n = (A282751 n : ℚ)

end A282751

/-! ## A282751.P1586144197757090382

`A282781(n)/(A000007(n)+n)`
-/

namespace A282751.P1586144197757090382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A282751.P1586144197757090382

namespace A282751

/-- `A282781(n)/(A000007(n)+n)` -/
def P1586144197757090382.Spec : Prop :=
  ∀ n, P1586144197757090382.a n = (A282751 n : ℚ)

end A282751

/-! ## A282751.P2491290829926659338

`n/A253909(n)*A282781(n)`
-/

namespace A282751.P2491290829926659338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253909 n : ℚ) * (A282781 n : ℚ)

end

end A282751.P2491290829926659338

namespace A282751

/-- `n/A253909(n)*A282781(n)` -/
def P2491290829926659338.Spec : Prop :=
  ∀ n, P2491290829926659338.a n = (A282751 n : ℚ)

end A282751

/-! ## A282751.P5977490265500261908

`A282781(n)/A065033(2*n)`
-/

namespace A282751.P5977490265500261908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A282751.P5977490265500261908

namespace A282751

/-- `A282781(n)/A065033(2*n)` -/
def P5977490265500261908.Spec : Prop :=
  ∀ n, P5977490265500261908.a n = (A282751 n : ℚ)

end A282751

/-! ## A282751.P9486096452978664344

`A282781(n)/A137734(n²)`
-/

namespace A282751.P9486096452978664344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282781 n : ℚ) / (A137734 (n ^ 2) : ℚ)

end

end A282751.P9486096452978664344

namespace A282751

/-- `A282781(n)/A137734(n²)` -/
def P9486096452978664344.Spec : Prop :=
  ∀ n, P9486096452978664344.a n = (A282751 n : ℚ)

end A282751

/-!
# A282753: Expansion of phi_{9, 2}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A282753, the canonical program `A282753.P2769917116323268698` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282753 has offset 0).

The definition of A282753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282753.P2769917116323268698

`∑{d}[n, n²*#^7]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282753

/-- `∑{d}[n, n²*#^7]` -/
def P2769917116323268698.Spec : Prop :=
  ∀ n, (P2769917116323268698.a n : ℤ) = A282753 n

theorem P2769917116323268698.correct : P2769917116323268698.Spec := by
  intro n
  simp only [A282753]

end A282753

/-! ## A282753.P4808559522233738842

`n*∑{d}[n, n*#^7]`
-/

namespace A282753.P4808559522233738842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n * d ^ 7)

end

end A282753.P4808559522233738842

namespace A282753

/-- `n*∑{d}[n, n*#^7]` -/
def P4808559522233738842.Spec : Prop :=
  ∀ n, (P4808559522233738842.a n : ℤ) = A282753 n

end A282753

/-! ## A282753.P4604681697041381639

`n*A282060(n)`
-/

namespace A282753.P4604681697041381639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282060 n

end

end A282753.P4604681697041381639

namespace A282753

/-- `n*A282060(n)` -/
def P4604681697041381639.Spec : Prop :=
  ∀ n, P4604681697041381639.a n = A282753 n

end A282753

/-! ## A282753.P14817385241056039066

`n²*A013955(abs(1-n)+1)`
-/

namespace A282753.P14817385241056039066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A013955 (|1 - (n : ℤ)| + 1).toNat

end

end A282753.P14817385241056039066

namespace A282753

/-- `n²*A013955(abs(1-n)+1)` -/
def P14817385241056039066.Spec : Prop :=
  ∀ n, P14817385241056039066.a n = A282753 n

end A282753

/-! ## A282753.P1102420955378088497

`n*n*∑{d}[n, #*A001014(#)]`
-/

namespace A282753.P1102420955378088497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001014 d))

end

end A282753.P1102420955378088497

namespace A282753

/-- `n*n*∑{d}[n, #*A001014(#)]` -/
def P1102420955378088497.Spec : Prop :=
  ∀ n, P1102420955378088497.a n = A282753 n

end A282753

/-! ## A282753.P1351850100526704828

`A386781(n)/A028310(n)`
-/

namespace A282753.P1351850100526704828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386781 n : ℚ) / (A028310 n : ℚ)

end

end A282753.P1351850100526704828

namespace A282753

/-- `A386781(n)/A028310(n)` -/
def P1351850100526704828.Spec : Prop :=
  ∀ n, P1351850100526704828.a n = (A282753 n : ℚ)

end A282753

/-! ## A282753.P15116682564746269746

`A386787(n)/A253909(n)`
-/

namespace A282753.P15116682564746269746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386787 n : ℚ) / (A253909 n : ℚ)

end

end A282753.P15116682564746269746

namespace A282753

/-- `A386787(n)/A253909(n)` -/
def P15116682564746269746.Spec : Prop :=
  ∀ n, P15116682564746269746.a n = (A282753 n : ℚ)

end A282753

/-!
# A282754: Admirable numbers such that the subtracted divisor is a Fibonacci number.

The programs for A282754, there is no canonical definition to state claims against.
-/

/-! ## A282754.P14239741533755074066

`A217221(A212071(n))+A006039(n+1)`
-/

namespace A282754.P14239741533755074066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 (A212071 n).toNat + A006039 (n + 1)

end

end A282754.P14239741533755074066

/-! ## A282754.P9903484147517574468

`A180332(n+1)+A004016(A254869(n+1))`
-/

namespace A282754.P9903484147517574468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1) + A004016 (A254869 (n + 1)).toNat

end

end A282754.P9903484147517574468

/-!
# A282755: Numbers k such that the set of all the decimal digits of k is the same as the set of all the decimal digits of the proper divisors of k.

The programs for A282755, there is no canonical definition to state claims against.
-/

/-! ## A282755.P9623929368219174593

`∪[A022009(n+1), A237713(n+1)]`
-/

namespace A282755.P9623929368219174593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282755.P9623929368219174593

/-! ## A282755.P2633815687325745398

`∪[A022011(n+1), A237713(n+1)]`
-/

namespace A282755.P2633815687325745398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282755.P2633815687325745398

/-! ## A282755.P6489766147833131543

`∪[A022545(n+1), A237713(n+1)]`
-/

namespace A282755.P6489766147833131543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282755.P6489766147833131543

/-! ## A282755.P6676928961449389460

`∪[A027569(n+1), A237713(n+1)]`
-/

namespace A282755.P6676928961449389460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282755.P6676928961449389460

/-! ## A282755.P6632549489589882551

`∪[A076171(n+1), A237713(n+1)]`
-/

namespace A282755.P6632549489589882551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A282755.P6632549489589882551

/-!
# A282756: Let F(k,n) = k*F(k,n-1) + F(k,n-2) with initial conditions F(k,0) = 0, F(k,1) = 1. Sequence lists the minimum 'n' such that F(k,n) > k^n.

The programs for A282756, there is no canonical definition to state claims against.
-/

/-! ## A282756.P6783329088185544187

`∑[A240114(A240114(n+1))+n]+2`
-/

namespace A282756.P6783329088185544187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240114 (A240114 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A282756.P6783329088185544187

/-! ## A282756.P13306298972478844

`A144968(A272103(n)+A049417(n+1))`
-/

namespace A282756.P13306298972478844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (A272103 n + A049417 (n + 1)).toNat

end

end A282756.P13306298972478844

/-! ## A282756.P15865890733618726464

`A257639(A197604(n+1)-A110288(n))`
-/

namespace A282756.P15865890733618726464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A197604 (n + 1) - A110288 n).toNat

end

end A282756.P15865890733618726464

/-! ## A282756.P8893538973118113324

`A003056(A064808(n)*A167614(n+1))`
-/

namespace A282756.P8893538973118113324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A064808 n * A167614 (n + 1)).toNat

end

end A282756.P8893538973118113324

/-!
# A282757: 2*n analog to Keith numbers.

The programs for A282757, there is no canonical definition to state claims against.
-/

/-! ## A282757.P16566097038710469718

`A081604(A198275(n))+A047440(n+1)`
-/

namespace A282757.P16566097038710469718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A198275 n).toNat + A047440 (n + 1)

end

end A282757.P16566097038710469718

/-! ## A282757.P7202360215532309465

`A081604(A000918(n+4))+A047440(n+1)`
-/

namespace A282757.P7202360215532309465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A000918 (n + 4)).toNat + A047440 (n + 1)

end

end A282757.P7202360215532309465

/-! ## A282757.P5435990067955823361

`lt[A025840(A025849(3*n+4)), A025891(n)]`
-/

namespace A282757.P5435990067955823361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 (A025849 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A282757.P5435990067955823361

/-! ## A282757.P17723554191648642460

`A031363(n+3)-A285565(A241231(n+1)+1)`
-/

namespace A282757.P17723554191648642460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 3) - A285565 (A241231 (n + 1) + 1).toNat

end

end A282757.P17723554191648642460

/-! ## A282757.P12199665960202301578

`xor(A070242(n+1), A139327(A304360(3*(n+1))))`
-/

namespace A282757.P12199665960202301578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A070242 (n + 1)) (A139327 (A304360 (3 * (n + 1))).toNat)

end

end A282757.P12199665960202301578

/-!
# A282770: a(1)=1. For n>1, start with n, concatenate the indices of its prime factors, and repeat until either (i) a prime p is reached, when we set a(n)=p; or (ii) the process enters a loop of length m, when we set a(n) = -m; or (iii) the trajectory diverges to infinity, when we set a(n) = 0.

The programs for A282770, there is no canonical definition to state claims against.
-/

/-! ## A282770.P11802731391195163384

`A013632(n^n)^3+n`
-/

namespace A282770.P11802731391195163384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n ^ n) ^ 3 + (n : ℤ)

end

end A282770.P11802731391195163384

/-! ## A282770.P8171216049227209479

`A381558(A014644(n+1))+n`
-/

namespace A282770.P8171216049227209479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381558 (A014644 (n + 1)).toNat + (n : ℤ)

end

end A282770.P8171216049227209479

/-!
# A282774: Nonprime numbers k such that sigma(k) - Sum_{j=1..m}{sigma(k) mod d_j} | k, where d_j is one of the m divisors of k.

The programs for A282774, there is no canonical definition to state claims against.
-/

/-! ## A282774.P14527473394705460151

`A324386(A242514(n)*A370034(n+1))`
-/

namespace A282774.P14527473394705460151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324386 (A242514 n * A370034 (n + 1)).toNat

end

end A282774.P14527473394705460151

/-!
# A282775: Nonprime numbers k such that k | (sigma(k) - Sum_{j=1..m}{sigma(k) mod d_j}), where d_j is one of the m divisors of k.

The programs for A282775, there is no canonical definition to state claims against.
-/

/-! ## A282775.P16069929491610021952

`A352283(A037288(n))+A226853(n+1)`
-/

namespace A282775.P16069929491610021952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352283 (A037288 n).toNat + A226853 (n + 1)

end

end A282775.P16069929491610021952

/-! ## A282775.P7628389881821067347

`A027598(n+1)-A092237(A157272(n))`
-/

namespace A282775.P7628389881821067347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027598 (n + 1) - A092237 (A157272 n).toNat

end

end A282775.P7628389881821067347

/-! ## A282775.P1116532437227258013

`A027598(n+1)-A356116(A128165(n+1))`
-/

namespace A282775.P1116532437227258013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027598 (n + 1) - A356116 (A128165 (n + 1)).toNat

end

end A282775.P1116532437227258013

/-!
# A282776: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A282776, there is no canonical definition to state claims against.
-/

/-! ## A282776.P6854996654594536695

`lcm((2^C(n, 10))!, A283015(n))`
-/

namespace A282776.P6854996654594536695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (2 ^ Nat.choose n 10) : ℤ) (A283015 n)

end

end A282776.P6854996654594536695

/-! ## A282776.P12458402414151051811

`A035263(3^n+1)+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A282776.P12458402414151051811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A035263 (3 ^ n + 1) + 4 * a (n - 2)

end

end A282776.P12458402414151051811

/-! ## A282776.P143793184143737674

`(n%2+4*a(n-2))%A058010(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A282776.P143793184143737674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (((n % 2 : ℕ) : ℤ) + 4 * a (n - 2)) (A058010 (n + 1))

end

end A282776.P143793184143737674

/-! ## A282776.P8129775847589825101

`A283015(A062399(n))`
-/

namespace A282776.P8129775847589825101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283015 (A062399 n).toNat

end

end A282776.P8129775847589825101

/-! ## A282776.P8973300609260667098

`A283015(A120126(n))`
-/

namespace A282776.P8973300609260667098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283015 (A120126 n).toNat

end

end A282776.P8973300609260667098

/-!
# A282777: Expansion of phi_{16, 1}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A282777, the canonical program `A282777.P9475512054048796476` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282777 has offset 0).

The definition of A282777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282777.P9475512054048796476

`n*∑{d}[n, #^3^5]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282777

/-- `n*∑{d}[n, #^3^5]` -/
def P9475512054048796476.Spec : Prop :=
  ∀ n, (P9475512054048796476.a n : ℤ) = A282777 n

theorem P9475512054048796476.correct : P9475512054048796476.Spec := by
  intro n
  simp only [A282777]

end A282777

/-! ## A282777.P7339612545628520157

`∑{d}[n, n*A010803(#)]`
-/

namespace A282777.P7339612545628520157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A010803 d

end

end A282777.P7339612545628520157

namespace A282777

/-- `∑{d}[n, n*A010803(#)]` -/
def P7339612545628520157.Spec : Prop :=
  ∀ n, P7339612545628520157.a n = A282777 n

end A282777

/-! ## A282777.P8551228651718315495

`n*A013963(round(sqrt(n²+1)))`
-/

namespace A282777.P8551228651718315495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013963 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A282777.P8551228651718315495

namespace A282777

/-- `n*A013963(round(sqrt(n²+1)))` -/
def P8551228651718315495.Spec : Prop :=
  ∀ n, P8551228651718315495.a n = A282777 n

end A282777

/-!
# A282778: First differences of A281687.

The programs for A282778, there is no canonical definition to state claims against.
-/

/-! ## A282778.P3779039625684117410

`A281687(n+2)-A281687(n+1)`
-/

namespace A282778.P3779039625684117410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281687 (n + 2) - A281687 (n + 1)

end

end A282778.P3779039625684117410

/-! ## A282778.P1563750166961739049

`Δ[A281687(n+1)]`
-/

namespace A282778.P1563750166961739049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282778.P1563750166961739049

/-! ## A282778.P18303161296649543587

`A285139(n+1)-(∏{e}[A213000(n)+1, #]-1)`
-/

namespace A282778.P18303161296649543587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213000 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1) - (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1)

end

end A282778.P18303161296649543587

/-! ## A282778.P16081786362961709056

`A006065(n+2)%gcd(2, n)`
-/

namespace A282778.P16081786362961709056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006065 (n + 2)) (Nat.gcd 2 n : ℤ)

end

end A282778.P16081786362961709056

/-!
# A282779: Period of cubes mod n.

The programs for A282779, the canonical program `A282779.P5011115645249712439` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282779 has offset 1).

The definition of A282779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282779.P5011115645249712439

`gcd(n+1, lcm(3, C(n², 3)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282779

/-- `gcd(n+1, lcm(3, C(n², 3)))` -/
def P5011115645249712439.Spec : Prop :=
  ∀ n, (P5011115645249712439.a n : ℤ) = A282779 (n + 1)

theorem P5011115645249712439.correct : P5011115645249712439.Spec := by
  intro n
  simp only [A282779, Nat.add_sub_cancel]

end A282779

/-! ## A282779.P1745262749891721153

`n%(lcm(9, n+1)/3)+1`
-/

namespace A282779.P1745262749891721153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((Nat.lcm 9 (n + 1) : ℚ) / 3)) + 1

end

end A282779.P1745262749891721153

namespace A282779

/-- `n%(lcm(9, n+1)/3)+1` -/
def P1745262749891721153.Spec : Prop :=
  ∀ n, P1745262749891721153.a n = A282779 (n + 1)

end A282779

/-! ## A282779.P15174763070734962070

`(n+1)/gcd(3, C(n, 5)-2)`
-/

namespace A282779.P15174763070734962070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 3 ((Nat.choose n 5 : ℤ) - 2) : ℚ)

end

end A282779.P15174763070734962070

namespace A282779

/-- `(n+1)/gcd(3, C(n, 5)-2)` -/
def P15174763070734962070.Spec : Prop :=
  ∀ n, P15174763070734962070.a n = (A282779 (n + 1) : ℚ)

end A282779

/-! ## A282779.P13840809444261529281

`(n+1)/floor(root(3, dr(n+2)))`
-/

namespace A282779.P13840809444261529281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(3 : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℝ))⌋ : ℚ)

end

end A282779.P13840809444261529281

namespace A282779

/-- `(n+1)/floor(root(3, dr(n+2)))` -/
def P13840809444261529281.Spec : Prop :=
  ∀ n, P13840809444261529281.a n = (A282779 (n + 1) : ℚ)

end A282779

/-! ## A282779.P7281770483378753025

`(n+1)/3^Δ[floor(n/9)]`
-/

namespace A282779.P7281770483378753025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A282779.P7281770483378753025

namespace A282779

/-- `(n+1)/3^Δ[floor(n/9)]` -/
def P7281770483378753025.Spec : Prop :=
  ∀ n, P7281770483378753025.a n = (A282779 (n + 1) : ℚ)

end A282779

/-! ## A282779.P8048354906988095852

`gcd(n-1-2*n, lcm(n-2, ∑[(2*n)²]))`
-/

namespace A282779.P8048354906988095852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) (Int.lcm ((n : ℤ) - 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A282779.P8048354906988095852

namespace A282779

/-- `gcd(n-1-2*n, lcm(n-2, ∑[(2*n)²]))` -/
def P8048354906988095852.Spec : Prop :=
  ∀ n, (P8048354906988095852.a n : ℤ) = A282779 (n + 1)

end A282779

/-! ## A282779.P13005743996027518695

`gcd(n+1, A105942(n))`
-/

namespace A282779.P13005743996027518695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A105942 n)

end

end A282779.P13005743996027518695

namespace A282779

/-- `gcd(n+1, A105942(n))` -/
def P13005743996027518695.Spec : Prop :=
  ∀ n, (P13005743996027518695.a n : ℤ) = A282779 (n + 1)

end A282779

/-! ## A282779.P11490629924796475047

`(2-A131561(n))*A106610(n+1)`
-/

namespace A282779.P11490629924796475047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A131561 n) * A106610 (n + 1)

end

end A282779.P11490629924796475047

namespace A282779

/-- `(2-A131561(n))*A106610(n+1)` -/
def P11490629924796475047.Spec : Prop :=
  ∀ n, P11490629924796475047.a n = A282779 (n + 1)

end A282779

/-! ## A282779.P4576931620919732244

`gcd(A027820(n+2), A061019(n+1))`
-/

namespace A282779.P4576931620919732244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027820 (n + 2)) (A061019 (n + 1))

end

end A282779.P4576931620919732244

namespace A282779

/-- `gcd(A027820(n+2), A061019(n+1))` -/
def P4576931620919732244.Spec : Prop :=
  ∀ n, (P4576931620919732244.a n : ℤ) = A282779 (n + 1)

end A282779

/-! ## A282779.P10670473306503770438

`lcm(A007913(n+1), A237109(n+1))`
-/

namespace A282779.P10670473306503770438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A237109 (n + 1))

end

end A282779.P10670473306503770438

namespace A282779

/-- `lcm(A007913(n+1), A237109(n+1))` -/
def P10670473306503770438.Spec : Prop :=
  ∀ n, (P10670473306503770438.a n : ℤ) = A282779 (n + 1)

end A282779

/-! ## A282779.P2662324445040078983

`A051176(A051176(n+1))*A109007(n+1)`
-/

namespace A282779.P2662324445040078983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A051176 (n + 1)).toNat * A109007 (n + 1)

end

end A282779.P2662324445040078983

namespace A282779

/-- `A051176(A051176(n+1))*A109007(n+1)` -/
def P2662324445040078983.Spec : Prop :=
  ∀ n, P2662324445040078983.a n = A282779 (n + 1)

end A282779

/-! ## A282779.P15046910353639470890

`A060789(A060789(2*(n+1)))*A089128(n+1)`
-/

namespace A282779.P15046910353639470890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A060789 (2 * (n + 1))).toNat * A089128 (n + 1)

end

end A282779.P15046910353639470890

namespace A282779

/-- `A060789(A060789(2*(n+1)))*A089128(n+1)` -/
def P15046910353639470890.Spec : Prop :=
  ∀ n, P15046910353639470890.a n = A282779 (n + 1)

end A282779

/-! ## A282779.P15704937286998462145

`A051176((n+1)*A144437(A051176(n+1)))`
-/

namespace A282779.P15704937286998462145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 ((n + 1 : ℤ) * A144437 (A051176 (n + 1)).toNat).toNat

end

end A282779.P15704937286998462145

namespace A282779

/-- `A051176((n+1)*A144437(A051176(n+1)))` -/
def P15704937286998462145.Spec : Prop :=
  ∀ n, P15704937286998462145.a n = A282779 (n + 1)

end A282779

/-! ## A282779.P9725740026482515426

`A051176((n+1)*A169609(A051176(n+1)))`
-/

namespace A282779.P9725740026482515426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 ((n + 1 : ℤ) * A169609 (A051176 (n + 1)).toNat).toNat

end

end A282779.P9725740026482515426

namespace A282779

/-- `A051176((n+1)*A169609(A051176(n+1)))` -/
def P9725740026482515426.Spec : Prop :=
  ∀ n, P9725740026482515426.a n = A282779 (n + 1)

end A282779

/-!
# A282781: Expansion of phi_{8, 3}(x) where phi_{r, s}(x) = Sum_{n, m>0} m^r * n^s * x^{m*n}.

The programs for A282781, the canonical program `A282781.P11971029506536278337` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282781 has offset 0).

The definition of A282781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282781.P11971029506536278337

`n*∑{d}[n, n²*#^5]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282781

/-- `n*∑{d}[n, n²*#^5]` -/
def P11971029506536278337.Spec : Prop :=
  ∀ n, (P11971029506536278337.a n : ℤ) = A282781 n

theorem P11971029506536278337.correct : P11971029506536278337.Spec := by
  intro n
  simp only [A282781]

end A282781

/-! ## A282781.P4208304884430731413

`n*n*∑{d}[n, n*#^5]`
-/

namespace A282781.P4208304884430731413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (∑ d ∈ Nat.divisors (f1 n), n * d ^ 5))

end

end A282781.P4208304884430731413

namespace A282781

/-- `n*n*∑{d}[n, n*#^5]` -/
def P4208304884430731413.Spec : Prop :=
  ∀ n, (P4208304884430731413.a n : ℤ) = A282781 n

end A282781

/-! ## A282781.P17073645983277440818

`n*A282751(n)`
-/

namespace A282781.P17073645983277440818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282751 n

end

end A282781.P17073645983277440818

namespace A282781

/-- `n*A282751(n)` -/
def P17073645983277440818.Spec : Prop :=
  ∀ n, P17073645983277440818.a n = A282781 n

end A282781

/-! ## A282781.P14783144875580433380

`n²*A282050(n)`
-/

namespace A282781.P14783144875580433380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A282050 n

end

end A282781.P14783144875580433380

namespace A282781

/-- `n²*A282050(n)` -/
def P14783144875580433380.Spec : Prop :=
  ∀ n, P14783144875580433380.a n = A282781 n

end A282781

/-! ## A282781.P7258111686473511185

`∑{d}[n, n*A000584(#)]*n²`
-/

namespace A282781.P7258111686473511185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A000584 d) * (n ^ 2 : ℤ)

end

end A282781.P7258111686473511185

namespace A282781

/-- `∑{d}[n, n*A000584(#)]*n²` -/
def P7258111686473511185.Spec : Prop :=
  ∀ n, P7258111686473511185.a n = A282781 n

end A282781

/-! ## A282781.P2435421979250311793

`A386785(n)/A028310(n)`
-/

namespace A282781.P2435421979250311793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386785 n : ℚ) / (A028310 n : ℚ)

end

end A282781.P2435421979250311793

namespace A282781

/-- `A386785(n)/A028310(n)` -/
def P2435421979250311793.Spec : Prop :=
  ∀ n, P2435421979250311793.a n = (A282781 n : ℚ)

end A282781

/-!
# A282782: Numbers that are equal to a product of powers of digits where the exponents from left to right decrease with 1 and the exponent for the units digit is 1.

The programs for A282782, there is no canonical definition to state claims against.
-/

/-! ## A282782.P15429155766334987962

`A001296(n-n%10)+n`
-/

namespace A282782.P15429155766334987962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n - n % 10) + (n : ℤ)

end

end A282782.P15429155766334987962

/-! ## A282782.P10801102365689059804

`A001296(n-∏{digits}[n, #])+n`
-/

namespace A282782.P10801102365689059804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod) + (n : ℤ)

end

end A282782.P10801102365689059804

/-! ## A282782.P16132598739845951847

`A004860(A004872(n+2))`
-/

namespace A282782.P16132598739845951847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (A004872 (n + 2)).toNat

end

end A282782.P16132598739845951847

/-! ## A282782.P9817358018639294916

`A084640(A070565(n))+n`
-/

namespace A282782.P9817358018639294916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 (A070565 n).toNat + (n : ℤ)

end

end A282782.P9817358018639294916

/-!
# A282783: Number of terms in A282430 less than or equal to 10^n.

The programs for A282783, there is no canonical definition to state claims against.
-/

/-! ## A282783.P1668328730385860712

`∑[A242062(A213378(n+1))]`
-/

namespace A282783.P1668328730385860712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A213378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282783.P1668328730385860712

/-! ## A282783.P5190057983423731008

`A001065(A273996(n)+2*n+1-comp[xor(n, 2*n)])`
-/

namespace A282783.P5190057983423731008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A273996 n + ((2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))).toNat

end

end A282783.P5190057983423731008

/-!
# A282784: Number of n X n 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly one element.

The programs for A282784, there is no canonical definition to state claims against.
-/

/-! ## A282784.P17078863325253054994

`A282791(∑[4*n]+1)`
-/

namespace A282784.P17078863325253054994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282784.P17078863325253054994

/-! ## A282784.P12819703348370029304

`A057427(n)*A282791(A001844(n))`
-/

namespace A282784.P12819703348370029304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A282791 (A001844 n).toNat

end

end A282784.P12819703348370029304

/-! ## A282784.P9799815259173244393

`A282791(A001844(n))%A304397(n)`
-/

namespace A282784.P9799815259173244393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282791 (A001844 n).toNat) (A304397 n)

end

end A282784.P9799815259173244393

/-! ## A282784.P12476180558000439127

`A000108(C(2, n))*A282791(A001844(n))`
-/

namespace A282784.P12476180558000439127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A282791 (A001844 n).toNat

end

end A282784.P12476180558000439127

/-! ## A282784.P15337191352973142593

`A000041(C(2, n+2))*A282791(A001844(n))`
-/

namespace A282784.P15337191352973142593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A282791 (A001844 n).toNat

end

end A282784.P15337191352973142593

/-!
# A282785: Number of n X 2 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly one element.

The programs for A282785, there is no canonical definition to state claims against.
-/

/-! ## A282785.P13948596437384164209

`A282791(∑[n+1]+2)`
-/

namespace A282785.P13948596437384164209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282785.P13948596437384164209

/-! ## A282785.P410883728595521094

`lcm(2, A282791(A000096(n+1)))`
-/

namespace A282785.P410883728595521094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282791 (A000096 (n + 1)).toNat)

end

end A282785.P410883728595521094

/-! ## A282785.P11083751010745756359

`A282791(A000096(n+1))+A000007(n+1)`
-/

namespace A282785.P11083751010745756359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A282785.P11083751010745756359

/-! ## A282785.P6747585062171556839

`gcd(2, A000040(n+1))*A282791(A000096(n+1))`
-/

namespace A282785.P6747585062171556839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A282791 (A000096 (n + 1)).toNat

end

end A282785.P6747585062171556839

/-! ## A282785.P12012845004455492761

`A282791(A000096(n+1))+char[A000217(n+5)+6]`
-/

namespace A282785.P12012845004455492761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5) + 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A282785.P12012845004455492761

/-!
# A282786: Number of nX3 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly one element.

The programs for A282786, there is no canonical definition to state claims against.
-/

/-! ## A282786.P9669409780160975004

`A282791(∑[n+2]+4)`
-/

namespace A282786.P9669409780160975004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282786.P9669409780160975004

/-! ## A282786.P16572961661969753382

`lcm(A000034(n), A282791(A167614(n+1)))`
-/

namespace A282786.P16572961661969753382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A282791 (A167614 (n + 1)).toNat)

end

end A282786.P16572961661969753382

/-! ## A282786.P18260209215944218202

`A282791(A167614(n+1))%A177097(n+1)`
-/

namespace A282786.P18260209215944218202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282791 (A167614 (n + 1)).toNat) (A177097 (n + 1))

end

end A282786.P18260209215944218202

/-! ## A282786.P9141611364775382387

`or(A185706(n+1), A282791(A167614(n+1)))`
-/

namespace A282786.P9141611364775382387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185706 (n + 1)) (A282791 (A167614 (n + 1)).toNat)

end

end A282786.P9141611364775382387

/-! ## A282786.P3851365137983983335

`record[A282791(A198464(n+1))]`
-/

namespace A282786.P3851365137983983335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282786.P3851365137983983335

/-!
# A282787: Number of n X 4 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly one element.

The programs for A282787, there is no canonical definition to state claims against.
-/

/-! ## A282787.P18245626694077508424

`A282791(A374004(n+1))`
-/

namespace A282787.P18245626694077508424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A374004 (n + 1)).toNat

end

end A282787.P18245626694077508424

/-! ## A282787.P3768078523885843662

`A282791(A141214(n)+7)`
-/

namespace A282787.P3768078523885843662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A141214 n + 7).toNat

end

end A282787.P3768078523885843662

/-! ## A282787.P3818012409580002109

`A282791(A167614(n+2)+1)`
-/

namespace A282787.P3818012409580002109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A167614 (n + 2) + 1).toNat

end

end A282787.P3818012409580002109

/-! ## A282787.P15810391457697382262

`A282791(A055998(n+2))`
-/

namespace A282787.P15810391457697382262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A055998 (n + 2)).toNat

end

end A282787.P15810391457697382262

/-! ## A282787.P16662029444664717135

`A282791(A155212(n)+5)`
-/

namespace A282787.P16662029444664717135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A155212 n + 5).toNat

end

end A282787.P16662029444664717135

/-!
# A282788: Number of nX5 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly one element.

The programs for A282788, there is no canonical definition to state claims against.
-/

/-! ## A282788.P17549656082060280404

`A282791(A374005(n+1))`
-/

namespace A282788.P17549656082060280404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A374005 (n + 1)).toNat

end

end A282788.P17549656082060280404

/-! ## A282788.P17088668774948578488

`A282791(eq[7, A066657(n)])`
-/

namespace A282788.P17088668774948578488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282788.P17088668774948578488

/-! ## A282788.P13816606328049664173

`A282791(eq[6, A131818(n+1)])`
-/

namespace A282788.P13816606328049664173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282788.P13816606328049664173

/-! ## A282788.P8694238802705331711

`A282791(A046691(n+3))`
-/

namespace A282788.P8694238802705331711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A046691 (n + 3)).toNat

end

end A282788.P8694238802705331711

/-! ## A282788.P9626886844941339989

`A282791(eq[2, A092921(n)])`
-/

namespace A282788.P9626886844941339989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282788.P9626886844941339989

/-!
# A282789: Number of nX6 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly one element.

The programs for A282789, there is no canonical definition to state claims against.
-/

/-! ## A282789.P4970033844239580718

`A282791(A374007(n+1))`
-/

namespace A282789.P4970033844239580718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A374007 (n + 1)).toNat

end

end A282789.P4970033844239580718

/-! ## A282789.P6995565937031857434

`A282791(eq[7, A131818(n+1)])`
-/

namespace A282789.P6995565937031857434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282789.P6995565937031857434

/-! ## A282789.P13818991676391729497

`A282791(eq[5, A193592(n)])`
-/

namespace A282789.P13818991676391729497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282789.P13818991676391729497

/-! ## A282789.P365439681722286389

`A282791(eq[8, A185782(n+1)])`
-/

namespace A282789.P365439681722286389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282789.P365439681722286389

/-! ## A282789.P10641840966991005393

`A282791(eq[16, A057728(n+1)])`
-/

namespace A282789.P10641840966991005393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282789.P10641840966991005393

/-!
# A282790: Number of nX7 0..1 arrays with no 1 equal to more than one of its king-move neighbors, with the exception of exactly one element.

The programs for A282790, there is no canonical definition to state claims against.
-/

/-! ## A282790.P1292536447591474954

`A282791(A374008(n+1))`
-/

namespace A282790.P1292536447591474954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A374008 (n + 1)).toNat

end

end A282790.P1292536447591474954

/-! ## A282790.P16903484236825320439

`A282791(eq[11, A066657(n)])`
-/

namespace A282790.P16903484236825320439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282790.P16903484236825320439

/-! ## A282790.P11722870435564520024

`A282791(eq[8, A131818(n+1)])`
-/

namespace A282790.P11722870435564520024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282790.P11722870435564520024

/-! ## A282790.P5232300335376627403

`A282791(A055999(n+4))`
-/

namespace A282790.P5232300335376627403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (A055999 (n + 4)).toNat

end

end A282790.P5232300335376627403

/-! ## A282790.P224094056200561725

`A282791(eq[6, A193592(n)])`
-/

namespace A282790.P224094056200561725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282791 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282790.P224094056200561725

/-!
# A282793: Indices k of nontrivial Riemann zeta zeros such that floor(Im(zetazero(k))/(2*Pi)*log(Im(zetazero(k))/(2*Pi*e)) + 7/8) - k + 1 = 1.

The programs for A282793, there is no canonical definition to state claims against.
-/

/-! ## A282793.P8297614620704747404

`filter[A153815(n+1), A288640(#)]`
-/

namespace A282793.P8297614620704747404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288640 (f1 j).toNat = 1) n)

end

end A282793.P8297614620704747404

/-! ## A282793.P1689691637418201577

`∩[A114856(n+1)+1, A153815(n+1)]`
-/

namespace A282793.P1689691637418201577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114856 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282793.P1689691637418201577

/-! ## A282793.P14153618677688289580

`A153815(A003144(n+1)^A169623(n))`
-/

namespace A282793.P14153618677688289580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (SequenceMachineLib.roundAway ((A003144 (n + 1) : ℚ) ^ (A169623 n : ℤ))).toNat

end

end A282793.P14153618677688289580

/-!
# A282794: Indices k of nontrivial Riemann zeta zeros such that floor(Im(zetazero(k))/(2*Pi)*log(Im(zetazero(k))/(2*Pi*e)) + 7/8) - k + 1 = -1.

The programs for A282794, there is no canonical definition to state claims against.
-/

/-! ## A282794.P11056312095595846096

`∩[A114856(n+1)+2, A153815(n+1)]`
-/

namespace A282794.P11056312095595846096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114856 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282794.P11056312095595846096

/-! ## A282794.P15899223659027216744

`A153815(∑[A220553(n^(n%2)+1)])`
-/

namespace A282794.P15899223659027216744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220553 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153815 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282794.P15899223659027216744

/-!
# A282796: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A282796, the canonical program `A282796.P8939512327850085478` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282796 has offset 0).

The definition of A282796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282796.P10664140732031352292

`A282800(n)-char[1]`
-/

namespace A282796.P10664140732031352292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282800 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282796.P10664140732031352292

namespace A282796

/-- `A282800(n)-char[1]` -/
def P10664140732031352292.Spec : Prop :=
  ∀ n, P10664140732031352292.a n = A282796 n

end A282796

/-! ## A282796.P2949387642444916844

`lcm(A282797(n), A282800(n))`
-/

namespace A282796.P2949387642444916844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A282797 n) (A282800 n)

end

end A282796.P2949387642444916844

namespace A282796

/-- `lcm(A282797(n), A282800(n))` -/
def P2949387642444916844.Spec : Prop :=
  ∀ n, (P2949387642444916844.a n : ℤ) = A282796 n

end A282796

/-! ## A282796.P14574314601976788937

`and(-A000034(n), A282800(n))`
-/

namespace A282796.P14574314601976788937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A282800 n)

end

end A282796.P14574314601976788937

namespace A282796

/-- `and(-A000034(n), A282800(n))` -/
def P14574314601976788937.Spec : Prop :=
  ∀ n, P14574314601976788937.a n = A282796 n

end A282796

/-! ## A282796.P13019647119826436360

`A282800(n)+n-A254667(n)`
-/

namespace A282796.P13019647119826436360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282800 n + (n : ℤ) - A254667 n

end

end A282796.P13019647119826436360

namespace A282796

/-- `A282800(n)+n-A254667(n)` -/
def P13019647119826436360.Spec : Prop :=
  ∀ n, P13019647119826436360.a n = A282796 n

end A282796

/-! ## A282796.P51945069115856867

`and(A282800(n), A325970(A063534(n+1)))`
-/

namespace A282796.P51945069115856867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282800 n) (A325970 (A063534 (n + 1)).toNat)

end

end A282796.P51945069115856867

namespace A282796

/-- `and(A282800(n), A325970(A063534(n+1)))` -/
def P51945069115856867.Spec : Prop :=
  ∀ n, P51945069115856867.a n = A282796 n

end A282796

/-! ## A282796.P8939512327850085478

`A056830(n)+A279028(n)-A000035(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A282796

/-- `A056830(n)+A279028(n)-A000035(n)` -/
def P8939512327850085478.Spec : Prop :=
  ∀ n, P8939512327850085478.a n = A282796 n

theorem P8939512327850085478.correct : P8939512327850085478.Spec := by
  intro n
  simp only [A282796]

end A282796

/-! ## A282796.P7882243887726959121

`A282798(n)+A282800(n)-A282802(n)`
-/

namespace A282796.P7882243887726959121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282798 n + (A282800 n - A282802 n)

end

end A282796.P7882243887726959121

namespace A282796

/-- `A282798(n)+A282800(n)-A282802(n)` -/
def P7882243887726959121.Spec : Prop :=
  ∀ n, P7882243887726959121.a n = A282796 n

end A282796

/-! ## A282796.P7853170128241261919

`A282797(n)/A282801(n)*A282800(n)`
-/

namespace A282796.P7853170128241261919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282797 n : ℚ) / (A282801 n : ℚ) * (A282800 n : ℚ)

end

end A282796.P7853170128241261919

namespace A282796

/-- `A282797(n)/A282801(n)*A282800(n)` -/
def P7853170128241261919.Spec : Prop :=
  ∀ n, P7853170128241261919.a n = (A282796 n : ℚ)

end A282796

/-! ## A282796.P2407814742409693373

`A282799(n)/A282803(n)*A282800(n)`
-/

namespace A282796.P2407814742409693373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282799 n : ℚ) / (A282803 n : ℚ) * (A282800 n : ℚ)

end

end A282796.P2407814742409693373

namespace A282796

/-- `A282799(n)/A282803(n)*A282800(n)` -/
def P2407814742409693373.Spec : Prop :=
  ∀ n, P2407814742409693373.a n = (A282796 n : ℚ)

end A282796

/-!
# A282797: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A282797, the canonical program `A282797.P11912184071198259924` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282797 has offset 0).

The definition of A282797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282797.P11817091043938187907

`(1-char[1])*A282801(n)`
-/

namespace A282797.P11817091043938187907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A282801 n

end

end A282797.P11817091043938187907

namespace A282797

/-- `(1-char[1])*A282801(n)` -/
def P11817091043938187907.Spec : Prop :=
  ∀ n, P11817091043938187907.a n = A282797 n

end A282797

/-! ## A282797.P6221798811839711103

`A282801(n-char[1])-char[1]`
-/

namespace A282797.P6221798811839711103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282801 (n - (if ∃ j, f1 j = n then 1 else 0)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282797.P6221798811839711103

namespace A282797

/-- `A282801(n-char[1])-char[1]` -/
def P6221798811839711103.Spec : Prop :=
  ∀ n, P6221798811839711103.a n = A282797 n

end A282797

/-! ## A282797.P13127409095889039547

`A282801(n)%Δ[A277926(n)]`
-/

namespace A282797.P13127409095889039547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282801 n) (f1 (n + 1) - f1 n)

end

end A282797.P13127409095889039547

namespace A282797

/-- `A282801(n)%Δ[A277926(n)]` -/
def P13127409095889039547.Spec : Prop :=
  ∀ n, P13127409095889039547.a n = A282797 n

end A282797

/-! ## A282797.P11912184071198259924

`A279028(n)+A056830(A052928(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A282797

/-- `A279028(n)+A056830(A052928(n))` -/
def P11912184071198259924.Spec : Prop :=
  ∀ n, P11912184071198259924.a n = A282797 n

theorem P11912184071198259924.correct : P11912184071198259924.Spec := by
  intro n
  simp only [A282797]

end A282797

/-! ## A282797.P7279673911347074760

`lcm(A008683(A001747(n+1)), A282801(n))`
-/

namespace A282797.P7279673911347074760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A001747 (n + 1)).toNat) (A282801 n)

end

end A282797.P7279673911347074760

namespace A282797

/-- `lcm(A008683(A001747(n+1)), A282801(n))` -/
def P7279673911347074760.Spec : Prop :=
  ∀ n, (P7279673911347074760.a n : ℤ) = A282797 n

end A282797

/-! ## A282797.P14786034546226694319

`A279028(n)+A056830(n-A000035(n))`
-/

namespace A282797.P14786034546226694319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 n + A056830 ((n : ℤ) - A000035 n).toNat

end

end A282797.P14786034546226694319

namespace A282797

/-- `A279028(n)+A056830(n-A000035(n))` -/
def P14786034546226694319.Spec : Prop :=
  ∀ n, P14786034546226694319.a n = A282797 n

end A282797

/-! ## A282797.P9610159748416392057

`A060576(n)*A282801(n)*A060576(n)`
-/

namespace A282797.P9610159748416392057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A282801 n * A060576 n

end

end A282797.P9610159748416392057

namespace A282797

/-- `A060576(n)*A282801(n)*A060576(n)` -/
def P9610159748416392057.Spec : Prop :=
  ∀ n, P9610159748416392057.a n = A282797 n

end A282797

/-! ## A282797.P1930622048181231940

`A105812(n)*A282801(n)*A105812(n)`
-/

namespace A282797.P1930622048181231940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A282801 n * A105812 n

end

end A282797.P1930622048181231940

namespace A282797

/-- `A105812(n)*A282801(n)*A105812(n)` -/
def P1930622048181231940.Spec : Prop :=
  ∀ n, P1930622048181231940.a n = A282797 n

end A282797

/-! ## A282797.P5866183655824989290

`A282798(n)*A282801(n)/A282802(n)`
-/

namespace A282797.P5866183655824989290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282798 n * A282801 n : ℚ) / (A282802 n : ℚ)

end

end A282797.P5866183655824989290

namespace A282797

/-- `A282798(n)*A282801(n)/A282802(n)` -/
def P5866183655824989290.Spec : Prop :=
  ∀ n, P5866183655824989290.a n = (A282797 n : ℚ)

end A282797

/-! ## A282797.P11789382047880310321

`A282799(n)*A282801(n)/A282803(n)`
-/

namespace A282797.P11789382047880310321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282799 n * A282801 n : ℚ) / (A282803 n : ℚ)

end

end A282797.P11789382047880310321

namespace A282797

/-- `A282799(n)*A282801(n)/A282803(n)` -/
def P11789382047880310321.Spec : Prop :=
  ∀ n, P11789382047880310321.a n = (A282797 n : ℚ)

end A282797

/-!
# A282798: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A282798, the canonical program `A282798.P10741394602884238551` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282798 has offset 0).

The definition of A282798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282798.P10741394602884238551

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282798

/-- `5*a(n-2)-4*a(n-4)` -/
def P10741394602884238551.Spec : Prop :=
  ∀ n, P10741394602884238551.a n = A282798 n

theorem P10741394602884238551.correct : P10741394602884238551.Spec := by
  intro n
  simp only [A282798]

end A282798

/-! ## A282798.P9276145248169308325

`4*a(n-2)+n%2+3` with `a(0)=1, a(1)=0`
-/

namespace A282798.P9276145248169308325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * a (n - 2) + (n % 2 + 3)

end

end A282798.P9276145248169308325

namespace A282798

/-- `4*a(n-2)+n%2+3` -/
def P9276145248169308325.Spec : Prop :=
  ∀ n, (P9276145248169308325.a n : ℤ) = A282798 n

end A282798

/-! ## A282798.P3360011844789910445

`or(4*a(n-2), a(n-2))` with `a(0)=1, a(1)=0, a(2)=7, a(3)=4`
-/

namespace A282798.P3360011844789910445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7, 4] fun n a =>
  Nat.lor (4 * a (n - 2)) (a (n - 2))

end

end A282798.P3360011844789910445

namespace A282798

/-- `or(4*a(n-2), a(n-2))` -/
def P3360011844789910445.Spec : Prop :=
  ∀ n, (P3360011844789910445.a n : ℤ) = A282798 n

end A282798

/-! ## A282798.P15194932377147294753

`xor(∑[(-2)^n]+2^n, a(n-1))` with `a(0)=1`
-/

namespace A282798.P15194932377147294753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)) (a (n - 1))

end

end A282798.P15194932377147294753

namespace A282798

/-- `xor(∑[(-2)^n]+2^n, a(n-1))` -/
def P15194932377147294753.Spec : Prop :=
  ∀ n, P15194932377147294753.a n = A282798 n

end A282798

/-! ## A282798.P9933551478300718462

`A282802(n)-char[1]`
-/

namespace A282798.P9933551478300718462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282802 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A282798.P9933551478300718462

namespace A282798

/-- `A282802(n)-char[1]` -/
def P9933551478300718462.Spec : Prop :=
  ∀ n, P9933551478300718462.a n = A282798 n

end A282798

/-! ## A282798.P11150194432042026057

`A213243(n+1)-and(1, n)`
-/

namespace A282798.P11150194432042026057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (n + 1) - (Nat.land 1 n : ℤ)

end

end A282798.P11150194432042026057

namespace A282798

/-- `A213243(n+1)-and(1, n)` -/
def P11150194432042026057.Spec : Prop :=
  ∀ n, P11150194432042026057.a n = A282798 n

end A282798

/-! ## A282798.P2916805622565325807

`A000975(n+1)+∑[(-2)^n]-1`
-/

namespace A282798.P2916805622565325807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A282798.P2916805622565325807

namespace A282798

/-- `A000975(n+1)+∑[(-2)^n]-1` -/
def P2916805622565325807.Spec : Prop :=
  ∀ n, P2916805622565325807.a n = A282798 n

end A282798

/-! ## A282798.P16947181637815239096

`∑[A001045(n+1)+(-2)^n]-1`
-/

namespace A282798.P16947181637815239096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A282798.P16947181637815239096

namespace A282798

/-- `∑[A001045(n+1)+(-2)^n]-1` -/
def P16947181637815239096.Spec : Prop :=
  ∀ n, P16947181637815239096.a n = A282798 n

end A282798

/-! ## A282798.P13304623445686170662

`A084639(n)+A077925(n)`
-/

namespace A282798.P13304623445686170662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n + A077925 n

end

end A282798.P13304623445686170662

namespace A282798

/-- `A084639(n)+A077925(n)` -/
def P13304623445686170662.Spec : Prop :=
  ∀ n, P13304623445686170662.a n = A282798 n

end A282798

/-! ## A282798.P2879517212972862305

`A000034(n)*A282799(n)`
-/

namespace A282798.P2879517212972862305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A282799 n

end

end A282798.P2879517212972862305

namespace A282798

/-- `A000034(n)*A282799(n)` -/
def P2879517212972862305.Spec : Prop :=
  ∀ n, P2879517212972862305.a n = A282798 n

end A282798

/-! ## A282798.P823546126696353004

`A060576(n)*A282802(n)`
-/

namespace A282798.P823546126696353004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A282802 n

end

end A282798.P823546126696353004

namespace A282798

/-- `A060576(n)*A282802(n)` -/
def P823546126696353004.Spec : Prop :=
  ∀ n, P823546126696353004.a n = A282798 n

end A282798

/-! ## A282798.P3603342607220262044

`A084642(n)*A282799(n)`
-/

namespace A282798.P3603342607220262044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A282799 n

end

end A282798.P3603342607220262044

namespace A282798

/-- `A084642(n)*A282799(n)` -/
def P3603342607220262044.Spec : Prop :=
  ∀ n, P3603342607220262044.a n = A282798 n

end A282798

/-! ## A282798.P11831223104693934037

`lcm(A010685(n), A282799(n))`
-/

namespace A282798.P11831223104693934037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010685 n) (A282799 n)

end

end A282798.P11831223104693934037

namespace A282798

/-- `lcm(A010685(n), A282799(n))` -/
def P11831223104693934037.Spec : Prop :=
  ∀ n, (P11831223104693934037.a n : ℤ) = A282798 n

end A282798

/-! ## A282798.P7218401180994024320

`lcm(A105812(n), A282802(n))`
-/

namespace A282798.P7218401180994024320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A282802 n)

end

end A282798.P7218401180994024320

namespace A282798

/-- `lcm(A105812(n), A282802(n))` -/
def P7218401180994024320.Spec : Prop :=
  ∀ n, (P7218401180994024320.a n : ℤ) = A282798 n

end A282798

/-! ## A282798.P10975522124568799827

`and(A282802(n), A290682(n))`
-/

namespace A282798.P10975522124568799827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282802 n) (A290682 n)

end

end A282798.P10975522124568799827

namespace A282798

/-- `and(A282802(n), A290682(n))` -/
def P10975522124568799827.Spec : Prop :=
  ∀ n, P10975522124568799827.a n = A282798 n

end A282798

/-! ## A282798.P17326095738051595904

`xor(A080924(n), A092809(n))`
-/

namespace A282798.P17326095738051595904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080924 n) (A092809 n)

end

end A282798.P17326095738051595904

namespace A282798

/-- `xor(A080924(n), A092809(n))` -/
def P17326095738051595904.Spec : Prop :=
  ∀ n, P17326095738051595904.a n = A282798 n

end A282798

/-! ## A282798.P8023307708458673908

`xor(A080610(n), A166752(n))`
-/

namespace A282798.P8023307708458673908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080610 n) (A166752 n)

end

end A282798.P8023307708458673908

namespace A282798

/-- `xor(A080610(n), A166752(n))` -/
def P8023307708458673908.Spec : Prop :=
  ∀ n, P8023307708458673908.a n = A282798 n

end A282798

/-! ## A282798.P9364851375305375933

`xor(A063524(n), A282802(n))`
-/

namespace A282798.P9364851375305375933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A282802 n)

end

end A282798.P9364851375305375933

namespace A282798

/-- `xor(A063524(n), A282802(n))` -/
def P9364851375305375933.Spec : Prop :=
  ∀ n, P9364851375305375933.a n = A282798 n

end A282798

/-! ## A282798.P15710862337597476840

`xor(A131588(n), A270797(n))`
-/

namespace A282798.P15710862337597476840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131588 n) (A270797 n)

end

end A282798.P15710862337597476840

namespace A282798

/-- `xor(A131588(n), A270797(n))` -/
def P15710862337597476840.Spec : Prop :=
  ∀ n, P15710862337597476840.a n = A282798 n

end A282798

/-!
# A282799: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A282799, the canonical program `A282799.P427173283503624533` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282799 has offset 0).

The definition of A282799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282799.P427173283503624533

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A282799

/-- `5*a(n-2)-4*a(n-4)` -/
def P427173283503624533.Spec : Prop :=
  ∀ n, P427173283503624533.a n = A282799 n

theorem P427173283503624533.correct : P427173283503624533.Spec := by
  intro n
  simp only [A282799]

end A282799

/-! ## A282799.P5253066543160048517

`gcd(2, n)+4*a(n-2)+1` with `a(0)=1, a(1)=0`
-/

namespace A282799.P5253066543160048517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.gcd 2 n + (4 * a (n - 2) + 1)

end

end A282799.P5253066543160048517

namespace A282799

/-- `gcd(2, n)+4*a(n-2)+1` -/
def P5253066543160048517.Spec : Prop :=
  ∀ n, (P5253066543160048517.a n : ℤ) = A282799 n

end A282799

/-! ## A282799.P2647215382940627897

`4*a(n-2)+3-n%2` with `a(0)=1, a(1)=0`
-/

namespace A282799.P2647215382940627897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * a (n - 2) + (3 - ((n % 2 : ℕ) : ℤ))

end

end A282799.P2647215382940627897

namespace A282799

/-- `4*a(n-2)+3-n%2` -/
def P2647215382940627897.Spec : Prop :=
  ∀ n, P2647215382940627897.a n = A282799 n

end A282799

/-! ## A282799.P7100846497730410983

`or(4*a(n-2), a(n-2))` with `a(0)=1, a(1)=0, a(2)=7, a(3)=2`
-/

namespace A282799.P7100846497730410983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7, 2] fun n a =>
  Nat.lor (4 * a (n - 2)) (a (n - 2))

end

end A282799.P7100846497730410983

namespace A282799

/-- `or(4*a(n-2), a(n-2))` -/
def P7100846497730410983.Spec : Prop :=
  ∀ n, (P7100846497730410983.a n : ℤ) = A282799 n

end A282799

/-! ## A282799.P15869767224520621232

`A084184(xor(1, n))`
-/

namespace A282799.P15869767224520621232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 (Nat.xor 1 n)

end

end A282799.P15869767224520621232

namespace A282799

/-- `A084184(xor(1, n))` -/
def P15869767224520621232.Spec : Prop :=
  ∀ n, P15869767224520621232.a n = A282799 n

end A282799

/-! ## A282799.P82453370726025734

`A084184(A004442(n))`
-/

namespace A282799.P82453370726025734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 (A004442 n).toNat

end

end A282799.P82453370726025734

namespace A282799

/-- `A084184(A004442(n))` -/
def P82453370726025734.Spec : Prop :=
  ∀ n, P82453370726025734.a n = A282799 n

end A282799

/-! ## A282799.P2871474154445937017

`A060576(n)*A282803(n)`
-/

namespace A282799.P2871474154445937017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A282803 n

end

end A282799.P2871474154445937017

namespace A282799

/-- `A060576(n)*A282803(n)` -/
def P2871474154445937017.Spec : Prop :=
  ∀ n, P2871474154445937017.a n = A282799 n

end A282799

/-! ## A282799.P4642491483779750321

`A282798(n)/A000034(n)`
-/

namespace A282799.P4642491483779750321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282798 n : ℚ) / (A000034 n : ℚ)

end

end A282799.P4642491483779750321

namespace A282799

/-- `A282798(n)/A000034(n)` -/
def P4642491483779750321.Spec : Prop :=
  ∀ n, P4642491483779750321.a n = (A282799 n : ℚ)

end A282799

/-! ## A282799.P9748334065627921501

`A282798(n)/A084642(n)`
-/

namespace A282799.P9748334065627921501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282798 n : ℚ) / (A084642 n : ℚ)

end

end A282799.P9748334065627921501

namespace A282799

/-- `A282798(n)/A084642(n)` -/
def P9748334065627921501.Spec : Prop :=
  ∀ n, P9748334065627921501.a n = (A282799 n : ℚ)

end A282799

/-! ## A282799.P8379389784931646204

`lcm(A105812(n), A282803(n))`
-/

namespace A282799.P8379389784931646204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 n) (A282803 n)

end

end A282799.P8379389784931646204

namespace A282799

/-- `lcm(A105812(n), A282803(n))` -/
def P8379389784931646204.Spec : Prop :=
  ∀ n, (P8379389784931646204.a n : ℤ) = A282799 n

end A282799

/-! ## A282799.P2471716481907075177

`and(A260196(n), A282803(n))`
-/

namespace A282799.P2471716481907075177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A282803 n)

end

end A282799.P2471716481907075177

namespace A282799

/-- `and(A260196(n), A282803(n))` -/
def P2471716481907075177.Spec : Prop :=
  ∀ n, P2471716481907075177.a n = A282799 n

end A282799

/-! ## A282799.P12704345569268246728

`and(A282803(n), A290683(n))`
-/

namespace A282799.P12704345569268246728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282803 n) (A290683 n)

end

end A282799.P12704345569268246728

namespace A282799

/-- `and(A282803(n), A290683(n))` -/
def P12704345569268246728.Spec : Prop :=
  ∀ n, P12704345569268246728.a n = A282799 n

end A282799

/-! ## A282799.P17045923232383653782

`xor(A000225(n), A092809(n))`
-/

namespace A282799.P17045923232383653782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A092809 n)

end

end A282799.P17045923232383653782

namespace A282799

/-- `xor(A000225(n), A092809(n))` -/
def P17045923232383653782.Spec : Prop :=
  ∀ n, P17045923232383653782.a n = A282799 n

end A282799

/-! ## A282799.P6400530990423852590

`xor(A080610(n), A131588(n))`
-/

namespace A282799.P6400530990423852590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080610 n) (A131588 n)

end

end A282799.P6400530990423852590

namespace A282799

/-- `xor(A080610(n), A131588(n))` -/
def P6400530990423852590.Spec : Prop :=
  ∀ n, P6400530990423852590.a n = A282799 n

end A282799

/-! ## A282799.P9757885280541128799

`xor(A166752(n), A270797(n))`
-/

namespace A282799.P9757885280541128799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166752 n) (A270797 n)

end

end A282799.P9757885280541128799

namespace A282799

/-- `xor(A166752(n), A270797(n))` -/
def P9757885280541128799.Spec : Prop :=
  ∀ n, P9757885280541128799.a n = A282799 n

end A282799

/-! ## A282799.P6935372840544916343

`floor(A282802(n)/A000034(n))`
-/

namespace A282799.P6935372840544916343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282802 n : ℚ) / (A000034 n : ℚ)⌋

end

end A282799.P6935372840544916343

namespace A282799

/-- `floor(A282802(n)/A000034(n))` -/
def P6935372840544916343.Spec : Prop :=
  ∀ n, P6935372840544916343.a n = A282799 n

end A282799

/-! ## A282799.P9747250298820019747

`A303611(n+2)-A092809(n)`
-/

namespace A282799.P9747250298820019747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303611 (n + 2) - A092809 n

end

end A282799.P9747250298820019747

namespace A282799

/-- `A303611(n+2)-A092809(n)` -/
def P9747250298820019747.Spec : Prop :=
  ∀ n, P9747250298820019747.a n = A282799 n

end A282799

/-! ## A282799.P15265262156544975121

`A282798(n)/(A000035(n)+1)`
-/

namespace A282799.P15265262156544975121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282798 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A282799.P15265262156544975121

namespace A282799

/-- `A282798(n)/(A000035(n)+1)` -/
def P15265262156544975121.Spec : Prop :=
  ∀ n, P15265262156544975121.a n = (A282799 n : ℚ)

end A282799

/-! ## A282799.P1611834819979635120

`A282798(n)/gcd(2, A282413(n))`
-/

namespace A282799.P1611834819979635120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282798 n : ℚ) / (Int.gcd 2 (A282413 n) : ℚ)

end

end A282799.P1611834819979635120

namespace A282799

/-- `A282798(n)/gcd(2, A282413(n))` -/
def P1611834819979635120.Spec : Prop :=
  ∀ n, P1611834819979635120.a n = (A282799 n : ℚ)

end A282799

