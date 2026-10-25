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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A052600: Expansion of e.g.f. 1/((1-2*x)*(1-x^2)).

The programs for A052600, the canonical program `A052600.P16181606672778892051` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052600 has offset 0).

The definition of A052600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052600.P16181606672778892051

`n!*A000975(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052600

/-- `n!*A000975(n+1)` -/
def P16181606672778892051.Spec : Prop :=
  ∀ n, P16181606672778892051.a n = A052600 n

theorem P16181606672778892051.correct : P16181606672778892051.Spec := by
  intro n
  simp only [A052600]

end A052600

/-! ## A052600.P13663063034135586699

`(A084639(n)+1)*n!`
-/

namespace A052600.P13663063034135586699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084639 n + 1) * (Nat.factorial n : ℤ)

end

end A052600.P13663063034135586699

namespace A052600

/-- `(A084639(n)+1)*n!` -/
def P13663063034135586699.Spec : Prop :=
  ∀ n, P13663063034135586699.a n = A052600 n

end A052600

/-! ## A052600.P10417548955287007457

`n!*∑[A001045(n+1)]`
-/

namespace A052600.P10417548955287007457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052600.P10417548955287007457

namespace A052600

/-- `n!*∑[A001045(n+1)]` -/
def P10417548955287007457.Spec : Prop :=
  ∀ n, P10417548955287007457.a n = A052600 n

end A052600

/-! ## A052600.P16153148032852728548

`n!*∑[A152046(n+1)]`
-/

namespace A052600.P16153148032852728548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052600.P16153148032852728548

namespace A052600

/-- `n!*∑[A152046(n+1)]` -/
def P16153148032852728548.Spec : Prop :=
  ∀ n, P16153148032852728548.a n = A052600 n

end A052600

/-! ## A052600.P3721265990273440170

`n!*∑[or(1, A000975(n))]`
-/

namespace A052600.P3721265990273440170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000975 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052600.P3721265990273440170

namespace A052600

/-- `n!*∑[or(1, A000975(n))]` -/
def P3721265990273440170.Spec : Prop :=
  ∀ n, P3721265990273440170.a n = A052600 n

end A052600

/-! ## A052600.P6723153656097099993

`A052585(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052600.P6723153656097099993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052585 n + (n : ℤ) * a (n - 1)

end

end A052600.P6723153656097099993

namespace A052600

/-- `A052585(n)+n*a(n-1)` -/
def P6723153656097099993.Spec : Prop :=
  ∀ n, P6723153656097099993.a n = A052600 n

end A052600

/-! ## A052600.P17147878900723327271

`Δ[A084172(n)]*A000142(n)`
-/

namespace A052600.P17147878900723327271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052600.P17147878900723327271

namespace A052600

/-- `Δ[A084172(n)]*A000142(n)` -/
def P17147878900723327271.Spec : Prop :=
  ∀ n, P17147878900723327271.a n = A052600 n

end A052600

/-! ## A052600.P2030925560615835192

`A000142(n)*A000975(n+1)`
-/

namespace A052600.P2030925560615835192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000975 (n + 1)

end

end A052600.P2030925560615835192

namespace A052600

/-- `A000142(n)*A000975(n+1)` -/
def P2030925560615835192.Spec : Prop :=
  ∀ n, P2030925560615835192.a n = A052600 n

end A052600

/-! ## A052600.P12522716423587244332

`∑[∑[A078008(n)]]*A000142(n)`
-/

namespace A052600.P12522716423587244332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052600.P12522716423587244332

namespace A052600

/-- `∑[∑[A078008(n)]]*A000142(n)` -/
def P12522716423587244332.Spec : Prop :=
  ∀ n, P12522716423587244332.a n = A052600 n

end A052600

/-! ## A052600.P6847513398404930358

`∑[A001045(n+1)]*A000142(n)`
-/

namespace A052600.P6847513398404930358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052600.P6847513398404930358

namespace A052600

/-- `∑[A001045(n+1)]*A000142(n)` -/
def P6847513398404930358.Spec : Prop :=
  ∀ n, P6847513398404930358.a n = A052600 n

end A052600

/-!
# A052601: E.g.f. (1-x)/(1-x-2x^3).

The programs for A052601, the canonical program `A052601.P6097260739325422000` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052601 has offset 0).

The definition of A052601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052601.P6097260739325422000

`n!*A052537(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052601

/-- `n!*A052537(n)` -/
def P6097260739325422000.Spec : Prop :=
  ∀ n, P6097260739325422000.a n = A052601 n

theorem P6097260739325422000.correct : P6097260739325422000.Spec := by
  intro n
  simp only [A052601]

end A052601

/-! ## A052601.P15300667756550323142

`abs(A052537(n)*A133942(n))`
-/

namespace A052601.P15300667756550323142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052537 n * A133942 n|

end

end A052601.P15300667756550323142

namespace A052601

/-- `abs(A052537(n)*A133942(n))` -/
def P15300667756550323142.Spec : Prop :=
  ∀ n, P15300667756550323142.a n = A052601 n

end A052601

/-! ## A052601.P12839336467535099099

`A052537(n)*A130534(∑[n])`
-/

namespace A052601.P12839336467535099099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n * A130534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052601.P12839336467535099099

namespace A052601

/-- `A052537(n)*A130534(∑[n])` -/
def P12839336467535099099.Spec : Prop :=
  ∀ n, P12839336467535099099.a n = A052601 n

end A052601

/-! ## A052601.P6701754453131491612

`∏[A028310(n)]*A052537(n)`
-/

namespace A052601.P6701754453131491612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052537 n

end

end A052601.P6701754453131491612

namespace A052601

/-- `∏[A028310(n)]*A052537(n)` -/
def P6701754453131491612.Spec : Prop :=
  ∀ n, P6701754453131491612.a n = A052601 n

end A052601

/-!
# A052602: E.g.f. x^2*(1-x)/(1-x-x^2).

The programs for A052602, there is no canonical definition to state claims against.
-/

/-! ## A052602.P5638117105874083813

`n*A052583(abs(1-n))`
-/

namespace A052602.P5638117105874083813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052583 |1 - (n : ℤ)|.toNat

end

end A052602.P5638117105874083813

/-! ## A052602.P11418501131268492837

`n!*Δ[A000045(A289207(n))]`
-/

namespace A052602.P11418501131268492837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052602.P11418501131268492837

/-! ## A052602.P17843457103498185172

`A000045(n-3%(n+1))*A000142(n)`
-/

namespace A052602.P17843457103498185172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - 3 % (n + 1)) * A000142 n

end

end A052602.P17843457103498185172

/-! ## A052602.P6970081898655462726

`Δ[A000045(A289207(n))]*A000142(n)`
-/

namespace A052602.P6970081898655462726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052602.P6970081898655462726

/-! ## A052602.P5851928251868695113

`(A052554(n)-A052583(n))%A052585(n)`
-/

namespace A052602.P5851928251868695113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052554 n - A052583 n) (A052585 n)

end

end A052602.P5851928251868695113

/-!
# A052603: E.g.f. (1-x)^3/(1-4x+3x^2-x^3).

The programs for A052603, the canonical program `A052603.P1182644926263903835` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052603 has offset 0).

The definition of A052603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052603.P1182644926263903835

`n!*A052529(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052603

/-- `n!*A052529(n)` -/
def P1182644926263903835.Spec : Prop :=
  ∀ n, P1182644926263903835.a n = A052603 n

theorem P1182644926263903835.correct : P1182644926263903835.Spec := by
  intro n
  simp only [A052603]

end A052603

/-! ## A052603.P1881327081688130061

`A000142(n)*A052529(n)`
-/

namespace A052603.P1881327081688130061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052529 n

end

end A052603.P1881327081688130061

namespace A052603

/-- `A000142(n)*A052529(n)` -/
def P1881327081688130061.Spec : Prop :=
  ∀ n, P1881327081688130061.a n = A052603 n

end A052603

/-! ## A052603.P4585497225381242029

`Δ[A003422(n)]*A052529(n)`
-/

namespace A052603.P4585497225381242029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052529 n

end

end A052603.P4585497225381242029

namespace A052603

/-- `Δ[A003422(n)]*A052529(n)` -/
def P4585497225381242029.Spec : Prop :=
  ∀ n, P4585497225381242029.a n = A052603 n

end A052603

/-! ## A052603.P16302901809259171742

`∏[A028310(n)]*A052529(n)`
-/

namespace A052603.P16302901809259171742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052529 n

end

end A052603.P16302901809259171742

namespace A052603

/-- `∏[A028310(n)]*A052529(n)` -/
def P16302901809259171742.Spec : Prop :=
  ∀ n, P16302901809259171742.a n = A052603 n

end A052603

/-! ## A052603.P3461542964421699598

`n!*A000930(record[A014682(n)])`
-/

namespace A052603.P3461542964421699598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052603.P3461542964421699598

namespace A052603

/-- `n!*A000930(record[A014682(n)])` -/
def P3461542964421699598.Spec : Prop :=
  ∀ n, P3461542964421699598.a n = A052603 n

end A052603

/-! ## A052603.P16137957240114618735

`A000142(n)*A000930(A008486(n)-1)`
-/

namespace A052603.P16137957240114618735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000930 (A008486 n - 1).toNat

end

end A052603.P16137957240114618735

namespace A052603

/-- `A000142(n)*A000930(A008486(n)-1)` -/
def P16137957240114618735.Spec : Prop :=
  ∀ n, P16137957240114618735.a n = A052603 n

end A052603

/-! ## A052603.P13802667019163934372

`A052529(n)/A052544(n)*A052696(n)`
-/

namespace A052603.P13802667019163934372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052529 n : ℚ) / (A052544 n : ℚ) * (A052696 n : ℚ)

end

end A052603.P13802667019163934372

namespace A052603

/-- `A052529(n)/A052544(n)*A052696(n)` -/
def P13802667019163934372.Spec : Prop :=
  ∀ n, P13802667019163934372.a n = (A052603 n : ℚ)

end A052603

/-! ## A052603.P11569261903968483956

`A052529(n)/A204200(n+2)*A052696(n)`
-/

namespace A052603.P11569261903968483956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052529 n : ℚ) / (A204200 (n + 2) : ℚ) * (A052696 n : ℚ)

end

end A052603.P11569261903968483956

namespace A052603

/-- `A052529(n)/A204200(n+2)*A052696(n)` -/
def P11569261903968483956.Spec : Prop :=
  ∀ n, P11569261903968483956.a n = (A052603 n : ℚ)

end A052603

/-! ## A052603.P602252953309946620

`(A204200(n+2)+A000007(n)-A204200(n+1))*n!`
-/

namespace A052603.P602252953309946620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204200 (n + 2) + (A000007 n - A204200 (n + 1))) * (Nat.factorial n : ℤ)

end

end A052603.P602252953309946620

namespace A052603

/-- `(A204200(n+2)+A000007(n)-A204200(n+1))*n!` -/
def P602252953309946620.Spec : Prop :=
  ∀ n, P602252953309946620.a n = A052603 n

end A052603

/-!
# A052604: E.g.f. (1-x)/(1-2x-x^3+x^4).

The programs for A052604, the canonical program `A052604.P2152976872534651015` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052604 has offset 0).

The definition of A052604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052604.P2152976872534651015

`n!*A052540(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052604

/-- `n!*A052540(n)` -/
def P2152976872534651015.Spec : Prop :=
  ∀ n, P2152976872534651015.a n = A052604 n

theorem P2152976872534651015.correct : P2152976872534651015.Spec := by
  intro n
  simp only [A052604]

end A052604

/-! ## A052604.P17931873910372764749

`A000142(n)*A052540(n)`
-/

namespace A052604.P17931873910372764749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052540 n

end

end A052604.P17931873910372764749

namespace A052604

/-- `A000142(n)*A052540(n)` -/
def P17931873910372764749.Spec : Prop :=
  ∀ n, P17931873910372764749.a n = A052604 n

end A052604

/-! ## A052604.P8693242005935573531

`A028421(∑[n])*A052540(n)`
-/

namespace A052604.P8693242005935573531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) * A052540 n

end

end A052604.P8693242005935573531

namespace A052604

/-- `A028421(∑[n])*A052540(n)` -/
def P8693242005935573531.Spec : Prop :=
  ∀ n, P8693242005935573531.a n = A052604 n

end A052604

/-! ## A052604.P7833442886893925805

`∏[A028310(n)]*A052540(n)`
-/

namespace A052604.P7833442886893925805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052540 n

end

end A052604.P7833442886893925805

namespace A052604

/-- `∏[A028310(n)]*A052540(n)` -/
def P7833442886893925805.Spec : Prop :=
  ∀ n, P7833442886893925805.a n = A052604 n

end A052604

/-!
# A052605: Expansion of E.g.f. x*(1-x)/(1-x-x^3).

The programs for A052605, there is no canonical definition to state claims against.
-/

/-! ## A052605.P735248969108390907

`n*A052557(abs(1-n))`
-/

namespace A052605.P735248969108390907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052557 |1 - (n : ℤ)|.toNat

end

end A052605.P735248969108390907

/-! ## A052605.P1420833900185133155

`n!*A135851(n+1)`
-/

namespace A052605.P1420833900185133155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A135851 (n + 1)

end

end A052605.P1420833900185133155

/-! ## A052605.P1516888459292677651

`n!*Δ[A078012(n+1)]`
-/

namespace A052605.P1516888459292677651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052605.P1516888459292677651

/-! ## A052605.P8950625672980422941

`A000142(n)*A135851(n+1)`
-/

namespace A052605.P8950625672980422941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A135851 (n + 1)

end

end A052605.P8950625672980422941

/-! ## A052605.P3571232469674988594

`Δ[Δ[A000930(n)]]*A000142(n)`
-/

namespace A052605.P3571232469674988594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052605.P3571232469674988594

/-! ## A052605.P4631121951077579348

`A000142(n)*A144903(A000096(n))`
-/

namespace A052605.P4631121951077579348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A144903 (A000096 n).toNat

end

end A052605.P4631121951077579348

/-!
# A052606: E.g.f. (1-x)^2/(1-4x+x^2).

The programs for A052606, there is no canonical definition to state claims against.
-/

/-! ## A052606.P6825652243335012195

`n!*A048788(A004277(n))`
-/

namespace A052606.P6825652243335012195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A048788 (A004277 n).toNat

end

end A052606.P6825652243335012195

/-! ## A052606.P4423463478457729006

`n!*Δ[A002530(A004273(n))]`
-/

namespace A052606.P4423463478457729006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052606.P4423463478457729006

/-! ## A052606.P3036741432703285782

`n!*A254308(A294732(2*(n+1)))`
-/

namespace A052606.P3036741432703285782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A254308 (A294732 (2 * (n + 1))).toNat

end

end A052606.P3036741432703285782

/-! ## A052606.P13882312854416386185

`(A048788(2*n)+A000007(n))*n!`
-/

namespace A052606.P13882312854416386185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048788 (2 * n) + A000007 n) * (Nat.factorial n : ℤ)

end

end A052606.P13882312854416386185

/-! ## A052606.P16936447327167465419

`Δ[A002530(A004273(n))]*A000142(n)`
-/

namespace A052606.P16936447327167465419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052606.P16936447327167465419

/-! ## A052606.P273159674413307096

`∏[A028310(n)]*A048788(A004277(n))`
-/

namespace A052606.P273159674413307096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A048788 (A004277 n).toNat

end

end A052606.P273159674413307096

/-!
# A052607: E.g.f. (1-x^3)/(1-x^2-x^3).

The programs for A052607, there is no canonical definition to state claims against.
-/

/-! ## A052607.P1055097284347994036

`n!*A000931(A057427(n)+n)`
-/

namespace A052607.P1055097284347994036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000931 (A057427 n + (n : ℤ)).toNat

end

end A052607.P1055097284347994036

/-! ## A052607.P7069474619532778213

`A000142(n)*A000931(A199969(n+2))`
-/

namespace A052607.P7069474619532778213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000931 (A199969 (n + 2)).toNat

end

end A052607.P7069474619532778213

/-! ## A052607.P16411951351591283451

`A000142(n)*A000931(A057427(n)+n)`
-/

namespace A052607.P16411951351591283451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000931 (A057427 n + (n : ℤ)).toNat

end

end A052607.P16411951351591283451

/-! ## A052607.P5795500244098753229

`∏[A101279(2*n+1)]*A000931(A057427(n)+n)`
-/

namespace A052607.P5795500244098753229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000931 (A057427 n + (n : ℤ)).toNat

end

end A052607.P5795500244098753229

/-!
# A052608: E.g.f. (1-x)/(1-2x-x^2).

The programs for A052608, the canonical program `A052608.P18146699070128100307` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052608 has offset 0).

The definition of A052608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052608.P18146699070128100307

`n!*A001333(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052608

/-- `n!*A001333(n)` -/
def P18146699070128100307.Spec : Prop :=
  ∀ n, P18146699070128100307.a n = A052608 n

theorem P18146699070128100307.correct : P18146699070128100307.Spec := by
  intro n
  simp only [A052608]

end A052608

/-! ## A052608.P7131628604559988047

`n!*round((sqrt(2)+1)^n/2)`
-/

namespace A052608.P7131628604559988047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

end

end A052608.P7131628604559988047

namespace A052608

/-- `n!*round((sqrt(2)+1)^n/2)` -/
def P7131628604559988047.Spec : Prop :=
  ∀ n, P7131628604559988047.a n = A052608 n

end A052608

/-! ## A052608.P11699722261705324549

`n*(2*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052608.P11699722261705324549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052608.P11699722261705324549

namespace A052608

/-- `n*(2*a(n-1)+(n-1)*a(n-2))` -/
def P11699722261705324549.Spec : Prop :=
  ∀ n, P11699722261705324549.a n = A052608 n

end A052608

/-! ## A052608.P2095768107585556851

`abs(n!*A123335(n))`
-/

namespace A052608.P2095768107585556851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A123335 n|

end

end A052608.P2095768107585556851

namespace A052608

/-- `abs(n!*A123335(n))` -/
def P2095768107585556851.Spec : Prop :=
  ∀ n, P2095768107585556851.a n = A052608 n

end A052608

/-! ## A052608.P9101357991596143097

`(A293004(n)+1)*n!`
-/

namespace A052608.P9101357991596143097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293004 n + 1) * (Nat.factorial n : ℤ)

end

end A052608.P9101357991596143097

namespace A052608

/-- `(A293004(n)+1)*n!` -/
def P9101357991596143097.Spec : Prop :=
  ∀ n, P9101357991596143097.a n = A052608 n

end A052608

/-! ## A052608.P1025860447834935132

`A002203(n)/2*n!`
-/

namespace A052608.P1025860447834935132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 n : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A052608.P1025860447834935132

namespace A052608

/-- `A002203(n)/2*n!` -/
def P1025860447834935132.Spec : Prop :=
  ∀ n, P1025860447834935132.a n = (A052608 n : ℚ)

end A052608

/-! ## A052608.P12892806431298640961

`A052622(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A052608.P12892806431298640961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052622 n - (n : ℤ) * a (n - 1)

end

end A052608.P12892806431298640961

namespace A052608

/-- `A052622(n)-n*a(n-1)` -/
def P12892806431298640961.Spec : Prop :=
  ∀ n, P12892806431298640961.a n = A052608 n

end A052608

/-! ## A052608.P10527501338399069977

`A000142(n)*A001333(n)`
-/

namespace A052608.P10527501338399069977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001333 n

end

end A052608.P10527501338399069977

namespace A052608

/-- `A000142(n)*A001333(n)` -/
def P10527501338399069977.Spec : Prop :=
  ∀ n, P10527501338399069977.a n = A052608 n

end A052608

/-! ## A052608.P1198137040338431092

`abs(A000142(n)*A123335(n))`
-/

namespace A052608.P1198137040338431092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n * A123335 n|

end

end A052608.P1198137040338431092

namespace A052608

/-- `abs(A000142(n)*A123335(n))` -/
def P1198137040338431092.Spec : Prop :=
  ∀ n, P1198137040338431092.a n = A052608 n

end A052608

/-! ## A052608.P1763611940628098398

`Δ[A000129(n)]*A000142(n)`
-/

namespace A052608.P1763611940628098398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052608.P1763611940628098398

namespace A052608

/-- `Δ[A000129(n)]*A000142(n)` -/
def P1763611940628098398.Spec : Prop :=
  ∀ n, P1763611940628098398.a n = A052608 n

end A052608

/-!
# A052609: a(n) = (2*n - 2)*n!.

The programs for A052609, there is no canonical definition to state claims against.
-/

/-! ## A052609.P5398108711384848568

`2*lcm(n, (n-1)*n!)`
-/

namespace A052609.P5398108711384848568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (n : ℤ) (((n : ℤ) - 1) * (Nat.factorial n : ℤ))

end

end A052609.P5398108711384848568

/-! ## A052609.P14259521227395767482

`2*n*Δ[abs(1-n)!]`
-/

namespace A052609.P14259521227395767482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A052609.P14259521227395767482

/-! ## A052609.P1858939298787038250

`(abs(1-2*n)-1)*n!`
-/

namespace A052609.P1858939298787038250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (2 * n : ℤ)| - 1) * (Nat.factorial n : ℤ)

end

end A052609.P1858939298787038250

/-! ## A052609.P14189101440056965262

`2*n!*(2*n)%(n+1)`
-/

namespace A052609.P14189101440056965262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n * (2 * n % (n + 1))

end

end A052609.P14189101440056965262

/-! ## A052609.P3945870784866839218

`2*n*Δ[gcd(1-n, n!)!]`
-/

namespace A052609.P3945870784866839218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.gcd (1 - (n : ℤ)) (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A052609.P3945870784866839218

/-! ## A052609.P681689486465229715

`n*Δ[(n-1)*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A052609.P681689486465229715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052609.P681689486465229715

/-! ## A052609.P4015852626936319627

`2*n*(n-1)*round(log(cosh(n)))!`
-/

namespace A052609.P4015852626936319627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (((n : ℤ) - 1) * (Nat.factorial (SequenceMachineLib.roundAway (Real.log (Real.cosh (n : ℝ)))).toNat : ℤ))

end

end A052609.P4015852626936319627

/-! ## A052609.P1675630952470645618

`(n-1)*A052849(n)`
-/

namespace A052609.P1675630952470645618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A052849 n

end

end A052609.P1675630952470645618

/-! ## A052609.P18030008175793859769

`2*A245693(∑[n+1])`
-/

namespace A052609.P18030008175793859769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245693 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052609.P18030008175793859769

/-! ## A052609.P4845387100903644558

`2*n*Δ[A104150(n)]`
-/

namespace A052609.P4845387100903644558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A052609.P4845387100903644558

/-!
# A052610: Expansion of e.g.f. 1/(1-x-2*x^3).

The programs for A052610, the canonical program `A052610.P1552636461458398644` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052610 has offset 0).

The definition of A052610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052610.P1552636461458398644

`n!*A077949(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052610

/-- `n!*A077949(n)` -/
def P1552636461458398644.Spec : Prop :=
  ∀ n, P1552636461458398644.a n = A052610 n

theorem P1552636461458398644.correct : P1552636461458398644.Spec := by
  intro n
  simp only [A052610]

end A052610

/-! ## A052610.P1968118973960233421

`n!*∑[A052537(n)]`
-/

namespace A052610.P1968118973960233421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052610.P1968118973960233421

namespace A052610

/-- `n!*∑[A052537(n)]` -/
def P1968118973960233421.Spec : Prop :=
  ∀ n, P1968118973960233421.a n = A052610 n

end A052610

/-! ## A052610.P11891801140339528992

`A052601(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052610.P11891801140339528992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052601 n + (n : ℤ) * a (n - 1)

end

end A052610.P11891801140339528992

namespace A052610

/-- `A052601(n)+n*a(n-1)` -/
def P11891801140339528992.Spec : Prop :=
  ∀ n, P11891801140339528992.a n = A052610 n

end A052610

/-! ## A052610.P13924553284752106740

`A000142(n)*A077949(n)`
-/

namespace A052610.P13924553284752106740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A077949 n

end

end A052610.P13924553284752106740

namespace A052610

/-- `A000142(n)*A077949(n)` -/
def P13924553284752106740.Spec : Prop :=
  ∀ n, P13924553284752106740.a n = A052610 n

end A052610

/-! ## A052610.P8051386873167598955

`A077974(n)*A133942(n)`
-/

namespace A052610.P8051386873167598955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077974 n * A133942 n

end

end A052610.P8051386873167598955

namespace A052610

/-- `A077974(n)*A133942(n)` -/
def P8051386873167598955.Spec : Prop :=
  ∀ n, P8051386873167598955.a n = A052610 n

end A052610

/-! ## A052610.P9604482693985945451

`∏[A028310(n)]*A077949(n)`
-/

namespace A052610.P9604482693985945451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A077949 n

end

end A052610.P9604482693985945451

namespace A052610

/-- `∏[A028310(n)]*A077949(n)` -/
def P9604482693985945451.Spec : Prop :=
  ∀ n, P9604482693985945451.a n = A052610 n

end A052610

/-! ## A052610.P1058201099162314602

`∑[A052537(n)]*A130534(∑[n])`
-/

namespace A052610.P1058201099162314602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A130534 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A052610.P1058201099162314602

namespace A052610

/-- `∑[A052537(n)]*A130534(∑[n])` -/
def P1058201099162314602.Spec : Prop :=
  ∀ n, P1058201099162314602.a n = A052610 n

end A052610

/-! ## A052610.P16897591251551583726

`A077949(n)*A094587(A000124(n))`
-/

namespace A052610.P16897591251551583726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 n * A094587 (A000124 n).toNat

end

end A052610.P16897591251551583726

namespace A052610

/-- `A077949(n)*A094587(A000124(n))` -/
def P16897591251551583726.Spec : Prop :=
  ∀ n, P16897591251551583726.a n = A052610 n

end A052610

/-!
# A052611: Expansion of e.g.f. 1/(1-2*x-2*x^2).

The programs for A052611, the canonical program `A052611.P1397904844634783383` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052611 has offset 0).

The definition of A052611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052611.P16826934264643141897

`2^n*A080599(n)`
-/

namespace A052611.P16826934264643141897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A080599 n

end

end A052611.P16826934264643141897

namespace A052611

/-- `2^n*A080599(n)` -/
def P16826934264643141897.Spec : Prop :=
  ∀ n, P16826934264643141897.a n = A052611 n

end A052611

/-! ## A052611.P1397904844634783383

`n!*A002605(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052611

/-- `n!*A002605(n+1)` -/
def P1397904844634783383.Spec : Prop :=
  ∀ n, P1397904844634783383.a n = A052611 n

theorem P1397904844634783383.correct : P1397904844634783383.Spec := by
  intro n
  simp only [A052611]

end A052611

/-! ## A052611.P5334074568262429685

`(a(n-1)+(n-1)*a(n-2))*2*n` with `a(0)=1, a(1)=2`
-/

namespace A052611.P5334074568262429685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + ((n : ℤ) - 1) * a (n - 2)) * (2 * n : ℤ)

end

end A052611.P5334074568262429685

namespace A052611

/-- `(a(n-1)+(n-1)*a(n-2))*2*n` -/
def P5334074568262429685.Spec : Prop :=
  ∀ n, P5334074568262429685.a n = A052611 n

end A052611

/-! ## A052611.P11417758978470214219

`n!*∑[A026150(n)]`
-/

namespace A052611.P11417758978470214219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052611.P11417758978470214219

namespace A052611

/-- `n!*∑[A026150(n)]` -/
def P11417758978470214219.Spec : Prop :=
  ∀ n, P11417758978470214219.a n = A052611 n

end A052611

/-! ## A052611.P9853483453034201867

`∑[A026150(n)]*A000142(n)`
-/

namespace A052611.P9853483453034201867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052611.P9853483453034201867

namespace A052611

/-- `∑[A026150(n)]*A000142(n)` -/
def P9853483453034201867.Spec : Prop :=
  ∀ n, P9853483453034201867.a n = A052611 n

end A052611

/-! ## A052611.P979576046843452006

`A000142(n)*A002605(n+1)`
-/

namespace A052611.P979576046843452006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002605 (n + 1)

end

end A052611.P979576046843452006

namespace A052611

/-- `A000142(n)*A002605(n+1)` -/
def P979576046843452006.Spec : Prop :=
  ∀ n, P979576046843452006.a n = A052611 n

end A052611

/-! ## A052611.P17426986265836310133

`∏[A007318(∑[n]+1)]*A002605(n+1)`
-/

namespace A052611.P17426986265836310133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002605 (n + 1)

end

end A052611.P17426986265836310133

namespace A052611

/-- `∏[A007318(∑[n]+1)]*A002605(n+1)` -/
def P17426986265836310133.Spec : Prop :=
  ∀ n, P17426986265836310133.a n = A052611 n

end A052611

/-!
# A052612: Expansion of e.g.f. x*(2+x)/(1-x^2).

The programs for A052612, there is no canonical definition to state claims against.
-/

/-! ## A052612.P4819304663006285176

`lcm(2, n)*abs(1-n)!`
-/

namespace A052612.P4819304663006285176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n * Nat.factorial |1 - (n : ℤ)|.toNat

end

end A052612.P4819304663006285176

/-! ## A052612.P15731026364341048695

`a(n-2)*(n²-n)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052612.P15731026364341048695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 2) * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A052612.P15731026364341048695

/-! ## A052612.P6871558437089493889

`2*C(n, 2)*a(n-2)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052612.P6871558437089493889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  2 * Nat.choose n 2 * a (n - 2)

end

end A052612.P6871558437089493889

/-! ## A052612.P11002038385487089083

`(n-1)*n*a(n-2)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052612.P11002038385487089083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  ((n : ℤ) - 1) * ((n : ℤ) * a (n - 2))

end

end A052612.P11002038385487089083

/-! ## A052612.P15140205454792710402

`A052849(n)/gcd(2, n)`
-/

namespace A052612.P15140205454792710402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052849 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A052612.P15140205454792710402

/-! ## A052612.P16992184426451683298

`lcm(2, n)*A104150(n)`
-/

namespace A052612.P16992184426451683298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) * A104150 n

end

end A052612.P16992184426451683298

/-! ## A052612.P3842719319238790239

`A056182(n)%3*n!`
-/

namespace A052612.P3842719319238790239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056182 n) 3 * (Nat.factorial n : ℤ)

end

end A052612.P3842719319238790239

/-! ## A052612.P16715111427472508247

`A155559(n)%3*n!`
-/

namespace A052612.P16715111427472508247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) 3 * (Nat.factorial n : ℤ)

end

end A052612.P16715111427472508247

/-! ## A052612.P13314263463338662291

`and(n!*Δ[A032766(n)], -n)`
-/

namespace A052612.P13314263463338662291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)) (-(n : ℤ))

end

end A052612.P13314263463338662291

/-! ## A052612.P3698565919635642109

`a(and(1, n))!*A000142(n)` with `a(0)=0, a(1)=2`
-/

namespace A052612.P3698565919635642109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (Nat.factorial (a (Nat.land 1 n)).toNat : ℤ) * A000142 n

end

end A052612.P3698565919635642109

/-!
# A052613: E.g.f. (1-2x)/(1-2x-x^2+x^3).

The programs for A052613, there is no canonical definition to state claims against.
-/

/-! ## A052613.P5622502883687031326

`n!*A187068(2*n)`
-/

namespace A052613.P5622502883687031326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187068 (2 * n)

end

end A052613.P5622502883687031326

/-! ## A052613.P8017349306243977277

`n!*A106803(abs(1-n))`
-/

namespace A052613.P8017349306243977277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A106803 |1 - (n : ℤ)|.toNat

end

end A052613.P8017349306243977277

/-! ## A052613.P14732110238810236501

`A000142(n)*A187068(2*n)`
-/

namespace A052613.P14732110238810236501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A187068 (2 * n)

end

end A052613.P14732110238810236501

/-! ## A052613.P16022634123625965349

`A000142(n)*A106803(abs(1-n))`
-/

namespace A052613.P16022634123625965349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A106803 |1 - (n : ℤ)|.toNat

end

end A052613.P16022634123625965349

/-! ## A052613.P18436349556839175602

`∏[A028310(n)]*A187068(2*n)`
-/

namespace A052613.P18436349556839175602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A187068 (2 * n)

end

end A052613.P18436349556839175602

/-! ## A052613.P3886455078729249960

`∏[A000007(n)+n]*A187068(2*n)`
-/

namespace A052613.P3886455078729249960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A187068 (2 * n)

end

end A052613.P3886455078729249960

/-!
# A052614: E.g.f. 1/((1-x)(1-x^4)).

The programs for A052614, the canonical program `A052614.P16757192831626302724` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052614 has offset 0).

The definition of A052614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052614.P16757192831626302724

`n!*A008621(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052614

/-- `n!*A008621(n)` -/
def P16757192831626302724.Spec : Prop :=
  ∀ n, P16757192831626302724.a n = A052614 n

theorem P16757192831626302724.correct : P16757192831626302724.Spec := by
  intro n
  simp only [A052614]

end A052614

/-! ## A052614.P11684921795329544936

`n!*∑[char[4*n]]`
-/

namespace A052614.P11684921795329544936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052614.P11684921795329544936

namespace A052614

/-- `n!*∑[char[4*n]]` -/
def P11684921795329544936.Spec : Prop :=
  ∀ n, (P11684921795329544936.a n : ℤ) = A052614 n

end A052614

/-! ## A052614.P7040878474129642731

`(floor(n/4)+1)*n!`
-/

namespace A052614.P7040878474129642731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ + 1) * (Nat.factorial n : ℤ)

end

end A052614.P7040878474129642731

namespace A052614

/-- `(floor(n/4)+1)*n!` -/
def P7040878474129642731.Spec : Prop :=
  ∀ n, P7040878474129642731.a n = A052614 n

end A052614

/-! ## A052614.P18373716023330816170

`(floor(n/4)+1)*∏[or(n, char[n^17])]`
-/

namespace A052614.P18373716023330816170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 17

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ + 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052614.P18373716023330816170

namespace A052614

/-- `(floor(n/4)+1)*∏[or(n, char[n^17])]` -/
def P18373716023330816170.Spec : Prop :=
  ∀ n, P18373716023330816170.a n = A052614 n

end A052614

/-! ## A052614.P5078907681015660836

`∑[char[4*n]]*A000142(n)`
-/

namespace A052614.P5078907681015660836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000142 n

end

end A052614.P5078907681015660836

namespace A052614

/-- `∑[char[4*n]]*A000142(n)` -/
def P5078907681015660836.Spec : Prop :=
  ∀ n, P5078907681015660836.a n = A052614 n

end A052614

/-! ## A052614.P1588344784155465915

`(A263313(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A052614.P1588344784155465915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A263313 n + 1) * a (n - 1)

end

end A052614.P1588344784155465915

namespace A052614

/-- `(A263313(n)+1)*a(n-1)` -/
def P1588344784155465915.Spec : Prop :=
  ∀ n, P1588344784155465915.a n = A052614 n

end A052614

/-! ## A052614.P1142758399473242767

`(floor(n/4)+1)*∏[A028310(n)]`
-/

namespace A052614.P1142758399473242767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052614.P1142758399473242767

namespace A052614

/-- `(floor(n/4)+1)*∏[A028310(n)]` -/
def P1142758399473242767.Spec : Prop :=
  ∀ n, P1142758399473242767.a n = A052614 n

end A052614

/-! ## A052614.P505148944588265402

`(floor(n/4)+1)*∏[A007318(∑[n]+1)]`
-/

namespace A052614.P505148944588265402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052614.P505148944588265402

namespace A052614

/-- `(floor(n/4)+1)*∏[A007318(∑[n]+1)]` -/
def P505148944588265402.Spec : Prop :=
  ∀ n, P505148944588265402.a n = A052614 n

end A052614

/-! ## A052614.P15591963499520117403

`A000142(n)*A008621(n)`
-/

namespace A052614.P15591963499520117403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A008621 n

end

end A052614.P15591963499520117403

namespace A052614

/-- `A000142(n)*A008621(n)` -/
def P15591963499520117403.Spec : Prop :=
  ∀ n, P15591963499520117403.a n = A052614 n

end A052614

/-!
# A052615: E.g.f. x^3*(1+2x-2x^2)/(1-x).

The programs for A052615, there is no canonical definition to state claims against.
-/

/-! ## A052615.P7517064670289028618

`lcm(3*∑{p}[1-n, #], n!)`
-/

namespace A052615.P7517064670289028618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)) (Nat.factorial n)

end

end A052615.P7517064670289028618

/-! ## A052615.P5838965097186403371

`lcm(dr(A345954(n)), A000142(n))`
-/

namespace A052615.P5838965097186403371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A345954 n) : ℤ) (A000142 n)

end

end A052615.P5838965097186403371

/-! ## A052615.P2071666527479566839

`lcm(n!, A085780(A085801(n+1)))`
-/

namespace A052615.P2071666527479566839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A085780 (A085801 (n + 1)).toNat)

end

end A052615.P2071666527479566839

/-! ## A052615.P12752023653585832412

`A000142(n)*A308628(A000124(n))`
-/

namespace A052615.P12752023653585832412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A308628 (A000124 n).toNat

end

end A052615.P12752023653585832412

/-! ## A052615.P15595836684361690081

`A000142(n)*A249442(A003586(n+1))`
-/

namespace A052615.P15595836684361690081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A249442 (A003586 (n + 1)).toNat

end

end A052615.P15595836684361690081

/-!
# A052616: Expansion of e.g.f. (3+2*x)/(1-x^2).

The programs for A052616, the canonical program `A052616.P14532181740612281536` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052616 has offset 0).

The definition of A052616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052616.P14532181740612281536

`n!*A176059(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052616

/-- `n!*A176059(n)` -/
def P14532181740612281536.Spec : Prop :=
  ∀ n, P14532181740612281536.a n = A052616 n

theorem P14532181740612281536.correct : P14532181740612281536.Spec := by
  intro n
  simp only [A052616]

end A052616

/-! ## A052616.P2114637325920608303

`(gcd(2, n)+1)*n!`
-/

namespace A052616.P2114637325920608303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1) * Nat.factorial n

end

end A052616.P2114637325920608303

namespace A052616

/-- `(gcd(2, n)+1)*n!` -/
def P2114637325920608303.Spec : Prop :=
  ∀ n, (P2114637325920608303.a n : ℤ) = A052616 n

end A052616

/-! ## A052616.P16016256244127423039

`(3-n%2)*n!`
-/

namespace A052616.P16016256244127423039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ((n % 2 : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

end

end A052616.P16016256244127423039

namespace A052616

/-- `(3-n%2)*n!` -/
def P16016256244127423039.Spec : Prop :=
  ∀ n, P16016256244127423039.a n = A052616 n

theorem P16016256244127423039.correct : P16016256244127423039.Spec := by
  intro n
  simp only [A052616, Nat.add_sub_cancel, A052616.P16016256244127423039.a, A052616.P14532181740612281536.a, A176059, A176059.P3242393250982034900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052616

/-! ## A052616.P11110228759454089635

`(3-and(1, n))*n!`
-/

namespace A052616.P11110228759454089635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.land 1 n : ℤ)) * (Nat.factorial n : ℤ)

end

end A052616.P11110228759454089635

namespace A052616

/-- `(3-and(1, n))*n!` -/
def P11110228759454089635.Spec : Prop :=
  ∀ n, P11110228759454089635.a n = A052616 n

end A052616

/-! ## A052616.P8882593694966079370

`n!*xor(3, and(1, n))`
-/

namespace A052616.P8882593694966079370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.xor 3 (Nat.land 1 n)

end

end A052616.P8882593694966079370

namespace A052616

/-- `n!*xor(3, and(1, n))` -/
def P8882593694966079370.Spec : Prop :=
  ∀ n, (P8882593694966079370.a n : ℤ) = A052616 n

end A052616

/-! ## A052616.P8022481262956795616

`(char[2*n]+2)*n!`
-/

namespace A052616.P8022481262956795616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2) * Nat.factorial n

end

end A052616.P8022481262956795616

namespace A052616

/-- `(char[2*n]+2)*n!` -/
def P8022481262956795616.Spec : Prop :=
  ∀ n, (P8022481262956795616.a n : ℤ) = A052616 n

end A052616

/-! ## A052616.P5562566951524436253

`∑{d}[n+2, n!*C(2, #)]`
-/

namespace A052616.P5562566951524436253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial n * Nat.choose 2 d

end

end A052616.P5562566951524436253

namespace A052616

/-- `∑{d}[n+2, n!*C(2, #)]` -/
def P5562566951524436253.Spec : Prop :=
  ∀ n, (P5562566951524436253.a n : ℤ) = A052616 n

end A052616

/-! ## A052616.P2191390066117983705

`(n²-n)*a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A052616.P2191390066117983705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 2)

end

end A052616.P2191390066117983705

namespace A052616

/-- `(n²-n)*a(n-2)` -/
def P2191390066117983705.Spec : Prop :=
  ∀ n, P2191390066117983705.a n = A052616 n

end A052616

/-! ## A052616.P5972339407558514589

`(n-1)*n*a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A052616.P5972339407558514589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  ((n : ℤ) - 1) * ((n : ℤ) * a (n - 2))

end

end A052616.P5972339407558514589

namespace A052616

/-- `(n-1)*n*a(n-2)` -/
def P5972339407558514589.Spec : Prop :=
  ∀ n, P5972339407558514589.a n = A052616 n

end A052616

/-!
# A052617: E.g.f. (1+x-x^2)/((1-x)(1-2x)).

The programs for A052617, the canonical program `A052617.P9012503568217028669` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052617 has offset 0).

The definition of A052617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052617.P9012503568217028669

`n!*A052549(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052617

/-- `n!*A052549(n)` -/
def P9012503568217028669.Spec : Prop :=
  ∀ n, P9012503568217028669.a n = A052617 n

theorem P9012503568217028669.correct : P9012503568217028669.Spec := by
  intro n
  simp only [A052617]

end A052617

/-! ## A052617.P8734726850174693407

`n!*∑[round(5*2^(n-2))]`
-/

namespace A052617.P8734726850174693407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052617.P8734726850174693407

namespace A052617

/-- `n!*∑[round(5*2^(n-2))]` -/
def P8734726850174693407.Spec : Prop :=
  ∀ n, P8734726850174693407.a n = A052617 n

end A052617

/-! ## A052617.P7115950964480152997

`n!+2*n*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A052617.P7115950964480152997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.factorial n + 2 * (n * a (n - 1))

end

end A052617.P7115950964480152997

namespace A052617

/-- `n!+2*n*a(n-1)` -/
def P7115950964480152997.Spec : Prop :=
  ∀ n, (P7115950964480152997.a n : ℤ) = A052617 n

end A052617

/-! ## A052617.P17467436030925379874

`A000142(n)*A052549(n)`
-/

namespace A052617.P17467436030925379874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052549 n

end

end A052617.P17467436030925379874

namespace A052617

/-- `A000142(n)*A052549(n)` -/
def P17467436030925379874.Spec : Prop :=
  ∀ n, P17467436030925379874.a n = A052617 n

end A052617

/-! ## A052617.P7208453381500740627

`A052549(n)*A094587(∑[n])`
-/

namespace A052617.P7208453381500740627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n * A094587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052617.P7208453381500740627

namespace A052617

/-- `A052549(n)*A094587(∑[n])` -/
def P7208453381500740627.Spec : Prop :=
  ∀ n, P7208453381500740627.a n = A052617 n

end A052617

/-! ## A052617.P11186630250681629418

`∏[A028310(n)]*A052549(n)`
-/

namespace A052617.P11186630250681629418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052549 n

end

end A052617.P11186630250681629418

namespace A052617

/-- `∏[A028310(n)]*A052549(n)` -/
def P11186630250681629418.Spec : Prop :=
  ∀ n, P11186630250681629418.a n = A052617 n

end A052617

/-! ## A052617.P16615711489248830809

`∏[A007318(∑[n]+1)]*A052549(n)`
-/

namespace A052617.P16615711489248830809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052549 n

end

end A052617.P16615711489248830809

namespace A052617

/-- `∏[A007318(∑[n]+1)]*A052549(n)` -/
def P16615711489248830809.Spec : Prop :=
  ∀ n, P16615711489248830809.a n = A052617 n

end A052617

/-! ## A052617.P2367323474341376950

`A029767(n+1)+A002866(n)-A000007(n)`
-/

namespace A052617.P2367323474341376950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 (n + 1) + (A002866 n - A000007 n)

end

end A052617.P2367323474341376950

namespace A052617

/-- `A029767(n+1)+A002866(n)-A000007(n)` -/
def P2367323474341376950.Spec : Prop :=
  ∀ n, P2367323474341376950.a n = A052617 n

end A052617

/-!
# A052618: Expansion of e.g.f. 1/((1-x)^2*(1-x^2)).

The programs for A052618, the canonical program `A052618.P8144645439750494272` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052618 has offset 0).

The definition of A052618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052618.P8144645439750494272

`n!*floor((n+2)/2)*ceil((n+2)/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052618

/-- `n!*floor((n+2)/2)*ceil((n+2)/2)` -/
def P8144645439750494272.Spec : Prop :=
  ∀ n, P8144645439750494272.a n = A052618 n

theorem P8144645439750494272.correct : P8144645439750494272.Spec := by
  intro n
  simp only [A052618]

end A052618

/-! ## A052618.P1914776194658719075

`(1/8*(-1)^-n+1/4*n²+n+7/8)*n!`
-/

namespace A052618.P1914776194658719075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 8 * (-1 : ℚ) ^ (-(n : ℤ) : ℤ) + (1 : ℚ) / 4 * (n ^ 2 : ℚ) + (n : ℚ) + (7 : ℚ) / 8) * (Nat.factorial n : ℚ)

end

end A052618.P1914776194658719075

namespace A052618

/-- `(1/8*(-1)^-n+1/4*n²+n+7/8)*n!` -/
def P1914776194658719075.Spec : Prop :=
  ∀ n, P1914776194658719075.a n = (A052618 n : ℚ)

end A052618

/-! ## A052618.P10131086428841379072

`n!*A002620(n+2)`
-/

namespace A052618.P10131086428841379072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002620 (n + 2)

end

end A052618.P10131086428841379072

namespace A052618

/-- `n!*A002620(n+2)` -/
def P10131086428841379072.Spec : Prop :=
  ∀ n, P10131086428841379072.a n = A052618 n

end A052618

/-! ## A052618.P15609530996674130361

`n!*∑[∑[log2(gcd(2, n))]]`
-/

namespace A052618.P15609530996674130361
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052618.P15609530996674130361

namespace A052618

/-- `n!*∑[∑[log2(gcd(2, n))]]` -/
def P15609530996674130361.Spec : Prop :=
  ∀ n, P15609530996674130361.a n = (A052618 n : ℝ)

end A052618

/-! ## A052618.P5101348930960041444

`n!*∑[∑[char[2*n]]]`
-/

namespace A052618.P5101348930960041444
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052618.P5101348930960041444

namespace A052618

/-- `n!*∑[∑[char[2*n]]]` -/
def P5101348930960041444.Spec : Prop :=
  ∀ n, (P5101348930960041444.a n : ℤ) = A052618 n

end A052618

/-! ## A052618.P4365688825481143128

`(n+1)!+n!*floor((n/2)²)`
-/

namespace A052618.P4365688825481143128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + (Nat.factorial n : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋

end

end A052618.P4365688825481143128

namespace A052618

/-- `(n+1)!+n!*floor((n/2)²)` -/
def P4365688825481143128.Spec : Prop :=
  ∀ n, P4365688825481143128.a n = A052618 n

end A052618

/-! ## A052618.P2444509447561849897

`(n/floor((n+1)/2)+n)*a(n-1)` with `a(0)=1`
-/

namespace A052618.P2444509447561849897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ) + (n : ℚ)) * a (n - 1)

end

end A052618.P2444509447561849897

namespace A052618

/-- `(n/floor((n+1)/2)+n)*a(n-1)` -/
def P2444509447561849897.Spec : Prop :=
  ∀ n, P2444509447561849897.a n = (A052618 n : ℚ)

end A052618

/-! ## A052618.P4340068775143465339

`n*(a(n-1)-a(n-1)/floor(n/2-n))` with `a(0)=1`
-/

namespace A052618.P4340068775143465339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) - a (n - 1) / (⌊(n : ℚ) / 2 - (n : ℚ)⌋ : ℚ))

end

end A052618.P4340068775143465339

namespace A052618

/-- `n*(a(n-1)-a(n-1)/floor(n/2-n))` -/
def P4340068775143465339.Spec : Prop :=
  ∀ n, P4340068775143465339.a n = (A052618 n : ℚ)

end A052618

/-! ## A052618.P8096842316068773890

`n*a(n-1)+n*a(n-1)/∑[n%2]` with `a(0)=1`
-/

namespace A052618.P8096842316068773890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) + (n : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A052618.P8096842316068773890

namespace A052618

/-- `n*a(n-1)+n*a(n-1)/∑[n%2]` -/
def P8096842316068773890.Spec : Prop :=
  ∀ n, P8096842316068773890.a n = (A052618 n : ℚ)

end A052618

/-! ## A052618.P5557347338777838845

`A052558(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052618.P5557347338777838845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052558 n + (n : ℤ) * a (n - 1)

end

end A052618.P5557347338777838845

namespace A052618

/-- `A052558(n)+n*a(n-1)` -/
def P5557347338777838845.Spec : Prop :=
  ∀ n, P5557347338777838845.a n = A052618 n

end A052618

/-!
# A052619: Expansion of e.g.f. 3*x^3/(1-x).

The programs for A052619, there is no canonical definition to state claims against.
-/

/-! ## A052619.P415467317541381491

`9*floor(n!/3)`
-/

namespace A052619.P415467317541381491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌊(Nat.factorial n : ℚ) / 3⌋

end

end A052619.P415467317541381491

/-! ## A052619.P207596812632060805

`lcm(3, or(1, n!))-3`
-/

namespace A052619.P207596812632060805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (Nat.lor 1 (Nat.factorial n)) : ℤ) - 3

end

end A052619.P207596812632060805

/-! ## A052619.P2042772492518268133

`3*lcm(n!, C(n, 3))`
-/

namespace A052619.P2042772492518268133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm (Nat.factorial n) (Nat.choose n 3)

end

end A052619.P2042772492518268133

/-! ## A052619.P109659196351172482

`n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=18`
-/

namespace A052619.P109659196351172482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 18] fun n a =>
  n * a (n - 1)

end

end A052619.P109659196351172482

/-! ## A052619.P16682732199193780411

`3*and(2*(2-n), n!)`
-/

namespace A052619.P16682732199193780411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (2 * (2 - (n : ℤ))) (Nat.factorial n : ℤ)

end

end A052619.P16682732199193780411

/-! ## A052619.P14550215812816490830

`lcm(3*n!, ∑{p}[1-n, #])`
-/

namespace A052619.P14550215812816490830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 * Nat.factorial n) (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A052619.P14550215812816490830

/-! ## A052619.P9311113584199840804

`lcm(3*n!, A007531(n))`
-/

namespace A052619.P9311113584199840804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * Nat.factorial n : ℤ) (A007531 n)

end

end A052619.P9311113584199840804

/-! ## A052619.P543510204370023871

`A052637(n)%A052604(n)`
-/

namespace A052619.P543510204370023871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052637 n) (A052604 n)

end

end A052619.P543510204370023871

/-!
# A052620: E.g.f. (1-x)^2/(1-3x+x^3).

The programs for A052620, the canonical program `A052620.P836159090083198785` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052620 has offset 0).

The definition of A052620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052620.P836159090083198785

`n!*A052545(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052620

/-- `n!*A052545(n)` -/
def P836159090083198785.Spec : Prop :=
  ∀ n, P836159090083198785.a n = A052620 n

theorem P836159090083198785.correct : P836159090083198785.Spec := by
  intro n
  simp only [A052620]

end A052620

/-! ## A052620.P13875825467683769341

`A000142(n)*A052545(n)`
-/

namespace A052620.P13875825467683769341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052545 n

end

end A052620.P13875825467683769341

namespace A052620

/-- `A000142(n)*A052545(n)` -/
def P13875825467683769341.Spec : Prop :=
  ∀ n, P13875825467683769341.a n = A052620 n

end A052620

/-! ## A052620.P10656701632507952790

`∏[A028310(n)]*A052545(n)`
-/

namespace A052620.P10656701632507952790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052545 n

end

end A052620.P10656701632507952790

namespace A052620

/-- `∏[A028310(n)]*A052545(n)` -/
def P10656701632507952790.Spec : Prop :=
  ∀ n, P10656701632507952790.a n = A052620 n

end A052620

/-! ## A052620.P3000212846376976960

`∏[A151933(n)+n]*A052545(n)`
-/

namespace A052620.P3000212846376976960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052545 n

end

end A052620.P3000212846376976960

namespace A052620

/-- `∏[A151933(n)+n]*A052545(n)` -/
def P3000212846376976960.Spec : Prop :=
  ∀ n, P3000212846376976960.a n = A052620 n

end A052620

/-! ## A052620.P4198038624892825773

`A052545(n)*A090657(A000096(n))`
-/

namespace A052620.P4198038624892825773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n * A090657 (A000096 n).toNat

end

end A052620.P4198038624892825773

namespace A052620

/-- `A052545(n)*A090657(A000096(n))` -/
def P4198038624892825773.Spec : Prop :=
  ∀ n, P4198038624892825773.a n = A052620 n

end A052620

/-! ## A052620.P16076816099135857035

`A052545(n)/A052536(n)*A052693(n)`
-/

namespace A052620.P16076816099135857035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052545 n : ℚ) / (A052536 n : ℚ) * (A052693 n : ℚ)

end

end A052620.P16076816099135857035

namespace A052620

/-- `A052545(n)/A052536(n)*A052693(n)` -/
def P16076816099135857035.Spec : Prop :=
  ∀ n, P16076816099135857035.a n = (A052620 n : ℚ)

end A052620

/-!
# A052621: E.g.f. (2+x+x^2+x^3)/(1-x^4).

The programs for A052621, the canonical program `A052621.P9239824465106200272` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052621 has offset 0).

The definition of A052621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052621.P9239824465106200272

`n!*A177704(n+3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052621

/-- `n!*A177704(n+3)` -/
def P9239824465106200272.Spec : Prop :=
  ∀ n, P9239824465106200272.a n = A052621 n

theorem P9239824465106200272.correct : P9239824465106200272.Spec := by
  intro n
  simp only [A052621]

end A052621

/-! ## A052621.P16782819850456756743

`(char[4*n]+1)*n!`
-/

namespace A052621.P16782819850456756743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * Nat.factorial n

end

end A052621.P16782819850456756743

namespace A052621

/-- `(char[4*n]+1)*n!` -/
def P16782819850456756743.Spec : Prop :=
  ∀ n, (P16782819850456756743.a n : ℤ) = A052621 n

end A052621

/-! ## A052621.P13681023588563205951

`n!*Δ[comp[5*n+1]]`
-/

namespace A052621.P13681023588563205951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A052621.P13681023588563205951

namespace A052621

/-- `n!*Δ[comp[5*n+1]]` -/
def P13681023588563205951.Spec : Prop :=
  ∀ n, P13681023588563205951.a n = A052621 n

end A052621

/-! ## A052621.P18192442623846347704

`A000142(n)*A177704(n+3)`
-/

namespace A052621.P18192442623846347704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A177704 (n + 3)

end

end A052621.P18192442623846347704

namespace A052621

/-- `A000142(n)*A177704(n+3)` -/
def P18192442623846347704.Spec : Prop :=
  ∀ n, P18192442623846347704.a n = A052621 n

end A052621

/-! ## A052621.P18268171907643505612

`∏[A028310(n)]*A177704(n+3)`
-/

namespace A052621.P18268171907643505612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A177704 (n + 3)

end

end A052621.P18268171907643505612

namespace A052621

/-- `∏[A028310(n)]*A177704(n+3)` -/
def P18268171907643505612.Spec : Prop :=
  ∀ n, P18268171907643505612.a n = A052621 n

end A052621

/-! ## A052621.P1001709492936481535

`Δ[A057361(2*n+3)]*A000142(n)`
-/

namespace A052621.P1001709492936481535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052621.P1001709492936481535

namespace A052621

/-- `Δ[A057361(2*n+3)]*A000142(n)` -/
def P1001709492936481535.Spec : Prop :=
  ∀ n, P1001709492936481535.a n = A052621 n

end A052621

/-! ## A052621.P3227465356721316511

`gcd(∏[n+3]+n!, (n+2)!)`
-/

namespace A052621.P3227465356721316511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∏ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n) (Nat.factorial (n + 2))

end

end A052621.P3227465356721316511

namespace A052621

/-- `gcd(∏[n+3]+n!, (n+2)!)` -/
def P3227465356721316511.Spec : Prop :=
  ∀ n, (P3227465356721316511.a n : ℤ) = A052621 n

end A052621

/-!
# A052622: E.g.f. (1-x^2)/(1-2x-x^2).

The programs for A052622, the canonical program `A052622.P7915650960527604124` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052622 has offset 0).

The definition of A052622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052622.P7915650960527604124

`n!*A052542(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052622

/-- `n!*A052542(n)` -/
def P7915650960527604124.Spec : Prop :=
  ∀ n, P7915650960527604124.a n = A052622 n

theorem P7915650960527604124.correct : P7915650960527604124.Spec := by
  intro n
  simp only [A052622]

end A052622

/-! ## A052622.P12337504487090068669

`n*(2*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A052622.P12337504487090068669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  (n : ℤ) * (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052622.P12337504487090068669

namespace A052622

/-- `n*(2*a(n-1)+(n-1)*a(n-2))` -/
def P12337504487090068669.Spec : Prop :=
  ∀ n, P12337504487090068669.a n = A052622 n

end A052622

/-! ## A052622.P12925867231995224039

`A000142(n)*A052542(n)`
-/

namespace A052622.P12925867231995224039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052542 n

end

end A052622.P12925867231995224039

namespace A052622

/-- `A000142(n)*A052542(n)` -/
def P12925867231995224039.Spec : Prop :=
  ∀ n, P12925867231995224039.a n = A052622 n

end A052622

/-! ## A052622.P14778411723562053921

`∏[A028310(n)]*A052542(n)`
-/

namespace A052622.P14778411723562053921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052542 n

end

end A052622.P14778411723562053921

namespace A052622

/-- `∏[A028310(n)]*A052542(n)` -/
def P14778411723562053921.Spec : Prop :=
  ∀ n, P14778411723562053921.a n = A052622 n

end A052622

/-! ## A052622.P2757405856800016284

`A000142(n)*A082766(2*n+1)`
-/

namespace A052622.P2757405856800016284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A082766 (2 * n + 1)

end

end A052622.P2757405856800016284

namespace A052622

/-- `A000142(n)*A082766(2*n+1)` -/
def P2757405856800016284.Spec : Prop :=
  ∀ n, P2757405856800016284.a n = A052622 n

end A052622

/-!
# A052623: E.g.f. x(1-x)^2/(1-3x+x^2).

The programs for A052623, there is no canonical definition to state claims against.
-/

/-! ## A052623.P10712618366870274880

`n*A052567(abs(1-n))`
-/

namespace A052623.P10712618366870274880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052567 |1 - (n : ℤ)|.toNat

end

end A052623.P10712618366870274880

/-! ## A052623.P16967950404895026912

`n!*A000045(comp[2*n+3])`
-/

namespace A052623.P16967950404895026912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A052623.P16967950404895026912

/-! ## A052623.P6342953399772861260

`A000045(comp[2*n+3])*A000142(n)`
-/

namespace A052623.P6342953399772861260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A000142 n

end

end A052623.P6342953399772861260

/-! ## A052623.P2149004175366839934

`A000045(A004275(n))*∏[A028310(n)]`
-/

namespace A052623.P2149004175366839934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004275 n).toNat * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052623.P2149004175366839934

/-! ## A052623.P18032704092688090639

`record[A000045(n)*A000142(A003602(n+1))]`
-/

namespace A052623.P18032704092688090639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000142 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052623.P18032704092688090639

/-! ## A052623.P6757369747764185294

`A000045(A004275(n))*A130534(A000217(n))`
-/

namespace A052623.P6757369747764185294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004275 n).toNat * A130534 (A000217 n).toNat

end

end A052623.P6757369747764185294

/-!
# A052624: E.g.f. (1+x^2-2x^3+x^4)/(1-x)^2.

The programs for A052624, there is no canonical definition to state claims against.
-/

/-! ## A052624.P16150173285783844355

`(n+1)!+2*char[2]`
-/

namespace A052624.P16150173285783844355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + 2 * (if ∃ j, f1 j = n then 1 else 0)

end

end A052624.P16150173285783844355

/-! ## A052624.P7925644453113305695

`∏[n+1]+2*char[2]`
-/

namespace A052624.P7925644453113305695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 * (if ∃ j, f2 j = n then 1 else 0)

end

end A052624.P7925644453113305695

/-! ## A052624.P4519026669151740366

`xor(n, or(n, (n+1)!+n))`
-/

namespace A052624.P4519026669151740366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (Nat.factorial (n + 1) + n))

end

end A052624.P4519026669151740366

/-! ## A052624.P6688661372562634712

`record[n*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=8, a(3)=6`
-/

namespace A052624.P6688661372562634712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 6] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052624.P6688661372562634712

/-! ## A052624.P10912645106564099906

`and((n+1)!+n, -(n+1))`
-/

namespace A052624.P10912645106564099906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (n + 1) + n : ℤ) (-(n + 1 : ℤ))

end

end A052624.P10912645106564099906

/-! ## A052624.P15396920561889697973

`and(∏[n+1]+n, -(n+1))`
-/

namespace A052624.P15396920561889697973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) (-(n + 1 : ℤ))

end

end A052624.P15396920561889697973

/-! ## A052624.P15160342696901037207

`floor((n+1)!+acot(n-2)²)`
-/

namespace A052624.P15160342696901037207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℝ) + SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ) ^ 2⌋

end

end A052624.P15160342696901037207

/-! ## A052624.P7664261144237491775

`abs(or(n, (n+1)!+n)-n)`
-/

namespace A052624.P7664261144237491775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor n (Nat.factorial (n + 1) + n) : ℤ) - (n : ℤ)|

end

end A052624.P7664261144237491775

/-! ## A052624.P13964561670736664598

`a(n-1)*(n+1)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=24`
-/

namespace A052624.P13964561670736664598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 24] fun n a =>
  a (n - 1) * (n + 1)

end

end A052624.P13964561670736664598

/-! ## A052624.P10108352587905450490

`((n+1)%a(n-1))!` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A052624.P10108352587905450490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  Nat.factorial ((n + 1) % a (n - 1))

end

end A052624.P10108352587905450490

/-!
# A052625: E.g.f. (1-x)^2/(1-2x+x^2-x^3).

The programs for A052625, the canonical program `A052625.P17086351383981128262` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052625 has offset 0).

The definition of A052625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052625.P17086351383981128262

`(-1)^n*n!*A099529(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052625

/-- `(-1)^n*n!*A099529(n)` -/
def P17086351383981128262.Spec : Prop :=
  ∀ n, P17086351383981128262.a n = A052625 n

theorem P17086351383981128262.correct : P17086351383981128262.Spec := by
  intro n
  simp only [A052625]

end A052625

/-! ## A052625.P10635526391256706362

`n!*Δ[A005251(n)]`
-/

namespace A052625.P10635526391256706362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052625.P10635526391256706362

namespace A052625

/-- `n!*Δ[A005251(n)]` -/
def P10635526391256706362.Spec : Prop :=
  ∀ n, P10635526391256706362.a n = A052625 n

end A052625

/-! ## A052625.P1239453895149339227

`n!*A000931(2*n)`
-/

namespace A052625.P1239453895149339227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000931 (2 * n)

end

end A052625.P1239453895149339227

namespace A052625

/-- `n!*A000931(2*n)` -/
def P1239453895149339227.Spec : Prop :=
  ∀ n, P1239453895149339227.a n = A052625 n

end A052625

/-! ## A052625.P8213042426316310505

`Δ[A005251(n)]*A000142(n)`
-/

namespace A052625.P8213042426316310505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052625.P8213042426316310505

namespace A052625

/-- `Δ[A005251(n)]*A000142(n)` -/
def P8213042426316310505.Spec : Prop :=
  ∀ n, P8213042426316310505.a n = A052625 n

end A052625

/-! ## A052625.P13881230336198858194

`A000142(n)*A000931(2*n)`
-/

namespace A052625.P13881230336198858194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000931 (2 * n)

end

end A052625.P13881230336198858194

namespace A052625

/-- `A000142(n)*A000931(2*n)` -/
def P13881230336198858194.Spec : Prop :=
  ∀ n, P13881230336198858194.a n = A052625 n

end A052625

/-! ## A052625.P9821479601863801405

`Δ[A003422(n)]*A000931(2*n)`
-/

namespace A052625.P9821479601863801405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000931 (2 * n)

end

end A052625.P9821479601863801405

namespace A052625

/-- `Δ[A003422(n)]*A000931(2*n)` -/
def P9821479601863801405.Spec : Prop :=
  ∀ n, P9821479601863801405.a n = A052625 n

end A052625

/-! ## A052625.P3308432289143336717

`∏[A101279(2*n+1)]*A000931(2*n)`
-/

namespace A052625.P3308432289143336717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000931 (2 * n)

end

end A052625.P3308432289143336717

namespace A052625

/-- `∏[A101279(2*n+1)]*A000931(2*n)` -/
def P3308432289143336717.Spec : Prop :=
  ∀ n, P3308432289143336717.a n = A052625 n

end A052625

/-!
# A052626: (2^n+2)*n!.

The programs for A052626, the canonical program `A052626.P13392828055149183403` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052626 has offset 0).

The definition of A052626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n+2)*n!` (program `A052626.P13392828055149183403`, by `A052626.P13392828055149183403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052626.P13392828055149183403

`(2^n+2)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052626

/-- `(2^n+2)*n!` -/
def P13392828055149183403.Spec : Prop :=
  ∀ n, (P13392828055149183403.a n : ℤ) = A052626 n

theorem P13392828055149183403.correct : P13392828055149183403.Spec := by
  intro n
  simp only [A052626]

end A052626

/-! ## A052626.P10218416797124479699

`∏[floor(2/acot(n))]+2*n!`
-/

namespace A052626.P10218416797124479699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (2 * Nat.factorial n : ℤ)

end

end A052626.P10218416797124479699

namespace A052626

/-- `∏[floor(2/acot(n))]+2*n!` -/
def P10218416797124479699.Spec : Prop :=
  ∀ n, P10218416797124479699.a n = A052626 n

end A052626

/-! ## A052626.P4568695648275522192

`(2^n+2)*∏[ceil(abs(γ-n))]`
-/

namespace A052626.P4568695648275522192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052626.P4568695648275522192

namespace A052626

/-- `(2^n+2)*∏[ceil(abs(γ-n))]` -/
def P4568695648275522192.Spec : Prop :=
  ∀ n, P4568695648275522192.a n = A052626 n

end A052626

/-! ## A052626.P17406275185135348036

`A052561(n)+n!`
-/

namespace A052626.P17406275185135348036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052561 n + (Nat.factorial n : ℤ)

end

end A052626.P17406275185135348036

namespace A052626

/-- `A052561(n)+n!` -/
def P17406275185135348036.Spec : Prop :=
  ∀ n, P17406275185135348036.a n = A052626 n

theorem P17406275185135348036.correct : P17406275185135348036.Spec := by
  intro n
  simp only [A052626, Nat.add_sub_cancel, A052626.P17406275185135348036.a, A052626.P13392828055149183403.a, A052561, A052561.P15030560017801226101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052626

/-! ## A052626.P3259720041349245569

`n!+n!*A000051(n)`
-/

namespace A052626.P3259720041349245569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (Nat.factorial n : ℤ) * A000051 n

end

end A052626.P3259720041349245569

namespace A052626

/-- `n!+n!*A000051(n)` -/
def P3259720041349245569.Spec : Prop :=
  ∀ n, P3259720041349245569.a n = A052626 n

theorem P3259720041349245569.correct : P3259720041349245569.Spec := by
  intro n
  simp only [A052626, Nat.add_sub_cancel, A052626.P3259720041349245569.a, A052626.P13392828055149183403.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052626

/-! ## A052626.P1862339574656042383

`A000165(n)+∏[abs(1-n)+1]`
-/

namespace A052626.P1862339574656042383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052626.P1862339574656042383

namespace A052626

/-- `A000165(n)+∏[abs(1-n)+1]` -/
def P1862339574656042383.Spec : Prop :=
  ∀ n, P1862339574656042383.a n = A052626 n

end A052626

/-! ## A052626.P15933555983986755511

`A052561(n)+A000142(n)`
-/

namespace A052626.P15933555983986755511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052561 n + A000142 n

end

end A052626.P15933555983986755511

namespace A052626

/-- `A052561(n)+A000142(n)` -/
def P15933555983986755511.Spec : Prop :=
  ∀ n, P15933555983986755511.a n = A052626 n

theorem P15933555983986755511.correct : P15933555983986755511.Spec := by
  intro n
  simp only [A052626, Nat.add_sub_cancel, A052626.P15933555983986755511.a, A052626.P13392828055149183403.a, A000142, A000142.P3272619076580183195.a, A052561, A052561.P15030560017801226101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052626

/-! ## A052626.P15012011101862583202

`2*A052584(n)-A000007(n)`
-/

namespace A052626.P15012011101862583202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052584 n - A000007 n

end

end A052626.P15012011101862583202

namespace A052626

/-- `2*A052584(n)-A000007(n)` -/
def P15012011101862583202.Spec : Prop :=
  ∀ n, P15012011101862583202.a n = A052626 n

end A052626

/-! ## A052626.P2088820940947809299

`record[(A130321(n)+2)*A094587(n)]`
-/

namespace A052626.P2088820940947809299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n + 2) * A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052626.P2088820940947809299

namespace A052626

/-- `record[(A130321(n)+2)*A094587(n)]` -/
def P2088820940947809299.Spec : Prop :=
  ∀ n, P2088820940947809299.a n = A052626 n

end A052626

/-! ## A052626.P11285791256785315464

`record[(A137688(n)+2)*A094587(n)]`
-/

namespace A052626.P11285791256785315464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A137688 n + 2) * A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052626.P11285791256785315464

namespace A052626

/-- `record[(A137688(n)+2)*A094587(n)]` -/
def P11285791256785315464.Spec : Prop :=
  ∀ n, P11285791256785315464.a n = A052626 n

end A052626

/-!
# A052627: E.g.f. (1-x)/(1-x-x^5).

The programs for A052627, the canonical program `A052627.P669334842084369266` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052627 has offset 0).

The definition of A052627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052627.P669334842084369266

`n!*A017899(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052627

/-- `n!*A017899(n)` -/
def P669334842084369266.Spec : Prop :=
  ∀ n, P669334842084369266.a n = A052627 n

theorem P669334842084369266.correct : P669334842084369266.Spec := by
  intro n
  simp only [A052627]

end A052627

/-! ## A052627.P17320958209274750087

`A000142(n)*A017899(n)`
-/

namespace A052627.P17320958209274750087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A017899 n

end

end A052627.P17320958209274750087

namespace A052627

/-- `A000142(n)*A017899(n)` -/
def P17320958209274750087.Spec : Prop :=
  ∀ n, P17320958209274750087.a n = A052627 n

end A052627

/-! ## A052627.P16292023771716729292

`∏[A028310(n)]*A017899(n)`
-/

namespace A052627.P16292023771716729292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A017899 n

end

end A052627.P16292023771716729292

namespace A052627

/-- `∏[A028310(n)]*A017899(n)` -/
def P16292023771716729292.Spec : Prop :=
  ∀ n, P16292023771716729292.a n = A052627 n

end A052627

/-! ## A052627.P7196629099998691397

`A017899(n)*A104150(n+1)`
-/

namespace A052627.P7196629099998691397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n * A104150 (n + 1)

end

end A052627.P7196629099998691397

namespace A052627

/-- `A017899(n)*A104150(n+1)` -/
def P7196629099998691397.Spec : Prop :=
  ∀ n, P7196629099998691397.a n = A052627 n

end A052627

/-! ## A052627.P12957512700221334365

`A017899(n)*A019576(A000124(n))`
-/

namespace A052627.P12957512700221334365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n * A019576 (A000124 n).toNat

end

end A052627.P12957512700221334365

namespace A052627

/-- `A017899(n)*A019576(A000124(n))` -/
def P12957512700221334365.Spec : Prop :=
  ∀ n, P12957512700221334365.a n = A052627 n

end A052627

/-!
# A052628: Expansion of e.g.f. (2+x^3-x^4)/(1-x).

The programs for A052628, there is no canonical definition to state claims against.
-/

/-! ## A052628.P4770703232431886082

`(char[3]+2)*n!`
-/

namespace A052628.P4770703232431886082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2) * Nat.factorial n

end

end A052628.P4770703232431886082

/-! ## A052628.P14426937337707945684

`A052565(n)+n!`
-/

namespace A052628.P14426937337707945684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052565 n + (Nat.factorial n : ℤ)

end

end A052628.P14426937337707945684

/-! ## A052628.P16344788766841101470

`abs(1-A052642(n))+1`
-/

namespace A052628.P16344788766841101470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A052642 n| + 1

end

end A052628.P16344788766841101470

/-! ## A052628.P5152223089709108336

`A052565(n)+A000142(n)`
-/

namespace A052628.P5152223089709108336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052565 n + A000142 n

end

end A052628.P5152223089709108336

/-! ## A052628.P336331565710495578

`A052565(n)+A052560(n)/3`
-/

namespace A052628.P336331565710495578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052565 n : ℚ) + (A052560 n : ℚ) / 3

end

end A052628.P336331565710495578

/-! ## A052628.P1554352077322994414

`A000142(n)*A020639(A046798(n))`
-/

namespace A052628.P1554352077322994414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A020639 (A046798 n).toNat

end

end A052628.P1554352077322994414

/-! ## A052628.P1065099129863767294

`(A014973(A005451(n+1))+1)*A000142(n)`
-/

namespace A052628.P1065099129863767294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014973 (A005451 (n + 1)).toNat + 1) * A000142 n

end

end A052628.P1065099129863767294

/-! ## A052628.P2983994442273308908

`A000142(n)+A005451(n+1)*A092043(n+1)`
-/

namespace A052628.P2983994442273308908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A005451 (n + 1) * A092043 (n + 1)

end

end A052628.P2983994442273308908

/-!
# A052629: Expansion of e.g.f. (1-x)/(1-5x+3x^2).

The programs for A052629, the canonical program `A052629.P13429982903937823352` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052629 has offset 0).

The definition of A052629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018902, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052629.P13429982903937823352

`n!*A018902(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052629

/-- `n!*A018902(n)` -/
def P13429982903937823352.Spec : Prop :=
  ∀ n, P13429982903937823352.a n = A052629 n

theorem P13429982903937823352.correct : P13429982903937823352.Spec := by
  intro n
  simp only [A052629]

end A052629

/-! ## A052629.P6930190413602456790

`n!*A095940(n+1)`
-/

namespace A052629.P6930190413602456790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A095940 (n + 1)

end

end A052629.P6930190413602456790

namespace A052629

/-- `n!*A095940(n+1)` -/
def P6930190413602456790.Spec : Prop :=
  ∀ n, P6930190413602456790.a n = A052629 n

end A052629

/-! ## A052629.P13788157951645503236

`A000142(n)*A018902(n)`
-/

namespace A052629.P13788157951645503236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A018902 n

end

end A052629.P13788157951645503236

namespace A052629

/-- `A000142(n)*A018902(n)` -/
def P13788157951645503236.Spec : Prop :=
  ∀ n, P13788157951645503236.a n = A052629 n

end A052629

/-! ## A052629.P1556054014753184773

`∑[A095934(n)]*A000142(n)`
-/

namespace A052629.P1556054014753184773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052629.P1556054014753184773

namespace A052629

/-- `∑[A095934(n)]*A000142(n)` -/
def P1556054014753184773.Spec : Prop :=
  ∀ n, P1556054014753184773.a n = A052629 n

end A052629

/-! ## A052629.P6669179839205075324

`A081704(n+1)/3*A000142(n)`
-/

namespace A052629.P6669179839205075324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081704 (n + 1) : ℚ) / 3 * (A000142 n : ℚ)

end

end A052629.P6669179839205075324

namespace A052629

/-- `A081704(n+1)/3*A000142(n)` -/
def P6669179839205075324.Spec : Prop :=
  ∀ n, P6669179839205075324.a n = (A052629 n : ℚ)

end A052629

/-! ## A052629.P17556833043602004752

`A018902(n)*A021010(A000096(n))`
-/

namespace A052629.P17556833043602004752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n * A021010 (A000096 n).toNat

end

end A052629.P17556833043602004752

namespace A052629

/-- `A018902(n)*A021010(A000096(n))` -/
def P17556833043602004752.Spec : Prop :=
  ∀ n, P17556833043602004752.a n = A052629 n

end A052629

/-! ## A052629.P5875017583763432022

`A018902(n)*A047920(A000217(n))`
-/

namespace A052629.P5875017583763432022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n * A047920 (A000217 n).toNat

end

end A052629.P5875017583763432022

namespace A052629

/-- `A018902(n)*A047920(A000217(n))` -/
def P5875017583763432022.Spec : Prop :=
  ∀ n, P5875017583763432022.a n = A052629 n

end A052629

/-!
# A052630: E.g.f. 1/(1-4x-x^2).

The programs for A052630, the canonical program `A052630.P16584179220565295272` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052630 has offset 0).

The definition of A052630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052630.P16584179220565295272

`n!*A001076(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052630

/-- `n!*A001076(n+1)` -/
def P16584179220565295272.Spec : Prop :=
  ∀ n, P16584179220565295272.a n = A052630 n

theorem P16584179220565295272.correct : P16584179220565295272.Spec := by
  intro n
  simp only [A052630]

end A052630

/-! ## A052630.P15277183457264982575

`n*(4*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A052630.P15277183457264982575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n : ℤ) * (4 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052630.P15277183457264982575

namespace A052630

/-- `n*(4*a(n-1)+(n-1)*a(n-2))` -/
def P15277183457264982575.Spec : Prop :=
  ∀ n, P15277183457264982575.a n = A052630 n

end A052630

/-! ## A052630.P18261411941687936938

`n!*∑[A033887(n)]`
-/

namespace A052630.P18261411941687936938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052630.P18261411941687936938

namespace A052630

/-- `n!*∑[A033887(n)]` -/
def P18261411941687936938.Spec : Prop :=
  ∀ n, P18261411941687936938.a n = A052630 n

end A052630

/-! ## A052630.P3583484908393459517

`n!*Δ[A049652(n)]`
-/

namespace A052630.P3583484908393459517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052630.P3583484908393459517

namespace A052630

/-- `n!*Δ[A049652(n)]` -/
def P3583484908393459517.Spec : Prop :=
  ∀ n, P3583484908393459517.a n = A052630 n

end A052630

/-! ## A052630.P1918502582400432781

`n!*record[A275858(n)]`
-/

namespace A052630.P1918502582400432781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052630.P1918502582400432781

namespace A052630

/-- `n!*record[A275858(n)]` -/
def P1918502582400432781.Spec : Prop :=
  ∀ n, P1918502582400432781.a n = A052630 n

end A052630

/-! ## A052630.P13177486367699776654

`n!*A093040(3*n+1)`
-/

namespace A052630.P13177486367699776654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A093040 (3 * n + 1)

end

end A052630.P13177486367699776654

namespace A052630

/-- `n!*A093040(3*n+1)` -/
def P13177486367699776654.Spec : Prop :=
  ∀ n, P13177486367699776654.a n = A052630 n

end A052630

/-! ## A052630.P4315545714123691761

`n!*A167808(3*(n+1))`
-/

namespace A052630.P4315545714123691761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A167808 (3 * (n + 1))

end

end A052630.P4315545714123691761

namespace A052630

/-- `n!*A167808(3*(n+1))` -/
def P4315545714123691761.Spec : Prop :=
  ∀ n, P4315545714123691761.a n = A052630 n

end A052630

/-! ## A052630.P17065828714590999874

`n!*∑[A000045(3*n+1)]`
-/

namespace A052630.P17065828714590999874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052630.P17065828714590999874

namespace A052630

/-- `n!*∑[A000045(3*n+1)]` -/
def P17065828714590999874.Spec : Prop :=
  ∀ n, P17065828714590999874.a n = A052630 n

end A052630

/-! ## A052630.P3726767592962126928

`n!*A000045(3*(n+1))/2`
-/

namespace A052630.P3726767592962126928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A000045 (3 * (n + 1)) : ℚ) / 2

end

end A052630.P3726767592962126928

namespace A052630

/-- `n!*A000045(3*(n+1))/2` -/
def P3726767592962126928.Spec : Prop :=
  ∀ n, P3726767592962126928.a n = (A052630 n : ℚ)

end A052630

/-!
# A052631: a(n) = n!*Pell(n) (or n!*A000129(n)).

The programs for A052631, the canonical program `A052631.P4676402812199021169` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052631 has offset 0).

The definition of A052631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000129(n)` (program `A052631.P4676402812199021169`, by `A052631.P4676402812199021169.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052631.P4676402812199021169

`n!*A000129(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052631

/-- `n!*A000129(n)` -/
def P4676402812199021169.Spec : Prop :=
  ∀ n, P4676402812199021169.a n = A052631 n

theorem P4676402812199021169.correct : P4676402812199021169.Spec := by
  intro n
  simp only [A052631]

end A052631

/-! ## A052631.P7710788334130749301

`n*(2*a(n-1)+(n-1)*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A052631.P7710788334130749301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * (2 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052631.P7710788334130749301

namespace A052631

/-- `n*(2*a(n-1)+(n-1)*a(n-2))` -/
def P7710788334130749301.Spec : Prop :=
  ∀ n, P7710788334130749301.a n = A052631 n

end A052631

/-! ## A052631.P8525924547233145157

`sqrt(A079291(n))*n!`
-/

namespace A052631.P8525924547233145157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A079291 n : ℝ) * (Nat.factorial n : ℝ)

end

end A052631.P8525924547233145157

namespace A052631

/-- `sqrt(A079291(n))*n!` -/
def P8525924547233145157.Spec : Prop :=
  ∀ n, P8525924547233145157.a n = (A052631 n : ℝ)

end A052631

/-! ## A052631.P2855989316913832383

`n!*Δ[A171842(n)]`
-/

namespace A052631.P2855989316913832383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052631.P2855989316913832383

namespace A052631

/-- `n!*Δ[A171842(n)]` -/
def P2855989316913832383.Spec : Prop :=
  ∀ n, P2855989316913832383.a n = A052631 n

end A052631

/-! ## A052631.P2282217910902895663

`ceil((A052622(n)-1)/2)`
-/

namespace A052631.P2282217910902895663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052622 n - 1 : ℚ) / 2⌉

end

end A052631.P2282217910902895663

namespace A052631

/-- `ceil((A052622(n)-1)/2)` -/
def P2282217910902895663.Spec : Prop :=
  ∀ n, P2282217910902895663.a n = A052631 n

end A052631

/-! ## A052631.P489222310188279725

`n*A052555(abs(1-n))`
-/

namespace A052631.P489222310188279725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052555 |1 - (n : ℤ)|.toNat

end

end A052631.P489222310188279725

namespace A052631

/-- `n*A052555(abs(1-n))` -/
def P489222310188279725.Spec : Prop :=
  ∀ n, P489222310188279725.a n = A052631 n

end A052631

/-! ## A052631.P4513267587237232835

`(A174191(n)-1)*n!`
-/

namespace A052631.P4513267587237232835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174191 n - 1) * (Nat.factorial n : ℤ)

end

end A052631.P4513267587237232835

namespace A052631

/-- `(A174191(n)-1)*n!` -/
def P4513267587237232835.Spec : Prop :=
  ∀ n, P4513267587237232835.a n = A052631 n

end A052631

/-! ## A052631.P6360437781600124122

`n!*A002965(2*n)`
-/

namespace A052631.P6360437781600124122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002965 (2 * n)

end

end A052631.P6360437781600124122

namespace A052631

/-- `n!*A002965(2*n)` -/
def P6360437781600124122.Spec : Prop :=
  ∀ n, P6360437781600124122.a n = A052631 n

end A052631

/-! ## A052631.P12699910798098749038

`n!*A116558(2*n)`
-/

namespace A052631.P12699910798098749038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A116558 (2 * n)

end

end A052631.P12699910798098749038

namespace A052631

/-- `n!*A116558(2*n)` -/
def P12699910798098749038.Spec : Prop :=
  ∀ n, P12699910798098749038.a n = A052631 n

end A052631

/-! ## A052631.P6875818449476747524

`n!*A135153(2*n)`
-/

namespace A052631.P6875818449476747524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A135153 (2 * n)

end

end A052631.P6875818449476747524

namespace A052631

/-- `n!*A135153(2*n)` -/
def P6875818449476747524.Spec : Prop :=
  ∀ n, P6875818449476747524.a n = A052631 n

end A052631

/-!
# A052632: E.g.f. 1/(1-x-x^5).

The programs for A052632, the canonical program `A052632.P5093732326110737331` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052632 has offset 0).

The definition of A052632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052632.P5093732326110737331

`n!*A003520(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052632

/-- `n!*A003520(n)` -/
def P5093732326110737331.Spec : Prop :=
  ∀ n, P5093732326110737331.a n = A052632 n

theorem P5093732326110737331.correct : P5093732326110737331.Spec := by
  intro n
  simp only [A052632]

end A052632

/-! ## A052632.P9300886086409058649

`n!*∑[A017899(n)]`
-/

namespace A052632.P9300886086409058649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052632.P9300886086409058649

namespace A052632

/-- `n!*∑[A017899(n)]` -/
def P9300886086409058649.Spec : Prop :=
  ∀ n, P9300886086409058649.a n = A052632 n

end A052632

/-! ## A052632.P14648705267325971309

`A052627(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052632.P14648705267325971309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052627 n + (n : ℤ) * a (n - 1)

end

end A052632.P14648705267325971309

namespace A052632

/-- `A052627(n)+n*a(n-1)` -/
def P14648705267325971309.Spec : Prop :=
  ∀ n, P14648705267325971309.a n = A052632 n

end A052632

/-! ## A052632.P15743052671666179980

`A000142(n)*A003520(n)`
-/

namespace A052632.P15743052671666179980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003520 n

end

end A052632.P15743052671666179980

namespace A052632

/-- `A000142(n)*A003520(n)` -/
def P15743052671666179980.Spec : Prop :=
  ∀ n, P15743052671666179980.a n = A052632 n

end A052632

/-! ## A052632.P8183231484468581388

`∑[A017899(n)]*A000142(n)`
-/

namespace A052632.P8183231484468581388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052632.P8183231484468581388

namespace A052632

/-- `∑[A017899(n)]*A000142(n)` -/
def P8183231484468581388.Spec : Prop :=
  ∀ n, P8183231484468581388.a n = A052632 n

end A052632

/-! ## A052632.P2995783119404211575

`∏[A028310(n)]*A003520(n)`
-/

namespace A052632.P2995783119404211575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A003520 n

end

end A052632.P2995783119404211575

namespace A052632

/-- `∏[A028310(n)]*A003520(n)` -/
def P2995783119404211575.Spec : Prop :=
  ∀ n, P2995783119404211575.a n = A052632 n

end A052632

/-!
# A052633: E.g.f. x^2*(1+x-x^2)/(1-x)^2.

The programs for A052633, the canonical program `A052633.P5925751864060870354` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052633 has offset 0).

The definition of A052633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052633.P5925751864060870354

`a(n-1)*n²/(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=18`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052633

/-- `a(n-1)*n²/(n-1)` -/
def P5925751864060870354.Spec : Prop :=
  ∀ n, P5925751864060870354.a n = (A052633 n : ℚ)

end A052633

/-! ## A052633.P9923560176372872200

`n*(n!-char[n!!])`
-/

namespace A052633.P9923560176372872200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.factorial n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A052633.P9923560176372872200

namespace A052633

/-- `n*(n!-char[n!!])` -/
def P9923560176372872200.Spec : Prop :=
  ∀ n, P9923560176372872200.a n = A052633 n

end A052633

/-! ## A052633.P4883692215239022113

`Δ[n!]-C(n, (1-n)²)`
-/

namespace A052633.P4883692215239022113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.choose n ((1 - (n : ℤ)) ^ 2).toNat : ℤ)

end

end A052633.P4883692215239022113

namespace A052633

/-- `Δ[n!]-C(n, (1-n)²)` -/
def P4883692215239022113.Spec : Prop :=
  ∀ n, P4883692215239022113.a n = A052633 n

end A052633

/-! ## A052633.P12166733995682886510

`Δ[lcm(n, 1-a(n-1))+n]` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A052633.P12166733995682886510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 4] fun n f1 =>
  Int.lcm (n : ℤ) (1 - (f1 (n - 1) : ℤ)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052633.P12166733995682886510

namespace A052633

/-- `Δ[lcm(n, 1-a(n-1))+n]` -/
def P12166733995682886510.Spec : Prop :=
  ∀ n, P12166733995682886510.a n = A052633 n

end A052633

/-! ## A052633.P7017083696196317687

`Δ[n!-a(2-A000007(n))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A052633.P7017083696196317687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  (Nat.factorial n : ℤ) - f1 (2 - A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052633.P7017083696196317687

namespace A052633

/-- `Δ[n!-a(2-A000007(n))]` -/
def P7017083696196317687.Spec : Prop :=
  ∀ n, P7017083696196317687.a n = A052633 n

end A052633

/-! ## A052633.P959867161590831557

`(n+1)!-lcm(n!, A000010(2*n+1))`
-/

namespace A052633.P959867161590831557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (Int.lcm (Nat.factorial n : ℤ) (A000010 (2 * n + 1)) : ℤ)

end

end A052633.P959867161590831557

namespace A052633

/-- `(n+1)!-lcm(n!, A000010(2*n+1))` -/
def P959867161590831557.Spec : Prop :=
  ∀ n, P959867161590831557.a n = A052633 n

end A052633

/-! ## A052633.P1542965468089222990

`n!*A184985(A028310(n))`
-/

namespace A052633.P1542965468089222990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A184985 (A028310 n).toNat

end

end A052633.P1542965468089222990

namespace A052633

/-- `n!*A184985(A028310(n))` -/
def P1542965468089222990.Spec : Prop :=
  ∀ n, P1542965468089222990.a n = A052633 n

end A052633

/-! ## A052633.P3708196862027621536

`abs(A166586(A272605(n+1)+1)-n)*n!`
-/

namespace A052633.P3708196862027621536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166586 (A272605 (n + 1) + 1).toNat - (n : ℤ)| * (Nat.factorial n : ℤ)

end

end A052633.P3708196862027621536

namespace A052633

/-- `abs(A166586(A272605(n+1)+1)-n)*n!` -/
def P3708196862027621536.Spec : Prop :=
  ∀ n, P3708196862027621536.a n = A052633 n

end A052633

/-! ## A052633.P188455113341778142

`A000142(n)*A184985(A028310(n))`
-/

namespace A052633.P188455113341778142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A184985 (A028310 n).toNat

end

end A052633.P188455113341778142

namespace A052633

/-- `A000142(n)*A184985(A028310(n))` -/
def P188455113341778142.Spec : Prop :=
  ∀ n, P188455113341778142.a n = A052633 n

end A052633

/-!
# A052634: Expansion of e.g.f. 1/((1-2*x^2)*(1-x)).

The programs for A052634, the canonical program `A052634.P7928622811804752485` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052634 has offset 0).

The definition of A052634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052634.P7928622811804752485

`n!*A052551(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052634

/-- `n!*A052551(n)` -/
def P7928622811804752485.Spec : Prop :=
  ∀ n, P7928622811804752485.a n = A052634 n

theorem P7928622811804752485.correct : P7928622811804752485.Spec := by
  intro n
  simp only [A052634]

end A052634

/-! ## A052634.P7898819057969867558

`(∏[gcd(2, n)]-1)*n!`
-/

namespace A052634.P7898819057969867558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A052634.P7898819057969867558

namespace A052634

/-- `(∏[gcd(2, n)]-1)*n!` -/
def P7898819057969867558.Spec : Prop :=
  ∀ n, P7898819057969867558.a n = A052634 n

end A052634

/-! ## A052634.P18278374651775706107

`(∏[2-and(1, n)]-1)*n!`
-/

namespace A052634.P18278374651775706107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j - 1) * (Nat.factorial n : ℤ)

end

end A052634.P18278374651775706107

namespace A052634

/-- `(∏[2-and(1, n)]-1)*n!` -/
def P18278374651775706107.Spec : Prop :=
  ∀ n, P18278374651775706107.a n = A052634 n

end A052634

/-! ## A052634.P56452573631137344

`n!*∑[A077957(n)]`
-/

namespace A052634.P56452573631137344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052634.P56452573631137344

namespace A052634

/-- `n!*∑[A077957(n)]` -/
def P56452573631137344.Spec : Prop :=
  ∀ n, P56452573631137344.a n = A052634 n

end A052634

/-! ## A052634.P15240855917324228356

`(∏[2-and(1, n)]-1)*∏[A028310(n)]`
-/

namespace A052634.P15240855917324228356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j - 1) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A052634.P15240855917324228356

namespace A052634

/-- `(∏[2-and(1, n)]-1)*∏[A028310(n)]` -/
def P15240855917324228356.Spec : Prop :=
  ∀ n, P15240855917324228356.a n = A052634 n

end A052634

/-! ## A052634.P6824550767460599235

`A000142(n)*A052551(n)`
-/

namespace A052634.P6824550767460599235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052551 n

end

end A052634.P6824550767460599235

namespace A052634

/-- `A000142(n)*A052551(n)` -/
def P6824550767460599235.Spec : Prop :=
  ∀ n, P6824550767460599235.a n = A052634 n

end A052634

/-! ## A052634.P1409347038606035145

`abs(A052551(n)*A133942(n))`
-/

namespace A052634.P1409347038606035145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052551 n * A133942 n|

end

end A052634.P1409347038606035145

namespace A052634

/-- `abs(A052551(n)*A133942(n))` -/
def P1409347038606035145.Spec : Prop :=
  ∀ n, P1409347038606035145.a n = A052634 n

end A052634

/-! ## A052634.P3514967828593915337

`n!*A000225(A008619(n))`
-/

namespace A052634.P3514967828593915337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000225 (A008619 n).toNat

end

end A052634.P3514967828593915337

namespace A052634

/-- `n!*A000225(A008619(n))` -/
def P3514967828593915337.Spec : Prop :=
  ∀ n, P3514967828593915337.a n = A052634 n

end A052634

/-! ## A052634.P2051751092562905813

`n!*A126646(A004526(n))`
-/

namespace A052634.P2051751092562905813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A126646 (A004526 n).toNat

end

end A052634.P2051751092562905813

namespace A052634

/-- `n!*A126646(A004526(n))` -/
def P2051751092562905813.Spec : Prop :=
  ∀ n, P2051751092562905813.a n = A052634 n

end A052634

/-! ## A052634.P1192371052630333159

`∑[A077957(n)]*A000142(n)`
-/

namespace A052634.P1192371052630333159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052634.P1192371052630333159

namespace A052634

/-- `∑[A077957(n)]*A000142(n)` -/
def P1192371052630333159.Spec : Prop :=
  ∀ n, P1192371052630333159.a n = A052634 n

end A052634

/-!
# A052635: E.g.f. (1-3x)/(1-3x-x^2).

The programs for A052635, there is no canonical definition to state claims against.
-/

/-! ## A052635.P16435884012898793651

`n*(3*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A052635.P16435884012898793651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (3 * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A052635.P16435884012898793651

/-! ## A052635.P11343081301563183002

`n!*A107855(2*(n+1))`
-/

namespace A052635.P11343081301563183002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107855 (2 * (n + 1))

end

end A052635.P11343081301563183002

/-! ## A052635.P6229879105287320357

`A000142(n)*A107855(2*(n+1))`
-/

namespace A052635.P6229879105287320357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A107855 (2 * (n + 1))

end

end A052635.P6229879105287320357

/-! ## A052635.P16537196494091615510

`(A006497(n)-A006190(n+1))*n!`
-/

namespace A052635.P16537196494091615510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006497 n - A006190 (n + 1)) * (Nat.factorial n : ℤ)

end

end A052635.P16537196494091615510

/-! ## A052635.P10617455179291740598

`(A006497(n)-A006190(n+1))*A000142(n)`
-/

namespace A052635.P10617455179291740598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006497 n - A006190 (n + 1)) * A000142 n

end

end A052635.P10617455179291740598

/-! ## A052635.P13037572794194008094

`(A006497(n)-A006190(n+1))*abs(A133942(n))`
-/

namespace A052635.P13037572794194008094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006497 n - A006190 (n + 1)) * |A133942 n|

end

end A052635.P13037572794194008094

/-! ## A052635.P11093996297328352198

`(A006497(n)-A006190(n+1))*∏[A028310(n)]`
-/

namespace A052635.P11093996297328352198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006497 n - A006190 (n + 1)) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052635.P11093996297328352198

/-!
# A052636: Expansion of e.g.f. (2-x-2*x^2)/((1-x)*(1-2*x^2)).

The programs for A052636, the canonical program `A052636.P17679978829731328809` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052636 has offset 0).

The definition of A052636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052636.P17679978829731328809

`n!*A052552(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052636

/-- `n!*A052552(n)` -/
def P17679978829731328809.Spec : Prop :=
  ∀ n, P17679978829731328809.a n = A052636 n

theorem P17679978829731328809.correct : P17679978829731328809.Spec := by
  intro n
  simp only [A052636]

end A052636

/-! ## A052636.P12280378754017582126

`(A077957(n)+1)*n!`
-/

namespace A052636.P12280378754017582126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077957 n + 1) * (Nat.factorial n : ℤ)

end

end A052636.P12280378754017582126

namespace A052636

/-- `(A077957(n)+1)*n!` -/
def P12280378754017582126.Spec : Prop :=
  ∀ n, P12280378754017582126.a n = A052636 n

end A052636

/-! ## A052636.P13571476521816734019

`(Δ[A016116(n+1)]+1)*n!`
-/

namespace A052636.P13571476521816734019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (Nat.factorial n : ℤ)

end

end A052636.P13571476521816734019

namespace A052636

/-- `(Δ[A016116(n+1)]+1)*n!` -/
def P13571476521816734019.Spec : Prop :=
  ∀ n, P13571476521816734019.a n = A052636 n

end A052636

/-! ## A052636.P13566971049823879184

`(char[2*n]*A016116(n)+1)*n!`
-/

namespace A052636.P13566971049823879184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016116 n + 1) * (Nat.factorial n : ℤ)

end

end A052636.P13566971049823879184

namespace A052636

/-- `(char[2*n]*A016116(n)+1)*n!` -/
def P13566971049823879184.Spec : Prop :=
  ∀ n, P13566971049823879184.a n = A052636 n

end A052636

/-! ## A052636.P4506348508124699779

`A000142(n)*A052552(n)`
-/

namespace A052636.P4506348508124699779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052552 n

end

end A052636.P4506348508124699779

namespace A052636

/-- `A000142(n)*A052552(n)` -/
def P4506348508124699779.Spec : Prop :=
  ∀ n, P4506348508124699779.a n = A052636 n

end A052636

/-! ## A052636.P11276114163185311439

`∏[A028310(n)]*A052552(n)`
-/

namespace A052636.P11276114163185311439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052552 n

end

end A052636.P11276114163185311439

namespace A052636

/-- `∏[A028310(n)]*A052552(n)` -/
def P11276114163185311439.Spec : Prop :=
  ∀ n, P11276114163185311439.a n = A052636 n

end A052636

/-! ## A052636.P14111409091192380436

`(A077957(n)+1)*A000142(n)`
-/

namespace A052636.P14111409091192380436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077957 n + 1) * A000142 n

end

end A052636.P14111409091192380436

namespace A052636

/-- `(A077957(n)+1)*A000142(n)` -/
def P14111409091192380436.Spec : Prop :=
  ∀ n, P14111409091192380436.a n = A052636 n

end A052636

/-! ## A052636.P14782462337078927090

`A052552(n)*A081123(2*n)`
-/

namespace A052636.P14782462337078927090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n * A081123 (2 * n)

end

end A052636.P14782462337078927090

namespace A052636

/-- `A052552(n)*A081123(2*n)` -/
def P14782462337078927090.Spec : Prop :=
  ∀ n, P14782462337078927090.a n = A052636 n

end A052636

/-!
# A052637: E.g.f. 3x(1+x-x^2)/(1-x).

The programs for A052637, there is no canonical definition to state claims against.
-/

/-! ## A052637.P16546993473891837238

`n*a(n-1)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=18`
-/

namespace A052637.P16546993473891837238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 12, 18] fun n a =>
  n * a (n - 1)

end

end A052637.P16546993473891837238

/-! ## A052637.P9740060108066770150

`3*lcm(A000142(n), A022998(n))`
-/

namespace A052637.P9740060108066770150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.lcm (A000142 n) (A022998 n)

end

end A052637.P9740060108066770150

/-! ## A052637.P13870548720145140099

`A008585(n)*A214080(A267682(n))`
-/

namespace A052637.P13870548720145140099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n * A214080 (A267682 n).toNat

end

end A052637.P13870548720145140099

/-! ## A052637.P4818887665380159615

`lcm(2*n, 3*(n+1)!)/(n+1)`
-/

namespace A052637.P4818887665380159615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n) (3 * Nat.factorial (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A052637.P4818887665380159615

/-! ## A052637.P9451878308752569449

`3*n!*A051904(A102988(n+1))`
-/

namespace A052637.P9451878308752569449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.factorial n : ℤ) * A051904 (A102988 (n + 1)).toNat

end

end A052637.P9451878308752569449

/-!
# A052638: E.g.f. x^2*(1+x-2x^2)/(1-2x).

The programs for A052638, there is no canonical definition to state claims against.
-/

/-! ## A052638.P8750075872640264545

`n*A052594(abs(1-n))`
-/

namespace A052638.P8750075872640264545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052594 |1 - (n : ℤ)|.toNat

end

end A052638.P8750075872640264545

/-! ## A052638.P4929175489235687003

`A052694(n)-∏[gcd(n, C(2, n))+n]`
-/

namespace A052638.P4929175489235687003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052694 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052638.P4929175489235687003

/-! ## A052638.P6261211228523729149

`A052587(n)+2*A052671(n)`
-/

namespace A052638.P6261211228523729149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052587 n + 2 * A052671 n

end

end A052638.P6261211228523729149

/-! ## A052638.P12380145708747846792

`A001221(A080854(n+1))*A052587(n)`
-/

namespace A052638.P12380145708747846792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080854 (n + 1)).toNat * A052587 n

end

end A052638.P12380145708747846792

/-! ## A052638.P12013255026554191159

`A020639(n!/gcd(2, n!))*A052587(n)`
-/

namespace A052638.P12013255026554191159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (Nat.gcd 2 (Nat.factorial n) : ℚ))).toNat * A052587 n

end

end A052638.P12013255026554191159

/-!
# A052639: E.g.f. (1-2x)/(1-2x-x^3).

The programs for A052639, there is no canonical definition to state claims against.
-/

/-! ## A052639.P11072422463467620654

`Δ[A203019(A032563(n+1))]*A000142(n)`
-/

namespace A052639.P11072422463467620654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (A032563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052639.P11072422463467620654

/-! ## A052639.P9185418441898353744

`A004177(A000142(n)*A153914(n))`
-/

namespace A052639.P9185418441898353744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A000142 n * A153914 n).toNat

end

end A052639.P9185418441898353744

/-! ## A052639.P2103289116629694094

`A004177(A052632(n)*A123108(n))`
-/

namespace A052639.P2103289116629694094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A052632 n * A123108 n).toNat

end

end A052639.P2103289116629694094

/-!
# A052640: E.g.f. x*(1-x)/(1-2*x-x^2+x^3).

The programs for A052640, there is no canonical definition to state claims against.
-/

/-! ## A052640.P12310289308030398495

`n!*A106803(n)`
-/

namespace A052640.P12310289308030398495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A106803 n

end

end A052640.P12310289308030398495

/-! ## A052640.P14917734619988809461

`n!*Δ[A006054(n)]`
-/

namespace A052640.P14917734619988809461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052640.P14917734619988809461

/-! ## A052640.P9197622592389399984

`n*A052559(abs(1-n))`
-/

namespace A052640.P9197622592389399984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052559 |1 - (n : ℤ)|.toNat

end

end A052640.P9197622592389399984

/-! ## A052640.P11027422406775991164

`A052613(n+1)/(n+1)`
-/

namespace A052640.P11027422406775991164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052613 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A052640.P11027422406775991164

/-! ## A052640.P3061332116546064810

`n!*A120771(3*n+2)`
-/

namespace A052640.P3061332116546064810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A120771 (3 * n + 2)

end

end A052640.P3061332116546064810

/-! ## A052640.P10567651532260441503

`A000142(n)*A106803(n)`
-/

namespace A052640.P10567651532260441503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A106803 n

end

end A052640.P10567651532260441503

/-! ## A052640.P9967527020061312246

`Δ[A006054(n)]*A000142(n)`
-/

namespace A052640.P9967527020061312246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052640.P9967527020061312246

/-!
# A052641: Expansion of e.g.f. (1-x)/(1-3*x-x^2+x^3).

The programs for A052641, the canonical program `A052641.P407062523526101660` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052641 has offset 0).

The definition of A052641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052641.P407062523526101660

`n!*A030186(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052641

/-- `n!*A030186(n)` -/
def P407062523526101660.Spec : Prop :=
  ∀ n, P407062523526101660.a n = A052641 n

theorem P407062523526101660.correct : P407062523526101660.Spec := by
  intro n
  simp only [A052641]

end A052641

/-! ## A052641.P10429839786828377046

`n!*Δ[Δ[A287275(n)]]`
-/

namespace A052641.P10429839786828377046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052641.P10429839786828377046

namespace A052641

/-- `n!*Δ[Δ[A287275(n)]]` -/
def P10429839786828377046.Spec : Prop :=
  ∀ n, P10429839786828377046.a n = A052641 n

end A052641

/-! ## A052641.P6320805023289792561

`A000142(n)*A030186(n)`
-/

namespace A052641.P6320805023289792561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A030186 n

end

end A052641.P6320805023289792561

namespace A052641

/-- `A000142(n)*A030186(n)` -/
def P6320805023289792561.Spec : Prop :=
  ∀ n, P6320805023289792561.a n = A052641 n

end A052641

/-! ## A052641.P10023534948334915684

`A030186(n)*A094587(∑[n])`
-/

namespace A052641.P10023534948334915684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n * A094587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052641.P10023534948334915684

namespace A052641

/-- `A030186(n)*A094587(∑[n])` -/
def P10023534948334915684.Spec : Prop :=
  ∀ n, P10023534948334915684.a n = A052641 n

end A052641

/-! ## A052641.P17962757176431545819

`A030186(n)*A098361(∑[n])`
-/

namespace A052641.P17962757176431545819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n * A098361 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052641.P17962757176431545819

namespace A052641

/-- `A030186(n)*A098361(∑[n])` -/
def P17962757176431545819.Spec : Prop :=
  ∀ n, P17962757176431545819.a n = A052641 n

end A052641

/-! ## A052641.P10041141987568915491

`∏[A028310(n)]*A030186(n)`
-/

namespace A052641.P10041141987568915491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A030186 n

end

end A052641.P10041141987568915491

namespace A052641

/-- `∏[A028310(n)]*A030186(n)` -/
def P10041141987568915491.Spec : Prop :=
  ∀ n, P10041141987568915491.a n = A052641 n

end A052641

/-! ## A052641.P10252917924230805714

`Δ[A033505(n+1)]%A033505(n+1)*n!`
-/

namespace A052641.P10252917924230805714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A033505 (n + 1)) * (Nat.factorial n : ℤ)

end

end A052641.P10252917924230805714

namespace A052641

/-- `Δ[A033505(n+1)]%A033505(n+1)*n!` -/
def P10252917924230805714.Spec : Prop :=
  ∀ n, P10252917924230805714.a n = A052641 n

end A052641

/-! ## A052641.P6417512222193954995

`A008279(A000096(n))*A030186(n)`
-/

namespace A052641.P6417512222193954995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat * A030186 n

end

end A052641.P6417512222193954995

namespace A052641

/-- `A008279(A000096(n))*A030186(n)` -/
def P6417512222193954995.Spec : Prop :=
  ∀ n, P6417512222193954995.a n = A052641 n

end A052641

/-! ## A052641.P4950560318672604277

`A030186(n)*A047920(A000217(n))`
-/

namespace A052641.P4950560318672604277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n * A047920 (A000217 n).toNat

end

end A052641.P4950560318672604277

namespace A052641

/-- `A030186(n)*A047920(A000217(n))` -/
def P4950560318672604277.Spec : Prop :=
  ∀ n, P4950560318672604277.a n = A052641 n

end A052641

/-!
# A052642: Expansion of e.g.f. x^2*(2+x-x^2)/(1-x).

The programs for A052642, there is no canonical definition to state claims against.
-/

/-! ## A052642.P3448543390997430194

`and(1-n, A052628(n))`
-/

namespace A052642.P3448543390997430194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A052628 n)

end

end A052642.P3448543390997430194

/-! ## A052642.P4352228560263383173

`lcm(A052628(n), A091226(n))`
-/

namespace A052642.P4352228560263383173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052628 n) (A091226 n)

end

end A052642.P4352228560263383173

/-! ## A052642.P2390853169811968100

`A049639(∑[n])*A052628(n)`
-/

namespace A052642.P2390853169811968100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (∑ j ∈ Finset.range (n + 1), f1 j) * A052628 n

end

end A052642.P2390853169811968100

/-! ## A052642.P16423262868486083261

`char[A258746(n+2)]*A052628(n)`
-/

namespace A052642.P16423262868486083261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A052628 n

end

end A052642.P16423262868486083261

/-! ## A052642.P14122630417358288620

`A052628(n)-A000038(A292600(n))`
-/

namespace A052642.P14122630417358288620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052628 n - A000038 (A292600 n).toNat

end

end A052642.P14122630417358288620

/-! ## A052642.P14404823529517439416

`A052628(n)%A052624(n)`
-/

namespace A052642.P14404823529517439416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052628 n) (A052624 n)

end

end A052642.P14404823529517439416

/-!
# A052643: E.g.f. (1+x-x^2)^2/(1-x)^2.

The programs for A052643, there is no canonical definition to state claims against.
-/

/-! ## A052643.P11745479091084678764

`lcm(n, 2*n!)+(n+1)!+2*char[2]`
-/

namespace A052643.P11745479091084678764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * Nat.factorial n) + (Nat.factorial (n + 1) + 2 * (if ∃ j, f1 j = n then 1 else 0))

end

end A052643.P11745479091084678764

/-! ## A052643.P13823296586052215709

`A052849(n)+A052624(n)`
-/

namespace A052643.P13823296586052215709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 n + A052624 n

end

end A052643.P13823296586052215709

/-! ## A052643.P9940837892298497562

`A052572(n)+and(2, A052572(n))`
-/

namespace A052643.P9940837892298497562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052572 n + Int.land 2 (A052572 n)

end

end A052643.P9940837892298497562

/-! ## A052643.P10267161070916034443

`A136572(A133263(n))+A052572(n)`
-/

namespace A052643.P10267161070916034443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (A133263 n).toNat + A052572 n

end

end A052643.P10267161070916034443

/-! ## A052643.P6012282170840983943

`A052572(n)+A000038(A239243(n))`
-/

namespace A052643.P6012282170840983943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052572 n + A000038 (A239243 n).toNat

end

end A052643.P6012282170840983943

/-!
# A052644: Expansion of e.g.f. (1+3x-3x^2)/(1-x)^2.

The programs for A052644, there is no canonical definition to state claims against.
-/

/-! ## A052644.P11793635856359971057

`gcd((n+4)*n!, floor(acot(n)))`
-/

namespace A052644.P11793635856359971057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 4) * Nat.factorial n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A052644.P11793635856359971057

/-! ## A052644.P12642196506064751155

`n!+n*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A052644.P12642196506064751155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.factorial n + n * a (n - 1)

end

end A052644.P12642196506064751155

/-! ## A052644.P755549584702553333

`n!+a(n-1)/tan(acot(n))` with `a(0)=1, a(1)=5`
-/

namespace A052644.P755549584702553333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Nat.factorial n : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A052644.P755549584702553333

/-! ## A052644.P5334350216546578541

`n!+a(n-1)/n^-1` with `a(0)=1, a(1)=5`
-/

namespace A052644.P5334350216546578541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Nat.factorial n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A052644.P5334350216546578541

/-! ## A052644.P3279576137933692144

`n*((n-1)!-round(-a(n-1)))` with `a(0)=1, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A052644.P3279576137933692144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n : ℤ) * ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - (-a (n - 1)))

end

end A052644.P3279576137933692144

/-! ## A052644.P12469249019111246642

`∏[floor(acot(n)+n)]+n*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A052644.P12469249019111246642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * a (n - 1)

end

end A052644.P12469249019111246642

/-! ## A052644.P1843482323059716978

`∏[n+1]/(n+1)+n*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A052644.P1843482323059716978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) + (n : ℚ) * a (n - 1)

end

end A052644.P1843482323059716978

/-! ## A052644.P9553479548610459331

`∏[a(n-1)+1]+Δ[n*a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A052644.P9553479548610459331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  n * f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A052644.P9553479548610459331

/-! ## A052644.P3943033305756339145

`∏[round(1/acot(n))]+a(n-1)/n^-1` with `a(0)=1, a(1)=5`
-/

namespace A052644.P3943033305756339145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A052644.P3943033305756339145

/-! ## A052644.P11118204916784657635

`2*A229039(n)-A000142(n)`
-/

namespace A052644.P11118204916784657635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229039 n - A000142 n

end

end A052644.P11118204916784657635

/-!
# A052645: E.g.f. 2*x^2*(1+x-x^2)/(1-x).

The programs for A052645, there is no canonical definition to state claims against.
-/

/-! ## A052645.P11873496367596172996

`lcm(dr(A097204(n)), A098558(n))`
-/

namespace A052645.P11873496367596172996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A097204 n) : ℤ) (A098558 n)

end

end A052645.P11873496367596172996

/-! ## A052645.P16625741971436431207

`2*lcm(A000142(n), A007590(n))`
-/

namespace A052645.P16625741971436431207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A000142 n) (A007590 n)

end

end A052645.P16625741971436431207

/-! ## A052645.P215868391173057953

`and(6, A003422(n))*A000142(n)`
-/

namespace A052645.P215868391173057953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A003422 n) * A000142 n

end

end A052645.P215868391173057953

/-! ## A052645.P14159073376387855147

`lcm(2*A008611(n)², A052849(n))`
-/

namespace A052645.P14159073376387855147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A008611 n ^ 2) (A052849 n)

end

end A052645.P14159073376387855147

/-! ## A052645.P5941716011351103505

`lcm(2*A133942(n), A029578(n²))`
-/

namespace A052645.P5941716011351103505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A133942 n) (A029578 (n ^ 2))

end

end A052645.P5941716011351103505

/-! ## A052645.P8078852647295730480

`lcm(A008586(A008611(n)), A052849(n))`
-/

namespace A052645.P8078852647295730480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008586 (A008611 n).toNat) (A052849 n)

end

end A052645.P8078852647295730480

/-! ## A052645.P12856805696606163049

`2*gcd(A052686(n), A052738(n))`
-/

namespace A052645.P12856805696606163049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A052686 n) (A052738 n)

end

end A052645.P12856805696606163049

/-!
# A052646: E.g.f. 1/((1-x)(1-x-x^2)).

The programs for A052646, the canonical program `A052646.P275097972406057592` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052646 has offset 0).

The definition of A052646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052646.P275097972406057592

`n!*A000071(n+3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052646

/-- `n!*A000071(n+3)` -/
def P275097972406057592.Spec : Prop :=
  ∀ n, P275097972406057592.a n = A052646 n

theorem P275097972406057592.correct : P275097972406057592.Spec := by
  intro n
  simp only [A052646]

end A052646

/-! ## A052646.P13553645275485570001

`n!*Δ[A001924(n)]`
-/

namespace A052646.P13553645275485570001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052646.P13553645275485570001

namespace A052646

/-- `n!*Δ[A001924(n)]` -/
def P13553645275485570001.Spec : Prop :=
  ∀ n, P13553645275485570001.a n = A052646 n

end A052646

/-! ## A052646.P4274827056396061508

`n!*record[A035507(n)]`
-/

namespace A052646.P4274827056396061508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052646.P4274827056396061508

namespace A052646

/-- `n!*record[A035507(n)]` -/
def P4274827056396061508.Spec : Prop :=
  ∀ n, P4274827056396061508.a n = A052646 n

end A052646

/-! ## A052646.P2003406611499474334

`n!*record[A345123(n)]`
-/

namespace A052646.P2003406611499474334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052646.P2003406611499474334

namespace A052646

/-- `n!*record[A345123(n)]` -/
def P2003406611499474334.Spec : Prop :=
  ∀ n, P2003406611499474334.a n = A052646 n

end A052646

/-! ## A052646.P5601584280289638805

`n!*∑[∑[A212804(n)]]`
-/

namespace A052646.P5601584280289638805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052646.P5601584280289638805

namespace A052646

/-- `n!*∑[∑[A212804(n)]]` -/
def P5601584280289638805.Spec : Prop :=
  ∀ n, P5601584280289638805.a n = A052646 n

end A052646

/-! ## A052646.P12203370292549776005

`n!*∑[A000045(n+1)]`
-/

namespace A052646.P12203370292549776005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052646.P12203370292549776005

namespace A052646

/-- `n!*∑[A000045(n+1)]` -/
def P12203370292549776005.Spec : Prop :=
  ∀ n, P12203370292549776005.a n = A052646 n

end A052646

/-! ## A052646.P12778484540921683547

`(A000045(n+3)-1)*n!`
-/

namespace A052646.P12778484540921683547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) - 1) * (Nat.factorial n : ℤ)

end

end A052646.P12778484540921683547

namespace A052646

/-- `(A000045(n+3)-1)*n!` -/
def P12778484540921683547.Spec : Prop :=
  ∀ n, P12778484540921683547.a n = A052646 n

end A052646

/-! ## A052646.P11158424977497536655

`∑[∑[A212804(n)]]*A000142(n)`
-/

namespace A052646.P11158424977497536655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052646.P11158424977497536655

namespace A052646

/-- `∑[∑[A212804(n)]]*A000142(n)` -/
def P11158424977497536655.Spec : Prop :=
  ∀ n, P11158424977497536655.a n = A052646 n

end A052646

/-! ## A052646.P11912736959565453433

`∑[A000045(n+1)]*A000142(n)`
-/

namespace A052646.P11912736959565453433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052646.P11912736959565453433

namespace A052646

/-- `∑[A000045(n+1)]*A000142(n)` -/
def P11912736959565453433.Spec : Prop :=
  ∀ n, P11912736959565453433.a n = A052646 n

end A052646

/-!
# A052647: E.g.f. (2-2x-x^2)/((1-2x)(1-x^2)).

The programs for A052647, the canonical program `A052647.P8074019588344800464` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052647 has offset 0).

The definition of A052647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052647.P8074019588344800464

`n!*A052531(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052647

/-- `n!*A052531(n)` -/
def P8074019588344800464.Spec : Prop :=
  ∀ n, P8074019588344800464.a n = A052647 n

theorem P8074019588344800464.correct : P8074019588344800464.Spec := by
  intro n
  simp only [A052647]

end A052647

/-! ## A052647.P8804885670267885964

`(log2(gcd(2, n))+2^n)*n!`
-/

namespace A052647.P8804885670267885964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 ^ n : ℝ)) * (Nat.factorial n : ℝ)

end

end A052647.P8804885670267885964

namespace A052647

/-- `(log2(gcd(2, n))+2^n)*n!` -/
def P8804885670267885964.Spec : Prop :=
  ∀ n, P8804885670267885964.a n = (A052647 n : ℝ)

end A052647

/-! ## A052647.P8774086444629645529

`(char[2*n]+2^n)*n!`
-/

namespace A052647.P8774086444629645529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2 ^ n) * Nat.factorial n

end

end A052647.P8774086444629645529

namespace A052647

/-- `(char[2*n]+2^n)*n!` -/
def P8774086444629645529.Spec : Prop :=
  ∀ n, (P8774086444629645529.a n : ℤ) = A052647 n

end A052647

/-! ## A052647.P14577049249946169061

`n!*Δ[A134522(n)]`
-/

namespace A052647.P14577049249946169061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052647.P14577049249946169061

namespace A052647

/-- `n!*Δ[A134522(n)]` -/
def P14577049249946169061.Spec : Prop :=
  ∀ n, P14577049249946169061.a n = A052647 n

end A052647

/-! ## A052647.P5432723560736158303

`A005359(n)+2^(log2(n!)+n)`
-/

namespace A052647.P5432723560736158303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005359 n : ℝ) + (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

end

end A052647.P5432723560736158303

namespace A052647

/-- `A005359(n)+2^(log2(n!)+n)` -/
def P5432723560736158303.Spec : Prop :=
  ∀ n, P5432723560736158303.a n = (A052647 n : ℝ)

end A052647

/-! ## A052647.P2896122744538714218

`n!*and(A000079(n)+1, -(n+1))`
-/

namespace A052647.P2896122744538714218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * Int.land (A000079 n + 1) (-(n + 1 : ℤ))

end

end A052647.P2896122744538714218

namespace A052647

/-- `n!*and(A000079(n)+1, -(n+1))` -/
def P2896122744538714218.Spec : Prop :=
  ∀ n, P2896122744538714218.a n = A052647 n

end A052647

/-! ## A052647.P5791200530097956593

`(char[2*n]+2^n)*∏[A007318(∑[n]+1)]`
-/

namespace A052647.P5791200530097956593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 2 ^ n : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A052647.P5791200530097956593

namespace A052647

/-- `(char[2*n]+2^n)*∏[A007318(∑[n]+1)]` -/
def P5791200530097956593.Spec : Prop :=
  ∀ n, P5791200530097956593.a n = A052647 n

end A052647

/-! ## A052647.P17106539282159703705

`A005359(n)+A000165(n)`
-/

namespace A052647.P17106539282159703705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005359 n + A000165 n

end

end A052647.P17106539282159703705

namespace A052647

/-- `A005359(n)+A000165(n)` -/
def P17106539282159703705.Spec : Prop :=
  ∀ n, P17106539282159703705.a n = A052647 n

end A052647

/-! ## A052647.P8477875221399857124

`A000142(n)*A052531(n)`
-/

namespace A052647.P8477875221399857124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052531 n

end

end A052647.P8477875221399857124

namespace A052647

/-- `A000142(n)*A052531(n)` -/
def P8477875221399857124.Spec : Prop :=
  ∀ n, P8477875221399857124.a n = A052647 n

end A052647

/-! ## A052647.P17881067568970925336

`A005359(n)+∏[∏{d}[2*n, A014963(#)]]`
-/

namespace A052647.P17881067568970925336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A014963 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005359 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052647.P17881067568970925336

namespace A052647

/-- `A005359(n)+∏[∏{d}[2*n, A014963(#)]]` -/
def P17881067568970925336.Spec : Prop :=
  ∀ n, P17881067568970925336.a n = A052647 n

end A052647

/-!
# A052648: Expansion of e.g.f. 5*x/(1-x).

The programs for A052648, there is no canonical definition to state claims against.
-/

/-! ## A052648.P10073609163722836086

`lcm(n, 5*n!)`
-/

namespace A052648.P10073609163722836086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (5 * Nat.factorial n)

end

end A052648.P10073609163722836086

/-! ## A052648.P14425089990139471490

`n*a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A052648.P14425089990139471490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  n * a (n - 1)

end

end A052648.P14425089990139471490

/-! ## A052648.P15514671112106916438

`5*n*abs(1-n)!`
-/

namespace A052648.P15514671112106916438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n * Nat.factorial |1 - (n : ℤ)|.toNat)

end

end A052648.P15514671112106916438

/-! ## A052648.P8701343306397274201

`and(10*n!, -n)/2`
-/

namespace A052648.P8701343306397274201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 * Nat.factorial n : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A052648.P8701343306397274201

/-! ## A052648.P11878396471896538876

`5*(n!-C(2, n+2))`
-/

namespace A052648.P11878396471896538876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.factorial n : ℤ) - (Nat.choose 2 (n + 2) : ℤ))

end

end A052648.P11878396471896538876

/-! ## A052648.P15597575772076780602

`5*xor(n!, C(2, n+2))`
-/

namespace A052648.P15597575772076780602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.xor (Nat.factorial n) (Nat.choose 2 (n + 2))

end

end A052648.P15597575772076780602

/-! ## A052648.P18119688709409319481

`a(n-1)/n^(-1)` with `a(0)=0, a(1)=5`
-/

namespace A052648.P18119688709409319481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A052648.P18119688709409319481

/-! ## A052648.P15365850325538480506

`n*∏[n-1-C(4, n+3)]`
-/

namespace A052648.P15365850325538480506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (Nat.choose 4 (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052648.P15365850325538480506

/-! ## A052648.P17803011832169258043

`5/2*A052849(n)`
-/

namespace A052648.P17803011832169258043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A052849 n : ℚ)

end

end A052648.P17803011832169258043

/-! ## A052648.P11506680075254945211

`5/4*A052578(n)`
-/

namespace A052648.P11506680075254945211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A052578 n : ℚ)

end

end A052648.P11506680075254945211

/-!
# A052649: Expansion of e.g.f. (2+x-x^2)/(1-x)^2.

The programs for A052649, the canonical program `A052649.P5845231323599826257` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052649 has offset 0).

The definition of A052649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052649.P5845231323599826257

`a(n-1)*n*(2*n+3)/(2*n+1)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052649

/-- `a(n-1)*n*(2*n+3)/(2*n+1)` -/
def P5845231323599826257.Spec : Prop :=
  ∀ n, P5845231323599826257.a n = (A052649 n : ℚ)

end A052649

/-! ## A052649.P17993013556007975108

`n!*record[xor(1, n+3)]`
-/

namespace A052649.P17993013556007975108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052649.P17993013556007975108

namespace A052649

/-- `n!*record[xor(1, n+3)]` -/
def P17993013556007975108.Spec : Prop :=
  ∀ n, (P17993013556007975108.a n : ℤ) = A052649 n

end A052649

/-! ## A052649.P6121749134577519227

`(ceil(abs(sin(n)))+2*(n+1))*n!`
-/

namespace A052649.P6121749134577519227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + (2 * (n + 1) : ℤ)) * (Nat.factorial n : ℤ)

end

end A052649.P6121749134577519227

namespace A052649

/-- `(ceil(abs(sin(n)))+2*(n+1))*n!` -/
def P6121749134577519227.Spec : Prop :=
  ∀ n, P6121749134577519227.a n = A052649 n

end A052649

/-! ## A052649.P4093998003021865409

`(n+1)*a(n-1)-(n-1)!` with `a(0)=2, a(1)=5`
-/

namespace A052649.P4093998003021865409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A052649.P4093998003021865409

namespace A052649

/-- `(n+1)*a(n-1)-(n-1)!` -/
def P4093998003021865409.Spec : Prop :=
  ∀ n, P4093998003021865409.a n = A052649 n

end A052649

/-! ## A052649.P11419427447185082594

`(round(n/(n+1))+2*(n+1))*n!`
-/

namespace A052649.P11419427447185082594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + (2 * (n + 1) : ℤ)) * (Nat.factorial n : ℤ)

end

end A052649.P11419427447185082594

namespace A052649

/-- `(round(n/(n+1))+2*(n+1))*n!` -/
def P11419427447185082594.Spec : Prop :=
  ∀ n, P11419427447185082594.a n = A052649 n

end A052649

/-! ## A052649.P1283029683219395906

`A211369(∑[n]+2)`
-/

namespace A052649.P1283029683219395906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211369 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A052649.P1283029683219395906

namespace A052649

/-- `A211369(∑[n]+2)` -/
def P1283029683219395906.Spec : Prop :=
  ∀ n, P1283029683219395906.a n = A052649 n

end A052649

/-! ## A052649.P15302084931377184509

`A129326(n+1)-floor(acot(n))`
-/

namespace A052649.P15302084931377184509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129326 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A052649.P15302084931377184509

namespace A052649

/-- `A129326(n+1)-floor(acot(n))` -/
def P15302084931377184509.Spec : Prop :=
  ∀ n, P15302084931377184509.a n = A052649 n

end A052649

/-! ## A052649.P16948400868572310714

`A098558(n)+A007680(n)`
-/

namespace A052649.P16948400868572310714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098558 n + A007680 n

end

end A052649.P16948400868572310714

namespace A052649

/-- `A098558(n)+A007680(n)` -/
def P16948400868572310714.Spec : Prop :=
  ∀ n, P16948400868572310714.a n = A052649 n

end A052649

/-! ## A052649.P16670815067300902520

`(A103517(n)+1)*A000142(n)`
-/

namespace A052649.P16670815067300902520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103517 n + 1) * A000142 n

end

end A052649.P16670815067300902520

namespace A052649

/-- `(A103517(n)+1)*A000142(n)` -/
def P16670815067300902520.Spec : Prop :=
  ∀ n, P16670815067300902520.a n = A052649 n

end A052649

/-! ## A052649.P6343953348203010901

`A059171(n+2)+A000142(n+1)`
-/

namespace A052649.P6343953348203010901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059171 (n + 2) + A000142 (n + 1)

end

end A052649.P6343953348203010901

namespace A052649

/-- `A059171(n+2)+A000142(n+1)` -/
def P6343953348203010901.Spec : Prop :=
  ∀ n, P6343953348203010901.a n = A052649 n

end A052649

/-!
# A052650: Expansion of e.g.f. 1/((1-2*x)*(1-x)^2).

The programs for A052650, the canonical program `A052650.P10438217877803919814` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052650 has offset 0).

The definition of A052650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052650.P9919072097717805948

`(4*2^n-3-n)*n!`
-/

namespace A052650.P9919072097717805948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * 2 ^ n : ℤ) - 3 - (n : ℤ)) * (Nat.factorial n : ℤ)

end

end A052650.P9919072097717805948

namespace A052650

/-- `(4*2^n-3-n)*n!` -/
def P9919072097717805948.Spec : Prop :=
  ∀ n, P9919072097717805948.a n = A052650 n

theorem P9919072097717805948.correct : P9919072097717805948.Spec := by
  intro n
  simp only [A052650, Nat.add_sub_cancel, A052650.P9919072097717805948.a, A052650.P10438217877803919814.a, A000295, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052650

/-! ## A052650.P10438217877803919814

`n!*A000295(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052650

/-- `n!*A000295(n+2)` -/
def P10438217877803919814.Spec : Prop :=
  ∀ n, P10438217877803919814.a n = A052650 n

theorem P10438217877803919814.correct : P10438217877803919814.Spec := by
  intro n
  simp only [A052650]

end A052650

/-! ## A052650.P4663732318527955287

`n!*∑[∑[2^n]]`
-/

namespace A052650.P4663732318527955287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052650.P4663732318527955287

namespace A052650

/-- `n!*∑[∑[2^n]]` -/
def P4663732318527955287.Spec : Prop :=
  ∀ n, (P4663732318527955287.a n : ℤ) = A052650 n

end A052650

/-! ## A052650.P390060670543701149

`∑[∑[2^n]]/n!^-1`
-/

namespace A052650.P390060670543701149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial n : ℚ) ^ (-1 : ℤ)

end

end A052650.P390060670543701149

namespace A052650

/-- `∑[∑[2^n]]/n!^-1` -/
def P390060670543701149.Spec : Prop :=
  ∀ n, P390060670543701149.a n = (A052650 n : ℚ)

end A052650

/-! ## A052650.P6564160970924467670

`(n+1)!+2*n*a(n-1)` with `a(0)=1`
-/

namespace A052650.P6564160970924467670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n + 1) + 2 * n * a (n - 1)

end

end A052650.P6564160970924467670

namespace A052650

/-- `(n+1)!+2*n*a(n-1)` -/
def P6564160970924467670.Spec : Prop :=
  ∀ n, (P6564160970924467670.a n : ℤ) = A052650 n

end A052650

/-! ## A052650.P801551699435485599

`∏[n+1]+2*n*a(n-1)` with `a(0)=1`
-/

namespace A052650.P801551699435485599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 * n * a (n - 1)

end

end A052650.P801551699435485599

namespace A052650

/-- `∏[n+1]+2*n*a(n-1)` -/
def P801551699435485599.Spec : Prop :=
  ∀ n, (P801551699435485599.a n : ℤ) = A052650 n

end A052650

/-! ## A052650.P14429807144496274721

`∑[∑[2^n]]*A000142(n)`
-/

namespace A052650.P14429807144496274721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000142 n

end

end A052650.P14429807144496274721

namespace A052650

/-- `∑[∑[2^n]]*A000142(n)` -/
def P14429807144496274721.Spec : Prop :=
  ∀ n, P14429807144496274721.a n = A052650 n

end A052650

/-! ## A052650.P12152127262320851438

`A103213(n+1)-A355171(n)`
-/

namespace A052650.P12152127262320851438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103213 (n + 1) - A355171 n

end

end A052650.P12152127262320851438

namespace A052650

/-- `A103213(n+1)-A355171(n)` -/
def P12152127262320851438.Spec : Prop :=
  ∀ n, P12152127262320851438.a n = A052650 n

end A052650

/-! ## A052650.P9458502174276982623

`A000142(n)*A125128(n+1)`
-/

namespace A052650.P9458502174276982623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A125128 (n + 1)

end

end A052650.P9458502174276982623

namespace A052650

/-- `A000142(n)*A125128(n+1)` -/
def P9458502174276982623.Spec : Prop :=
  ∀ n, P9458502174276982623.a n = A052650 n

theorem P9458502174276982623.correct : P9458502174276982623.Spec := by
  intro n
  simp only [A052650, Nat.add_sub_cancel, A052650.P9458502174276982623.a, A052650.P10438217877803919814.a, A000142, A000142.P3272619076580183195.a, A000295, A000295.P9955939544913215267.a, A125128, A125128.P15302475142462672969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A052650

/-! ## A052650.P1382237778796982583

`A000142(n)*A000295(n+2)`
-/

namespace A052650.P1382237778796982583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000295 (n + 2)

end

end A052650.P1382237778796982583

namespace A052650

/-- `A000142(n)*A000295(n+2)` -/
def P1382237778796982583.Spec : Prop :=
  ∀ n, P1382237778796982583.a n = A052650 n

end A052650

/-!
# A052651: E.g.f. (1-x)/(1-x-x^3-x^4+x^5).

The programs for A052651, the canonical program `A052651.P16371255860342398021` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052651 has offset 0).

The definition of A052651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052651.P16371255860342398021

`n!*A052532(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052651

/-- `n!*A052532(n)` -/
def P16371255860342398021.Spec : Prop :=
  ∀ n, P16371255860342398021.a n = A052651 n

theorem P16371255860342398021.correct : P16371255860342398021.Spec := by
  intro n
  simp only [A052651]

end A052651

/-! ## A052651.P243734640541278059

`A000142(n)*A052532(n)`
-/

namespace A052651.P243734640541278059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052532 n

end

end A052651.P243734640541278059

namespace A052651

/-- `A000142(n)*A052532(n)` -/
def P243734640541278059.Spec : Prop :=
  ∀ n, P243734640541278059.a n = A052651 n

end A052651

/-! ## A052651.P9198854675889960294

`∏[A028310(n)]*A052532(n)`
-/

namespace A052651.P9198854675889960294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052532 n

end

end A052651.P9198854675889960294

namespace A052651

/-- `∏[A028310(n)]*A052532(n)` -/
def P9198854675889960294.Spec : Prop :=
  ∀ n, P9198854675889960294.a n = A052651 n

end A052651

/-! ## A052651.P7108947385199972452

`∏[A000007(n)+n]*A052532(n)`
-/

namespace A052651.P7108947385199972452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052532 n

end

end A052651.P7108947385199972452

namespace A052651

/-- `∏[A000007(n)+n]*A052532(n)` -/
def P7108947385199972452.Spec : Prop :=
  ∀ n, P7108947385199972452.a n = A052651 n

end A052651

/-! ## A052651.P6736328265482484733

`A008279(A000096(n))*A052532(n)`
-/

namespace A052651.P6736328265482484733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat * A052532 n

end

end A052651.P6736328265482484733

namespace A052651

/-- `A008279(A000096(n))*A052532(n)` -/
def P6736328265482484733.Spec : Prop :=
  ∀ n, P6736328265482484733.a n = A052651 n

end A052651

/-!
# A052652: E.g.f. x^4/(1-2x).

The programs for A052652, there is no canonical definition to state claims against.
-/

/-! ## A052652.P2945633574570027098

`n!*floor(2^(n-4))`
-/

namespace A052652.P2945633574570027098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊(2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)⌋

end

end A052652.P2945633574570027098

/-! ## A052652.P6814224830937927744

`and(-7, A052671(n))`
-/

namespace A052652.P6814224830937927744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (A052671 n)

end

end A052652.P6814224830937927744

/-! ## A052652.P5982647148391464796

`A052671(n-char[3])`
-/

namespace A052652.P5982647148391464796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052671 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A052652.P5982647148391464796

/-! ## A052652.P11927247341321319530

`lcm(A052663(n), A052671(n))`
-/

namespace A052652.P11927247341321319530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052663 n) (A052671 n)

end

end A052652.P11927247341321319530

/-! ## A052652.P10740443473248243419

`(Δ[A001147(floor(n/2))²]+1)%3*A052671(n)`
-/

namespace A052652.P10740443473248243419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 ⌊(n : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 3 * A052671 n

end

end A052652.P10740443473248243419

/-!
# A052653: E.g.f. (1-2x^2)/(1-x-2x^2).

The programs for A052653, there is no canonical definition to state claims against.
-/

/-! ## A052653.P15417465259380398876

`n!*round(lcm(4, 2^n)/3)`
-/

namespace A052653.P15417465259380398876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * SequenceMachineLib.roundAway ((Nat.lcm 4 (2 ^ n) : ℚ) / 3)

end

end A052653.P15417465259380398876

/-! ## A052653.P7167965388127866556

`(2*ceil(2^(n-log2(6)))-1)*n!`
-/

namespace A052653.P7167965388127866556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌈(2 : ℝ) ^ ((n : ℝ) - Real.logb 2 (6 : ℝ))⌉ - 1) * (Nat.factorial n : ℤ)

end

end A052653.P7167965388127866556

/-! ## A052653.P4841891010890424394

`n*(a(n-1)+2*(n-1)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052653.P4841891010890424394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) * (a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2)))

end

end A052653.P4841891010890424394

/-! ## A052653.P8598773967644758416

`n*(a(n-1)-2*(1-n)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052653.P8598773967644758416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) * (a (n - 1) - 2 * (1 - (n : ℤ)) * a (n - 2))

end

end A052653.P8598773967644758416

/-! ## A052653.P12008327612739737399

`A110321(∑[n]+1)`
-/

namespace A052653.P12008327612739737399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052653.P12008327612739737399

/-! ## A052653.P350122405924353240

`n!*A152046(n)`
-/

namespace A052653.P350122405924353240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A152046 n

end

end A052653.P350122405924353240

/-! ## A052653.P8132171751168287409

`n!*A001045(abs(1-n)+1)`
-/

namespace A052653.P8132171751168287409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001045 (|1 - (n : ℤ)| + 1).toNat

end

end A052653.P8132171751168287409

/-! ## A052653.P6073384651387220676

`A000142(n)*A152046(n)`
-/

namespace A052653.P6073384651387220676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A152046 n

end

end A052653.P6073384651387220676

/-! ## A052653.P12147025664978454225

`abs(A000142(n)*A167167(n))`
-/

namespace A052653.P12147025664978454225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n * A167167 n|

end

end A052653.P12147025664978454225

/-! ## A052653.P14117085193928905810

`2*A002866(n)-A052585(n)`
-/

namespace A052653.P14117085193928905810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002866 n - A052585 n

end

end A052653.P14117085193928905810

/-!
# A052654: E.g.f. 1/((1-x)(1-4x)).

The programs for A052654, the canonical program `A052654.P1644576242063367355` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052654 has offset 0).

The definition of A052654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052654.P1644576242063367355

`n!*A002450(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052654

/-- `n!*A002450(n+1)` -/
def P1644576242063367355.Spec : Prop :=
  ∀ n, P1644576242063367355.a n = A052654 n

theorem P1644576242063367355.correct : P1644576242063367355.Spec := by
  intro n
  simp only [A052654]

end A052654

/-! ## A052654.P15700413067474706868

`n!*∑[4^n]`
-/

namespace A052654.P15700413067474706868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052654.P15700413067474706868

namespace A052654

/-- `n!*∑[4^n]` -/
def P15700413067474706868.Spec : Prop :=
  ∀ n, (P15700413067474706868.a n : ℤ) = A052654 n

end A052654

/-! ## A052654.P7709225183595297546

`∑[4^n]*∏[ceil(abs(γ-n))]`
-/

namespace A052654.P7709225183595297546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A052654.P7709225183595297546

namespace A052654

/-- `∑[4^n]*∏[ceil(abs(γ-n))]` -/
def P7709225183595297546.Spec : Prop :=
  ∀ n, P7709225183595297546.a n = A052654 n

end A052654

/-! ## A052654.P6175036284548524172

`n!+4*n*a(n-1)` with `a(0)=1`
-/

namespace A052654.P6175036284548524172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n + 4 * n * a (n - 1)

end

end A052654.P6175036284548524172

namespace A052654

/-- `n!+4*n*a(n-1)` -/
def P6175036284548524172.Spec : Prop :=
  ∀ n, (P6175036284548524172.a n : ℤ) = A052654 n

end A052654

/-! ## A052654.P4030643437765301874

`A047053(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052654.P4030643437765301874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047053 n + (n : ℤ) * a (n - 1)

end

end A052654.P4030643437765301874

namespace A052654

/-- `A047053(n)+n*a(n-1)` -/
def P4030643437765301874.Spec : Prop :=
  ∀ n, P4030643437765301874.a n = A052654 n

end A052654

/-! ## A052654.P1500234438401097668

`∏[A008574(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A052654.P1500234438401097668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * a (n - 1)

end

end A052654.P1500234438401097668

namespace A052654

/-- `∏[A008574(n)]+n*a(n-1)` -/
def P1500234438401097668.Spec : Prop :=
  ∀ n, P1500234438401097668.a n = A052654 n

end A052654

/-! ## A052654.P9902192626511869336

`A000142(n)+4*n*a(n-1)` with `a(0)=1`
-/

namespace A052654.P9902192626511869336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000142 n + 4 * ((n : ℤ) * a (n - 1))

end

end A052654.P9902192626511869336

namespace A052654

/-- `A000142(n)+4*n*a(n-1)` -/
def P9902192626511869336.Spec : Prop :=
  ∀ n, P9902192626511869336.a n = A052654 n

end A052654

/-! ## A052654.P13301004977378212803

`abs(n!*A001045(2*(n+1))-1)+1`
-/

namespace A052654.P13301004977378212803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) * A001045 (2 * (n + 1)) - 1| + 1

end

end A052654.P13301004977378212803

namespace A052654

/-- `abs(n!*A001045(2*(n+1))-1)+1` -/
def P13301004977378212803.Spec : Prop :=
  ∀ n, P13301004977378212803.a n = A052654 n

end A052654

/-! ## A052654.P77840085625157413

`A000142(n)*A047849(n+1)-A000142(n)`
-/

namespace A052654.P77840085625157413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A047849 (n + 1) - A000142 n

end

end A052654.P77840085625157413

namespace A052654

/-- `A000142(n)*A047849(n+1)-A000142(n)` -/
def P77840085625157413.Spec : Prop :=
  ∀ n, P77840085625157413.a n = A052654 n

end A052654

/-!
# A052655: a(2) = 6, otherwise a(n) = n*n!.

The programs for A052655, there is no canonical definition to state claims against.
-/

/-! ## A052655.P15271595316309070746

`(char[2]+n)*n!`
-/

namespace A052655.P15271595316309070746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + n) * Nat.factorial n

end

end A052655.P15271595316309070746

/-! ## A052655.P2582245448400266816

`n*or(n!, char[2])`
-/

namespace A052655.P2582245448400266816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor (Nat.factorial n) (if ∃ j, f1 j = n then 1 else 0)

end

end A052655.P2582245448400266816

/-! ## A052655.P4765944654851195886

`C(Δ[n!], char[2]+1)`
-/

namespace A052655.P4765944654851195886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ((if ∃ j, f2 j = n then 1 else 0) + 1)

end

end A052655.P4765944654851195886

/-! ## A052655.P1252837537332472809

`Δ[n!+gcd(3, n!)]`
-/

namespace A052655.P1252837537332472809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + Nat.gcd 3 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052655.P1252837537332472809

/-! ## A052655.P15714279144433666773

`∑{d}[n, n!*C(#, n-1)]`
-/

namespace A052655.P15714279144433666773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial n * Nat.choose d ((n : ℤ) - 1).toNat

end

end A052655.P15714279144433666773

/-! ## A052655.P4508355694314936384

`Δ[n!]+and(n, (n+1)!)`
-/

namespace A052655.P4508355694314936384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land n (Nat.factorial (n + 1)) : ℤ)

end

end A052655.P4508355694314936384

/-! ## A052655.P14673451581328817394

`A052624(n)-n!`
-/

namespace A052655.P14673451581328817394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052624 n - (Nat.factorial n : ℤ)

end

end A052655.P14673451581328817394

/-! ## A052655.P14097405136246934544

`A001563(n)+2*char[2]`
-/

namespace A052655.P14097405136246934544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A052655.P14097405136246934544

/-! ## A052655.P15312685126536626886

`(char[2]+n)*A000142(n)`
-/

namespace A052655.P15312685126536626886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) * A000142 n

end

end A052655.P15312685126536626886

/-! ## A052655.P13720460932219087218

`(char[2]+n)*∏[A007318(∑[n]+1)]`
-/

namespace A052655.P13720460932219087218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A052655.P13720460932219087218

/-!
# A052656: E.g.f. x*(1+2x-4x^2)/(1-2x).

The programs for A052656, there is no canonical definition to state claims against.
-/

/-! ## A052656.P11836318176460248403

`gcd(2*n, a(n-2))*lcm(n, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A052656.P11836318176460248403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd (2 * n) (a (n - 2)) * Nat.lcm n (a (n - 1))

end

end A052656.P11836318176460248403

/-! ## A052656.P4914559018942558504

`n!^(C(2, n)+1)*A131577(n)`
-/

namespace A052656.P4914559018942558504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ (Nat.choose 2 n + 1) : ℤ) * A131577 n

end

end A052656.P4914559018942558504

/-! ## A052656.P8331735073257663136

`A003422(n)%3*A002866(n)`
-/

namespace A052656.P8331735073257663136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003422 n) 3 * A002866 n

end

end A052656.P8331735073257663136

/-! ## A052656.P4363201254837095314

`A002866(n)*A051904(∑[A051548(n)])`
-/

namespace A052656.P4363201254837095314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n * A051904 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052656.P4363201254837095314

/-! ## A052656.P10241857020822553985

`lcm(dr(A052734(n)), A002866(n))`
-/

namespace A052656.P10241857020822553985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A052734 n) : ℤ) (A002866 n)

end

end A052656.P10241857020822553985

/-!
# A052657: Expansion of e.g.f. x^2/((1-x)^2*(1+x)).

The programs for A052657, the canonical program `A052657.P1580207677496219470` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052657 has offset 0).

The definition of A052657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052657.P1580207677496219470

`floor(n/2)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052657

/-- `floor(n/2)*n!` -/
def P1580207677496219470.Spec : Prop :=
  ∀ n, P1580207677496219470.a n = A052657 n

theorem P1580207677496219470.correct : P1580207677496219470.Spec := by
  intro n
  simp only [A052657]

end A052657

/-! ## A052657.P14403191739455706461

`(2*n-1+(-1)^n)*n!/4`
-/

namespace A052657.P14403191739455706461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 1 + (-1) ^ n) * (Nat.factorial n : ℤ) : ℚ) / 4

end

end A052657.P14403191739455706461

namespace A052657

/-- `(2*n-1+(-1)^n)*n!/4` -/
def P14403191739455706461.Spec : Prop :=
  ∀ n, P14403191739455706461.a n = (A052657 n : ℚ)

end A052657

/-! ## A052657.P9940843795286241263

`ceil(and(n, -2)/2*n!)`
-/

namespace A052657.P9940843795286241263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (n : ℤ) (-2) : ℚ) / 2 * (Nat.factorial n : ℚ)⌉

end

end A052657.P9940843795286241263

namespace A052657

/-- `ceil(and(n, -2)/2*n!)` -/
def P9940843795286241263.Spec : Prop :=
  ∀ n, P9940843795286241263.a n = A052657 n

end A052657

/-! ## A052657.P3470167536776026992

`round(and(n, -2)/2*n!)`
-/

namespace A052657.P3470167536776026992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2 * (Nat.factorial n : ℚ))

end

end A052657.P3470167536776026992

namespace A052657

/-- `round(and(n, -2)/2*n!)` -/
def P3470167536776026992.Spec : Prop :=
  ∀ n, P3470167536776026992.a n = A052657 n

end A052657

/-! ## A052657.P13932270275316651151

`abs((n-∑[n%2])*n!)`
-/

namespace A052657.P13932270275316651151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (Nat.factorial n : ℤ)|

end

end A052657.P13932270275316651151

namespace A052657

/-- `abs((n-∑[n%2])*n!)` -/
def P13932270275316651151.Spec : Prop :=
  ∀ n, P13932270275316651151.a n = A052657 n

end A052657

/-! ## A052657.P9049277331003319939

`abs((n-∑[and(1, n)])*n!)`
-/

namespace A052657.P9049277331003319939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * (Nat.factorial n : ℤ)|

end

end A052657.P9049277331003319939

namespace A052657

/-- `abs((n-∑[and(1, n)])*n!)` -/
def P9049277331003319939.Spec : Prop :=
  ∀ n, P9049277331003319939.a n = A052657 n

end A052657

/-! ## A052657.P141211945499312151

`abs((or(1, n)-1)/2*n!)`
-/

namespace A052657.P141211945499312151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 * (Nat.factorial n : ℚ)|

end

end A052657.P141211945499312151

namespace A052657

/-- `abs((or(1, n)-1)/2*n!)` -/
def P141211945499312151.Spec : Prop :=
  ∀ n, P141211945499312151.a n = (A052657 n : ℚ)

end A052657

/-! ## A052657.P14312629660886865161

`ceil((or(1, n)-1)/2*n!)`
-/

namespace A052657.P14312629660886865161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 * (Nat.factorial n : ℚ)⌉

end

end A052657.P14312629660886865161

namespace A052657

/-- `ceil((or(1, n)-1)/2*n!)` -/
def P14312629660886865161.Spec : Prop :=
  ∀ n, P14312629660886865161.a n = A052657 n

end A052657

/-! ## A052657.P7897519400206552002

`round((or(1, n)-1)/2*n!)`
-/

namespace A052657.P7897519400206552002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2 * (Nat.factorial n : ℚ))

end

end A052657.P7897519400206552002

namespace A052657

/-- `round((or(1, n)-1)/2*n!)` -/
def P7897519400206552002.Spec : Prop :=
  ∀ n, P7897519400206552002.a n = A052657 n

end A052657

/-! ## A052657.P16401284311969132793

`ceil(xor(1, or(1, n))/2*n!)`
-/

namespace A052657.P16401284311969132793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (Nat.lor 1 n) : ℚ) / 2 * (Nat.factorial n : ℚ)⌉

end

end A052657.P16401284311969132793

namespace A052657

/-- `ceil(xor(1, or(1, n))/2*n!)` -/
def P16401284311969132793.Spec : Prop :=
  ∀ n, P16401284311969132793.a n = A052657 n

end A052657

/-!
# A052658: Expansion of e.g.f. (1-x^2)*(1-x)/(1-2x-x^2+x^3).

The programs for A052658, there is no canonical definition to state claims against.
-/

/-! ## A052658.P15199975990783151227

`n!*A187069(A103517(n))`
-/

namespace A052658.P15199975990783151227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187069 (A103517 n).toNat

end

end A052658.P15199975990783151227

/-! ## A052658.P8665652339633101422

`n!*A187069(A051755(n+2))`
-/

namespace A052658.P8665652339633101422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187069 (A051755 (n + 2)).toNat

end

end A052658.P8665652339633101422

/-! ## A052658.P10702804038146003340

`A000142(n)*A187069(A103517(n))`
-/

namespace A052658.P10702804038146003340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A187069 (A103517 n).toNat

end

end A052658.P10702804038146003340

/-! ## A052658.P12818868784908614000

`A000142(n)*A187069(A051755(n+2))`
-/

namespace A052658.P12818868784908614000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A187069 (A051755 (n + 2)).toNat

end

end A052658.P12818868784908614000

/-! ## A052658.P13102577674026271051

`A008279(A000096(n))*A187069(A103517(n))`
-/

namespace A052658.P13102577674026271051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat * A187069 (A103517 n).toNat

end

end A052658.P13102577674026271051

/-! ## A052658.P3272063260991053516

`A130534(A000217(n))*A187069(A103517(n))`
-/

namespace A052658.P3272063260991053516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A000217 n).toNat * A187069 (A103517 n).toNat

end

end A052658.P3272063260991053516

/-!
# A052659: Expansion of e.g.f. (1-2x)(1-x)/(1-4x+2x^2).

The programs for A052659, there is no canonical definition to state claims against.
-/

/-! ## A052659.P9934603314327687946

`n!*A204089(n)`
-/

namespace A052659.P9934603314327687946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A204089 n

end

end A052659.P9934603314327687946

/-! ## A052659.P510441535541456389

`A000142(n)*A204089(n)`
-/

namespace A052659.P510441535541456389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A204089 n

end

end A052659.P510441535541456389

/-! ## A052659.P1191800071445487303

`Δ[A003422(n)]*A204089(n)`
-/

namespace A052659.P1191800071445487303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A204089 n

end

end A052659.P1191800071445487303

/-! ## A052659.P11533271839357648575

`∏[A028310(n)]*A204089(n)`
-/

namespace A052659.P11533271839357648575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A204089 n

end

end A052659.P11533271839357648575

/-! ## A052659.P3916884771825948926

`A094587(A000124(n))*A204089(n)`
-/

namespace A052659.P3916884771825948926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A000124 n).toNat * A204089 n

end

end A052659.P3916884771825948926

/-!
# A052660: Expansion of e.g.f. (2-2*x-x^2)/((1-x)*(1-x-x^2)).

The programs for A052660, the canonical program `A052660.P2669648298003677181` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052660 has offset 0).

The definition of A052660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052660.P2669648298003677181

`n!*A001611(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052660

/-- `n!*A001611(n+1)` -/
def P2669648298003677181.Spec : Prop :=
  ∀ n, P2669648298003677181.a n = A052660 n

theorem P2669648298003677181.correct : P2669648298003677181.Spec := by
  intro n
  simp only [A052660]

end A052660

/-! ## A052660.P14568313073672631230

`A005442(n)+n!`
-/

namespace A052660.P14568313073672631230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005442 n + (Nat.factorial n : ℤ)

end

end A052660.P14568313073672631230

namespace A052660

/-- `A005442(n)+n!` -/
def P14568313073672631230.Spec : Prop :=
  ∀ n, P14568313073672631230.a n = A052660 n

end A052660

/-! ## A052660.P6780731239515368216

`A039948(∑[n])+n!`
-/

namespace A052660.P6780731239515368216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039948 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.factorial n : ℤ)

end

end A052660.P6780731239515368216

namespace A052660

/-- `A039948(∑[n])+n!` -/
def P6780731239515368216.Spec : Prop :=
  ∀ n, P6780731239515368216.a n = A052660 n

end A052660

/-! ## A052660.P1924723005550561412

`(∑[A212804(n)]+1)*n!`
-/

namespace A052660.P1924723005550561412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (Nat.factorial n : ℤ)

end

end A052660.P1924723005550561412

namespace A052660

/-- `(∑[A212804(n)]+1)*n!` -/
def P1924723005550561412.Spec : Prop :=
  ∀ n, P1924723005550561412.a n = A052660 n

end A052660

/-! ## A052660.P78169648616973646

`(A000045(n+1)+1)*n!`
-/

namespace A052660.P78169648616973646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) + 1) * (Nat.factorial n : ℤ)

end

end A052660.P78169648616973646

namespace A052660

/-- `(A000045(n+1)+1)*n!` -/
def P78169648616973646.Spec : Prop :=
  ∀ n, P78169648616973646.a n = A052660 n

end A052660

/-! ## A052660.P18067325225796654477

`(A000071(n+1)+2)*n!`
-/

namespace A052660.P18067325225796654477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 2) * (Nat.factorial n : ℤ)

end

end A052660.P18067325225796654477

namespace A052660

/-- `(A000071(n+1)+2)*n!` -/
def P18067325225796654477.Spec : Prop :=
  ∀ n, P18067325225796654477.a n = A052660 n

end A052660

/-! ## A052660.P4311776054812839832

`A052554(n)+n*a(n-1)` with `a(0)=2`
-/

namespace A052660.P4311776054812839832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A052554 n + (n : ℤ) * a (n - 1)

end

end A052660.P4311776054812839832

namespace A052660

/-- `A052554(n)+n*a(n-1)` -/
def P4311776054812839832.Spec : Prop :=
  ∀ n, P4311776054812839832.a n = A052660 n

end A052660

/-! ## A052660.P8728458290450836319

`A005442(n)+A000142(n)`
-/

namespace A052660.P8728458290450836319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005442 n + A000142 n

end

end A052660.P8728458290450836319

namespace A052660

/-- `A005442(n)+A000142(n)` -/
def P8728458290450836319.Spec : Prop :=
  ∀ n, P8728458290450836319.a n = A052660 n

end A052660

/-! ## A052660.P15151802147207174105

`A005442(n)+Δ[A003422(n)]`
-/

namespace A052660.P15151802147207174105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005442 n + (f1 (n + 1) - f1 n)

end

end A052660.P15151802147207174105

namespace A052660

/-- `A005442(n)+Δ[A003422(n)]` -/
def P15151802147207174105.Spec : Prop :=
  ∀ n, P15151802147207174105.a n = A052660 n

end A052660

/-! ## A052660.P17360082164035636036

`A000142(n)*A001611(n+1)`
-/

namespace A052660.P17360082164035636036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001611 (n + 1)

end

end A052660.P17360082164035636036

namespace A052660

/-- `A000142(n)*A001611(n+1)` -/
def P17360082164035636036.Spec : Prop :=
  ∀ n, P17360082164035636036.a n = A052660 n

end A052660

/-!
# A052661: E.g.f. (2-3x)/((1-x)(1-x-x^2)).

The programs for A052661, there is no canonical definition to state claims against.
-/

/-! ## A052661.P3551556399484208572

`(∑[a(n-1)-(1-a(n-2))]-n)*n!` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A052661.P3551556399484208572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * (Nat.factorial n : ℤ)

end

end A052661.P3551556399484208572

/-! ## A052661.P12503917782732324370

`A052554(n)+n!`
-/

namespace A052661.P12503917782732324370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052554 n + (Nat.factorial n : ℤ)

end

end A052661.P12503917782732324370

/-! ## A052661.P12778979637285404554

`n!*Δ[A002062(n)]`
-/

namespace A052661.P12778979637285404554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052661.P12778979637285404554

/-! ## A052661.P8814333702146840463

`(A212804(n)+1)*n!`
-/

namespace A052661.P8814333702146840463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + 1) * (Nat.factorial n : ℤ)

end

end A052661.P8814333702146840463

/-! ## A052661.P16233451526765382285

`(Δ[A000045(n)]+1)*n!`
-/

namespace A052661.P16233451526765382285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (Nat.factorial n : ℤ)

end

end A052661.P16233451526765382285

/-! ## A052661.P9688573491123283160

`(Δ[A001611(n)]+1)*n!`
-/

namespace A052661.P9688573491123283160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (Nat.factorial n : ℤ)

end

end A052661.P9688573491123283160

/-! ## A052661.P16904597218504950235

`(A000045(abs(1-n))+1)*n!`
-/

namespace A052661.P16904597218504950235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 |1 - (n : ℤ)|.toNat + 1) * (Nat.factorial n : ℤ)

end

end A052661.P16904597218504950235

/-! ## A052661.P12259727413296562644

`A052554(n)+A000142(n)`
-/

namespace A052661.P12259727413296562644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052554 n + A000142 n

end

end A052661.P12259727413296562644

/-! ## A052661.P509294521343150154

`Δ[A002062(n)]*A000142(n)`
-/

namespace A052661.P509294521343150154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052661.P509294521343150154

/-! ## A052661.P16092189669925268411

`(A212804(n)+1)*A000142(n)`
-/

namespace A052661.P16092189669925268411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + 1) * A000142 n

end

end A052661.P16092189669925268411

/-!
# A052662: E.g.f. (1-x^2)/(1-2x-x^2+x^3).

The programs for A052662, the canonical program `A052662.P778079237183081231` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052662 has offset 0).

The definition of A052662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052662.P778079237183081231

`n!*A052534(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052662

/-- `n!*A052534(n)` -/
def P778079237183081231.Spec : Prop :=
  ∀ n, P778079237183081231.a n = A052662 n

theorem P778079237183081231.correct : P778079237183081231.Spec := by
  intro n
  simp only [A052662]

end A052662

/-! ## A052662.P9409191238047594882

`A052658(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052662.P9409191238047594882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052658 n + (n : ℤ) * a (n - 1)

end

end A052662.P9409191238047594882

namespace A052662

/-- `A052658(n)+n*a(n-1)` -/
def P9409191238047594882.Spec : Prop :=
  ∀ n, P9409191238047594882.a n = A052662 n

end A052662

/-! ## A052662.P8469050491010128686

`A052640(n)+A052559(n)`
-/

namespace A052662.P8469050491010128686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052640 n + A052559 n

end

end A052662.P8469050491010128686

namespace A052662

/-- `A052640(n)+A052559(n)` -/
def P8469050491010128686.Spec : Prop :=
  ∀ n, P8469050491010128686.a n = A052662 n

end A052662

/-! ## A052662.P2883880392002199136

`A000142(n)*A052534(n)`
-/

namespace A052662.P2883880392002199136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052534 n

end

end A052662.P2883880392002199136

namespace A052662

/-- `A000142(n)*A052534(n)` -/
def P2883880392002199136.Spec : Prop :=
  ∀ n, P2883880392002199136.a n = A052662 n

end A052662

/-! ## A052662.P14159495854044045484

`∏[A028310(n)]*A052534(n)`
-/

namespace A052662.P14159495854044045484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052534 n

end

end A052662.P14159495854044045484

namespace A052662

/-- `∏[A028310(n)]*A052534(n)` -/
def P14159495854044045484.Spec : Prop :=
  ∀ n, P14159495854044045484.a n = A052662 n

end A052662

/-! ## A052662.P154607731274930307

`A052534(n)*A094587(A000217(n))`
-/

namespace A052662.P154607731274930307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n * A094587 (A000217 n).toNat

end

end A052662.P154607731274930307

namespace A052662

/-- `A052534(n)*A094587(A000217(n))` -/
def P154607731274930307.Spec : Prop :=
  ∀ n, P154607731274930307.a n = A052662 n

end A052662

/-! ## A052662.P5522636078658764986

`∏[A003056(A000124(n))]*A052534(n)`
-/

namespace A052662.P5522636078658764986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052534 n

end

end A052662.P5522636078658764986

namespace A052662

/-- `∏[A003056(A000124(n))]*A052534(n)` -/
def P5522636078658764986.Spec : Prop :=
  ∀ n, P5522636078658764986.a n = A052662 n

end A052662

/-! ## A052662.P6109122345803610571

`A052534(n)/A077998(n)*A052559(n)`
-/

namespace A052662.P6109122345803610571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052534 n : ℚ) / (A077998 n : ℚ) * (A052559 n : ℚ)

end

end A052662.P6109122345803610571

namespace A052662

/-- `A052534(n)/A077998(n)*A052559(n)` -/
def P6109122345803610571.Spec : Prop :=
  ∀ n, P6109122345803610571.a n = (A052662 n : ℚ)

end A052662

/-! ## A052662.P9628564949282016672

`A000142(n)*A187069(A051755(n+2)+1)`
-/

namespace A052662.P9628564949282016672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A187069 (A051755 (n + 2) + 1).toNat

end

end A052662.P9628564949282016672

namespace A052662

/-- `A000142(n)*A187069(A051755(n+2)+1)` -/
def P9628564949282016672.Spec : Prop :=
  ∀ n, P9628564949282016672.a n = A052662 n

end A052662

/-!
# A052663: E.g.f. x^4*(1+x-x^2)/(1-x).

The programs for A052663, there is no canonical definition to state claims against.
-/

/-! ## A052663.P17945041737313022480

`and(-8, A052699(n))`
-/

namespace A052663.P17945041737313022480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-8) (A052699 n)

end

end A052663.P17945041737313022480

/-! ## A052663.P4479454906648328694

`lcm(n!, A280058(A020915(n)))`
-/

namespace A052663.P4479454906648328694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A280058 (A020915 n).toNat)

end

end A052663.P4479454906648328694

/-! ## A052663.P17049057625671315884

`lcm(1-A008621(n), A052699(n))`
-/

namespace A052663.P17049057625671315884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A008621 n) (A052699 n)

end

end A052663.P17049057625671315884

/-! ## A052663.P14120044225506822050

`lcm(or(7, n!)-7, A000079(A000720(n+2)))`
-/

namespace A052663.P14120044225506822050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.lor 7 (Nat.factorial n) : ℤ) - 7) (A000079 (A000720 (n + 2)).toNat)

end

end A052663.P14120044225506822050

/-! ## A052663.P16263838258318345965

`lcm(A001222(A008621(n)), A052699(n))`
-/

namespace A052663.P16263838258318345965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A008621 n).toNat) (A052699 n)

end

end A052663.P16263838258318345965

/-! ## A052663.P1757329230959081794

`A052699(n)%(A052715(n)+1)`
-/

namespace A052663.P1757329230959081794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052699 n) (A052715 n + 1)

end

end A052663.P1757329230959081794

/-!
# A052664: E.g.f. (1-x)/(1-2x-3x^2+3x^3).

The programs for A052664, the canonical program `A052664.P1131064307851730349` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052664 has offset 0).

The definition of A052664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052664.P1131064307851730349

`n!*A052538(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052664

/-- `n!*A052538(n)` -/
def P1131064307851730349.Spec : Prop :=
  ∀ n, P1131064307851730349.a n = A052664 n

theorem P1131064307851730349.correct : P1131064307851730349.Spec := by
  intro n
  simp only [A052664]

end A052664

/-! ## A052664.P15900139380154160455

`A000142(n)*A052538(n)`
-/

namespace A052664.P15900139380154160455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052538 n

end

end A052664.P15900139380154160455

namespace A052664

/-- `A000142(n)*A052538(n)` -/
def P15900139380154160455.Spec : Prop :=
  ∀ n, P15900139380154160455.a n = A052664 n

end A052664

/-! ## A052664.P10188716315373585905

`∏[A028310(n)]*A052538(n)`
-/

namespace A052664.P10188716315373585905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052538 n

end

end A052664.P10188716315373585905

namespace A052664

/-- `∏[A028310(n)]*A052538(n)` -/
def P10188716315373585905.Spec : Prop :=
  ∀ n, P10188716315373585905.a n = A052664 n

end A052664

/-! ## A052664.P5813531544073600374

`∏[A007318(∑[n]+1)]*A052538(n)`
-/

namespace A052664.P5813531544073600374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052538 n

end

end A052664.P5813531544073600374

namespace A052664

/-- `∏[A007318(∑[n]+1)]*A052538(n)` -/
def P5813531544073600374.Spec : Prop :=
  ∀ n, P5813531544073600374.a n = A052664 n

end A052664

/-! ## A052664.P11699467510690630911

`A052538(n)*A131689(A000096(n))`
-/

namespace A052664.P11699467510690630911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052538 n * A131689 (A000096 n).toNat

end

end A052664.P11699467510690630911

namespace A052664

/-- `A052538(n)*A131689(A000096(n))` -/
def P11699467510690630911.Spec : Prop :=
  ∀ n, P11699467510690630911.a n = A052664 n

end A052664

/-!
# A052665: a(0)=0, for n >= 1, a(n) = (2^(n-1)-1)*n!.

The programs for A052665, there is no canonical definition to state claims against.
-/

/-! ## A052665.P2891348721515589530

`n!*∑[floor(2^(n-2))]`
-/

namespace A052665.P2891348721515589530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052665.P2891348721515589530

/-! ## A052665.P14587816044766810130

`(ceil(2^(n-1))-1)*n!`
-/

namespace A052665.P14587816044766810130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1) * (Nat.factorial n : ℤ)

end

end A052665.P14587816044766810130

/-! ## A052665.P15246123497289918070

`∏[(2*n)^floor(atan(n))]-n!`
-/

namespace A052665.P15246123497289918070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial n : ℚ)

end

end A052665.P15246123497289918070

/-! ## A052665.P7407148699699231641

`∏[C(2*n, floor(atan(n)))]-n!`
-/

namespace A052665.P7407148699699231641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) ⌊Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ)

end

end A052665.P7407148699699231641

/-! ## A052665.P12386721498585289291

`round(2^(n-1)*n!)-n!`
-/

namespace A052665.P12386721498585289291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)) - (Nat.factorial n : ℤ)

end

end A052665.P12386721498585289291

/-! ## A052665.P989411492671527238

`round(∏[floor(2/acot(n))]/2)-n!`
-/

namespace A052665.P989411492671527238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) - (Nat.factorial n : ℤ)

end

end A052665.P989411492671527238

/-! ## A052665.P8018523549601516787

`n!+2*n*a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A052665.P8018523549601516787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.factorial n + 2 * (n * a (n - 1))

end

end A052665.P8018523549601516787

/-! ## A052665.P7200677279434085450

`(round(2^(n-1))-1)*∏[round(1/acot(n))]`
-/

namespace A052665.P7200677279434085450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052665.P7200677279434085450

/-! ## A052665.P9572165049359001662

`(ceil(2^(n-1))-1)*∏[ceil(abs(γ-n))]`
-/

namespace A052665.P9572165049359001662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052665.P9572165049359001662

/-! ## A052665.P6627326971265749435

`A002866(n)-n!`
-/

namespace A052665.P6627326971265749435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n - (Nat.factorial n : ℤ)

end

end A052665.P6627326971265749435

/-!
# A052666: E.g.f. 1/(1-x-3x^2).

The programs for A052666, the canonical program `A052666.P6989449203495029728` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052666 has offset 0).

The definition of A052666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052666.P6989449203495029728

`n!*A006130(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052666

/-- `n!*A006130(n)` -/
def P6989449203495029728.Spec : Prop :=
  ∀ n, P6989449203495029728.a n = A052666 n

theorem P6989449203495029728.correct : P6989449203495029728.Spec := by
  intro n
  simp only [A052666]

end A052666

/-! ## A052666.P12846832762171810204

`n*(a(n-1)+3*(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052666.P12846832762171810204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * (a (n - 1) + 3 * (((n : ℤ) - 1) * a (n - 2)))

end

end A052666.P12846832762171810204

namespace A052666

/-- `n*(a(n-1)+3*(n-1)*a(n-2))` -/
def P12846832762171810204.Spec : Prop :=
  ∀ n, P12846832762171810204.a n = A052666 n

end A052666

/-! ## A052666.P13746715251794971879

`n!*∑[A052533(n)]`
-/

namespace A052666.P13746715251794971879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052666.P13746715251794971879

namespace A052666

/-- `n!*∑[A052533(n)]` -/
def P13746715251794971879.Spec : Prop :=
  ∀ n, P13746715251794971879.a n = A052666 n

end A052666

/-! ## A052666.P4248138274540376896

`n!*Δ[A099232(n)]`
-/

namespace A052666.P4248138274540376896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052666.P4248138274540376896

namespace A052666

/-- `n!*Δ[A099232(n)]` -/
def P4248138274540376896.Spec : Prop :=
  ∀ n, P4248138274540376896.a n = A052666 n

end A052666

/-! ## A052666.P1835361786062106806

`A052682(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052666.P1835361786062106806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052682 n + (n : ℤ) * a (n - 1)

end

end A052666.P1835361786062106806

namespace A052666

/-- `A052682(n)+n*a(n-1)` -/
def P1835361786062106806.Spec : Prop :=
  ∀ n, P1835361786062106806.a n = A052666 n

end A052666

/-! ## A052666.P15792907109222796721

`A000142(n)*A006130(n)`
-/

namespace A052666.P15792907109222796721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006130 n

end

end A052666.P15792907109222796721

namespace A052666

/-- `A000142(n)*A006130(n)` -/
def P15792907109222796721.Spec : Prop :=
  ∀ n, P15792907109222796721.a n = A052666 n

end A052666

/-!
# A052667: E.g.f. 1/(1-2x-x^4).

The programs for A052667, the canonical program `A052667.P15525557154643196081` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052667 has offset 0).

The definition of A052667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052667.P15525557154643196081

`n!*A008999(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052667

/-- `n!*A008999(n)` -/
def P15525557154643196081.Spec : Prop :=
  ∀ n, P15525557154643196081.a n = A052667 n

theorem P15525557154643196081.correct : P15525557154643196081.Spec := by
  intro n
  simp only [A052667]

end A052667

/-! ## A052667.P17114149761646214010

`A000142(n)*A008999(n)`
-/

namespace A052667.P17114149761646214010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A008999 n

end

end A052667.P17114149761646214010

namespace A052667

/-- `A000142(n)*A008999(n)` -/
def P17114149761646214010.Spec : Prop :=
  ∀ n, P17114149761646214010.a n = A052667 n

end A052667

/-! ## A052667.P8388048309953494000

`Δ[A003422(n)]*A008999(n)`
-/

namespace A052667.P8388048309953494000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008999 n

end

end A052667.P8388048309953494000

namespace A052667

/-- `Δ[A003422(n)]*A008999(n)` -/
def P8388048309953494000.Spec : Prop :=
  ∀ n, P8388048309953494000.a n = A052667 n

end A052667

/-! ## A052667.P621243918124750858

`∏[A028310(n)]*A008999(n)`
-/

namespace A052667.P621243918124750858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A008999 n

end

end A052667.P621243918124750858

namespace A052667

/-- `∏[A028310(n)]*A008999(n)` -/
def P621243918124750858.Spec : Prop :=
  ∀ n, P621243918124750858.a n = A052667 n

end A052667

/-! ## A052667.P12059346059932194759

`A008999(n)/A008998(n)*A052599(n)`
-/

namespace A052667.P12059346059932194759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008999 n : ℚ) / (A008998 n : ℚ) * (A052599 n : ℚ)

end

end A052667.P12059346059932194759

namespace A052667

/-- `A008999(n)/A008998(n)*A052599(n)` -/
def P12059346059932194759.Spec : Prop :=
  ∀ n, P12059346059932194759.a n = (A052667 n : ℚ)

end A052667

/-!
# A052668: Expansion of e.g.f. 1/(1 - 3*x - x^3).

The programs for A052668, the canonical program `A052668.P9519088281293070122` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052668 has offset 0).

The definition of A052668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052668.P9519088281293070122

`3*n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=3, a(2)=18`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052668

/-- `3*n*a(n-1)+n*(n-1)*(n-2)*a(n-3)` -/
def P9519088281293070122.Spec : Prop :=
  ∀ n, P9519088281293070122.a n = A052668 n

theorem P9519088281293070122.correct : P9519088281293070122.Spec := by
  intro n
  simp only [A052668]

end A052668

/-! ## A052668.P15120740995604099591

`n!*A052541(n)`
-/

namespace A052668.P15120740995604099591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052541 n

end

end A052668.P15120740995604099591

namespace A052668

/-- `n!*A052541(n)` -/
def P15120740995604099591.Spec : Prop :=
  ∀ n, P15120740995604099591.a n = A052668 n

end A052668

/-! ## A052668.P16856626614876467699

`A000142(n)*A052541(n)`
-/

namespace A052668.P16856626614876467699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052541 n

end

end A052668.P16856626614876467699

namespace A052668

/-- `A000142(n)*A052541(n)` -/
def P16856626614876467699.Spec : Prop :=
  ∀ n, P16856626614876467699.a n = A052668 n

end A052668

/-! ## A052668.P15873779307024621267

`∑[A183188(n)]*A000142(n)`
-/

namespace A052668.P15873779307024621267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052668.P15873779307024621267

namespace A052668

/-- `∑[A183188(n)]*A000142(n)` -/
def P15873779307024621267.Spec : Prop :=
  ∀ n, P15873779307024621267.a n = A052668 n

end A052668

/-! ## A052668.P3393688188588962354

`∏[A028310(n)]*A052541(n)`
-/

namespace A052668.P3393688188588962354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052541 n

end

end A052668.P3393688188588962354

namespace A052668

/-- `∏[A028310(n)]*A052541(n)` -/
def P3393688188588962354.Spec : Prop :=
  ∀ n, P3393688188588962354.a n = A052668 n

end A052668

/-! ## A052668.P17138351214069419120

`A028421(A000217(n))*A052541(n)`
-/

namespace A052668.P17138351214069419120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat * A052541 n

end

end A052668.P17138351214069419120

namespace A052668

/-- `A028421(A000217(n))*A052541(n)` -/
def P17138351214069419120.Spec : Prop :=
  ∀ n, P17138351214069419120.a n = A052668 n

end A052668

/-!
# A052669: Expansion of e.g.f. (1-2*x)/(1-3*x-x^2+2*x^3).

The programs for A052669, the canonical program `A052669.P8531867209205819422` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052669 has offset 0).

The definition of A052669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052669.P8531867209205819422

`n!*A052550(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052669

/-- `n!*A052550(n)` -/
def P8531867209205819422.Spec : Prop :=
  ∀ n, P8531867209205819422.a n = A052669 n

theorem P8531867209205819422.correct : P8531867209205819422.Spec := by
  intro n
  simp only [A052669]

end A052669

/-! ## A052669.P6410256293985508015

`A000142(n)*A052550(n)`
-/

namespace A052669.P6410256293985508015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052550 n

end

end A052669.P6410256293985508015

namespace A052669

/-- `A000142(n)*A052550(n)` -/
def P6410256293985508015.Spec : Prop :=
  ∀ n, P6410256293985508015.a n = A052669 n

end A052669

/-! ## A052669.P5284127299754402006

`Δ[A003422(n)]*A052550(n)`
-/

namespace A052669.P5284127299754402006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052550 n

end

end A052669.P5284127299754402006

namespace A052669

/-- `Δ[A003422(n)]*A052550(n)` -/
def P5284127299754402006.Spec : Prop :=
  ∀ n, P5284127299754402006.a n = A052669 n

end A052669

/-! ## A052669.P2859208900310849573

`∏[A028310(n)]*A052550(n)`
-/

namespace A052669.P2859208900310849573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052550 n

end

end A052669.P2859208900310849573

namespace A052669

/-- `∏[A028310(n)]*A052550(n)` -/
def P2859208900310849573.Spec : Prop :=
  ∀ n, P2859208900310849573.a n = A052669 n

end A052669

/-! ## A052669.P15934166447306739456

`A052550(n)*A094587(A000217(n))`
-/

namespace A052669.P15934166447306739456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052550 n * A094587 (A000217 n).toNat

end

end A052669.P15934166447306739456

namespace A052669

/-- `A052550(n)*A094587(A000217(n))` -/
def P15934166447306739456.Spec : Prop :=
  ∀ n, P15934166447306739456.a n = A052669 n

end A052669

/-!
# A052670: Expansion of e.g.f. x^2/(1-4*x).

The programs for A052670, the canonical program `A052670.P3085374077916421341` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052670 has offset 0).

The definition of A052670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052670.P3085374077916421341

`4*n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052670

/-- `4*n*a(n-1)` -/
def P3085374077916421341.Spec : Prop :=
  ∀ n, (P3085374077916421341.a n : ℤ) = A052670 n

theorem P3085374077916421341.correct : P3085374077916421341.Spec := by
  intro n
  simp only [A052670]

end A052670

/-! ## A052670.P10851459478748233375

`floor(4^(n-2)*n!)`
-/

namespace A052670.P10851459478748233375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.factorial n : ℚ)⌋

end

end A052670.P10851459478748233375

namespace A052670

/-- `floor(4^(n-2)*n!)` -/
def P10851459478748233375.Spec : Prop :=
  ∀ n, P10851459478748233375.a n = A052670 n

end A052670

/-! ## A052670.P18317427780481603725

`round(4^(n-2)*n!)`
-/

namespace A052670.P18317427780481603725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.factorial n : ℚ))

end

end A052670.P18317427780481603725

namespace A052670

/-- `round(4^(n-2)*n!)` -/
def P18317427780481603725.Spec : Prop :=
  ∀ n, P18317427780481603725.a n = A052670 n

end A052670

/-! ## A052670.P12835114789393331230

`floor(n!*ceil(4^n/2)/8)`
-/

namespace A052670.P12835114789393331230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.factorial n : ℤ) * ⌈(4 ^ n : ℚ) / 2⌉ : ℚ) / 8⌋

end

end A052670.P12835114789393331230

namespace A052670

/-- `floor(n!*ceil(4^n/2)/8)` -/
def P12835114789393331230.Spec : Prop :=
  ∀ n, P12835114789393331230.a n = A052670 n

end A052670

/-! ## A052670.P11216590415581275934

`floor(A052570(n)/4)`
-/

namespace A052670.P11216590415581275934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052570 n : ℚ) / 4⌋

end

end A052670.P11216590415581275934

namespace A052670

/-- `floor(A052570(n)/4)` -/
def P11216590415581275934.Spec : Prop :=
  ∀ n, P11216590415581275934.a n = A052670 n

end A052670

/-! ## A052670.P8345413794936595766

`floor(A051711(n)/8)`
-/

namespace A052670.P8345413794936595766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051711 n : ℚ) / 8⌋

end

end A052670.P8345413794936595766

namespace A052670

/-- `floor(A051711(n)/8)` -/
def P8345413794936595766.Spec : Prop :=
  ∀ n, P8345413794936595766.a n = A052670 n

end A052670

/-! ## A052670.P12229861209208151665

`floor(A047053(n)/16)`
-/

namespace A052670.P12229861209208151665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047053 n : ℚ) / 16⌋

end

end A052670.P12229861209208151665

namespace A052670

/-- `floor(A047053(n)/16)` -/
def P12229861209208151665.Spec : Prop :=
  ∀ n, P12229861209208151665.a n = A052670 n

end A052670

/-! ## A052670.P7729363415600739624

`floor(∏[A008574(n)]/16)`
-/

namespace A052670.P7729363415600739624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 16⌋

end

end A052670.P7729363415600739624

namespace A052670

/-- `floor(∏[A008574(n)]/16)` -/
def P7729363415600739624.Spec : Prop :=
  ∀ n, P7729363415600739624.a n = A052670 n

end A052670

/-! ## A052670.P5371961120449965723

`floor(∏[record[A000032((n%2)^n)²+2*n]]/12)`
-/

namespace A052670.P5371961120449965723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((n % 2) ^ n) ^ 2 + (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 12⌋

end

end A052670.P5371961120449965723

namespace A052670

/-- `floor(∏[record[A000032((n%2)^n)²+2*n]]/12)` -/
def P5371961120449965723.Spec : Prop :=
  ∀ n, P5371961120449965723.a n = A052670 n

end A052670

/-! ## A052670.P9316737728037740496

`floor(∏[A004277(n)]*A011782(n)/8)`
-/

namespace A052670.P9316737728037740496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ j ∈ Finset.range (n + 1), f1 j) * A011782 n : ℤ) : ℚ) / 8⌋

end

end A052670.P9316737728037740496

namespace A052670

/-- `floor(∏[A004277(n)]*A011782(n)/8)` -/
def P9316737728037740496.Spec : Prop :=
  ∀ n, P9316737728037740496.a n = A052670 n

end A052670

/-!
# A052671: Expansion of e.g.f. x^3*(1-x)/(1-2*x).

The programs for A052671, the canonical program `A052671.P9053768254485234239` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052671 has offset 0).

The definition of A052671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052671.P9053768254485234239

`2*n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6, a(4)=24`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052671

/-- `2*n*a(n-1)` -/
def P9053768254485234239.Spec : Prop :=
  ∀ n, (P9053768254485234239.a n : ℤ) = A052671 n

theorem P9053768254485234239.correct : P9053768254485234239.Spec := by
  intro n
  simp only [A052671]

end A052671

/-! ## A052671.P7099613399978382652

`n*A052587(log2(A011782(n)))`
-/

namespace A052671.P7099613399978382652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052587 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A052671.P7099613399978382652

namespace A052671

/-- `n*A052587(log2(A011782(n)))` -/
def P7099613399978382652.Spec : Prop :=
  ∀ n, P7099613399978382652.a n = A052671 n

end A052671

/-! ## A052671.P14178427291701609083

`A000142(n)*A166444(A289207(n))`
-/

namespace A052671.P14178427291701609083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A166444 (A289207 n).toNat

end

end A052671.P14178427291701609083

namespace A052671

/-- `A000142(n)*A166444(A289207(n))` -/
def P14178427291701609083.Spec : Prop :=
  ∀ n, P14178427291701609083.a n = A052671 n

end A052671

/-! ## A052671.P16815024249885389099

`∏[A028310(n)]*A166444(A289207(n))`
-/

namespace A052671.P16815024249885389099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A166444 (A289207 n).toNat

end

end A052671.P16815024249885389099

namespace A052671

/-- `∏[A028310(n)]*A166444(A289207(n))` -/
def P16815024249885389099.Spec : Prop :=
  ∀ n, P16815024249885389099.a n = A052671 n

end A052671

/-! ## A052671.P5501801293388431096

`n!*A072376(A155803(n))`
-/

namespace A052671.P5501801293388431096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A072376 (A155803 n).toNat

end

end A052671.P5501801293388431096

namespace A052671

/-- `n!*A072376(A155803(n))` -/
def P5501801293388431096.Spec : Prop :=
  ∀ n, P5501801293388431096.a n = A052671 n

end A052671

/-!
# A052672: Expansion of e.g.f. (1-x)/(1-x-2*x^2+x^3).

The programs for A052672, the canonical program `A052672.P3237679800639530789` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052672 has offset 0).

The definition of A052672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052672.P3237679800639530789

`n!*A052547(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052672

/-- `n!*A052547(n)` -/
def P3237679800639530789.Spec : Prop :=
  ∀ n, P3237679800639530789.a n = A052672 n

theorem P3237679800639530789.correct : P3237679800639530789.Spec := by
  intro n
  simp only [A052672]

end A052672

/-! ## A052672.P8560570784998443174

`n!*Δ[A187067(2*n)]`
-/

namespace A052672.P8560570784998443174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052672.P8560570784998443174

namespace A052672

/-- `n!*Δ[A187067(2*n)]` -/
def P8560570784998443174.Spec : Prop :=
  ∀ n, P8560570784998443174.a n = A052672 n

end A052672

/-! ## A052672.P9544424126374098993

`n!*A187065(2*(n+1))`
-/

namespace A052672.P9544424126374098993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187065 (2 * (n + 1))

end

end A052672.P9544424126374098993

namespace A052672

/-- `n!*A187065(2*(n+1))` -/
def P9544424126374098993.Spec : Prop :=
  ∀ n, P9544424126374098993.a n = A052672 n

end A052672

/-! ## A052672.P807233001970521618

`n!*A265755(2*n+3)`
-/

namespace A052672.P807233001970521618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A265755 (2 * n + 3)

end

end A052672.P807233001970521618

namespace A052672

/-- `n!*A265755(2*n+3)` -/
def P807233001970521618.Spec : Prop :=
  ∀ n, P807233001970521618.a n = A052672 n

end A052672

/-! ## A052672.P5387930661319895114

`A000142(n)*A052547(n)`
-/

namespace A052672.P5387930661319895114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052547 n

end

end A052672.P5387930661319895114

namespace A052672

/-- `A000142(n)*A052547(n)` -/
def P5387930661319895114.Spec : Prop :=
  ∀ n, P5387930661319895114.a n = A052672 n

end A052672

/-! ## A052672.P2980745702786106014

`∏[A028310(n)]*A052547(n)`
-/

namespace A052672.P2980745702786106014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052547 n

end

end A052672.P2980745702786106014

namespace A052672

/-- `∏[A028310(n)]*A052547(n)` -/
def P2980745702786106014.Spec : Prop :=
  ∀ n, P2980745702786106014.a n = A052672 n

end A052672

/-! ## A052672.P5392487620067411592

`A000142(n)*A187066(2*n)`
-/

namespace A052672.P5392487620067411592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A187066 (2 * n)

end

end A052672.P5392487620067411592

namespace A052672

/-- `A000142(n)*A187066(2*n)` -/
def P5392487620067411592.Spec : Prop :=
  ∀ n, P5392487620067411592.a n = A052672 n

end A052672

/-! ## A052672.P12464159877467089677

`A052547(n)*A130534(A000217(n))`
-/

namespace A052672.P12464159877467089677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n * A130534 (A000217 n).toNat

end

end A052672.P12464159877467089677

namespace A052672

/-- `A052547(n)*A130534(A000217(n))` -/
def P12464159877467089677.Spec : Prop :=
  ∀ n, P12464159877467089677.a n = A052672 n

end A052672

/-!
# A052673: a(n) = 3*n*n!.

The programs for A052673, the canonical program `A052673.P12155012864637387162` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052673 has offset 0).

The definition of A052673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*n!` (program `A052673.P12155012864637387162`, by `A052673.P12155012864637387162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052673.P12155012864637387162

`3*n*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052673

/-- `3*n*n!` -/
def P12155012864637387162.Spec : Prop :=
  ∀ n, (P12155012864637387162.a n : ℤ) = A052673 n

theorem P12155012864637387162.correct : P12155012864637387162.Spec := by
  intro n
  simp only [A052673]

end A052673

/-! ## A052673.P14921319005381405444

`Δ[3*n!]`
-/

namespace A052673.P14921319005381405444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052673.P14921319005381405444

namespace A052673

/-- `Δ[3*n!]` -/
def P14921319005381405444.Spec : Prop :=
  ∀ n, P14921319005381405444.a n = A052673 n

theorem P14921319005381405444.correct : P14921319005381405444.Spec := by
  intro n
  simp only [A052673, Nat.add_sub_cancel, A052673.P14921319005381405444.f1, A052673.P14921319005381405444.a, A052673.P12155012864637387162.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A052673

/-! ## A052673.P9841819951078588940

`Δ[lcm(3, 1-n!)]`
-/

namespace A052673.P9841819951078588940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052673.P9841819951078588940

namespace A052673

/-- `Δ[lcm(3, 1-n!)]` -/
def P9841819951078588940.Spec : Prop :=
  ∀ n, P9841819951078588940.a n = A052673 n

end A052673

/-! ## A052673.P5864887026652140760

`Δ[n!/tan(acot(3))]`
-/

namespace A052673.P5864887026652140760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052673.P5864887026652140760

namespace A052673

/-- `Δ[n!/tan(acot(3))]` -/
def P5864887026652140760.Spec : Prop :=
  ∀ n, P5864887026652140760.a n = (A052673 n : ℝ)

end A052673

/-! ## A052673.P5499907422278786781

`Δ[n*a(n-1)]` with `a(0)=3`
-/

namespace A052673.P5499907422278786781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052673.P5499907422278786781

namespace A052673

/-- `Δ[n*a(n-1)]` -/
def P5499907422278786781.Spec : Prop :=
  ∀ n, P5499907422278786781.a n = A052673 n

end A052673

/-! ## A052673.P8861448887214270810

`Δ[∏[a(n-1)+1]]` with `a(0)=3, a(1)=1`
-/

namespace A052673.P8861448887214270810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052673.P8861448887214270810

namespace A052673

/-- `Δ[∏[a(n-1)+1]]` -/
def P8861448887214270810.Spec : Prop :=
  ∀ n, P8861448887214270810.a n = A052673 n

end A052673

/-! ## A052673.P6721412164642913615

`Δ[∏[C(n, a(n-1))]]` with `a(0)=3, a(1)=1`
-/

namespace A052673.P6721412164642913615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  Nat.choose n (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052673.P6721412164642913615

namespace A052673

/-- `Δ[∏[C(n, a(n-1))]]` -/
def P6721412164642913615.Spec : Prop :=
  ∀ n, P6721412164642913615.a n = A052673 n

end A052673

/-! ## A052673.P4683723292605439169

`3*n*∏[ceil(abs(γ-n))]`
-/

namespace A052673.P4683723292605439169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052673.P4683723292605439169

namespace A052673

/-- `3*n*∏[ceil(abs(γ-n))]` -/
def P4683723292605439169.Spec : Prop :=
  ∀ n, P4683723292605439169.a n = A052673 n

end A052673

/-! ## A052673.P2813621131040528998

`Δ[a(n-1)/tan(acot(n))]` with `a(0)=3`
-/

namespace A052673.P2813621131040528998
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052673.P2813621131040528998

namespace A052673

/-- `Δ[a(n-1)/tan(acot(n))]` -/
def P2813621131040528998.Spec : Prop :=
  ∀ n, P2813621131040528998.a n = (A052673 n : ℝ)

end A052673

/-! ## A052673.P10164372901935244148

`Δ[a(n-1)/n^-1]` with `a(0)=3`
-/

namespace A052673.P10164372901935244148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052673.P10164372901935244148

namespace A052673

/-- `Δ[a(n-1)/n^-1]` -/
def P10164372901935244148.Spec : Prop :=
  ∀ n, P10164372901935244148.a n = (A052673 n : ℚ)

end A052673

/-!
# A052674: Expansion of e.g.f. (1-x)/(1-3*x-2*x^2+2*x^3).

The programs for A052674, the canonical program `A052674.P7507046658556235038` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052674 has offset 0).

The definition of A052674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052674.P7507046658556235038

`n!*A052543(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052674

/-- `n!*A052543(n)` -/
def P7507046658556235038.Spec : Prop :=
  ∀ n, P7507046658556235038.a n = A052674 n

theorem P7507046658556235038.correct : P7507046658556235038.Spec := by
  intro n
  simp only [A052674]

end A052674

/-! ## A052674.P12290190220870775668

`A000142(n)*A052543(n)`
-/

namespace A052674.P12290190220870775668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052543 n

end

end A052674.P12290190220870775668

namespace A052674

/-- `A000142(n)*A052543(n)` -/
def P12290190220870775668.Spec : Prop :=
  ∀ n, P12290190220870775668.a n = A052674 n

end A052674

/-! ## A052674.P12175835068312312633

`Δ[A003422(n)]*A052543(n)`
-/

namespace A052674.P12175835068312312633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052543 n

end

end A052674.P12175835068312312633

namespace A052674

/-- `Δ[A003422(n)]*A052543(n)` -/
def P12175835068312312633.Spec : Prop :=
  ∀ n, P12175835068312312633.a n = A052674 n

end A052674

/-! ## A052674.P13277761476626629489

`∏[A028310(n)]*A052543(n)`
-/

namespace A052674.P13277761476626629489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052543 n

end

end A052674.P13277761476626629489

namespace A052674

/-- `∏[A028310(n)]*A052543(n)` -/
def P13277761476626629489.Spec : Prop :=
  ∀ n, P13277761476626629489.a n = A052674 n

end A052674

/-! ## A052674.P923114409044167754

`(A214997(n)-A214996(n))*n!`
-/

namespace A052674.P923114409044167754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214997 n - A214996 n) * (Nat.factorial n : ℤ)

end

end A052674.P923114409044167754

namespace A052674

/-- `(A214997(n)-A214996(n))*n!` -/
def P923114409044167754.Spec : Prop :=
  ∀ n, P923114409044167754.a n = A052674 n

end A052674

/-! ## A052674.P16881139569987128560

`A052590(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A052674.P16881139569987128560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052590 n - (n : ℤ) * a (n - 1)

end

end A052674.P16881139569987128560

namespace A052674

/-- `A052590(n)-n*a(n-1)` -/
def P16881139569987128560.Spec : Prop :=
  ∀ n, P16881139569987128560.a n = A052674 n

end A052674

/-!
# A052675: Expansion of e.g.f. (1-x)/(1-5*x).

The programs for A052675, the canonical program `A052675.P5395521464428565093` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052675 has offset 0).

The definition of A052675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052675.P5395521464428565093

`5*n*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052675

/-- `5*n*a(n-1)` -/
def P5395521464428565093.Spec : Prop :=
  ∀ n, (P5395521464428565093.a n : ℤ) = A052675 n

theorem P5395521464428565093.correct : P5395521464428565093.Spec := by
  intro n
  simp only [A052675]

end A052675

/-! ## A052675.P10895549537265964191

`n!*A005054(n)`
-/

namespace A052675.P10895549537265964191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005054 n

end

end A052675.P10895549537265964191

namespace A052675

/-- `n!*A005054(n)` -/
def P10895549537265964191.Spec : Prop :=
  ∀ n, P10895549537265964191.a n = A052675 n

end A052675

/-! ## A052675.P962861468783111705

`∏[a(n-1)+5]` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A052675.P962861468783111705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052675.P962861468783111705

namespace A052675

/-- `∏[a(n-1)+5]` -/
def P962861468783111705.Spec : Prop :=
  ∀ n, (P962861468783111705.a n : ℤ) = A052675 n

end A052675

/-! ## A052675.P16906589339176492131

`n!*Δ[floor(5^(n-1))]`
-/

namespace A052675.P16906589339176492131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052675.P16906589339176492131

namespace A052675

/-- `n!*Δ[floor(5^(n-1))]` -/
def P16906589339176492131.Spec : Prop :=
  ∀ n, P16906589339176492131.a n = A052675 n

end A052675

/-! ## A052675.P17482741907389062523

`ceil(n!*Δ[5^(n-1)])`
-/

namespace A052675.P17482741907389062523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n)⌉

end

end A052675.P17482741907389062523

namespace A052675

/-- `ceil(n!*Δ[5^(n-1)])` -/
def P17482741907389062523.Spec : Prop :=
  ∀ n, P17482741907389062523.a n = A052675 n

end A052675

/-! ## A052675.P1042233984167744105

`round(n!*Δ[5^(n-1)])`
-/

namespace A052675.P1042233984167744105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n))

end

end A052675.P1042233984167744105

namespace A052675

/-- `round(n!*Δ[5^(n-1)])` -/
def P1042233984167744105.Spec : Prop :=
  ∀ n, P1042233984167744105.a n = A052675 n

end A052675

/-! ## A052675.P8458200583697302872

`∏[abs(C(n, n²)-5*n)]`
-/

namespace A052675.P8458200583697302872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n (n ^ 2) : ℤ) - (5 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052675.P8458200583697302872

namespace A052675

/-- `∏[abs(C(n, n²)-5*n)]` -/
def P8458200583697302872.Spec : Prop :=
  ∀ n, P8458200583697302872.a n = A052675 n

end A052675

/-! ## A052675.P9146987783622291176

`∏[record[Δ[A133623(n+3)]]]`
-/

namespace A052675.P9146987783622291176
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133623 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052675.P9146987783622291176

namespace A052675

/-- `∏[record[Δ[A133623(n+3)]]]` -/
def P9146987783622291176.Spec : Prop :=
  ∀ n, P9146987783622291176.a n = A052675 n

end A052675

/-! ## A052675.P5597631196879543299

`a(n-1)*A008587(n)` with `a(0)=1, a(1)=4`
-/

namespace A052675.P5597631196879543299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * A008587 n

end

end A052675.P5597631196879543299

namespace A052675

/-- `a(n-1)*A008587(n)` -/
def P5597631196879543299.Spec : Prop :=
  ∀ n, P5597631196879543299.a n = A052675 n

end A052675

/-! ## A052675.P447609456513190423

`a(n-1)*A008706(n)` with `a(0)=1, a(1)=4`
-/

namespace A052675.P447609456513190423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * A008706 n

end

end A052675.P447609456513190423

namespace A052675

/-- `a(n-1)*A008706(n)` -/
def P447609456513190423.Spec : Prop :=
  ∀ n, P447609456513190423.a n = A052675 n

end A052675

/-!
# A052676: Expansion of e.g.f. 3*x/(1 - 2*x).

The programs for A052676, the canonical program `A052676.P3088408539660262699` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052676 has offset 0).

The definition of A052676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052676.P3088408539660262699

`2*n*a(n-1)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052676

/-- `2*n*a(n-1)` -/
def P3088408539660262699.Spec : Prop :=
  ∀ n, (P3088408539660262699.a n : ℤ) = A052676 n

theorem P3088408539660262699.correct : P3088408539660262699.Spec := by
  intro n
  simp only [A052676]

end A052676

/-! ## A052676.P6445973056604413730

`3*n!*floor(2^(n-1))`
-/

namespace A052676.P6445973056604413730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.factorial n : ℤ) * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋)

end

end A052676.P6445973056604413730

namespace A052676

/-- `3*n!*floor(2^(n-1))` -/
def P6445973056604413730.Spec : Prop :=
  ∀ n, P6445973056604413730.a n = A052676 n

end A052676

/-! ## A052676.P2728541757040014661

`2*floor(n*a(floor(n²/(n+1))))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A052676.P2728541757040014661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A052676.P2728541757040014661

namespace A052676

/-- `2*floor(n*a(floor(n²/(n+1))))` -/
def P2728541757040014661.Spec : Prop :=
  ∀ n, (P2728541757040014661.a n : ℤ) = A052676 n

end A052676

/-! ## A052676.P11130386599681411561

`a(n-1)/n^-1+a(n-1)/tan(acot(n))` with `a(0)=0, a(1)=3`
-/

namespace A052676.P11130386599681411561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A052676.P11130386599681411561

namespace A052676

/-- `a(n-1)/n^-1+a(n-1)/tan(acot(n))` -/
def P11130386599681411561.Spec : Prop :=
  ∀ n, P11130386599681411561.a n = (A052676 n : ℝ)

end A052676

/-! ## A052676.P7464289517506274196

`3*A392473(n²)`
-/

namespace A052676.P7464289517506274196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A392473 (n ^ 2)

end

end A052676.P7464289517506274196

namespace A052676

/-- `3*A392473(n²)` -/
def P7464289517506274196.Spec : Prop :=
  ∀ n, P7464289517506274196.a n = A052676 n

end A052676

/-! ## A052676.P14052897364496635381

`3*lcm(n, A002866(n))`
-/

namespace A052676.P14052897364496635381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Int.lcm (n : ℤ) (A002866 n)

end

end A052676.P14052897364496635381

namespace A052676

/-- `3*lcm(n, A002866(n))` -/
def P14052897364496635381.Spec : Prop :=
  ∀ n, (P14052897364496635381.a n : ℤ) = A052676 n

end A052676

/-! ## A052676.P14141598545749495502

`a(n-1)*A004277(n)` with `a(0)=0, a(1)=3`
-/

namespace A052676.P14141598545749495502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) * A004277 n

end

end A052676.P14141598545749495502

namespace A052676

/-- `a(n-1)*A004277(n)` -/
def P14141598545749495502.Spec : Prop :=
  ∀ n, P14141598545749495502.a n = A052676 n

end A052676

/-! ## A052676.P4316186518444569016

`a(n-1)*A005843(n)` with `a(0)=0, a(1)=3`
-/

namespace A052676.P4316186518444569016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) * A005843 n

end

end A052676.P4316186518444569016

namespace A052676

/-- `a(n-1)*A005843(n)` -/
def P4316186518444569016.Spec : Prop :=
  ∀ n, P4316186518444569016.a n = A052676 n

end A052676

/-! ## A052676.P4084465107362470508

`3*n*A000165(abs(1-n))`
-/

namespace A052676.P4084465107362470508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A000165 |1 - (n : ℤ)|.toNat)

end

end A052676.P4084465107362470508

namespace A052676

/-- `3*n*A000165(abs(1-n))` -/
def P4084465107362470508.Spec : Prop :=
  ∀ n, P4084465107362470508.a n = A052676 n

end A052676

/-!
# A052677: Expansion of e.g.f. (1-x)/(1-4*x+x^2).

The programs for A052677, the canonical program `A052677.P3595838962599087192` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052677 has offset 0).

The definition of A052677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052677.P3595838962599087192

`n!*A079935(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052677

/-- `n!*A079935(n+1)` -/
def P3595838962599087192.Spec : Prop :=
  ∀ n, P3595838962599087192.a n = A052677 n

theorem P3595838962599087192.correct : P3595838962599087192.Spec := by
  intro n
  simp only [A052677]

end A052677

/-! ## A052677.P7730630915255418466

`n!*Δ[A001353(n)]`
-/

namespace A052677.P7730630915255418466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052677.P7730630915255418466

namespace A052677

/-- `n!*Δ[A001353(n)]` -/
def P7730630915255418466.Spec : Prop :=
  ∀ n, P7730630915255418466.a n = A052677 n

end A052677

/-! ## A052677.P3362459713074880001

`n!*Δ[A072110(n)]`
-/

namespace A052677.P3362459713074880001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052677.P3362459713074880001

namespace A052677

/-- `n!*Δ[A072110(n)]` -/
def P3362459713074880001.Spec : Prop :=
  ∀ n, P3362459713074880001.a n = A052677 n

end A052677

/-! ## A052677.P12968510370401496092

`n!*A001835(n+1)`
-/

namespace A052677.P12968510370401496092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001835 (n + 1)

end

end A052677.P12968510370401496092

namespace A052677

/-- `n!*A001835(n+1)` -/
def P12968510370401496092.Spec : Prop :=
  ∀ n, P12968510370401496092.a n = A052677 n

end A052677

/-! ## A052677.P5894857497738612116

`n!*A254308(3*n+1)`
-/

namespace A052677.P5894857497738612116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A254308 (3 * n + 1)

end

end A052677.P5894857497738612116

namespace A052677

/-- `n!*A254308(3*n+1)` -/
def P5894857497738612116.Spec : Prop :=
  ∀ n, P5894857497738612116.a n = A052677 n

end A052677

/-! ## A052677.P5875283039451932808

`A052606(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052677.P5875283039451932808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052606 n + (n : ℤ) * a (n - 1)

end

end A052677.P5875283039451932808

namespace A052677

/-- `A052606(n)+n*a(n-1)` -/
def P5875283039451932808.Spec : Prop :=
  ∀ n, P5875283039451932808.a n = A052677 n

end A052677

/-! ## A052677.P15946474973682358688

`(2*A101265(n+1)-1)*n!`
-/

namespace A052677.P15946474973682358688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A101265 (n + 1) - 1) * (Nat.factorial n : ℤ)

end

end A052677.P15946474973682358688

namespace A052677

/-- `(2*A101265(n+1)-1)*n!` -/
def P15946474973682358688.Spec : Prop :=
  ∀ n, P15946474973682358688.a n = A052677 n

end A052677

/-! ## A052677.P16447127067382739644

`n!*A002530(A005408(n))`
-/

namespace A052677.P16447127067382739644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002530 (A005408 n).toNat

end

end A052677.P16447127067382739644

namespace A052677

/-- `n!*A002530(A005408(n))` -/
def P16447127067382739644.Spec : Prop :=
  ∀ n, P16447127067382739644.a n = A052677 n

end A052677

/-! ## A052677.P2219060533113779291

`Δ[A001353(n)]*A000142(n)`
-/

namespace A052677.P2219060533113779291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052677.P2219060533113779291

namespace A052677

/-- `Δ[A001353(n)]*A000142(n)` -/
def P2219060533113779291.Spec : Prop :=
  ∀ n, P2219060533113779291.a n = A052677 n

end A052677

/-! ## A052677.P4861835428978678022

`A000142(n)*A001835(n+1)`
-/

namespace A052677.P4861835428978678022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001835 (n + 1)

end

end A052677.P4861835428978678022

namespace A052677

/-- `A000142(n)*A001835(n+1)` -/
def P4861835428978678022.Spec : Prop :=
  ∀ n, P4861835428978678022.a n = A052677 n

end A052677

/-!
# A052678: Expansion of e.g.f. x^3/(1-3*x).

The programs for A052678, the canonical program `A052678.P17465310019653608907` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052678 has offset 0).

The definition of A052678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052678.P17465310019653608907

`3*n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052678

/-- `3*n*a(n-1)` -/
def P17465310019653608907.Spec : Prop :=
  ∀ n, (P17465310019653608907.a n : ℤ) = A052678 n

theorem P17465310019653608907.correct : P17465310019653608907.Spec := by
  intro n
  simp only [A052678]

end A052678

/-! ## A052678.P15201007078272957311

`floor(3^(n-3)*n!)`
-/

namespace A052678.P15201007078272957311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.factorial n : ℚ)⌋

end

end A052678.P15201007078272957311

namespace A052678

/-- `floor(3^(n-3)*n!)` -/
def P15201007078272957311.Spec : Prop :=
  ∀ n, P15201007078272957311.a n = A052678 n

end A052678

/-! ## A052678.P18332851243795442515

`floor(A052700(n)/6)`
-/

namespace A052678.P18332851243795442515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052700 n : ℚ) / 6⌋

end

end A052678.P18332851243795442515

namespace A052678

/-- `floor(A052700(n)/6)` -/
def P18332851243795442515.Spec : Prop :=
  ∀ n, P18332851243795442515.a n = A052678 n

end A052678

/-! ## A052678.P10634046612173149827

`floor(A052690(n)/9)`
-/

namespace A052678.P10634046612173149827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052690 n : ℚ) / 9⌋

end

end A052678.P10634046612173149827

namespace A052678

/-- `floor(A052690(n)/9)` -/
def P10634046612173149827.Spec : Prop :=
  ∀ n, P10634046612173149827.a n = A052678 n

end A052678

/-! ## A052678.P18249105025190488226

`floor(A052563(n)/18)`
-/

namespace A052678.P18249105025190488226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052563 n : ℚ) / 18⌋

end

end A052678.P18249105025190488226

namespace A052678

/-- `floor(A052563(n)/18)` -/
def P18249105025190488226.Spec : Prop :=
  ∀ n, P18249105025190488226.a n = A052678 n

end A052678

/-! ## A052678.P8377735321639577573

`floor(A032031(n)/27)`
-/

namespace A052678.P8377735321639577573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032031 n : ℚ) / 27⌋

end

end A052678.P8377735321639577573

namespace A052678

/-- `floor(A032031(n)/27)` -/
def P8377735321639577573.Spec : Prop :=
  ∀ n, P8377735321639577573.a n = A052678 n

end A052678

/-! ## A052678.P5155682487667530293

`floor(∏[A008486(n)]/27)`
-/

namespace A052678.P5155682487667530293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 27⌋

end

end A052678.P5155682487667530293

namespace A052678

/-- `floor(∏[A008486(n)]/27)` -/
def P5155682487667530293.Spec : Prop :=
  ∀ n, P5155682487667530293.a n = A052678 n

end A052678

/-!
# A052679: Expansion of e.g.f. (1-x^2)/(1-x^2-x^3).

The programs for A052679, the canonical program `A052679.P683246207456302216` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052679 has offset 0).

The definition of A052679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052679.P683246207456302216

`n!*A000931(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052679

/-- `n!*A000931(n)` -/
def P683246207456302216.Spec : Prop :=
  ∀ n, P683246207456302216.a n = A052679 n

theorem P683246207456302216.correct : P683246207456302216.Spec := by
  intro n
  simp only [A052679]

end A052679

/-! ## A052679.P17554667430674950566

`sqrt(A133037(n))*n!`
-/

namespace A052679.P17554667430674950566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133037 n : ℝ) * (Nat.factorial n : ℝ)

end

end A052679.P17554667430674950566

namespace A052679

/-- `sqrt(A133037(n))*n!` -/
def P17554667430674950566.Spec : Prop :=
  ∀ n, P17554667430674950566.a n = (A052679 n : ℝ)

end A052679

/-! ## A052679.P8793678310784328934

`n!*A144961(∑[n])`
-/

namespace A052679.P8793678310784328934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A144961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052679.P8793678310784328934

namespace A052679

/-- `n!*A144961(∑[n])` -/
def P8793678310784328934.Spec : Prop :=
  ∀ n, P8793678310784328934.a n = A052679 n

end A052679

/-! ## A052679.P13126619135110520696

`n!*A078027(n+2)`
-/

namespace A052679.P13126619135110520696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A078027 (n + 2)

end

end A052679.P13126619135110520696

namespace A052679

/-- `n!*A078027(n+2)` -/
def P13126619135110520696.Spec : Prop :=
  ∀ n, P13126619135110520696.a n = A052679 n

end A052679

/-! ## A052679.P16749689171547348394

`n!*A133034(n+4)`
-/

namespace A052679.P16749689171547348394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A133034 (n + 4)

end

end A052679.P16749689171547348394

namespace A052679

/-- `n!*A133034(n+4)` -/
def P16749689171547348394.Spec : Prop :=
  ∀ n, P16749689171547348394.a n = A052679 n

end A052679

/-! ## A052679.P13469302932115226046

`n!*Δ[A052954(n+1)]`
-/

namespace A052679.P13469302932115226046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052679.P13469302932115226046

namespace A052679

/-- `n!*Δ[A052954(n+1)]` -/
def P13469302932115226046.Spec : Prop :=
  ∀ n, P13469302932115226046.a n = A052679 n

end A052679

/-! ## A052679.P11755573059948253705

`n!*Δ[A182097(n+1)]`
-/

namespace A052679.P11755573059948253705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052679.P11755573059948253705

namespace A052679

/-- `n!*Δ[A182097(n+1)]` -/
def P11755573059948253705.Spec : Prop :=
  ∀ n, P11755573059948253705.a n = A052679 n

end A052679

/-! ## A052679.P4926061551503089041

`n!*Δ[abs(Δ[A077883(n)])]`
-/

namespace A052679.P4926061551503089041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052679.P4926061551503089041

namespace A052679

/-- `n!*Δ[abs(Δ[A077883(n)])]` -/
def P4926061551503089041.Spec : Prop :=
  ∀ n, P4926061551503089041.a n = A052679 n

end A052679

/-! ## A052679.P6688994613827594460

`n!*Δ[Δ[Δ[A167385(n)]]]`
-/

namespace A052679.P6688994613827594460
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052679.P6688994613827594460

namespace A052679

/-- `n!*Δ[Δ[Δ[A167385(n)]]]` -/
def P6688994613827594460.Spec : Prop :=
  ∀ n, P6688994613827594460.a n = A052679 n

end A052679

/-! ## A052679.P14843143812534981045

`A000142(n)*A000931(n)`
-/

namespace A052679.P14843143812534981045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000931 n

end

end A052679.P14843143812534981045

namespace A052679

/-- `A000142(n)*A000931(n)` -/
def P14843143812534981045.Spec : Prop :=
  ∀ n, P14843143812534981045.a n = A052679 n

end A052679

/-!
# A052680: Expansion of e.g.f. (1-2*x)/(1-4*x+2*x^2).

The programs for A052680, the canonical program `A052680.P16614700781133846638` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052680 has offset 0).

The definition of A052680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052680.P16614700781133846638

`n!*A006012(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052680

/-- `n!*A006012(n)` -/
def P16614700781133846638.Spec : Prop :=
  ∀ n, P16614700781133846638.a n = A052680 n

theorem P16614700781133846638.correct : P16614700781133846638.Spec := by
  intro n
  simp only [A052680]

end A052680

/-! ## A052680.P5168359303107730441

`4*n*a(n-1)-2*n*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052680.P5168359303107730441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * ((n : ℤ) * a (n - 1)) - 2 * ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2)))

end

end A052680.P5168359303107730441

namespace A052680

/-- `4*n*a(n-1)-2*n*(n-1)*a(n-2)` -/
def P5168359303107730441.Spec : Prop :=
  ∀ n, P5168359303107730441.a n = A052680 n

end A052680

/-! ## A052680.P17431563529455076571

`n!*A062112(2*n+1)`
-/

namespace A052680.P17431563529455076571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A062112 (2 * n + 1)

end

end A052680.P17431563529455076571

namespace A052680

/-- `n!*A062112(2*n+1)` -/
def P17431563529455076571.Spec : Prop :=
  ∀ n, P17431563529455076571.a n = A052680 n

end A052680

/-! ## A052680.P8370376466558118166

`A052659(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052680.P8370376466558118166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052659 n + (n : ℤ) * a (n - 1)

end

end A052680.P8370376466558118166

namespace A052680

/-- `A052659(n)+n*a(n-1)` -/
def P8370376466558118166.Spec : Prop :=
  ∀ n, P8370376466558118166.a n = A052680 n

end A052680

/-! ## A052680.P13411219122055130280

`A000142(n)*A006012(n)`
-/

namespace A052680.P13411219122055130280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006012 n

end

end A052680.P13411219122055130280

namespace A052680

/-- `A000142(n)*A006012(n)` -/
def P13411219122055130280.Spec : Prop :=
  ∀ n, P13411219122055130280.a n = A052680 n

end A052680

/-! ## A052680.P4563549651965248197

`Δ[A003422(n)]*A006012(n)`
-/

namespace A052680.P4563549651965248197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006012 n

end

end A052680.P4563549651965248197

namespace A052680

/-- `Δ[A003422(n)]*A006012(n)` -/
def P4563549651965248197.Spec : Prop :=
  ∀ n, P4563549651965248197.a n = A052680 n

end A052680

/-! ## A052680.P6984043449870901938

`A000142(n)*A030436(2*n)`
-/

namespace A052680.P6984043449870901938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A030436 (2 * n)

end

end A052680.P6984043449870901938

namespace A052680

/-- `A000142(n)*A030436(2*n)` -/
def P6984043449870901938.Spec : Prop :=
  ∀ n, P6984043449870901938.a n = A052680 n

end A052680

/-!
# A052681: Expansion of e.g.f. (1-x)/(1 - x - x^2 - 2*x^3 + 2*x^4).

The programs for A052681, the canonical program `A052681.P4809825273475906253` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052681 has offset 0).

The definition of A052681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052681.P4809825273475906253

`n!*A052546(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052681

/-- `n!*A052546(n)` -/
def P4809825273475906253.Spec : Prop :=
  ∀ n, P4809825273475906253.a n = A052681 n

theorem P4809825273475906253.correct : P4809825273475906253.Spec := by
  intro n
  simp only [A052681]

end A052681

/-! ## A052681.P12828649435804256784

`A000142(n)*A052546(n)`
-/

namespace A052681.P12828649435804256784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052546 n

end

end A052681.P12828649435804256784

namespace A052681

/-- `A000142(n)*A052546(n)` -/
def P12828649435804256784.Spec : Prop :=
  ∀ n, P12828649435804256784.a n = A052681 n

end A052681

/-! ## A052681.P14913156083809905301

`A052560(n)/3*A052546(n)`
-/

namespace A052681.P14913156083809905301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052560 n : ℚ) / 3 * (A052546 n : ℚ)

end

end A052681.P14913156083809905301

namespace A052681

/-- `A052560(n)/3*A052546(n)` -/
def P14913156083809905301.Spec : Prop :=
  ∀ n, P14913156083809905301.a n = (A052681 n : ℚ)

theorem P14913156083809905301.correct : P14913156083809905301.Spec := by
  intro n
  simp only [A052681, Nat.add_sub_cancel, A052681.P14913156083809905301.a, A052681.P4809825273475906253.a, A052546, A052546.P12318279396022559641.a, A052560, A052560.P16127495256931462694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052681

/-! ## A052681.P2598602719178304071

`gcd(A052560(n), A052565(n))*A052546(n)`
-/

namespace A052681.P2598602719178304071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052560 n) (A052565 n) : ℤ) * A052546 n

end

end A052681.P2598602719178304071

namespace A052681

/-- `gcd(A052560(n), A052565(n))*A052546(n)` -/
def P2598602719178304071.Spec : Prop :=
  ∀ n, P2598602719178304071.a n = A052681 n

end A052681

/-! ## A052681.P14975714478359937861

`gcd(A052566(n), A052572(n))*A052546(n)`
-/

namespace A052681.P14975714478359937861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A052566 n) (A052572 n) : ℤ) * A052546 n

end

end A052681.P14975714478359937861

namespace A052681

/-- `gcd(A052566(n), A052572(n))*A052546(n)` -/
def P14975714478359937861.Spec : Prop :=
  ∀ n, P14975714478359937861.a n = A052681 n

end A052681

/-!
# A052682: Expansion of e.g.f. (1-x)/(1-x-3*x^2).

The programs for A052682, the canonical program `A052682.P16100672050536543859` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052682 has offset 0).

The definition of A052682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052682.P16100672050536543859

`n*a(n-1)+3*n*(n-1)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052682

/-- `n*a(n-1)+3*n*(n-1)*a(n-2)` -/
def P16100672050536543859.Spec : Prop :=
  ∀ n, P16100672050536543859.a n = A052682 n

theorem P16100672050536543859.correct : P16100672050536543859.Spec := by
  intro n
  simp only [A052682]

end A052682

/-! ## A052682.P7328854490667294663

`n!*A052533(n)`
-/

namespace A052682.P7328854490667294663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052533 n

end

end A052682.P7328854490667294663

namespace A052682

/-- `n!*A052533(n)` -/
def P7328854490667294663.Spec : Prop :=
  ∀ n, P7328854490667294663.a n = A052682 n

end A052682

/-! ## A052682.P7601869508785002352

`A000142(n)*A052533(n)`
-/

namespace A052682.P7601869508785002352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052533 n

end

end A052682.P7601869508785002352

namespace A052682

/-- `A000142(n)*A052533(n)` -/
def P7601869508785002352.Spec : Prop :=
  ∀ n, P7601869508785002352.a n = A052682 n

end A052682

/-! ## A052682.P233078081689010393

`∏[A028310(n)]*A052533(n)`
-/

namespace A052682.P233078081689010393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052533 n

end

end A052682.P233078081689010393

namespace A052682

/-- `∏[A028310(n)]*A052533(n)` -/
def P233078081689010393.Spec : Prop :=
  ∀ n, P233078081689010393.a n = A052682 n

end A052682

/-! ## A052682.P6535479381993011994

`∏[A065033(2*n)]*A052533(n)`
-/

namespace A052682.P6535479381993011994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052533 n

end

end A052682.P6535479381993011994

namespace A052682

/-- `∏[A065033(2*n)]*A052533(n)` -/
def P6535479381993011994.Spec : Prop :=
  ∀ n, P6535479381993011994.a n = A052682 n

end A052682

/-! ## A052682.P17214195395075693160

`A052533(n)*A094587(A000124(n))`
-/

namespace A052682.P17214195395075693160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n * A094587 (A000124 n).toNat

end

end A052682.P17214195395075693160

namespace A052682

/-- `A052533(n)*A094587(A000124(n))` -/
def P17214195395075693160.Spec : Prop :=
  ∀ n, P17214195395075693160.a n = A052682 n

end A052682

/-! ## A052682.P6694934565706440667

`A052533(n)*A094587(A000217(n))`
-/

namespace A052682.P6694934565706440667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n * A094587 (A000217 n).toNat

end

end A052682.P6694934565706440667

namespace A052682

/-- `A052533(n)*A094587(A000217(n))` -/
def P6694934565706440667.Spec : Prop :=
  ∀ n, P6694934565706440667.a n = A052682 n

end A052682

/-!
# A052683: Expansion of e.g.f. 2*x^4/(1-x).

The programs for A052683, the canonical program `A052683.P5920875682378470517` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052683 has offset 0).

The definition of A052683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052683.P5920875682378470517

`n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=48`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052683

/-- `n*a(n-1)` -/
def P5920875682378470517.Spec : Prop :=
  ∀ n, (P5920875682378470517.a n : ℤ) = A052683 n

theorem P5920875682378470517.correct : P5920875682378470517.Spec := by
  intro n
  simp only [A052683]

end A052683

/-! ## A052683.P814916161105017830

`2*and(-8, n!)`
-/

namespace A052683.P814916161105017830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (-8) (Nat.factorial n : ℤ)

end

end A052683.P814916161105017830

namespace A052683

/-- `2*and(-8, n!)` -/
def P814916161105017830.Spec : Prop :=
  ∀ n, P814916161105017830.a n = A052683 n

end A052683

/-! ## A052683.P1031743217431282353

`2*(or(7, n!)-7)`
-/

namespace A052683.P1031743217431282353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor 7 (Nat.factorial n) : ℤ) - 7)

end

end A052683.P1031743217431282353

namespace A052683

/-- `2*(or(7, n!)-7)` -/
def P1031743217431282353.Spec : Prop :=
  ∀ n, P1031743217431282353.a n = A052683 n

end A052683

/-! ## A052683.P9435603095692261070

`2*lcm(n!, C(n, 4))`
-/

namespace A052683.P9435603095692261070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm (Nat.factorial n) (Nat.choose n 4)

end

end A052683.P9435603095692261070

namespace A052683

/-- `2*lcm(n!, C(n, 4))` -/
def P9435603095692261070.Spec : Prop :=
  ∀ n, (P9435603095692261070.a n : ℤ) = A052683 n

end A052683

/-! ## A052683.P11077926614460922506

`n!*and(2, n!-1)`
-/

namespace A052683.P11077926614460922506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * Int.land 2 ((Nat.factorial n : ℤ) - 1)

end

end A052683.P11077926614460922506

namespace A052683

/-- `n!*and(2, n!-1)` -/
def P11077926614460922506.Spec : Prop :=
  ∀ n, P11077926614460922506.a n = A052683 n

end A052683

/-! ## A052683.P876201249958414194

`and(-16, ∏[n!%2+n])`
-/

namespace A052683.P876201249958414194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-16) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052683.P876201249958414194

namespace A052683

/-- `and(-16, ∏[n!%2+n])` -/
def P876201249958414194.Spec : Prop :=
  ∀ n, P876201249958414194.a n = A052683 n

end A052683

/-! ## A052683.P826310428337824365

`lcm(2*n!, A134119(n))`
-/

namespace A052683.P826310428337824365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * Nat.factorial n : ℤ) (A134119 n)

end

end A052683.P826310428337824365

namespace A052683

/-- `lcm(2*n!, A134119(n))` -/
def P826310428337824365.Spec : Prop :=
  ∀ n, (P826310428337824365.a n : ℤ) = A052683 n

end A052683

/-! ## A052683.P4780247044084509595

`lcm(floor(n/4), A052849(n))`
-/

namespace A052683.P4780247044084509595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊(n : ℚ) / 4⌋ (A052849 n)

end

end A052683.P4780247044084509595

namespace A052683

/-- `lcm(floor(n/4), A052849(n))` -/
def P4780247044084509595.Spec : Prop :=
  ∀ n, (P4780247044084509595.a n : ℤ) = A052683 n

end A052683

/-! ## A052683.P5391730760391976246

`lcm(∏[abs(1-n)+1], A052762(n))`
-/

namespace A052683.P5391730760391976246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A052762 n)

end

end A052683.P5391730760391976246

namespace A052683

/-- `lcm(∏[abs(1-n)+1], A052762(n))` -/
def P5391730760391976246.Spec : Prop :=
  ∀ n, (P5391730760391976246.a n : ℤ) = A052683 n

end A052683

/-! ## A052683.P7435552479317913767

`lcm(A000332(n), A052628(n))`
-/

namespace A052683.P7435552479317913767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000332 n) (A052628 n)

end

end A052683.P7435552479317913767

namespace A052683

/-- `lcm(A000332(n), A052628(n))` -/
def P7435552479317913767.Spec : Prop :=
  ∀ n, (P7435552479317913767.a n : ℤ) = A052683 n

end A052683

/-!
# A052684: Expansion of e.g.f. 1/(1-2*x^2-x^3).

The programs for A052684, the canonical program `A052684.P9845256691455038953` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052684 has offset 0).

The definition of A052684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052684.P9845256691455038953

`2*n*(n-1)*a(n-2)+n*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052684

/-- `2*n*(n-1)*a(n-2)+n*(n-1)*(n-2)*a(n-3)` -/
def P9845256691455038953.Spec : Prop :=
  ∀ n, P9845256691455038953.a n = A052684 n

theorem P9845256691455038953.correct : P9845256691455038953.Spec := by
  intro n
  simp only [A052684]

end A052684

/-! ## A052684.P13446285992052284730

`n!*A008346(n)`
-/

namespace A052684.P13446285992052284730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A008346 n

end

end A052684.P13446285992052284730

namespace A052684

/-- `n!*A008346(n)` -/
def P13446285992052284730.Spec : Prop :=
  ∀ n, P13446285992052284730.a n = A052684 n

end A052684

/-! ## A052684.P12064049560994549039

`n!*∑[A078024(n)]`
-/

namespace A052684.P12064049560994549039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052684.P12064049560994549039

namespace A052684

/-- `n!*∑[A078024(n)]` -/
def P12064049560994549039.Spec : Prop :=
  ∀ n, P12064049560994549039.a n = A052684 n

end A052684

/-! ## A052684.P9626605396386223603

`n!*Δ[A074331(n)]`
-/

namespace A052684.P9626605396386223603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052684.P9626605396386223603

namespace A052684

/-- `n!*Δ[A074331(n)]` -/
def P9626605396386223603.Spec : Prop :=
  ∀ n, P9626605396386223603.a n = A052684 n

end A052684

/-! ## A052684.P2901823821016420130

`n!*Δ[A127968(n)]`
-/

namespace A052684.P2901823821016420130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052684.P2901823821016420130

namespace A052684

/-- `n!*Δ[A127968(n)]` -/
def P2901823821016420130.Spec : Prop :=
  ∀ n, P2901823821016420130.a n = A052684 n

end A052684

/-! ## A052684.P15083430550841274864

`n!*Δ[floor(ϕ*A000045(n))]`
-/

namespace A052684.P15083430550841274864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A000045 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052684.P15083430550841274864

namespace A052684

/-- `n!*Δ[floor(ϕ*A000045(n))]` -/
def P15083430550841274864.Spec : Prop :=
  ∀ n, P15083430550841274864.a n = A052684 n

end A052684

/-! ## A052684.P9471600951252960739

`A005442(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A052684.P9471600951252960739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005442 n - (n : ℤ) * a (n - 1)

end

end A052684.P9471600951252960739

namespace A052684

/-- `A005442(n)-n*a(n-1)` -/
def P9471600951252960739.Spec : Prop :=
  ∀ n, P9471600951252960739.a n = A052684 n

end A052684

/-! ## A052684.P1427771181500256406

`n!*A000045(n+1)-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A052684.P1427771181500256406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.factorial n : ℤ) * A000045 (n + 1) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A052684.P1427771181500256406

namespace A052684

/-- `n!*A000045(n+1)-a(n-1)/n^(-1)` -/
def P1427771181500256406.Spec : Prop :=
  ∀ n, P1427771181500256406.a n = (A052684 n : ℚ)

end A052684

/-! ## A052684.P15192370282390171762

`(A033999(n)+A000045(n))*n!`
-/

namespace A052684.P15192370282390171762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A000045 n) * (Nat.factorial n : ℤ)

end

end A052684.P15192370282390171762

namespace A052684

/-- `(A033999(n)+A000045(n))*n!` -/
def P15192370282390171762.Spec : Prop :=
  ∀ n, P15192370282390171762.a n = A052684 n

end A052684

/-! ## A052684.P889535360428078361

`(A057077(2*n)+A000045(n))*n!`
-/

namespace A052684.P889535360428078361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057077 (2 * n) + A000045 n) * (Nat.factorial n : ℤ)

end

end A052684.P889535360428078361

namespace A052684

/-- `(A057077(2*n)+A000045(n))*n!` -/
def P889535360428078361.Spec : Prop :=
  ∀ n, P889535360428078361.a n = A052684 n

end A052684

/-!
# A052685: Expansion of e.g.f. (1-x^2)/(1-x-2*x^2+x^4).

The programs for A052685, the canonical program `A052685.P16906311413695888443` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052685 has offset 0).

The definition of A052685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052685.P16906311413695888443

`n!*A052535(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052685

/-- `n!*A052535(n)` -/
def P16906311413695888443.Spec : Prop :=
  ∀ n, P16906311413695888443.a n = A052685 n

theorem P16906311413695888443.correct : P16906311413695888443.Spec := by
  intro n
  simp only [A052685]

end A052685

/-! ## A052685.P9672420771219278706

`n!*A003269(Δ[n²])`
-/

namespace A052685.P9672420771219278706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052685.P9672420771219278706

namespace A052685

/-- `n!*A003269(Δ[n²])` -/
def P9672420771219278706.Spec : Prop :=
  ∀ n, P9672420771219278706.a n = A052685 n

end A052685

/-! ## A052685.P6153220196391819876

`sqrt(A224808(4*n))*n!`
-/

namespace A052685.P6153220196391819876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224808 (4 * n) : ℝ) * (Nat.factorial n : ℝ)

end

end A052685.P6153220196391819876

namespace A052685

/-- `sqrt(A224808(4*n))*n!` -/
def P6153220196391819876.Spec : Prop :=
  ∀ n, P6153220196391819876.a n = (A052685 n : ℝ)

end A052685

/-! ## A052685.P3250385271440296290

`n!*Δ[A072176(n+2)]`
-/

namespace A052685.P3250385271440296290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052685.P3250385271440296290

namespace A052685

/-- `n!*Δ[A072176(n+2)]` -/
def P3250385271440296290.Spec : Prop :=
  ∀ n, P3250385271440296290.a n = A052685 n

end A052685

/-! ## A052685.P9425458053855434177

`n!*A017898(2*(n+2))`
-/

namespace A052685.P9425458053855434177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A017898 (2 * (n + 2))

end

end A052685.P9425458053855434177

namespace A052685

/-- `n!*A017898(2*(n+2))` -/
def P9425458053855434177.Spec : Prop :=
  ∀ n, P9425458053855434177.a n = A052685 n

end A052685

/-! ## A052685.P15170406263207734701

`n!*A122522(4*n+1)`
-/

namespace A052685.P15170406263207734701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A122522 (4 * n + 1)

end

end A052685.P15170406263207734701

namespace A052685

/-- `n!*A122522(4*n+1)` -/
def P15170406263207734701.Spec : Prop :=
  ∀ n, P15170406263207734701.a n = A052685 n

end A052685

/-! ## A052685.P2809147611520478963

`A000142(n)*A052535(n)`
-/

namespace A052685.P2809147611520478963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A052535 n

end

end A052685.P2809147611520478963

namespace A052685

/-- `A000142(n)*A052535(n)` -/
def P2809147611520478963.Spec : Prop :=
  ∀ n, P2809147611520478963.a n = A052685 n

end A052685

/-! ## A052685.P8310642535493757560

`∏[A028310(n)]*A052535(n)`
-/

namespace A052685.P8310642535493757560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052535 n

end

end A052685.P8310642535493757560

namespace A052685

/-- `∏[A028310(n)]*A052535(n)` -/
def P8310642535493757560.Spec : Prop :=
  ∀ n, P8310642535493757560.a n = A052685 n

end A052685

/-! ## A052685.P12955108355508629411

`A000142(n)*A003269(Δ[n²])`
-/

namespace A052685.P12955108355508629411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052685.P12955108355508629411

namespace A052685

/-- `A000142(n)*A003269(Δ[n²])` -/
def P12955108355508629411.Spec : Prop :=
  ∀ n, P12955108355508629411.a n = A052685 n

end A052685

/-! ## A052685.P13782441296251102127

`A003269(2*n+1)/(n+1)*A000142(n+1)`
-/

namespace A052685.P13782441296251102127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003269 (2 * n + 1) : ℚ) / (n + 1 : ℚ) * (A000142 (n + 1) : ℚ)

end

end A052685.P13782441296251102127

namespace A052685

/-- `A003269(2*n+1)/(n+1)*A000142(n+1)` -/
def P13782441296251102127.Spec : Prop :=
  ∀ n, P13782441296251102127.a n = (A052685 n : ℚ)

end A052685

/-!
# A052686: Expansion of e.g.f. x^2*(1+3*x-3*x^2)/(1-x).

The programs for A052686, the canonical program `A052686.P17696709253748959289` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052686 has offset 0).

The definition of A052686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052686.P17696709253748959289

`n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=24, a(4)=24`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052686

/-- `n*a(n-1)` -/
def P17696709253748959289.Spec : Prop :=
  ∀ n, (P17696709253748959289.a n : ℤ) = A052686 n

theorem P17696709253748959289.correct : P17696709253748959289.Spec := by
  intro n
  simp only [A052686]

end A052686

/-! ## A052686.P6564908006358308534

`floor(C(n, a(n-1))/2+n)!` with `a(0)=0, a(1)=0`
-/

namespace A052686.P6564908006358308534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.factorial ⌊(Nat.choose n (a (n - 1)) : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A052686.P6564908006358308534

namespace A052686

/-- `floor(C(n, a(n-1))/2+n)!` -/
def P6564908006358308534.Spec : Prop :=
  ∀ n, (P6564908006358308534.a n : ℤ) = A052686 n

end A052686

/-! ## A052686.P4436626909924585021

`lcm(n!, A029578(n²))`
-/

namespace A052686.P4436626909924585021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A029578 (n ^ 2))

end

end A052686.P4436626909924585021

namespace A052686

/-- `lcm(n!, A029578(n²))` -/
def P4436626909924585021.Spec : Prop :=
  ∀ n, (P4436626909924585021.a n : ℤ) = A052686 n

end A052686

/-! ## A052686.P12560826080285755828

`A000142(floor(C(n, a(n-1))/2+n))` with `a(0)=0, a(1)=0`
-/

namespace A052686.P12560826080285755828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000142 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A052686.P12560826080285755828

namespace A052686

/-- `A000142(floor(C(n, a(n-1))/2+n))` -/
def P12560826080285755828.Spec : Prop :=
  ∀ n, P12560826080285755828.a n = A052686 n

end A052686

/-! ## A052686.P5188794455433689842

`lcm(dr(A097204(n)), A000142(n))`
-/

namespace A052686.P5188794455433689842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A097204 n) : ℤ) (A000142 n)

end

end A052686.P5188794455433689842

namespace A052686

/-- `lcm(dr(A097204(n)), A000142(n))` -/
def P5188794455433689842.Spec : Prop :=
  ∀ n, (P5188794455433689842.a n : ℤ) = A052686 n

end A052686

/-! ## A052686.P9246020663738617377

`lcm(A029578(A000290(n)), A133942(n))`
-/

namespace A052686.P9246020663738617377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029578 (A000290 n).toNat) (A133942 n)

end

end A052686.P9246020663738617377

namespace A052686

/-- `lcm(A029578(A000290(n)), A133942(n))` -/
def P9246020663738617377.Spec : Prop :=
  ∀ n, (P9246020663738617377.a n : ℤ) = A052686 n

end A052686

/-!
# A052687: Expansion of e.g.f. (1+x-x^3)/((1-x)*(1-x^2)).

The programs for A052687, there is no canonical definition to state claims against.
-/

/-! ## A052687.P16269457995751367105

`n!*∑[ceil(∏[acot(2-n)])]`
-/

namespace A052687.P16269457995751367105
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (2 - (n : ℤ) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052687.P16269457995751367105

/-! ## A052687.P1755504893914826823

`(round((n-1)/2)+2)*n!`
-/

namespace A052687.P1755504893914826823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2) * (Nat.factorial n : ℤ)

end

end A052687.P1755504893914826823

/-! ## A052687.P9837361991976605800

`n!*∑[∏{d}[1-n, #%2]]`
-/

namespace A052687.P9837361991976605800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052687.P9837361991976605800

/-! ## A052687.P13632513814283729091

`n!*ceil(∑[n+2]/(n+2))`
-/

namespace A052687.P13632513814283729091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌉

end

end A052687.P13632513814283729091

/-! ## A052687.P14443888384049010336

`(round((n-1)/2)+2)*∏[round(1/acot(n))]`
-/

namespace A052687.P14443888384049010336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052687.P14443888384049010336

/-! ## A052687.P11000185585394990275

`(round((n-1)/2)+2)*∏[round(sqrt(n²+1))]`
-/

namespace A052687.P11000185585394990275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052687.P11000185585394990275

/-! ## A052687.P14012552972230172088

`A162608(∑[or(1, n)])`
-/

namespace A052687.P14012552972230172088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052687.P14012552972230172088

/-! ## A052687.P9184326519204426287

`A143085(A165157(n))`
-/

namespace A052687.P9184326519204426287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143085 (A165157 n).toNat

end

end A052687.P9184326519204426287

/-! ## A052687.P1676872913593497722

`A162608(A000982(n+1))`
-/

namespace A052687.P1676872913593497722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (A000982 (n + 1)).toNat

end

end A052687.P1676872913593497722

/-! ## A052687.P16522132879334047427

`A162608(A087327(n+1))`
-/

namespace A052687.P16522132879334047427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (A087327 (n + 1)).toNat

end

end A052687.P16522132879334047427

/-!
# A052688: Expansion of e.g.f. x/((1-x)*(1-x^3)).

The programs for A052688, the canonical program `A052688.P16813976480649812205` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052688 has offset 0).

The definition of A052688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052688.P16813976480649812205

`n!*floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052688

/-- `n!*floor((n+2)/3)` -/
def P16813976480649812205.Spec : Prop :=
  ∀ n, P16813976480649812205.a n = A052688 n

theorem P16813976480649812205.correct : P16813976480649812205.Spec := by
  intro n
  simp only [A052688]

end A052688

/-! ## A052688.P2910989178596269924

`record[floor(n/2)!*round(xor(1, n)/6)]`
-/

namespace A052688.P2910989178596269924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052688.P2910989178596269924

namespace A052688

/-- `record[floor(n/2)!*round(xor(1, n)/6)]` -/
def P2910989178596269924.Spec : Prop :=
  ∀ n, P2910989178596269924.a n = A052688 n

end A052688

/-! ## A052688.P10959501971661134486

`ceil(n/3)*A000142(n)`
-/

namespace A052688.P10959501971661134486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ * A000142 n

end

end A052688.P10959501971661134486

namespace A052688

/-- `ceil(n/3)*A000142(n)` -/
def P10959501971661134486.Spec : Prop :=
  ∀ n, P10959501971661134486.a n = A052688 n

end A052688

/-! ## A052688.P10085899850137285573

`ceil(n/3)*∏[A028310(n)]`
-/

namespace A052688.P10085899850137285573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052688.P10085899850137285573

namespace A052688

/-- `ceil(n/3)*∏[A028310(n)]` -/
def P10085899850137285573.Spec : Prop :=
  ∀ n, P10085899850137285573.a n = A052688 n

end A052688

/-! ## A052688.P16909930390028867623

`(A038507(n)-1)*ceil(n/3)`
-/

namespace A052688.P16909930390028867623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038507 n - 1) * ⌈(n : ℚ) / 3⌉

end

end A052688.P16909930390028867623

namespace A052688

/-- `(A038507(n)-1)*ceil(n/3)` -/
def P16909930390028867623.Spec : Prop :=
  ∀ n, P16909930390028867623.a n = A052688 n

end A052688

/-! ## A052688.P17735959580190426614

`∑[∑[n]%3]*Δ[A003422(n)]`
-/

namespace A052688.P17735959580190426614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

end

end A052688.P17735959580190426614

namespace A052688

/-- `∑[∑[n]%3]*Δ[A003422(n)]` -/
def P17735959580190426614.Spec : Prop :=
  ∀ n, P17735959580190426614.a n = A052688 n

end A052688

/-! ## A052688.P6910418760031716902

`ceil(n/3)*∏[A007318(∑[n]+1)]`
-/

namespace A052688.P6910418760031716902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A052688.P6910418760031716902

namespace A052688

/-- `ceil(n/3)*∏[A007318(∑[n]+1)]` -/
def P6910418760031716902.Spec : Prop :=
  ∀ n, P6910418760031716902.a n = A052688 n

end A052688

/-!
# A052689: Expansion of e.g.f. (1+x-x^2)/((1-x)*(1-x^2)).

The programs for A052689, the canonical program `A052689.P7286151108617999677` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052689 has offset 0).

The definition of A052689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052689.P7286151108617999677

`n!*A004526(n+3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052689

/-- `n!*A004526(n+3)` -/
def P7286151108617999677.Spec : Prop :=
  ∀ n, P7286151108617999677.a n = A052689 n

theorem P7286151108617999677.correct : P7286151108617999677.Spec := by
  intro n
  simp only [A052689]

end A052689

/-! ## A052689.P17094660016391849746

`n!*(n+2+n%2)/2`
-/

namespace A052689.P17094660016391849746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * (n + 2 + n % 2) : ℕ) : ℚ) / 2

end

end A052689.P17094660016391849746

namespace A052689

/-- `n!*(n+2+n%2)/2` -/
def P17094660016391849746.Spec : Prop :=
  ∀ n, P17094660016391849746.a n = (A052689 n : ℚ)

end A052689

/-! ## A052689.P17712005300636107081

`n!*(2*n+5-(-1)^n)/4`
-/

namespace A052689.P17712005300636107081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * ((2 * n + 5 : ℤ) - (-1) ^ n) : ℚ) / 4

end

end A052689.P17712005300636107081

namespace A052689

/-- `n!*(2*n+5-(-1)^n)/4` -/
def P17712005300636107081.Spec : Prop :=
  ∀ n, P17712005300636107081.a n = (A052689 n : ℚ)

end A052689

/-! ## A052689.P14959125357822498774

`(ceil(n/2)+1)*n!`
-/

namespace A052689.P14959125357822498774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * (Nat.factorial n : ℤ)

end

end A052689.P14959125357822498774

namespace A052689

/-- `(ceil(n/2)+1)*n!` -/
def P14959125357822498774.Spec : Prop :=
  ∀ n, P14959125357822498774.a n = A052689 n

end A052689

/-! ## A052689.P7655814335040549067

`n!-floor(n/2-n)*n!`
-/

namespace A052689.P7655814335040549067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ⌊(n : ℚ) / 2 - (n : ℚ)⌋ * (Nat.factorial n : ℤ)

end

end A052689.P7655814335040549067

namespace A052689

/-- `n!-floor(n/2-n)*n!` -/
def P7655814335040549067.Spec : Prop :=
  ∀ n, P7655814335040549067.a n = A052689 n

end A052689

/-! ## A052689.P2201708963993526870

`n!+(and(1, n)+n)*n!/2`
-/

namespace A052689.P2201708963993526870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) + (Nat.land 1 n + n : ℚ) * ((Nat.factorial n : ℚ) / 2)

end

end A052689.P2201708963993526870

namespace A052689

/-- `n!+(and(1, n)+n)*n!/2` -/
def P2201708963993526870.Spec : Prop :=
  ∀ n, P2201708963993526870.a n = (A052689 n : ℚ)

end A052689

/-! ## A052689.P348817729786287030

`A052591(n)+n!`
-/

namespace A052689.P348817729786287030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052591 n + (Nat.factorial n : ℤ)

end

end A052689.P348817729786287030

namespace A052689

/-- `A052591(n)+n!` -/
def P348817729786287030.Spec : Prop :=
  ∀ n, P348817729786287030.a n = A052689 n

end A052689

/-! ## A052689.P2244240641982645188

`(ceil(n/2)+1)*A000142(n)`
-/

namespace A052689.P2244240641982645188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * A000142 n

end

end A052689.P2244240641982645188

namespace A052689

/-- `(ceil(n/2)+1)*A000142(n)` -/
def P2244240641982645188.Spec : Prop :=
  ∀ n, P2244240641982645188.a n = A052689 n

end A052689

/-! ## A052689.P3746959752836739167

`∏[round(1/acot(n))]*A080513(n)`
-/

namespace A052689.P3746959752836739167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A080513 n

end

end A052689.P3746959752836739167

namespace A052689

/-- `∏[round(1/acot(n))]*A080513(n)` -/
def P3746959752836739167.Spec : Prop :=
  ∀ n, P3746959752836739167.a n = A052689 n

end A052689

/-! ## A052689.P2204410616157476397

`A005212(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052689.P2204410616157476397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005212 n + (n : ℤ) * a (n - 1)

end

end A052689.P2204410616157476397

namespace A052689

/-- `A005212(n)+n*a(n-1)` -/
def P2204410616157476397.Spec : Prop :=
  ∀ n, P2204410616157476397.a n = A052689 n

end A052689

/-!
# A052690: Expansion of e.g.f. x*(1+x-3*x^2)/(1-3*x).

The programs for A052690, the canonical program `A052690.P17969067024079689499` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052690 has offset 0).

The definition of A052690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052690.P17969067024079689499

`3*n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=54`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052690

/-- `3*n*a(n-1)` -/
def P17969067024079689499.Spec : Prop :=
  ∀ n, (P17969067024079689499.a n : ℤ) = A052690 n

theorem P17969067024079689499.correct : P17969067024079689499.Spec := by
  intro n
  simp only [A052690]

end A052690

/-! ## A052690.P1781809075542444319

`lcm(n!, A004524(A081341(n)))`
-/

namespace A052690.P1781809075542444319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A004524 (A081341 n).toNat)

end

end A052690.P1781809075542444319

namespace A052690

/-- `lcm(n!, A004524(A081341(n)))` -/
def P1781809075542444319.Spec : Prop :=
  ∀ n, (P1781809075542444319.a n : ℤ) = A052690 n

end A052690

/-!
# A052691: Expansion of e.g.f. (1-x)/(1-2*x+x^2-x^3).

The programs for A052691, the canonical program `A052691.P10356724997876748476` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052691 has offset 0).

The definition of A052691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052691.P10356724997876748476

`n!*A005251(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052691

/-- `n!*A005251(n+1)` -/
def P10356724997876748476.Spec : Prop :=
  ∀ n, P10356724997876748476.a n = A052691 n

theorem P10356724997876748476.correct : P10356724997876748476.Spec := by
  intro n
  simp only [A052691]

end A052691

/-! ## A052691.P10661977721574607759

`n!*Δ[A005314(n)]`
-/

namespace A052691.P10661977721574607759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052691.P10661977721574607759

namespace A052691

/-- `n!*Δ[A005314(n)]` -/
def P10661977721574607759.Spec : Prop :=
  ∀ n, P10661977721574607759.a n = A052691 n

end A052691

/-! ## A052691.P8709621676167900253

`n!*A000931(2*n+3)`
-/

namespace A052691.P8709621676167900253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000931 (2 * n + 3)

end

end A052691.P8709621676167900253

namespace A052691

/-- `n!*A000931(2*n+3)` -/
def P8709621676167900253.Spec : Prop :=
  ∀ n, P8709621676167900253.a n = A052691 n

end A052691

/-! ## A052691.P12952658612456674469

`A052625(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052691.P12952658612456674469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052625 n + (n : ℤ) * a (n - 1)

end

end A052691.P12952658612456674469

namespace A052691

/-- `A052625(n)+n*a(n-1)` -/
def P12952658612456674469.Spec : Prop :=
  ∀ n, P12952658612456674469.a n = A052691 n

end A052691

/-! ## A052691.P6296337044452024585

`n!*Δ[A114775(4*n+5)]`
-/

namespace A052691.P6296337044452024585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052691.P6296337044452024585

namespace A052691

/-- `n!*Δ[A114775(4*n+5)]` -/
def P6296337044452024585.Spec : Prop :=
  ∀ n, P6296337044452024585.a n = A052691 n

end A052691

/-! ## A052691.P11126247056227958065

`n!*A182097(A005843(n))`
-/

namespace A052691.P11126247056227958065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A182097 (A005843 n).toNat

end

end A052691.P11126247056227958065

namespace A052691

/-- `n!*A182097(A005843(n))` -/
def P11126247056227958065.Spec : Prop :=
  ∀ n, P11126247056227958065.a n = A052691 n

end A052691

/-! ## A052691.P17132749853927257204

`Δ[A005314(n)]*A000142(n)`
-/

namespace A052691.P17132749853927257204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052691.P17132749853927257204

namespace A052691

/-- `Δ[A005314(n)]*A000142(n)` -/
def P17132749853927257204.Spec : Prop :=
  ∀ n, P17132749853927257204.a n = A052691 n

end A052691

/-! ## A052691.P10421124318411444489

`A000142(n)*A005251(n+1)`
-/

namespace A052691.P10421124318411444489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A005251 (n + 1)

end

end A052691.P10421124318411444489

namespace A052691

/-- `A000142(n)*A005251(n+1)` -/
def P10421124318411444489.Spec : Prop :=
  ∀ n, P10421124318411444489.a n = A052691 n

end A052691

/-! ## A052691.P4573367803051747662

`A000142(n)*A182097(2*n)`
-/

namespace A052691.P4573367803051747662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A182097 (2 * n)

end

end A052691.P4573367803051747662

namespace A052691

/-- `A000142(n)*A182097(2*n)` -/
def P4573367803051747662.Spec : Prop :=
  ∀ n, P4573367803051747662.a n = A052691 n

end A052691

/-! ## A052691.P17880624078392070720

`∏[A028310(n)]*A005251(n+1)`
-/

namespace A052691.P17880624078392070720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A005251 (n + 1)

end

end A052691.P17880624078392070720

namespace A052691

/-- `∏[A028310(n)]*A005251(n+1)` -/
def P17880624078392070720.Spec : Prop :=
  ∀ n, P17880624078392070720.a n = A052691 n

end A052691

/-!
# A052692: Expansion of e.g.f. (1-x^4)/(1-x-x^4).

The programs for A052692, the canonical program `A052692.P4715365952807824847` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052692 has offset 0).

The definition of A052692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052692.P4715365952807824847

`n*a(n-1)+n*(n-1)*(n-2)*(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052692

/-- `n*a(n-1)+n*(n-1)*(n-2)*(n-3)*a(n-4)` -/
def P4715365952807824847.Spec : Prop :=
  ∀ n, P4715365952807824847.a n = A052692 n

theorem P4715365952807824847.correct : P4715365952807824847.Spec := by
  intro n
  simp only [A052692]

end A052692

/-! ## A052692.P2326387903254572625

`n!*A003269(C(2, n+2)+n)`
-/

namespace A052692.P2326387903254572625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003269 (Nat.choose 2 (n + 2) + n)

end

end A052692.P2326387903254572625

namespace A052692

/-- `n!*A003269(C(2, n+2)+n)` -/
def P2326387903254572625.Spec : Prop :=
  ∀ n, P2326387903254572625.a n = A052692 n

end A052692

/-! ## A052692.P1894265783836618498

`n!*A003269(A028310(n))`
-/

namespace A052692.P1894265783836618498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003269 (A028310 n).toNat

end

end A052692.P1894265783836618498

namespace A052692

/-- `n!*A003269(A028310(n))` -/
def P1894265783836618498.Spec : Prop :=
  ∀ n, P1894265783836618498.a n = A052692 n

end A052692

/-! ## A052692.P6105077265307773562

`A052593(n)-A052581(round(sqrt(n²+1)))`
-/

namespace A052692.P6105077265307773562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052593 n - A052581 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A052692.P6105077265307773562

namespace A052692

/-- `A052593(n)-A052581(round(sqrt(n²+1)))` -/
def P6105077265307773562.Spec : Prop :=
  ∀ n, P6105077265307773562.a n = A052692 n

end A052692

/-! ## A052692.P592062011287906468

`A000142(n)*A003269(A233583(n+1))`
-/

namespace A052692.P592062011287906468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003269 (A233583 (n + 1)).toNat

end

end A052692.P592062011287906468

namespace A052692

/-- `A000142(n)*A003269(A233583(n+1))` -/
def P592062011287906468.Spec : Prop :=
  ∀ n, P592062011287906468.a n = A052692 n

end A052692

/-! ## A052692.P13946152489588965909

`A000142(n)*A003269(A008619(A004273(n)))`
-/

namespace A052692.P13946152489588965909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003269 (A008619 (A004273 n).toNat).toNat

end

end A052692.P13946152489588965909

namespace A052692

/-- `A000142(n)*A003269(A008619(A004273(n)))` -/
def P13946152489588965909.Spec : Prop :=
  ∀ n, P13946152489588965909.a n = A052692 n

end A052692

/-! ## A052692.P2003445831962817291

`A000142(n)*A172363(A000124(n))`
-/

namespace A052692.P2003445831962817291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A172363 (A000124 n).toNat

end

end A052692.P2003445831962817291

namespace A052692

/-- `A000142(n)*A172363(A000124(n))` -/
def P2003445831962817291.Spec : Prop :=
  ∀ n, P2003445831962817291.a n = A052692 n

end A052692

/-!
# A052693: Expansion of e.g.f. (1-x)/(1-3*x+x^3).

The programs for A052693, the canonical program `A052693.P16948172058766083288` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052693 has offset 0).

The definition of A052693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052693.P16948172058766083288

`n!*A052536(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052693

/-- `n!*A052536(n)` -/
def P16948172058766083288.Spec : Prop :=
  ∀ n, P16948172058766083288.a n = A052693 n

theorem P16948172058766083288.correct : P16948172058766083288.Spec := by
  intro n
  simp only [A052693]

end A052693

/-! ## A052693.P4650545855951688173

`n!*∑[A052545(n)]`
-/

namespace A052693.P4650545855951688173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052693.P4650545855951688173

namespace A052693

/-- `n!*∑[A052545(n)]` -/
def P4650545855951688173.Spec : Prop :=
  ∀ n, P4650545855951688173.a n = A052693 n

end A052693

/-! ## A052693.P5801504778428788310

`A052620(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052693.P5801504778428788310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052620 n + (n : ℤ) * a (n - 1)

end

end A052693.P5801504778428788310

namespace A052693

/-- `A052620(n)+n*a(n-1)` -/
def P5801504778428788310.Spec : Prop :=
  ∀ n, P5801504778428788310.a n = A052693 n

end A052693

/-! ## A052693.P9187088383598549841

`∑[A052545(n)]*A000142(n)`
-/

namespace A052693.P9187088383598549841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052693.P9187088383598549841

namespace A052693

/-- `∑[A052545(n)]*A000142(n)` -/
def P9187088383598549841.Spec : Prop :=
  ∀ n, P9187088383598549841.a n = A052693 n

end A052693

/-! ## A052693.P5870320069999017612

`Δ[A123941(n)]*A000142(n)`
-/

namespace A052693.P5870320069999017612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 n

end

end A052693.P5870320069999017612

namespace A052693

/-- `Δ[A123941(n)]*A000142(n)` -/
def P5870320069999017612.Spec : Prop :=
  ∀ n, P5870320069999017612.a n = A052693 n

end A052693

/-! ## A052693.P16115511592531645684

`∏[A028310(n)]*A052536(n)`
-/

namespace A052693.P16115511592531645684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A052536 n

end

end A052693.P16115511592531645684

namespace A052693

/-- `∏[A028310(n)]*A052536(n)` -/
def P16115511592531645684.Spec : Prop :=
  ∀ n, P16115511592531645684.a n = A052693 n

end A052693

/-! ## A052693.P10819555310517148193

`∑[A052545(n)]*∏[A028310(n)]`
-/

namespace A052693.P10819555310517148193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A052693.P10819555310517148193

namespace A052693

/-- `∑[A052545(n)]*∏[A028310(n)]` -/
def P10819555310517148193.Spec : Prop :=
  ∀ n, P10819555310517148193.a n = A052693 n

end A052693

/-! ## A052693.P12211775319545549230

`A052536(n)*A090657(A000096(n))`
-/

namespace A052693.P12211775319545549230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n * A090657 (A000096 n).toNat

end

end A052693.P12211775319545549230

namespace A052693

/-- `A052536(n)*A090657(A000096(n))` -/
def P12211775319545549230.Spec : Prop :=
  ∀ n, P12211775319545549230.a n = A052693 n

end A052693

/-! ## A052693.P16567339172557010774

`A052536(n)/A052545(n)*A052620(n)`
-/

namespace A052693.P16567339172557010774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052536 n : ℚ) / (A052545 n : ℚ) * (A052620 n : ℚ)

end

end A052693.P16567339172557010774

namespace A052693

/-- `A052536(n)/A052545(n)*A052620(n)` -/
def P16567339172557010774.Spec : Prop :=
  ∀ n, P16567339172557010774.a n = (A052693 n : ℚ)

end A052693

/-!
# A052694: Expansion of e.g.f. (1 + x^3 - 2*x^4)/(1-2*x).

The programs for A052694, the canonical program `A052694.P1331374036873556344` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052694 has offset 0).

The definition of A052694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052694.P1331374036873556344

`2*n*a(n-1)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=54, a(4)=384`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052694

/-- `2*n*a(n-1)` -/
def P1331374036873556344.Spec : Prop :=
  ∀ n, (P1331374036873556344.a n : ℤ) = A052694 n

theorem P1331374036873556344.correct : P1331374036873556344.Spec := by
  intro n
  simp only [A052694]

end A052694

/-! ## A052694.P284624549720967028

`(char[3]+2^n)*n!`
-/

namespace A052694.P284624549720967028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2 ^ n) * Nat.factorial n

end

end A052694.P284624549720967028

namespace A052694

/-- `(char[3]+2^n)*n!` -/
def P284624549720967028.Spec : Prop :=
  ∀ n, (P284624549720967028.a n : ℤ) = A052694 n

end A052694

/-! ## A052694.P11665569226833378461

`A052589(n)+A052565(n)`
-/

namespace A052694.P11665569226833378461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052589 n + A052565 n

end

end A052694.P11665569226833378461

namespace A052694

/-- `A052589(n)+A052565(n)` -/
def P11665569226833378461.Spec : Prop :=
  ∀ n, P11665569226833378461.a n = A052694 n

end A052694

/-! ## A052694.P12293063546271400306

`A055667(A055672(n))+A000165(n)`
-/

namespace A052694.P12293063546271400306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (A055672 n).toNat + A000165 n

end

end A052694.P12293063546271400306

namespace A052694

/-- `A055667(A055672(n))+A000165(n)` -/
def P12293063546271400306.Spec : Prop :=
  ∀ n, P12293063546271400306.a n = A052694 n

end A052694

/-! ## A052694.P2988375468880534621

`A037213(A020330(n+1))+A000165(n)`
-/

namespace A052694.P2988375468880534621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A020330 (n + 1)).toNat + A000165 n

end

end A052694.P2988375468880534621

namespace A052694

/-- `A037213(A020330(n+1))+A000165(n)` -/
def P2988375468880534621.Spec : Prop :=
  ∀ n, P2988375468880534621.a n = A052694 n

end A052694

/-! ## A052694.P5055303913709435186

`or(A000165(n), A186685(A103889(n+1)))`
-/

namespace A052694.P5055303913709435186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000165 n) (A186685 (A103889 (n + 1)).toNat)

end

end A052694.P5055303913709435186

namespace A052694

/-- `or(A000165(n), A186685(A103889(n+1)))` -/
def P5055303913709435186.Spec : Prop :=
  ∀ n, P5055303913709435186.a n = A052694 n

end A052694

/-! ## A052694.P10029787251050720759

`or(A000165(n)%A298372(n), A000165(n))`
-/

namespace A052694.P10029787251050720759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000165 n) (A298372 n)) (A000165 n)

end

end A052694.P10029787251050720759

namespace A052694

/-- `or(A000165(n)%A298372(n), A000165(n))` -/
def P10029787251050720759.Spec : Prop :=
  ∀ n, P10029787251050720759.a n = A052694 n

end A052694

/-!
# A052695: Expansion of e.g.f. (2-5*x)/((1-x)*(1-4*x)).

The programs for A052695, the canonical program `A052695.P16707627696088328911` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052695 has offset 0).

The definition of A052695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052695.P16707627696088328911

`(4^n+1)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052695

/-- `(4^n+1)*n!` -/
def P16707627696088328911.Spec : Prop :=
  ∀ n, (P16707627696088328911.a n : ℤ) = A052695 n

theorem P16707627696088328911.correct : P16707627696088328911.Spec := by
  intro n
  simp only [A052695]

end A052695

/-! ## A052695.P10087398084188336327

`5*n*a(n-1)-4*n*(n-1)*a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A052695.P10087398084188336327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (5 * n : ℤ) * a (n - 1) - (4 * n : ℤ) * ((n : ℤ) - 1) * a (n - 2)

end

end A052695.P10087398084188336327

namespace A052695

/-- `5*n*a(n-1)-4*n*(n-1)*a(n-2)` -/
def P10087398084188336327.Spec : Prop :=
  ∀ n, P10087398084188336327.a n = A052695 n

end A052695

/-! ## A052695.P11018879394148684065

`∏[floor(4/sinh(acot(n)))]+n!`
-/

namespace A052695.P11018879394148684065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A052695.P11018879394148684065

namespace A052695

/-- `∏[floor(4/sinh(acot(n)))]+n!` -/
def P11018879394148684065.Spec : Prop :=
  ∀ n, P11018879394148684065.a n = A052695 n

end A052695

/-! ## A052695.P10725490903003173820

`∏[floor(3/acot(n))+n]+n!`
-/

namespace A052695.P10725490903003173820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A052695.P10725490903003173820

namespace A052695

/-- `∏[floor(3/acot(n))+n]+n!` -/
def P10725490903003173820.Spec : Prop :=
  ∀ n, P10725490903003173820.a n = A052695 n

end A052695

/-! ## A052695.P10638933528954384760

`∏[C(2, n+2)+4*n]+n!`
-/

namespace A052695.P10638933528954384760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n

end

end A052695.P10638933528954384760

namespace A052695

/-- `∏[C(2, n+2)+4*n]+n!` -/
def P10638933528954384760.Spec : Prop :=
  ∀ n, (P10638933528954384760.a n : ℤ) = A052695 n

end A052695

/-! ## A052695.P16832207723097419783

`A047053(n)+n!`
-/

namespace A052695.P16832207723097419783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047053 n + (Nat.factorial n : ℤ)

end

end A052695.P16832207723097419783

namespace A052695

/-- `A047053(n)+n!` -/
def P16832207723097419783.Spec : Prop :=
  ∀ n, P16832207723097419783.a n = A052695 n

theorem P16832207723097419783.correct : P16832207723097419783.Spec := by
  intro n
  simp only [A052695, Nat.add_sub_cancel, A052695.P16832207723097419783.a, A052695.P16707627696088328911.a, A047053, A047053.P7600228685457433808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052695

/-! ## A052695.P9546278768134828776

`n!*A052539(n)`
-/

namespace A052695.P9546278768134828776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052539 n

end

end A052695.P9546278768134828776

namespace A052695

/-- `n!*A052539(n)` -/
def P9546278768134828776.Spec : Prop :=
  ∀ n, P9546278768134828776.a n = A052695 n

theorem P9546278768134828776.correct : P9546278768134828776.Spec := by
  intro n
  simp only [A052695, Nat.add_sub_cancel, A052695.P9546278768134828776.a, A052695.P16707627696088328911.a, A052539, A052539.P3422248518252475595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052695

/-! ## A052695.P4488076365255960763

`∏[A008574(n)]+n!`
-/

namespace A052695.P4488076365255960763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℤ)

end

end A052695.P4488076365255960763

namespace A052695

/-- `∏[A008574(n)]+n!` -/
def P4488076365255960763.Spec : Prop :=
  ∀ n, P4488076365255960763.a n = A052695 n

end A052695

/-! ## A052695.P5011499313016995460

`n!*A000051(2*n)`
-/

namespace A052695.P5011499313016995460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000051 (2 * n)

end

end A052695.P5011499313016995460

namespace A052695

/-- `n!*A000051(2*n)` -/
def P5011499313016995460.Spec : Prop :=
  ∀ n, P5011499313016995460.a n = A052695 n

end A052695

/-! ## A052695.P7808283822894202512

`(4^n+1)*A000142(n)`
-/

namespace A052695.P7808283822894202512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 1 : ℤ) * A000142 n

end

end A052695.P7808283822894202512

namespace A052695

/-- `(4^n+1)*A000142(n)` -/
def P7808283822894202512.Spec : Prop :=
  ∀ n, P7808283822894202512.a n = A052695 n

theorem P7808283822894202512.correct : P7808283822894202512.Spec := by
  intro n
  simp only [A052695, Nat.add_sub_cancel, A052695.P7808283822894202512.a, A052695.P16707627696088328911.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A052695

/-!
# A052696: Expansion of e.g.f. (1-x)^2/(1-4*x+3*x^2-x^3).

The programs for A052696, the canonical program `A052696.P14622444845979297710` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052696 has offset 0).

The definition of A052696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052696.P14622444845979297710

`n!*A052544(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052696

/-- `n!*A052544(n)` -/
def P14622444845979297710.Spec : Prop :=
  ∀ n, P14622444845979297710.a n = A052696 n

theorem P14622444845979297710.correct : P14622444845979297710.Spec := by
  intro n
  simp only [A052696]

end A052696

/-! ## A052696.P6107852618511142421

`n!*∑[A052529(n)]`
-/

namespace A052696.P6107852618511142421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052696.P6107852618511142421

namespace A052696

/-- `n!*∑[A052529(n)]` -/
def P6107852618511142421.Spec : Prop :=
  ∀ n, P6107852618511142421.a n = A052696 n

end A052696

/-! ## A052696.P2126021387999445608

`n!*A078012(3*(n+1))`
-/

namespace A052696.P2126021387999445608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A078012 (3 * (n + 1))

end

end A052696.P2126021387999445608

namespace A052696

/-- `n!*A078012(3*(n+1))` -/
def P2126021387999445608.Spec : Prop :=
  ∀ n, P2126021387999445608.a n = A052696 n

end A052696

/-! ## A052696.P13155387031586918232

`A052603(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A052696.P13155387031586918232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052603 n + (n : ℤ) * a (n - 1)

end

end A052696.P13155387031586918232

namespace A052696

/-- `A052603(n)+n*a(n-1)` -/
def P13155387031586918232.Spec : Prop :=
  ∀ n, P13155387031586918232.a n = A052696 n

end A052696

/-! ## A052696.P15309908889742605568

`n!*A000930(A008585(n))`
-/

namespace A052696.P15309908889742605568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000930 (A008585 n).toNat

end

end A052696.P15309908889742605568

namespace A052696

/-- `n!*A000930(A008585(n))` -/
def P15309908889742605568.Spec : Prop :=
  ∀ n, P15309908889742605568.a n = A052696 n

end A052696

/-! ## A052696.P16132177467294597522

`∑[A052529(n)]*A000142(n)`
-/

namespace A052696.P16132177467294597522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052696.P16132177467294597522

namespace A052696

/-- `∑[A052529(n)]*A000142(n)` -/
def P16132177467294597522.Spec : Prop :=
  ∀ n, P16132177467294597522.a n = A052696 n

end A052696

/-! ## A052696.P7956612766186892496

`A000142(n)*A000930(A008486(n))`
-/

namespace A052696.P7956612766186892496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000930 (A008486 n).toNat

end

end A052696.P7956612766186892496

namespace A052696

/-- `A000142(n)*A000930(A008486(n))` -/
def P7956612766186892496.Spec : Prop :=
  ∀ n, P7956612766186892496.a n = A052696 n

end A052696

/-! ## A052696.P9476350400554731742

`A000142(n)*A000930(A008585(n))`
-/

namespace A052696.P9476350400554731742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000930 (A008585 n).toNat

end

end A052696.P9476350400554731742

namespace A052696

/-- `A000142(n)*A000930(A008585(n))` -/
def P9476350400554731742.Spec : Prop :=
  ∀ n, P9476350400554731742.a n = A052696 n

end A052696

/-!
# A052697: Expansion of e.g.f. 1/(1-x^3-x^4).

The programs for A052697, the canonical program `A052697.P16514648680947396591` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052697 has offset 0).

The definition of A052697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052697.P16514648680947396591

`n!*A017817(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052697

/-- `n!*A017817(n)` -/
def P16514648680947396591.Spec : Prop :=
  ∀ n, P16514648680947396591.a n = A052697 n

theorem P16514648680947396591.correct : P16514648680947396591.Spec := by
  intro n
  simp only [A052697]

end A052697

/-! ## A052697.P7711410374235186675

`n!*A127838(n+5)`
-/

namespace A052697.P7711410374235186675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A127838 (n + 5)

end

end A052697.P7711410374235186675

namespace A052697

/-- `n!*A127838(n+5)` -/
def P7711410374235186675.Spec : Prop :=
  ∀ n, P7711410374235186675.a n = A052697 n

end A052697

/-! ## A052697.P3477521014244810323

`n!*A306713(∑[n+3])`
-/

namespace A052697.P3477521014244810323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A306713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052697.P3477521014244810323

namespace A052697

/-- `n!*A306713(∑[n+3])` -/
def P3477521014244810323.Spec : Prop :=
  ∀ n, P3477521014244810323.a n = A052697 n

end A052697

/-! ## A052697.P17312547261481484824

`n!*Δ[A079398(n+4)]`
-/

namespace A052697.P17312547261481484824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A052697.P17312547261481484824

namespace A052697

/-- `n!*Δ[A079398(n+4)]` -/
def P17312547261481484824.Spec : Prop :=
  ∀ n, P17312547261481484824.a n = A052697 n

end A052697

/-! ## A052697.P7069300550072089001

`A000142(n)*A017817(n)`
-/

namespace A052697.P7069300550072089001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A017817 n

end

end A052697.P7069300550072089001

namespace A052697

/-- `A000142(n)*A017817(n)` -/
def P7069300550072089001.Spec : Prop :=
  ∀ n, P7069300550072089001.a n = A052697 n

end A052697

/-! ## A052697.P16806051701500095722

`A017817(n)*A162608(∑[n])`
-/

namespace A052697.P16806051701500095722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n * A162608 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052697.P16806051701500095722

namespace A052697

/-- `A017817(n)*A162608(∑[n])` -/
def P16806051701500095722.Spec : Prop :=
  ∀ n, P16806051701500095722.a n = A052697 n

end A052697

/-! ## A052697.P3321597407882286943

`Δ[A003422(n)]*A017817(n)`
-/

namespace A052697.P3321597407882286943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A017817 n

end

end A052697.P3321597407882286943

namespace A052697

/-- `Δ[A003422(n)]*A017817(n)` -/
def P3321597407882286943.Spec : Prop :=
  ∀ n, P3321597407882286943.a n = A052697 n

end A052697

/-! ## A052697.P10625786800631077264

`∏[A028310(n)]*A017817(n)`
-/

namespace A052697.P10625786800631077264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A017817 n

end

end A052697.P10625786800631077264

namespace A052697

/-- `∏[A028310(n)]*A017817(n)` -/
def P10625786800631077264.Spec : Prop :=
  ∀ n, P10625786800631077264.a n = A052697 n

end A052697

/-! ## A052697.P14395600784636727232

`A017817(n)*A094587(A000217(n))`
-/

namespace A052697.P14395600784636727232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n * A094587 (A000217 n).toNat

end

end A052697.P14395600784636727232

namespace A052697

/-- `A017817(n)*A094587(A000217(n))` -/
def P14395600784636727232.Spec : Prop :=
  ∀ n, P14395600784636727232.a n = A052697 n

end A052697

/-! ## A052697.P7877681973572124114

`A017817(n)*A276921(A034856(n+1))`
-/

namespace A052697.P7877681973572124114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n * A276921 (A034856 (n + 1)).toNat

end

end A052697.P7877681973572124114

namespace A052697

/-- `A017817(n)*A276921(A034856(n+1))` -/
def P7877681973572124114.Spec : Prop :=
  ∀ n, P7877681973572124114.a n = A052697 n

end A052697

/-!
# A052698: Expansion of e.g.f. x/((1-x)*(1-3*x)).

The programs for A052698, the canonical program `A052698.P5949402977654116833` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052698 has offset 0).

The definition of A052698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052698.P7364314241861151959

`(3^n-1)*n!/2`
-/

namespace A052698.P7364314241861151959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) * (Nat.factorial n : ℤ) : ℚ) / 2

end

end A052698.P7364314241861151959

namespace A052698

/-- `(3^n-1)*n!/2` -/
def P7364314241861151959.Spec : Prop :=
  ∀ n, P7364314241861151959.a n = (A052698 n : ℚ)

end A052698

/-! ## A052698.P5949402977654116833

`4*n*a(n-1)-3*n*(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A052698

/-- `4*n*a(n-1)-3*n*(n-1)*a(n-2)` -/
def P5949402977654116833.Spec : Prop :=
  ∀ n, P5949402977654116833.a n = A052698 n

theorem P5949402977654116833.correct : P5949402977654116833.Spec := by
  intro n
  simp only [A052698]

end A052698

/-! ## A052698.P14277425163674446446

`n!*A003462(n)`
-/

namespace A052698.P14277425163674446446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003462 n

end

end A052698.P14277425163674446446

namespace A052698

/-- `n!*A003462(n)` -/
def P14277425163674446446.Spec : Prop :=
  ∀ n, P14277425163674446446.a n = A052698 n

end A052698

/-! ## A052698.P9801086538184290830

`n!*floor(3^n/2)`
-/

namespace A052698.P9801086538184290830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊(3 ^ n : ℚ) / 2⌋

end

end A052698.P9801086538184290830

namespace A052698

/-- `n!*floor(3^n/2)` -/
def P9801086538184290830.Spec : Prop :=
  ∀ n, P9801086538184290830.a n = A052698 n

end A052698

/-! ## A052698.P18344682328894020430

`(A032031(n)-n!)/2`
-/

namespace A052698.P18344682328894020430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032031 n - (Nat.factorial n : ℤ) : ℚ) / 2

end

end A052698.P18344682328894020430

namespace A052698

/-- `(A032031(n)-n!)/2` -/
def P18344682328894020430.Spec : Prop :=
  ∀ n, P18344682328894020430.a n = (A052698 n : ℚ)

end A052698

/-! ## A052698.P11439656233024137410

`n!/2*A024023(n)`
-/

namespace A052698.P11439656233024137410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 2 * (A024023 n : ℚ)

end

end A052698.P11439656233024137410

namespace A052698

/-- `n!/2*A024023(n)` -/
def P11439656233024137410.Spec : Prop :=
  ∀ n, P11439656233024137410.a n = (A052698 n : ℚ)

end A052698

/-! ## A052698.P16165657252475189158

`(A000244(n)-1)*n!/2`
-/

namespace A052698.P16165657252475189158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - 1 : ℚ) * ((Nat.factorial n : ℚ) / 2)

end

end A052698.P16165657252475189158

namespace A052698

/-- `(A000244(n)-1)*n!/2` -/
def P16165657252475189158.Spec : Prop :=
  ∀ n, P16165657252475189158.a n = (A052698 n : ℚ)

end A052698

/-! ## A052698.P8676382951630348255

`∑[floor(3^(n-1))]*A000142(n)`
-/

namespace A052698.P8676382951630348255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A052698.P8676382951630348255

namespace A052698

/-- `∑[floor(3^(n-1))]*A000142(n)` -/
def P8676382951630348255.Spec : Prop :=
  ∀ n, P8676382951630348255.a n = A052698 n

end A052698

/-! ## A052698.P4739395921865891135

`((3^n+1)/2-1)*(A038507(n)-1)`
-/

namespace A052698.P4739395921865891135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n + 1 : ℚ) / 2 - 1) * (A038507 n - 1 : ℚ)

end

end A052698.P4739395921865891135

namespace A052698

/-- `((3^n+1)/2-1)*(A038507(n)-1)` -/
def P4739395921865891135.Spec : Prop :=
  ∀ n, P4739395921865891135.a n = (A052698 n : ℚ)

end A052698

/-! ## A052698.P5256754559959388340

`A052577(n)-A032031(n)`
-/

namespace A052698.P5256754559959388340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052577 n - A032031 n

end

end A052698.P5256754559959388340

namespace A052698

/-- `A052577(n)-A032031(n)` -/
def P5256754559959388340.Spec : Prop :=
  ∀ n, P5256754559959388340.a n = A052698 n

end A052698

/-!
# A052699: Expansion of e.g.f. (1+x^5-x^6)/(1-x).

The programs for A052699, there is no canonical definition to state claims against.
-/

/-! ## A052699.P13636986486752981486

`(char[5]+1)*n!`
-/

namespace A052699.P13636986486752981486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * Nat.factorial n

end

end A052699.P13636986486752981486

/-! ## A052699.P1608352324134554178

`lcm(∏{e}[1-n, #]^4, n!)`
-/

namespace A052699.P1608352324134554178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 4) (Nat.factorial n)

end

end A052699.P1608352324134554178

/-! ## A052699.P6529000145321111990

`lcm(A136213(n)², n!)`
-/

namespace A052699.P6529000145321111990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136213 n ^ 2) (Nat.factorial n : ℤ)

end

end A052699.P6529000145321111990

/-! ## A052699.P15052788366966858054

`(char[5]+1)*A000142(n)`
-/

namespace A052699.P15052788366966858054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A000142 n

end

end A052699.P15052788366966858054

/-! ## A052699.P11412229540098117621

`(char[5]+1)*(A038507(n)-1)`
-/

namespace A052699.P11412229540098117621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * (A038507 n - 1)

end

end A052699.P11412229540098117621

/-! ## A052699.P15932561721528719729

`n!*A014963(A017317(n+1))`
-/

namespace A052699.P15932561721528719729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A014963 (A017317 (n + 1)).toNat

end

end A052699.P15932561721528719729

/-! ## A052699.P4202574828541702064

`lcm(A056629(n+1)², A000142(n))`
-/

namespace A052699.P4202574828541702064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056629 (n + 1) ^ 2) (A000142 n)

end

end A052699.P4202574828541702064

/-! ## A052699.P11899829603331386368

`lcm(A000142(n), A127276(A005811(n)))`
-/

namespace A052699.P11899829603331386368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 n) (A127276 (A005811 n).toNat)

end

end A052699.P11899829603331386368

