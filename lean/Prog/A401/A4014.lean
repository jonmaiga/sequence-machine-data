import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C037
import Seq.B000.C043
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A401407: a(n) = lambda(n)*chi_{-4}(n) = A008836(n)*A101455(n).

The programs for A401407, the canonical program `A401407.P9579087663748494119` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401407 has offset 1).

The definition of A401407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401407.P9579087663748494119

`A008836(n+1)*A101455(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401407

/-- `A008836(n+1)*A101455(n+1)` -/
def P9579087663748494119.Spec : Prop :=
  ∀ n, P9579087663748494119.a n = A401407 (n + 1)

theorem P9579087663748494119.correct : P9579087663748494119.Spec := by
  intro n
  simp only [A401407, Nat.add_sub_cancel]

end A401407

/-! ## A401407.P9169983314484904364

`Δ[A401365(n)]`
-/

namespace A401407.P9169983314484904364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401407.P9169983314484904364

namespace A401407

/-- `Δ[A401365(n)]` -/
def P9169983314484904364.Spec : Prop :=
  ∀ n, P9169983314484904364.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P5747846658602800857

`∑[(-1)^A258057(n)]`
-/

namespace A401407.P5747846658602800857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A258057 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401407.P5747846658602800857

namespace A401407

/-- `∑[(-1)^A258057(n)]` -/
def P5747846658602800857.Spec : Prop :=
  ∀ n, P5747846658602800857.a n = (A401407 (n + 1) : ℚ)

end A401407

/-! ## A401407.P2360796043678593759

`A209662(n+1)%2`
-/

namespace A401407.P2360796043678593759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209662 (n + 1)) 2

end

end A401407.P2360796043678593759

namespace A401407

/-- `A209662(n+1)%2` -/
def P2360796043678593759.Spec : Prop :=
  ∀ n, P2360796043678593759.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P12747790611696307118

`A209661(n+1)%gcd(2, n)`
-/

namespace A401407.P12747790611696307118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209661 (n + 1)) (Nat.gcd 2 n : ℤ)

end

end A401407.P12747790611696307118

namespace A401407

/-- `A209661(n+1)%gcd(2, n)` -/
def P12747790611696307118.Spec : Prop :=
  ∀ n, P12747790611696307118.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P17756975837629830034

`(-1)^∑{e}[n+1, #]*A056594(n)`
-/

namespace A401407.P17756975837629830034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A056594 n

end

end A401407.P17756975837629830034

namespace A401407

/-- `(-1)^∑{e}[n+1, #]*A056594(n)` -/
def P17756975837629830034.Spec : Prop :=
  ∀ n, P17756975837629830034.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P17015217302935626681

`(-1)^∑{e}[n+1, #]*∑[A087960(n)]`
-/

namespace A401407.P17015217302935626681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A401407.P17015217302935626681

namespace A401407

/-- `(-1)^∑{e}[n+1, #]*∑[A087960(n)]` -/
def P17015217302935626681.Spec : Prop :=
  ∀ n, P17015217302935626681.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P9529604084824115973

`A009531(A166586(n+1))`
-/

namespace A401407.P9529604084824115973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A166586 (n + 1)).toNat

end

end A401407.P9529604084824115973

namespace A401407

/-- `A009531(A166586(n+1))` -/
def P9529604084824115973.Spec : Prop :=
  ∀ n, P9529604084824115973.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P10379324244099653776

`A101455(A074722(n+1))`
-/

namespace A401407.P10379324244099653776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A074722 (n + 1)).toNat

end

end A401407.P10379324244099653776

namespace A401407

/-- `A101455(A074722(n+1))` -/
def P10379324244099653776.Spec : Prop :=
  ∀ n, P10379324244099653776.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P16564464893496183371

`A166698(A072436(n+1))`
-/

namespace A401407.P16564464893496183371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A072436 (n + 1)).toNat

end

end A401407.P16564464893496183371

namespace A401407

/-- `A166698(A072436(n+1))` -/
def P16564464893496183371.Spec : Prop :=
  ∀ n, P16564464893496183371.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P13986901447693115079

`A401365(n+1)-A401365(n)`
-/

namespace A401407.P13986901447693115079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401365 (n + 1) - A401365 n

end

end A401407.P13986901447693115079

namespace A401407

/-- `A401365(n+1)-A401365(n)` -/
def P13986901447693115079.Spec : Prop :=
  ∀ n, P13986901447693115079.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P17518706064958071014

`A008836(n+1)*A056594(n)`
-/

namespace A401407.P17518706064958071014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A056594 n

end

end A401407.P17518706064958071014

namespace A401407

/-- `A008836(n+1)*A056594(n)` -/
def P17518706064958071014.Spec : Prop :=
  ∀ n, P17518706064958071014.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P7473814680291351716

`A009001(n)*A166698(n+1)`
-/

namespace A401407.P7473814680291351716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A166698 (n + 1)

end

end A401407.P7473814680291351716

namespace A401407

/-- `A009001(n)*A166698(n+1)` -/
def P7473814680291351716.Spec : Prop :=
  ∀ n, P7473814680291351716.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P3849617481784180155

`A056594(n)*A166698(n+1)`
-/

namespace A401407.P3849617481784180155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A166698 (n + 1)

end

end A401407.P3849617481784180155

namespace A401407

/-- `A056594(n)*A166698(n+1)` -/
def P3849617481784180155.Spec : Prop :=
  ∀ n, P3849617481784180155.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P12824061061990103431

`A057077(n)*A166698(n+1)`
-/

namespace A401407.P12824061061990103431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A166698 (n + 1)

end

end A401407.P12824061061990103431

namespace A401407

/-- `A057077(n)*A166698(n+1)` -/
def P12824061061990103431.Spec : Prop :=
  ∀ n, P12824061061990103431.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P2455945664647229431

`A087960(n)*A166698(n+1)`
-/

namespace A401407.P2455945664647229431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A166698 (n + 1)

end

end A401407.P2455945664647229431

namespace A401407

/-- `A087960(n)*A166698(n+1)` -/
def P2455945664647229431.Spec : Prop :=
  ∀ n, P2455945664647229431.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P11041215806592692927

`A059841(n)*A209661(n+1)`
-/

namespace A401407.P11041215806592692927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A209661 (n + 1)

end

end A401407.P11041215806592692927

namespace A401407

/-- `A059841(n)*A209661(n+1)` -/
def P11041215806592692927.Spec : Prop :=
  ∀ n, P11041215806592692927.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P254538749737635470

`A131379(n)*A166698(n+1)`
-/

namespace A401407.P254538749737635470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 n * A166698 (n + 1)

end

end A401407.P254538749737635470

namespace A401407

/-- `A131379(n)*A166698(n+1)` -/
def P254538749737635470.Spec : Prop :=
  ∀ n, P254538749737635470.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P13471860215317942690

`A156872(n)*A166698(n+1)`
-/

namespace A401407.P13471860215317942690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156872 n * A166698 (n + 1)

end

end A401407.P13471860215317942690

namespace A401407

/-- `A156872(n)*A166698(n+1)` -/
def P13471860215317942690.Spec : Prop :=
  ∀ n, P13471860215317942690.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P874767081114651637

`A158496(n)*A166698(n+1)`
-/

namespace A401407.P874767081114651637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158496 n * A166698 (n + 1)

end

end A401407.P874767081114651637

namespace A401407

/-- `A158496(n)*A166698(n+1)` -/
def P874767081114651637.Spec : Prop :=
  ∀ n, P874767081114651637.a n = A401407 (n + 1)

end A401407

/-!
# A401408: Partial sums of A209661.

The programs for A401408, the canonical program `A401408.P123051091041620824` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401408 has offset 0).

The definition of A401408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401408.P17050259513419414440

`A209661(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A401408.P17050259513419414440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A209661 n + a (n - 1)

end

end A401408.P17050259513419414440

namespace A401408

/-- `A209661(n)+a(n-1)` -/
def P17050259513419414440.Spec : Prop :=
  ∀ n, P17050259513419414440.a n = A401408 n

end A401408

/-! ## A401408.P123051091041620824

`∑[A209661(n+1)]-A209661(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A401408

/-- `∑[A209661(n+1)]-A209661(n+1)` -/
def P123051091041620824.Spec : Prop :=
  ∀ n, P123051091041620824.a n = A401408 n

theorem P123051091041620824.correct : P123051091041620824.Spec := by
  intro n
  simp only [A401408]

end A401408

/-! ## A401408.P15190445469140452472

`∑[A081334(n+1)-2]-(A081334(n+1)-2)`
-/

namespace A401408.P15190445469140452472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081334 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A081334 (n + 1) - 2)

end

end A401408.P15190445469140452472

namespace A401408

/-- `∑[A081334(n+1)-2]-(A081334(n+1)-2)` -/
def P15190445469140452472.Spec : Prop :=
  ∀ n, P15190445469140452472.a n = A401408 n

end A401408

/-! ## A401408.P16384447675684177980

`∑[(-1)^A046080(n+1)]-(-1)^A046080(n+1)`
-/

namespace A401408.P16384447675684177980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A046080 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1 : ℚ) ^ (A046080 (n + 1) : ℤ)

end

end A401408.P16384447675684177980

namespace A401408

/-- `∑[(-1)^A046080(n+1)]-(-1)^A046080(n+1)` -/
def P16384447675684177980.Spec : Prop :=
  ∀ n, P16384447675684177980.a n = (A401408 n : ℚ)

end A401408

/-! ## A401408.P7898860804624961013

`∑[(-1)^A083025(n+1)]-(-1)^A097022(n+1)`
-/

namespace A401408.P7898860804624961013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A083025 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1 : ℚ) ^ (A097022 (n + 1) : ℤ)

end

end A401408.P7898860804624961013

namespace A401408

/-- `∑[(-1)^A083025(n+1)]-(-1)^A097022(n+1)` -/
def P7898860804624961013.Spec : Prop :=
  ∀ n, P7898860804624961013.a n = (A401408 n : ℚ)

end A401408

/-! ## A401408.P6436533370248544901

`∑[(-1)^A083025(n+1)]-(A065765(n+1)%4-2)`
-/

namespace A401408.P6436533370248544901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A083025 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Int.tmod (A065765 (n + 1)) 4 - 2 : ℚ)

end

end A401408.P6436533370248544901

namespace A401408

/-- `∑[(-1)^A083025(n+1)]-(A065765(n+1)%4-2)` -/
def P6436533370248544901.Spec : Prop :=
  ∀ n, P6436533370248544901.a n = (A401408 n : ℚ)

end A401408

/-! ## A401408.P2881883223806794943

`∑[1-and(2, A256452(n+1))]-A209662(n+1)/(n+1)`
-/

namespace A401408.P2881883223806794943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A256452 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A209662 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A401408.P2881883223806794943

namespace A401408

/-- `∑[1-and(2, A256452(n+1))]-A209662(n+1)/(n+1)` -/
def P2881883223806794943.Spec : Prop :=
  ∀ n, P2881883223806794943.a n = (A401408 n : ℚ)

end A401408

/-! ## A401408.P9934661820250798003

`∑[A033999(A046080(n+1))]-(A081334(n+1)-2)`
-/

namespace A401408.P9934661820250798003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A046080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A081334 (n + 1) - 2)

end

end A401408.P9934661820250798003

namespace A401408

/-- `∑[A033999(A046080(n+1))]-(A081334(n+1)-2)` -/
def P9934661820250798003.Spec : Prop :=
  ∀ n, P9934661820250798003.a n = A401408 n

end A401408

/-! ## A401408.P18150479645203332800

`∑[A209662(n+1)/(n+1)]-A033999(A046080(n+1))`
-/

namespace A401408.P18150479645203332800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209662 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A033999 (A046080 (n + 1)).toNat : ℚ)

end

end A401408.P18150479645203332800

namespace A401408

/-- `∑[A209662(n+1)/(n+1)]-A033999(A046080(n+1))` -/
def P18150479645203332800.Spec : Prop :=
  ∀ n, P18150479645203332800.a n = (A401408 n : ℚ)

end A401408

/-! ## A401408.P6347700928245353989

`∑[A034947(n+1)*A359154(n+1)]-(-1)^A083025(n+1)`
-/

namespace A401408.P6347700928245353989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A359154 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (-1 : ℚ) ^ (A083025 (n + 1) : ℤ)

end

end A401408.P6347700928245353989

namespace A401408

/-- `∑[A034947(n+1)*A359154(n+1)]-(-1)^A083025(n+1)` -/
def P6347700928245353989.Spec : Prop :=
  ∀ n, P6347700928245353989.a n = (A401408 n : ℚ)

end A401408

/-! ## A401408.P16763846620876257396

`∑[A034947(n+1)*A359154(n+1)]-(-1)^A097022(n+1)`
-/

namespace A401408.P16763846620876257396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A359154 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (-1 : ℚ) ^ (A097022 (n + 1) : ℤ)

end

end A401408.P16763846620876257396

namespace A401408

/-- `∑[A034947(n+1)*A359154(n+1)]-(-1)^A097022(n+1)` -/
def P16763846620876257396.Spec : Prop :=
  ∀ n, P16763846620876257396.a n = (A401408 n : ℚ)

end A401408

/-!
# A401409: Partial sums of A209615.

The programs for A401409, the canonical program `A401409.P15315601482885361592` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401409 has offset 0).

The definition of A401409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401409.P8439132667654787690

`∑[n]%2-a(floor(n/2))` with `a(0)=0`
-/

namespace A401409.P8439132667654787690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat

end

end A401409.P8439132667654787690

namespace A401409

/-- `∑[n]%2-a(floor(n/2))` -/
def P8439132667654787690.Spec : Prop :=
  ∀ n, P8439132667654787690.a n = A401409 n

end A401409

/-! ## A401409.P8938775555716670516

`∑[(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)]-(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)`
-/

namespace A401409.P8938775555716670516
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ ((((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 1) 2 * (n + 1 : ℚ) - 1) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1 : ℝ) ^ ((((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 1) 2 * (n + 1 : ℚ) - 1) / 2 : ℝ)

end

end A401409.P8938775555716670516

namespace A401409

/-- `∑[(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)]-(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)` -/
def P8938775555716670516.Spec : Prop :=
  ∀ n, P8938775555716670516.a n = (A401409 n : ℝ)

end A401409

/-! ## A401409.P495503972478042449

`A065359(xor(floor(n/2), n))`
-/

namespace A401409.P495503972478042449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Int.xor ⌊(n : ℚ) / 2⌋ (n : ℤ)).toNat

end

end A401409.P495503972478042449

namespace A401409

/-- `A065359(xor(floor(n/2), n))` -/
def P495503972478042449.Spec : Prop :=
  ∀ n, P495503972478042449.a n = A401409 n

end A401409

/-! ## A401409.P7564953804247104128

`∑[or(1, -A292077(n+1))]-(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)`
-/

namespace A401409.P7564953804247104128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A292077 (n + 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - (-1 : ℝ) ^ ((((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 1) 2 * (n + 1 : ℚ) - 1) / 2 : ℝ)

end

end A401409.P7564953804247104128

namespace A401409

/-- `∑[or(1, -A292077(n+1))]-(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)` -/
def P7564953804247104128.Spec : Prop :=
  ∀ n, P7564953804247104128.a n = (A401409 n : ℝ)

end A401409

/-! ## A401409.P15315601482885361592

`A065359(A003188(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401409

/-- `A065359(A003188(n))` -/
def P15315601482885361592.Spec : Prop :=
  ∀ n, P15315601482885361592.a n = A401409 n

theorem P15315601482885361592.correct : P15315601482885361592.Spec := by
  intro n
  simp only [A401409]

end A401409

/-! ## A401409.P15015099051551464235

`A065359(A105081(n+1)-1)`
-/

namespace A401409.P15015099051551464235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A105081 (n + 1) - 1).toNat

end

end A401409.P15015099051551464235

namespace A401409

/-- `A065359(A105081(n+1)-1)` -/
def P15015099051551464235.Spec : Prop :=
  ∀ n, P15015099051551464235.a n = A401409 n

theorem P15015099051551464235.correct : P15015099051551464235.Spec := by
  intro n
  simp only [A401409, Nat.add_sub_cancel, A401409.P15015099051551464235.a, A401409.P15315601482885361592.a, A003188, A003188.P10544524695508875182.a, A065359, A065359.P2716114422933254065.a, A105081, A105081.P13201815104131715710.a, A139351, A139351.P13370593459202110274.a, A139352, A139352.P2034447244462371406.a, A000120, A000120.P2816527436160941581.a, A053737, A053737.P2884229603739038868.a, A005187, A005187.P3874015513960485494.a, A054893, A054893.P4971289715501713883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A401409

/-! ## A401409.P17325701252494407337

`A065359(or(3, A114389(n+1)))`
-/

namespace A401409.P17325701252494407337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Int.lor 3 (A114389 (n + 1))).toNat

end

end A401409.P17325701252494407337

namespace A401409

/-- `A065359(or(3, A114389(n+1)))` -/
def P17325701252494407337.Spec : Prop :=
  ∀ n, P17325701252494407337.a n = A401409 n

end A401409

/-! ## A401409.P5975946890528060191

`n%2-A065359(A048724(n))`
-/

namespace A401409.P5975946890528060191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A065359 (A048724 n).toNat

end

end A401409.P5975946890528060191

namespace A401409

/-- `n%2-A065359(A048724(n))` -/
def P5975946890528060191.Spec : Prop :=
  ∀ n, P5975946890528060191.a n = A401409 n

end A401409

/-! ## A401409.P13045873461206670866

`∑[A209615(n+1)]-A209615(n+1)`
-/

namespace A401409.P13045873461206670866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A209615 (n + 1)

end

end A401409.P13045873461206670866

namespace A401409

/-- `∑[A209615(n+1)]-A209615(n+1)` -/
def P13045873461206670866.Spec : Prop :=
  ∀ n, P13045873461206670866.a n = A401409 n

end A401409

/-! ## A401409.P2785930939048753960

`∑[(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)]-A008836(A065338(n+1))`
-/

namespace A401409.P2785930939048753960
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ ((((3 : ℚ) / 2) ^ SequenceMachineLib.valuation (n + 1) 2 * (n + 1 : ℚ) - 1) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A008836 (A065338 (n + 1)).toNat : ℝ)

end

end A401409.P2785930939048753960

namespace A401409

/-- `∑[(-1)^(((3/2)^val(n+1, 2)*(n+1)-1)/2)]-A008836(A065338(n+1))` -/
def P2785930939048753960.Spec : Prop :=
  ∀ n, P2785930939048753960.a n = (A401409 n : ℝ)

end A401409

/-! ## A401409.P1489326077187786140

`A401437(n+1)-(A401437(n)+A209615(n+1))`
-/

namespace A401409.P1489326077187786140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401437 (n + 1) - (A401437 n + A209615 (n + 1))

end

end A401409.P1489326077187786140

namespace A401409

/-- `A401437(n+1)-(A401437(n)+A209615(n+1))` -/
def P1489326077187786140.Spec : Prop :=
  ∀ n, P1489326077187786140.a n = A401409 n

end A401409

/-! ## A401409.P11769104545013283138

`A209615(2*(n+1))+∑[A209615(n+1)]`
-/

namespace A401409.P11769104545013283138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401409.P11769104545013283138

namespace A401409

/-- `A209615(2*(n+1))+∑[A209615(n+1)]` -/
def P11769104545013283138.Spec : Prop :=
  ∀ n, P11769104545013283138.a n = A401409 n

end A401409

/-!
# A401421: The sum of coreful divisors of n (A284318) that are cubefree (A004709).

The programs for A401421, the canonical program `A401421.P9073841599611467425` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401421 has offset 1).

The definition of A401421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401421.P6724398351736771284

`A051377(∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A401421.P6724398351736771284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2))

end

end A401421.P6724398351736771284

namespace A401421

/-- `A051377(∏{p}[n+1, gcd(n+1, #²)])` -/
def P6724398351736771284.Spec : Prop :=
  ∀ n, P6724398351736771284.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P9551898656500759711

`∏{p}[n+1, #]*A048250(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A401421.P9551898656500759711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A048250 ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A401421.P9551898656500759711

namespace A401421

/-- `∏{p}[n+1, #]*A048250(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P9551898656500759711.Spec : Prop :=
  ∀ n, P9551898656500759711.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P3376833230170087615

`∏{p}[n+1, #]*A323363(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A401421.P3376833230170087615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A323363 ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A401421.P3376833230170087615

namespace A401421

/-- `∏{p}[n+1, #]*A323363(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P3376833230170087615.Spec : Prop :=
  ∀ n, P3376833230170087615.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P16369607198097549214

`abs(∏{p}[2*n-(n-1), -#])*A048250((n+1)*∏{p}[n+1, #^-1])`
-/

namespace A401421.P16369607198097549214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))| * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) ^ (-1 : ℤ)))).toNat

end

end A401421.P16369607198097549214

namespace A401421

/-- `abs(∏{p}[2*n-(n-1), -#])*A048250((n+1)*∏{p}[n+1, #^-1])` -/
def P16369607198097549214.Spec : Prop :=
  ∀ n, P16369607198097549214.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P4365005239126252553

`A003968(A007948(n+1))`
-/

namespace A401421.P4365005239126252553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A007948 (n + 1)).toNat

end

end A401421.P4365005239126252553

namespace A401421

/-- `A003968(A007948(n+1))` -/
def P4365005239126252553.Spec : Prop :=
  ∀ n, P4365005239126252553.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P1675070610036866139

`A057723(A007948(1+n))`
-/

namespace A401421.P1675070610036866139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A007948 (1 + n)).toNat

end

end A401421.P1675070610036866139

namespace A401421

/-- `A057723(A007948(1+n))` -/
def P1675070610036866139.Spec : Prop :=
  ∀ n, P1675070610036866139.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P7811216467767778262

`A361174(A353897(n+1))`
-/

namespace A401421.P7811216467767778262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361174 (A353897 (n + 1)).toNat

end

end A401421.P7811216467767778262

namespace A401421

/-- `A361174(A353897(n+1))` -/
def P7811216467767778262.Spec : Prop :=
  ∀ n, P7811216467767778262.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P9073841599611467425

`A007947(n+1)*A295295(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401421

/-- `A007947(n+1)*A295295(n+1)` -/
def P9073841599611467425.Spec : Prop :=
  ∀ n, P9073841599611467425.a n = A401421 (n + 1)

theorem P9073841599611467425.correct : P9073841599611467425.Spec := by
  intro n
  simp only [A401421, Nat.add_sub_cancel]

end A401421

/-! ## A401421.P15024644073355314281

`A003968((n+1)/A003557(A003557(n+1)))`
-/

namespace A401421.P15024644073355314281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A401421.P15024644073355314281

namespace A401421

/-- `A003968((n+1)/A003557(A003557(n+1)))` -/
def P15024644073355314281.Spec : Prop :=
  ∀ n, P15024644073355314281.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P18254114465499161945

`A057723((n+1)/A003557(A003557(n+1)))`
-/

namespace A401421.P18254114465499161945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A401421.P18254114465499161945

namespace A401421

/-- `A057723((n+1)/A003557(A003557(n+1)))` -/
def P18254114465499161945.Spec : Prop :=
  ∀ n, P18254114465499161945.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P5350659473104252840

`A361174(A356194(n+1))`
-/

namespace A401421.P5350659473104252840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361174 (A356194 (n + 1)).toNat

end

end A401421.P5350659473104252840

namespace A401421

/-- `A361174(A356194(n+1))` -/
def P5350659473104252840.Spec : Prop :=
  ∀ n, P5350659473104252840.a n = A401421 (n + 1)

end A401421

/-!
# A401422: The number of terms in A138302 that divide the smallest coreful infinitary divisor of n.

The programs for A401422, the canonical program `A401422.P2863499948558819369` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401422 has offset 1).

The definition of A401422 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353898, A365296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401422.P2863499948558819369

`A353898(A365296(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A401422

/-- `A353898(A365296(n+1))` -/
def P2863499948558819369.Spec : Prop :=
  ∀ n, P2863499948558819369.a n = A401422 (n + 1)

theorem P2863499948558819369.correct : P2863499948558819369.Spec := by
  intro n
  simp only [A401422, Nat.add_sub_cancel]

end A401422

/-! ## A401422.P11644018516735735101

`∏{e}[1+n, val(#, 2)+2]`
-/

namespace A401422.P11644018516735735101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2 + 2)

end

end A401422.P11644018516735735101

namespace A401422

/-- `∏{e}[1+n, val(#, 2)+2]` -/
def P11644018516735735101.Spec : Prop :=
  ∀ n, (P11644018516735735101.a n : ℤ) = A401422 (n + 1)

end A401422

/-! ## A401422.P9606179476778080626

`A390555(n+1)/A368979(n+1)`
-/

namespace A401422.P9606179476778080626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390555 (n + 1) : ℚ) / (A368979 (n + 1) : ℚ)

end

end A401422.P9606179476778080626

namespace A401422

/-- `A390555(n+1)/A368979(n+1)` -/
def P9606179476778080626.Spec : Prop :=
  ∀ n, P9606179476778080626.a n = (A401422 (n + 1) : ℚ)

end A401422

/-! ## A401422.P9132723026501819104

`∏{e}[n+1, A348249(A001511(#)+1)]`
-/

namespace A401422.P9132723026501819104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A348249 (A001511 (Nat.factorization (f1 n) p) + 1).toNat

end

end A401422.P9132723026501819104

namespace A401422

/-- `∏{e}[n+1, A348249(A001511(#)+1)]` -/
def P9132723026501819104.Spec : Prop :=
  ∀ n, P9132723026501819104.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P15729027198928835887

`∏{e}[(n+1)², A001511(#)]`
-/

namespace A401422.P15729027198928835887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001511 (Nat.factorization (f1 n) p)

end

end A401422.P15729027198928835887

namespace A401422

/-- `∏{e}[(n+1)², A001511(#)]` -/
def P15729027198928835887.Spec : Prop :=
  ∀ n, P15729027198928835887.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P3864312711403993107

`A392628(A102631(n+1))`
-/

namespace A401422.P3864312711403993107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392628 (A102631 (n + 1)).toNat

end

end A401422.P3864312711403993107

namespace A401422

/-- `A392628(A102631(n+1))` -/
def P3864312711403993107.Spec : Prop :=
  ∀ n, P3864312711403993107.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P3051756077588497402

`A392447(A278254(n+1))`
-/

namespace A401422.P3051756077588497402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A278254 (n + 1)).toNat

end

end A401422.P3051756077588497402

namespace A401422

/-- `A392447(A278254(n+1))` -/
def P3051756077588497402.Spec : Prop :=
  ∀ n, P3051756077588497402.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P16752798002629987223

`A392447((n+1)²)`
-/

namespace A401422.P16752798002629987223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 ((n + 1) ^ 2)

end

end A401422.P16752798002629987223

namespace A401422

/-- `A392447((n+1)²)` -/
def P16752798002629987223.Spec : Prop :=
  ∀ n, P16752798002629987223.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P1155314065043419292

`A049419(A365296((n+1)²))`
-/

namespace A401422.P1155314065043419292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A365296 ((n + 1) ^ 2)).toNat

end

end A401422.P1155314065043419292

namespace A401422

/-- `A049419(A365296((n+1)²))` -/
def P1155314065043419292.Spec : Prop :=
  ∀ n, P1155314065043419292.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P10834513104804102386

`A372380(A401425(A350390((n+1)²)))`
-/

namespace A401422.P10834513104804102386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A401425 (A350390 ((n + 1) ^ 2)).toNat).toNat

end

end A401422.P10834513104804102386

namespace A401422

/-- `A372380(A401425(A350390((n+1)²)))` -/
def P10834513104804102386.Spec : Prop :=
  ∀ n, P10834513104804102386.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P12257498270340376418

`A338782(A338782(A392447((n+1)*(n+1))))`
-/

namespace A401422.P12257498270340376418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (A338782 (A392447 ((n + 1) * (n + 1))).toNat).toNat

end

end A401422.P12257498270340376418

namespace A401422

/-- `A338782(A338782(A392447((n+1)*(n+1))))` -/
def P12257498270340376418.Spec : Prop :=
  ∀ n, P12257498270340376418.a n = A401422 (n + 1)

end A401422

/-!
# A401423: The number of coreful divisors of the smallest coreful infinitary divisor of n.

The programs for A401423, the canonical program `A401423.P862875318019210488` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401423 has offset 1).

The definition of A401423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365296, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401423.P862875318019210488

`A005361(A365296(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A401423

/-- `A005361(A365296(n+1))` -/
def P862875318019210488.Spec : Prop :=
  ∀ n, P862875318019210488.a n = A401423 (n + 1)

theorem P862875318019210488.correct : P862875318019210488.Spec := by
  intro n
  simp only [A401423, Nat.add_sub_cancel]

end A401423

/-! ## A401423.P5754976276126644862

`∏{e}[n+1, gcd(8, #)]`
-/

namespace A401423.P5754976276126644862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 8 (Nat.factorization (f1 n) p)

end

end A401423.P5754976276126644862

namespace A401423

/-- `∏{e}[n+1, gcd(8, #)]` -/
def P5754976276126644862.Spec : Prop :=
  ∀ n, (P5754976276126644862.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P15837186870507473008

`∏{e}[1+n, and(#, -#)]`
-/

namespace A401423.P15837186870507473008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land (Nat.factorization (f1 n) p : ℤ) (-(Nat.factorization (f1 n) p : ℤ))

end

end A401423.P15837186870507473008

namespace A401423

/-- `∏{e}[1+n, and(#, -#)]` -/
def P15837186870507473008.Spec : Prop :=
  ∀ n, P15837186870507473008.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P13042236856992444337

`2^∑{e}[1+n, val(#, 2)]`
-/

namespace A401423.P13042236856992444337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2)

end

end A401423.P13042236856992444337

namespace A401423

/-- `2^∑{e}[1+n, val(#, 2)]` -/
def P13042236856992444337.Spec : Prop :=
  ∀ n, (P13042236856992444337.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P7302287465099455232

`2^val(∏{e}[n+1, #], 2)`
-/

namespace A401423.P7302287465099455232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) 2

end

end A401423.P7302287465099455232

namespace A401423

/-- `2^val(∏{e}[n+1, #], 2)` -/
def P7302287465099455232.Spec : Prop :=
  ∀ n, (P7302287465099455232.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P7476109375084284358

`∏{e}[n+1, -or(#, -#)]`
-/

namespace A401423.P7476109375084284358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-Int.lor (Nat.factorization (f1 n) p : ℤ) (-(Nat.factorization (f1 n) p : ℤ)))

end

end A401423.P7476109375084284358

namespace A401423

/-- `∏{e}[n+1, -or(#, -#)]` -/
def P7476109375084284358.Spec : Prop :=
  ∀ n, P7476109375084284358.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P7002903332135870591

`2^A386258(n+1)`
-/

namespace A401423.P7002903332135870591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A386258 (n + 1) : ℤ)

end

end A401423.P7002903332135870591

namespace A401423

/-- `2^A386258(n+1)` -/
def P7002903332135870591.Spec : Prop :=
  ∀ n, P7002903332135870591.a n = (A401423 (n + 1) : ℚ)

end A401423

/-! ## A401423.P14376977039819542485

`A006519(∏{e}[n+1, #])`
-/

namespace A401423.P14376977039819542485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A401423.P14376977039819542485

namespace A401423

/-- `A006519(∏{e}[n+1, #])` -/
def P14376977039819542485.Spec : Prop :=
  ∀ n, P14376977039819542485.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P18324140347845231367

`∏{e}[A365296(n+1), #]`
-/

namespace A401423.P18324140347845231367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A401423.P18324140347845231367

namespace A401423

/-- `∏{e}[A365296(n+1), #]` -/
def P18324140347845231367.Spec : Prop :=
  ∀ n, (P18324140347845231367.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P10425506314178714319

`A006519(A005361(n+1))`
-/

namespace A401423.P10425506314178714319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A005361 (n + 1)).toNat

end

end A401423.P10425506314178714319

namespace A401423

/-- `A006519(A005361(n+1))` -/
def P10425506314178714319.Spec : Prop :=
  ∀ n, P10425506314178714319.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P16658710823565700544

`A006519(A370080(n+1))`
-/

namespace A401423.P16658710823565700544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A370080 (n + 1)).toNat

end

end A401423.P16658710823565700544

namespace A401423

/-- `A006519(A370080(n+1))` -/
def P16658710823565700544.Spec : Prop :=
  ∀ n, P16658710823565700544.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P14588802138286944011

`gcd(A000079(n), A005361(n+1))`
-/

namespace A401423.P14588802138286944011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A005361 (n + 1))

end

end A401423.P14588802138286944011

namespace A401423

/-- `gcd(A000079(n), A005361(n+1))` -/
def P14588802138286944011.Spec : Prop :=
  ∀ n, (P14588802138286944011.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P30333110257941858

`gcd(A005015(n), A360996(n+1))`
-/

namespace A401423.P30333110257941858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005015 n) (A360996 (n + 1))

end

end A401423.P30333110257941858

namespace A401423

/-- `gcd(A005015(n), A360996(n+1))` -/
def P30333110257941858.Spec : Prop :=
  ∀ n, (P30333110257941858.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P15130030030112787774

`gcd(A001794(n), A370080(n+1))`
-/

namespace A401423.P15130030030112787774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001794 n) (A370080 (n + 1))

end

end A401423.P15130030030112787774

namespace A401423

/-- `gcd(A001794(n), A370080(n+1))` -/
def P15130030030112787774.Spec : Prop :=
  ∀ n, (P15130030030112787774.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P8013410201925380194

`gcd(A098335(n), A303915(n+1))`
-/

namespace A401423.P8013410201925380194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098335 n) (A303915 (n + 1))

end

end A401423.P8013410201925380194

namespace A401423

/-- `gcd(A098335(n), A303915(n+1))` -/
def P8013410201925380194.Spec : Prop :=
  ∀ n, (P8013410201925380194.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P12034317221694507547

`gcd(A000431(n), A370080(n+1))`
-/

namespace A401423.P12034317221694507547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000431 n) (A370080 (n + 1))

end

end A401423.P12034317221694507547

namespace A401423

/-- `gcd(A000431(n), A370080(n+1))` -/
def P12034317221694507547.Spec : Prop :=
  ∀ n, (P12034317221694507547.a n : ℤ) = A401423 (n + 1)

end A401423

/-!
# A401424: The sum of coreful divisors of the smallest coreful infinitary divisor of n.

The programs for A401424, the canonical program `A401424.P13827627055239304936` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401424 has offset 1).

The definition of A401424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365296, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401424.P13827627055239304936

`A057723(A365296(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A401424

/-- `A057723(A365296(n+1))` -/
def P13827627055239304936.Spec : Prop :=
  ∀ n, P13827627055239304936.a n = A401424 (n + 1)

theorem P13827627055239304936.correct : P13827627055239304936.Spec := by
  intro n
  simp only [A401424, Nat.add_sub_cancel]

end A401424

/-! ## A401424.P4984080584134045738

`gcd(A057723(n+1), A249674((n+1)*216))`
-/

namespace A401424.P4984080584134045738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057723 (n + 1)) (A249674 ((n + 1) * 216))

end

end A401424.P4984080584134045738

namespace A401424

/-- `gcd(A057723(n+1), A249674((n+1)*216))` -/
def P4984080584134045738.Spec : Prop :=
  ∀ n, (P4984080584134045738.a n : ℤ) = A401424 (n + 1)

end A401424

/-! ## A401424.P9515721153047384905

`A057723(n+1)%A053324(A000384(3*n+1))`
-/

namespace A401424.P9515721153047384905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057723 (n + 1)) (A053324 (A000384 (3 * n + 1)).toNat)

end

end A401424.P9515721153047384905

namespace A401424

/-- `A057723(n+1)%A053324(A000384(3*n+1))` -/
def P9515721153047384905.Spec : Prop :=
  ∀ n, P9515721153047384905.a n = A401424 (n + 1)

end A401424

/-! ## A401424.P9993555725356243844

`∑{d}[(n+1)/∏{p}[n+1, #], (n+1)/#]%A000203(A053372(n))`
-/

namespace A401424.P9993555725356243844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (n + 1 : ℚ) / (d : ℚ))) (A000203 (A053372 n).toNat)

end

end A401424.P9993555725356243844

namespace A401424

/-- `∑{d}[(n+1)/∏{p}[n+1, #], (n+1)/#]%A000203(A053372(n))` -/
def P9993555725356243844.Spec : Prop :=
  ∀ n, P9993555725356243844.a n = A401424 (n + 1)

end A401424

/-! ## A401424.P2538313154308316548

`A057723(n+1)%A293052(A222448(n+3))`
-/

namespace A401424.P2538313154308316548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057723 (n + 1)) (A293052 (A222448 (n + 3)).toNat)

end

end A401424.P2538313154308316548

namespace A401424

/-- `A057723(n+1)%A293052(A222448(n+3))` -/
def P2538313154308316548.Spec : Prop :=
  ∀ n, P2538313154308316548.a n = A401424 (n + 1)

end A401424

/-!
# A401425: The largest infinitary divisor of n whose number of divisors is a power of 2.

The programs for A401425, the canonical program `A401425.P10919295985849016461` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401425 has offset 1).

The definition of A401425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401425.P10919295985849016461

`A053165((n+1)*A350388(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A401425

/-- `A053165((n+1)*A350388(n+1))` -/
def P10919295985849016461.Spec : Prop :=
  ∀ n, P10919295985849016461.a n = A401425 (n + 1)

theorem P10919295985849016461.correct : P10919295985849016461.Spec := by
  intro n
  simp only [A401425, Nat.add_sub_cancel]

end A401425

/-! ## A401425.P13848802559159915037

`A350389(n+1)%A033585(A323555(n+1))`
-/

namespace A401425.P13848802559159915037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350389 (n + 1)) (A033585 (A323555 (n + 1)).toNat)

end

end A401425.P13848802559159915037

namespace A401425

/-- `A350389(n+1)%A033585(A323555(n+1))` -/
def P13848802559159915037.Spec : Prop :=
  ∀ n, P13848802559159915037.a n = A401425 (n + 1)

end A401425

/-! ## A401425.P8303707649773586520

`A350389(n+1)%(A354778(n+1)+2)`
-/

namespace A401425.P8303707649773586520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350389 (n + 1)) (A354778 (n + 1) + 2)

end

end A401425.P8303707649773586520

namespace A401425

/-- `A350389(n+1)%(A354778(n+1)+2)` -/
def P8303707649773586520.Spec : Prop :=
  ∀ n, P8303707649773586520.a n = A401425 (n + 1)

end A401425

/-! ## A401425.P16524361857655531127

`A350389(n+1)%A000203(A354778(n+1))`
-/

namespace A401425.P16524361857655531127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350389 (n + 1)) (A000203 (A354778 (n + 1)).toNat)

end

end A401425.P16524361857655531127

namespace A401425

/-- `A350389(n+1)%A000203(A354778(n+1))` -/
def P16524361857655531127.Spec : Prop :=
  ∀ n, P16524361857655531127.a n = A401425 (n + 1)

end A401425

/-! ## A401425.P1406245320928173262

`gcd(A367122(n), A390863(n+1))`
-/

namespace A401425.P1406245320928173262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A367122 n) (A390863 (n + 1))

end

end A401425.P1406245320928173262

namespace A401425

/-- `gcd(A367122(n), A390863(n+1))` -/
def P1406245320928173262.Spec : Prop :=
  ∀ n, (P1406245320928173262.a n : ℤ) = A401425 (n + 1)

end A401425

/-!
# A401426: The sum of infinitary divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A401426, there is no canonical definition to state claims against.
-/

/-! ## A401426.P5789289908856760362

`A368471(n+1)%A112034(n)`
-/

namespace A401426.P5789289908856760362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368471 (n + 1)) (A112034 n)

end

end A401426.P5789289908856760362

/-! ## A401426.P3312021228762029786

`A390370(n+1)%A112034(n)`
-/

namespace A401426.P3312021228762029786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390370 (n + 1)) (A112034 n)

end

end A401426.P3312021228762029786

/-! ## A401426.P17024297341244157352

`A033634(gcd(A367122(n), A390863(n+1)))`
-/

namespace A401426.P17024297341244157352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (Int.gcd (A367122 n) (A390863 (n + 1)))

end

end A401426.P17024297341244157352

/-!
# A401437: Partial sums of A401409.

The programs for A401437, the canonical program `A401437.P81839502749205339` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401437 has offset 0).

The definition of A401437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401437.P81839502749205339

`∑[A401409(n)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401437

/-- `∑[A401409(n)]` -/
def P81839502749205339.Spec : Prop :=
  ∀ n, P81839502749205339.a n = A401437 n

theorem P81839502749205339.correct : P81839502749205339.Spec := by
  intro n
  simp only [A401437]

end A401437

/-! ## A401437.P12686189234646477805

`∑[A065359(xor(n, floor(n/2)))]`
-/

namespace A401437.P12686189234646477805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401437.P12686189234646477805

namespace A401437

/-- `∑[A065359(xor(n, floor(n/2)))]` -/
def P12686189234646477805.Spec : Prop :=
  ∀ n, P12686189234646477805.a n = A401437 n

end A401437

/-! ## A401437.P15017169942664643873

`∑[A065359(A003188(n))]`
-/

namespace A401437.P15017169942664643873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401437.P15017169942664643873

namespace A401437

/-- `∑[A065359(A003188(n))]` -/
def P15017169942664643873.Spec : Prop :=
  ∀ n, P15017169942664643873.a n = A401437 n

end A401437

/-! ## A401437.P3684886899049931361

`∑[∑[A209615(n+1)]-A209615(n+1)]`
-/

namespace A401437.P3684886899049931361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A209615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401437.P3684886899049931361

namespace A401437

/-- `∑[∑[A209615(n+1)]-A209615(n+1)]` -/
def P3684886899049931361.Spec : Prop :=
  ∀ n, P3684886899049931361.a n = A401437 n

end A401437

/-! ## A401437.P13855849827563304286

`∑[A195017(A302033(n))]`
-/

namespace A401437.P13855849827563304286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A302033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401437.P13855849827563304286

namespace A401437

/-- `∑[A195017(A302033(n))]` -/
def P13855849827563304286.Spec : Prop :=
  ∀ n, P13855849827563304286.a n = A401437 n

end A401437

/-!
# A401439: Number of labeled strongly connected digraphs with n arcs.

The programs for A401439, there is no canonical definition to state claims against.
-/

/-! ## A401439.P12907822662308297677

`A353967(6*4^n)`
-/

namespace A401439.P12907822662308297677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353967 (6 * 4 ^ n)

end

end A401439.P12907822662308297677

/-! ## A401439.P10917629799038416852

`A217605(A031133(n+1)+4)`
-/

namespace A401439.P10917629799038416852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217605 (A031133 (n + 1) + 4).toNat

end

end A401439.P10917629799038416852

/-!
# A401450: Maximum number of square partial products of a strictly increasing sequence of positive integers not exceeding n.

The programs for A401450, there is no canonical definition to state claims against.
-/

/-! ## A401450.P3507774320963520190

`A111854(A000037(n+1)%A308193(n+1))`
-/

namespace A401450.P3507774320963520190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111854 (Int.tmod (A000037 (n + 1)) (A308193 (n + 1))).toNat

end

end A401450.P3507774320963520190

/-! ## A401450.P4175843545394360167

`∑[A302052(A158139(2*n+3))+A302052(n+1)]`
-/

namespace A401450.P4175843545394360167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (A158139 (2 * n + 3)).toNat + A302052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401450.P4175843545394360167

/-! ## A401450.P9297275683005485772

`A111854(A000037(n+1))%A350184(n+1)`
-/

namespace A401450.P9297275683005485772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111854 (A000037 (n + 1)).toNat) (A350184 (n + 1))

end

end A401450.P9297275683005485772

/-! ## A401450.P4467962311696088729

`∑[A010054(A273717(n+2))]`
-/

namespace A401450.P4467962311696088729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A273717 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401450.P4467962311696088729

/-! ## A401450.P12250221544282033031

`∑[C(A379671(2*n+5), A003285(n+1))]`
-/

namespace A401450.P12250221544282033031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A379671 (2 * n + 5)).toNat (A003285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401450.P12250221544282033031

