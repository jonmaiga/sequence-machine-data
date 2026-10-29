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
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A111400: P(P(n)) - P(P(n-1)), where P(n) = (n+1)*(n+2)*(n+3)/6 (see A000292).

The programs for A111400, the canonical program `A111400.P8149038520780946467` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111400 has offset 0).

The definition of A111400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111400.P8149038520780946467

`Δ[C(C(n+1, 3)+3, 3)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111400

/-- `Δ[C(C(n+1, 3)+3, 3)]` -/
def P8149038520780946467.Spec : Prop :=
  ∀ n, P8149038520780946467.a n = A111400 n

theorem P8149038520780946467.correct : P8149038520780946467.Spec := by
  intro n
  simp only [A111400]

end A111400

/-! ## A111400.P8360261717453062082

`Δ[C(∑[C(n, 2)]+3, 3)]`
-/

namespace A111400.P8360261717453062082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 3) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A111400.P8360261717453062082

namespace A111400

/-- `Δ[C(∑[C(n, 2)]+3, 3)]` -/
def P8360261717453062082.Spec : Prop :=
  ∀ n, P8360261717453062082.a n = A111400 n

end A111400

/-! ## A111400.P15760962738129570803

`Δ[C(∑[A161680(n)]+3, 3)]`
-/

namespace A111400.P15760962738129570803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A111400.P15760962738129570803

namespace A111400

/-- `Δ[C(∑[A161680(n)]+3, 3)]` -/
def P15760962738129570803.Spec : Prop :=
  ∀ n, P15760962738129570803.a n = A111400 n

end A111400

/-! ## A111400.P12295253632931903165

`Δ[A000292(∑[C(n, 2)]+1)]`
-/

namespace A111400.P12295253632931903165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111400.P12295253632931903165

namespace A111400

/-- `Δ[A000292(∑[C(n, 2)]+1)]` -/
def P12295253632931903165.Spec : Prop :=
  ∀ n, P12295253632931903165.a n = A111400 n

end A111400

/-! ## A111400.P17772680113007088960

`Δ[A000292(C(n+1, 3)+1)]`
-/

namespace A111400.P17772680113007088960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Nat.choose (n + 1) 3 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111400.P17772680113007088960

namespace A111400

/-- `Δ[A000292(C(n+1, 3)+1)]` -/
def P17772680113007088960.Spec : Prop :=
  ∀ n, P17772680113007088960.a n = A111400 n

end A111400

/-!
# A111401: 

The programs for A111401, there is no canonical definition to state claims against.
-/

/-! ## A111401.P7337036983462729494

`Δ[A000108(A000108(n))]`
-/

namespace A111401.P7337036983462729494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111401.P7337036983462729494

/-!
# A111402: 

The programs for A111402, there is no canonical definition to state claims against.
-/

/-! ## A111402.P11245536060365214265

`Δ[A000110(A000110(n))]`
-/

namespace A111402.P11245536060365214265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A000110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111402.P11245536060365214265

/-!
# A111403: a(n) = f(f(n+1)) - f(f(n)), where f(m) = 2^m.

The programs for A111403, the canonical program `A111403.P13690898260564010013` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111403 has offset 0).

The definition of A111403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111403.P13690898260564010013

`2^(2*2^n)-2^2^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111403

/-- `2^(2*2^n)-2^2^n` -/
def P13690898260564010013.Spec : Prop :=
  ∀ n, P13690898260564010013.a n = A111403 n

theorem P13690898260564010013.correct : P13690898260564010013.Spec := by
  intro n
  simp only [A111403]

end A111403

/-! ## A111403.P15091495015721157290

`Δ[a(n-1)²]` with `a(0)=2`
-/

namespace A111403.P15091495015721157290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A111403.P15091495015721157290

namespace A111403

/-- `Δ[a(n-1)²]` -/
def P15091495015721157290.Spec : Prop :=
  ∀ n, P15091495015721157290.a n = A111403 n

end A111403

/-! ## A111403.P7489527345890717224

`Δ[2^A000079(n)]`
-/

namespace A111403.P7489527345890717224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000079 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111403.P7489527345890717224

namespace A111403

/-- `Δ[2^A000079(n)]` -/
def P7489527345890717224.Spec : Prop :=
  ∀ n, P7489527345890717224.a n = (A111403 n : ℚ)

end A111403

/-! ## A111403.P2891599107555454811

`A020522(A000079(n))`
-/

namespace A111403.P2891599107555454811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 (A000079 n).toNat

end

end A111403.P2891599107555454811

namespace A111403

/-- `A020522(A000079(n))` -/
def P2891599107555454811.Spec : Prop :=
  ∀ n, P2891599107555454811.a n = A111403 n

end A111403

/-!
# A111405: a(n) = f(f(n+1)) - f(f(n)), where f(0) = 0 and f(m) = bigomega(m) = A001222(m) for m > 0.

The programs for A111405, the canonical program `A111405.P1243639223157774270` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111405 has offset 0).

The definition of A111405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111405.P1243639223157774270

`Δ[A167746(round(acot(n)+n))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111405

/-- `Δ[A167746(round(acot(n)+n))]` -/
def P1243639223157774270.Spec : Prop :=
  ∀ n, P1243639223157774270.a n = A111405 n

theorem P1243639223157774270.correct : P1243639223157774270.Spec := by
  intro n
  simp only [A111405]

end A111405

/-! ## A111405.P17741938500036773741

`Δ[A001222(A001222(C(2, n+1)+n))]`
-/

namespace A111405.P17741938500036773741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (Nat.choose 2 (n + 1) + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111405.P17741938500036773741

namespace A111405

/-- `Δ[A001222(A001222(C(2, n+1)+n))]` -/
def P17741938500036773741.Spec : Prop :=
  ∀ n, P17741938500036773741.a n = A111405 n

end A111405

/-! ## A111405.P16412373620072096999

`Δ[A001222(A001222(floor(2/(n+1)+n)))]`
-/

namespace A111405.P16412373620072096999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 ⌊2 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111405.P16412373620072096999

namespace A111405

/-- `Δ[A001222(A001222(floor(2/(n+1)+n)))]` -/
def P16412373620072096999.Spec : Prop :=
  ∀ n, P16412373620072096999.a n = A111405 n

end A111405

/-! ## A111405.P11862943733446655167

`Δ[∑{e}[∑{e}[n, #], #]]`
-/

namespace A111405.P11862943733446655167
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A111405.P11862943733446655167

namespace A111405

/-- `Δ[∑{e}[∑{e}[n, #], #]]` -/
def P11862943733446655167.Spec : Prop :=
  ∀ n, P11862943733446655167.a n = A111405 n

end A111405

/-! ## A111405.P5590779925819850219

`Δ[A167746(A233583(n+1))]`
-/

namespace A111405.P5590779925819850219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167746 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111405.P5590779925819850219

namespace A111405

/-- `Δ[A167746(A233583(n+1))]` -/
def P5590779925819850219.Spec : Prop :=
  ∀ n, P5590779925819850219.a n = A111405 n

end A111405

/-! ## A111405.P4003860545660034116

`Δ[A073855(n)]%A197235(n+1)`
-/

namespace A111405.P4003860545660034116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A197235 (n + 1))

end

end A111405.P4003860545660034116

namespace A111405

/-- `Δ[A073855(n)]%A197235(n+1)` -/
def P4003860545660034116.Spec : Prop :=
  ∀ n, P4003860545660034116.a n = A111405 n

end A111405

/-! ## A111405.P15092420540680908331

`Δ[A001221(A007916(∏{e}[n, 4^#]+1))]`
-/

namespace A111405.P15092420540680908331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007916 (∏ p ∈ Nat.primeFactors (f2 n), 4 ^ Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111405.P15092420540680908331

namespace A111405

/-- `Δ[A001221(A007916(∏{e}[n, 4^#]+1))]` -/
def P15092420540680908331.Spec : Prop :=
  ∀ n, P15092420540680908331.a n = A111405 n

end A111405

/-! ## A111405.P3668600784596270354

`Δ[A073855(n)]%A105588(n)`
-/

namespace A111405.P3668600784596270354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A105588 n)

end

end A111405.P3668600784596270354

namespace A111405

/-- `Δ[A073855(n)]%A105588(n)` -/
def P3668600784596270354.Spec : Prop :=
  ∀ n, P3668600784596270354.a n = A111405 n

end A111405

/-!
# A111406: a(n) = f(f(n+1)) - f(f(n)), where f(m) = pi(m) = A000720(m), with f(0) = 0.

The programs for A111406, the canonical program `A111406.P15762110083741708059` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111406 has offset 0).

The definition of A111406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111406.P556282409885534191

`char[A141138(n+1)]`
-/

namespace A111406.P556282409885534191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P556282409885534191

namespace A111406

/-- `char[A141138(n+1)]` -/
def P556282409885534191.Spec : Prop :=
  ∀ n, (P556282409885534191.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P6823313183631083702

`char[A141138(n)]-char[1]`
-/

namespace A111406.P6823313183631083702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111406.P6823313183631083702

namespace A111406

/-- `char[A141138(n)]-char[1]` -/
def P6823313183631083702.Spec : Prop :=
  ∀ n, P6823313183631083702.a n = A111406 n

end A111406

/-! ## A111406.P8647106899515830199

`char[A006450(n+1)-1]`
-/

namespace A111406.P8647106899515830199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P8647106899515830199

namespace A111406

/-- `char[A006450(n+1)-1]` -/
def P8647106899515830199.Spec : Prop :=
  ∀ n, (P8647106899515830199.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P15762110083741708059

`char[A105562(n+2)-1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A111406

/-- `char[A105562(n+2)-1]` -/
def P15762110083741708059.Spec : Prop :=
  ∀ n, (P15762110083741708059.a n : ℤ) = A111406 n

theorem P15762110083741708059.correct : P15762110083741708059.Spec := by
  intro n
  simp only [A111406]

end A111406

/-! ## A111406.P5196534535025971275

`char[A105574(n+2)-1]`
-/

namespace A111406.P5196534535025971275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P5196534535025971275

namespace A111406

/-- `char[A105574(n+2)-1]` -/
def P5196534535025971275.Spec : Prop :=
  ∀ n, (P5196534535025971275.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P14236580227526092837

`char[A262021(n+1)+n]`
-/

namespace A111406.P14236580227526092837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P14236580227526092837

namespace A111406

/-- `char[A262021(n+1)+n]` -/
def P14236580227526092837.Spec : Prop :=
  ∀ n, (P14236580227526092837.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P6076543365133438058

`val(A360327(n+1), n+2)`
-/

namespace A111406.P6076543365133438058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360327 (n + 1)).toNat (n + 2)

end

end A111406.P6076543365133438058

namespace A111406

/-- `val(A360327(n+1), n+2)` -/
def P6076543365133438058.Spec : Prop :=
  ∀ n, (P6076543365133438058.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P12644160086017815360

`A257994(A118136(n))`
-/

namespace A111406.P12644160086017815360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A118136 n).toNat

end

end A111406.P12644160086017815360

namespace A111406

/-- `A257994(A118136(n))` -/
def P12644160086017815360.Spec : Prop :=
  ∀ n, P12644160086017815360.a n = A111406 n

end A111406

/-! ## A111406.P6289435668290719352

`char[A006093(A007918(n))]`
-/

namespace A111406.P6289435668290719352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A007918 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P6289435668290719352

namespace A111406

/-- `char[A006093(A007918(n))]` -/
def P6289435668290719352.Spec : Prop :=
  ∀ n, (P6289435668290719352.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P1678605514039285759

`char[A006093(A151800(n))]`
-/

namespace A111406.P1678605514039285759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A151800 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P1678605514039285759

namespace A111406

/-- `char[A006093(A151800(n))]` -/
def P1678605514039285759.Spec : Prop :=
  ∀ n, (P1678605514039285759.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P5510997962647347777

`char[A006093(A162753(n))]`
-/

namespace A111406.P5510997962647347777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A162753 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P5510997962647347777

namespace A111406

/-- `char[A006093(A162753(n))]` -/
def P5510997962647347777.Spec : Prop :=
  ∀ n, (P5510997962647347777.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P7289710712077842086

`A257994(A014973(n+1))`
-/

namespace A111406.P7289710712077842086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A014973 (n + 1)).toNat

end

end A111406.P7289710712077842086

namespace A111406

/-- `A257994(A014973(n+1))` -/
def P7289710712077842086.Spec : Prop :=
  ∀ n, P7289710712077842086.a n = A111406 n

end A111406

/-! ## A111406.P13994866640944764238

`A257994(A089026(n+1))`
-/

namespace A111406.P13994866640944764238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A089026 (n + 1)).toNat

end

end A111406.P13994866640944764238

namespace A111406

/-- `A257994(A089026(n+1))` -/
def P13994866640944764238.Spec : Prop :=
  ∀ n, P13994866640944764238.a n = A111406 n

end A111406

/-! ## A111406.P5648759018196761017

`A257994(A135681(n+1))`
-/

namespace A111406.P5648759018196761017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A135681 (n + 1)).toNat

end

end A111406.P5648759018196761017

namespace A111406

/-- `A257994(A135681(n+1))` -/
def P5648759018196761017.Spec : Prop :=
  ∀ n, P5648759018196761017.a n = A111406 n

end A111406

/-! ## A111406.P16639373285557153040

`A257994(A135682(n+1))`
-/

namespace A111406.P16639373285557153040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A135682 (n + 1)).toNat

end

end A111406.P16639373285557153040

namespace A111406

/-- `A257994(A135682(n+1))` -/
def P16639373285557153040.Spec : Prop :=
  ∀ n, P16639373285557153040.a n = A111406 n

end A111406

/-! ## A111406.P6398305425304113946

`A353478(A073898(n+1))`
-/

namespace A111406.P6398305425304113946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (A073898 (n + 1)).toNat

end

end A111406.P6398305425304113946

namespace A111406

/-- `A353478(A073898(n+1))` -/
def P6398305425304113946.Spec : Prop :=
  ∀ n, P6398305425304113946.a n = A111406 n

end A111406

/-! ## A111406.P16412935880049190763

`char[A006093(A000040(n+1))]`
-/

namespace A111406.P16412935880049190763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P16412935880049190763

namespace A111406

/-- `char[A006093(A000040(n+1))]` -/
def P16412935880049190763.Spec : Prop :=
  ∀ n, (P16412935880049190763.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P4774748667110190489

`char[A000010(A006450(n+1))]`
-/

namespace A111406.P4774748667110190489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006450 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P4774748667110190489

namespace A111406

/-- `char[A000010(A006450(n+1))]` -/
def P4774748667110190489.Spec : Prop :=
  ∀ n, (P4774748667110190489.a n : ℤ) = A111406 n

end A111406

/-! ## A111406.P11281989473767514819

`A010051(n+1)*A257994(n+1)`
-/

namespace A111406.P11281989473767514819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A257994 (n + 1)

end

end A111406.P11281989473767514819

namespace A111406

/-- `A010051(n+1)*A257994(n+1)` -/
def P11281989473767514819.Spec : Prop :=
  ∀ n, P11281989473767514819.a n = A111406 n

end A111406

/-! ## A111406.P252618356953173663

`A010051(n+1)*A279952(n+1)`
-/

namespace A111406.P252618356953173663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A279952 (n + 1)

end

end A111406.P252618356953173663

namespace A111406

/-- `A010051(n+1)*A279952(n+1)` -/
def P252618356953173663.Spec : Prop :=
  ∀ n, P252618356953173663.a n = A111406 n

end A111406

/-!
# A111407: a(n) = f(f(n+1)) - f(f(n)), where f(0) = 0 and f(m) = tau(m) = A000005(m) for m > 0.

The programs for A111407, the canonical program `A111407.P14704530425449342072` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111407 has offset 0).

The definition of A111407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111407.P14704530425449342072

`Δ[A032548(a(n-1))+A000005(A000005(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A111407

/-- `Δ[A032548(a(n-1))+A000005(A000005(n))]` -/
def P14704530425449342072.Spec : Prop :=
  ∀ n, P14704530425449342072.a n = A111407 n

theorem P14704530425449342072.correct : P14704530425449342072.Spec := by
  intro n
  simp only [A111407]

end A111407

/-! ## A111407.P1457850351186088337

`Δ[A139551(a(n-1))+A000005(A000005(n))]` with `a(0)=1`
-/

namespace A111407.P1457850351186088337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A139551 (f1 (n - 1)).toNat + A000005 (A000005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111407.P1457850351186088337

namespace A111407

/-- `Δ[A139551(a(n-1))+A000005(A000005(n))]` -/
def P1457850351186088337.Spec : Prop :=
  ∀ n, P1457850351186088337.a n = A111407 n

end A111407

/-! ## A111407.P11443409571778529711

`Δ[A000005(A000005(n*A139551(a(n-1))))]` with `a(0)=0`
-/

namespace A111407.P11443409571778529711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 (A000005 ((n : ℤ) * A139551 (f1 (n - 1)).toNat).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111407.P11443409571778529711

namespace A111407

/-- `Δ[A000005(A000005(n*A139551(a(n-1))))]` -/
def P11443409571778529711.Spec : Prop :=
  ∀ n, P11443409571778529711.a n = A111407 n

end A111407

/-! ## A111407.P6490878714405228234

`Δ[A000005(A000005(n)/A139551(a(n-1)))]` with `a(0)=0`
-/

namespace A111407.P6490878714405228234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 (SequenceMachineLib.roundAway ((A000005 n : ℚ) / (A139551 (f1 (n - 1)).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111407.P6490878714405228234

namespace A111407

/-- `Δ[A000005(A000005(n)/A139551(a(n-1)))]` -/
def P6490878714405228234.Spec : Prop :=
  ∀ n, P6490878714405228234.a n = A111407 n

end A111407

/-! ## A111407.P11743373480017849966

`Δ[A105769(a(n-1)+1)+A000005(A000005(n))]` with `a(0)=1`
-/

namespace A111407.P11743373480017849966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A105769 (f1 (n - 1) + 1).toNat + A000005 (A000005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111407.P11743373480017849966

namespace A111407

/-- `Δ[A105769(a(n-1)+1)+A000005(A000005(n))]` -/
def P11743373480017849966.Spec : Prop :=
  ∀ n, P11743373480017849966.a n = A111407 n

end A111407

/-!
# A111408: f(f(n+1))-f(f(n)), where f(0)=0, and for m>0, f(m) = sigma(m) = A000203(m).

The programs for A111408, the canonical program `A111408.P2533623690227406188` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111408 has offset 0).

The definition of A111408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111408.P2533623690227406188

`A051027(n+1)-∑{d}[∑{d}[n, #], #]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111408

/-- `A051027(n+1)-∑{d}[∑{d}[n, #], #]` -/
def P2533623690227406188.Spec : Prop :=
  ∀ n, P2533623690227406188.a n = A111408 n

theorem P2533623690227406188.correct : P2533623690227406188.Spec := by
  intro n
  simp only [A111408]

end A111408

/-! ## A111408.P10979556566150399750

`Δ[A051027(A028310(n))%(n+1)²]`
-/

namespace A111408.P10979556566150399750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051027 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111408.P10979556566150399750

namespace A111408

/-- `Δ[A051027(A028310(n))%(n+1)²]` -/
def P10979556566150399750.Spec : Prop :=
  ∀ n, P10979556566150399750.a n = A111408 n

end A111408

/-! ## A111408.P14952060013095179121

`A000203(A000203(n+1))-∑{d}[∑{d}[n, #], #]`
-/

namespace A111408.P14952060013095179121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A111408.P14952060013095179121

namespace A111408

/-- `A000203(A000203(n+1))-∑{d}[∑{d}[n, #], #]` -/
def P14952060013095179121.Spec : Prop :=
  ∀ n, P14952060013095179121.a n = A111408 n

end A111408

/-! ## A111408.P1525881600011002432

`A000007(n)+Δ[A051027(A028310(n))]`
-/

namespace A111408.P1525881600011002432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A111408.P1525881600011002432

namespace A111408

/-- `A000007(n)+Δ[A051027(A028310(n))]` -/
def P1525881600011002432.Spec : Prop :=
  ∀ n, P1525881600011002432.a n = A111408 n

end A111408

/-! ## A111408.P7518328746658750123

`A051027(n+1)+A000007(n)-A051027(A028310(n))`
-/

namespace A111408.P7518328746658750123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) + (A000007 n - A051027 (A028310 n).toNat)

end

end A111408.P7518328746658750123

namespace A111408

/-- `A051027(n+1)+A000007(n)-A051027(A028310(n))` -/
def P7518328746658750123.Spec : Prop :=
  ∀ n, P7518328746658750123.a n = A111408 n

end A111408

/-! ## A111408.P1834856298281297857

`A051027(n+1)+A051027(A028310(n))*A057428(n)`
-/

namespace A111408.P1834856298281297857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) + A051027 (A028310 n).toNat * A057428 n

end

end A111408.P1834856298281297857

namespace A111408

/-- `A051027(n+1)+A051027(A028310(n))*A057428(n)` -/
def P1834856298281297857.Spec : Prop :=
  ∀ n, P1834856298281297857.a n = A111408 n

end A111408

/-! ## A111408.P11201737181999306072

`Δ[∑{d}[∑{d}[n, #], #]]`
-/

namespace A111408.P11201737181999306072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A111408.P11201737181999306072

namespace A111408

/-- `Δ[∑{d}[∑{d}[n, #], #]]` -/
def P11201737181999306072.Spec : Prop :=
  ∀ n, P11201737181999306072.a n = A111408 n

end A111408

/-! ## A111408.P13634315150035412877

`Δ[A051027(A028310(n))-A057428(n)]`
-/

namespace A111408.P13634315150035412877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111408.P13634315150035412877

namespace A111408

/-- `Δ[A051027(A028310(n))-A057428(n)]` -/
def P13634315150035412877.Spec : Prop :=
  ∀ n, P13634315150035412877.a n = A111408 n

end A111408

/-! ## A111408.P2432229829379425610

`A169585(n)+Δ[A051027(A233583(n+1))]`
-/

namespace A111408.P2432229829379425610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n + (f1 (n + 1) - f1 n)

end

end A111408.P2432229829379425610

namespace A111408

/-- `A169585(n)+Δ[A051027(A233583(n+1))]` -/
def P2432229829379425610.Spec : Prop :=
  ∀ n, P2432229829379425610.a n = A111408 n

end A111408

/-!
# A111409: a(n) = f(f(n+1)) - f(f(n)), where f(0)=0, and for m>0, f(m) = phi(m) = A000010(m).

The programs for A111409, the canonical program `A111409.P14392495408672039637` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111409 has offset 0).

The definition of A111409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111409.P14392495408672039637

`1-Δ[A219029(A028310(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111409

/-- `1-Δ[A219029(A028310(n))]` -/
def P14392495408672039637.Spec : Prop :=
  ∀ n, P14392495408672039637.a n = A111409 n

theorem P14392495408672039637.correct : P14392495408672039637.Spec := by
  intro n
  simp only [A111409]

end A111409

/-! ## A111409.P454342324780449471

`A219029(A028310(n))+1-A219029(n+1)`
-/

namespace A111409.P454342324780449471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (A028310 n).toNat + (1 - A219029 (n + 1))

end

end A111409.P454342324780449471

namespace A111409

/-- `A219029(A028310(n))+1-A219029(n+1)` -/
def P454342324780449471.Spec : Prop :=
  ∀ n, P454342324780449471.a n = A111409 n

end A111409

/-! ## A111409.P7708275176655619466

`Δ[A000010(A000010(A000007(a(n-1))+n))]` with `a(0)=0`
-/

namespace A111409.P7708275176655619466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 (A000010 (A000007 (f1 (n - 1)).toNat + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111409.P7708275176655619466

namespace A111409

/-- `Δ[A000010(A000010(A000007(a(n-1))+n))]` -/
def P7708275176655619466.Spec : Prop :=
  ∀ n, P7708275176655619466.a n = A111409 n

end A111409

/-! ## A111409.P15622736855197111387

`Δ[A000010(A225530(n))%(n+1)]`
-/

namespace A111409.P15622736855197111387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A225530 n).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111409.P15622736855197111387

namespace A111409

/-- `Δ[A000010(A225530(n))%(n+1)]` -/
def P15622736855197111387.Spec : Prop :=
  ∀ n, P15622736855197111387.a n = A111409 n

end A111409

/-! ## A111409.P12914212657467963825

`A000007(n)+Δ[A000010(A225530(n))]`
-/

namespace A111409.P12914212657467963825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A225530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A111409.P12914212657467963825

namespace A111409

/-- `A000007(n)+Δ[A000010(A225530(n))]` -/
def P12914212657467963825.Spec : Prop :=
  ∀ n, P12914212657467963825.a n = A111409 n

end A111409

/-! ## A111409.P414213320186580827

`Δ[A057427(n)+A000010(A225530(n))]`
-/

namespace A111409.P414213320186580827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000010 (A225530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111409.P414213320186580827

namespace A111409

/-- `Δ[A057427(n)+A000010(A225530(n))]` -/
def P414213320186580827.Spec : Prop :=
  ∀ n, P414213320186580827.a n = A111409 n

end A111409

/-! ## A111409.P16508164929292876710

`Δ[A055034(A225530(n))%A005408(n)]`
-/

namespace A111409.P16508164929292876710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055034 (A225530 n).toNat) (A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111409.P16508164929292876710

namespace A111409

/-- `Δ[A055034(A225530(n))%A005408(n)]` -/
def P16508164929292876710.Spec : Prop :=
  ∀ n, P16508164929292876710.a n = A111409 n

end A111409

/-! ## A111409.P3240628418922392806

`Δ[A000010(A000010(A137734(n²)))%(n+1)]`
-/

namespace A111409.P3240628418922392806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000010 (A137734 (n ^ 2)).toNat).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111409.P3240628418922392806

namespace A111409

/-- `Δ[A000010(A000010(A137734(n²)))%(n+1)]` -/
def P3240628418922392806.Spec : Prop :=
  ∀ n, P3240628418922392806.a n = A111409 n

end A111409

/-! ## A111409.P2322096138427552964

`Δ[A000010(A000010(A137735(n²)))%(n+1)]`
-/

namespace A111409.P2322096138427552964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000010 (A137735 (n ^ 2)).toNat).toNat) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111409.P2322096138427552964

namespace A111409

/-- `Δ[A000010(A000010(A137735(n²)))%(n+1)]` -/
def P2322096138427552964.Spec : Prop :=
  ∀ n, P2322096138427552964.a n = A111409 n

end A111409

/-!
# A111411: f(f(n+1))-f(f(n)), where f(m) = partition(m) = A000041(m).

The programs for A111411, there is no canonical definition to state claims against.
-/

/-! ## A111411.P6046485788527646668

`Δ[A058699(n)]`
-/

namespace A111411.P6046485788527646668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111411.P6046485788527646668

/-! ## A111411.P12319351073941588588

`Δ[A000041(A000041(n))]`
-/

namespace A111411.P12319351073941588588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111411.P12319351073941588588

/-! ## A111411.P10613702447529403380

`Δ[A035363(A139582(n))]`
-/

namespace A111411.P10613702447529403380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A139582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111411.P10613702447529403380

/-! ## A111411.P4873141650735586934

`Δ[A000065(A213598(n))]`
-/

namespace A111411.P4873141650735586934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A213598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111411.P4873141650735586934

/-! ## A111411.P5350959235215368403

`Δ[A000065(∑[A002865(n)])]`
-/

namespace A111411.P5350959235215368403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111411.P5350959235215368403

/-!
# A111412: a(n) = f(f(n+1))-f(f(n)), where f(m) = wt(m) = A000120(m).

The programs for A111412, the canonical program `A111412.P12502365492224334232` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111412 has offset 0).

The definition of A111412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111412.P12502365492224334232

`A000120(A000120(n+1))-A000120(A000120(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111412

/-- `A000120(A000120(n+1))-A000120(A000120(n))` -/
def P12502365492224334232.Spec : Prop :=
  ∀ n, P12502365492224334232.a n = A111412 n

theorem P12502365492224334232.correct : P12502365492224334232.Spec := by
  intro n
  simp only [A111412]

end A111412

/-! ## A111412.P3591798685441797589

`Δ[A054868(n)]`
-/

namespace A111412.P3591798685441797589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P3591798685441797589

namespace A111412

/-- `Δ[A054868(n)]` -/
def P3591798685441797589.Spec : Prop :=
  ∀ n, P3591798685441797589.a n = A111412 n

end A111412

/-! ## A111412.P5976560671793359891

`Δ[A000120(A000120(n))]`
-/

namespace A111412.P5976560671793359891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P5976560671793359891

namespace A111412

/-- `Δ[A000120(A000120(n))]` -/
def P5976560671793359891.Spec : Prop :=
  ∀ n, P5976560671793359891.a n = A111412 n

theorem P5976560671793359891.correct : P5976560671793359891.Spec := by
  intro n
  simp only [A111412, Nat.add_sub_cancel, A111412.P5976560671793359891.f1, A111412.P5976560671793359891.a, A111412.P12502365492224334232.a, SequenceMachineLib.memo_apply]

end A111412

/-! ## A111412.P10144802718288197250

`A054868(n+1)-A054868(n)`
-/

namespace A111412.P10144802718288197250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (n + 1) - A054868 n

end

end A111412.P10144802718288197250

namespace A111412

/-- `A054868(n+1)-A054868(n)` -/
def P10144802718288197250.Spec : Prop :=
  ∀ n, P10144802718288197250.a n = A111412 n

end A111412

/-! ## A111412.P12654389756823768442

`Δ[A063787(A063787(n+1))]`
-/

namespace A111412.P12654389756823768442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A063787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P12654389756823768442

namespace A111412

/-- `Δ[A063787(A063787(n+1))]` -/
def P12654389756823768442.Spec : Prop :=
  ∀ n, P12654389756823768442.a n = A111412 n

end A111412

/-! ## A111412.P8594026005354107249

`Δ[A131762(A131762(n)-1)]`
-/

namespace A111412.P8594026005354107249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 (A131762 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P8594026005354107249

namespace A111412

/-- `Δ[A131762(A131762(n)-1)]` -/
def P8594026005354107249.Spec : Prop :=
  ∀ n, P8594026005354107249.a n = A111412 n

end A111412

/-! ## A111412.P1910194437633672206

`Δ[A131762(A131762(2*n+1))]`
-/

namespace A111412.P1910194437633672206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131762 (A131762 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P1910194437633672206

namespace A111412

/-- `Δ[A131762(A131762(2*n+1))]` -/
def P1910194437633672206.Spec : Prop :=
  ∀ n, P1910194437633672206.a n = A111412 n

end A111412

/-! ## A111412.P13841631728739137407

`Δ[A064547(A048883(n))]`
-/

namespace A111412.P13841631728739137407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P13841631728739137407

namespace A111412

/-- `Δ[A064547(A048883(n))]` -/
def P13841631728739137407.Spec : Prop :=
  ∀ n, P13841631728739137407.a n = A111412 n

end A111412

/-! ## A111412.P228437811820666954

`Δ[A001221(A102376(n)+6)]`
-/

namespace A111412.P228437811820666954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102376 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P228437811820666954

namespace A111412

/-- `Δ[A001221(A102376(n)+6)]` -/
def P228437811820666954.Spec : Prop :=
  ∀ n, P228437811820666954.a n = A111412 n

end A111412

/-! ## A111412.P8194089157290512220

`Δ[A001222(A102376(n)+6)]`
-/

namespace A111412.P8194089157290512220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A102376 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P8194089157290512220

namespace A111412

/-- `Δ[A001222(A102376(n)+6)]` -/
def P8194089157290512220.Spec : Prop :=
  ∀ n, P8194089157290512220.a n = A111412 n

end A111412

/-! ## A111412.P4004095454253525837

`Δ[A001221(or(1, A001316(n)²))]`
-/

namespace A111412.P4004095454253525837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A001316 n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P4004095454253525837

namespace A111412

/-- `Δ[A001221(or(1, A001316(n)²))]` -/
def P4004095454253525837.Spec : Prop :=
  ∀ n, P4004095454253525837.a n = A111412 n

end A111412

/-! ## A111412.P359460257464148099

`Δ[A001221(A256135(n)+1)]`
-/

namespace A111412.P359460257464148099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A256135 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P359460257464148099

namespace A111412

/-- `Δ[A001221(A256135(n)+1)]` -/
def P359460257464148099.Spec : Prop :=
  ∀ n, P359460257464148099.a n = A111412 n

end A111412

/-!
# A111413: a(n) = f(f(n+1))-f(f(n)), where f(m) = Euler(m) = A000111(m).

The programs for A111413, there is no canonical definition to state claims against.
-/

/-! ## A111413.P514995643077706204

`Δ[A000111(round(2*n!*(2/π)^(n+1)))]`
-/

namespace A111413.P514995643077706204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (SequenceMachineLib.roundAway ((2 * Nat.factorial n : ℝ) * (2 / Real.pi) ^ (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111413.P514995643077706204

/-!
# A111414: f(f(n+1))-f(f(n)), where f(m) = binary partition(m) = A000123(m).

The programs for A111414, there is no canonical definition to state claims against.
-/

/-! ## A111414.P12096308316069669417

`Δ[A000123(A000123(n))]`
-/

namespace A111414.P12096308316069669417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A000123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111414.P12096308316069669417

/-! ## A111414.P7095738116663419769

`A000123(A000123(n+1))-A000123(A000123(n))`
-/

namespace A111414.P7095738116663419769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A000123 (n + 1)).toNat - A000123 (A000123 n).toNat

end

end A111414.P7095738116663419769

/-! ## A111414.P957918685680609169

`Δ[2*A033485(A018819(2*n))]`
-/

namespace A111414.P957918685680609169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033485 (A018819 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111414.P957918685680609169

/-! ## A111414.P11066395449797794056

`Δ[A018819(A346912(n)+1)]`
-/

namespace A111414.P11066395449797794056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A346912 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111414.P11066395449797794056

/-! ## A111414.P14563952257252198649

`Δ[A018819(2*A018819(2*n))]`
-/

namespace A111414.P14563952257252198649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (2 * A018819 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111414.P14563952257252198649

/-!
# A111415: a(n) = f(f(n+1)) - f(f(n)), where f(m) = Pell(m) = A000129(m).

The programs for A111415, there is no canonical definition to state claims against.
-/

/-! ## A111415.P16980592130645530601

`Δ[A393297(n)]`
-/

namespace A111415.P16980592130645530601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111415.P16980592130645530601

/-! ## A111415.P8699294755106116580

`Δ[A000129(A000129(n))]`
-/

namespace A111415.P8699294755106116580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A000129 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111415.P8699294755106116580

/-! ## A111415.P6752591013673735199

`Δ[A135153(A052542(n))]`
-/

namespace A111415.P6752591013673735199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A052542 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111415.P6752591013673735199

/-!
# A111417: a(n) = A034869(n) - A008311(n).

The programs for A111417, the canonical program `A111417.P11402666711727375550` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111417 has offset 0).

The definition of A111417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008311, A034869, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111417.P11402666711727375550

`A034869(n)-A008311(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A111417

/-- `A034869(n)-A008311(n)` -/
def P11402666711727375550.Spec : Prop :=
  ∀ n, P11402666711727375550.a n = A111417 n

theorem P11402666711727375550.correct : P11402666711727375550.Spec := by
  intro n
  simp only [A111417]

end A111417

/-! ## A111417.P3126503009701268418

`char[A065420(n)]*A008311(n)`
-/

namespace A111417.P3126503009701268418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065420 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008311 n

end

end A111417.P3126503009701268418

namespace A111417

/-- `char[A065420(n)]*A008311(n)` -/
def P3126503009701268418.Spec : Prop :=
  ∀ n, P3126503009701268418.a n = A111417 n

end A111417

/-! ## A111417.P6095144015713880228

`A138364(∑[A073424(A004526(n))])`
-/

namespace A111417.P6095144015713880228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111417.P6095144015713880228

namespace A111417

/-- `A138364(∑[A073424(A004526(n))])` -/
def P6095144015713880228.Spec : Prop :=
  ∀ n, P6095144015713880228.a n = A111417 n

end A111417

/-! ## A111417.P5070788720448922736

`C(A285118(2*n), A285116(2*n))*A285116(2*n)`
-/

namespace A111417.P5070788720448922736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A285118 (2 * n)).toNat (A285116 (2 * n)).toNat : ℤ) * A285116 (2 * n)

end

end A111417.P5070788720448922736

namespace A111417

/-- `C(A285118(2*n), A285116(2*n))*A285116(2*n)` -/
def P5070788720448922736.Spec : Prop :=
  ∀ n, P5070788720448922736.a n = A111417 n

end A111417

/-! ## A111417.P14432904766246675924

`A097805(A003485(n*A005369(n)))`
-/

namespace A111417.P14432904766246675924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A003485 ((n : ℤ) * A005369 n).toNat).toNat

end

end A111417.P14432904766246675924

namespace A111417

/-- `A097805(A003485(n*A005369(n)))` -/
def P14432904766246675924.Spec : Prop :=
  ∀ n, P14432904766246675924.a n = A111417 n

end A111417

/-! ## A111417.P6129103369188132647

`A097805(A005408(n*A005369(n)))`
-/

namespace A111417.P6129103369188132647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A005408 ((n : ℤ) * A005369 n).toNat).toNat

end

end A111417.P6129103369188132647

namespace A111417

/-- `A097805(A005408(n*A005369(n)))` -/
def P6129103369188132647.Spec : Prop :=
  ∀ n, P6129103369188132647.a n = A111417 n

end A111417

/-! ## A111417.P10088084741965134876

`A097805(A059010(n*A005369(n)))`
-/

namespace A111417.P10088084741965134876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A059010 ((n : ℤ) * A005369 n).toNat).toNat

end

end A111417.P10088084741965134876

namespace A111417

/-- `A097805(A059010(n*A005369(n)))` -/
def P10088084741965134876.Spec : Prop :=
  ∀ n, P10088084741965134876.a n = A111417 n

end A111417

/-! ## A111417.P1237716477944076776

`A097805(A212439(n*A005369(n)))`
-/

namespace A111417.P1237716477944076776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A212439 ((n : ℤ) * A005369 n).toNat).toNat

end

end A111417.P1237716477944076776

namespace A111417

/-- `A097805(A212439(n*A005369(n)))` -/
def P1237716477944076776.Spec : Prop :=
  ∀ n, P1237716477944076776.a n = A111417 n

end A111417

/-! ## A111417.P7992060701609832093

`A097805(A257088(n*A005369(n)))`
-/

namespace A111417.P7992060701609832093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A257088 ((n : ℤ) * A005369 n).toNat).toNat

end

end A111417.P7992060701609832093

namespace A111417

/-- `A097805(A257088(n*A005369(n)))` -/
def P7992060701609832093.Spec : Prop :=
  ∀ n, P7992060701609832093.a n = A111417 n

end A111417

/-! ## A111417.P3965346289483694258

`A005369(n)*A097805(2*n+1)`
-/

namespace A111417.P3965346289483694258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A097805 (2 * n + 1)

end

end A111417.P3965346289483694258

namespace A111417

/-- `A005369(n)*A097805(2*n+1)` -/
def P3965346289483694258.Spec : Prop :=
  ∀ n, P3965346289483694258.a n = A111417 n

end A111417

/-! ## A111417.P16476644884334852498

`A245667(A008619(n*A005369(n)))`
-/

namespace A111417.P16476644884334852498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A008619 ((n : ℤ) * A005369 n).toNat).toNat

end

end A111417.P16476644884334852498

namespace A111417

/-- `A245667(A008619(n*A005369(n)))` -/
def P16476644884334852498.Spec : Prop :=
  ∀ n, P16476644884334852498.a n = A111417 n

end A111417

/-!
# A111418: Right-hand side of odd-numbered rows of Pascal's triangle.

The programs for A111418, the canonical program `A111418.P12366176547225755175` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111418 has offset 0).

The definition of A111418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111418.P12366176547225755175

`C(2*row(n)+1, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111418

/-- `C(2*row(n)+1, row(n)-col(n))` -/
def P12366176547225755175.Spec : Prop :=
  ∀ n, (P12366176547225755175.a n : ℤ) = A111418 n

theorem P12366176547225755175.correct : P12366176547225755175.Spec := by
  intro n
  simp only [A111418]

end A111418

/-! ## A111418.P13777366461663460282

`abs(A113187(n))`
-/

namespace A111418.P13777366461663460282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113187 n|

end

end A111418.P13777366461663460282

namespace A111418

/-- `abs(A113187(n))` -/
def P13777366461663460282.Spec : Prop :=
  ∀ n, P13777366461663460282.a n = A111418 n

end A111418

/-! ## A111418.P3014806432795613513

`A097807(n)*A113187(n)`
-/

namespace A111418.P3014806432795613513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A113187 n

end

end A111418.P3014806432795613513

namespace A111418

/-- `A097807(n)*A113187(n)` -/
def P3014806432795613513.Spec : Prop :=
  ∀ n, P3014806432795613513.a n = A111418 n

end A111418

/-! ## A111418.P10030896524487308627

`gcd(A000038(n), A113187(n))`
-/

namespace A111418.P10030896524487308627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A113187 n)

end

end A111418.P10030896524487308627

namespace A111418

/-- `gcd(A000038(n), A113187(n))` -/
def P10030896524487308627.Spec : Prop :=
  ∀ n, (P10030896524487308627.a n : ℤ) = A111418 n

end A111418

/-! ## A111418.P16383489497211118941

`lcm(A020985(n), A113187(n))`
-/

namespace A111418.P16383489497211118941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A113187 n)

end

end A111418.P16383489497211118941

namespace A111418

/-- `lcm(A020985(n), A113187(n))` -/
def P16383489497211118941.Spec : Prop :=
  ∀ n, (P16383489497211118941.a n : ℤ) = A111418 n

end A111418

/-! ## A111418.P17568036633484651011

`A103245(n)/A144224(n+1)`
-/

namespace A111418.P17568036633484651011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103245 n : ℚ) / (A144224 (n + 1) : ℚ)

end

end A111418.P17568036633484651011

namespace A111418

/-- `A103245(n)/A144224(n+1)` -/
def P17568036633484651011.Spec : Prop :=
  ∀ n, P17568036633484651011.a n = (A111418 n : ℚ)

end A111418

/-! ## A111418.P2524658921802500392

`2*A094527(n)-A039599(n)`
-/

namespace A111418.P2524658921802500392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094527 n - A039599 n

end

end A111418.P2524658921802500392

namespace A111418

/-- `2*A094527(n)-A039599(n)` -/
def P2524658921802500392.Spec : Prop :=
  ∀ n, P2524658921802500392.a n = A111418 n

end A111418

/-! ## A111418.P10258629535596054125

`A122366(A061579(n))`
-/

namespace A111418.P10258629535596054125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A061579 n).toNat

end

end A111418.P10258629535596054125

namespace A111418

/-- `A122366(A061579(n))` -/
def P10258629535596054125.Spec : Prop :=
  ∀ n, P10258629535596054125.a n = A111418 n

end A111418

/-! ## A111418.P1891946139781342577

`A122366(A038722(n+1)-1)`
-/

namespace A111418.P1891946139781342577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A038722 (n + 1) - 1).toNat

end

end A111418.P1891946139781342577

namespace A111418

/-- `A122366(A038722(n+1)-1)` -/
def P1891946139781342577.Spec : Prop :=
  ∀ n, P1891946139781342577.a n = A111418 n

end A111418

/-! ## A111418.P11491728628283627173

`A122366(A038722(n+2))`
-/

namespace A111418.P11491728628283627173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122366 (A038722 (n + 2)).toNat

end

end A111418.P11491728628283627173

namespace A111418

/-- `A122366(A038722(n+2))` -/
def P11491728628283627173.Spec : Prop :=
  ∀ n, P11491728628283627173.a n = A111418 n

end A111418

/-! ## A111418.P9464833981428939691

`C(A005408(A003056(n)), A025581(n))`
-/

namespace A111418.P9464833981428939691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 (A003056 n).toNat).toNat (A025581 n).toNat

end

end A111418.P9464833981428939691

namespace A111418

/-- `C(A005408(A003056(n)), A025581(n))` -/
def P9464833981428939691.Spec : Prop :=
  ∀ n, (P9464833981428939691.a n : ℤ) = A111418 n

end A111418

/-! ## A111418.P14258957356029978347

`C(A003056(n)+A002024(n+1), A025581(n))`
-/

namespace A111418.P14258957356029978347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + A002024 (n + 1)).toNat (A025581 n).toNat

end

end A111418.P14258957356029978347

namespace A111418

/-- `C(A003056(n)+A002024(n+1), A025581(n))` -/
def P14258957356029978347.Spec : Prop :=
  ∀ n, (P14258957356029978347.a n : ℤ) = A111418 n

end A111418

/-! ## A111418.P5057803813156901228

`C(A094727(n+1)+A025581(n), A025581(n))`
-/

namespace A111418.P5057803813156901228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1) + A025581 n).toNat (A025581 n).toNat

end

end A111418.P5057803813156901228

namespace A111418

/-- `C(A094727(n+1)+A025581(n), A025581(n))` -/
def P5057803813156901228.Spec : Prop :=
  ∀ n, (P5057803813156901228.a n : ℤ) = A111418 n

end A111418

/-! ## A111418.P5802731612873769767

`A014413(A004201(n+1))`
-/

namespace A111418.P5802731612873769767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A004201 (n + 1)).toNat

end

end A111418.P5802731612873769767

namespace A111418

/-- `A014413(A004201(n+1))` -/
def P5802731612873769767.Spec : Prop :=
  ∀ n, P5802731612873769767.a n = A111418 n

end A111418

/-! ## A111418.P8809202139954692306

`A014413(A061885(n)+1)`
-/

namespace A111418.P8809202139954692306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A061885 n + 1).toNat

end

end A111418.P8809202139954692306

namespace A111418

/-- `A014413(A061885(n)+1)` -/
def P8809202139954692306.Spec : Prop :=
  ∀ n, P8809202139954692306.a n = A111418 n

end A111418

/-! ## A111418.P10091460128368940470

`A014413(A061885(n+1))`
-/

namespace A111418.P10091460128368940470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A061885 (n + 1)).toNat

end

end A111418.P10091460128368940470

namespace A111418

/-- `A014413(A061885(n+1))` -/
def P10091460128368940470.Spec : Prop :=
  ∀ n, P10091460128368940470.a n = A111418 n

end A111418

/-! ## A111418.P3295425866795255054

`A077227(A292565(n+1))`
-/

namespace A111418.P3295425866795255054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077227 (A292565 (n + 1)).toNat

end

end A111418.P3295425866795255054

namespace A111418

/-- `A077227(A292565(n+1))` -/
def P3295425866795255054.Spec : Prop :=
  ∀ n, P3295425866795255054.a n = A111418 n

end A111418

/-! ## A111418.P14837385954906320052

`A008311(A064801(n+1))`
-/

namespace A111418.P14837385954906320052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A064801 (n + 1)).toNat

end

end A111418.P14837385954906320052

namespace A111418

/-- `A008311(A064801(n+1))` -/
def P14837385954906320052.Spec : Prop :=
  ∀ n, P14837385954906320052.a n = A111418 n

end A111418

/-! ## A111418.P13647906902569941609

`A067802(n)/A039599(n)`
-/

namespace A111418.P13647906902569941609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067802 n : ℚ) / (A039599 n : ℚ)

end

end A111418.P13647906902569941609

namespace A111418

/-- `A067802(n)/A039599(n)` -/
def P13647906902569941609.Spec : Prop :=
  ∀ n, P13647906902569941609.a n = (A111418 n : ℚ)

end A111418

/-! ## A111418.P8697775405801902935

`A074909(A061579(n)+A292564(n)-n)`
-/

namespace A111418.P8697775405801902935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A061579 n + (A292564 n - (n : ℤ))).toNat

end

end A111418.P8697775405801902935

namespace A111418

/-- `A074909(A061579(n)+A292564(n)-n)` -/
def P8697775405801902935.Spec : Prop :=
  ∀ n, P8697775405801902935.a n = A111418 n

end A111418

/-!
# A111420: a(n) = Sum_{q=0..n} Stirling2(n+1,q)^2*q!.

The programs for A111420, there is no canonical definition to state claims against.
-/

/-! ## A111420.P16909048974142079570

`A023997(n+1)-∏[n+1]`
-/

namespace A111420.P16909048974142079570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023997 (n + 1) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111420.P16909048974142079570

/-!
# A111421: a(n) = n-th decimal digit + 1 of the fractional part formed by the square root of the n-th prime.

The programs for A111421, the canonical program `A111421.P15893860715280076949` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111421 has offset 2).

The definition of A111421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111421.P15893860715280076949

`(A071901(n+1)+1)%10`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111421

/-- `(A071901(n+1)+1)%10` -/
def P15893860715280076949.Spec : Prop :=
  ∀ n, P15893860715280076949.a n = A111421 (n + 2)

theorem P15893860715280076949.correct : P15893860715280076949.Spec := by
  intro n
  simp only [A111421, Nat.add_sub_cancel]

end A111421

/-! ## A111421.P15850238373490781866

`A010879(A071901(n+1)+A071158(n+1))`
-/

namespace A111421.P15850238373490781866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A071901 (n + 1) + A071158 (n + 1)).toNat

end

end A111421.P15850238373490781866

namespace A111421

/-- `A010879(A071901(n+1)+A071158(n+1))` -/
def P15850238373490781866.Spec : Prop :=
  ∀ n, P15850238373490781866.a n = A111421 (n + 2)

end A111421

/-! ## A111421.P6637453475140003089

`A071901(n+1)+A245794(n)!`
-/

namespace A111421.P6637453475140003089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071901 (n + 1) + (Nat.factorial (A245794 n).toNat : ℤ)

end

end A111421.P6637453475140003089

namespace A111421

/-- `A071901(n+1)+A245794(n)!` -/
def P6637453475140003089.Spec : Prop :=
  ∀ n, P6637453475140003089.a n = A111421 (n + 2)

end A111421

/-! ## A111421.P8180588037067920123

`A173557(A011782(n))+A071901(n+1)`
-/

namespace A111421.P8180588037067920123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A011782 n).toNat + A071901 (n + 1)

end

end A111421.P8180588037067920123

namespace A111421

/-- `A173557(A011782(n))+A071901(n+1)` -/
def P8180588037067920123.Spec : Prop :=
  ∀ n, P8180588037067920123.a n = A111421 (n + 2)

end A111421

/-! ## A111421.P1425018636244644284

`A071901(n+1)+A035263(A152046(n))`
-/

namespace A111421.P1425018636244644284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071901 (n + 1) + A035263 (A152046 n).toNat

end

end A111421.P1425018636244644284

namespace A111421

/-- `A071901(n+1)+A035263(A152046(n))` -/
def P1425018636244644284.Spec : Prop :=
  ∀ n, P1425018636244644284.a n = A111421 (n + 2)

end A111421

/-!
# A111424: Sum_{i=1..n} (2i)!/i!.

The programs for A111424, there is no canonical definition to state claims against.
-/

/-! ## A111424.P13498453660091585629

`∑[∏[4*n+2]]`
-/

namespace A111424.P13498453660091585629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111424.P13498453660091585629

/-! ## A111424.P12856751384803120912

`abs(∑[∏[a(n-1)+4]])` with `a(0)=2`
-/

namespace A111424.P12856751384803120912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111424.P12856751384803120912

/-! ## A111424.P5881956316971656026

`floor(∑[∏[a(n-1)+4]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A111424.P5881956316971656026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111424.P5881956316971656026

/-! ## A111424.P702242088471151147

`ceil(∑[∏[a(n-1)+4]])` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A111424.P702242088471151147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111424.P702242088471151147

/-! ## A111424.P2028218145815886870

`round(∑[∏[a(n-1)+4]])` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A111424.P2028218145815886870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111424.P2028218145815886870

/-! ## A111424.P7081935820689905338

`∏[4*n+2]+a(n-1)` with `a(0)=2`
-/

namespace A111424.P7081935820689905338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A111424.P7081935820689905338

/-! ## A111424.P1426568983256078075

`floor(∑[(4*n+2)*a(n-1)])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A111424.P1426568983256078075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 * n + 2) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111424.P1426568983256078075

/-! ## A111424.P14285275527254625449

`abs(∑[2*a(n-1)*Δ[n²]])` with `a(0)=2`
-/

namespace A111424.P14285275527254625449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * (f1 (n - 1) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A111424.P14285275527254625449

/-! ## A111424.P15063033897484600645

`2*∑[(n+1)!*C(Δ[n²], n)]`
-/

namespace A111424.P15063033897484600645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111424.P15063033897484600645

/-! ## A111424.P14287567565279741790

`2*∑[2*(2*n+1)*a(n-1)]` with `a(0)=1`
-/

namespace A111424.P14287567565279741790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((2 * n + 1) * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111424.P14287567565279741790

/-!
# A111425: a(n) = tribonacci(Fibonacci(n)).

The programs for A111425, the canonical program `A111425.P17236180554162178989` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111425 has offset 0).

The definition of A111425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111425.P17236180554162178989

`A000073(A000045(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111425

/-- `A000073(A000045(n))` -/
def P17236180554162178989.Spec : Prop :=
  ∀ n, P17236180554162178989.a n = A111425 n

theorem P17236180554162178989.correct : P17236180554162178989.Spec := by
  intro n
  simp only [A111425]

end A111425

/-! ## A111425.P9023898952060244767

`A000073(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A111425.P9023898952060244767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A111425.P9023898952060244767

namespace A111425

/-- `A000073(∑[a(n-1)-(1-a(n-2))]-n)` -/
def P9023898952060244767.Spec : Prop :=
  ∀ n, P9023898952060244767.a n = A111425 n

end A111425

/-! ## A111425.P16140558976619450538

`A000073(A274163(n))`
-/

namespace A111425.P16140558976619450538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A274163 n).toNat

end

end A111425.P16140558976619450538

namespace A111425

/-- `A000073(A274163(n))` -/
def P16140558976619450538.Spec : Prop :=
  ∀ n, P16140558976619450538.a n = A111425 n

end A111425

/-! ## A111425.P10294210668089667577

`A000073(abs(A236191(n)))`
-/

namespace A111425.P10294210668089667577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 |A236191 n|.toNat

end

end A111425.P10294210668089667577

namespace A111425

/-- `A000073(abs(A236191(n)))` -/
def P10294210668089667577.Spec : Prop :=
  ∀ n, P10294210668089667577.a n = A111425 n

end A111425

/-!
# A111426: Difference between largest and smallest prime factor of the n-th composite number.

The programs for A111426, the canonical program `A111426.P6718353235866287776` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111426 has offset 1).

The definition of A111426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111426.P6718353235866287776

`A046665(A002808(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A111426

/-- `A046665(A002808(n+1))` -/
def P6718353235866287776.Spec : Prop :=
  ∀ n, P6718353235866287776.a n = A111426 (n + 1)

theorem P6718353235866287776.correct : P6718353235866287776.Spec := by
  intro n
  simp only [A111426, Nat.add_sub_cancel]

end A111426

/-! ## A111426.P1202819203281899008

`A046665(A056653(n+1))`
-/

namespace A111426.P1202819203281899008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A056653 (n + 1)).toNat

end

end A111426.P1202819203281899008

namespace A111426

/-- `A046665(A056653(n+1))` -/
def P1202819203281899008.Spec : Prop :=
  ∀ n, P1202819203281899008.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P10519576108133179836

`A085393(A282671(n+1))`
-/

namespace A111426.P10519576108133179836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (A282671 (n + 1)).toNat

end

end A111426.P10519576108133179836

namespace A111426

/-- `A085393(A282671(n+1))` -/
def P10519576108133179836.Spec : Prop :=
  ∀ n, P10519576108133179836.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P140210667159181050

`A046665(A018252(n+2))`
-/

namespace A111426.P140210667159181050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A018252 (n + 2)).toNat

end

end A111426.P140210667159181050

namespace A111426

/-- `A046665(A018252(n+2))` -/
def P140210667159181050.Spec : Prop :=
  ∀ n, P140210667159181050.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P15551620721855475216

`A085393(A139270(n+2))`
-/

namespace A111426.P15551620721855475216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (A139270 (n + 2)).toNat

end

end A111426.P15551620721855475216

namespace A111426

/-- `A085393(A139270(n+2))` -/
def P15551620721855475216.Spec : Prop :=
  ∀ n, P15551620721855475216.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P6174348541541225227

`A085393(2*A018252(n+2))`
-/

namespace A111426.P6174348541541225227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (2 * A018252 (n + 2)).toNat

end

end A111426.P6174348541541225227

namespace A111426

/-- `A085393(2*A018252(n+2))` -/
def P6174348541541225227.Spec : Prop :=
  ∀ n, P6174348541541225227.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P10404922292028121622

`A052369(n+1)-p?[A107286(n)]`
-/

namespace A111426.P10404922292028121622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111426.P10404922292028121622

namespace A111426

/-- `A052369(n+1)-p?[A107286(n)]` -/
def P10404922292028121622.Spec : Prop :=
  ∀ n, P10404922292028121622.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P9201349835306425832

`A046665(lt[1, A302042(n+1)]+1)`
-/

namespace A111426.P9201349835306425832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111426.P9201349835306425832

namespace A111426

/-- `A046665(lt[1, A302042(n+1)]+1)` -/
def P9201349835306425832.Spec : Prop :=
  ∀ n, P9201349835306425832.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P17779420944204170280

`A046665(lt[2, A000005(n+1)]+1)`
-/

namespace A111426.P17779420944204170280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111426.P17779420944204170280

namespace A111426

/-- `A046665(lt[2, A000005(n+1)]+1)` -/
def P17779420944204170280.Spec : Prop :=
  ∀ n, P17779420944204170280.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P8803491722638256911

`A052369(n+1)-A056608(n+1)`
-/

namespace A111426.P8803491722638256911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) - A056608 (n + 1)

end

end A111426.P8803491722638256911

namespace A111426

/-- `A052369(n+1)-A056608(n+1)` -/
def P8803491722638256911.Spec : Prop :=
  ∀ n, P8803491722638256911.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P7642259188783368020

`A085275(n+1)-A079772(n+1)`
-/

namespace A111426.P7642259188783368020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085275 (n + 1) - A079772 (n + 1)

end

end A111426.P7642259188783368020

namespace A111426

/-- `A085275(n+1)-A079772(n+1)` -/
def P7642259188783368020.Spec : Prop :=
  ∀ n, P7642259188783368020.a n = A111426 (n + 1)

theorem P7642259188783368020.correct : P7642259188783368020.Spec := by
  intro n
  simp only [A111426, Nat.add_sub_cancel, A111426.P7642259188783368020.a, A111426.P6718353235866287776.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A046665, A046665.P1080562192971006030.a, A079772, A079772.P14877712380787135765.a, A085275, A085275.P13689628955370853305.a, A000005, A000005.P16091521709108585461.a, A006530, A006530.P13372528560459906635.a, A020639, A020639.P7578813688609615429.a, A052369, A052369.P7787911746371594632.a, A056608, A056608.P12256704911818935102.a, A008578, A008578.P3639467937083264764.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055396, A055396.P18305262754425103137.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111426

/-! ## A111426.P1451372586027820689

`A085271(n+1)-A085273(n+1)`
-/

namespace A111426.P1451372586027820689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085271 (n + 1) - A085273 (n + 1)

end

end A111426.P1451372586027820689

namespace A111426

/-- `A085271(n+1)-A085273(n+1)` -/
def P1451372586027820689.Spec : Prop :=
  ∀ n, P1451372586027820689.a n = A111426 (n + 1)

theorem P1451372586027820689.correct : P1451372586027820689.Spec := by
  intro n
  simp only [A111426, Nat.add_sub_cancel, A111426.P1451372586027820689.a, A111426.P6718353235866287776.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A046665, A046665.P1080562192971006030.a, A085271, A085271.P7286501927853225019.a, A085273, A085273.P3425494677370618901.a, A000005, A000005.P16091521709108585461.a, A006530, A006530.P13372528560459906635.a, A020639, A020639.P7578813688609615429.a, A052369, A052369.P7787911746371594632.a, A056608, A056608.P12256704911818935102.a, A008578, A008578.P3639467937083264764.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055396, A055396.P18305262754425103137.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111426

/-! ## A111426.P1788588293488604041

`A085271(n+1)%A052369(n+1)`
-/

namespace A111426.P1788588293488604041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085271 (n + 1)) (A052369 (n + 1))

end

end A111426.P1788588293488604041

namespace A111426

/-- `A085271(n+1)%A052369(n+1)` -/
def P1788588293488604041.Spec : Prop :=
  ∀ n, P1788588293488604041.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P9840515680684214707

`A046665(lt[A006530(n+1), n]+1)`
-/

namespace A111426.P9840515680684214707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A111426.P9840515680684214707

namespace A111426

/-- `A046665(lt[A006530(n+1), n]+1)` -/
def P9840515680684214707.Spec : Prop :=
  ∀ n, P9840515680684214707.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P1025194599504248745

`A046665(lt[A020639(n+1), n]+1)`
-/

namespace A111426.P1025194599504248745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A111426.P1025194599504248745

namespace A111426

/-- `A046665(lt[A020639(n+1), n]+1)` -/
def P1025194599504248745.Spec : Prop :=
  ∀ n, P1025194599504248745.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P17014900228382802305

`A046665(lt[A060681(n+1), n]+1)`
-/

namespace A111426.P17014900228382802305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A111426.P17014900228382802305

namespace A111426

/-- `A046665(lt[A060681(n+1), n]+1)` -/
def P17014900228382802305.Spec : Prop :=
  ∀ n, P17014900228382802305.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P5507867892047192413

`A046665(lt[A346466(n+1), n]+1)`
-/

namespace A111426.P5507867892047192413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346466 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A111426.P5507867892047192413

namespace A111426

/-- `A046665(lt[A346466(n+1), n]+1)` -/
def P5507867892047192413.Spec : Prop :=
  ∀ n, P5507867892047192413.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P5710859697262729442

`A046665(comp[A046665(2*(n+1))]+2)`
-/

namespace A111426.P5710859697262729442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A111426.P5710859697262729442

namespace A111426

/-- `A046665(comp[A046665(2*(n+1))]+2)` -/
def P5710859697262729442.Spec : Prop :=
  ∀ n, P5710859697262729442.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P1464680987855116101

`A006530(A002808(n+1))-A056608(n+1)`
-/

namespace A111426.P1464680987855116101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002808 (n + 1)).toNat - A056608 (n + 1)

end

end A111426.P1464680987855116101

namespace A111426

/-- `A006530(A002808(n+1))-A056608(n+1)` -/
def P1464680987855116101.Spec : Prop :=
  ∀ n, P1464680987855116101.a n = A111426 (n + 1)

end A111426

/-! ## A111426.P10867197879595089892

`A052369(n+1)-A020639(A002808(n+1))`
-/

namespace A111426.P10867197879595089892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) - A020639 (A002808 (n + 1)).toNat

end

end A111426.P10867197879595089892

namespace A111426

/-- `A052369(n+1)-A020639(A002808(n+1))` -/
def P10867197879595089892.Spec : Prop :=
  ∀ n, P10867197879595089892.a n = A111426 (n + 1)

end A111426

/-!
# A111427: Tribonacci(tetranacci(n)).

The programs for A111427, the canonical program `A111427.P8272385807123943904` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111427 has offset 0).

The definition of A111427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111427.P8272385807123943904

`A000073(A000078(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111427

/-- `A000073(A000078(n))` -/
def P8272385807123943904.Spec : Prop :=
  ∀ n, P8272385807123943904.a n = A111427 n

theorem P8272385807123943904.correct : P8272385807123943904.Spec := by
  intro n
  simp only [A111427]

end A111427

/-! ## A111427.P14306559196399801773

`A000073(Δ[A000288(n)/3])`
-/

namespace A111427.P14306559196399801773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000288 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A111427.P14306559196399801773

namespace A111427

/-- `A000073(Δ[A000288(n)/3])` -/
def P14306559196399801773.Spec : Prop :=
  ∀ n, P14306559196399801773.a n = A111427 n

end A111427

/-! ## A111427.P10837967254172210471

`A000073(A000288(n)-A251705(n))`
-/

namespace A111427.P10837967254172210471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A000288 n - A251705 n).toNat

end

end A111427.P10837967254172210471

namespace A111427

/-- `A000073(A000288(n)-A251705(n))` -/
def P10837967254172210471.Spec : Prop :=
  ∀ n, P10837967254172210471.a n = A111427 n

end A111427

/-! ## A111427.P4143139947979085960

`A000073(A251655(n)-A251654(n))`
-/

namespace A111427.P4143139947979085960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A251655 n - A251654 n).toNat

end

end A111427.P4143139947979085960

namespace A111427

/-- `A000073(A251655(n)-A251654(n))` -/
def P4143139947979085960.Spec : Prop :=
  ∀ n, P4143139947979085960.a n = A111427 n

end A111427

/-! ## A111427.P2157222498917158443

`A000073(A251704(n)-A251703(n))`
-/

namespace A111427.P2157222498917158443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A251704 n - A251703 n).toNat

end

end A111427.P2157222498917158443

namespace A111427

/-- `A000073(A251704(n)-A251703(n))` -/
def P2157222498917158443.Spec : Prop :=
  ∀ n, P2157222498917158443.a n = A111427 n

end A111427

/-!
# A111428: Tribonacci(pentanacci(n)).

The programs for A111428, the canonical program `A111428.P16386986194206369619` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111428 has offset 0).

The definition of A111428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111428.P16386986194206369619

`A000073(A001591(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111428

/-- `A000073(A001591(n))` -/
def P16386986194206369619.Spec : Prop :=
  ∀ n, P16386986194206369619.a n = A111428 n

theorem P16386986194206369619.correct : P16386986194206369619.Spec := by
  intro n
  simp only [A111428]

end A111428

/-! ## A111428.P798331346705951349

`A000073(Δ[A001949(n)])`
-/

namespace A111428.P798331346705951349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (f1 (n + 1) - f1 n).toNat

end

end A111428.P798331346705951349

namespace A111428

/-- `A000073(Δ[A001949(n)])` -/
def P798331346705951349.Spec : Prop :=
  ∀ n, P798331346705951349.a n = A111428 n

end A111428

/-! ## A111428.P3590110575115475473

`A000073(val(A168089(n), 2))`
-/

namespace A111428.P3590110575115475473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (SequenceMachineLib.valuation (A168089 n).toNat 2)

end

end A111428.P3590110575115475473

namespace A111428

/-- `A000073(val(A168089(n), 2))` -/
def P3590110575115475473.Spec : Prop :=
  ∀ n, P3590110575115475473.a n = A111428 n

end A111428

/-! ## A111428.P9378704080997174607

`A000073(A001949(n)-A251762(n))`
-/

namespace A111428.P9378704080997174607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A001949 n - A251762 n).toNat

end

end A111428.P9378704080997174607

namespace A111428

/-- `A000073(A001949(n)-A251762(n))` -/
def P9378704080997174607.Spec : Prop :=
  ∀ n, P9378704080997174607.a n = A111428 n

end A111428

/-! ## A111428.P9500546829149146630

`A000073(A001949(n+1)-A001949(n))`
-/

namespace A111428.P9500546829149146630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A001949 (n + 1) - A001949 n).toNat

end

end A111428.P9500546829149146630

namespace A111428

/-- `A000073(A001949(n+1)-A001949(n))` -/
def P9500546829149146630.Spec : Prop :=
  ∀ n, P9500546829149146630.a n = A111428 n

end A111428

/-!
# A111429: Tribonacci(hexanacci(n)).

The programs for A111429, the canonical program `A111429.P5749061677914462688` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111429 has offset 0).

The definition of A111429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111429.P5749061677914462688

`A000073(A001592(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111429

/-- `A000073(A001592(n))` -/
def P5749061677914462688.Spec : Prop :=
  ∀ n, P5749061677914462688.a n = A111429 n

theorem P5749061677914462688.correct : P5749061677914462688.Spec := by
  intro n
  simp only [A111429]

end A111429

/-! ## A111429.P10317879871208745224

`A000073(Δ[A000383(n)/5])`
-/

namespace A111429.P10317879871208745224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A111429.P10317879871208745224

namespace A111429

/-- `A000073(Δ[A000383(n)/5])` -/
def P10317879871208745224.Spec : Prop :=
  ∀ n, P10317879871208745224.a n = A111429 n

end A111429

/-! ## A111429.P15277348066286615955

`A000073(A251742(n)+A251709(n))`
-/

namespace A111429.P15277348066286615955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A251742 n + A251709 n).toNat

end

end A111429.P15277348066286615955

namespace A111429

/-- `A000073(A251742(n)+A251709(n))` -/
def P15277348066286615955.Spec : Prop :=
  ∀ n, P15277348066286615955.a n = A111429 n

end A111429

/-! ## A111429.P6220189868567561509

`A000073(∑[A251706(n)]-A251706(n))`
-/

namespace A111429.P6220189868567561509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (∑ j ∈ Finset.range (n + 1), f1 j - A251706 n).toNat

end

end A111429.P6220189868567561509

namespace A111429

/-- `A000073(∑[A251706(n)]-A251706(n))` -/
def P6220189868567561509.Spec : Prop :=
  ∀ n, P6220189868567561509.a n = A111429 n

end A111429

/-! ## A111429.P17180004865327894456

`A000073(Δ[A143662(n)]-A143662(n))`
-/

namespace A111429.P17180004865327894456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (f1 (n + 1) - f1 n - A143662 n).toNat

end

end A111429.P17180004865327894456

namespace A111429

/-- `A000073(Δ[A143662(n)]-A143662(n))` -/
def P17180004865327894456.Spec : Prop :=
  ∀ n, P17180004865327894456.a n = A111429 n

end A111429

/-!
# A111430: Tribonacci(heptanacci(n)).

The programs for A111430, the canonical program `A111430.P28627654388380684` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111430 has offset 0).

The definition of A111430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111430.P28627654388380684

`A000073(A066178(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111430

/-- `A000073(A066178(n))` -/
def P28627654388380684.Spec : Prop :=
  ∀ n, P28627654388380684.a n = A111430 n

theorem P28627654388380684.correct : P28627654388380684.Spec := by
  intro n
  simp only [A111430]

end A111430

/-! ## A111430.P10469383982256600593

`A000073(A194630(n+2))`
-/

namespace A111430.P10469383982256600593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A194630 (n + 2)).toNat

end

end A111430.P10469383982256600593

namespace A111430

/-- `A000073(A194630(n+2))` -/
def P10469383982256600593.Spec : Prop :=
  ∀ n, P10469383982256600593.a n = A111430 n

end A111430

/-! ## A111430.P11690151839631264849

`A000073(A122189(n+6))`
-/

namespace A111430.P11690151839631264849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A122189 (n + 6)).toNat

end

end A111430.P11690151839631264849

namespace A111430

/-- `A000073(A122189(n+6))` -/
def P11690151839631264849.Spec : Prop :=
  ∀ n, P11690151839631264849.a n = A111430 n

end A111430

/-! ## A111430.P5750516685707467062

`A000073(eq[1, char[A122189(n)]])`
-/

namespace A111430.P5750516685707467062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111430.P5750516685707467062

namespace A111430

/-- `A000073(eq[1, char[A122189(n)]])` -/
def P5750516685707467062.Spec : Prop :=
  ∀ n, P5750516685707467062.a n = A111430 n

end A111430

/-!
# A111431: a(n) = Fibonacci(tribonacci(n)).

The programs for A111431, the canonical program `A111431.P16385383920109285365` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111431 has offset 0).

The definition of A111431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111431.P16385383920109285365

`A000045(A000073(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111431

/-- `A000045(A000073(n))` -/
def P16385383920109285365.Spec : Prop :=
  ∀ n, P16385383920109285365.a n = A111431 n

theorem P16385383920109285365.correct : P16385383920109285365.Spec := by
  intro n
  simp only [A111431]

end A111431

/-! ## A111431.P9125734967879132892

`A053602(A354784(n))`
-/

namespace A111431.P9125734967879132892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A354784 n).toNat

end

end A111431.P9125734967879132892

namespace A111431

/-- `A053602(A354784(n))` -/
def P9125734967879132892.Spec : Prop :=
  ∀ n, P9125734967879132892.a n = A111431 n

end A111431

/-! ## A111431.P14662564291881278498

`A000045(sqrt(A085697(n)))`
-/

namespace A111431.P14662564291881278498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A085697 n : ℝ))).toNat

end

end A111431.P14662564291881278498

namespace A111431

/-- `A000045(sqrt(A085697(n)))` -/
def P14662564291881278498.Spec : Prop :=
  ∀ n, P14662564291881278498.a n = A111431 n

end A111431

/-! ## A111431.P8414445275589363764

`A000045(Δ[A192804(n)])`
-/

namespace A111431.P8414445275589363764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A111431.P8414445275589363764

namespace A111431

/-- `A000045(Δ[A192804(n)])` -/
def P8414445275589363764.Spec : Prop :=
  ∀ n, P8414445275589363764.a n = A111431 n

end A111431

/-! ## A111431.P4383194994872630077

`A212804(A000073(n)+1)`
-/

namespace A111431.P4383194994872630077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A000073 n + 1).toNat

end

end A111431.P4383194994872630077

namespace A111431

/-- `A212804(A000073(n)+1)` -/
def P4383194994872630077.Spec : Prop :=
  ∀ n, P4383194994872630077.a n = A111431 n

end A111431

/-!
# A111432: Fibonacci(tetranacci(n)).

The programs for A111432, the canonical program `A111432.P2724493811187227791` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111432 has offset 0).

The definition of A111432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111432.P2724493811187227791

`A000045(A000078(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111432

/-- `A000045(A000078(n))` -/
def P2724493811187227791.Spec : Prop :=
  ∀ n, P2724493811187227791.a n = A111432 n

theorem P2724493811187227791.correct : P2724493811187227791.Spec := by
  intro n
  simp only [A111432]

end A111432

/-! ## A111432.P16745745085655487614

`A000045(∑[2*a(n-1)-a(n-5)])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1`
-/

namespace A111432.P16745745085655487614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 0, 1] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111432.P16745745085655487614

namespace A111432

/-- `A000045(∑[2*a(n-1)-a(n-5)])` -/
def P16745745085655487614.Spec : Prop :=
  ∀ n, P16745745085655487614.a n = A111432 n

end A111432

/-! ## A111432.P12428514858263323214

`A212804(A000078(n)+1)`
-/

namespace A111432.P12428514858263323214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A000078 n + 1).toNat

end

end A111432.P12428514858263323214

namespace A111432

/-- `A212804(A000078(n)+1)` -/
def P12428514858263323214.Spec : Prop :=
  ∀ n, P12428514858263323214.a n = A111432 n

end A111432

/-! ## A111432.P1847036511086181657

`A103609(2*A000078(n))`
-/

namespace A111432.P1847036511086181657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A000078 n).toNat

end

end A111432.P1847036511086181657

namespace A111432

/-- `A103609(2*A000078(n))` -/
def P1847036511086181657.Spec : Prop :=
  ∀ n, P1847036511086181657.a n = A111432 n

end A111432

/-! ## A111432.P10044653196955762201

`A302126(2*A000078(n))`
-/

namespace A111432.P10044653196955762201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A000078 n).toNat

end

end A111432.P10044653196955762201

namespace A111432

/-- `A302126(2*A000078(n))` -/
def P10044653196955762201.Spec : Prop :=
  ∀ n, P10044653196955762201.a n = A111432 n

end A111432

/-!
# A111433: Fibonacci(pentanacci(n)).

The programs for A111433, the canonical program `A111433.P8759241119554715409` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111433 has offset 0).

The definition of A111433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111433.P8759241119554715409

`A000045(A001591(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111433

/-- `A000045(A001591(n))` -/
def P8759241119554715409.Spec : Prop :=
  ∀ n, P8759241119554715409.a n = A111433 n

theorem P8759241119554715409.correct : P8759241119554715409.Spec := by
  intro n
  simp only [A111433]

end A111433

/-! ## A111433.P14525871568972084976

`A000045(Δ[A001949(n)])`
-/

namespace A111433.P14525871568972084976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A111433.P14525871568972084976

namespace A111433

/-- `A000045(Δ[A001949(n)])` -/
def P14525871568972084976.Spec : Prop :=
  ∀ n, P14525871568972084976.a n = A111433 n

end A111433

/-! ## A111433.P4190677319132636752

`A212804(A001591(n)+1)`
-/

namespace A111433.P4190677319132636752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A001591 n + 1).toNat

end

end A111433.P4190677319132636752

namespace A111433

/-- `A212804(A001591(n)+1)` -/
def P4190677319132636752.Spec : Prop :=
  ∀ n, P4190677319132636752.a n = A111433 n

end A111433

/-! ## A111433.P2901645020506079668

`A302126(2*A001591(n))`
-/

namespace A111433.P2901645020506079668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A001591 n).toNat

end

end A111433.P2901645020506079668

namespace A111433

/-- `A302126(2*A001591(n))` -/
def P2901645020506079668.Spec : Prop :=
  ∀ n, P2901645020506079668.a n = A111433 n

end A111433

/-! ## A111433.P1572875425610401619

`A000045(Δ[A000322(n)/4])`
-/

namespace A111433.P1572875425610401619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000322 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A111433.P1572875425610401619

namespace A111433

/-- `A000045(Δ[A000322(n)/4])` -/
def P1572875425610401619.Spec : Prop :=
  ∀ n, P1572875425610401619.a n = A111433 n

end A111433

/-!
# A111434: Numbers k such that the sums of the digits of k, k^2 and k^3 coincide.

The programs for A111434, there is no canonical definition to state claims against.
-/

/-! ## A111434.P6482063558088942384

`∩[A058369(n+1), A070276(n+1)]`
-/

namespace A111434.P6482063558088942384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111434.P6482063558088942384

/-! ## A111434.P14110628709131994424

`∩[A058369(n+1), A204324(n+1)]`
-/

namespace A111434.P14110628709131994424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111434.P14110628709131994424

/-! ## A111434.P15510937761267204271

`∩[A058369(n+1), A117224(n+1)]`
-/

namespace A111434.P15510937761267204271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111434.P15510937761267204271

/-! ## A111434.P14524336933040243476

`∩[A070276(n+1), A117224(n+1)]`
-/

namespace A111434.P14524336933040243476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111434.P14524336933040243476

/-! ## A111434.P1193515637379159218

`∩[A117224(n+1), A204324(n+1)]`
-/

namespace A111434.P1193515637379159218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111434.P1193515637379159218

/-!
# A111435: a(n) = Fibonacci(hexanacci(n)).

The programs for A111435, the canonical program `A111435.P18273500984536572132` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111435 has offset 0).

The definition of A111435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111435.P18273500984536572132

`A000045(A001592(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111435

/-- `A000045(A001592(n))` -/
def P18273500984536572132.Spec : Prop :=
  ∀ n, P18273500984536572132.a n = A111435 n

theorem P18273500984536572132.correct : P18273500984536572132.Spec := by
  intro n
  simp only [A111435]

end A111435

/-! ## A111435.P16321081313134147032

`A212804(A001592(n)+1)`
-/

namespace A111435.P16321081313134147032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A001592 n + 1).toNat

end

end A111435.P16321081313134147032

namespace A111435

/-- `A212804(A001592(n)+1)` -/
def P16321081313134147032.Spec : Prop :=
  ∀ n, P16321081313134147032.a n = A111435 n

end A111435

/-! ## A111435.P17016016803236727344

`A103609(2*A001592(n))`
-/

namespace A111435.P17016016803236727344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A001592 n).toNat

end

end A111435.P17016016803236727344

namespace A111435

/-- `A103609(2*A001592(n))` -/
def P17016016803236727344.Spec : Prop :=
  ∀ n, P17016016803236727344.a n = A111435 n

end A111435

/-! ## A111435.P11909088397938387

`A302126(2*A001592(n))`
-/

namespace A111435.P11909088397938387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A001592 n).toNat

end

end A111435.P11909088397938387

namespace A111435

/-- `A302126(2*A001592(n))` -/
def P11909088397938387.Spec : Prop :=
  ∀ n, P11909088397938387.a n = A111435 n

end A111435

/-! ## A111435.P5579379739852309448

`A000045(Δ[A000383(n)/5])`
-/

namespace A111435.P5579379739852309448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000383 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A111435.P5579379739852309448

namespace A111435

/-- `A000045(Δ[A000383(n)/5])` -/
def P5579379739852309448.Spec : Prop :=
  ∀ n, P5579379739852309448.a n = A111435 n

end A111435

/-!
# A111437: Least multiple of n such that every partial concatenation followed by a 3 is prime.

The programs for A111437, there is no canonical definition to state claims against.
-/

/-! ## A111437.P5857118530904959180

`record[A034932(n)]*A064614(n+1)`
-/

namespace A111437.P5857118530904959180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A064614 (n + 1)

end

end A111437.P5857118530904959180

/-! ## A111437.P13016760415383258247

`A025483(A294184(n+1))*A294178(n)`
-/

namespace A111437.P13016760415383258247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025483 (A294184 (n + 1)).toNat * A294178 n

end

end A111437.P13016760415383258247

/-!
# A111438: Fibonacci(heptanacci(n)), restricted to nonzero heptanacci numbers.

The programs for A111438, the canonical program `A111438.P9072623533357938817` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111438 has offset 0).

The definition of A111438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111438.P9072623533357938817

`A000045(A066178(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A111438

/-- `A000045(A066178(n))` -/
def P9072623533357938817.Spec : Prop :=
  ∀ n, P9072623533357938817.a n = A111438 n

theorem P9072623533357938817.correct : P9072623533357938817.Spec := by
  intro n
  simp only [A111438]

end A111438

/-! ## A111438.P18431850201737052840

`A014437(A116385(n))`
-/

namespace A111438.P18431850201737052840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (A116385 n).toNat

end

end A111438.P18431850201737052840

namespace A111438

/-- `A014437(A116385(n))` -/
def P18431850201737052840.Spec : Prop :=
  ∀ n, P18431850201737052840.a n = A111438 n

end A111438

/-! ## A111438.P3166742675159096153

`A324969(A066178(n)+1)`
-/

namespace A111438.P3166742675159096153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A066178 n + 1).toNat

end

end A111438.P3166742675159096153

namespace A111438

/-- `A324969(A066178(n)+1)` -/
def P3166742675159096153.Spec : Prop :=
  ∀ n, P3166742675159096153.a n = A111438 n

end A111438

/-! ## A111438.P5372864147456163198

`A000045(A194630(n+2))`
-/

namespace A111438.P5372864147456163198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A194630 (n + 2)).toNat

end

end A111438.P5372864147456163198

namespace A111438

/-- `A000045(A194630(n+2))` -/
def P5372864147456163198.Spec : Prop :=
  ∀ n, P5372864147456163198.a n = A111438 n

end A111438

/-! ## A111438.P12996026365088338606

`A000045(A295081(n)+A194629(n+1))`
-/

namespace A111438.P12996026365088338606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A295081 n + A194629 (n + 1)).toNat

end

end A111438.P12996026365088338606

namespace A111438

/-- `A000045(A295081(n)+A194629(n+1))` -/
def P12996026365088338606.Spec : Prop :=
  ∀ n, P12996026365088338606.a n = A111438 n

end A111438

/-!
# A111439: Variation of Golomb's sequence: a(n) is the number of times n appears with a(n) unequal to a(n-1).

The programs for A111439, there is no canonical definition to state claims against.
-/

/-! ## A111439.P16853844309579689758

`A116939(∑[3^(A116928(2*(n+2))%2)])`
-/

namespace A111439.P16853844309579689758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod (A116928 (2 * (n + 2))) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A111439.P16853844309579689758

/-! ## A111439.P11835481936161934009

`A012265(p?[A292127(n+1)+2]+n)`
-/

namespace A111439.P11835481936161934009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292127 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat

end

end A111439.P11835481936161934009

/-! ## A111439.P13296709692382785202

`∑[A160357(A001651(A000070(n)))]`
-/

namespace A111439.P13296709692382785202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (A001651 (A000070 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111439.P13296709692382785202

/-! ## A111439.P13308583729676195058

`A194960(n+1)+A000122(A005900(n+3))`
-/

namespace A111439.P13308583729676195058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (n + 1) + A000122 (A005900 (n + 3)).toNat

end

end A111439.P13308583729676195058

/-! ## A111439.P16768698732830756310

`A127255(n+1)+A127254(A000383(n))`
-/

namespace A111439.P16768698732830756310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127255 (n + 1) + A127254 (A000383 n).toNat

end

end A111439.P16768698732830756310

/-!
# A111440: Squares of the form semiprime(n) + prime(n).

The programs for A111440, there is no canonical definition to state claims against.
-/

/-! ## A111440.P6762377014172581068

`∩[A133796(n+1), n²]`
-/

namespace A111440.P6762377014172581068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A111440.P6762377014172581068

/-! ## A111440.P75645853768943039

`∩[A000290(n), A133796(n+1)]`
-/

namespace A111440.P75645853768943039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111440.P75645853768943039

/-! ## A111440.P13701530514372538379

`∩[A034793(n+1), A133796(n+1)]`
-/

namespace A111440.P13701530514372538379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111440.P13701530514372538379

/-! ## A111440.P14439920760816912918

`∩[A085960(n+1), A133796(n+1)]`
-/

namespace A111440.P14439920760816912918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111440.P14439920760816912918

/-!
# A111441: Numbers k such that the sum of the squares of the first k primes is divisible by k.

The programs for A111441, there is no canonical definition to state claims against.
-/

/-! ## A111441.P17890628689357649872

`A217600(n+1)/A217601(n+1)`
-/

namespace A111441.P17890628689357649872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217600 (n + 1) : ℚ) / (A217601 (n + 1) : ℚ)

end

end A111441.P17890628689357649872

/-! ## A111441.P17704894764397122034

`A000720(A217599(n+1))`
-/

namespace A111441.P17704894764397122034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A217599 (n + 1)).toNat

end

end A111441.P17704894764397122034

/-!
# A111442: Least perfect power of n containing all the distinct digits of n.

The programs for A111442, there is no canonical definition to state claims against.
-/

/-! ## A111442.P7179004741863150645

`(n+1)^A373203(n+1)`
-/

namespace A111442.P7179004741863150645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A373203 (n + 1) : ℤ)

end

end A111442.P7179004741863150645

/-! ## A111442.P4996065084785454826

`A373291(A043316(n+1))`
-/

namespace A111442.P4996065084785454826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A043316 (n + 1)).toNat

end

end A111442.P4996065084785454826

/-! ## A111442.P12278889131723081501

`A373291(A044913(n+1))`
-/

namespace A111442.P12278889131723081501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A044913 (n + 1)).toNat

end

end A111442.P12278889131723081501

/-! ## A111442.P12962684121957187024

`A373291(A049872(n+1))`
-/

namespace A111442.P12962684121957187024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A049872 (n + 1)).toNat

end

end A111442.P12962684121957187024

/-! ## A111442.P4718567593285977797

`A373291(A055649(n)+1)`
-/

namespace A111442.P4718567593285977797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373291 (A055649 n + 1).toNat

end

end A111442.P4718567593285977797

/-!
# A111443: Least square beginning with the digit reversal of n^2.

The programs for A111443, there is no canonical definition to state claims against.
-/

/-! ## A111443.P2193011587160817031

`A018796(A004086((n+1)²))`
-/

namespace A111443.P2193011587160817031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A004086 ((n + 1) ^ 2)).toNat

end

end A111443.P2193011587160817031

/-! ## A111443.P3682980256804518294

`A018796(A002942(n+1))`
-/

namespace A111443.P3682980256804518294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A002942 (n + 1)).toNat

end

end A111443.P3682980256804518294

/-! ## A111443.P6679193533822265574

`A018851(A002942(n+1))²*A007318(∑[n])`
-/

namespace A111443.P6679193533822265574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A002942 (n + 1)).toNat ^ 2 * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111443.P6679193533822265574

/-! ## A111443.P14480406152939320152

`(A018851(A002942(n+1))/A007318(C(2, n)))²`
-/

namespace A111443.P14480406152939320152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A018851 (A002942 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)) ^ 2

end

end A111443.P14480406152939320152

/-!
# A111444: Triangle read by rows: row n contains the first n squares ending in n^2.

The programs for A111444, there is no canonical definition to state claims against.
-/

/-! ## A111444.P6788833818021584867

`A111445(n+1)²`
-/

namespace A111444.P6788833818021584867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111445 (n + 1) ^ 2

end

end A111444.P6788833818021584867

/-! ## A111444.P3609116178818243282

`(A111445(n+2)-Δ[A111445(n+1)])^2`
-/

namespace A111444.P3609116178818243282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111445 (n + 2) - (f1 (n + 1) - f1 n)) ^ 2

end

end A111444.P3609116178818243282

/-! ## A111444.P11540259651879450643

`A111445(n+1)^A020639(A008458(n))`
-/

namespace A111444.P11540259651879450643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111445 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A111444.P11540259651879450643

/-! ## A111444.P17094269108122017973

`A111445(n+1)^A000034(A000265(n+1))`
-/

namespace A111444.P17094269108122017973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111445 (n + 1) : ℚ) ^ (A000034 (A000265 (n + 1)).toNat : ℤ)

end

end A111444.P17094269108122017973

/-! ## A111444.P1651012570943793527

`A111445(n+1)*A111445((n+1)%A159754(n+1))`
-/

namespace A111444.P1651012570943793527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111445 (n + 1) * A111445 (Int.tmod (n + 1 : ℤ) (A159754 (n + 1))).toNat

end

end A111444.P1651012570943793527

/-! ## A111444.P11681664175928878580

`A111445(gcd(n+1, A055615(n+1)))*A111445(n+1)`
-/

namespace A111444.P11681664175928878580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111445 (Int.gcd (n + 1 : ℤ) (A055615 (n + 1))) * A111445 (n + 1)

end

end A111444.P11681664175928878580

/-! ## A111444.P11846718650168547522

`A111445(n+1)^A020639(A111455(n+2))`
-/

namespace A111444.P11846718650168547522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111445 (n + 1) : ℚ) ^ (A020639 (A111455 (n + 2)).toNat : ℤ)

end

end A111444.P11846718650168547522

/-! ## A111444.P9426492949729851144

`A111445(n+1)^A000005(A111489(n+1))`
-/

namespace A111444.P9426492949729851144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111445 (n + 1) : ℚ) ^ (A000005 (A111489 (n + 1)).toNat : ℤ)

end

end A111444.P9426492949729851144

/-! ## A111444.P8999175844360517806

`A111445(n+1)^A000005(A111488(n+1))`
-/

namespace A111444.P8999175844360517806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111445 (n + 1) : ℚ) ^ (A000005 (A111488 (n + 1)).toNat : ℤ)

end

end A111444.P8999175844360517806

/-!
# A111445: Triangle read by rows: row n contains the first n numbers whose squares end in n^2.

The programs for A111445, there is no canonical definition to state claims against.
-/

/-! ## A111445.P11540316833885584433

`A111444(n+1)^(1/2)`
-/

namespace A111445.P11540316833885584433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111444 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A111445.P11540316833885584433

/-! ## A111445.P14846768220859347799

`sqrt(A111444(n+1))`
-/

namespace A111445.P14846768220859347799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A111444 (n + 1) : ℝ)

end

end A111445.P14846768220859347799

/-! ## A111445.P4766025912836717240

`root(A111444(n+1), dr(A001504(n)))`
-/

namespace A111445.P4766025912836717240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111444 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A001504 n) : ℝ))

end

end A111445.P4766025912836717240

/-! ## A111445.P13466601488432643396

`root(A111444(n+1), gcd(2, A008458(n)))`
-/

namespace A111445.P13466601488432643396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111444 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A008458 n) : ℝ))

end

end A111445.P13466601488432643396

/-! ## A111445.P2772428293896192123

`root(A111444(n+1), 2%A159754(n+1))`
-/

namespace A111445.P2772428293896192123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111444 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A159754 (n + 1)) : ℝ))

end

end A111445.P2772428293896192123

/-! ## A111445.P13586380673656199872

`A000027(root(A111444(n+1), 2))`
-/

namespace A111445.P13586380673656199872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A111444 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A111445.P13586380673656199872

/-! ## A111445.P6421848271559485808

`A056926(A056926(A111444(n+1))²)`
-/

namespace A111445.P6421848271559485808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A056926 (A111444 (n + 1)).toNat ^ 2).toNat

end

end A111445.P6421848271559485808

/-!
# A111446: Least square ending in k where k is a possible end of a square.

The programs for A111446, there is no canonical definition to state claims against.
-/

/-! ## A111446.P7265977359250985801

`A111449(n)²`
-/

namespace A111446.P7265977359250985801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111449 n ^ 2

end

end A111446.P7265977359250985801

/-! ## A111446.P3155167336028348030

`A002620(2*A111449(n))`
-/

namespace A111446.P3155167336028348030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A111449 n).toNat

end

end A111446.P3155167336028348030

/-! ## A111446.P3509314967816680228

`A111449(n)^A043529(∑[n+2])`
-/

namespace A111446.P3509314967816680228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111449 n : ℚ) ^ (A043529 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A111446.P3509314967816680228

/-! ## A111446.P18384191801581258313

`A111449(n)^A020639(2*(n+1))`
-/

namespace A111446.P18384191801581258313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111449 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A111446.P18384191801581258313

/-! ## A111446.P1677869903642454991

`A111449(n)^A000032(C(2, 2*n))`
-/

namespace A111446.P1677869903642454991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111449 n : ℚ) ^ (A000032 (Nat.choose 2 (2 * n)) : ℤ)

end

end A111446.P1677869903642454991

/-!
# A111447: Least cube ending in k where k is a possible end of a cube.

The programs for A111447, there is no canonical definition to state claims against.
-/

/-! ## A111447.P11249280143670740884

`A111448(n)^3`
-/

namespace A111447.P11249280143670740884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111448 n ^ 3

end

end A111447.P11249280143670740884

/-! ## A111447.P4693687665108256822

`A000578(A111448(n))`
-/

namespace A111447.P4693687665108256822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A111448 n).toNat

end

end A111447.P4693687665108256822

/-! ## A111447.P7828171616009098032

`A002821(A111448(n)²)`
-/

namespace A111447.P7828171616009098032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A111448 n ^ 2).toNat

end

end A111447.P7828171616009098032

/-! ## A111447.P15158481065412570406

`A185549(A111448(n)²)`
-/

namespace A111447.P15158481065412570406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A111448 n ^ 2).toNat

end

end A111447.P15158481065412570406

/-! ## A111447.P11417160412592277546

`A008218(4*A111448(n))`
-/

namespace A111447.P11417160412592277546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (4 * A111448 n).toNat

end

end A111447.P11417160412592277546

/-!
# A111448: a(n) = A111447(n)^(1/3).

The programs for A111448, there is no canonical definition to state claims against.
-/

/-! ## A111448.P7393832003350817879

`A111447(n)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111448.P7393832003350817879
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111447 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A111448.P7393832003350817879

/-! ## A111448.P15679606977017536725

`A169885(n)%A159477(A338474(n))`
-/

namespace A111448.P15679606977017536725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169885 n) (A159477 (A338474 n).toNat)

end

end A111448.P15679606977017536725

/-! ## A111448.P12580148773082393364

`or(A008960(n), A326033(A133263(n)))`
-/

namespace A111448.P12580148773082393364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008960 n) (A326033 (A133263 n).toNat)

end

end A111448.P12580148773082393364

/-!
# A111449: A111446(n)^(1/2).

The programs for A111449, there is no canonical definition to state claims against.
-/

/-! ## A111449.P16924816330723845818

`A111446(n)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111449.P16924816330723845818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A111446 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A111449.P16924816330723845818

/-! ## A111449.P13398580825238146404

`sqrt(A111446(n))`
-/

namespace A111449.P13398580825238146404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A111446 n : ℝ)

end

end A111449.P13398580825238146404

/-! ## A111449.P17255099066260539457

`A056926(ceil(acot(n))*A111446(n))`
-/

namespace A111449.P17255099066260539457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A111446 n).toNat

end

end A111449.P17255099066260539457

/-! ## A111449.P10082846721776724792

`A007318(∑[n])*A056926(A111446(n))`
-/

namespace A111449.P10082846721776724792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A056926 (A111446 n).toNat

end

end A111449.P10082846721776724792

/-!
# A111451: Number of partitions of P where P=(5*n + 1) if n is even and P=((5*n + 1)/2) if n is odd.

The programs for A111451, there is no canonical definition to state claims against.
-/

/-! ## A111451.P6884876980124005354

`A000041((5*n+1)/gcd(2, n+1))`
-/

namespace A111451.P6884876980124005354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((5 * n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A111451.P6884876980124005354

/-! ## A111451.P2688697492069092009

`A000041((5*n+1)/(and(1, n)+1))`
-/

namespace A111451.P2688697492069092009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((5 * n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ))).toNat

end

end A111451.P2688697492069092009

/-! ## A111451.P2243593154997123351

`A000041((5*n+1)/(char[2*n+1]+1))`
-/

namespace A111451.P2243593154997123351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((5 * n + 1 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ))).toNat

end

end A111451.P2243593154997123351

/-! ## A111451.P1982186426312950156

`A119620(lcm(2, 5*n+1))`
-/

namespace A111451.P1982186426312950156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (Nat.lcm 2 (5 * n + 1))

end

end A111451.P1982186426312950156

/-! ## A111451.P5347504597098827718

`A035363(lcm(2, A016861(n)))`
-/

namespace A111451.P5347504597098827718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Int.lcm 2 (A016861 n))

end

end A111451.P5347504597098827718

/-!
# A111452: Numbers k that divide the square of the sum of the first k primes.

The programs for A111452, there is no canonical definition to state claims against.
-/

/-! ## A111452.P7499273284037514214

`A106265(A042207(n))%A042176(n)`
-/

namespace A111452.P7499273284037514214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106265 (A042207 n).toNat) (A042176 n)

end

end A111452.P7499273284037514214

/-!
# A111453: a(1)=1; for n>1, a(n) is smallest positive integer not occurring earlier in the sequence such that |a(n)-a(n-1)| is composite.

The programs for A111453, the canonical program `A111453.P7213750038279996792` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111453 has offset 1).

The definition of A111453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111453.P7213750038279996792

`ogf((1+3x-10x^3+10x^4-13x^6+13x^7-10x^9+10x^10-x^11-3x^12)/(1-2x+x^2-x^11+2x^12-x^13))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111453

/-- `ogf((1+3x-10x^3+10x^4-13x^6+13x^7-10x^9+10x^10-x^11-3x^12)/(1-2x+x^2-x^11+2x^12-x^13))` -/
def P7213750038279996792.Spec : Prop :=
  ∀ n, P7213750038279996792.a n = A111453 (n + 1)

theorem P7213750038279996792.correct : P7213750038279996792.Spec := by
  intro n
  simp only [A111453, Nat.add_sub_cancel]

end A111453

/-!
# A111454: a(n) = (n-4)^(n-3) - (n-3)^(n-4) + 1.

The programs for A111454, the canonical program `A111454.P431028018867949218` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111454 has offset 4).

The definition of A111454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)-(n+1)^n+1` (program `A111454.P431028018867949218`, by `A111454.P431028018867949218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111454.P431028018867949218

`n^(n+1)-(n+1)^n+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111454

/-- `n^(n+1)-(n+1)^n+1` -/
def P431028018867949218.Spec : Prop :=
  ∀ n, P431028018867949218.a n = A111454 (n + 4)

theorem P431028018867949218.correct : P431028018867949218.Spec := by
  intro n
  simp only [A111454, Nat.add_sub_cancel]

end A111454

/-! ## A111454.P3609546801771109123

`abs(A007925(n)+1)`
-/

namespace A111454.P3609546801771109123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007925 n + 1|

end

end A111454.P3609546801771109123

namespace A111454

/-- `abs(A007925(n)+1)` -/
def P3609546801771109123.Spec : Prop :=
  ∀ n, P3609546801771109123.a n = A111454 (n + 4)

end A111454

/-! ## A111454.P4680682096713767215

`(A007925(n)+1)*A057427(n)`
-/

namespace A111454.P4680682096713767215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007925 n + 1) * A057427 n

end

end A111454.P4680682096713767215

namespace A111454

/-- `(A007925(n)+1)*A057427(n)` -/
def P4680682096713767215.Spec : Prop :=
  ∀ n, P4680682096713767215.a n = A111454 (n + 4)

end A111454

/-! ## A111454.P2631506587406514451

`(A007925(n)+1)%A051442(n)`
-/

namespace A111454.P2631506587406514451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007925 n + 1) (A051442 n)

end

end A111454.P2631506587406514451

namespace A111454

/-- `(A007925(n)+1)%A051442(n)` -/
def P2631506587406514451.Spec : Prop :=
  ∀ n, P2631506587406514451.a n = A111454 (n + 4)

end A111454

/-! ## A111454.P18316059941480381157

`gcd(A007925(n)+1, A264668(n))`
-/

namespace A111454.P18316059941480381157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007925 n + 1) (A264668 n)

end

end A111454.P18316059941480381157

namespace A111454

/-- `gcd(A007925(n)+1, A264668(n))` -/
def P18316059941480381157.Spec : Prop :=
  ∀ n, (P18316059941480381157.a n : ℤ) = A111454 (n + 4)

end A111454

/-! ## A111454.P9664184468055820884

`(A007925(n)+1)*A211666(n+1)`
-/

namespace A111454.P9664184468055820884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007925 n + 1) * A211666 (n + 1)

end

end A111454.P9664184468055820884

namespace A111454

/-- `(A007925(n)+1)*A211666(n+1)` -/
def P9664184468055820884.Spec : Prop :=
  ∀ n, P9664184468055820884.a n = A111454 (n + 4)

end A111454

/-! ## A111454.P37769712183237238

`n*(A000312(n)-A060072(n+1))`
-/

namespace A111454.P37769712183237238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000312 n - A060072 (n + 1))

end

end A111454.P37769712183237238

namespace A111454

/-- `n*(A000312(n)-A060072(n+1))` -/
def P37769712183237238.Spec : Prop :=
  ∀ n, P37769712183237238.a n = A111454 (n + 4)

end A111454

/-!
# A111455: Numbers k such that 101*k + 97 is prime.

The programs for A111455, there is no canonical definition to state claims against.
-/

/-! ## A111455.P4936608993932141459

`eq[1, A001222(A158128(n+1)+n-4)]`
-/

namespace A111455.P4936608993932141459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158128 (n + 1) + ((n : ℤ) - 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111455.P4936608993932141459

/-!
# A111456: Pandigitals in some base (A061845) with an extra property: each number formed by the first i digits is divisible by i (digits in the pandigital base).

The programs for A111456, there is no canonical definition to state claims against.
-/

/-! ## A111456.P4084552158717937153

`filter[A256112(n+1), A378550(#)]`
-/

namespace A111456.P4084552158717937153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A111456.P4084552158717937153

/-!
# A111457: Number of semiprimes smaller than the n-th prime.

The programs for A111457, the canonical program `A111457.P8327054384123137751` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111457 has offset 1).

The definition of A111457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111457.P8327054384123137751

`A072000(A006093(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A111457

/-- `A072000(A006093(n+1))` -/
def P8327054384123137751.Spec : Prop :=
  ∀ n, P8327054384123137751.a n = A111457 (n + 1)

theorem P8327054384123137751.correct : P8327054384123137751.Spec := by
  intro n
  simp only [A111457, Nat.add_sub_cancel]

end A111457

/-! ## A111457.P9785579407210516686

`A072000(A039915(n+1))`
-/

namespace A111457.P9785579407210516686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A039915 (n + 1)).toNat

end

end A111457.P9785579407210516686

namespace A111457

/-- `A072000(A039915(n+1))` -/
def P9785579407210516686.Spec : Prop :=
  ∀ n, P9785579407210516686.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P9936950071903148354

`A072000(A156037(n+1))`
-/

namespace A111457.P9936950071903148354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A156037 (n + 1)).toNat

end

end A111457.P9936950071903148354

namespace A111457

/-- `A072000(A156037(n+1))` -/
def P9936950071903148354.Spec : Prop :=
  ∀ n, P9936950071903148354.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P7524386186267828503

`A072000(A068499(n+2))`
-/

namespace A111457.P7524386186267828503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A068499 (n + 2)).toNat

end

end A111457.P7524386186267828503

namespace A111457

/-- `A072000(A068499(n+2))` -/
def P7524386186267828503.Spec : Prop :=
  ∀ n, P7524386186267828503.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P7318491886816727770

`A072000(record[A000010(n+1)])`
-/

namespace A111457.P7318491886816727770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111457.P7318491886816727770

namespace A111457

/-- `A072000(record[A000010(n+1)])` -/
def P7318491886816727770.Spec : Prop :=
  ∀ n, P7318491886816727770.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P2943155645813026004

`A072000(A000040(n+1)-1)`
-/

namespace A111457.P2943155645813026004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000040 (n + 1) - 1).toNat

end

end A111457.P2943155645813026004

namespace A111457

/-- `A072000(A000040(n+1)-1)` -/
def P2943155645813026004.Spec : Prop :=
  ∀ n, P2943155645813026004.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P9576160458217280477

`A072000(A008578(n+2)-1)`
-/

namespace A111457.P9576160458217280477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A008578 (n + 2) - 1).toNat

end

end A111457.P9576160458217280477

namespace A111457

/-- `A072000(A008578(n+2)-1)` -/
def P9576160458217280477.Spec : Prop :=
  ∀ n, P9576160458217280477.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P12439087707119097484

`A072000(sqrt(A001248(n+1))-1)`
-/

namespace A111457.P12439087707119097484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) - 1)).toNat

end

end A111457.P12439087707119097484

namespace A111457

/-- `A072000(sqrt(A001248(n+1))-1)` -/
def P12439087707119097484.Spec : Prop :=
  ∀ n, P12439087707119097484.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P1959176658617477195

`A072000(record[A006530(n+2)-1])`
-/

namespace A111457.P1959176658617477195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111457.P1959176658617477195

namespace A111457

/-- `A072000(record[A006530(n+2)-1])` -/
def P1959176658617477195.Spec : Prop :=
  ∀ n, P1959176658617477195.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P14045080242270665605

`A072000(record[A020639(n+2)-1])`
-/

namespace A111457.P14045080242270665605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111457.P14045080242270665605

namespace A111457

/-- `A072000(record[A020639(n+2)-1])` -/
def P14045080242270665605.Spec : Prop :=
  ∀ n, P14045080242270665605.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P2207559042429779862

`A072000(A000010(A008578(n+2)))`
-/

namespace A111457.P2207559042429779862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000010 (A008578 (n + 2)).toNat).toNat

end

end A111457.P2207559042429779862

namespace A111457

/-- `A072000(A000010(A008578(n+2)))` -/
def P2207559042429779862.Spec : Prop :=
  ∀ n, P2207559042429779862.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P6642236156191498113

`A072000(A000040(n+1))`
-/

namespace A111457.P6642236156191498113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000040 (n + 1)).toNat

end

end A111457.P6642236156191498113

namespace A111457

/-- `A072000(A000040(n+1))` -/
def P6642236156191498113.Spec : Prop :=
  ∀ n, P6642236156191498113.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P7030868070661181121

`A072000(A006005(n+1))`
-/

namespace A111457.P7030868070661181121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A006005 (n + 1)).toNat

end

end A111457.P7030868070661181121

namespace A111457

/-- `A072000(A006005(n+1))` -/
def P7030868070661181121.Spec : Prop :=
  ∀ n, P7030868070661181121.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P1350832390496271119

`A072000(A008578(n+2))`
-/

namespace A111457.P1350832390496271119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A008578 (n + 2)).toNat

end

end A111457.P1350832390496271119

namespace A111457

/-- `A072000(A008578(n+2))` -/
def P1350832390496271119.Spec : Prop :=
  ∀ n, P1350832390496271119.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P6471743574650580765

`A072000(A171525(n+2))`
-/

namespace A111457.P6471743574650580765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A171525 (n + 2)).toNat

end

end A111457.P6471743574650580765

namespace A111457

/-- `A072000(A171525(n+2))` -/
def P6471743574650580765.Spec : Prop :=
  ∀ n, P6471743574650580765.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P12057564004736739085

`A072000(sqrt(A001248(n+1)))`
-/

namespace A111457.P12057564004736739085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A111457.P12057564004736739085

namespace A111457

/-- `A072000(sqrt(A001248(n+1)))` -/
def P12057564004736739085.Spec : Prop :=
  ∀ n, P12057564004736739085.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P10076558074938912761

`A072000(record[A006530(n+2)])`
-/

namespace A111457.P10076558074938912761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111457.P10076558074938912761

namespace A111457

/-- `A072000(record[A006530(n+2)])` -/
def P10076558074938912761.Spec : Prop :=
  ∀ n, P10076558074938912761.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P13758116112557312436

`A072000(record[A020639(n+2)])`
-/

namespace A111457.P13758116112557312436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111457.P13758116112557312436

namespace A111457

/-- `A072000(record[A020639(n+2)])` -/
def P13758116112557312436.Spec : Prop :=
  ∀ n, P13758116112557312436.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P8758791280788163435

`A072000(A075643(n+2))`
-/

namespace A111457.P8758791280788163435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A075643 (n + 2)).toNat

end

end A111457.P8758791280788163435

namespace A111457

/-- `A072000(A075643(n+2))` -/
def P8758791280788163435.Spec : Prop :=
  ∀ n, P8758791280788163435.a n = A111457 (n + 1)

end A111457

/-! ## A111457.P3521210193819977407

`A072000(A373630(n+1))-(n+1)`
-/

namespace A111457.P3521210193819977407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A373630 (n + 1)).toNat - (n + 1 : ℤ)

end

end A111457.P3521210193819977407

namespace A111457

/-- `A072000(A373630(n+1))-(n+1)` -/
def P3521210193819977407.Spec : Prop :=
  ∀ n, P3521210193819977407.a n = A111457 (n + 1)

end A111457

/-!
# A111458: Numbers that cannot be represented as the sum of at most three Fibonacci numbers (with repetitions allowed).

The programs for A111458, the canonical program `A111458.P16703842777134860266` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111458 has offset 1).

The definition of A111458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111458.P16703842777134860266

`lt[3, A007895(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111458

/-- `lt[3, A007895(n)]` -/
def P16703842777134860266.Spec : Prop :=
  ∀ n, (P16703842777134860266.a n : ℤ) = A111458 (n + 1)

theorem P16703842777134860266.correct : P16703842777134860266.Spec := by
  intro n
  simp only [A111458, Nat.add_sub_cancel]

end A111458

/-! ## A111458.P17867564055987564622

`lt[6, A104324(n)]`
-/

namespace A111458.P17867564055987564622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111458.P17867564055987564622

namespace A111458

/-- `lt[6, A104324(n)]` -/
def P17867564055987564622.Spec : Prop :=
  ∀ n, (P17867564055987564622.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P15392209059643422532

`lt[3, dr(A014417(n))]`
-/

namespace A111458.P15392209059643422532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111458.P15392209059643422532

namespace A111458

/-- `lt[3, dr(A014417(n))]` -/
def P15392209059643422532.Spec : Prop :=
  ∀ n, (P15392209059643422532.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P5452562224382590473

`lt[3, n-A219641(n)]`
-/

namespace A111458.P5452562224382590473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111458.P5452562224382590473

namespace A111458

/-- `lt[3, n-A219641(n)]` -/
def P5452562224382590473.Spec : Prop :=
  ∀ n, (P5452562224382590473.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P11835313919769124574

`eq[0, A319396(n+9)]+9`
-/

namespace A111458.P11835313919769124574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9

end

end A111458.P11835313919769124574

namespace A111458

/-- `eq[0, A319396(n+9)]+9` -/
def P11835313919769124574.Spec : Prop :=
  ∀ n, (P11835313919769124574.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P16889759767434544563

`eq[A034188(n), A319396(n)]`
-/

namespace A111458.P16889759767434544563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P16889759767434544563

namespace A111458

/-- `eq[A034188(n), A319396(n)]` -/
def P16889759767434544563.Spec : Prop :=
  ∀ n, (P16889759767434544563.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P17128789649000497347

`eq[A034214(n), A319396(n)]`
-/

namespace A111458.P17128789649000497347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P17128789649000497347

namespace A111458

/-- `eq[A034214(n), A319396(n)]` -/
def P17128789649000497347.Spec : Prop :=
  ∀ n, (P17128789649000497347.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P2743682434976114063

`eq[A045534(n), A319396(n)]`
-/

namespace A111458.P2743682434976114063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P2743682434976114063

namespace A111458

/-- `eq[A045534(n), A319396(n)]` -/
def P2743682434976114063.Spec : Prop :=
  ∀ n, (P2743682434976114063.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P2042392398884173623

`eq[A066156(n), A319396(n)]`
-/

namespace A111458.P2042392398884173623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P2042392398884173623

namespace A111458

/-- `eq[A066156(n), A319396(n)]` -/
def P2042392398884173623.Spec : Prop :=
  ∀ n, (P2042392398884173623.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P15731133300394353839

`eq[A102422(n), A319396(n)]`
-/

namespace A111458.P15731133300394353839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P15731133300394353839

namespace A111458

/-- `eq[A102422(n), A319396(n)]` -/
def P15731133300394353839.Spec : Prop :=
  ∀ n, (P15731133300394353839.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P6475092086330210303

`eq[A114563(n), A319396(n)]`
-/

namespace A111458.P6475092086330210303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P6475092086330210303

namespace A111458

/-- `eq[A114563(n), A319396(n)]` -/
def P6475092086330210303.Spec : Prop :=
  ∀ n, (P6475092086330210303.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P15723141478548878495

`eq[A130713(n), A319396(n)]`
-/

namespace A111458.P15723141478548878495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P15723141478548878495

namespace A111458

/-- `eq[A130713(n), A319396(n)]` -/
def P15723141478548878495.Spec : Prop :=
  ∀ n, (P15723141478548878495.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P13358273901411247988

`eq[A130716(n), A319396(n)]`
-/

namespace A111458.P13358273901411247988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P13358273901411247988

namespace A111458

/-- `eq[A130716(n), A319396(n)]` -/
def P13358273901411247988.Spec : Prop :=
  ∀ n, (P13358273901411247988.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P5297508215746024917

`eq[A130779(n), A319396(n)]`
-/

namespace A111458.P5297508215746024917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P5297508215746024917

namespace A111458

/-- `eq[A130779(n), A319396(n)]` -/
def P5297508215746024917.Spec : Prop :=
  ∀ n, (P5297508215746024917.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P11334581134546965109

`eq[A143090(n), A319396(n)]`
-/

namespace A111458.P11334581134546965109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P11334581134546965109

namespace A111458

/-- `eq[A143090(n), A319396(n)]` -/
def P11334581134546965109.Spec : Prop :=
  ∀ n, (P11334581134546965109.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P14990641273152555685

`eq[A143721(n), A319396(n)]`
-/

namespace A111458.P14990641273152555685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P14990641273152555685

namespace A111458

/-- `eq[A143721(n), A319396(n)]` -/
def P14990641273152555685.Spec : Prop :=
  ∀ n, (P14990641273152555685.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P7523433855539060498

`eq[A143722(n), A319396(n)]`
-/

namespace A111458.P7523433855539060498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P7523433855539060498

namespace A111458

/-- `eq[A143722(n), A319396(n)]` -/
def P7523433855539060498.Spec : Prop :=
  ∀ n, (P7523433855539060498.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P16699504997619814085

`eq[A143733(n), A319396(n)]`
-/

namespace A111458.P16699504997619814085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P16699504997619814085

namespace A111458

/-- `eq[A143733(n), A319396(n)]` -/
def P16699504997619814085.Spec : Prop :=
  ∀ n, (P16699504997619814085.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P9021202261681050513

`eq[A143755(n), A319396(n)]`
-/

namespace A111458.P9021202261681050513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P9021202261681050513

namespace A111458

/-- `eq[A143755(n), A319396(n)]` -/
def P9021202261681050513.Spec : Prop :=
  ∀ n, (P9021202261681050513.a n : ℤ) = A111458 (n + 1)

end A111458

/-! ## A111458.P16831185479629054461

`eq[A143757(n), A319396(n)]`
-/

namespace A111458.P16831185479629054461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111458.P16831185479629054461

namespace A111458

/-- `eq[A143757(n), A319396(n)]` -/
def P16831185479629054461.Spec : Prop :=
  ∀ n, (P16831185479629054461.a n : ℤ) = A111458 (n + 1)

end A111458

/-!
# A111459: Generalized Somos-4 sequence with a(n-2)^2 replaced by a(n-2)^5.

The programs for A111459, the canonical program `A111459.P5110219709275058517` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111459 has offset 0).

The definition of A111459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111459.P5110219709275058517

`(a(n-1)*a(n-3)+a(n-2)^5)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111459

/-- `(a(n-1)*a(n-3)+a(n-2)^5)/a(n-4)` -/
def P5110219709275058517.Spec : Prop :=
  ∀ n, P5110219709275058517.a n = (A111459 n : ℚ)

end A111459

/-! ## A111459.P6068505524842765959

`A029733(2*(2*a(n-2)-a(n-4)))+2^val(n+1, 2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A111459.P6068505524842765959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A029733 (2 * (2 * a (n - 2) - a (n - 4))).toNat + (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A111459.P6068505524842765959

namespace A111459

/-- `A029733(2*(2*a(n-2)-a(n-4)))+2^val(n+1, 2)` -/
def P6068505524842765959.Spec : Prop :=
  ∀ n, P6068505524842765959.a n = A111459 n

end A111459

/-! ## A111459.P7056365096310149005

`∏{p}[A025461(A121197(n+1)), #]`
-/

namespace A111459.P7056365096310149005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 (A121197 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111459.P7056365096310149005

namespace A111459

/-- `∏{p}[A025461(A121197(n+1)), #]` -/
def P7056365096310149005.Spec : Prop :=
  ∀ n, (P7056365096310149005.a n : ℤ) = A111459 n

end A111459

/-! ## A111459.P10234093820198521953

`A167865(A060990(n)+A000142(n))`
-/

namespace A111459.P10234093820198521953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A060990 n + A000142 n).toNat

end

end A111459.P10234093820198521953

namespace A111459

/-- `A167865(A060990(n)+A000142(n))` -/
def P10234093820198521953.Spec : Prop :=
  ∀ n, P10234093820198521953.a n = A111459 n

end A111459

/-!
# A111466: a(1) = 1, a(n+1) = a(n) - F(n+1), if F(n+1) <= a(n), else a(n+1) = a(n) + F(n+1). F(n) is the n-th Fibonacci number (A000045).

The programs for A111466, the canonical program `A111466.P4297006795947744142` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111466 has offset 1).

The definition of A111466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111466.P4297006795947744142

`ogf((1+2x^2+x^3)/(1-4x^3-x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111466

/-- `ogf((1+2x^2+x^3)/(1-4x^3-x^6))` -/
def P4297006795947744142.Spec : Prop :=
  ∀ n, P4297006795947744142.a n = A111466 (n + 1)

theorem P4297006795947744142.correct : P4297006795947744142.Spec := by
  intro n
  simp only [A111466, Nat.add_sub_cancel]

end A111466

/-! ## A111466.P4078905407378025872

`∑[(2-gcd(n+2, n-1))*A000045(n+1)]`
-/

namespace A111466.P4078905407378025872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℤ)) * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111466.P4078905407378025872

namespace A111466

/-- `∑[(2-gcd(n+2, n-1))*A000045(n+1)]` -/
def P4078905407378025872.Spec : Prop :=
  ∀ n, P4078905407378025872.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P9420824221291004912

`A079977(A047228(n+1))`
-/

namespace A111466.P9420824221291004912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A047228 (n + 1)).toNat

end

end A111466.P9420824221291004912

namespace A111466

/-- `A079977(A047228(n+1))` -/
def P9420824221291004912.Spec : Prop :=
  ∀ n, P9420824221291004912.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P13583045219187113774

`∑[A000045(n+1)*A131561(n+1)]`
-/

namespace A111466.P13583045219187113774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A131561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111466.P13583045219187113774

namespace A111466

/-- `∑[A000045(n+1)*A131561(n+1)]` -/
def P13583045219187113774.Spec : Prop :=
  ∀ n, P13583045219187113774.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P11069738100649623161

`∑[(A061800(n)-n)*A000045(n+1)]`
-/

namespace A111466.P11069738100649623161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061800 n - (n : ℤ)) * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111466.P11069738100649623161

namespace A111466

/-- `∑[(A061800(n)-n)*A000045(n+1)]` -/
def P11069738100649623161.Spec : Prop :=
  ∀ n, P11069738100649623161.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P13825048051135109320

`A079977(A010892(2*n)+2*n+1)`
-/

namespace A111466.P13825048051135109320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (A010892 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A111466.P13825048051135109320

namespace A111466

/-- `A079977(A010892(2*n)+2*n+1)` -/
def P13825048051135109320.Spec : Prop :=
  ∀ n, P13825048051135109320.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P6453712269239226346

`A000045(n+1)+a(n-1)*A102283(n+1)` with `a(0)=1`
-/

namespace A111466.P6453712269239226346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n + 1) + a (n - 1) * A102283 (n + 1)

end

end A111466.P6453712269239226346

namespace A111466

/-- `A000045(n+1)+a(n-1)*A102283(n+1)` -/
def P6453712269239226346.Spec : Prop :=
  ∀ n, P6453712269239226346.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P13766360863888241519

`A000045(Δ[A001859(A004396(n))])`
-/

namespace A111466.P13766360863888241519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A111466.P13766360863888241519

namespace A111466

/-- `A000045(Δ[A001859(A004396(n))])` -/
def P13766360863888241519.Spec : Prop :=
  ∀ n, P13766360863888241519.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P17765482820821322749

`A117647(Δ[A000217(A004396(n))])`
-/

namespace A111466.P17765482820821322749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (f1 (n + 1) - f1 n).toNat

end

end A111466.P17765482820821322749

namespace A111466

/-- `A117647(Δ[A000217(A004396(n))])` -/
def P17765482820821322749.Spec : Prop :=
  ∀ n, P17765482820821322749.a n = A111466 (n + 1)

end A111466

/-! ## A111466.P9075745732723143743

`(A000045(n+1)+a(n-1))%A055389(n+1)` with `a(0)=1`
-/

namespace A111466.P9075745732723143743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000045 (n + 1) + a (n - 1)) (A055389 (n + 1))

end

end A111466.P9075745732723143743

namespace A111466

/-- `(A000045(n+1)+a(n-1))%A055389(n+1)` -/
def P9075745732723143743.Spec : Prop :=
  ∀ n, P9075745732723143743.a n = A111466 (n + 1)

end A111466

/-!
# A111467: The following triangle contains n smallest numbers with the prime signature of n!. Sequence contains the triangle by rows.

The programs for A111467, there is no canonical definition to state claims against.
-/

/-! ## A111467.P9352086372130815434

`∩[A143896(n+1), A325511(n+1)]`
-/

namespace A111467.P9352086372130815434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111467.P9352086372130815434

/-! ## A111467.P8254615355912364671

`∩[A283808(n+1), A325511(n+1)]`
-/

namespace A111467.P8254615355912364671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111467.P8254615355912364671

/-! ## A111467.P10227669629093979516

`A000005(∏[ceil(A265546(n)/2)+1])`
-/

namespace A111467.P10227669629093979516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265546 n : ℚ) / 2⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111467.P10227669629093979516

/-! ## A111467.P17163338301239958706

`record[gcd(A325475(2*n+3), A325511(n+1))]`
-/

namespace A111467.P17163338301239958706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325475 (2 * n + 3)) (A325511 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111467.P17163338301239958706

/-!
# A111468: Leading diagonal of A111467.

The programs for A111468, there is no canonical definition to state claims against.
-/

/-! ## A111468.P10125272627332173907

`A111467(∑[n+1])`
-/

namespace A111468.P10125272627332173907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111468.P10125272627332173907

/-! ## A111468.P16841194039541250303

`record[char[C(n, 2)-1]*A111467(n+1)]`
-/

namespace A111468.P16841194039541250303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A111467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111468.P16841194039541250303

/-! ## A111468.P7923019009976965954

`record[A111467(A038722(n+1))]`
-/

namespace A111468.P7923019009976965954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111467 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111468.P7923019009976965954

/-! ## A111468.P16057069309705588558

`record[A111467(A130270(n+1))]`
-/

namespace A111468.P16057069309705588558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111467 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111468.P16057069309705588558

/-! ## A111468.P9686394743738694974

`record[A111467(A278504(n+1))]`
-/

namespace A111468.P9686394743738694974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111467 (A278504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111468.P9686394743738694974

/-!
# A111469: Row sums of A111467.

The programs for A111469, there is no canonical definition to state claims against.
-/

/-! ## A111469.P13011291946773886286

`A285735(∑[floor(2^n+3^(n-1))²])`
-/

namespace A111469.P13011291946773886286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111469.P13011291946773886286

/-!
# A111473: a(1) = 3, a(n) = least k such that concatenation of n copies of k with all previous concatenation gives a prime.

The programs for A111473, there is no canonical definition to state claims against.
-/

/-! ## A111473.P9345545045309233171

`A144305((2-∑[n])²)`
-/

namespace A111473.P9345545045309233171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144305 ((2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2).toNat

end

end A111473.P9345545045309233171

/-!
# A111475: a(1) = 7, a(n) = least k such that concatenation of n copies of k with all previous concatenation gives a prime.

The programs for A111475, there is no canonical definition to state claims against.
-/

/-! ## A111475.P5905360418096735964

`A352982(or(n, a(n-1)))` with `a(0)=7, a(1)=3`
-/

namespace A111475.P5905360418096735964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 3] fun n a =>
  A352982 (Int.lor (n : ℤ) (a (n - 1))).toNat

end

end A111475.P5905360418096735964

/-! ## A111475.P491337654960167979

`A321258((2^n+1-n)*a(n-1))` with `a(0)=7`
-/

namespace A111475.P491337654960167979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A321258 (((2 ^ n + 1 : ℤ) - (n : ℤ)) * a (n - 1)).toNat

end

end A111475.P491337654960167979

/-! ## A111475.P3197204611533615229

`A026807(A003463(n)+30)`
-/

namespace A111475.P3197204611533615229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A003463 n + 30).toNat

end

end A111475.P3197204611533615229

/-!
# A111483: Triangular numbers all of whose digits are primes.

The programs for A111483, there is no canonical definition to state claims against.
-/

/-! ## A111483.P15965111924553188124

`∩[C(n+1, 2), A046034(n+1)]`
-/

namespace A111483.P15965111924553188124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111483.P15965111924553188124

/-! ## A111483.P9890037119235063639

`∩[A046034(n+1), A000217(n)]`
-/

namespace A111483.P9890037119235063639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111483.P9890037119235063639

/-! ## A111483.P14468364495169957370

`∩[A046034(n+1), A000096(n)+1]`
-/

namespace A111483.P14468364495169957370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111483.P14468364495169957370

/-! ## A111483.P17604716779103691530

`∩[A046034(n+1), A253145(n+1)]`
-/

namespace A111483.P17604716779103691530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111483.P17604716779103691530

/-! ## A111483.P11954219265565205600

`∩[A046034(n+1), A161680(n+2)]`
-/

namespace A111483.P11954219265565205600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111483.P11954219265565205600

/-!
# A111484: Triangular numbers all of whose digits are nonprimes.

The programs for A111484, there is no canonical definition to state claims against.
-/

/-! ## A111484.P14017570607659186149

`∩[A084984(n+1), A000217(n)]`
-/

namespace A111484.P14017570607659186149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111484.P14017570607659186149

/-! ## A111484.P9328019906923482041

`∩[A084984(n+1), A186783(n+1)]`
-/

namespace A111484.P9328019906923482041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111484.P9328019906923482041

/-! ## A111484.P4735899099844885379

`∩[A084984(n+1), A055998(n)-A005843(n)]`
-/

namespace A111484.P4735899099844885379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n - A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111484.P4735899099844885379

/-! ## A111484.P4236654345134707537

`eq[A068607(n), A193238(n)]`
-/

namespace A111484.P4236654345134707537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111484.P4236654345134707537

/-! ## A111484.P18147360934939903884

`eq[A169603(n), A193238(n)]`
-/

namespace A111484.P18147360934939903884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111484.P18147360934939903884

/-!
# A111485: Number of (-1,0,1) periodic irreducible matrices up to sign change, transposition and mirroring over the antidiagonal.

The programs for A111485, there is no canonical definition to state claims against.
-/

/-! ## A111485.P16526178879207982368

`A364536(sqrt(9*∑[-(n+1)]²)-3)+1`
-/

namespace A111485.P16526178879207982368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364536 (SequenceMachineLib.roundAway (Real.sqrt ((9 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℝ) - 3)).toNat + 1

end

end A111485.P16526178879207982368

/-!
# A111486: Decimal expansion of the square of sine of 1 degree.

The programs for A111486, there is no canonical definition to state claims against.
-/

/-! ## A111486.P13672518289214235790

`9-A111590(n)`
-/

namespace A111486.P13672518289214235790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A111590 n

end

end A111486.P13672518289214235790

/-!
# A111488: Primes having only {0, 1, 3, 6} as digits.

The programs for A111488, there is no canonical definition to state claims against.
-/

/-! ## A111488.P12719715814419887092

`p?[A222250(A007284(n))]`
-/

namespace A111488.P12719715814419887092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A007284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111488.P12719715814419887092

/-! ## A111488.P12581434109356411609

`p?[A137386(A037460(n)+1)]`
-/

namespace A111488.P12581434109356411609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (A037460 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111488.P12581434109356411609

/-! ## A111488.P11964021157681610778

`p?[record[n-A107128(A107128(n))]]`
-/

namespace A111488.P11964021157681610778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107128 (A107128 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111488.P11964021157681610778

/-! ## A111488.P984919867355124621

`∩[A036960(n+1), A137386(n+1)]`
-/

namespace A111488.P984919867355124621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111488.P984919867355124621

/-! ## A111488.P4284029560318992930

`∩[A036962(n+1), A137386(n+1)]`
-/

namespace A111488.P4284029560318992930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111488.P4284029560318992930

/-!
# A111489: Primes of the form prime(k) + composite(k) for some k.

The programs for A111489, the canonical program `A111489.P16863949455046068212` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111489 has offset 1).

The definition of A111489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111489.P1044720334129132072

`p?[A064799(n+1)]`
-/

namespace A111489.P1044720334129132072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P1044720334129132072

namespace A111489

/-- `p?[A064799(n+1)]` -/
def P1044720334129132072.Spec : Prop :=
  ∀ n, P1044720334129132072.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P7573920154251166906

`p?[A171639(n+2)]`
-/

namespace A111489.P7573920154251166906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P7573920154251166906

namespace A111489

/-- `p?[A171639(n+2)]` -/
def P7573920154251166906.Spec : Prop :=
  ∀ n, P7573920154251166906.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P10817838130717275126

`p?[p?[2*n+1]+A018252(n+3)]`
-/

namespace A111489.P10817838130717275126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) + A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P10817838130717275126

namespace A111489

/-- `p?[p?[2*n+1]+A018252(n+3)]` -/
def P10817838130717275126.Spec : Prop :=
  ∀ n, P10817838130717275126.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P192335675695190159

`∩[A064799(n+1), A348283(n+1)]`
-/

namespace A111489.P192335675695190159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111489.P192335675695190159

namespace A111489

/-- `∩[A064799(n+1), A348283(n+1)]` -/
def P192335675695190159.Spec : Prop :=
  ∀ n, (P192335675695190159.a n : ℤ) = A111489 (n + 1)

end A111489

/-! ## A111489.P17901631931765148713

`∩[A064799(n+1), A383300(n+1)]`
-/

namespace A111489.P17901631931765148713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111489.P17901631931765148713

namespace A111489

/-- `∩[A064799(n+1), A383300(n+1)]` -/
def P17901631931765148713.Spec : Prop :=
  ∀ n, (P17901631931765148713.a n : ℤ) = A111489 (n + 1)

end A111489

/-! ## A111489.P2080898971706297224

`∩[A171639(n+1), A383300(n+1)]`
-/

namespace A111489.P2080898971706297224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111489.P2080898971706297224

namespace A111489

/-- `∩[A171639(n+1), A383300(n+1)]` -/
def P2080898971706297224.Spec : Prop :=
  ∀ n, (P2080898971706297224.a n : ℤ) = A111489 (n + 1)

end A111489

/-! ## A111489.P4231965196682674782

`p?[A002808(n+1)+A000040(n+1)]`
-/

namespace A111489.P4231965196682674782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P4231965196682674782

namespace A111489

/-- `p?[A002808(n+1)+A000040(n+1)]` -/
def P4231965196682674782.Spec : Prop :=
  ∀ n, P4231965196682674782.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P1341328227923041656

`p?[A072668(n+1)+A008864(n+1)]`
-/

namespace A111489.P1341328227923041656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P1341328227923041656

namespace A111489

/-- `p?[A072668(n+1)+A008864(n+1)]` -/
def P1341328227923041656.Spec : Prop :=
  ∀ n, P1341328227923041656.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P2904793366349739827

`p?[A002808(n+1)+A008578(n+2)]`
-/

namespace A111489.P2904793366349739827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P2904793366349739827

namespace A111489

/-- `p?[A002808(n+1)+A008578(n+2)]` -/
def P2904793366349739827.Spec : Prop :=
  ∀ n, P2904793366349739827.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P10543813040287893410

`p?[A000040(n+1)+A018252(n+2)]`
-/

namespace A111489.P10543813040287893410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P10543813040287893410

namespace A111489

/-- `p?[A000040(n+1)+A018252(n+2)]` -/
def P10543813040287893410.Spec : Prop :=
  ∀ n, P10543813040287893410.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P2810030714078135587

`p?[A018252(n+2)+A008578(n+2)]`
-/

namespace A111489.P2810030714078135587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P2810030714078135587

namespace A111489

/-- `p?[A018252(n+2)+A008578(n+2)]` -/
def P2810030714078135587.Spec : Prop :=
  ∀ n, P2810030714078135587.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P16863949455046068212

`p?[lt[0, A082023(n)]+A000040(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111489

/-- `p?[lt[0, A082023(n)]+A000040(n+1)]` -/
def P16863949455046068212.Spec : Prop :=
  ∀ n, P16863949455046068212.a n = A111489 (n + 1)

theorem P16863949455046068212.correct : P16863949455046068212.Spec := by
  intro n
  simp only [A111489, Nat.add_sub_cancel]

end A111489

/-! ## A111489.P9702881264523822317

`p?[lt[1, A328847(n)]+A000040(n+1)]`
-/

namespace A111489.P9702881264523822317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P9702881264523822317

namespace A111489

/-- `p?[lt[1, A328847(n)]+A000040(n+1)]` -/
def P9702881264523822317.Spec : Prop :=
  ∀ n, P9702881264523822317.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P4960165297340797790

`p?[A008578(n+1)+comp[A006530(n+1)]]`
-/

namespace A111489.P4960165297340797790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P4960165297340797790

namespace A111489

/-- `p?[A008578(n+1)+comp[A006530(n+1)]]` -/
def P4960165297340797790.Spec : Prop :=
  ∀ n, P4960165297340797790.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P14433862268759979424

`p?[A000040(n+1)+comp[A158611(n+1)]]`
-/

namespace A111489.P14433862268759979424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P14433862268759979424

namespace A111489

/-- `p?[A000040(n+1)+comp[A158611(n+1)]]` -/
def P14433862268759979424.Spec : Prop :=
  ∀ n, P14433862268759979424.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P15917559854294319664

`p?[A182986(n+1)+comp[A182986(n+1)]]`
-/

namespace A111489.P15917559854294319664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P15917559854294319664

namespace A111489

/-- `p?[A182986(n+1)+comp[A182986(n+1)]]` -/
def P15917559854294319664.Spec : Prop :=
  ∀ n, P15917559854294319664.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P12838380128687995544

`p?[A002808(n+1)+A006093(n+1)+1]`
-/

namespace A111489.P12838380128687995544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P12838380128687995544

namespace A111489

/-- `p?[A002808(n+1)+A006093(n+1)+1]` -/
def P12838380128687995544.Spec : Prop :=
  ∀ n, P12838380128687995544.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P12495070493408407244

`p?[A000040(n+1)+A072668(n+1)+1]`
-/

namespace A111489.P12495070493408407244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A072668 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P12495070493408407244

namespace A111489

/-- `p?[A000040(n+1)+A072668(n+1)+1]` -/
def P12495070493408407244.Spec : Prop :=
  ∀ n, P12495070493408407244.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P11529171535179373388

`p?[A018252(n+2)+A006093(n+1)+1]`
-/

namespace A111489.P11529171535179373388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P11529171535179373388

namespace A111489

/-- `p?[A018252(n+2)+A006093(n+1)+1]` -/
def P11529171535179373388.Spec : Prop :=
  ∀ n, P11529171535179373388.a n = A111489 (n + 1)

end A111489

/-! ## A111489.P17829032873761814397

`p?[A000040(n+1)+A079696(n+1)-1]`
-/

namespace A111489.P17829032873761814397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A079696 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111489.P17829032873761814397

namespace A111489

/-- `p?[A000040(n+1)+A079696(n+1)-1]` -/
def P17829032873761814397.Spec : Prop :=
  ∀ n, P17829032873761814397.a n = A111489 (n + 1)

end A111489

/-!
# A111490: a(n) = n + Sum_{k=1..n} (n mod k). Row sums of A372727.

The programs for A111490, the canonical program `A111490.P12273219940558635463` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111490 has offset 0).

The definition of A111490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111490.P12273219940558635463

`∑[2*n-∑{d}[n, #]]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111490

/-- `∑[2*n-∑{d}[n, #]]` -/
def P12273219940558635463.Spec : Prop :=
  ∀ n, P12273219940558635463.a n = A111490 n

theorem P12273219940558635463.correct : P12273219940558635463.Spec := by
  intro n
  simp only [A111490]

end A111490

/-! ## A111490.P6127274705425192988

`∑[n-∑{d}[n, #]+n]`
-/

namespace A111490.P6127274705425192988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111490.P6127274705425192988

namespace A111490

/-- `∑[n-∑{d}[n, #]+n]` -/
def P6127274705425192988.Spec : Prop :=
  ∀ n, P6127274705425192988.a n = A111490 n

theorem P6127274705425192988.correct : P6127274705425192988.Spec := by
  intro n
  simp only [A111490, Nat.add_sub_cancel, A111490.P6127274705425192988.f2, A111490.P6127274705425192988.f1, A111490.P6127274705425192988.a, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A111490

/-! ## A111490.P1911176485815457555

`∑[n-(∑{d}[n, #]-n)]`
-/

namespace A111490.P1911176485815457555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111490.P1911176485815457555

namespace A111490

/-- `∑[n-(∑{d}[n, #]-n)]` -/
def P1911176485815457555.Spec : Prop :=
  ∀ n, P1911176485815457555.a n = A111490 n

theorem P1911176485815457555.correct : P1911176485815457555.Spec := by
  intro n
  simp only [A111490, Nat.add_sub_cancel, A111490.P1911176485815457555.f2, A111490.P1911176485815457555.f1, A111490.P1911176485815457555.a, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A111490

/-! ## A111490.P6408214633339000613

`2*n+a(n-1)-∑{d}[n, #]` with `a(0)=0`
-/

namespace A111490.P6408214633339000613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) + (a (n - 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A111490.P6408214633339000613

namespace A111490

/-- `2*n+a(n-1)-∑{d}[n, #]` -/
def P6408214633339000613.Spec : Prop :=
  ∀ n, P6408214633339000613.a n = A111490 n

end A111490

/-! ## A111490.P1590323016928061355

`2*n-(∑{d}[n, #]-a(n-1))` with `a(0)=0`
-/

namespace A111490.P1590323016928061355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - a (n - 1))

end

end A111490.P1590323016928061355

namespace A111490

/-- `2*n-(∑{d}[n, #]-a(n-1))` -/
def P1590323016928061355.Spec : Prop :=
  ∀ n, P1590323016928061355.a n = A111490 n

end A111490

/-! ## A111490.P790820010596291606

`n²-∑[A039653(n)]`
-/

namespace A111490.P790820010596291606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111490.P790820010596291606

namespace A111490

/-- `n²-∑[A039653(n)]` -/
def P790820010596291606.Spec : Prop :=
  ∀ n, P790820010596291606.a n = A111490 n

end A111490

/-! ## A111490.P3528617087734921210

`∑[n]-A244048(n+1)`
-/

namespace A111490.P3528617087734921210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A244048 (n + 1)

end

end A111490.P3528617087734921210

namespace A111490

/-- `∑[n]-A244048(n+1)` -/
def P3528617087734921210.Spec : Prop :=
  ∀ n, P3528617087734921210.a n = A111490 n

end A111490

/-! ## A111490.P9654582861462657304

`A123327(n+1)-(n+1)`
-/

namespace A111490.P9654582861462657304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123327 (n + 1) - (n + 1 : ℤ)

end

end A111490.P9654582861462657304

namespace A111490

/-- `A123327(n+1)-(n+1)` -/
def P9654582861462657304.Spec : Prop :=
  ∀ n, P9654582861462657304.a n = A111490 n

end A111490

/-! ## A111490.P6842201172582352802

`A004125(A028310(n))+n`
-/

namespace A111490.P6842201172582352802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A028310 n).toNat + (n : ℤ)

end

end A111490.P6842201172582352802

namespace A111490

/-- `A004125(A028310(n))+n` -/
def P6842201172582352802.Spec : Prop :=
  ∀ n, P6842201172582352802.a n = A111490 n

end A111490

/-! ## A111490.P12952928310337660357

`A004125(n+1)+A001065(n+1)`
-/

namespace A111490.P12952928310337660357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + A001065 (n + 1)

end

end A111490.P12952928310337660357

namespace A111490

/-- `A004125(n+1)+A001065(n+1)` -/
def P12952928310337660357.Spec : Prop :=
  ∀ n, P12952928310337660357.a n = A111490 n

end A111490

/-! ## A111490.P16118880317473306287

`A049766(n+1)-A024816(n+1)`
-/

namespace A111490.P16118880317473306287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049766 (n + 1) - A024816 (n + 1)

end

end A111490.P16118880317473306287

namespace A111490

/-- `A049766(n+1)-A024816(n+1)` -/
def P16118880317473306287.Spec : Prop :=
  ∀ n, P16118880317473306287.a n = A111490 n

end A111490

/-! ## A111490.P16120380327550948948

`∑[A033879(n+1)]-A033879(n+1)`
-/

namespace A111490.P16120380327550948948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033879 (n + 1)

end

end A111490.P16120380327550948948

namespace A111490

/-- `∑[A033879(n+1)]-A033879(n+1)` -/
def P16120380327550948948.Spec : Prop :=
  ∀ n, P16120380327550948948.a n = A111490 n

end A111490

/-! ## A111490.P7462937980678819270

`A033880(n+1)-∑[A033880(n+1)]`
-/

namespace A111490.P7462937980678819270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111490.P7462937980678819270

namespace A111490

/-- `A033880(n+1)-∑[A033880(n+1)]` -/
def P7462937980678819270.Spec : Prop :=
  ∀ n, P7462937980678819270.a n = A111490 n

end A111490

/-! ## A111490.P16972258616401749191

`A004125(n+1)+A237588(n+1)+n`
-/

namespace A111490.P16972258616401749191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (A237588 (n + 1) + (n : ℤ))

end

end A111490.P16972258616401749191

namespace A111490

/-- `A004125(n+1)+A237588(n+1)+n` -/
def P16972258616401749191.Spec : Prop :=
  ∀ n, P16972258616401749191.a n = A111490 n

end A111490

/-! ## A111490.P591222784552287204

`(n+1)²+A001065(n+1)-A024916(n+1)`
-/

namespace A111490.P591222784552287204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A001065 (n + 1) - A024916 (n + 1))

end

end A111490.P591222784552287204

namespace A111490

/-- `(n+1)²+A001065(n+1)-A024916(n+1)` -/
def P591222784552287204.Spec : Prop :=
  ∀ n, P591222784552287204.a n = A111490 n

end A111490

/-! ## A111490.P12475756856262374223

`A001065(n+1)+A000290(n+1)-A024916(n+1)`
-/

namespace A111490.P12475756856262374223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A000290 (n + 1) - A024916 (n + 1)

end

end A111490.P12475756856262374223

namespace A111490

/-- `A001065(n+1)+A000290(n+1)-A024916(n+1)` -/
def P12475756856262374223.Spec : Prop :=
  ∀ n, P12475756856262374223.a n = A111490 n

end A111490

/-! ## A111490.P4936002196264178566

`A001065(n+1)+A024816(n+1)-A244048(n+1)`
-/

namespace A111490.P4936002196264178566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A024816 (n + 1) - A244048 (n + 1))

end

end A111490.P4936002196264178566

namespace A111490

/-- `A001065(n+1)+A024816(n+1)-A244048(n+1)` -/
def P4936002196264178566.Spec : Prop :=
  ∀ n, P4936002196264178566.a n = A111490 n

end A111490

/-! ## A111490.P14014096408480389650

`A004125(n+1)+A163553(n+1)-A120444(n+1)`
-/

namespace A111490.P14014096408480389650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (A163553 (n + 1) - A120444 (n + 1))

end

end A111490.P14014096408480389650

namespace A111490

/-- `A004125(n+1)+A163553(n+1)-A120444(n+1)` -/
def P14014096408480389650.Spec : Prop :=
  ∀ n, P14014096408480389650.a n = A111490 n

end A111490

/-! ## A111490.P9726146923284753249

`A004125(n+1)+A153485(n+1)-A244048(n+1)`
-/

namespace A111490.P9726146923284753249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (A153485 (n + 1) - A244048 (n + 1))

end

end A111490.P9726146923284753249

namespace A111490

/-- `A004125(n+1)+A153485(n+1)-A244048(n+1)` -/
def P9726146923284753249.Spec : Prop :=
  ∀ n, P9726146923284753249.a n = A111490 n

end A111490

/-! ## A111490.P4873543743367459498

`A235799(n+1)-(A244048(n+1)+A024816(n+1))`
-/

namespace A111490.P4873543743367459498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) - (A244048 (n + 1) + A024816 (n + 1))

end

end A111490.P4873543743367459498

namespace A111490

/-- `A235799(n+1)-(A244048(n+1)+A024816(n+1))` -/
def P4873543743367459498.Spec : Prop :=
  ∀ n, P4873543743367459498.a n = A111490 n

end A111490

/-!
# A111491: a(0) = 1; for n>0, a(n) = (2^n-1)*a(n-1)-(-1)^n.

The programs for A111491, the canonical program `A111491.P16761093188941729548` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111491 has offset 0).

The definition of A111491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)*a(n-1)-(-1)^n` (program `A111491.P16761093188941729548`, by `A111491.P16761093188941729548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111491.P16761093188941729548

`(2^n-1)*a(n-1)-(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111491

/-- `(2^n-1)*a(n-1)-(-1)^n` -/
def P16761093188941729548.Spec : Prop :=
  ∀ n, P16761093188941729548.a n = A111491 n

theorem P16761093188941729548.correct : P16761093188941729548.Spec := by
  intro n
  simp only [A111491]

end A111491

/-! ## A111491.P1449476975732220862

`2*A005329(n)-A005327(n+1)`
-/

namespace A111491.P1449476975732220862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005329 n - A005327 (n + 1)

end

end A111491.P1449476975732220862

namespace A111491

/-- `2*A005329(n)-A005327(n+1)` -/
def P1449476975732220862.Spec : Prop :=
  ∀ n, P1449476975732220862.a n = A111491 n

end A111491

/-! ## A111491.P14502949680002753718

`A165326(n)+a(n-1)*A000225(n)` with `a(0)=1`
-/

namespace A111491.P14502949680002753718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165326 n + a (n - 1) * A000225 n

end

end A111491.P14502949680002753718

namespace A111491

/-- `A165326(n)+a(n-1)*A000225(n)` -/
def P14502949680002753718.Spec : Prop :=
  ∀ n, P14502949680002753718.a n = A111491 n

end A111491

/-! ## A111491.P15612304303659695917

`a(n-1)*A000225(n)-A033999(n)` with `a(0)=1`
-/

namespace A111491.P15612304303659695917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000225 n - A033999 n

end

end A111491.P15612304303659695917

namespace A111491

/-- `a(n-1)*A000225(n)-A033999(n)` -/
def P15612304303659695917.Spec : Prop :=
  ∀ n, P15612304303659695917.a n = A111491 n

theorem P15612304303659695917.correct : P15612304303659695917.Spec := by
  intro n
  simp only [A111491, Nat.add_sub_cancel, A111491.P15612304303659695917.a, A111491.P16761093188941729548.a, A000225, A000225.P6535533121115206393.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111491

/-!
# A111492: Triangle read by rows: a(n,k) = (k-1)! * C(n,k).

The programs for A111492, the canonical program `A111492.P7150611794039230393` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111492 has offset 1).

The definition of A111492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)!*C(row(n)+1, col(n)+1)` (program `A111492.P7150611794039230393`, by `A111492.P7150611794039230393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111492.P7150611794039230393

`col(n)!*C(row(n)+1, col(n)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A111492

/-- `col(n)!*C(row(n)+1, col(n)+1)` -/
def P7150611794039230393.Spec : Prop :=
  ∀ n, (P7150611794039230393.a n : ℤ) = A111492 (n + 1)

theorem P7150611794039230393.correct : P7150611794039230393.Spec := by
  intro n
  simp only [A111492, Nat.add_sub_cancel]

end A111492

/-! ## A111492.P12851656016983662314

`2*T(n-1,k)-(T(n-2,k)+(T(n-2,k-1)-T(n-1,k-1))*col(n))` with `a(0)=1`
-/

namespace A111492.P12851656016983662314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUp a n - (SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n) * (SequenceMachineLib.triCol n : ℤ))

end

end A111492.P12851656016983662314

namespace A111492

/-- `2*T(n-1,k)-(T(n-2,k)+(T(n-2,k-1)-T(n-1,k-1))*col(n))` -/
def P12851656016983662314.Spec : Prop :=
  ∀ n, P12851656016983662314.a n = A111492 (n + 1)

end A111492

/-! ## A111492.P10900399178640937182

`(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A111492.P10900399178640937182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f13 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat : ℤ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℤ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f12 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A111492.P10900399178640937182

namespace A111492

/-- `(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))/(1-C(∑[char[∑[n]]], 2)+n)` -/
def P10900399178640937182.Spec : Prop :=
  ∀ n, P10900399178640937182.a n = (A111492 (n + 1) : ℚ)

end A111492

/-! ## A111492.P556777096487873957

`(n-C(∑[char[∑[n]]], 2))!*A007318(comp[∑[n]])`
-/

namespace A111492.P556777096487873957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A007318 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A111492.P556777096487873957

namespace A111492

/-- `(n-C(∑[char[∑[n]]], 2))!*A007318(comp[∑[n]])` -/
def P556777096487873957.Spec : Prop :=
  ∀ n, P556777096487873957.a n = A111492 (n + 1)

end A111492

/-! ## A111492.P16113505363877292403

`A094310(n+1)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A111492.P16113505363877292403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A111492.P16113505363877292403

namespace A111492

/-- `A094310(n+1)/(C(comp[∑[n]]-n, 2)-(n+1))!` -/
def P16113505363877292403.Spec : Prop :=
  ∀ n, P16113505363877292403.a n = (A111492 (n + 1) : ℚ)

end A111492

/-! ## A111492.P9431227836923513290

`(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))/A000005(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A111492.P9431227836923513290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f13 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat : ℤ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℤ) : ℚ) / (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f12 j) 2 : ℤ) : ℤ))).toNat : ℚ)

end

end A111492.P9431227836923513290

namespace A111492

/-- `(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))/A000005(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P9431227836923513290.Spec : Prop :=
  ∀ n, P9431227836923513290.a n = (A111492 (n + 1) : ℚ)

end A111492

/-! ## A111492.P556040902285853847

`A135278(n)*A233543(n)`
-/

namespace A111492.P556040902285853847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A233543 n

end

end A111492.P556040902285853847

namespace A111492

/-- `A135278(n)*A233543(n)` -/
def P556040902285853847.Spec : Prop :=
  ∀ n, P556040902285853847.a n = A111492 (n + 1)

theorem P556040902285853847.correct : P556040902285853847.Spec := by
  intro n
  simp only [A111492, Nat.add_sub_cancel, A111492.P556040902285853847.a, A111492.P7150611794039230393.a, A135278, A135278.P15294612270063548765.a, A233543, A233543.P8120853931293690238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111492

/-! ## A111492.P8486347262886197088

`A074909(n+1)*A233543(n)`
-/

namespace A111492.P8486347262886197088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A233543 n

end

end A111492.P8486347262886197088

namespace A111492

/-- `A074909(n+1)*A233543(n)` -/
def P8486347262886197088.Spec : Prop :=
  ∀ n, P8486347262886197088.a n = A111492 (n + 1)

end A111492

/-! ## A111492.P16375853389572493765

`A094310(n+1)/A119502(n)`
-/

namespace A111492.P16375853389572493765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) : ℚ) / (A119502 n : ℚ)

end

end A111492.P16375853389572493765

namespace A111492

/-- `A094310(n+1)/A119502(n)` -/
def P16375853389572493765.Spec : Prop :=
  ∀ n, P16375853389572493765.a n = (A111492 (n + 1) : ℚ)

end A111492

/-! ## A111492.P4405324414508150666

`A007318(comp[∑[n]])*A233543(n)`
-/

namespace A111492.P4405324414508150666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A233543 n

end

end A111492.P4405324414508150666

namespace A111492

/-- `A007318(comp[∑[n]])*A233543(n)` -/
def P4405324414508150666.Spec : Prop :=
  ∀ n, P4405324414508150666.a n = A111492 (n + 1)

end A111492

/-!
# A111493: Decimal expansion of the square of tan 1 degree.

The programs for A111493, there is no canonical definition to state claims against.
-/

/-! ## A111493.P2240438135101771394

`A112238(n+1)`
-/

namespace A111493.P2240438135101771394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112238 (n + 1 + 1)

end

end A111493.P2240438135101771394

/-!
# A111494: 3-almost primes with semiprime digits (digits 4, 6, 9 only).

The programs for A111494, there is no canonical definition to state claims against.
-/

/-! ## A111494.P596008163125194310

`filter[A107665(n+1), A101605(#)]`
-/

namespace A111494.P596008163125194310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A111494.P596008163125194310

/-! ## A111494.P14532628163391119349

`∩[A014612(n+1), A107665(n+1)]`
-/

namespace A111494.P14532628163391119349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111494.P14532628163391119349

/-! ## A111494.P14791569639175058895

`∩[A107665(n+1), A217856(n+1)]`
-/

namespace A111494.P14791569639175058895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111494.P14791569639175058895

/-!
# A111495: Floor of 10^n/Li(10^n) - 1.

The programs for A111495, there is no canonical definition to state claims against.
-/

/-! ## A111495.P14295120635681787156

`ceil((53*n-17)/23)`
-/

namespace A111495.P14295120635681787156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((53 * n : ℤ) - 17 : ℚ) / 23⌉

end

end A111495.P14295120635681787156

/-! ## A111495.P5286702136141865402

`floor(A016777(3*n)/log2(15))`
-/

namespace A111495.P5286702136141865402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016777 (3 * n) : ℝ) / Real.logb 2 (15 : ℝ)⌋

end

end A111495.P5286702136141865402

/-! ## A111495.P6914031603285484428

`A111499(n+1)-C(n, n²)`
-/

namespace A111495.P6914031603285484428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111499 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A111495.P6914031603285484428

/-! ## A111495.P10750902705467413672

`comp[A029916(3*n+1)+2+n]+n`
-/

namespace A111495.P10750902705467413672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 (3 * n + 1) + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A111495.P10750902705467413672

/-! ## A111495.P6815664013563432437

`A326178(A111499(n+1)-1)`
-/

namespace A111495.P6815664013563432437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A111499 (n + 1) - 1).toNat

end

end A111495.P6815664013563432437

/-! ## A111495.P10324413214258151490

`A111499(n+1)-char[A000540(n)]`
-/

namespace A111495.P10324413214258151490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111499 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111495.P10324413214258151490

/-! ## A111495.P12017573732057672403

`A111499(n+1)-char[A000541(n)]`
-/

namespace A111495.P12017573732057672403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111499 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111495.P12017573732057672403

/-! ## A111495.P6670966832377265329

`A111499(n+1)-char[A001014(n)]`
-/

namespace A111495.P6670966832377265329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111499 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111495.P6670966832377265329

/-! ## A111495.P2876652223555453734

`A111499(n+1)-A019590(n+1)`
-/

namespace A111495.P2876652223555453734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111499 (n + 1) - A019590 (n + 1)

end

end A111495.P2876652223555453734

/-! ## A111495.P6879400001343990010

`xor(A000045(C(2, 2*n)), A111499(n+1))`
-/

namespace A111495.P6879400001343990010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (Nat.choose 2 (2 * n))) (A111499 (n + 1))

end

end A111495.P6879400001343990010

/-!
# A111496: 4-almost primes with semiprime digits (digits 4, 6, 9 only).

The programs for A111496, there is no canonical definition to state claims against.
-/

/-! ## A111496.P16887827100618985221

`filter[A107665(n+1), A101637(#)]`
-/

namespace A111496.P16887827100618985221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A111496.P16887827100618985221

/-! ## A111496.P6483852625426734945

`∩[A014613(n+1), A107665(n+1)]`
-/

namespace A111496.P6483852625426734945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111496.P6483852625426734945

/-! ## A111496.P9764581149873650250

`∩[A107665(n+1), A307342(n+1)]`
-/

namespace A111496.P9764581149873650250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111496.P9764581149873650250

/-! ## A111496.P16065250274463288513

`∩[A107665(n+1), A323350(n+1)]`
-/

namespace A111496.P16065250274463288513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111496.P16065250274463288513

/-! ## A111496.P15843440336807129199

`∩[A323350(A080036(n)), A107665(n+1)]`
-/

namespace A111496.P15843440336807129199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (A080036 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111496.P15843440336807129199

/-!
# A111497: Difference between successive terms of floor(10^n/Li(10^n) - 1).

The programs for A111497, the canonical program `A111497.P5074465720884968157` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111497 has offset 1).

The definition of A111497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111497.P5074465720884968157

`A111499(2*(n+1))-A111499(2*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111497

/-- `A111499(2*(n+1))-A111499(2*n+1)` -/
def P5074465720884968157.Spec : Prop :=
  ∀ n, P5074465720884968157.a n = A111497 (n + 1)

theorem P5074465720884968157.correct : P5074465720884968157.Spec := by
  intro n
  simp only [A111497, Nat.add_sub_cancel]

end A111497

/-! ## A111497.P2107046093279695350

`A111495(2*(n+1))-A111495(2*n+1)`
-/

namespace A111497.P2107046093279695350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111495 (2 * (n + 1)) - A111495 (2 * n + 1)

end

end A111497.P2107046093279695350

namespace A111497

/-- `A111495(2*(n+1))-A111495(2*n+1)` -/
def P2107046093279695350.Spec : Prop :=
  ∀ n, P2107046093279695350.a n = A111497 (n + 1)

end A111497

/-! ## A111497.P14483963041793289786

`A131294(A120944(n+1)*A250120(n))`
-/

namespace A111497.P14483963041793289786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131294 (A120944 (n + 1) * A250120 n).toNat

end

end A111497.P14483963041793289786

namespace A111497

/-- `A131294(A120944(n+1)*A250120(n))` -/
def P14483963041793289786.Spec : Prop :=
  ∀ n, P14483963041793289786.a n = A111497 (n + 1)

end A111497

/-! ## A111497.P5407613179593773409

`A131294(A001358(n+3)*A250120(n))`
-/

namespace A111497.P5407613179593773409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131294 (A001358 (n + 3) * A250120 n).toNat

end

end A111497.P5407613179593773409

namespace A111497

/-- `A131294(A001358(n+3)*A250120(n))` -/
def P5407613179593773409.Spec : Prop :=
  ∀ n, P5407613179593773409.a n = A111497 (n + 1)

end A111497

/-! ## A111497.P11907156655194178760

`A006862(A333901(n)*A373830(n+2))`
-/

namespace A111497.P11907156655194178760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 (A333901 n * A373830 (n + 2)).toNat

end

end A111497.P11907156655194178760

namespace A111497

/-- `A006862(A333901(n)*A373830(n+2))` -/
def P11907156655194178760.Spec : Prop :=
  ∀ n, P11907156655194178760.a n = A111497 (n + 1)

end A111497

/-!
# A111499: a(n) = floor(10^n/PrimePi(10^n)) - 1.

The programs for A111499, the canonical program `A111499.P11538712920671782061` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111499 has offset 1).

The definition of A111499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111499.P11538712920671782061

`floor(10^(n+1)/A006880(n+1))-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111499

/-- `floor(10^(n+1)/A006880(n+1))-1` -/
def P11538712920671782061.Spec : Prop :=
  ∀ n, P11538712920671782061.a n = A111499 (n + 1)

theorem P11538712920671782061.correct : P11538712920671782061.Spec := by
  intro n
  simp only [A111499, Nat.add_sub_cancel]

end A111499

/-! ## A111499.P10120897373013872666

`A111495(n+1)+char[n^6]`
-/

namespace A111499.P10120897373013872666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111495 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111499.P10120897373013872666

namespace A111499

/-- `A111495(n+1)+char[n^6]` -/
def P10120897373013872666.Spec : Prop :=
  ∀ n, P10120897373013872666.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P2407827945986153255

`A111495(n%a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A111499.P2407827945986153255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A111495 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A111499.P2407827945986153255

namespace A111499

/-- `A111495(n%a(n-1)+1)` -/
def P2407827945986153255.Spec : Prop :=
  ∀ n, P2407827945986153255.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P11323919640068087845

`A216218(∑[n])+A111495(n+1)`
-/

namespace A111499.P11323919640068087845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216218 (∑ j ∈ Finset.range (n + 1), f1 j) + A111495 (n + 1)

end

end A111499.P11323919640068087845

namespace A111499

/-- `A216218(∑[n])+A111495(n+1)` -/
def P11323919640068087845.Spec : Prop :=
  ∀ n, P11323919640068087845.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P18115289510989177746

`or(Δ[A084558(n)], A111495(n+1))`
-/

namespace A111499.P18115289510989177746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A111495 (n + 1))

end

end A111499.P18115289510989177746

namespace A111499

/-- `or(Δ[A084558(n)], A111495(n+1))` -/
def P18115289510989177746.Spec : Prop :=
  ∀ n, P18115289510989177746.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P17994109882872439691

`or(Δ[A227177(n)], A111495(n+1))`
-/

namespace A111499.P17994109882872439691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A111495 (n + 1))

end

end A111499.P17994109882872439691

namespace A111499

/-- `or(Δ[A227177(n)], A111495(n+1))` -/
def P17994109882872439691.Spec : Prop :=
  ∀ n, P17994109882872439691.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P637698431004687553

`or(char[A000337(n)], A111495(n+1))`
-/

namespace A111499.P637698431004687553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A111495 (n + 1))

end

end A111499.P637698431004687553

namespace A111499

/-- `or(char[A000337(n)], A111495(n+1))` -/
def P637698431004687553.Spec : Prop :=
  ∀ n, P637698431004687553.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P16514658503622286509

`or(char[A000584(n)], A111495(n+1))`
-/

namespace A111499.P16514658503622286509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A111495 (n + 1))

end

end A111499.P16514658503622286509

namespace A111499

/-- `or(char[A000584(n)], A111495(n+1))` -/
def P16514658503622286509.Spec : Prop :=
  ∀ n, P16514658503622286509.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P10324263620331497174

`xor(A019590(n+1), A111495(n+1))`
-/

namespace A111499.P10324263620331497174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A111495 (n + 1))

end

end A111499.P10324263620331497174

namespace A111499

/-- `xor(A019590(n+1), A111495(n+1))` -/
def P10324263620331497174.Spec : Prop :=
  ∀ n, P10324263620331497174.a n = A111499 (n + 1)

end A111499

/-! ## A111499.P14539864581652944082

`or(char[1-A000045(n)], A111495(n+1))`
-/

namespace A111499.P14539864581652944082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A111495 (n + 1))

end

end A111499.P14539864581652944082

namespace A111499

/-- `or(char[1-A000045(n)], A111495(n+1))` -/
def P14539864581652944082.Spec : Prop :=
  ∀ n, P14539864581652944082.a n = A111499 (n + 1)

end A111499

