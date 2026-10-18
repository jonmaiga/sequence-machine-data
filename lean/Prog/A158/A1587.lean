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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A158700: a(n) = Hermite(n, 18).

The programs for A158700, the canonical program `A158700.P2905522429552128078` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158700 has offset 0).

The definition of A158700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158700.P2905522429552128078

`36*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158700

/-- `36*a(n-1)-2*(n-1)*a(n-2)` -/
def P2905522429552128078.Spec : Prop :=
  ∀ n, P2905522429552128078.a n = A158700 n

theorem P2905522429552128078.correct : P2905522429552128078.Spec := by
  intro n
  simp only [A158700]

end A158700

/-!
# A158701: Numerator of Bernoulli(n, -3/8).

The programs for A158701, there is no canonical definition to state claims against.
-/

/-! ## A158701.P17332565238452340347

`2*A157860(n)-A158653(n)`
-/

namespace A158701.P17332565238452340347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157860 n - A158653 n

end

end A158701.P17332565238452340347

/-!
# A158702: a(n) = Hermite(n, 19).

The programs for A158702, the canonical program `A158702.P14491890139412101558` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158702 has offset 0).

The definition of A158702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158702.P14491890139412101558

`38*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=38`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158702

/-- `38*a(n-1)-2*(n-1)*a(n-2)` -/
def P14491890139412101558.Spec : Prop :=
  ∀ n, P14491890139412101558.a n = A158702 n

theorem P14491890139412101558.correct : P14491890139412101558.Spec := by
  intro n
  simp only [A158702]

end A158702

/-!
# A158703: a(n) = Hermite(n, 20).

The programs for A158703, the canonical program `A158703.P2620204553124392266` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158703 has offset 0).

The definition of A158703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158703.P2620204553124392266

`40*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=40`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158703

/-- `40*a(n-1)-2*(n-1)*a(n-2)` -/
def P2620204553124392266.Spec : Prop :=
  ∀ n, P2620204553124392266.a n = A158703 n

theorem P2620204553124392266.correct : P2620204553124392266.Spec := by
  intro n
  simp only [A158703]

end A158703

/-!
# A158704: Nonnegative integers with an even number of even powers of 2 in their base-2 representation.

The programs for A158704, the canonical program `A158704.P8377484027598413852` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158704 has offset 1).

The definition of A158704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158704.P5011187194807004905

`comp[xor(or(1, n), floor(n/4))]`
-/

namespace A158704.P5011187194807004905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lor 1 n : ℤ) ⌊(n : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158704.P5011187194807004905

namespace A158704

/-- `comp[xor(or(1, n), floor(n/4))]` -/
def P5011187194807004905.Spec : Prop :=
  ∀ n, (P5011187194807004905.a n : ℤ) = A158704 (n + 1)

end A158704

/-! ## A158704.P9276294879046445130

`xor(1, comp[xor(2*n, floor(n/2))])`
-/

namespace A158704.P9276294879046445130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A158704.P9276294879046445130

namespace A158704

/-- `xor(1, comp[xor(2*n, floor(n/2))])` -/
def P9276294879046445130.Spec : Prop :=
  ∀ n, (P9276294879046445130.a n : ℤ) = A158704 (n + 1)

end A158704

/-! ## A158704.P3251872168758502526

`comp[xor(n, floor(n/4))^(n%2)]`
-/

namespace A158704.P3251872168758502526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋ ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158704.P3251872168758502526

namespace A158704

/-- `comp[xor(n, floor(n/4))^(n%2)]` -/
def P3251872168758502526.Spec : Prop :=
  ∀ n, (P3251872168758502526.a n : ℤ) = A158704 (n + 1)

end A158704

/-! ## A158704.P8377484027598413852

`eq[0, (a(floor(n/4))+n)%2]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158704

/-- `eq[0, (a(floor(n/4))+n)%2]` -/
def P8377484027598413852.Spec : Prop :=
  ∀ n, (P8377484027598413852.a n : ℤ) = A158704 (n + 1)

theorem P8377484027598413852.correct : P8377484027598413852.Spec := by
  intro n
  simp only [A158704, Nat.add_sub_cancel]

end A158704

/-! ## A158704.P4981562793263928021

`and(1, a(n-1)+val(2*n, 4))+2*n` with `a(0)=0`
-/

namespace A158704.P4981562793263928021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (a (n - 1) + SequenceMachineLib.valuation (2 * n) 4) + 2 * n

end

end A158704.P4981562793263928021

namespace A158704

/-- `and(1, a(n-1)+val(2*n, 4))+2*n` -/
def P4981562793263928021.Spec : Prop :=
  ∀ n, (P4981562793263928021.a n : ℤ) = A158704 (n + 1)

end A158704

/-! ## A158704.P1572421173508979239

`comp[A158705(n+1)]`
-/

namespace A158704.P1572421173508979239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158704.P1572421173508979239

namespace A158704

/-- `comp[A158705(n+1)]` -/
def P1572421173508979239.Spec : Prop :=
  ∀ n, (P1572421173508979239.a n : ℤ) = A158704 (n + 1)

end A158704

/-! ## A158704.P1800515718876580669

`A269723(n)+2*n`
-/

namespace A158704.P1800515718876580669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 n + (2 * n : ℤ)

end

end A158704.P1800515718876580669

namespace A158704

/-- `A269723(n)+2*n` -/
def P1800515718876580669.Spec : Prop :=
  ∀ n, P1800515718876580669.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P16295167506880753828

`eq[1, (1-A287576(n+1))²]`
-/

namespace A158704.P16295167506880753828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A287576 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158704.P16295167506880753828

namespace A158704

/-- `eq[1, (1-A287576(n+1))²]` -/
def P16295167506880753828.Spec : Prop :=
  ∀ n, (P16295167506880753828.a n : ℤ) = A158704 (n + 1)

end A158704

/-! ## A158704.P11897175810150172845

`xor(A005843(n), A269723(n))`
-/

namespace A158704.P11897175810150172845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 n) (A269723 n)

end

end A158704.P11897175810150172845

namespace A158704

/-- `xor(A005843(n), A269723(n))` -/
def P11897175810150172845.Spec : Prop :=
  ∀ n, P11897175810150172845.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P12799271071334165879

`A016813(n)-A158705(n+1)`
-/

namespace A158704.P12799271071334165879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A158705 (n + 1)

end

end A158704.P12799271071334165879

namespace A158704

/-- `A016813(n)-A158705(n+1)` -/
def P12799271071334165879.Spec : Prop :=
  ∀ n, P12799271071334165879.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P907434950128583985

`A010060(A048647(n))+2*n`
-/

namespace A158704.P907434950128583985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A048647 n).toNat + (2 * n : ℤ)

end

end A158704.P907434950128583985

namespace A158704

/-- `A010060(A048647(n))+2*n` -/
def P907434950128583985.Spec : Prop :=
  ∀ n, P907434950128583985.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P16738776070998350023

`A000035(A073642(n))+2*n`
-/

namespace A158704.P16738776070998350023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A073642 n).toNat + (2 * n : ℤ)

end

end A158704.P16738776070998350023

namespace A158704

/-- `A000035(A073642(n))+2*n` -/
def P16738776070998350023.Spec : Prop :=
  ∀ n, P16738776070998350023.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P16251123093241511745

`A010060(A063695(n))+2*n`
-/

namespace A158704.P16251123093241511745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A063695 n).toNat + (2 * n : ℤ)

end

end A158704.P16251123093241511745

namespace A158704

/-- `A010060(A063695(n))+2*n` -/
def P16251123093241511745.Spec : Prop :=
  ∀ n, P16251123093241511745.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P14016978818156518566

`A002943(n)/A158705(n+1)`
-/

namespace A158704.P14016978818156518566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A158705 (n + 1) : ℚ)

end

end A158704.P14016978818156518566

namespace A158704

/-- `A002943(n)/A158705(n+1)` -/
def P14016978818156518566.Spec : Prop :=
  ∀ n, P14016978818156518566.a n = (A158704 (n + 1) : ℚ)

end A158704

/-! ## A158704.P9537380005272078505

`A010060(A292600(n))+2*n`
-/

namespace A158704.P9537380005272078505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A292600 n).toNat + (2 * n : ℤ)

end

end A158704.P9537380005272078505

namespace A158704

/-- `A010060(A292600(n))+2*n` -/
def P9537380005272078505.Spec : Prop :=
  ∀ n, P9537380005272078505.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P6294889389381546808

`A010060(A300839(n))+2*n`
-/

namespace A158704.P6294889389381546808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A300839 n).toNat + (2 * n : ℤ)

end

end A158704.P6294889389381546808

namespace A158704

/-- `A010060(A300839(n))+2*n` -/
def P6294889389381546808.Spec : Prop :=
  ∀ n, P6294889389381546808.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P10426923789075218265

`A021913(A323908(n))+2*n`
-/

namespace A158704.P10426923789075218265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A323908 n).toNat + (2 * n : ℤ)

end

end A158704.P10426923789075218265

namespace A158704

/-- `A021913(A323908(n))+2*n` -/
def P10426923789075218265.Spec : Prop :=
  ∀ n, P10426923789075218265.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P5412839712568403947

`A005843(n)+and(1, A073642(n))`
-/

namespace A158704.P5412839712568403947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + Int.land 1 (A073642 n)

end

end A158704.P5412839712568403947

namespace A158704

/-- `A005843(n)+and(1, A073642(n))` -/
def P5412839712568403947.Spec : Prop :=
  ∀ n, P5412839712568403947.a n = A158704 (n + 1)

end A158704

/-! ## A158704.P5925736843073002221

`xor(A001969(n+1), A341389(n))`
-/

namespace A158704.P5925736843073002221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001969 (n + 1)) (A341389 n)

end

end A158704.P5925736843073002221

namespace A158704

/-- `xor(A001969(n+1), A341389(n))` -/
def P5925736843073002221.Spec : Prop :=
  ∀ n, P5925736843073002221.a n = A158704 (n + 1)

end A158704

/-!
# A158705: Nonnegative integers with an odd number of even powers of 2 in their base-2 representation.

The programs for A158705, the canonical program `A158705.P9554465480032534023` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158705 has offset 1).

The definition of A158705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158705.P15449853618396270200

`comp[xor(2*n, floor(n/2))]`
-/

namespace A158705.P15449853618396270200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158705.P15449853618396270200

namespace A158705

/-- `comp[xor(2*n, floor(n/2))]` -/
def P15449853618396270200.Spec : Prop :=
  ∀ n, (P15449853618396270200.a n : ℤ) = A158705 (n + 1)

end A158705

/-! ## A158705.P9554465480032534023

`eq[1, (a(floor(n/4))+n)%2]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158705

/-- `eq[1, (a(floor(n/4))+n)%2]` -/
def P9554465480032534023.Spec : Prop :=
  ∀ n, (P9554465480032534023.a n : ℤ) = A158705 (n + 1)

theorem P9554465480032534023.correct : P9554465480032534023.Spec := by
  intro n
  simp only [A158705, Nat.add_sub_cancel]

end A158705

/-! ## A158705.P11363151311314303574

`comp[A158704(n+1)]`
-/

namespace A158705.P11363151311314303574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158705.P11363151311314303574

namespace A158705

/-- `comp[A158704(n+1)]` -/
def P11363151311314303574.Spec : Prop :=
  ∀ n, (P11363151311314303574.a n : ℤ) = A158705 (n + 1)

end A158705

/-! ## A158705.P16041677149434820129

`Δ[n²]-A269723(n)`
-/

namespace A158705.P16041677149434820129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A269723 n

end

end A158705.P16041677149434820129

namespace A158705

/-- `Δ[n²]-A269723(n)` -/
def P16041677149434820129.Spec : Prop :=
  ∀ n, P16041677149434820129.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P3049787181209953914

`eq[1, (2-A287576(n+1))²]`
-/

namespace A158705.P3049787181209953914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A287576 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158705.P3049787181209953914

namespace A158705

/-- `eq[1, (2-A287576(n+1))²]` -/
def P3049787181209953914.Spec : Prop :=
  ∀ n, (P3049787181209953914.a n : ℤ) = A158705 (n + 1)

end A158705

/-! ## A158705.P11846758572132037712

`comp[A003188(A003188(2*n))]`
-/

namespace A158705.P11846758572132037712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A158705.P11846758572132037712

namespace A158705

/-- `comp[A003188(A003188(2*n))]` -/
def P11846758572132037712.Spec : Prop :=
  ∀ n, (P11846758572132037712.a n : ℤ) = A158705 (n + 1)

end A158705

/-! ## A158705.P15354835840797908534

`A268680(A268678(2*n)+1)`
-/

namespace A158705.P15354835840797908534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268680 (A268678 (2 * n) + 1).toNat

end

end A158705.P15354835840797908534

namespace A158705

/-- `A268680(A268678(2*n)+1)` -/
def P15354835840797908534.Spec : Prop :=
  ∀ n, P15354835840797908534.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P4805349918855370323

`A016813(n)-A158704(n+1)`
-/

namespace A158705.P4805349918855370323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A158704 (n + 1)

end

end A158705.P4805349918855370323

namespace A158705

/-- `A016813(n)-A158704(n+1)` -/
def P4805349918855370323.Spec : Prop :=
  ∀ n, P4805349918855370323.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P8446020558930130030

`A005843(n)+1-A269723(n)`
-/

namespace A158705.P8446020558930130030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A269723 n)

end

end A158705.P8446020558930130030

namespace A158705

/-- `A005843(n)+1-A269723(n)` -/
def P8446020558930130030.Spec : Prop :=
  ∀ n, P8446020558930130030.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P1008065677261271171

`A112539(A008619(n))+2*n`
-/

namespace A158705.P1008065677261271171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112539 (A008619 n).toNat + (2 * n : ℤ)

end

end A158705.P1008065677261271171

namespace A158705

/-- `A112539(A008619(n))+2*n` -/
def P1008065677261271171.Spec : Prop :=
  ∀ n, P1008065677261271171.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P5718644708954825263

`A010059(A292600(n))+2*n`
-/

namespace A158705.P5718644708954825263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A292600 n).toNat + (2 * n : ℤ)

end

end A158705.P5718644708954825263

namespace A158705

/-- `A010059(A292600(n))+2*n` -/
def P5718644708954825263.Spec : Prop :=
  ∀ n, P5718644708954825263.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P10866279149882890033

`xor(A000069(n+1), A341389(n))`
-/

namespace A158705.P10866279149882890033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000069 (n + 1)) (A341389 n)

end

end A158705.P10866279149882890033

namespace A158705

/-- `xor(A000069(n+1), A341389(n))` -/
def P10866279149882890033.Spec : Prop :=
  ∀ n, P10866279149882890033.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P16763635474569295749

`xor(A395958(n), A395960(n+1))`
-/

namespace A158705.P16763635474569295749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395958 n) (A395960 (n + 1))

end

end A158705.P16763635474569295749

namespace A158705

/-- `xor(A395958(n), A395960(n+1))` -/
def P16763635474569295749.Spec : Prop :=
  ∀ n, P16763635474569295749.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P13979616505620779551

`2*n+1-A000035(A073642(n))`
-/

namespace A158705.P13979616505620779551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000035 (A073642 n).toNat

end

end A158705.P13979616505620779551

namespace A158705

/-- `2*n+1-A000035(A073642(n))` -/
def P13979616505620779551.Spec : Prop :=
  ∀ n, P13979616505620779551.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P668851402497731967

`xor(1-A341389(n), A001969(n+1))`
-/

namespace A158705.P668851402497731967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - A341389 n) (A001969 (n + 1))

end

end A158705.P668851402497731967

namespace A158705

/-- `xor(1-A341389(n), A001969(n+1))` -/
def P668851402497731967.Spec : Prop :=
  ∀ n, P668851402497731967.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P968770205368057862

`A005843(n)+and(1, A035327(A073642(n)))`
-/

namespace A158705.P968770205368057862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + Int.land 1 (A035327 (A073642 n).toNat)

end

end A158705.P968770205368057862

namespace A158705

/-- `A005843(n)+and(1, A035327(A073642(n)))` -/
def P968770205368057862.Spec : Prop :=
  ∀ n, P968770205368057862.a n = A158705 (n + 1)

end A158705

/-! ## A158705.P5450872911409497865

`A000069(n+1)+A010060(n)-A269723(n)`
-/

namespace A158705.P5450872911409497865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A010060 n - A269723 n)

end

end A158705.P5450872911409497865

namespace A158705

/-- `A000069(n+1)+A010060(n)-A269723(n)` -/
def P5450872911409497865.Spec : Prop :=
  ∀ n, P5450872911409497865.a n = A158705 (n + 1)

end A158705

/-!
# A158706: Expansion of e.g.f.: exp(t*x)/(1 - x/t - t^2 * x^2).

The programs for A158706, there is no canonical definition to state claims against.
-/

/-! ## A158706.P17412458421378685077

`A158777(n)*A228925(A228945(n+1))`
-/

namespace A158706.P17412458421378685077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158777 n * A228925 (A228945 (n + 1)).toNat

end

end A158706.P17412458421378685077

/-! ## A158706.P295843372628880339

`lcm(A158777(n), A214340(A237980(n+1)))`
-/

namespace A158706.P295843372628880339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158777 n) (A214340 (A237980 (n + 1)).toNat)

end

end A158706.P295843372628880339

/-! ## A158706.P1023126181066645628

`lcm(A077479(A235607(n)), A158777(n))`
-/

namespace A158706.P1023126181066645628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077479 (A235607 n).toNat) (A158777 n)

end

end A158706.P1023126181066645628

/-! ## A158706.P12263806591819097332

`or(A158777(n), A230403(A288062(n)))`
-/

namespace A158706.P12263806591819097332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A158777 n) (A230403 (A288062 n).toNat)

end

end A158706.P12263806591819097332

/-! ## A158706.P7501100923932449311

`lcm(A138108(n+1), A262681(A130802(n+1)))`
-/

namespace A158706.P7501100923932449311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138108 (n + 1)) (A262681 (A130802 (n + 1)).toNat)

end

end A158706.P7501100923932449311

/-!
# A158708: Primes p such that p + floor(p/2) is prime.

The programs for A158708, the canonical program `A158708.P11182512673760747716` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158708 has offset 1).

The definition of A158708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158708.P11182512673760747716

`p?[A229990(n+1)+1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158708

/-- `p?[A229990(n+1)+1]` -/
def P11182512673760747716.Spec : Prop :=
  ∀ n, P11182512673760747716.a n = A158708 (n + 1)

theorem P11182512673760747716.correct : P11182512673760747716.Spec := by
  intro n
  simp only [A158708, Nat.add_sub_cancel]

end A158708

/-! ## A158708.P3586670505078648973

`p?[A296058(n+1)]`
-/

namespace A158708.P3586670505078648973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158708.P3586670505078648973

namespace A158708

/-- `p?[A296058(n+1)]` -/
def P3586670505078648973.Spec : Prop :=
  ∀ n, P3586670505078648973.a n = A158708 (n + 1)

end A158708

/-! ## A158708.P16628569073424519923

`record[A006530(A296058(n+2))]`
-/

namespace A158708.P16628569073424519923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A296058 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158708.P16628569073424519923

namespace A158708

/-- `record[A006530(A296058(n+2))]` -/
def P16628569073424519923.Spec : Prop :=
  ∀ n, P16628569073424519923.a n = A158708 (n + 1)

end A158708

/-! ## A158708.P5860452046103045590

`filter[A296058(n+1), A010051(#)]`
-/

namespace A158708.P5860452046103045590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158708.P5860452046103045590

namespace A158708

/-- `filter[A296058(n+1), A010051(#)]` -/
def P5860452046103045590.Spec : Prop :=
  ∀ n, P5860452046103045590.a n = A158708 (n + 1)

end A158708

/-! ## A158708.P12308722164503405787

`filter[A296058(n+1), A380467(#)]`
-/

namespace A158708.P12308722164503405787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A158708.P12308722164503405787

namespace A158708

/-- `filter[A296058(n+1), A380467(#)]` -/
def P12308722164503405787.Spec : Prop :=
  ∀ n, P12308722164503405787.a n = A158708 (n + 1)

end A158708

/-! ## A158708.P13574363483881986733

`∩[A000040(n+1), A296058(n+1)]`
-/

namespace A158708.P13574363483881986733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P13574363483881986733

namespace A158708

/-- `∩[A000040(n+1), A296058(n+1)]` -/
def P13574363483881986733.Spec : Prop :=
  ∀ n, (P13574363483881986733.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P5963663771924859995

`∩[A002313(n+1), A296058(n+1)]`
-/

namespace A158708.P5963663771924859995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P5963663771924859995

namespace A158708

/-- `∩[A002313(n+1), A296058(n+1)]` -/
def P5963663771924859995.Spec : Prop :=
  ∀ n, (P5963663771924859995.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P17519847020967507878

`∩[A008578(n+1), A296058(n+1)]`
-/

namespace A158708.P17519847020967507878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P17519847020967507878

namespace A158708

/-- `∩[A008578(n+1), A296058(n+1)]` -/
def P17519847020967507878.Spec : Prop :=
  ∀ n, (P17519847020967507878.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P14763570966747096299

`∩[A042998(n+1), A296058(n+1)]`
-/

namespace A158708.P14763570966747096299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P14763570966747096299

namespace A158708

/-- `∩[A042998(n+1), A296058(n+1)]` -/
def P14763570966747096299.Spec : Prop :=
  ∀ n, (P14763570966747096299.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P10817216245149243474

`∩[A045344(n+1), A296058(n+1)]`
-/

namespace A158708.P10817216245149243474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P10817216245149243474

namespace A158708

/-- `∩[A045344(n+1), A296058(n+1)]` -/
def P10817216245149243474.Spec : Prop :=
  ∀ n, (P10817216245149243474.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P18272785067635842066

`∩[A045352(n+1), A296058(n+1)]`
-/

namespace A158708.P18272785067635842066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P18272785067635842066

namespace A158708

/-- `∩[A045352(n+1), A296058(n+1)]` -/
def P18272785067635842066.Spec : Prop :=
  ∀ n, (P18272785067635842066.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P15138209453151600797

`∩[A109515(n+1), A296058(n+1)]`
-/

namespace A158708.P15138209453151600797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P15138209453151600797

namespace A158708

/-- `∩[A109515(n+1), A296058(n+1)]` -/
def P15138209453151600797.Spec : Prop :=
  ∀ n, (P15138209453151600797.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P1121576149053790313

`∩[A116974(n+1), A296058(n+1)]`
-/

namespace A158708.P1121576149053790313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P1121576149053790313

namespace A158708

/-- `∩[A116974(n+1), A296058(n+1)]` -/
def P1121576149053790313.Spec : Prop :=
  ∀ n, (P1121576149053790313.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P13165861881448588052

`∩[A138837(n+1), A296058(n+1)]`
-/

namespace A158708.P13165861881448588052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P13165861881448588052

namespace A158708

/-- `∩[A138837(n+1), A296058(n+1)]` -/
def P13165861881448588052.Spec : Prop :=
  ∀ n, (P13165861881448588052.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P2113591723888921614

`∩[A158611(n+1), A296058(n+1)]`
-/

namespace A158708.P2113591723888921614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P2113591723888921614

namespace A158708

/-- `∩[A158611(n+1), A296058(n+1)]` -/
def P2113591723888921614.Spec : Prop :=
  ∀ n, (P2113591723888921614.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P288435584421191338

`∩[A182986(n+1), A296058(n+1)]`
-/

namespace A158708.P288435584421191338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P288435584421191338

namespace A158708

/-- `∩[A182986(n+1), A296058(n+1)]` -/
def P288435584421191338.Spec : Prop :=
  ∀ n, (P288435584421191338.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P4411946991352554315

`∩[A235050(n+1), A296058(n+1)]`
-/

namespace A158708.P4411946991352554315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P4411946991352554315

namespace A158708

/-- `∩[A235050(n+1), A296058(n+1)]` -/
def P4411946991352554315.Spec : Prop :=
  ∀ n, (P4411946991352554315.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P2098277536078604067

`∩[A270617(n+1), A296058(n+1)]`
-/

namespace A158708.P2098277536078604067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158708.P2098277536078604067

namespace A158708

/-- `∩[A270617(n+1), A296058(n+1)]` -/
def P2098277536078604067.Spec : Prop :=
  ∀ n, (P2098277536078604067.a n : ℤ) = A158708 (n + 1)

end A158708

/-! ## A158708.P9522634134116046608

`p?[A283419(n+1)]`
-/

namespace A158708.P9522634134116046608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158708.P9522634134116046608

namespace A158708

/-- `p?[A283419(n+1)]` -/
def P9522634134116046608.Spec : Prop :=
  ∀ n, P9522634134116046608.a n = A158708 (n + 1)

end A158708

/-!
# A158709: Primes p such that p + ceiling(p/2) is prime.

The programs for A158709, the canonical program `A158709.P9586412307712416437` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158709 has offset 1).

The definition of A158709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158709.P9586412307712416437

`p?[floor(A001749(n+1)/6)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158709

/-- `p?[floor(A001749(n+1)/6)]` -/
def P9586412307712416437.Spec : Prop :=
  ∀ n, P9586412307712416437.a n = A158709 (n + 1)

theorem P9586412307712416437.correct : P9586412307712416437.Spec := by
  intro n
  simp only [A158709, Nat.add_sub_cancel]

end A158709

/-! ## A158709.P160003400594045753

`p?[floor(A100484(n+1)/3)]`
-/

namespace A158709.P160003400594045753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100484 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158709.P160003400594045753

namespace A158709

/-- `p?[floor(A100484(n+1)/3)]` -/
def P160003400594045753.Spec : Prop :=
  ∀ n, P160003400594045753.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P5131631103813548877

`p?[floor(2/3*A000040(n+1))]`
-/

namespace A158709.P5131631103813548877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (A000040 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158709.P5131631103813548877

namespace A158709

/-- `p?[floor(2/3*A000040(n+1))]` -/
def P5131631103813548877.Spec : Prop :=
  ∀ n, P5131631103813548877.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P860869839203560536

`p?[ceil(2*A006093(n+2)/3)]`
-/

namespace A158709.P860869839203560536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A006093 (n + 2) : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158709.P860869839203560536

namespace A158709

/-- `p?[ceil(2*A006093(n+2)/3)]` -/
def P860869839203560536.Spec : Prop :=
  ∀ n, P860869839203560536.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P13523882533825375309

`record[A006530(A020639(3*n+2)+n)]`
-/

namespace A158709.P13523882533825375309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020639 (3 * n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158709.P13523882533825375309

namespace A158709

/-- `record[A006530(A020639(3*n+2)+n)]` -/
def P13523882533825375309.Spec : Prop :=
  ∀ n, P13523882533825375309.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P10224838090227847515

`p?[A335031(n+1)]`
-/

namespace A158709.P10224838090227847515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158709.P10224838090227847515

namespace A158709

/-- `p?[A335031(n+1)]` -/
def P10224838090227847515.Spec : Prop :=
  ∀ n, P10224838090227847515.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P5584224089852167853

`filter[A335031(n+1), A010051(#)]`
-/

namespace A158709.P5584224089852167853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158709.P5584224089852167853

namespace A158709

/-- `filter[A335031(n+1), A010051(#)]` -/
def P5584224089852167853.Spec : Prop :=
  ∀ n, P5584224089852167853.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P7875918944522536079

`filter[A335031(n+1), A353499(#)]`
-/

namespace A158709.P7875918944522536079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A158709.P7875918944522536079

namespace A158709

/-- `filter[A335031(n+1), A353499(#)]` -/
def P7875918944522536079.Spec : Prop :=
  ∀ n, P7875918944522536079.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P17619603191519715616

`∩[A000040(n+1), A335031(n+1)]`
-/

namespace A158709.P17619603191519715616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P17619603191519715616

namespace A158709

/-- `∩[A000040(n+1), A335031(n+1)]` -/
def P17619603191519715616.Spec : Prop :=
  ∀ n, (P17619603191519715616.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P1592950663433947008

`∩[A040116(n+1), A335031(n+1)]`
-/

namespace A158709.P1592950663433947008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P1592950663433947008

namespace A158709

/-- `∩[A040116(n+1), A335031(n+1)]` -/
def P1592950663433947008.Spec : Prop :=
  ∀ n, (P1592950663433947008.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P10938205370459743190

`∩[A042987(n+1), A335031(n+1)]`
-/

namespace A158709.P10938205370459743190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P10938205370459743190

namespace A158709

/-- `∩[A042987(n+1), A335031(n+1)]` -/
def P10938205370459743190.Spec : Prop :=
  ∀ n, (P10938205370459743190.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P16679306120933745816

`∩[A045319(n+1), A335031(n+1)]`
-/

namespace A158709.P16679306120933745816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P16679306120933745816

namespace A158709

/-- `∩[A045319(n+1), A335031(n+1)]` -/
def P16679306120933745816.Spec : Prop :=
  ∀ n, (P16679306120933745816.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P2201185581396340685

`∩[A045323(n+1), A335031(n+1)]`
-/

namespace A158709.P2201185581396340685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P2201185581396340685

namespace A158709

/-- `∩[A045323(n+1), A335031(n+1)]` -/
def P2201185581396340685.Spec : Prop :=
  ∀ n, (P2201185581396340685.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P12766084480324275795

`∩[A045326(n+1), A335031(n+1)]`
-/

namespace A158709.P12766084480324275795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P12766084480324275795

namespace A158709

/-- `∩[A045326(n+1), A335031(n+1)]` -/
def P12766084480324275795.Spec : Prop :=
  ∀ n, (P12766084480324275795.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P7999000016096463317

`∩[A132630(n+1), A335031(n+1)]`
-/

namespace A158709.P7999000016096463317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P7999000016096463317

namespace A158709

/-- `∩[A132630(n+1), A335031(n+1)]` -/
def P7999000016096463317.Spec : Prop :=
  ∀ n, (P7999000016096463317.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P7693369328658127917

`∩[A140409(n+1), A335031(n+1)]`
-/

namespace A158709.P7693369328658127917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P7693369328658127917

namespace A158709

/-- `∩[A140409(n+1), A335031(n+1)]` -/
def P7693369328658127917.Spec : Prop :=
  ∀ n, (P7693369328658127917.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P5028860236861508189

`∩[A167135(n+1), A335031(n+1)]`
-/

namespace A158709.P5028860236861508189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P5028860236861508189

namespace A158709

/-- `∩[A167135(n+1), A335031(n+1)]` -/
def P5028860236861508189.Spec : Prop :=
  ∀ n, (P5028860236861508189.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P6176446711777327831

`∩[A182986(n+1), A335031(n+1)]`
-/

namespace A158709.P6176446711777327831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158709.P6176446711777327831

namespace A158709

/-- `∩[A182986(n+1), A335031(n+1)]` -/
def P6176446711777327831.Spec : Prop :=
  ∀ n, (P6176446711777327831.a n : ℤ) = A158709 (n + 1)

end A158709

/-! ## A158709.P1694465264085148734

`filter[A222565(n+1), A347871(#)]`
-/

namespace A158709.P1694465264085148734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A158709.P1694465264085148734

namespace A158709

/-- `filter[A222565(n+1), A347871(#)]` -/
def P1694465264085148734.Spec : Prop :=
  ∀ n, P1694465264085148734.a n = A158709 (n + 1)

end A158709

/-! ## A158709.P1845558755772436508

`p?[lt[n, A006530(3*n+1)]]`
-/

namespace A158709.P1845558755772436508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158709.P1845558755772436508

namespace A158709

/-- `p?[lt[n, A006530(3*n+1)]]` -/
def P1845558755772436508.Spec : Prop :=
  ∀ n, (P1845558755772436508.a n : ℤ) = A158709 (n + 1)

end A158709

/-!
# A158710: Primes p which are not in A158708 and A158709.

The programs for A158710, there is no canonical definition to state claims against.
-/

/-! ## A158710.P2978281870192826566

`p?[2*A199593(n+1)-1]`
-/

namespace A158710.P2978281870192826566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199593 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P2978281870192826566

/-! ## A158710.P10098744478181959374

`p?[round(2*A014076(n+1)/3)]`
-/

namespace A158710.P10098744478181959374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((A014076 (n + 1) : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P10098744478181959374

/-! ## A158710.P16295498737387508512

`p?[A075743(n+1)+2*n+3]`
-/

namespace A158710.P16295498737387508512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (n + 1) + (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P16295498737387508512

/-! ## A158710.P4950881686744376377

`p?[2*n+3-A156706(n+1)]`
-/

namespace A158710.P4950881686744376377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A156706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P4950881686744376377

/-! ## A158710.P15138339813408707873

`p?[2*(n+1)-A110560(3*n)]`
-/

namespace A158710.P15138339813408707873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A110560 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P15138339813408707873

/-! ## A158710.P7296726483275607116

`eq[n+1, A093074(3*(n+1))]+1`
-/

namespace A158710.P7296726483275607116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A158710.P7296726483275607116

/-! ## A158710.P17515472225164513721

`p?[A004523(A005381(n+1))]`
-/

namespace A158710.P17515472225164513721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A005381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P17515472225164513721

/-! ## A158710.P365046608935140656

`p?[A004396(A014076(n+1))]`
-/

namespace A158710.P365046608935140656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A014076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P365046608935140656

/-! ## A158710.P5773312650682898122

`p?[A026185(A018252(n+1))]`
-/

namespace A158710.P5773312650682898122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158710.P5773312650682898122

/-! ## A158710.P11103071993493217248

`record[A006530(2*A199593(n+1)-1)]`
-/

namespace A158710.P11103071993493217248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A199593 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158710.P11103071993493217248

/-!
# A158711: Primes p such that p1=Floor[p/2]+p is prime and p2=Floor[p1/2]+p1 is prime.

The programs for A158711, there is no canonical definition to state claims against.
-/

/-! ## A158711.P8163858898573352331

`p?[A004773(A130800(n+1)+1)]`
-/

namespace A158711.P8163858898573352331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A130800 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158711.P8163858898573352331

/-! ## A158711.P8283811841332815397

`p?[A008576(A255607(n+1))+1]`
-/

namespace A158711.P8283811841332815397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A255607 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158711.P8283811841332815397

/-! ## A158711.P2804556774220232002

`p?[A006369(A130800(n+2)+1)]`
-/

namespace A158711.P2804556774220232002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A130800 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158711.P2804556774220232002

/-! ## A158711.P3152797612254667091

`p?[A026177(A158708(n+1))]`
-/

namespace A158711.P3152797612254667091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (A158708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158711.P3152797612254667091

/-! ## A158711.P15412110885666010761

`p?[A302405(A114439(n+1))]`
-/

namespace A158711.P15412110885666010761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A114439 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158711.P15412110885666010761

/-!
# A158712: Primes p such that p1=Floor[p/2]+p is prime and p2=Ceiling[p1/2]+p1 is prime.

The programs for A158712, there is no canonical definition to state claims against.
-/

/-! ## A158712.P16953578112348821404

`p?[A026166(A158709(n+1))]`
-/

namespace A158712.P16953578112348821404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (A158709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158712.P16953578112348821404

/-! ## A158712.P11148371181589958618

`p?[A302405(A158709(n+2))]`
-/

namespace A158712.P11148371181589958618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A158709 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158712.P11148371181589958618

/-! ## A158712.P10639825344088908598

`p?[A026177(p?[A034934(n+1)])]`
-/

namespace A158712.P10639825344088908598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158712.P10639825344088908598

/-! ## A158712.P10138134571438110356

`p?[A302405(p?[A034934(n+1)])]`
-/

namespace A158712.P10138134571438110356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158712.P10138134571438110356

/-! ## A158712.P10174645706387570506

`p?[A026142(A158709(n+1)+1)]`
-/

namespace A158712.P10174645706387570506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (A158709 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158712.P10174645706387570506

/-!
# A158713: Primes p such that p1=Ceiling[p/2]+p is prime and p2=Ceiling[p1/2]+p is prime.

The programs for A158713, there is no canonical definition to state claims against.
-/

/-! ## A158713.P7433379198723612299

`A349666(lt[A151944(2*n+5), A064840(n+1)])`
-/

namespace A158713.P7433379198723612299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151944 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349666 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A158713.P7433379198723612299

/-! ## A158713.P9522789488438854222

`A007522(A310997(n)^A053575(n+1))`
-/

namespace A158713.P9522789488438854222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (SequenceMachineLib.roundAway ((A310997 n : ℚ) ^ (A053575 (n + 1) : ℤ))).toNat

end

end A158713.P9522789488438854222

/-!
# A158714: Primes p such that p1 = ceiling(p/2) + p is prime and p2 = floor(p1/2) + p1 is prime.

The programs for A158714, there is no canonical definition to state claims against.
-/

/-! ## A158714.P3216666810125420977

`p?[A008576(A255607(n+1))]`
-/

namespace A158714.P3216666810125420977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A255607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158714.P3216666810125420977

/-! ## A158714.P9532247507261535792

`p?[A130800(n+1)+A004396(A255607(n+1))]`
-/

namespace A158714.P9532247507261535792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130800 (n + 1) + A004396 (A255607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158714.P9532247507261535792

/-! ## A158714.P8546982949250289780

`p?[A006369(A130800(n+1))]`
-/

namespace A158714.P8546982949250289780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A130800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158714.P8546982949250289780

/-! ## A158714.P9278907490822114623

`p?[A006369(2*A255607(n+1))]`
-/

namespace A158714.P9278907490822114623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (2 * A255607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158714.P9278907490822114623

/-! ## A158714.P4319431758957950274

`p?[A004773(A130800(n+1)+1)-1]`
-/

namespace A158714.P4319431758957950274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A130800 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158714.P4319431758957950274

/-!
# A158720: Primes p such that Floor[p/3]+p is prime.

The programs for A158720, there is no canonical definition to state claims against.
-/

/-! ## A158720.P12458637439744390800

`p?[A030065(A033203(n+1))]`
-/

namespace A158720.P12458637439744390800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A033203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158720.P12458637439744390800

/-! ## A158720.P241120308658000345

`p?[A076536(A000040(n+1))]`
-/

namespace A158720.P241120308658000345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158720.P241120308658000345

/-! ## A158720.P1224595878542473168

`record[A006530(xor(7, A055131(n)))]`
-/

namespace A158720.P1224595878542473168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 7 (A055131 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158720.P1224595878542473168

/-! ## A158720.P11699675018518933108

`p?[A130766(p?[A047454(n+1)])]`
-/

namespace A158720.P11699675018518933108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158720.P11699675018518933108

/-! ## A158720.P17090789084629109410

`p?[A130766(p?[A047476(n+1)])]`
-/

namespace A158720.P17090789084629109410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158720.P17090789084629109410

/-!
# A158721: Primes p such that (p + 1)/3 + p is prime.

The programs for A158721, there is no canonical definition to state claims against.
-/

/-! ## A158721.P10598069129630257886

`p?[p?[4*n-1]-round(p?[4*n-1]/4)]`
-/

namespace A158721.P10598069129630257886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - SequenceMachineLib.roundAway ((f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158721.P10598069129630257886

/-! ## A158721.P7706223225459133413

`p?[A190105(n+1)]`
-/

namespace A158721.P7706223225459133413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158721.P7706223225459133413

/-! ## A158721.P15816119778576855610

`p?[A131742(p?[2*n+1])]`
-/

namespace A158721.P15816119778576855610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158721.P15816119778576855610

/-! ## A158721.P14175521940811530064

`p?[A133131(p?[2*n+1])]`
-/

namespace A158721.P14175521940811530064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133131 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158721.P14175521940811530064

/-! ## A158721.P5758189714696508571

`p?[3*A005099(n+1)-1]`
-/

namespace A158721.P5758189714696508571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005099 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158721.P5758189714696508571

/-!
# A158722: Primes p which are not in A158720 and A158721.

The programs for A158722, there is no canonical definition to state claims against.
-/

/-! ## A158722.P14212966002824131301

`p?[comp[A001222(2*n+1)*comp[3*n]]]`
-/

namespace A158722.P14212966002824131301
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158722.P14212966002824131301

/-! ## A158722.P16948894676574528534

`p?[A006368(A014684(n+1))]`
-/

namespace A158722.P16948894676574528534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A014684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158722.P16948894676574528534

/-! ## A158722.P5967101356606683637

`p?[A006368(A065090(n+1))]`
-/

namespace A158722.P5967101356606683637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A065090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158722.P5967101356606683637

/-! ## A158722.P7509419527991211074

`p?[A006368(A181569(n+1))]`
-/

namespace A158722.P7509419527991211074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A181569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158722.P7509419527991211074

/-! ## A158722.P15420039421506329636

`p?[A006368(A249355(n)+n)]`
-/

namespace A158722.P15420039421506329636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A249355 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158722.P15420039421506329636

/-! ## A158722.P4879580072721359699

`p?[A101264(n)+A047255(n+1)]`
-/

namespace A158722.P4879580072721359699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + A047255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158722.P4879580072721359699

/-! ## A158722.P14700512601518426173

`p?[A001651(n+1)-A211173(n)]`
-/

namespace A158722.P14700512601518426173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) - A211173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158722.P14700512601518426173

/-! ## A158722.P15232536837735305800

`p?[lcm(A089026(2*n+1), A293990(n))]`
-/

namespace A158722.P15232536837735305800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089026 (2 * n + 1)) (A293990 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A158722.P15232536837735305800

/-! ## A158722.P8728187858734334126

`record[A006530(A006368(A002808(n+1)))]`
-/

namespace A158722.P8728187858734334126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006368 (A002808 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158722.P8728187858734334126

/-! ## A158722.P830910016399532578

`record[A006530(A057353(A005381(n+1)))]`
-/

namespace A158722.P830910016399532578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057353 (A005381 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158722.P830910016399532578

/-!
# A158723: Greater of twin primes in A158720.

The programs for A158723, there is no canonical definition to state claims against.
-/

/-! ## A158723.P14225467315317884389

`p?[p?[A001651(A005097(n+1))]+2]`
-/

namespace A158723.P14225467315317884389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A005097 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158723.P14225467315317884389

/-! ## A158723.P13926842333015286005

`A006368(p?[A058281(A006512(n+1))])`
-/

namespace A158723.P13926842333015286005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A006512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158723.P13926842333015286005

/-! ## A158723.P7388270102624057865

`∩[A006512(n+1), A030065(A042998(n+1))]`
-/

namespace A158723.P7388270102624057865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A042998 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158723.P7388270102624057865

/-! ## A158723.P15478652870938263522

`∩[A130766(A002144(n+1)), A006512(n+1)]`
-/

namespace A158723.P15478652870938263522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (A002144 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158723.P15478652870938263522

/-! ## A158723.P14879515631422765569

`∩[A030065(A042998(n+1)), A172057(n+1)]`
-/

namespace A158723.P14879515631422765569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A042998 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158723.P14879515631422765569

/-!
# A158724: Numbers n such that prime(n)^2 + 1 is a semiprime.

The programs for A158724, there is no canonical definition to state claims against.
-/

/-! ## A158724.P15628315800375774193

`A000720(A048161(n+1))`
-/

namespace A158724.P15628315800375774193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A048161 (n + 1)).toNat

end

end A158724.P15628315800375774193

/-! ## A158724.P12307994380808073436

`A003963(A085712(n+1))`
-/

namespace A158724.P12307994380808073436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A085712 (n + 1)).toNat

end

end A158724.P12307994380808073436

/-! ## A158724.P2365923487958348063

`A099801(A068501(n+1))`
-/

namespace A158724.P2365923487958348063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A068501 (n + 1)).toNat

end

end A158724.P2365923487958348063

/-! ## A158724.P363695045614283554

`A099802(A178659(n+1))`
-/

namespace A158724.P363695045614283554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A178659 (n + 1)).toNat

end

end A158724.P363695045614283554

/-! ## A158724.P2793615327483967747

`A000720(sqrt(A263951(n+1)))`
-/

namespace A158724.P2793615327483967747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat

end

end A158724.P2793615327483967747

/-! ## A158724.P17261124043505283506

`A003963(sqrt(A263951(n+1)))`
-/

namespace A158724.P17261124043505283506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat

end

end A158724.P17261124043505283506

/-! ## A158724.P16865203390481560218

`A026233(sqrt(A263951(n+1)))`
-/

namespace A158724.P16865203390481560218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat

end

end A158724.P16865203390481560218

/-! ## A158724.P9979499151363852677

`A026238(sqrt(A263951(n+1)))`
-/

namespace A158724.P9979499151363852677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat

end

end A158724.P9979499151363852677

/-! ## A158724.P7300667480725442614

`A061395(sqrt(A263951(n+1)))`
-/

namespace A158724.P7300667480725442614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat

end

end A158724.P7300667480725442614

/-! ## A158724.P4795004834785047026

`A230980(sqrt(A263951(n+1)))`
-/

namespace A158724.P4795004834785047026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat

end

end A158724.P4795004834785047026

/-!
# A158725: Non-repdigit composite numbers not divisible by 2, 3, 5 or 11.

The programs for A158725, the canonical program `A158725.P16285587348764817752` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158725 has offset 1).

The definition of A158725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158725.P16285587348764817752

`∩[A038510(n+1), A160542(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A158725

/-- `∩[A038510(n+1), A160542(n+1)]` -/
def P16285587348764817752.Spec : Prop :=
  ∀ n, (P16285587348764817752.a n : ℤ) = A158725 (n + 1)

theorem P16285587348764817752.correct : P16285587348764817752.Spec := by
  intro n
  simp only [A158725, Nat.add_sub_cancel]

end A158725

/-! ## A158725.P2966105540033664696

`filter[A038510(n+1), A145568(#)]`
-/

namespace A158725.P2966105540033664696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A158725.P2966105540033664696

namespace A158725

/-- `filter[A038510(n+1), A145568(#)]` -/
def P2966105540033664696.Spec : Prop :=
  ∀ n, P2966105540033664696.a n = A158725 (n + 1)

end A158725

/-! ## A158725.P7586364371706697308

`∩[A133635(n+1), A236204(n+1)]`
-/

namespace A158725.P7586364371706697308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P7586364371706697308

namespace A158725

/-- `∩[A133635(n+1), A236204(n+1)]` -/
def P7586364371706697308.Spec : Prop :=
  ∀ n, (P7586364371706697308.a n : ℤ) = A158725 (n + 1)

end A158725

/-! ## A158725.P531003640220619450

`∩[A133636(n+1), A236204(n+1)]`
-/

namespace A158725.P531003640220619450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P531003640220619450

namespace A158725

/-- `∩[A133636(n+1), A236204(n+1)]` -/
def P531003640220619450.Spec : Prop :=
  ∀ n, (P531003640220619450.a n : ℤ) = A158725 (n + 1)

end A158725

/-! ## A158725.P2641626299115555582

`∩[A133634(n+1), A236208(n+1)]`
-/

namespace A158725.P2641626299115555582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P2641626299115555582

namespace A158725

/-- `∩[A133634(n+1), A236208(n+1)]` -/
def P2641626299115555582.Spec : Prop :=
  ∀ n, (P2641626299115555582.a n : ℤ) = A158725 (n + 1)

end A158725

/-! ## A158725.P9301810516967126115

`∩[A133635(n+1), A236208(n+1)]`
-/

namespace A158725.P9301810516967126115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P9301810516967126115

namespace A158725

/-- `∩[A133635(n+1), A236208(n+1)]` -/
def P9301810516967126115.Spec : Prop :=
  ∀ n, (P9301810516967126115.a n : ℤ) = A158725 (n + 1)

end A158725

/-! ## A158725.P11120564901905423467

`∩[A133635(n+1), A204454(n+2)]`
-/

namespace A158725.P11120564901905423467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P11120564901905423467

namespace A158725

/-- `∩[A133635(n+1), A204454(n+2)]` -/
def P11120564901905423467.Spec : Prop :=
  ∀ n, (P11120564901905423467.a n : ℤ) = A158725 (n + 1)

end A158725

/-! ## A158725.P3524481935115983036

`∩[A133636(n+1), A236217(n+1)]`
-/

namespace A158725.P3524481935115983036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P3524481935115983036

namespace A158725

/-- `∩[A133636(n+1), A236217(n+1)]` -/
def P3524481935115983036.Spec : Prop :=
  ∀ n, (P3524481935115983036.a n : ℤ) = A158725 (n + 1)

end A158725

/-! ## A158725.P7226269432953169330

`∩[A133636(n+1), A229968(n+1)]`
-/

namespace A158725.P7226269432953169330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158725.P7226269432953169330

namespace A158725

/-- `∩[A133636(n+1), A229968(n+1)]` -/
def P7226269432953169330.Spec : Prop :=
  ∀ n, (P7226269432953169330.a n : ℤ) = A158725 (n + 1)

end A158725

/-!
# A158727: a(n) = Hermite(n, 21).

The programs for A158727, the canonical program `A158727.P5201218578294872703` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158727 has offset 0).

The definition of A158727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158727.P5201218578294872703

`42*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=42`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158727

/-- `42*a(n-1)-2*(n-1)*a(n-2)` -/
def P5201218578294872703.Spec : Prop :=
  ∀ n, P5201218578294872703.a n = A158727 n

theorem P5201218578294872703.correct : P5201218578294872703.Spec := by
  intro n
  simp only [A158727]

end A158727

/-!
# A158729: a(n) = 1156*n^2 - 34.

The programs for A158729, the canonical program `A158729.P13009135757130666035` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158729 has offset 1).

The definition of A158729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158729.P13009135757130666035

`34*A158588(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158729

/-- `34*A158588(n+1)` -/
def P13009135757130666035.Spec : Prop :=
  ∀ n, P13009135757130666035.a n = A158729 (n + 1)

theorem P13009135757130666035.correct : P13009135757130666035.Spec := by
  intro n
  simp only [A158729, Nat.add_sub_cancel]

end A158729

/-! ## A158729.P5479043848239247538

`(34*(n+1))²-34`
-/

namespace A158729.P5479043848239247538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((34 * (n + 1)) ^ 2 : ℤ) - 34

end

end A158729.P5479043848239247538

namespace A158729

/-- `(34*(n+1))²-34` -/
def P5479043848239247538.Spec : Prop :=
  ∀ n, P5479043848239247538.a n = A158729 (n + 1)

end A158729

/-! ## A158729.P4966954320779508588

`record[(34*(1-n))²-34]`
-/

namespace A158729.P4966954320779508588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (34 * (1 - (n : ℤ))) ^ 2 - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158729.P4966954320779508588

namespace A158729

/-- `record[(34*(1-n))²-34]` -/
def P4966954320779508588.Spec : Prop :=
  ∀ n, P4966954320779508588.a n = A158729 (n + 1)

end A158729

/-! ## A158729.P14754179001579997869

`34*(34*A000290(n+1)-1)`
-/

namespace A158729.P14754179001579997869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 * (34 * A000290 (n + 1) - 1)

end

end A158729.P14754179001579997869

namespace A158729

/-- `34*(34*A000290(n+1)-1)` -/
def P14754179001579997869.Spec : Prop :=
  ∀ n, P14754179001579997869.a n = A158729 (n + 1)

end A158729

/-! ## A158729.P12462594868895144535

`round((A158730(n+1)/(2*(n+1)))²)`
-/

namespace A158729.P12462594868895144535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A158730 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)) ^ 2)

end

end A158729.P12462594868895144535

namespace A158729

/-- `round((A158730(n+1)/(2*(n+1)))²)` -/
def P12462594868895144535.Spec : Prop :=
  ∀ n, P12462594868895144535.a n = A158729 (n + 1)

end A158729

/-! ## A158729.P1528759978807493152

`17*(17*A016742(n+1)-2)`
-/

namespace A158729.P1528759978807493152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (17 * A016742 (n + 1) - 2)

end

end A158729.P1528759978807493152

namespace A158729

/-- `17*(17*A016742(n+1)-2)` -/
def P1528759978807493152.Spec : Prop :=
  ∀ n, P1528759978807493152.a n = A158729 (n + 1)

end A158729

/-!
# A158730: a(n) = 68*n^2 - 1.

The programs for A158730, the canonical program `A158730.P13211681437165183510` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158730 has offset 1).

The definition of A158730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `68*(n+1)²-1` (program `A158730.P13211681437165183510`, by `A158730.P13211681437165183510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158730.P13211681437165183510

`68*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158730

/-- `68*(n+1)²-1` -/
def P13211681437165183510.Spec : Prop :=
  ∀ n, P13211681437165183510.a n = A158730 (n + 1)

theorem P13211681437165183510.correct : P13211681437165183510.Spec := by
  intro n
  simp only [A158730, Nat.add_sub_cancel]

end A158730

/-! ## A158730.P15776608257490246606

`abs(2-A158732(n+1))`
-/

namespace A158730.P15776608257490246606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158732 (n + 1)|

end

end A158730.P15776608257490246606

namespace A158730

/-- `abs(2-A158732(n+1))` -/
def P15776608257490246606.Spec : Prop :=
  ∀ n, P15776608257490246606.a n = A158730 (n + 1)

end A158730

/-! ## A158730.P9489086285146457883

`or(1, 2*A158588(n+1))`
-/

namespace A158730.P9489086285146457883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A158588 (n + 1))

end

end A158730.P9489086285146457883

namespace A158730

/-- `or(1, 2*A158588(n+1))` -/
def P9489086285146457883.Spec : Prop :=
  ∀ n, P9489086285146457883.a n = A158730 (n + 1)

end A158730

/-! ## A158730.P4953266775105761089

`record[A147792(n+1)+A005563(n+1)]`
-/

namespace A158730.P4953266775105761089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147792 (n + 1) + A005563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158730.P4953266775105761089

namespace A158730

/-- `record[A147792(n+1)+A005563(n+1)]` -/
def P4953266775105761089.Spec : Prop :=
  ∀ n, P4953266775105761089.a n = A158730 (n + 1)

end A158730

/-! ## A158730.P15777410127106515671

`record[A147792(n+1)+A142705(n+2)]`
-/

namespace A158730.P15777410127106515671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147792 (n + 1) + A142705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158730.P15777410127106515671

namespace A158730

/-- `record[A147792(n+1)+A142705(n+2)]` -/
def P15777410127106515671.Spec : Prop :=
  ∀ n, P15777410127106515671.a n = A158730 (n + 1)

end A158730

/-! ## A158730.P2216016029038749392

`A321180(2*(n+1))`
-/

namespace A158730.P2216016029038749392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321180 (2 * (n + 1))

end

end A158730.P2216016029038749392

namespace A158730

/-- `A321180(2*(n+1))` -/
def P2216016029038749392.Spec : Prop :=
  ∀ n, P2216016029038749392.a n = A158730 (n + 1)

end A158730

/-! ## A158730.P14698486684260027376

`abs(A321180(A005843(n+1)))`
-/

namespace A158730.P14698486684260027376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321180 (A005843 (n + 1)).toNat|

end

end A158730.P14698486684260027376

namespace A158730

/-- `abs(A321180(A005843(n+1)))` -/
def P14698486684260027376.Spec : Prop :=
  ∀ n, P14698486684260027376.a n = A158730 (n + 1)

end A158730

/-! ## A158730.P1403972468871300477

`A361692((2*(n+1))²)`
-/

namespace A158730.P1403972468871300477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 ((2 * (n + 1)) ^ 2)

end

end A158730.P1403972468871300477

namespace A158730

/-- `A361692((2*(n+1))²)` -/
def P1403972468871300477.Spec : Prop :=
  ∀ n, P1403972468871300477.a n = A158730 (n + 1)

end A158730

/-!
# A158731: a(n) = 1156*n^2 + 34.

The programs for A158731, the canonical program `A158731.P7583583914137398169` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158731 has offset 0).

The definition of A158731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158731.P7583583914137398169

`34*A158586(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158731

/-- `34*A158586(n)` -/
def P7583583914137398169.Spec : Prop :=
  ∀ n, P7583583914137398169.a n = A158731 n

theorem P7583583914137398169.correct : P7583583914137398169.Spec := by
  intro n
  simp only [A158731]

end A158731

/-! ## A158731.P1661731185072123102

`(34*n)²+34`
-/

namespace A158731.P1661731185072123102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (34 * n) ^ 2 + 34

end

end A158731.P1661731185072123102

namespace A158731

/-- `(34*n)²+34` -/
def P1661731185072123102.Spec : Prop :=
  ∀ n, (P1661731185072123102.a n : ℤ) = A158731 n

end A158731

/-! ## A158731.P2491981618245391189

`34*or(1, 34*n²)`
-/

namespace A158731.P2491981618245391189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34 * Nat.lor 1 (34 * n ^ 2)

end

end A158731.P2491981618245391189

namespace A158731

/-- `34*or(1, 34*n²)` -/
def P2491981618245391189.Spec : Prop :=
  ∀ n, (P2491981618245391189.a n : ℤ) = A158731 n

end A158731

/-! ## A158731.P13503472280804931157

`34*xor(1, 34*n²)`
-/

namespace A158731.P13503472280804931157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34 * Nat.xor 1 (34 * n ^ 2)

end

end A158731.P13503472280804931157

namespace A158731

/-- `34*xor(1, 34*n²)` -/
def P13503472280804931157.Spec : Prop :=
  ∀ n, (P13503472280804931157.a n : ℤ) = A158731 n

end A158731

/-! ## A158731.P7573016814505205195

`34*(A303302(n)+1)`
-/

namespace A158731.P7573016814505205195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 * (A303302 n + 1)

end

end A158731.P7573016814505205195

namespace A158731

/-- `34*(A303302(n)+1)` -/
def P7573016814505205195.Spec : Prop :=
  ∀ n, P7573016814505205195.a n = A158731 n

end A158731

/-! ## A158731.P13174026270941129248

`17*(17*A016742(n)+2)`
-/

namespace A158731.P13174026270941129248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (17 * A016742 n + 2)

end

end A158731.P13174026270941129248

namespace A158731

/-- `17*(17*A016742(n)+2)` -/
def P13174026270941129248.Spec : Prop :=
  ∀ n, P13174026270941129248.a n = A158731 n

end A158731

/-! ## A158731.P4847133904758923604

`34*(34*A000290(n)+1)`
-/

namespace A158731.P4847133904758923604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 * (34 * A000290 n + 1)

end

end A158731.P4847133904758923604

namespace A158731

/-- `34*(34*A000290(n)+1)` -/
def P4847133904758923604.Spec : Prop :=
  ∀ n, P4847133904758923604.a n = A158731 n

end A158731

/-!
# A158732: a(n) = 68*n^2 + 1.

The programs for A158732, the canonical program `A158732.P7104617364013209010` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158732 has offset 0).

The definition of A158732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `68*n²+1` (program `A158732.P7104617364013209010`, by `A158732.P7104617364013209010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158732.P7104617364013209010

`68*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158732

/-- `68*n²+1` -/
def P7104617364013209010.Spec : Prop :=
  ∀ n, (P7104617364013209010.a n : ℤ) = A158732 n

theorem P7104617364013209010.correct : P7104617364013209010.Spec := by
  intro n
  simp only [A158732]

end A158732

/-! ## A158732.P1319676620692926968

`xor(1, 17*(2*n)²)`
-/

namespace A158732.P1319676620692926968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (17 * (2 * n) ^ 2)

end

end A158732.P1319676620692926968

namespace A158732

/-- `xor(1, 17*(2*n)²)` -/
def P1319676620692926968.Spec : Prop :=
  ∀ n, (P1319676620692926968.a n : ℤ) = A158732 n

end A158732

/-! ## A158732.P13802242705671519383

`or(1, 2*n*34*n)`
-/

namespace A158732.P13802242705671519383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n * (34 * n))

end

end A158732.P13802242705671519383

namespace A158732

/-- `or(1, 2*n*34*n)` -/
def P13802242705671519383.Spec : Prop :=
  ∀ n, (P13802242705671519383.a n : ℤ) = A158732 n

end A158732

/-! ## A158732.P7590832239621628905

`ceil(A158586(2*n)/2)`
-/

namespace A158732.P7590832239621628905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158586 (2 * n) : ℚ) / 2⌉

end

end A158732.P7590832239621628905

namespace A158732

/-- `ceil(A158586(2*n)/2)` -/
def P7590832239621628905.Spec : Prop :=
  ∀ n, P7590832239621628905.a n = A158732 n

end A158732

/-! ## A158732.P5058168868441600775

`abs(A321180(A005843(n))+2)`
-/

namespace A158732.P5058168868441600775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321180 (A005843 n).toNat + 2|

end

end A158732.P5058168868441600775

namespace A158732

/-- `abs(A321180(A005843(n))+2)` -/
def P5058168868441600775.Spec : Prop :=
  ∀ n, P5058168868441600775.a n = A158732 n

end A158732

/-! ## A158732.P12985202705152054974

`∑[A008574(17*A004273(n))]`
-/

namespace A158732.P12985202705152054974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (17 * A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158732.P12985202705152054974

namespace A158732

/-- `∑[A008574(17*A004273(n))]` -/
def P12985202705152054974.Spec : Prop :=
  ∀ n, P12985202705152054974.a n = A158732 n

end A158732

/-! ## A158732.P3611317869872366389

`A215137((2*n)²)`
-/

namespace A158732.P3611317869872366389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 ((2 * n) ^ 2)

end

end A158732.P3611317869872366389

namespace A158732

/-- `A215137((2*n)²)` -/
def P3611317869872366389.Spec : Prop :=
  ∀ n, P3611317869872366389.a n = A158732 n

end A158732

/-!
# A158733: a(n) = 1225*n^2 + 35.

The programs for A158733, the canonical program `A158733.P9418293958113420178` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158733 has offset 0).

The definition of A158733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158733.P9418293958113420178

`(35*n)²+35`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158733

/-- `(35*n)²+35` -/
def P9418293958113420178.Spec : Prop :=
  ∀ n, (P9418293958113420178.a n : ℤ) = A158733 n

theorem P9418293958113420178.correct : P9418293958113420178.Spec := by
  intro n
  simp only [A158733]

end A158733

/-! ## A158733.P16365871611245543146

`5*(5*A016982(n)+7)`
-/

namespace A158733.P16365871611245543146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * A016982 n + 7)

end

end A158733.P16365871611245543146

namespace A158733

/-- `5*(5*A016982(n)+7)` -/
def P16365871611245543146.Spec : Prop :=
  ∀ n, P16365871611245543146.a n = A158733 n

end A158733

/-! ## A158733.P12364507971349272938

`35*(35*A000290(n)+1)`
-/

namespace A158733.P12364507971349272938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * (35 * A000290 n + 1)

end

end A158733.P12364507971349272938

namespace A158733

/-- `35*(35*A000290(n)+1)` -/
def P12364507971349272938.Spec : Prop :=
  ∀ n, P12364507971349272938.a n = A158733 n

end A158733

/-! ## A158733.P18318848384406689214

`5*(A033429(7*n)+7)`
-/

namespace A158733.P18318848384406689214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A033429 (7 * n) + 7)

end

end A158733.P18318848384406689214

namespace A158733

/-- `5*(A033429(7*n)+7)` -/
def P18318848384406689214.Spec : Prop :=
  ∀ n, P18318848384406689214.a n = A158733 n

end A158733

/-! ## A158733.P15195460469094274292

`35*A016993(5*n²)`
-/

namespace A158733.P15195460469094274292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A016993 (5 * n ^ 2)

end

end A158733.P15195460469094274292

namespace A158733

/-- `35*A016993(5*n²)` -/
def P15195460469094274292.Spec : Prop :=
  ∀ n, P15195460469094274292.a n = A158733 n

end A158733

/-!
# A158734: a(n) = 70*n^2 + 1.

The programs for A158734, the canonical program `A158734.P2671319768889129314` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158734 has offset 0).

The definition of A158734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `70*n²+1` (program `A158734.P2671319768889129314`, by `A158734.P2671319768889129314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158734.P2671319768889129314

`70*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158734

/-- `70*n²+1` -/
def P2671319768889129314.Spec : Prop :=
  ∀ n, (P2671319768889129314.a n : ℤ) = A158734 n

theorem P2671319768889129314.correct : P2671319768889129314.Spec := by
  intro n
  simp only [A158734]

end A158734

/-! ## A158734.P8606171809289325771

`or(1, 70*n²)`
-/

namespace A158734.P8606171809289325771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (70 * n ^ 2)

end

end A158734.P8606171809289325771

namespace A158734

/-- `or(1, 70*n²)` -/
def P8606171809289325771.Spec : Prop :=
  ∀ n, (P8606171809289325771.a n : ℤ) = A158734 n

end A158734

/-! ## A158734.P14959282680184941636

`xor(1, 70*n²)`
-/

namespace A158734.P14959282680184941636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (70 * n ^ 2)

end

end A158734.P14959282680184941636

namespace A158734

/-- `xor(1, 70*n²)` -/
def P14959282680184941636.Spec : Prop :=
  ∀ n, (P14959282680184941636.a n : ℤ) = A158734 n

end A158734

/-! ## A158734.P15799780957243457633

`abs(10*n²-A158776(n))`
-/

namespace A158734.P15799780957243457633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n ^ 2 : ℤ) - A158776 n|

end

end A158734.P15799780957243457633

namespace A158734

/-- `abs(10*n²-A158776(n))` -/
def P15799780957243457633.Spec : Prop :=
  ∀ n, P15799780957243457633.a n = A158734 n

end A158734

/-! ## A158734.P9787757625726249523

`gcd(A158732(n)+A001105(n), A000038(n))`
-/

namespace A158734.P9787757625726249523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158732 n + A001105 n) (A000038 n)

end

end A158734.P9787757625726249523

namespace A158734

/-- `gcd(A158732(n)+A001105(n), A000038(n))` -/
def P9787757625726249523.Spec : Prop :=
  ∀ n, (P9787757625726249523.a n : ℤ) = A158734 n

end A158734

/-! ## A158734.P18252362281693964416

`(A158732(n)+A001105(n))*A304042(A220400(n))`
-/

namespace A158734.P18252362281693964416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n + A001105 n) * A304042 (A220400 n).toNat

end

end A158734.P18252362281693964416

namespace A158734

/-- `(A158732(n)+A001105(n))*A304042(A220400(n))` -/
def P18252362281693964416.Spec : Prop :=
  ∀ n, P18252362281693964416.a n = A158734 n

end A158734

/-! ## A158734.P11646379944066821502

`(A158732(n)+A001105(n))*A304042(A000120(n)+1)`
-/

namespace A158734.P11646379944066821502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n + A001105 n) * A304042 (A000120 n + 1).toNat

end

end A158734.P11646379944066821502

namespace A158734

/-- `(A158732(n)+A001105(n))*A304042(A000120(n)+1)` -/
def P11646379944066821502.Spec : Prop :=
  ∀ n, P11646379944066821502.a n = A158734 n

end A158734

/-! ## A158734.P13192742989448067138

`(A158732(n)+A001105(n))*A304042(A000005(2*(n+3)))`
-/

namespace A158734.P13192742989448067138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158732 n + A001105 n) * A304042 (A000005 (2 * (n + 3))).toNat

end

end A158734.P13192742989448067138

namespace A158734

/-- `(A158732(n)+A001105(n))*A304042(A000005(2*(n+3)))` -/
def P13192742989448067138.Spec : Prop :=
  ∀ n, P13192742989448067138.a n = A158734 n

end A158734

/-! ## A158734.P1391335820074457008

`A009866(8*n)/A020639(A004277(n))`
-/

namespace A158734.P1391335820074457008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009866 (8 * n) : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A158734.P1391335820074457008

namespace A158734

/-- `A009866(8*n)/A020639(A004277(n))` -/
def P1391335820074457008.Spec : Prop :=
  ∀ n, P1391335820074457008.a n = (A158734 n : ℚ)

end A158734

/-! ## A158734.P763485640191339748

`A009866(8*n)/A130335(A001316(n))`
-/

namespace A158734.P763485640191339748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009866 (8 * n) : ℚ) / (A130335 (A001316 n).toNat : ℚ)

end

end A158734.P763485640191339748

namespace A158734

/-- `A009866(8*n)/A130335(A001316(n))` -/
def P763485640191339748.Spec : Prop :=
  ∀ n, P763485640191339748.a n = (A158734 n : ℚ)

end A158734

/-! ## A158734.P3958584629197184257

`A009866(8*n)/A000122(n²)`
-/

namespace A158734.P3958584629197184257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009866 (8 * n) : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A158734.P3958584629197184257

namespace A158734

/-- `A009866(8*n)/A000122(n²)` -/
def P3958584629197184257.Spec : Prop :=
  ∀ n, P3958584629197184257.a n = (A158734 n : ℚ)

end A158734

/-!
# A158735: a(n) = 1225*n^2 - 35.

The programs for A158735, the canonical program `A158735.P2286968182331996548` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158735 has offset 1).

The definition of A158735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158735.P2286968182331996548

`(35*(n+1))²-35`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158735

/-- `(35*(n+1))²-35` -/
def P2286968182331996548.Spec : Prop :=
  ∀ n, P2286968182331996548.a n = A158735 (n + 1)

theorem P2286968182331996548.correct : P2286968182331996548.Spec := by
  intro n
  simp only [A158735, Nat.add_sub_cancel]

end A158735

/-! ## A158735.P16746462302495982167

`35*(35*A000290(n+1)-1)`
-/

namespace A158735.P16746462302495982167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * (35 * A000290 (n + 1) - 1)

end

end A158735.P16746462302495982167

namespace A158735

/-- `35*(35*A000290(n+1)-1)` -/
def P16746462302495982167.Spec : Prop :=
  ∀ n, P16746462302495982167.a n = A158735 (n + 1)

end A158735

/-! ## A158735.P13331456823860202164

`35*(A158062(n+1)-A001105(n)/2)`
-/

namespace A158735.P13331456823860202164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  35 * ((A158062 (n + 1) : ℚ) - (A001105 n : ℚ) / 2)

end

end A158735.P13331456823860202164

namespace A158735

/-- `35*(A158062(n+1)-A001105(n)/2)` -/
def P13331456823860202164.Spec : Prop :=
  ∀ n, P13331456823860202164.a n = (A158735 (n + 1) : ℚ)

end A158735

/-! ## A158735.P6501567123417221985

`5*(A033429(7*(n+1))-7)`
-/

namespace A158735.P6501567123417221985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A033429 (7 * (n + 1)) - 7)

end

end A158735.P6501567123417221985

namespace A158735

/-- `5*(A033429(7*(n+1))-7)` -/
def P6501567123417221985.Spec : Prop :=
  ∀ n, P6501567123417221985.a n = A158735 (n + 1)

end A158735

/-! ## A158735.P17731696588664610926

`abs(35-A000290(35*(n+1)))`
-/

namespace A158735.P17731696588664610926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |35 - A000290 (35 * (n + 1))|

end

end A158735.P17731696588664610926

namespace A158735

/-- `abs(35-A000290(35*(n+1)))` -/
def P17731696588664610926.Spec : Prop :=
  ∀ n, P17731696588664610926.a n = A158735 (n + 1)

end A158735

/-!
# A158736: a(n) = 70*n^2 - 1.

The programs for A158736, the canonical program `A158736.P1921437562563384827` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158736 has offset 1).

The definition of A158736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `70*(n+1)²-1` (program `A158736.P1921437562563384827`, by `A158736.P1921437562563384827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158736.P1921437562563384827

`70*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158736

/-- `70*(n+1)²-1` -/
def P1921437562563384827.Spec : Prop :=
  ∀ n, P1921437562563384827.a n = A158736 (n + 1)

theorem P1921437562563384827.correct : P1921437562563384827.Spec := by
  intro n
  simp only [A158736, Nat.add_sub_cancel]

end A158736

/-! ## A158736.P4969235094407727450

`xor(4, 5*A158485(n+1))`
-/

namespace A158736.P4969235094407727450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (5 * A158485 (n + 1))

end

end A158736.P4969235094407727450

namespace A158736

/-- `xor(4, 5*A158485(n+1))` -/
def P4969235094407727450.Spec : Prop :=
  ∀ n, P4969235094407727450.a n = A158736 (n + 1)

end A158736

/-! ## A158736.P8325617758990976375

`ceil(5*A158626(n+1)/3)`
-/

namespace A158736.P8325617758990976375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((A158626 (n + 1) : ℚ) / 3)⌉

end

end A158736.P8325617758990976375

namespace A158736

/-- `ceil(5*A158626(n+1)/3)` -/
def P8325617758990976375.Spec : Prop :=
  ∀ n, P8325617758990976375.a n = A158736 (n + 1)

end A158736

/-! ## A158736.P274551577703965829

`(A158774(n+1)+A158670(n+1))/2`
-/

namespace A158736.P274551577703965829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158774 (n + 1) + A158670 (n + 1) : ℚ) / 2

end

end A158736.P274551577703965829

namespace A158736

/-- `(A158774(n+1)+A158670(n+1))/2` -/
def P274551577703965829.Spec : Prop :=
  ∀ n, P274551577703965829.a n = (A158736 (n + 1) : ℚ)

end A158736

/-! ## A158736.P11682566979325599683

`(A158738(n+1)+A158730(n+1))/2`
-/

namespace A158736.P11682566979325599683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158738 (n + 1) + A158730 (n + 1) : ℚ) / 2

end

end A158736.P11682566979325599683

namespace A158736

/-- `(A158738(n+1)+A158730(n+1))/2` -/
def P11682566979325599683.Spec : Prop :=
  ∀ n, P11682566979325599683.a n = (A158736 (n + 1) : ℚ)

end A158736

/-! ## A158736.P5661568427572140849

`-xor(A158670(n+1)+A158447(n+1), -1)`
-/

namespace A158736.P5661568427572140849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A158670 (n + 1) + A158447 (n + 1)) (-1)

end

end A158736.P5661568427572140849

namespace A158736

/-- `-xor(A158670(n+1)+A158447(n+1), -1)` -/
def P5661568427572140849.Spec : Prop :=
  ∀ n, P5661568427572140849.a n = A158736 (n + 1)

end A158736

/-! ## A158736.P8354365790089333081

`Δ[∑[A158734(n)]-Δ[n²]]`
-/

namespace A158736.P8354365790089333081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158734 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158736.P8354365790089333081

namespace A158736

/-- `Δ[∑[A158734(n)]-Δ[n²]]` -/
def P8354365790089333081.Spec : Prop :=
  ∀ n, P8354365790089333081.a n = A158736 (n + 1)

end A158736

/-! ## A158736.P14794342104745560287

`Δ[A005902(n)+A063497(n)-A016777(n)]`
-/

namespace A158736.P14794342104745560287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + (A063497 n - A016777 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158736.P14794342104745560287

namespace A158736

/-- `Δ[A005902(n)+A063497(n)-A016777(n)]` -/
def P14794342104745560287.Spec : Prop :=
  ∀ n, P14794342104745560287.a n = A158736 (n + 1)

end A158736

/-! ## A158736.P1547403877677117993

`abs(A321180(A005843(n+1))+A001105(n+1))`
-/

namespace A158736.P1547403877677117993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321180 (A005843 (n + 1)).toNat + A001105 (n + 1)|

end

end A158736.P1547403877677117993

namespace A158736

/-- `abs(A321180(A005843(n+1))+A001105(n+1))` -/
def P1547403877677117993.Spec : Prop :=
  ∀ n, P1547403877677117993.a n = A158736 (n + 1)

end A158736

/-!
# A158737: a(n) = 1296*n^2 - 36.

The programs for A158737, the canonical program `A158737.P17281014902818735769` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158737 has offset 1).

The definition of A158737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158737.P17281014902818735769

`36*A136017(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158737

/-- `36*A136017(n+1)` -/
def P17281014902818735769.Spec : Prop :=
  ∀ n, P17281014902818735769.a n = A158737 (n + 1)

theorem P17281014902818735769.correct : P17281014902818735769.Spec := by
  intro n
  simp only [A158737, Nat.add_sub_cancel]

end A158737

/-! ## A158737.P15930983848981938694

`(36*(n+1))²-36`
-/

namespace A158737.P15930983848981938694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((36 * (n + 1)) ^ 2 : ℤ) - 36

end

end A158737.P15930983848981938694

namespace A158737

/-- `(36*(n+1))²-36` -/
def P15930983848981938694.Spec : Prop :=
  ∀ n, P15930983848981938694.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P7110168683195965442

`4*A157909(2*(n+1))`
-/

namespace A158737.P7110168683195965442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A157909 (2 * (n + 1))

end

end A158737.P7110168683195965442

namespace A158737

/-- `4*A157909(2*(n+1))` -/
def P7110168683195965442.Spec : Prop :=
  ∀ n, P7110168683195965442.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P11885789834408097812

`36*(A247792(2*(n+1))-2)`
-/

namespace A158737.P11885789834408097812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * (A247792 (2 * (n + 1)) - 2)

end

end A158737.P11885789834408097812

namespace A158737

/-- `36*(A247792(2*(n+1))-2)` -/
def P11885789834408097812.Spec : Prop :=
  ∀ n, P11885789834408097812.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P12503986652961493745

`(A017401(n+1)+n+2)*A305068(2*(n+1))`
-/

namespace A158737.P12503986652961493745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017401 (n + 1) + (n + 2 : ℤ)) * A305068 (2 * (n + 1))

end

end A158737.P12503986652961493745

namespace A158737

/-- `(A017401(n+1)+n+2)*A305068(2*(n+1))` -/
def P12503986652961493745.Spec : Prop :=
  ∀ n, P12503986652961493745.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P2921050482696697150

`(A139609(2*n+1)+A139609(n+1))*A017545(n+1)`
-/

namespace A158737.P2921050482696697150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139609 (2 * n + 1) + A139609 (n + 1)) * A017545 (n + 1)

end

end A158737.P2921050482696697150

namespace A158737

/-- `(A139609(2*n+1)+A139609(n+1))*A017545(n+1)` -/
def P2921050482696697150.Spec : Prop :=
  ∀ n, P2921050482696697150.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P13245265516753207456

`(A017137(2*n+1)+A017137(n+1))*A124388(2*n+1)`
-/

namespace A158737.P13245265516753207456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017137 (2 * n + 1) + A017137 (n + 1)) * A124388 (2 * n + 1)

end

end A158737.P13245265516753207456

namespace A158737

/-- `(A017137(2*n+1)+A017137(n+1))*A124388(2*n+1)` -/
def P13245265516753207456.Spec : Prop :=
  ∀ n, P13245265516753207456.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P1992647923117081666

`(A270700(2*n+1)-A019557(2*n+1))*A270700(n+1)`
-/

namespace A158737.P1992647923117081666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A270700 (2 * n + 1) - A019557 (2 * n + 1)) * A270700 (n + 1)

end

end A158737.P1992647923117081666

namespace A158737

/-- `(A270700(2*n+1)-A019557(2*n+1))*A270700(n+1)` -/
def P1992647923117081666.Spec : Prop :=
  ∀ n, P1992647923117081666.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P4320082186939890903

`A019557(2*(n+1))*A270700(n+1)`
-/

namespace A158737.P4320082186939890903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 (2 * (n + 1)) * A270700 (n + 1)

end

end A158737.P4320082186939890903

namespace A158737

/-- `A019557(2*(n+1))*A270700(n+1)` -/
def P4320082186939890903.Spec : Prop :=
  ∀ n, P4320082186939890903.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P3326005754600989736

`Δ[A152751(2*n+1)]*Δ[A152751(n+1)]`
-/

namespace A158737.P3326005754600989736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A158737.P3326005754600989736

namespace A158737

/-- `Δ[A152751(2*n+1)]*Δ[A152751(n+1)]` -/
def P3326005754600989736.Spec : Prop :=
  ∀ n, P3326005754600989736.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P14321119595447265083

`12*(A135453(3*(n+1))-3)`
-/

namespace A158737.P14321119595447265083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A135453 (3 * (n + 1)) - 3)

end

end A158737.P14321119595447265083

namespace A158737

/-- `12*(A135453(3*(n+1))-3)` -/
def P14321119595447265083.Spec : Prop :=
  ∀ n, P14321119595447265083.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P13598809974405649411

`6*6*A081350(6*(n+1))`
-/

namespace A158737.P13598809974405649411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (6 * A081350 (6 * (n + 1)))

end

end A158737.P13598809974405649411

namespace A158737

/-- `6*6*A081350(6*(n+1))` -/
def P13598809974405649411.Spec : Prop :=
  ∀ n, P13598809974405649411.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P15750231798495675383

`A008588(A008588(n)+5)*A008588(A008588(n)+7)`
-/

namespace A158737.P15750231798495675383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A008588 n + 5).toNat * A008588 (A008588 n + 7).toNat

end

end A158737.P15750231798495675383

namespace A158737

/-- `A008588(A008588(n)+5)*A008588(A008588(n)+7)` -/
def P15750231798495675383.Spec : Prop :=
  ∀ n, P15750231798495675383.a n = A158737 (n + 1)

end A158737

/-! ## A158737.P9671844691921201710

`A098847(A209876(n+1))`
-/

namespace A158737.P9671844691921201710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098847 (A209876 (n + 1)).toNat

end

end A158737.P9671844691921201710

namespace A158737

/-- `A098847(A209876(n+1))` -/
def P9671844691921201710.Spec : Prop :=
  ∀ n, P9671844691921201710.a n = A158737 (n + 1)

end A158737

/-!
# A158738: a(n) = 72*n^2 - 1.

The programs for A158738, the canonical program `A158738.P13269052857347112751` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158738 has offset 1).

The definition of A158738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `72*(n+1)²-1` (program `A158738.P13269052857347112751`, by `A158738.P13269052857347112751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158738.P13269052857347112751

`72*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158738

/-- `72*(n+1)²-1` -/
def P13269052857347112751.Spec : Prop :=
  ∀ n, P13269052857347112751.a n = A158738 (n + 1)

theorem P13269052857347112751.correct : P13269052857347112751.Spec := by
  intro n
  simp only [A158738, Nat.add_sub_cancel]

end A158738

/-! ## A158738.P3362745101966736367

`A157910(2*(n+1))`
-/

namespace A158738.P3362745101966736367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (2 * (n + 1))

end

end A158738.P3362745101966736367

namespace A158738

/-- `A157910(2*(n+1))` -/
def P3362745101966736367.Spec : Prop :=
  ∀ n, P3362745101966736367.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P6559526549133253598

`or(1, 2*A136017(n+1))`
-/

namespace A158738.P6559526549133253598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A136017 (n + 1))

end

end A158738.P6559526549133253598

namespace A158738

/-- `or(1, 2*A136017(n+1))` -/
def P6559526549133253598.Spec : Prop :=
  ∀ n, P6559526549133253598.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P13467412240951797038

`abs(abs(Δ[(12*n+6)*A046092(n)]+n-1)-n)`
-/

namespace A158738.P13467412240951797038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 6 : ℤ) * A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|f1 (n + 1) - f1 n + (n : ℤ) - 1| - (n : ℤ))|

end

end A158738.P13467412240951797038

namespace A158738

/-- `abs(abs(Δ[(12*n+6)*A046092(n)]+n-1)-n)` -/
def P13467412240951797038.Spec : Prop :=
  ∀ n, P13467412240951797038.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P6296393524103679614

`(A102603(n)+A017654(n))/2`
-/

namespace A158738.P6296393524103679614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102603 n + A017654 n : ℚ) / 2

end

end A158738.P6296393524103679614

namespace A158738

/-- `(A102603(n)+A017654(n))/2` -/
def P6296393524103679614.Spec : Prop :=
  ∀ n, P6296393524103679614.a n = (A158738 (n + 1) : ℚ)

end A158738

/-! ## A158738.P17506554985226419667

`abs(1-A195321(2*(n+1)))`
-/

namespace A158738.P17506554985226419667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A195321 (2 * (n + 1))|

end

end A158738.P17506554985226419667

namespace A158738

/-- `abs(1-A195321(2*(n+1)))` -/
def P17506554985226419667.Spec : Prop :=
  ∀ n, P17506554985226419667.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P10411837341010399874

`floor(A136017(2*(n+1))/2)`
-/

namespace A158738.P10411837341010399874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136017 (2 * (n + 1)) : ℚ) / 2⌋

end

end A158738.P10411837341010399874

namespace A158738

/-- `floor(A136017(2*(n+1))/2)` -/
def P10411837341010399874.Spec : Prop :=
  ∀ n, P10411837341010399874.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P14957596614409965331

`record[A157910(A185048(n+3))]`
-/

namespace A158738.P14957596614409965331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (A185048 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158738.P14957596614409965331

namespace A158738

/-- `record[A157910(A185048(n+3))]` -/
def P14957596614409965331.Spec : Prop :=
  ∀ n, P14957596614409965331.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P8556487139621287431

`abs(Δ[3*n*A046092(2*n+1)]-1)`
-/

namespace A158738.P8556487139621287431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * A046092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 1|

end

end A158738.P8556487139621287431

namespace A158738

/-- `abs(Δ[3*n*A046092(2*n+1)]-1)` -/
def P8556487139621287431.Spec : Prop :=
  ∀ n, P8556487139621287431.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P7177524240543934823

`A157914(3*(n+1))`
-/

namespace A158738.P7177524240543934823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (3 * (n + 1))

end

end A158738.P7177524240543934823

namespace A158738

/-- `A157914(3*(n+1))` -/
def P7177524240543934823.Spec : Prop :=
  ∀ n, P7177524240543934823.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P16750893795007463897

`abs(1-A139098(3*(n+1)))`
-/

namespace A158738.P16750893795007463897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A139098 (3 * (n + 1))|

end

end A158738.P16750893795007463897

namespace A158738

/-- `abs(1-A139098(3*(n+1)))` -/
def P16750893795007463897.Spec : Prop :=
  ∀ n, P16750893795007463897.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P4682262137757582156

`record[A157910(A186731(n+3))]`
-/

namespace A158738.P4682262137757582156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (A186731 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158738.P4682262137757582156

namespace A158738

/-- `record[A157910(A186731(n+3))]` -/
def P4682262137757582156.Spec : Prop :=
  ∀ n, P4682262137757582156.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P5532523213590683049

`∩[A157910(n+1), A157914(n+1)]`
-/

namespace A158738.P5532523213590683049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158738.P5532523213590683049

namespace A158738

/-- `∩[A157910(n+1), A157914(n+1)]` -/
def P5532523213590683049.Spec : Prop :=
  ∀ n, (P5532523213590683049.a n : ℤ) = A158738 (n + 1)

end A158738

/-! ## A158738.P5088417065714870111

`A056220(6*(n+1))`
-/

namespace A158738.P5088417065714870111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (6 * (n + 1))

end

end A158738.P5088417065714870111

namespace A158738

/-- `A056220(6*(n+1))` -/
def P5088417065714870111.Spec : Prop :=
  ∀ n, P5088417065714870111.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P16022046950996416867

`A320431(6*n+7)`
-/

namespace A158738.P16022046950996416867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320431 (6 * n + 7)

end

end A158738.P16022046950996416867

namespace A158738

/-- `A320431(6*n+7)` -/
def P16022046950996416867.Spec : Prop :=
  ∀ n, P16022046950996416867.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P15307292185200656904

`abs(2-A058331(6*(n+1)))`
-/

namespace A158738.P15307292185200656904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A058331 (6 * (n + 1))|

end

end A158738.P15307292185200656904

namespace A158738

/-- `abs(2-A058331(6*(n+1)))` -/
def P15307292185200656904.Spec : Prop :=
  ∀ n, P15307292185200656904.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P4772047342455566746

`A195605(A016969(n))`
-/

namespace A158738.P4772047342455566746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 (A016969 n).toNat

end

end A158738.P4772047342455566746

namespace A158738

/-- `A195605(A016969(n))` -/
def P4772047342455566746.Spec : Prop :=
  ∀ n, P4772047342455566746.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P4233207548437978528

`record[A320431(A016777(n+2))]`
-/

namespace A158738.P4233207548437978528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320431 (A016777 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158738.P4233207548437978528

namespace A158738

/-- `record[A320431(A016777(n+2))]` -/
def P4233207548437978528.Spec : Prop :=
  ∀ n, P4233207548437978528.a n = A158738 (n + 1)

end A158738

/-! ## A158738.P11462354222663319784

`∩[A157910(n+1), A195605(n)]`
-/

namespace A158738.P11462354222663319784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158738.P11462354222663319784

namespace A158738

/-- `∩[A157910(n+1), A195605(n)]` -/
def P11462354222663319784.Spec : Prop :=
  ∀ n, (P11462354222663319784.a n : ℤ) = A158738 (n + 1)

end A158738

/-!
# A158739: a(n) = 1296*n^2 + 36.

The programs for A158739, the canonical program `A158739.P3580061092875837422` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158739 has offset 0).

The definition of A158739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158739.P3580061092875837422

`36*A158591(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158739

/-- `36*A158591(n)` -/
def P3580061092875837422.Spec : Prop :=
  ∀ n, P3580061092875837422.a n = A158739 n

theorem P3580061092875837422.correct : P3580061092875837422.Spec := by
  intro n
  simp only [A158739]

end A158739

/-! ## A158739.P14596913598021435647

`(36*n)²+36`
-/

namespace A158739.P14596913598021435647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (36 * n) ^ 2 + 36

end

end A158739.P14596913598021435647

namespace A158739

/-- `(36*n)²+36` -/
def P14596913598021435647.Spec : Prop :=
  ∀ n, (P14596913598021435647.a n : ℤ) = A158739 n

end A158739

/-! ## A158739.P4395629068020138628

`or(36, (36*n)²)`
-/

namespace A158739.P4395629068020138628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 36 ((36 * n) ^ 2)

end

end A158739.P4395629068020138628

namespace A158739

/-- `or(36, (36*n)²)` -/
def P4395629068020138628.Spec : Prop :=
  ∀ n, (P4395629068020138628.a n : ℤ) = A158739 n

end A158739

/-! ## A158739.P1123043661169756872

`xor(36, (36*n)²)`
-/

namespace A158739.P1123043661169756872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 36 ((36 * n) ^ 2)

end

end A158739.P1123043661169756872

namespace A158739

/-- `xor(36, (36*n)²)` -/
def P1123043661169756872.Spec : Prop :=
  ∀ n, (P1123043661169756872.a n : ℤ) = A158739 n

end A158739

/-! ## A158739.P1023893064327969605

`36*(36*A000290(n)+1)`
-/

namespace A158739.P1023893064327969605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * (36 * A000290 n + 1)

end

end A158739.P1023893064327969605

namespace A158739

/-- `36*(36*A000290(n)+1)` -/
def P1023893064327969605.Spec : Prop :=
  ∀ n, P1023893064327969605.a n = A158739 n

end A158739

/-! ## A158739.P10572046813165521276

`6*(A033581(6*n)+6)`
-/

namespace A158739.P10572046813165521276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A033581 (6 * n) + 6)

end

end A158739.P10572046813165521276

namespace A158739

/-- `6*(A033581(6*n)+6)` -/
def P10572046813165521276.Spec : Prop :=
  ∀ n, P10572046813165521276.a n = A158739 n

end A158739

/-!
# A158740: a(n) = 72*n^2 + 1.

The programs for A158740, the canonical program `A158740.P13242228449475372307` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158740 has offset 0).

The definition of A158740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `72*n²+1` (program `A158740.P13242228449475372307`, by `A158740.P13242228449475372307.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158740.P13242228449475372307

`72*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158740

/-- `72*n²+1` -/
def P13242228449475372307.Spec : Prop :=
  ∀ n, (P13242228449475372307.a n : ℤ) = A158740 n

theorem P13242228449475372307.correct : P13242228449475372307.Spec := by
  intro n
  simp only [A158740]

end A158740

/-! ## A158740.P1153766922242174764

`or(1, 2*(6*n)²)`
-/

namespace A158740.P1153766922242174764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * (6 * n) ^ 2)

end

end A158740.P1153766922242174764

namespace A158740

/-- `or(1, 2*(6*n)²)` -/
def P1153766922242174764.Spec : Prop :=
  ∀ n, (P1153766922242174764.a n : ℤ) = A158740 n

end A158740

/-! ## A158740.P11595678115992057373

`xor(1, 2*(6*n)²)`
-/

namespace A158740.P11595678115992057373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (6 * n) ^ 2)

end

end A158740.P11595678115992057373

namespace A158740

/-- `xor(1, 2*(6*n)²)` -/
def P11595678115992057373.Spec : Prop :=
  ∀ n, (P11595678115992057373.a n : ℤ) = A158740 n

end A158740

/-! ## A158740.P13969433014239874872

`A275543(6*n)`
-/

namespace A158740.P13969433014239874872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (6 * n)

end

end A158740.P13969433014239874872

namespace A158740

/-- `A275543(6*n)` -/
def P13969433014239874872.Spec : Prop :=
  ∀ n, P13969433014239874872.a n = A158740 n

end A158740

/-! ## A158740.P9903584956196360301

`round((A008594(n)²+1)/2)`
-/

namespace A158740.P9903584956196360301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008594 n ^ 2 + 1 : ℚ) / 2)

end

end A158740.P9903584956196360301

namespace A158740

/-- `round((A008594(n)²+1)/2)` -/
def P9903584956196360301.Spec : Prop :=
  ∀ n, P9903584956196360301.a n = A158740 n

end A158740

/-! ## A158740.P14369445432558780261

`ceil(A158646(2*n)/3)`
-/

namespace A158740.P14369445432558780261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158646 (2 * n) : ℚ) / 3⌉

end

end A158740.P14369445432558780261

namespace A158740

/-- `ceil(A158646(2*n)/3)` -/
def P14369445432558780261.Spec : Prop :=
  ∀ n, P14369445432558780261.a n = A158740 n

end A158740

/-! ## A158740.P7594025732107335184

`record[(9*n*2*n+1)*char[2*n]]`
-/

namespace A158740.P7594025732107335184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n * (2 * n) + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158740.P7594025732107335184

namespace A158740

/-- `record[(9*n*2*n+1)*char[2*n]]` -/
def P7594025732107335184.Spec : Prop :=
  ∀ n, (P7594025732107335184.a n : ℤ) = A158740 n

end A158740

/-! ## A158740.P15120882708809250158

`ceil(A158591(2*n)/2)`
-/

namespace A158740.P15120882708809250158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158591 (2 * n) : ℚ) / 2⌉

end

end A158740.P15120882708809250158

namespace A158740

/-- `ceil(A158591(2*n)/2)` -/
def P15120882708809250158.Spec : Prop :=
  ∀ n, P15120882708809250158.a n = A158740 n

end A158740

/-! ## A158740.P7739900466822058003

`A081585(3*n)`
-/

namespace A158740.P7739900466822058003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 (3 * n)

end

end A158740.P7739900466822058003

namespace A158740

/-- `A081585(3*n)` -/
def P7739900466822058003.Spec : Prop :=
  ∀ n, P7739900466822058003.a n = A158740 n

end A158740

/-! ## A158740.P8850135739330061768

`A298034(4*n)`
-/

namespace A158740.P8850135739330061768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 (4 * n)

end

end A158740.P8850135739330061768

namespace A158740

/-- `A298034(4*n)` -/
def P8850135739330061768.Spec : Prop :=
  ∀ n, P8850135739330061768.a n = A158740 n

end A158740

/-! ## A158740.P14161482403124490697

`∩[A081585(n), A298030(n)]`
-/

namespace A158740.P14161482403124490697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158740.P14161482403124490697

namespace A158740

/-- `∩[A081585(n), A298030(n)]` -/
def P14161482403124490697.Spec : Prop :=
  ∀ n, (P14161482403124490697.a n : ℤ) = A158740 n

end A158740

/-! ## A158740.P5698956510261630364

`∩[A081585(n), A298034(n)]`
-/

namespace A158740.P5698956510261630364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158740.P5698956510261630364

namespace A158740

/-- `∩[A081585(n), A298034(n)]` -/
def P5698956510261630364.Spec : Prop :=
  ∀ n, (P5698956510261630364.a n : ℤ) = A158740 n

end A158740

/-! ## A158740.P15084591410427360192

`A058331(6*n)`
-/

namespace A158740.P15084591410427360192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (6 * n)

end

end A158740.P15084591410427360192

namespace A158740

/-- `A058331(6*n)` -/
def P15084591410427360192.Spec : Prop :=
  ∀ n, P15084591410427360192.a n = A158740 n

end A158740

/-! ## A158740.P4550144637724972792

`A099392(2*n+10*n+1)`
-/

namespace A158740.P4550144637724972792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (2 * n + 10 * n + 1)

end

end A158740.P4550144637724972792

namespace A158740

/-- `A099392(2*n+10*n+1)` -/
def P4550144637724972792.Spec : Prop :=
  ∀ n, P4550144637724972792.a n = A158740 n

end A158740

/-! ## A158740.P12649289237443223710

`A061925(12*n)`
-/

namespace A158740.P12649289237443223710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 (12 * n)

end

end A158740.P12649289237443223710

namespace A158740

/-- `A061925(12*n)` -/
def P12649289237443223710.Spec : Prop :=
  ∀ n, P12649289237443223710.a n = A158740 n

end A158740

/-! ## A158740.P3694938592092059096

`A097063(12*n)`
-/

namespace A158740.P3694938592092059096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 (12 * n)

end

end A158740.P3694938592092059096

namespace A158740

/-- `A097063(12*n)` -/
def P3694938592092059096.Spec : Prop :=
  ∀ n, P3694938592092059096.a n = A158740 n

end A158740

/-! ## A158740.P954141394066179409

`A306367(12*n)`
-/

namespace A158740.P954141394066179409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306367 (12 * n)

end

end A158740.P954141394066179409

namespace A158740

/-- `A306367(12*n)` -/
def P954141394066179409.Spec : Prop :=
  ∀ n, P954141394066179409.a n = A158740 n

end A158740

/-! ## A158740.P4203678440614099949

`A075855(A017533(n))`
-/

namespace A158740.P4203678440614099949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075855 (A017533 n).toNat

end

end A158740.P4203678440614099949

namespace A158740

/-- `A075855(A017533(n))` -/
def P4203678440614099949.Spec : Prop :=
  ∀ n, P4203678440614099949.a n = A158740 n

end A158740

/-! ## A158740.P2703730881350099388

`A261243(A017545(n))`
-/

namespace A158740.P2703730881350099388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261243 (A017545 n).toNat

end

end A158740.P2703730881350099388

namespace A158740

/-- `A261243(A017545(n))` -/
def P2703730881350099388.Spec : Prop :=
  ∀ n, P2703730881350099388.a n = A158740 n

end A158740

/-!
# A158741: a(n) = 1369*n^2 + 37.

The programs for A158741, the canonical program `A158741.P4738948081009091112` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158741 has offset 0).

The definition of A158741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158741.P4738948081009091112

`(37*n)²+37`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158741

/-- `(37*n)²+37` -/
def P4738948081009091112.Spec : Prop :=
  ∀ n, (P4738948081009091112.a n : ℤ) = A158741 n

theorem P4738948081009091112.correct : P4738948081009091112.Spec := by
  intro n
  simp only [A158741]

end A158741

/-! ## A158741.P14278438462318755312

`37*(A158593(n)-n²)`
-/

namespace A158741.P14278438462318755312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * (A158593 n - (n ^ 2 : ℤ))

end

end A158741.P14278438462318755312

namespace A158741

/-- `37*(A158593(n)-n²)` -/
def P14278438462318755312.Spec : Prop :=
  ∀ n, P14278438462318755312.a n = A158741 n

end A158741

/-! ## A158741.P13477518796753484161

`37*(A016910(n)+A002522(n))`
-/

namespace A158741.P13477518796753484161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * (A016910 n + A002522 n)

end

end A158741.P13477518796753484161

namespace A158741

/-- `37*(A016910(n)+A002522(n))` -/
def P13477518796753484161.Spec : Prop :=
  ∀ n, P13477518796753484161.a n = A158741 n

end A158741

/-! ## A158741.P2506858055096556944

`37*(A158591(n)+A000290(n))`
-/

namespace A158741.P2506858055096556944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * (A158591 n + A000290 n)

end

end A158741.P2506858055096556944

namespace A158741

/-- `37*(A158591(n)+A000290(n))` -/
def P2506858055096556944.Spec : Prop :=
  ∀ n, P2506858055096556944.a n = A158741 n

end A158741

/-! ## A158741.P12348807326286027419

`37*(A158480(n)+A016850(n))`
-/

namespace A158741.P12348807326286027419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * (A158480 n + A016850 n)

end

end A158741.P12348807326286027419

namespace A158741

/-- `37*(A158480(n)+A016850(n))` -/
def P12348807326286027419.Spec : Prop :=
  ∀ n, P12348807326286027419.a n = A158741 n

end A158741

/-!
# A158742: a(n) = 74*n^2 + 1.

The programs for A158742, the canonical program `A158742.P8401611009508781606` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158742 has offset 0).

The definition of A158742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `74*n²+1` (program `A158742.P8401611009508781606`, by `A158742.P8401611009508781606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158742.P8401611009508781606

`74*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158742

/-- `74*n²+1` -/
def P8401611009508781606.Spec : Prop :=
  ∀ n, (P8401611009508781606.a n : ℤ) = A158742 n

theorem P8401611009508781606.correct : P8401611009508781606.Spec := by
  intro n
  simp only [A158742]

end A158742

/-! ## A158742.P8881910068685602122

`or(1, 74*n²)`
-/

namespace A158742.P8881910068685602122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (74 * n ^ 2)

end

end A158742.P8881910068685602122

namespace A158742

/-- `or(1, 74*n²)` -/
def P8881910068685602122.Spec : Prop :=
  ∀ n, (P8881910068685602122.a n : ℤ) = A158742 n

end A158742

/-! ## A158742.P14606286733462316249

`xor(1, 74*n²)`
-/

namespace A158742.P14606286733462316249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (74 * n ^ 2)

end

end A158742.P14606286733462316249

namespace A158742

/-- `xor(1, 74*n²)` -/
def P14606286733462316249.Spec : Prop :=
  ∀ n, (P14606286733462316249.a n : ℤ) = A158742 n

end A158742

/-! ## A158742.P12645933661698326852

`abs(A001105(n)-A158767(n))`
-/

namespace A158742.P12645933661698326852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001105 n - A158767 n|

end

end A158742.P12645933661698326852

namespace A158742

/-- `abs(A001105(n)-A158767(n))` -/
def P12645933661698326852.Spec : Prop :=
  ∀ n, P12645933661698326852.a n = A158742 n

end A158742

/-! ## A158742.P10916532198081591552

`abs(A108100(3*n)+A056220(n))`
-/

namespace A158742.P10916532198081591552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108100 (3 * n) + A056220 n|

end

end A158742.P10916532198081591552

namespace A158742

/-- `abs(A108100(3*n)+A056220(n))` -/
def P10916532198081591552.Spec : Prop :=
  ∀ n, P10916532198081591552.a n = A158742 n

end A158742

/-!
# A158743: a(n) = 1369*n^2 - 37.

The programs for A158743, the canonical program `A158743.P11160316615445765293` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158743 has offset 1).

The definition of A158743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158743.P11160316615445765293

`(37*(n+1))²-37`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158743

/-- `(37*(n+1))²-37` -/
def P11160316615445765293.Spec : Prop :=
  ∀ n, P11160316615445765293.a n = A158743 (n + 1)

theorem P11160316615445765293.correct : P11160316615445765293.Spec := by
  intro n
  simp only [A158743, Nat.add_sub_cancel]

end A158743

/-! ## A158743.P17128955976286196158

`record[(37*(1-n))²-37]`
-/

namespace A158743.P17128955976286196158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * (1 - (n : ℤ))) ^ 2 - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158743.P17128955976286196158

namespace A158743

/-- `record[(37*(1-n))²-37]` -/
def P17128955976286196158.Spec : Prop :=
  ∀ n, P17128955976286196158.a n = A158743 (n + 1)

end A158743

/-! ## A158743.P7367459972294335810

`37*(37*A000290(n+1)-1)`
-/

namespace A158743.P7367459972294335810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * (37 * A000290 (n + 1) - 1)

end

end A158743.P7367459972294335810

namespace A158743

/-- `37*(37*A000290(n+1)-1)` -/
def P7367459972294335810.Spec : Prop :=
  ∀ n, P7367459972294335810.a n = A158743 (n + 1)

end A158743

/-! ## A158743.P3197030061765112695

`abs(37-A000290(37*(n+1)))`
-/

namespace A158743.P3197030061765112695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |37 - A000290 (37 * (n + 1))|

end

end A158743.P3197030061765112695

namespace A158743

/-- `abs(37-A000290(37*(n+1)))` -/
def P3197030061765112695.Spec : Prop :=
  ∀ n, P3197030061765112695.a n = A158743 (n + 1)

end A158743

/-! ## A158743.P6048239205559726875

`A085959(A085959((n+1)²)-1)`
-/

namespace A158743.P6048239205559726875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085959 (A085959 ((n + 1) ^ 2) - 1).toNat

end

end A158743.P6048239205559726875

namespace A158743

/-- `A085959(A085959((n+1)²)-1)` -/
def P6048239205559726875.Spec : Prop :=
  ∀ n, P6048239205559726875.a n = A158743 (n + 1)

end A158743

/-!
# A158744: a(n) = 74*n^2 - 1.

The programs for A158744, the canonical program `A158744.P8667955548904263020` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158744 has offset 1).

The definition of A158744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `74*(n+1)²-1` (program `A158744.P8667955548904263020`, by `A158744.P8667955548904263020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158744.P8667955548904263020

`74*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158744

/-- `74*(n+1)²-1` -/
def P8667955548904263020.Spec : Prop :=
  ∀ n, P8667955548904263020.a n = A158744 (n + 1)

theorem P8667955548904263020.correct : P8667955548904263020.Spec := by
  intro n
  simp only [A158744, Nat.add_sub_cancel]

end A158744

/-! ## A158744.P13238608649356973388

`-or(1, -74*(n+1)²)`
-/

namespace A158744.P13238608649356973388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(74 * (n + 1) ^ 2 : ℤ))

end

end A158744.P13238608649356973388

namespace A158744

/-- `-or(1, -74*(n+1)²)` -/
def P13238608649356973388.Spec : Prop :=
  ∀ n, P13238608649356973388.a n = A158744 (n + 1)

end A158744

/-! ## A158744.P14544316601800063598

`-xor(1, -74*(n+1)²)`
-/

namespace A158744.P14544316601800063598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(74 * (n + 1) ^ 2 : ℤ))

end

end A158744.P14544316601800063598

namespace A158744

/-- `-xor(1, -74*(n+1)²)` -/
def P14544316601800063598.Spec : Prop :=
  ∀ n, P14544316601800063598.a n = A158744 (n + 1)

end A158744

/-! ## A158744.P11718877740892597224

`abs(2-A158742(n+1))`
-/

namespace A158744.P11718877740892597224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158742 (n + 1)|

end

end A158744.P11718877740892597224

namespace A158744

/-- `abs(2-A158742(n+1))` -/
def P11718877740892597224.Spec : Prop :=
  ∀ n, P11718877740892597224.a n = A158744 (n + 1)

end A158744

/-! ## A158744.P1178223094293077703

`lcm(2-A158742(n+1), A062157(n+1))`
-/

namespace A158744.P1178223094293077703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A158742 (n + 1)) (A062157 (n + 1))

end

end A158744.P1178223094293077703

namespace A158744

/-- `lcm(2-A158742(n+1), A062157(n+1))` -/
def P1178223094293077703.Spec : Prop :=
  ∀ n, (P1178223094293077703.a n : ℤ) = A158744 (n + 1)

end A158744

/-! ## A158744.P2104133727588362635

`(A158742(n+1)-2)/(A000027(n+1)-n)`
-/

namespace A158744.P2104133727588362635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158742 (n + 1) - 2 : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A158744.P2104133727588362635

namespace A158744

/-- `(A158742(n+1)-2)/(A000027(n+1)-n)` -/
def P2104133727588362635.Spec : Prop :=
  ∀ n, P2104133727588362635.a n = (A158744 (n + 1) : ℚ)

end A158744

/-! ## A158744.P1042754649951821725

`(A158742(n+1)-2)/A213709(Δ[A084558(n)])`
-/

namespace A158744.P1042754649951821725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158742 (n + 1) - 2 : ℚ) / (A213709 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A158744.P1042754649951821725

namespace A158744

/-- `(A158742(n+1)-2)/A213709(Δ[A084558(n)])` -/
def P1042754649951821725.Spec : Prop :=
  ∀ n, P1042754649951821725.a n = (A158744 (n + 1) : ℚ)

end A158744

/-! ## A158744.P401917946089766148

`gcd(2-A158742(n+1), A008683(A005879(n)))`
-/

namespace A158744.P401917946089766148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A158742 (n + 1)) (A008683 (A005879 n).toNat)

end

end A158744.P401917946089766148

namespace A158744

/-- `gcd(2-A158742(n+1), A008683(A005879(n)))` -/
def P401917946089766148.Spec : Prop :=
  ∀ n, (P401917946089766148.a n : ℤ) = A158744 (n + 1)

end A158744

/-! ## A158744.P7047930833204663833

`(2-A158742(n+1))*A062157(A008864(n+2))`
-/

namespace A158744.P7047930833204663833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A158742 (n + 1)) * A062157 (A008864 (n + 2)).toNat

end

end A158744.P7047930833204663833

namespace A158744

/-- `(2-A158742(n+1))*A062157(A008864(n+2))` -/
def P7047930833204663833.Spec : Prop :=
  ∀ n, P7047930833204663833.a n = A158744 (n + 1)

end A158744

/-!
# A158745: a(3n)=A130750(n). a(3n+1)=A130752(n). a(3n+2)=A130755(n).

The programs for A158745, the canonical program `A158745.P4186804723638573437` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158745 has offset 0).

The definition of A158745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158745.P4186804723638573437

`3*a(n-3)-3*a(n-6)+2*a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3, a(4)=5, a(5)=4, a(6)=8, a(7)=9, a(8)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158745

/-- `3*a(n-3)-3*a(n-6)+2*a(n-9)` -/
def P4186804723638573437.Spec : Prop :=
  ∀ n, P4186804723638573437.a n = A158745 n

theorem P4186804723638573437.correct : P4186804723638573437.Spec := by
  intro n
  simp only [A158745]

end A158745

/-! ## A158745.P12809619485913886705

`A173862(n+1)+A138635(n+3)+A138635(n)`
-/

namespace A158745.P12809619485913886705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (n + 1) + (A138635 (n + 3) + A138635 n)

end

end A158745.P12809619485913886705

namespace A158745

/-- `A173862(n+1)+A138635(n+3)+A138635(n)` -/
def P12809619485913886705.Spec : Prop :=
  ∀ n, P12809619485913886705.a n = A158745 n

end A158745

/-!
# A158746: Numbers n such that 30*n + 13 is prime.

The programs for A158746, the canonical program `A158746.P16753522694152937982` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158746 has offset 1).

The definition of A158746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132233, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158746.P16753522694152937982

`floor(A132233(n+1)/30)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158746

/-- `floor(A132233(n+1)/30)` -/
def P16753522694152937982.Spec : Prop :=
  ∀ n, P16753522694152937982.a n = A158746 (n + 1)

theorem P16753522694152937982.correct : P16753522694152937982.Spec := by
  intro n
  simp only [A158746, Nat.add_sub_cancel]

end A158746

/-! ## A158746.P13150045651521189233

`eq[3, A096915(3*n+1)]`
-/

namespace A158746.P13150045651521189233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P13150045651521189233

namespace A158746

/-- `eq[3, A096915(3*n+1)]` -/
def P13150045651521189233.Spec : Prop :=
  ∀ n, (P13150045651521189233.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P10505640006931085264

`lt[A096915(A016777(n)), 4]`
-/

namespace A158746.P10505640006931085264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A016777 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158746.P10505640006931085264

namespace A158746

/-- `lt[A096915(A016777(n)), 4]` -/
def P10505640006931085264.Spec : Prop :=
  ∀ n, (P10505640006931085264.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P12828011593176902539

`eq[1, A001222(30*n+13)]`
-/

namespace A158746.P12828011593176902539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P12828011593176902539

namespace A158746

/-- `eq[1, A001222(30*n+13)]` -/
def P12828011593176902539.Spec : Prop :=
  ∀ n, (P12828011593176902539.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P2545914324236476571

`eq[2, A000005(30*n+13)]`
-/

namespace A158746.P2545914324236476571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P2545914324236476571

namespace A158746

/-- `eq[2, A000005(30*n+13)]` -/
def P2545914324236476571.Spec : Prop :=
  ∀ n, (P2545914324236476571.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P14214297536017055578

`lt[A000005(3*(10*n+4)+1), 3]`
-/

namespace A158746.P14214297536017055578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (10 * n + 4) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158746.P14214297536017055578

namespace A158746

/-- `lt[A000005(3*(10*n+4)+1), 3]` -/
def P14214297536017055578.Spec : Prop :=
  ∀ n, (P14214297536017055578.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P15463448558328796626

`eq[30*n+13, A006530(30*n+13)]`
-/

namespace A158746.P15463448558328796626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (30 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P15463448558328796626

namespace A158746

/-- `eq[30*n+13, A006530(30*n+13)]` -/
def P15463448558328796626.Spec : Prop :=
  ∀ n, (P15463448558328796626.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P7859066852434525501

`eq[30*n+13, A020639(30*n+13)]`
-/

namespace A158746.P7859066852434525501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (30 * n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P7859066852434525501

namespace A158746

/-- `eq[30*n+13, A020639(30*n+13)]` -/
def P7859066852434525501.Spec : Prop :=
  ∀ n, (P7859066852434525501.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P116266951198702443

`eq[1, A075743(A017317(n))]`
-/

namespace A158746.P116266951198702443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P116266951198702443

namespace A158746

/-- `eq[1, A075743(A017317(n))]` -/
def P116266951198702443.Spec : Prop :=
  ∀ n, (P116266951198702443.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P9957863211448614401

`eq[1, A075743(A017293(n)+2)]`
-/

namespace A158746.P9957863211448614401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017293 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P9957863211448614401

namespace A158746

/-- `eq[1, A075743(A017293(n)+2)]` -/
def P9957863211448614401.Spec : Prop :=
  ∀ n, (P9957863211448614401.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P3880576178646309444

`eq[1, A075743(A017329(n)-1)]`
-/

namespace A158746.P3880576178646309444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017329 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P3880576178646309444

namespace A158746

/-- `eq[1, A075743(A017329(n)-1)]` -/
def P3880576178646309444.Spec : Prop :=
  ∀ n, (P3880576178646309444.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P16141362504169740571

`eq[1, A075743(A017341(n)-2)]`
-/

namespace A158746.P16141362504169740571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017341 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158746.P16141362504169740571

namespace A158746

/-- `eq[1, A075743(A017341(n)-2)]` -/
def P16141362504169740571.Spec : Prop :=
  ∀ n, (P16141362504169740571.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P12230140997767678301

`lt[A001222(A267985(2*(n+1))), 2]`
-/

namespace A158746.P12230140997767678301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A267985 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158746.P12230140997767678301

namespace A158746

/-- `lt[A001222(A267985(2*(n+1))), 2]` -/
def P12230140997767678301.Spec : Prop :=
  ∀ n, (P12230140997767678301.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P5418859961622408042

`lt[A016969(n), A020639(A082369(n+1))]`
-/

namespace A158746.P5418859961622408042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158746.P5418859961622408042

namespace A158746

/-- `lt[A016969(n), A020639(A082369(n+1))]` -/
def P5418859961622408042.Spec : Prop :=
  ∀ n, (P5418859961622408042.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P6266097741892836871

`lt[A128471(n), A000010(A082369(n+1))]`
-/

namespace A158746.P6266097741892836871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158746.P6266097741892836871

namespace A158746

/-- `lt[A128471(n), A000010(A082369(n+1))]` -/
def P6266097741892836871.Spec : Prop :=
  ∀ n, (P6266097741892836871.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P15935452383363586096

`lt[A039956(n+1), A020639(A082369(n+1))]`
-/

namespace A158746.P15935452383363586096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158746.P15935452383363586096

namespace A158746

/-- `lt[A039956(n+1), A020639(A082369(n+1))]` -/
def P15935452383363586096.Spec : Prop :=
  ∀ n, (P15935452383363586096.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P13674355362207981121

`lt[A055664(n+1), A006530(A082369(n+1))]`
-/

namespace A158746.P13674355362207981121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158746.P13674355362207981121

namespace A158746

/-- `lt[A055664(n+1), A006530(A082369(n+1))]` -/
def P13674355362207981121.Spec : Prop :=
  ∀ n, (P13674355362207981121.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P6229373271028026990

`lt[A058972(n+1), A020639(A082369(n+1))]`
-/

namespace A158746.P6229373271028026990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158746.P6229373271028026990

namespace A158746

/-- `lt[A058972(n+1), A020639(A082369(n+1))]` -/
def P6229373271028026990.Spec : Prop :=
  ∀ n, (P6229373271028026990.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P6873774260797323240

`lt[A082376(n+1), A006530(A082369(n+1))]`
-/

namespace A158746.P6873774260797323240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158746.P6873774260797323240

namespace A158746

/-- `lt[A082376(n+1), A006530(A082369(n+1))]` -/
def P6873774260797323240.Spec : Prop :=
  ∀ n, (P6873774260797323240.a n : ℤ) = A158746 (n + 1)

end A158746

/-! ## A158746.P146058007407672397

`lt[A091727(n+1), A006530(A082369(n+1))]`
-/

namespace A158746.P146058007407672397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158746.P146058007407672397

namespace A158746

/-- `lt[A091727(n+1), A006530(A082369(n+1))]` -/
def P146058007407672397.Spec : Prop :=
  ∀ n, (P146058007407672397.a n : ℤ) = A158746 (n + 1)

end A158746

/-!
# A158747: Triangle read by rows: T(n,m)=prime( 1+prime(n+1)-prime(m+1) ).

The programs for A158747, the canonical program `A158747.P1474725733549586908` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158747 has offset 0).

The definition of A158747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158747.P1474725733549586908

`A000040(A086800(n+1)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A158747

/-- `A000040(A086800(n+1)+1)` -/
def P1474725733549586908.Spec : Prop :=
  ∀ n, P1474725733549586908.a n = A158747 n

theorem P1474725733549586908.correct : P1474725733549586908.Spec := by
  intro n
  simp only [A158747]

end A158747

/-! ## A158747.P10380359013943613537

`A008578(A086800(n+1)+2)`
-/

namespace A158747.P10380359013943613537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A086800 (n + 1) + 2).toNat

end

end A158747.P10380359013943613537

namespace A158747

/-- `A008578(A086800(n+1)+2)` -/
def P10380359013943613537.Spec : Prop :=
  ∀ n, P10380359013943613537.a n = A158747 n

end A158747

/-! ## A158747.P16322595262337101096

`A006093(A086800(n+1)+1)+1`
-/

namespace A158747.P16322595262337101096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A086800 (n + 1) + 1).toNat + 1

end

end A158747.P16322595262337101096

namespace A158747

/-- `A006093(A086800(n+1)+1)+1` -/
def P16322595262337101096.Spec : Prop :=
  ∀ n, P16322595262337101096.a n = A158747 n

end A158747

/-! ## A158747.P10146214744346636012

`A000040(A134543(n+1))%A141029(3*n+2)`
-/

namespace A158747.P10146214744346636012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A134543 (n + 1)).toNat) (A141029 (3 * n + 2))

end

end A158747.P10146214744346636012

namespace A158747

/-- `A000040(A134543(n+1))%A141029(3*n+2)` -/
def P10146214744346636012.Spec : Prop :=
  ∀ n, P10146214744346636012.a n = A158747 n

end A158747

/-!
# A158748: Triangle, read by rows, T(n, k) = (prime(n+1) - prime(k+1))! - (n! - k!).

The programs for A158748, there is no canonical definition to state claims against.
-/

/-! ## A158748.P13356137021270660625

`A191001(2^and(n, 2*n))`
-/

namespace A158748.P13356137021270660625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191001 (2 ^ Nat.land n (2 * n))

end

end A158748.P13356137021270660625

/-! ## A158748.P2293537825607580967

`A079933(n^and(n, floor(n/2)))`
-/

namespace A158748.P2293537825607580967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079933 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A158748.P2293537825607580967

/-! ## A158748.P2190920583643356124

`A007306(or(1, n)^and(n, 2*n))`
-/

namespace A158748.P2190920583643356124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Nat.lor 1 n ^ Nat.land n (2 * n))

end

end A158748.P2190920583643356124

/-!
# A158749: a(n) = n*9^n.

The programs for A158749, the canonical program `A158749.P15906001908003361684` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158749 has offset 0).

The definition of A158749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*9^n` (program `A158749.P15906001908003361684`, by `A158749.P15906001908003361684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158749.P15906001908003361684

`n*9^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158749

/-- `n*9^n` -/
def P15906001908003361684.Spec : Prop :=
  ∀ n, (P15906001908003361684.a n : ℤ) = A158749 n

theorem P15906001908003361684.correct : P15906001908003361684.Spec := by
  intro n
  simp only [A158749]

end A158749

/-!
# A158751: a(n) = Hermite(n, 22).

The programs for A158751, the canonical program `A158751.P6163552405535784402` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158751 has offset 0).

The definition of A158751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158751.P6163552405535784402

`44*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=44`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158751

/-- `44*a(n-1)-2*(n-1)*a(n-2)` -/
def P6163552405535784402.Spec : Prop :=
  ∀ n, P6163552405535784402.a n = A158751 n

theorem P6163552405535784402.correct : P6163552405535784402.Spec := by
  intro n
  simp only [A158751]

end A158751

/-!
# A158752: a(n) = Hermite(n, 23).

The programs for A158752, the canonical program `A158752.P13112328786432534765` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158752 has offset 0).

The definition of A158752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158752.P13112328786432534765

`46*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=46`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158752

/-- `46*a(n-1)-2*(n-1)*a(n-2)` -/
def P13112328786432534765.Spec : Prop :=
  ∀ n, P13112328786432534765.a n = A158752 n

theorem P13112328786432534765.correct : P13112328786432534765.Spec := by
  intro n
  simp only [A158752]

end A158752

/-!
# A158753: Triangle T(n, k) = A000032(2*(n-k) + 1), read by rows.

The programs for A158753, the canonical program `A158753.P15673460882241045828` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158753 has offset 2).

The definition of A158753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158753.P15673460882241045828

`A002878(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A158753

/-- `A002878(A025581(n))` -/
def P15673460882241045828.Spec : Prop :=
  ∀ n, P15673460882241045828.a n = A158753 (n + 2)

theorem P15673460882241045828.correct : P15673460882241045828.Spec := by
  intro n
  simp only [A158753, Nat.add_sub_cancel]

end A158753

/-! ## A158753.P14335982980760492874

`A000032(A099375(n))`
-/

namespace A158753.P14335982980760492874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A099375 n).toNat

end

end A158753.P14335982980760492874

namespace A158753

/-- `A000032(A099375(n))` -/
def P14335982980760492874.Spec : Prop :=
  ∀ n, P14335982980760492874.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P5050121157219455174

`A075193(2*A025581(n))`
-/

namespace A158753.P5050121157219455174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (2 * A025581 n).toNat

end

end A158753.P5050121157219455174

namespace A158753

/-- `A075193(2*A025581(n))` -/
def P5050121157219455174.Spec : Prop :=
  ∀ n, P5050121157219455174.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P2736497085939120575

`A000032(sqrt(A237587(n+1)))`
-/

namespace A158753.P2736497085939120575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.sqrt (A237587 (n + 1) : ℝ))).toNat

end

end A158753.P2736497085939120575

namespace A158753

/-- `A000032(sqrt(A237587(n+1)))` -/
def P2736497085939120575.Spec : Prop :=
  ∀ n, P2736497085939120575.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P1594200922418189227

`A002878(A004736(n+1)-1)`
-/

namespace A158753.P1594200922418189227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (A004736 (n + 1) - 1).toNat

end

end A158753.P1594200922418189227

namespace A158753

/-- `A002878(A004736(n+1)-1)` -/
def P1594200922418189227.Spec : Prop :=
  ∀ n, P1594200922418189227.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P11645926457690946319

`A000032(2*A025581(n)+1)`
-/

namespace A158753.P11645926457690946319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * A025581 n + 1).toNat

end

end A158753.P11645926457690946319

namespace A158753

/-- `A000032(2*A025581(n)+1)` -/
def P11645926457690946319.Spec : Prop :=
  ∀ n, P11645926457690946319.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P12024170263570962476

`A000204(2*A025581(n)+1)`
-/

namespace A158753.P12024170263570962476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * A025581 n + 1).toNat

end

end A158753.P12024170263570962476

namespace A158753

/-- `A000204(2*A025581(n)+1)` -/
def P12024170263570962476.Spec : Prop :=
  ∀ n, P12024170263570962476.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P17139318096657006067

`A302126(2*A099375(n)+1)`
-/

namespace A158753.P17139318096657006067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A099375 n + 1).toNat

end

end A158753.P17139318096657006067

namespace A158753

/-- `A302126(2*A099375(n)+1)` -/
def P17139318096657006067.Spec : Prop :=
  ∀ n, P17139318096657006067.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P10637047925527204088

`A082587(2*A099375(n)-1)`
-/

namespace A158753.P10637047925527204088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (2 * A099375 n - 1).toNat

end

end A158753.P10637047925527204088

namespace A158753

/-- `A082587(2*A099375(n)-1)` -/
def P10637047925527204088.Spec : Prop :=
  ∀ n, P10637047925527204088.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P7491790799175848694

`A022112(2*A025581(n))/2`
-/

namespace A158753.P7491790799175848694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 (2 * A025581 n).toNat : ℚ) / 2

end

end A158753.P7491790799175848694

namespace A158753

/-- `A022112(2*A025581(n))/2` -/
def P7491790799175848694.Spec : Prop :=
  ∀ n, P7491790799175848694.a n = (A158753 (n + 2) : ℚ)

end A158753

/-! ## A158753.P9925979649962837123

`A000032(log2(A130321(n)²)+1)`
-/

namespace A158753.P9925979649962837123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n ^ 2 : ℝ) + 1)).toNat

end

end A158753.P9925979649962837123

namespace A158753

/-- `A000032(log2(A130321(n)²)+1)` -/
def P9925979649962837123.Spec : Prop :=
  ∀ n, P9925979649962837123.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P15064330809975386232

`A000032(log2(2*A130321(n)²))`
-/

namespace A158753.P15064330809975386232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A130321 n ^ 2 : ℝ))).toNat

end

end A158753.P15064330809975386232

namespace A158753

/-- `A000032(log2(2*A130321(n)²))` -/
def P15064330809975386232.Spec : Prop :=
  ∀ n, P15064330809975386232.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P3438245923000787730

`A000032(2*A004736(n+1)-1)`
-/

namespace A158753.P3438245923000787730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * A004736 (n + 1) - 1).toNat

end

end A158753.P3438245923000787730

namespace A158753

/-- `A000032(2*A004736(n+1)-1)` -/
def P3438245923000787730.Spec : Prop :=
  ∀ n, P3438245923000787730.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P6708236824054847488

`A000032(log2(A090988(n+1)²)-1)`
-/

namespace A158753.P6708236824054847488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) ^ 2 : ℝ) - 1)).toNat

end

end A158753.P6708236824054847488

namespace A158753

/-- `A000032(log2(A090988(n+1)²)-1)` -/
def P6708236824054847488.Spec : Prop :=
  ∀ n, P6708236824054847488.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P5196938273336541969

`A000032(log2(A090988(n+1)²/2))`
-/

namespace A158753.P5196938273336541969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 ((A090988 (n + 1) ^ 2 : ℚ) / 2 : ℝ))).toNat

end

end A158753.P5196938273336541969

namespace A158753

/-- `A000032(log2(A090988(n+1)²/2))` -/
def P5196938273336541969.Spec : Prop :=
  ∀ n, P5196938273336541969.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P15235368813510336675

`A000032(sqrt(4*A095832(n+1)+1))`
-/

namespace A158753.P15235368813510336675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.sqrt (4 * A095832 (n + 1) + 1 : ℝ))).toNat

end

end A158753.P15235368813510336675

namespace A158753

/-- `A000032(sqrt(4*A095832(n+1)+1))` -/
def P15235368813510336675.Spec : Prop :=
  ∀ n, P15235368813510336675.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P12534090472201126621

`A000032(A005843(A025581(n))+1)`
-/

namespace A158753.P12534090472201126621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A005843 (A025581 n).toNat + 1).toNat

end

end A158753.P12534090472201126621

namespace A158753

/-- `A000032(A005843(A025581(n))+1)` -/
def P12534090472201126621.Spec : Prop :=
  ∀ n, P12534090472201126621.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P10478617372884281913

`A000032(A004442(2*A025581(n)))`
-/

namespace A158753.P10478617372884281913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A004442 (2 * A025581 n).toNat).toNat

end

end A158753.P10478617372884281913

namespace A158753

/-- `A000032(A004442(2*A025581(n)))` -/
def P10478617372884281913.Spec : Prop :=
  ∀ n, P10478617372884281913.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P3172898406271532574

`A245962(A055461(n+1))`
-/

namespace A158753.P3172898406271532574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245962 (A055461 (n + 1)).toNat

end

end A158753.P3172898406271532574

namespace A158753

/-- `A245962(A055461(n+1))` -/
def P3172898406271532574.Spec : Prop :=
  ∀ n, P3172898406271532574.a n = A158753 (n + 2)

end A158753

/-! ## A158753.P11796822157030396380

`A104764(A185868(n+1))`
-/

namespace A158753.P11796822157030396380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104764 (A185868 (n + 1)).toNat

end

end A158753.P11796822157030396380

namespace A158753

/-- `A104764(A185868(n+1))` -/
def P11796822157030396380.Spec : Prop :=
  ∀ n, P11796822157030396380.a n = A158753 (n + 2)

end A158753

/-!
# A158754: Twin prime numbers that can be written as the sum of two or more consecutive twin prime numbers.

The programs for A158754, there is no canonical definition to state claims against.
-/

/-! ## A158754.P15520650735545696831

`A326623(eq[6, A272977(n+1)])`
-/

namespace A158754.P15520650735545696831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A158754.P15520650735545696831

/-!
# A158756: Removed primes according to algorithm of A156284.

The programs for A158756, there is no canonical definition to state claims against.
-/

/-! ## A158756.P9101615201421636370

`∩[A086081(n+1), A274231(n+1)]`
-/

namespace A158756.P9101615201421636370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158756.P9101615201421636370

/-!
# A158757: Expansion of e.g.f. exp(t*x)/(1 - x^2/t^2 - t^3* x^3).

The programs for A158757, there is no canonical definition to state claims against.
-/

/-! ## A158757.P1411216104604826899

`A158785(∑[char[A257088(n)]])`
-/

namespace A158757.P1411216104604826899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158757.P1411216104604826899

/-! ## A158757.P8358689185570090284

`A158785(floor(A007494(n)/2))`
-/

namespace A158757.P8358689185570090284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 ⌊(A007494 n : ℚ) / 2⌋.toNat

end

end A158757.P8358689185570090284

/-! ## A158757.P7035613880955477656

`A158785(2*n-A047207(n+1))`
-/

namespace A158757.P7035613880955477656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 ((2 * n : ℤ) - A047207 (n + 1)).toNat

end

end A158757.P7035613880955477656

/-! ## A158757.P7700714618105219250

`A158785(n-A047207(n+1)+n)`
-/

namespace A158757.P7700714618105219250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 ((n : ℤ) - A047207 (n + 1) + (n : ℤ)).toNat

end

end A158757.P7700714618105219250

/-! ## A158757.P59952558753250505

`A158785(A110654(n)+A002265(n))`
-/

namespace A158757.P59952558753250505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 (A110654 n + A002265 n).toNat

end

end A158757.P59952558753250505

/-! ## A158757.P11812398484658825340

`A158785(A047201(n+1)-A008619(n))`
-/

namespace A158757.P11812398484658825340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158785 (A047201 (n + 1) - A008619 n).toNat

end

end A158757.P11812398484658825340

/-!
# A158758: Politest numbers.

The programs for A158758, there is no canonical definition to state claims against.
-/

/-! ## A158758.P17269253730648937869

`lt[A006530(A330810(n+2)), A330789(n+1)]`
-/

namespace A158758.P17269253730648937869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A330810 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158758.P17269253730648937869

/-! ## A158758.P13812992085732915099

`∑[A208645(A054238(A011782(n)))]`
-/

namespace A158758.P13812992085732915099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A054238 (A011782 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158758.P13812992085732915099

/-! ## A158758.P2294591417048406854

`lt[A010673(A244490(n)), A181391(n+1)]`
-/

namespace A158758.P2294591417048406854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A244490 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158758.P2294591417048406854

/-! ## A158758.P5428218456311126184

`lt[A200780(n+1), A001222(A200770(n+1))]`
-/

namespace A158758.P5428218456311126184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A200770 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158758.P5428218456311126184

/-!
# A158759: Removed primes according to algorithm of A156284 beginning with m=4.

The programs for A158759, there is no canonical definition to state claims against.
-/

/-! ## A158759.P3247693680036236339

`p?[A047496(2*n+1)+A008683(A246977(n+3))]`
-/

namespace A158759.P3247693680036236339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047496 (2 * n + 1) + A008683 (A246977 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158759.P3247693680036236339

/-!
# A158761: a(n)=a(n-2)+64*a(n-3) with a(0)=1, a(1)=4, a(3)=16.

The programs for A158761, the canonical program `A158761.P17702783369541970983` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158761 has offset 0).

The definition of A158761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+64*a(n-3)` (program `A158761.P17702783369541970983`, by `A158761.P17702783369541970983.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158761.P17702783369541970983

`a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158761

/-- `a(n-2)+64*a(n-3)` -/
def P17702783369541970983.Spec : Prop :=
  ∀ n, (P17702783369541970983.a n : ℤ) = A158761 n

theorem P17702783369541970983.correct : P17702783369541970983.Spec := by
  intro n
  simp only [A158761]

end A158761

/-! ## A158761.P6311899830140794022

`A361646(A158784(n))`
-/

namespace A158761.P6311899830140794022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361646 (A158784 n).toNat

end

end A158761.P6311899830140794022

namespace A158761

/-- `A361646(A158784(n))` -/
def P6311899830140794022.Spec : Prop :=
  ∀ n, P6311899830140794022.a n = A158761 n

end A158761

/-!
# A158762: Expansion of (1+9*x+80*x^2)/(1-x^2-729*x^3).

The programs for A158762, the canonical program `A158762.P4963064152022810341` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158762 has offset 0).

The definition of A158762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158762.P4963064152022810341

`a(n-2)+729*a(n-3)` with `a(0)=1, a(1)=9, a(2)=81`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158762

/-- `a(n-2)+729*a(n-3)` -/
def P4963064152022810341.Spec : Prop :=
  ∀ n, (P4963064152022810341.a n : ℤ) = A158762 n

theorem P4963064152022810341.correct : P4963064152022810341.Spec := by
  intro n
  simp only [A158762]

end A158762

/-! ## A158762.P679234893807542414

`A037463(A158761(n))`
-/

namespace A158762.P679234893807542414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A158761 n).toNat

end

end A158762.P679234893807542414

namespace A158762

/-- `A037463(A158761(n))` -/
def P679234893807542414.Spec : Prop :=
  ∀ n, P679234893807542414.a n = A158762 n

end A158762

/-!
# A158764: a(n) = 38*(38*n^2 - 1).

The programs for A158764, the canonical program `A158764.P7495768980401781889` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158764 has offset 1).

The definition of A158764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38*(38*(n+1)²-1)` (program `A158764.P7495768980401781889`, by `A158764.P7495768980401781889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158764.P7495768980401781889

`38*(38*(n+1)²-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158764

/-- `38*(38*(n+1)²-1)` -/
def P7495768980401781889.Spec : Prop :=
  ∀ n, P7495768980401781889.a n = A158764 (n + 1)

theorem P7495768980401781889.correct : P7495768980401781889.Spec := by
  intro n
  simp only [A158764, Nat.add_sub_cancel]

end A158764

/-! ## A158764.P6914113343321572149

`record[(38*(1-n))²-38]`
-/

namespace A158764.P6914113343321572149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (38 * (1 - (n : ℤ))) ^ 2 - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158764.P6914113343321572149

namespace A158764

/-- `record[(38*(1-n))²-38]` -/
def P6914113343321572149.Spec : Prop :=
  ∀ n, P6914113343321572149.a n = A158764 (n + 1)

end A158764

/-! ## A158764.P4807976287441907452

`floor((A158765(n+1)/(2*(n+1)))²)`
-/

namespace A158764.P4807976287441907452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A158765 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)) ^ 2⌋

end

end A158764.P4807976287441907452

namespace A158764

/-- `floor((A158765(n+1)/(2*(n+1)))²)` -/
def P4807976287441907452.Spec : Prop :=
  ∀ n, P4807976287441907452.a n = A158764 (n + 1)

end A158764

/-!
# A158765: a(n) = 76*n^2 - 1.

The programs for A158765, the canonical program `A158765.P1575073757300678643` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158765 has offset 1).

The definition of A158765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `76*(n+1)²-1` (program `A158765.P1575073757300678643`, by `A158765.P1575073757300678643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158765.P1575073757300678643

`76*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158765

/-- `76*(n+1)²-1` -/
def P1575073757300678643.Spec : Prop :=
  ∀ n, P1575073757300678643.a n = A158765 (n + 1)

theorem P1575073757300678643.correct : P1575073757300678643.Spec := by
  intro n
  simp only [A158765, Nat.add_sub_cancel]

end A158765

/-! ## A158765.P7506950315854203786

`abs(2-A158767(n+1))`
-/

namespace A158765.P7506950315854203786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158767 (n + 1)|

end

end A158765.P7506950315854203786

namespace A158765

/-- `abs(2-A158767(n+1))` -/
def P7506950315854203786.Spec : Prop :=
  ∀ n, P7506950315854203786.a n = A158765 (n + 1)

end A158765

/-! ## A158765.P18297677205980027329

`or(1, 2*A158596(n+1))`
-/

namespace A158765.P18297677205980027329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A158596 (n + 1))

end

end A158765.P18297677205980027329

namespace A158765

/-- `or(1, 2*A158596(n+1))` -/
def P18297677205980027329.Spec : Prop :=
  ∀ n, P18297677205980027329.a n = A158765 (n + 1)

end A158765

/-! ## A158765.P3557946866349191785

`A158743(n+1)%(A158735(n+1)+A158730(n+1))`
-/

namespace A158765.P3557946866349191785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158743 (n + 1)) (A158735 (n + 1) + A158730 (n + 1))

end

end A158765.P3557946866349191785

namespace A158765

/-- `A158743(n+1)%(A158735(n+1)+A158730(n+1))` -/
def P3557946866349191785.Spec : Prop :=
  ∀ n, P3557946866349191785.a n = A158765 (n + 1)

end A158765

/-! ## A158765.P6201874592459023231

`abs(A057428(n+1)+76*(n+1)²)`
-/

namespace A158765.P6201874592459023231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 (n + 1) + (76 * (n + 1) ^ 2 : ℤ)|

end

end A158765.P6201874592459023231

namespace A158765

/-- `abs(A057428(n+1)+76*(n+1)²)` -/
def P6201874592459023231.Spec : Prop :=
  ∀ n, P6201874592459023231.a n = A158765 (n + 1)

end A158765

/-!
# A158766: a(n) = 1444*n^2 + 38.

The programs for A158766, the canonical program `A158766.P1760928194827730081` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158766 has offset 0).

The definition of A158766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158766.P1760928194827730081

`38*A158593(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158766

/-- `38*A158593(n)` -/
def P1760928194827730081.Spec : Prop :=
  ∀ n, P1760928194827730081.a n = A158766 n

theorem P1760928194827730081.correct : P1760928194827730081.Spec := by
  intro n
  simp only [A158766]

end A158766

/-! ## A158766.P16580624263945229679

`(38*n)²+38`
-/

namespace A158766.P16580624263945229679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (38 * n) ^ 2 + 38

end

end A158766.P16580624263945229679

namespace A158766

/-- `(38*n)²+38` -/
def P16580624263945229679.Spec : Prop :=
  ∀ n, (P16580624263945229679.a n : ℤ) = A158766 n

end A158766

/-! ## A158766.P13809561954360579405

`38*or(1, 38*n²)`
-/

namespace A158766.P13809561954360579405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * Nat.lor 1 (38 * n ^ 2)

end

end A158766.P13809561954360579405

namespace A158766

/-- `38*or(1, 38*n²)` -/
def P13809561954360579405.Spec : Prop :=
  ∀ n, (P13809561954360579405.a n : ℤ) = A158766 n

end A158766

/-! ## A158766.P2691744216839799474

`38*xor(1, 38*n²)`
-/

namespace A158766.P2691744216839799474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * Nat.xor 1 (38 * n ^ 2)

end

end A158766.P2691744216839799474

namespace A158766

/-- `38*xor(1, 38*n²)` -/
def P2691744216839799474.Spec : Prop :=
  ∀ n, (P2691744216839799474.a n : ℤ) = A158766 n

end A158766

/-! ## A158766.P15175941198563597785

`38*(38*A000290(n)+1)`
-/

namespace A158766.P15175941198563597785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  38 * (38 * A000290 n + 1)

end

end A158766.P15175941198563597785

namespace A158766

/-- `38*(38*A000290(n)+1)` -/
def P15175941198563597785.Spec : Prop :=
  ∀ n, P15175941198563597785.a n = A158766 n

end A158766

/-! ## A158766.P6707648545361695895

`2*(A001105(19*n)+19)`
-/

namespace A158766.P6707648545361695895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001105 (19 * n) + 19)

end

end A158766.P6707648545361695895

namespace A158766

/-- `2*(A001105(19*n)+19)` -/
def P6707648545361695895.Spec : Prop :=
  ∀ n, P6707648545361695895.a n = A158766 n

end A158766

/-!
# A158767: a(n) = 76*n^2 + 1.

The programs for A158767, the canonical program `A158767.P12309204623952170228` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158767 has offset 0).

The definition of A158767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `76*n²+1` (program `A158767.P12309204623952170228`, by `A158767.P12309204623952170228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158767.P12309204623952170228

`76*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158767

/-- `76*n²+1` -/
def P12309204623952170228.Spec : Prop :=
  ∀ n, (P12309204623952170228.a n : ℤ) = A158767 n

theorem P12309204623952170228.correct : P12309204623952170228.Spec := by
  intro n
  simp only [A158767]

end A158767

/-! ## A158767.P13607015781452253896

`or(1, 2*n*38*n)`
-/

namespace A158767.P13607015781452253896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n * (38 * n))

end

end A158767.P13607015781452253896

namespace A158767

/-- `or(1, 2*n*38*n)` -/
def P13607015781452253896.Spec : Prop :=
  ∀ n, (P13607015781452253896.a n : ℤ) = A158767 n

end A158767

/-! ## A158767.P4718208357807946509

`(A158768(n)-A158741(n))/2`
-/

namespace A158767.P4718208357807946509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158768 n - A158741 n : ℚ) / 2

end

end A158767.P4718208357807946509

namespace A158767

/-- `(A158768(n)-A158741(n))/2` -/
def P4718208357807946509.Spec : Prop :=
  ∀ n, P4718208357807946509.a n = (A158767 n : ℚ)

end A158767

/-! ## A158767.P15786856570147381462

`xor(2, A158732(n)+A108100(n))`
-/

namespace A158767.P15786856570147381462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A158732 n + A108100 n)

end

end A158767.P15786856570147381462

namespace A158767

/-- `xor(2, A158732(n)+A108100(n))` -/
def P15786856570147381462.Spec : Prop :=
  ∀ n, P15786856570147381462.a n = A158767 n

end A158767

/-! ## A158767.P4309164992395802881

`(19*n*4*n+1)%A002309(n+4)`
-/

namespace A158767.P4309164992395802881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (19 * n * (4 * n) + 1 : ℤ) (A002309 (n + 4))

end

end A158767.P4309164992395802881

namespace A158767

/-- `(19*n*4*n+1)%A002309(n+4)` -/
def P4309164992395802881.Spec : Prop :=
  ∀ n, P4309164992395802881.a n = A158767 n

end A158767

/-! ## A158767.P343916460865058940

`ceil(A158593(2*n)/2)`
-/

namespace A158767.P343916460865058940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158593 (2 * n) : ℚ) / 2⌉

end

end A158767.P343916460865058940

namespace A158767

/-- `ceil(A158593(2*n)/2)` -/
def P343916460865058940.Spec : Prop :=
  ∀ n, P343916460865058940.a n = A158767 n

end A158767

/-! ## A158767.P4684930727214837236

`gcd(round(A158593(2*n)/2), A000038(n))`
-/

namespace A158767.P4684930727214837236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A158593 (2 * n) : ℚ) / 2)) (A000038 n)

end

end A158767.P4684930727214837236

namespace A158767

/-- `gcd(round(A158593(2*n)/2), A000038(n))` -/
def P4684930727214837236.Spec : Prop :=
  ∀ n, (P4684930727214837236.a n : ℤ) = A158767 n

end A158767

/-! ## A158767.P5430322579647888691

`A215144((2*n)²)`
-/

namespace A158767.P5430322579647888691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 ((2 * n) ^ 2)

end

end A158767.P5430322579647888691

namespace A158767

/-- `A215144((2*n)²)` -/
def P5430322579647888691.Spec : Prop :=
  ∀ n, P5430322579647888691.a n = A158767 n

end A158767

/-!
# A158768: a(n) = 1521*n^2 + 39.

The programs for A158768, the canonical program `A158768.P3188208018552564988` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158768 has offset 0).

The definition of A158768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158768.P3188208018552564988

`(39*n)²+39`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158768

/-- `(39*n)²+39` -/
def P3188208018552564988.Spec : Prop :=
  ∀ n, (P3188208018552564988.a n : ℤ) = A158768 n

theorem P3188208018552564988.correct : P3188208018552564988.Spec := by
  intro n
  simp only [A158768]

end A158768

/-! ## A158768.P8302287590654817888

`13*(13*A016766(n)+3)`
-/

namespace A158768.P8302287590654817888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (13 * A016766 n + 3)

end

end A158768.P8302287590654817888

namespace A158768

/-- `13*(13*A016766(n)+3)` -/
def P8302287590654817888.Spec : Prop :=
  ∀ n, P8302287590654817888.a n = A158768 n

end A158768

/-! ## A158768.P7557561281907729016

`39*(39*A000290(n)+1)`
-/

namespace A158768.P7557561281907729016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  39 * (39 * A000290 n + 1)

end

end A158768.P7557561281907729016

namespace A158768

/-- `39*(39*A000290(n)+1)` -/
def P7557561281907729016.Spec : Prop :=
  ∀ n, P7557561281907729016.a n = A158768 n

end A158768

/-! ## A158768.P4413153788813663821

`78*(floor(A058331(n)+A158593(2*n)/2)+1)/4`
-/

namespace A158768.P4413153788813663821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (78 * (⌊(A058331 n : ℚ) + (A158593 (2 * n) : ℚ) / 2⌋ + 1) : ℚ) / 4

end

end A158768.P4413153788813663821

namespace A158768

/-- `78*(floor(A058331(n)+A158593(2*n)/2)+1)/4` -/
def P4413153788813663821.Spec : Prop :=
  ∀ n, P4413153788813663821.a n = (A158768 n : ℚ)

end A158768

/-! ## A158768.P958963969637758964

`78*(∑[A317326(record[A298026(n)])]+1)/4`
-/

namespace A158768.P958963969637758964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((78 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) : ℚ) / 4

end

end A158768.P958963969637758964

namespace A158768

/-- `78*(∑[A317326(record[A298026(n)])]+1)/4` -/
def P958963969637758964.Spec : Prop :=
  ∀ n, P958963969637758964.a n = (A158768 n : ℚ)

end A158768

/-! ## A158768.P1259432700467458233

`78*(∑[record[A266722(39*n)]]+1)/4`
-/

namespace A158768.P1259432700467458233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (39 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((78 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) : ℚ) / 4

end

end A158768.P1259432700467458233

namespace A158768

/-- `78*(∑[record[A266722(39*n)]]+1)/4` -/
def P1259432700467458233.Spec : Prop :=
  ∀ n, P1259432700467458233.a n = (A158768 n : ℚ)

end A158768

/-! ## A158768.P7639577273927809700

`39*A190991(A033428(n))`
-/

namespace A158768.P7639577273927809700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  39 * A190991 (A033428 n).toNat

end

end A158768.P7639577273927809700

namespace A158768

/-- `39*A190991(A033428(n))` -/
def P7639577273927809700.Spec : Prop :=
  ∀ n, P7639577273927809700.a n = A158768 n

end A158768

/-!
# A158769: a(n) = 78*n^2 + 1.

The programs for A158769, the canonical program `A158769.P8246194158660311525` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158769 has offset 0).

The definition of A158769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `78*n²+1` (program `A158769.P8246194158660311525`, by `A158769.P8246194158660311525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158769.P8246194158660311525

`78*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158769

/-- `78*n²+1` -/
def P8246194158660311525.Spec : Prop :=
  ∀ n, (P8246194158660311525.a n : ℤ) = A158769 n

theorem P8246194158660311525.correct : P8246194158660311525.Spec := by
  intro n
  simp only [A158769]

end A158769

/-! ## A158769.P11947251114216084023

`or(1, 78*n²)`
-/

namespace A158769.P11947251114216084023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (78 * n ^ 2)

end

end A158769.P11947251114216084023

namespace A158769

/-- `or(1, 78*n²)` -/
def P11947251114216084023.Spec : Prop :=
  ∀ n, (P11947251114216084023.a n : ℤ) = A158769 n

end A158769

/-! ## A158769.P16442548185957444335

`xor(1, 3*26*n²)`
-/

namespace A158769.P16442548185957444335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * (26 * n ^ 2))

end

end A158769.P16442548185957444335

namespace A158769

/-- `xor(1, 3*26*n²)` -/
def P16442548185957444335.Spec : Prop :=
  ∀ n, (P16442548185957444335.a n : ℤ) = A158769 n

end A158769

/-! ## A158769.P17808743374105279711

`A158768(n)%(A158742(n)+A158741(n))`
-/

namespace A158769.P17808743374105279711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158768 n) (A158742 n + A158741 n)

end

end A158769.P17808743374105279711

namespace A158769

/-- `A158768(n)%(A158742(n)+A158741(n))` -/
def P17808743374105279711.Spec : Prop :=
  ∀ n, P17808743374105279711.a n = A158769 n

end A158769

/-! ## A158769.P242039327567195563

`floor(A058331(n)+A158593(2*n)/2)`
-/

namespace A158769.P242039327567195563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058331 n : ℚ) + (A158593 (2 * n) : ℚ) / 2⌋

end

end A158769.P242039327567195563

namespace A158769

/-- `floor(A058331(n)+A158593(2*n)/2)` -/
def P242039327567195563.Spec : Prop :=
  ∀ n, P242039327567195563.a n = A158769 n

end A158769

/-! ## A158769.P17504724794783227165

`lcm(A061099(2*n+1)-A140681(n), (-1)^n)`
-/

namespace A158769.P17504724794783227165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061099 (2 * n + 1) - A140681 n) ((-1) ^ n)

end

end A158769.P17504724794783227165

namespace A158769

/-- `lcm(A061099(2*n+1)-A140681(n), (-1)^n)` -/
def P17504724794783227165.Spec : Prop :=
  ∀ n, (P17504724794783227165.a n : ℤ) = A158769 n

end A158769

/-! ## A158769.P14097193510621454319

`∑[A317326(record[A298026(n)])]`
-/

namespace A158769.P14097193510621454319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158769.P14097193510621454319

namespace A158769

/-- `∑[A317326(record[A298026(n)])]` -/
def P14097193510621454319.Spec : Prop :=
  ∀ n, P14097193510621454319.a n = A158769 n

end A158769

/-! ## A158769.P9767311997143331300

`∑[record[A298026(A008595(n))]]`
-/

namespace A158769.P9767311997143331300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (A008595 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158769.P9767311997143331300

namespace A158769

/-- `∑[record[A298026(A008595(n))]]` -/
def P9767311997143331300.Spec : Prop :=
  ∀ n, P9767311997143331300.a n = A158769 n

end A158769

/-! ## A158769.P12323828846297831194

`∑[record[A266722(39*n)]]`
-/

namespace A158769.P12323828846297831194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (39 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158769.P12323828846297831194

namespace A158769

/-- `∑[record[A266722(39*n)]]` -/
def P12323828846297831194.Spec : Prop :=
  ∀ n, P12323828846297831194.a n = A158769 n

end A158769

/-!
# A158770: a(n) = 1521*n^2 - 39.

The programs for A158770, the canonical program `A158770.P1523048583039770726` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158770 has offset 1).

The definition of A158770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158770.P1523048583039770726

`(39*(n+1))²-39`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158770

/-- `(39*(n+1))²-39` -/
def P1523048583039770726.Spec : Prop :=
  ∀ n, P1523048583039770726.a n = A158770 (n + 1)

theorem P1523048583039770726.correct : P1523048583039770726.Spec := by
  intro n
  simp only [A158770, Nat.add_sub_cancel]

end A158770

/-! ## A158770.P18082398948529911432

`record[(39*(1-n))²-39]`
-/

namespace A158770.P18082398948529911432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * (1 - (n : ℤ))) ^ 2 - 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158770.P18082398948529911432

namespace A158770

/-- `record[(39*(1-n))²-39]` -/
def P18082398948529911432.Spec : Prop :=
  ∀ n, P18082398948529911432.a n = A158770 (n + 1)

end A158770

/-! ## A158770.P12604016601306703306

`39*(39*A000290(n+1)-1)`
-/

namespace A158770.P12604016601306703306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  39 * (39 * A000290 (n + 1) - 1)

end

end A158770.P12604016601306703306

namespace A158770

/-- `39*(39*A000290(n+1)-1)` -/
def P12604016601306703306.Spec : Prop :=
  ∀ n, P12604016601306703306.a n = A158770 (n + 1)

end A158770

/-! ## A158770.P17665587366210111570

`abs(A158548(3*(n+1))-52)`
-/

namespace A158770.P17665587366210111570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158548 (3 * (n + 1)) - 52|

end

end A158770.P17665587366210111570

namespace A158770

/-- `abs(A158548(3*(n+1))-52)` -/
def P17665587366210111570.Spec : Prop :=
  ∀ n, P17665587366210111570.a n = A158770 (n + 1)

end A158770

/-! ## A158770.P13945000510655996512

`A158768(3*(n+1))%A158768(2*(n+1))`
-/

namespace A158770.P13945000510655996512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158768 (3 * (n + 1))) (A158768 (2 * (n + 1)))

end

end A158770.P13945000510655996512

namespace A158770

/-- `A158768(3*(n+1))%A158768(2*(n+1))` -/
def P13945000510655996512.Spec : Prop :=
  ∀ n, P13945000510655996512.a n = A158770 (n + 1)

end A158770

/-!
# A158771: a(n) = 78*n^2 - 1.

The programs for A158771, the canonical program `A158771.P14754814352839299797` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158771 has offset 1).

The definition of A158771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `78*(n+1)²-1` (program `A158771.P14754814352839299797`, by `A158771.P14754814352839299797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158771.P14754814352839299797

`78*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158771

/-- `78*(n+1)²-1` -/
def P14754814352839299797.Spec : Prop :=
  ∀ n, P14754814352839299797.a n = A158771 (n + 1)

theorem P14754814352839299797.correct : P14754814352839299797.Spec := by
  intro n
  simp only [A158771, Nat.add_sub_cancel]

end A158771

/-! ## A158771.P2437528815091425970

`abs(2-A158769(n+1))`
-/

namespace A158771.P2437528815091425970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158769 (n + 1)|

end

end A158771.P2437528815091425970

namespace A158771

/-- `abs(2-A158769(n+1))` -/
def P2437528815091425970.Spec : Prop :=
  ∀ n, P2437528815091425970.a n = A158771 (n + 1)

end A158771

/-! ## A158771.P12943119220625464751

`ceil(3*A158640(n+1)/2)`
-/

namespace A158771.P12943119220625464751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((A158640 (n + 1) : ℚ) / 2)⌉

end

end A158771.P12943119220625464751

namespace A158771

/-- `ceil(3*A158640(n+1)/2)` -/
def P12943119220625464751.Spec : Prop :=
  ∀ n, P12943119220625464751.a n = A158771 (n + 1)

end A158771

/-! ## A158771.P16804562920740313716

`abs(A158774(n+1)-Δ[A188475(n)])`
-/

namespace A158771.P16804562920740313716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158774 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A158771.P16804562920740313716

namespace A158771

/-- `abs(A158774(n+1)-Δ[A188475(n)])` -/
def P16804562920740313716.Spec : Prop :=
  ∀ n, P16804562920740313716.a n = A158771 (n + 1)

end A158771

/-! ## A158771.P11983620976677066189

`(A158773(n+1)-A158764(n+1))/2`
-/

namespace A158771.P11983620976677066189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158773 (n + 1) - A158764 (n + 1) : ℚ) / 2

end

end A158771.P11983620976677066189

namespace A158771

/-- `(A158773(n+1)-A158764(n+1))/2` -/
def P11983620976677066189.Spec : Prop :=
  ∀ n, P11983620976677066189.a n = (A158771 (n + 1) : ℚ)

end A158771

/-! ## A158771.P15413981944153321464

`Δ[∑[A158769(n)]-A005843(n)]`
-/

namespace A158771.P15413981944153321464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158771.P15413981944153321464

namespace A158771

/-- `Δ[∑[A158769(n)]-A005843(n)]` -/
def P15413981944153321464.Spec : Prop :=
  ∀ n, P15413981944153321464.a n = A158771 (n + 1)

end A158771

/-! ## A158771.P16554641352858765088

`Δ[∑[A158776(n)]-A159938(n+2)]`
-/

namespace A158771.P16554641352858765088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A159938 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158771.P16554641352858765088

namespace A158771

/-- `Δ[∑[A158776(n)]-A159938(n+2)]` -/
def P16554641352858765088.Spec : Prop :=
  ∀ n, P16554641352858765088.a n = A158771 (n + 1)

end A158771

/-! ## A158771.P1113914410540748188

`Δ[A081438(3*n)-A081435(n)]`
-/

namespace A158771.P1113914410540748188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 (3 * n) - A081435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158771.P1113914410540748188

namespace A158771

/-- `Δ[A081438(3*n)-A081435(n)]` -/
def P1113914410540748188.Spec : Prop :=
  ∀ n, P1113914410540748188.a n = A158771 (n + 1)

end A158771

/-!
# A158772: a(n) = A138635(n+18)-A138635(n).

The programs for A158772, the canonical program `A158772.P6138208679307698319` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158772 has offset 0).

The definition of A158772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A138635(n+18)-A138635(n)` (program `A158772.P6138208679307698319`, by `A158772.P6138208679307698319.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158772.P6138208679307698319

`A138635(n+18)-A138635(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158772

/-- `A138635(n+18)-A138635(n)` -/
def P6138208679307698319.Spec : Prop :=
  ∀ n, P6138208679307698319.a n = A158772 n

theorem P6138208679307698319.correct : P6138208679307698319.Spec := by
  intro n
  simp only [A158772]

end A158772

/-! ## A158772.P10735088452618480707

`21*2^floor(n/3)`
-/

namespace A158772.P10735088452618480707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  21 * (2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A158772.P10735088452618480707

namespace A158772

/-- `21*2^floor(n/3)` -/
def P10735088452618480707.Spec : Prop :=
  ∀ n, P10735088452618480707.a n = (A158772 n : ℚ)

end A158772

/-! ## A158772.P4487451555767949654

`lcm(21, 2^floor(n/3))`
-/

namespace A158772.P4487451555767949654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 21 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)))

end

end A158772.P4487451555767949654

namespace A158772

/-- `lcm(21, 2^floor(n/3))` -/
def P4487451555767949654.Spec : Prop :=
  ∀ n, (P4487451555767949654.a n : ℤ) = A158772 n

end A158772

/-! ## A158772.P7027515518468269201

`∏[abs(a(n-3))]` with `a(0)=21, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A158772.P7027515518468269201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158772.P7027515518468269201

namespace A158772

/-- `∏[abs(a(n-3))]` -/
def P7027515518468269201.Spec : Prop :=
  ∀ n, (P7027515518468269201.a n : ℤ) = A158772 n

end A158772

/-! ## A158772.P7306102659922979139

`abs(2*a(n-3))` with `a(0)=21, a(1)=21, a(2)=21`
-/

namespace A158772.P7306102659922979139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 21, 21] fun n a =>
  2 * a (n - 3)

end

end A158772.P7306102659922979139

namespace A158772

/-- `abs(2*a(n-3))` -/
def P7306102659922979139.Spec : Prop :=
  ∀ n, (P7306102659922979139.a n : ℤ) = A158772 n

end A158772

/-! ## A158772.P13907667101767500740

`∏[a(n-3)!]` with `a(0)=21, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A158772.P13907667101767500740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 1, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158772.P13907667101767500740

namespace A158772

/-- `∏[a(n-3)!]` -/
def P13907667101767500740.Spec : Prop :=
  ∀ n, (P13907667101767500740.a n : ℤ) = A158772 n

end A158772

/-! ## A158772.P4287294338231817582

`A175805(A002264(n))`
-/

namespace A158772.P4287294338231817582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175805 (A002264 n).toNat

end

end A158772.P4287294338231817582

namespace A158772

/-- `A175805(A002264(n))` -/
def P4287294338231817582.Spec : Prop :=
  ∀ n, P4287294338231817582.a n = A158772 n

end A158772

/-! ## A158772.P17204379363491758400

`A173589(A190717(n))`
-/

namespace A158772.P17204379363491758400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173589 (A190717 n).toNat

end

end A158772.P17204379363491758400

namespace A158772

/-- `A173589(A190717(n))` -/
def P17204379363491758400.Spec : Prop :=
  ∀ n, P17204379363491758400.a n = A158772 n

end A158772

/-!
# A158773: a(n) = 1600*n^2 - 40.

The programs for A158773, the canonical program `A158773.P9913520330111839781` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158773 has offset 1).

The definition of A158773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158773.P9913520330111839781

`40*A158598(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158773

/-- `40*A158598(n+1)` -/
def P9913520330111839781.Spec : Prop :=
  ∀ n, P9913520330111839781.a n = A158773 (n + 1)

theorem P9913520330111839781.correct : P9913520330111839781.Spec := by
  intro n
  simp only [A158773, Nat.add_sub_cancel]

end A158773

/-! ## A158773.P4026896735223703962

`(40*(n+1))²-40`
-/

namespace A158773.P4026896735223703962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((40 * (n + 1)) ^ 2 : ℤ) - 40

end

end A158773.P4026896735223703962

namespace A158773

/-- `(40*(n+1))²-40` -/
def P4026896735223703962.Spec : Prop :=
  ∀ n, P4026896735223703962.a n = A158773 (n + 1)

end A158773

/-! ## A158773.P4351672531008856870

`8*(4*A157919(n+1)-1)`
-/

namespace A158773.P4351672531008856870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (4 * A157919 (n + 1) - 1)

end

end A158773.P4351672531008856870

namespace A158773

/-- `8*(4*A157919(n+1)-1)` -/
def P4351672531008856870.Spec : Prop :=
  ∀ n, P4351672531008856870.a n = A158773 (n + 1)

end A158773

/-! ## A158773.P886951652664116223

`40*(40*A000290(n+1)-1)`
-/

namespace A158773.P886951652664116223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * (40 * A000290 (n + 1) - 1)

end

end A158773.P886951652664116223

namespace A158773

/-- `40*(40*A000290(n+1)-1)` -/
def P886951652664116223.Spec : Prop :=
  ∀ n, P886951652664116223.a n = A158773 (n + 1)

end A158773

/-! ## A158773.P7854087832486412422

`4*A158490(2*(n+1))`
-/

namespace A158773.P7854087832486412422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A158490 (2 * (n + 1))

end

end A158773.P7854087832486412422

namespace A158773

/-- `4*A158490(2*(n+1))` -/
def P7854087832486412422.Spec : Prop :=
  ∀ n, P7854087832486412422.a n = A158773 (n + 1)

end A158773

/-! ## A158773.P10519411320923582756

`lcm(8, A158490(A005843(n+1)))`
-/

namespace A158773.P10519411320923582756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A158490 (A005843 (n + 1)).toNat)

end

end A158773.P10519411320923582756

namespace A158773

/-- `lcm(8, A158490(A005843(n+1)))` -/
def P10519411320923582756.Spec : Prop :=
  ∀ n, (P10519411320923582756.a n : ℤ) = A158773 (n + 1)

end A158773

/-!
# A158774: a(n) = 80*n^2 - 1.

The programs for A158774, the canonical program `A158774.P5113679915558682527` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158774 has offset 1).

The definition of A158774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `80*(n+1)²-1` (program `A158774.P5113679915558682527`, by `A158774.P5113679915558682527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158774.P5113679915558682527

`80*(n+1)²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158774

/-- `80*(n+1)²-1` -/
def P5113679915558682527.Spec : Prop :=
  ∀ n, P5113679915558682527.a n = A158774 (n + 1)

theorem P5113679915558682527.correct : P5113679915558682527.Spec := by
  intro n
  simp only [A158774, Nat.add_sub_cancel]

end A158774

/-! ## A158774.P1126404117049983795

`A158491(2*(n+1))`
-/

namespace A158774.P1126404117049983795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158491 (2 * (n + 1))

end

end A158774.P1126404117049983795

namespace A158774

/-- `A158491(2*(n+1))` -/
def P1126404117049983795.Spec : Prop :=
  ∀ n, P1126404117049983795.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P12557554540118465469

`or(1, 2*A158598(n+1))`
-/

namespace A158774.P12557554540118465469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A158598 (n + 1))

end

end A158774.P12557554540118465469

namespace A158774

/-- `or(1, 2*A158598(n+1))` -/
def P12557554540118465469.Spec : Prop :=
  ∀ n, P12557554540118465469.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P13510815729391814452

`abs(A157507(n+1)-n²)`
-/

namespace A158774.P13510815729391814452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157507 (n + 1) - (n ^ 2 : ℤ)|

end

end A158774.P13510815729391814452

namespace A158774

/-- `abs(A157507(n+1)-n²)` -/
def P13510815729391814452.Spec : Prop :=
  ∀ n, P13510815729391814452.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P18438695326722213545

`abs(abs(4-or(5, 8*n)²)-A017642(n))`
-/

namespace A158774.P18438695326722213545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|4 - (Nat.lor 5 (8 * n) ^ 2 : ℤ)| - A017642 n)|

end

end A158774.P18438695326722213545

namespace A158774

/-- `abs(abs(4-or(5, 8*n)²)-A017642(n))` -/
def P18438695326722213545.Spec : Prop :=
  ∀ n, P18438695326722213545.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P6645834754058123368

`abs(A017642(n)-A146301(n))`
-/

namespace A158774.P6645834754058123368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017642 n - A146301 n|

end

end A158774.P6645834754058123368

namespace A158774

/-- `abs(A017642(n)-A146301(n))` -/
def P6645834754058123368.Spec : Prop :=
  ∀ n, P6645834754058123368.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P18057260484694598113

`abs(A017126(n)-4-A017642(n))`
-/

namespace A158774.P18057260484694598113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017126 n - 4 - A017642 n|

end

end A158774.P18057260484694598113

namespace A158774

/-- `abs(A017126(n)-4-A017642(n))` -/
def P18057260484694598113.Spec : Prop :=
  ∀ n, P18057260484694598113.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P5043044961250344478

`abs(abs(4-A004770(n+1)²)-A017642(n))`
-/

namespace A158774.P5043044961250344478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|4 - A004770 (n + 1) ^ 2| - A017642 n)|

end

end A158774.P5043044961250344478

namespace A158774

/-- `abs(abs(4-A004770(n+1)²)-A017642(n))` -/
def P5043044961250344478.Spec : Prop :=
  ∀ n, P5043044961250344478.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P8725180237799908103

`abs((8*n+7)*A017101(n)-A017642(n))`
-/

namespace A158774.P8725180237799908103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n + 7 : ℤ) * A017101 n - A017642 n|

end

end A158774.P8725180237799908103

namespace A158774

/-- `abs((8*n+7)*A017101(n)-A017642(n))` -/
def P8725180237799908103.Spec : Prop :=
  ∀ n, P8725180237799908103.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P13157651084473090226

`-xor(A158670(n+1)+(A158602(n+1)-3)/2, -1)`
-/

namespace A158774.P13157651084473090226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.roundAway ((A158670 (n + 1) : ℚ) + (A158602 (n + 1) - 3 : ℚ) / 2)) (-1)

end

end A158774.P13157651084473090226

namespace A158774

/-- `-xor(A158670(n+1)+(A158602(n+1)-3)/2, -1)` -/
def P13157651084473090226.Spec : Prop :=
  ∀ n, P13157651084473090226.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P6408896744856651450

`abs((A017089(n)+1)*A004771(n)-A017642(n))`
-/

namespace A158774.P6408896744856651450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A017089 n + 1) * A004771 n - A017642 n|

end

end A158774.P6408896744856651450

namespace A158774

/-- `abs((A017089(n)+1)*A004771(n)-A017642(n))` -/
def P6408896744856651450.Spec : Prop :=
  ∀ n, P6408896744856651450.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P11531590231993869542

`abs((A017077(n)+2)*A004771(n)-A017642(n))`
-/

namespace A158774.P11531590231993869542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A017077 n + 2) * A004771 n - A017642 n|

end

end A158774.P11531590231993869542

namespace A158774

/-- `abs((A017077(n)+2)*A004771(n)-A017642(n))` -/
def P11531590231993869542.Spec : Prop :=
  ∀ n, P11531590231993869542.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P10791469017634526726

`abs(3-A009924(3*(n+1)))`
-/

namespace A158774.P10791469017634526726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A009924 (3 * (n + 1))|

end

end A158774.P10791469017634526726

namespace A158774

/-- `abs(3-A009924(3*(n+1)))` -/
def P10791469017634526726.Spec : Prop :=
  ∀ n, P10791469017634526726.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P10499730536187154853

`Δ[A081438(3*n)-A081489(n+1)]`
-/

namespace A158774.P10499730536187154853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 (3 * n) - A081489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158774.P10499730536187154853

namespace A158774

/-- `Δ[A081438(3*n)-A081489(n+1)]` -/
def P10499730536187154853.Spec : Prop :=
  ∀ n, P10499730536187154853.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P15762739707597047719

`A134538(4*(n+1))`
-/

namespace A158774.P15762739707597047719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134538 (4 * (n + 1))

end

end A158774.P15762739707597047719

namespace A158774

/-- `A134538(4*(n+1))` -/
def P15762739707597047719.Spec : Prop :=
  ∀ n, P15762739707597047719.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P13100789866871348577

`A055607(A008598(n+1))`
-/

namespace A158774.P13100789866871348577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055607 (A008598 (n + 1)).toNat

end

end A158774.P13100789866871348577

namespace A158774

/-- `A055607(A008598(n+1))` -/
def P13100789866871348577.Spec : Prop :=
  ∀ n, P13100789866871348577.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P11417958537146156701

`A138986(A017377(2*n+1))`
-/

namespace A158774.P11417958537146156701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138986 (A017377 (2 * n + 1)).toNat

end

end A158774.P11417958537146156701

namespace A158774

/-- `A138986(A017377(2*n+1))` -/
def P11417958537146156701.Spec : Prop :=
  ∀ n, P11417958537146156701.a n = A158774 (n + 1)

end A158774

/-! ## A158774.P6961229304196190247

`A138986(A017377(n)+A017377(n)+1)`
-/

namespace A158774.P6961229304196190247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138986 (A017377 n + (A017377 n + 1)).toNat

end

end A158774.P6961229304196190247

namespace A158774

/-- `A138986(A017377(n)+A017377(n)+1)` -/
def P6961229304196190247.Spec : Prop :=
  ∀ n, P6961229304196190247.a n = A158774 (n + 1)

end A158774

/-!
# A158775: a(n) = 1600*n^2 + 40.

The programs for A158775, the canonical program `A158775.P6408366669123313915` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158775 has offset 1).

The definition of A158775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158775.P6408366669123313915

`40*A158602(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158775

/-- `40*A158602(n+1)` -/
def P6408366669123313915.Spec : Prop :=
  ∀ n, P6408366669123313915.a n = A158775 (n + 1)

theorem P6408366669123313915.correct : P6408366669123313915.Spec := by
  intro n
  simp only [A158775, Nat.add_sub_cancel]

end A158775

/-! ## A158775.P11809955442547600074

`(40*(n+1))²+40`
-/

namespace A158775.P11809955442547600074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (40 * (n + 1)) ^ 2 + 40

end

end A158775.P11809955442547600074

namespace A158775

/-- `(40*(n+1))²+40` -/
def P11809955442547600074.Spec : Prop :=
  ∀ n, (P11809955442547600074.a n : ℤ) = A158775 (n + 1)

end A158775

/-! ## A158775.P10164483846631828464

`xor(40, (40*(n+1))^2)`
-/

namespace A158775.P10164483846631828464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 40 ((40 * (n + 1)) ^ 2)

end

end A158775.P10164483846631828464

namespace A158775

/-- `xor(40, (40*(n+1))^2)` -/
def P10164483846631828464.Spec : Prop :=
  ∀ n, (P10164483846631828464.a n : ℤ) = A158775 (n + 1)

end A158775

/-! ## A158775.P10568213978247631388

`40*or(1, 40*(n+1)*(n+1))`
-/

namespace A158775.P10568213978247631388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * Nat.lor 1 (40 * ((n + 1) * (n + 1)))

end

end A158775.P10568213978247631388

namespace A158775

/-- `40*or(1, 40*(n+1)*(n+1))` -/
def P10568213978247631388.Spec : Prop :=
  ∀ n, (P10568213978247631388.a n : ℤ) = A158775 (n + 1)

end A158775

/-! ## A158775.P3765362174710952287

`40*(40*A000290(n+1)+1)`
-/

namespace A158775.P3765362174710952287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * (40 * A000290 (n + 1) + 1)

end

end A158775.P3765362174710952287

namespace A158775

/-- `40*(40*A000290(n+1)+1)` -/
def P3765362174710952287.Spec : Prop :=
  ∀ n, P3765362174710952287.a n = A158775 (n + 1)

end A158775

/-! ## A158775.P16987078159995146445

`lcm(10, A033429(8*(n+1))+8)`
-/

namespace A158775.P16987078159995146445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (A033429 (8 * (n + 1)) + 8)

end

end A158775.P16987078159995146445

namespace A158775

/-- `lcm(10, A033429(8*(n+1))+8)` -/
def P16987078159995146445.Spec : Prop :=
  ∀ n, (P16987078159995146445.a n : ℤ) = A158775 (n + 1)

end A158775

/-! ## A158775.P1775335246248244189

`4*(A007742(A008592(n+1))-A008592(n))`
-/

namespace A158775.P1775335246248244189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A007742 (A008592 (n + 1)).toNat - A008592 n)

end

end A158775.P1775335246248244189

namespace A158775

/-- `4*(A007742(A008592(n+1))-A008592(n))` -/
def P1775335246248244189.Spec : Prop :=
  ∀ n, P1775335246248244189.a n = A158775 (n + 1)

end A158775

/-!
# A158776: a(n) = 80*n^2 + 1.

The programs for A158776, the canonical program `A158776.P10609333151299409575` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158776 has offset 0).

The definition of A158776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `80*n²+1` (program `A158776.P10609333151299409575`, by `A158776.P10609333151299409575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158776.P10609333151299409575

`80*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158776

/-- `80*n²+1` -/
def P10609333151299409575.Spec : Prop :=
  ∀ n, (P10609333151299409575.a n : ℤ) = A158776 n

theorem P10609333151299409575.correct : P10609333151299409575.Spec := by
  intro n
  simp only [A158776]

end A158776

/-! ## A158776.P1215986375940666507

`A158493(2*n)`
-/

namespace A158776.P1215986375940666507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 (2 * n)

end

end A158776.P1215986375940666507

namespace A158776

/-- `A158493(2*n)` -/
def P1215986375940666507.Spec : Prop :=
  ∀ n, P1215986375940666507.a n = A158776 n

end A158776

/-! ## A158776.P5110399735654096542

`or(1, 80*n²)`
-/

namespace A158776.P5110399735654096542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (80 * n ^ 2)

end

end A158776.P5110399735654096542

namespace A158776

/-- `or(1, 80*n²)` -/
def P5110399735654096542.Spec : Prop :=
  ∀ n, (P5110399735654096542.a n : ℤ) = A158776 n

end A158776

/-! ## A158776.P13367617351393575937

`xor(1, 80*n²)`
-/

namespace A158776.P13367617351393575937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (80 * n ^ 2)

end

end A158776.P13367617351393575937

namespace A158776

/-- `xor(1, 80*n²)` -/
def P13367617351393575937.Spec : Prop :=
  ∀ n, (P13367617351393575937.a n : ℤ) = A158776 n

end A158776

/-! ## A158776.P17965338563920605192

`A016816(n)%A158574(n)`
-/

namespace A158776.P17965338563920605192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016816 n) (A158574 n)

end

end A158776.P17965338563920605192

namespace A158776

/-- `A016816(n)%A158574(n)` -/
def P17965338563920605192.Spec : Prop :=
  ∀ n, P17965338563920605192.a n = A158776 n

end A158776

/-! ## A158776.P2497165593214336606

`ceil(A158602(2*n)/2)`
-/

namespace A158776.P2497165593214336606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158602 (2 * n) : ℚ) / 2⌉

end

end A158776.P2497165593214336606

namespace A158776

/-- `ceil(A158602(2*n)/2)` -/
def P2497165593214336606.Spec : Prop :=
  ∀ n, P2497165593214336606.a n = A158776 n

end A158776

/-! ## A158776.P8898775392273431729

`ceil(A158673(2*n)/3)`
-/

namespace A158776.P8898775392273431729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158673 (2 * n) : ℚ) / 3⌉

end

end A158776.P8898775392273431729

namespace A158776

/-- `ceil(A158673(2*n)/3)` -/
def P8898775392273431729.Spec : Prop :=
  ∀ n, P8898775392273431729.a n = A158776 n

end A158776

/-! ## A158776.P7943268344391703171

`ceil(A010022(2*n)/2)`
-/

namespace A158776.P7943268344391703171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010022 (2 * n) : ℚ) / 2⌉

end

end A158776.P7943268344391703171

namespace A158776

/-- `ceil(A010022(2*n)/2)` -/
def P7943268344391703171.Spec : Prop :=
  ∀ n, P7943268344391703171.a n = A158776 n

end A158776

/-! ## A158776.P16348306183705631397

`(A033583(4*n)+2)/2`
-/

namespace A158776.P16348306183705631397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033583 (4 * n) + 2 : ℚ) / 2

end

end A158776.P16348306183705631397

namespace A158776

/-- `(A033583(4*n)+2)/2` -/
def P16348306183705631397.Spec : Prop :=
  ∀ n, P16348306183705631397.a n = (A158776 n : ℚ)

end A158776

/-! ## A158776.P1033087042621150220

`A212656(4*n)`
-/

namespace A158776.P1033087042621150220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 (4 * n)

end

end A158776.P1033087042621150220

namespace A158776

/-- `A212656(4*n)` -/
def P1033087042621150220.Spec : Prop :=
  ∀ n, P1033087042621150220.a n = A158776 n

end A158776

/-! ## A158776.P17297368319294528246

`abs(n*(A008592(8*n)+1)+1-n)`
-/

namespace A158776.P17297368319294528246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A008592 (8 * n) + 1) + 1 - (n : ℤ)|

end

end A158776.P17297368319294528246

namespace A158776

/-- `abs(n*(A008592(8*n)+1)+1-n)` -/
def P17297368319294528246.Spec : Prop :=
  ∀ n, P17297368319294528246.a n = A158776 n

end A158776

/-!
# A158777: Irregular array T(n,k), read by rows: row n is the polynomial expansion in t of p(x,t) = exp(t*x)/(1 - x/t - t^4 * x^4) with weighting factors t^n*n!.

The programs for A158777, there is no canonical definition to state claims against.
-/

/-! ## A158777.P569311976299516416

`A060904(A183104(n+1))*A138108(n+1)`
-/

namespace A158777.P569311976299516416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (A183104 (n + 1)).toNat * A138108 (n + 1)

end

end A158777.P569311976299516416

/-! ## A158777.P9251940473685064321

`lcm(A009998(A226646(3*n+5)), A138108(n+1))`
-/

namespace A158777.P9251940473685064321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009998 (A226646 (3 * n + 5)).toNat) (A138108 (n + 1))

end

end A158777.P9251940473685064321

/-! ## A158777.P14861811896195377078

`A138108(A328617(n+1))`
-/

namespace A158777.P14861811896195377078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138108 (A328617 (n + 1)).toNat

end

end A158777.P14861811896195377078

/-! ## A158777.P530213918383198483

`lcm(A030598(A145901(n)), A138108(n+1))`
-/

namespace A158777.P530213918383198483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030598 (A145901 n).toNat) (A138108 (n + 1))

end

end A158777.P530213918383198483

/-! ## A158777.P7766329088980271866

`A138108(n+1)%A268595(A005843(n+3))`
-/

namespace A158777.P7766329088980271866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138108 (n + 1)) (A268595 (A005843 (n + 3)).toNat)

end

end A158777.P7766329088980271866

/-!
# A158778: G.f.: (1+3*x+12*x^2+48*x^3)/(1-x-256*x^4).

The programs for A158778, the canonical program `A158778.P7483961355174037019` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158778 has offset 0).

The definition of A158778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158778.P7483961355174037019

`a(n-1)+256*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158778

/-- `a(n-1)+256*a(n-4)` -/
def P7483961355174037019.Spec : Prop :=
  ∀ n, (P7483961355174037019.a n : ℤ) = A158778 n

theorem P7483961355174037019.correct : P7483961355174037019.Spec := by
  intro n
  simp only [A158778]

end A158778

/-! ## A158778.P2520890361923471572

`∑[A342126(∑[A002310(n)])]`
-/

namespace A158778.P2520890361923471572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158778.P2520890361923471572

namespace A158778

/-- `∑[A342126(∑[A002310(n)])]` -/
def P2520890361923471572.Spec : Prop :=
  ∀ n, P2520890361923471572.a n = A158778 n

end A158778

/-!
# A158779: Expansion of (1+8*x+72*x^2+648*x^3)/(1-x-6561*x^4).

The programs for A158779, there is no canonical definition to state claims against.
-/

/-! ## A158779.P3768765985933407057

`A037463(A158778(n))`
-/

namespace A158779.P3768765985933407057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A158778 n).toNat

end

end A158779.P3768765985933407057

/-! ## A158779.P5750858976298187794

`A005836(A158778(n)+1)`
-/

namespace A158779.P5750858976298187794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A158778 n + 1).toNat

end

end A158779.P5750858976298187794

/-!
# A158780: a(2n) = A131577(n), a(2n+1) = A011782(n).

The programs for A158780, the canonical program `A158780.P14450464506551947306` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158780 has offset 0).

The definition of A158780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158780.P16708873413552268507

`round(2^round((n-3)/2))`
-/

namespace A158780.P16708873413552268507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) : ℤ))

end

end A158780.P16708873413552268507

namespace A158780

/-- `round(2^round((n-3)/2))` -/
def P16708873413552268507.Spec : Prop :=
  ∀ n, P16708873413552268507.a n = A158780 n

end A158780

/-! ## A158780.P14805444417345533651

`ogf((x+x^2-x^3)/(1-2x^2))`
-/

namespace A158780.P14805444417345533651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, 0, -2] n

end

end A158780.P14805444417345533651

namespace A158780

/-- `ogf((x+x^2-x^3)/(1-2x^2))` -/
def P14805444417345533651.Spec : Prop :=
  ∀ n, P14805444417345533651.a n = A158780 n

end A158780

/-! ## A158780.P14450464506551947306

`2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158780

/-- `2*a(n-2)` -/
def P14450464506551947306.Spec : Prop :=
  ∀ n, (P14450464506551947306.a n : ℤ) = A158780 n

theorem P14450464506551947306.correct : P14450464506551947306.Spec := by
  intro n
  simp only [A158780]

end A158780

/-! ## A158780.P5312963462559197662

`a(n-2)+a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A158780.P5312963462559197662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 2) + a (n - 2)

end

end A158780.P5312963462559197662

namespace A158780

/-- `a(n-2)+a(n-2)` -/
def P5312963462559197662.Spec : Prop :=
  ∀ n, (P5312963462559197662.a n : ℤ) = A158780 n

theorem P5312963462559197662.correct : P5312963462559197662.Spec := by
  intro n
  simp only [A158780, Nat.add_sub_cancel, A158780.P5312963462559197662.a, A158780.P14450464506551947306.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A158780

/-! ## A158780.P5168422292530314493

`a(n-2)/(1-1/2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A158780.P5168422292530314493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A158780.P5168422292530314493

namespace A158780

/-- `a(n-2)/(1-1/2)` -/
def P5168422292530314493.Spec : Prop :=
  ∀ n, P5168422292530314493.a n = (A158780 n : ℚ)

end A158780

/-! ## A158780.P9958068129033399049

`a(n-2)-(a(n-1)%a(n-2)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A158780.P9958068129033399049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 2) - (Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 2))

end

end A158780.P9958068129033399049

namespace A158780

/-- `a(n-2)-(a(n-1)%a(n-2)-a(n-2))` -/
def P9958068129033399049.Spec : Prop :=
  ∀ n, P9958068129033399049.a n = A158780 n

end A158780

/-! ## A158780.P6493020523688350622

`A034008(A263997(n+1))`
-/

namespace A158780.P6493020523688350622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A263997 (n + 1)).toNat

end

end A158780.P6493020523688350622

namespace A158780

/-- `A034008(A263997(n+1))` -/
def P6493020523688350622.Spec : Prop :=
  ∀ n, P6493020523688350622.a n = A158780 n

end A158780

/-! ## A158780.P13577629114216471034

`A166444(∑[char[A004277(n)]])`
-/

namespace A158780.P13577629114216471034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158780.P13577629114216471034

namespace A158780

/-- `A166444(∑[char[A004277(n)]])` -/
def P13577629114216471034.Spec : Prop :=
  ∀ n, P13577629114216471034.a n = A158780 n

end A158780

/-! ## A158780.P17197281204633613134

`A131577(∑[char[A103517(n)]])`
-/

namespace A158780.P17197281204633613134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A158780.P17197281204633613134

namespace A158780

/-- `A131577(∑[char[A103517(n)]])` -/
def P17197281204633613134.Spec : Prop :=
  ∀ n, P17197281204633613134.a n = A158780 n

end A158780

/-! ## A158780.P17306315065960033238

`A166444(1-A065033(n)+n)`
-/

namespace A158780.P17306315065960033238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (1 - A065033 n + (n : ℤ)).toNat

end

end A158780.P17306315065960033238

namespace A158780

/-- `A166444(1-A065033(n)+n)` -/
def P17306315065960033238.Spec : Prop :=
  ∀ n, P17306315065960033238.a n = A158780 n

end A158780

/-! ## A158780.P3933414448769138096

`A131577(A168050(n)-1+n)`
-/

namespace A158780.P3933414448769138096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A168050 n - 1 + (n : ℤ)).toNat

end

end A158780.P3933414448769138096

namespace A158780

/-- `A131577(A168050(n)-1+n)` -/
def P3933414448769138096.Spec : Prop :=
  ∀ n, P3933414448769138096.a n = A158780 n

end A158780

/-! ## A158780.P11279537661432767380

`A166444(1-(A065033(n)-n))`
-/

namespace A158780.P11279537661432767380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (1 - (A065033 n - (n : ℤ))).toNat

end

end A158780.P11279537661432767380

namespace A158780

/-- `A166444(1-(A065033(n)-n))` -/
def P11279537661432767380.Spec : Prop :=
  ∀ n, P11279537661432767380.a n = A158780 n

end A158780

/-! ## A158780.P9519186047862946322

`A131577(n-(1-A168050(n)))`
-/

namespace A158780.P9519186047862946322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 ((n : ℤ) - (1 - A168050 n)).toNat

end

end A158780.P9519186047862946322

namespace A158780

/-- `A131577(n-(1-A168050(n)))` -/
def P9519186047862946322.Spec : Prop :=
  ∀ n, P9519186047862946322.a n = A158780 n

end A158780

/-! ## A158780.P9153820700055956622

`A011782(A004526(n))-A000007(n)`
-/

namespace A158780.P9153820700055956622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004526 n).toNat - A000007 n

end

end A158780.P9153820700055956622

namespace A158780

/-- `A011782(A004526(n))-A000007(n)` -/
def P9153820700055956622.Spec : Prop :=
  ∀ n, P9153820700055956622.a n = A158780 n

end A158780

/-! ## A158780.P7845590049013650122

`A011782(A004526(n))*A057427(n)`
-/

namespace A158780.P7845590049013650122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004526 n).toNat * A057427 n

end

end A158780.P7845590049013650122

namespace A158780

/-- `A011782(A004526(n))*A057427(n)` -/
def P7845590049013650122.Spec : Prop :=
  ∀ n, P7845590049013650122.a n = A158780 n

end A158780

/-! ## A158780.P10579193800245534108

`A011782(A123108(n))*A057427(n)`
-/

namespace A158780.P10579193800245534108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A123108 n).toNat * A057427 n

end

end A158780.P10579193800245534108

namespace A158780

/-- `A011782(A123108(n))*A057427(n)` -/
def P10579193800245534108.Spec : Prop :=
  ∀ n, P10579193800245534108.a n = A158780 n

end A158780

/-! ## A158780.P630634784479084357

`A011782(A002265(2*n))*A057427(n)`
-/

namespace A158780.P630634784479084357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002265 (2 * n)).toNat * A057427 n

end

end A158780.P630634784479084357

namespace A158780

/-- `A011782(A002265(2*n))*A057427(n)` -/
def P630634784479084357.Spec : Prop :=
  ∀ n, P630634784479084357.a n = A158780 n

end A158780

/-! ## A158780.P4075971819726960502

`ceil(A131572(n)/2)`
-/

namespace A158780.P4075971819726960502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131572 n : ℚ) / 2⌉

end

end A158780.P4075971819726960502

namespace A158780

/-- `ceil(A131572(n)/2)` -/
def P4075971819726960502.Spec : Prop :=
  ∀ n, P4075971819726960502.a n = A158780 n

end A158780

/-! ## A158780.P9189390064081254275

`floor(A262699(n+1)/2)`
-/

namespace A158780.P9189390064081254275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262699 (n + 1) : ℚ) / 2⌋

end

end A158780.P9189390064081254275

namespace A158780

/-- `floor(A262699(n+1)/2)` -/
def P9189390064081254275.Spec : Prop :=
  ∀ n, P9189390064081254275.a n = A158780 n

end A158780

/-! ## A158780.P12014520420105331162

`floor((A016116(n)+A000035(n))/2)`
-/

namespace A158780.P12014520420105331162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016116 n + A000035 n : ℚ) / 2⌋

end

end A158780.P12014520420105331162

namespace A158780

/-- `floor((A016116(n)+A000035(n))/2)` -/
def P12014520420105331162.Spec : Prop :=
  ∀ n, P12014520420105331162.a n = A158780 n

end A158780

/-!
# A158781: Triangle: A060187 with interspersed zeros.

The programs for A158781, there is no canonical definition to state claims against.
-/

/-! ## A158781.P3788134362308552429

`A060187(∑[A071028(n)])*A071028(n)`
-/

namespace A158781.P3788134362308552429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A071028 n

end

end A158781.P3788134362308552429

/-! ## A158781.P7910727614695163266

`A156261(A000124(A260492(n)²))`
-/

namespace A158781.P7910727614695163266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A000124 (A260492 n ^ 2).toNat).toNat

end

end A158781.P7910727614695163266

/-! ## A158781.P11772213027506219281

`A120126(C(A322046(n), A177276(n)))`
-/

namespace A158781.P11772213027506219281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 (Nat.choose (A322046 n).toNat (A177276 n).toNat)

end

end A158781.P11772213027506219281

/-! ## A158781.P6687313191714952564

`A123578(A319571(n)^A056847(n))`
-/

namespace A158781.P6687313191714952564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (SequenceMachineLib.roundAway ((A319571 n : ℚ) ^ (A056847 n : ℤ))).toNat

end

end A158781.P6687313191714952564

/-!
# A158783: a(n) = Hermite(n, 24).

The programs for A158783, the canonical program `A158783.P4128803825061215104` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158783 has offset 0).

The definition of A158783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158783.P4128803825061215104

`48*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=48`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158783

/-- `48*a(n-1)-2*(n-1)*a(n-2)` -/
def P4128803825061215104.Spec : Prop :=
  ∀ n, P4128803825061215104.a n = A158783 n

theorem P4128803825061215104.correct : P4128803825061215104.Spec := by
  intro n
  simp only [A158783]

end A158783

/-!
# A158784: Expansion of (1+4*x+14*x^2)/(1-2*x^2-64*x^3).

The programs for A158784, the canonical program `A158784.P11550935022465710990` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158784 has offset 0).

The definition of A158784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+14x^2)/(1-2x^2-64x^3))` (program `A158784.P11550935022465710990`, by `A158784.P11550935022465710990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158784.P3031098840381381345

`2*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A158784.P3031098840381381345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  2 * a (n - 2) + 64 * a (n - 3)

end

end A158784.P3031098840381381345

namespace A158784

/-- `2*a(n-2)+64*a(n-3)` -/
def P3031098840381381345.Spec : Prop :=
  ∀ n, (P3031098840381381345.a n : ℤ) = A158784 n

end A158784

/-! ## A158784.P11550935022465710990

`ogf((1+4x+14x^2)/(1-2x^2-64x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158784

/-- `ogf((1+4x+14x^2)/(1-2x^2-64x^3))` -/
def P11550935022465710990.Spec : Prop :=
  ∀ n, P11550935022465710990.a n = A158784 n

theorem P11550935022465710990.correct : P11550935022465710990.Spec := by
  intro n
  simp only [A158784]

end A158784

/-! ## A158784.P8649768307590666373

`A361647(A158761(n))`
-/

namespace A158784.P8649768307590666373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361647 (A158761 n).toNat

end

end A158784.P8649768307590666373

namespace A158784

/-- `A361647(A158761(n))` -/
def P8649768307590666373.Spec : Prop :=
  ∀ n, P8649768307590666373.a n = A158784 n

end A158784

/-!
# A158785: Expansion of e.g.f.: exp(t*x)/(1 - x^2/t - t^3*x^3).

The programs for A158785, there is no canonical definition to state claims against.
-/

/-! ## A158785.P13937043666068486854

`A158757(floor((n+1)/3+n))`
-/

namespace A158785.P13937043666068486854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158757 ⌊(n + 1 : ℚ) / 3 + (n : ℚ)⌋.toNat

end

end A158785.P13937043666068486854

/-! ## A158785.P7883485878023065893

`(n%2)!*A158757(A042965(n+1))`
-/

namespace A158785.P7883485878023065893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A158757 (A042965 (n + 1)).toNat

end

end A158785.P7883485878023065893

/-! ## A158785.P5071028264956914306

`gcd(A000038(n), A158757(A042965(n+1)))`
-/

namespace A158785.P5071028264956914306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A158757 (A042965 (n + 1)).toNat)

end

end A158785.P5071028264956914306

/-! ## A158785.P9076459117039388805

`A033999(n)²*A158757(A042965(n+1))`
-/

namespace A158785.P9076459117039388805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A158757 (A042965 (n + 1)).toNat

end

end A158785.P9076459117039388805

/-! ## A158785.P5488335975042519634

`abs(A158757(A042965(n+1))*A260196(n+2))`
-/

namespace A158785.P5488335975042519634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158757 (A042965 (n + 1)).toNat * A260196 (n + 2)|

end

end A158785.P5488335975042519634

/-! ## A158785.P5031541826399952238

`A014963(A008706(n))*A158757(A042965(n+1))`
-/

namespace A158785.P5031541826399952238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008706 n).toNat * A158757 (A042965 (n + 1)).toNat

end

end A158785.P5031541826399952238

/-! ## A158785.P4592389448713136913

`A001221(A060265(n+2))*A158757(A042965(n+1))`
-/

namespace A158785.P4592389448713136913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060265 (n + 2)).toNat * A158757 (A042965 (n + 1)).toNat

end

end A158785.P4592389448713136913

/-! ## A158785.P16462671274403675259

`A062157(A004736(n+1))²*A158757(A042965(n+1))`
-/

namespace A158785.P16462671274403675259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat ^ 2 * A158757 (A042965 (n + 1)).toNat

end

end A158785.P16462671274403675259

/-! ## A158785.P9623693282308022393

`A001221(A001359(n+1))*A158757(A042965(n+1))`
-/

namespace A158785.P9623693282308022393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001359 (n + 1)).toNat * A158757 (A042965 (n + 1)).toNat

end

end A158785.P9623693282308022393

/-! ## A158785.P16732323622327534430

`A001221(A282324(n+1))*A158757(A042965(n+1))`
-/

namespace A158785.P16732323622327534430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A282324 (n + 1)).toNat * A158757 (A042965 (n + 1)).toNat

end

end A158785.P16732323622327534430

/-! ## A158785.P5640614272461191278

`A158757(A042965(n+1))/A014963(∑[n+1])`
-/

namespace A158785.P5640614272461191278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158757 (A042965 (n + 1)).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A158785.P5640614272461191278

/-!
# A158791: Numbers n such that 30*n + 23 is prime.

The programs for A158791, the canonical program `A158791.P14882095896788264991` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158791 has offset 1).

The definition of A158791 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132235, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158791.P14882095896788264991

`floor(A132235(n+1)/30)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A158791

/-- `floor(A132235(n+1)/30)` -/
def P14882095896788264991.Spec : Prop :=
  ∀ n, P14882095896788264991.a n = A158791 (n + 1)

theorem P14882095896788264991.correct : P14882095896788264991.Spec := by
  intro n
  simp only [A158791, Nat.add_sub_cancel]

end A158791

/-! ## A158791.P7445196185467896147

`eq[3, A096915(3*n+2)]`
-/

namespace A158791.P7445196185467896147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P7445196185467896147

namespace A158791

/-- `eq[3, A096915(3*n+2)]` -/
def P7445196185467896147.Spec : Prop :=
  ∀ n, (P7445196185467896147.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P5457888550916132546

`eq[1, A001222(30*n+23)]`
-/

namespace A158791.P5457888550916132546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P5457888550916132546

namespace A158791

/-- `eq[1, A001222(30*n+23)]` -/
def P5457888550916132546.Spec : Prop :=
  ∀ n, (P5457888550916132546.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P14114884439029138841

`eq[2, A000005(30*n+23)]`
-/

namespace A158791.P14114884439029138841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (30 * n + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P14114884439029138841

namespace A158791

/-- `eq[2, A000005(30*n+23)]` -/
def P14114884439029138841.Spec : Prop :=
  ∀ n, (P14114884439029138841.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P17314528459937947191

`lt[15*n+14, A006530(30*n+23)]`
-/

namespace A158791.P17314528459937947191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n + 14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (30 * n + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158791.P17314528459937947191

namespace A158791

/-- `lt[15*n+14, A006530(30*n+23)]` -/
def P17314528459937947191.Spec : Prop :=
  ∀ n, (P17314528459937947191.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P6174503601330256589

`eq[30*n+23, A020639(30*n+23)]`
-/

namespace A158791.P6174503601330256589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n + 23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (30 * n + 23)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P6174503601330256589

namespace A158791

/-- `eq[30*n+23, A020639(30*n+23)]` -/
def P6174503601330256589.Spec : Prop :=
  ∀ n, (P6174503601330256589.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P9689862763710378606

`eq[1, A075743(A017341(n)+1)]`
-/

namespace A158791.P9689862763710378606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017341 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P9689862763710378606

namespace A158791

/-- `eq[1, A075743(A017341(n)+1)]` -/
def P9689862763710378606.Spec : Prop :=
  ∀ n, (P9689862763710378606.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P8201654633873146245

`eq[1, A075743(A017329(n)+2)]`
-/

namespace A158791.P8201654633873146245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017329 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P8201654633873146245

namespace A158791

/-- `eq[1, A075743(A017329(n)+2)]` -/
def P8201654633873146245.Spec : Prop :=
  ∀ n, (P8201654633873146245.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P2936581218639145821

`eq[1, A068695(A016789(n))-2]`
-/

namespace A158791.P2936581218639145821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A016789 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P2936581218639145821

namespace A158791

/-- `eq[1, A068695(A016789(n))-2]` -/
def P2936581218639145821.Spec : Prop :=
  ∀ n, (P2936581218639145821.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P9640382490311658272

`eq[1, A075743(A017377(n)-2)]`
-/

namespace A158791.P9640382490311658272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A017377 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P9640382490311658272

namespace A158791

/-- `eq[1, A075743(A017377(n)-2)]` -/
def P9640382490311658272.Spec : Prop :=
  ∀ n, (P9640382490311658272.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P10838980464370825557

`eq[1, A167020(A016897(n))]`
-/

namespace A158791.P10838980464370825557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A016897 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P10838980464370825557

namespace A158791

/-- `eq[1, A167020(A016897(n))]` -/
def P10838980464370825557.Spec : Prop :=
  ∀ n, (P10838980464370825557.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P16084196647247771761

`eq[1, A167020(A016885(n)+1)]`
-/

namespace A158791.P16084196647247771761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (A016885 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P16084196647247771761

namespace A158791

/-- `eq[1, A167020(A016885(n)+1)]` -/
def P16084196647247771761.Spec : Prop :=
  ∀ n, (P16084196647247771761.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P12600963223793762275

`eq[2, A060324(A017365(n))]`
-/

namespace A158791.P12600963223793762275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P12600963223793762275

namespace A158791

/-- `eq[2, A060324(A017365(n))]` -/
def P12600963223793762275.Spec : Prop :=
  ∀ n, (P12600963223793762275.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P13382340131022027812

`eq[2, A060324(A017341(n)+2)]`
-/

namespace A158791.P13382340131022027812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A017341 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P13382340131022027812

namespace A158791

/-- `eq[2, A060324(A017341(n)+2)]` -/
def P13382340131022027812.Spec : Prop :=
  ∀ n, (P13382340131022027812.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P14485601629265830267

`eq[1, A103961(A257645(n)-2)]`
-/

namespace A158791.P14485601629265830267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A257645 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A158791.P14485601629265830267

namespace A158791

/-- `eq[1, A103961(A257645(n)-2)]` -/
def P14485601629265830267.Spec : Prop :=
  ∀ n, (P14485601629265830267.a n : ℤ) = A158791 (n + 1)

end A158791

/-! ## A158791.P12908297444417165554

`record[n%A014963(30*n+23)]`
-/

namespace A158791.P12908297444417165554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (30 * n + 23))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158791.P12908297444417165554

namespace A158791

/-- `record[n%A014963(30*n+23)]` -/
def P12908297444417165554.Spec : Prop :=
  ∀ n, P12908297444417165554.a n = A158791 (n + 1)

end A158791

/-! ## A158791.P2515512314149489482

`A008651(A132235(n+1))`
-/

namespace A158791.P2515512314149489482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A132235 (n + 1)).toNat

end

end A158791.P2515512314149489482

namespace A158791

/-- `A008651(A132235(n+1))` -/
def P2515512314149489482.Spec : Prop :=
  ∀ n, P2515512314149489482.a n = A158791 (n + 1)

end A158791

/-! ## A158791.P10780880856041369435

`lt[n, A014963(A016957(5*n+3)+1)]`
-/

namespace A158791.P10780880856041369435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016957 (5 * n + 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A158791.P10780880856041369435

namespace A158791

/-- `lt[n, A014963(A016957(5*n+3)+1)]` -/
def P10780880856041369435.Spec : Prop :=
  ∀ n, (P10780880856041369435.a n : ℤ) = A158791 (n + 1)

end A158791

/-!
# A158792: Number of n-colorings of the Shrikhande graph.

The programs for A158792, there is no canonical definition to state claims against.
-/

/-! ## A158792.P12754635021510606885

`A061121(n+1)*A103787(A139589(n+1))`
-/

namespace A158792.P12754635021510606885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061121 (n + 1) * A103787 (A139589 (n + 1)).toNat

end

end A158792.P12754635021510606885

/-!
# A158793: Triangle read by rows: product of A130595 and A092392 considered as infinite lower triangular arrays.

The programs for A158793, there is no canonical definition to state claims against.
-/

/-! ## A158793.P15607077406098411785

`A124445(A245300(A061579(n)))`
-/

namespace A158793.P15607077406098411785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 (A245300 (A061579 n).toNat).toNat

end

end A158793.P15607077406098411785

/-! ## A158793.P7633703933566715469

`A196241(A140070(n+2))`
-/

namespace A158793.P7633703933566715469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196241 (A140070 (n + 2)).toNat

end

end A158793.P7633703933566715469

/-!
# A158795: Primes of the form 2*7^k - 1.

The programs for A158795, there is no canonical definition to state claims against.
-/

/-! ## A158795.P11867301369172056235

`A198480(A126333(n)+A083856(n))`
-/

namespace A158795.P11867301369172056235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198480 (A126333 n + A083856 n).toNat

end

end A158795.P11867301369172056235

/-!
# A158797: a(n) = a(n-1) + 36*a(n-2), a(0)=1, a(1)=6.

The programs for A158797, the canonical program `A158797.P1172824478453759507` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158797 has offset 0).

The definition of A158797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+36*a(n-2)` (program `A158797.P1172824478453759507`, by `A158797.P1172824478453759507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158797.P1172824478453759507

`a(n-1)+36*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158797

/-- `a(n-1)+36*a(n-2)` -/
def P1172824478453759507.Spec : Prop :=
  ∀ n, (P1172824478453759507.a n : ℤ) = A158797 n

theorem P1172824478453759507.correct : P1172824478453759507.Spec := by
  intro n
  simp only [A158797]

end A158797

/-! ## A158797.P12922182591838209243

`A037465(A122995(n+1))`
-/

namespace A158797.P12922182591838209243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A122995 (n + 1)).toNat

end

end A158797.P12922182591838209243

namespace A158797

/-- `A037465(A122995(n+1))` -/
def P12922182591838209243.Spec : Prop :=
  ∀ n, P12922182591838209243.a n = A158797 n

end A158797

/-!
# A158798: a(n) = a(n-1) + 64*a(n-2), a(0)=1, a(1)=8.

The programs for A158798, the canonical program `A158798.P2805454553322890069` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158798 has offset 0).

The definition of A158798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+64*a(n-2)` (program `A158798.P2805454553322890069`, by `A158798.P2805454553322890069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158798.P2805454553322890069

`a(n-1)+64*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A158798

/-- `a(n-1)+64*a(n-2)` -/
def P2805454553322890069.Spec : Prop :=
  ∀ n, (P2805454553322890069.a n : ℤ) = A158798 n

theorem P2805454553322890069.correct : P2805454553322890069.Spec := by
  intro n
  simp only [A158798]

end A158798

/-! ## A158798.P15138506531876914256

`record[abs(8*a(n-2))-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A158798.P15138506531876914256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  |8 * f1 (n - 2)| - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158798.P15138506531876914256

namespace A158798

/-- `record[abs(8*a(n-2))-a(n-1)]` -/
def P15138506531876914256.Spec : Prop :=
  ∀ n, P15138506531876914256.a n = A158798 n

end A158798

/-!
# A158799: a(0)=1, a(1)=2, a(n)=3 for n >= 2.

The programs for A158799, there is no canonical definition to state claims against.
-/

/-! ## A158799.P11760590933367198455

`1+A130130(n)`
-/

namespace A158799.P11760590933367198455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A130130 n

end

end A158799.P11760590933367198455

