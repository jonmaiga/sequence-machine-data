import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A078001: Expansion of (1-x)/(1-2*x+x^2+x^3).

The programs for A078001, the canonical program `A078001.P13268377325321689995` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078001 has offset 0).

The definition of A078001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+x^2+x^3))` (program `A078001.P13268377325321689995`, by `A078001.P13268377325321689995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078001.P13268377325321689995

`ogf((1-x)/(1-2x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078001

/-- `ogf((1-x)/(1-2x+x^2+x^3))` -/
def P13268377325321689995.Spec : Prop :=
  ∀ n, P13268377325321689995.a n = A078001 n

theorem P13268377325321689995.correct : P13268377325321689995.Spec := by
  intro n
  simp only [A078001]

end A078001

/-! ## A078001.P16021331544623925150

`2*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078001.P16021331544623925150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A078001.P16021331544623925150

namespace A078001

/-- `2*a(n-1)-a(n-2)-a(n-3)` -/
def P16021331544623925150.Spec : Prop :=
  ∀ n, P16021331544623925150.a n = A078001 n

end A078001

/-! ## A078001.P142482155952805651

`a(n-1)+a(n-1)-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078001.P142482155952805651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 1) - (a (n - 2) + a (n - 3)))

end

end A078001.P142482155952805651

namespace A078001

/-- `a(n-1)+a(n-1)-(a(n-2)+a(n-3))` -/
def P142482155952805651.Spec : Prop :=
  ∀ n, P142482155952805651.a n = A078001 n

end A078001

/-! ## A078001.P10631977176481750407

`a(n-1)-(a(n-2)-a(n-1))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078001.P10631977176481750407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1)) - a (n - 3)

end

end A078001.P10631977176481750407

namespace A078001

/-- `a(n-1)-(a(n-2)-a(n-1))-a(n-3)` -/
def P10631977176481750407.Spec : Prop :=
  ∀ n, P10631977176481750407.a n = A078001 n

end A078001

/-! ## A078001.P18406805529459644734

`A033999(n)*A077961(2*n)`
-/

namespace A078001.P18406805529459644734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077961 (2 * n)

end

end A078001.P18406805529459644734

namespace A078001

/-- `A033999(n)*A077961(2*n)` -/
def P18406805529459644734.Spec : Prop :=
  ∀ n, P18406805529459644734.a n = A078001 n

end A078001

/-! ## A078001.P11880016854758656117

`A077961(2*n)*A087960(2*n)`
-/

namespace A078001.P11880016854758656117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n) * A087960 (2 * n)

end

end A078001.P11880016854758656117

namespace A078001

/-- `A077961(2*n)*A087960(2*n)` -/
def P11880016854758656117.Spec : Prop :=
  ∀ n, P11880016854758656117.a n = A078001 n

end A078001

/-! ## A078001.P14516058899734940398

`A033999(n)*A077962(2*n)`
-/

namespace A078001.P14516058899734940398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077962 (2 * n)

end

end A078001.P14516058899734940398

namespace A078001

/-- `A033999(n)*A077962(2*n)` -/
def P14516058899734940398.Spec : Prop :=
  ∀ n, P14516058899734940398.a n = A078001 n

end A078001

/-! ## A078001.P13577561912328534684

`A077941(n)+Δ[Δ[A077941(n)]]`
-/

namespace A078001.P13577561912328534684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077941 n + (f1 (n + 1) - f1 n)

end

end A078001.P13577561912328534684

namespace A078001

/-- `A077941(n)+Δ[Δ[A077941(n)]]` -/
def P13577561912328534684.Spec : Prop :=
  ∀ n, P13577561912328534684.a n = A078001 n

end A078001

/-! ## A078001.P8455591382059644043

`A077961(2*n)/A000930(3*n)*A199804(3*n)`
-/

namespace A078001.P8455591382059644043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077961 (2 * n) : ℚ) / (A000930 (3 * n) : ℚ) * (A199804 (3 * n) : ℚ)

end

end A078001.P8455591382059644043

namespace A078001

/-- `A077961(2*n)/A000930(3*n)*A199804(3*n)` -/
def P8455591382059644043.Spec : Prop :=
  ∀ n, P8455591382059644043.a n = (A078001 n : ℚ)

end A078001

/-!
# A078002: Expansion of (1-x)/(1-2*x+x^2+2*x^3).

The programs for A078002, the canonical program `A078002.P17200237131635755567` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078002 has offset 0).

The definition of A078002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+x^2+2x^3))` (program `A078002.P17200237131635755567`, by `A078002.P17200237131635755567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078002.P17200237131635755567

`ogf((1-x)/(1-2x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078002

/-- `ogf((1-x)/(1-2x+x^2+2x^3))` -/
def P17200237131635755567.Spec : Prop :=
  ∀ n, P17200237131635755567.a n = A078002 n

theorem P17200237131635755567.correct : P17200237131635755567.Spec := by
  intro n
  simp only [A078002]

end A078002

/-! ## A078002.P11265914928336586536

`2*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078002.P11265914928336586536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A078002.P11265914928336586536

namespace A078002

/-- `2*a(n-1)-a(n-2)-2*a(n-3)` -/
def P11265914928336586536.Spec : Prop :=
  ∀ n, P11265914928336586536.a n = A078002 n

end A078002

/-! ## A078002.P14515253034309765799

`2*(a(n-1)-a(n-3))-a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078002.P14515253034309765799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * (a (n - 1) - a (n - 3)) - a (n - 2)

end

end A078002.P14515253034309765799

namespace A078002

/-- `2*(a(n-1)-a(n-3))-a(n-2)` -/
def P14515253034309765799.Spec : Prop :=
  ∀ n, P14515253034309765799.a n = A078002 n

end A078002

/-! ## A078002.P725881759039764770

`a(n-1)+a(n-1)-(a(n-2)+a(n-3))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078002.P725881759039764770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 1) - (a (n - 2) + a (n - 3)) - a (n - 3))

end

end A078002.P725881759039764770

namespace A078002

/-- `a(n-1)+a(n-1)-(a(n-2)+a(n-3))-a(n-3)` -/
def P725881759039764770.Spec : Prop :=
  ∀ n, P725881759039764770.a n = A078002 n

end A078002

/-! ## A078002.P1036603562018153023

`a(n-1)-(a(n-2)-(a(n-1)-a(n-3)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A078002.P1036603562018153023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - (a (n - 1) - a (n - 3) - a (n - 3)))

end

end A078002.P1036603562018153023

namespace A078002

/-- `a(n-1)-(a(n-2)-(a(n-1)-a(n-3)-a(n-3)))` -/
def P1036603562018153023.Spec : Prop :=
  ∀ n, P1036603562018153023.a n = A078002 n

end A078002

/-!
# A078003: Expansion of (1-x)/(1-2*x+2*x^2-2*x^3).

The programs for A078003, the canonical program `A078003.P1927851915364966778` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078003 has offset 0).

The definition of A078003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+2x^2-2x^3))` (program `A078003.P1927851915364966778`, by `A078003.P1927851915364966778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078003.P1927851915364966778

`ogf((1-x)/(1-2x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078003

/-- `ogf((1-x)/(1-2x+2x^2-2x^3))` -/
def P1927851915364966778.Spec : Prop :=
  ∀ n, P1927851915364966778.a n = A078003 n

theorem P1927851915364966778.correct : P1927851915364966778.Spec := by
  intro n
  simp only [A078003]

end A078003

/-! ## A078003.P4842760353039068694

`2*(a(n-1)-a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078003.P4842760353039068694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * (a (n - 1) - a (n - 2) + a (n - 3))

end

end A078003.P4842760353039068694

namespace A078003

/-- `2*(a(n-1)-a(n-2)+a(n-3))` -/
def P4842760353039068694.Spec : Prop :=
  ∀ n, P4842760353039068694.a n = A078003 n

end A078003

/-! ## A078003.P2266694373279841848

`a(n-1)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A078003.P2266694373279841848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  a (n - 1) + 2 * a (n - 4)

end

end A078003.P2266694373279841848

namespace A078003

/-- `a(n-1)+2*a(n-4)` -/
def P2266694373279841848.Spec : Prop :=
  ∀ n, (P2266694373279841848.a n : ℤ) = A078003 n

end A078003

/-! ## A078003.P17120721917374544300

`a(n-4)+a(n-1)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A078003.P17120721917374544300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  a (n - 4) + (a (n - 1) + a (n - 4))

end

end A078003.P17120721917374544300

namespace A078003

/-- `a(n-4)+a(n-1)+a(n-4)` -/
def P17120721917374544300.Spec : Prop :=
  ∀ n, (P17120721917374544300.a n : ℤ) = A078003 n

end A078003

/-! ## A078003.P4596722080897738112

`2*(a(n-1)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078003.P4596722080897738112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * (a (n - 1) - (a (n - 2) - a (n - 3)))

end

end A078003.P4596722080897738112

namespace A078003

/-- `2*(a(n-1)-(a(n-2)-a(n-3)))` -/
def P4596722080897738112.Spec : Prop :=
  ∀ n, P4596722080897738112.a n = A078003 n

end A078003

/-! ## A078003.P2225901377526183988

`A122788(n+1)`
-/

namespace A078003.P2225901377526183988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 (n + 1)

end

end A078003.P2225901377526183988

namespace A078003

/-- `A122788(n+1)` -/
def P2225901377526183988.Spec : Prop :=
  ∀ n, P2225901377526183988.a n = A078003 n

end A078003

/-! ## A078003.P2069596831666574516

`∑[1-Δ[n-A122788(n)]]`
-/

namespace A078003.P2069596831666574516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A122788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078003.P2069596831666574516

namespace A078003

/-- `∑[1-Δ[n-A122788(n)]]` -/
def P2069596831666574516.Spec : Prop :=
  ∀ n, P2069596831666574516.a n = A078003 n

end A078003

/-! ## A078003.P10974167770339184390

`∑[A033999(n)²*Δ[A122788(n)]]`
-/

namespace A078003.P10974167770339184390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078003.P10974167770339184390

namespace A078003

/-- `∑[A033999(n)²*Δ[A122788(n)]]` -/
def P10974167770339184390.Spec : Prop :=
  ∀ n, P10974167770339184390.a n = A078003 n

end A078003

/-! ## A078003.P9711067194299992002

`Δ[A104767(n+1)-Δ[A104767(n+1)]]`
-/

namespace A078003.P9711067194299992002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078003.P9711067194299992002

namespace A078003

/-- `Δ[A104767(n+1)-Δ[A104767(n+1)]]` -/
def P9711067194299992002.Spec : Prop :=
  ∀ n, P9711067194299992002.a n = A078003 n

end A078003

/-! ## A078003.P1171587389728234620

`Δ[Δ[Δ[A104767(n+2)]]]`
-/

namespace A078003.P1171587389728234620
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078003.P1171587389728234620

namespace A078003

/-- `Δ[Δ[Δ[A104767(n+2)]]]` -/
def P1171587389728234620.Spec : Prop :=
  ∀ n, P1171587389728234620.a n = A078003 n

end A078003

/-!
# A078004: Expansion of (1-x)/(1-2*x+2*x^2+x^3).

The programs for A078004, the canonical program `A078004.P7088680764621079296` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078004 has offset 0).

The definition of A078004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+2x^2+x^3))` (program `A078004.P7088680764621079296`, by `A078004.P7088680764621079296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078004.P7088680764621079296

`ogf((1-x)/(1-2x+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078004

/-- `ogf((1-x)/(1-2x+2x^2+x^3))` -/
def P7088680764621079296.Spec : Prop :=
  ∀ n, P7088680764621079296.a n = A078004 n

theorem P7088680764621079296.correct : P7088680764621079296.Spec := by
  intro n
  simp only [A078004]

end A078004

/-! ## A078004.P6570239625894239827

`2*a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078004.P6570239625894239827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) - a (n - 3)

end

end A078004.P6570239625894239827

namespace A078004

/-- `2*a(n-1)-2*a(n-2)-a(n-3)` -/
def P6570239625894239827.Spec : Prop :=
  ∀ n, P6570239625894239827.a n = A078004 n

end A078004

/-! ## A078004.P1228825255630006265

`2*(a(n-1)-a(n-2))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078004.P1228825255630006265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * (a (n - 1) - a (n - 2)) - a (n - 3)

end

end A078004.P1228825255630006265

namespace A078004

/-- `2*(a(n-1)-a(n-2))-a(n-3)` -/
def P1228825255630006265.Spec : Prop :=
  ∀ n, P1228825255630006265.a n = A078004 n

end A078004

/-! ## A078004.P14521227225228995111

`(A233831(n)-A077992(n+1))*A033999(n)`
-/

namespace A078004.P14521227225228995111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233831 n - A077992 (n + 1)) * A033999 n

end

end A078004.P14521227225228995111

namespace A078004

/-- `(A233831(n)-A077992(n+1))*A033999(n)` -/
def P14521227225228995111.Spec : Prop :=
  ∀ n, P14521227225228995111.a n = A078004 n

end A078004

/-! ## A078004.P16032035331388106269

`(A077992(n+1)-A233831(n))/A033999(n+1)`
-/

namespace A078004.P16032035331388106269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077992 (n + 1) - A233831 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A078004.P16032035331388106269

namespace A078004

/-- `(A077992(n+1)-A233831(n))/A033999(n+1)` -/
def P16032035331388106269.Spec : Prop :=
  ∀ n, P16032035331388106269.a n = (A078004 n : ℚ)

end A078004

/-! ## A078004.P3731437756041334835

`(2*A059841(n)-1)*(A233831(n)-A077992(n+1))`
-/

namespace A078004.P3731437756041334835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059841 n - 1) * (A233831 n - A077992 (n + 1))

end

end A078004.P3731437756041334835

namespace A078004

/-- `(2*A059841(n)-1)*(A233831(n)-A077992(n+1))` -/
def P3731437756041334835.Spec : Prop :=
  ∀ n, P3731437756041334835.a n = A078004 n

end A078004

/-!
# A078005: Expansion of (1-x)/(1-2*x+2*x^2+2*x^3).

The programs for A078005, the canonical program `A078005.P9976121380284330850` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078005 has offset 0).

The definition of A078005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x+2x^2+2x^3))` (program `A078005.P9976121380284330850`, by `A078005.P9976121380284330850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078005.P8397099845809975436

`2*(a(n-1)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078005.P8397099845809975436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * (a (n - 1) - a (n - 2) - a (n - 3))

end

end A078005.P8397099845809975436

namespace A078005

/-- `2*(a(n-1)-a(n-2)-a(n-3))` -/
def P8397099845809975436.Spec : Prop :=
  ∀ n, P8397099845809975436.a n = A078005 n

end A078005

/-! ## A078005.P9976121380284330850

`ogf((1-x)/(1-2x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078005

/-- `ogf((1-x)/(1-2x+2x^2+2x^3))` -/
def P9976121380284330850.Spec : Prop :=
  ∀ n, P9976121380284330850.a n = A078005 n

theorem P9976121380284330850.correct : P9976121380284330850.Spec := by
  intro n
  simp only [A078005]

end A078005

/-!
# A078006: Expansion of (1-x)/(1-x-2*x^2-2*x^3).

The programs for A078006, the canonical program `A078006.P16452110351420675847` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078006 has offset 0).

The definition of A078006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^2-2x^3))` (program `A078006.P16452110351420675847`, by `A078006.P16452110351420675847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078006.P16452110351420675847

`ogf((1-x)/(1-x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078006

/-- `ogf((1-x)/(1-x-2x^2-2x^3))` -/
def P16452110351420675847.Spec : Prop :=
  ∀ n, P16452110351420675847.a n = A078006 n

theorem P16452110351420675847.correct : P16452110351420675847.Spec := by
  intro n
  simp only [A078006]

end A078006

/-! ## A078006.P10169498376867924204

`a(n-1)+2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A078006.P10169498376867924204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3)

end

end A078006.P10169498376867924204

namespace A078006

/-- `a(n-1)+2*a(n-2)+2*a(n-3)` -/
def P10169498376867924204.Spec : Prop :=
  ∀ n, (P10169498376867924204.a n : ℤ) = A078006 n

end A078006

/-! ## A078006.P15633612475025963670

`a(n-1)+2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A078006.P15633612475025963670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 2 * (a (n - 2) + a (n - 3))

end

end A078006.P15633612475025963670

namespace A078006

/-- `a(n-1)+2*(a(n-2)+a(n-3))` -/
def P15633612475025963670.Spec : Prop :=
  ∀ n, (P15633612475025963670.a n : ℤ) = A078006 n

end A078006

/-! ## A078006.P12341622694807801962

`2*A077946(n)-abs(A078040(n))`
-/

namespace A078006.P12341622694807801962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077946 n - |A078040 n|

end

end A078006.P12341622694807801962

namespace A078006

/-- `2*A077946(n)-abs(A078040(n))` -/
def P12341622694807801962.Spec : Prop :=
  ∀ n, P12341622694807801962.a n = A078006 n

end A078006

/-! ## A078006.P11048919935415883362

`abs(A077970(n)+A077970(n)-A078040(n))`
-/

namespace A078006.P11048919935415883362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077970 n + (A077970 n - A078040 n)|

end

end A078006.P11048919935415883362

namespace A078006

/-- `abs(A077970(n)+A077970(n)-A078040(n))` -/
def P11048919935415883362.Spec : Prop :=
  ∀ n, P11048919935415883362.a n = A078006 n

end A078006

/-! ## A078006.P11761767342738752659

`(2-A078040(n)/A077970(n))*A077946(n)`
-/

namespace A078006.P11761767342738752659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (A078040 n : ℚ) / (A077970 n : ℚ)) * (A077946 n : ℚ)

end

end A078006.P11761767342738752659

namespace A078006

/-- `(2-A078040(n)/A077970(n))*A077946(n)` -/
def P11761767342738752659.Spec : Prop :=
  ∀ n, P11761767342738752659.a n = (A078006 n : ℚ)

end A078006

/-! ## A078006.P15412299119787956883

`Δ[abs(A078040(n))-A077946(n)]`
-/

namespace A078006.P15412299119787956883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078040 n| - A077946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078006.P15412299119787956883

namespace A078006

/-- `Δ[abs(A078040(n))-A077946(n)]` -/
def P15412299119787956883.Spec : Prop :=
  ∀ n, P15412299119787956883.a n = A078006 n

end A078006

/-! ## A078006.P10403298783296105033

`Δ[abs(A077970(n)-A078040(n))]`
-/

namespace A078006.P10403298783296105033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077970 n - A078040 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078006.P10403298783296105033

namespace A078006

/-- `Δ[abs(A077970(n)-A078040(n))]` -/
def P10403298783296105033.Spec : Prop :=
  ∀ n, P10403298783296105033.a n = A078006 n

end A078006

/-! ## A078006.P2505435267874467563

`A239812(n+3)%A239812(n+1)`
-/

namespace A078006.P2505435267874467563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239812 (n + 3)) (A239812 (n + 1))

end

end A078006.P2505435267874467563

namespace A078006

/-- `A239812(n+3)%A239812(n+1)` -/
def P2505435267874467563.Spec : Prop :=
  ∀ n, P2505435267874467563.a n = A078006 n

end A078006

/-!
# A078007: Expansion of (1-x)/(1-x-2*x^2-x^3).

The programs for A078007, the canonical program `A078007.P11495028465712939517` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078007 has offset 0).

The definition of A078007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^2-x^3))` (program `A078007.P11495028465712939517`, by `A078007.P11495028465712939517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078007.P11495028465712939517

`ogf((1-x)/(1-x-2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078007

/-- `ogf((1-x)/(1-x-2x^2-x^3))` -/
def P11495028465712939517.Spec : Prop :=
  ∀ n, P11495028465712939517.a n = A078007 n

theorem P11495028465712939517.correct : P11495028465712939517.Spec := by
  intro n
  simp only [A078007]

end A078007

/-! ## A078007.P14563120417804255284

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A078007.P14563120417804255284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A078007.P14563120417804255284

namespace A078007

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P14563120417804255284.Spec : Prop :=
  ∀ n, (P14563120417804255284.a n : ℤ) = A078007 n

end A078007

/-! ## A078007.P6886446638822253546

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A078007.P6886446638822253546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A078007.P6886446638822253546

namespace A078007

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P6886446638822253546.Spec : Prop :=
  ∀ n, (P6886446638822253546.a n : ℤ) = A078007 n

end A078007

/-! ## A078007.P35010083743901486

`A058278(2*n)`
-/

namespace A078007.P35010083743901486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n)

end

end A078007.P35010083743901486

namespace A078007

/-- `A058278(2*n)` -/
def P35010083743901486.Spec : Prop :=
  ∀ n, P35010083743901486.a n = A078007 n

end A078007

/-! ## A078007.P1373655887046637314

`A101399(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A078007.P1373655887046637314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101399 (n - 1) - a (n - 1)

end

end A078007.P1373655887046637314

namespace A078007

/-- `A101399(n-1)-a(n-1)` -/
def P1373655887046637314.Spec : Prop :=
  ∀ n, P1373655887046637314.a n = A078007 n

end A078007

/-! ## A078007.P9358233896046406617

`A135851(2*n+1)+A078012(2*n)`
-/

namespace A078007.P9358233896046406617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n + 1) + A078012 (2 * n)

end

end A078007.P9358233896046406617

namespace A078007

/-- `A135851(2*n+1)+A078012(2*n)` -/
def P9358233896046406617.Spec : Prop :=
  ∀ n, P9358233896046406617.a n = A078007 n

end A078007

/-! ## A078007.P7774006768123355697

`A107458(2*n+3)+A107458(2*n)`
-/

namespace A078007.P7774006768123355697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (2 * n + 3) + A107458 (2 * n)

end

end A078007.P7774006768123355697

namespace A078007

/-- `A107458(2*n+3)+A107458(2*n)` -/
def P7774006768123355697.Spec : Prop :=
  ∀ n, P7774006768123355697.a n = A078007 n

end A078007

/-! ## A078007.P8740277687067718674

`A135851(2*n+1)+A135851(2*(n+1))`
-/

namespace A078007.P8740277687067718674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n + 1) + A135851 (2 * (n + 1))

end

end A078007.P8740277687067718674

namespace A078007

/-- `A135851(2*n+1)+A135851(2*(n+1))` -/
def P8740277687067718674.Spec : Prop :=
  ∀ n, P8740277687067718674.a n = A078007 n

end A078007

/-! ## A078007.P9057397007226858854

`Δ[A078012(Δ[n²])]`
-/

namespace A078007.P9057397007226858854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078007.P9057397007226858854

namespace A078007

/-- `Δ[A078012(Δ[n²])]` -/
def P9057397007226858854.Spec : Prop :=
  ∀ n, P9057397007226858854.a n = A078007 n

end A078007

/-! ## A078007.P13236500734413604810

`Δ[Δ[A192805(n+1)]]`
-/

namespace A078007.P13236500734413604810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078007.P13236500734413604810

namespace A078007

/-- `Δ[Δ[A192805(n+1)]]` -/
def P13236500734413604810.Spec : Prop :=
  ∀ n, P13236500734413604810.a n = A078007 n

end A078007

/-! ## A078007.P861829970305550180

`Δ[A135851(2*n+3)]`
-/

namespace A078007.P861829970305550180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078007.P861829970305550180

namespace A078007

/-- `Δ[A135851(2*n+3)]` -/
def P861829970305550180.Spec : Prop :=
  ∀ n, P861829970305550180.a n = A078007 n

end A078007

/-! ## A078007.P8305291585628569278

`Δ[A226916(3*n+n+3)]`
-/

namespace A078007.P8305291585628569278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (3 * n + (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078007.P8305291585628569278

namespace A078007

/-- `Δ[A226916(3*n+n+3)]` -/
def P8305291585628569278.Spec : Prop :=
  ∀ n, P8305291585628569278.a n = A078007 n

end A078007

/-! ## A078007.P7584128619482713901

`Δ[A141683(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A078007.P7584128619482713901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A078007.P7584128619482713901

namespace A078007

/-- `Δ[A141683(n+1)]-a(n-1)` -/
def P7584128619482713901.Spec : Prop :=
  ∀ n, P7584128619482713901.a n = A078007 n

end A078007

/-! ## A078007.P12290305249115771073

`Δ[Δ[A107458(A103517(n)+1)]]`
-/

namespace A078007.P12290305249115771073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (A103517 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078007.P12290305249115771073

namespace A078007

/-- `Δ[Δ[A107458(A103517(n)+1)]]` -/
def P12290305249115771073.Spec : Prop :=
  ∀ n, P12290305249115771073.a n = A078007 n

end A078007

/-! ## A078007.P14893340724083459656

`A002478(n)-A078012(2*n+1)`
-/

namespace A078007.P14893340724083459656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n - A078012 (2 * n + 1)

end

end A078007.P14893340724083459656

namespace A078007

/-- `A002478(n)-A078012(2*n+1)` -/
def P14893340724083459656.Spec : Prop :=
  ∀ n, P14893340724083459656.a n = A078007 n

end A078007

/-! ## A078007.P213590423927478776

`A000930(2*n)-A078012(2*n+1)`
-/

namespace A078007.P213590423927478776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n) - A078012 (2 * n + 1)

end

end A078007.P213590423927478776

namespace A078007

/-- `A000930(2*n)-A078012(2*n+1)` -/
def P213590423927478776.Spec : Prop :=
  ∀ n, P213590423927478776.a n = A078007 n

end A078007

/-! ## A078007.P3744769175292832943

`A199804(2*n)-A078012(2*n+1)`
-/

namespace A078007.P3744769175292832943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (2 * n) - A078012 (2 * n + 1)

end

end A078007.P3744769175292832943

namespace A078007

/-- `A199804(2*n)-A078012(2*n+1)` -/
def P3744769175292832943.Spec : Prop :=
  ∀ n, P3744769175292832943.a n = A078007 n

end A078007

/-! ## A078007.P17952233392918184984

`A078012(2*n+3)-A078012(2*n+1)`
-/

namespace A078007.P17952233392918184984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n + 3) - A078012 (2 * n + 1)

end

end A078007.P17952233392918184984

namespace A078007

/-- `A078012(2*n+3)-A078012(2*n+1)` -/
def P17952233392918184984.Spec : Prop :=
  ∀ n, P17952233392918184984.a n = A078007 n

end A078007

/-! ## A078007.P17177019804965518189

`A277253(2*n+3)-A277252(2*(n+1))`
-/

namespace A078007.P17177019804965518189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (2 * n + 3) - A277252 (2 * (n + 1))

end

end A078007.P17177019804965518189

namespace A078007

/-- `A277253(2*n+3)-A277252(2*(n+1))` -/
def P17177019804965518189.Spec : Prop :=
  ∀ n, P17177019804965518189.a n = A078007 n

end A078007

/-! ## A078007.P13040728967954904174

`A002478(n)+A002478(n)-A141015(n+1)`
-/

namespace A078007.P13040728967954904174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n + (A002478 n - A141015 (n + 1))

end

end A078007.P13040728967954904174

namespace A078007

/-- `A002478(n)+A002478(n)-A141015(n+1)` -/
def P13040728967954904174.Spec : Prop :=
  ∀ n, P13040728967954904174.a n = A078007 n

end A078007

/-!
# A078008: Expansion of (1 - x)/((1 + x)*(1 - 2*x)).

The programs for A078008, the canonical program `A078008.P1209086084566211837` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078008 has offset 0).

The definition of A078008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^2))` (program `A078008.P1209086084566211837`, by `A078008.P1209086084566211837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078008.P1209086084566211837

`ogf((1-x)/(1-x-2x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078008

/-- `ogf((1-x)/(1-x-2x^2))` -/
def P1209086084566211837.Spec : Prop :=
  ∀ n, P1209086084566211837.a n = A078008 n

theorem P1209086084566211837.correct : P1209086084566211837.Spec := by
  intro n
  simp only [A078008]

end A078008

/-! ## A078008.P3874820088556466812

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A078008.P3874820088556466812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A078008.P3874820088556466812

namespace A078008

/-- `a(n-1)+2*a(n-2)` -/
def P3874820088556466812.Spec : Prop :=
  ∀ n, (P3874820088556466812.a n : ℤ) = A078008 n

end A078008

/-! ## A078008.P7888428984121606042

`A001045(n)+(-1)^n`
-/

namespace A078008.P7888428984121606042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (-1) ^ n

end

end A078008.P7888428984121606042

namespace A078008

/-- `A001045(n)+(-1)^n` -/
def P7888428984121606042.Spec : Prop :=
  ∀ n, P7888428984121606042.a n = A078008 n

end A078008

/-! ## A078008.P9377877118078772980

`(2^n+2*(-1)^n)/3`
-/

namespace A078008.P9377877118078772980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + 2 * (-1) ^ n : ℚ) / 3

end

end A078008.P9377877118078772980

namespace A078008

/-- `(2^n+2*(-1)^n)/3` -/
def P9377877118078772980.Spec : Prop :=
  ∀ n, P9377877118078772980.a n = (A078008 n : ℚ)

end A078008

/-! ## A078008.P17822899643168789720

`A000079(n)-2*A001045(n)`
-/

namespace A078008.P17822899643168789720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 2 * A001045 n

end

end A078008.P17822899643168789720

namespace A078008

/-- `A000079(n)-2*A001045(n)` -/
def P17822899643168789720.Spec : Prop :=
  ∀ n, P17822899643168789720.a n = A078008 n

end A078008

/-! ## A078008.P14377692302870606602

`(-1)^n*A151575(n)`
-/

namespace A078008.P14377692302870606602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A151575 n

end

end A078008.P14377692302870606602

namespace A078008

/-- `(-1)^n*A151575(n)` -/
def P14377692302870606602.Spec : Prop :=
  ∀ n, P14377692302870606602.a n = A078008 n

end A078008

/-! ## A078008.P7703154470919636071

`2^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A078008.P7703154470919636071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A078008.P7703154470919636071

namespace A078008

/-- `2^(n-1)-a(n-1)` -/
def P7703154470919636071.Spec : Prop :=
  ∀ n, P7703154470919636071.a n = (A078008 n : ℚ)

end A078008

/-! ## A078008.P8140617157525253011

`a(n-1)+lcm(4, a(n-2))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A078008.P8140617157525253011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + Nat.lcm 4 (a (n - 2))

end

end A078008.P8140617157525253011

namespace A078008

/-- `a(n-1)+lcm(4, a(n-2))` -/
def P8140617157525253011.Spec : Prop :=
  ∀ n, (P8140617157525253011.a n : ℤ) = A078008 n

end A078008

/-! ## A078008.P16640492732914352545

`2*(1-(2*n%2-a(n-1)))` with `a(0)=1`
-/

namespace A078008.P16640492732914352545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (((2 * (n % 2) : ℕ) : ℤ) - a (n - 1)))

end

end A078008.P16640492732914352545

namespace A078008

/-- `2*(1-(2*n%2-a(n-1)))` -/
def P16640492732914352545.Spec : Prop :=
  ∀ n, P16640492732914352545.a n = A078008 n

end A078008

/-! ## A078008.P4349868217890288633

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A078008.P4349868217890288633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A078008.P4349868217890288633

namespace A078008

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P4349868217890288633.Spec : Prop :=
  ∀ n, (P4349868217890288633.a n : ℤ) = A078008 n

end A078008

/-! ## A078008.P14507597218339244070

`a(n-1)-a(n-2)/(1/2-1)` with `a(0)=1, a(1)=0`
-/

namespace A078008.P14507597218339244070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A078008.P14507597218339244070

namespace A078008

/-- `a(n-1)-a(n-2)/(1/2-1)` -/
def P14507597218339244070.Spec : Prop :=
  ∀ n, P14507597218339244070.a n = (A078008 n : ℚ)

end A078008

/-! ## A078008.P10035108037446474657

`a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A078008.P10035108037446474657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 2) - a (n - 2))

end

end A078008.P10035108037446474657

namespace A078008

/-- `a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` -/
def P10035108037446474657.Spec : Prop :=
  ∀ n, P10035108037446474657.a n = A078008 n

end A078008

/-! ## A078008.P16798627679387168355

`A153772(n)+2`
-/

namespace A078008.P16798627679387168355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 n + 2

end

end A078008.P16798627679387168355

namespace A078008

/-- `A153772(n)+2` -/
def P16798627679387168355.Spec : Prop :=
  ∀ n, P16798627679387168355.a n = A078008 n

end A078008

/-! ## A078008.P12880957991338182145

`A230096(2*n)`
-/

namespace A078008.P12880957991338182145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (2 * n)

end

end A078008.P12880957991338182145

namespace A078008

/-- `A230096(2*n)` -/
def P12880957991338182145.Spec : Prop :=
  ∀ n, P12880957991338182145.a n = A078008 n

end A078008

/-! ## A078008.P5384043321034053713

`A094359(xor(1, n))`
-/

namespace A078008.P5384043321034053713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 (Nat.xor 1 n)

end

end A078008.P5384043321034053713

namespace A078008

/-- `A094359(xor(1, n))` -/
def P5384043321034053713.Spec : Prop :=
  ∀ n, P5384043321034053713.a n = A078008 n

end A078008

/-! ## A078008.P10356104311000966112

`abs(Δ[A140962(n)])`
-/

namespace A078008.P10356104311000966112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A078008.P10356104311000966112

namespace A078008

/-- `abs(Δ[A140962(n)])` -/
def P10356104311000966112.Spec : Prop :=
  ∀ n, P10356104311000966112.a n = A078008 n

end A078008

/-! ## A078008.P15223543020535043449

`A133684(Δ[n²])`
-/

namespace A078008.P15223543020535043449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078008.P15223543020535043449

namespace A078008

/-- `A133684(Δ[n²])` -/
def P15223543020535043449.Spec : Prop :=
  ∀ n, P15223543020535043449.a n = A078008 n

end A078008

/-! ## A078008.P14575223148820114373

`abs(1-A140966(n))`
-/

namespace A078008.P14575223148820114373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A140966 n|

end

end A078008.P14575223148820114373

namespace A078008

/-- `abs(1-A140966(n))` -/
def P14575223148820114373.Spec : Prop :=
  ∀ n, P14575223148820114373.a n = A078008 n

end A078008

/-! ## A078008.P3734600018765082504

`abs(1-A171501(n))`
-/

namespace A078008.P3734600018765082504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A171501 n|

end

end A078008.P3734600018765082504

namespace A078008

/-- `abs(1-A171501(n))` -/
def P3734600018765082504.Spec : Prop :=
  ∀ n, P3734600018765082504.a n = A078008 n

end A078008

/-! ## A078008.P7213330021909915636

`abs(∑[A117575(2*n)])`
-/

namespace A078008.P7213330021909915636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A078008.P7213330021909915636

namespace A078008

/-- `abs(∑[A117575(2*n)])` -/
def P7213330021909915636.Spec : Prop :=
  ∀ n, P7213330021909915636.a n = A078008 n

end A078008

/-!
# A078009: a(0)=1, for n>=1 a(n) = Sum_{k=0..n} 5^k*N(n,k) where N(n,k) = C(n,k)*C(n,k+1)/n are the Narayana numbers (A001263).

The programs for A078009, the canonical program `A078009.P15779697313729857591` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078009 has offset 0).

The definition of A078009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078009.P15779697313729857591

`(6*(2*n-1)*a(n-1)-16*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078009

/-- `(6*(2*n-1)*a(n-1)-16*(n-2)*a(n-2))/(n+1)` -/
def P15779697313729857591.Spec : Prop :=
  ∀ n, P15779697313729857591.a n = (A078009 n : ℚ)

end A078009

/-! ## A078009.P8167046061543160154

`A127848(floor(acot(n)+n))`
-/

namespace A078009.P8167046061543160154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127848 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A078009.P8167046061543160154

namespace A078009

/-- `A127848(floor(acot(n)+n))` -/
def P8167046061543160154.Spec : Prop :=
  ∀ n, P8167046061543160154.a n = A078009 n

end A078009

/-! ## A078009.P10182223925478616470

`gcd(floor(acot(n)), A127848(n))`
-/

namespace A078009.P10182223925478616470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A127848 n)

end

end A078009.P10182223925478616470

namespace A078009

/-- `gcd(floor(acot(n)), A127848(n))` -/
def P10182223925478616470.Spec : Prop :=
  ∀ n, (P10182223925478616470.a n : ℤ) = A078009 n

end A078009

/-! ## A078009.P14236452470610870668

`A127848(xor(n, floor(acot(n))))`
-/

namespace A078009.P14236452470610870668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127848 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A078009.P14236452470610870668

namespace A078009

/-- `A127848(xor(n, floor(acot(n))))` -/
def P14236452470610870668.Spec : Prop :=
  ∀ n, P14236452470610870668.a n = A078009 n

end A078009

/-! ## A078009.P8875907646257693864

`A127848(C(n, ceil(sin(n)²)))`
-/

namespace A078009.P8875907646257693864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127848 (Nat.choose n ⌈Real.sin (n : ℝ) ^ 2⌉.toNat)

end

end A078009.P8875907646257693864

namespace A078009

/-- `A127848(C(n, ceil(sin(n)²)))` -/
def P8875907646257693864.Spec : Prop :=
  ∀ n, P8875907646257693864.a n = A078009 n

end A078009

/-! ## A078009.P18088949598402893119

`A127848(comp[2*(n+1)]+1-n)`
-/

namespace A078009.P18088949598402893119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127848 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 - n)

end

end A078009.P18088949598402893119

namespace A078009

/-- `A127848(comp[2*(n+1)]+1-n)` -/
def P18088949598402893119.Spec : Prop :=
  ∀ n, P18088949598402893119.a n = A078009 n

end A078009

/-! ## A078009.P3400109637220319030

`A127848(n)+A026729(∑[n])`
-/

namespace A078009.P3400109637220319030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127848 n + A026729 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078009.P3400109637220319030

namespace A078009

/-- `A127848(n)+A026729(∑[n])` -/
def P3400109637220319030.Spec : Prop :=
  ∀ n, P3400109637220319030.a n = A078009 n

end A078009

/-! ## A078009.P8501289645937826412

`A127848(n)+A000123(n)%2`
-/

namespace A078009.P8501289645937826412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127848 n + Int.tmod (A000123 n) 2

end

end A078009.P8501289645937826412

namespace A078009

/-- `A127848(n)+A000123(n)%2` -/
def P8501289645937826412.Spec : Prop :=
  ∀ n, P8501289645937826412.a n = A078009 n

end A078009

/-! ## A078009.P5877003502668645178

`A008550(A167499(n+4))`
-/

namespace A078009.P5877003502668645178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A167499 (n + 4)).toNat

end

end A078009.P5877003502668645178

namespace A078009

/-- `A008550(A167499(n+4))` -/
def P5877003502668645178.Spec : Prop :=
  ∀ n, P5877003502668645178.a n = A078009 n

end A078009

/-! ## A078009.P605871193053157846

`A204057(A052905(n+2))`
-/

namespace A078009.P605871193053157846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A052905 (n + 2)).toNat

end

end A078009.P605871193053157846

namespace A078009

/-- `A204057(A052905(n+2))` -/
def P605871193053157846.Spec : Prop :=
  ∀ n, P605871193053157846.a n = A078009 n

end A078009

/-!
# A078010: Expansion of (1-x)/(1 - x - x^2 - 2*x^3).

The programs for A078010, the canonical program `A078010.P16305064842603840254` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078010 has offset 0).

The definition of A078010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^2-2x^3))` (program `A078010.P16305064842603840254`, by `A078010.P16305064842603840254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078010.P16305064842603840254

`ogf((1-x)/(1-x-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078010

/-- `ogf((1-x)/(1-x-x^2-2x^3))` -/
def P16305064842603840254.Spec : Prop :=
  ∀ n, P16305064842603840254.a n = A078010 n

theorem P16305064842603840254.correct : P16305064842603840254.Spec := by
  intro n
  simp only [A078010]

end A078010

/-! ## A078010.P8780459083958557196

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P8780459083958557196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A078010.P8780459083958557196

namespace A078010

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P8780459083958557196.Spec : Prop :=
  ∀ n, (P8780459083958557196.a n : ℤ) = A078010 n

end A078010

/-! ## A078010.P12370700342948587042

`a(n-3)+2^(n-2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P12370700342948587042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A078010.P12370700342948587042

namespace A078010

/-- `a(n-3)+2^(n-2)` -/
def P12370700342948587042.Spec : Prop :=
  ∀ n, P12370700342948587042.a n = (A078010 n : ℚ)

end A078010

/-! ## A078010.P1648461063862839430

`or(2^(n-2), a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P1648461063862839430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 3))

end

end A078010.P1648461063862839430

namespace A078010

/-- `or(2^(n-2), a(n-3))` -/
def P1648461063862839430.Spec : Prop :=
  ∀ n, P1648461063862839430.a n = A078010 n

end A078010

/-! ## A078010.P12686969773739162024

`xor(2^(n-2), a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P12686969773739162024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 3))

end

end A078010.P12686969773739162024

namespace A078010

/-- `xor(2^(n-2), a(n-3))` -/
def P12686969773739162024.Spec : Prop :=
  ∀ n, P12686969773739162024.a n = A078010 n

end A078010

/-! ## A078010.P6486006205811786041

`xor(2*a(n-1), ((n+1)%3)!)` with `a(0)=1`
-/

namespace A078010.P6486006205811786041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.factorial ((n + 1) % 3))

end

end A078010.P6486006205811786041

namespace A078010

/-- `xor(2*a(n-1), ((n+1)%3)!)` -/
def P6486006205811786041.Spec : Prop :=
  ∀ n, (P6486006205811786041.a n : ℤ) = A078010 n

end A078010

/-! ## A078010.P12585618962135304763

`a(n-3)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P12585618962135304763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 3) + a (n - 1) + (a (n - 2) + a (n - 3))

end

end A078010.P12585618962135304763

namespace A078010

/-- `a(n-3)+a(n-1)+a(n-2)+a(n-3)` -/
def P12585618962135304763.Spec : Prop :=
  ∀ n, (P12585618962135304763.a n : ℤ) = A078010 n

end A078010

/-! ## A078010.P11807085753751830852

`A166578(n+1)-1`
-/

namespace A078010.P11807085753751830852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166578 (n + 1) - 1

end

end A078010.P11807085753751830852

namespace A078010

/-- `A166578(n+1)-1` -/
def P11807085753751830852.Spec : Prop :=
  ∀ n, P11807085753751830852.a n = A078010 n

end A078010

/-! ## A078010.P6418656507393340875

`A034008(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P6418656507393340875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A034008 n + a (n - 3)

end

end A078010.P6418656507393340875

namespace A078010

/-- `A034008(n)+a(n-3)` -/
def P6418656507393340875.Spec : Prop :=
  ∀ n, P6418656507393340875.a n = A078010 n

end A078010

/-! ## A078010.P11650422043867284170

`A166444(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P11650422043867284170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A166444 n + a (n - 3)

end

end A078010.P11650422043867284170

namespace A078010

/-- `A166444(n)+a(n-3)` -/
def P11650422043867284170.Spec : Prop :=
  ∀ n, P11650422043867284170.a n = A078010 n

end A078010

/-! ## A078010.P7418475069869571341

`A178455(n)+A008611(n)`
-/

namespace A078010.P7418475069869571341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178455 n + A008611 n

end

end A078010.P7418475069869571341

namespace A078010

/-- `A178455(n)+A008611(n)` -/
def P7418475069869571341.Spec : Prop :=
  ∀ n, P7418475069869571341.a n = A078010 n

end A078010

/-! ## A078010.P14346807210073365561

`A152732(n+1)+A057078(n)`
-/

namespace A078010.P14346807210073365561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (n + 1) + A057078 n

end

end A078010.P14346807210073365561

namespace A078010

/-- `A152732(n+1)+A057078(n)` -/
def P14346807210073365561.Spec : Prop :=
  ∀ n, P14346807210073365561.a n = A078010 n

end A078010

/-! ## A078010.P16371638076335281458

`2*A166578(n)-A131534(n)²`
-/

namespace A078010.P16371638076335281458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166578 n - A131534 n ^ 2

end

end A078010.P16371638076335281458

namespace A078010

/-- `2*A166578(n)-A131534(n)²` -/
def P16371638076335281458.Spec : Prop :=
  ∀ n, P16371638076335281458.a n = A078010 n

end A078010

/-! ## A078010.P8417524122429283442

`A152732(n+1)-A049347(n+1)`
-/

namespace A078010.P8417524122429283442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (n + 1) - A049347 (n + 1)

end

end A078010.P8417524122429283442

namespace A078010

/-- `A152732(n+1)-A049347(n+1)` -/
def P8417524122429283442.Spec : Prop :=
  ∀ n, P8417524122429283442.a n = A078010 n

end A078010

/-! ## A078010.P5250382841741781667

`A155803(n+1)+2-A130196(n)`
-/

namespace A078010.P5250382841741781667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (n + 1) + (2 - A130196 n)

end

end A078010.P5250382841741781667

namespace A078010

/-- `A155803(n+1)+2-A130196(n)` -/
def P5250382841741781667.Spec : Prop :=
  ∀ n, P5250382841741781667.a n = A078010 n

end A078010

/-! ## A078010.P12048491850042176374

`A131534(n+1)+A155803(n+1)-1`
-/

namespace A078010.P12048491850042176374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (n + 1) + (A155803 (n + 1) - 1)

end

end A078010.P12048491850042176374

namespace A078010

/-- `A131534(n+1)+A155803(n+1)-1` -/
def P12048491850042176374.Spec : Prop :=
  ∀ n, P12048491850042176374.a n = A078010 n

end A078010

/-! ## A078010.P12987685281894134888

`A063823(n+1)-2/A130196(2*n+1)`
-/

namespace A078010.P12987685281894134888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063823 (n + 1) : ℚ) - 2 / (A130196 (2 * n + 1) : ℚ)

end

end A078010.P12987685281894134888

namespace A078010

/-- `A063823(n+1)-2/A130196(2*n+1)` -/
def P12987685281894134888.Spec : Prop :=
  ∀ n, P12987685281894134888.a n = (A078010 n : ℚ)

end A078010

/-! ## A078010.P14018129690037220524

`Δ[2*a(n-1)]+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078010.P14018129690037220524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 3)

end

end A078010.P14018129690037220524

namespace A078010

/-- `Δ[2*a(n-1)]+a(n-3)` -/
def P14018129690037220524.Spec : Prop :=
  ∀ n, P14018129690037220524.a n = A078010 n

end A078010

/-! ## A078010.P17631734557100480522

`A122552(n)-a(n-1)` with `a(0)=1`
-/

namespace A078010.P17631734557100480522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122552 n - a (n - 1)

end

end A078010.P17631734557100480522

namespace A078010

/-- `A122552(n)-a(n-1)` -/
def P17631734557100480522.Spec : Prop :=
  ∀ n, P17631734557100480522.a n = A078010 n

end A078010

/-!
# A078011: Expansion of (1-x)/(1-x-x^2+2*x^3).

The programs for A078011, the canonical program `A078011.P2953892349761441569` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078011 has offset 0).

The definition of A078011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^2+2x^3))` (program `A078011.P2953892349761441569`, by `A078011.P2953892349761441569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078011.P2953892349761441569

`ogf((1-x)/(1-x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078011

/-- `ogf((1-x)/(1-x-x^2+2x^3))` -/
def P2953892349761441569.Spec : Prop :=
  ∀ n, P2953892349761441569.a n = A078011 n

theorem P2953892349761441569.correct : P2953892349761441569.Spec := by
  intro n
  simp only [A078011]

end A078011

/-! ## A078011.P6430330745685272216

`a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078011.P6430330745685272216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A078011.P6430330745685272216

namespace A078011

/-- `a(n-1)+a(n-2)-2*a(n-3)` -/
def P6430330745685272216.Spec : Prop :=
  ∀ n, P6430330745685272216.a n = A078011 n

end A078011

/-! ## A078011.P18186075588969172159

`a(n-1)-(2*a(n-3)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078011.P18186075588969172159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) - (2 * a (n - 3) - a (n - 2))

end

end A078011.P18186075588969172159

namespace A078011

/-- `a(n-1)-(2*a(n-3)-a(n-2))` -/
def P18186075588969172159.Spec : Prop :=
  ∀ n, P18186075588969172159.a n = A078011 n

end A078011

/-! ## A078011.P13445712981687812198

`a(n-1)+a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078011.P13445712981687812198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - a (n - 3) - a (n - 3))

end

end A078011.P13445712981687812198

namespace A078011

/-- `a(n-1)+a(n-2)-a(n-3)-a(n-3)` -/
def P13445712981687812198.Spec : Prop :=
  ∀ n, P13445712981687812198.a n = A078011 n

end A078011

/-! ## A078011.P17714777251584527333

`a(n-1)-(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078011.P17714777251584527333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) - (a (n - 3) - (a (n - 2) - a (n - 3)))

end

end A078011.P17714777251584527333

namespace A078011

/-- `a(n-1)-(a(n-3)-(a(n-2)-a(n-3)))` -/
def P17714777251584527333.Spec : Prop :=
  ∀ n, P17714777251584527333.a n = A078011 n

end A078011

/-! ## A078011.P14668882576032197912

`(A077948(n)+Δ[A077948(n+1)])/2`
-/

namespace A078011.P14668882576032197912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077948 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077948 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A078011.P14668882576032197912

namespace A078011

/-- `(A077948(n)+Δ[A077948(n+1)])/2` -/
def P14668882576032197912.Spec : Prop :=
  ∀ n, P14668882576032197912.a n = (A078011 n : ℚ)

end A078011

/-!
# A078012: a(n) = a(n-1) + a(n-3) for n >= 3, with a(0) = 1, a(1) = a(2) = 0. This recurrence can also be used to define a(n) for n < 0.

The programs for A078012, the canonical program `A078012.P4969154744621373532` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078012 has offset 0).

The definition of A078012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A078012.P4969154744621373532`, by `A078012.P4969154744621373532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078012.P4969154744621373532

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078012

/-- `a(n-1)+a(n-3)` -/
def P4969154744621373532.Spec : Prop :=
  ∀ n, (P4969154744621373532.a n : ℤ) = A078012 n

theorem P4969154744621373532.correct : P4969154744621373532.Spec := by
  intro n
  simp only [A078012]

end A078012

/-! ## A078012.P6883625075546165499

`ogf((-1+x)/(-1+x+x^3))`
-/

namespace A078012.P6883625075546165499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, 0, -1] n

end

end A078012.P6883625075546165499

namespace A078012

/-- `ogf((-1+x)/(-1+x+x^3))` -/
def P6883625075546165499.Spec : Prop :=
  ∀ n, P6883625075546165499.a n = A078012 n

end A078012

/-! ## A078012.P13090231015497617791

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A078012.P13090231015497617791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A078012.P13090231015497617791

namespace A078012

/-- `a(n-1)-floor(-a(n-3))` -/
def P13090231015497617791.Spec : Prop :=
  ∀ n, P13090231015497617791.a n = A078012 n

end A078012

/-! ## A078012.P11494097661223976257

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A078012.P11494097661223976257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A078012.P11494097661223976257

namespace A078012

/-- `a(n-1)-ceil(-a(n-3))` -/
def P11494097661223976257.Spec : Prop :=
  ∀ n, P11494097661223976257.a n = A078012 n

end A078012

/-! ## A078012.P9975995873049238086

`a(n-1)-round(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A078012.P9975995873049238086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A078012.P9975995873049238086

namespace A078012

/-- `a(n-1)-round(-a(n-3))` -/
def P9975995873049238086.Spec : Prop :=
  ∀ n, P9975995873049238086.a n = A078012 n

end A078012

/-! ## A078012.P18180646745057929576

`a(n-1)-(a(n-5)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A078012.P18180646745057929576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 2))

end

end A078012.P18180646745057929576

namespace A078012

/-- `a(n-1)-(a(n-5)-a(n-2))` -/
def P18180646745057929576.Spec : Prop :=
  ∀ n, P18180646745057929576.a n = A078012 n

end A078012

/-! ## A078012.P10360407064272794662

`A135851(n+2)`
-/

namespace A078012.P10360407064272794662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 2)

end

end A078012.P10360407064272794662

namespace A078012

/-- `A135851(n+2)` -/
def P10360407064272794662.Spec : Prop :=
  ∀ n, P10360407064272794662.a n = A078012 n

end A078012

/-! ## A078012.P10646458120039355009

`A107458(n+1)+A107458(n)`
-/

namespace A078012.P10646458120039355009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 1) + A107458 n

end

end A078012.P10646458120039355009

namespace A078012

/-- `A107458(n+1)+A107458(n)` -/
def P10646458120039355009.Spec : Prop :=
  ∀ n, P10646458120039355009.a n = A078012 n

end A078012

/-! ## A078012.P15425483384597056748

`A058278(n)-a(n-1)` with `a(0)=1`
-/

namespace A078012.P15425483384597056748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058278 n - a (n - 1)

end

end A078012.P15425483384597056748

namespace A078012

/-- `A058278(n)-a(n-1)` -/
def P15425483384597056748.Spec : Prop :=
  ∀ n, P15425483384597056748.a n = A078012 n

end A078012

/-! ## A078012.P11802782892065824889

`1-(A135851(n)-∑[A135851(n)])`
-/

namespace A078012.P11802782892065824889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A135851 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078012.P11802782892065824889

namespace A078012

/-- `1-(A135851(n)-∑[A135851(n)])` -/
def P11802782892065824889.Spec : Prop :=
  ∀ n, P11802782892065824889.a n = A078012 n

end A078012

/-! ## A078012.P7458396110457714672

`A013979(n)-A107458(n)-A135851(n)`
-/

namespace A078012.P7458396110457714672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n - A107458 n - A135851 n

end

end A078012.P7458396110457714672

namespace A078012

/-- `A013979(n)-A107458(n)-A135851(n)` -/
def P7458396110457714672.Spec : Prop :=
  ∀ n, P7458396110457714672.a n = A078012 n

end A078012

/-! ## A078012.P2156115413070997349

`A277253(n)-A107458(n)-Δ[A107458(n)]`
-/

namespace A078012.P2156115413070997349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n - A107458 n - (f1 (n + 1) - f1 n)

end

end A078012.P2156115413070997349

namespace A078012

/-- `A277253(n)-A107458(n)-Δ[A107458(n)]` -/
def P2156115413070997349.Spec : Prop :=
  ∀ n, P2156115413070997349.a n = A078012 n

end A078012

/-! ## A078012.P15409443861243688685

`A306276(n)-A277252(n)`
-/

namespace A078012.P15409443861243688685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n - A277252 n

end

end A078012.P15409443861243688685

namespace A078012

/-- `A306276(n)-A277252(n)` -/
def P15409443861243688685.Spec : Prop :=
  ∀ n, P15409443861243688685.a n = A078012 n

end A078012

/-! ## A078012.P9783054491922980626

`Δ[a(n-1)-(1-a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A078012.P9783054491922980626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078012.P9783054491922980626

namespace A078012

/-- `Δ[a(n-1)-(1-a(n-3))]` -/
def P9783054491922980626.Spec : Prop :=
  ∀ n, P9783054491922980626.a n = A078012 n

end A078012

/-! ## A078012.P2575884138756754087

`A277252(n+2)-A277253(n+1)`
-/

namespace A078012.P2575884138756754087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 (n + 2) - A277253 (n + 1)

end

end A078012.P2575884138756754087

namespace A078012

/-- `A277252(n+2)-A277253(n+1)` -/
def P2575884138756754087.Spec : Prop :=
  ∀ n, P2575884138756754087.a n = A078012 n

end A078012

/-! ## A078012.P5007170950404462141

`A277253(n)+A306276(n)-A000930(n)`
-/

namespace A078012.P5007170950404462141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n + (A306276 n - A000930 n)

end

end A078012.P5007170950404462141

namespace A078012

/-- `A277253(n)+A306276(n)-A000930(n)` -/
def P5007170950404462141.Spec : Prop :=
  ∀ n, P5007170950404462141.a n = A078012 n

end A078012

/-! ## A078012.P3000113246551000021

`A058278(n+1)-Δ[A000930(n)]`
-/

namespace A078012.P3000113246551000021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 1) - (f1 (n + 1) - f1 n)

end

end A078012.P3000113246551000021

namespace A078012

/-- `A058278(n+1)-Δ[A000930(n)]` -/
def P3000113246551000021.Spec : Prop :=
  ∀ n, P3000113246551000021.a n = A078012 n

end A078012

/-! ## A078012.P6663911713504863958

`A000930(n+1)-A058278(n+2)`
-/

namespace A078012.P6663911713504863958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) - A058278 (n + 2)

end

end A078012.P6663911713504863958

namespace A078012

/-- `A000930(n+1)-A058278(n+2)` -/
def P6663911713504863958.Spec : Prop :=
  ∀ n, P6663911713504863958.a n = A078012 n

end A078012

/-! ## A078012.P8782223524624201385

`A000930(n)+A000930(n)-A097333(n)`
-/

namespace A078012.P8782223524624201385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + (A000930 n - A097333 n)

end

end A078012.P8782223524624201385

namespace A078012

/-- `A000930(n)+A000930(n)-A097333(n)` -/
def P8782223524624201385.Spec : Prop :=
  ∀ n, P8782223524624201385.a n = A078012 n

end A078012

/-!
# A078013: Expansion of (1-x)/(1-x+x^3).

The programs for A078013, the canonical program `A078013.P13412860991180577886` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078013 has offset 0).

The definition of A078013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+x^3))` (program `A078013.P13412860991180577886`, by `A078013.P13412860991180577886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078013.P13412860991180577886

`ogf((1-x)/(1-x+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078013

/-- `ogf((1-x)/(1-x+x^3))` -/
def P13412860991180577886.Spec : Prop :=
  ∀ n, P13412860991180577886.a n = A078013 n

theorem P13412860991180577886.correct : P13412860991180577886.Spec := by
  intro n
  simp only [A078013]

end A078013

/-! ## A078013.P6097595707133921149

`a(n-1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A078013.P6097595707133921149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - a (n - 3)

end

end A078013.P6097595707133921149

namespace A078013

/-- `a(n-1)-a(n-3)` -/
def P6097595707133921149.Spec : Prop :=
  ∀ n, P6097595707133921149.a n = A078013 n

end A078013

/-! ## A078013.P15581977837679023244

`Δ[A050935(n+2)]`
-/

namespace A078013.P15581977837679023244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078013.P15581977837679023244

namespace A078013

/-- `Δ[A050935(n+2)]` -/
def P15581977837679023244.Spec : Prop :=
  ∀ n, P15581977837679023244.a n = A078013 n

end A078013

/-! ## A078013.P14452742464836018485

`Δ[Δ[A203400(n+1)]]`
-/

namespace A078013.P14452742464836018485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203400 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078013.P14452742464836018485

namespace A078013

/-- `Δ[Δ[A203400(n+1)]]` -/
def P14452742464836018485.Spec : Prop :=
  ∀ n, P14452742464836018485.a n = A078013 n

end A078013

/-! ## A078013.P2553521259260901950

`A050935(n+4)-a(n-1)` with `a(0)=1`
-/

namespace A078013.P2553521259260901950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050935 (n + 4) - a (n - 1)

end

end A078013.P2553521259260901950

namespace A078013

/-- `A050935(n+4)-a(n-1)` -/
def P2553521259260901950.Spec : Prop :=
  ∀ n, P2553521259260901950.a n = A078013 n

end A078013

/-! ## A078013.P15767810748501259154

`A033999(n)*A176971(n)`
-/

namespace A078013.P15767810748501259154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A176971 n

end

end A078013.P15767810748501259154

namespace A078013

/-- `A033999(n)*A176971(n)` -/
def P15767810748501259154.Spec : Prop :=
  ∀ n, P15767810748501259154.a n = A078013 n

end A078013

/-! ## A078013.P13450135320241569390

`A056594(2*n)*A176971(n)`
-/

namespace A078013.P13450135320241569390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A176971 n

end

end A078013.P13450135320241569390

namespace A078013

/-- `A056594(2*n)*A176971(n)` -/
def P13450135320241569390.Spec : Prop :=
  ∀ n, P13450135320241569390.a n = A078013 n

end A078013

/-! ## A078013.P9756946638089704971

`A050935(n+3)-A050935(n+2)`
-/

namespace A078013.P9756946638089704971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 3) - A050935 (n + 2)

end

end A078013.P9756946638089704971

namespace A078013

/-- `A050935(n+3)-A050935(n+2)` -/
def P9756946638089704971.Spec : Prop :=
  ∀ n, P9756946638089704971.a n = A078013 n

end A078013

/-! ## A078013.P16008054935316442809

`(1-A077905(n+1))*A057077(2*n)`
-/

namespace A078013.P16008054935316442809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A077905 (n + 1)) * A057077 (2 * n)

end

end A078013.P16008054935316442809

namespace A078013

/-- `(1-A077905(n+1))*A057077(2*n)` -/
def P16008054935316442809.Spec : Prop :=
  ∀ n, P16008054935316442809.a n = A078013 n

end A078013

/-!
# A078014: Expansion of (1-x)/(1-x+2*x^3).

The programs for A078014, the canonical program `A078014.P7591123853039203363` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078014 has offset 0).

The definition of A078014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+2x^3))` (program `A078014.P7591123853039203363`, by `A078014.P7591123853039203363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078014.P16342877622853690986

`a(n-1)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A078014.P16342877622853690986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - 2 * a (n - 3)

end

end A078014.P16342877622853690986

namespace A078014

/-- `a(n-1)-2*a(n-3)` -/
def P16342877622853690986.Spec : Prop :=
  ∀ n, P16342877622853690986.a n = A078014 n

end A078014

/-! ## A078014.P7591123853039203363

`ogf((1-x)/(1-x+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078014

/-- `ogf((1-x)/(1-x+2x^3))` -/
def P7591123853039203363.Spec : Prop :=
  ∀ n, P7591123853039203363.a n = A078014 n

theorem P7591123853039203363.correct : P7591123853039203363.Spec := by
  intro n
  simp only [A078014]

end A078014

/-! ## A078014.P4882127436469864822

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A078014.P4882127436469864822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A078014.P4882127436469864822

namespace A078014

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P4882127436469864822.Spec : Prop :=
  ∀ n, P4882127436469864822.a n = A078014 n

end A078014

/-! ## A078014.P6461480781269903766

`A146559(n)-a(n-1)` with `a(0)=1`
-/

namespace A078014.P6461480781269903766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146559 n - a (n - 1)

end

end A078014.P6461480781269903766

namespace A078014

/-- `A146559(n)-a(n-1)` -/
def P6461480781269903766.Spec : Prop :=
  ∀ n, P6461480781269903766.a n = A078014 n

end A078014

/-! ## A078014.P4928762505278269498

`∑[A009116(n)]*(xor(1, n)-n)`
-/

namespace A078014.P4928762505278269498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((Nat.xor 1 n : ℤ) - (n : ℤ))

end

end A078014.P4928762505278269498

namespace A078014

/-- `∑[A009116(n)]*(xor(1, n)-n)` -/
def P4928762505278269498.Spec : Prop :=
  ∀ n, P4928762505278269498.a n = A078014 n

end A078014

/-! ## A078014.P15042123992579314618

`A077950(n)+A077950(n)-A009545(n+1)`
-/

namespace A078014.P15042123992579314618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077950 n + (A077950 n - A009545 (n + 1))

end

end A078014.P15042123992579314618

namespace A078014

/-- `A077950(n)+A077950(n)-A009545(n+1)` -/
def P15042123992579314618.Spec : Prop :=
  ∀ n, P15042123992579314618.a n = A078014 n

end A078014

/-! ## A078014.P15138561955444924339

`(A077950(n+1)-A033999(n+1))/2`
-/

namespace A078014.P15138561955444924339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077950 (n + 1) - A033999 (n + 1) : ℚ) / 2

end

end A078014.P15138561955444924339

namespace A078014

/-- `(A077950(n+1)-A033999(n+1))/2` -/
def P15138561955444924339.Spec : Prop :=
  ∀ n, P15138561955444924339.a n = (A078014 n : ℚ)

end A078014

/-! ## A078014.P16390881999568769675

`A138231(Δ[n²])-a(n-1)` with `a(0)=1`
-/

namespace A078014.P16390881999568769675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138231 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A078014.P16390881999568769675

namespace A078014

/-- `A138231(Δ[n²])-a(n-1)` -/
def P16390881999568769675.Spec : Prop :=
  ∀ n, P16390881999568769675.a n = A078014 n

end A078014

/-! ## A078014.P2109627074516254053

`ceil(A138231(2*n+1)-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A078014.P2109627074516254053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138231 (2 * n + 1) - a (n - 1)

end

end A078014.P2109627074516254053

namespace A078014

/-- `ceil(A138231(2*n+1)-a(n-1))` -/
def P2109627074516254053.Spec : Prop :=
  ∀ n, P2109627074516254053.a n = A078014 n

end A078014

/-! ## A078014.P3218346099788702502

`Δ[A138231(2*n)]-a(n-1)` with `a(0)=1`
-/

namespace A078014.P3218346099788702502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A078014.P3218346099788702502

namespace A078014

/-- `Δ[A138231(2*n)]-a(n-1)` -/
def P3218346099788702502.Spec : Prop :=
  ∀ n, P3218346099788702502.a n = A078014 n

end A078014

/-! ## A078014.P14418483778802800368

`A137445(n)-(A077950(n+1)+A077950(n+1))`
-/

namespace A078014.P14418483778802800368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137445 n - (A077950 (n + 1) + A077950 (n + 1))

end

end A078014.P14418483778802800368

namespace A078014

/-- `A137445(n)-(A077950(n+1)+A077950(n+1))` -/
def P14418483778802800368.Spec : Prop :=
  ∀ n, P14418483778802800368.a n = A078014 n

end A078014

/-! ## A078014.P3659176648158615623

`A038503(n)-A038505(n)-a(n-1)` with `a(0)=1`
-/

namespace A078014.P3659176648158615623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038503 n - A038505 n - a (n - 1)

end

end A078014.P3659176648158615623

namespace A078014

/-- `A038503(n)-A038505(n)-a(n-1)` -/
def P3659176648158615623.Spec : Prop :=
  ∀ n, P3659176648158615623.a n = A078014 n

end A078014

/-!
# A078015: Expansion of (1-x)/(1-x+x^2-2*x^3).

The programs for A078015, the canonical program `A078015.P16559959927126062931` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078015 has offset 0).

The definition of A078015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+x^2-2x^3))` (program `A078015.P16559959927126062931`, by `A078015.P16559959927126062931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078015.P4784280328699945181

`a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A078015.P4784280328699945181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 1) - a (n - 2) + 2 * a (n - 3)

end

end A078015.P4784280328699945181

namespace A078015

/-- `a(n-1)-a(n-2)+2*a(n-3)` -/
def P4784280328699945181.Spec : Prop :=
  ∀ n, P4784280328699945181.a n = A078015 n

end A078015

/-! ## A078015.P16559959927126062931

`ogf((1-x)/(1-x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078015

/-- `ogf((1-x)/(1-x+x^2-2x^3))` -/
def P16559959927126062931.Spec : Prop :=
  ∀ n, P16559959927126062931.a n = A078015 n

theorem P16559959927126062931.correct : P16559959927126062931.Spec := by
  intro n
  simp only [A078015]

end A078015

/-! ## A078015.P13355870509375110049

`a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`
-/

namespace A078015.P13355870509375110049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n a =>
  a (n - 3) + 2 * a (n - 4)

end

end A078015.P13355870509375110049

namespace A078015

/-- `a(n-3)+2*a(n-4)` -/
def P13355870509375110049.Spec : Prop :=
  ∀ n, P13355870509375110049.a n = A078015 n

end A078015

/-! ## A078015.P528431717417540856

`a(n-4)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`
-/

namespace A078015.P528431717417540856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n a =>
  a (n - 4) + (a (n - 3) + a (n - 4))

end

end A078015.P528431717417540856

namespace A078015

/-- `a(n-4)+a(n-3)+a(n-4)` -/
def P528431717417540856.Spec : Prop :=
  ∀ n, P528431717417540856.a n = A078015 n

end A078015

/-! ## A078015.P2014781243831474833

`2*a(n-3)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A078015.P2014781243831474833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  2 * a (n - 3) - (a (n - 2) - a (n - 1))

end

end A078015.P2014781243831474833

namespace A078015

/-- `2*a(n-3)-(a(n-2)-a(n-1))` -/
def P2014781243831474833.Spec : Prop :=
  ∀ n, P2014781243831474833.a n = A078015 n

end A078015

/-! ## A078015.P7565306050328816986

`a(n-1)-(a(n-2)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A078015.P7565306050328816986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 3) - a (n - 3))

end

end A078015.P7565306050328816986

namespace A078015

/-- `a(n-1)-(a(n-2)-a(n-3)-a(n-3))` -/
def P7565306050328816986.Spec : Prop :=
  ∀ n, P7565306050328816986.a n = A078015 n

end A078015

/-! ## A078015.P13042502032824772439

`A329301(n)+A329301(n)-A329301(n+2)`
-/

namespace A078015.P13042502032824772439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 n + (A329301 n - A329301 (n + 2))

end

end A078015.P13042502032824772439

namespace A078015

/-- `A329301(n)+A329301(n)-A329301(n+2)` -/
def P13042502032824772439.Spec : Prop :=
  ∀ n, P13042502032824772439.a n = A078015 n

end A078015

/-! ## A078015.P4625308732093855793

`Δ[Δ[A329301(n+1)]]`
-/

namespace A078015.P4625308732093855793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078015.P4625308732093855793

namespace A078015

/-- `Δ[Δ[A329301(n+1)]]` -/
def P4625308732093855793.Spec : Prop :=
  ∀ n, P4625308732093855793.a n = A078015 n

end A078015

/-! ## A078015.P3785519809233307984

`2*A077951(n)-abs(A078047(n))`
-/

namespace A078015.P3785519809233307984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077951 n - |A078047 n|

end

end A078015.P3785519809233307984

namespace A078015

/-- `2*A077951(n)-abs(A078047(n))` -/
def P3785519809233307984.Spec : Prop :=
  ∀ n, P3785519809233307984.a n = A078015 n

end A078015

/-! ## A078015.P15650315034988311910

`Δ[abs(A078047(n))-A077951(n)]`
-/

namespace A078015.P15650315034988311910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078047 n| - A077951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078015.P15650315034988311910

namespace A078015

/-- `Δ[abs(A078047(n))-A077951(n)]` -/
def P15650315034988311910.Spec : Prop :=
  ∀ n, P15650315034988311910.a n = A078015 n

end A078015

/-! ## A078015.P8793144237788170036

`Δ[abs(A077976(n)-A078047(n))]`
-/

namespace A078015.P8793144237788170036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077976 n - A078047 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078015.P8793144237788170036

namespace A078015

/-- `Δ[abs(A077976(n)-A078047(n))]` -/
def P8793144237788170036.Spec : Prop :=
  ∀ n, P8793144237788170036.a n = A078015 n

end A078015

/-! ## A078015.P17537714379633160857

`Δ[(A078047(n)-A077976(n))*A033999(n)]`
-/

namespace A078015.P17537714379633160857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078047 n - A077976 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078015.P17537714379633160857

namespace A078015

/-- `Δ[(A078047(n)-A077976(n))*A033999(n)]` -/
def P17537714379633160857.Spec : Prop :=
  ∀ n, P17537714379633160857.a n = A078015 n

end A078015

/-!
# A078016: Expansion of (1-x)/(1-x+x^2+x^3).

The programs for A078016, the canonical program `A078016.P7457542008049465285` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078016 has offset 0).

The definition of A078016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+x^2+x^3))` (program `A078016.P7457542008049465285`, by `A078016.P7457542008049465285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078016.P7457542008049465285

`ogf((1-x)/(1-x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078016

/-- `ogf((1-x)/(1-x+x^2+x^3))` -/
def P7457542008049465285.Spec : Prop :=
  ∀ n, P7457542008049465285.a n = A078016 n

theorem P7457542008049465285.correct : P7457542008049465285.Spec := by
  intro n
  simp only [A078016]

end A078016

/-! ## A078016.P3236138015025417454

`a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A078016.P3236138015025417454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 3)

end

end A078016.P3236138015025417454

namespace A078016

/-- `a(n-1)-a(n-2)-a(n-3)` -/
def P3236138015025417454.Spec : Prop :=
  ∀ n, P3236138015025417454.a n = A078016 n

end A078016

/-! ## A078016.P16031895195975668708

`A180735(n)-a(n-1)` with `a(0)=1`
-/

namespace A078016.P16031895195975668708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180735 n - a (n - 1)

end

end A078016.P16031895195975668708

namespace A078016

/-- `A180735(n)-a(n-1)` -/
def P16031895195975668708.Spec : Prop :=
  ∀ n, P16031895195975668708.a n = A078016 n

end A078016

/-! ## A078016.P9669218401898617293

`A057597(A065164(n+1))-A057597(n)`
-/

namespace A078016.P9669218401898617293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (A065164 (n + 1)).toNat - A057597 n

end

end A078016.P9669218401898617293

namespace A078016

/-- `A057597(A065164(n+1))-A057597(n)` -/
def P9669218401898617293.Spec : Prop :=
  ∀ n, P9669218401898617293.a n = A078016 n

end A078016

/-! ## A078016.P12516347705461702852

`∑[A180735(n+1)]+1-A180735(n)`
-/

namespace A078016.P12516347705461702852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A180735 n)

end

end A078016.P12516347705461702852

namespace A078016

/-- `∑[A180735(n+1)]+1-A180735(n)` -/
def P12516347705461702852.Spec : Prop :=
  ∀ n, P12516347705461702852.a n = A078016 n

end A078016

/-! ## A078016.P15089866686530312801

`Δ[(-1)^n*∑[A319200(n)]]`
-/

namespace A078016.P15089866686530312801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078016.P15089866686530312801

namespace A078016

/-- `Δ[(-1)^n*∑[A319200(n)]]` -/
def P15089866686530312801.Spec : Prop :=
  ∀ n, P15089866686530312801.a n = A078016 n

end A078016

/-!
# A078017: Expansion of (1-x)/(1-x+x^2+2*x^3).

The programs for A078017, the canonical program `A078017.P17669798003381361841` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078017 has offset 0).

The definition of A078017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+x^2+2x^3))` (program `A078017.P17669798003381361841`, by `A078017.P17669798003381361841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078017.P17669798003381361841

`ogf((1-x)/(1-x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078017

/-- `ogf((1-x)/(1-x+x^2+2x^3))` -/
def P17669798003381361841.Spec : Prop :=
  ∀ n, P17669798003381361841.a n = A078017 n

theorem P17669798003381361841.correct : P17669798003381361841.Spec := by
  intro n
  simp only [A078017]

end A078017

/-! ## A078017.P12983502675356054324

`a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A078017.P12983502675356054324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A078017.P12983502675356054324

namespace A078017

/-- `a(n-1)-a(n-2)-2*a(n-3)` -/
def P12983502675356054324.Spec : Prop :=
  ∀ n, P12983502675356054324.a n = A078017 n

end A078017

/-! ## A078017.P11331655004145814962

`a(n-1)-(a(n-3)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A078017.P11331655004145814962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 1) - (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A078017.P11331655004145814962

namespace A078017

/-- `a(n-1)-(a(n-3)+a(n-2)+a(n-3))` -/
def P11331655004145814962.Spec : Prop :=
  ∀ n, P11331655004145814962.a n = A078017 n

end A078017

/-! ## A078017.P7917931338063152702

`a(n-1)-a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A078017.P7917931338063152702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 3) - a (n - 3)

end

end A078017.P7917931338063152702

namespace A078017

/-- `a(n-1)-a(n-2)-a(n-3)-a(n-3)` -/
def P7917931338063152702.Spec : Prop :=
  ∀ n, P7917931338063152702.a n = A078017 n

end A078017

/-! ## A078017.P15562634066791906848

`Δ[A077952(A025581(∑[n+1]+2))]`
-/

namespace A078017.P15562634066791906848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077952 (A025581 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078017.P15562634066791906848

namespace A078017

/-- `Δ[A077952(A025581(∑[n+1]+2))]` -/
def P15562634066791906848.Spec : Prop :=
  ∀ n, P15562634066791906848.a n = A078017 n

end A078017

/-!
# A078018: a(n) = Sum_{k=0..n} 6^k*N(n,k), with a(0)=1, where N(n,k) = C(n,k) * C(n,k+1)/n are the Narayana numbers (A001263).

The programs for A078018, the canonical program `A078018.P12043446113405033227` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078018 has offset 0).

The definition of A078018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078018.P12043446113405033227

`(7*(2*n-1)*a(n-1)-25*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078018

/-- `(7*(2*n-1)*a(n-1)-25*(n-2)*a(n-2))/(n+1)` -/
def P12043446113405033227.Spec : Prop :=
  ∀ n, P12043446113405033227.a n = (A078018 n : ℚ)

end A078018

/-! ## A078018.P10692104182554057807

`ceil(A082302(n)/6)`
-/

namespace A078018.P10692104182554057807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082302 n : ℚ) / 6⌉

end

end A078018.P10692104182554057807

namespace A078018

/-- `ceil(A082302(n)/6)` -/
def P10692104182554057807.Spec : Prop :=
  ∀ n, P10692104182554057807.a n = A078018 n

end A078018

/-! ## A078018.P3312314779050187254

`A008550(A077169(n+7)+1)`
-/

namespace A078018.P3312314779050187254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A077169 (n + 7) + 1).toNat

end

end A078018.P3312314779050187254

namespace A078018

/-- `A008550(A077169(n+7)+1)` -/
def P3312314779050187254.Spec : Prop :=
  ∀ n, P3312314779050187254.a n = A078018 n

end A078018

/-! ## A078018.P3568104638716886630

`A008550(A000096(n+5)+7)`
-/

namespace A078018.P3568104638716886630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000096 (n + 5) + 7).toNat

end

end A078018.P3568104638716886630

namespace A078018

/-- `A008550(A000096(n+5)+7)` -/
def P3568104638716886630.Spec : Prop :=
  ∀ n, P3568104638716886630.a n = A078018 n

end A078018

/-! ## A078018.P2067582676158033394

`A008550(A000217(n+6)+6)`
-/

namespace A078018.P2067582676158033394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000217 (n + 6) + 6).toNat

end

end A078018.P2067582676158033394

namespace A078018

/-- `A008550(A000217(n+6)+6)` -/
def P2067582676158033394.Spec : Prop :=
  ∀ n, P2067582676158033394.a n = A078018 n

end A078018

/-! ## A078018.P14853486536078232917

`A204057(Δ[A023551(n+1)])`
-/

namespace A078018.P14853486536078232917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (f1 (n + 1) - f1 n).toNat

end

end A078018.P14853486536078232917

namespace A078018

/-- `A204057(Δ[A023551(n+1)])` -/
def P14853486536078232917.Spec : Prop :=
  ∀ n, P14853486536078232917.a n = A078018 n

end A078018

/-! ## A078018.P8796164833844888536

`A204057(A052905(n+3)-1)`
-/

namespace A078018.P8796164833844888536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A052905 (n + 3) - 1).toNat

end

end A078018.P8796164833844888536

namespace A078018

/-- `A204057(A052905(n+3)-1)` -/
def P8796164833844888536.Spec : Prop :=
  ∀ n, P8796164833844888536.a n = A078018 n

end A078018

/-! ## A078018.P13049206209660387520

`A243631(A055999(n+4)-1)`
-/

namespace A078018.P13049206209660387520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A055999 (n + 4) - 1).toNat

end

end A078018.P13049206209660387520

namespace A078018

/-- `A243631(A055999(n+4)-1)` -/
def P13049206209660387520.Spec : Prop :=
  ∀ n, P13049206209660387520.a n = A078018 n

end A078018

/-! ## A078018.P2386924958751345333

`A243631(A253145(n+6)-7)`
-/

namespace A078018.P2386924958751345333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A253145 (n + 6) - 7).toNat

end

end A078018.P2386924958751345333

namespace A078018

/-- `A243631(A253145(n+6)-7)` -/
def P2386924958751345333.Spec : Prop :=
  ∀ n, P2386924958751345333.a n = A078018 n

end A078018

/-!
# A078019: Expansion of (1-x)/(1-x+2*x^2-x^3).

The programs for A078019, the canonical program `A078019.P15369969717425726583` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078019 has offset 0).

The definition of A078019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+2x^2-x^3))` (program `A078019.P15369969717425726583`, by `A078019.P15369969717425726583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078019.P15369969717425726583

`ogf((1-x)/(1-x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078019

/-- `ogf((1-x)/(1-x+2x^2-x^3))` -/
def P15369969717425726583.Spec : Prop :=
  ∀ n, P15369969717425726583.a n = A078019 n

theorem P15369969717425726583.correct : P15369969717425726583.Spec := by
  intro n
  simp only [A078019]

end A078019

/-! ## A078019.P6946656261633987454

`a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A078019.P6946656261633987454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A078019.P6946656261633987454

namespace A078019

/-- `a(n-1)-2*a(n-2)+a(n-3)` -/
def P6946656261633987454.Spec : Prop :=
  ∀ n, P6946656261633987454.a n = A078019 n

end A078019

/-! ## A078019.P6176983275452512316

`a(n-4)-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=-1`
-/

namespace A078019.P6176983275452512316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, -1] fun n a =>
  a (n - 4) - (a (n - 2) + a (n - 3))

end

end A078019.P6176983275452512316

namespace A078019

/-- `a(n-4)-(a(n-2)+a(n-3))` -/
def P6176983275452512316.Spec : Prop :=
  ∀ n, P6176983275452512316.a n = A078019 n

end A078019

/-! ## A078019.P12037830958598434476

`a(n-4)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=-1`
-/

namespace A078019.P12037830958598434476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, -1] fun n a =>
  a (n - 4) - a (n - 2) - a (n - 3)

end

end A078019.P12037830958598434476

namespace A078019

/-- `a(n-4)-a(n-2)-a(n-3)` -/
def P12037830958598434476.Spec : Prop :=
  ∀ n, P12037830958598434476.a n = A078019 n

end A078019

/-! ## A078019.P2747790248507558441

`A141576(n+2)`
-/

namespace A078019.P2747790248507558441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141576 (n + 2)

end

end A078019.P2747790248507558441

namespace A078019

/-- `A141576(n+2)` -/
def P2747790248507558441.Spec : Prop :=
  ∀ n, P2747790248507558441.a n = A078019 n

end A078019

/-! ## A078019.P17056732239790733564

`∑[A077954(n+1)]`
-/

namespace A078019.P17056732239790733564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078019.P17056732239790733564

namespace A078019

/-- `∑[A077954(n+1)]` -/
def P17056732239790733564.Spec : Prop :=
  ∀ n, P17056732239790733564.a n = A078019 n

end A078019

/-! ## A078019.P13979556697969109350

`Δ[A050935(Δ[n²])]`
-/

namespace A078019.P13979556697969109350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078019.P13979556697969109350

namespace A078019

/-- `Δ[A050935(Δ[n²])]` -/
def P13979556697969109350.Spec : Prop :=
  ∀ n, P13979556697969109350.a n = A078019 n

end A078019

/-! ## A078019.P10749866517289342198

`Δ[A176971(Δ[n²])]`
-/

namespace A078019.P10749866517289342198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078019.P10749866517289342198

namespace A078019

/-- `Δ[A176971(Δ[n²])]` -/
def P10749866517289342198.Spec : Prop :=
  ∀ n, P10749866517289342198.a n = A078019 n

end A078019

/-! ## A078019.P6289977503593160471

`A104769(2*(n+1))`
-/

namespace A078019.P6289977503593160471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * (n + 1))

end

end A078019.P6289977503593160471

namespace A078019

/-- `A104769(2*(n+1))` -/
def P6289977503593160471.Spec : Prop :=
  ∀ n, P6289977503593160471.a n = A078019 n

end A078019

/-! ## A078019.P17677206663575168668

`A050935(2*(n+2))`
-/

namespace A078019.P17677206663575168668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * (n + 2))

end

end A078019.P17677206663575168668

namespace A078019

/-- `A050935(2*(n+2))` -/
def P17677206663575168668.Spec : Prop :=
  ∀ n, P17677206663575168668.a n = A078019 n

end A078019

/-! ## A078019.P9379467769556034107

`1-A203400(Δ[n²])`
-/

namespace A078019.P9379467769556034107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A203400 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078019.P9379467769556034107

namespace A078019

/-- `1-A203400(Δ[n²])` -/
def P9379467769556034107.Spec : Prop :=
  ∀ n, P9379467769556034107.a n = A078019 n

end A078019

/-! ## A078019.P17862372620615077446

`∑[A050935(lt[1, A051494(n)]+3)]`
-/

namespace A078019.P17862372620615077446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078019.P17862372620615077446

namespace A078019

/-- `∑[A050935(lt[1, A051494(n)]+3)]` -/
def P17862372620615077446.Spec : Prop :=
  ∀ n, P17862372620615077446.a n = A078019 n

end A078019

/-! ## A078019.P5096391406796505419

`∑[A050935(comp[A124625(n)+1]+3)]`
-/

namespace A078019.P5096391406796505419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078019.P5096391406796505419

namespace A078019

/-- `∑[A050935(comp[A124625(n)+1]+3)]` -/
def P5096391406796505419.Spec : Prop :=
  ∀ n, P5096391406796505419.a n = A078019 n

end A078019

/-! ## A078019.P16735535659592112755

`∑[A176971(2*n)-A176971(2*n+1)]`
-/

namespace A078019.P16735535659592112755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n) - A176971 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078019.P16735535659592112755

namespace A078019

/-- `∑[A176971(2*n)-A176971(2*n+1)]` -/
def P16735535659592112755.Spec : Prop :=
  ∀ n, P16735535659592112755.a n = A078019 n

end A078019

/-! ## A078019.P2542120935642031581

`A176971(2*n+3)-A176971(2*n+1)`
-/

namespace A078019.P2542120935642031581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 3) - A176971 (2 * n + 1)

end

end A078019.P2542120935642031581

namespace A078019

/-- `A176971(2*n+3)-A176971(2*n+1)` -/
def P2542120935642031581.Spec : Prop :=
  ∀ n, P2542120935642031581.a n = A078019 n

end A078019

/-! ## A078019.P10426523518732689743

`A077954(n)+A077954(n)-A166117(n+1)`
-/

namespace A078019.P10426523518732689743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077954 n + (A077954 n - A166117 (n + 1))

end

end A078019.P10426523518732689743

namespace A078019

/-- `A077954(n)+A077954(n)-A166117(n+1)` -/
def P10426523518732689743.Spec : Prop :=
  ∀ n, P10426523518732689743.a n = A078019 n

end A078019

/-! ## A078019.P2985145119874582571

`A077875(n+1)-1`
-/

namespace A078019.P2985145119874582571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077875 (n + 1) - 1

end

end A078019.P2985145119874582571

namespace A078019

/-- `A077875(n+1)-1` -/
def P2985145119874582571.Spec : Prop :=
  ∀ n, P2985145119874582571.a n = A078019 n

end A078019

/-! ## A078019.P5964932713086252559

`A077905(2*n)-A077905(2*n+1)`
-/

namespace A078019.P5964932713086252559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 (2 * n) - A077905 (2 * n + 1)

end

end A078019.P5964932713086252559

namespace A078019

/-- `A077905(2*n)-A077905(2*n+1)` -/
def P5964932713086252559.Spec : Prop :=
  ∀ n, P5964932713086252559.a n = A078019 n

end A078019

/-! ## A078019.P9560126831467722271

`∑[A078013(2*n+1)+A078013(2*n)]`
-/

namespace A078019.P9560126831467722271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 (2 * n + 1) + A078013 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078019.P9560126831467722271

namespace A078019

/-- `∑[A078013(2*n+1)+A078013(2*n)]` -/
def P9560126831467722271.Spec : Prop :=
  ∀ n, P9560126831467722271.a n = A078019 n

end A078019

/-! ## A078019.P444539500657128322

`A176971(2*n+3)+A078013(2*n+1)`
-/

namespace A078019.P444539500657128322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 3) + A078013 (2 * n + 1)

end

end A078019.P444539500657128322

namespace A078019

/-- `A176971(2*n+3)+A078013(2*n+1)` -/
def P444539500657128322.Spec : Prop :=
  ∀ n, P444539500657128322.a n = A078019 n

end A078019

/-!
# A078020: Expansion of (1-x)/(1-x+2*x^2).

The programs for A078020, the canonical program `A078020.P7054773901734507042` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078020 has offset 0).

The definition of A078020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+2x^2))` (program `A078020.P7054773901734507042`, by `A078020.P7054773901734507042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078020.P7054773901734507042

`ogf((1-x)/(1-x+2x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078020

/-- `ogf((1-x)/(1-x+2x^2))` -/
def P7054773901734507042.Spec : Prop :=
  ∀ n, P7054773901734507042.a n = A078020 n

theorem P7054773901734507042.correct : P7054773901734507042.Spec := by
  intro n
  simp only [A078020]

end A078020

/-! ## A078020.P12045209519758656648

`a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A078020.P12045209519758656648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - 2 * a (n - 2)

end

end A078020.P12045209519758656648

namespace A078020

/-- `a(n-1)-2*a(n-2)` -/
def P12045209519758656648.Spec : Prop :=
  ∀ n, P12045209519758656648.a n = A078020 n

end A078020

/-! ## A078020.P17012858257036381750

`A107920(n+1)-A107920(n)`
-/

namespace A078020.P17012858257036381750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (n + 1) - A107920 n

end

end A078020.P17012858257036381750

namespace A078020

/-- `A107920(n+1)-A107920(n)` -/
def P17012858257036381750.Spec : Prop :=
  ∀ n, P17012858257036381750.a n = A078020 n

end A078020

/-! ## A078020.P11073635925377718965

`a(n-1)-(a(n-2)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A078020.P11073635925377718965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (a (n - 2) + a (n - 2))

end

end A078020.P11073635925377718965

namespace A078020

/-- `a(n-1)-(a(n-2)+a(n-2))` -/
def P11073635925377718965.Spec : Prop :=
  ∀ n, P11073635925377718965.a n = A078020 n

end A078020

/-! ## A078020.P8582981697670500705

`a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A078020.P8582981697670500705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2)

end

end A078020.P8582981697670500705

namespace A078020

/-- `a(n-1)-a(n-2)-a(n-2)` -/
def P8582981697670500705.Spec : Prop :=
  ∀ n, P8582981697670500705.a n = A078020 n

end A078020

/-! ## A078020.P9412360745650836378

`Δ[A107920(n)]`
-/

namespace A078020.P9412360745650836378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078020.P9412360745650836378

namespace A078020

/-- `Δ[A107920(n)]` -/
def P9412360745650836378.Spec : Prop :=
  ∀ n, P9412360745650836378.a n = A078020 n

end A078020

/-! ## A078020.P14617195480991718919

`Δ[Δ[n-A105578(n)]]`
-/

namespace A078020.P14617195480991718919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078020.P14617195480991718919

namespace A078020

/-- `Δ[Δ[n-A105578(n)]]` -/
def P14617195480991718919.Spec : Prop :=
  ∀ n, P14617195480991718919.a n = A078020 n

end A078020

/-! ## A078020.P183482399576964067

`A033999(n)*A110512(n)`
-/

namespace A078020.P183482399576964067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A110512 n

end

end A078020.P183482399576964067

namespace A078020

/-- `A033999(n)*A110512(n)` -/
def P183482399576964067.Spec : Prop :=
  ∀ n, P183482399576964067.a n = A078020 n

end A078020

/-! ## A078020.P8303364371467197758

`A105225(n)-A105578(n+2)`
-/

namespace A078020.P8303364371467197758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 n - A105578 (n + 2)

end

end A078020.P8303364371467197758

namespace A078020

/-- `A105225(n)-A105578(n+2)` -/
def P8303364371467197758.Spec : Prop :=
  ∀ n, P8303364371467197758.a n = A078020 n

end A078020

/-! ## A078020.P920646290534966423

`A001607(n+1)/A107920(n+1)*A110512(n)`
-/

namespace A078020.P920646290534966423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001607 (n + 1) : ℚ) / (A107920 (n + 1) : ℚ) * (A110512 n : ℚ)

end

end A078020.P920646290534966423

namespace A078020

/-- `A001607(n+1)/A107920(n+1)*A110512(n)` -/
def P920646290534966423.Spec : Prop :=
  ∀ n, P920646290534966423.a n = (A078020 n : ℚ)

end A078020

/-! ## A078020.P18054763495575905354

`A077876(n+1)-A105578(n)`
-/

namespace A078020.P18054763495575905354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (n + 1) - A105578 n

end

end A078020.P18054763495575905354

namespace A078020

/-- `A077876(n+1)-A105578(n)` -/
def P18054763495575905354.Spec : Prop :=
  ∀ n, P18054763495575905354.a n = A078020 n

end A078020

/-! ## A078020.P7245816146143060045

`(A002249(n)-A107920(n))/2`
-/

namespace A078020.P7245816146143060045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002249 n - A107920 n : ℚ) / 2

end

end A078020.P7245816146143060045

namespace A078020

/-- `(A002249(n)-A107920(n))/2` -/
def P7245816146143060045.Spec : Prop :=
  ∀ n, P7245816146143060045.a n = (A078020 n : ℚ)

end A078020

/-! ## A078020.P565125743264619774

`A105578(n+1)+A105576(n)-A105579(n+1)`
-/

namespace A078020.P565125743264619774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (n + 1) + (A105576 n - A105579 (n + 1))

end

end A078020.P565125743264619774

namespace A078020

/-- `A105578(n+1)+A105576(n)-A105579(n+1)` -/
def P565125743264619774.Spec : Prop :=
  ∀ n, P565125743264619774.a n = A078020 n

end A078020

/-! ## A078020.P2796942347967321827

`A105577(n+1)+A167433(n+1)-A105577(n)`
-/

namespace A078020.P2796942347967321827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105577 (n + 1) + (A167433 (n + 1) - A105577 n)

end

end A078020.P2796942347967321827

namespace A078020

/-- `A105577(n+1)+A167433(n+1)-A105577(n)` -/
def P2796942347967321827.Spec : Prop :=
  ∀ n, P2796942347967321827.a n = A078020 n

end A078020

/-! ## A078020.P2326471837195272174

`A105576(n+1)/2-A105578(n+1)`
-/

namespace A078020.P2326471837195272174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105576 (n + 1) : ℚ) / 2 - (A105578 (n + 1) : ℚ)

end

end A078020.P2326471837195272174

namespace A078020

/-- `A105576(n+1)/2-A105578(n+1)` -/
def P2326471837195272174.Spec : Prop :=
  ∀ n, P2326471837195272174.a n = (A078020 n : ℚ)

end A078020

/-! ## A078020.P15938985011039426990

`A214733(n+1)/A106852(n)*A110512(n)`
-/

namespace A078020.P15938985011039426990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (n + 1) : ℚ) / (A106852 n : ℚ) * (A110512 n : ℚ)

end

end A078020.P15938985011039426990

namespace A078020

/-- `A214733(n+1)/A106852(n)*A110512(n)` -/
def P15938985011039426990.Spec : Prop :=
  ∀ n, P15938985011039426990.a n = (A078020 n : ℚ)

end A078020

/-!
# A078021: Expansion of (1-x)/(1-x+2*x^2+x^3).

The programs for A078021, the canonical program `A078021.P8555231082596578183` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078021 has offset 0).

The definition of A078021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+2x^2+x^3))` (program `A078021.P8555231082596578183`, by `A078021.P8555231082596578183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078021.P8555231082596578183

`ogf((1-x)/(1-x+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078021

/-- `ogf((1-x)/(1-x+2x^2+x^3))` -/
def P8555231082596578183.Spec : Prop :=
  ∀ n, P8555231082596578183.a n = A078021 n

theorem P8555231082596578183.correct : P8555231082596578183.Spec := by
  intro n
  simp only [A078021]

end A078021

/-! ## A078021.P16931470564332645433

`a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A078021.P16931470564332645433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 1) - 2 * a (n - 2) - a (n - 3)

end

end A078021.P16931470564332645433

namespace A078021

/-- `a(n-1)-2*a(n-2)-a(n-3)` -/
def P16931470564332645433.Spec : Prop :=
  ∀ n, P16931470564332645433.a n = A078021 n

end A078021

/-! ## A078021.P4741463009156311333

`a(n-1)-(a(n-2)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A078021.P4741463009156311333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 1) - (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A078021.P4741463009156311333

namespace A078021

/-- `a(n-1)-(a(n-2)+a(n-2)+a(n-3))` -/
def P4741463009156311333.Spec : Prop :=
  ∀ n, P4741463009156311333.a n = A078021 n

end A078021

/-! ## A078021.P18051389012035224536

`a(n-1)-a(n-2)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A078021.P18051389012035224536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2) - a (n - 3)

end

end A078021.P18051389012035224536

namespace A078021

/-- `a(n-1)-a(n-2)-a(n-2)-a(n-3)` -/
def P18051389012035224536.Spec : Prop :=
  ∀ n, P18051389012035224536.a n = A078021 n

end A078021

/-! ## A078021.P4431063149842964542

`(2-A078049(n)/A077978(n))*A077955(n)`
-/

namespace A078021.P4431063149842964542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (A078049 n : ℚ) / (A077978 n : ℚ)) * (A077955 n : ℚ)

end

end A078021.P4431063149842964542

namespace A078021

/-- `(2-A078049(n)/A077978(n))*A077955(n)` -/
def P4431063149842964542.Spec : Prop :=
  ∀ n, P4431063149842964542.a n = (A078021 n : ℚ)

end A078021

/-!
# A078022: Expansion of (1-x)/(1-x+2*x^2+2*x^3).

The programs for A078022, the canonical program `A078022.P4848898131945071188` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078022 has offset 0).

The definition of A078022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x+2x^2+2x^3))` (program `A078022.P4848898131945071188`, by `A078022.P4848898131945071188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078022.P4848898131945071188

`ogf((1-x)/(1-x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078022

/-- `ogf((1-x)/(1-x+2x^2+2x^3))` -/
def P4848898131945071188.Spec : Prop :=
  ∀ n, P4848898131945071188.a n = A078022 n

theorem P4848898131945071188.correct : P4848898131945071188.Spec := by
  intro n
  simp only [A078022]

end A078022

/-! ## A078022.P11593189225713134063

`a(n-1)-2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A078022.P11593189225713134063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3)

end

end A078022.P11593189225713134063

namespace A078022

/-- `a(n-1)-2*a(n-2)-2*a(n-3)` -/
def P11593189225713134063.Spec : Prop :=
  ∀ n, P11593189225713134063.a n = A078022 n

end A078022

/-! ## A078022.P9003108034882265163

`a(n-1)-2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A078022.P9003108034882265163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 1) - 2 * (a (n - 2) + a (n - 3))

end

end A078022.P9003108034882265163

namespace A078022

/-- `a(n-1)-2*(a(n-2)+a(n-3))` -/
def P9003108034882265163.Spec : Prop :=
  ∀ n, P9003108034882265163.a n = A078022 n

end A078022

/-!
# A078023: Expansion of (1-x)/(1-2*x^2-2*x^3).

The programs for A078023, the canonical program `A078023.P18051740563718430126` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078023 has offset 0).

The definition of A078023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x^2-2x^3))` (program `A078023.P18051740563718430126`, by `A078023.P18051740563718430126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078023.P18051740563718430126

`ogf((1-x)/(1-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078023

/-- `ogf((1-x)/(1-2x^2-2x^3))` -/
def P18051740563718430126.Spec : Prop :=
  ∀ n, P18051740563718430126.a n = A078023 n

theorem P18051740563718430126.correct : P18051740563718430126.Spec := by
  intro n
  simp only [A078023]

end A078023

/-! ## A078023.P5381799168922588226

`2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078023.P5381799168922588226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3)

end

end A078023.P5381799168922588226

namespace A078023

/-- `2*a(n-2)+2*a(n-3)` -/
def P5381799168922588226.Spec : Prop :=
  ∀ n, P5381799168922588226.a n = A078023 n

end A078023

/-! ## A078023.P8385402530299591450

`2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078023.P8385402530299591450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  2 * (a (n - 2) + a (n - 3))

end

end A078023.P8385402530299591450

namespace A078023

/-- `2*(a(n-2)+a(n-3))` -/
def P8385402530299591450.Spec : Prop :=
  ∀ n, P8385402530299591450.a n = A078023 n

end A078023

/-! ## A078023.P16050692354456433835

`a(n-2)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078023.P16050692354456433835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A078023.P16050692354456433835

namespace A078023

/-- `a(n-2)+a(n-3)+a(n-2)+a(n-3)` -/
def P16050692354456433835.Spec : Prop :=
  ∀ n, P16050692354456433835.a n = A078023 n

end A078023

/-! ## A078023.P9796577978330042302

`Δ[A247302(3*n)]`
-/

namespace A078023.P9796577978330042302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078023.P9796577978330042302

namespace A078023

/-- `Δ[A247302(3*n)]` -/
def P9796577978330042302.Spec : Prop :=
  ∀ n, P9796577978330042302.a n = A078023 n

end A078023

/-! ## A078023.P11213576418752851627

`Δ[A052907(abs(1-n))]`
-/

namespace A078023.P11213576418752851627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078023.P11213576418752851627

namespace A078023

/-- `Δ[A052907(abs(1-n))]` -/
def P11213576418752851627.Spec : Prop :=
  ∀ n, P11213576418752851627.a n = A078023 n

end A078023

/-! ## A078023.P621717279632760118

`A052907(n)-A052907(abs(1-n))`
-/

namespace A078023.P621717279632760118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 n - A052907 |1 - (n : ℤ)|.toNat

end

end A078023.P621717279632760118

namespace A078023

/-- `A052907(n)-A052907(abs(1-n))` -/
def P621717279632760118.Spec : Prop :=
  ∀ n, P621717279632760118.a n = A078023 n

end A078023

/-! ## A078023.P18092624459399219993

`A247302(A112652(n+1))-A247302(3*n)`
-/

namespace A078023.P18092624459399219993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (A112652 (n + 1)).toNat - A247302 (3 * n)

end

end A078023.P18092624459399219993

namespace A078023

/-- `A247302(A112652(n+1))-A247302(3*n)` -/
def P18092624459399219993.Spec : Prop :=
  ∀ n, P18092624459399219993.a n = A078023 n

end A078023

/-! ## A078023.P3280932705238755557

`A247302(A187334(n+1))-A247302(3*n)`
-/

namespace A078023.P3280932705238755557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (A187334 (n + 1)).toNat - A247302 (3 * n)

end

end A078023.P3280932705238755557

namespace A078023

/-- `A247302(A187334(n+1))-A247302(3*n)` -/
def P3280932705238755557.Spec : Prop :=
  ∀ n, P3280932705238755557.a n = A078023 n

end A078023

/-! ## A078023.P13102564242495905021

`Δ[A061279(n)-Δ[A061279(n)]]`
-/

namespace A078023.P13102564242495905021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078023.P13102564242495905021

namespace A078023

/-- `Δ[A061279(n)-Δ[A061279(n)]]` -/
def P13102564242495905021.Spec : Prop :=
  ∀ n, P13102564242495905021.a n = A078023 n

end A078023

/-!
# A078024: Expansion of (1-x)/(1-2*x^2-x^3).

The programs for A078024, the canonical program `A078024.P4218849441744300319` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078024 has offset 0).

The definition of A078024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x^2-x^3))` (program `A078024.P4218849441744300319`, by `A078024.P4218849441744300319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078024.P4218849441744300319

`ogf((1-x)/(1-2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078024

/-- `ogf((1-x)/(1-2x^2-x^3))` -/
def P4218849441744300319.Spec : Prop :=
  ∀ n, P4218849441744300319.a n = A078024 n

theorem P4218849441744300319.correct : P4218849441744300319.Spec := by
  intro n
  simp only [A078024]

end A078024

/-! ## A078024.P2293329166647580825

`(-1)^n*A112469(n)`
-/

namespace A078024.P2293329166647580825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112469 n

end

end A078024.P2293329166647580825

namespace A078024

/-- `(-1)^n*A112469(n)` -/
def P2293329166647580825.Spec : Prop :=
  ∀ n, P2293329166647580825.a n = A078024 n

end A078024

/-! ## A078024.P12157210441349838448

`a(n-3)+2*a(n-2)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078024.P12157210441349838448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 3) + 2 * a (n - 2)

end

end A078024.P12157210441349838448

namespace A078024

/-- `a(n-3)+2*a(n-2)` -/
def P12157210441349838448.Spec : Prop :=
  ∀ n, P12157210441349838448.a n = A078024 n

end A078024

/-! ## A078024.P4638439597630366734

`a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078024.P4638439597630366734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A078024.P4638439597630366734

namespace A078024

/-- `a(n-2)+a(n-2)+a(n-3)` -/
def P4638439597630366734.Spec : Prop :=
  ∀ n, P4638439597630366734.a n = A078024 n

end A078024

/-! ## A078024.P9655651945651939014

`2*A033999(n)-A152163(n)`
-/

namespace A078024.P9655651945651939014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033999 n - A152163 n

end

end A078024.P9655651945651939014

namespace A078024

/-- `2*A033999(n)-A152163(n)` -/
def P9655651945651939014.Spec : Prop :=
  ∀ n, P9655651945651939014.a n = A078024 n

end A078024

/-! ## A078024.P4832513890505615053

`A290968(n)-(A131531(n+2)+A092220(n))`
-/

namespace A078024.P4832513890505615053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290968 n - (A131531 (n + 2) + A092220 n)

end

end A078024.P4832513890505615053

namespace A078024

/-- `A290968(n)-(A131531(n+2)+A092220(n))` -/
def P4832513890505615053.Spec : Prop :=
  ∀ n, P4832513890505615053.a n = A078024 n

end A078024

/-! ## A078024.P10365502567837886786

`(-1)^n*∑[a(n-2)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A078024.P10365502567837886786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078024.P10365502567837886786

namespace A078024

/-- `(-1)^n*∑[a(n-2)-a(n-1)]` -/
def P10365502567837886786.Spec : Prop :=
  ∀ n, P10365502567837886786.a n = A078024 n

end A078024

/-! ## A078024.P5259413806294910296

`∑[a(n-2)-a(n-1)]/(-1)^n` with `a(0)=1, a(1)=0`
-/

namespace A078024.P5259413806294910296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A078024.P5259413806294910296

namespace A078024

/-- `∑[a(n-2)-a(n-1)]/(-1)^n` -/
def P5259413806294910296.Spec : Prop :=
  ∀ n, P5259413806294910296.a n = (A078024 n : ℚ)

end A078024

/-! ## A078024.P12823110594765177728

`3*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078024.P12823110594765177728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A078024.P12823110594765177728

namespace A078024

/-- `3*a(n-2)-(a(n-2)-a(n-3))` -/
def P12823110594765177728.Spec : Prop :=
  ∀ n, P12823110594765177728.a n = A078024 n

end A078024

/-! ## A078024.P14824511997805186406

`A212804(n)-a(n-1)` with `a(0)=1`
-/

namespace A078024.P14824511997805186406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212804 n - a (n - 1)

end

end A078024.P14824511997805186406

namespace A078024

/-- `A212804(n)-a(n-1)` -/
def P14824511997805186406.Spec : Prop :=
  ∀ n, P14824511997805186406.a n = A078024 n

end A078024

/-! ## A078024.P13414428443252898547

`A000045(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A078024.P13414428443252898547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n - 1) - a (n - 1)

end

end A078024.P13414428443252898547

namespace A078024

/-- `A000045(n-1)-a(n-1)` -/
def P13414428443252898547.Spec : Prop :=
  ∀ n, P13414428443252898547.a n = A078024 n

end A078024

/-! ## A078024.P6152688340591725281

`A001611(n-1)-1-a(n-1)` with `a(0)=1`
-/

namespace A078024.P6152688340591725281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001611 (n - 1) - 1 - a (n - 1)

end

end A078024.P6152688340591725281

namespace A078024

/-- `A001611(n-1)-1-a(n-1)` -/
def P6152688340591725281.Spec : Prop :=
  ∀ n, P6152688340591725281.a n = A078024 n

end A078024

/-! ## A078024.P6154043099794283256

`Δ[abs(Δ[∑[a(n-2)-a(n-1)]-n])]` with `a(0)=1, a(1)=1`
-/

namespace A078024.P6154043099794283256
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 2) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078024.P6154043099794283256

namespace A078024

/-- `Δ[abs(Δ[∑[a(n-2)-a(n-1)]-n])]` -/
def P6154043099794283256.Spec : Prop :=
  ∀ n, P6154043099794283256.a n = A078024 n

end A078024

/-! ## A078024.P12208340659430626038

`Δ[abs(A119282(n))]`
-/

namespace A078024.P12208340659430626038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078024.P12208340659430626038

namespace A078024

/-- `Δ[abs(A119282(n))]` -/
def P12208340659430626038.Spec : Prop :=
  ∀ n, P12208340659430626038.a n = A078024 n

end A078024

/-! ## A078024.P11290732546594418281

`Δ[A247050(3*n)]`
-/

namespace A078024.P11290732546594418281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078024.P11290732546594418281

namespace A078024

/-- `Δ[A247050(3*n)]` -/
def P11290732546594418281.Spec : Prop :=
  ∀ n, P11290732546594418281.a n = A078024 n

end A078024

/-! ## A078024.P14127676651056912704

`Δ[A008346(abs(1-n))]`
-/

namespace A078024.P14127676651056912704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078024.P14127676651056912704

namespace A078024

/-- `Δ[A008346(abs(1-n))]` -/
def P14127676651056912704.Spec : Prop :=
  ∀ n, P14127676651056912704.a n = A078024 n

end A078024

/-! ## A078024.P9603168203387207921

`Δ[A000032(n-3)+a(n-4)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A078024.P9603168203387207921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n f1 =>
  A000032 (n - 3) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078024.P9603168203387207921

namespace A078024

/-- `Δ[A000032(n-3)+a(n-4)]` -/
def P9603168203387207921.Spec : Prop :=
  ∀ n, P9603168203387207921.a n = A078024 n

end A078024

/-! ## A078024.P8532215482321896770

`Δ[A212804(n)-A033999(n)]`
-/

namespace A078024.P8532215482321896770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078024.P8532215482321896770

namespace A078024

/-- `Δ[A212804(n)-A033999(n)]` -/
def P8532215482321896770.Spec : Prop :=
  ∀ n, P8532215482321896770.a n = A078024 n

end A078024

/-!
# A078025: Expansion of (1-x)/(1-2*x^2+2*x^3).

The programs for A078025, the canonical program `A078025.P5480237504622022028` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078025 has offset 0).

The definition of A078025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x^2+2x^3))` (program `A078025.P5480237504622022028`, by `A078025.P5480237504622022028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078025.P5480237504622022028

`ogf((1-x)/(1-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078025

/-- `ogf((1-x)/(1-2x^2+2x^3))` -/
def P5480237504622022028.Spec : Prop :=
  ∀ n, P5480237504622022028.a n = A078025 n

theorem P5480237504622022028.correct : P5480237504622022028.Spec := by
  intro n
  simp only [A078025]

end A078025

/-! ## A078025.P6750577556490913275

`2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078025.P6750577556490913275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  2 * a (n - 2) - 2 * a (n - 3)

end

end A078025.P6750577556490913275

namespace A078025

/-- `2*a(n-2)-2*a(n-3)` -/
def P6750577556490913275.Spec : Prop :=
  ∀ n, P6750577556490913275.a n = A078025 n

end A078025

/-! ## A078025.P12772005166957967511

`2*(a(n-2)-a(n-3))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078025.P12772005166957967511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  2 * (a (n - 2) - a (n - 3))

end

end A078025.P12772005166957967511

namespace A078025

/-- `2*(a(n-2)-a(n-3))` -/
def P12772005166957967511.Spec : Prop :=
  ∀ n, P12772005166957967511.a n = A078025 n

end A078025

/-! ## A078025.P7224940851140028331

`a(n-2)+a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078025.P7224940851140028331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 3) - a (n - 3))

end

end A078025.P7224940851140028331

namespace A078025

/-- `a(n-2)+a(n-2)-a(n-3)-a(n-3)` -/
def P7224940851140028331.Spec : Prop :=
  ∀ n, P7224940851140028331.a n = A078025 n

end A078025

/-! ## A078025.P10789643773959903520

`a(n-2)-(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A078025.P10789643773959903520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 2) - (a (n - 3) - (a (n - 2) - a (n - 3)))

end

end A078025.P10789643773959903520

namespace A078025

/-- `a(n-2)-(a(n-3)-(a(n-2)-a(n-3)))` -/
def P10789643773959903520.Spec : Prop :=
  ∀ n, P10789643773959903520.a n = A078025 n

end A078025

/-! ## A078025.P7034408592466351884

`A009001(2*n)*A247302(3*n+5)`
-/

namespace A078025.P7034408592466351884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A247302 (3 * n + 5)

end

end A078025.P7034408592466351884

namespace A078025

/-- `A009001(2*n)*A247302(3*n+5)` -/
def P7034408592466351884.Spec : Prop :=
  ∀ n, P7034408592466351884.a n = A078025 n

end A078025

/-! ## A078025.P4368668842169924452

`(A004442(n)-n)*A247302(3*n+5)`
-/

namespace A078025.P4368668842169924452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A247302 (3 * n + 5)

end

end A078025.P4368668842169924452

namespace A078025

/-- `(A004442(n)-n)*A247302(3*n+5)` -/
def P4368668842169924452.Spec : Prop :=
  ∀ n, P4368668842169924452.a n = A078025 n

end A078025

/-! ## A078025.P8308219949663376343

`A100051(3*n+1)*A247302(3*n+5)`
-/

namespace A078025.P8308219949663376343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (3 * n + 1) * A247302 (3 * n + 5)

end

end A078025.P8308219949663376343

namespace A078025

/-- `A100051(3*n+1)*A247302(3*n+5)` -/
def P8308219949663376343.Spec : Prop :=
  ∀ n, P8308219949663376343.a n = A078025 n

end A078025

/-! ## A078025.P4573703479658760826

`record[A247302(n+1)]/A100051(3*n)`
-/

namespace A078025.P4573703479658760826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A100051 (3 * n) : ℚ)

end

end A078025.P4573703479658760826

namespace A078025

/-- `record[A247302(n+1)]/A100051(3*n)` -/
def P4573703479658760826.Spec : Prop :=
  ∀ n, P4573703479658760826.a n = (A078025 n : ℚ)

end A078025

/-! ## A078025.P5973676361325199146

`∑[A056594(2*n)*A247301(3*n+8)]`
-/

namespace A078025.P5973676361325199146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A247301 (3 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078025.P5973676361325199146

namespace A078025

/-- `∑[A056594(2*n)*A247301(3*n+8)]` -/
def P5973676361325199146.Spec : Prop :=
  ∀ n, P5973676361325199146.a n = A078025 n

end A078025

/-! ## A078025.P5172178557209278224

`Δ[A077881(n+1)/2]`
-/

namespace A078025.P5172178557209278224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077881 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078025.P5172178557209278224

namespace A078025

/-- `Δ[A077881(n+1)/2]` -/
def P5172178557209278224.Spec : Prop :=
  ∀ n, P5172178557209278224.a n = (A078025 n : ℚ)

end A078025

/-!
# A078026: Expansion of (1-x)/(1-x^2-2*x^3).

The programs for A078026, the canonical program `A078026.P4277901288731029882` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078026 has offset 0).

The definition of A078026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x^2-2x^3))` (program `A078026.P4277901288731029882`, by `A078026.P4277901288731029882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078026.P4277901288731029882

`ogf((1-x)/(1-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078026

/-- `ogf((1-x)/(1-x^2-2x^3))` -/
def P4277901288731029882.Spec : Prop :=
  ∀ n, P4277901288731029882.a n = A078026 n

theorem P4277901288731029882.correct : P4277901288731029882.Spec := by
  intro n
  simp only [A078026]

end A078026

/-! ## A078026.P10294347188915576383

`a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A078026.P10294347188915576383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A078026.P10294347188915576383

namespace A078026

/-- `a(n-2)+2*a(n-3)` -/
def P10294347188915576383.Spec : Prop :=
  ∀ n, P10294347188915576383.a n = A078026 n

end A078026

/-! ## A078026.P15795382581962942163

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A078026.P15795382581962942163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A078026.P15795382581962942163

namespace A078026

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P15795382581962942163.Spec : Prop :=
  ∀ n, P15795382581962942163.a n = A078026 n

end A078026

/-! ## A078026.P2038127491258596194

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A078026.P2038127491258596194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A078026.P2038127491258596194

namespace A078026

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P2038127491258596194.Spec : Prop :=
  ∀ n, P2038127491258596194.a n = A078026 n

end A078026

/-! ## A078026.P6381978891354200004

`∑[A159286(n)]`
-/

namespace A078026.P6381978891354200004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078026.P6381978891354200004

namespace A078026

/-- `∑[A159286(n)]` -/
def P6381978891354200004.Spec : Prop :=
  ∀ n, P6381978891354200004.a n = A078026 n

end A078026

/-! ## A078026.P2061059419544563602

`A159287(n+1)+A159286(n)-A159287(n)`
-/

namespace A078026.P2061059419544563602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + (A159286 n - A159287 n)

end

end A078026.P2061059419544563602

namespace A078026

/-- `A159287(n+1)+A159286(n)-A159287(n)` -/
def P2061059419544563602.Spec : Prop :=
  ∀ n, P2061059419544563602.a n = A078026 n

end A078026

/-! ## A078026.P15642639392170658622

`Δ[A159287(n+1)]`
-/

namespace A078026.P15642639392170658622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078026.P15642639392170658622

namespace A078026

/-- `Δ[A159287(n+1)]` -/
def P15642639392170658622.Spec : Prop :=
  ∀ n, P15642639392170658622.a n = A078026 n

end A078026

/-! ## A078026.P5814288776654870766

`Δ[A052947(abs(1-n))]`
-/

namespace A078026.P5814288776654870766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078026.P5814288776654870766

namespace A078026

/-- `Δ[A052947(abs(1-n))]` -/
def P5814288776654870766.Spec : Prop :=
  ∀ n, P5814288776654870766.a n = A078026 n

end A078026

/-! ## A078026.P1783304943853699363

`A052947(n)-A159287(n+1)`
-/

namespace A078026.P1783304943853699363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n - A159287 (n + 1)

end

end A078026.P1783304943853699363

namespace A078026

/-- `A052947(n)-A159287(n+1)` -/
def P1783304943853699363.Spec : Prop :=
  ∀ n, P1783304943853699363.a n = A078026 n

end A078026

/-! ## A078026.P6232941494294310685

`A159287(n+2)-A159287(n+1)`
-/

namespace A078026.P6232941494294310685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 2) - A159287 (n + 1)

end

end A078026.P6232941494294310685

namespace A078026

/-- `A159287(n+2)-A159287(n+1)` -/
def P6232941494294310685.Spec : Prop :=
  ∀ n, P6232941494294310685.a n = A078026 n

end A078026

/-! ## A078026.P1419478968997622344

`A052947(n)-(A159284(n)-A159287(n))`
-/

namespace A078026.P1419478968997622344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n - (A159284 n - A159287 n)

end

end A078026.P1419478968997622344

namespace A078026

/-- `A052947(n)-(A159284(n)-A159287(n))` -/
def P1419478968997622344.Spec : Prop :=
  ∀ n, P1419478968997622344.a n = A078026 n

end A078026

/-! ## A078026.P6990981252675317201

`A052947(n)-(A118831(n+2)+A107850(n))`
-/

namespace A078026.P6990981252675317201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n - (A118831 (n + 2) + A107850 n)

end

end A078026.P6990981252675317201

namespace A078026

/-- `A052947(n)-(A118831(n+2)+A107850(n))` -/
def P6990981252675317201.Spec : Prop :=
  ∀ n, P6990981252675317201.a n = A078026 n

end A078026

/-! ## A078026.P13377895342993148902

`A052947(n)+A052947(n)-A159284(n+1)`
-/

namespace A078026.P13377895342993148902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n + (A052947 n - A159284 (n + 1))

end

end A078026.P13377895342993148902

namespace A078026

/-- `A052947(n)+A052947(n)-A159284(n+1)` -/
def P13377895342993148902.Spec : Prop :=
  ∀ n, P13377895342993148902.a n = A078026 n

end A078026

/-! ## A078026.P3178676390204190635

`A107854(n+1)+A014017(n)-A107853(n+1)`
-/

namespace A078026.P3178676390204190635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (n + 1) + (A014017 n - A107853 (n + 1))

end

end A078026.P3178676390204190635

namespace A078026

/-- `A107854(n+1)+A014017(n)-A107853(n+1)` -/
def P3178676390204190635.Spec : Prop :=
  ∀ n, P3178676390204190635.a n = A078026 n

end A078026

/-! ## A078026.P15237522398853877085

`A052947(n+1)-(A159286(n+1)+A052947(n))`
-/

namespace A078026.P15237522398853877085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 1) - (A159286 (n + 1) + A052947 n)

end

end A078026.P15237522398853877085

namespace A078026

/-- `A052947(n+1)-(A159286(n+1)+A052947(n))` -/
def P15237522398853877085.Spec : Prop :=
  ∀ n, P15237522398853877085.a n = A078026 n

end A078026

/-! ## A078026.P2000295962063873713

`Δ[A159284(n+1)-A052947(n)]`
-/

namespace A078026.P2000295962063873713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) - A052947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078026.P2000295962063873713

namespace A078026

/-- `Δ[A159284(n+1)-A052947(n)]` -/
def P2000295962063873713.Spec : Prop :=
  ∀ n, P2000295962063873713.a n = A078026 n

end A078026

/-! ## A078026.P16204205644026696108

`A107854(n+1)+A052947(n)-A107849(n)`
-/

namespace A078026.P16204205644026696108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107854 (n + 1) + (A052947 n - A107849 n)

end

end A078026.P16204205644026696108

namespace A078026

/-- `A107854(n+1)+A052947(n)-A107849(n)` -/
def P16204205644026696108.Spec : Prop :=
  ∀ n, P16204205644026696108.a n = A078026 n

end A078026

/-! ## A078026.P13696694870760292158

`A107851(n+1)-(A132380(n+1)+A107852(n))`
-/

namespace A078026.P13696694870760292158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107851 (n + 1) - (A132380 (n + 1) + A107852 n)

end

end A078026.P13696694870760292158

namespace A078026

/-- `A107851(n+1)-(A132380(n+1)+A107852(n))` -/
def P13696694870760292158.Spec : Prop :=
  ∀ n, P13696694870760292158.a n = A078026 n

end A078026

/-! ## A078026.P6897675253729584590

`A159284(n+1)+A159284(n+1)-A159285(n)`
-/

namespace A078026.P6897675253729584590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) + (A159284 (n + 1) - A159285 n)

end

end A078026.P6897675253729584590

namespace A078026

/-- `A159284(n+1)+A159284(n+1)-A159285(n)` -/
def P6897675253729584590.Spec : Prop :=
  ∀ n, P6897675253729584590.a n = A078026 n

end A078026

/-! ## A078026.P15957249145323634320

`A052947(n+3)-A159288(n+1)`
-/

namespace A078026.P15957249145323634320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (n + 3) - A159288 (n + 1)

end

end A078026.P15957249145323634320

namespace A078026

/-- `A052947(n+3)-A159288(n+1)` -/
def P15957249145323634320.Spec : Prop :=
  ∀ n, P15957249145323634320.a n = A078026 n

end A078026

/-!
# A078027: Expansion of (1 - x)/(1 - x^2 - x^3).

The programs for A078027, the canonical program `A078027.P18304454840992456444` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078027 has offset 0).

The definition of A078027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x^2-x^3))` (program `A078027.P18304454840992456444`, by `A078027.P18304454840992456444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078027.P18304454840992456444

`ogf((1-x)/(1-x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078027

/-- `ogf((1-x)/(1-x^2-x^3))` -/
def P18304454840992456444.Spec : Prop :=
  ∀ n, P18304454840992456444.a n = A078027 n

theorem P18304454840992456444.correct : P18304454840992456444.Spec := by
  intro n
  simp only [A078027]

end A078027

/-! ## A078027.P410415736847942569

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A078027.P410415736847942569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 2) + a (n - 3)

end

end A078027.P410415736847942569

namespace A078027

/-- `a(n-2)+a(n-3)` -/
def P410415736847942569.Spec : Prop :=
  ∀ n, P410415736847942569.a n = A078027 n

end A078027

/-! ## A078027.P12119665358829025084

`a(n-2)-round(-a(n-3))` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0, a(4)=0`

`round` is left out, it is the identity on integers.
-/

namespace A078027.P12119665358829025084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0, 0] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A078027.P12119665358829025084

namespace A078027

/-- `a(n-2)-round(-a(n-3))` -/
def P12119665358829025084.Spec : Prop :=
  ∀ n, P12119665358829025084.a n = A078027 n

end A078027

/-! ## A078027.P3214492788564710567

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0`
-/

namespace A078027.P3214492788564710567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A078027.P3214492788564710567

namespace A078027

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P3214492788564710567.Spec : Prop :=
  ∀ n, P3214492788564710567.a n = A078027 n

end A078027

/-! ## A078027.P2372043672756231499

`A133034(n+2)`
-/

namespace A078027.P2372043672756231499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 2)

end

end A078027.P2372043672756231499

namespace A078027

/-- `A133034(n+2)` -/
def P2372043672756231499.Spec : Prop :=
  ∀ n, P2372043672756231499.a n = A078027 n

end A078027

/-! ## A078027.P4750551551848599400

`A033999(n)*A124745(n)`
-/

namespace A078027.P4750551551848599400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A124745 n

end

end A078027.P4750551551848599400

namespace A078027

/-- `A033999(n)*A124745(n)` -/
def P4750551551848599400.Spec : Prop :=
  ∀ n, P4750551551848599400.a n = A078027 n

end A078027

/-! ## A078027.P13494678400145973862

`A000931(n)-a(n-1)` with `a(0)=1`
-/

namespace A078027.P13494678400145973862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000931 n - a (n - 1)

end

end A078027.P13494678400145973862

namespace A078027

/-- `A000931(n)-a(n-1)` -/
def P13494678400145973862.Spec : Prop :=
  ∀ n, P13494678400145973862.a n = A078027 n

end A078027

/-! ## A078027.P17114853926324388430

`A000931(n)-Δ[A000931(n+1)]`
-/

namespace A078027.P17114853926324388430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - (f1 (n + 1) - f1 n)

end

end A078027.P17114853926324388430

namespace A078027

/-- `A000931(n)-Δ[A000931(n+1)]` -/
def P17114853926324388430.Spec : Prop :=
  ∀ n, P17114853926324388430.a n = A078027 n

end A078027

/-! ## A078027.P10623846088767354457

`Δ[a(n-2)-(1-a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A078027.P10623846088767354457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078027.P10623846088767354457

namespace A078027

/-- `Δ[a(n-2)-(1-a(n-3))]` -/
def P10623846088767354457.Spec : Prop :=
  ∀ n, P10623846088767354457.a n = A078027 n

end A078027

/-! ## A078027.P12302223681594973971

`Δ[A000931(n+2)]`
-/

namespace A078027.P12302223681594973971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078027.P12302223681594973971

namespace A078027

/-- `Δ[A000931(n+2)]` -/
def P12302223681594973971.Spec : Prop :=
  ∀ n, P12302223681594973971.a n = A078027 n

end A078027

/-! ## A078027.P9699187647652393010

`Δ[A052954(abs(1-n))]`
-/

namespace A078027.P9699187647652393010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078027.P9699187647652393010

namespace A078027

/-- `Δ[A052954(abs(1-n))]` -/
def P9699187647652393010.Spec : Prop :=
  ∀ n, P9699187647652393010.a n = A078027 n

end A078027

/-! ## A078027.P17227905334568572123

`Δ[A182097(abs(1-n))]`
-/

namespace A078027.P17227905334568572123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078027.P17227905334568572123

namespace A078027

/-- `Δ[A182097(abs(1-n))]` -/
def P17227905334568572123.Spec : Prop :=
  ∀ n, P17227905334568572123.a n = A078027 n

end A078027

/-! ## A078027.P5724970926735975412

`Δ[abs(A124745(n+4))]`
-/

namespace A078027.P5724970926735975412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124745 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078027.P5724970926735975412

namespace A078027

/-- `Δ[abs(A124745(n+4))]` -/
def P5724970926735975412.Spec : Prop :=
  ∀ n, P5724970926735975412.a n = A078027 n

end A078027

/-! ## A078027.P9378066189880036706

`Δ[A114775(A042963(n+1))]`
-/

namespace A078027.P9378066189880036706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A042963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078027.P9378066189880036706

namespace A078027

/-- `Δ[A114775(A042963(n+1))]` -/
def P9378066189880036706.Spec : Prop :=
  ∀ n, P9378066189880036706.a n = A078027 n

end A078027

/-! ## A078027.P2887802764582047295

`A182097(n)-A000931(n+2)`
-/

namespace A078027.P2887802764582047295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - A000931 (n + 2)

end

end A078027.P2887802764582047295

namespace A078027

/-- `A182097(n)-A000931(n+2)` -/
def P2887802764582047295.Spec : Prop :=
  ∀ n, P2887802764582047295.a n = A078027 n

end A078027

/-! ## A078027.P13347963543528001665

`A182097(n)-A182097(abs(1-n))`
-/

namespace A078027.P13347963543528001665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - A182097 |1 - (n : ℤ)|.toNat

end

end A078027.P13347963543528001665

namespace A078027

/-- `A182097(n)-A182097(abs(1-n))` -/
def P13347963543528001665.Spec : Prop :=
  ∀ n, P13347963543528001665.a n = A078027 n

end A078027

/-! ## A078027.P70406040300745480

`A000931(n+3)-A000931(n+2)`
-/

namespace A078027.P70406040300745480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 3) - A000931 (n + 2)

end

end A078027.P70406040300745480

namespace A078027

/-- `A000931(n+3)-A000931(n+2)` -/
def P70406040300745480.Spec : Prop :=
  ∀ n, P70406040300745480.a n = A078027 n

end A078027

/-! ## A078027.P8281257980941029899

`A000931(n)-Δ[A182097(n)-A000931(n)]`
-/

namespace A078027.P8281257980941029899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n - A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n - (f1 (n + 1) - f1 n)

end

end A078027.P8281257980941029899

namespace A078027

/-- `A000931(n)-Δ[A182097(n)-A000931(n)]` -/
def P8281257980941029899.Spec : Prop :=
  ∀ n, P8281257980941029899.a n = A078027 n

end A078027

/-! ## A078027.P17130495871826489102

`A182097(n)+A182097(n)-A134816(n+1)`
-/

namespace A078027.P17130495871826489102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n + (A182097 n - A134816 (n + 1))

end

end A078027.P17130495871826489102

namespace A078027

/-- `A182097(n)+A182097(n)-A134816(n+1)` -/
def P17130495871826489102.Spec : Prop :=
  ∀ n, P17130495871826489102.a n = A078027 n

end A078027

/-! ## A078027.P11202987678073700015

`A276276(n+2)-A007307(n)`
-/

namespace A078027.P11202987678073700015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276276 (n + 2) - A007307 n

end

end A078027.P11202987678073700015

namespace A078027

/-- `A276276(n+2)-A007307(n)` -/
def P11202987678073700015.Spec : Prop :=
  ∀ n, P11202987678073700015.a n = A078027 n

end A078027

/-!
# A078028: Expansion of (1-x)/(1-x^2+2*x^3).

The programs for A078028, the canonical program `A078028.P10110740138637697208` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078028 has offset 0).

The definition of A078028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x^2+2x^3))` (program `A078028.P10110740138637697208`, by `A078028.P10110740138637697208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078028.P10110740138637697208

`ogf((1-x)/(1-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078028

/-- `ogf((1-x)/(1-x^2+2x^3))` -/
def P10110740138637697208.Spec : Prop :=
  ∀ n, P10110740138637697208.a n = A078028 n

theorem P10110740138637697208.correct : P10110740138637697208.Spec := by
  intro n
  simp only [A078028]

end A078028

/-! ## A078028.P1012024160147030560

`a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A078028.P1012024160147030560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 2) - 2 * a (n - 3)

end

end A078028.P1012024160147030560

namespace A078028

/-- `a(n-2)-2*a(n-3)` -/
def P1012024160147030560.Spec : Prop :=
  ∀ n, P1012024160147030560.a n = A078028 n

end A078028

/-! ## A078028.P4086820177350937683

`a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A078028.P4086820177350937683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 2) - a (n - 3) - a (n - 3)

end

end A078028.P4086820177350937683

namespace A078028

/-- `a(n-2)-a(n-3)-a(n-3)` -/
def P4086820177350937683.Spec : Prop :=
  ∀ n, P4086820177350937683.a n = A078028 n

end A078028

/-! ## A078028.P9150119241823308584

`(1-A010673(n))*A159284(n+1)`
-/

namespace A078028.P9150119241823308584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A159284 (n + 1)

end

end A078028.P9150119241823308584

namespace A078028

/-- `(1-A010673(n))*A159284(n+1)` -/
def P9150119241823308584.Spec : Prop :=
  ∀ n, P9150119241823308584.a n = A078028 n

end A078028

/-! ## A078028.P416806925482730749

`A056594(2*n)*A159284(n+1)`
-/

namespace A078028.P416806925482730749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A159284 (n + 1)

end

end A078028.P416806925482730749

namespace A078028

/-- `A056594(2*n)*A159284(n+1)` -/
def P416806925482730749.Spec : Prop :=
  ∀ n, P416806925482730749.a n = A078028 n

end A078028

/-! ## A078028.P13716552408440481151

`(A000034(n+1)-A000034(n))*A159284(n+1)`
-/

namespace A078028.P13716552408440481151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 (n + 1) - A000034 n) * A159284 (n + 1)

end

end A078028.P13716552408440481151

namespace A078028

/-- `(A000034(n+1)-A000034(n))*A159284(n+1)` -/
def P13716552408440481151.Spec : Prop :=
  ∀ n, P13716552408440481151.a n = A078028 n

end A078028

/-!
# A078029: Expansion of (1-x)/(1-2*x^3).

The programs for A078029, the canonical program `A078029.P13626141984689582741` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078029 has offset 0).

The definition of A078029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x^3))` (program `A078029.P13626141984689582741`, by `A078029.P13626141984689582741.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078029.P15732391306237356989

`2*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A078029.P15732391306237356989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  2 * a (n - 3)

end

end A078029.P15732391306237356989

namespace A078029

/-- `2*a(n-3)` -/
def P15732391306237356989.Spec : Prop :=
  ∀ n, P15732391306237356989.a n = A078029 n

end A078029

/-! ## A078029.P13626141984689582741

`ogf((1-x)/(1-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078029

/-- `ogf((1-x)/(1-2x^3))` -/
def P13626141984689582741.Spec : Prop :=
  ∀ n, P13626141984689582741.a n = A078029 n

theorem P13626141984689582741.correct : P13626141984689582741.Spec := by
  intro n
  simp only [A078029]

end A078029

/-! ## A078029.P18170711786612126827

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A078029.P18170711786612126827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 3) + a (n - 3)

end

end A078029.P18170711786612126827

namespace A078029

/-- `a(n-3)+a(n-3)` -/
def P18170711786612126827.Spec : Prop :=
  ∀ n, P18170711786612126827.a n = A078029 n

end A078029

/-! ## A078029.P11654800920426871327

`a(n-3)/(1-1/2)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A078029.P11654800920426871327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 3) / (1 - (1 : ℚ) / 2)

end

end A078029.P11654800920426871327

namespace A078029

/-- `a(n-3)/(1-1/2)` -/
def P11654800920426871327.Spec : Prop :=
  ∀ n, P11654800920426871327.a n = (A078029 n : ℚ)

end A078029

/-! ## A078029.P13849789411086906466

`Δ[a(n-3)-(1-a(n-3))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A078029.P13849789411086906466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 3) - (1 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078029.P13849789411086906466

namespace A078029

/-- `Δ[a(n-3)-(1-a(n-3))]` -/
def P13849789411086906466.Spec : Prop :=
  ∀ n, P13849789411086906466.a n = A078029 n

end A078029

/-! ## A078029.P4952621850870669733

`Δ[A077958(abs(1-n))]`
-/

namespace A078029.P4952621850870669733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078029.P4952621850870669733

namespace A078029

/-- `Δ[A077958(abs(1-n))]` -/
def P4952621850870669733.Spec : Prop :=
  ∀ n, P4952621850870669733.a n = A078029 n

end A078029

/-! ## A078029.P4174043471107238370

`A010892(n)*A078030(n)`
-/

namespace A078029.P4174043471107238370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A078030 n

end

end A078029.P4174043471107238370

namespace A078029

/-- `A010892(n)*A078030(n)` -/
def P4174043471107238370.Spec : Prop :=
  ∀ n, P4174043471107238370.a n = A078029 n

end A078029

/-! ## A078029.P1303186982487927792

`A078030(n)*A130151(n)`
-/

namespace A078029.P1303186982487927792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n * A130151 n

end

end A078029.P1303186982487927792

namespace A078029

/-- `A078030(n)*A130151(n)` -/
def P1303186982487927792.Spec : Prop :=
  ∀ n, P1303186982487927792.a n = A078029 n

end A078029

/-! ## A078029.P14901831277363818682

`A078030(n)*A132367(n)`
-/

namespace A078029.P14901831277363818682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n * A132367 n

end

end A078029.P14901831277363818682

namespace A078029

/-- `A078030(n)*A132367(n)` -/
def P14901831277363818682.Spec : Prop :=
  ∀ n, P14901831277363818682.a n = A078029 n

end A078029

/-! ## A078029.P2347724058525045516

`A078030(n)*A132419(n)`
-/

namespace A078029.P2347724058525045516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n * A132419 n

end

end A078029.P2347724058525045516

namespace A078029

/-- `A078030(n)*A132419(n)` -/
def P2347724058525045516.Spec : Prop :=
  ∀ n, P2347724058525045516.a n = A078029 n

end A078029

/-! ## A078029.P5847902692271754841

`A049347(n)*A173862(n+1)`
-/

namespace A078029.P5847902692271754841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A173862 (n + 1)

end

end A078029.P5847902692271754841

namespace A078029

/-- `A049347(n)*A173862(n+1)` -/
def P5847902692271754841.Spec : Prop :=
  ∀ n, P5847902692271754841.a n = A078029 n

end A078029

/-! ## A078029.P1691877500387286582

`A049347(n)*A140426(2*n+1)`
-/

namespace A078029.P1691877500387286582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A140426 (2 * n + 1)

end

end A078029.P1691877500387286582

namespace A078029

/-- `A049347(n)*A140426(2*n+1)` -/
def P1691877500387286582.Spec : Prop :=
  ∀ n, P1691877500387286582.a n = A078029 n

end A078029

/-! ## A078029.P15117005483342206863

`Δ[Δ[2^round(n/3)]]`
-/

namespace A078029.P15117005483342206863
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 3) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078029.P15117005483342206863

namespace A078029

/-- `Δ[Δ[2^round(n/3)]]` -/
def P15117005483342206863.Spec : Prop :=
  ∀ n, P15117005483342206863.a n = (A078029 n : ℚ)

end A078029

/-! ## A078029.P8641126850289135476

`A060547(n+1)-A140426(2*n)`
-/

namespace A078029.P8641126850289135476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (n + 1) - A140426 (2 * n)

end

end A078029.P8641126850289135476

namespace A078029

/-- `A060547(n+1)-A140426(2*n)` -/
def P8641126850289135476.Spec : Prop :=
  ∀ n, P8641126850289135476.a n = A078029 n

end A078029

/-! ## A078029.P2099721490001971762

`A060547(n+1)-A060548(2*(n+1))`
-/

namespace A078029.P2099721490001971762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (n + 1) - A060548 (2 * (n + 1))

end

end A078029.P2099721490001971762

namespace A078029

/-- `A060547(n+1)-A060548(2*(n+1))` -/
def P2099721490001971762.Spec : Prop :=
  ∀ n, P2099721490001971762.a n = A078029 n

end A078029

/-! ## A078029.P4552681628315706424

`A077958(n+3)-A077958(A082009(n+1))`
-/

namespace A078029.P4552681628315706424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 (n + 3) - A077958 (A082009 (n + 1)).toNat

end

end A078029.P4552681628315706424

namespace A078029

/-- `A077958(n+3)-A077958(A082009(n+1))` -/
def P4552681628315706424.Spec : Prop :=
  ∀ n, P4552681628315706424.a n = A078029 n

end A078029

/-! ## A078029.P3571229041562774308

`A060548(A047240(n+2))-A060548(2*(n+1))`
-/

namespace A078029.P3571229041562774308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (A047240 (n + 2)).toNat - A060548 (2 * (n + 1))

end

end A078029.P3571229041562774308

namespace A078029

/-- `A060548(A047240(n+2))-A060548(2*(n+1))` -/
def P3571229041562774308.Spec : Prop :=
  ∀ n, P3571229041562774308.a n = A078029 n

end A078029

/-! ## A078029.P8377042097730422275

`A060547(n+1)-A060546(n+1)/A060548(n+1)`
-/

namespace A078029.P8377042097730422275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060547 (n + 1) : ℚ) - (A060546 (n + 1) : ℚ) / (A060548 (n + 1) : ℚ)

end

end A078029.P8377042097730422275

namespace A078029

/-- `A060547(n+1)-A060546(n+1)/A060548(n+1)` -/
def P8377042097730422275.Spec : Prop :=
  ∀ n, P8377042097730422275.a n = (A078029 n : ℚ)

end A078029

/-!
# A078030: Expansion of (1-x)/(1+2*x^3).

The programs for A078030, the canonical program `A078030.P6078341374755508370` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078030 has offset 0).

The definition of A078030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x^3))` (program `A078030.P6078341374755508370`, by `A078030.P6078341374755508370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078030.P6078341374755508370

`ogf((1-x)/(1+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078030

/-- `ogf((1-x)/(1+2x^3))` -/
def P6078341374755508370.Spec : Prop :=
  ∀ n, P6078341374755508370.a n = A078030 n

theorem P6078341374755508370.correct : P6078341374755508370.Spec := by
  intro n
  simp only [A078030]

end A078030

/-! ## A078030.P15116970767281907213

`Δ[-2*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A078030.P15116970767281907213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  -(2 * f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078030.P15116970767281907213

namespace A078030

/-- `Δ[-2*a(n-3)]` -/
def P15116970767281907213.Spec : Prop :=
  ∀ n, P15116970767281907213.a n = A078030 n

end A078030

/-! ## A078030.P17867136213392525909

`2-2*(a(n-3)+1)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A078030.P17867136213392525909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  2 - 2 * (a (n - 3) + 1)

end

end A078030.P17867136213392525909

namespace A078030

/-- `2-2*(a(n-3)+1)` -/
def P17867136213392525909.Spec : Prop :=
  ∀ n, P17867136213392525909.a n = A078030 n

end A078030

/-! ## A078030.P18233470962016329704

`2*(1-a(n-3))-2` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A078030.P18233470962016329704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  2 * (1 - a (n - 3)) - 2

end

end A078030.P18233470962016329704

namespace A078030

/-- `2*(1-a(n-3))-2` -/
def P18233470962016329704.Spec : Prop :=
  ∀ n, P18233470962016329704.a n = A078030 n

end A078030

/-! ## A078030.P16613246062951371677

`a(n-3)/(1/2-1)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A078030.P16613246062951371677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2 - 1)

end

end A078030.P16613246062951371677

namespace A078030

/-- `a(n-3)/(1/2-1)` -/
def P16613246062951371677.Spec : Prop :=
  ∀ n, P16613246062951371677.a n = (A078030 n : ℚ)

end A078030

/-! ## A078030.P6307228487053700825

`Δ[-(a(n-3)+a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A078030.P6307228487053700825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  -(f1 (n - 3) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078030.P6307228487053700825

namespace A078030

/-- `Δ[-(a(n-3)+a(n-3))]` -/
def P6307228487053700825.Spec : Prop :=
  ∀ n, P6307228487053700825.a n = A078030 n

end A078030

/-! ## A078030.P7400894147418719031

`Δ[A077959(abs(1-n))]`
-/

namespace A078030.P7400894147418719031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078030.P7400894147418719031

namespace A078030

/-- `Δ[A077959(abs(1-n))]` -/
def P7400894147418719031.Spec : Prop :=
  ∀ n, P7400894147418719031.a n = A078030 n

end A078030

/-! ## A078030.P6524816847071841037

`Δ[A077966(A005131(n))]`
-/

namespace A078030.P6524816847071841037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078030.P6524816847071841037

namespace A078030

/-- `Δ[A077966(A005131(n))]` -/
def P6524816847071841037.Spec : Prop :=
  ∀ n, P6524816847071841037.a n = A078030 n

end A078030

/-! ## A078030.P70522931312588912

`A010892(n)*A078029(n)`
-/

namespace A078030.P70522931312588912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A078029 n

end

end A078030.P70522931312588912

namespace A078030

/-- `A010892(n)*A078029(n)` -/
def P70522931312588912.Spec : Prop :=
  ∀ n, P70522931312588912.a n = A078030 n

end A078030

/-! ## A078030.P17672075881609547474

`A078029(n)*A130151(n)`
-/

namespace A078030.P17672075881609547474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n * A130151 n

end

end A078030.P17672075881609547474

namespace A078030

/-- `A078029(n)*A130151(n)` -/
def P17672075881609547474.Spec : Prop :=
  ∀ n, P17672075881609547474.a n = A078030 n

end A078030

/-! ## A078030.P12977026730217262862

`A078029(n)*A132367(n)`
-/

namespace A078030.P12977026730217262862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n * A132367 n

end

end A078030.P12977026730217262862

namespace A078030

/-- `A078029(n)*A132367(n)` -/
def P12977026730217262862.Spec : Prop :=
  ∀ n, P12977026730217262862.a n = A078030 n

end A078030

/-! ## A078030.P1774896752540889330

`A078029(n)*A132419(n)`
-/

namespace A078030.P1774896752540889330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n * A132419 n

end

end A078030.P1774896752540889330

namespace A078030

/-- `A078029(n)*A132419(n)` -/
def P1774896752540889330.Spec : Prop :=
  ∀ n, P1774896752540889330.a n = A078030 n

end A078030

/-! ## A078030.P10941029926747450832

`∑[(-2)^∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A078030.P10941029926747450832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078030.P10941029926747450832

namespace A078030

/-- `∑[(-2)^∑[floor(a(n-3))]]` -/
def P10941029926747450832.Spec : Prop :=
  ∀ n, P10941029926747450832.a n = (A078030 n : ℚ)

end A078030

/-! ## A078030.P10398073028802656730

`∑[(-2)^∑[a(n-3)^a(n-3)]]` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A078030.P10398073028802656730
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, -1] fun n f2 =>
  f2 (n - 3) ^ (f2 (n - 3))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078030.P10398073028802656730

namespace A078030

/-- `∑[(-2)^∑[a(n-3)^a(n-3)]]` -/
def P10398073028802656730.Spec : Prop :=
  ∀ n, P10398073028802656730.a n = (A078030 n : ℝ)

end A078030

/-! ## A078030.P11975856871554780780

`∑[(-2)^(A194960(n+2)-2)]`
-/

namespace A078030.P11975856871554780780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A194960 (n + 2) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078030.P11975856871554780780

namespace A078030

/-- `∑[(-2)^(A194960(n+2)-2)]` -/
def P11975856871554780780.Spec : Prop :=
  ∀ n, P11975856871554780780.a n = (A078030 n : ℚ)

end A078030

/-! ## A078030.P11971680644569821647

`Δ[A077959(n+5)/4]`
-/

namespace A078030.P11971680644569821647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077959 (n + 5) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078030.P11971680644569821647

namespace A078030

/-- `Δ[A077959(n+5)/4]` -/
def P11971680644569821647.Spec : Prop :=
  ∀ n, P11971680644569821647.a n = (A078030 n : ℚ)

end A078030

/-!
# A078031: Expansion of (1-x)/(1 + x^2 - x^3).

The programs for A078031, the canonical program `A078031.P9753704992283921905` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078031 has offset 0).

The definition of A078031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x^2-x^3))` (program `A078031.P9753704992283921905`, by `A078031.P9753704992283921905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078031.P9753704992283921905

`ogf((1-x)/(1+x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078031

/-- `ogf((1-x)/(1+x^2-x^3))` -/
def P9753704992283921905.Spec : Prop :=
  ∀ n, P9753704992283921905.a n = A078031 n

theorem P9753704992283921905.correct : P9753704992283921905.Spec := by
  intro n
  simp only [A078031]

end A078031

/-! ## A078031.P15339291142619763346

`a(n-3)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A078031.P15339291142619763346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 3) - a (n - 2)

end

end A078031.P15339291142619763346

namespace A078031

/-- `a(n-3)-a(n-2)` -/
def P15339291142619763346.Spec : Prop :=
  ∀ n, P15339291142619763346.a n = A078031 n

end A078031

/-! ## A078031.P7466447692885800457

`-A077961(n+2)`
-/

namespace A078031.P7466447692885800457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077961 (n + 2)

end

end A078031.P7466447692885800457

namespace A078031

/-- `-A077961(n+2)` -/
def P7466447692885800457.Spec : Prop :=
  ∀ n, P7466447692885800457.a n = A078031 n

end A078031

/-! ## A078031.P16598907838493371320

`∑[A077961(n+4)]`
-/

namespace A078031.P16598907838493371320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078031.P16598907838493371320

namespace A078031

/-- `∑[A077961(n+4)]` -/
def P16598907838493371320.Spec : Prop :=
  ∀ n, P16598907838493371320.a n = A078031 n

end A078031

/-! ## A078031.P14149533210375328797

`A077888(n+4)-1`
-/

namespace A078031.P14149533210375328797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077888 (n + 4) - 1

end

end A078031.P14149533210375328797

namespace A078031

/-- `A077888(n+4)-1` -/
def P14149533210375328797.Spec : Prop :=
  ∀ n, P14149533210375328797.a n = A078031 n

end A078031

/-! ## A078031.P8743681921026598925

`Δ[-A077888(n+1)]`
-/

namespace A078031.P8743681921026598925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078031.P8743681921026598925

namespace A078031

/-- `Δ[-A077888(n+1)]` -/
def P8743681921026598925.Spec : Prop :=
  ∀ n, P8743681921026598925.a n = A078031 n

end A078031

/-! ## A078031.P975755179482092984

`Δ[A077961(abs(1-n))]`
-/

namespace A078031.P975755179482092984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078031.P975755179482092984

namespace A078031

/-- `Δ[A077961(abs(1-n))]` -/
def P975755179482092984.Spec : Prop :=
  ∀ n, P975755179482092984.a n = A078031 n

end A078031

/-! ## A078031.P16740498293853981710

`A077961(n)-A077961(abs(1-n))`
-/

namespace A078031.P16740498293853981710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 n - A077961 |1 - (n : ℤ)|.toNat

end

end A078031.P16740498293853981710

namespace A078031

/-- `A077961(n)-A077961(abs(1-n))` -/
def P16740498293853981710.Spec : Prop :=
  ∀ n, P16740498293853981710.a n = A078031 n

end A078031

/-! ## A078031.P16915278249950487661

`Δ[A077961(n+2)+A077961(n)]`
-/

namespace A078031.P16915278249950487661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (n + 2) + A077961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078031.P16915278249950487661

namespace A078031

/-- `Δ[A077961(n+2)+A077961(n)]` -/
def P16915278249950487661.Spec : Prop :=
  ∀ n, P16915278249950487661.a n = A078031 n

end A078031

/-! ## A078031.P5637804632884681186

`Δ[A033999(n)*A078032(n)-A077961(n)]`
-/

namespace A078031.P5637804632884681186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078032 n - A077961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078031.P5637804632884681186

namespace A078031

/-- `Δ[A033999(n)*A078032(n)-A077961(n)]` -/
def P5637804632884681186.Spec : Prop :=
  ∀ n, P5637804632884681186.a n = A078031 n

end A078031

/-! ## A078031.P15613488093400963970

`A375823(n+2)-A375821(n+2)`
-/

namespace A078031.P15613488093400963970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375823 (n + 2) - A375821 (n + 2)

end

end A078031.P15613488093400963970

namespace A078031

/-- `A375823(n+2)-A375821(n+2)` -/
def P15613488093400963970.Spec : Prop :=
  ∀ n, P15613488093400963970.a n = A078031 n

end A078031

/-!
# A078032: Expansion of (1-x)/(1+x^2+x^3).

The programs for A078032, the canonical program `A078032.P295950483932665835` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078032 has offset 0).

The definition of A078032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x^2+x^3))` (program `A078032.P295950483932665835`, by `A078032.P295950483932665835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078032.P295950483932665835

`ogf((1-x)/(1+x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078032

/-- `ogf((1-x)/(1+x^2+x^3))` -/
def P295950483932665835.Spec : Prop :=
  ∀ n, P295950483932665835.a n = A078032 n

theorem P295950483932665835.correct : P295950483932665835.Spec := by
  intro n
  simp only [A078032]

end A078032

/-! ## A078032.P14590741784116734469

`Δ[-(a(n-3)+a(n-2))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A078032.P14590741784116734469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  -(f1 (n - 3) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078032.P14590741784116734469

namespace A078032

/-- `Δ[-(a(n-3)+a(n-2))]` -/
def P14590741784116734469.Spec : Prop :=
  ∀ n, P14590741784116734469.a n = A078032 n

end A078032

/-! ## A078032.P108097471766340145

`Δ[3-a(n-2)-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A078032.P108097471766340145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  3 - f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078032.P108097471766340145

namespace A078032

/-- `Δ[3-a(n-2)-a(n-3)]` -/
def P108097471766340145.Spec : Prop :=
  ∀ n, P108097471766340145.a n = A078032 n

end A078032

/-! ## A078032.P7850697472052270879

`a(n-1)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=0`
-/

namespace A078032.P7850697472052270879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 0] fun n a =>
  a (n - 1) + (a (n - 4) - a (n - 2))

end

end A078032.P7850697472052270879

namespace A078032

/-- `a(n-1)+a(n-4)-a(n-2)` -/
def P7850697472052270879.Spec : Prop :=
  ∀ n, P7850697472052270879.a n = A078032 n

end A078032

/-! ## A078032.P4238118960314996169

`∑[a(n-1)-(a(n-2)-a(n-4))]` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=1`
-/

namespace A078032.P4238118960314996169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 1] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078032.P4238118960314996169

namespace A078032

/-- `∑[a(n-1)-(a(n-2)-a(n-4))]` -/
def P4238118960314996169.Spec : Prop :=
  ∀ n, P4238118960314996169.a n = A078032 n

end A078032

/-! ## A078032.P7538220832874771489

`a(n-2)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A078032.P7538220832874771489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 2) - 2 * a (n - 2) - a (n - 3)

end

end A078032.P7538220832874771489

namespace A078032

/-- `a(n-2)-2*a(n-2)-a(n-3)` -/
def P7538220832874771489.Spec : Prop :=
  ∀ n, P7538220832874771489.a n = A078032 n

end A078032

/-! ## A078032.P16388504629364740367

`floor(a(n-1)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A078032.P16388504629364740367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 0] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 4))

end

end A078032.P16388504629364740367

namespace A078032

/-- `floor(a(n-1)-(a(n-2)-a(n-4)))` -/
def P16388504629364740367.Spec : Prop :=
  ∀ n, P16388504629364740367.a n = A078032 n

end A078032

/-! ## A078032.P12183869247967582532

`Δ[A077962(abs(1-n))]`
-/

namespace A078032.P12183869247967582532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078032.P12183869247967582532

namespace A078032

/-- `Δ[A077962(abs(1-n))]` -/
def P12183869247967582532.Spec : Prop :=
  ∀ n, P12183869247967582532.a n = A078032 n

end A078032

/-! ## A078032.P14707333945217838487

`A355141(2*n)-A355141(2*n+1)`
-/

namespace A078032.P14707333945217838487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355141 (2 * n) - A355141 (2 * n + 1)

end

end A078032.P14707333945217838487

namespace A078032

/-- `A355141(2*n)-A355141(2*n+1)` -/
def P14707333945217838487.Spec : Prop :=
  ∀ n, P14707333945217838487.a n = A078032 n

end A078032

/-! ## A078032.P8258738326760766080

`A077962(n+2)+2*A077962(n)`
-/

namespace A078032.P8258738326760766080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (n + 2) + 2 * A077962 n

end

end A078032.P8258738326760766080

namespace A078032

/-- `A077962(n+2)+2*A077962(n)` -/
def P8258738326760766080.Spec : Prop :=
  ∀ n, P8258738326760766080.a n = A078032 n

end A078032

/-!
# A078033: Expansion of (1-x) / (1+x^2+2*x^3).

The programs for A078033, the canonical program `A078033.P285535081601527789` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078033 has offset 0).

The definition of A078033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x^2+2x^3))` (program `A078033.P285535081601527789`, by `A078033.P285535081601527789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078033.P285535081601527789

`ogf((1-x)/(1+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078033

/-- `ogf((1-x)/(1+x^2+2x^3))` -/
def P285535081601527789.Spec : Prop :=
  ∀ n, P285535081601527789.a n = A078033 n

theorem P285535081601527789.correct : P285535081601527789.Spec := by
  intro n
  simp only [A078033]

end A078033

/-! ## A078033.P17943187587519539923

`a(n-3)-3*a(n-3)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A078033.P17943187587519539923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 3) - 3 * a (n - 3) - a (n - 2)

end

end A078033.P17943187587519539923

namespace A078033

/-- `a(n-3)-3*a(n-3)-a(n-2)` -/
def P17943187587519539923.Spec : Prop :=
  ∀ n, P17943187587519539923.a n = A078033 n

end A078033

/-! ## A078033.P12076052823986535560

`Δ[A077963(abs(1-n))]`
-/

namespace A078033.P12076052823986535560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077963 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078033.P12076052823986535560

namespace A078033

/-- `Δ[A077963(abs(1-n))]` -/
def P12076052823986535560.Spec : Prop :=
  ∀ n, P12076052823986535560.a n = A078033 n

end A078033

/-! ## A078033.P10817522864593991644

`or(1, A105578(n+1)-1)`
-/

namespace A078033.P10817522864593991644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A105578 (n + 1) - 1)

end

end A078033.P10817522864593991644

namespace A078033

/-- `or(1, A105578(n+1)-1)` -/
def P10817522864593991644.Spec : Prop :=
  ∀ n, P10817522864593991644.a n = A078033 n

end A078033

/-! ## A078033.P16313132481931801823

`Δ[∑[A105578(n)]-A004526(n)]`
-/

namespace A078033.P16313132481931801823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078033.P16313132481931801823

namespace A078033

/-- `Δ[∑[A105578(n)]-A004526(n)]` -/
def P16313132481931801823.Spec : Prop :=
  ∀ n, P16313132481931801823.a n = A078033 n

end A078033

/-! ## A078033.P3934961786169397716

`A105578(n+1)-Δ[A004526(n)]`
-/

namespace A078033.P3934961786169397716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (n + 1) - (f1 (n + 1) - f1 n)

end

end A078033.P3934961786169397716

namespace A078033

/-- `A105578(n+1)-Δ[A004526(n)]` -/
def P3934961786169397716.Spec : Prop :=
  ∀ n, P3934961786169397716.a n = A078033 n

end A078033

/-! ## A078033.P11108046282583246168

`A078020(n)-a(n-1)` with `a(0)=1`
-/

namespace A078033.P11108046282583246168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078020 n - a (n - 1)

end

end A078033.P11108046282583246168

namespace A078033

/-- `A078020(n)-a(n-1)` -/
def P11108046282583246168.Spec : Prop :=
  ∀ n, P11108046282583246168.a n = A078033 n

end A078033

/-! ## A078033.P10768557205312790337

`Δ[A107920(n)]-a(n-1)` with `a(0)=1`
-/

namespace A078033.P10768557205312790337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A078033.P10768557205312790337

namespace A078033

/-- `Δ[A107920(n)]-a(n-1)` -/
def P10768557205312790337.Spec : Prop :=
  ∀ n, P10768557205312790337.a n = A078033 n

end A078033

/-! ## A078033.P13363598535069791023

`A107920(n+1)-(A107920(n)+a(n-1))` with `a(0)=1`
-/

namespace A078033.P13363598535069791023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107920 (n + 1) - (A107920 n + a (n - 1))

end

end A078033.P13363598535069791023

namespace A078033

/-- `A107920(n+1)-(A107920(n)+a(n-1))` -/
def P13363598535069791023.Spec : Prop :=
  ∀ n, P13363598535069791023.a n = A078033 n

end A078033

/-!
# A078034: Expansion of (1-x)/(1+2*x^2-2*x^3).

The programs for A078034, the canonical program `A078034.P2548656513567385751` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078034 has offset 0).

The definition of A078034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x^2-2x^3))` (program `A078034.P2548656513567385751`, by `A078034.P2548656513567385751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078034.P2548656513567385751

`ogf((1-x)/(1+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078034

/-- `ogf((1-x)/(1+2x^2-2x^3))` -/
def P2548656513567385751.Spec : Prop :=
  ∀ n, P2548656513567385751.a n = A078034 n

theorem P2548656513567385751.correct : P2548656513567385751.Spec := by
  intro n
  simp only [A078034]

end A078034

/-! ## A078034.P1585113506414775704

`2*(a(n-3)-a(n-2))` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A078034.P1585113506414775704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  2 * (a (n - 3) - a (n - 2))

end

end A078034.P1585113506414775704

namespace A078034

/-- `2*(a(n-3)-a(n-2))` -/
def P1585113506414775704.Spec : Prop :=
  ∀ n, P1585113506414775704.a n = A078034 n

end A078034

/-! ## A078034.P8110251734540367505

`a(n-3)-(a(n-2)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A078034.P8110251734540367505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (n - 3) - (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A078034.P8110251734540367505

namespace A078034

/-- `a(n-3)-(a(n-2)+a(n-2)-a(n-3))` -/
def P8110251734540367505.Spec : Prop :=
  ∀ n, P8110251734540367505.a n = A078034 n

end A078034

/-! ## A078034.P8949913626895940680

`a(n-3)-(a(n-2)-a(n-3))-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A078034.P8949913626895940680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 3)) - a (n - 2)

end

end A078034.P8949913626895940680

namespace A078034

/-- `a(n-3)-(a(n-2)-a(n-3))-a(n-2)` -/
def P8949913626895940680.Spec : Prop :=
  ∀ n, P8949913626895940680.a n = A078034 n

end A078034

/-! ## A078034.P6710230568452336343

`Δ[A077964(abs(1-n))]`
-/

namespace A078034.P6710230568452336343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077964 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078034.P6710230568452336343

namespace A078034

/-- `Δ[A077964(abs(1-n))]` -/
def P6710230568452336343.Spec : Prop :=
  ∀ n, P6710230568452336343.a n = A078034 n

end A078034

/-! ## A078034.P9191241111455689700

`A077964(n+2)/(1-6/2)`
-/

namespace A078034.P9191241111455689700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077964 (n + 2) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A078034.P9191241111455689700

namespace A078034

/-- `A077964(n+2)/(1-6/2)` -/
def P9191241111455689700.Spec : Prop :=
  ∀ n, P9191241111455689700.a n = (A078034 n : ℚ)

end A078034

/-! ## A078034.P11280289633397799961

`A077964(n)-A077964(abs(1-n))`
-/

namespace A078034.P11280289633397799961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077964 n - A077964 |1 - (n : ℤ)|.toNat

end

end A078034.P11280289633397799961

namespace A078034

/-- `A077964(n)-A077964(abs(1-n))` -/
def P11280289633397799961.Spec : Prop :=
  ∀ n, P11280289633397799961.a n = A078034 n

end A078034

/-! ## A078034.P3404639014338199169

`round(A077891(n+4)/4)`
-/

namespace A078034.P3404639014338199169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077891 (n + 4) : ℚ) / 4)

end

end A078034.P3404639014338199169

namespace A078034

/-- `round(A077891(n+4)/4)` -/
def P3404639014338199169.Spec : Prop :=
  ∀ n, P3404639014338199169.a n = A078034 n

end A078034

/-!
# A078035: Expansion of (1-x)/(1+2*x^2-x^3).

The programs for A078035, the canonical program `A078035.P9953927275250343181` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078035 has offset 0).

The definition of A078035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x^2-x^3))` (program `A078035.P9953927275250343181`, by `A078035.P9953927275250343181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078035.P9953927275250343181

`ogf((1-x)/(1+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078035

/-- `ogf((1-x)/(1+2x^2-x^3))` -/
def P9953927275250343181.Spec : Prop :=
  ∀ n, P9953927275250343181.a n = A078035 n

theorem P9953927275250343181.correct : P9953927275250343181.Spec := by
  intro n
  simp only [A078035]

end A078035

/-! ## A078035.P12573077485861106684

`a(n-3)-2*a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A078035.P12573077485861106684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (n - 3) - 2 * a (n - 2)

end

end A078035.P12573077485861106684

namespace A078035

/-- `a(n-3)-2*a(n-2)` -/
def P12573077485861106684.Spec : Prop :=
  ∀ n, P12573077485861106684.a n = A078035 n

end A078035

/-! ## A078035.P7845301456309269513

`a(n-3)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A078035.P7845301456309269513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (n - 3) - a (n - 2) - a (n - 2)

end

end A078035.P7845301456309269513

namespace A078035

/-- `a(n-3)-a(n-2)-a(n-2)` -/
def P7845301456309269513.Spec : Prop :=
  ∀ n, P7845301456309269513.a n = A078035 n

end A078035

/-! ## A078035.P16891765430266101293

`Δ[A077965(abs(1-n))]`
-/

namespace A078035.P16891765430266101293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077965 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078035.P16891765430266101293

namespace A078035

/-- `Δ[A077965(abs(1-n))]` -/
def P16891765430266101293.Spec : Prop :=
  ∀ n, P16891765430266101293.a n = A078035 n

end A078035

/-! ## A078035.P235329450842259127

`A077965(n)-A077965(abs(1-n))`
-/

namespace A078035.P235329450842259127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077965 n - A077965 |1 - (n : ℤ)|.toNat

end

end A078035.P235329450842259127

namespace A078035

/-- `A077965(n)-A077965(abs(1-n))` -/
def P235329450842259127.Spec : Prop :=
  ∀ n, P235329450842259127.a n = A078035 n

end A078035

/-! ## A078035.P18023140042513856722

`∑[A077965(n+1)+A077965(n)]`
-/

namespace A078035.P18023140042513856722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077965 (n + 1) + A077965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078035.P18023140042513856722

namespace A078035

/-- `∑[A077965(n+1)+A077965(n)]` -/
def P18023140042513856722.Spec : Prop :=
  ∀ n, P18023140042513856722.a n = A078035 n

end A078035

/-!
# A078036: Expansion of (1-x)/(1+2*x^2+x^3).

The programs for A078036, the canonical program `A078036.P16905232830109174473` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078036 has offset 0).

The definition of A078036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x^2+x^3))` (program `A078036.P16905232830109174473`, by `A078036.P16905232830109174473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078036.P16905232830109174473

`ogf((1-x)/(1+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078036

/-- `ogf((1-x)/(1+2x^2+x^3))` -/
def P16905232830109174473.Spec : Prop :=
  ∀ n, P16905232830109174473.a n = A078036 n

theorem P16905232830109174473.correct : P16905232830109174473.Spec := by
  intro n
  simp only [A078036]

end A078036

/-! ## A078036.P12154115546916006238

`Δ[A077967(abs(1-n))]`
-/

namespace A078036.P12154115546916006238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077967 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078036.P12154115546916006238

namespace A078036

/-- `Δ[A077967(abs(1-n))]` -/
def P12154115546916006238.Spec : Prop :=
  ∀ n, P12154115546916006238.a n = A078036 n

end A078036

/-! ## A078036.P2245259633926780066

`A077967(n)-A077967(abs(1-n))`
-/

namespace A078036.P2245259633926780066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077967 n - A077967 |1 - (n : ℤ)|.toNat

end

end A078036.P2245259633926780066

namespace A078036

/-- `A077967(n)-A077967(abs(1-n))` -/
def P2245259633926780066.Spec : Prop :=
  ∀ n, P2245259633926780066.a n = A078036 n

end A078036

/-! ## A078036.P9380921537323142623

`a(n-2)-(a(n-3)+3*a(n-2))` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A078036.P9380921537323142623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (n - 2) - (a (n - 3) + 3 * a (n - 2))

end

end A078036.P9380921537323142623

namespace A078036

/-- `a(n-2)-(a(n-3)+3*a(n-2))` -/
def P9380921537323142623.Spec : Prop :=
  ∀ n, P9380921537323142623.a n = A078036 n

end A078036

/-! ## A078036.P12890920038876196183

`a(n-2)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A078036.P12890920038876196183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (n - 2) - 3 * a (n - 2) - a (n - 3)

end

end A078036.P12890920038876196183

namespace A078036

/-- `a(n-2)-3*a(n-2)-a(n-3)` -/
def P12890920038876196183.Spec : Prop :=
  ∀ n, P12890920038876196183.a n = A078036 n

end A078036

/-!
# A078037: Expansion of (1-x)/(1+2*x^2+2*x^3).

The programs for A078037, the canonical program `A078037.P10746085127919921232` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078037 has offset 0).

The definition of A078037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x^2+2x^3))` (program `A078037.P10746085127919921232`, by `A078037.P10746085127919921232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078037.P10746085127919921232

`ogf((1-x)/(1+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078037

/-- `ogf((1-x)/(1+2x^2+2x^3))` -/
def P10746085127919921232.Spec : Prop :=
  ∀ n, P10746085127919921232.a n = A078037 n

theorem P10746085127919921232.correct : P10746085127919921232.Spec := by
  intro n
  simp only [A078037]

end A078037

/-! ## A078037.P13936996706236331033

`Δ[A123958(n+2)]`
-/

namespace A078037.P13936996706236331033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078037.P13936996706236331033

namespace A078037

/-- `Δ[A123958(n+2)]` -/
def P13936996706236331033.Spec : Prop :=
  ∀ n, P13936996706236331033.a n = A078037 n

end A078037

/-! ## A078037.P12603123340143716657

`Δ[A077968(abs(1-n))]`
-/

namespace A078037.P12603123340143716657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077968 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078037.P12603123340143716657

namespace A078037

/-- `Δ[A077968(abs(1-n))]` -/
def P12603123340143716657.Spec : Prop :=
  ∀ n, P12603123340143716657.a n = A078037 n

end A078037

/-! ## A078037.P17387344288625414851

`A077968(n)-A123958(n+2)`
-/

namespace A078037.P17387344288625414851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077968 n - A123958 (n + 2)

end

end A078037.P17387344288625414851

namespace A078037

/-- `A077968(n)-A123958(n+2)` -/
def P17387344288625414851.Spec : Prop :=
  ∀ n, P17387344288625414851.a n = A078037 n

end A078037

/-! ## A078037.P9058444103840130640

`A077968(n)-A077968(abs(1-n))`
-/

namespace A078037.P9058444103840130640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077968 n - A077968 |1 - (n : ℤ)|.toNat

end

end A078037.P9058444103840130640

namespace A078037

/-- `A077968(n)-A077968(abs(1-n))` -/
def P9058444103840130640.Spec : Prop :=
  ∀ n, P9058444103840130640.a n = A078037 n

end A078037

/-! ## A078037.P2604916598118342992

`A123958(n+3)-A123958(n+2)`
-/

namespace A078037.P2604916598118342992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123958 (n + 3) - A123958 (n + 2)

end

end A078037.P2604916598118342992

namespace A078037

/-- `A123958(n+3)-A123958(n+2)` -/
def P2604916598118342992.Spec : Prop :=
  ∀ n, P2604916598118342992.a n = A078037 n

end A078037

/-!
# A078038: Expansion of (1-x)/(1+x-2*x^2-x^3).

The programs for A078038, the canonical program `A078038.P18079613866726222440` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078038 has offset 0).

The definition of A078038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x-2x^2-x^3))` (program `A078038.P18079613866726222440`, by `A078038.P18079613866726222440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078038.P18079613866726222440

`ogf((1-x)/(1+x-2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078038

/-- `ogf((1-x)/(1+x-2x^2-x^3))` -/
def P18079613866726222440.Spec : Prop :=
  ∀ n, P18079613866726222440.a n = A078038 n

theorem P18079613866726222440.correct : P18079613866726222440.Spec := by
  intro n
  simp only [A078038]

end A078038

/-! ## A078038.P5798361417467064924

`(-1)^n*(A006053(n+1)+A006053(n+2))`
-/

namespace A078038.P5798361417467064924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A006053 (n + 1) + A006053 (n + 2))

end

end A078038.P5798361417467064924

namespace A078038

/-- `(-1)^n*(A006053(n+1)+A006053(n+2))` -/
def P5798361417467064924.Spec : Prop :=
  ∀ n, P5798361417467064924.a n = A078038 n

end A078038

/-! ## A078038.P14936338734319963466

`(-1)^n*∑[A028495(n)]`
-/

namespace A078038.P14936338734319963466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078038.P14936338734319963466

namespace A078038

/-- `(-1)^n*∑[A028495(n)]` -/
def P14936338734319963466.Spec : Prop :=
  ∀ n, P14936338734319963466.a n = A078038 n

end A078038

/-! ## A078038.P12064179440274870300

`(-1)^n*record[A276055(n)]`
-/

namespace A078038.P12064179440274870300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078038.P12064179440274870300

namespace A078038

/-- `(-1)^n*record[A276055(n)]` -/
def P12064179440274870300.Spec : Prop :=
  ∀ n, P12064179440274870300.a n = A078038 n

end A078038

/-! ## A078038.P433417879258932873

`∑[A028495(n)]*A033999(n)`
-/

namespace A078038.P433417879258932873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A078038.P433417879258932873

namespace A078038

/-- `∑[A028495(n)]*A033999(n)` -/
def P433417879258932873.Spec : Prop :=
  ∀ n, P433417879258932873.a n = A078038 n

end A078038

/-! ## A078038.P17152859685045876193

`∑[A028495(n)]/A033999(n²)`
-/

namespace A078038.P17152859685045876193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A078038.P17152859685045876193

namespace A078038

/-- `∑[A028495(n)]/A033999(n²)` -/
def P17152859685045876193.Spec : Prop :=
  ∀ n, P17152859685045876193.a n = (A078038 n : ℚ)

end A078038

/-!
# A078039: Expansion of (1 - x)/(1 + x - 2*x^2 + x^3).

The programs for A078039, the canonical program `A078039.P5185707227705269062` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078039 has offset 0).

The definition of A078039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x-2x^2+x^3))` (program `A078039.P5185707227705269062`, by `A078039.P5185707227705269062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078039.P5185707227705269062

`ogf((1-x)/(1+x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078039

/-- `ogf((1-x)/(1+x-2x^2+x^3))` -/
def P5185707227705269062.Spec : Prop :=
  ∀ n, P5185707227705269062.a n = A078039 n

theorem P5185707227705269062.correct : P5185707227705269062.Spec := by
  intro n
  simp only [A078039]

end A078039

/-! ## A078039.P11673358759038158343

`(-1)^n*A141015(n+1)`
-/

namespace A078039.P11673358759038158343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A141015 (n + 1)

end

end A078039.P11673358759038158343

namespace A078039

/-- `(-1)^n*A141015(n+1)` -/
def P11673358759038158343.Spec : Prop :=
  ∀ n, P11673358759038158343.a n = A078039 n

end A078039

/-! ## A078039.P311642790609937064

`(-1)^n*A000930(2*n+1)`
-/

namespace A078039.P311642790609937064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000930 (2 * n + 1)

end

end A078039.P311642790609937064

namespace A078039

/-- `(-1)^n*A000930(2*n+1)` -/
def P311642790609937064.Spec : Prop :=
  ∀ n, P311642790609937064.a n = A078039 n

end A078039

/-! ## A078039.P7456911072138967457

`(-1)^n*∑[A058278(2*n+1)]`
-/

namespace A078039.P7456911072138967457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078039.P7456911072138967457

namespace A078039

/-- `(-1)^n*∑[A058278(2*n+1)]` -/
def P7456911072138967457.Spec : Prop :=
  ∀ n, P7456911072138967457.a n = A078039 n

end A078039

/-! ## A078039.P11196234918790189190

`A033999(n)*A141683(n+2)`
-/

namespace A078039.P11196234918790189190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A141683 (n + 2)

end

end A078039.P11196234918790189190

namespace A078039

/-- `A033999(n)*A141683(n+2)` -/
def P11196234918790189190.Spec : Prop :=
  ∀ n, P11196234918790189190.a n = A078039 n

end A078039

/-! ## A078039.P333277646943092401

`A033999(n)*A068921(2*n)`
-/

namespace A078039.P333277646943092401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A068921 (2 * n)

end

end A078039.P333277646943092401

namespace A078039

/-- `A033999(n)*A068921(2*n)` -/
def P333277646943092401.Spec : Prop :=
  ∀ n, P333277646943092401.a n = A078039 n

end A078039

/-! ## A078039.P16310152875052730373

`A000930(2*n+1)*A033999(n)`
-/

namespace A078039.P16310152875052730373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n + 1) * A033999 n

end

end A078039.P16310152875052730373

namespace A078039

/-- `A000930(2*n+1)*A033999(n)` -/
def P16310152875052730373.Spec : Prop :=
  ∀ n, P16310152875052730373.a n = A078039 n

end A078039

/-! ## A078039.P8812368950344039313

`A033999(n)*A108104(4*n+2)`
-/

namespace A078039.P8812368950344039313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A108104 (4 * n + 2)

end

end A078039.P8812368950344039313

namespace A078039

/-- `A033999(n)*A108104(4*n+2)` -/
def P8812368950344039313.Spec : Prop :=
  ∀ n, P8812368950344039313.a n = A078039 n

end A078039

/-! ## A078039.P15678132365736896103

`A033999(n+1)*A199804(2*n+1)`
-/

namespace A078039.P15678132365736896103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A199804 (2 * n + 1)

end

end A078039.P15678132365736896103

namespace A078039

/-- `A033999(n+1)*A199804(2*n+1)` -/
def P15678132365736896103.Spec : Prop :=
  ∀ n, P15678132365736896103.a n = A078039 n

end A078039

/-! ## A078039.P16799362446602287965

`A000930(2*n+1)*A056594(2*n)`
-/

namespace A078039.P16799362446602287965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n + 1) * A056594 (2 * n)

end

end A078039.P16799362446602287965

namespace A078039

/-- `A000930(2*n+1)*A056594(2*n)` -/
def P16799362446602287965.Spec : Prop :=
  ∀ n, P16799362446602287965.a n = A078039 n

end A078039

/-! ## A078039.P14137378743062117211

`A010892(A016777(n))*A068921(2*n)`
-/

namespace A078039.P14137378743062117211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n).toNat * A068921 (2 * n)

end

end A078039.P14137378743062117211

namespace A078039

/-- `A010892(A016777(n))*A068921(2*n)` -/
def P14137378743062117211.Spec : Prop :=
  ∀ n, P14137378743062117211.a n = A078039 n

end A078039

/-! ## A078039.P14330334897903457578

`A199804(2*n+1)/A000930(n+1)*A199804(n+1)`
-/

namespace A078039.P14330334897903457578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199804 (2 * n + 1) : ℚ) / (A000930 (n + 1) : ℚ) * (A199804 (n + 1) : ℚ)

end

end A078039.P14330334897903457578

namespace A078039

/-- `A199804(2*n+1)/A000930(n+1)*A199804(n+1)` -/
def P14330334897903457578.Spec : Prop :=
  ∀ n, P14330334897903457578.a n = (A078039 n : ℚ)

end A078039

/-! ## A078039.P3602102018808333995

`(A005811(2*n+1)-A005811(2*n))*A068921(2*n)`
-/

namespace A078039.P3602102018808333995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005811 (2 * n + 1) - A005811 (2 * n)) * A068921 (2 * n)

end

end A078039.P3602102018808333995

namespace A078039

/-- `(A005811(2*n+1)-A005811(2*n))*A068921(2*n)` -/
def P3602102018808333995.Spec : Prop :=
  ∀ n, P3602102018808333995.a n = A078039 n

end A078039

/-! ## A078039.P17372987355662248487

`1-A077899(n+1)`
-/

namespace A078039.P17372987355662248487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077899 (n + 1)

end

end A078039.P17372987355662248487

namespace A078039

/-- `1-A077899(n+1)` -/
def P17372987355662248487.Spec : Prop :=
  ∀ n, P17372987355662248487.a n = A078039 n

end A078039

/-! ## A078039.P9516907828770473076

`∑[A002478(n+1)*A033999(n)]`
-/

namespace A078039.P9516907828770473076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078039.P9516907828770473076

namespace A078039

/-- `∑[A002478(n+1)*A033999(n)]` -/
def P9516907828770473076.Spec : Prop :=
  ∀ n, P9516907828770473076.a n = A078039 n

end A078039

/-! ## A078039.P8416826126442701111

`A141683(n+2)/A033999(n²)`
-/

namespace A078039.P8416826126442701111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141683 (n + 2) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A078039.P8416826126442701111

namespace A078039

/-- `A141683(n+2)/A033999(n²)` -/
def P8416826126442701111.Spec : Prop :=
  ∀ n, P8416826126442701111.a n = (A078039 n : ℚ)

end A078039

/-!
# A078040: Expansion of (1-x)/(1+x-2*x^2+2*x^3).

The programs for A078040, the canonical program `A078040.P5678265888406970296` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078040 has offset 0).

The definition of A078040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x-2x^2+2x^3))` (program `A078040.P5678265888406970296`, by `A078040.P5678265888406970296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078040.P5678265888406970296

`ogf((1-x)/(1+x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078040

/-- `ogf((1-x)/(1+x-2x^2+2x^3))` -/
def P5678265888406970296.Spec : Prop :=
  ∀ n, P5678265888406970296.a n = A078040 n

theorem P5678265888406970296.correct : P5678265888406970296.Spec := by
  intro n
  simp only [A078040]

end A078040

/-! ## A078040.P8730199669447491440

`(A077900(n+2)-A077900(n))/2`
-/

namespace A078040.P8730199669447491440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077900 (n + 2) - A077900 n : ℚ) / 2

end

end A078040.P8730199669447491440

namespace A078040

/-- `(A077900(n+2)-A077900(n))/2` -/
def P8730199669447491440.Spec : Prop :=
  ∀ n, P8730199669447491440.a n = (A078040 n : ℚ)

end A078040

/-! ## A078040.P17247435626317312608

`A077970(n+2)%A239812(n+1)`
-/

namespace A078040.P17247435626317312608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077970 (n + 2)) (A239812 (n + 1))

end

end A078040.P17247435626317312608

namespace A078040

/-- `A077970(n+2)%A239812(n+1)` -/
def P17247435626317312608.Spec : Prop :=
  ∀ n, P17247435626317312608.a n = A078040 n

end A078040

/-! ## A078040.P14448424313926478729

`Δ[(A077900(n+1)+A077900(n))/2]`
-/

namespace A078040.P14448424313926478729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077900 (n + 1) + A077900 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078040.P14448424313926478729

namespace A078040

/-- `Δ[(A077900(n+1)+A077900(n))/2]` -/
def P14448424313926478729.Spec : Prop :=
  ∀ n, P14448424313926478729.a n = (A078040 n : ℚ)

end A078040

/-! ## A078040.P11626314052600466308

`(A077970(n+1)+A077970(n+2))/2`
-/

namespace A078040.P11626314052600466308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077970 (n + 1) + A077970 (n + 2) : ℚ) / 2

end

end A078040.P11626314052600466308

namespace A078040

/-- `(A077970(n+1)+A077970(n+2))/2` -/
def P11626314052600466308.Spec : Prop :=
  ∀ n, P11626314052600466308.a n = (A078040 n : ℚ)

end A078040

/-! ## A078040.P9379072701483154084

`A000007(n)+Δ[A077970(A028310(n)-1)]`
-/

namespace A078040.P9379072701483154084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A078040.P9379072701483154084

namespace A078040

/-- `A000007(n)+Δ[A077970(A028310(n)-1)]` -/
def P9379072701483154084.Spec : Prop :=
  ∀ n, P9379072701483154084.a n = A078040 n

end A078040

/-!
# A078041: Expansion of (1-x)/(1+x-x^2-2*x^3).

The programs for A078041, the canonical program `A078041.P1991830818994939926` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078041 has offset 0).

The definition of A078041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x-x^2-2x^3))` (program `A078041.P1991830818994939926`, by `A078041.P1991830818994939926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078041.P1991830818994939926

`ogf((1-x)/(1+x-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078041

/-- `ogf((1-x)/(1+x-x^2-2x^3))` -/
def P1991830818994939926.Spec : Prop :=
  ∀ n, P1991830818994939926.a n = A078041 n

theorem P1991830818994939926.correct : P1991830818994939926.Spec := by
  intro n
  simp only [A078041]

end A078041

/-! ## A078041.P13319451971047566880

`2*a(n-3)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078041.P13319451971047566880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  2 * a (n - 3) + (a (n - 2) - a (n - 1))

end

end A078041.P13319451971047566880

namespace A078041

/-- `2*a(n-3)+a(n-2)-a(n-1)` -/
def P13319451971047566880.Spec : Prop :=
  ∀ n, P13319451971047566880.a n = A078041 n

end A078041

/-! ## A078041.P14614124518963504953

`a(n-2)-(a(n-1)-2*a(n-3))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078041.P14614124518963504953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - (a (n - 1) - 2 * a (n - 3))

end

end A078041.P14614124518963504953

namespace A078041

/-- `a(n-2)-(a(n-1)-2*a(n-3))` -/
def P14614124518963504953.Spec : Prop :=
  ∀ n, P14614124518963504953.a n = A078041 n

end A078041

/-! ## A078041.P11073349911549041359

`a(n-2)+a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078041.P11073349911549041359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 3) - a (n - 1)))

end

end A078041.P11073349911549041359

namespace A078041

/-- `a(n-2)+a(n-3)+a(n-3)-a(n-1)` -/
def P11073349911549041359.Spec : Prop :=
  ∀ n, P11073349911549041359.a n = A078041 n

end A078041

/-! ## A078041.P3493707731111132129

`a(n-2)-(a(n-1)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078041.P3493707731111132129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 3) - a (n - 3))

end

end A078041.P3493707731111132129

namespace A078041

/-- `a(n-2)-(a(n-1)-a(n-3)-a(n-3))` -/
def P3493707731111132129.Spec : Prop :=
  ∀ n, P3493707731111132129.a n = A078041 n

end A078041

/-! ## A078041.P6974044751477197730

`A297870(n+3)-2^(n+1)`
-/

namespace A078041.P6974044751477197730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 3) - (2 ^ (n + 1) : ℤ)

end

end A078041.P6974044751477197730

namespace A078041

/-- `A297870(n+3)-2^(n+1)` -/
def P6974044751477197730.Spec : Prop :=
  ∀ n, P6974044751477197730.a n = A078041 n

end A078041

/-! ## A078041.P1122750904713070686

`Δ[A297937(n+1)-A151821(n+1)]`
-/

namespace A078041.P1122750904713070686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297937 (n + 1) - A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078041.P1122750904713070686

namespace A078041

/-- `Δ[A297937(n+1)-A151821(n+1)]` -/
def P1122750904713070686.Spec : Prop :=
  ∀ n, P1122750904713070686.a n = A078041 n

end A078041

/-! ## A078041.P15430177361095568481

`A302279(n+3)-Δ[A153893(n+1)]`
-/

namespace A078041.P15430177361095568481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302279 (n + 3) - (f1 (n + 1) - f1 n)

end

end A078041.P15430177361095568481

namespace A078041

/-- `A302279(n+3)-Δ[A153893(n+1)]` -/
def P15430177361095568481.Spec : Prop :=
  ∀ n, P15430177361095568481.a n = A078041 n

end A078041

/-! ## A078041.P9195369667584891816

`A302279(n+3)-Δ[A181565(n+1)]`
-/

namespace A078041.P9195369667584891816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302279 (n + 3) - (f1 (n + 1) - f1 n)

end

end A078041.P9195369667584891816

namespace A078041

/-- `A302279(n+3)-Δ[A181565(n+1)]` -/
def P9195369667584891816.Spec : Prop :=
  ∀ n, P9195369667584891816.a n = A078041 n

end A078041

/-!
# A078042: Expansion of (1-x)/(1+x-x^2+x^3).

The programs for A078042, the canonical program `A078042.P10218968583799044815` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078042 has offset 0).

The definition of A078042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x-x^2+x^3))` (program `A078042.P10218968583799044815`, by `A078042.P10218968583799044815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078042.P10218968583799044815

`ogf((1-x)/(1+x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078042

/-- `ogf((1-x)/(1+x-x^2+x^3))` -/
def P10218968583799044815.Spec : Prop :=
  ∀ n, P10218968583799044815.a n = A078042 n

theorem P10218968583799044815.correct : P10218968583799044815.Spec := by
  intro n
  simp only [A078042]

end A078042

/-! ## A078042.P4732840265207412997

`a(n-2)-(a(n-1)+a(n-3))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078042.P4732840265207412997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - (a (n - 1) + a (n - 3))

end

end A078042.P4732840265207412997

namespace A078042

/-- `a(n-2)-(a(n-1)+a(n-3))` -/
def P4732840265207412997.Spec : Prop :=
  ∀ n, P4732840265207412997.a n = A078042 n

end A078042

/-! ## A078042.P8450773750952421495

`a(n-2)-a(n-1)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078042.P8450773750952421495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - a (n - 1) - a (n - 3)

end

end A078042.P8450773750952421495

namespace A078042

/-- `a(n-2)-a(n-1)-a(n-3)` -/
def P8450773750952421495.Spec : Prop :=
  ∀ n, P8450773750952421495.a n = A078042 n

end A078042

/-! ## A078042.P9159713464947087571

`(-1)^n*∑[A000213(n)]`
-/

namespace A078042.P9159713464947087571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078042.P9159713464947087571

namespace A078042

/-- `(-1)^n*∑[A000213(n)]` -/
def P9159713464947087571.Spec : Prop :=
  ∀ n, P9159713464947087571.a n = A078042 n

end A078042

/-! ## A078042.P6239137588781856821

`A033999(n)*A047081(n)`
-/

namespace A078042.P6239137588781856821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A047081 n

end

end A078042.P6239137588781856821

namespace A078042

/-- `A033999(n)*A047081(n)` -/
def P6239137588781856821.Spec : Prop :=
  ∀ n, P6239137588781856821.a n = A078042 n

end A078042

/-! ## A078042.P1063565619274687764

`∑[A000213(n)]*A057077(2*n)`
-/

namespace A078042.P1063565619274687764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A078042.P1063565619274687764

namespace A078042

/-- `∑[A000213(n)]*A057077(2*n)` -/
def P1063565619274687764.Spec : Prop :=
  ∀ n, P1063565619274687764.a n = A078042 n

end A078042

/-! ## A078042.P10685116796419379250

`A001590(n+3)*A054354(A054353(n+1))`
-/

namespace A078042.P10685116796419379250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 3) * A054354 (A054353 (n + 1)).toNat

end

end A078042.P10685116796419379250

namespace A078042

/-- `A001590(n+3)*A054354(A054353(n+1))` -/
def P10685116796419379250.Spec : Prop :=
  ∀ n, P10685116796419379250.a n = A078042 n

end A078042

/-! ## A078042.P13665809517850807568

`A077902(n+2)-A077902(n)`
-/

namespace A078042.P13665809517850807568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077902 (n + 2) - A077902 n

end

end A078042.P13665809517850807568

namespace A078042

/-- `A077902(n+2)-A077902(n)` -/
def P13665809517850807568.Spec : Prop :=
  ∀ n, P13665809517850807568.a n = A078042 n

end A078042

/-! ## A078042.P12839696411685468834

`Δ[A077902(n+1)+A077902(n)]`
-/

namespace A078042.P12839696411685468834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077902 (n + 1) + A077902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078042.P12839696411685468834

namespace A078042

/-- `Δ[A077902(n+1)+A077902(n)]` -/
def P12839696411685468834.Spec : Prop :=
  ∀ n, P12839696411685468834.a n = A078042 n

end A078042

/-!
# A078043: Expansion of (1 - x)/(1 + x - x^2 + 2*x^3).

The programs for A078043, the canonical program `A078043.P13990543735218812607` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078043 has offset 0).

The definition of A078043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x-x^2+2x^3))` (program `A078043.P13990543735218812607`, by `A078043.P13990543735218812607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078043.P13990543735218812607

`ogf((1-x)/(1+x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078043

/-- `ogf((1-x)/(1+x-x^2+2x^3))` -/
def P13990543735218812607.Spec : Prop :=
  ∀ n, P13990543735218812607.a n = A078043 n

theorem P13990543735218812607.correct : P13990543735218812607.Spec := by
  intro n
  simp only [A078043]

end A078043

/-! ## A078043.P4739650700888120884

`floor((6*(-2)^n+3)/7)`
-/

namespace A078043.P4739650700888120884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * (-2) ^ n + 3 : ℚ) / 7⌋

end

end A078043.P4739650700888120884

namespace A078043

/-- `floor((6*(-2)^n+3)/7)` -/
def P4739650700888120884.Spec : Prop :=
  ∀ n, P4739650700888120884.a n = A078043 n

end A078043

/-! ## A078043.P10931526421370616252

`a(n-2)-(a(n-1)+2*a(n-3))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078043.P10931526421370616252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - (a (n - 1) + 2 * a (n - 3))

end

end A078043.P10931526421370616252

namespace A078043

/-- `a(n-2)-(a(n-1)+2*a(n-3))` -/
def P10931526421370616252.Spec : Prop :=
  ∀ n, P10931526421370616252.a n = A078043 n

end A078043

/-! ## A078043.P3951411720211272970

`a(n-2)-2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078043.P3951411720211272970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - 2 * a (n - 3) - a (n - 1)

end

end A078043.P3951411720211272970

namespace A078043

/-- `a(n-2)-2*a(n-3)-a(n-1)` -/
def P3951411720211272970.Spec : Prop :=
  ∀ n, P3951411720211272970.a n = A078043 n

end A078043

/-! ## A078043.P2523103813807609547

`a(n-2)-(a(n-3)+a(n-1)+a(n-3))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078043.P2523103813807609547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - (a (n - 3) + (a (n - 1) + a (n - 3)))

end

end A078043.P2523103813807609547

namespace A078043

/-- `a(n-2)-(a(n-3)+a(n-1)+a(n-3))` -/
def P2523103813807609547.Spec : Prop :=
  ∀ n, P2523103813807609547.a n = A078043 n

end A078043

/-! ## A078043.P3288198620218772510

`a(n-2)-a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A078043.P3288198620218772510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 2) - a (n - 1) - a (n - 3) - a (n - 3)

end

end A078043.P3288198620218772510

namespace A078043

/-- `a(n-2)-a(n-1)-a(n-3)-a(n-3)` -/
def P3288198620218772510.Spec : Prop :=
  ∀ n, P3288198620218772510.a n = A078043 n

end A078043

/-! ## A078043.P2865665193115604998

`A010892(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A078043.P2865665193115604998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010892 (n + 1) - 2 * a (n - 1)

end

end A078043.P2865665193115604998

namespace A078043

/-- `A010892(n+1)-2*a(n-1)` -/
def P2865665193115604998.Spec : Prop :=
  ∀ n, P2865665193115604998.a n = A078043 n

end A078043

/-! ## A078043.P1658639479043269454

`∑[A122552(n)]*A010892(3*n)`
-/

namespace A078043.P1658639479043269454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (3 * n)

end

end A078043.P1658639479043269454

namespace A078043

/-- `∑[A122552(n)]*A010892(3*n)` -/
def P1658639479043269454.Spec : Prop :=
  ∀ n, P1658639479043269454.a n = A078043 n

end A078043

/-! ## A078043.P1778046984316619476

`A057077(2*n)*A294627(n+1)`
-/

namespace A078043.P1778046984316619476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A294627 (n + 1)

end

end A078043.P1778046984316619476

namespace A078043

/-- `A057077(2*n)*A294627(n+1)` -/
def P1778046984316619476.Spec : Prop :=
  ∀ n, P1778046984316619476.a n = A078043 n

end A078043

/-! ## A078043.P5664302187902299572

`A294627(n+1)/A077947(n)*A077972(n)`
-/

namespace A078043.P5664302187902299572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294627 (n + 1) : ℚ) / (A077947 n : ℚ) * (A077972 n : ℚ)

end

end A078043.P5664302187902299572

namespace A078043

/-- `A294627(n+1)/A077947(n)*A077972(n)` -/
def P5664302187902299572.Spec : Prop :=
  ∀ n, P5664302187902299572.a n = (A078043 n : ℚ)

end A078043

/-! ## A078043.P17013363547088875541

`A020985(2*n+1)*A020985(n)*A294627(n+1)`
-/

namespace A078043.P17013363547088875541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A294627 (n + 1)

end

end A078043.P17013363547088875541

namespace A078043

/-- `A020985(2*n+1)*A020985(n)*A294627(n+1)` -/
def P17013363547088875541.Spec : Prop :=
  ∀ n, P17013363547088875541.a n = A078043 n

end A078043

/-! ## A078043.P7326181451801884912

`ceil((A140683(n+1)-2)/7)`
-/

namespace A078043.P7326181451801884912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140683 (n + 1) - 2 : ℚ) / 7⌉

end

end A078043.P7326181451801884912

namespace A078043

/-- `ceil((A140683(n+1)-2)/7)` -/
def P7326181451801884912.Spec : Prop :=
  ∀ n, P7326181451801884912.a n = A078043 n

end A078043

/-!
# A078044: Expansion of (1-x)/(1+x+2*x^3).

The programs for A078044, the canonical program `A078044.P659292450410543461` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078044 has offset 0).

The definition of A078044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+2x^3))` (program `A078044.P659292450410543461`, by `A078044.P659292450410543461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078044.P659292450410543461

`ogf((1-x)/(1+x+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078044

/-- `ogf((1-x)/(1+x+2x^3))` -/
def P659292450410543461.Spec : Prop :=
  ∀ n, P659292450410543461.a n = A078044 n

theorem P659292450410543461.correct : P659292450410543461.Spec := by
  intro n
  simp only [A078044]

end A078044

/-! ## A078044.P2229670706973567521

`a(n-3)-3*a(n-3)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A078044.P2229670706973567521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  a (n - 3) - 3 * a (n - 3) - a (n - 1)

end

end A078044.P2229670706973567521

namespace A078044

/-- `a(n-3)-3*a(n-3)-a(n-1)` -/
def P2229670706973567521.Spec : Prop :=
  ∀ n, P2229670706973567521.a n = A078044 n

end A078044

/-! ## A078044.P2014976639733715261

`(-1)^n*Δ[A203175(n+2)]`
-/

namespace A078044.P2014976639733715261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A078044.P2014976639733715261

namespace A078044

/-- `(-1)^n*Δ[A203175(n+2)]` -/
def P2014976639733715261.Spec : Prop :=
  ∀ n, P2014976639733715261.a n = A078044 n

end A078044

/-! ## A078044.P17848823597356445408

`Δ[A203175(n+2)]*A033999(n)`
-/

namespace A078044.P17848823597356445408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A078044.P17848823597356445408

namespace A078044

/-- `Δ[A203175(n+2)]*A033999(n)` -/
def P17848823597356445408.Spec : Prop :=
  ∀ n, P17848823597356445408.a n = A078044 n

end A078044

/-! ## A078044.P6215019974063244995

`Δ[Δ[A164395(n)]]*A033999(n)`
-/

namespace A078044.P6215019974063244995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A078044.P6215019974063244995

namespace A078044

/-- `Δ[Δ[A164395(n)]]*A033999(n)` -/
def P6215019974063244995.Spec : Prop :=
  ∀ n, P6215019974063244995.a n = A078044 n

end A078044

/-! ## A078044.P5444814906732786665

`Δ[Δ[A003476(n+2)]]*A033999(n)`
-/

namespace A078044.P5444814906732786665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A078044.P5444814906732786665

namespace A078044

/-- `Δ[Δ[A003476(n+2)]]*A033999(n)` -/
def P5444814906732786665.Spec : Prop :=
  ∀ n, P5444814906732786665.a n = A078044 n

end A078044

/-! ## A078044.P4471351451870897187

`Δ[Δ[A164395(n)]]/A033999(n+2)`
-/

namespace A078044.P4471351451870897187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A078044.P4471351451870897187

namespace A078044

/-- `Δ[Δ[A164395(n)]]/A033999(n+2)` -/
def P4471351451870897187.Spec : Prop :=
  ∀ n, P4471351451870897187.a n = (A078044 n : ℚ)

end A078044

/-!
# A078045: Expansion of (1-x)/(1+x+x^2-2*x^3).

The programs for A078045, the canonical program `A078045.P14380470021141181347` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078045 has offset 0).

The definition of A078045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+x^2-2x^3))` (program `A078045.P14380470021141181347`, by `A078045.P14380470021141181347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078045.P14380470021141181347

`ogf((1-x)/(1+x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078045

/-- `ogf((1-x)/(1+x+x^2-2x^3))` -/
def P14380470021141181347.Spec : Prop :=
  ∀ n, P14380470021141181347.a n = A078045 n

theorem P14380470021141181347.correct : P14380470021141181347.Spec := by
  intro n
  simp only [A078045]

end A078045

/-! ## A078045.P13475434372914608405

`2*a(n-3)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A078045.P13475434372914608405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  2 * a (n - 3) - a (n - 2) - a (n - 1)

end

end A078045.P13475434372914608405

namespace A078045

/-- `2*a(n-3)-a(n-2)-a(n-1)` -/
def P13475434372914608405.Spec : Prop :=
  ∀ n, P13475434372914608405.a n = A078045 n

end A078045

/-! ## A078045.P4397752238229890123

`a(n-3)+a(n-3)-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A078045.P4397752238229890123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  a (n - 3) + (a (n - 3) - (a (n - 1) + a (n - 2)))

end

end A078045.P4397752238229890123

namespace A078045

/-- `a(n-3)+a(n-3)-(a(n-1)+a(n-2))` -/
def P4397752238229890123.Spec : Prop :=
  ∀ n, P4397752238229890123.a n = A078045 n

end A078045

/-! ## A078045.P7469352700692390539

`a(n-3)-(a(n-1)-a(n-3))-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A078045.P7469352700692390539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3)) - a (n - 2)

end

end A078045.P7469352700692390539

namespace A078045

/-- `a(n-3)-(a(n-1)-a(n-3))-a(n-2)` -/
def P7469352700692390539.Spec : Prop :=
  ∀ n, P7469352700692390539.a n = A078045 n

end A078045

/-! ## A078045.P15463590607916190682

`Δ[A077975(A025581(∑[n+1]+2))]`
-/

namespace A078045.P15463590607916190682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077975 (A025581 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078045.P15463590607916190682

namespace A078045

/-- `Δ[A077975(A025581(∑[n+1]+2))]` -/
def P15463590607916190682.Spec : Prop :=
  ∀ n, P15463590607916190682.a n = A078045 n

end A078045

/-!
# A078046: Expansion of (1-x)/(1 + x + x^2 - x^3).

The programs for A078046, the canonical program `A078046.P17874834118666832439` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078046 has offset 0).

The definition of A078046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+x^2-x^3))` (program `A078046.P17874834118666832439`, by `A078046.P17874834118666832439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078046.P17874834118666832439

`ogf((1-x)/(1+x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078046

/-- `ogf((1-x)/(1+x+x^2-x^3))` -/
def P17874834118666832439.Spec : Prop :=
  ∀ n, P17874834118666832439.a n = A078046 n

theorem P17874834118666832439.correct : P17874834118666832439.Spec := by
  intro n
  simp only [A078046]

end A078046

/-! ## A078046.P16629427524174418270

`a(n-3)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A078046.P16629427524174418270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  a (n - 3) - a (n - 2) - a (n - 1)

end

end A078046.P16629427524174418270

namespace A078046

/-- `a(n-3)-a(n-2)-a(n-1)` -/
def P16629427524174418270.Spec : Prop :=
  ∀ n, P16629427524174418270.a n = A078046 n

end A078046

/-! ## A078046.P4628675884262848953

`2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=2`
-/

namespace A078046.P4628675884262848953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, 2] fun n a =>
  2 * a (n - 3) - a (n - 4)

end

end A078046.P4628675884262848953

namespace A078046

/-- `2*a(n-3)-a(n-4)` -/
def P4628675884262848953.Spec : Prop :=
  ∀ n, P4628675884262848953.a n = A078046 n

end A078046

/-! ## A078046.P6227001490819055717

`-A319200(n+1)`
-/

namespace A078046.P6227001490819055717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A319200 (n + 1)

end

end A078046.P6227001490819055717

namespace A078046

/-- `-A319200(n+1)` -/
def P6227001490819055717.Spec : Prop :=
  ∀ n, P6227001490819055717.a n = A078046 n

end A078046

/-! ## A078046.P6068323609977780998

`Δ[A057597(n+1)]`
-/

namespace A078046.P6068323609977780998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078046.P6068323609977780998

namespace A078046

/-- `Δ[A057597(n+1)]` -/
def P6068323609977780998.Spec : Prop :=
  ∀ n, P6068323609977780998.a n = A078046 n

end A078046

/-! ## A078046.P10312337084613146091

`Δ[-∑[A319200(n)]]`
-/

namespace A078046.P10312337084613146091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078046.P10312337084613146091

namespace A078046

/-- `Δ[-∑[A319200(n)]]` -/
def P10312337084613146091.Spec : Prop :=
  ∀ n, P10312337084613146091.a n = A078046 n

end A078046

/-! ## A078046.P8774766495591096243

`(-1)^n*∑[A180735(n)]`
-/

namespace A078046.P8774766495591096243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078046.P8774766495591096243

namespace A078046

/-- `(-1)^n*∑[A180735(n)]` -/
def P8774766495591096243.Spec : Prop :=
  ∀ n, P8774766495591096243.a n = A078046 n

end A078046

/-! ## A078046.P14695721569353950247

`Δ[A057597(n)-A319200(n)]`
-/

namespace A078046.P14695721569353950247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 n - A319200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078046.P14695721569353950247

namespace A078046

/-- `Δ[A057597(n)-A319200(n)]` -/
def P14695721569353950247.Spec : Prop :=
  ∀ n, P14695721569353950247.a n = A078046 n

end A078046

/-! ## A078046.P6767939678150235051

`A077908(n)-A077908(n+2)`
-/

namespace A078046.P6767939678150235051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077908 n - A077908 (n + 2)

end

end A078046.P6767939678150235051

namespace A078046

/-- `A077908(n)-A077908(n+2)` -/
def P6767939678150235051.Spec : Prop :=
  ∀ n, P6767939678150235051.a n = A078046 n

end A078046

/-! ## A078046.P17719841202244469818

`∑[A319200(n)-A319200(n+1)]`
-/

namespace A078046.P17719841202244469818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n - A319200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078046.P17719841202244469818

namespace A078046

/-- `∑[A319200(n)-A319200(n+1)]` -/
def P17719841202244469818.Spec : Prop :=
  ∀ n, P17719841202244469818.a n = A078046 n

end A078046

/-! ## A078046.P3910374418863518867

`A057597(n+2)-A057597(n+1)`
-/

namespace A078046.P3910374418863518867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 2) - A057597 (n + 1)

end

end A078046.P3910374418863518867

namespace A078046

/-- `A057597(n+2)-A057597(n+1)` -/
def P3910374418863518867.Spec : Prop :=
  ∀ n, P3910374418863518867.a n = A078046 n

end A078046

/-! ## A078046.P1363810796256847761

`A080843(n+1)*A080843(n)-A319200(n+1)`
-/

namespace A078046.P1363810796256847761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (n + 1) * A080843 n - A319200 (n + 1)

end

end A078046.P1363810796256847761

namespace A078046

/-- `A080843(n+1)*A080843(n)-A319200(n+1)` -/
def P1363810796256847761.Spec : Prop :=
  ∀ n, P1363810796256847761.a n = A078046 n

end A078046

/-! ## A078046.P17533346924065348626

`A132151(n+1)*A132151(n)-A319200(n+1)`
-/

namespace A078046.P17533346924065348626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132151 (n + 1) * A132151 n - A319200 (n + 1)

end

end A078046.P17533346924065348626

namespace A078046

/-- `A132151(n+1)*A132151(n)-A319200(n+1)` -/
def P17533346924065348626.Spec : Prop :=
  ∀ n, P17533346924065348626.a n = A078046 n

end A078046

/-! ## A078046.P15963329345765460803

`A286998(n+1)*A286998(n+2)-A319200(n+1)`
-/

namespace A078046.P15963329345765460803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (n + 1) * A286998 (n + 2) - A319200 (n + 1)

end

end A078046.P15963329345765460803

namespace A078046

/-- `A286998(n+1)*A286998(n+2)-A319200(n+1)` -/
def P15963329345765460803.Spec : Prop :=
  ∀ n, P15963329345765460803.a n = A078046 n

end A078046

/-! ## A078046.P1647672765174370930

`A347290(n+1)*A347290(n+2)-A319200(n+1)`
-/

namespace A078046.P1647672765174370930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347290 (n + 1) * A347290 (n + 2) - A319200 (n + 1)

end

end A078046.P1647672765174370930

namespace A078046

/-- `A347290(n+1)*A347290(n+2)-A319200(n+1)` -/
def P1647672765174370930.Spec : Prop :=
  ∀ n, P1647672765174370930.a n = A078046 n

end A078046

/-!
# A078047: Expansion of (1-x)/(1+x+x^2+2*x^3).

The programs for A078047, the canonical program `A078047.P8158583539836070438` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078047 has offset 0).

The definition of A078047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+x^2+2x^3))` (program `A078047.P8158583539836070438`, by `A078047.P8158583539836070438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078047.P8158583539836070438

`ogf((1-x)/(1+x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078047

/-- `ogf((1-x)/(1+x+x^2+2x^3))` -/
def P8158583539836070438.Spec : Prop :=
  ∀ n, P8158583539836070438.a n = A078047 n

theorem P8158583539836070438.correct : P8158583539836070438.Spec := by
  intro n
  simp only [A078047]

end A078047

/-! ## A078047.P5340518426093833674

`2*a(n-4)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=-1`
-/

namespace A078047.P5340518426093833674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, -1] fun n a =>
  2 * a (n - 4) - a (n - 3)

end

end A078047.P5340518426093833674

namespace A078047

/-- `2*a(n-4)-a(n-3)` -/
def P5340518426093833674.Spec : Prop :=
  ∀ n, P5340518426093833674.a n = A078047 n

end A078047

/-! ## A078047.P6136402876406592562

`a(n-4)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=-1`
-/

namespace A078047.P6136402876406592562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, -1] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 3))

end

end A078047.P6136402876406592562

namespace A078047

/-- `a(n-4)+a(n-4)-a(n-3)` -/
def P6136402876406592562.Spec : Prop :=
  ∀ n, P6136402876406592562.a n = A078047 n

end A078047

/-! ## A078047.P7856170764639763722

`floor(a(n-4)-(a(n-3)-a(n-4)))` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A078047.P7856170764639763722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, -1] fun n a =>
  a (n - 4) - (a (n - 3) - a (n - 4))

end

end A078047.P7856170764639763722

namespace A078047

/-- `floor(a(n-4)-(a(n-3)-a(n-4)))` -/
def P7856170764639763722.Spec : Prop :=
  ∀ n, P7856170764639763722.a n = A078047 n

end A078047

/-! ## A078047.P17839253078761606511

`∑[-A279677(n+3)]`
-/

namespace A078047.P17839253078761606511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A279677 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078047.P17839253078761606511

namespace A078047

/-- `∑[-A279677(n+3)]` -/
def P17839253078761606511.Spec : Prop :=
  ∀ n, P17839253078761606511.a n = A078047 n

end A078047

/-! ## A078047.P1671909850412266707

`∑[A000007(n+1)-A279677(n+3)]`
-/

namespace A078047.P1671909850412266707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A279677 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078047.P1671909850412266707

namespace A078047

/-- `∑[A000007(n+1)-A279677(n+3)]` -/
def P1671909850412266707.Spec : Prop :=
  ∀ n, P1671909850412266707.a n = A078047 n

end A078047

/-! ## A078047.P8479839359173079004

`∑[A159075(n+2)-A279677(n+3)]`
-/

namespace A078047.P8479839359173079004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 2) - A279677 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078047.P8479839359173079004

namespace A078047

/-- `∑[A159075(n+2)-A279677(n+3)]` -/
def P8479839359173079004.Spec : Prop :=
  ∀ n, P8479839359173079004.a n = A078047 n

end A078047

/-! ## A078047.P16128709368108334322

`∑[A005843(n)%2-A279677(n+3)]`
-/

namespace A078047.P16128709368108334322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n) 2 - A279677 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078047.P16128709368108334322

namespace A078047

/-- `∑[A005843(n)%2-A279677(n+3)]` -/
def P16128709368108334322.Spec : Prop :=
  ∀ n, P16128709368108334322.a n = A078047 n

end A078047

/-! ## A078047.P9254387222284454329

`a(A028310(n)-1)-A279677(n+3)` with `a(0)=1`
-/

namespace A078047.P9254387222284454329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A028310 n - 1).toNat - A279677 (n + 3)

end

end A078047.P9254387222284454329

namespace A078047

/-- `a(A028310(n)-1)-A279677(n+3)` -/
def P9254387222284454329.Spec : Prop :=
  ∀ n, P9254387222284454329.a n = A078047 n

end A078047

/-! ## A078047.P17936647375714201713

`∑[A004198(A000217(n))-A279677(n+3)]`
-/

namespace A078047.P17936647375714201713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A000217 n).toNat - A279677 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078047.P17936647375714201713

namespace A078047

/-- `∑[A004198(A000217(n))-A279677(n+3)]` -/
def P17936647375714201713.Spec : Prop :=
  ∀ n, P17936647375714201713.a n = A078047 n

end A078047

/-! ## A078047.P17159068410381588403

`∑[A053186(n²)-A279677(n+3)]`
-/

namespace A078047.P17159068410381588403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n ^ 2) - A279677 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078047.P17159068410381588403

namespace A078047

/-- `∑[A053186(n²)-A279677(n+3)]` -/
def P17159068410381588403.Spec : Prop :=
  ∀ n, P17159068410381588403.a n = A078047 n

end A078047

/-!
# A078048: Expansion of (1-x)/(1+x+2*x^2-2*x^3).

The programs for A078048, the canonical program `A078048.P5419124192198549334` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078048 has offset 0).

The definition of A078048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+2x^2-2x^3))` (program `A078048.P5419124192198549334`, by `A078048.P5419124192198549334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078048.P5419124192198549334

`ogf((1-x)/(1+x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078048

/-- `ogf((1-x)/(1+x+2x^2-2x^3))` -/
def P5419124192198549334.Spec : Prop :=
  ∀ n, P5419124192198549334.a n = A078048 n

theorem P5419124192198549334.correct : P5419124192198549334.Spec := by
  intro n
  simp only [A078048]

end A078048

/-! ## A078048.P4890675285416898693

`2*(a(n-3)-a(n-2))-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A078048.P4890675285416898693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  2 * (a (n - 3) - a (n - 2)) - a (n - 1)

end

end A078048.P4890675285416898693

namespace A078048

/-- `2*(a(n-3)-a(n-2))-a(n-1)` -/
def P4890675285416898693.Spec : Prop :=
  ∀ n, P4890675285416898693.a n = A078048 n

end A078048

/-! ## A078048.P8918636326206937606

`(A077910(n)-A077910(n+2))/2`
-/

namespace A078048.P8918636326206937606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077910 n - A077910 (n + 2) : ℚ) / 2

end

end A078048.P8918636326206937606

namespace A078048

/-- `(A077910(n)-A077910(n+2))/2` -/
def P8918636326206937606.Spec : Prop :=
  ∀ n, P8918636326206937606.a n = (A078048 n : ℚ)

end A078048

/-! ## A078048.P5133492732880692321

`A078022(n+2)/(Δ[A004442(n)]-1)`
-/

namespace A078048.P5133492732880692321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078022 (n + 2) : ℚ) / (f1 (n + 1) - f1 n - 1 : ℚ)

end

end A078048.P5133492732880692321

namespace A078048

/-- `A078022(n+2)/(Δ[A004442(n)]-1)` -/
def P5133492732880692321.Spec : Prop :=
  ∀ n, P5133492732880692321.a n = (A078048 n : ℚ)

end A078048

/-!
# A078049: Expansion of (1-x)/(1+x+2*x^2-x^3).

The programs for A078049, the canonical program `A078049.P3503394819459727075` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078049 has offset 0).

The definition of A078049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+2x^2-x^3))` (program `A078049.P3503394819459727075`, by `A078049.P3503394819459727075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078049.P3503394819459727075

`ogf((1-x)/(1+x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078049

/-- `ogf((1-x)/(1+x+2x^2-x^3))` -/
def P3503394819459727075.Spec : Prop :=
  ∀ n, P3503394819459727075.a n = A078049 n

theorem P3503394819459727075.correct : P3503394819459727075.Spec := by
  intro n
  simp only [A078049]

end A078049

/-! ## A078049.P15047057153967695599

`a(n-3)-(a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A078049.P15047057153967695599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  a (n - 3) - (a (n - 1) + 2 * a (n - 2))

end

end A078049.P15047057153967695599

namespace A078049

/-- `a(n-3)-(a(n-1)+2*a(n-2))` -/
def P15047057153967695599.Spec : Prop :=
  ∀ n, P15047057153967695599.a n = A078049 n

end A078049

/-! ## A078049.P1750523661904610821

`a(n-3)-2*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A078049.P1750523661904610821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  a (n - 3) - 2 * a (n - 2) - a (n - 1)

end

end A078049.P1750523661904610821

namespace A078049

/-- `a(n-3)-2*a(n-2)-a(n-1)` -/
def P1750523661904610821.Spec : Prop :=
  ∀ n, P1750523661904610821.a n = A078049 n

end A078049

/-! ## A078049.P13667717324859832914

`a(n-3)-(a(n-2)+a(n-1)+a(n-2))` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A078049.P13667717324859832914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  a (n - 3) - (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A078049.P13667717324859832914

namespace A078049

/-- `a(n-3)-(a(n-2)+a(n-1)+a(n-2))` -/
def P13667717324859832914.Spec : Prop :=
  ∀ n, P13667717324859832914.a n = A078049 n

end A078049

/-! ## A078049.P463667268361150689

`(2-A078021(n)/A077955(n))*A077978(n)`
-/

namespace A078049.P463667268361150689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (A078021 n : ℚ) / (A077955 n : ℚ)) * (A077978 n : ℚ)

end

end A078049.P463667268361150689

namespace A078049

/-- `(2-A078021(n)/A077955(n))*A077978(n)` -/
def P463667268361150689.Spec : Prop :=
  ∀ n, P463667268361150689.a n = (A078049 n : ℚ)

end A078049

/-! ## A078049.P7727634515680460262

`a(n-3)-a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A078049.P7727634515680460262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2) - a (n - 2)

end

end A078049.P7727634515680460262

namespace A078049

/-- `a(n-3)-a(n-1)-a(n-2)-a(n-2)` -/
def P7727634515680460262.Spec : Prop :=
  ∀ n, P7727634515680460262.a n = A078049 n

end A078049

/-! ## A078049.P1612716831817442006

`∑[Δ[A077911(n)]+2*A077978(n)]`
-/

namespace A078049.P1612716831817442006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2 * A077978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078049.P1612716831817442006

namespace A078049

/-- `∑[Δ[A077911(n)]+2*A077978(n)]` -/
def P1612716831817442006.Spec : Prop :=
  ∀ n, P1612716831817442006.a n = A078049 n

end A078049

/-! ## A078049.P17135301186000655213

`∑[A077978(n+1)+2*A077978(n)]`
-/

namespace A078049.P17135301186000655213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077978 (n + 1) + 2 * A077978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078049.P17135301186000655213

namespace A078049

/-- `∑[A077978(n+1)+2*A077978(n)]` -/
def P17135301186000655213.Spec : Prop :=
  ∀ n, P17135301186000655213.a n = A078049 n

end A078049

/-! ## A078049.P5405987622378347597

`A077911(n)-(A077978(n)+A077911(n+2))`
-/

namespace A078049.P5405987622378347597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077911 n - (A077978 n + A077911 (n + 2))

end

end A078049.P5405987622378347597

namespace A078049

/-- `A077911(n)-(A077978(n)+A077911(n+2))` -/
def P5405987622378347597.Spec : Prop :=
  ∀ n, P5405987622378347597.a n = A078049 n

end A078049

/-! ## A078049.P3600477321109490507

`A077978(n)-A276229(n+1)`
-/

namespace A078049.P3600477321109490507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077978 n - A276229 (n + 1)

end

end A078049.P3600477321109490507

namespace A078049

/-- `A077978(n)-A276229(n+1)` -/
def P3600477321109490507.Spec : Prop :=
  ∀ n, P3600477321109490507.a n = A078049 n

end A078049

/-! ## A078049.P960974980008811253

`Δ[A276229(n+1)]`
-/

namespace A078049.P960974980008811253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078049.P960974980008811253

namespace A078049

/-- `Δ[A276229(n+1)]` -/
def P960974980008811253.Spec : Prop :=
  ∀ n, P960974980008811253.a n = A078049 n

end A078049

/-! ## A078049.P364342785998019720

`A276229(n+2)-A276229(n+1)`
-/

namespace A078049.P364342785998019720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276229 (n + 2) - A276229 (n + 1)

end

end A078049.P364342785998019720

namespace A078049

/-- `A276229(n+2)-A276229(n+1)` -/
def P364342785998019720.Spec : Prop :=
  ∀ n, P364342785998019720.a n = A078049 n

end A078049

/-!
# A078050: Expansion of (1-x)/(1+x+2*x^2).

The programs for A078050, the canonical program `A078050.P4999203539271542598` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078050 has offset 0).

The definition of A078050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+2x^2))` (program `A078050.P4999203539271542598`, by `A078050.P4999203539271542598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078050.P4999203539271542598

`ogf((1-x)/(1+x+2x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078050

/-- `ogf((1-x)/(1+x+2x^2))` -/
def P4999203539271542598.Spec : Prop :=
  ∀ n, P4999203539271542598.a n = A078050 n

theorem P4999203539271542598.correct : P4999203539271542598.Spec := by
  intro n
  simp only [A078050]

end A078050

/-! ## A078050.P507074255280711547

`A001607(n+1)-A001607(n)`
-/

namespace A078050.P507074255280711547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) - A001607 n

end

end A078050.P507074255280711547

namespace A078050

/-- `A001607(n+1)-A001607(n)` -/
def P507074255280711547.Spec : Prop :=
  ∀ n, P507074255280711547.a n = A078050 n

end A078050

/-! ## A078050.P9722620632824535298

`2*a(n-3)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A078050.P9722620632824535298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  2 * a (n - 3) - a (n - 2)

end

end A078050.P9722620632824535298

namespace A078050

/-- `2*a(n-3)-a(n-2)` -/
def P9722620632824535298.Spec : Prop :=
  ∀ n, P9722620632824535298.a n = A078050 n

end A078050

/-! ## A078050.P9666019588234798912

`a(n-3)+a(n-3)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A078050.P9666019588234798912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 2))

end

end A078050.P9666019588234798912

namespace A078050

/-- `a(n-3)+a(n-3)-a(n-2)` -/
def P9666019588234798912.Spec : Prop :=
  ∀ n, P9666019588234798912.a n = A078050 n

end A078050

/-! ## A078050.P2822725474049530177

`floor(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=-2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A078050.P2822725474049530177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 3))

end

end A078050.P2822725474049530177

namespace A078050

/-- `floor(a(n-3)-(a(n-2)-a(n-3)))` -/
def P2822725474049530177.Spec : Prop :=
  ∀ n, P2822725474049530177.a n = A078050 n

end A078050

/-! ## A078050.P13174740406088049163

`Δ[A001607(n)]`
-/

namespace A078050.P13174740406088049163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078050.P13174740406088049163

namespace A078050

/-- `Δ[A001607(n)]` -/
def P13174740406088049163.Spec : Prop :=
  ∀ n, P13174740406088049163.a n = A078050 n

end A078050

/-! ## A078050.P11252476807865805543

`1-∑[A279675(n+2)]`
-/

namespace A078050.P11252476807865805543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078050.P11252476807865805543

namespace A078050

/-- `1-∑[A279675(n+2)]` -/
def P11252476807865805543.Spec : Prop :=
  ∀ n, P11252476807865805543.a n = A078050 n

end A078050

/-! ## A078050.P3132740652327404638

`2*(A110512(n)-a(n-1))` with `a(0)=1`
-/

namespace A078050.P3132740652327404638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A110512 n - a (n - 1))

end

end A078050.P3132740652327404638

namespace A078050

/-- `2*(A110512(n)-a(n-1))` -/
def P3132740652327404638.Spec : Prop :=
  ∀ n, P3132740652327404638.a n = A078050 n

end A078050

/-! ## A078050.P8806497691037051933

`Δ[A169998(n)-A110512(n)]`
-/

namespace A078050.P8806497691037051933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169998 n - A110512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078050.P8806497691037051933

namespace A078050

/-- `Δ[A169998(n)-A110512(n)]` -/
def P8806497691037051933.Spec : Prop :=
  ∀ n, P8806497691037051933.a n = A078050 n

end A078050

/-! ## A078050.P8653332216393831725

`A169998(n+1)+A001607(n)`
-/

namespace A078050.P8653332216393831725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169998 (n + 1) + A001607 n

end

end A078050.P8653332216393831725

namespace A078050

/-- `A169998(n+1)+A001607(n)` -/
def P8653332216393831725.Spec : Prop :=
  ∀ n, P8653332216393831725.a n = A078050 n

end A078050

/-! ## A078050.P9479170296942712951

`A110512(n+1)+A110512(n)`
-/

namespace A078050.P9479170296942712951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 (n + 1) + A110512 n

end

end A078050.P9479170296942712951

namespace A078050

/-- `A110512(n+1)+A110512(n)` -/
def P9479170296942712951.Spec : Prop :=
  ∀ n, P9479170296942712951.a n = A078050 n

end A078050

/-! ## A078050.P6625808894622544246

`A110512(n)-2*A001607(n)`
-/

namespace A078050.P6625808894622544246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n - 2 * A001607 n

end

end A078050.P6625808894622544246

namespace A078050

/-- `A110512(n)-2*A001607(n)` -/
def P6625808894622544246.Spec : Prop :=
  ∀ n, P6625808894622544246.a n = A078050 n

end A078050

/-! ## A078050.P9493205399874351119

`A000079(n)-(A122946(n+1)+A122946(n+1))`
-/

namespace A078050.P9493205399874351119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A122946 (n + 1) + A122946 (n + 1))

end

end A078050.P9493205399874351119

namespace A078050

/-- `A000079(n)-(A122946(n+1)+A122946(n+1))` -/
def P9493205399874351119.Spec : Prop :=
  ∀ n, P9493205399874351119.a n = A078050 n

end A078050

/-! ## A078050.P4881182000921202070

`Δ[A097334(n)-2^n]`
-/

namespace A078050.P4881182000921202070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097334 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078050.P4881182000921202070

namespace A078050

/-- `Δ[A097334(n)-2^n]` -/
def P4881182000921202070.Spec : Prop :=
  ∀ n, P4881182000921202070.a n = A078050 n

end A078050

/-!
# A078051: Expansion of (1-x)/(1+x+2*x^2+x^3).

The programs for A078051, the canonical program `A078051.P8474266974621660890` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078051 has offset 0).

The definition of A078051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+2x^2+x^3))` (program `A078051.P8474266974621660890`, by `A078051.P8474266974621660890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078051.P8474266974621660890

`ogf((1-x)/(1+x+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078051

/-- `ogf((1-x)/(1+x+2x^2+x^3))` -/
def P8474266974621660890.Spec : Prop :=
  ∀ n, P8474266974621660890.a n = A078051 n

theorem P8474266974621660890.correct : P8474266974621660890.Spec := by
  intro n
  simp only [A078051]

end A078051

/-! ## A078051.P658314713730739772

`a(n-3)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=3`
-/

namespace A078051.P658314713730739772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 3] fun n a =>
  a (n - 3) + (a (n - 4) - a (n - 2))

end

end A078051.P658314713730739772

namespace A078051

/-- `a(n-3)+a(n-4)-a(n-2)` -/
def P658314713730739772.Spec : Prop :=
  ∀ n, P658314713730739772.a n = A078051 n

end A078051

/-! ## A078051.P6991263541989385205

`floor(a(n-3)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A078051.P6991263541989385205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 3] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 4))

end

end A078051.P6991263541989385205

namespace A078051

/-- `floor(a(n-3)-(a(n-2)-a(n-4)))` -/
def P6991263541989385205.Spec : Prop :=
  ∀ n, P6991263541989385205.a n = A078051 n

end A078051

/-! ## A078051.P14820916813414887094

`A033999(n)*A166117(n+1)`
-/

namespace A078051.P14820916813414887094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A166117 (n + 1)

end

end A078051.P14820916813414887094

namespace A078051

/-- `A033999(n)*A166117(n+1)` -/
def P14820916813414887094.Spec : Prop :=
  ∀ n, P14820916813414887094.a n = A078051 n

end A078051

/-! ## A078051.P4503199560875451995

`A166117(n+1)/A033999(n+2)`
-/

namespace A078051.P4503199560875451995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166117 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A078051.P4503199560875451995

namespace A078051

/-- `A166117(n+1)/A033999(n+2)` -/
def P4503199560875451995.Spec : Prop :=
  ∀ n, P4503199560875451995.a n = (A078051 n : ℚ)

end A078051

/-! ## A078051.P7682418054794281087

`Δ[A050935(2*n+1)*A062157(n)]`
-/

namespace A078051.P7682418054794281087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078051.P7682418054794281087

namespace A078051

/-- `Δ[A050935(2*n+1)*A062157(n)]` -/
def P7682418054794281087.Spec : Prop :=
  ∀ n, P7682418054794281087.a n = A078051 n

end A078051

/-! ## A078051.P15197956330693357321

`A010892(A008486(n))*A166117(n+1)`
-/

namespace A078051.P15197956330693357321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n).toNat * A166117 (n + 1)

end

end A078051.P15197956330693357321

namespace A078051

/-- `A010892(A008486(n))*A166117(n+1)` -/
def P15197956330693357321.Spec : Prop :=
  ∀ n, P15197956330693357321.a n = A078051 n

end A078051

/-! ## A078051.P6058838118144320960

`Δ[A033999(n)*A078013(2*n+1)]`
-/

namespace A078051.P6058838118144320960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078013 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078051.P6058838118144320960

namespace A078051

/-- `Δ[A033999(n)*A078013(2*n+1)]` -/
def P6058838118144320960.Spec : Prop :=
  ∀ n, P6058838118144320960.a n = A078051 n

end A078051

/-! ## A078051.P18358367132027732489

`Δ[A062157(n+1)*A078013(2*n+1)]`
-/

namespace A078051.P18358367132027732489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A078013 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078051.P18358367132027732489

namespace A078051

/-- `Δ[A062157(n+1)*A078013(2*n+1)]` -/
def P18358367132027732489.Spec : Prop :=
  ∀ n, P18358367132027732489.a n = A078051 n

end A078051

/-! ## A078051.P3195514198417849003

`Δ[A078013(A005408(n))/A033999(n)]`
-/

namespace A078051.P3195514198417849003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078013 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078051.P3195514198417849003

namespace A078051

/-- `Δ[A078013(A005408(n))/A033999(n)]` -/
def P3195514198417849003.Spec : Prop :=
  ∀ n, P3195514198417849003.a n = (A078051 n : ℚ)

end A078051

/-!
# A078052: Expansion of (1-x)/(1+x+2*x^2+2*x^3).

The programs for A078052, the canonical program `A078052.P14146460986155352914` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078052 has offset 0).

The definition of A078052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x+2x^2+2x^3))` (program `A078052.P14146460986155352914`, by `A078052.P14146460986155352914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078052.P14146460986155352914

`ogf((1-x)/(1+x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078052

/-- `ogf((1-x)/(1+x+2x^2+2x^3))` -/
def P14146460986155352914.Spec : Prop :=
  ∀ n, P14146460986155352914.a n = A078052 n

theorem P14146460986155352914.correct : P14146460986155352914.Spec := by
  intro n
  simp only [A078052]

end A078052

/-! ## A078052.P11695010505693557800

`2*((-1)^n-a(n-2))` with `a(0)=1, a(1)=-2`
-/

namespace A078052.P11695010505693557800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  2 * ((-1) ^ n - a (n - 2))

end

end A078052.P11695010505693557800

namespace A078052

/-- `2*((-1)^n-a(n-2))` -/
def P11695010505693557800.Spec : Prop :=
  ∀ n, P11695010505693557800.a n = A078052 n

end A078052

/-! ## A078052.P11326041311084257504

`Δ[2*(a(n%2)-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A078052.P11326041311084257504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * (f1 (n % 2) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078052.P11326041311084257504

namespace A078052

/-- `Δ[2*(a(n%2)-a(n-2))]` -/
def P11326041311084257504.Spec : Prop :=
  ∀ n, P11326041311084257504.a n = A078052 n

end A078052

/-! ## A078052.P5249847759077554520

`2*a(n-4)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=2`
-/

namespace A078052.P5249847759077554520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 2] fun n a =>
  2 * a (n - 4) - a (n - 2)

end

end A078052.P5249847759077554520

namespace A078052

/-- `2*a(n-4)-a(n-2)` -/
def P5249847759077554520.Spec : Prop :=
  ∀ n, P5249847759077554520.a n = A078052 n

end A078052

/-! ## A078052.P9077890150065194501

`∏[1-(char[1]+a(n-1))]-a(n-1)` with `a(0)=1`
-/

namespace A078052.P9077890150065194501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A078052.P9077890150065194501

namespace A078052

/-- `∏[1-(char[1]+a(n-1))]-a(n-1)` -/
def P9077890150065194501.Spec : Prop :=
  ∀ n, P9077890150065194501.a n = A078052 n

end A078052

/-! ## A078052.P14610505868617429827

`∏[1-(a(n-1)+C(n, n²))]-a(n-1)` with `a(0)=1`
-/

namespace A078052.P14610505868617429827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (f1 (n - 1) + (Nat.choose n (n ^ 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A078052.P14610505868617429827

namespace A078052

/-- `∏[1-(a(n-1)+C(n, n²))]-a(n-1)` -/
def P14610505868617429827.Spec : Prop :=
  ∀ n, P14610505868617429827.a n = A078052 n

end A078052

/-! ## A078052.P1451362765156743575

`a(n-4)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=2`
-/

namespace A078052.P1451362765156743575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 2] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 2))

end

end A078052.P1451362765156743575

namespace A078052

/-- `a(n-4)+a(n-4)-a(n-2)` -/
def P1451362765156743575.Spec : Prop :=
  ∀ n, P1451362765156743575.a n = A078052 n

end A078052

/-! ## A078052.P17466582725791703086

`floor(a(n-4)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A078052.P17466582725791703086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 2] fun n a =>
  a (n - 4) - (a (n - 2) - a (n - 4))

end

end A078052.P17466582725791703086

namespace A078052

/-- `floor(a(n-4)-(a(n-2)-a(n-4)))` -/
def P17466582725791703086.Spec : Prop :=
  ∀ n, P17466582725791703086.a n = A078052 n

end A078052

/-! ## A078052.P8090209425155234723

`A117575(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A078052.P8090209425155234723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117575 (n + 1) - a (n - 1)

end

end A078052.P8090209425155234723

namespace A078052

/-- `A117575(n+1)-a(n-1)` -/
def P8090209425155234723.Spec : Prop :=
  ∀ n, P8090209425155234723.a n = A078052 n

end A078052

/-! ## A078052.P6781645530188596420

`Δ[A077966(n)-A077980(n)]`
-/

namespace A078052.P6781645530188596420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n - A077980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078052.P6781645530188596420

namespace A078052

/-- `Δ[A077966(n)-A077980(n)]` -/
def P6781645530188596420.Spec : Prop :=
  ∀ n, P6781645530188596420.a n = A078052 n

end A078052

/-! ## A078052.P2306910037769655254

`∑[A122803(A004526(n))]*A033999(n)`
-/

namespace A078052.P2306910037769655254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A078052.P2306910037769655254

namespace A078052

/-- `∑[A122803(A004526(n))]*A033999(n)` -/
def P2306910037769655254.Spec : Prop :=
  ∀ n, P2306910037769655254.a n = A078052 n

end A078052

/-! ## A078052.P17154369877408465921

`Δ[A138495(n)/A077953(n)]`
-/

namespace A078052.P17154369877408465921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138495 n : ℚ) / (A077953 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078052.P17154369877408465921

namespace A078052

/-- `Δ[A138495(n)/A077953(n)]` -/
def P17154369877408465921.Spec : Prop :=
  ∀ n, P17154369877408465921.a n = (A078052 n : ℚ)

end A078052

/-! ## A078052.P14205240359166359688

`A078008(n)-A016116(n+1)*A133684(n)`
-/

namespace A078052.P14205240359166359688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n - A016116 (n + 1) * A133684 n

end

end A078052.P14205240359166359688

namespace A078052

/-- `A078008(n)-A016116(n+1)*A133684(n)` -/
def P14205240359166359688.Spec : Prop :=
  ∀ n, P14205240359166359688.a n = A078052 n

end A078052

/-! ## A078052.P13104880606915997369

`A117576(n+1)+A117576(2*n)/A001045(n+1)`
-/

namespace A078052.P13104880606915997369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117576 (n + 1) : ℚ) + (A117576 (2 * n) : ℚ) / (A001045 (n + 1) : ℚ)

end

end A078052.P13104880606915997369

namespace A078052

/-- `A117576(n+1)+A117576(2*n)/A001045(n+1)` -/
def P13104880606915997369.Spec : Prop :=
  ∀ n, P13104880606915997369.a n = (A078052 n : ℚ)

end A078052

/-! ## A078052.P14300038935558108041

`∏[A247288(∑[n+1])-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A078052.P14300038935558108041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A247288 (∑ j ∈ Finset.range (n + 1), f2 j) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A078052.P14300038935558108041

namespace A078052

/-- `∏[A247288(∑[n+1])-a(n-1)]-a(n-1)` -/
def P14300038935558108041.Spec : Prop :=
  ∀ n, P14300038935558108041.a n = A078052 n

end A078052

/-!
# A078053: Expansion of (1-x)/(1+2*x-2*x^2-2*x^3).

The programs for A078053, the canonical program `A078053.P17370911283296594854` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078053 has offset 0).

The definition of A078053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x-2x^2-2x^3))` (program `A078053.P17370911283296594854`, by `A078053.P17370911283296594854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078053.P17370911283296594854

`ogf((1-x)/(1+2x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078053

/-- `ogf((1-x)/(1+2x-2x^2-2x^3))` -/
def P17370911283296594854.Spec : Prop :=
  ∀ n, P17370911283296594854.a n = A078053 n

theorem P17370911283296594854.correct : P17370911283296594854.Spec := by
  intro n
  simp only [A078053]

end A078053

/-! ## A078053.P8991688834272824755

`(-1)^n*∑[A118649(n)]`
-/

namespace A078053.P8991688834272824755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078053.P8991688834272824755

namespace A078053

/-- `(-1)^n*∑[A118649(n)]` -/
def P8991688834272824755.Spec : Prop :=
  ∀ n, P8991688834272824755.a n = A078053 n

end A078053

/-! ## A078053.P12675929782027029115

`∑[A118649(n)]*A033999(n)`
-/

namespace A078053.P12675929782027029115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A078053.P12675929782027029115

namespace A078053

/-- `∑[A118649(n)]*A033999(n)` -/
def P12675929782027029115.Spec : Prop :=
  ∀ n, P12675929782027029115.a n = A078053 n

end A078053

/-! ## A078053.P3064957412074302620

`∑[∑[A181306(n)]]*A033999(n)`
-/

namespace A078053.P3064957412074302620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A078053.P3064957412074302620

namespace A078053

/-- `∑[∑[A181306(n)]]*A033999(n)` -/
def P3064957412074302620.Spec : Prop :=
  ∀ n, P3064957412074302620.a n = A078053 n

end A078053

/-! ## A078053.P3278167470879085556

`∑[∑[A181306(n)]]*A010892(3*n)`
-/

namespace A078053.P3278167470879085556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (3 * n)

end

end A078053.P3278167470879085556

namespace A078053

/-- `∑[∑[A181306(n)]]*A010892(3*n)` -/
def P3278167470879085556.Spec : Prop :=
  ∀ n, P3278167470879085556.a n = A078053 n

end A078053

/-! ## A078053.P7126670243276950002

`∑[∑[A181306(n)]]*A094267(n²)`
-/

namespace A078053.P7126670243276950002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A094267 (n ^ 2)

end

end A078053.P7126670243276950002

namespace A078053

/-- `∑[∑[A181306(n)]]*A094267(n²)` -/
def P7126670243276950002.Spec : Prop :=
  ∀ n, P7126670243276950002.a n = A078053 n

end A078053

/-! ## A078053.P694965753472839533

`∑[∑[A181306(n)]]*A219977(n²)`
-/

namespace A078053.P694965753472839533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A219977 (n ^ 2)

end

end A078053.P694965753472839533

namespace A078053

/-- `∑[∑[A181306(n)]]*A219977(n²)` -/
def P694965753472839533.Spec : Prop :=
  ∀ n, P694965753472839533.a n = A078053 n

end A078053

/-!
# A078054: Expansion of (1-x)/(1+2*x-2*x^2+x^3).

The programs for A078054, the canonical program `A078054.P9059365568172980986` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078054 has offset 0).

The definition of A078054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x-2x^2+x^3))` (program `A078054.P9059365568172980986`, by `A078054.P9059365568172980986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078054.P9059365568172980986

`ogf((1-x)/(1+2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078054

/-- `ogf((1-x)/(1+2x-2x^2+x^3))` -/
def P9059365568172980986.Spec : Prop :=
  ∀ n, P9059365568172980986.a n = A078054 n

theorem P9059365568172980986.correct : P9059365568172980986.Spec := by
  intro n
  simp only [A078054]

end A078054

/-! ## A078054.P7441599905738540623

`∑[(-1)^n*A077995(n+1)]`
-/

namespace A078054.P7441599905738540623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078054.P7441599905738540623

namespace A078054

/-- `∑[(-1)^n*A077995(n+1)]` -/
def P7441599905738540623.Spec : Prop :=
  ∀ n, P7441599905738540623.a n = A078054 n

end A078054

/-! ## A078054.P5512533975731499831

`∑[Δ[A077936(n)]*A033999(n)]`
-/

namespace A078054.P5512533975731499831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078054.P5512533975731499831

namespace A078054

/-- `∑[Δ[A077936(n)]*A033999(n)]` -/
def P5512533975731499831.Spec : Prop :=
  ∀ n, P5512533975731499831.a n = A078054 n

end A078054

/-! ## A078054.P17200847392507079469

`∑[A077995(n+1)/A009001(2*n)]`
-/

namespace A078054.P17200847392507079469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077995 (n + 1) : ℚ) / (A009001 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078054.P17200847392507079469

namespace A078054

/-- `∑[A077995(n+1)/A009001(2*n)]` -/
def P17200847392507079469.Spec : Prop :=
  ∀ n, P17200847392507079469.a n = (A078054 n : ℚ)

end A078054

/-! ## A078054.P11554137767445614952

`Δ[Δ[A077918(n)%A077995(n)]]`
-/

namespace A078054.P11554137767445614952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077918 n) (A077995 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078054.P11554137767445614952

namespace A078054

/-- `Δ[Δ[A077918(n)%A077995(n)]]` -/
def P11554137767445614952.Spec : Prop :=
  ∀ n, P11554137767445614952.a n = A078054 n

end A078054

/-!
# A078055: Expansion of (1-x)/(1+2*x-2*x^2+2*x^3).

The programs for A078055, the canonical program `A078055.P13343135890071451843` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078055 has offset 0).

The definition of A078055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x-2x^2+2x^3))` (program `A078055.P13343135890071451843`, by `A078055.P13343135890071451843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078055.P13343135890071451843

`ogf((1-x)/(1+2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078055

/-- `ogf((1-x)/(1+2x-2x^2+2x^3))` -/
def P13343135890071451843.Spec : Prop :=
  ∀ n, P13343135890071451843.a n = A078055 n

theorem P13343135890071451843.correct : P13343135890071451843.Spec := by
  intro n
  simp only [A078055]

end A078055

/-! ## A078055.P9241416192042776401

`A077984(n+1)+A077984(n+2)/2`
-/

namespace A078055.P9241416192042776401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077984 (n + 1) : ℚ) + (A077984 (n + 2) : ℚ) / 2

end

end A078055.P9241416192042776401

namespace A078055

/-- `A077984(n+1)+A077984(n+2)/2` -/
def P9241416192042776401.Spec : Prop :=
  ∀ n, P9241416192042776401.a n = (A078055 n : ℚ)

end A078055

/-!
# A078056: Expansion of (1-x)/(1+2*x-x^2-x^3).

The programs for A078056, the canonical program `A078056.P2570058309874304339` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078056 has offset 0).

The definition of A078056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x-x^2-x^3))` (program `A078056.P2570058309874304339`, by `A078056.P2570058309874304339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078056.P2570058309874304339

`ogf((1-x)/(1+2x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078056

/-- `ogf((1-x)/(1+2x-x^2-x^3))` -/
def P2570058309874304339.Spec : Prop :=
  ∀ n, P2570058309874304339.a n = A078056 n

theorem P2570058309874304339.correct : P2570058309874304339.Spec := by
  intro n
  simp only [A078056]

end A078056

/-! ## A078056.P8030881989833653482

`(-1)^n*∑[A052534(n)]`
-/

namespace A078056.P8030881989833653482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078056.P8030881989833653482

namespace A078056

/-- `(-1)^n*∑[A052534(n)]` -/
def P8030881989833653482.Spec : Prop :=
  ∀ n, P8030881989833653482.a n = A078056 n

end A078056

/-! ## A078056.P16725210268658804974

`A033303(n)*A033999(n)`
-/

namespace A078056.P16725210268658804974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033303 n * A033999 n

end

end A078056.P16725210268658804974

namespace A078056

/-- `A033303(n)*A033999(n)` -/
def P16725210268658804974.Spec : Prop :=
  ∀ n, P16725210268658804974.a n = A078056 n

end A078056

/-! ## A078056.P1262230516365441392

`∑[A052534(n)]*A033999(n)`
-/

namespace A078056.P1262230516365441392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A078056.P1262230516365441392

namespace A078056

/-- `∑[A052534(n)]*A033999(n)` -/
def P1262230516365441392.Spec : Prop :=
  ∀ n, P1262230516365441392.a n = A078056 n

end A078056

/-! ## A078056.P5878715017112884681

`(A004442(n)-n)*A033303(n)`
-/

namespace A078056.P5878715017112884681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A033303 n

end

end A078056.P5878715017112884681

namespace A078056

/-- `(A004442(n)-n)*A033303(n)` -/
def P5878715017112884681.Spec : Prop :=
  ∀ n, P5878715017112884681.a n = A078056 n

end A078056

/-! ## A078056.P15123917518060876950

`floor((a(n-1)²-2)/a(n-2))` with `a(0)=1, a(1)=-3`
-/

namespace A078056.P15123917518060876950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A078056.P15123917518060876950

namespace A078056

/-- `floor((a(n-1)²-2)/a(n-2))` -/
def P15123917518060876950.Spec : Prop :=
  ∀ n, P15123917518060876950.a n = A078056 n

end A078056

/-! ## A078056.P5946513899116914219

`∑[A052534(n)]/A033999(n²)`
-/

namespace A078056.P5946513899116914219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A078056.P5946513899116914219

namespace A078056

/-- `∑[A052534(n)]/A033999(n²)` -/
def P5946513899116914219.Spec : Prop :=
  ∀ n, P5946513899116914219.a n = (A078056 n : ℚ)

end A078056

/-!
# A078057: Expansion of (1+x)/(1-2*x-x^2).

The programs for A078057, the canonical program `A078057.P11711622473166393026` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078057 has offset 0).

The definition of A078057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-x^2))` (program `A078057.P11711622473166393026`, by `A078057.P11711622473166393026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078057.P11711622473166393026

`ogf((1+x)/(1-2x-x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078057

/-- `ogf((1+x)/(1-2x-x^2))` -/
def P11711622473166393026.Spec : Prop :=
  ∀ n, P11711622473166393026.a n = A078057 n

theorem P11711622473166393026.correct : P11711622473166393026.Spec := by
  intro n
  simp only [A078057]

end A078057

/-! ## A078057.P2155495263763058776

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A078057.P2155495263763058776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A078057.P2155495263763058776

namespace A078057

/-- `2*a(n-1)+a(n-2)` -/
def P2155495263763058776.Spec : Prop :=
  ∀ n, (P2155495263763058776.a n : ℤ) = A078057 n

end A078057

/-! ## A078057.P17053287058755232780

`A000129(n)+A000129(n+1)`
-/

namespace A078057.P17053287058755232780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + A000129 (n + 1)

end

end A078057.P17053287058755232780

namespace A078057

/-- `A000129(n)+A000129(n+1)` -/
def P17053287058755232780.Spec : Prop :=
  ∀ n, P17053287058755232780.a n = A078057 n

end A078057

/-! ## A078057.P6496556875800451152

`a(n-2)+lcm(2, a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A078057.P6496556875800451152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A078057.P6496556875800451152

namespace A078057

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P6496556875800451152.Spec : Prop :=
  ∀ n, (P6496556875800451152.a n : ℤ) = A078057 n

end A078057

/-! ## A078057.P2547809934140306795

`or(1, floor(a(n-1)/(sqrt(2)-1)))` with `a(0)=1`
-/

namespace A078057.P2547809934140306795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ⌊(a (n - 1) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋

end

end A078057.P2547809934140306795

namespace A078057

/-- `or(1, floor(a(n-1)/(sqrt(2)-1)))` -/
def P2547809934140306795.Spec : Prop :=
  ∀ n, P2547809934140306795.a n = A078057 n

end A078057

/-! ## A078057.P8703653677063872896

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A078057.P8703653677063872896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A078057.P8703653677063872896

namespace A078057

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P8703653677063872896.Spec : Prop :=
  ∀ n, (P8703653677063872896.a n : ℤ) = A078057 n

end A078057

/-! ## A078057.P10909843370403971140

`2-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A078057.P10909843370403971140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A078057.P10909843370403971140

namespace A078057

/-- `2-(2*(1-a(n-1))-a(n-2))` -/
def P10909843370403971140.Spec : Prop :=
  ∀ n, P10909843370403971140.a n = A078057 n

end A078057

/-! ## A078057.P3997049943179724039

`a(n-2)-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=3`
-/

namespace A078057.P3997049943179724039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A078057.P3997049943179724039

namespace A078057

/-- `a(n-2)-a(n-1)/(1/2-1)` -/
def P3997049943179724039.Spec : Prop :=
  ∀ n, P3997049943179724039.a n = (A078057 n : ℚ)

end A078057

/-! ## A078057.P12083455349813755644

`∑[A052542(n)]`
-/

namespace A078057.P12083455349813755644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078057.P12083455349813755644

namespace A078057

/-- `∑[A052542(n)]` -/
def P12083455349813755644.Spec : Prop :=
  ∀ n, P12083455349813755644.a n = A078057 n

end A078057

/-! ## A078057.P13124809641349840936

`A001333(n+1)`
-/

namespace A078057.P13124809641349840936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

end

end A078057.P13124809641349840936

namespace A078057

/-- `A001333(n+1)` -/
def P13124809641349840936.Spec : Prop :=
  ∀ n, P13124809641349840936.a n = A078057 n

end A078057

/-! ## A078057.P6341943748618675079

`A182780(n)-1`
-/

namespace A078057.P6341943748618675079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n - 1

end

end A078057.P6341943748618675079

namespace A078057

/-- `A182780(n)-1` -/
def P6341943748618675079.Spec : Prop :=
  ∀ n, P6341943748618675079.a n = A078057 n

end A078057

/-! ## A078057.P12300919197737676790

`or(1, A113224(n))`
-/

namespace A078057.P12300919197737676790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113224 n)

end

end A078057.P12300919197737676790

namespace A078057

/-- `or(1, A113224(n))` -/
def P12300919197737676790.Spec : Prop :=
  ∀ n, P12300919197737676790.a n = A078057 n

end A078057

/-! ## A078057.P12866371345563757626

`A152113(Δ[n²])`
-/

namespace A078057.P12866371345563757626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078057.P12866371345563757626

namespace A078057

/-- `A152113(Δ[n²])` -/
def P12866371345563757626.Spec : Prop :=
  ∀ n, P12866371345563757626.a n = A078057 n

end A078057

/-! ## A078057.P1561173552678488209

`A155046(Δ[n²])`
-/

namespace A078057.P1561173552678488209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078057.P1561173552678488209

namespace A078057

/-- `A155046(Δ[n²])` -/
def P1561173552678488209.Spec : Prop :=
  ∀ n, P1561173552678488209.a n = A078057 n

end A078057

/-! ## A078057.P5293063593404544424

`abs(A123335(n+1))`
-/

namespace A078057.P5293063593404544424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 (n + 1)|

end

end A078057.P5293063593404544424

namespace A078057

/-- `abs(A123335(n+1))` -/
def P5293063593404544424.Spec : Prop :=
  ∀ n, P5293063593404544424.a n = A078057 n

end A078057

/-! ## A078057.P3293244085081865804

`record[A155046(n+1)]`
-/

namespace A078057.P3293244085081865804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078057.P3293244085081865804

namespace A078057

/-- `record[A155046(n+1)]` -/
def P3293244085081865804.Spec : Prop :=
  ∀ n, P3293244085081865804.a n = A078057 n

end A078057

/-! ## A078057.P3430002167054944337

`A293004(n+1)+1`
-/

namespace A078057.P3430002167054944337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 1) + 1

end

end A078057.P3430002167054944337

namespace A078057

/-- `A293004(n+1)+1` -/
def P3430002167054944337.Spec : Prop :=
  ∀ n, P3430002167054944337.a n = A078057 n

end A078057

/-! ## A078057.P7540879882695725325

`A082766(2*(n+1))`
-/

namespace A078057.P7540879882695725325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (2 * (n + 1))

end

end A078057.P7540879882695725325

namespace A078057

/-- `A082766(2*(n+1))` -/
def P7540879882695725325.Spec : Prop :=
  ∀ n, P7540879882695725325.a n = A078057 n

end A078057

/-! ## A078057.P4152468112034172018

`A119016(2*(n+1))`
-/

namespace A078057.P4152468112034172018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * (n + 1))

end

end A078057.P4152468112034172018

namespace A078057

/-- `A119016(2*(n+1))` -/
def P4152468112034172018.Spec : Prop :=
  ∀ n, P4152468112034172018.a n = A078057 n

end A078057

/-! ## A078057.P10825171523565675803

`2*A024537(n)-1`
-/

namespace A078057.P10825171523565675803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024537 n - 1

end

end A078057.P10825171523565675803

namespace A078057

/-- `2*A024537(n)-1` -/
def P10825171523565675803.Spec : Prop :=
  ∀ n, P10825171523565675803.a n = A078057 n

end A078057

/-!
# A078058: Expansion of (1-x)/(1+2*x-x^2+x^3).

The programs for A078058, the canonical program `A078058.P9830780573559936021` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078058 has offset 0).

The definition of A078058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x-x^2+x^3))` (program `A078058.P9830780573559936021`, by `A078058.P9830780573559936021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078058.P9830780573559936021

`ogf((1-x)/(1+2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078058

/-- `ogf((1-x)/(1+2x-x^2+x^3))` -/
def P9830780573559936021.Spec : Prop :=
  ∀ n, P9830780573559936021.a n = A078058 n

theorem P9830780573559936021.correct : P9830780573559936021.Spec := by
  intro n
  simp only [A078058]

end A078058

/-! ## A078058.P5154695967304559288

`(-1)^n*A116413(n)`
-/

namespace A078058.P5154695967304559288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116413 n

end

end A078058.P5154695967304559288

namespace A078058

/-- `(-1)^n*A116413(n)` -/
def P5154695967304559288.Spec : Prop :=
  ∀ n, P5154695967304559288.a n = A078058 n

end A078058

/-! ## A078058.P2696650748371497142

`A116413(n)/A033999(n)`
-/

namespace A078058.P2696650748371497142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116413 n : ℚ) / (A033999 n : ℚ)

end

end A078058.P2696650748371497142

namespace A078058

/-- `A116413(n)/A033999(n)` -/
def P2696650748371497142.Spec : Prop :=
  ∀ n, P2696650748371497142.a n = (A078058 n : ℚ)

end A078058

/-! ## A078058.P7082348471864801139

`A116413(n)/A056594(2*n)`
-/

namespace A078058.P7082348471864801139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116413 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A078058.P7082348471864801139

namespace A078058

/-- `A116413(n)/A056594(2*n)` -/
def P7082348471864801139.Spec : Prop :=
  ∀ n, P7082348471864801139.a n = (A078058 n : ℚ)

end A078058

/-! ## A078058.P11732447220155577902

`∑[A033999(n)*A347725(n+1)]`
-/

namespace A078058.P11732447220155577902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A347725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078058.P11732447220155577902

namespace A078058

/-- `∑[A033999(n)*A347725(n+1)]` -/
def P11732447220155577902.Spec : Prop :=
  ∀ n, P11732447220155577902.a n = A078058 n

end A078058

/-! ## A078058.P1056063120235911290

`A077986(n+2)%A077939(n+1)`
-/

namespace A078058.P1056063120235911290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077986 (n + 2)) (A077939 (n + 1))

end

end A078058.P1056063120235911290

namespace A078058

/-- `A077986(n+2)%A077939(n+1)` -/
def P1056063120235911290.Spec : Prop :=
  ∀ n, P1056063120235911290.a n = A078058 n

end A078058

/-! ## A078058.P6793689209936110702

`A116413(n)*A129818(A000217(n))`
-/

namespace A078058.P6793689209936110702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116413 n * A129818 (A000217 n).toNat

end

end A078058.P6793689209936110702

namespace A078058

/-- `A116413(n)*A129818(A000217(n))` -/
def P6793689209936110702.Spec : Prop :=
  ∀ n, P6793689209936110702.a n = A078058 n

end A078058

/-!
# A078059: Expansion of (1-x)/(1+2*x-x^2+2*x^3).

The programs for A078059, the canonical program `A078059.P7977412606652711692` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078059 has offset 0).

The definition of A078059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x-x^2+2x^3))` (program `A078059.P7977412606652711692`, by `A078059.P7977412606652711692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078059.P7977412606652711692

`ogf((1-x)/(1+2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078059

/-- `ogf((1-x)/(1+2x-x^2+2x^3))` -/
def P7977412606652711692.Spec : Prop :=
  ∀ n, P7977412606652711692.a n = A078059 n

theorem P7977412606652711692.correct : P7977412606652711692.Spec := by
  intro n
  simp only [A078059]

end A078059

/-! ## A078059.P5729425912085824788

`A018031(n)*A057078(A074501(n))`
-/

namespace A078059.P5729425912085824788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018031 n * A057078 (A074501 n).toNat

end

end A078059.P5729425912085824788

namespace A078059

/-- `A018031(n)*A057078(A074501(n))` -/
def P5729425912085824788.Spec : Prop :=
  ∀ n, P5729425912085824788.a n = A078059 n

end A078059

/-!
# A078060: Expansion of (1-x)/(1+2*x-2*x^3).

The programs for A078060, the canonical program `A078060.P12046486343764772114` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078060 has offset 0).

The definition of A078060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x-2x^3))` (program `A078060.P12046486343764772114`, by `A078060.P12046486343764772114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078060.P12046486343764772114

`ogf((1-x)/(1+2x-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078060

/-- `ogf((1-x)/(1+2x-2x^3))` -/
def P12046486343764772114.Spec : Prop :=
  ∀ n, P12046486343764772114.a n = A078060 n

theorem P12046486343764772114.correct : P12046486343764772114.Spec := by
  intro n
  simp only [A078060]

end A078060

/-! ## A078060.P7452440639669573224

`2*A077988(n)-A124342(n)`
-/

namespace A078060.P7452440639669573224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077988 n - A124342 n

end

end A078060.P7452440639669573224

namespace A078060

/-- `2*A077988(n)-A124342(n)` -/
def P7452440639669573224.Spec : Prop :=
  ∀ n, P7452440639669573224.a n = A078060 n

end A078060

/-! ## A078060.P2319064391574536287

`Δ[∑[A073358(n)]*A033999(n)]`
-/

namespace A078060.P2319064391574536287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078060.P2319064391574536287

namespace A078060

/-- `Δ[∑[A073358(n)]*A033999(n)]` -/
def P2319064391574536287.Spec : Prop :=
  ∀ n, P2319064391574536287.a n = A078060 n

end A078060

/-! ## A078060.P16431036133087599250

`∑[A077940(n+1)]/(2*A033999(n))`
-/

namespace A078060.P16431036133087599250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077940 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * A033999 n : ℚ)

end

end A078060.P16431036133087599250

namespace A078060

/-- `∑[A077940(n+1)]/(2*A033999(n))` -/
def P16431036133087599250.Spec : Prop :=
  ∀ n, P16431036133087599250.a n = (A078060 n : ℚ)

end A078060

/-! ## A078060.P4159053638411655156

`∑[A077988(n+7)/8]`
-/

namespace A078060.P4159053638411655156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077988 (n + 7) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078060.P4159053638411655156

namespace A078060

/-- `∑[A077988(n+7)/8]` -/
def P4159053638411655156.Spec : Prop :=
  ∀ n, P4159053638411655156.a n = (A078060 n : ℚ)

end A078060

/-!
# A078061: Expansion of (1-x)/(1+2*x+x^3).

The programs for A078061, the canonical program `A078061.P12322542528382678060` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078061 has offset 0).

The definition of A078061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+x^3))` (program `A078061.P12322542528382678060`, by `A078061.P12322542528382678060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078061.P12322542528382678060

`ogf((1-x)/(1+2x+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078061

/-- `ogf((1-x)/(1+2x+x^3))` -/
def P12322542528382678060.Spec : Prop :=
  ∀ n, P12322542528382678060.a n = A078061 n

theorem P12322542528382678060.correct : P12322542528382678060.Spec := by
  intro n
  simp only [A078061]

end A078061

/-! ## A078061.P1305224918831225363

`∑[(-1)^n*A183304(n+1)]`
-/

namespace A078061.P1305224918831225363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A183304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078061.P1305224918831225363

namespace A078061

/-- `∑[(-1)^n*A183304(n+1)]` -/
def P1305224918831225363.Spec : Prop :=
  ∀ n, P1305224918831225363.a n = A078061 n

end A078061

/-! ## A078061.P11890907714709484174

`Δ[Δ[A008998(n)]]*A033999(n)`
-/

namespace A078061.P11890907714709484174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A078061.P11890907714709484174

namespace A078061

/-- `Δ[Δ[A008998(n)]]*A033999(n)` -/
def P11890907714709484174.Spec : Prop :=
  ∀ n, P11890907714709484174.a n = A078061 n

end A078061

/-! ## A078061.P13937334471908892259

`Δ[A052980(n+1)]*A033999(n)`
-/

namespace A078061.P13937334471908892259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A078061.P13937334471908892259

namespace A078061

/-- `Δ[A052980(n+1)]*A033999(n)` -/
def P13937334471908892259.Spec : Prop :=
  ∀ n, P13937334471908892259.a n = A078061 n

end A078061

/-! ## A078061.P7362095648687227297

`A110513(n+1)+A110513(n+2)`
-/

namespace A078061.P7362095648687227297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 (n + 1) + A110513 (n + 2)

end

end A078061.P7362095648687227297

namespace A078061

/-- `A110513(n+1)+A110513(n+2)` -/
def P7362095648687227297.Spec : Prop :=
  ∀ n, P7362095648687227297.a n = A078061 n

end A078061

/-! ## A078061.P3625838677307938419

`Δ[A052980(n+1)]*A056594(2*n)`
-/

namespace A078061.P3625838677307938419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056594 (2 * n)

end

end A078061.P3625838677307938419

namespace A078061

/-- `Δ[A052980(n+1)]*A056594(2*n)` -/
def P3625838677307938419.Spec : Prop :=
  ∀ n, P3625838677307938419.a n = A078061 n

end A078061

/-!
# A078062: Expansion of (1-x)/(1+2*x+2*x^3).

The programs for A078062, the canonical program `A078062.P3535680989258204469` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078062 has offset 0).

The definition of A078062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+2x^3))` (program `A078062.P3535680989258204469`, by `A078062.P3535680989258204469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078062.P3535680989258204469

`ogf((1-x)/(1+2x+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078062

/-- `ogf((1-x)/(1+2x+2x^3))` -/
def P3535680989258204469.Spec : Prop :=
  ∀ n, P3535680989258204469.a n = A078062 n

theorem P3535680989258204469.correct : P3535680989258204469.Spec := by
  intro n
  simp only [A078062]

end A078062

/-! ## A078062.P1063903905393976772

`Δ[Δ[A077927(n)-A110524(n)]]`
-/

namespace A078062.P1063903905393976772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077927 n - A110524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078062.P1063903905393976772

namespace A078062

/-- `Δ[Δ[A077927(n)-A110524(n)]]` -/
def P1063903905393976772.Spec : Prop :=
  ∀ n, P1063903905393976772.a n = A078062 n

end A078062

/-! ## A078062.P18208205904035825446

`Δ[Δ[A077927(n)%A077999(n)]]`
-/

namespace A078062.P18208205904035825446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077927 n) (A077999 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078062.P18208205904035825446

namespace A078062

/-- `Δ[Δ[A077927(n)%A077999(n)]]` -/
def P18208205904035825446.Spec : Prop :=
  ∀ n, P18208205904035825446.a n = A078062 n

end A078062

/-!
# A078063: Expansion of (1-x)/(1+2*x+x^2-2*x^3).

The programs for A078063, the canonical program `A078063.P18436516687889374187` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078063 has offset 0).

The definition of A078063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+x^2-2x^3))` (program `A078063.P18436516687889374187`, by `A078063.P18436516687889374187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078063.P18436516687889374187

`ogf((1-x)/(1+2x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078063

/-- `ogf((1-x)/(1+2x+x^2-2x^3))` -/
def P18436516687889374187.Spec : Prop :=
  ∀ n, P18436516687889374187.a n = A078063 n

theorem P18436516687889374187.correct : P18436516687889374187.Spec := by
  intro n
  simp only [A078063]

end A078063

/-! ## A078063.P16318902343156766738

`2*(a(n-3)-a(n-1))-a(n-2)` with `a(0)=1, a(1)=-3, a(2)=5`
-/

namespace A078063.P16318902343156766738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 5] fun n a =>
  2 * (a (n - 3) - a (n - 1)) - a (n - 2)

end

end A078063.P16318902343156766738

namespace A078063

/-- `2*(a(n-3)-a(n-1))-a(n-2)` -/
def P16318902343156766738.Spec : Prop :=
  ∀ n, P16318902343156766738.a n = A078063 n

end A078063

/-! ## A078063.P7728412470252762393

`(A077928(n)-A077928(n+4))/4`
-/

namespace A078063.P7728412470252762393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077928 n - A077928 (n + 4) : ℚ) / 4

end

end A078063.P7728412470252762393

namespace A078063

/-- `(A077928(n)-A077928(n+4))/4` -/
def P7728412470252762393.Spec : Prop :=
  ∀ n, P7728412470252762393.a n = (A078063 n : ℚ)

end A078063

/-!
# A078064: Expansion of (1-x)/(1+2*x+x^2-x^3).

The programs for A078064, the canonical program `A078064.P12323289978050697444` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078064 has offset 0).

The definition of A078064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+x^2-x^3))` (program `A078064.P12323289978050697444`, by `A078064.P12323289978050697444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078064.P12323289978050697444

`ogf((1-x)/(1+2x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078064

/-- `ogf((1-x)/(1+2x+x^2-x^3))` -/
def P12323289978050697444.Spec : Prop :=
  ∀ n, P12323289978050697444.a n = A078064 n

theorem P12323289978050697444.correct : P12323289978050697444.Spec := by
  intro n
  simp only [A078064]

end A078064

/-! ## A078064.P8921023174228254607

`Δ[A077961(Δ[n²])]`
-/

namespace A078064.P8921023174228254607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078064.P8921023174228254607

namespace A078064

/-- `Δ[A077961(Δ[n²])]` -/
def P8921023174228254607.Spec : Prop :=
  ∀ n, P8921023174228254607.a n = A078064 n

end A078064

/-! ## A078064.P12812950522228044724

`A078032(2*n+5)`
-/

namespace A078064.P12812950522228044724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 (2 * n + 5)

end

end A078064.P12812950522228044724

namespace A078064

/-- `A078032(2*n+5)` -/
def P12812950522228044724.Spec : Prop :=
  ∀ n, P12812950522228044724.a n = A078064 n

end A078064

/-! ## A078064.P7751924615903858310

`Δ[-A077962(2*n+1)]`
-/

namespace A078064.P7751924615903858310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077962 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078064.P7751924615903858310

namespace A078064

/-- `Δ[-A077962(2*n+1)]` -/
def P7751924615903858310.Spec : Prop :=
  ∀ n, P7751924615903858310.a n = A078064 n

end A078064

/-! ## A078064.P3429598058925807156

`Δ[A000035(2*n)-A077962(2*n+1)]`
-/

namespace A078064.P3429598058925807156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A077962 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078064.P3429598058925807156

namespace A078064

/-- `Δ[A000035(2*n)-A077962(2*n+1)]` -/
def P3429598058925807156.Spec : Prop :=
  ∀ n, P3429598058925807156.a n = A078064 n

end A078064

/-! ## A078064.P5058597872240147090

`Δ[A077888(2*n+1)-A077888(2*n)]`
-/

namespace A078064.P5058597872240147090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077888 (2 * n + 1) - A077888 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078064.P5058597872240147090

namespace A078064

/-- `Δ[A077888(2*n+1)-A077888(2*n)]` -/
def P5058597872240147090.Spec : Prop :=
  ∀ n, P5058597872240147090.a n = A078064 n

end A078064

/-! ## A078064.P1555895554682707152

`Δ[A077889(2*n)-A077889(2*n+1)]`
-/

namespace A078064.P1555895554682707152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077889 (2 * n) - A077889 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078064.P1555895554682707152

namespace A078064

/-- `Δ[A077889(2*n)-A077889(2*n+1)]` -/
def P1555895554682707152.Spec : Prop :=
  ∀ n, P1555895554682707152.a n = A078064 n

end A078064

/-! ## A078064.P978292776901013271

`A077962(2*n+1)-A078031(2*n+1)`
-/

namespace A078064.P978292776901013271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (2 * n + 1) - A078031 (2 * n + 1)

end

end A078064.P978292776901013271

namespace A078064

/-- `A077962(2*n+1)-A078031(2*n+1)` -/
def P978292776901013271.Spec : Prop :=
  ∀ n, P978292776901013271.a n = A078064 n

end A078064

/-! ## A078064.P12146986364877981514

`A077962(2*n+1)+A077961(2*n+3)`
-/

namespace A078064.P12146986364877981514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (2 * n + 1) + A077961 (2 * n + 3)

end

end A078064.P12146986364877981514

namespace A078064

/-- `A077962(2*n+1)+A077961(2*n+3)` -/
def P12146986364877981514.Spec : Prop :=
  ∀ n, P12146986364877981514.a n = A078064 n

end A078064

/-! ## A078064.P9688467843926034572

`A078031(2*(n+1))+A078031(2*n+3)`
-/

namespace A078064.P9688467843926034572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078031 (2 * (n + 1)) + A078031 (2 * n + 3)

end

end A078064.P9688467843926034572

namespace A078064

/-- `A078031(2*(n+1))+A078031(2*n+3)` -/
def P9688467843926034572.Spec : Prop :=
  ∀ n, P9688467843926034572.a n = A078064 n

end A078064

/-! ## A078064.P1511023198520702050

`A077962(2*n+1)-A077962(2*n+3)`
-/

namespace A078064.P1511023198520702050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (2 * n + 1) - A077962 (2 * n + 3)

end

end A078064.P1511023198520702050

namespace A078064

/-- `A077962(2*n+1)-A077962(2*n+3)` -/
def P1511023198520702050.Spec : Prop :=
  ∀ n, P1511023198520702050.a n = A078064 n

end A078064

/-! ## A078064.P12251389544306120000

`A077961(2*n+3)-A077961(2*n+1)`
-/

namespace A078064.P12251389544306120000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n + 3) - A077961 (2 * n + 1)

end

end A078064.P12251389544306120000

namespace A078064

/-- `A077961(2*n+3)-A077961(2*n+1)` -/
def P12251389544306120000.Spec : Prop :=
  ∀ n, P12251389544306120000.a n = A078064 n

end A078064

/-! ## A078064.P10741743661336730403

`A077962(2*n)+2*A077962(2*n+1)`
-/

namespace A078064.P10741743661336730403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (2 * n) + 2 * A077962 (2 * n + 1)

end

end A078064.P10741743661336730403

namespace A078064

/-- `A077962(2*n)+2*A077962(2*n+1)` -/
def P10741743661336730403.Spec : Prop :=
  ∀ n, P10741743661336730403.a n = A078064 n

end A078064

/-!
# A078065: Expansion of (1-x)/(1+2*x+x^2+x^3).

The programs for A078065, the canonical program `A078065.P5713760160981326959` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078065 has offset 0).

The definition of A078065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+x^2+x^3))` (program `A078065.P5713760160981326959`, by `A078065.P5713760160981326959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078065.P5713760160981326959

`ogf((1-x)/(1+2x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078065

/-- `ogf((1-x)/(1+2x+x^2+x^3))` -/
def P5713760160981326959.Spec : Prop :=
  ∀ n, P5713760160981326959.a n = A078065 n

theorem P5713760160981326959.correct : P5713760160981326959.Spec := by
  intro n
  simp only [A078065]

end A078065

/-! ## A078065.P3297968152511023194

`A033999(n)*A084338(Δ[n²])`
-/

namespace A078065.P3297968152511023194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A084338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078065.P3297968152511023194

namespace A078065

/-- `A033999(n)*A084338(Δ[n²])` -/
def P3297968152511023194.Spec : Prop :=
  ∀ n, P3297968152511023194.a n = A078065 n

end A078065

/-! ## A078065.P4687308080191368630

`(A004442(n)-n)*∑[A049853(n)]`
-/

namespace A078065.P4687308080191368630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078065.P4687308080191368630

namespace A078065

/-- `(A004442(n)-n)*∑[A049853(n)]` -/
def P4687308080191368630.Spec : Prop :=
  ∀ n, P4687308080191368630.a n = A078065 n

end A078065

/-! ## A078065.P12951979676264051553

`Δ[(A014681(n)-n)*A005314(n)]`
-/

namespace A078065.P12951979676264051553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A005314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078065.P12951979676264051553

namespace A078065

/-- `Δ[(A014681(n)-n)*A005314(n)]` -/
def P12951979676264051553.Spec : Prop :=
  ∀ n, P12951979676264051553.a n = A078065 n

end A078065

/-! ## A078065.P16651718285346453696

`A084338(2*n+1)/A033999(n)`
-/

namespace A078065.P16651718285346453696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084338 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A078065.P16651718285346453696

namespace A078065

/-- `A084338(2*n+1)/A033999(n)` -/
def P16651718285346453696.Spec : Prop :=
  ∀ n, P16651718285346453696.a n = (A078065 n : ℚ)

end A078065

/-! ## A078065.P689424247871070691

`A056594(2*n)*A084338(2*n+1)`
-/

namespace A078065.P689424247871070691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A084338 (2 * n + 1)

end

end A078065.P689424247871070691

namespace A078065

/-- `A056594(2*n)*A084338(2*n+1)` -/
def P689424247871070691.Spec : Prop :=
  ∀ n, P689424247871070691.a n = A078065 n

end A078065

/-! ## A078065.P7716457888422668852

`A084338(2*n+1)*A112299(2*n+1)`
-/

namespace A078065.P7716457888422668852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (2 * n + 1) * A112299 (2 * n + 1)

end

end A078065.P7716457888422668852

namespace A078065

/-- `A084338(2*n+1)*A112299(2*n+1)` -/
def P7716457888422668852.Spec : Prop :=
  ∀ n, P7716457888422668852.a n = A078065 n

end A078065

/-! ## A078065.P3939284705922155341

`A033999(2*n+1)*A084338(2*n+1)*A033999(n+1)`
-/

namespace A078065.P3939284705922155341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A084338 (2 * n + 1) * A033999 (n + 1)

end

end A078065.P3939284705922155341

namespace A078065

/-- `A033999(2*n+1)*A084338(2*n+1)*A033999(n+1)` -/
def P3939284705922155341.Spec : Prop :=
  ∀ n, P3939284705922155341.a n = A078065 n

end A078065

/-! ## A078065.P17238503428814511091

`Δ[A084338(2*(n+1))]*A033999(n)`
-/

namespace A078065.P17238503428814511091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A078065.P17238503428814511091

namespace A078065

/-- `Δ[A084338(2*(n+1))]*A033999(n)` -/
def P17238503428814511091.Spec : Prop :=
  ∀ n, P17238503428814511091.a n = A078065 n

end A078065

/-! ## A078065.P1322065400106688813

`Δ[-A099529(n+2)]`
-/

namespace A078065.P1322065400106688813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078065.P1322065400106688813

namespace A078065

/-- `Δ[-A099529(n+2)]` -/
def P1322065400106688813.Spec : Prop :=
  ∀ n, P1322065400106688813.a n = A078065 n

end A078065

/-! ## A078065.P16847138395203805775

`A099529(n+2)-A099529(n+3)`
-/

namespace A078065.P16847138395203805775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099529 (n + 2) - A099529 (n + 3)

end

end A078065.P16847138395203805775

namespace A078065

/-- `A099529(n+2)-A099529(n+3)` -/
def P16847138395203805775.Spec : Prop :=
  ∀ n, P16847138395203805775.a n = A078065 n

end A078065

/-!
# A078066: Expansion of (1-x)/(1+2*x+x^2+2*x^3).

The programs for A078066, the canonical program `A078066.P13946704050530279340` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078066 has offset 0).

The definition of A078066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+x^2+2x^3))` (program `A078066.P13946704050530279340`, by `A078066.P13946704050530279340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078066.P13946704050530279340

`ogf((1-x)/(1+2x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078066

/-- `ogf((1-x)/(1+2x+x^2+2x^3))` -/
def P13946704050530279340.Spec : Prop :=
  ∀ n, P13946704050530279340.a n = A078066 n

theorem P13946704050530279340.correct : P13946704050530279340.Spec := by
  intro n
  simp only [A078066]

end A078066

/-! ## A078066.P5808185234342411140

`Δ[round((-2)^(n+1)/5)]`
-/

namespace A078066.P5808185234342411140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ (n + 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078066.P5808185234342411140

namespace A078066

/-- `Δ[round((-2)^(n+1)/5)]` -/
def P5808185234342411140.Spec : Prop :=
  ∀ n, P5808185234342411140.a n = A078066 n

end A078066

/-! ## A078066.P15728924761443318761

`(-1)^∑[n]-2*a(n-1)` with `a(0)=1`
-/

namespace A078066.P15728924761443318761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - 2 * a (n - 1)

end

end A078066.P15728924761443318761

namespace A078066

/-- `(-1)^∑[n]-2*a(n-1)` -/
def P15728924761443318761.Spec : Prop :=
  ∀ n, P15728924761443318761.a n = A078066 n

end A078066

/-! ## A078066.P16985709031140946657

`1-2*(a(n-1)+∑[n]%2)` with `a(0)=1`
-/

namespace A078066.P16985709031140946657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * (a (n - 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ))

end

end A078066.P16985709031140946657

namespace A078066

/-- `1-2*(a(n-1)+∑[n]%2)` -/
def P16985709031140946657.Spec : Prop :=
  ∀ n, P16985709031140946657.a n = A078066 n

end A078066

/-! ## A078066.P12111639735978453261

`2*(gcd(2, ∑[n])-a(n-1))-3` with `a(0)=1`
-/

namespace A078066.P12111639735978453261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - a (n - 1)) - 3

end

end A078066.P12111639735978453261

namespace A078066

/-- `2*(gcd(2, ∑[n])-a(n-1))-3` -/
def P12111639735978453261.Spec : Prop :=
  ∀ n, P12111639735978453261.a n = A078066 n

end A078066

/-! ## A078066.P13161363928787506084

`1-(and(2, n+1)+2*a(n-1))` with `a(0)=1`
-/

namespace A078066.P13161363928787506084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((Nat.land 2 (n + 1) : ℤ) + 2 * a (n - 1))

end

end A078066.P13161363928787506084

namespace A078066

/-- `1-(and(2, n+1)+2*a(n-1))` -/
def P13161363928787506084.Spec : Prop :=
  ∀ n, P13161363928787506084.a n = A078066 n

end A078066

/-! ## A078066.P5424247703204873623

`(-1)^∑[n]-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A078066.P5424247703204873623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1) - a (n - 1)

end

end A078066.P5424247703204873623

namespace A078066

/-- `(-1)^∑[n]-a(n-1)-a(n-1)` -/
def P5424247703204873623.Spec : Prop :=
  ∀ n, P5424247703204873623.a n = A078066 n

end A078066

/-! ## A078066.P9577047473501479891

`A087960(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A078066.P9577047473501479891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087960 n - (a (n - 1) + a (n - 1))

end

end A078066.P9577047473501479891

namespace A078066

/-- `A087960(n)-(a(n-1)+a(n-1))` -/
def P9577047473501479891.Spec : Prop :=
  ∀ n, P9577047473501479891.a n = A078066 n

end A078066

/-!
# A078067: Expansion of (1-x)/(1+2*x+2*x^2-2*x^3).

The programs for A078067, the canonical program `A078067.P10591613591481490719` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078067 has offset 0).

The definition of A078067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+2x^2-2x^3))` (program `A078067.P10591613591481490719`, by `A078067.P10591613591481490719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078067.P10591613591481490719

`ogf((1-x)/(1+2x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078067

/-- `ogf((1-x)/(1+2x+2x^2-2x^3))` -/
def P10591613591481490719.Spec : Prop :=
  ∀ n, P10591613591481490719.a n = A078067 n

theorem P10591613591481490719.correct : P10591613591481490719.Spec := by
  intro n
  simp only [A078067]

end A078067

/-!
# A078068: Expansion of (1-x)/(1+2*x+2*x^2-x^3).

The programs for A078068, the canonical program `A078068.P3108351041791881547` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078068 has offset 0).

The definition of A078068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+2x^2-x^3))` (program `A078068.P3108351041791881547`, by `A078068.P3108351041791881547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078068.P3108351041791881547

`ogf((1-x)/(1+2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078068

/-- `ogf((1-x)/(1+2x+2x^2-x^3))` -/
def P3108351041791881547.Spec : Prop :=
  ∀ n, P3108351041791881547.a n = A078068 n

theorem P3108351041791881547.correct : P3108351041791881547.Spec := by
  intro n
  simp only [A078068]

end A078068

/-! ## A078068.P11192165825365612206

`(A233831(n+2)-A233831(n))/2`
-/

namespace A078068.P11192165825365612206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233831 (n + 2) - A233831 n : ℚ) / 2

end

end A078068.P11192165825365612206

namespace A078068

/-- `(A233831(n+2)-A233831(n))/2` -/
def P11192165825365612206.Spec : Prop :=
  ∀ n, P11192165825365612206.a n = (A078068 n : ℚ)

end A078068

/-! ## A078068.P2317937678547664312

`Δ[A077992(n+2)-Δ[A233831(n)]]`
-/

namespace A078068.P2317937678547664312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077992 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078068.P2317937678547664312

namespace A078068

/-- `Δ[A077992(n+2)-Δ[A233831(n)]]` -/
def P2317937678547664312.Spec : Prop :=
  ∀ n, P2317937678547664312.a n = A078068 n

end A078068

/-! ## A078068.P16138764956348676602

`Δ[A078004(n+1)]*A033999(n+1)`
-/

namespace A078068.P16138764956348676602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A078068.P16138764956348676602

namespace A078068

/-- `Δ[A078004(n+1)]*A033999(n+1)` -/
def P16138764956348676602.Spec : Prop :=
  ∀ n, P16138764956348676602.a n = A078068 n

end A078068

/-! ## A078068.P15223698627819799986

`Δ[A078004(n+1)]/A033999(n+3)`
-/

namespace A078068.P15223698627819799986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A033999 (n + 3) : ℚ)

end

end A078068.P15223698627819799986

namespace A078068

/-- `Δ[A078004(n+1)]/A033999(n+3)` -/
def P15223698627819799986.Spec : Prop :=
  ∀ n, P15223698627819799986.a n = (A078068 n : ℚ)

end A078068

/-! ## A078068.P17501272106105757503

`A000035(2*n)-(A233831(n+1)+A077992(n+1))`
-/

namespace A078068.P17501272106105757503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - (A233831 (n + 1) + A077992 (n + 1))

end

end A078068.P17501272106105757503

namespace A078068

/-- `A000035(2*n)-(A233831(n+1)+A077992(n+1))` -/
def P17501272106105757503.Spec : Prop :=
  ∀ n, P17501272106105757503.a n = A078068 n

end A078068

/-! ## A078068.P3634615525522342158

`A059841(2*n+1)-(A233831(n+1)+A077992(n+1))`
-/

namespace A078068.P3634615525522342158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n + 1) - (A233831 (n + 1) + A077992 (n + 1))

end

end A078068.P3634615525522342158

namespace A078068

/-- `A059841(2*n+1)-(A233831(n+1)+A077992(n+1))` -/
def P3634615525522342158.Spec : Prop :=
  ∀ n, P3634615525522342158.a n = A078068 n

end A078068

/-! ## A078068.P1549388594094769412

`(A233831(n+1)+A077992(n+1))*A033999(2*n+1)`
-/

namespace A078068.P1549388594094769412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233831 (n + 1) + A077992 (n + 1)) * A033999 (2 * n + 1)

end

end A078068.P1549388594094769412

namespace A078068

/-- `(A233831(n+1)+A077992(n+1))*A033999(2*n+1)` -/
def P1549388594094769412.Spec : Prop :=
  ∀ n, P1549388594094769412.a n = A078068 n

end A078068

/-!
# A078069: Expansion of (1-x)/(1+2*x+2*x^2).

The programs for A078069, the canonical program `A078069.P2794406481429295773` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078069 has offset 0).

The definition of A078069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+2x^2))` (program `A078069.P2794406481429295773`, by `A078069.P2794406481429295773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078069.P2794406481429295773

`ogf((1-x)/(1+2x+2x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078069

/-- `ogf((1-x)/(1+2x+2x^2))` -/
def P2794406481429295773.Spec : Prop :=
  ∀ n, P2794406481429295773.a n = A078069 n

theorem P2794406481429295773.correct : P2794406481429295773.Spec := by
  intro n
  simp only [A078069]

end A078069

/-! ## A078069.P9643727571686113982

`Δ[-2*(a(n-1)+a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A078069.P9643727571686113982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -(2 * (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078069.P9643727571686113982

namespace A078069

/-- `Δ[-2*(a(n-1)+a(n-2))]` -/
def P9643727571686113982.Spec : Prop :=
  ∀ n, P9643727571686113982.a n = A078069 n

end A078069

/-! ## A078069.P756750351653257370

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-3, a(2)=4`
-/

namespace A078069.P756750351653257370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 4] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A078069.P756750351653257370

namespace A078069

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P756750351653257370.Spec : Prop :=
  ∀ n, P756750351653257370.a n = A078069 n

end A078069

/-! ## A078069.P13857023313986470227

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=-3, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A078069.P13857023313986470227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 4] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A078069.P13857023313986470227

namespace A078069

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P13857023313986470227.Spec : Prop :=
  ∀ n, P13857023313986470227.a n = A078069 n

end A078069

/-! ## A078069.P1468282322770378239

`Δ[Δ[n-A137505(n)]]`
-/

namespace A078069.P1468282322770378239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A137505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078069.P1468282322770378239

namespace A078069

/-- `Δ[Δ[n-A137505(n)]]` -/
def P1468282322770378239.Spec : Prop :=
  ∀ n, P1468282322770378239.a n = A078069 n

end A078069

/-! ## A078069.P2415799168668441900

`A009116(n)-A009116(n+2)`
-/

namespace A078069.P2415799168668441900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n - A009116 (n + 2)

end

end A078069.P2415799168668441900

namespace A078069

/-- `A009116(n)-A009116(n+2)` -/
def P2415799168668441900.Spec : Prop :=
  ∀ n, P2415799168668441900.a n = A078069 n

end A078069

/-! ## A078069.P106649079458844745

`A108520(n)-(A009116(n)-A108520(n))`
-/

namespace A078069.P106649079458844745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - (A009116 n - A108520 n)

end

end A078069.P106649079458844745

namespace A078069

/-- `A108520(n)-(A009116(n)-A108520(n))` -/
def P106649079458844745.Spec : Prop :=
  ∀ n, P106649079458844745.a n = A078069 n

end A078069

/-! ## A078069.P8114790217167667390

`A108520(n)-A016116(n)*A075553(n)`
-/

namespace A078069.P8114790217167667390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - A016116 n * A075553 n

end

end A078069.P8114790217167667390

namespace A078069

/-- `A108520(n)-A016116(n)*A075553(n)` -/
def P8114790217167667390.Spec : Prop :=
  ∀ n, P8114790217167667390.a n = A078069 n

end A078069

/-! ## A078069.P2102037710564379663

`A137505(n+1)+A108520(n)-A137505(n)`
-/

namespace A078069.P2102037710564379663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137505 (n + 1) + (A108520 n - A137505 n)

end

end A078069.P2102037710564379663

namespace A078069

/-- `A137505(n+1)+A108520(n)-A137505(n)` -/
def P2102037710564379663.Spec : Prop :=
  ∀ n, P2102037710564379663.a n = A078069 n

end A078069

/-! ## A078069.P16608205822393543314

`2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=-3, a(2)=4`
-/

namespace A078069.P16608205822393543314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 4] fun n a =>
  2 * a (n - 3) - a (n - 1)

end

end A078069.P16608205822393543314

namespace A078069

/-- `2*a(n-3)-a(n-1)` -/
def P16608205822393543314.Spec : Prop :=
  ∀ n, P16608205822393543314.a n = A078069 n

end A078069

/-! ## A078069.P12369710722595827916

`Δ[A009116(n)-A108520(n)]`
-/

namespace A078069.P12369710722595827916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n - A108520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078069.P12369710722595827916

namespace A078069

/-- `Δ[A009116(n)-A108520(n)]` -/
def P12369710722595827916.Spec : Prop :=
  ∀ n, P12369710722595827916.a n = A078069 n

end A078069

/-! ## A078069.P8105966948479317994

`A009116(n+1)+A108520(n)+A009116(n)`
-/

namespace A078069.P8105966948479317994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 1) + (A108520 n + A009116 n)

end

end A078069.P8105966948479317994

namespace A078069

/-- `A009116(n+1)+A108520(n)+A009116(n)` -/
def P8105966948479317994.Spec : Prop :=
  ∀ n, P8105966948479317994.a n = A078069 n

end A078069

/-! ## A078069.P14598275889973460688

`A033999(n)*A090131(n)`
-/

namespace A078069.P14598275889973460688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A090131 n

end

end A078069.P14598275889973460688

namespace A078069

/-- `A033999(n)*A090131(n)` -/
def P14598275889973460688.Spec : Prop :=
  ∀ n, P14598275889973460688.a n = A078069 n

end A078069

/-! ## A078069.P3922384455161713618

`(1-A010673(n))*A090131(n)`
-/

namespace A078069.P3922384455161713618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A090131 n

end

end A078069.P3922384455161713618

namespace A078069

/-- `(1-A010673(n))*A090131(n)` -/
def P3922384455161713618.Spec : Prop :=
  ∀ n, P3922384455161713618.a n = A078069 n

end A078069

/-! ## A078069.P17253689549532577045

`(A000035(n+1)-A000035(n))*A090131(n)`
-/

namespace A078069.P17253689549532577045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A090131 n

end

end A078069.P17253689549532577045

namespace A078069

/-- `(A000035(n+1)-A000035(n))*A090131(n)` -/
def P17253689549532577045.Spec : Prop :=
  ∀ n, P17253689549532577045.a n = A078069 n

end A078069

/-! ## A078069.P10660312993567885468

`A134142(n)-A090132(n)`
-/

namespace A078069.P10660312993567885468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134142 n - A090132 n

end

end A078069.P10660312993567885468

namespace A078069

/-- `A134142(n)-A090132(n)` -/
def P10660312993567885468.Spec : Prop :=
  ∀ n, P10660312993567885468.a n = A078069 n

end A078069

/-! ## A078069.P12363817713508536295

`A090132(n+1)+A009116(n)`
-/

namespace A078069.P12363817713508536295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 (n + 1) + A009116 n

end

end A078069.P12363817713508536295

namespace A078069

/-- `A090132(n+1)+A009116(n)` -/
def P12363817713508536295.Spec : Prop :=
  ∀ n, P12363817713508536295.a n = A078069 n

end A078069

/-! ## A078069.P10910042919144718019

`A134142(n)+A009116(n+1)`
-/

namespace A078069.P10910042919144718019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134142 n + A009116 (n + 1)

end

end A078069.P10910042919144718019

namespace A078069

/-- `A134142(n)+A009116(n+1)` -/
def P10910042919144718019.Spec : Prop :=
  ∀ n, P10910042919144718019.a n = A078069 n

end A078069

/-! ## A078069.P2972286339129327482

`(A137429(n)+A108520(n))/2`
-/

namespace A078069.P2972286339129327482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137429 n + A108520 n : ℚ) / 2

end

end A078069.P2972286339129327482

namespace A078069

/-- `(A137429(n)+A108520(n))/2` -/
def P2972286339129327482.Spec : Prop :=
  ∀ n, P2972286339129327482.a n = (A078069 n : ℚ)

end A078069

/-! ## A078069.P7447870440069481100

`A090132(n)-(A009116(n)-A137429(n))`
-/

namespace A078069.P7447870440069481100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n - (A009116 n - A137429 n)

end

end A078069.P7447870440069481100

namespace A078069

/-- `A090132(n)-(A009116(n)-A137429(n))` -/
def P7447870440069481100.Spec : Prop :=
  ∀ n, P7447870440069481100.a n = A078069 n

end A078069

/-!
# A078070: Expansion of (1-x)/(1 + 2*x + 2*x^2 + x^3).

The programs for A078070, the canonical program `A078070.P9660513981727246827` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078070 has offset 0).

The definition of A078070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+2x^2+x^3))` (program `A078070.P9660513981727246827`, by `A078070.P9660513981727246827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078070.P9660513981727246827

`ogf((1-x)/(1+2x+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078070

/-- `ogf((1-x)/(1+2x+2x^2+x^3))` -/
def P9660513981727246827.Spec : Prop :=
  ∀ n, P9660513981727246827.a n = A078070 n

theorem P9660513981727246827.correct : P9660513981727246827.Spec := by
  intro n
  simp only [A078070]

end A078070

/-!
# A078071: Expansion of (1-x)/(1+2*x+2*x^2+2*x^3).

The programs for A078071, the canonical program `A078071.P7982530521893727109` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078071 has offset 0).

The definition of A078071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+2x+2x^2+2x^3))` (program `A078071.P7982530521893727109`, by `A078071.P7982530521893727109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078071.P7982530521893727109

`ogf((1-x)/(1+2x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078071

/-- `ogf((1-x)/(1+2x+2x^2+2x^3))` -/
def P7982530521893727109.Spec : Prop :=
  ∀ n, P7982530521893727109.a n = A078071 n

theorem P7982530521893727109.correct : P7982530521893727109.Spec := by
  intro n
  simp only [A078071]

end A078071

/-! ## A078071.P14621728305855832502

`2*a(n-4)-a(n-1)` with `a(0)=1, a(1)=-3, a(2)=4, a(3)=-4`
-/

namespace A078071.P14621728305855832502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 4, -4] fun n a =>
  2 * a (n - 4) - a (n - 1)

end

end A078071.P14621728305855832502

namespace A078071

/-- `2*a(n-4)-a(n-1)` -/
def P14621728305855832502.Spec : Prop :=
  ∀ n, P14621728305855832502.a n = A078071 n

end A078071

/-! ## A078071.P2377784419461635933

`a(n-4)+a(n-4)-a(n-1)` with `a(0)=1, a(1)=-3, a(2)=4, a(3)=-4`
-/

namespace A078071.P2377784419461635933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 4, -4] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 1))

end

end A078071.P2377784419461635933

namespace A078071

/-- `a(n-4)+a(n-4)-a(n-1)` -/
def P2377784419461635933.Spec : Prop :=
  ∀ n, P2377784419461635933.a n = A078071 n

end A078071

/-! ## A078071.P5601587723007065195

`Δ[∑[A122788(n)]*A033999(n+1)]`
-/

namespace A078071.P5601587723007065195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078071.P5601587723007065195

namespace A078071

/-- `Δ[∑[A122788(n)]*A033999(n+1)]` -/
def P5601587723007065195.Spec : Prop :=
  ∀ n, P5601587723007065195.a n = A078071 n

end A078071

/-! ## A078071.P4030183818024660643

`∑[A279678(n+3)+A279678(n+4)]`
-/

namespace A078071.P4030183818024660643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279678 (n + 3) + A279678 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078071.P4030183818024660643

namespace A078071

/-- `∑[A279678(n+3)+A279678(n+4)]` -/
def P4030183818024660643.Spec : Prop :=
  ∀ n, P4030183818024660643.a n = A078071 n

end A078071

/-! ## A078071.P3175365868921318076

`(A077993(n+4)-A077993(n+2))/2`
-/

namespace A078071.P3175365868921318076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077993 (n + 4) - A077993 (n + 2) : ℚ) / 2

end

end A078071.P3175365868921318076

namespace A078071

/-- `(A077993(n+4)-A077993(n+2))/2` -/
def P3175365868921318076.Spec : Prop :=
  ∀ n, P3175365868921318076.a n = (A078071 n : ℚ)

end A078071

/-! ## A078071.P10269965848768323178

`A077993(n+4)%(A077993(n+8)/8)`
-/

namespace A078071.P10269965848768323178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077993 (n + 4)) (SequenceMachineLib.roundAway ((A077993 (n + 8) : ℚ) / 8))

end

end A078071.P10269965848768323178

namespace A078071

/-- `A077993(n+4)%(A077993(n+8)/8)` -/
def P10269965848768323178.Spec : Prop :=
  ∀ n, P10269965848768323178.a n = A078071 n

end A078071

/-!
# A078077: Continued fraction expansion of Product_{p prime} (1 + 1/(p^2+p-1)).

The programs for A078077, there is no canonical definition to state claims against.
-/

/-! ## A078077.P10826133034718111065

`A078082(n+1)/A102550(A078116(3*n+1))`
-/

namespace A078077.P10826133034718111065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078082 (n + 1) : ℚ) / (A102550 (A078116 (3 * n + 1)).toNat : ℚ)

end

end A078077.P10826133034718111065

/-! ## A078077.P7942893724992143910

`A103675(A103688(n+2))+A078082(n+1)`
-/

namespace A078077.P7942893724992143910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103675 (A103688 (n + 2)).toNat + A078082 (n + 1)

end

end A078077.P7942893724992143910

/-! ## A078077.P4449447396762037859

`A078082(n+1)%A099332(A072578(n+1))`
-/

namespace A078077.P4449447396762037859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078082 (n + 1)) (A099332 (A072578 (n + 1)).toNat)

end

end A078077.P4449447396762037859

/-! ## A078077.P4553976782101856052

`A001222(A265006(n+1))*A078082(n+1)`
-/

namespace A078077.P4553976782101856052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A265006 (n + 1)).toNat * A078082 (n + 1)

end

end A078077.P4553976782101856052

/-! ## A078077.P13330207116520115225

`A078082(n*(char[A088809(2*n+3)]+1)+1)`
-/

namespace A078077.P13330207116520115225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088809 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078082 (n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) + 1)

end

end A078077.P13330207116520115225

/-! ## A078077.P11621705571484224368

`A078082(n+1)*A280274(A107002(n+1))`
-/

namespace A078077.P11621705571484224368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078082 (n + 1) * A280274 (A107002 (n + 1)).toNat

end

end A078077.P11621705571484224368

/-!
# A078099: Array T(m,n) read by antidiagonals: T(m,n) = number of ways of 3-coloring an m X n grid (m >= 1, n >= 1).

The programs for A078099, there is no canonical definition to state claims against.
-/

/-! ## A078099.P5058347454445790825

`A036453(n+1)*A207997(n+1)`
-/

namespace A078099.P5058347454445790825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A207997 (n + 1)

end

end A078099.P5058347454445790825

/-! ## A078099.P15622493983474814412

`A000005(A076397(n+1))*A207997(n+1)`
-/

namespace A078099.P15622493983474814412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076397 (n + 1)).toNat * A207997 (n + 1)

end

end A078099.P15622493983474814412

/-! ## A078099.P15935661175212861676

`A207997(n+1)+A207997(n+1)%A222444(n+1)`
-/

namespace A078099.P15935661175212861676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (n + 1) + Int.tmod (A207997 (n + 1)) (A222444 (n + 1))

end

end A078099.P15935661175212861676

/-! ## A078099.P12979617275863253328

`gcd(2, A222144(n+1))*A207997(n+1)`
-/

namespace A078099.P12979617275863253328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A222144 (n + 1)) : ℤ) * A207997 (n + 1)

end

end A078099.P12979617275863253328

/-! ## A078099.P5910865577004031991

`gcd(2, A000079(n))*A207997(n+1)`
-/

namespace A078099.P5910865577004031991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000079 n) : ℤ) * A207997 (n + 1)

end

end A078099.P5910865577004031991

/-! ## A078099.P10432159173048363736

`A059268(∑[n]+1)*A207997(n+1)`
-/

namespace A078099.P10432159173048363736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A207997 (n + 1)

end

end A078099.P10432159173048363736

/-! ## A078099.P18364050439563199837

`A002260(∑[n]+2)*A207997(n+1)`
-/

namespace A078099.P18364050439563199837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A207997 (n + 1)

end

end A078099.P18364050439563199837

