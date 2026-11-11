import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C001
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
# A401404: Numbers m such that pi(2*m) is prime, where pi is A000720.

The programs for A401404, the canonical program `A401404.P11769500404623702126` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401404 has offset 1).

The definition of A401404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401404.P11769500404623702126

`A048989(2*(n+1))/2`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401404

/-- `A048989(2*(n+1))/2` -/
def P11769500404623702126.Spec : Prop :=
  ∀ n, P11769500404623702126.a n = (A401404 (n + 1) : ℚ)

end A401404

/-!
# A401405: Numbers k in A025487 such that k / (next number in A025487 after k) reaches a record large value.

The programs for A401405, there is no canonical definition to state claims against.
-/

/-! ## A401405.P13333245644188396026

`A340579(A301015(n))`
-/

namespace A401405.P13333245644188396026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340579 (A301015 n).toNat

end

end A401405.P13333245644188396026

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
# A401412: Number of distinct adjacency eigenvalues of the triangular lattice on an n X n torus (n^2 vertices).

The programs for A401412, there is no canonical definition to state claims against.
-/

/-! ## A401412.P1016012657866260181

`A065033(A401366(n+1))`
-/

namespace A401412.P1016012657866260181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A401366 (n + 1)).toNat

end

end A401412.P1016012657866260181

/-!
# A401420: Triangular numbers t such that either t-1 or t+1 is a perfect power (A001597).

The programs for A401420, there is no canonical definition to state claims against.
-/

/-! ## A401420.P16319193255721334780

`∩[A000217(n), A080262(n+1)]`
-/

namespace A401420.P16319193255721334780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401420.P16319193255721334780

/-! ## A401420.P11684429856552776158

`∩[A080262(n+1), A253145(n)]`
-/

namespace A401420.P11684429856552776158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401420.P11684429856552776158

/-! ## A401420.P14666396636931067783

`∩[A080262(n+1), A334129(n+1)]`
-/

namespace A401420.P14666396636931067783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401420.P14666396636931067783

/-! ## A401420.P3702304660740056556

`filter[A080262(n+1), A073424(#)]`
-/

namespace A401420.P3702304660740056556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A401420.P3702304660740056556

/-! ## A401420.P16970595291980020744

`filter[A080262(n+1), A010054(#)]`
-/

namespace A401420.P16970595291980020744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A401420.P16970595291980020744

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

/-! ## A401423.P9874677134054628103

`gcd(A018204(n), A303915(n+1))`
-/

namespace A401423.P9874677134054628103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018204 n) (A303915 (n + 1))

end

end A401423.P9874677134054628103

namespace A401423

/-- `gcd(A018204(n), A303915(n+1))` -/
def P9874677134054628103.Spec : Prop :=
  ∀ n, (P9874677134054628103.a n : ℤ) = A401423 (n + 1)

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
# A401432: Distance between n^2 and the nearest triangular number, either above or below n^2.

The programs for A401432, the canonical program `A401432.P8014818857472625557` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401432 has offset 0).

The definition of A401432 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401432.P8014818857472625557

`A053616(n²)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401432

/-- `A053616(n²)` -/
def P8014818857472625557.Spec : Prop :=
  ∀ n, P8014818857472625557.a n = A401432 n

theorem P8014818857472625557.correct : P8014818857472625557.Spec := by
  intro n
  simp only [A401432]

end A401432

/-! ## A401432.P9286349835910214883

`A004197(A245207(n))`
-/

namespace A401432.P9286349835910214883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A245207 n).toNat

end

end A401432.P9286349835910214883

namespace A401432

/-- `A004197(A245207(n))` -/
def P9286349835910214883.Spec : Prop :=
  ∀ n, P9286349835910214883.a n = A401432 n

end A401432

/-! ## A401432.P5872195438692942551

`A053615(A001105(n))/2`
-/

namespace A401432.P5872195438692942551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053615 (A001105 n).toNat : ℚ) / 2

end

end A401432.P5872195438692942551

namespace A401432

/-- `A053615(A001105(n))/2` -/
def P5872195438692942551.Spec : Prop :=
  ∀ n, P5872195438692942551.a n = (A401432 n : ℚ)

end A401432

/-!
# A401434: Primes of the form 3*(p-1)^2 + 1, where p is prime.

The programs for A401434, there is no canonical definition to state claims against.
-/

/-! ## A401434.P12623136983808624248

`filter[A002648(n+1), A190669(#)]`
-/

namespace A401434.P12623136983808624248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190669 (f1 j).toNat = 1) n)

end

end A401434.P12623136983808624248

/-! ## A401434.P13157998092212124404

`∩[A293048(n+1), A356984(n)]`
-/

namespace A401434.P13157998092212124404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356984 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401434.P13157998092212124404

/-!
# A401436: Square array A(n,k), n >= 0, k >= 1, read by descending antidiagonals: A(n,k) is the number of nonnegative integer solutions to x + y + k*z = n.

The programs for A401436, the canonical program `A401436.P13048450187381988359` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401436 has offset 0).

The definition of A401436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401436.P13048450187381988359

`A134546(A038722(n+1))`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401436

/-- `A134546(A038722(n+1))` -/
def P13048450187381988359.Spec : Prop :=
  ∀ n, P13048450187381988359.a n = A401436 n

theorem P13048450187381988359.correct : P13048450187381988359.Spec := by
  intro n
  simp only [A401436]

end A401436

/-! ## A401436.P865401498997369665

`A134546(A061579(n)+1)`
-/

namespace A401436.P865401498997369665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134546 (A061579 n + 1).toNat

end

end A401436.P865401498997369665

namespace A401436

/-- `A134546(A061579(n)+1)` -/
def P865401498997369665.Spec : Prop :=
  ∀ n, P865401498997369665.a n = A401436 n

end A401436

/-! ## A401436.P12785020403707378848

`runs[A345272(n+1)]`
-/

namespace A401436.P12785020403707378848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A401436.P12785020403707378848

namespace A401436

/-- `runs[A345272(n+1)]` -/
def P12785020403707378848.Spec : Prop :=
  ∀ n, (P12785020403707378848.a n : ℤ) = A401436 n

end A401436

/-! ## A401436.P5038780834636549651

`A067131(A089275(n+1))`
-/

namespace A401436.P5038780834636549651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A089275 (n + 1)).toNat

end

end A401436.P5038780834636549651

namespace A401436

/-- `A067131(A089275(n+1))` -/
def P5038780834636549651.Spec : Prop :=
  ∀ n, P5038780834636549651.a n = A401436 n

end A401436

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
# A401441: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals (A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...): A(n,k) is the number of divisors d of n such that gcd(d, n/d) is a k-th power.

The programs for A401441, there is no canonical definition to state claims against.
-/

/-! ## A401441.P16375975320889486455

`A333940(A376102(n))`
-/

namespace A401441.P16375975320889486455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 (A376102 n).toNat

end

end A401441.P16375975320889486455

/-! ## A401441.P8544930502541861104

`A323157(A355881(n))`
-/

namespace A401441.P8544930502541861104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323157 (A355881 n).toNat

end

end A401441.P8544930502541861104

/-! ## A401441.P17598492725204199362

`A345874(A143453(n))`
-/

namespace A401441.P17598492725204199362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345874 (A143453 n).toNat

end

end A401441.P17598492725204199362

/-! ## A401441.P1881887565920930954

`A062501(A236433(n+1))`
-/

namespace A401441.P1881887565920930954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062501 (A236433 (n + 1)).toNat

end

end A401441.P1881887565920930954

/-! ## A401441.P7591438279109574128

`A253719(A080508(n+1))`
-/

namespace A401441.P7591438279109574128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253719 (A080508 (n + 1)).toNat

end

end A401441.P7591438279109574128

/-!
# A401444: Pythagorean primes p for which one Fibonacci recurrence step (v, u) -> (u, u+v) on the odd leg u and even leg v of the primitive Pythagorean triangle with hypotenuse p gives another Pythagorean prime q = (u^2 + (u+v)^2)/2.

The programs for A401444, there is no canonical definition to state claims against.
-/

/-! ## A401444.P1181913187554631159

`A136801(A078567(n+2))`
-/

namespace A401444.P1181913187554631159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136801 (A078567 (n + 2)).toNat

end

end A401444.P1181913187554631159

/-! ## A401444.P9233369793728120090

`filter[A096650(n+2), A189301(#)]`
-/

namespace A401444.P9233369793728120090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096650 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189301 (f1 j).toNat = 1) n)

end

end A401444.P9233369793728120090

/-!
# A401445: Half the sum of the squares after one Fibonacci recurrence step (v, u) -> (u, u+v): a(n) = (u^2 + (u+v)^2)/2, where u and v are the odd and even legs of the primitive Pythagorean triangle with hypotenuse A002144(n).

The programs for A401445, there is no canonical definition to state claims against.
-/

/-! ## A401445.P10491012259957362030

`(A070079(n+1)+2*A070151(n+1))²+4*A070151(n+1)²`
-/

namespace A401445.P10491012259957362030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070079 (n + 1) + 2 * A070151 (n + 1)) ^ 2 + 4 * A070151 (n + 1) ^ 2

end

end A401445.P10491012259957362030

/-! ## A401445.P12800972162116958727

`A401446(n+1)/A002144(n+1)`
-/

namespace A401445.P12800972162116958727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401446 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A401445.P12800972162116958727

/-! ## A401445.P13251851488135779950

`A401446(n+1)/A002313(n+2)`
-/

namespace A401445.P13251851488135779950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401446 (n + 1) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A401445.P13251851488135779950

/-!
# A401446: Square roots of the central entries in a six-square 3 X 3 magic-square construction from Pythagorean primes using a Fibonacci recurrence step on the legs.

The programs for A401446, there is no canonical definition to state claims against.
-/

/-! ## A401446.P8059598787813063467

`A002144(n+1)*A401445(n+1)`
-/

namespace A401446.P8059598787813063467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A401445 (n + 1)

end

end A401446.P8059598787813063467

/-! ## A401446.P14554525776756508987

`A002313(n+2)*A401445(n+1)`
-/

namespace A401446.P14554525776756508987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A401445 (n + 1)

end

end A401446.P14554525776756508987

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

/-!
# A401453: Primes in A399741.

The programs for A401453, there is no canonical definition to state claims against.
-/

/-! ## A401453.P18294748126034716633

`p?[A399741(n+1)]`
-/

namespace A401453.P18294748126034716633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A401453.P18294748126034716633

/-! ## A401453.P5389775438473566693

`filter[A399741(n+1), A010051(#)]`
-/

namespace A401453.P5389775438473566693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A401453.P5389775438473566693

/-! ## A401453.P12815445405034391501

`filter[A399741(n+1), A323152(#)]`
-/

namespace A401453.P12815445405034391501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A401453.P12815445405034391501

/-!
# A401468: a(n) = Sum_{k=1..n} A046801(k).

The programs for A401468, the canonical program `A401468.P2834647900088656958` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401468 has offset 1).

The definition of A401468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401468.P2834647900088656958

`∑[A046801(n+1)]`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401468

/-- `∑[A046801(n+1)]` -/
def P2834647900088656958.Spec : Prop :=
  ∀ n, P2834647900088656958.a n = A401468 (n + 1)

theorem P2834647900088656958.correct : P2834647900088656958.Spec := by
  intro n
  simp only [A401468, Nat.add_sub_cancel]

end A401468

/-! ## A401468.P8214743727044782714

`eq[A000035(n), A361438(n+1)]`
-/

namespace A401468.P8214743727044782714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P8214743727044782714

namespace A401468

/-- `eq[A000035(n), A361438(n+1)]` -/
def P8214743727044782714.Spec : Prop :=
  ∀ n, (P8214743727044782714.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P10827888309845354462

`eq[A007877(n), A361438(n+1)]`
-/

namespace A401468.P10827888309845354462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P10827888309845354462

namespace A401468

/-- `eq[A007877(n), A361438(n+1)]` -/
def P10827888309845354462.Spec : Prop :=
  ∀ n, (P10827888309845354462.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P2278690011783650990

`eq[A010121(n), A361438(n+1)]`
-/

namespace A401468.P2278690011783650990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P2278690011783650990

namespace A401468

/-- `eq[A010121(n), A361438(n+1)]` -/
def P2278690011783650990.Spec : Prop :=
  ∀ n, (P2278690011783650990.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P16836479993233670348

`eq[A010123(n), A361438(n+1)]`
-/

namespace A401468.P16836479993233670348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P16836479993233670348

namespace A401468

/-- `eq[A010123(n), A361438(n+1)]` -/
def P16836479993233670348.Spec : Prop :=
  ∀ n, (P16836479993233670348.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P5416221672560935313

`eq[A010130(n), A361438(n+1)]`
-/

namespace A401468.P5416221672560935313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P5416221672560935313

namespace A401468

/-- `eq[A010130(n), A361438(n+1)]` -/
def P5416221672560935313.Spec : Prop :=
  ∀ n, (P5416221672560935313.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P15914059146208264611

`eq[A010131(n), A361438(n+1)]`
-/

namespace A401468.P15914059146208264611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P15914059146208264611

namespace A401468

/-- `eq[A010131(n), A361438(n+1)]` -/
def P15914059146208264611.Spec : Prop :=
  ∀ n, (P15914059146208264611.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P2166477443469711132

`eq[A010132(n), A361438(n+1)]`
-/

namespace A401468.P2166477443469711132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P2166477443469711132

namespace A401468

/-- `eq[A010132(n), A361438(n+1)]` -/
def P2166477443469711132.Spec : Prop :=
  ∀ n, (P2166477443469711132.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P2871140973523959655

`eq[A010137(n), A361438(n+1)]`
-/

namespace A401468.P2871140973523959655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P2871140973523959655

namespace A401468

/-- `eq[A010137(n), A361438(n+1)]` -/
def P2871140973523959655.Spec : Prop :=
  ∀ n, (P2871140973523959655.a n : ℤ) = A401468 (n + 1)

end A401468

/-! ## A401468.P12648220771430429984

`eq[A010146(n), A361438(n+1)]`
-/

namespace A401468.P12648220771430429984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401468.P12648220771430429984

namespace A401468

/-- `eq[A010146(n), A361438(n+1)]` -/
def P12648220771430429984.Spec : Prop :=
  ∀ n, (P12648220771430429984.a n : ℤ) = A401468 (n + 1)

end A401468

/-!
# A401472: Maximum size of a subset of {1, ..., n} whose subset products are all distinct.

The programs for A401472, there is no canonical definition to state claims against.
-/

/-! ## A401472.P9119063660175441461

`A203967(n+1)+A011745(n)`
-/

namespace A401472.P9119063660175441461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203967 (n + 1) + A011745 n

end

end A401472.P9119063660175441461

/-! ## A401472.P10970676514327030221

`A302778(n+1)+A011745(n)`
-/

namespace A401472.P10970676514327030221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (n + 1) + A011745 n

end

end A401472.P10970676514327030221

/-!
# A401478: Numbers that are not the sum of at most seven 6-full numbers.

The programs for A401478, there is no canonical definition to state claims against.
-/

/-! ## A401478.P17706980634310063356

`A004427(A061425(n+1))+n`
-/

namespace A401478.P17706980634310063356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A061425 (n + 1)).toNat + (n : ℤ)

end

end A401478.P17706980634310063356

/-! ## A401478.P9277239501154870941

`A157339(2*n)+n+3`
-/

namespace A401478.P9277239501154870941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157339 (2 * n) + (n + 3 : ℤ)

end

end A401478.P9277239501154870941

/-! ## A401478.P4751777094073577773

`A028276(A112355(n+2))`
-/

namespace A401478.P4751777094073577773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (A112355 (n + 2)).toNat

end

end A401478.P4751777094073577773

/-! ## A401478.P8234153513085131170

`A066272(A066474(n+1))+n`
-/

namespace A401478.P8234153513085131170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A066474 (n + 1)).toNat + (n : ℤ)

end

end A401478.P8234153513085131170

/-! ## A401478.P12172225681889961441

`lcm(A020722(n), A123271(n+2))`
-/

namespace A401478.P12172225681889961441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020722 n) (A123271 (n + 2))

end

end A401478.P12172225681889961441

/-!
# A401479: a(n) is the size of the largest Sidon subset of the first n positive cubes.

The programs for A401479, there is no canonical definition to state claims against.
-/

/-! ## A401479.P2640179275518790543

`A351846(A107615(n+2))`
-/

namespace A401479.P2640179275518790543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A107615 (n + 2)).toNat

end

end A401479.P2640179275518790543

/-!
# A401482: Powerful numbers whose number of divisors is a power of 2.

The programs for A401482, there is no canonical definition to state claims against.
-/

/-! ## A401482.P3324724366066087135

`filter[A001694(n+1), A359473(#)]`
-/

namespace A401482.P3324724366066087135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A401482.P3324724366066087135

/-! ## A401482.P9746469568036321076

`filter[A036966(n+1), A359473(#)]`
-/

namespace A401482.P9746469568036321076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A401482.P9746469568036321076

/-! ## A401482.P16858088195908935514

`filter[A317102(n+1), A359473(#)]`
-/

namespace A401482.P16858088195908935514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A401482.P16858088195908935514

/-! ## A401482.P99377156036261815

`filter[A335988(n+1), A359473(#)]`
-/

namespace A401482.P99377156036261815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A401482.P99377156036261815

/-! ## A401482.P4827888637471033760

`filter[A377819(n+1), A359473(#)]`
-/

namespace A401482.P4827888637471033760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A401482.P4827888637471033760

/-!
# A401483: Powerful numbers whose prime factorization exponents are all squares.

The programs for A401483, there is no canonical definition to state claims against.
-/

/-! ## A401483.P15178249390584020978

`filter[A389498(n+1), A216280(#)]`
-/

namespace A401483.P15178249390584020978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A216280 (f1 j).toNat = 1) n)

end

end A401483.P15178249390584020978

/-! ## A401483.P7914211727464167260

`filter[A197680(n+1), A075802(#)]`
-/

namespace A401483.P7914211727464167260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A401483.P7914211727464167260

/-! ## A401483.P1543891945796947021

`filter[A372405(n+1), A120531(#)]`
-/

namespace A401483.P1543891945796947021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120531 (f1 j).toNat = 1) n)

end

end A401483.P1543891945796947021

/-! ## A401483.P5124632701215555012

`filter[A372405(n+1), A307421(#)]`
-/

namespace A401483.P5124632701215555012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A401483.P5124632701215555012

/-!
# A401485: Powerful numbers whose largest square unitary divisor is a fourth power.

The programs for A401485, there is no canonical definition to state claims against.
-/

/-! ## A401485.P15753388714130252463

`∩[A001694(n+1), A401484(n+1)]`
-/

namespace A401485.P15753388714130252463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401485.P15753388714130252463

/-! ## A401485.P8338132806936205625

`∩[A036966(n+1), A401484(n+1)]`
-/

namespace A401485.P8338132806936205625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401485.P8338132806936205625

/-! ## A401485.P6853517485061120018

`filter[A401484(n+1), A112526(#)]`
-/

namespace A401485.P6853517485061120018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A401485.P6853517485061120018

/-! ## A401485.P5083986714093284729

`∩[A036966(n+1), A368812(n+1)]`
-/

namespace A401485.P5083986714093284729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401485.P5083986714093284729

/-! ## A401485.P1647986271871604905

`∩[A076467(n+1), A368812(n+1)]`
-/

namespace A401485.P1647986271871604905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401485.P1647986271871604905

/-!
# A401486: Powerful numbers that have an odd number of square divisors.

The programs for A401486, there is no canonical definition to state claims against.
-/

/-! ## A401486.P2326515252018873774

`filter[A001694(n+1), A353519(#)]`
-/

namespace A401486.P2326515252018873774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A401486.P2326515252018873774

/-! ## A401486.P12912313855081832219

`filter[A036966(n+1), A353519(#)]`
-/

namespace A401486.P12912313855081832219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A401486.P12912313855081832219

/-! ## A401486.P4855821422328773912

`filter[A036967(n+1), A353519(#)]`
-/

namespace A401486.P4855821422328773912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A401486.P4855821422328773912

/-! ## A401486.P17980415337041422799

`filter[A388719(n+1), A353519(#)]`
-/

namespace A401486.P17980415337041422799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A401486.P17980415337041422799

/-! ## A401486.P16560417127469169366

`filter[A401485(n+1), A353519(#)]`
-/

namespace A401486.P16560417127469169366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A401486.P16560417127469169366

/-!
# A401488: Number of Boolean functions of n variables up to duality, where f is identified with its dual f^d(x) = NOT f(NOT x).

The programs for A401488, there is no canonical definition to state claims against.
-/

/-! ## A401488.P13091545545759333270

`floor(2^(2^n-1)+2^(2^(n-1)-1))`
-/

namespace A401488.P13091545545759333270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) : ℝ) + (2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1 : ℝ)⌋

end

end A401488.P13091545545759333270

/-! ## A401488.P9505123808399603740

`A137173(2^n+1)`
-/

namespace A401488.P9505123808399603740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (2 ^ n + 1)

end

end A401488.P9505123808399603740

/-! ## A401488.P194662569902117307

`A051437(A000225(n))`
-/

namespace A401488.P194662569902117307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (A000225 n).toNat

end

end A401488.P194662569902117307

/-!
# A401493: Number of unlabeled Riordan graphs on n vertices.

The programs for A401493, there is no canonical definition to state claims against.
-/

/-! ## A401493.P10445899991786372662

`A385575(a(n-1))+n` with `a(0)=1`
-/

namespace A401493.P10445899991786372662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A385575 (a (n - 1)).toNat + (n : ℤ)

end

end A401493.P10445899991786372662

/-! ## A401493.P8571506144303214178

`A139555(A026649(n))`
-/

namespace A401493.P8571506144303214178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (A026649 n).toNat

end

end A401493.P8571506144303214178

/-!
# A401496: Number of labeled Riordan graphs of order n whose complement, with the same vertex labeling, is also a labeled Riordan graph.

The programs for A401496, there is no canonical definition to state claims against.
-/

/-! ## A401496.P13990246452554065000

`∑[ogf((1+x-6x^2)/(1-8x^2))]`
-/

namespace A401496.P13990246452554065000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -6] [1, 0, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401496.P13990246452554065000

/-! ## A401496.P3513548279293875568

`ogf((1+x-6x^2)/(1-x-8x^2+8x^3))`
-/

namespace A401496.P3513548279293875568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -6] [1, -1, -8, 8] n

end

end A401496.P3513548279293875568

/-! ## A401496.P17681627566745843402

`8*a(n-2)-4` with `a(0)=1, a(1)=2`
-/

namespace A401496.P17681627566745843402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  8 * a (n - 2) - 4

end

end A401496.P17681627566745843402

/-! ## A401496.P13898889029267517114

`∑[2^∑[3-a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A401496.P13898889029267517114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401496.P13898889029267517114

/-! ## A401496.P13717548034871214964

`(A113835(n+1)+3)/4`
-/

namespace A401496.P13717548034871214964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113835 (n + 1) + 3 : ℚ) / 4

end

end A401496.P13717548034871214964

/-!
# A401497: Place n points at the integer polar angles of the Archimedean spiral r = k, 0 <= k < n, then around the k-th point draw a circle whose radius is the distance from the k-th point to the (k+1)-th point: a(n) is the number of finite regions in the resulting planar graph.

The programs for A401497, there is no canonical definition to state claims against.
-/

/-! ## A401497.P6763139645288456617

`A401498(n+1)+1`
-/

namespace A401497.P6763139645288456617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401498 (n + 1) + 1

end

end A401497.P6763139645288456617

/-! ## A401497.P12955069275803696121

`A004442(A401498(n+1))`
-/

namespace A401497.P12955069275803696121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A401498 (n + 1)).toNat

end

end A401497.P12955069275803696121

/-! ## A401497.P1015389756842084270

`A008619(A401499(n+1))`
-/

namespace A401497.P1015389756842084270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A401499 (n + 1)).toNat

end

end A401497.P1015389756842084270

/-!
# A401498: Place n points at the integer polar angles of the Archimedean spiral r = k, 0 <= k < n, then around the k-th point draw a circle whose radius is the distance from the k-th point to the (k+1)-th point: a(n) is the number of vertices in the resulting planar graph.

The programs for A401498, there is no canonical definition to state claims against.
-/

/-! ## A401498.P5712621794812698862

`A401497(n+1)-1`
-/

namespace A401498.P5712621794812698862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401497 (n + 1) - 1

end

end A401498.P5712621794812698862

/-! ## A401498.P16943430069520961289

`A004442(A401497(n+1))`
-/

namespace A401498.P16943430069520961289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A401497 (n + 1)).toNat

end

end A401498.P16943430069520961289

/-! ## A401498.P13299147187610945391

`and(A002446(n), A401497(n+1))`
-/

namespace A401498.P13299147187610945391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A401497 (n + 1))

end

end A401498.P13299147187610945391

/-! ## A401498.P15734326033324499541

`and(A005367(n), A401497(n+1))`
-/

namespace A401498.P15734326033324499541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A401497 (n + 1))

end

end A401498.P15734326033324499541

/-! ## A401498.P10779116835937303160

`and(A286778(n), A401497(n+1))`
-/

namespace A401498.P10779116835937303160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286778 n) (A401497 (n + 1))

end

end A401498.P10779116835937303160

/-! ## A401498.P2498194471985022813

`xor(A361338(n), A401497(n+1))`
-/

namespace A401498.P2498194471985022813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A361338 n) (A401497 (n + 1))

end

end A401498.P2498194471985022813

/-! ## A401498.P12804494623409395667

`and(A143960(n+1), A401497(n+1))`
-/

namespace A401498.P12804494623409395667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143960 (n + 1)) (A401497 (n + 1))

end

end A401498.P12804494623409395667

/-! ## A401498.P16297768289225358794

`and(A170940(n+1), A401497(n+1))`
-/

namespace A401498.P16297768289225358794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170940 (n + 1)) (A401497 (n + 1))

end

end A401498.P16297768289225358794

/-! ## A401498.P12661598461214329581

`xor(A160338(n+1), A401497(n+1))`
-/

namespace A401498.P12661598461214329581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160338 (n + 1)) (A401497 (n + 1))

end

end A401498.P12661598461214329581

/-! ## A401498.P2453304083178174229

`and(A158525(n+4), A401497(n+1))`
-/

namespace A401498.P2453304083178174229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158525 (n + 4)) (A401497 (n + 1))

end

end A401498.P2453304083178174229

/-!
# A401499: Place n points at the integer polar angles of the Archimedean spiral r = k, 0 <= k < n, then around the k-th point draw a circle whose radius is the distance from the k-th point to the (k+1)-th point: a(n) is the number of (curved) edges in the resulting planar graph.

The programs for A401499, there is no canonical definition to state claims against.
-/

/-! ## A401499.P14494113794704162012

`A004275(A401497(n+1))`
-/

namespace A401499.P14494113794704162012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A401497 (n + 1)).toNat

end

end A401499.P14494113794704162012

/-! ## A401499.P3105318240535502336

`A004277(A401498(n+1))`
-/

namespace A401499.P3105318240535502336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A401498 (n + 1)).toNat

end

end A401499.P3105318240535502336

/-! ## A401499.P16505684356549901105

`(n+1)*A259573(2^n)`
-/

namespace A401499.P16505684356549901105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A259573 (2 ^ n)

end

end A401499.P16505684356549901105

/-! ## A401499.P16960157578407384224

`(n+1)*A358216(2^n)`
-/

namespace A401499.P16960157578407384224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A358216 (2 ^ n)

end

end A401499.P16960157578407384224

/-! ## A401499.P16156827866881168479

`A125585(A211905(n+2))`
-/

namespace A401499.P16156827866881168479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 (A211905 (n + 2)).toNat

end

end A401499.P16156827866881168479

