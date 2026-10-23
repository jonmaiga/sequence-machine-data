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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A145600: a(n) is the number of walks from (0,0) to (0,1) that remain in the upper half-plane y >= 0 using (2*n - 1) unit steps either up (U), down (D), left (L) or right (R).

The programs for A145600, the canonical program `A145600.P14114066443938343505` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145600 has offset 1).

The definition of A145600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145600.P12087506113430996232

`1/(n+1)*C(2*(n+1), n+2)*C(2*(n+1), n)`
-/

namespace A145600.P12087506113430996232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (Nat.choose (2 * (n + 1)) (n + 2) : ℚ) * (Nat.choose (2 * (n + 1)) n : ℚ)

end

end A145600.P12087506113430996232

namespace A145600

/-- `1/(n+1)*C(2*(n+1), n+2)*C(2*(n+1), n)` -/
def P12087506113430996232.Spec : Prop :=
  ∀ n, P12087506113430996232.a n = (A145600 (n + 1) : ℚ)

end A145600

/-! ## A145600.P11577620050344042348

`C(2*(n+1), n+2)*C(2*(n+1), n)/(n+1)`
-/

namespace A145600.P11577620050344042348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 2) * Nat.choose (2 * (n + 1)) n : ℚ) / (n + 1 : ℚ)

end

end A145600.P11577620050344042348

namespace A145600

/-- `C(2*(n+1), n+2)*C(2*(n+1), n)/(n+1)` -/
def P11577620050344042348.Spec : Prop :=
  ∀ n, P11577620050344042348.a n = (A145600 (n + 1) : ℚ)

end A145600

/-! ## A145600.P14114066443938343505

`A135389(n)/(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145600

/-- `A135389(n)/(n+2)` -/
def P14114066443938343505.Spec : Prop :=
  ∀ n, P14114066443938343505.a n = (A145600 (n + 1) : ℚ)

end A145600

/-! ## A145600.P769300358359110314

`A268085(n+1)`
-/

namespace A145600.P769300358359110314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268085 (n + 1)

end

end A145600.P769300358359110314

namespace A145600

/-- `A268085(n+1)` -/
def P769300358359110314.Spec : Prop :=
  ∀ n, P769300358359110314.a n = A145600 (n + 1)

end A145600

/-! ## A145600.P4728848866949628125

`A005559(Δ[n²])`
-/

namespace A145600.P4728848866949628125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005559 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A145600.P4728848866949628125

namespace A145600

/-- `A005559(Δ[n²])` -/
def P4728848866949628125.Spec : Prop :=
  ∀ n, P4728848866949628125.a n = A145600 (n + 1)

end A145600

/-! ## A145600.P17343678264325464345

`A267982(n+1)/4`
-/

namespace A145600.P17343678264325464345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267982 (n + 1) : ℚ) / 4

end

end A145600.P17343678264325464345

namespace A145600

/-- `A267982(n+1)/4` -/
def P17343678264325464345.Spec : Prop :=
  ∀ n, P17343678264325464345.a n = (A145600 (n + 1) : ℚ)

end A145600

/-! ## A145600.P4894630009934484654

`record[A268085(abs(1-n))]`
-/

namespace A145600.P4894630009934484654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268085 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145600.P4894630009934484654

namespace A145600

/-- `record[A268085(abs(1-n))]` -/
def P4894630009934484654.Spec : Prop :=
  ∀ n, P4894630009934484654.a n = A145600 (n + 1)

end A145600

/-! ## A145600.P12497364673170025568

`(n+1)*A001246(n+1)`
-/

namespace A145600.P12497364673170025568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001246 (n + 1)

end

end A145600.P12497364673170025568

namespace A145600

/-- `(n+1)*A001246(n+1)` -/
def P12497364673170025568.Spec : Prop :=
  ∀ n, P12497364673170025568.a n = A145600 (n + 1)

end A145600

/-! ## A145600.P17368869960268833649

`(n+1)*A039598(∑[n])²`
-/

namespace A145600.P17368869960268833649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039598 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A145600.P17368869960268833649

namespace A145600

/-- `(n+1)*A039598(∑[n])²` -/
def P17368869960268833649.Spec : Prop :=
  ∀ n, P17368869960268833649.a n = A145600 (n + 1)

end A145600

/-! ## A145600.P10892832335436630407

`(n+1)*A050158(∑[n])²`
-/

namespace A145600.P10892832335436630407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050158 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A145600.P10892832335436630407

namespace A145600

/-- `(n+1)*A050158(∑[n])²` -/
def P10892832335436630407.Spec : Prop :=
  ∀ n, P10892832335436630407.a n = A145600 (n + 1)

end A145600

/-!
# A145601: a(n) is the number of walks from (0,0) to (0,2) that remain in the upper half-plane y >= 0 using 2*n unit steps either up (U), down (D), left (L) or right (R).

The programs for A145601, the canonical program `A145601.P10301756151199915796` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145601 has offset 1).

The definition of A145601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145601.P10301756151199915796

`3/(2*(n+1)+1)*C(2*(n+1)+1, n+3)*C(2*(n+1)+1, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145601

/-- `3/(2*(n+1)+1)*C(2*(n+1)+1, n+3)*C(2*(n+1)+1, n)` -/
def P10301756151199915796.Spec : Prop :=
  ∀ n, P10301756151199915796.a n = (A145601 (n + 1) : ℚ)

end A145601

/-! ## A145601.P12800444440135003888

`A005560(2*(n+1))`
-/

namespace A145601.P12800444440135003888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005560 (2 * (n + 1))

end

end A145601.P12800444440135003888

namespace A145601

/-- `A005560(2*(n+1))` -/
def P12800444440135003888.Spec : Prop :=
  ∀ n, P12800444440135003888.a n = A145601 (n + 1)

end A145601

/-! ## A145601.P18421251117062249060

`A067802(∑[n+1]+1)`
-/

namespace A145601.P18421251117062249060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A145601.P18421251117062249060

namespace A145601

/-- `A067802(∑[n+1]+1)` -/
def P18421251117062249060.Spec : Prop :=
  ∀ n, P18421251117062249060.a n = A145601 (n + 1)

end A145601

/-! ## A145601.P8388686923858770909

`record[A005560(n+2)/A033999(n)]`
-/

namespace A145601.P8388686923858770909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005560 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145601.P8388686923858770909

namespace A145601

/-- `record[A005560(n+2)/A033999(n)]` -/
def P8388686923858770909.Spec : Prop :=
  ∀ n, P8388686923858770909.a n = (A145601 (n + 1) : ℚ)

end A145601

/-! ## A145601.P17196624706439565475

`A000245(n+1)*A002054(n+1)`
-/

namespace A145601.P17196624706439565475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) * A002054 (n + 1)

end

end A145601.P17196624706439565475

namespace A145601

/-- `A000245(n+1)*A002054(n+1)` -/
def P17196624706439565475.Spec : Prop :=
  ∀ n, P17196624706439565475.a n = A145601 (n + 1)

end A145601

/-! ## A145601.P12282882393508097041

`A002054(n+1)*A071724(n+1)`
-/

namespace A145601.P12282882393508097041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A071724 (n + 1)

end

end A145601.P12282882393508097041

namespace A145601

/-- `A002054(n+1)*A071724(n+1)` -/
def P12282882393508097041.Spec : Prop :=
  ∀ n, P12282882393508097041.a n = A145601 (n + 1)

end A145601

/-! ## A145601.P13031959900149931128

`Δ[A000108(n+1)]*A002054(n+1)`
-/

namespace A145601.P13031959900149931128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002054 (n + 1)

end

end A145601.P13031959900149931128

namespace A145601

/-- `Δ[A000108(n+1)]*A002054(n+1)` -/
def P13031959900149931128.Spec : Prop :=
  ∀ n, P13031959900149931128.a n = A145601 (n + 1)

end A145601

/-! ## A145601.P724661617919473193

`(A162551(n+1)-A002054(n+1))*A002054(n+1)`
-/

namespace A145601.P724661617919473193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162551 (n + 1) - A002054 (n + 1)) * A002054 (n + 1)

end

end A145601.P724661617919473193

namespace A145601

/-- `(A162551(n+1)-A002054(n+1))*A002054(n+1)` -/
def P724661617919473193.Spec : Prop :=
  ∀ n, P724661617919473193.a n = A145601 (n + 1)

end A145601

/-! ## A145601.P5540434574609383780

`A052174(A096376(n+1))`
-/

namespace A145601.P5540434574609383780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (A096376 (n + 1)).toNat

end

end A145601.P5540434574609383780

namespace A145601

/-- `A052174(A096376(n+1))` -/
def P5540434574609383780.Spec : Prop :=
  ∀ n, P5540434574609383780.a n = A145601 (n + 1)

end A145601

/-! ## A145601.P6679095154678109438

`A052174(A084849(n+1)+1)`
-/

namespace A145601.P6679095154678109438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (A084849 (n + 1) + 1).toNat

end

end A145601.P6679095154678109438

namespace A145601

/-- `A052174(A084849(n+1)+1)` -/
def P6679095154678109438.Spec : Prop :=
  ∀ n, P6679095154678109438.a n = A145601 (n + 1)

end A145601

/-!
# A145602: a(n) is the number of walks from (0,0) to (0,3) that remain in the upper half-plane y >= 0 using 2*n +1 unit steps either up (U), down (D), left (L) or right (R).

The programs for A145602, the canonical program `A145602.P7840400419011264682` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145602 has offset 1).

The definition of A145602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145602.P7840400419011264682

`2/(n+2)*C(2*(n+1)+2, n+4)*C(2*(n+1)+2, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145602

/-- `2/(n+2)*C(2*(n+1)+2, n+4)*C(2*(n+1)+2, n)` -/
def P7840400419011264682.Spec : Prop :=
  ∀ n, P7840400419011264682.a n = (A145602 (n + 1) : ℚ)

end A145602

/-! ## A145602.P13893429148717887731

`A005561(2*n+3)`
-/

namespace A145602.P13893429148717887731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005561 (2 * n + 3)

end

end A145602.P13893429148717887731

namespace A145602

/-- `A005561(2*n+3)` -/
def P13893429148717887731.Spec : Prop :=
  ∀ n, P13893429148717887731.a n = A145602 (n + 1)

end A145602

/-! ## A145602.P12918914636087220432

`A002057(n)*A002694(n+2)`
-/

namespace A145602.P12918914636087220432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n * A002694 (n + 2)

end

end A145602.P12918914636087220432

namespace A145602

/-- `A002057(n)*A002694(n+2)` -/
def P12918914636087220432.Spec : Prop :=
  ∀ n, P12918914636087220432.a n = A145602 (n + 1)

end A145602

/-! ## A145602.P11341740919562472618

`record[A005561(n+3)/A033999(n)]`
-/

namespace A145602.P11341740919562472618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005561 (n + 3) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145602.P11341740919562472618

namespace A145602

/-- `record[A005561(n+3)/A033999(n)]` -/
def P11341740919562472618.Spec : Prop :=
  ∀ n, P11341740919562472618.a n = (A145602 (n + 1) : ℚ)

end A145602

/-! ## A145602.P13079772938831619625

`A006659(n+1)/2*A002057(n)`
-/

namespace A145602.P13079772938831619625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006659 (n + 1) : ℚ) / 2 * (A002057 n : ℚ)

end

end A145602.P13079772938831619625

namespace A145602

/-- `A006659(n+1)/2*A002057(n)` -/
def P13079772938831619625.Spec : Prop :=
  ∀ n, P13079772938831619625.a n = (A145602 (n + 1) : ℚ)

end A145602

/-! ## A145602.P1782950796421575894

`∑[A026016(n+1)]*A002694(n+2)`
-/

namespace A145602.P1782950796421575894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002694 (n + 2)

end

end A145602.P1782950796421575894

namespace A145602

/-- `∑[A026016(n+1)]*A002694(n+2)` -/
def P1782950796421575894.Spec : Prop :=
  ∀ n, P1782950796421575894.a n = A145602 (n + 1)

end A145602

/-! ## A145602.P8323165574658287864

`(n+2)*A099376(n+1)/2*A002057(n)`
-/

namespace A145602.P8323165574658287864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A099376 (n + 1) : ℚ) / 2 * (A002057 n : ℚ)

end

end A145602.P8323165574658287864

namespace A145602

/-- `(n+2)*A099376(n+1)/2*A002057(n)` -/
def P8323165574658287864.Spec : Prop :=
  ∀ n, P8323165574658287864.a n = (A145602 (n + 1) : ℚ)

end A145602

/-! ## A145602.P3746392259038493848

`(n+1)/3*Δ[A000108(n+2)]*A002057(n)`
-/

namespace A145602.P3746392259038493848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ) * (A002057 n : ℚ)

end

end A145602.P3746392259038493848

namespace A145602

/-- `(n+1)/3*Δ[A000108(n+2)]*A002057(n)` -/
def P3746392259038493848.Spec : Prop :=
  ∀ n, P3746392259038493848.a n = (A145602 (n + 1) : ℚ)

end A145602

/-! ## A145602.P2785458986256325893

`A002694(n+2)*A050156(A000217(n))`
-/

namespace A145602.P2785458986256325893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A050156 (A000217 n).toNat

end

end A145602.P2785458986256325893

namespace A145602

/-- `A002694(n+2)*A050156(A000217(n))` -/
def P2785458986256325893.Spec : Prop :=
  ∀ n, P2785458986256325893.a n = A145602 (n + 1)

end A145602

/-! ## A145602.P13218086376681254057

`∑[A007946(n)-A002057(n)]*A002057(n)`
-/

namespace A145602.P13218086376681254057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 n - A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002057 n

end

end A145602.P13218086376681254057

namespace A145602

/-- `∑[A007946(n)-A002057(n)]*A002057(n)` -/
def P13218086376681254057.Spec : Prop :=
  ∀ n, P13218086376681254057.a n = A145602 (n + 1)

end A145602

/-!
# A145603: a(n) is the number of walks from (0,0) to (0,4) that remain in the upper half-plane y >= 0 using 2*n +2 unit steps either up (U), down (D), left (L) or right (R).

The programs for A145603, the canonical program `A145603.P9048623581506707738` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145603 has offset 1).

The definition of A145603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145603.P9048623581506707738

`5/(2*(n+1)+3)*C(2*(n+1)+3, n+5)*C(2*(n+1)+3, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145603

/-- `5/(2*(n+1)+3)*C(2*(n+1)+3, n+5)*C(2*(n+1)+3, n)` -/
def P9048623581506707738.Spec : Prop :=
  ∀ n, P9048623581506707738.a n = (A145603 (n + 1) : ℚ)

end A145603

/-! ## A145603.P2007762014279241745

`A005562(2*(n+2))`
-/

namespace A145603.P2007762014279241745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005562 (2 * (n + 2))

end

end A145603.P2007762014279241745

namespace A145603

/-- `A005562(2*(n+2))` -/
def P2007762014279241745.Spec : Prop :=
  ∀ n, P2007762014279241745.a n = A145603 (n + 1)

end A145603

/-! ## A145603.P3092834148799310274

`record[A005562(n+4)/A033999(n)]`
-/

namespace A145603.P3092834148799310274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005562 (n + 4) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145603.P3092834148799310274

namespace A145603

/-- `record[A005562(n+4)/A033999(n)]` -/
def P3092834148799310274.Spec : Prop :=
  ∀ n, P3092834148799310274.a n = (A145603 (n + 1) : ℚ)

end A145603

/-! ## A145603.P2898559055396499597

`record[gcd(A005562(n+4), A138364(n))]`
-/

namespace A145603.P2898559055396499597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005562 (n + 4)) (A138364 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145603.P2898559055396499597

namespace A145603

/-- `record[gcd(A005562(n+4), A138364(n))]` -/
def P2898559055396499597.Spec : Prop :=
  ∀ n, (P2898559055396499597.a n : ℤ) = A145603 (n + 1)

end A145603

/-! ## A145603.P17505522083604146544

`A000344(n+2)*A003516(n+2)`
-/

namespace A145603.P17505522083604146544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) * A003516 (n + 2)

end

end A145603.P17505522083604146544

namespace A145603

/-- `A000344(n+2)*A003516(n+2)` -/
def P17505522083604146544.Spec : Prop :=
  ∀ n, P17505522083604146544.a n = A145603 (n + 1)

end A145603

/-! ## A145603.P5092640252684084675

`∑[A026013(n+1)]*A003516(n+2)`
-/

namespace A145603.P5092640252684084675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A003516 (n + 2)

end

end A145603.P5092640252684084675

namespace A145603

/-- `∑[A026013(n+1)]*A003516(n+2)` -/
def P5092640252684084675.Spec : Prop :=
  ∀ n, P5092640252684084675.a n = A145603 (n + 1)

end A145603

/-! ## A145603.P5538535176364527151

`A000344(n+2)/2*A002058(n+5)`
-/

namespace A145603.P5538535176364527151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000344 (n + 2) : ℚ) / 2 * (A002058 (n + 5) : ℚ)

end

end A145603.P5538535176364527151

namespace A145603

/-- `A000344(n+2)/2*A002058(n+5)` -/
def P5538535176364527151.Spec : Prop :=
  ∀ n, P5538535176364527151.a n = (A145603 (n + 1) : ℚ)

end A145603

/-! ## A145603.P462174832781866302

`(A006659(n+1)-A000344(n+2))*A000344(n+2)`
-/

namespace A145603.P462174832781866302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006659 (n + 1) - A000344 (n + 2)) * A000344 (n + 2)

end

end A145603.P462174832781866302

namespace A145603

/-- `(A006659(n+1)-A000344(n+2))*A000344(n+2)` -/
def P462174832781866302.Spec : Prop :=
  ∀ n, P462174832781866302.a n = A145603 (n + 1)

end A145603

/-! ## A145603.P17308917753259026454

`(A006659(n+1)-A003516(n+2))*A003516(n+2)`
-/

namespace A145603.P17308917753259026454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006659 (n + 1) - A003516 (n + 2)) * A003516 (n + 2)

end

end A145603.P17308917753259026454

namespace A145603

/-- `(A006659(n+1)-A003516(n+2))*A003516(n+2)` -/
def P17308917753259026454.Spec : Prop :=
  ∀ n, P17308917753259026454.a n = A145603 (n + 1)

end A145603

/-! ## A145603.P6328322846044089199

`A145599(A271649(n+1))`
-/

namespace A145603.P6328322846044089199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145599 (A271649 (n + 1)).toNat

end

end A145603.P6328322846044089199

namespace A145603

/-- `A145599(A271649(n+1))` -/
def P6328322846044089199.Spec : Prop :=
  ∀ n, P6328322846044089199.a n = A145603 (n + 1)

end A145603

/-!
# A145604: Number of pairs of consecutive integers x, x+1 such that both are prime(n)-smooth but both are not prime(n-1)-smooth.

The programs for A145604, there is no canonical definition to state claims against.
-/

/-! ## A145604.P6192503561645424437

`Δ[A002071(A028310(n))%(4^n)]`
-/

namespace A145604.P6192503561645424437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002071 (A028310 n).toNat) (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145604.P6192503561645424437

/-! ## A145604.P4284868712386132550

`A000007(n)+Δ[A002071(A028310(n))]`
-/

namespace A145604.P4284868712386132550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002071 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A145604.P4284868712386132550

/-! ## A145604.P16685255918312525060

`Δ[A057427(n)+A002071(A028310(n))]`
-/

namespace A145604.P16685255918312525060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002071 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145604.P16685255918312525060

/-! ## A145604.P3402445359447805301

`A111332(n)+Δ[A002071(A028310(n))]`
-/

namespace A145604.P3402445359447805301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002071 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n + (f1 (n + 1) - f1 n)

end

end A145604.P3402445359447805301

/-!
# A145606: Largest number x such that x and x+1 are prime(n)-smooth but not prime(n-1)-smooth.

The programs for A145606, there is no canonical definition to state claims against.
-/

/-! ## A145606.P3601171005391573158

`A145605(A002071(n+1))`
-/

namespace A145606.P3601171005391573158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145605 (A002071 (n + 1)).toNat

end

end A145606.P3601171005391573158

/-! ## A145606.P10707023301253709130

`A145605(∑[A145604(n+1)])`
-/

namespace A145606.P10707023301253709130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145605 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145606.P10707023301253709130

/-! ## A145606.P3068453555289287886

`(A175607(n+1)+1)/2-A230093(A268598(n))`
-/

namespace A145606.P3068453555289287886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175607 (n + 1) + 1 : ℚ) / 2 - (A230093 (A268598 n).toNat : ℚ)

end

end A145606.P3068453555289287886

/-!
# A145607: Numbers k such that (3*(2*k + 1)^2 + 2)/5 is a square.

The programs for A145607, the canonical program `A145607.P3339875361005302714` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145607 has offset 1).

The definition of A145607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145607.P3339875361005302714

`(A057080(n)-1)/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145607

/-- `(A057080(n)-1)/2` -/
def P3339875361005302714.Spec : Prop :=
  ∀ n, P3339875361005302714.a n = (A145607 (n + 1) : ℚ)

end A145607

/-! ## A145607.P5468141875381323332

`∑[ogf((4x-x^2)/(1-8x+x^2))]`
-/

namespace A145607.P5468141875381323332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -8, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145607.P5468141875381323332

namespace A145607

/-- `∑[ogf((4x-x^2)/(1-8x+x^2))]` -/
def P5468141875381323332.Spec : Prop :=
  ∀ n, P5468141875381323332.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P56969428198288111

`ogf((4x-x^2)/(1-9x+9x^2-x^3))`
-/

namespace A145607.P56969428198288111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -9, 9, -1] n

end

end A145607.P56969428198288111

namespace A145607

/-- `ogf((4x-x^2)/(1-9x+9x^2-x^3))` -/
def P56969428198288111.Spec : Prop :=
  ∀ n, P56969428198288111.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P15311196112284433239

`8*a(n-1)+3-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A145607.P15311196112284433239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  8 * a (n - 1) + (3 - a (n - 2))

end

end A145607.P15311196112284433239

namespace A145607

/-- `8*a(n-1)+3-a(n-2)` -/
def P15311196112284433239.Spec : Prop :=
  ∀ n, P15311196112284433239.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P5302802563994879698

`3-(a(n-2)-8*a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A145607.P5302802563994879698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  3 - (a (n - 2) - 8 * a (n - 1))

end

end A145607.P5302802563994879698

namespace A145607

/-- `3-(a(n-2)-8*a(n-1))` -/
def P5302802563994879698.Spec : Prop :=
  ∀ n, P5302802563994879698.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P7577822227609401218

`floor(A057080(n)/2)`
-/

namespace A145607.P7577822227609401218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057080 n : ℚ) / 2⌋

end

end A145607.P7577822227609401218

namespace A145607

/-- `floor(A057080(n)/2)` -/
def P7577822227609401218.Spec : Prop :=
  ∀ n, P7577822227609401218.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P4646709547239715992

`∑[A001091(n)]-1`
-/

namespace A145607.P4646709547239715992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145607.P4646709547239715992

namespace A145607

/-- `∑[A001091(n)]-1` -/
def P4646709547239715992.Spec : Prop :=
  ∀ n, P4646709547239715992.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P15852711650735469612

`A253470(n+1)-1`
-/

namespace A145607.P15852711650735469612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253470 (n + 1) - 1

end

end A145607.P15852711650735469612

namespace A145607

/-- `A253470(n+1)-1` -/
def P15852711650735469612.Spec : Prop :=
  ∀ n, P15852711650735469612.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P9289014341679851406

`∑[A080871(2*n)]-1`
-/

namespace A145607.P9289014341679851406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145607.P9289014341679851406

namespace A145607

/-- `∑[A080871(2*n)]-1` -/
def P9289014341679851406.Spec : Prop :=
  ∀ n, P9289014341679851406.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P12117242983992304585

`∑[A086903(n)/2]-1`
-/

namespace A145607.P12117242983992304585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086903 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145607.P12117242983992304585

namespace A145607

/-- `∑[A086903(n)/2]-1` -/
def P12117242983992304585.Spec : Prop :=
  ∀ n, P12117242983992304585.a n = (A145607 (n + 1) : ℚ)

end A145607

/-! ## A145607.P4147559333691179677

`record[floor(A177187(n+1)/2)]`
-/

namespace A145607.P4147559333691179677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177187 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145607.P4147559333691179677

namespace A145607

/-- `record[floor(A177187(n+1)/2)]` -/
def P4147559333691179677.Spec : Prop :=
  ∀ n, P4147559333691179677.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P10907554369416992986

`floor(A177187(2*n+1)/2)`
-/

namespace A145607.P10907554369416992986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177187 (2 * n + 1) : ℚ) / 2⌋

end

end A145607.P10907554369416992986

namespace A145607

/-- `floor(A177187(2*n+1)/2)` -/
def P10907554369416992986.Spec : Prop :=
  ∀ n, P10907554369416992986.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P8987767915933135794

`(A322780(2*n+1)-1)/2`
-/

namespace A145607.P8987767915933135794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322780 (2 * n + 1) - 1 : ℚ) / 2

end

end A145607.P8987767915933135794

namespace A145607

/-- `(A322780(2*n+1)-1)/2` -/
def P8987767915933135794.Spec : Prop :=
  ∀ n, P8987767915933135794.a n = (A145607 (n + 1) : ℚ)

end A145607

/-! ## A145607.P4094695980217261522

`A145608(n)+A001090(n)`
-/

namespace A145607.P4094695980217261522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145608 n + A001090 n

end

end A145607.P4094695980217261522

namespace A145607

/-- `A145608(n)+A001090(n)` -/
def P4094695980217261522.Spec : Prop :=
  ∀ n, P4094695980217261522.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P4447481072895236608

`A001090(n+1)-A182432(n)`
-/

namespace A145607.P4447481072895236608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - A182432 n

end

end A145607.P4447481072895236608

namespace A145607

/-- `A001090(n+1)-A182432(n)` -/
def P4447481072895236608.Spec : Prop :=
  ∀ n, P4447481072895236608.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P2320063883477609378

`∑[A144479(n)+A001090(n)]-1`
-/

namespace A145607.P2320063883477609378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144479 n + A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145607.P2320063883477609378

namespace A145607

/-- `∑[A144479(n)+A001090(n)]-1` -/
def P2320063883477609378.Spec : Prop :=
  ∀ n, P2320063883477609378.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P12985192654222109522

`∑[A080871(2*n)*A178334(n)]`
-/

namespace A145607.P12985192654222109522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145607.P12985192654222109522

namespace A145607

/-- `∑[A080871(2*n)*A178334(n)]` -/
def P12985192654222109522.Spec : Prop :=
  ∀ n, P12985192654222109522.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P4190899176306595487

`A103200(2*n+1)-A070997(n)`
-/

namespace A145607.P4190899176306595487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (2 * n + 1) - A070997 n

end

end A145607.P4190899176306595487

namespace A145607

/-- `A103200(2*n+1)-A070997(n)` -/
def P4190899176306595487.Spec : Prop :=
  ∀ n, P4190899176306595487.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P15563899676980801033

`A105076(2*(n+1))-A070997(n)`
-/

namespace A145607.P15563899676980801033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (2 * (n + 1)) - A070997 n

end

end A145607.P15563899676980801033

namespace A145607

/-- `A105076(2*(n+1))-A070997(n)` -/
def P15563899676980801033.Spec : Prop :=
  ∀ n, P15563899676980801033.a n = A145607 (n + 1)

end A145607

/-! ## A145607.P16054691994378131365

`∑[∑[A070997(n)]-A273053(n+1)]-1`
-/

namespace A145607.P16054691994378131365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A145607.P16054691994378131365

namespace A145607

/-- `∑[∑[A070997(n)]-A273053(n+1)]-1` -/
def P16054691994378131365.Spec : Prop :=
  ∀ n, P16054691994378131365.a n = A145607 (n + 1)

end A145607

/-!
# A145608: Numbers a(n)=k such that (1/3)*(5*(2k+1)^2-2) is A057080(n)^2.

The programs for A145608, the canonical program `A145608.P15793203225573079035` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145608 has offset 0).

The definition of A145608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145608.P15793203225573079035

`8*a(n-1)-a(n-2)+3` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145608

/-- `8*a(n-1)-a(n-2)+3` -/
def P15793203225573079035.Spec : Prop :=
  ∀ n, P15793203225573079035.a n = A145608 n

theorem P15793203225573079035.correct : P15793203225573079035.Spec := by
  intro n
  simp only [A145608]

end A145608

/-! ## A145608.P3716666321260490949

`(A070997(n)-1)/2`
-/

namespace A145608.P3716666321260490949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070997 n - 1 : ℚ) / 2

end

end A145608.P3716666321260490949

namespace A145608

/-- `(A070997(n)-1)/2` -/
def P3716666321260490949.Spec : Prop :=
  ∀ n, P3716666321260490949.a n = (A145608 n : ℚ)

end A145608

/-! ## A145608.P14896379828741606838

`∑[ogf(3x/(1-8x+x^2))]`
-/

namespace A145608.P14896379828741606838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -8, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145608.P14896379828741606838

namespace A145608

/-- `∑[ogf(3x/(1-8x+x^2))]` -/
def P14896379828741606838.Spec : Prop :=
  ∀ n, P14896379828741606838.a n = A145608 n

end A145608

/-! ## A145608.P5519342087582221533

`ogf(3x/(1-9x+9x^2-x^3))`
-/

namespace A145608.P5519342087582221533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -9, 9, -1] n

end

end A145608.P5519342087582221533

namespace A145608

/-- `ogf(3x/(1-9x+9x^2-x^3))` -/
def P5519342087582221533.Spec : Prop :=
  ∀ n, P5519342087582221533.a n = A145608 n

end A145608

/-! ## A145608.P12166891534248359234

`∑[8*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=3`
-/

namespace A145608.P12166891534248359234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  8 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145608.P12166891534248359234

namespace A145608

/-- `∑[8*a(n-1)-a(n-2)]` -/
def P12166891534248359234.Spec : Prop :=
  ∀ n, P12166891534248359234.a n = A145608 n

end A145608

/-! ## A145608.P5614396199474631427

`3-(a(n-2)-8*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A145608.P5614396199474631427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  3 - (a (n - 2) - 8 * a (n - 1))

end

end A145608.P5614396199474631427

namespace A145608

/-- `3-(a(n-2)-8*a(n-1))` -/
def P5614396199474631427.Spec : Prop :=
  ∀ n, P5614396199474631427.a n = A145608 n

end A145608

/-! ## A145608.P13735823792398923496

`∑[A136325(n)]`
-/

namespace A145608.P13735823792398923496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145608.P13735823792398923496

namespace A145608

/-- `∑[A136325(n)]` -/
def P13735823792398923496.Spec : Prop :=
  ∀ n, P13735823792398923496.a n = A145608 n

end A145608

/-! ## A145608.P12830428658147675891

`A182432(n)-1`
-/

namespace A145608.P12830428658147675891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182432 n - 1

end

end A145608.P12830428658147675891

namespace A145608

/-- `A182432(n)-1` -/
def P12830428658147675891.Spec : Prop :=
  ∀ n, P12830428658147675891.a n = A145608 n

end A145608

/-! ## A145608.P7111016350308022534

`floor(A070997(n)/2)`
-/

namespace A145608.P7111016350308022534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070997 n : ℚ) / 2⌋

end

end A145608.P7111016350308022534

namespace A145608

/-- `floor(A070997(n)/2)` -/
def P7111016350308022534.Spec : Prop :=
  ∀ n, P7111016350308022534.a n = A145608 n

end A145608

/-! ## A145608.P1964448265824610849

`∑[3*A001090(n)]`
-/

namespace A145608.P1964448265824610849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145608.P1964448265824610849

namespace A145608

/-- `∑[3*A001090(n)]` -/
def P1964448265824610849.Spec : Prop :=
  ∀ n, P1964448265824610849.a n = A145608 n

end A145608

/-! ## A145608.P15259475079726504479

`(A041023(2*n)-1)/2`
-/

namespace A145608.P15259475079726504479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041023 (2 * n) - 1 : ℚ) / 2

end

end A145608.P15259475079726504479

namespace A145608

/-- `(A041023(2*n)-1)/2` -/
def P15259475079726504479.Spec : Prop :=
  ∀ n, P15259475079726504479.a n = (A145608 n : ℚ)

end A145608

/-! ## A145608.P8006935667446532989

`∑[3*A273053(n+1)/4]`
-/

namespace A145608.P8006935667446532989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A273053 (n + 1) : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145608.P8006935667446532989

namespace A145608

/-- `∑[3*A273053(n+1)/4]` -/
def P8006935667446532989.Spec : Prop :=
  ∀ n, P8006935667446532989.a n = (A145608 n : ℚ)

end A145608

/-! ## A145608.P3189675487350991110

`(A080871(2*n+1)-1)/2`
-/

namespace A145608.P3189675487350991110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080871 (2 * n + 1) - 1 : ℚ) / 2

end

end A145608.P3189675487350991110

namespace A145608

/-- `(A080871(2*n+1)-1)/2` -/
def P3189675487350991110.Spec : Prop :=
  ∀ n, P3189675487350991110.a n = (A145608 n : ℚ)

end A145608

/-! ## A145608.P1806994787667339958

`∑[A070997(n)-A001091(n)]`
-/

namespace A145608.P1806994787667339958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n - A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145608.P1806994787667339958

namespace A145608

/-- `∑[A070997(n)-A001091(n)]` -/
def P1806994787667339958.Spec : Prop :=
  ∀ n, P1806994787667339958.a n = A145608 n

end A145608

/-! ## A145608.P9417951108989218578

`A076765(n)-A095003(n+1)`
-/

namespace A145608.P9417951108989218578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076765 n - A095003 (n + 1)

end

end A145608.P9417951108989218578

namespace A145608

/-- `A076765(n)-A095003(n+1)` -/
def P9417951108989218578.Spec : Prop :=
  ∀ n, P9417951108989218578.a n = A145608 n

end A145608

/-! ## A145608.P9255528202076321380

`A001090(n+1)-∑[A001091(n)]`
-/

namespace A145608.P9255528202076321380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145608.P9255528202076321380

namespace A145608

/-- `A001090(n+1)-∑[A001091(n)]` -/
def P9255528202076321380.Spec : Prop :=
  ∀ n, P9255528202076321380.a n = A145608 n

end A145608

/-! ## A145608.P554083529761430056

`A105076(2*n+1)+A001090(n)`
-/

namespace A145608.P554083529761430056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (2 * n + 1) + A001090 n

end

end A145608.P554083529761430056

namespace A145608

/-- `A105076(2*n+1)+A001090(n)` -/
def P554083529761430056.Spec : Prop :=
  ∀ n, P554083529761430056.a n = A145608 n

end A145608

/-! ## A145608.P4071955890719663619

`A292294(n+2)+A292293(n+3)`
-/

namespace A145608.P4071955890719663619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292294 (n + 2) + A292293 (n + 3)

end

end A145608.P4071955890719663619

namespace A145608

/-- `A292294(n+2)+A292293(n+3)` -/
def P4071955890719663619.Spec : Prop :=
  ∀ n, P4071955890719663619.a n = A145608 n

end A145608

/-! ## A145608.P4776596486484408033

`A103200(2*n+1)-A001090(n+1)`
-/

namespace A145608.P4776596486484408033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (2 * n + 1) - A001090 (n + 1)

end

end A145608.P4776596486484408033

namespace A145608

/-- `A103200(2*n+1)-A001090(n+1)` -/
def P4776596486484408033.Spec : Prop :=
  ∀ n, P4776596486484408033.a n = A145608 n

end A145608

/-! ## A145608.P6796319590639367615

`A103200(2*n+1)-A177187(2*(n+1))`
-/

namespace A145608.P6796319590639367615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (2 * n + 1) - A177187 (2 * (n + 1))

end

end A145608.P6796319590639367615

namespace A145608

/-- `A103200(2*n+1)-A177187(2*(n+1))` -/
def P6796319590639367615.Spec : Prop :=
  ∀ n, P6796319590639367615.a n = A145608 n

end A145608

/-!
# A145609: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

The programs for A145609, the canonical program `A145609.P11425567724915738602` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145609 has offset 1).

The definition of A145609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145609.P10636993447886854320

`A001008(2*(n+1))`
-/

namespace A145609.P10636993447886854320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (2 * (n + 1))

end

end A145609.P10636993447886854320

namespace A145609

/-- `A001008(2*(n+1))` -/
def P10636993447886854320.Spec : Prop :=
  ∀ n, P10636993447886854320.a n = A145609 (n + 1)

end A145609

/-! ## A145609.P2653368636435547342

`or(1, A001008(Δ[A002378(n)]))`
-/

namespace A145609.P2653368636435547342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001008 (f1 (n + 1) - f1 n).toNat)

end

end A145609.P2653368636435547342

namespace A145609

/-- `or(1, A001008(Δ[A002378(n)]))` -/
def P2653368636435547342.Spec : Prop :=
  ∀ n, P2653368636435547342.a n = A145609 (n + 1)

end A145609

/-! ## A145609.P4410846049958960589

`A064169(2*(n+1))+A002805(2*(n+1))`
-/

namespace A145609.P4410846049958960589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (2 * (n + 1)) + A002805 (2 * (n + 1))

end

end A145609.P4410846049958960589

namespace A145609

/-- `A064169(2*(n+1))+A002805(2*(n+1))` -/
def P4410846049958960589.Spec : Prop :=
  ∀ n, P4410846049958960589.a n = A145609 (n + 1)

end A145609

/-! ## A145609.P3907626145526841112

`A064168(2*(n+1))-A002805(2*(n+1))`
-/

namespace A145609.P3907626145526841112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (2 * (n + 1)) - A002805 (2 * (n + 1))

end

end A145609.P3907626145526841112

namespace A145609

/-- `A064168(2*(n+1))-A002805(2*(n+1))` -/
def P3907626145526841112.Spec : Prop :=
  ∀ n, P3907626145526841112.a n = A145609 (n + 1)

end A145609

/-! ## A145609.P15507881677135223185

`A025529(2*(n+1))/A110566(2*(n+1))`
-/

namespace A145609.P15507881677135223185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (2 * (n + 1)) : ℚ) / (A110566 (2 * (n + 1)) : ℚ)

end

end A145609.P15507881677135223185

namespace A145609

/-- `A025529(2*(n+1))/A110566(2*(n+1))` -/
def P15507881677135223185.Spec : Prop :=
  ∀ n, P15507881677135223185.a n = (A145609 (n + 1) : ℚ)

end A145609

/-! ## A145609.P17422387482297891812

`A096617(2*(n+1))/A120263(2*(n+1))`
-/

namespace A145609.P17422387482297891812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (2 * (n + 1)) : ℚ) / (A120263 (2 * (n + 1)) : ℚ)

end

end A145609.P17422387482297891812

namespace A145609

/-- `A096617(2*(n+1))/A120263(2*(n+1))` -/
def P17422387482297891812.Spec : Prop :=
  ∀ n, P17422387482297891812.a n = (A145609 (n + 1) : ℚ)

end A145609

/-! ## A145609.P12110293282410230074

`A145737(n+1)*A145737(n+1)*A145738(n+1)`
-/

namespace A145609.P12110293282410230074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (n + 1) * A145737 (n + 1) * A145738 (n + 1)

end

end A145609.P12110293282410230074

namespace A145609

/-- `A145737(n+1)*A145737(n+1)*A145738(n+1)` -/
def P12110293282410230074.Spec : Prop :=
  ∀ n, P12110293282410230074.a n = A145609 (n + 1)

end A145609

/-! ## A145609.P11425567724915738602

`A025529(2*(n+1))/gcd(A003418(n+1), A025529(2*(n+1)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A145609

/-- `A025529(2*(n+1))/gcd(A003418(n+1), A025529(2*(n+1)))` -/
def P11425567724915738602.Spec : Prop :=
  ∀ n, P11425567724915738602.a n = (A145609 (n + 1) : ℚ)

end A145609

/-! ## A145609.P2452671669038542353

`A002805(2*(n+1))+A027457(2*(n+1))/A110566(2*(n+1))`
-/

namespace A145609.P2452671669038542353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (2 * (n + 1)) : ℚ) + (A027457 (2 * (n + 1)) : ℚ) / (A110566 (2 * (n + 1)) : ℚ)

end

end A145609.P2452671669038542353

namespace A145609

/-- `A002805(2*(n+1))+A027457(2*(n+1))/A110566(2*(n+1))` -/
def P2452671669038542353.Spec : Prop :=
  ∀ n, P2452671669038542353.a n = (A145609 (n + 1) : ℚ)

end A145609

/-! ## A145609.P7749732470645858920

`A096617(2*(n+1))/gcd(A096617(2*(n+1)), A103517(2*n+1))`
-/

namespace A145609.P7749732470645858920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (2 * (n + 1)) : ℚ) / (Int.gcd (A096617 (2 * (n + 1))) (A103517 (2 * n + 1)) : ℚ)

end

end A145609.P7749732470645858920

namespace A145609

/-- `A096617(2*(n+1))/gcd(A096617(2*(n+1)), A103517(2*n+1))` -/
def P7749732470645858920.Spec : Prop :=
  ∀ n, P7749732470645858920.a n = (A145609 (n + 1) : ℚ)

end A145609

/-! ## A145609.P5332184307131408759

`gcd(A096617(2*(n+1)), A193758(2*n+3))`
-/

namespace A145609.P5332184307131408759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096617 (2 * (n + 1))) (A193758 (2 * n + 3))

end

end A145609.P5332184307131408759

namespace A145609

/-- `gcd(A096617(2*(n+1)), A193758(2*n+3))` -/
def P5332184307131408759.Spec : Prop :=
  ∀ n, (P5332184307131408759.a n : ℤ) = A145609 (n + 1)

end A145609

/-! ## A145609.P5602322752073416171

`lcm(A000265(n+1), A096617(2*(n+1)))/A000265(n+1)`
-/

namespace A145609.P5602322752073416171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000265 (n + 1)) (A096617 (2 * (n + 1))) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A145609.P5602322752073416171

namespace A145609

/-- `lcm(A000265(n+1), A096617(2*(n+1)))/A000265(n+1)` -/
def P5602322752073416171.Spec : Prop :=
  ∀ n, P5602322752073416171.a n = (A145609 (n + 1) : ℚ)

end A145609

/-! ## A145609.P2596389440589732626

`lcm(A002547(2*(n+1)), A175441(2*(n+1)))`
-/

namespace A145609.P2596389440589732626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002547 (2 * (n + 1))) (A175441 (2 * (n + 1)))

end

end A145609.P2596389440589732626

namespace A145609

/-- `lcm(A002547(2*(n+1)), A175441(2*(n+1)))` -/
def P2596389440589732626.Spec : Prop :=
  ∀ n, (P2596389440589732626.a n : ℤ) = A145609 (n + 1)

end A145609

/-!
# A145610: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

The programs for A145610, the canonical program `A145610.P553506621032330798` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145610 has offset 1).

The definition of A145610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145610.P553506621032330798

`A002805(2*(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A145610

/-- `A002805(2*(n+1))` -/
def P553506621032330798.Spec : Prop :=
  ∀ n, P553506621032330798.a n = A145610 (n + 1)

theorem P553506621032330798.correct : P553506621032330798.Spec := by
  intro n
  simp only [A145610, Nat.add_sub_cancel]

end A145610

/-! ## A145610.P4339217875745043872

`lcm(2, A002805(n+2+n))`
-/

namespace A145610.P4339217875745043872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002805 (n + 2 + n))

end

end A145610.P4339217875745043872

namespace A145610

/-- `lcm(2, A002805(n+2+n))` -/
def P4339217875745043872.Spec : Prop :=
  ∀ n, (P4339217875745043872.a n : ℤ) = A145610 (n + 1)

end A145610

/-! ## A145610.P4731468526318423576

`A002805(n+2+n)/A007318(∑[n])`
-/

namespace A145610.P4731468526318423576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 2 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A145610.P4731468526318423576

namespace A145610

/-- `A002805(n+2+n)/A007318(∑[n])` -/
def P4731468526318423576.Spec : Prop :=
  ∀ n, P4731468526318423576.a n = (A145610 (n + 1) : ℚ)

end A145610

/-! ## A145610.P14413807335503746011

`A001008(2*(n+1))-A064169(2*(n+1))`
-/

namespace A145610.P14413807335503746011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (2 * (n + 1)) - A064169 (2 * (n + 1))

end

end A145610.P14413807335503746011

namespace A145610

/-- `A001008(2*(n+1))-A064169(2*(n+1))` -/
def P14413807335503746011.Spec : Prop :=
  ∀ n, P14413807335503746011.a n = A145610 (n + 1)

end A145610

/-! ## A145610.P11910633205491162103

`A064168(2*(n+1))-A001008(2*(n+1))`
-/

namespace A145610.P11910633205491162103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (2 * (n + 1)) - A001008 (2 * (n + 1))

end

end A145610.P11910633205491162103

namespace A145610

/-- `A064168(2*(n+1))-A001008(2*(n+1))` -/
def P11910633205491162103.Spec : Prop :=
  ∀ n, P11910633205491162103.a n = A145610 (n + 1)

end A145610

/-! ## A145610.P5007830339314908959

`A003418(2*(n+1))/A110566(2*(n+1))`
-/

namespace A145610.P5007830339314908959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 1)) : ℚ) / (A110566 (2 * (n + 1)) : ℚ)

end

end A145610.P5007830339314908959

namespace A145610

/-- `A003418(2*(n+1))/A110566(2*(n+1))` -/
def P5007830339314908959.Spec : Prop :=
  ∀ n, P5007830339314908959.a n = (A145610 (n + 1) : ℚ)

end A145610

/-! ## A145610.P6348957091266069592

`A051426(2*(n+1))/(2*A110566(2*(n+1)))`
-/

namespace A145610.P6348957091266069592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (2 * (n + 1)) : ℚ) / (2 * A110566 (2 * (n + 1)) : ℚ)

end

end A145610.P6348957091266069592

namespace A145610

/-- `A051426(2*(n+1))/(2*A110566(2*(n+1)))` -/
def P6348957091266069592.Spec : Prop :=
  ∀ n, P6348957091266069592.a n = (A145610 (n + 1) : ℚ)

end A145610

/-! ## A145610.P15758820106548501268

`and(A001222(n+1)-(n+1), A002805(n+2+n))`
-/

namespace A145610.P15758820106548501268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 1) - (n + 1 : ℤ)) (A002805 (n + 2 + n))

end

end A145610.P15758820106548501268

namespace A145610

/-- `and(A001222(n+1)-(n+1), A002805(n+2+n))` -/
def P15758820106548501268.Spec : Prop :=
  ∀ n, P15758820106548501268.a n = A145610 (n + 1)

end A145610

/-! ## A145610.P16886288260647673690

`A002805(n+2+n)+A001222(A007318(∑[n+1]))`
-/

namespace A145610.P16886288260647673690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 2 + n) + A001222 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145610.P16886288260647673690

namespace A145610

/-- `A002805(n+2+n)+A001222(A007318(∑[n+1]))` -/
def P16886288260647673690.Spec : Prop :=
  ∀ n, P16886288260647673690.a n = A145610 (n + 1)

end A145610

/-! ## A145610.P3885437370149214217

`A051426(2*(n+1))/A005843(A110566(2*(n+1)))`
-/

namespace A145610.P3885437370149214217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (2 * (n + 1)) : ℚ) / (A005843 (A110566 (2 * (n + 1))).toNat : ℚ)

end

end A145610.P3885437370149214217

namespace A145610

/-- `A051426(2*(n+1))/A005843(A110566(2*(n+1)))` -/
def P3885437370149214217.Spec : Prop :=
  ∀ n, P3885437370149214217.a n = (A145610 (n + 1) : ℚ)

end A145610

/-! ## A145610.P4469271801956610754

`A051451(A065515(2*(n+1)))/A110566(2*(n+1))`
-/

namespace A145610.P4469271801956610754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051451 (A065515 (2 * (n + 1))).toNat : ℚ) / (A110566 (2 * (n + 1)) : ℚ)

end

end A145610.P4469271801956610754

namespace A145610

/-- `A051451(A065515(2*(n+1)))/A110566(2*(n+1))` -/
def P4469271801956610754.Spec : Prop :=
  ∀ n, P4469271801956610754.a n = (A145610 (n + 1) : ℚ)

end A145610

/-! ## A145610.P9317607996355575859

`A025529(2*(n+1))/A110566(2*(n+1))-A064169(2*(n+1))`
-/

namespace A145610.P9317607996355575859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (2 * (n + 1)) : ℚ) / (A110566 (2 * (n + 1)) : ℚ) - (A064169 (2 * (n + 1)) : ℚ)

end

end A145610.P9317607996355575859

namespace A145610

/-- `A025529(2*(n+1))/A110566(2*(n+1))-A064169(2*(n+1))` -/
def P9317607996355575859.Spec : Prop :=
  ∀ n, P9317607996355575859.a n = (A145610 (n + 1) : ℚ)

end A145610

/-! ## A145610.P2679014088206452988

`lcm(A002547(2*(n+1)), A175441(2*(n+1)))-A064169(2*(n+1))`
-/

namespace A145610.P2679014088206452988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002547 (2 * (n + 1))) (A175441 (2 * (n + 1))) : ℤ) - A064169 (2 * (n + 1))

end

end A145610.P2679014088206452988

namespace A145610

/-- `lcm(A002547(2*(n+1)), A175441(2*(n+1)))-A064169(2*(n+1))` -/
def P2679014088206452988.Spec : Prop :=
  ∀ n, P2679014088206452988.a n = A145610 (n + 1)

end A145610

/-!
# A145611: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=2.

The programs for A145611, there is no canonical definition to state claims against.
-/

/-! ## A145611.P9576102492673477882

`A145656(2*n+3)`
-/

namespace A145611.P9576102492673477882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145656 (2 * n + 3)

end

end A145611.P9576102492673477882

/-! ## A145611.P4038507835696429934

`C(A145656(A144396(n+1)), A304042(n))`
-/

namespace A145611.P4038507835696429934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A145656 (A144396 (n + 1)).toNat).toNat (A304042 n).toNat

end

end A145611.P4038507835696429934

/-! ## A145611.P10080919428506107367

`or(A000007(n), A145656(A144396(n+1)))`
-/

namespace A145611.P10080919428506107367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A145656 (A144396 (n + 1)).toNat)

end

end A145611.P10080919428506107367

/-! ## A145611.P9695297239197494953

`A145656(A144396(n+1))+char[A182461(n)]`
-/

namespace A145611.P9695297239197494953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182461 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145656 (A144396 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A145611.P9695297239197494953

/-! ## A145611.P6937599797351626007

`A197629(n+1)+A145656(A144396(n+1))`
-/

namespace A145611.P6937599797351626007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197629 (n + 1) + A145656 (A144396 (n + 1)).toNat

end

end A145611.P6937599797351626007

/-!
# A145612: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=2.

The programs for A145612, there is no canonical definition to state claims against.
-/

/-! ## A145612.P10599866666571105231

`A000027(A290344(2*(n+1)))*A006519(n+1)`
-/

namespace A145612.P10599866666571105231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A290344 (2 * (n + 1))).toNat * A006519 (n + 1)

end

end A145612.P10599866666571105231

/-! ## A145612.P12073322396540923468

`A000265(A290344(2*n+2))*A006519(n+1)`
-/

namespace A145612.P12073322396540923468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A290344 (2 * n + 2)).toNat * A006519 (n + 1)

end

end A145612.P12073322396540923468

/-! ## A145612.P17587298653481980970

`lcm(A065331(A145638(n+1)), A145632(n+1))`
-/

namespace A145612.P17587298653481980970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065331 (A145638 (n + 1)).toNat) (A145632 (n + 1))

end

end A145612.P17587298653481980970

/-!
# A145613: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=3.

The programs for A145613, there is no canonical definition to state claims against.
-/

/-! ## A145613.P14855177339956810887

`A145658(2*n+3)`
-/

namespace A145613.P14855177339956810887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145658 (2 * n + 3)

end

end A145613.P14855177339956810887

/-! ## A145613.P13809047422273657819

`lcm(A027023(n), A145658(A144396(n+1)))`
-/

namespace A145613.P13809047422273657819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027023 n) (A145658 (A144396 (n + 1)).toNat)

end

end A145613.P13809047422273657819

/-! ## A145613.P1510755727730646154

`or(A000007(n), A145658(A144396(n+1)))`
-/

namespace A145613.P1510755727730646154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A145658 (A144396 (n + 1)).toNat)

end

end A145613.P1510755727730646154

/-! ## A145613.P4814882263563411093

`A145658(A144396(n+1))%A145619(n+1)`
-/

namespace A145613.P4814882263563411093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145658 (A144396 (n + 1)).toNat) (A145619 (n + 1))

end

end A145613.P4814882263563411093

/-! ## A145613.P16271882752053994457

`or(A120263(n+1), A145658(A144396(n+1)))`
-/

namespace A145613.P16271882752053994457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120263 (n + 1)) (A145658 (A144396 (n + 1)).toNat)

end

end A145613.P16271882752053994457

/-!
# A145614: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=3.

The programs for A145614, there is no canonical definition to state claims against.
-/

/-! ## A145614.P3230564382300254901

`A145626(n+1)/A111235(A111235(n+1))`
-/

namespace A145614.P3230564382300254901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145626 (n + 1) : ℚ) / (A111235 (A111235 (n + 1)).toNat : ℚ)

end

end A145614.P3230564382300254901

/-! ## A145614.P309439942591734485

`A028310(A145626(n+1)/A248909(n+1))`
-/

namespace A145614.P309439942591734485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A145626 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ))).toNat

end

end A145614.P309439942591734485

/-! ## A145614.P14309504848033507242

`A038502(A145626(n+1)/A248909(n+1))`
-/

namespace A145614.P14309504848033507242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway ((A145626 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ))).toNat

end

end A145614.P14309504848033507242

/-!
# A145615: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=4.

The programs for A145615, there is no canonical definition to state claims against.
-/

/-! ## A145615.P2390669430169589696

`A145660(2*n+3)`
-/

namespace A145615.P2390669430169589696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145660 (2 * n + 3)

end

end A145615.P2390669430169589696

/-! ## A145615.P17161392745012663634

`record[A145660(xor(1, n+2))]`
-/

namespace A145615.P17161392745012663634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145660 (Nat.xor 1 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145615.P17161392745012663634

/-! ## A145615.P1816642735276253667

`record[Δ[A145660(A099375(n))]]`
-/

namespace A145615.P1816642735276253667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145660 (A099375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145615.P1816642735276253667

/-! ## A145615.P5337985388563838393

`record[A145660(A079886(n+1))]`
-/

namespace A145615.P5337985388563838393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145660 (A079886 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145615.P5337985388563838393

/-! ## A145615.P124545029557517809

`record[A145660(A099375(n+1))]`
-/

namespace A145615.P124545029557517809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145660 (A099375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145615.P124545029557517809

/-!
# A145616: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=4.

The programs for A145616, there is no canonical definition to state claims against.
-/

/-! ## A145616.P17777678383153850487

`lcm(A145640(n+1), A165053(n!))`
-/

namespace A145616.P17777678383153850487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A145640 (n + 1)) (A165053 (Nat.factorial n))

end

end A145616.P17777678383153850487

/-! ## A145616.P6482506718856818465

`A115362(n)*A306286(A272743(n))`
-/

namespace A145616.P6482506718856818465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n * A306286 (A272743 n).toNat

end

end A145616.P6482506718856818465

/-! ## A145616.P17924917152869147165

`A000002(A000272(n))*A145640(n+1)`
-/

namespace A145616.P17924917152869147165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A000272 n).toNat * A145640 (n + 1)

end

end A145616.P17924917152869147165

/-!
# A145617: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=5.

The programs for A145617, there is no canonical definition to state claims against.
-/

/-! ## A145617.P18208962359277022676

`A145662(2*n+3)`
-/

namespace A145617.P18208962359277022676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145662 (2 * n + 3)

end

end A145617.P18208962359277022676

/-! ## A145617.P9635794374605398716

`record[Δ[A145662(A099375(n))]]`
-/

namespace A145617.P9635794374605398716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145662 (A099375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145617.P9635794374605398716

/-! ## A145617.P6196069891754086756

`record[A145662(A079886(n+1))]`
-/

namespace A145617.P6196069891754086756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145662 (A079886 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145617.P6196069891754086756

/-! ## A145617.P3087485471706708285

`record[A145662(A099375(n+1))]`
-/

namespace A145617.P3087485471706708285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145662 (A099375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145617.P3087485471706708285

/-!
# A145618: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=5.

The programs for A145618, there is no canonical definition to state claims against.
-/

/-! ## A145618.P3187091692113607242

`gcd(∏[A082781(n+1)], A082688(n+1))`
-/

namespace A145618.P3187091692113607242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A082688 (n + 1))

end

end A145618.P3187091692113607242

/-! ## A145618.P5256578904600306828

`gcd(A058312(2*(n+1)), A366603(A168263(n+1)))`
-/

namespace A145618.P5256578904600306828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058312 (2 * (n + 1))) (A366603 (A168263 (n + 1)).toNat)

end

end A145618.P5256578904600306828

/-! ## A145618.P14595863479801243513

`lcm(A007953(A145638(n+1)), A145636(n+1))`
-/

namespace A145618.P14595863479801243513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007953 (A145638 (n + 1)).toNat) (A145636 (n + 1))

end

end A145618.P14595863479801243513

/-!
# A145619: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=6.

The programs for A145619, there is no canonical definition to state claims against.
-/

/-! ## A145619.P7328476141247288684

`A145664(2*n+3)`
-/

namespace A145619.P7328476141247288684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145664 (2 * n + 3)

end

end A145619.P7328476141247288684

/-! ## A145619.P4210704549068399415

`record[A145664(A079886(n+1))]`
-/

namespace A145619.P4210704549068399415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145664 (A079886 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145619.P4210704549068399415

/-! ## A145619.P10826512998537204065

`record[A145664(A182733(n+1))]`
-/

namespace A145619.P10826512998537204065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145664 (A182733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145619.P10826512998537204065

/-!
# A145620: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=6.

The programs for A145620, there is no canonical definition to state claims against.
-/

/-! ## A145620.P11263197767674419081

`2^val(n+1, 2)*A355588(A070111(2*n+1))`
-/

namespace A145620.P11263197767674419081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A355588 (A070111 (2 * n + 1)).toNat

end

end A145620.P11263197767674419081

/-! ## A145620.P13840717729444677046

`lcm(A065330(A035077(n)), A072436(n+1))`
-/

namespace A145620.P13840717729444677046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065330 (A035077 n).toNat) (A072436 (n + 1))

end

end A145620.P13840717729444677046

/-! ## A145620.P2308247115089756695

`gcd(A008706(A145612(n+1)), A145626(n+1))`
-/

namespace A145620.P2308247115089756695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008706 (A145612 (n + 1)).toNat) (A145626 (n + 1))

end

end A145620.P2308247115089756695

/-!
# A145621: Numerator of the polynomial A_i(x) = Sum_{d=1..i-1} x^(i-d)/d for index i=2n+1 evaluated at x=7.

The programs for A145621, there is no canonical definition to state claims against.
-/

/-! ## A145621.P15093819136527871679

`A145666(2*n+3)`
-/

namespace A145621.P15093819136527871679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145666 (2 * n + 3)

end

end A145621.P15093819136527871679

/-! ## A145621.P17972979318690074578

`record[Δ[A145666(A099375(n))]]`
-/

namespace A145621.P17972979318690074578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145666 (A099375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145621.P17972979318690074578

/-! ## A145621.P10122330436669290170

`record[A145666(A079886(n+1))]`
-/

namespace A145621.P10122330436669290170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145666 (A079886 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145621.P10122330436669290170

/-! ## A145621.P8173098812028532373

`record[A145666(A099375(n+1))]`
-/

namespace A145621.P8173098812028532373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145666 (A099375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145621.P8173098812028532373

/-!
# A145624: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=8.

The programs for A145624, there is no canonical definition to state claims against.
-/

/-! ## A145624.P14168369790794836136

`A000027(A219347(n)*A229726(n))`
-/

namespace A145624.P14168369790794836136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A219347 n * A229726 n).toNat

end

end A145624.P14168369790794836136

/-! ## A145624.P15180866440924985778

`A030379(A189358(n))*A229726(n)`
-/

namespace A145624.P15180866440924985778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A189358 n).toNat * A229726 n

end

end A145624.P15180866440924985778

/-! ## A145624.P874193299425288912

`A103755(A251581(n))*A229726(n)`
-/

namespace A145624.P874193299425288912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103755 (A251581 n).toNat * A229726 n

end

end A145624.P874193299425288912

/-! ## A145624.P4286008162162460001

`A122497(A291000(n))*A229726(n)`
-/

namespace A145624.P4286008162162460001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (A291000 n).toNat * A229726 n

end

end A145624.P4286008162162460001

/-! ## A145624.P17282858417453196594

`A000027(lcm(A062985(n), A229726(n)))`
-/

namespace A145624.P17282858417453196594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A062985 n) (A229726 n))

end

end A145624.P17282858417453196594

/-!
# A145626: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=9.

The programs for A145626, there is no canonical definition to state claims against.
-/

/-! ## A145626.P10029616194505096490

`gcd(A007559(A082672(n+1)), A082688(n+1))`
-/

namespace A145626.P10029616194505096490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007559 (A082672 (n + 1)).toNat) (A082688 (n + 1))

end

end A145626.P10029616194505096490

/-! ## A145626.P9178989758860767136

`lcm(A000265(A145614(n+1)), A145636(n+1))`
-/

namespace A145626.P9178989758860767136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A145614 (n + 1)).toNat) (A145636 (n + 1))

end

end A145626.P9178989758860767136

/-! ## A145626.P7094066864923479306

`A128501(A264986(n+1))`
-/

namespace A145626.P7094066864923479306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128501 (A264986 (n + 1)).toNat

end

end A145626.P7094066864923479306

/-!
# A145629: Denominator of the polynomial A_l(x) = Sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=10.

The programs for A145629, there is no canonical definition to state claims against.
-/

/-! ## A145629.P5183858268736392578

`A072438(lcm(A145616(n+1), A145620(n+1)))`
-/

namespace A145629.P5183858268736392578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (Int.lcm (A145616 (n + 1)) (A145620 (n + 1)))

end

end A145629.P5183858268736392578

/-!
# A145630: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=11.

The programs for A145630, there is no canonical definition to state claims against.
-/

/-! ## A145630.P672963218225135436

`A003418(2*(n+1))/A084066(A070767(n+1))`
-/

namespace A145630.P672963218225135436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 1)) : ℚ) / (A084066 (A070767 (n + 1)).toNat : ℚ)

end

end A145630.P672963218225135436

/-! ## A145630.P2467100781767660044

`A003418(A161953(2*(n+1)))/A065031(2*n+1)`
-/

namespace A145630.P2467100781767660044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A161953 (2 * (n + 1))).toNat : ℚ) / (A065031 (2 * n + 1) : ℚ)

end

end A145630.P2467100781767660044

/-! ## A145630.P16736726065953791568

`A253139(2^A005408(n))/A001240(A096601(n+1))`
-/

namespace A145630.P16736726065953791568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253139 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A005408 n : ℤ))).toNat : ℚ) / (A001240 (A096601 (n + 1)).toNat : ℚ)

end

end A145630.P16736726065953791568

/-!
# A145632: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=12.

The programs for A145632, there is no canonical definition to state claims against.
-/

/-! ## A145632.P15059913211302724950

`gcd(A023545(A145612(n+1)), A145620(n+1))`
-/

namespace A145632.P15059913211302724950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023545 (A145612 (n + 1)).toNat) (A145620 (n + 1))

end

end A145632.P15059913211302724950

/-! ## A145632.P3981989018803686815

`gcd(A026741(A145612(n+1)), A145626(n+1))`
-/

namespace A145632.P3981989018803686815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A145612 (n + 1)).toNat) (A145626 (n + 1))

end

end A145632.P3981989018803686815

/-! ## A145632.P7018291873937303329

`A038502(gcd(A145612(n+1), A145616(n+1)))`
-/

namespace A145632.P7018291873937303329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.gcd (A145612 (n + 1)) (A145616 (n + 1)))

end

end A145632.P7018291873937303329

/-!
# A145634: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=13.

The programs for A145634, there is no canonical definition to state claims against.
-/

/-! ## A145634.P16470560466222204190

`A002805(∑{e}[A208146(n+1), #])`
-/

namespace A145634.P16470560466222204190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A145634.P16470560466222204190

/-! ## A145634.P2532638796705766037

`A002805(lt[1, A170910(3*n+2)])`
-/

namespace A145634.P2532638796705766037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170910 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A145634.P2532638796705766037

/-! ## A145634.P3595192141957582326

`A265392(A318314(Δ[(4*n+2)*2^n]))`
-/

namespace A145634.P3595192141957582326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 2) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265392 (A318314 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A145634.P3595192141957582326

/-!
# A145636: Denominator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=15.

The programs for A145636, there is no canonical definition to state claims against.
-/

/-! ## A145636.P16895200938905238464

`gcd(∏[A082783(n+1)], A082688(n+1))`
-/

namespace A145636.P16895200938905238464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A082688 (n + 1))

end

end A145636.P16895200938905238464

/-! ## A145636.P2712950960345696447

`gcd(A000027(A145618(n+1)), A145626(n+1))`
-/

namespace A145636.P2712950960345696447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A145618 (n + 1)).toNat) (A145626 (n + 1))

end

end A145636.P2712950960345696447

/-! ## A145636.P9231805477387910525

`gcd(A016743(A145620(n+1)), A145618(n+1))`
-/

namespace A145636.P9231805477387910525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016743 (A145620 (n + 1)).toNat) (A145618 (n + 1))

end

end A145636.P9231805477387910525

/-!
# A145638: Denominator the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=14.

The programs for A145638, there is no canonical definition to state claims against.
-/

/-! ## A145638.P7114102246702231461

`A318509(A034496(n))`
-/

namespace A145638.P7114102246702231461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (A034496 n).toNat

end

end A145638.P7114102246702231461

/-! ## A145638.P13328936622813722405

`A106608(lcm(n+1, A025547(n+1)))`
-/

namespace A145638.P13328936622813722405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (Int.lcm (n + 1 : ℤ) (A025547 (n + 1)))

end

end A145638.P13328936622813722405

/-!
# A145640: Denominator the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=16.

The programs for A145640, there is no canonical definition to state claims against.
-/

/-! ## A145640.P15397260317767349299

`gcd(sqrt(A103931(2*(n+1))), A001147(n+1))`
-/

namespace A145640.P15397260317767349299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A103931 (2 * (n + 1)) : ℝ))) (A001147 (n + 1))

end

end A145640.P15397260317767349299

/-! ## A145640.P10435699872606307176

`gcd(A001147(A132576(n+1)), A145610(n+1))`
-/

namespace A145640.P10435699872606307176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001147 (A132576 (n + 1)).toNat) (A145610 (n + 1))

end

end A145640.P10435699872606307176

/-! ## A145640.P6614079426128588332

`lcm(A000265(A145616(n+1)), A052468(n+1))`
-/

namespace A145640.P6614079426128588332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A145616 (n + 1)).toNat) (A052468 (n + 1))

end

end A145640.P6614079426128588332

/-! ## A145640.P8972449117763235216

`A000027(A025547(n+1)/A110566(2*(n+1)))`
-/

namespace A145640.P8972449117763235216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A025547 (n + 1) : ℚ) / (A110566 (2 * (n + 1)) : ℚ))).toNat

end

end A145640.P8972449117763235216

/-! ## A145640.P5988202691110056765

`A000027(A145610(n+1)/A053644(2*(n+1)))`
-/

namespace A145640.P5988202691110056765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A145610 (n + 1) : ℚ) / (A053644 (2 * (n + 1)) : ℚ))).toNat

end

end A145640.P5988202691110056765

/-!
# A145641: Numbers whose binary representation is the concatenation of n 1's, n 0's and n 1's.

The programs for A145641, the canonical program `A145641.P7937718060023487315` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145641 has offset 1).

The definition of A145641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145641.P7937718060023487315

`(2^(n+1)-1)*(2^(2*(n+1))+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145641

/-- `(2^(n+1)-1)*(2^(2*(n+1))+1)` -/
def P7937718060023487315.Spec : Prop :=
  ∀ n, P7937718060023487315.a n = A145641 (n + 1)

theorem P7937718060023487315.correct : P7937718060023487315.Spec := by
  intro n
  simp only [A145641, Nat.add_sub_cancel]

end A145641

/-! ## A145641.P744433909938471849

`lcm(∑[2^n], A080880(2*n+3))`
-/

namespace A145641.P744433909938471849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080880 (2 * n + 3))

end

end A145641.P744433909938471849

namespace A145641

/-- `lcm(∑[2^n], A080880(2*n+3))` -/
def P744433909938471849.Spec : Prop :=
  ∀ n, (P744433909938471849.a n : ℤ) = A145641 (n + 1)

end A145641

/-! ## A145641.P2999222315799741024

`lcm(A020737(2*n), A126646(n))`
-/

namespace A145641.P2999222315799741024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020737 (2 * n)) (A126646 n)

end

end A145641.P2999222315799741024

namespace A145641

/-- `lcm(A020737(2*n), A126646(n))` -/
def P2999222315799741024.Spec : Prop :=
  ∀ n, (P2999222315799741024.a n : ℤ) = A145641 (n + 1)

end A145641

/-! ## A145641.P1610028856960267361

`lcm(∑[A000079(n)], A052539(n+1))`
-/

namespace A145641.P1610028856960267361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A052539 (n + 1))

end

end A145641.P1610028856960267361

namespace A145641

/-- `lcm(∑[A000079(n)], A052539(n+1))` -/
def P1610028856960267361.Spec : Prop :=
  ∀ n, (P1610028856960267361.a n : ℤ) = A145641 (n + 1)

end A145641

/-! ## A145641.P14198221242380932513

`A059409(n+1)+A000225(n+1)`
-/

namespace A145641.P14198221242380932513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059409 (n + 1) + A000225 (n + 1)

end

end A145641.P14198221242380932513

namespace A145641

/-- `A059409(n+1)+A000225(n+1)` -/
def P14198221242380932513.Spec : Prop :=
  ∀ n, P14198221242380932513.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P16423357619413491670

`A074603(n+1)-A052539(n+1)`
-/

namespace A145641.P16423357619413491670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074603 (n + 1) - A052539 (n + 1)

end

end A145641.P16423357619413491670

namespace A145641

/-- `A074603(n+1)-A052539(n+1)` -/
def P16423357619413491670.Spec : Prop :=
  ∀ n, P16423357619413491670.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P17889358175054789220

`A155592(n+1)-A000079(n+1)²`
-/

namespace A145641.P17889358175054789220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155592 (n + 1) - A000079 (n + 1) ^ 2

end

end A145641.P17889358175054789220

namespace A145641

/-- `A155592(n+1)-A000079(n+1)²` -/
def P17889358175054789220.Spec : Prop :=
  ∀ n, P17889358175054789220.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P13205016499677882189

`A060242(n+1)+A000225(n+2)-1`
-/

namespace A145641.P13205016499677882189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060242 (n + 1) + (A000225 (n + 2) - 1)

end

end A145641.P13205016499677882189

namespace A145641

/-- `A060242(n+1)+A000225(n+2)-1` -/
def P13205016499677882189.Spec : Prop :=
  ∀ n, P13205016499677882189.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P11691439560962021822

`A000079(n+1)*A020515(n+1)-1`
-/

namespace A145641.P11691439560962021822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A020515 (n + 1) - 1

end

end A145641.P11691439560962021822

namespace A145641

/-- `A000079(n+1)*A020515(n+1)-1` -/
def P11691439560962021822.Spec : Prop :=
  ∀ n, P11691439560962021822.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P4982859289926909387

`A060242(n+1)+2*A000225(n+1)`
-/

namespace A145641.P4982859289926909387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060242 (n + 1) + 2 * A000225 (n + 1)

end

end A145641.P4982859289926909387

namespace A145641

/-- `A060242(n+1)+2*A000225(n+1)` -/
def P4982859289926909387.Spec : Prop :=
  ∀ n, P4982859289926909387.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P8980883279855693808

`A034496(n+1)-2*A052539(n+1)`
-/

namespace A145641.P8980883279855693808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034496 (n + 1) - 2 * A052539 (n + 1)

end

end A145641.P8980883279855693808

namespace A145641

/-- `A034496(n+1)-2*A052539(n+1)` -/
def P8980883279855693808.Spec : Prop :=
  ∀ n, P8980883279855693808.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P4303227552177150054

`lcm(A000051(2*(n+1)), A000225(n+1))`
-/

namespace A145641.P4303227552177150054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000051 (2 * (n + 1))) (A000225 (n + 1))

end

end A145641.P4303227552177150054

namespace A145641

/-- `lcm(A000051(2*(n+1)), A000225(n+1))` -/
def P4303227552177150054.Spec : Prop :=
  ∀ n, (P4303227552177150054.a n : ℤ) = A145641 (n + 1)

end A145641

/-! ## A145641.P2045634727396334818

`∑[A135092(3*n+1)-A135098(2*n+1)]`
-/

namespace A145641.P2045634727396334818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 (3 * n + 1) - A135098 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145641.P2045634727396334818

namespace A145641

/-- `∑[A135092(3*n+1)-A135098(2*n+1)]` -/
def P2045634727396334818.Spec : Prop :=
  ∀ n, P2045634727396334818.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P10056484368103045587

`A000225(n+1)+A000079(n)*A059153(n)`
-/

namespace A145641.P10056484368103045587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000079 n * A059153 n

end

end A145641.P10056484368103045587

namespace A145641

/-- `A000225(n+1)+A000079(n)*A059153(n)` -/
def P10056484368103045587.Spec : Prop :=
  ∀ n, P10056484368103045587.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P12121918052368858983

`A059409(n+1)+A132753(n+1)-A132753(n)`
-/

namespace A145641.P12121918052368858983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059409 (n + 1) + (A132753 (n + 1) - A132753 n)

end

end A145641.P12121918052368858983

namespace A145641

/-- `A059409(n+1)+A132753(n+1)-A132753(n)` -/
def P12121918052368858983.Spec : Prop :=
  ∀ n, P12121918052368858983.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P14244794000272584199

`A147538(n+1)+A147538(n+1)+A000225(n+1)`
-/

namespace A145641.P14244794000272584199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147538 (n + 1) + (A147538 (n + 1) + A000225 (n + 1))

end

end A145641.P14244794000272584199

namespace A145641

/-- `A147538(n+1)+A147538(n+1)+A000225(n+1)` -/
def P14244794000272584199.Spec : Prop :=
  ∀ n, P14244794000272584199.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P16494630037739175590

`A000225(n+1)+A062395(n+1)-A052539(n+1)`
-/

namespace A145641.P16494630037739175590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A062395 (n + 1) - A052539 (n + 1))

end

end A145641.P16494630037739175590

namespace A145641

/-- `A000225(n+1)+A062395(n+1)-A052539(n+1)` -/
def P16494630037739175590.Spec : Prop :=
  ∀ n, P16494630037739175590.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P10464516911283583756

`A000225(n+1)+A155592(n+1)-A099393(n+1)`
-/

namespace A145641.P10464516911283583756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A155592 (n + 1) - A099393 (n + 1))

end

end A145641.P10464516911283583756

namespace A145641

/-- `A000225(n+1)+A155592(n+1)-A099393(n+1)` -/
def P10464516911283583756.Spec : Prop :=
  ∀ n, P10464516911283583756.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P13954811438636394053

`A000225(n+1)+A000225(n+1)*A000302(n+1)`
-/

namespace A145641.P13954811438636394053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000225 (n + 1) * A000302 (n + 1)

end

end A145641.P13954811438636394053

namespace A145641

/-- `A000225(n+1)+A000225(n+1)*A000302(n+1)` -/
def P13954811438636394053.Spec : Prop :=
  ∀ n, P13954811438636394053.a n = A145641 (n + 1)

end A145641

/-! ## A145641.P5274116771125715912

`A000225(n+1)+A000079(n+1)*A020522(n+1)`
-/

namespace A145641.P5274116771125715912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000079 (n + 1) * A020522 (n + 1)

end

end A145641.P5274116771125715912

namespace A145641

/-- `A000225(n+1)+A000079(n+1)*A020522(n+1)` -/
def P5274116771125715912.Spec : Prop :=
  ∀ n, P5274116771125715912.a n = A145641 (n + 1)

end A145641

/-!
# A145642: Cubefree part of n!.

The programs for A145642, the canonical program `A145642.P7677048617916036936` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145642 has offset 1).

The definition of A145642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145642.P9637145463076225213

`(n+1)!/A248762(n+1)`
-/

namespace A145642.P9637145463076225213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248762 (n + 1) : ℚ)

end

end A145642.P9637145463076225213

namespace A145642

/-- `(n+1)!/A248762(n+1)` -/
def P9637145463076225213.Spec : Prop :=
  ∀ n, P9637145463076225213.a n = (A145642 (n + 1) : ℚ)

end A145642

/-! ## A145642.P5718057292627664432

`(n+1)!/A248763(n+1)^3`
-/

namespace A145642.P5718057292627664432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248763 (n + 1) ^ 3 : ℚ)

end

end A145642.P5718057292627664432

namespace A145642

/-- `(n+1)!/A248763(n+1)^3` -/
def P5718057292627664432.Spec : Prop :=
  ∀ n, P5718057292627664432.a n = (A145642 (n + 1) : ℚ)

end A145642

/-! ## A145642.P7677048617916036936

`A050985(A000142(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A145642

/-- `A050985(A000142(n+1))` -/
def P7677048617916036936.Spec : Prop :=
  ∀ n, P7677048617916036936.a n = A145642 (n + 1)

theorem P7677048617916036936.correct : P7677048617916036936.Spec := by
  intro n
  simp only [A145642, Nat.add_sub_cancel]

end A145642

/-! ## A145642.P270667785973254072

`A248764(n+1)/A248762(n+1)*A248766(n+1)`
-/

namespace A145642.P270667785973254072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248764 (n + 1) : ℚ) / (A248762 (n + 1) : ℚ) * (A248766 (n + 1) : ℚ)

end

end A145642.P270667785973254072

namespace A145642

/-- `A248764(n+1)/A248762(n+1)*A248766(n+1)` -/
def P270667785973254072.Spec : Prop :=
  ∀ n, P270667785973254072.a n = (A145642 (n + 1) : ℚ)

end A145642

/-! ## A145642.P3249294667891827423

`A000142(n+1)/A248762(n+1)`
-/

namespace A145642.P3249294667891827423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A248762 (n + 1) : ℚ)

end

end A145642.P3249294667891827423

namespace A145642

/-- `A000142(n+1)/A248762(n+1)` -/
def P3249294667891827423.Spec : Prop :=
  ∀ n, P3249294667891827423.a n = (A145642 (n + 1) : ℚ)

end A145642

/-! ## A145642.P1076898280246528805

`A248779(∑[n+1]+2)`
-/

namespace A145642.P1076898280246528805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248779 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A145642.P1076898280246528805

namespace A145642

/-- `A248779(∑[n+1]+2)` -/
def P1076898280246528805.Spec : Prop :=
  ∀ n, P1076898280246528805.a n = A145642 (n + 1)

end A145642

/-! ## A145642.P2778383330432849047

`gcd(A248772(n+1), A248779(A133263(n+1)))`
-/

namespace A145642.P2778383330432849047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A248772 (n + 1)) (A248779 (A133263 (n + 1)).toNat)

end

end A145642.P2778383330432849047

namespace A145642

/-- `gcd(A248772(n+1), A248779(A133263(n+1)))` -/
def P2778383330432849047.Spec : Prop :=
  ∀ n, (P2778383330432849047.a n : ℤ) = A145642 (n + 1)

end A145642

/-!
# A145643: Cubefree part of n!!.

The programs for A145643, the canonical program `A145643.P5565039089606067867` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145643 has offset 1).

The definition of A145643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145643.P5565039089606067867

`A050985(A006882(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A145643

/-- `A050985(A006882(n+1))` -/
def P5565039089606067867.Spec : Prop :=
  ∀ n, P5565039089606067867.a n = A145643 (n + 1)

theorem P5565039089606067867.correct : P5565039089606067867.Spec := by
  intro n
  simp only [A145643, Nat.add_sub_cancel]

end A145643

/-! ## A145643.P7116571987244924133

`A050985(∏[(n+1)/a(n-1)])` with `a(0)=1`
-/

namespace A145643.P7116571987244924133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A145643.P7116571987244924133

namespace A145643

/-- `A050985(∏[(n+1)/a(n-1)])` -/
def P7116571987244924133.Spec : Prop :=
  ∀ n, P7116571987244924133.a n = A145643 (n + 1)

end A145643

/-! ## A145643.P1411576028470581348

`A050985(Δ[A129981(n)])`
-/

namespace A145643.P1411576028470581348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (f1 (n + 1) - f1 n).toNat

end

end A145643.P1411576028470581348

namespace A145643

/-- `A050985(Δ[A129981(n)])` -/
def P1411576028470581348.Spec : Prop :=
  ∀ n, P1411576028470581348.a n = A145643 (n + 1)

end A145643

/-! ## A145643.P4720607576235688850

`A050985(record[A092081(n)])`
-/

namespace A145643.P4720607576235688850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145643.P4720607576235688850

namespace A145643

/-- `A050985(record[A092081(n)])` -/
def P4720607576235688850.Spec : Prop :=
  ∀ n, P4720607576235688850.a n = A145643 (n + 1)

end A145643

/-! ## A145643.P12972133661432025680

`A050985(A382067(n+1))`
-/

namespace A145643.P12972133661432025680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A382067 (n + 1)).toNat

end

end A145643.P12972133661432025680

namespace A145643

/-- `A050985(A382067(n+1))` -/
def P12972133661432025680.Spec : Prop :=
  ∀ n, P12972133661432025680.a n = A145643 (n + 1)

end A145643

/-!
# A145644: Cubefree part of 10^n.

The programs for A145644, the canonical program `A145644.P13098208223198849549` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145644 has offset 0).

The definition of A145644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145644.P13098208223198849549

`a(n-3)` with `a(0)=1, a(1)=10, a(2)=100`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145644

/-- `a(n-3)` -/
def P13098208223198849549.Spec : Prop :=
  ∀ n, (P13098208223198849549.a n : ℤ) = A145644 n

theorem P13098208223198849549.correct : P13098208223198849549.Spec := by
  intro n
  simp only [A145644]

end A145644

/-!
# A145645: Numbers k such that (binary weight of k)/(length of binary representation of k) equals 1/3.

The programs for A145645, the canonical program `A145645.P239735135967047320` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145645 has offset 1).

The definition of A145645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145645.P239735135967047320

`eq[A000120(n), A037861(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145645

/-- `eq[A000120(n), A037861(n)]` -/
def P239735135967047320.Spec : Prop :=
  ∀ n, (P239735135967047320.a n : ℤ) = A145645 (n + 1)

theorem P239735135967047320.correct : P239735135967047320.Spec := by
  intro n
  simp only [A145645, Nat.add_sub_cancel]

end A145645

/-! ## A145645.P2479696050676924191

`eq[log2(A001316(n)), A037861(n)]`
-/

namespace A145645.P2479696050676924191
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A145645.P2479696050676924191

namespace A145645

/-- `eq[log2(A001316(n)), A037861(n)]` -/
def P2479696050676924191.Spec : Prop :=
  ∀ n, (P2479696050676924191.a n : ℤ) = A145645 (n + 1)

end A145645

/-! ## A145645.P11639983878592349210

`eq[log2(A102376(n)), A023416(n)]`
-/

namespace A145645.P11639983878592349210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A102376 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A145645.P11639983878592349210

namespace A145645

/-- `eq[log2(A102376(n)), A023416(n)]` -/
def P11639983878592349210.Spec : Prop :=
  ∀ n, (P11639983878592349210.a n : ℤ) = A145645 (n + 1)

end A145645

/-! ## A145645.P13780904547227343716

`eq[dr(A007088(n)), A037861(n)]`
-/

namespace A145645.P13780904547227343716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145645.P13780904547227343716

namespace A145645

/-- `eq[dr(A007088(n)), A037861(n)]` -/
def P13780904547227343716.Spec : Prop :=
  ∀ n, (P13780904547227343716.a n : ℤ) = A145645 (n + 1)

end A145645

/-! ## A145645.P648015238268795158

`eq[3*n-A004134(n), A037861(n)]`
-/

namespace A145645.P648015238268795158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A004134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145645.P648015238268795158

namespace A145645

/-- `eq[3*n-A004134(n), A037861(n)]` -/
def P648015238268795158.Spec : Prop :=
  ∀ n, (P648015238268795158.a n : ℤ) = A145645 (n + 1)

end A145645

/-! ## A145645.P11434407126610835718

`eq[A001414(A001316(n)), A023416(n)]`
-/

namespace A145645.P11434407126610835718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145645.P11434407126610835718

namespace A145645

/-- `eq[A001414(A001316(n)), A023416(n)]` -/
def P11434407126610835718.Spec : Prop :=
  ∀ n, (P11434407126610835718.a n : ℤ) = A145645 (n + 1)

end A145645

/-! ## A145645.P16020478080556728659

`eq[A005843(A000120(n)), A023416(n)]`
-/

namespace A145645.P16020478080556728659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145645.P16020478080556728659

namespace A145645

/-- `eq[A005843(A000120(n)), A023416(n)]` -/
def P16020478080556728659.Spec : Prop :=
  ∀ n, (P16020478080556728659.a n : ℤ) = A145645 (n + 1)

end A145645

/-! ## A145645.P14099096866911623451

`eq[A004277(A023416(n)), A056791(n)]`
-/

namespace A145645.P14099096866911623451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A023416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145645.P14099096866911623451

namespace A145645

/-- `eq[A004277(A023416(n)), A056791(n)]` -/
def P14099096866911623451.Spec : Prop :=
  ∀ n, (P14099096866911623451.a n : ℤ) = A145645 (n + 1)

end A145645

/-! ## A145645.P6591122360103923943

`eq[A001222(A001316(2*n)), A037861(n)]`
-/

namespace A145645.P6591122360103923943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145645.P6591122360103923943

namespace A145645

/-- `eq[A001222(A001316(2*n)), A037861(n)]` -/
def P6591122360103923943.Spec : Prop :=
  ∀ n, (P6591122360103923943.a n : ℤ) = A145645 (n + 1)

end A145645

/-!
# A145647: First differences of A145646.

The programs for A145647, there is no canonical definition to state claims against.
-/

/-! ## A145647.P1101216829665061251

`Δ[A145646(n+1)]`
-/

namespace A145647.P1101216829665061251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145647.P1101216829665061251

/-! ## A145647.P14346428662780095154

`abs(Δ[A145646(Δ[n²]-n)])`
-/

namespace A145647.P14346428662780095154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145646 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A145647.P14346428662780095154

/-! ## A145647.P13409039391699927380

`A145646(n+2)-A145646(n+1)`
-/

namespace A145647.P13409039391699927380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145646 (n + 2) - A145646 (n + 1)

end

end A145647.P13409039391699927380

/-! ## A145647.P14522048182051885184

`2*n-(A005843(n)-Δ[A145646(Δ[n²]-n)])`
-/

namespace A145647.P14522048182051885184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145646 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A005843 n - (f1 (n + 1) - f1 n))

end

end A145647.P14522048182051885184

/-! ## A145647.P218917570198930588

`A000027(Δ[A145646(Δ[n²]-n)])`
-/

namespace A145647.P218917570198930588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145646 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A145647.P218917570198930588

/-!
# A145648: Weight distribution of [42,21,10] binary extended quadratic-residue (or QR) code.

The programs for A145648, there is no canonical definition to state claims against.
-/

/-! ## A145648.P8441837577580307312

`A171397(C(ceil(2/acot(n)²), 10*n))`
-/

namespace A145648.P8441837577580307312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Nat.choose ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉.toNat (10 * n))

end

end A145648.P8441837577580307312

/-! ## A145648.P13908211058638685144

`A067158(A343485(n))`
-/

namespace A145648.P13908211058638685144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067158 ((A343485 n).toNat + 11)

end

end A145648.P13908211058638685144

/-!
# A145649: Characteristic function of the lucky numbers.

The programs for A145649, there is no canonical definition to state claims against.
-/

/-! ## A145649.P15990750767273275397

`A068309(n+1)%2`
-/

namespace A145649.P15990750767273275397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068309 (n + 1)) 2

end

end A145649.P15990750767273275397

/-! ## A145649.P4058174530211757915

`A257690(n+1)%2`
-/

namespace A145649.P4058174530211757915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257690 (n + 1)) 2

end

end A145649.P4058174530211757915

/-! ## A145649.P5096239306697661930

`A257725(n+1)%2`
-/

namespace A145649.P5096239306697661930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257725 (n + 1)) 2

end

end A145649.P5096239306697661930

/-! ## A145649.P4999037268494851879

`floor(acot(A260437(n+1)))`
-/

namespace A145649.P4999037268494851879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A260437 (n + 1) : ℝ)⌋

end

end A145649.P4999037268494851879

/-! ## A145649.P11140096788390030934

`floor(acot(A264940(n+1)))`
-/

namespace A145649.P11140096788390030934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A264940 (n + 1) : ℝ)⌋

end

end A145649.P11140096788390030934

/-! ## A145649.P2544765513656220188

`round(acot(A260429(n+1)))`
-/

namespace A145649.P2544765513656220188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A260429 (n + 1) : ℝ))

end

end A145649.P2544765513656220188

/-! ## A145649.P7559607869126520721

`char[A000959(n+1)-1]`
-/

namespace A145649.P7559607869126520721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A145649.P7559607869126520721

/-! ## A145649.P11195729419875259343

`C(2, A265859(n+1)+2)`
-/

namespace A145649.P11195729419875259343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A265859 (n + 1) + 2).toNat

end

end A145649.P11195729419875259343

/-! ## A145649.P3809157154303129275

`A000035(A068309(n+1))`
-/

namespace A145649.P3809157154303129275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A068309 (n + 1)).toNat

end

end A145649.P3809157154303129275

/-! ## A145649.P13796312261559886290

`A000007(A260437(n+1))`
-/

namespace A145649.P13796312261559886290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A260437 (n + 1)).toNat

end

end A145649.P13796312261559886290

/-! ## A145649.P2589438110122075745

`A000007(A264940(n+1))`
-/

namespace A145649.P2589438110122075745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A264940 (n + 1)).toNat

end

end A145649.P2589438110122075745

/-! ## A145649.P5880144536465051297

`A000007(A265859(n+1))`
-/

namespace A145649.P5880144536465051297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A265859 (n + 1)).toNat

end

end A145649.P5880144536465051297

/-! ## A145649.P8731467114339486720

`A096271(C(4, A264940(n+1)))`
-/

namespace A145649.P8731467114339486720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (Nat.choose 4 (A264940 (n + 1)).toNat)

end

end A145649.P8731467114339486720

/-! ## A145649.P15965933727336316329

`and(A059841(n), A257690(n+1))`
-/

namespace A145649.P15965933727336316329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 n) (A257690 (n + 1))

end

end A145649.P15965933727336316329

/-! ## A145649.P2862964318497741197

`and(A060576(n), A257690(n+1))`
-/

namespace A145649.P2862964318497741197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A257690 (n + 1))

end

end A145649.P2862964318497741197

/-! ## A145649.P13512106136233615282

`and(A088911(n), A257690(n+1))`
-/

namespace A145649.P13512106136233615282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088911 n) (A257690 (n + 1))

end

end A145649.P13512106136233615282

/-! ## A145649.P15564162463382253227

`and(A158388(n), A257690(n+1))`
-/

namespace A145649.P15564162463382253227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A257690 (n + 1))

end

end A145649.P15564162463382253227

/-! ## A145649.P8444610015951872982

`and(A204418(n), A257690(n+1))`
-/

namespace A145649.P8444610015951872982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204418 n) (A257690 (n + 1))

end

end A145649.P8444610015951872982

/-!
# A145650: Linking prime for the first and second member of maximal chains of primes that have at least three members.

The programs for A145650, there is no canonical definition to state claims against.
-/

/-! ## A145650.P16649597630707890040

`A119487(eq[A001511(n+2), A209628(n+1)])`
-/

namespace A145650.P16649597630707890040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A145650.P16649597630707890040

/-!
# A145652: a(1)=1. a(n) = the largest integer such that the finite sequence (a(n-1),a(n-2),...a(n-a(n))) occurs somewhere as a subsequence in the finite sequence (a(1),a(2),...,a(n-1)).

The programs for A145652, there is no canonical definition to state claims against.
-/

/-! ## A145652.P2478048238298064621

`A120221(A331595(n+1)+A002121(n))`
-/

namespace A145652.P2478048238298064621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (A331595 (n + 1) + A002121 n).toNat

end

end A145652.P2478048238298064621

/-!
# A145653: a(n) = the length of the longest substring of digits that occurs both in the binary representation of the n-th prime and in the binary representation of the (n+1)th prime.

The programs for A145653, there is no canonical definition to state claims against.
-/

/-! ## A145653.P12640652444806416505

`A089643(A218138(n)+n)`
-/

namespace A145653.P12640652444806416505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A218138 n + (n : ℤ)).toNat

end

end A145653.P12640652444806416505

/-!
# A145654: Partial sums of A000918, starting from index 1.

The programs for A145654, the canonical program `A145654.P7427582297389313429` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145654 has offset 1).

The definition of A145654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145654.P7427582297389313429

`A005803(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A145654

/-- `A005803(n+2)` -/
def P7427582297389313429.Spec : Prop :=
  ∀ n, P7427582297389313429.a n = A145654 (n + 1)

theorem P7427582297389313429.correct : P7427582297389313429.Spec := by
  intro n
  simp only [A145654, Nat.add_sub_cancel]

end A145654

/-! ## A145654.P6411442926813957152

`2*A000295(n+1)`
-/

namespace A145654.P6411442926813957152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000295 (n + 1)

end

end A145654.P6411442926813957152

namespace A145654

/-- `2*A000295(n+1)` -/
def P6411442926813957152.Spec : Prop :=
  ∀ n, P6411442926813957152.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P11956850819021328008

`∑[∑[2^n]-1]`
-/

namespace A145654.P11956850819021328008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145654.P11956850819021328008

namespace A145654

/-- `∑[∑[2^n]-1]` -/
def P11956850819021328008.Spec : Prop :=
  ∀ n, P11956850819021328008.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P11904234728971820159

`ogf(2x/(1-4x+5x^2-2x^3))`
-/

namespace A145654.P11904234728971820159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, 5, -2] n

end

end A145654.P11904234728971820159

namespace A145654

/-- `ogf(2x/(1-4x+5x^2-2x^3))` -/
def P11904234728971820159.Spec : Prop :=
  ∀ n, P11904234728971820159.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P4718534233268871913

`2*(a(n-1)+n)` with `a(0)=0`
-/

namespace A145654.P4718534233268871913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + n)

end

end A145654.P4718534233268871913

namespace A145654

/-- `2*(a(n-1)+n)` -/
def P4718534233268871913.Spec : Prop :=
  ∀ n, (P4718534233268871913.a n : ℤ) = A145654 (n + 1)

end A145654

/-! ## A145654.P9145322774297309856

`2*xor(n+1, ∑[2^n])`
-/

namespace A145654.P9145322774297309856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145654.P9145322774297309856

namespace A145654

/-- `2*xor(n+1, ∑[2^n])` -/
def P9145322774297309856.Spec : Prop :=
  ∀ n, (P9145322774297309856.a n : ℤ) = A145654 (n + 1)

end A145654

/-! ## A145654.P14190596411455466339

`abs(∑[2*(a(n-1)-1)])` with `a(0)=0`
-/

namespace A145654.P14190596411455466339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A145654.P14190596411455466339

namespace A145654

/-- `abs(∑[2*(a(n-1)-1)])` -/
def P14190596411455466339.Spec : Prop :=
  ∀ n, P14190596411455466339.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P36007615449950411

`-∑[2*(a(n-1)-1)]` with `a(0)=0`
-/

namespace A145654.P36007615449950411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145654.P36007615449950411

namespace A145654

/-- `-∑[2*(a(n-1)-1)]` -/
def P36007615449950411.Spec : Prop :=
  ∀ n, P36007615449950411.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P16681816500488032868

`floor(∑[∑[2*a(n-1)]])` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A145654.P16681816500488032868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145654.P16681816500488032868

namespace A145654

/-- `floor(∑[∑[2*a(n-1)]])` -/
def P16681816500488032868.Spec : Prop :=
  ∀ n, (P16681816500488032868.a n : ℤ) = A145654 (n + 1)

end A145654

/-! ## A145654.P2016603074946096644

`ceil(∑[∑[2*a(n-1)]])` with `a(0)=0, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A145654.P2016603074946096644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145654.P2016603074946096644

namespace A145654

/-- `ceil(∑[∑[2*a(n-1)]])` -/
def P2016603074946096644.Spec : Prop :=
  ∀ n, (P2016603074946096644.a n : ℤ) = A145654 (n + 1)

end A145654

/-! ## A145654.P9330036416802200909

`round(∑[∑[2*a(n-1)]])` with `a(0)=0, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A145654.P9330036416802200909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145654.P9330036416802200909

namespace A145654

/-- `round(∑[∑[2*a(n-1)]])` -/
def P9330036416802200909.Spec : Prop :=
  ∀ n, (P9330036416802200909.a n : ℤ) = A145654 (n + 1)

end A145654

/-! ## A145654.P17946649568113475310

`2*(n-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A145654.P17946649568113475310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℤ) - (-a (n - 1)))

end

end A145654.P17946649568113475310

namespace A145654

/-- `2*(n-floor(-a(n-1)))` -/
def P17946649568113475310.Spec : Prop :=
  ∀ n, P17946649568113475310.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P11848023733309175737

`2*(n-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A145654.P11848023733309175737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℤ) - (-a (n - 1)))

end

end A145654.P11848023733309175737

namespace A145654

/-- `2*(n-ceil(-a(n-1)))` -/
def P11848023733309175737.Spec : Prop :=
  ∀ n, P11848023733309175737.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P11415801855882673185

`2*(n-round(-a(n-1)))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A145654.P11415801855882673185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℤ) - (-a (n - 1)))

end

end A145654.P11415801855882673185

namespace A145654

/-- `2*(n-round(-a(n-1)))` -/
def P11415801855882673185.Spec : Prop :=
  ∀ n, P11415801855882673185.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P18283102426428314213

`∑[lcm(2, a(n-1)+1)]-1` with `a(0)=1`
-/

namespace A145654.P18283102426428314213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A145654.P18283102426428314213

namespace A145654

/-- `∑[lcm(2, a(n-1)+1)]-1` -/
def P18283102426428314213.Spec : Prop :=
  ∀ n, P18283102426428314213.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P18279873194824695793

`2*∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A145654.P18279873194824695793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145654.P18279873194824695793

namespace A145654

/-- `2*∑[∑[2*a(n-1)]]` -/
def P18279873194824695793.Spec : Prop :=
  ∀ n, (P18279873194824695793.a n : ℤ) = A145654 (n + 1)

end A145654

/-! ## A145654.P4231111007597471723

`xor(n+2+n, ∑[2^(n+1)])`
-/

namespace A145654.P4231111007597471723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2 + n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145654.P4231111007597471723

namespace A145654

/-- `xor(n+2+n, ∑[2^(n+1)])` -/
def P4231111007597471723.Spec : Prop :=
  ∀ n, (P4231111007597471723.a n : ℤ) = A145654 (n + 1)

end A145654

/-! ## A145654.P7478048800908616652

`record[(-sqrt(2))^(n+2)-(n+2)]`
-/

namespace A145654.P7478048800908616652
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (2 : ℝ)) ^ (n + 2) - (n + 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145654.P7478048800908616652

namespace A145654

/-- `record[(-sqrt(2))^(n+2)-(n+2)]` -/
def P7478048800908616652.Spec : Prop :=
  ∀ n, P7478048800908616652.a n = (A145654 (n + 1) : ℝ)

end A145654

/-! ## A145654.P7989807249724986188

`2-2*(1-a(n-1)-n)` with `a(0)=0`
-/

namespace A145654.P7989807249724986188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - 2 * (1 - a (n - 1) - (n : ℤ))

end

end A145654.P7989807249724986188

namespace A145654

/-- `2-2*(1-a(n-1)-n)` -/
def P7989807249724986188.Spec : Prop :=
  ∀ n, P7989807249724986188.a n = A145654 (n + 1)

end A145654

/-! ## A145654.P17011986038303651774

`(a(n-1)+n)/(1-1/2)` with `a(0)=0`
-/

namespace A145654.P17011986038303651774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℚ)) / (1 - (1 : ℚ) / 2)

end

end A145654.P17011986038303651774

namespace A145654

/-- `(a(n-1)+n)/(1-1/2)` -/
def P17011986038303651774.Spec : Prop :=
  ∀ n, P17011986038303651774.a n = (A145654 (n + 1) : ℚ)

end A145654

/-!
# A145655: Partial sums of A080674.

The programs for A145655, the canonical program `A145655.P13085033977229560777` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145655 has offset 1).

The definition of A145655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A145655.P13085033977229560777

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=24, a(2)=108`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145655

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P13085033977229560777.Spec : Prop :=
  ∀ n, P13085033977229560777.a n = A145655 (n + 1)

theorem P13085033977229560777.correct : P13085033977229560777.Spec := by
  intro n
  simp only [A145655, Nat.add_sub_cancel]

end A145655

/-! ## A145655.P6740372040816301045

`4*A014825(n+1)`
-/

namespace A145655.P6740372040816301045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014825 (n + 1)

end

end A145655.P6740372040816301045

namespace A145655

/-- `4*A014825(n+1)` -/
def P6740372040816301045.Spec : Prop :=
  ∀ n, P6740372040816301045.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P816874717753888165

`4*(4^(n+2)-3*(n+1)-4)/9`
-/

namespace A145655.P816874717753888165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ((4 ^ (n + 2) : ℤ) - (3 * (n + 1) : ℤ) - 4) : ℚ) / 9

end

end A145655.P816874717753888165

namespace A145655

/-- `4*(4^(n+2)-3*(n+1)-4)/9` -/
def P816874717753888165.Spec : Prop :=
  ∀ n, P816874717753888165.a n = (A145655 (n + 1) : ℚ)

theorem P816874717753888165.correct : P816874717753888165.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A145655, Nat.add_sub_cancel, A145655.P816874717753888165.a, A145655.P13085033977229560777.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A145655, Nat.add_sub_cancel, A145655.P816874717753888165.a, A145655.P13085033977229560777.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A145655

/-! ## A145655.P10923086198229193746

`∑[ogf(4/(1-5x+4x^2))]`
-/

namespace A145655.P10923086198229193746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P10923086198229193746

namespace A145655

/-- `∑[ogf(4/(1-5x+4x^2))]` -/
def P10923086198229193746.Spec : Prop :=
  ∀ n, P10923086198229193746.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P17847441497605318385

`ogf(4/(1-6x+9x^2-4x^3))`
-/

namespace A145655.P17847441497605318385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -6, 9, -4] n

end

end A145655.P17847441497605318385

namespace A145655

/-- `ogf(4/(1-6x+9x^2-4x^3))` -/
def P17847441497605318385.Spec : Prop :=
  ∀ n, P17847441497605318385.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P7706694071017008631

`abs(∑[∑[4*a(n-1)]])` with `a(0)=4`
-/

namespace A145655.P7706694071017008631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P7706694071017008631

namespace A145655

/-- `abs(∑[∑[4*a(n-1)]])` -/
def P7706694071017008631.Spec : Prop :=
  ∀ n, (P7706694071017008631.a n : ℤ) = A145655 (n + 1)

end A145655

/-! ## A145655.P7690397536455077868

`floor(∑[∑[4*a(n-1)]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A145655.P7690397536455077868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P7690397536455077868

namespace A145655

/-- `floor(∑[∑[4*a(n-1)]])` -/
def P7690397536455077868.Spec : Prop :=
  ∀ n, (P7690397536455077868.a n : ℤ) = A145655 (n + 1)

end A145655

/-! ## A145655.P1965420751029218569

`ceil(∑[∑[4*a(n-1)]])` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A145655.P1965420751029218569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P1965420751029218569

namespace A145655

/-- `ceil(∑[∑[4*a(n-1)]])` -/
def P1965420751029218569.Spec : Prop :=
  ∀ n, (P1965420751029218569.a n : ℤ) = A145655 (n + 1)

end A145655

/-! ## A145655.P8128491710829538169

`4*(a(n-1)+1+n)` with `a(0)=4`
-/

namespace A145655.P8128491710829538169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  4 * (a (n - 1) + 1 + n)

end

end A145655.P8128491710829538169

namespace A145655

/-- `4*(a(n-1)+1+n)` -/
def P8128491710829538169.Spec : Prop :=
  ∀ n, (P8128491710829538169.a n : ℤ) = A145655 (n + 1)

end A145655

/-! ## A145655.P16393899397996297945

`2*∑[∑[4*a(n-1)]]` with `a(0)=2`
-/

namespace A145655.P16393899397996297945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145655.P16393899397996297945

namespace A145655

/-- `2*∑[∑[4*a(n-1)]]` -/
def P16393899397996297945.Spec : Prop :=
  ∀ n, (P16393899397996297945.a n : ℤ) = A145655 (n + 1)

end A145655

/-! ## A145655.P13545516722492555749

`floor(∑[∑[a(n-1)/(1/2)²]])` with `a(0)=4`
-/

namespace A145655.P13545516722492555749
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) / ((1 : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A145655.P13545516722492555749

namespace A145655

/-- `floor(∑[∑[a(n-1)/(1/2)²]])` -/
def P13545516722492555749.Spec : Prop :=
  ∀ n, P13545516722492555749.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P5715868634012468782

`4*(2-floor(1-a(n-1)-n))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A145655.P5715868634012468782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * (2 - (1 - a (n - 1) - (n : ℤ)))

end

end A145655.P5715868634012468782

namespace A145655

/-- `4*(2-floor(1-a(n-1)-n))` -/
def P5715868634012468782.Spec : Prop :=
  ∀ n, P5715868634012468782.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P12471191920425743075

`4*(2*n-(n-1-a(n-1)))` with `a(0)=4`
-/

namespace A145655.P12471191920425743075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * ((2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 1)))

end

end A145655.P12471191920425743075

namespace A145655

/-- `4*(2*n-(n-1-a(n-1)))` -/
def P12471191920425743075.Spec : Prop :=
  ∀ n, P12471191920425743075.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P10850878453354126649

`∑[A080674(n+1)]`
-/

namespace A145655.P10850878453354126649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P10850878453354126649

namespace A145655

/-- `∑[A080674(n+1)]` -/
def P10850878453354126649.Spec : Prop :=
  ∀ n, P10850878453354126649.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P17020479846448978780

`∑[A155721(n+1)]`
-/

namespace A145655.P17020479846448978780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P17020479846448978780

namespace A145655

/-- `∑[A155721(n+1)]` -/
def P17020479846448978780.Spec : Prop :=
  ∀ n, P17020479846448978780.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P4825251551665780841

`2*A145766(n+1)`
-/

namespace A145655.P4825251551665780841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145766 (n + 1)

end

end A145655.P4825251551665780841

namespace A145655

/-- `2*A145766(n+1)` -/
def P4825251551665780841.Spec : Prop :=
  ∀ n, P4825251551665780841.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P4435100863462364154

`4*A091919(2*n)`
-/

namespace A145655.P4435100863462364154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A091919 (2 * n)

end

end A145655.P4435100863462364154

namespace A145655

/-- `4*A091919(2*n)` -/
def P4435100863462364154.Spec : Prop :=
  ∀ n, P4435100863462364154.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P11409512815057614420

`∑[abs(A084240(n+2))]`
-/

namespace A145655.P11409512815057614420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084240 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P11409512815057614420

namespace A145655

/-- `∑[abs(A084240(n+2))]` -/
def P11409512815057614420.Spec : Prop :=
  ∀ n, P11409512815057614420.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P6959585329631096941

`∑[∑[A000302(n+1)]]`
-/

namespace A145655.P6959585329631096941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P6959585329631096941

namespace A145655

/-- `∑[∑[A000302(n+1)]]` -/
def P6959585329631096941.Spec : Prop :=
  ∀ n, P6959585329631096941.a n = A145655 (n + 1)

end A145655

/-! ## A145655.P3578296077224949359

`∑[∑[A155543(n+1)]]`
-/

namespace A145655.P3578296077224949359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145655.P3578296077224949359

namespace A145655

/-- `∑[∑[A155543(n+1)]]` -/
def P3578296077224949359.Spec : Prop :=
  ∀ n, P3578296077224949359.a n = A145655 (n + 1)

end A145655

/-!
# A145656: a(n) = numerator of polynomial of genus 1 and level n for m = 2.

The programs for A145656, there is no canonical definition to state claims against.
-/

/-! ## A145656.P7118908754725098305

`Δ[A002265(A151308(n))]-A002262(n)`
-/

namespace A145656.P7118908754725098305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A151308 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002262 n

end

end A145656.P7118908754725098305

/-!
# A145657: Weight distribution of [74,37,14] binary extended quadratic-residue (or QR) code.

The programs for A145657, there is no canonical definition to state claims against.
-/

/-! ## A145657.P17412855366912894663

`A145982(record[abs(xor(1, n-2))])+A145982(2*n)`
-/

namespace A145657.P17412855366912894663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A145982 (2 * n)

end

end A145657.P17412855366912894663

/-! ## A145657.P10379147175370139716

`A026741(floor(exp(A307310(n))))`
-/

namespace A145657.P10379147175370139716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ⌊Real.exp (A307310 n : ℝ)⌋.toNat

end

end A145657.P10379147175370139716

/-! ## A145657.P9858254777722110728

`A193356(floor(exp(A042965(n+1))))`
-/

namespace A145657.P9858254777722110728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 ⌊Real.exp (A042965 (n + 1) : ℝ)⌋.toNat

end

end A145657.P9858254777722110728

/-! ## A145657.P12806566708167935305

`A218446(n!*A184965(n)+2)`
-/

namespace A145657.P12806566708167935305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218446 ((Nat.factorial n : ℤ) * A184965 n + 2).toNat

end

end A145657.P12806566708167935305

/-!
# A145658: a(n) = numerator of polynomial of genus 1 and level n for m = 3.

The programs for A145658, there is no canonical definition to state claims against.
-/

/-! ## A145658.P13782551141112886072

`A131016(3*a(n-1)+1)` with `a(0)=0, a(1)=3`
-/

namespace A145658.P13782551141112886072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A131016 (3 * a (n - 1) + 1).toNat

end

end A145658.P13782551141112886072

/-!
# A145659: Weight distribution of [80,40,16] binary extended quadratic-residue (or QR) code.

The programs for A145659, there is no canonical definition to state claims against.
-/

/-! ## A145659.P1566123129978162473

`(floor(n/4)-floor((n-1)/4))*A118363(A000182(n+1))`
-/

namespace A145659.P1566123129978162473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ - ⌊((n : ℤ) - 1 : ℚ) / 4⌋) * A118363 (A000182 (n + 1)).toNat

end

end A145659.P1566123129978162473

/-!
# A145660: a(n) = numerator of polynomial of genus 1 and level n for m = 4 = A[1,n](4).

The programs for A145660, there is no canonical definition to state claims against.
-/

/-! ## A145660.P5738736160235142908

`A120919(A036569(n))*A174571(n)`
-/

namespace A145660.P5738736160235142908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120919 (A036569 n).toNat * A174571 n

end

end A145660.P5738736160235142908

/-!
# A145661: Triangle T(n,k) = (-1)^k * A119258(n,k) read by rows, 0 <= k <= n.

The programs for A145661, there is no canonical definition to state claims against.
-/

/-! ## A145661.P11818788587616298818

`A118801(n)%2*A119258(n)`
-/

namespace A145661.P11818788587616298818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118801 n) 2 * A119258 n

end

end A145661.P11818788587616298818

/-! ## A145661.P9416161303428329713

`A014451(A002262(n))*A119258(n)`
-/

namespace A145661.P9416161303428329713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A002262 n).toNat * A119258 n

end

end A145661.P9416161303428329713

/-! ## A145661.P17203450907227190204

`A004718(A059268(n))*A119258(n)`
-/

namespace A145661.P17203450907227190204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n).toNat * A119258 n

end

end A145661.P17203450907227190204

/-! ## A145661.P5662291973847320715

`A034947(A054582(n))*A119258(n)`
-/

namespace A145661.P5662291973847320715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A054582 n).toNat * A119258 n

end

end A145661.P5662291973847320715

/-! ## A145661.P2274056217237225100

`A033999(A061885(n))*A119258(n)`
-/

namespace A145661.P2274056217237225100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A119258 n

end

end A145661.P2274056217237225100

/-! ## A145661.P3102630541110874659

`A021010(A112367(n))*A119258(n)`
-/

namespace A145661.P3102630541110874659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A112367 n).toNat * A119258 n

end

end A145661.P3102630541110874659

/-! ## A145661.P2140039333205771665

`A097807(A061579(n))*A119258(n)`
-/

namespace A145661.P2140039333205771665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A119258 n

end

end A145661.P2140039333205771665

/-! ## A145661.P3641518778103106967

`A033999(A143844(n))*A119258(n)`
-/

namespace A145661.P3641518778103106967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A143844 n).toNat * A119258 n

end

end A145661.P3641518778103106967

/-! ## A145661.P13824379318274505601

`A062157(A002260(n+1))*A119258(n)`
-/

namespace A145661.P13824379318274505601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A119258 n

end

end A145661.P13824379318274505601

/-! ## A145661.P833095873882425536

`A112857(n)/A118801(n)*A119258(n)`
-/

namespace A145661.P833095873882425536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112857 n : ℚ) / (A118801 n : ℚ) * (A119258 n : ℚ)

end

end A145661.P833095873882425536

/-!
# A145664: a(n) = numerator of polynomial of genus 1 and level n for m = 6 = A[1,n](6).

The programs for A145664, there is no canonical definition to state claims against.
-/

/-! ## A145664.P14963855102338381948

`A106833(n*a(n-1)+1)` with `a(0)=0, a(1)=6`
-/

namespace A145664.P14963855102338381948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  A106833 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A145664.P14963855102338381948

/-!
# A145669: a(n) = smallest member of the n-th term in S(2) (defined in Comments).

The programs for A145669, there is no canonical definition to state claims against.
-/

/-! ## A145669.P17445830604948516100

`p?[∑[A070402(A047920(n))]]`
-/

namespace A145669.P17445830604948516100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (A047920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145669.P17445830604948516100

/-! ## A145669.P17357715168965597926

`p?[eq[A080586(n), A327104(n)]]`
-/

namespace A145669.P17357715168965597926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080586 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145669.P17357715168965597926

/-! ## A145669.P15171288037870871701

`p?[∑[A200370(A194037(2*n+1))]]`
-/

namespace A145669.P15171288037870871701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (A194037 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145669.P15171288037870871701

/-!
# A145670: a(n) = largest member of the n-th term in S(2) (defined in Comments).

The programs for A145670, there is no canonical definition to state claims against.
-/

/-! ## A145670.P5977001745168714811

`A342194(or(A008574(n), A342183(n+1)))`
-/

namespace A145670.P5977001745168714811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (Int.lor (A008574 n) (A342183 (n + 1))).toNat

end

end A145670.P5977001745168714811

/-! ## A145670.P11116273015047981754

`A342194(or(A311176(n), A342183(n+1)))`
-/

namespace A145670.P11116273015047981754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (Int.lor (A311176 n) (A342183 (n + 1))).toNat

end

end A145670.P11116273015047981754

/-! ## A145670.P3607641289487889389

`A342194(or(A311861(n), A342183(n+1)))`
-/

namespace A145670.P3607641289487889389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (Int.lor (A311861 n) (A342183 (n + 1))).toNat

end

end A145670.P3607641289487889389

/-! ## A145670.P17005111565588776394

`A342194(or(A342183(n+1), A342191(3*(n+1))))`
-/

namespace A145670.P17005111565588776394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (Int.lor (A342183 (n + 1)) (A342191 (3 * (n + 1)))).toNat

end

end A145670.P17005111565588776394

/-!
# A145672: a(n) = size of the n-th term in S(3) (defined in Comments).

The programs for A145672, there is no canonical definition to state claims against.
-/

/-! ## A145672.P6445773281448769742

`A121997(or(12, A343992(n+1)))`
-/

namespace A145672.P6445773281448769742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (Int.lor 12 (A343992 (n + 1))).toNat

end

end A145672.P6445773281448769742

/-! ## A145672.P16494822687225833607

`A246359(A145515(3*n+4)+2^val(n+1, 2))`
-/

namespace A145672.P16494822687225833607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A145515 (3 * n + 4) + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A145672.P16494822687225833607

/-! ## A145672.P7998407741147131028

`gcd(A007865(n), A338573(A050040(n+1)))`
-/

namespace A145672.P7998407741147131028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007865 n) (A338573 (A050040 (n + 1)).toNat)

end

end A145672.P7998407741147131028

/-! ## A145672.P905213319483834336

`gcd(A175021(A053311(n)), A175022(n+1))`
-/

namespace A145672.P905213319483834336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175021 (A053311 n).toNat) (A175022 (n + 1))

end

end A145672.P905213319483834336

/-! ## A145672.P16662324332136600689

`A380032(A182751(n+2))`
-/

namespace A145672.P16662324332136600689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380032 (A182751 (n + 2)).toNat

end

end A145672.P16662324332136600689

/-!
# A145673: a(n) = smallest member of the n-th term in S(3) (defined in Comments).

The programs for A145673, there is no canonical definition to state claims against.
-/

/-! ## A145673.P15206683095475188276

`A000040(lt[A030427(n+1), A329429(2*(n+2))])`
-/

namespace A145673.P15206683095475188276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329429 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A145673.P15206683095475188276

/-! ## A145673.P14387703999043956984

`record[A000040(A241568(3*n+2)+1)]`
-/

namespace A145673.P14387703999043956984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A241568 (3 * n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145673.P14387703999043956984

/-! ## A145673.P744568204122668913

`A180101(A031215(n+1))`
-/

namespace A145673.P744568204122668913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A031215 (n + 1)).toNat

end

end A145673.P744568204122668913

/-! ## A145673.P15045413225043367650

`A137847(A107372(n+1))`
-/

namespace A145673.P15045413225043367650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137847 (A107372 (n + 1)).toNat

end

end A145673.P15045413225043367650

/-! ## A145673.P12608500642446591660

`A180101(A163776(n+1))`
-/

namespace A145673.P12608500642446591660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A163776 (n + 1)).toNat

end

end A145673.P12608500642446591660

/-!
# A145677: Triangle T(n, k) read by rows: T(n, 0) = 1, T(n, n) = n, n>0, T(n,k) = 0, 0 < k < n-1.

The programs for A145677, the canonical program `A145677.P4837885424705967050` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145677 has offset 0).

The definition of A145677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145677.P4837885424705967050

`abs(A132013(abs(1-n)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A145677

/-- `abs(A132013(abs(1-n)))` -/
def P4837885424705967050.Spec : Prop :=
  ∀ n, P4837885424705967050.a n = A145677 n

theorem P4837885424705967050.correct : P4837885424705967050.Spec := by
  intro n
  simp only [A145677]

end A145677

/-! ## A145677.P1375679561004604562

`A128229(abs(1-n)+1)`
-/

namespace A145677.P1375679561004604562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (|1 - (n : ℤ)| + 1).toNat

end

end A145677.P1375679561004604562

namespace A145677

/-- `A128229(abs(1-n)+1)` -/
def P1375679561004604562.Spec : Prop :=
  ∀ n, P1375679561004604562.a n = A145677 n

end A145677

/-! ## A145677.P5904003032911647027

`A134402(n)+A073424(n)`
-/

namespace A145677.P5904003032911647027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 n + A073424 n

end

end A145677.P5904003032911647027

namespace A145677

/-- `A134402(n)+A073424(n)` -/
def P5904003032911647027.Spec : Prop :=
  ∀ n, P5904003032911647027.a n = A145677 n

end A145677

/-! ## A145677.P4661848731527938445

`A103451(n)*A134399(n)`
-/

namespace A145677.P4661848731527938445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A134399 n

end

end A145677.P4661848731527938445

namespace A145677

/-- `A103451(n)*A134399(n)` -/
def P4661848731527938445.Spec : Prop :=
  ∀ n, P4661848731527938445.a n = A145677 n

end A145677

/-! ## A145677.P11455104086369463501

`A103451(n)*A193738(n)`
-/

namespace A145677.P11455104086369463501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A193738 n

end

end A145677.P11455104086369463501

namespace A145677

/-- `A103451(n)*A193738(n)` -/
def P11455104086369463501.Spec : Prop :=
  ∀ n, P11455104086369463501.a n = A145677 n

end A145677

/-! ## A145677.P561943543909430842

`A103451(n)*A193815(n)`
-/

namespace A145677.P561943543909430842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A193815 n

end

end A145677.P561943543909430842

namespace A145677

/-- `A103451(n)*A193815(n)` -/
def P561943543909430842.Spec : Prop :=
  ∀ n, P561943543909430842.a n = A145677 n

end A145677

/-! ## A145677.P8488397946510012517

`A103451(n)*A247286(n)`
-/

namespace A145677.P8488397946510012517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A247286 n

end

end A145677.P8488397946510012517

namespace A145677

/-- `A103451(n)*A247286(n)` -/
def P8488397946510012517.Spec : Prop :=
  ∀ n, P8488397946510012517.a n = A145677 n

end A145677

/-! ## A145677.P10958615676188079166

`A103451(n)*A389101(n)`
-/

namespace A145677.P10958615676188079166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A389101 n

end

end A145677.P10958615676188079166

namespace A145677

/-- `A103451(n)*A389101(n)` -/
def P10958615676188079166.Spec : Prop :=
  ∀ n, P10958615676188079166.a n = A145677 n

end A145677

/-! ## A145677.P17384860734918994797

`gcd(A073423(n), A134402(n))`
-/

namespace A145677.P17384860734918994797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A134402 n)

end

end A145677.P17384860734918994797

namespace A145677

/-- `gcd(A073423(n), A134402(n))` -/
def P17384860734918994797.Spec : Prop :=
  ∀ n, (P17384860734918994797.a n : ℤ) = A145677 n

end A145677

/-! ## A145677.P12530434520086580431

`lcm(A103452(n), A134399(n))`
-/

namespace A145677.P12530434520086580431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A134399 n)

end

end A145677.P12530434520086580431

namespace A145677

/-- `lcm(A103452(n), A134399(n))` -/
def P12530434520086580431.Spec : Prop :=
  ∀ n, (P12530434520086580431.a n : ℤ) = A145677 n

end A145677

/-! ## A145677.P859021184890073927

`A103451(n)*A144328(n+1)`
-/

namespace A145677.P859021184890073927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A144328 (n + 1)

end

end A145677.P859021184890073927

namespace A145677

/-- `A103451(n)*A144328(n+1)` -/
def P859021184890073927.Spec : Prop :=
  ∀ n, P859021184890073927.a n = A145677 n

end A145677

/-! ## A145677.P14114588878475874920

`gcd(A010816(n), A144217(n+1))`
-/

namespace A145677.P14114588878475874920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A144217 (n + 1))

end

end A145677.P14114588878475874920

namespace A145677

/-- `gcd(A010816(n), A144217(n+1))` -/
def P14114588878475874920.Spec : Prop :=
  ∀ n, (P14114588878475874920.a n : ℤ) = A145677 n

end A145677

/-! ## A145677.P16857738822679219032

`A144328(n+1)+1-A128227(n)`
-/

namespace A145677.P16857738822679219032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + (1 - A128227 n)

end

end A145677.P16857738822679219032

namespace A145677

/-- `A144328(n+1)+1-A128227(n)` -/
def P16857738822679219032.Spec : Prop :=
  ∀ n, P16857738822679219032.a n = A145677 n

end A145677

/-! ## A145677.P16615426023437625510

`A010054(n)+A003056(n*A023531(n))`
-/

namespace A145677.P16615426023437625510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A003056 ((n : ℤ) * A023531 n).toNat

end

end A145677.P16615426023437625510

namespace A145677

/-- `A010054(n)+A003056(n*A023531(n))` -/
def P16615426023437625510.Spec : Prop :=
  ∀ n, P16615426023437625510.a n = A145677 n

end A145677

/-! ## A145677.P18353081257965416625

`C(A007318(A038722(n+1)), A007318(n)²)`
-/

namespace A145677.P18353081257965416625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 (A038722 (n + 1)).toNat).toNat (A007318 n ^ 2).toNat

end

end A145677.P18353081257965416625

namespace A145677

/-- `C(A007318(A038722(n+1)), A007318(n)²)` -/
def P18353081257965416625.Spec : Prop :=
  ∀ n, (P18353081257965416625.a n : ℤ) = A145677 n

end A145677

/-! ## A145677.P7232804196246391806

`A002260(n+1)+A010054(n)-A128227(n)`
-/

namespace A145677.P7232804196246391806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A010054 n - A128227 n)

end

end A145677.P7232804196246391806

namespace A145677

/-- `A002260(n+1)+A010054(n)-A128227(n)` -/
def P7232804196246391806.Spec : Prop :=
  ∀ n, P7232804196246391806.a n = A145677 n

end A145677

/-! ## A145677.P8408656466177699351

`A010054(n)+A127648(n)-A010054(n+1)`
-/

namespace A145677.P8408656466177699351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A127648 n - A010054 (n + 1))

end

end A145677.P8408656466177699351

namespace A145677

/-- `A010054(n)+A127648(n)-A010054(n+1)` -/
def P8408656466177699351.Spec : Prop :=
  ∀ n, P8408656466177699351.a n = A145677 n

end A145677

/-! ## A145677.P5492244397760554116

`A010054(n)+A002262(n)*A010054(n+1)`
-/

namespace A145677.P5492244397760554116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A002262 n * A010054 (n + 1)

end

end A145677.P5492244397760554116

namespace A145677

/-- `A010054(n)+A002262(n)*A010054(n+1)` -/
def P5492244397760554116.Spec : Prop :=
  ∀ n, P5492244397760554116.a n = A145677 n

end A145677

/-! ## A145677.P3536587968342775916

`A010054(n)+A003056(n)*A010054(n+1)`
-/

namespace A145677.P3536587968342775916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + A003056 n * A010054 (n + 1)

end

end A145677.P3536587968342775916

namespace A145677

/-- `A010054(n)+A003056(n)*A010054(n+1)` -/
def P3536587968342775916.Spec : Prop :=
  ∀ n, P3536587968342775916.a n = A145677 n

end A145677

/-! ## A145677.P4934127514248134582

`1-Δ[A028310(A002262(n))]`
-/

namespace A145677.P4934127514248134582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A145677.P4934127514248134582

namespace A145677

/-- `1-Δ[A028310(A002262(n))]` -/
def P4934127514248134582.Spec : Prop :=
  ∀ n, P4934127514248134582.a n = A145677 n

end A145677

/-!
# A145678: a(n) = 441*n^2 - 21.

The programs for A145678, the canonical program `A145678.P4256212964486996985` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145678 has offset 1).

The definition of A145678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*(n+1)²-21` (program `A145678.P4256212964486996985`, by `A145678.P4256212964486996985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145678.P4256212964486996985

`441*(n+1)²-21`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A145678

/-- `441*(n+1)²-21` -/
def P4256212964486996985.Spec : Prop :=
  ∀ n, P4256212964486996985.a n = A145678 (n + 1)

theorem P4256212964486996985.correct : P4256212964486996985.Spec := by
  intro n
  simp only [A145678, Nat.add_sub_cancel]

end A145678

/-! ## A145678.P7566372342276557507

`21*(21*A000290(n+1)-1)`
-/

namespace A145678.P7566372342276557507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * (21 * A000290 (n + 1) - 1)

end

end A145678.P7566372342276557507

namespace A145678

/-- `21*(21*A000290(n+1)-1)` -/
def P7566372342276557507.Spec : Prop :=
  ∀ n, P7566372342276557507.a n = A145678 (n + 1)

end A145678

/-! ## A145678.P6486072306057308817

`3*(A158553(n+1)-A158484(n+1))`
-/

namespace A145678.P6486072306057308817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A158553 (n + 1) - A158484 (n + 1))

end

end A145678.P6486072306057308817

namespace A145678

/-- `3*(A158553(n+1)-A158484(n+1))` -/
def P6486072306057308817.Spec : Prop :=
  ∀ n, P6486072306057308817.a n = A145678 (n + 1)

end A145678

/-! ## A145678.P16910676112275501666

`7*(7*A016766(n+1)-3)`
-/

namespace A145678.P16910676112275501666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (7 * A016766 (n + 1) - 3)

end

end A145678.P16910676112275501666

namespace A145678

/-- `7*(7*A016766(n+1)-3)` -/
def P16910676112275501666.Spec : Prop :=
  ∀ n, P16910676112275501666.a n = A145678 (n + 1)

end A145678

/-! ## A145678.P16989710372548818772

`3*(A033428(7*(n+1))-7)`
-/

namespace A145678.P16989710372548818772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033428 (7 * (n + 1)) - 7)

end

end A145678.P16989710372548818772

namespace A145678

/-- `3*(A033428(7*(n+1))-7)` -/
def P16989710372548818772.Spec : Prop :=
  ∀ n, P16989710372548818772.a n = A145678 (n + 1)

end A145678

/-!
# A145679: Lower limit of backward value of 2^n and n!.

The programs for A145679, there is no canonical definition to state claims against.
-/

/-! ## A145679.P8013660448719263334

`log2(a(A023405(n)%2))` with `a(0)=2`
-/

namespace A145679.P8013660448719263334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  Real.logb 2 (a (Int.tmod (A023405 n) 2).toNat)

end

end A145679.P8013660448719263334

/-! ## A145679.P10115994119542188952

`a(A023415(n+1)-8)-1` with `a(0)=2`
-/

namespace A145679.P10115994119542188952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (A023415 (n + 1) - 8).toNat - 1

end

end A145679.P10115994119542188952

/-! ## A145679.P5336806330492506398

`A002415(a(A023415(n+1)-8))` with `a(0)=2`
-/

namespace A145679.P5336806330492506398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002415 (a (A023415 (n + 1) - 8).toNat).toNat

end

end A145679.P5336806330492506398

/-! ## A145679.P10476510142661269331

`A021913(a(A023415(n+1)-8))` with `a(0)=2`
-/

namespace A145679.P10476510142661269331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A021913 (a (A023415 (n + 1) - 8).toNat).toNat

end

end A145679.P10476510142661269331

/-! ## A145679.P5216701285752538793

`A029992(a(A023415(n+1)-8))` with `a(0)=2`
-/

namespace A145679.P5216701285752538793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A029992 (a (A023415 (n + 1) - 8).toNat).toNat

end

end A145679.P5216701285752538793

/-! ## A145679.P14826908678851281947

`A056169(a(A023415(n+1)-8))` with `a(0)=2`
-/

namespace A145679.P14826908678851281947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A056169 (a (A023415 (n + 1) - 8).toNat).toNat

end

end A145679.P14826908678851281947

/-! ## A145679.P9642826898729413600

`A060576(a(A023415(n+1)-8))` with `a(0)=2`
-/

namespace A145679.P9642826898729413600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A060576 (a (A023415 (n + 1) - 8).toNat).toNat

end

end A145679.P9642826898729413600

/-! ## A145679.P11688426342199572654

`A103919(a(A023415(n+1)-8))` with `a(0)=2`
-/

namespace A145679.P11688426342199572654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A103919 (a (A023415 (n + 1) - 8).toNat).toNat

end

end A145679.P11688426342199572654

/-! ## A145679.P3131145638323921338

`A002415(a(and(1, A023415(n+1))))` with `a(0)=2`
-/

namespace A145679.P3131145638323921338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A002415 (a (Int.land 1 (A023415 (n + 1))).toNat).toNat

end

end A145679.P3131145638323921338

/-! ## A145679.P13574004909335418021

`A029992(a(and(1, A023415(n+1))))` with `a(0)=2`
-/

namespace A145679.P13574004909335418021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A029992 (a (Int.land 1 (A023415 (n + 1))).toNat).toNat

end

end A145679.P13574004909335418021

/-! ## A145679.P13136310412338790948

`A023396(n+1)+A023414(n+1)-A023415(n+1)`
-/

namespace A145679.P13136310412338790948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023396 (n + 1) + (A023414 (n + 1) - A023415 (n + 1))

end

end A145679.P13136310412338790948

/-!
# A145680: a(n) = smallest number m such that UnitarySigma(m) = n*m/(n-1).

The programs for A145680, there is no canonical definition to state claims against.
-/

/-! ## A145680.P5713028448752196477

`(n+1)^((7^∑[n])%a(n-1))` with `a(0)=6`
-/

namespace A145680.P5713028448752196477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  (n + 1) ^ (7 ^ (∑ j ∈ Finset.range (n + 1), f1 j) % a (n - 1))

end

end A145680.P5713028448752196477

/-! ## A145680.P9127027347320594383

`A150050(a(n-1))` with `a(0)=6, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A145680.P9127027347320594383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 2, 3, 4, 5] fun n a =>
  A150050 (a (n - 1)).toNat

end

end A145680.P9127027347320594383

/-!
# A145681: Numbers m such that A034448(m) = 3m/2, where A034448 = unitary sigma = sum of divisors d with gcd(d,m/d)=1.

The programs for A145681, there is no canonical definition to state claims against.
-/

/-! ## A145681.P14588035689780213736

`A144673(∑[2^∑{digits}[n, #%C(n, #)]])`
-/

namespace A145681.P14588035689780213736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A145681.P14588035689780213736

/-! ## A145681.P4847433406449016471

`A144673((n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9+1)`
-/

namespace A145681.P4847433406449016471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144673 (SequenceMachineLib.roundAway (((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9) + 1)).toNat

end

end A145681.P4847433406449016471

/-! ## A145681.P17227684007716787455

`A144672(∑[A025793(n)])`
-/

namespace A145681.P17227684007716787455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145681.P17227684007716787455

/-! ## A145681.P4529418808877751163

`A144672(∑[A029135(n)])`
-/

namespace A145681.P4529418808877751163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144672 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145681.P4529418808877751163

/-! ## A145681.P13579372810308308804

`A144672(A005349(n+1))`
-/

namespace A145681.P13579372810308308804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144672 (A005349 (n + 1)).toNat

end

end A145681.P13579372810308308804

/-!
# A145682: The value of the sum shown in the display appears to 2, 8, 32 - sqrt(2), 113, 382, 833, 1822, 3713, 7582, ... for n = 1, ..., 9.

The programs for A145682, there is no canonical definition to state claims against.
-/

/-! ## A145682.P3233704393208232121

`A054041(A047860(n))`
-/

namespace A145682.P3233704393208232121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 (A047860 n).toNat

end

end A145682.P3233704393208232121

/-!
# A145683: Weight distribution of [98,49,16] binary extended quadratic-residue (or QR) code.

The programs for A145683, there is no canonical definition to state claims against.
-/

/-! ## A145683.P13517717477724035964

`A154638(3*n+1)%A150143(A309861(n))`
-/

namespace A145683.P13517717477724035964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154638 (3 * n + 1)) (A150143 (A309861 n).toNat)

end

end A145683.P13517717477724035964

/-! ## A145683.P5706577285844219668

`A235706(A265764(2*n+3)+A258060(n+1))`
-/

namespace A145683.P5706577285844219668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235706 (A265764 (2 * n + 3) + A258060 (n + 1)).toNat

end

end A145683.P5706577285844219668

/-!
# A145685: Weight distribution of [120,60,20] binary extended quadratic-residue (or QR) code.

The programs for A145685, there is no canonical definition to state claims against.
-/

/-! ## A145685.P17475943078748769359

`Δ[or(30, p?[A202979(n+1)])]`
-/

namespace A145685.P17475943078748769359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202979 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 30 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145685.P17475943078748769359

/-! ## A145685.P8551677369445136232

`∑{d}[A034624(A001190(n)), #]`
-/

namespace A145685.P8551677369445136232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034624 (A001190 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A145685.P8551677369445136232

/-!
# A145686: Weight distribution of [152,76,20] binary extended quadratic-residue (or QR) code.

The programs for A145686, there is no canonical definition to state claims against.
-/

/-! ## A145686.P12405828298225426822

`A113935((a(floor(n/2))+n)^n)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A145686.P12405828298225426822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n a =>
  A113935 ((a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) ^ n).toNat

end

end A145686.P12405828298225426822

/-! ## A145686.P9808978205085206440

`and(A051160(n), A113935(5^n))`
-/

namespace A145686.P9808978205085206440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051160 n) (A113935 (5 ^ n))

end

end A145686.P9808978205085206440

/-!
# A145687: Weight distribution of [168,84,24] binary extended quadratic-residue (or QR) code.

The programs for A145687, there is no canonical definition to state claims against.
-/

/-! ## A145687.P15658676974320741578

`C(A141214(C(n, 4)), ∑[n]+(2*n)²)`
-/

namespace A145687.P15658676974320741578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141214 (Nat.choose n 4)).toNat (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n) ^ 2)

end

end A145687.P15658676974320741578

/-! ## A145687.P1216389991722388298

`C(∑[3^(n-2)+3*a(n-2)], A036301(n+1))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A145687.P1216389991722388298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 1, 2] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat (A036301 (n + 1)).toNat

end

end A145687.P1216389991722388298

/-! ## A145687.P12089247179708073752

`C(A051656(n), A022267(n))`
-/

namespace A145687.P12089247179708073752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051656 n).toNat (A022267 n).toNat

end

end A145687.P12089247179708073752

/-!
# A145688: Primitive prime factors of the sequence 2k^2 + 1 in the order that they are found.

The programs for A145688, there is no canonical definition to state claims against.
-/

/-! ## A145688.P14944233822777970861

`p?[A354933(A005899(n))]`
-/

namespace A145688.P14944233822777970861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (A005899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145688.P14944233822777970861

/-! ## A145688.P13457996026035372735

`p?[A033677(Δ[A001845(n)])]`
-/

namespace A145688.P13457996026035372735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145688.P13457996026035372735

/-! ## A145688.P6821378287282869538

`p?[A033677(Δ[A100504(n)])]`
-/

namespace A145688.P6821378287282869538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145688.P6821378287282869538

/-! ## A145688.P3105200849583530521

`p?[A140271(Δ[A001845(n)])]`
-/

namespace A145688.P3105200849583530521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145688.P3105200849583530521

/-! ## A145688.P10612376518798865675

`p?[A348582(Δ[A001845(n)])]`
-/

namespace A145688.P10612376518798865675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145688.P10612376518798865675

/-!
# A145689: Primitive prime factors of the sequence 4k^2 + 1 in the order that they are found.

The programs for A145689, there is no canonical definition to state claims against.
-/

/-! ## A145689.P17114142728031664729

`p?[A259036(2*n)]`
-/

namespace A145689.P17114142728031664729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145689.P17114142728031664729

/-! ## A145689.P1316668802589015633

`p?[A259036(n)-n%2]`
-/

namespace A145689.P1316668802589015633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145689.P1316668802589015633

/-! ## A145689.P5327335530819001916

`p?[A354933((2*n)²+1)]`
-/

namespace A145689.P5327335530819001916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 ((2 * n) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145689.P5327335530819001916

/-! ## A145689.P13412392610700945299

`p?[A259036(n+1)^and(1, n)]`
-/

namespace A145689.P13412392610700945299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145689.P13412392610700945299

/-! ## A145689.P8755218581912348716

`p?[A259036(n)-A000035(n)]`
-/

namespace A145689.P8755218581912348716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145689.P8755218581912348716

/-! ## A145689.P10360731590636407395

`p?[A259036(n)-A270010(n)]`
-/

namespace A145689.P10360731590636407395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n - A270010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145689.P10360731590636407395

/-! ## A145689.P626355922959898500

`p?[gcd(A010674(n), A259036(n))]`
-/

namespace A145689.P626355922959898500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010674 n) (A259036 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145689.P626355922959898500

/-! ## A145689.P10633504120412864855

`p?[lcm(A010689(n), A259036(n))]`
-/

namespace A145689.P10633504120412864855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010689 n) (A259036 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145689.P10633504120412864855

/-!
# A145692: Number of distinct vertex-magic total labelings on cycle C_n.

The programs for A145692, there is no canonical definition to state claims against.
-/

/-! ## A145692.P3890379701166686259

`A130141(2^n)+or(1, n)`
-/

namespace A145692.P3890379701166686259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130141 (2 ^ n) + (Nat.lor 1 n : ℤ)

end

end A145692.P3890379701166686259

/-!
# A145693: Numbers X such that there exists Y in N with X^2=21*Y^2+7.

The programs for A145693, there is no canonical definition to state claims against.
-/

/-! ## A145693.P9153304404001825390

`A041350(4*n+1)`
-/

namespace A145693.P9153304404001825390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041350 (4 * n + 1)

end

end A145693.P9153304404001825390

/-! ## A145693.P16244496075740069457

`14*A144930(n+1)`
-/

namespace A145693.P16244496075740069457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A144930 (n + 1)

end

end A145693.P16244496075740069457

/-! ## A145693.P11953305088113999738

`14*A042457(2*n)`
-/

namespace A145693.P11953305088113999738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A042457 (2 * n)

end

end A145693.P11953305088113999738

/-! ## A145693.P6025647407937733108

`2/7*A144928(n+1)`
-/

namespace A145693.P6025647407937733108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 7 * (A144928 (n + 1) : ℚ)

end

end A145693.P6025647407937733108

/-! ## A145693.P16917184810786290124

`14*A041149(A005843(n))`
-/

namespace A145693.P16917184810786290124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A041149 (A005843 n).toNat

end

end A145693.P16917184810786290124

/-!
# A145694: Numbers Y such that 57*Y^2+19 is a square.

The programs for A145694, there is no canonical definition to state claims against.
-/

/-! ## A145694.P13789116084959809639

`2*A145124(n+1)+1`
-/

namespace A145694.P13789116084959809639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145124 (n + 1) + 1

end

end A145694.P13789116084959809639

/-! ## A145694.P6422384417613007002

`A145124(n+1)+A145124(n+1)+A008683(A014963(n+1))²`
-/

namespace A145694.P6422384417613007002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145124 (n + 1) + (A145124 (n + 1) + A008683 (A014963 (n + 1)).toNat ^ 2)

end

end A145694.P6422384417613007002

/-! ## A145694.P18352457637202541045

`A041424(2*n)/3`
-/

namespace A145694.P18352457637202541045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041424 (2 * n) : ℚ) / 3

end

end A145694.P18352457637202541045

/-! ## A145694.P6248552547206494509

`A042762(2*n)/6`
-/

namespace A145694.P6248552547206494509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042762 (2 * n) : ℚ) / 6

end

end A145694.P6248552547206494509

/-! ## A145694.P1594526732354329787

`Δ[A174759(n+1)/30]`
-/

namespace A145694.P1594526732354329787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174759 (n + 1) : ℚ) / 30

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145694.P1594526732354329787

/-!
# A145695: Numbers X such that there exists Y in N with X^2=111*Y^2+37.

The programs for A145695, there is no canonical definition to state claims against.
-/

/-! ## A145695.P14735634777751482892

`74*A145699(n+1)`
-/

namespace A145695.P14735634777751482892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  74 * A145699 (n + 1)

end

end A145695.P14735634777751482892

/-!
# A145696: Numbers Y such that 111*Y^2+37 is a square.

The programs for A145696, there is no canonical definition to state claims against.
-/

/-! ## A145696.P13190840657527961786

`A041844(2*n)/3`
-/

namespace A145696.P13190840657527961786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041844 (2 * n) : ℚ) / 3

end

end A145696.P13190840657527961786

/-! ## A145696.P1962609215311560395

`2*A145700(n+1)+1`
-/

namespace A145696.P1962609215311560395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145700 (n + 1) + 1

end

end A145696.P1962609215311560395

/-!
# A145697: Numbers n such that there exists x in N with (x+37)^3-x^3=n^2.

The programs for A145697, there is no canonical definition to state claims against.
-/

/-! ## A145697.P18072798817675729459

`74*A145695(n+1)/4`
-/

namespace A145697.P18072798817675729459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (74 * A145695 (n + 1) : ℚ) / 4

end

end A145697.P18072798817675729459

/-!
# A145698: Numbers x such that (x+37)^3 - x^3 is a square.

The programs for A145698, there is no canonical definition to state claims against.
-/

/-! ## A145698.P11493878455126740663

`37*A145700(n+1)`
-/

namespace A145698.P11493878455126740663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * A145700 (n + 1)

end

end A145698.P11493878455126740663

/-!
# A145699: Numbers k such that there exists x in N with (x+1)^3-x^3 = 37*k^2.

The programs for A145699, there is no canonical definition to state claims against.
-/

/-! ## A145699.P17522639235029532400

`A041845(2*n)`
-/

namespace A145699.P17522639235029532400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041845 (2 * n)

end

end A145699.P17522639235029532400

/-! ## A145699.P1235745396724295169

`record[A041845(A078458(n+1))]`
-/

namespace A145699.P1235745396724295169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041845 (A078458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145699.P1235745396724295169

